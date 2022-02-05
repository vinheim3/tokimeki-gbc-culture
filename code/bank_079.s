; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $079", ROMX[$4000], BANK[$79]

	add hl, bc                                       ; $4000: $09
	ld b, [hl]                                       ; $4001: $46
	ld b, c                                          ; $4002: $41
	ld d, d                                          ; $4003: $52
	ld d, a                                          ; $4004: $57
	ldh a, [hDisp1_SCY]                                     ; $4005: $f0 $90
	ldh a, [rSB]                                     ; $4007: $f0 $01
	ld a, [hl-]                                      ; $4009: $3a
	jr c, jr_079_4048                                ; $400a: $38 $3c

	ld d, b                                          ; $400c: $50
	add hl, bc                                       ; $400d: $09
	ldh a, [$d2]                                     ; $400e: $f0 $d2
	ld h, d                                          ; $4010: $62
	sub h                                            ; $4011: $94
	ld a, $3f                                        ; $4012: $3e $3f
	ld d, l                                          ; $4014: $55
	ld b, h                                          ; $4015: $44
	ld e, b                                          ; $4016: $58
	jr c, jr_079_4065                                ; $4017: $38 $4c

	add hl, bc                                       ; $4019: $09
	ldh a, [$c3]                                     ; $401a: $f0 $c3
	ld e, c                                          ; $401c: $59
	ldh a, [$3d]                                     ; $401d: $f0 $3d
	ld h, l                                          ; $401f: $65
	ldh a, [$de]                                     ; $4020: $f0 $de
	ldh a, [rP1]                                     ; $4022: $f0 $00
	ld e, c                                          ; $4024: $59
	ldh a, [rAUD4LEN]                                ; $4025: $f0 $20
	ldh a, [rBCPD]                                   ; $4027: $f0 $69

jr_079_4029:
	ldh a, [$03]                                     ; $4029: $f0 $03
	add hl, bc                                       ; $402b: $09
	ldh a, [rAUD4LEN]                                ; $402c: $f0 $20
	ld [hl], e                                       ; $402e: $73
	ldh a, [$2b]                                     ; $402f: $f0 $2b
	ldh a, [rP1]                                     ; $4031: $f0 $00
	inc [hl]                                         ; $4033: $34
	ld a, [hl]                                       ; $4034: $7e
	jr c, jr_079_4029                                ; $4035: $38 $f2

	adc a                                            ; $4037: $8f
	ldh a, [c]                                       ; $4038: $f2
	sub b                                            ; $4039: $90
	ld h, d                                          ; $403a: $62
	add hl, bc                                       ; $403b: $09
	di                                               ; $403c: $f3
	ret                                              ; $403d: $c9


	ld e, [hl]                                       ; $403e: $5e
	pop af                                           ; $403f: $f1
	ld l, b                                          ; $4040: $68
	ld b, a                                          ; $4041: $47
	ld h, a                                          ; $4042: $67
	dec sp                                           ; $4043: $3b
	ccf                                              ; $4044: $3f
	ld l, h                                          ; $4045: $6c
	ld b, l                                          ; $4046: $45
	add hl, sp                                       ; $4047: $39

jr_079_4048:
	add hl, bc                                       ; $4048: $09
	ld h, c                                          ; $4049: $61
	ld h, [hl]                                       ; $404a: $66
	inc [hl]                                         ; $404b: $34
	ld h, c                                          ; $404c: $61
	ld h, [hl]                                       ; $404d: $66
	dec sp                                           ; $404e: $3b
	ld c, c                                          ; $404f: $49
	sbc c                                            ; $4050: $99
	dec sp                                           ; $4051: $3b
	ccf                                              ; $4052: $3f
	add hl, bc                                       ; $4053: $09
	ldh a, [$6e]                                     ; $4054: $f0 $6e
	ld e, c                                          ; $4056: $59
	ld [hl], e                                       ; $4057: $73
	ld c, c                                          ; $4058: $49
	ld a, $61                                        ; $4059: $3e $61
	ld d, [hl]                                       ; $405b: $56
	dec sp                                           ; $405c: $3b
	ccf                                              ; $405d: $3f
	ld c, b                                          ; $405e: $48
	add hl, bc                                       ; $405f: $09
	ld b, [hl]                                       ; $4060: $46
	ld d, a                                          ; $4061: $57
	ld d, e                                          ; $4062: $53
	ld c, c                                          ; $4063: $49
	add hl, sp                                       ; $4064: $39

jr_079_4065:
	ld [hl], b                                       ; $4065: $70
	ldh a, [rAUD1SWEEP]                              ; $4066: $f0 $10
	jr c, @+$54                                      ; $4068: $38 $52

	ld d, c                                          ; $406a: $51
	add hl, bc                                       ; $406b: $09
	ld [hl-], a                                      ; $406c: $32
	pop af                                           ; $406d: $f1
	ld [hl+], a                                      ; $406e: $22
	pop af                                           ; $406f: $f1
	daa                                              ; $4070: $27
	pop af                                           ; $4071: $f1
	ld [hl+], a                                      ; $4072: $22
	pop af                                           ; $4073: $f1
	daa                                              ; $4074: $27
	inc sp                                           ; $4075: $33
	ld b, b                                          ; $4076: $40
	ld c, l                                          ; $4077: $4d
	ld b, a                                          ; $4078: $47
	ld c, b                                          ; $4079: $48
	add hl, bc                                       ; $407a: $09
	ld d, h                                          ; $407b: $54
	ld b, c                                          ; $407c: $41
	ld a, [hl-]                                      ; $407d: $3a
	ldh a, [$28]                                     ; $407e: $f0 $28
	ld d, d                                          ; $4080: $52
	ld c, d                                          ; $4081: $4a
	pop af                                           ; $4082: $f1
	ld bc, $4a41                                     ; $4083: $01 $41 $4a
	ld c, b                                          ; $4086: $48
	add hl, bc                                       ; $4087: $09
	sub d                                            ; $4088: $92
	adc [hl]                                         ; $4089: $8e
	dec sp                                           ; $408a: $3b
	ccf                                              ; $408b: $3f
	jr c, jr_079_40e2                                ; $408c: $38 $54

	add hl, sp                                       ; $408e: $39
	ld c, c                                          ; $408f: $49
	ld [hl], a                                       ; $4090: $77
	add hl, sp                                       ; $4091: $39
	add hl, bc                                       ; $4092: $09
	ld l, e                                          ; $4093: $6b
	ld c, a                                          ; $4094: $4f
	add d                                            ; $4095: $82
	add hl, sp                                       ; $4096: $39
	ld d, h                                          ; $4097: $54
	ld c, c                                          ; $4098: $49
	ld c, e                                          ; $4099: $4b
	ld a, [hl-]                                      ; $409a: $3a
	jr c, @+$3c                                      ; $409b: $38 $3a

	add hl, bc                                       ; $409d: $09
	ld l, b                                          ; $409e: $68
	adc b                                            ; $409f: $88
	ld b, a                                          ; $40a0: $47
	ld a, d                                          ; $40a1: $7a
	dec sp                                           ; $40a2: $3b
	ccf                                              ; $40a3: $3f
	ld a, b                                          ; $40a4: $78
	ld c, [hl]                                       ; $40a5: $4e
	ld d, d                                          ; $40a6: $52
	ld c, d                                          ; $40a7: $4a
	add hl, bc                                       ; $40a8: $09
	ld b, b                                          ; $40a9: $40
	add hl, sp                                       ; $40aa: $39
	jr c, jr_079_410b                                ; $40ab: $38 $5e

	ld a, e                                          ; $40ad: $7b
	inc [hl]                                         ; $40ae: $34
	ldh a, [$b5]                                     ; $40af: $f0 $b5
	inc a                                            ; $40b1: $3c
	ld d, a                                          ; $40b2: $57
	ld c, e                                          ; $40b3: $4b
	add hl, bc                                       ; $40b4: $09
	ld b, b                                          ; $40b5: $40
	add hl, sp                                       ; $40b6: $39
	jr c, jr_079_4117                                ; $40b7: $38 $5e

	ld a, e                                          ; $40b9: $7b
	inc [hl]                                         ; $40ba: $34
	ldh a, [rIF]                                     ; $40bb: $f0 $0f
	ld [hl], e                                       ; $40bd: $73
	ld l, c                                          ; $40be: $69
	ld c, e                                          ; $40bf: $4b
	add hl, bc                                       ; $40c0: $09
	ld a, a                                          ; $40c1: $7f
	ld d, d                                          ; $40c2: $52
	ld d, d                                          ; $40c3: $52
	ld b, a                                          ; $40c4: $47
	ldh a, [rTIMA]                                   ; $40c5: $f0 $05
	ld e, h                                          ; $40c7: $5c
	ld c, [hl]                                       ; $40c8: $4e
	ld d, b                                          ; $40c9: $50
	ld a, $38                                        ; $40ca: $3e $38
	add hl, bc                                       ; $40cc: $09
	ld [hl-], a                                      ; $40cd: $32
	ld e, b                                          ; $40ce: $58
	ld b, [hl]                                       ; $40cf: $46
	inc [hl]                                         ; $40d0: $34
	ldh a, [rAUD3LEN]                                ; $40d1: $f0 $1b
	ldh a, [$15]                                     ; $40d3: $f0 $15
	di                                               ; $40d5: $f3
	ld [$81f0], sp                                   ; $40d6: $08 $f0 $81
	ld b, h                                          ; $40d9: $44
	add hl, bc                                       ; $40da: $09
	ldh a, [$1f]                                     ; $40db: $f0 $1f
	ld e, c                                          ; $40dd: $59
	ldh a, [$32]                                     ; $40de: $f0 $32
	ldh a, [c]                                       ; $40e0: $f2
	scf                                              ; $40e1: $37

jr_079_40e2:
	ldh a, [c]                                       ; $40e2: $f2
	ld e, b                                          ; $40e3: $58
	ld a, $52                                        ; $40e4: $3e $52
	ld a, $3d                                        ; $40e6: $3e $3d
	add hl, bc                                       ; $40e8: $09
	ldh a, [$7b]                                     ; $40e9: $f0 $7b
	ld e, c                                          ; $40eb: $59
	ldh a, [rBCPD]                                   ; $40ec: $f0 $69
	ldh a, [c]                                       ; $40ee: $f2
	scf                                              ; $40ef: $37
	ldh a, [c]                                       ; $40f0: $f2
	ld e, b                                          ; $40f1: $58
	ld a, $52                                        ; $40f2: $3e $52
	ld a, $3d                                        ; $40f4: $3e $3d
	add hl, bc                                       ; $40f6: $09
	ldh a, [$50]                                     ; $40f7: $f0 $50
	ld [hl], e                                       ; $40f9: $73
	ldh a, [rAUD4LEN]                                ; $40fa: $f0 $20
	ld a, l                                          ; $40fc: $7d
	inc [hl]                                         ; $40fd: $34
	ld e, b                                          ; $40fe: $58
	ld b, l                                          ; $40ff: $45
	ld a, [hl-]                                      ; $4100: $3a
	ld d, b                                          ; $4101: $50
	add hl, bc                                       ; $4102: $09
	ldh a, [$3b]                                     ; $4103: $f0 $3b
	add hl, sp                                       ; $4105: $39
	sbc d                                            ; $4106: $9a
	ld c, e                                          ; $4107: $4b
	sub h                                            ; $4108: $94
	ld a, b                                          ; $4109: $78
	ld a, [hl-]                                      ; $410a: $3a

jr_079_410b:
	jr c, jr_079_4147                                ; $410b: $38 $3a

	add hl, bc                                       ; $410d: $09
	ld b, b                                          ; $410e: $40
	ld c, l                                          ; $410f: $4d
	ld e, e                                          ; $4110: $5b
	ld d, [hl]                                       ; $4111: $56
	ld b, [hl]                                       ; $4112: $46
	inc [hl]                                         ; $4113: $34
	ld a, d                                          ; $4114: $7a
	ld e, a                                          ; $4115: $5f
	add hl, sp                                       ; $4116: $39

jr_079_4117:
	add hl, bc                                       ; $4117: $09
	ld [hl-], a                                      ; $4118: $32
	ld d, d                                          ; $4119: $52
	ld [hl], h                                       ; $411a: $74
	inc [hl]                                         ; $411b: $34
	ld d, h                                          ; $411c: $54
	ld b, c                                          ; $411d: $41
	ld a, [hl-]                                      ; $411e: $3a
	ld c, a                                          ; $411f: $4f
	ld b, c                                          ; $4120: $41
	add hl, bc                                       ; $4121: $09
	ldh a, [rHDMA1]                                  ; $4122: $f0 $51
	dec a                                            ; $4124: $3d
	ld c, l                                          ; $4125: $4d
	ld a, [hl-]                                      ; $4126: $3a
	inc a                                            ; $4127: $3c
	dec sp                                           ; $4128: $3b
	dec a                                            ; $4129: $3d
	inc a                                            ; $412a: $3c
	ld a, [hl-]                                      ; $412b: $3a
	add hl, bc                                       ; $412c: $09
	ldh a, [$c7]                                     ; $412d: $f0 $c7
	ld c, l                                          ; $412f: $4d
	ld a, [hl-]                                      ; $4130: $3a
	ld d, l                                          ; $4131: $55
	ccf                                              ; $4132: $3f
	ld b, l                                          ; $4133: $45
	inc a                                            ; $4134: $3c
	dec sp                                           ; $4135: $3b
	dec a                                            ; $4136: $3d
	add hl, bc                                       ; $4137: $09
	pop af                                           ; $4138: $f1
	ld d, [hl]                                       ; $4139: $56
	ld a, $f1                                        ; $413a: $3e $f1
	dec bc                                           ; $413c: $0b
	ld [hl], b                                       ; $413d: $70
	ldh a, [rAUD1SWEEP]                              ; $413e: $f0 $10
	jr c, jr_079_4194                                ; $4140: $38 $52

	ld a, c                                          ; $4142: $79
	ld b, c                                          ; $4143: $41
	add hl, bc                                       ; $4144: $09
	ld [hl-], a                                      ; $4145: $32
	halt                                             ; $4146: $76

jr_079_4147:
	ld c, e                                          ; $4147: $4b
	inc [hl]                                         ; $4148: $34
	ld c, c                                          ; $4149: $49
	ld d, a                                          ; $414a: $57
	ld b, [hl]                                       ; $414b: $46
	ld e, [hl]                                       ; $414c: $5e
	sbc h                                            ; $414d: $9c
	add hl, bc                                       ; $414e: $09
	pop af                                           ; $414f: $f1
	ld [hl], e                                       ; $4150: $73
	ldh a, [$ca]                                     ; $4151: $f0 $ca
	ld l, l                                          ; $4153: $6d
	ld b, d                                          ; $4154: $42
	di                                               ; $4155: $f3
	add hl, sp                                       ; $4156: $39
	ldh a, [$5c]                                     ; $4157: $f0 $5c
	add h                                            ; $4159: $84
	ld b, h                                          ; $415a: $44
	ld e, c                                          ; $415b: $59
	add hl, bc                                       ; $415c: $09
	ld h, a                                          ; $415d: $67
	ld d, l                                          ; $415e: $55
	ldh a, [$e2]                                     ; $415f: $f0 $e2
	ldh a, [$e3]                                     ; $4161: $f0 $e3
	ld a, [hl-]                                      ; $4163: $3a
	ld b, c                                          ; $4164: $41
	ld b, h                                          ; $4165: $44
	ld e, l                                          ; $4166: $5d
	ld e, d                                          ; $4167: $5a
	add hl, bc                                       ; $4168: $09
	ld e, b                                          ; $4169: $58
	ld b, [hl]                                       ; $416a: $46
	inc [hl]                                         ; $416b: $34
	ld h, a                                          ; $416c: $67
	ld e, h                                          ; $416d: $5c
	ld d, d                                          ; $416e: $52
	ld a, $66                                        ; $416f: $3e $66
	add hl, sp                                       ; $4171: $39
	add hl, bc                                       ; $4172: $09
	ld h, h                                          ; $4173: $64
	ld c, e                                          ; $4174: $4b
	ld b, l                                          ; $4175: $45
	add hl, sp                                       ; $4176: $39
	ld [hl], b                                       ; $4177: $70
	ldh a, [rAUD1SWEEP]                              ; $4178: $f0 $10
	jr c, jr_079_41ce                                ; $417a: $38 $52

	ld d, c                                          ; $417c: $51
	add hl, bc                                       ; $417d: $09
	ld b, b                                          ; $417e: $40
	ld e, a                                          ; $417f: $5f
	ld b, b                                          ; $4180: $40
	ld e, a                                          ; $4181: $5f
	ld a, d                                          ; $4182: $7a
	ld e, a                                          ; $4183: $5f
	add hl, sp                                       ; $4184: $39
	inc a                                            ; $4185: $3c
	ld a, [hl-]                                      ; $4186: $3a
	add hl, bc                                       ; $4187: $09
	ld a, a                                          ; $4188: $7f
	ld b, a                                          ; $4189: $47
	ld a, $3a                                        ; $418a: $3e $3a
	ld d, l                                          ; $418c: $55
	ccf                                              ; $418d: $3f
	jr c, jr_079_41c8                                ; $418e: $38 $38

	ld b, l                                          ; $4190: $45
	add hl, bc                                       ; $4191: $09
	ld l, e                                          ; $4192: $6b
	ld b, d                                          ; $4193: $42

jr_079_4194:
	ldh a, [rAUDVOL]                                 ; $4194: $f0 $24
	ld h, d                                          ; $4196: $62
	ld a, $45                                        ; $4197: $3e $45
	add hl, sp                                       ; $4199: $39
	inc a                                            ; $419a: $3c
	ld a, [hl-]                                      ; $419b: $3a
	add hl, bc                                       ; $419c: $09
	ld d, h                                          ; $419d: $54
	ld c, l                                          ; $419e: $4d
	ld d, e                                          ; $419f: $53
	di                                               ; $41a0: $f3
	inc [hl]                                         ; $41a1: $34
	db $f4                                           ; $41a2: $f4
	rra                                              ; $41a3: $1f
	ld b, d                                          ; $41a4: $42
	ldh a, [$62]                                     ; $41a5: $f0 $62
	di                                               ; $41a7: $f3
	ld a, [bc]                                       ; $41a8: $0a
	inc a                                            ; $41a9: $3c
	add hl, bc                                       ; $41aa: $09
	adc e                                            ; $41ab: $8b
	ld e, h                                          ; $41ac: $5c
	ld e, e                                          ; $41ad: $5b
	ld d, [hl]                                       ; $41ae: $56
	ld a, [hl-]                                      ; $41af: $3a
	jr c, jr_079_4202                                ; $41b0: $38 $50

	ld a, $38                                        ; $41b2: $3e $38
	add hl, bc                                       ; $41b4: $09
	ldh a, [rIF]                                     ; $41b5: $f0 $0f
	ld [hl], l                                       ; $41b7: $75
	ld e, c                                          ; $41b8: $59
	ldh a, [$32]                                     ; $41b9: $f0 $32
	ld h, d                                          ; $41bb: $62
	ld [hl], d                                       ; $41bc: $72
	ld b, a                                          ; $41bd: $47
	ldh a, [$3b]                                     ; $41be: $f0 $3b
	add hl, sp                                       ; $41c0: $39
	add hl, bc                                       ; $41c1: $09
	ldh a, [$32]                                     ; $41c2: $f0 $32
	ldh a, [$2f]                                     ; $41c4: $f0 $2f
	ldh a, [$32]                                     ; $41c6: $f0 $32

jr_079_41c8:
	ldh a, [$2f]                                     ; $41c8: $f0 $2f
	inc [hl]                                         ; $41ca: $34
	ldh a, [$a0]                                     ; $41cb: $f0 $a0
	sub e                                            ; $41cd: $93

jr_079_41ce:
	ldh a, [$a0]                                     ; $41ce: $f0 $a0
	sub e                                            ; $41d0: $93
	add hl, bc                                       ; $41d1: $09
	ld e, l                                          ; $41d2: $5d
	dec sp                                           ; $41d3: $3b
	ld d, h                                          ; $41d4: $54
	add hl, sp                                       ; $41d5: $39
	ldh a, [c]                                       ; $41d6: $f2
	adc c                                            ; $41d7: $89
	ld e, l                                          ; $41d8: $5d
	ld c, [hl]                                       ; $41d9: $4e
	ld a, [hl-]                                      ; $41da: $3a
	ld [hl], h                                       ; $41db: $74
	add hl, bc                                       ; $41dc: $09
	ld b, l                                          ; $41dd: $45
	ld a, $34                                        ; $41de: $3e $34
	ldh a, [hDisp0_OBP0]                                     ; $41e0: $f0 $86
	ld [hl], d                                       ; $41e2: $72
	ld b, a                                          ; $41e3: $47
	ld h, a                                          ; $41e4: $67
	ld d, h                                          ; $41e5: $54
	add hl, sp                                       ; $41e6: $39
	add hl, bc                                       ; $41e7: $09
	ldh a, [hDisp0_OBP0]                                     ; $41e8: $f0 $86
	pop af                                           ; $41ea: $f1
	scf                                              ; $41eb: $37
	add a                                            ; $41ec: $87
	ldh a, [rHDMA3]                                  ; $41ed: $f0 $53
	ld d, e                                          ; $41ef: $53
	ld b, [hl]                                       ; $41f0: $46
	ld c, [hl]                                       ; $41f1: $4e
	ld b, c                                          ; $41f2: $41
	ld b, h                                          ; $41f3: $44
	add hl, bc                                       ; $41f4: $09
	ldh a, [$79]                                     ; $41f5: $f0 $79
	ldh a, [$d7]                                     ; $41f7: $f0 $d7
	ld l, b                                          ; $41f9: $68
	ld b, d                                          ; $41fa: $42
	ldh a, [$67]                                     ; $41fb: $f0 $67
	pop af                                           ; $41fd: $f1
	ld hl, $f067                                     ; $41fe: $21 $67 $f0
	ld c, b                                          ; $4201: $48

jr_079_4202:
	ld c, a                                          ; $4202: $4f
	add hl, bc                                       ; $4203: $09
	ld a, b                                          ; $4204: $78
	ccf                                              ; $4205: $3f
	ld a, [hl-]                                      ; $4206: $3a
	jr c, jr_079_4275                                ; $4207: $38 $6c

	dec a                                            ; $4209: $3d
	jr c, jr_079_4250                                ; $420a: $38 $44

	ld a, [hl-]                                      ; $420c: $3a
	add hl, bc                                       ; $420d: $09
	ld b, [hl]                                       ; $420e: $46
	dec sp                                           ; $420f: $3b
	inc [hl]                                         ; $4210: $34
	ld h, h                                          ; $4211: $64
	ld l, h                                          ; $4212: $6c
	ld d, l                                          ; $4213: $55
	ld e, e                                          ; $4214: $5b
	ld c, d                                          ; $4215: $4a
	ld c, a                                          ; $4216: $4f
	add hl, bc                                       ; $4217: $09
	ld d, c                                          ; $4218: $51
	ldh a, [rSB]                                     ; $4219: $f0 $01
	ld e, c                                          ; $421b: $59
	inc [hl]                                         ; $421c: $34
	ldh a, [$8a]                                     ; $421d: $f0 $8a
	ldh a, [rHDMA2]                                  ; $421f: $f0 $52
	ld d, l                                          ; $4221: $55
	ld c, h                                          ; $4222: $4c
	add l                                            ; $4223: $85
	add hl, bc                                       ; $4224: $09
	ld b, [hl]                                       ; $4225: $46
	ld c, l                                          ; $4226: $4d
	ld c, e                                          ; $4227: $4b
	ld c, b                                          ; $4228: $48
	inc [hl]                                         ; $4229: $34
	ld l, e                                          ; $422a: $6b
	ld b, h                                          ; $422b: $44
	ld e, a                                          ; $422c: $5f
	add hl, sp                                       ; $422d: $39
	add hl, bc                                       ; $422e: $09
	ld b, [hl]                                       ; $422f: $46
	ld d, d                                          ; $4230: $52
	ld d, a                                          ; $4231: $57
	ldh a, [rPCM12]                                  ; $4232: $f0 $76
	ldh a, [rTMA]                                    ; $4234: $f0 $06
	ld h, e                                          ; $4236: $63
	ld a, [hl-]                                      ; $4237: $3a
	jr c, @+$4e                                      ; $4238: $38 $4c

	add hl, bc                                       ; $423a: $09
	ld b, b                                          ; $423b: $40
	ld e, a                                          ; $423c: $5f
	ld b, b                                          ; $423d: $40
	ld e, a                                          ; $423e: $5f
	ld h, a                                          ; $423f: $67
	inc a                                            ; $4240: $3c
	ld a, [hl-]                                      ; $4241: $3a
	jr c, jr_079_428d                                ; $4242: $38 $49

	add hl, bc                                       ; $4244: $09
	ldh a, [$a5]                                     ; $4245: $f0 $a5
	dec sp                                           ; $4247: $3b
	dec a                                            ; $4248: $3d
	inc [hl]                                         ; $4249: $34
	sbc e                                            ; $424a: $9b
	ldh a, [rAUDTERM]                                ; $424b: $f0 $25
	ld a, [hl-]                                      ; $424d: $3a
	ld b, c                                          ; $424e: $41
	ld b, h                                          ; $424f: $44

jr_079_4250:
	add hl, bc                                       ; $4250: $09
	ldh a, [rPCM34]                                  ; $4251: $f0 $77
	ld b, d                                          ; $4253: $42
	ldh a, [rAUD2HIGH]                               ; $4254: $f0 $19
	ld b, d                                          ; $4256: $42
	ldh a, [$3d]                                     ; $4257: $f0 $3d
	ld e, c                                          ; $4259: $59
	ld l, c                                          ; $425a: $69
	ld b, h                                          ; $425b: $44
	ld c, h                                          ; $425c: $4c
	add hl, bc                                       ; $425d: $09
	ldh a, [$0a]                                     ; $425e: $f0 $0a
	ld d, l                                          ; $4260: $55
	inc [hl]                                         ; $4261: $34
	pop af                                           ; $4262: $f1
	ld a, c                                          ; $4263: $79
	pop af                                           ; $4264: $f1
	ld h, d                                          ; $4265: $62
	ld a, $3a                                        ; $4266: $3e $3a
	ld e, h                                          ; $4268: $5c
	ld d, [hl]                                       ; $4269: $56
	add hl, bc                                       ; $426a: $09
	ld e, d                                          ; $426b: $5a
	add hl, sp                                       ; $426c: $39
	inc [hl]                                         ; $426d: $34
	ld l, [hl]                                       ; $426e: $6e
	dec sp                                           ; $426f: $3b
	ccf                                              ; $4270: $3f
	ld l, h                                          ; $4271: $6c
	ld a, [hl-]                                      ; $4272: $3a
	jr c, jr_079_427e                                ; $4273: $38 $09

jr_079_4275:
	sbc b                                            ; $4275: $98
	ldh a, [$a1]                                     ; $4276: $f0 $a1
	ld e, c                                          ; $4278: $59
	ldh a, [$60]                                     ; $4279: $f0 $60
	ldh a, [$c4]                                     ; $427b: $f0 $c4
	ld h, l                                          ; $427d: $65

jr_079_427e:
	ldh a, [$50]                                     ; $427e: $f0 $50
	ld b, h                                          ; $4280: $44
	ld b, l                                          ; $4281: $45
	add hl, bc                                       ; $4282: $09
	ld b, l                                          ; $4283: $45
	ld e, a                                          ; $4284: $5f
	ld a, $38                                        ; $4285: $3e $38
	ld c, d                                          ; $4287: $4a
	ld a, $66                                        ; $4288: $3e $66
	add hl, sp                                       ; $428a: $39
	inc a                                            ; $428b: $3c
	add hl, bc                                       ; $428c: $09

jr_079_428d:
	ld b, [hl]                                       ; $428d: $46
	ld e, c                                          ; $428e: $59
	inc [hl]                                         ; $428f: $34
	ldh a, [rKEY1]                                   ; $4290: $f0 $4d
	dec sp                                           ; $4292: $3b
	ld d, l                                          ; $4293: $55
	ld d, a                                          ; $4294: $57
	ld a, $3d                                        ; $4295: $3e $3d
	add hl, bc                                       ; $4297: $09
	ld e, b                                          ; $4298: $58
	ld b, [hl]                                       ; $4299: $46
	inc [hl]                                         ; $429a: $34
	ldh a, [rLCDC]                                   ; $429b: $f0 $40
	ld d, a                                          ; $429d: $57
	ld d, d                                          ; $429e: $52
	ld a, $66                                        ; $429f: $3e $66
	add hl, sp                                       ; $42a1: $39
	add hl, bc                                       ; $42a2: $09
	ld l, l                                          ; $42a3: $6d
	add h                                            ; $42a4: $84
	ld c, d                                          ; $42a5: $4a
	ld h, a                                          ; $42a6: $67
	ld d, l                                          ; $42a7: $55
	ld c, c                                          ; $42a8: $49
	ld d, c                                          ; $42a9: $51
	ld c, [hl]                                       ; $42aa: $4e
	inc a                                            ; $42ab: $3c
	add hl, bc                                       ; $42ac: $09
	ld d, d                                          ; $42ad: $52
	dec a                                            ; $42ae: $3d
	ld l, d                                          ; $42af: $6a
	ldh a, [$0d]                                     ; $42b0: $f0 $0d
	ldh a, [$a7]                                     ; $42b2: $f0 $a7
	pop af                                           ; $42b4: $f1
	dec de                                           ; $42b5: $1b
	ld d, c                                          ; $42b6: $51
	ld c, [hl]                                       ; $42b7: $4e
	ld b, l                                          ; $42b8: $45
	add hl, bc                                       ; $42b9: $09
	ldh a, [hDisp1_OBP1]                                     ; $42ba: $f0 $94
	ld [hl], c                                       ; $42bc: $71
	ccf                                              ; $42bd: $3f
	ld e, e                                          ; $42be: $5b
	ld d, [hl]                                       ; $42bf: $56
	ld a, [hl-]                                      ; $42c0: $3a
	ld d, l                                          ; $42c1: $55
	ccf                                              ; $42c2: $3f
	ld c, a                                          ; $42c3: $4f
	add hl, bc                                       ; $42c4: $09
	ld b, [hl]                                       ; $42c5: $46
	ld [hl], h                                       ; $42c6: $74
	inc [hl]                                         ; $42c7: $34
	ldh a, [c]                                       ; $42c8: $f2
	dec e                                            ; $42c9: $1d
	adc [hl]                                         ; $42ca: $8e
	ld d, c                                          ; $42cb: $51
	ld c, [hl]                                       ; $42cc: $4e
	ld a, [hl-]                                      ; $42cd: $3a
	ld [hl], h                                       ; $42ce: $74
	add hl, bc                                       ; $42cf: $09
	add hl, sp                                       ; $42d0: $39
	ld d, d                                          ; $42d1: $52
	ld d, l                                          ; $42d2: $55
	jr c, jr_079_4310                                ; $42d3: $38 $3b

	dec a                                            ; $42d5: $3d
	ld l, h                                          ; $42d6: $6c
	dec a                                            ; $42d7: $3d
	jr c, jr_079_42e3                                ; $42d8: $38 $09

	add hl, sp                                       ; $42da: $39
	ld b, c                                          ; $42db: $41
	inc [hl]                                         ; $42dc: $34
	ld l, l                                          ; $42dd: $6d
	ld a, h                                          ; $42de: $7c
	ld b, a                                          ; $42df: $47
	ld h, a                                          ; $42e0: $67
	ld d, h                                          ; $42e1: $54
	add hl, sp                                       ; $42e2: $39

jr_079_42e3:
	add hl, bc                                       ; $42e3: $09
	ld c, e                                          ; $42e4: $4b
	jr c, jr_079_431b                                ; $42e5: $38 $34

	ldh a, [rTAC]                                    ; $42e7: $f0 $07
	inc a                                            ; $42e9: $3c
	ld d, a                                          ; $42ea: $57
	ld d, d                                          ; $42eb: $52
	ld a, $3d                                        ; $42ec: $3e $3d
	add hl, bc                                       ; $42ee: $09
	ld [hl], d                                       ; $42ef: $72
	ld b, a                                          ; $42f0: $47
	ld a, b                                          ; $42f1: $78
	ccf                                              ; $42f2: $3f
	ld d, l                                          ; $42f3: $55
	ld c, l                                          ; $42f4: $4d
	dec a                                            ; $42f5: $3d
	ld b, c                                          ; $42f6: $41
	ld b, h                                          ; $42f7: $44
	add hl, bc                                       ; $42f8: $09
	ldh a, [$bd]                                     ; $42f9: $f0 $bd
	jr c, jr_079_433c                                ; $42fb: $38 $3f

	ld d, l                                          ; $42fd: $55
	ld c, l                                          ; $42fe: $4d
	ld c, [hl]                                       ; $42ff: $4e
	ld l, h                                          ; $4300: $6c
	dec a                                            ; $4301: $3d
	jr c, jr_079_430d                                ; $4302: $38 $09

	adc b                                            ; $4304: $88
	sub c                                            ; $4305: $91
	inc [hl]                                         ; $4306: $34
	ld a, a                                          ; $4307: $7f
	ldh a, [rHDMA1]                                  ; $4308: $f0 $51
	ld h, c                                          ; $430a: $61
	jr c, @+$3a                                      ; $430b: $38 $38

jr_079_430d:
	ld c, h                                          ; $430d: $4c
	add hl, bc                                       ; $430e: $09
	ld b, [hl]                                       ; $430f: $46

jr_079_4310:
	ld b, d                                          ; $4310: $42
	add h                                            ; $4311: $84
	inc [hl]                                         ; $4312: $34
	ld e, h                                          ; $4313: $5c
	ld c, l                                          ; $4314: $4d
	jr c, jr_079_435b                                ; $4315: $38 $44

	ld a, [hl-]                                      ; $4317: $3a
	add hl, bc                                       ; $4318: $09
	ld h, c                                          ; $4319: $61
	ld h, [hl]                                       ; $431a: $66

jr_079_431b:
	dec sp                                           ; $431b: $3b
	ld c, c                                          ; $431c: $49
	sbc c                                            ; $431d: $99
	dec sp                                           ; $431e: $3b
	ccf                                              ; $431f: $3f
	ld d, l                                          ; $4320: $55
	ld c, l                                          ; $4321: $4d
	add hl, bc                                       ; $4322: $09
	ld l, d                                          ; $4323: $6a
	ld l, b                                          ; $4324: $68
	inc [hl]                                         ; $4325: $34
	ldh a, [hDisp0_SCY]                                     ; $4326: $f0 $83
	ldh a, [rTIMA]                                   ; $4328: $f0 $05
	ld l, b                                          ; $432a: $68
	ld b, h                                          ; $432b: $44
	ld b, l                                          ; $432c: $45
	ld c, h                                          ; $432d: $4c
	add hl, bc                                       ; $432e: $09
	ld b, [hl]                                       ; $432f: $46
	dec sp                                           ; $4330: $3b
	inc [hl]                                         ; $4331: $34
	ld h, a                                          ; $4332: $67
	dec sp                                           ; $4333: $3b
	ld h, c                                          ; $4334: $61
	ld d, [hl]                                       ; $4335: $56
	dec sp                                           ; $4336: $3b
	dec a                                            ; $4337: $3d
	add hl, bc                                       ; $4338: $09
	ldh a, [$d7]                                     ; $4339: $f0 $d7
	ld c, e                                          ; $433b: $4b

jr_079_433c:
	inc [hl]                                         ; $433c: $34
	halt                                             ; $433d: $76
	ld d, e                                          ; $433e: $53
	ld l, [hl]                                       ; $433f: $6e
	ld c, [hl]                                       ; $4340: $4e
	inc a                                            ; $4341: $3c
	ld d, b                                          ; $4342: $50
	add hl, bc                                       ; $4343: $09
	jr c, jr_079_43b4                                ; $4344: $38 $6e

	inc [hl]                                         ; $4346: $34
	pop af                                           ; $4347: $f1
	jr nc, jr_079_43bb                               ; $4348: $30 $71

	ccf                                              ; $434a: $3f
	ld h, h                                          ; $434b: $64
	ld d, l                                          ; $434c: $55
	ld b, l                                          ; $434d: $45
	add hl, bc                                       ; $434e: $09
	ld e, e                                          ; $434f: $5b
	ld d, [hl]                                       ; $4350: $56
	ld b, [hl]                                       ; $4351: $46
	inc [hl]                                         ; $4352: $34
	ldh a, [$0a]                                     ; $4353: $f0 $0a
	pop af                                           ; $4355: $f1
	jr jr_079_43bf                                   ; $4356: $18 $67

	ld d, h                                          ; $4358: $54
	add hl, sp                                       ; $4359: $39
	add hl, bc                                       ; $435a: $09

jr_079_435b:
	ldh a, [rRP]                                     ; $435b: $f0 $56
	inc [hl]                                         ; $435d: $34
	pop af                                           ; $435e: $f1
	ld e, b                                          ; $435f: $58
	inc a                                            ; $4360: $3c
	ld b, a                                          ; $4361: $47
	ld a, $3f                                        ; $4362: $3e $3f
	ld d, l                                          ; $4364: $55
	ld c, l                                          ; $4365: $4d
	add hl, bc                                       ; $4366: $09
	ldh a, [rWY]                                     ; $4367: $f0 $4a
	ld [hl], e                                       ; $4369: $73
	ldh a, [rAUD4POLY]                               ; $436a: $f0 $22
	ld h, l                                          ; $436c: $65
	ld b, d                                          ; $436d: $42
	pop af                                           ; $436e: $f1
	ld e, l                                          ; $436f: $5d
	pop af                                           ; $4370: $f1
	and a                                            ; $4371: $a7
	ld b, h                                          ; $4372: $44
	ld b, l                                          ; $4373: $45
	add hl, bc                                       ; $4374: $09
	ld d, h                                          ; $4375: $54
	ld c, l                                          ; $4376: $4d
	ld [hl], l                                       ; $4377: $75
	add c                                            ; $4378: $81
	ldh a, [rP1]                                     ; $4379: $f0 $00
	ldh a, [$35]                                     ; $437b: $f0 $35
	ld a, [hl-]                                      ; $437d: $3a
	ld b, d                                          ; $437e: $42
	ld b, a                                          ; $437f: $47
	add hl, bc                                       ; $4380: $09
	ld b, a                                          ; $4381: $47
	ld c, e                                          ; $4382: $4b
	pop af                                           ; $4383: $f1
	ld a, [de]                                       ; $4384: $1a
	pop af                                           ; $4385: $f1
	inc c                                            ; $4386: $0c
	pop af                                           ; $4387: $f1
	inc b                                            ; $4388: $04
	ld c, l                                          ; $4389: $4d
	ld a, [hl-]                                      ; $438a: $3a
	jr c, jr_079_43d9                                ; $438b: $38 $4c

	add hl, bc                                       ; $438d: $09
	halt                                             ; $438e: $76
	ld d, e                                          ; $438f: $53
	pop af                                           ; $4390: $f1
	nop                                              ; $4391: $00
	ld e, [hl]                                       ; $4392: $5e
	ccf                                              ; $4393: $3f
	ld b, [hl]                                       ; $4394: $46
	ldh a, [rSB]                                     ; $4395: $f0 $01
	ld c, [hl]                                       ; $4397: $4e
	ld b, l                                          ; $4398: $45
	add hl, bc                                       ; $4399: $09
	ld b, [hl]                                       ; $439a: $46
	ld b, c                                          ; $439b: $41
	ld a, [hl-]                                      ; $439c: $3a
	ld b, a                                          ; $439d: $47
	ldh a, [$66]                                     ; $439e: $f0 $66
	ld b, c                                          ; $43a0: $41
	ld c, d                                          ; $43a1: $4a
	ld d, l                                          ; $43a2: $55
	ld c, l                                          ; $43a3: $4d
	add hl, bc                                       ; $43a4: $09
	ld e, e                                          ; $43a5: $5b
	ld d, [hl]                                       ; $43a6: $56
	ld b, [hl]                                       ; $43a7: $46
	inc [hl]                                         ; $43a8: $34
	ld c, a                                          ; $43a9: $4f
	add hl, sp                                       ; $43aa: $39
	ld h, a                                          ; $43ab: $67
	ld d, l                                          ; $43ac: $55
	ld c, h                                          ; $43ad: $4c
	add hl, bc                                       ; $43ae: $09
	ld h, c                                          ; $43af: $61
	ld h, [hl]                                       ; $43b0: $66
	dec sp                                           ; $43b1: $3b
	ld c, c                                          ; $43b2: $49
	inc [hl]                                         ; $43b3: $34

jr_079_43b4:
	ld b, b                                          ; $43b4: $40
	ld b, c                                          ; $43b5: $41
	ld a, [hl-]                                      ; $43b6: $3a
	ld b, a                                          ; $43b7: $47
	add hl, bc                                       ; $43b8: $09
	ld e, d                                          ; $43b9: $5a
	ld e, h                                          ; $43ba: $5c

jr_079_43bb:
	ld e, d                                          ; $43bb: $5a
	ld e, h                                          ; $43bc: $5c
	ld a, $61                                        ; $43bd: $3e $61

jr_079_43bf:
	ld d, [hl]                                       ; $43bf: $56
	dec sp                                           ; $43c0: $3b
	dec a                                            ; $43c1: $3d
	add hl, bc                                       ; $43c2: $09
	ld d, h                                          ; $43c3: $54
	ld b, d                                          ; $43c4: $42
	ldh a, [rAUD1LEN]                                ; $43c5: $f0 $11
	ldh a, [$3d]                                     ; $43c7: $f0 $3d
	ldh a, [rSC]                                     ; $43c9: $f0 $02
	ld b, d                                          ; $43cb: $42
	ld c, e                                          ; $43cc: $4b
	ld e, d                                          ; $43cd: $5a
	add hl, sp                                       ; $43ce: $39
	add hl, bc                                       ; $43cf: $09
	ldh a, [$80]                                     ; $43d0: $f0 $80
	ldh a, [$c5]                                     ; $43d2: $f0 $c5
	ldh a, [rKEY1]                                   ; $43d4: $f0 $4d
	ldh a, [rKEY1]                                   ; $43d6: $f0 $4d
	dec sp                                           ; $43d8: $3b

jr_079_43d9:
	ld h, c                                          ; $43d9: $61
	ld d, [hl]                                       ; $43da: $56
	dec sp                                           ; $43db: $3b
	dec a                                            ; $43dc: $3d
	add hl, bc                                       ; $43dd: $09
	ld b, [hl]                                       ; $43de: $46
	ld e, c                                          ; $43df: $59
	inc [hl]                                         ; $43e0: $34
	pop af                                           ; $43e1: $f1
	call c, Call_079_784b                            ; $43e2: $dc $4b $78
	ld a, [hl-]                                      ; $43e5: $3a
	jr c, @+$40                                      ; $43e6: $38 $3e

	add hl, bc                                       ; $43e8: $09
	add b                                            ; $43e9: $80
	jr c, @+$49                                      ; $43ea: $38 $47

	halt                                             ; $43ec: $76
	ld b, d                                          ; $43ed: $42
	ldh a, [rDMA]                                    ; $43ee: $f0 $46
	ld d, e                                          ; $43f0: $53
	ld a, b                                          ; $43f1: $78
	dec a                                            ; $43f2: $3d
	add hl, bc                                       ; $43f3: $09
	pop af                                           ; $43f4: $f1
	add hl, sp                                       ; $43f5: $39
	ld a, $47                                        ; $43f6: $3e $47
	ldh a, [$fa]                                     ; $43f8: $f0 $fa
	ld b, c                                          ; $43fa: $41
	ld c, d                                          ; $43fb: $4a
	ld l, h                                          ; $43fc: $6c
	ld a, [hl-]                                      ; $43fd: $3a
	jr c, jr_079_4409                                ; $43fe: $38 $09

	ld h, c                                          ; $4400: $61
	ld h, [hl]                                       ; $4401: $66
	dec sp                                           ; $4402: $3b
	ld c, c                                          ; $4403: $49
	inc [hl]                                         ; $4404: $34
	ldh a, [rAUD1LOW]                                ; $4405: $f0 $13
	ldh a, [$63]                                     ; $4407: $f0 $63

jr_079_4409:
	inc a                                            ; $4409: $3c
	ld a, [hl-]                                      ; $440a: $3a
	add hl, bc                                       ; $440b: $09
	pop af                                           ; $440c: $f1
	ld l, a                                          ; $440d: $6f
	ld b, d                                          ; $440e: $42
	ld c, c                                          ; $440f: $49
	ld d, h                                          ; $4410: $54
	ld b, a                                          ; $4411: $47
	ld h, a                                          ; $4412: $67
	ld d, h                                          ; $4413: $54
	add hl, sp                                       ; $4414: $39
	ld b, l                                          ; $4415: $45
	add hl, bc                                       ; $4416: $09
	ld c, e                                          ; $4417: $4b
	inc [hl]                                         ; $4418: $34
	ldh a, [hDisp1_LCDC]                                     ; $4419: $f0 $8f
	ld b, c                                          ; $441b: $41
	ld c, d                                          ; $441c: $4a
	ccf                                              ; $441d: $3f
	ld d, l                                          ; $441e: $55
	ld c, l                                          ; $441f: $4d
	ld b, l                                          ; $4420: $45
	add hl, bc                                       ; $4421: $09
	ld d, d                                          ; $4422: $52
	ld b, h                                          ; $4423: $44
	inc [hl]                                         ; $4424: $34
	ldh a, [rAUDVOL]                                 ; $4425: $f0 $24
	ld a, $3f                                        ; $4427: $3e $3f
	ld a, [hl-]                                      ; $4429: $3a
	jr c, jr_079_4471                                ; $442a: $38 $45

	add hl, bc                                       ; $442c: $09
	ld b, b                                          ; $442d: $40
	ld c, l                                          ; $442e: $4d
	ld e, e                                          ; $442f: $5b
	ld d, [hl]                                       ; $4430: $56
	inc [hl]                                         ; $4431: $34
	ldh a, [rOCPD]                                   ; $4432: $f0 $6b
	ldh a, [$60]                                     ; $4434: $f0 $60
	ldh a, [$03]                                     ; $4436: $f0 $03
	ld b, d                                          ; $4438: $42
	add hl, bc                                       ; $4439: $09
	ldh a, [$34]                                     ; $443a: $f0 $34
	ld b, d                                          ; $443c: $42
	ldh a, [$f9]                                     ; $443d: $f0 $f9
	ldh a, [rSTAT]                                   ; $443f: $f0 $41
	ld c, c                                          ; $4441: $49
	ld h, a                                          ; $4442: $67
	ld d, l                                          ; $4443: $55
	inc a                                            ; $4444: $3c
	ld d, b                                          ; $4445: $50
	add hl, bc                                       ; $4446: $09
	ld l, a                                          ; $4447: $6f
	ld c, e                                          ; $4448: $4b
	inc [hl]                                         ; $4449: $34
	ldh a, [rAUD4POLY]                               ; $444a: $f0 $22
	ld [hl], e                                       ; $444c: $73
	ldh a, [$35]                                     ; $444d: $f0 $35
	ld e, c                                          ; $444f: $59
	adc a                                            ; $4450: $8f
	ld d, e                                          ; $4451: $53
	add hl, bc                                       ; $4452: $09
	ld l, e                                          ; $4453: $6b
	ld b, d                                          ; $4454: $42
	ldh a, [$c1]                                     ; $4455: $f0 $c1
	ldh a, [$d5]                                     ; $4457: $f0 $d5
	ld h, d                                          ; $4459: $62
	ld a, $3f                                        ; $445a: $3e $3f
	ld c, [hl]                                       ; $445c: $4e
	ld b, d                                          ; $445d: $42
	add hl, bc                                       ; $445e: $09
	ld l, d                                          ; $445f: $6a
	inc a                                            ; $4460: $3c
	ld d, b                                          ; $4461: $50
	inc [hl]                                         ; $4462: $34
	ldh a, [$bb]                                     ; $4463: $f0 $bb
	ld [hl], c                                       ; $4465: $71
	ld c, [hl]                                       ; $4466: $4e
	ld e, l                                          ; $4467: $5d
	ld e, d                                          ; $4468: $5a
	add hl, bc                                       ; $4469: $09
	pop af                                           ; $446a: $f1
	ld l, a                                          ; $446b: $6f
	ld b, d                                          ; $446c: $42
	add h                                            ; $446d: $84
	ld b, d                                          ; $446e: $42
	pop af                                           ; $446f: $f1
	ld e, l                                          ; $4470: $5d

jr_079_4471:
	pop af                                           ; $4471: $f1
	and a                                            ; $4472: $a7
	ld l, h                                          ; $4473: $6c
	dec a                                            ; $4474: $3d
	jr c, jr_079_4480                                ; $4475: $38 $09

	ldh a, [rPCM12]                                  ; $4477: $f0 $76
	ldh a, [$d2]                                     ; $4479: $f0 $d2
	ldh a, [$3f]                                     ; $447b: $f0 $3f
	ld h, d                                          ; $447d: $62
	ldh a, [$bd]                                     ; $447e: $f0 $bd

jr_079_4480:
	jr c, jr_079_44c1                                ; $4480: $38 $3f

	ld c, [hl]                                       ; $4482: $4e
	ld b, d                                          ; $4483: $42
	add hl, bc                                       ; $4484: $09
	ldh a, [$d7]                                     ; $4485: $f0 $d7
	pop af                                           ; $4487: $f1
	sub c                                            ; $4488: $91
	ld a, [hl-]                                      ; $4489: $3a
	ld b, c                                          ; $448a: $41
	inc a                                            ; $448b: $3c
	ld a, $4c                                        ; $448c: $3e $4c
	ld e, [hl]                                       ; $448e: $5e
	ld b, l                                          ; $448f: $45
	add hl, bc                                       ; $4490: $09
	pop af                                           ; $4491: $f1
	ld sp, $3868                                     ; $4492: $31 $68 $38
	dec a                                            ; $4495: $3d
	ld b, h                                          ; $4496: $44
	jr c, jr_079_44d6                                ; $4497: $38 $3d

	sbc e                                            ; $4499: $9b
	ldh a, [rAUDTERM]                                ; $449a: $f0 $25
	add hl, bc                                       ; $449c: $09
	pop af                                           ; $449d: $f1
	ld sp, $3868                                     ; $449e: $31 $68 $38
	dec a                                            ; $44a1: $3d
	ld b, h                                          ; $44a2: $44
	jr c, jr_079_44e2                                ; $44a3: $38 $3d

	ldh a, [rSCX]                                    ; $44a5: $f0 $43
	ldh a, [rAUDTERM]                                ; $44a7: $f0 $25
	add hl, bc                                       ; $44a9: $09
	ld c, c                                          ; $44aa: $49
	ccf                                              ; $44ab: $3f
	ld c, a                                          ; $44ac: $4f
	ldh a, [rAUD4ENV]                                ; $44ad: $f0 $21
	ldh a, [rAUD4GO]                                 ; $44af: $f0 $23
	inc a                                            ; $44b1: $3c
	dec sp                                           ; $44b2: $3b
	dec a                                            ; $44b3: $3d
	ld b, l                                          ; $44b4: $45
	add hl, bc                                       ; $44b5: $09
	ld l, a                                          ; $44b6: $6f
	ld c, a                                          ; $44b7: $4f
	ld b, b                                          ; $44b8: $40
	add hl, sp                                       ; $44b9: $39
	ld [hl], a                                       ; $44ba: $77
	jr c, jr_079_450f                                ; $44bb: $38 $52

	ld a, $3d                                        ; $44bd: $3e $3d
	add hl, bc                                       ; $44bf: $09
	pop af                                           ; $44c0: $f1

jr_079_44c1:
	ld [bc], a                                       ; $44c1: $02
	ldh a, [$a1]                                     ; $44c2: $f0 $a1
	ld e, c                                          ; $44c4: $59
	pop af                                           ; $44c5: $f1
	ld d, h                                          ; $44c6: $54
	ldh a, [$a1]                                     ; $44c7: $f0 $a1
	ld e, c                                          ; $44c9: $59
	ldh a, [$7e]                                     ; $44ca: $f0 $7e
	ld [hl], e                                       ; $44cc: $73
	sub e                                            ; $44cd: $93
	add hl, bc                                       ; $44ce: $09
	ldh a, [$c1]                                     ; $44cf: $f0 $c1
	ldh a, [$d5]                                     ; $44d1: $f0 $d5
	pop af                                           ; $44d3: $f1
	ld l, b                                          ; $44d4: $68
	ld b, a                                          ; $44d5: $47

jr_079_44d6:
	pop af                                           ; $44d6: $f1
	ld d, $53                                        ; $44d7: $16 $53
	ld a, [hl-]                                      ; $44d9: $3a
	ld e, h                                          ; $44da: $5c
	ld d, [hl]                                       ; $44db: $56
	add hl, bc                                       ; $44dc: $09
	ldh a, [$67]                                     ; $44dd: $f0 $67
	ldh a, [$9f]                                     ; $44df: $f0 $9f
	ld h, d                                          ; $44e1: $62

jr_079_44e2:
	ldh a, [rHDMA1]                                  ; $44e2: $f0 $51
	dec sp                                           ; $44e4: $3b
	ccf                                              ; $44e5: $3f
	ld l, [hl]                                       ; $44e6: $6e
	ld c, l                                          ; $44e7: $4d
	ld a, e                                          ; $44e8: $7b
	add hl, bc                                       ; $44e9: $09
	ld d, d                                          ; $44ea: $52
	ld b, h                                          ; $44eb: $44
	or $00                                           ; $44ec: $f6 $00
	dec a                                            ; $44ee: $3d
	jr c, jr_079_4532                                ; $44ef: $38 $41

	ld b, h                                          ; $44f1: $44
	ld e, l                                          ; $44f2: $5d
	ld e, d                                          ; $44f3: $5a
	add hl, bc                                       ; $44f4: $09
	ldh a, [$ba]                                     ; $44f5: $f0 $ba
	ld h, l                                          ; $44f7: $65
	ldh a, [rIF]                                     ; $44f8: $f0 $0f
	ld a, $3f                                        ; $44fa: $3e $3f
	ld d, h                                          ; $44fc: $54
	ld b, l                                          ; $44fd: $45

jr_079_44fe:
	add hl, sp                                       ; $44fe: $39
	adc l                                            ; $44ff: $8d
	add hl, bc                                       ; $4500: $09
	ld a, a                                          ; $4501: $7f
	ld b, a                                          ; $4502: $47
	ld a, $3d                                        ; $4503: $3e $3d
	sbc d                                            ; $4505: $9a
	ldh a, [rAUD1LOW]                                ; $4506: $f0 $13
	jr c, jr_079_4544                                ; $4508: $38 $3a

	ld [hl], h                                       ; $450a: $74
	add hl, bc                                       ; $450b: $09
	ld b, l                                          ; $450c: $45
	ld a, $34                                        ; $450d: $3e $34

jr_079_450f:
	halt                                             ; $450f: $76
	ld c, a                                          ; $4510: $4f
	sub d                                            ; $4511: $92
	adc [hl]                                         ; $4512: $8e
	ld c, [hl]                                       ; $4513: $4e
	sub a                                            ; $4514: $97
	add hl, bc                                       ; $4515: $09
	ldh a, [$c0]                                     ; $4516: $f0 $c0
	ldh a, [$f0]                                     ; $4518: $f0 $f0
	ld c, c                                          ; $451a: $49
	di                                               ; $451b: $f3
	ld [bc], a                                       ; $451c: $02
	pop af                                           ; $451d: $f1
	ld [$413a], a                                    ; $451e: $ea $3a $41
	ld b, h                                          ; $4521: $44
	ld c, h                                          ; $4522: $4c
	add hl, bc                                       ; $4523: $09
	ldh a, [rLCDC]                                   ; $4524: $f0 $40
	ld c, [hl]                                       ; $4526: $4e
	ld a, [hl-]                                      ; $4527: $3a
	ld d, b                                          ; $4528: $50
	inc [hl]                                         ; $4529: $34
	ld a, d                                          ; $452a: $7a
	ld d, a                                          ; $452b: $57
	ld d, d                                          ; $452c: $52
	ld d, c                                          ; $452d: $51
	add hl, bc                                       ; $452e: $09
	ld l, l                                          ; $452f: $6d
	ld a, h                                          ; $4530: $7c
	ld b, a                                          ; $4531: $47

jr_079_4532:
	inc [hl]                                         ; $4532: $34
	ld [hl], d                                       ; $4533: $72
	adc c                                            ; $4534: $89
	ld a, $3a                                        ; $4535: $3e $3a
	jr c, jr_079_4542                                ; $4537: $38 $09

	ld l, l                                          ; $4539: $6d
	ldh a, [rTIMA]                                   ; $453a: $f0 $05
	ldh a, [c]                                       ; $453c: $f2
	inc d                                            ; $453d: $14
	pop af                                           ; $453e: $f1
	rst AddAOntoHL                                          ; $453f: $ef
	ldh a, [$a5]                                     ; $4540: $f0 $a5

jr_079_4542:
	dec sp                                           ; $4542: $3b
	dec a                                            ; $4543: $3d

jr_079_4544:
	ld b, d                                          ; $4544: $42
	ld b, a                                          ; $4545: $47
	add hl, bc                                       ; $4546: $09
	ld l, d                                          ; $4547: $6a
	ld l, b                                          ; $4548: $68
	ld c, e                                          ; $4549: $4b
	inc [hl]                                         ; $454a: $34
	sub d                                            ; $454b: $92
	adc [hl]                                         ; $454c: $8e
	ld e, a                                          ; $454d: $5f
	add hl, sp                                       ; $454e: $39
	ld c, h                                          ; $454f: $4c
	add hl, bc                                       ; $4550: $09
	ld l, l                                          ; $4551: $6d
	add h                                            ; $4552: $84
	ld c, d                                          ; $4553: $4a
	ld h, a                                          ; $4554: $67
	ld e, l                                          ; $4555: $5d
	ld d, d                                          ; $4556: $52
	ld d, c                                          ; $4557: $51
	inc a                                            ; $4558: $3c
	ld d, b                                          ; $4559: $50
	add hl, bc                                       ; $455a: $09
	ldh a, [$a6]                                     ; $455b: $f0 $a6
	ld e, c                                          ; $455d: $59
	pop af                                           ; $455e: $f1
	ld [hl], h                                       ; $455f: $74
	ld e, c                                          ; $4560: $59
	ldh a, [$7a]                                     ; $4561: $f0 $7a
	ldh a, [rAUDTERM]                                ; $4563: $f0 $25
	db $f4                                           ; $4565: $f4
	jr z, jr_079_44fe                                ; $4566: $28 $96

	di                                               ; $4568: $f3
	ret z                                            ; $4569: $c8

	add hl, bc                                       ; $456a: $09
	ldh a, [rAUD2HIGH]                               ; $456b: $f0 $19
	ldh a, [c]                                       ; $456d: $f2
	db $ec                                           ; $456e: $ec
	pop af                                           ; $456f: $f1
	jr z, @-$0e                                      ; $4570: $28 $f0

	ld b, h                                          ; $4572: $44
	ld c, d                                          ; $4573: $4a
	ldh a, [c]                                       ; $4574: $f2
	ld d, h                                          ; $4575: $54
	ld d, e                                          ; $4576: $53
	ldh a, [c]                                       ; $4577: $f2
	adc [hl]                                         ; $4578: $8e
	ldh a, [hLCDCIntHandlerIdx]                                     ; $4579: $f0 $81
	add hl, bc                                       ; $457b: $09
	jr c, jr_079_45ec                                ; $457c: $38 $6e

	ld [hl], h                                       ; $457e: $74
	inc [hl]                                         ; $457f: $34
	ld a, [hl]                                       ; $4580: $7e
	inc a                                            ; $4581: $3c
	dec sp                                           ; $4582: $3b
	dec a                                            ; $4583: $3d
	ld b, l                                          ; $4584: $45
	add hl, bc                                       ; $4585: $09

jr_079_4586:
	ld h, e                                          ; $4586: $63
	ldh a, [rAUD1SWEEP]                              ; $4587: $f0 $10
	ld h, e                                          ; $4589: $63
	ldh a, [rAUD1SWEEP]                              ; $458a: $f0 $10
	ld a, b                                          ; $458c: $78
	ccf                                              ; $458d: $3f
	ld d, l                                          ; $458e: $55
	ld c, l                                          ; $458f: $4d
	ccf                                              ; $4590: $3f
	add hl, bc                                       ; $4591: $09
	ld e, d                                          ; $4592: $5a
	add hl, sp                                       ; $4593: $39
	ld a, $45                                        ; $4594: $3e $45
	add hl, sp                                       ; $4596: $39
	inc a                                            ; $4597: $3c
	ld a, [hl-]                                      ; $4598: $3a
	ld [hl], $33                                     ; $4599: $36 $33
	add hl, bc                                       ; $459b: $09
	add c                                            ; $459c: $81
	ld [hl], l                                       ; $459d: $75
	sub l                                            ; $459e: $95
	ld h, l                                          ; $459f: $65
	ld l, c                                          ; $45a0: $69
	ld h, d                                          ; $45a1: $62
	ld a, $3a                                        ; $45a2: $3e $3a
	jr c, jr_079_45af                                ; $45a4: $38 $09

	ld e, d                                          ; $45a6: $5a
	dec sp                                           ; $45a7: $3b
	ld h, c                                          ; $45a8: $61
	ld d, e                                          ; $45a9: $53
	adc e                                            ; $45aa: $8b
	ld e, h                                          ; $45ab: $5c
	ld a, [hl-]                                      ; $45ac: $3a
	ld b, c                                          ; $45ad: $41
	ld b, h                                          ; $45ae: $44

jr_079_45af:
	add hl, bc                                       ; $45af: $09
	pop af                                           ; $45b0: $f1
	ld d, $47                                        ; $45b1: $16 $47
	ldh a, [$0c]                                     ; $45b3: $f0 $0c
	inc a                                            ; $45b5: $3c
	ld c, l                                          ; $45b6: $4d
	ccf                                              ; $45b7: $3f
	ld c, a                                          ; $45b8: $4f
	ld h, b                                          ; $45b9: $60
	ld h, b                                          ; $45ba: $60
	add hl, bc                                       ; $45bb: $09
	ld c, e                                          ; $45bc: $4b
	dec sp                                           ; $45bd: $3b
	ld e, h                                          ; $45be: $5c
	ld d, a                                          ; $45bf: $57
	ld e, b                                          ; $45c0: $58
	ld a, c                                          ; $45c1: $79
	ld a, [hl-]                                      ; $45c2: $3a
	jr c, jr_079_460e                                ; $45c3: $38 $49

	add hl, bc                                       ; $45c5: $09
	ldh a, [$cd]                                     ; $45c6: $f0 $cd
	ld [hl], l                                       ; $45c8: $75
	pop af                                           ; $45c9: $f1
	dec e                                            ; $45ca: $1d
	ldh a, [$03]                                     ; $45cb: $f0 $03
	ld a, [hl-]                                      ; $45cd: $3a
	ld b, d                                          ; $45ce: $42
	inc a                                            ; $45cf: $3c
	ld h, b                                          ; $45d0: $60
	ld h, b                                          ; $45d1: $60
	add hl, bc                                       ; $45d2: $09
	ld h, e                                          ; $45d3: $63
	ldh a, [rAUD1SWEEP]                              ; $45d4: $f0 $10
	ld h, e                                          ; $45d6: $63
	ldh a, [rAUD1SWEEP]                              ; $45d7: $f0 $10
	pop af                                           ; $45d9: $f1
	or h                                             ; $45da: $b4
	ld e, l                                          ; $45db: $5d
	sub h                                            ; $45dc: $94
	ld a, $3f                                        ; $45dd: $3e $3f
	add hl, bc                                       ; $45df: $09
	ld a, $3b                                        ; $45e0: $3e $3b
	inc a                                            ; $45e2: $3c
	ld d, a                                          ; $45e3: $57
	ldh a, [$dd]                                     ; $45e4: $f0 $dd
	ldh a, [$9c]                                     ; $45e6: $f0 $9c
	ld a, $3f                                        ; $45e8: $3e $3f
	ld c, [hl]                                       ; $45ea: $4e
	add hl, bc                                       ; $45eb: $09

jr_079_45ec:
	ldh a, [$9c]                                     ; $45ec: $f0 $9c
	ldh a, [c]                                       ; $45ee: $f2
	ld h, l                                          ; $45ef: $65

Jump_079_45f0:
	ld e, e                                          ; $45f0: $5b
	ld d, [hl]                                       ; $45f1: $56
	ld a, [hl-]                                      ; $45f2: $3a
	jr c, @+$5f                                      ; $45f3: $38 $5d

	ld e, d                                          ; $45f5: $5a
	ld a, [hl-]                                      ; $45f6: $3a
	add hl, bc                                       ; $45f7: $09
	ld b, b                                          ; $45f8: $40
	add hl, sp                                       ; $45f9: $39
	inc a                                            ; $45fa: $3c
	ld h, b                                          ; $45fb: $60
	ld h, b                                          ; $45fc: $60
	ldh a, [$8d]                                     ; $45fd: $f0 $8d
	ldh a, [$9e]                                     ; $45ff: $f0 $9e
	ld b, h                                          ; $4601: $44
	ld b, l                                          ; $4602: $45
	add hl, bc                                       ; $4603: $09
	jr c, jr_079_4586                                ; $4604: $38 $80

	ld c, d                                          ; $4606: $4a
	ld c, a                                          ; $4607: $4f
	ldh a, [c]                                       ; $4608: $f2
	or e                                             ; $4609: $b3
	ldh a, [c]                                       ; $460a: $f2
	ld d, d                                          ; $460b: $52
	ld d, c                                          ; $460c: $51
	ld c, [hl]                                       ; $460d: $4e

jr_079_460e:
	ld b, l                                          ; $460e: $45
	add hl, bc                                       ; $460f: $09
	ldh a, [rP1]                                     ; $4610: $f0 $00
	pop af                                           ; $4612: $f1
	ld b, l                                          ; $4613: $45
	ldh a, [$27]                                     ; $4614: $f0 $27
	ldh a, [$78]                                     ; $4616: $f0 $78
	pop af                                           ; $4618: $f1
	rst JumpTable                                          ; $4619: $c7
	ldh a, [hDisp0_WY]                                     ; $461a: $f0 $88
	ldh a, [rAUD3LOW]                                ; $461c: $f0 $1d
	sbc b                                            ; $461e: $98
	ld h, l                                          ; $461f: $65
	add hl, bc                                       ; $4620: $09
	ld b, b                                          ; $4621: $40
	add hl, sp                                       ; $4622: $39
	jr c, jr_079_4683                                ; $4623: $38 $5e

	ld a, e                                          ; $4625: $7b
	inc [hl]                                         ; $4626: $34
	pop af                                           ; $4627: $f1
	sbc a                                            ; $4628: $9f
	pop af                                           ; $4629: $f1
	adc [hl]                                         ; $462a: $8e
	ld c, e                                          ; $462b: $4b
	add hl, bc                                       ; $462c: $09
	ld b, b                                          ; $462d: $40
	add hl, sp                                       ; $462e: $39
	jr c, jr_079_468f                                ; $462f: $38 $5e

	ld a, e                                          ; $4631: $7b
	inc [hl]                                         ; $4632: $34
	sbc e                                            ; $4633: $9b
	ldh a, [$0e]                                     ; $4634: $f0 $0e
	ld c, e                                          ; $4636: $4b
	add hl, bc                                       ; $4637: $09
	ld b, b                                          ; $4638: $40
	add hl, sp                                       ; $4639: $39
	jr c, jr_079_469a                                ; $463a: $38 $5e

	ld a, e                                          ; $463c: $7b
	inc [hl]                                         ; $463d: $34
	pop af                                           ; $463e: $f1
	db $db                                           ; $463f: $db
	pop af                                           ; $4640: $f1
	ldh a, [rWX]                                     ; $4641: $f0 $4b
	add hl, bc                                       ; $4643: $09
	ld b, b                                          ; $4644: $40
	add hl, sp                                       ; $4645: $39
	jr c, jr_079_46a6                                ; $4646: $38 $5e

	ld a, e                                          ; $4648: $7b
	inc [hl]                                         ; $4649: $34
	pop af                                           ; $464a: $f1
	xor [hl]                                         ; $464b: $ae
	adc h                                            ; $464c: $8c
	ld c, e                                          ; $464d: $4b
	add hl, bc                                       ; $464e: $09
	ld b, b                                          ; $464f: $40
	add hl, sp                                       ; $4650: $39
	jr c, jr_079_46b1                                ; $4651: $38 $5e

	ld a, e                                          ; $4653: $7b
	inc [hl]                                         ; $4654: $34
	ldh a, [$80]                                     ; $4655: $f0 $80
	ldh a, [hDisp1_BGP]                                     ; $4657: $f0 $92
	ld c, e                                          ; $4659: $4b
	add hl, bc                                       ; $465a: $09
	ld b, b                                          ; $465b: $40
	add hl, sp                                       ; $465c: $39
	jr c, jr_079_46bd                                ; $465d: $38 $5e

	ld a, e                                          ; $465f: $7b
	inc [hl]                                         ; $4660: $34
	pop af                                           ; $4661: $f1
	call nz, Call_079_4b8c                           ; $4662: $c4 $8c $4b
	add hl, bc                                       ; $4665: $09
	ld b, b                                          ; $4666: $40
	add hl, sp                                       ; $4667: $39
	jr c, jr_079_46c8                                ; $4668: $38 $5e

	ld a, e                                          ; $466a: $7b
	inc [hl]                                         ; $466b: $34
	ldh a, [$4e]                                     ; $466c: $f0 $4e
	adc d                                            ; $466e: $8a
	ld c, e                                          ; $466f: $4b
	add hl, bc                                       ; $4670: $09
	ld b, b                                          ; $4671: $40
	add hl, sp                                       ; $4672: $39
	jr c, jr_079_46d3                                ; $4673: $38 $5e

	ld a, e                                          ; $4675: $7b
	inc [hl]                                         ; $4676: $34
	pop af                                           ; $4677: $f1
	di                                               ; $4678: $f3
	adc h                                            ; $4679: $8c
	ld c, e                                          ; $467a: $4b
	add hl, bc                                       ; $467b: $09
	ld b, b                                          ; $467c: $40
	add hl, sp                                       ; $467d: $39
	jr c, @+$60                                      ; $467e: $38 $5e

	ld a, e                                          ; $4680: $7b
	inc [hl]                                         ; $4681: $34
	ldh a, [c]                                       ; $4682: $f2

jr_079_4683:
	ld d, $8a                                        ; $4683: $16 $8a
	ld c, e                                          ; $4685: $4b
	add hl, bc                                       ; $4686: $09
	ld b, b                                          ; $4687: $40
	add hl, sp                                       ; $4688: $39
	jr c, jr_079_46e9                                ; $4689: $38 $5e

	ld a, e                                          ; $468b: $7b
	inc [hl]                                         ; $468c: $34
	ld [hl], d                                       ; $468d: $72
	pop af                                           ; $468e: $f1

jr_079_468f:
	ld e, $4b                                        ; $468f: $1e $4b
	add hl, bc                                       ; $4691: $09
	ld h, c                                          ; $4692: $61
	ld h, [hl]                                       ; $4693: $66
	dec sp                                           ; $4694: $3b
	ld c, c                                          ; $4695: $49
	ldh a, [rVBK]                                    ; $4696: $f0 $4f
	ldh a, [$b0]                                     ; $4698: $f0 $b0

jr_079_469a:
	ld b, h                                          ; $469a: $44
	ld e, l                                          ; $469b: $5d
	ld e, d                                          ; $469c: $5a
	add hl, bc                                       ; $469d: $09
	ldh a, [rBGP]                                    ; $469e: $f0 $47
	ldh a, [$2a]                                     ; $46a0: $f0 $2a
	ld c, e                                          ; $46a2: $4b
	ld b, [hl]                                       ; $46a3: $46
	ld d, a                                          ; $46a4: $57
	ld b, [hl]                                       ; $46a5: $46

jr_079_46a6:
	ld d, d                                          ; $46a6: $52
	ld c, [hl]                                       ; $46a7: $4e
	pop af                                           ; $46a8: $f1
	rst SubAFromHL                                          ; $46a9: $d7
	add hl, bc                                       ; $46aa: $09
	ldh a, [c]                                       ; $46ab: $f2
	ld l, $71                                        ; $46ac: $2e $71
	ld c, [hl]                                       ; $46ae: $4e
	ld d, h                                          ; $46af: $54
	ld c, c                                          ; $46b0: $49

jr_079_46b1:
	ld b, a                                          ; $46b1: $47
	ld a, [hl-]                                      ; $46b2: $3a
	dec sp                                           ; $46b3: $3b
	dec a                                            ; $46b4: $3d
	add hl, bc                                       ; $46b5: $09
	pop af                                           ; $46b6: $f1
	jr c, jr_079_46fa                                ; $46b7: $38 $41

	ld b, h                                          ; $46b9: $44
	ldh a, [$ee]                                     ; $46ba: $f0 $ee
	ld d, e                                          ; $46bc: $53

jr_079_46bd:
	ldh a, [$f5]                                     ; $46bd: $f0 $f5
	add hl, sp                                       ; $46bf: $39
	inc a                                            ; $46c0: $3c
	ld d, b                                          ; $46c1: $50
	add hl, bc                                       ; $46c2: $09
	ld h, c                                          ; $46c3: $61
	ld h, [hl]                                       ; $46c4: $66
	dec sp                                           ; $46c5: $3b
	ld c, c                                          ; $46c6: $49
	sbc c                                            ; $46c7: $99

jr_079_46c8:
	dec sp                                           ; $46c8: $3b
	ccf                                              ; $46c9: $3f
	ld d, l                                          ; $46ca: $55
	ld c, l                                          ; $46cb: $4d
	add hl, bc                                       ; $46cc: $09
	ld d, h                                          ; $46cd: $54
	ld b, d                                          ; $46ce: $42
	adc c                                            ; $46cf: $89
	sbc a                                            ; $46d0: $9f
	ld b, d                                          ; $46d1: $42
	pop af                                           ; $46d2: $f1

jr_079_46d3:
	ld [hl], c                                       ; $46d3: $71
	pop af                                           ; $46d4: $f1
	dec c                                            ; $46d5: $0d
	ld d, e                                          ; $46d6: $53
	add hl, bc                                       ; $46d7: $09
	ldh a, [$8e]                                     ; $46d8: $f0 $8e
	ldh a, [rP1]                                     ; $46da: $f0 $00
	ld e, c                                          ; $46dc: $59
	ldh a, [rDIV]                                    ; $46dd: $f0 $04
	ld e, c                                          ; $46df: $59
	ld c, c                                          ; $46e0: $49
	ld a, $3f                                        ; $46e1: $3e $3f
	add hl, bc                                       ; $46e3: $09
	add a                                            ; $46e4: $87
	adc c                                            ; $46e5: $89
	ld b, l                                          ; $46e6: $45
	ld d, a                                          ; $46e7: $57
	ld c, a                                          ; $46e8: $4f

jr_079_46e9:
	ldh a, [c]                                       ; $46e9: $f2
	dec b                                            ; $46ea: $05
	pop af                                           ; $46eb: $f1
	ld h, d                                          ; $46ec: $62
	ld d, e                                          ; $46ed: $53
	add hl, bc                                       ; $46ee: $09
	ldh a, [c]                                       ; $46ef: $f2
	push hl                                          ; $46f0: $e5
	ld e, [hl]                                       ; $46f1: $5e
	dec a                                            ; $46f2: $3d
	ld l, h                                          ; $46f3: $6c
	dec a                                            ; $46f4: $3d
	jr c, jr_079_473b                                ; $46f5: $38 $44

	sub a                                            ; $46f7: $97
	add hl, bc                                       ; $46f8: $09
	ld [hl], b                                       ; $46f9: $70

jr_079_46fa:
	inc [hl]                                         ; $46fa: $34
	ld [hl], b                                       ; $46fb: $70
	ld [hl], c                                       ; $46fc: $71
	ld b, c                                          ; $46fd: $41
	ld a, [hl-]                                      ; $46fe: $3a
	ld e, b                                          ; $46ff: $58
	jr c, jr_079_470b                                ; $4700: $38 $09

	ld h, e                                          ; $4702: $63
	ld d, a                                          ; $4703: $57
	ld c, c                                          ; $4704: $49

jr_079_4705:
	ld a, [hl]                                       ; $4705: $7e
	jr c, jr_079_46fa                                ; $4706: $38 $f2

	adc a                                            ; $4708: $8f
	ldh a, [c]                                       ; $4709: $f2
	sub b                                            ; $470a: $90

jr_079_470b:
	ld h, d                                          ; $470b: $62
	add hl, bc                                       ; $470c: $09
	ld b, [hl]                                       ; $470d: $46
	ld d, d                                          ; $470e: $52
	ld d, a                                          ; $470f: $57
	ld a, [hl]                                       ; $4710: $7e
	jr c, jr_079_4705                                ; $4711: $38 $f2

	adc a                                            ; $4713: $8f
	ldh a, [c]                                       ; $4714: $f2
	sub b                                            ; $4715: $90
	ld h, d                                          ; $4716: $62
	add hl, bc                                       ; $4717: $09
	ldh a, [c]                                       ; $4718: $f2
	push hl                                          ; $4719: $e5
	ld e, [hl]                                       ; $471a: $5e
	ld h, c                                          ; $471b: $61
	ld d, [hl]                                       ; $471c: $56
	dec sp                                           ; $471d: $3b
	dec a                                            ; $471e: $3d
	inc a                                            ; $471f: $3c
	ld a, [hl-]                                      ; $4720: $3a
	add hl, bc                                       ; $4721: $09
	ldh a, [$3d]                                     ; $4722: $f0 $3d
	ld a, l                                          ; $4724: $7d
	ldh a, [$32]                                     ; $4725: $f0 $32
	ldh a, [$03]                                     ; $4727: $f0 $03
	ldh a, [$50]                                     ; $4729: $f0 $50
	ldh a, [$03]                                     ; $472b: $f0 $03
	ld e, c                                          ; $472d: $59
	add c                                            ; $472e: $81
	add hl, bc                                       ; $472f: $09
	ldh a, [$2d]                                     ; $4730: $f0 $2d
	ld d, a                                          ; $4732: $57
	dec a                                            ; $4733: $3d
	jr c, jr_079_4777                                ; $4734: $38 $41

	ld b, h                                          ; $4736: $44
	ld e, l                                          ; $4737: $5d
	ld e, d                                          ; $4738: $5a
	add hl, bc                                       ; $4739: $09
	ld l, l                                          ; $473a: $6d

jr_079_473b:
	ld a, h                                          ; $473b: $7c
	ld b, a                                          ; $473c: $47
	ld h, a                                          ; $473d: $67
	inc a                                            ; $473e: $3c
	ld a, [hl-]                                      ; $473f: $3a
	jr c, jr_079_477e                                ; $4740: $38 $3c

	add hl, bc                                       ; $4742: $09
	ldh a, [c]                                       ; $4743: $f2
	cp d                                             ; $4744: $ba
	dec sp                                           ; $4745: $3b
	dec a                                            ; $4746: $3d
	ld l, h                                          ; $4747: $6c
	dec a                                            ; $4748: $3d
	jr c, jr_079_478f                                ; $4749: $38 $44

	sub a                                            ; $474b: $97
	add hl, bc                                       ; $474c: $09
	ld d, h                                          ; $474d: $54
	ld c, l                                          ; $474e: $4d
	ld c, d                                          ; $474f: $4a
	ld c, e                                          ; $4750: $4b
	inc [hl]                                         ; $4751: $34
	ld h, h                                          ; $4752: $64
	ld c, l                                          ; $4753: $4d
	ld c, e                                          ; $4754: $4b
	add hl, bc                                       ; $4755: $09
	ldh a, [$fa]                                     ; $4756: $f0 $fa
	ld b, c                                          ; $4758: $41
	ld c, d                                          ; $4759: $4a
	ld d, l                                          ; $475a: $55
	ld c, l                                          ; $475b: $4d
	dec a                                            ; $475c: $3d
	ld b, c                                          ; $475d: $41
	ld b, h                                          ; $475e: $44
	add hl, bc                                       ; $475f: $09
	ldh a, [$c7]                                     ; $4760: $f0 $c7
	ld d, l                                          ; $4762: $55
	ld a, [hl-]                                      ; $4763: $3a
	dec sp                                           ; $4764: $3b
	ld h, c                                          ; $4765: $61
	ld d, [hl]                                       ; $4766: $56
	dec sp                                           ; $4767: $3b
	dec a                                            ; $4768: $3d
	add hl, bc                                       ; $4769: $09
	ld h, c                                          ; $476a: $61
	ld h, [hl]                                       ; $476b: $66
	add hl, sp                                       ; $476c: $39
	ld e, d                                          ; $476d: $5a
	ld a, [hl]                                       ; $476e: $7e
	inc a                                            ; $476f: $3c
	dec sp                                           ; $4770: $3b
	dec a                                            ; $4771: $3d
	add hl, bc                                       ; $4772: $09
	ldh a, [$3b]                                     ; $4773: $f0 $3b
	dec sp                                           ; $4775: $3b
	ccf                                              ; $4776: $3f

jr_079_4777:
	ld c, a                                          ; $4777: $4f
	jr c, jr_079_47b2                                ; $4778: $38 $38

	inc a                                            ; $477a: $3c
	ld a, [hl-]                                      ; $477b: $3a
	add hl, bc                                       ; $477c: $09
	ld c, e                                          ; $477d: $4b

jr_079_477e:
	ld b, [hl]                                       ; $477e: $46
	inc [hl]                                         ; $477f: $34
	ld c, e                                          ; $4780: $4b
	ld b, [hl]                                       ; $4781: $46
	inc [hl]                                         ; $4782: $34
	ld c, e                                          ; $4783: $4b
	ld b, [hl]                                       ; $4784: $46
	add hl, bc                                       ; $4785: $09
	ld b, l                                          ; $4786: $45
	ld a, $34                                        ; $4787: $3e $34
	ld b, b                                          ; $4789: $40
	ld c, l                                          ; $478a: $4d
	ld e, e                                          ; $478b: $5b
	ld d, [hl]                                       ; $478c: $56
	ld b, [hl]                                       ; $478d: $46
	add hl, bc                                       ; $478e: $09

jr_079_478f:
	ld c, a                                          ; $478f: $4f
	add hl, sp                                       ; $4790: $39
	ld h, a                                          ; $4791: $67
	dec sp                                           ; $4792: $3b
	ld h, c                                          ; $4793: $61
	ld d, [hl]                                       ; $4794: $56
	add hl, sp                                       ; $4795: $39
	ld b, d                                          ; $4796: $42
	add hl, bc                                       ; $4797: $09
	jr c, @+$36                                      ; $4798: $38 $34

	jr c, jr_079_47ec                                ; $479a: $38 $50

	dec sp                                           ; $479c: $3b
	ld a, $56                                        ; $479d: $3e $56
	jr c, jr_079_47aa                                ; $479f: $38 $09

	jr c, jr_079_47dd                                ; $47a1: $38 $3a

	jr c, jr_079_4811                                ; $47a3: $38 $6c

	dec a                                            ; $47a5: $3d
	jr c, jr_079_47ec                                ; $47a6: $38 $44

	sub a                                            ; $47a8: $97
	add hl, bc                                       ; $47a9: $09

jr_079_47aa:
	adc b                                            ; $47aa: $88
	sub c                                            ; $47ab: $91
	ld c, a                                          ; $47ac: $4f
	add hl, sp                                       ; $47ad: $39
	ld d, c                                          ; $47ae: $51
	sbc l                                            ; $47af: $9d
	ld b, h                                          ; $47b0: $44
	ld b, l                                          ; $47b1: $45

jr_079_47b2:
	add hl, bc                                       ; $47b2: $09
	adc b                                            ; $47b3: $88
	sub c                                            ; $47b4: $91
	inc [hl]                                         ; $47b5: $34
	ld e, h                                          ; $47b6: $5c
	ld c, l                                          ; $47b7: $4d
	jr c, jr_079_47fe                                ; $47b8: $38 $44

	ld c, h                                          ; $47ba: $4c
	add hl, bc                                       ; $47bb: $09
	ld h, d                                          ; $47bc: $62
	ldh a, [$3b]                                     ; $47bd: $f0 $3b
	dec sp                                           ; $47bf: $3b
	ccf                                              ; $47c0: $3f
	ld [hl], d                                       ; $47c1: $72
	ld b, a                                          ; $47c2: $47
	ld h, a                                          ; $47c3: $67
	ld d, l                                          ; $47c4: $55
	add hl, bc                                       ; $47c5: $09
	pop af                                           ; $47c6: $f1
	push bc                                          ; $47c7: $c5
	di                                               ; $47c8: $f3
	ld e, d                                          ; $47c9: $5a
	ldh a, [c]                                       ; $47ca: $f2
	ret nc                                           ; $47cb: $d0

	ld b, a                                          ; $47cc: $47
	ldh a, [rLCDC]                                   ; $47cd: $f0 $40
	ld e, a                                          ; $47cf: $5f
	add hl, sp                                       ; $47d0: $39
	ld b, l                                          ; $47d1: $45
	add hl, bc                                       ; $47d2: $09
	ld b, b                                          ; $47d3: $40
	ld b, d                                          ; $47d4: $42
	ldh a, [rPCM34]                                  ; $47d5: $f0 $77
	ldh a, [$ac]                                     ; $47d7: $f0 $ac
	ldh a, [$8a]                                     ; $47d9: $f0 $8a
	ldh a, [rHDMA2]                                  ; $47db: $f0 $52

jr_079_47dd:
	jr c, jr_079_482b                                ; $47dd: $38 $4c

	add hl, bc                                       ; $47df: $09
	ld [hl-], a                                      ; $47e0: $32
	ld b, [hl]                                       ; $47e1: $46
	dec sp                                           ; $47e2: $3b
	inc [hl]                                         ; $47e3: $34
	pop af                                           ; $47e4: $f1
	dec a                                            ; $47e5: $3d
	ld d, h                                          ; $47e6: $54
	add hl, sp                                       ; $47e7: $39
	ld c, d                                          ; $47e8: $4a
	add hl, bc                                       ; $47e9: $09
	ld l, d                                          ; $47ea: $6a
	ld a, b                                          ; $47eb: $78

jr_079_47ec:
	dec a                                            ; $47ec: $3d
	ld c, c                                          ; $47ed: $49
	ld d, h                                          ; $47ee: $54
	ld b, h                                          ; $47ef: $44
	inc a                                            ; $47f0: $3c
	ld d, b                                          ; $47f1: $50
	add hl, bc                                       ; $47f2: $09
	jr c, jr_079_4832                                ; $47f3: $38 $3d

	ld b, c                                          ; $47f5: $41
	ld b, h                                          ; $47f6: $44
	ld e, l                                          ; $47f7: $5d
	ld e, d                                          ; $47f8: $5a
	ld a, [hl-]                                      ; $47f9: $3a
	ld [hl], h                                       ; $47fa: $74
	add hl, bc                                       ; $47fb: $09
	ld d, h                                          ; $47fc: $54
	ld c, l                                          ; $47fd: $4d

jr_079_47fe:
	ld b, h                                          ; $47fe: $44
	ld e, l                                          ; $47ff: $5d
	ldh a, [c]                                       ; $4800: $f2
	cp l                                             ; $4801: $bd
	jr c, jr_079_4846                                ; $4802: $38 $42

	ld b, a                                          ; $4804: $47
	add hl, bc                                       ; $4805: $09
	dec a                                            ; $4806: $3d
	ld d, l                                          ; $4807: $55
	ld e, b                                          ; $4808: $58
	ld b, c                                          ; $4809: $41
	add h                                            ; $480a: $84
	ld d, e                                          ; $480b: $53
	jr c, jr_079_484d                                ; $480c: $38 $3f

	add hl, bc                                       ; $480e: $09
	ld b, [hl]                                       ; $480f: $46
	ld e, c                                          ; $4810: $59

jr_079_4811:
	dec sp                                           ; $4811: $3b
	inc [hl]                                         ; $4812: $34
	pop af                                           ; $4813: $f1
	cp d                                             ; $4814: $ba
	inc a                                            ; $4815: $3c
	dec sp                                           ; $4816: $3b
	dec a                                            ; $4817: $3d
	add hl, bc                                       ; $4818: $09
	ld h, c                                          ; $4819: $61
	ld h, [hl]                                       ; $481a: $66
	dec sp                                           ; $481b: $3b
	ld c, c                                          ; $481c: $49
	sbc c                                            ; $481d: $99
	dec sp                                           ; $481e: $3b
	ccf                                              ; $481f: $3f
	ld b, l                                          ; $4820: $45
	add hl, bc                                       ; $4821: $09
	ld d, h                                          ; $4822: $54
	ld c, l                                          ; $4823: $4d
	inc a                                            ; $4824: $3c
	ld d, b                                          ; $4825: $50
	ld b, l                                          ; $4826: $45
	ld e, a                                          ; $4827: $5f
	ld a, $55                                        ; $4828: $3e $55
	add hl, bc                                       ; $482a: $09

jr_079_482b:
	ld d, h                                          ; $482b: $54
	ld b, d                                          ; $482c: $42
	adc a                                            ; $482d: $8f
	ld b, h                                          ; $482e: $44
	dec sp                                           ; $482f: $3b
	dec a                                            ; $4830: $3d
	ld b, c                                          ; $4831: $41

jr_079_4832:
	ld b, h                                          ; $4832: $44
	add hl, bc                                       ; $4833: $09
	ld b, [hl]                                       ; $4834: $46
	ld c, l                                          ; $4835: $4d
	ld c, e                                          ; $4836: $4b
	inc [hl]                                         ; $4837: $34
	ldh a, [c]                                       ; $4838: $f2
	sub a                                            ; $4839: $97
	ldh a, [$e7]                                     ; $483a: $f0 $e7
	ld b, h                                          ; $483c: $44
	ld b, l                                          ; $483d: $45
	add hl, bc                                       ; $483e: $09
	ldh a, [rAUD3LEN]                                ; $483f: $f0 $1b
	ldh a, [$15]                                     ; $4841: $f0 $15
	ld b, [hl]                                       ; $4843: $46
	ld c, [hl]                                       ; $4844: $4e
	ld b, d                                          ; $4845: $42

jr_079_4846:
	ld l, h                                          ; $4846: $6c
	ld b, h                                          ; $4847: $44
	ld b, l                                          ; $4848: $45
	add hl, bc                                       ; $4849: $09
	ld l, [hl]                                       ; $484a: $6e
	dec sp                                           ; $484b: $3b
	ccf                                              ; $484c: $3f

jr_079_484d:
	ld c, [hl]                                       ; $484d: $4e
	ld b, c                                          ; $484e: $41
	ld b, h                                          ; $484f: $44
	ld e, l                                          ; $4850: $5d
	ld e, d                                          ; $4851: $5a
	add hl, bc                                       ; $4852: $09
	ldh a, [$5c]                                     ; $4853: $f0 $5c
	ld d, l                                          ; $4855: $55
	ld a, [hl-]                                      ; $4856: $3a
	jr c, jr_079_48b4                                ; $4857: $38 $5b

	ld d, [hl]                                       ; $4859: $56
	ld b, c                                          ; $485a: $41
	inc a                                            ; $485b: $3c
	add hl, bc                                       ; $485c: $09
	ld e, e                                          ; $485d: $5b
	ld d, [hl]                                       ; $485e: $56
	ld b, [hl]                                       ; $485f: $46
	inc [hl]                                         ; $4860: $34
	ld b, b                                          ; $4861: $40
	ld e, a                                          ; $4862: $5f
	ld b, b                                          ; $4863: $40
	ld e, a                                          ; $4864: $5f
	add hl, bc                                       ; $4865: $09
	ldh a, [rOCPD]                                   ; $4866: $f0 $6b
	ldh a, [$60]                                     ; $4868: $f0 $60
	ldh a, [$03]                                     ; $486a: $f0 $03
	ld b, d                                          ; $486c: $42
	ldh a, [$1f]                                     ; $486d: $f0 $1f
	ldh a, [$de]                                     ; $486f: $f0 $de
	ld e, c                                          ; $4871: $59
	ld c, d                                          ; $4872: $4a
	add hl, bc                                       ; $4873: $09
	ld c, e                                          ; $4874: $4b
	jr c, jr_079_48ab                                ; $4875: $38 $34

	ld [hl], d                                       ; $4877: $72
	ccf                                              ; $4878: $3f
	jr c, jr_079_48b3                                ; $4879: $38 $38

	ld b, l                                          ; $487b: $45
	add hl, bc                                       ; $487c: $09
	adc b                                            ; $487d: $88
	sub c                                            ; $487e: $91
	dec [hl]                                         ; $487f: $35
	ldh a, [$8a]                                     ; $4880: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4882: $f0 $52
	jr c, jr_079_48cb                                ; $4884: $38 $45

	ld c, h                                          ; $4886: $4c
	add hl, bc                                       ; $4887: $09
	ld c, d                                          ; $4888: $4a
	ld c, a                                          ; $4889: $4f
	inc [hl]                                         ; $488a: $34
	ldh a, [rAUD3LEVEL]                              ; $488b: $f0 $1c
	ld c, e                                          ; $488d: $4b
	ldh a, [$71]                                     ; $488e: $f0 $71
	jr c, jr_079_48d7                                ; $4890: $38 $45

	add hl, bc                                       ; $4892: $09
	adc b                                            ; $4893: $88
	sub c                                            ; $4894: $91
	ld b, h                                          ; $4895: $44
	inc [hl]                                         ; $4896: $34
	pop af                                           ; $4897: $f1
	ld e, b                                          ; $4898: $58
	inc a                                            ; $4899: $3c
	ld b, h                                          ; $489a: $44
	ld c, h                                          ; $489b: $4c
	add hl, bc                                       ; $489c: $09
	ld d, h                                          ; $489d: $54
	ld b, d                                          ; $489e: $42
	ldh a, [$ed]                                     ; $489f: $f0 $ed
	adc e                                            ; $48a1: $8b
	ld e, h                                          ; $48a2: $5c
	ld a, [hl-]                                      ; $48a3: $3a
	ld b, c                                          ; $48a4: $41
	ld b, h                                          ; $48a5: $44
	add hl, bc                                       ; $48a6: $09
	jr c, jr_079_48e1                                ; $48a7: $38 $38

	inc a                                            ; $48a9: $3c
	ld d, b                                          ; $48aa: $50

jr_079_48ab:
	ld h, a                                          ; $48ab: $67
	ld d, h                                          ; $48ac: $54
	add hl, sp                                       ; $48ad: $39
	ld b, l                                          ; $48ae: $45
	add hl, bc                                       ; $48af: $09
	ld b, b                                          ; $48b0: $40
	ld c, l                                          ; $48b1: $4d
	ld e, e                                          ; $48b2: $5b

jr_079_48b3:
	ld d, [hl]                                       ; $48b3: $56

jr_079_48b4:
	pop af                                           ; $48b4: $f1
	jr nc, jr_079_4928                               ; $48b5: $30 $71

	ld b, l                                          ; $48b7: $45
	add hl, sp                                       ; $48b8: $39
	add hl, bc                                       ; $48b9: $09
	ld [hl-], a                                      ; $48ba: $32
	adc b                                            ; $48bb: $88
	sub c                                            ; $48bc: $91
	ld c, e                                          ; $48bd: $4b
	inc [hl]                                         ; $48be: $34
	inc a                                            ; $48bf: $3c
	ld a, [hl-]                                      ; $48c0: $3a
	ld d, a                                          ; $48c1: $57
	add hl, bc                                       ; $48c2: $09
	sbc c                                            ; $48c3: $99
	dec sp                                           ; $48c4: $3b
	ccf                                              ; $48c5: $3f
	dec a                                            ; $48c6: $3d
	ld l, h                                          ; $48c7: $6c
	dec a                                            ; $48c8: $3d
	jr c, jr_079_490f                                ; $48c9: $38 $44

jr_079_48cb:
	add hl, bc                                       ; $48cb: $09
	ld l, a                                          ; $48cc: $6f
	ld c, d                                          ; $48cd: $4a
	ld b, l                                          ; $48ce: $45
	ld e, a                                          ; $48cf: $5f
	ld a, $5d                                        ; $48d0: $3e $5d
	ld c, l                                          ; $48d2: $4d
	ld a, e                                          ; $48d3: $7b
	add hl, bc                                       ; $48d4: $09
	ld [hl], d                                       ; $48d5: $72
	ccf                                              ; $48d6: $3f

jr_079_48d7:
	jr c, jr_079_4914                                ; $48d7: $38 $3b

	ccf                                              ; $48d9: $3f
	ld d, l                                          ; $48da: $55
	ld c, l                                          ; $48db: $4d
	ld b, l                                          ; $48dc: $45
	add hl, bc                                       ; $48dd: $09
	ldh a, [rOBP1]                                   ; $48de: $f0 $49
	adc a                                            ; $48e0: $8f

jr_079_48e1:
	inc [hl]                                         ; $48e1: $34
	ldh a, [rSCX]                                    ; $48e2: $f0 $43
	ldh a, [$b8]                                     ; $48e4: $f0 $b8
	adc a                                            ; $48e6: $8f
	pop af                                           ; $48e7: $f1
	ld c, [hl]                                       ; $48e8: $4e
	ld d, e                                          ; $48e9: $53
	add hl, bc                                       ; $48ea: $09
	ld d, h                                          ; $48eb: $54
	ld b, d                                          ; $48ec: $42
	sbc [hl]                                         ; $48ed: $9e
	pop af                                           ; $48ee: $f1
	ld l, $38                                        ; $48ef: $2e $38
	dec a                                            ; $48f1: $3d
	pop af                                           ; $48f2: $f1
	add hl, de                                       ; $48f3: $19
	pop af                                           ; $48f4: $f1
	dec c                                            ; $48f5: $0d
	add hl, bc                                       ; $48f6: $09
	ld l, a                                          ; $48f7: $6f
	inc [hl]                                         ; $48f8: $34
	adc d                                            ; $48f9: $8a
	ldh a, [$73]                                     ; $48fa: $f0 $73
	adc a                                            ; $48fc: $8f
	ld b, h                                          ; $48fd: $44
	inc a                                            ; $48fe: $3c
	ld d, b                                          ; $48ff: $50
	add hl, bc                                       ; $4900: $09
	ldh a, [rPCM12]                                  ; $4901: $f0 $76
	ldh a, [$d2]                                     ; $4903: $f0 $d2
	ldh a, [$3f]                                     ; $4905: $f0 $3f
	ld e, d                                          ; $4907: $5a
	add hl, sp                                       ; $4908: $39
	ld b, h                                          ; $4909: $44
	dec sp                                           ; $490a: $3b
	dec a                                            ; $490b: $3d
	add hl, bc                                       ; $490c: $09
	pop af                                           ; $490d: $f1
	dec sp                                           ; $490e: $3b

jr_079_490f:
	dec sp                                           ; $490f: $3b
	dec a                                            ; $4910: $3d
	ld a, a                                          ; $4911: $7f
	ld d, e                                          ; $4912: $53
	ld d, c                                          ; $4913: $51

jr_079_4914:
	ld c, [hl]                                       ; $4914: $4e
	ld b, l                                          ; $4915: $45
	add hl, bc                                       ; $4916: $09
	adc d                                            ; $4917: $8a
	ldh a, [$73]                                     ; $4918: $f0 $73
	adc a                                            ; $491a: $8f
	ld c, e                                          ; $491b: $4b
	ldh a, [rPCM12]                                  ; $491c: $f0 $76
	ldh a, [$d2]                                     ; $491e: $f0 $d2
	ldh a, [$3f]                                     ; $4920: $f0 $3f
	ld h, d                                          ; $4922: $62
	add hl, bc                                       ; $4923: $09
	ldh a, [$1f]                                     ; $4924: $f0 $1f
	ldh a, [rAUD3LOW]                                ; $4926: $f0 $1d

jr_079_4928:
	ld h, l                                          ; $4928: $65
	ldh a, [$60]                                     ; $4929: $f0 $60
	ldh a, [$c4]                                     ; $492b: $f0 $c4
	ld [hl], e                                       ; $492d: $73
	sub e                                            ; $492e: $93
	ld c, h                                          ; $492f: $4c
	add hl, bc                                       ; $4930: $09
	ld b, b                                          ; $4931: $40
	add hl, sp                                       ; $4932: $39
	pop af                                           ; $4933: $f1
	ret z                                            ; $4934: $c8

	ld a, $52                                        ; $4935: $3e $52
	ld a, $66                                        ; $4937: $3e $66
	add hl, sp                                       ; $4939: $39
	add hl, bc                                       ; $493a: $09
	ld c, e                                          ; $493b: $4b
	jr c, jr_079_4972                                ; $493c: $38 $34

	add c                                            ; $493e: $81
	ld [hl], l                                       ; $493f: $75
	sub l                                            ; $4940: $95
	ld h, l                                          ; $4941: $65
	ld l, c                                          ; $4942: $69
	add hl, bc                                       ; $4943: $09
	ldh a, [$b2]                                     ; $4944: $f0 $b2
	ldh a, [rKEY1]                                   ; $4946: $f0 $4d
	ld b, a                                          ; $4948: $47
	ld a, b                                          ; $4949: $78
	ld h, c                                          ; $494a: $61
	ld d, [hl]                                       ; $494b: $56
	dec sp                                           ; $494c: $3b
	dec a                                            ; $494d: $3d
	add hl, bc                                       ; $494e: $09
	add hl, sp                                       ; $494f: $39
	ld b, c                                          ; $4950: $41
	inc [hl]                                         ; $4951: $34
	ld b, b                                          ; $4952: $40
	add hl, sp                                       ; $4953: $39
	ld d, c                                          ; $4954: $51
	ld c, [hl]                                       ; $4955: $4e
	ld b, l                                          ; $4956: $45
	add hl, bc                                       ; $4957: $09
	ldh a, [$bd]                                     ; $4958: $f0 $bd
	jr c, jr_079_499b                                ; $495a: $38 $3f

	ld c, a                                          ; $495c: $4f
	ld d, b                                          ; $495d: $50
	dec sp                                           ; $495e: $3b
	dec a                                            ; $495f: $3d
	ld d, b                                          ; $4960: $50
	add hl, bc                                       ; $4961: $09
	ld a, $66                                        ; $4962: $3e $66
	add hl, sp                                       ; $4964: $39
	ld d, e                                          ; $4965: $53
	ld a, [hl-]                                      ; $4966: $3a
	jr c, jr_079_49a3                                ; $4967: $38 $3a

	ld [hl], h                                       ; $4969: $74
	add hl, bc                                       ; $496a: $09
	ldh a, [$d0]                                     ; $496b: $f0 $d0
	ld a, [hl]                                       ; $496d: $7e
	ld b, a                                          ; $496e: $47
	ld a, [hl-]                                      ; $496f: $3a
	dec sp                                           ; $4970: $3b
	ld h, c                                          ; $4971: $61

jr_079_4972:
	ld d, [hl]                                       ; $4972: $56
	add hl, sp                                       ; $4973: $39
	add hl, bc                                       ; $4974: $09
	ldh a, [$50]                                     ; $4975: $f0 $50
	ld [hl], e                                       ; $4977: $73
	ldh a, [$32]                                     ; $4978: $f0 $32
	ldh a, [rDIV]                                    ; $497a: $f0 $04
	ld a, l                                          ; $497c: $7d
	pop af                                           ; $497d: $f1
	ld d, h                                          ; $497e: $54
	ld h, l                                          ; $497f: $65
	ldh a, [$50]                                     ; $4980: $f0 $50
	add hl, bc                                       ; $4982: $09
	ldh a, [$3d]                                     ; $4983: $f0 $3d
	ld h, l                                          ; $4985: $65
	ldh a, [$de]                                     ; $4986: $f0 $de
	ldh a, [rP1]                                     ; $4988: $f0 $00
	ld e, c                                          ; $498a: $59
	ldh a, [rAUD4LEN]                                ; $498b: $f0 $20
	ldh a, [rBCPD]                                   ; $498d: $f0 $69
	ldh a, [$03]                                     ; $498f: $f0 $03
	add hl, bc                                       ; $4991: $09
	ld l, l                                          ; $4992: $6d
	ld a, h                                          ; $4993: $7c
	ld b, a                                          ; $4994: $47
	ld [hl], d                                       ; $4995: $72
	adc c                                            ; $4996: $89
	ld a, $3a                                        ; $4997: $3e $3a
	jr c, jr_079_49a4                                ; $4999: $38 $09

jr_079_499b:
	ldh a, [rSCY]                                    ; $499b: $f0 $42
	ld e, c                                          ; $499d: $59
	dec sp                                           ; $499e: $3b
	inc [hl]                                         ; $499f: $34
	ld a, [hl-]                                      ; $49a0: $3a
	ld b, c                                          ; $49a1: $41
	ld c, c                                          ; $49a2: $49

jr_079_49a3:
	inc a                                            ; $49a3: $3c

jr_079_49a4:
	add hl, bc                                       ; $49a4: $09
	ldh a, [$6d]                                     ; $49a5: $f0 $6d
	ld e, c                                          ; $49a7: $59
	ldh a, [$27]                                     ; $49a8: $f0 $27
	ld b, h                                          ; $49aa: $44
	dec sp                                           ; $49ab: $3b
	dec a                                            ; $49ac: $3d
	ld b, c                                          ; $49ad: $41
	ld b, h                                          ; $49ae: $44
	add hl, bc                                       ; $49af: $09
	ldh a, [$9d]                                     ; $49b0: $f0 $9d
	ldh a, [rP1]                                     ; $49b2: $f0 $00
	ld e, c                                          ; $49b4: $59
	sub e                                            ; $49b5: $93
	ldh a, [rP1]                                     ; $49b6: $f0 $00
	add e                                            ; $49b8: $83
	ldh a, [rAUD3LOW]                                ; $49b9: $f0 $1d
	add e                                            ; $49bb: $83
	add hl, bc                                       ; $49bc: $09
	ld e, h                                          ; $49bd: $5c
	ld c, l                                          ; $49be: $4d
	jr c, jr_079_49fb                                ; $49bf: $38 $3a

	ldh a, [hDisp0_OBP0]                                     ; $49c1: $f0 $86
	ld b, h                                          ; $49c3: $44
	ld c, h                                          ; $49c4: $4c
	add l                                            ; $49c5: $85
	add hl, bc                                       ; $49c6: $09
	ld a, a                                          ; $49c7: $7f
	ldh a, [rHDMA1]                                  ; $49c8: $f0 $51
	ld h, c                                          ; $49ca: $61
	ld b, l                                          ; $49cb: $45
	ld e, b                                          ; $49cc: $58
	ld b, b                                          ; $49cd: $40
	add hl, sp                                       ; $49ce: $39
	ld b, a                                          ; $49cf: $47
	add hl, bc                                       ; $49d0: $09
	ld l, l                                          ; $49d1: $6d
	ldh a, [rDMA]                                    ; $49d2: $f0 $46
	ldh a, [$5f]                                     ; $49d4: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $49d6: $f0 $94
	ld b, a                                          ; $49d8: $47
	ldh a, [$fa]                                     ; $49d9: $f0 $fa
	ld b, c                                          ; $49db: $41
	ld c, d                                          ; $49dc: $4a
	add hl, bc                                       ; $49dd: $09
	ldh a, [$98]                                     ; $49de: $f0 $98
	inc a                                            ; $49e0: $3c
	ld a, b                                          ; $49e1: $78
	ld a, [hl-]                                      ; $49e2: $3a
	jr c, jr_079_4a21                                ; $49e3: $38 $3c

	ld a, [hl-]                                      ; $49e5: $3a
	ld [hl], h                                       ; $49e6: $74
	add hl, bc                                       ; $49e7: $09
	ld l, a                                          ; $49e8: $6f
	inc [hl]                                         ; $49e9: $34
	ldh a, [rSCX]                                    ; $49ea: $f0 $43
	ldh a, [$b8]                                     ; $49ec: $f0 $b8
	adc a                                            ; $49ee: $8f
	ld b, h                                          ; $49ef: $44
	inc a                                            ; $49f0: $3c
	ld d, b                                          ; $49f1: $50
	add hl, bc                                       ; $49f2: $09
	ld l, a                                          ; $49f3: $6f
	inc [hl]                                         ; $49f4: $34
	ldh a, [$aa]                                     ; $49f5: $f0 $aa
	adc c                                            ; $49f7: $89
	adc a                                            ; $49f8: $8f
	ld b, h                                          ; $49f9: $44
	inc a                                            ; $49fa: $3c

jr_079_49fb:
	ld d, b                                          ; $49fb: $50
	add hl, bc                                       ; $49fc: $09
	ld d, e                                          ; $49fd: $53
	ldh a, [rAUD4ENV]                                ; $49fe: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4a00: $f0 $23
	jr c, jr_079_4a54                                ; $4a02: $38 $50

	ld a, $38                                        ; $4a04: $3e $38
	ld b, l                                          ; $4a06: $45
	add hl, bc                                       ; $4a07: $09
	ld l, [hl]                                       ; $4a08: $6e
	dec sp                                           ; $4a09: $3b
	ldh a, [$36]                                     ; $4a0a: $f0 $36
	ld d, a                                          ; $4a0c: $57
	add h                                            ; $4a0d: $84
	sbc [hl]                                         ; $4a0e: $9e
	ld b, h                                          ; $4a0f: $44
	ld c, c                                          ; $4a10: $49
	add hl, bc                                       ; $4a11: $09
	pop af                                           ; $4a12: $f1
	jr z, @-$0e                                      ; $4a13: $28 $f0

	add c                                            ; $4a15: $81
	ldh a, [rWY]                                     ; $4a16: $f0 $4a
	ld [hl], e                                       ; $4a18: $73
	ldh a, [rAUD4POLY]                               ; $4a19: $f0 $22
	ld h, l                                          ; $4a1b: $65
	dec sp                                           ; $4a1c: $3b
	ccf                                              ; $4a1d: $3f
	add hl, bc                                       ; $4a1e: $09
	pop af                                           ; $4a1f: $f1
	pop bc                                           ; $4a20: $c1

jr_079_4a21:
	ld d, b                                          ; $4a21: $50
	ld c, l                                          ; $4a22: $4d
	ld c, [hl]                                       ; $4a23: $4e
	ld c, c                                          ; $4a24: $49
	ld [hl], a                                       ; $4a25: $77
	dec sp                                           ; $4a26: $3b
	ccf                                              ; $4a27: $3f
	add hl, bc                                       ; $4a28: $09
	ld b, [hl]                                       ; $4a29: $46
	dec sp                                           ; $4a2a: $3b
	inc [hl]                                         ; $4a2b: $34
	ld l, e                                          ; $4a2c: $6b
	inc a                                            ; $4a2d: $3c
	halt                                             ; $4a2e: $76
	dec sp                                           ; $4a2f: $3b
	ccf                                              ; $4a30: $3f
	add hl, bc                                       ; $4a31: $09
	ldh a, [$2d]                                     ; $4a32: $f0 $2d
	ld d, b                                          ; $4a34: $50
	ld a, [hl-]                                      ; $4a35: $3a
	inc a                                            ; $4a36: $3c
	dec sp                                           ; $4a37: $3b
	dec a                                            ; $4a38: $3d
	ld e, l                                          ; $4a39: $5d
	ld e, d                                          ; $4a3a: $5a
	add hl, bc                                       ; $4a3b: $09
	ld l, [hl]                                       ; $4a3c: $6e
	dec sp                                           ; $4a3d: $3b
	ldh a, [$36]                                     ; $4a3e: $f0 $36
	ld d, a                                          ; $4a40: $57
	inc [hl]                                         ; $4a41: $34
	ld a, b                                          ; $4a42: $78
	dec a                                            ; $4a43: $3d
	ld a, [hl-]                                      ; $4a44: $3a
	add hl, bc                                       ; $4a45: $09
	ld [hl], d                                       ; $4a46: $72
	ccf                                              ; $4a47: $3f
	ld h, a                                          ; $4a48: $67
	ld d, l                                          ; $4a49: $55
	ld b, c                                          ; $4a4a: $41
	ld b, h                                          ; $4a4b: $44
	ld e, a                                          ; $4a4c: $5f
	add hl, sp                                       ; $4a4d: $39
	add hl, bc                                       ; $4a4e: $09
	halt                                             ; $4a4f: $76
	ld d, e                                          ; $4a50: $53
	pop af                                           ; $4a51: $f1
	ld e, l                                          ; $4a52: $5d
	pop af                                           ; $4a53: $f1

jr_079_4a54:
	and a                                            ; $4a54: $a7
	ld a, $3f                                        ; $4a55: $3e $3f
	dec a                                            ; $4a57: $3d
	inc a                                            ; $4a58: $3c
	add hl, bc                                       ; $4a59: $09
	ldh a, [$bb]                                     ; $4a5a: $f0 $bb
	ld d, d                                          ; $4a5c: $52
	ld c, [hl]                                       ; $4a5d: $4e
	ld c, c                                          ; $4a5e: $49
	ld d, h                                          ; $4a5f: $54
	ld e, a                                          ; $4a60: $5f
	ld b, h                                          ; $4a61: $44
	ld c, h                                          ; $4a62: $4c
	add hl, bc                                       ; $4a63: $09
	ld a, a                                          ; $4a64: $7f
	ld b, a                                          ; $4a65: $47
	sub [hl]                                         ; $4a66: $96
	dec sp                                           ; $4a67: $3b
	ccf                                              ; $4a68: $3f
	ld d, l                                          ; $4a69: $55
	ld c, l                                          ; $4a6a: $4d
	ccf                                              ; $4a6b: $3f
	add hl, bc                                       ; $4a6c: $09
	halt                                             ; $4a6d: $76
	ld b, a                                          ; $4a6e: $47
	ld c, a                                          ; $4a6f: $4f
	sub h                                            ; $4a70: $94
	ld a, b                                          ; $4a71: $78
	ld c, [hl]                                       ; $4a72: $4e
	inc a                                            ; $4a73: $3c
	ld a, [hl-]                                      ; $4a74: $3a
	add hl, bc                                       ; $4a75: $09
	pop af                                           ; $4a76: $f1
	ld d, [hl]                                       ; $4a77: $56
	ld a, $f1                                        ; $4a78: $3e $f1
	dec bc                                           ; $4a7a: $0b
	ld b, [hl]                                       ; $4a7b: $46
	ld d, a                                          ; $4a7c: $57
	ld d, d                                          ; $4a7d: $52
	ld a, c                                          ; $4a7e: $79
	ld b, c                                          ; $4a7f: $41
	add hl, bc                                       ; $4a80: $09
	ldh a, [rAUD4LEN]                                ; $4a81: $f0 $20
	ld [hl], e                                       ; $4a83: $73
	ldh a, [$2b]                                     ; $4a84: $f0 $2b
	ldh a, [rDIV]                                    ; $4a86: $f0 $04
	ld a, l                                          ; $4a88: $7d
	pop af                                           ; $4a89: $f1
	ld d, h                                          ; $4a8a: $54
	ld h, l                                          ; $4a8b: $65
	ldh a, [$50]                                     ; $4a8c: $f0 $50
	add hl, bc                                       ; $4a8e: $09
	ldh a, [rAUD4LEN]                                ; $4a8f: $f0 $20
	ld e, c                                          ; $4a91: $59
	ldh a, [$2b]                                     ; $4a92: $f0 $2b
	ldh a, [$7c]                                     ; $4a94: $f0 $7c
	ldh a, [$03]                                     ; $4a96: $f0 $03
	sbc b                                            ; $4a98: $98
	ld [hl], e                                       ; $4a99: $73
	add c                                            ; $4a9a: $81
	add hl, bc                                       ; $4a9b: $09
	ldh a, [rAUD3ENA]                                ; $4a9c: $f0 $1a
	ld a, l                                          ; $4a9e: $7d
	inc [hl]                                         ; $4a9f: $34
	ldh a, [$0a]                                     ; $4aa0: $f0 $0a
	pop af                                           ; $4aa2: $f1
	and b                                            ; $4aa3: $a0
	ldh a, [rAUD2ENV]                                ; $4aa4: $f0 $17
	ld c, d                                          ; $4aa6: $4a
	ld d, c                                          ; $4aa7: $51
	add hl, bc                                       ; $4aa8: $09
	dec sp                                           ; $4aa9: $3b
	ccf                                              ; $4aaa: $3f
	add d                                            ; $4aab: $82
	jr c, jr_079_4b00                                ; $4aac: $38 $52

	ld d, c                                          ; $4aae: $51
	ld e, l                                          ; $4aaf: $5d
	ld e, d                                          ; $4ab0: $5a
	add hl, bc                                       ; $4ab1: $09
	ldh a, [c]                                       ; $4ab2: $f2
	ld l, c                                          ; $4ab3: $69
	pop af                                           ; $4ab4: $f1
	sub b                                            ; $4ab5: $90
	ld [hl], b                                       ; $4ab6: $70
	ld a, $61                                        ; $4ab7: $3e $61
	ld d, [hl]                                       ; $4ab9: $56
	dec sp                                           ; $4aba: $3b
	ccf                                              ; $4abb: $3f
	add hl, bc                                       ; $4abc: $09
	ld b, [hl]                                       ; $4abd: $46
	ld b, c                                          ; $4abe: $41
	ld d, d                                          ; $4abf: $52
	ld d, a                                          ; $4ac0: $57
	ld h, h                                          ; $4ac1: $64
	pop af                                           ; $4ac2: $f1
	call c, $4158                                    ; $4ac3: $dc $58 $41
	add hl, bc                                       ; $4ac6: $09
	ldh a, [$2d]                                     ; $4ac7: $f0 $2d
	ld d, b                                          ; $4ac9: $50
	ld a, [hl-]                                      ; $4aca: $3a
	inc a                                            ; $4acb: $3c
	dec sp                                           ; $4acc: $3b
	dec a                                            ; $4acd: $3d
	ld h, e                                          ; $4ace: $63
	ld b, l                                          ; $4acf: $45
	add hl, bc                                       ; $4ad0: $09
	ldh a, [rPCM12]                                  ; $4ad1: $f0 $76
	ccf                                              ; $4ad3: $3f
	ld a, [hl-]                                      ; $4ad4: $3a
	inc a                                            ; $4ad5: $3c
	dec sp                                           ; $4ad6: $3b
	dec a                                            ; $4ad7: $3d
	inc a                                            ; $4ad8: $3c
	ld a, [hl-]                                      ; $4ad9: $3a
	add hl, bc                                       ; $4ada: $09
	ldh a, [$09]                                     ; $4adb: $f0 $09
	ldh a, [rAUD4LEN]                                ; $4add: $f0 $20
	ld e, c                                          ; $4adf: $59
	pop af                                           ; $4ae0: $f1
	ld [hl], h                                       ; $4ae1: $74
	ldh a, [rBCPD]                                   ; $4ae2: $f0 $69
	ldh a, [$3d]                                     ; $4ae4: $f0 $3d
	ld [hl], e                                       ; $4ae6: $73
	add c                                            ; $4ae7: $81
	add hl, bc                                       ; $4ae8: $09
	ld b, [hl]                                       ; $4ae9: $46
	ld b, c                                          ; $4aea: $41
	ld d, d                                          ; $4aeb: $52
	ld d, a                                          ; $4aec: $57
	inc [hl]                                         ; $4aed: $34
	jr c, jr_079_4b3e                                ; $4aee: $38 $4e

	ld c, c                                          ; $4af0: $49
	add hl, bc                                       ; $4af1: $09
	ld [hl], d                                       ; $4af2: $72
	ld c, [hl]                                       ; $4af3: $4e
	ld b, c                                          ; $4af4: $41
	ld b, h                                          ; $4af5: $44
	ld e, l                                          ; $4af6: $5d
	ld e, d                                          ; $4af7: $5a
	ld a, [hl-]                                      ; $4af8: $3a
	ld [hl], h                                       ; $4af9: $74
	add hl, bc                                       ; $4afa: $09
	ldh a, [rHDMA4]                                  ; $4afb: $f0 $54
	ld a, $f0                                        ; $4afd: $3e $f0
	rlca                                             ; $4aff: $07

jr_079_4b00:
	ld e, l                                          ; $4b00: $5d
	ccf                                              ; $4b01: $3f
	ld d, l                                          ; $4b02: $55
	ld c, l                                          ; $4b03: $4d
	ld b, l                                          ; $4b04: $45
	add hl, bc                                       ; $4b05: $09
	ld e, b                                          ; $4b06: $58
	ld d, c                                          ; $4b07: $51
	ld d, e                                          ; $4b08: $53
	ld b, a                                          ; $4b09: $47
	add c                                            ; $4b0a: $81
	ldh a, [$1f]                                     ; $4b0b: $f0 $1f
	ld b, h                                          ; $4b0d: $44
	ld c, h                                          ; $4b0e: $4c
	add hl, bc                                       ; $4b0f: $09
	pop af                                           ; $4b10: $f1
	ld h, [hl]                                       ; $4b11: $66
	ld e, h                                          ; $4b12: $5c
	ld b, a                                          ; $4b13: $47
	ld a, b                                          ; $4b14: $78
	ld a, [hl-]                                      ; $4b15: $3a
	ld e, b                                          ; $4b16: $58
	jr c, jr_079_4b5e                                ; $4b17: $38 $45

	add hl, bc                                       ; $4b19: $09
	add e                                            ; $4b1a: $83
	pop af                                           ; $4b1b: $f1
	ld [de], a                                       ; $4b1c: $12
	ld e, c                                          ; $4b1d: $59
	ldh a, [$f2]                                     ; $4b1e: $f0 $f2
	sbc b                                            ; $4b20: $98
	ldh a, [$a1]                                     ; $4b21: $f0 $a1
	ld e, c                                          ; $4b23: $59
	pop af                                           ; $4b24: $f1
	ld b, l                                          ; $4b25: $45
	add hl, bc                                       ; $4b26: $09
	ldh a, [$35]                                     ; $4b27: $f0 $35
	pop af                                           ; $4b29: $f1
	dec b                                            ; $4b2a: $05
	ld h, l                                          ; $4b2b: $65
	ld [hl], l                                       ; $4b2c: $75
	ld [hl], e                                       ; $4b2d: $73
	ldh a, [$f2]                                     ; $4b2e: $f0 $f2
	pop af                                           ; $4b30: $f1
	ld c, c                                          ; $4b31: $49
	ld e, c                                          ; $4b32: $59
	add hl, bc                                       ; $4b33: $09
	ld b, [hl]                                       ; $4b34: $46
	dec sp                                           ; $4b35: $3b
	inc [hl]                                         ; $4b36: $34
	ld l, e                                          ; $4b37: $6b
	inc a                                            ; $4b38: $3c
	halt                                             ; $4b39: $76
	dec sp                                           ; $4b3a: $3b
	ccf                                              ; $4b3b: $3f
	add hl, bc                                       ; $4b3c: $09
	ld l, d                                          ; $4b3d: $6a

jr_079_4b3e:
	ld l, b                                          ; $4b3e: $68
	ld c, e                                          ; $4b3f: $4b
	adc a                                            ; $4b40: $8f
	pop af                                           ; $4b41: $f1
	rrca                                             ; $4b42: $0f
	ld b, d                                          ; $4b43: $42
	ldh a, [rAUD3LEN]                                ; $4b44: $f0 $1b
	ldh a, [$15]                                     ; $4b46: $f0 $15
	add hl, bc                                       ; $4b48: $09
	ldh a, [$b2]                                     ; $4b49: $f0 $b2
	ldh a, [rKEY1]                                   ; $4b4b: $f0 $4d
	ld b, a                                          ; $4b4d: $47
	ld a, b                                          ; $4b4e: $78
	ld a, [hl-]                                      ; $4b4f: $3a
	ld e, b                                          ; $4b50: $58
	jr c, jr_079_4b98                                ; $4b51: $38 $45

	add hl, bc                                       ; $4b53: $09
	ldh a, [$6f]                                     ; $4b54: $f0 $6f
	ldh a, [$0b]                                     ; $4b56: $f0 $0b
	ld a, [hl-]                                      ; $4b58: $3a
	ld d, h                                          ; $4b59: $54
	ld c, c                                          ; $4b5a: $49
	add d                                            ; $4b5b: $82
	dec sp                                           ; $4b5c: $3b
	ccf                                              ; $4b5d: $3f

jr_079_4b5e:
	add hl, bc                                       ; $4b5e: $09
	ld [hl-], a                                      ; $4b5f: $32
	add c                                            ; $4b60: $81
	ld [hl], l                                       ; $4b61: $75
	sub l                                            ; $4b62: $95
	ld h, l                                          ; $4b63: $65
	ld l, c                                          ; $4b64: $69
	ld c, c                                          ; $4b65: $49
	inc a                                            ; $4b66: $3c
	add hl, bc                                       ; $4b67: $09
	ld d, c                                          ; $4b68: $51
	ld c, [hl]                                       ; $4b69: $4e
	ld d, h                                          ; $4b6a: $54
	ld c, c                                          ; $4b6b: $49
	ld c, e                                          ; $4b6c: $4b
	ld a, [hl-]                                      ; $4b6d: $3a
	jr c, jr_079_4baa                                ; $4b6e: $38 $3a

	add hl, bc                                       ; $4b70: $09
	add c                                            ; $4b71: $81
	ld [hl], l                                       ; $4b72: $75
	sub l                                            ; $4b73: $95
	ld h, l                                          ; $4b74: $65
	ld l, c                                          ; $4b75: $69
	ld h, d                                          ; $4b76: $62
	ld d, c                                          ; $4b77: $51
	ld c, [hl]                                       ; $4b78: $4e
	add hl, bc                                       ; $4b79: $09
	pop af                                           ; $4b7a: $f1
	ld sp, $4f68                                     ; $4b7b: $31 $68 $4f
	ld d, b                                          ; $4b7e: $50
	dec sp                                           ; $4b7f: $3b
	dec a                                            ; $4b80: $3d
	sbc e                                            ; $4b81: $9b
	ldh a, [rAUDTERM]                                ; $4b82: $f0 $25
	add hl, bc                                       ; $4b84: $09
	pop af                                           ; $4b85: $f1
	ld sp, $4f68                                     ; $4b86: $31 $68 $4f
	ld d, b                                          ; $4b89: $50
	dec sp                                           ; $4b8a: $3b
	dec a                                            ; $4b8b: $3d

Call_079_4b8c:
	ldh a, [rSCX]                                    ; $4b8c: $f0 $43
	ldh a, [rAUDTERM]                                ; $4b8e: $f0 $25
	add hl, bc                                       ; $4b90: $09
	ld b, d                                          ; $4b91: $42
	ldh a, [$57]                                     ; $4b92: $f0 $57
	ldh a, [hDisp1_WX]                                     ; $4b94: $f0 $96
	ld a, [hl-]                                      ; $4b96: $3a
	ld a, a                                          ; $4b97: $7f

jr_079_4b98:
	ldh a, [rHDMA1]                                  ; $4b98: $f0 $51
	ld h, c                                          ; $4b9a: $61
	ld h, d                                          ; $4b9b: $62
	add hl, bc                                       ; $4b9c: $09
	ld d, h                                          ; $4b9d: $54
	ld d, h                                          ; $4b9e: $54
	ld b, h                                          ; $4b9f: $44
	ld e, l                                          ; $4ba0: $5d
	ld b, d                                          ; $4ba1: $42
	ldh a, [rAUDVOL]                                 ; $4ba2: $f0 $24
	ld b, h                                          ; $4ba4: $44
	ld d, e                                          ; $4ba5: $53
	add hl, bc                                       ; $4ba6: $09
	ldh a, [$63]                                     ; $4ba7: $f0 $63
	pop af                                           ; $4ba9: $f1

jr_079_4baa:
	ld hl, $5a53                                     ; $4baa: $21 $53 $5a
	add hl, sp                                       ; $4bad: $39
	ld c, d                                          ; $4bae: $4a
	ld b, [hl]                                       ; $4baf: $46
	ld c, l                                          ; $4bb0: $4d
	add hl, bc                                       ; $4bb1: $09
	ldh a, [c]                                       ; $4bb2: $f2
	dec hl                                           ; $4bb3: $2b
	pop af                                           ; $4bb4: $f1
	ei                                               ; $4bb5: $fb
	pop af                                           ; $4bb6: $f1
	inc bc                                           ; $4bb7: $03
	ldh a, [$99]                                     ; $4bb8: $f0 $99
	sub b                                            ; $4bba: $90
	ldh a, [$7b]                                     ; $4bbb: $f0 $7b
	ld h, l                                          ; $4bbd: $65
	add e                                            ; $4bbe: $83
	add hl, bc                                       ; $4bbf: $09
	pop af                                           ; $4bc0: $f1
	sub l                                            ; $4bc1: $95
	ldh a, [$63]                                     ; $4bc2: $f0 $63
	ld b, d                                          ; $4bc4: $42
	ldh a, [c]                                       ; $4bc5: $f2
	ld b, c                                          ; $4bc6: $41
	ldh a, [c]                                       ; $4bc7: $f2
	inc de                                           ; $4bc8: $13
	adc c                                            ; $4bc9: $89
	sbc a                                            ; $4bca: $9f
	ld b, a                                          ; $4bcb: $47
	add hl, bc                                       ; $4bcc: $09
	ldh a, [rOCPS]                                   ; $4bcd: $f0 $6a
	add hl, sp                                       ; $4bcf: $39
	ld d, h                                          ; $4bd0: $54
	ld c, c                                          ; $4bd1: $49
	ld b, a                                          ; $4bd2: $47
	ld a, [hl-]                                      ; $4bd3: $3a
	dec sp                                           ; $4bd4: $3b
	dec a                                            ; $4bd5: $3d
	add hl, bc                                       ; $4bd6: $09
	ld b, b                                          ; $4bd7: $40
	add hl, sp                                       ; $4bd8: $39
	jr c, @+$60                                      ; $4bd9: $38 $5e

	ld a, e                                          ; $4bdb: $7b
	inc [hl]                                         ; $4bdc: $34
	pop af                                           ; $4bdd: $f1
	ld l, d                                          ; $4bde: $6a
	ld c, e                                          ; $4bdf: $4b
	add hl, bc                                       ; $4be0: $09
	ld b, b                                          ; $4be1: $40
	add hl, sp                                       ; $4be2: $39
	jr c, jr_079_4c43                                ; $4be3: $38 $5e

	ld a, e                                          ; $4be5: $7b
	inc [hl]                                         ; $4be6: $34
	ldh a, [rHDMA2]                                  ; $4be7: $f0 $52
	ld c, e                                          ; $4be9: $4b
	add hl, bc                                       ; $4bea: $09
	ld d, c                                          ; $4beb: $51
	ld c, [hl]                                       ; $4bec: $4e
	ld d, h                                          ; $4bed: $54
	ld c, c                                          ; $4bee: $49
	ld b, a                                          ; $4bef: $47
	ld a, [hl-]                                      ; $4bf0: $3a
	dec sp                                           ; $4bf1: $3b
	dec a                                            ; $4bf2: $3d
	add hl, bc                                       ; $4bf3: $09
	ld b, b                                          ; $4bf4: $40
	add hl, sp                                       ; $4bf5: $39
	ld a, [hl-]                                      ; $4bf6: $3a
	ld b, c                                          ; $4bf7: $41
	ld c, d                                          ; $4bf8: $4a
	ld d, c                                          ; $4bf9: $51
	inc a                                            ; $4bfa: $3c
	add hl, bc                                       ; $4bfb: $09
	ld a, b                                          ; $4bfc: $78
	ccf                                              ; $4bfd: $3f
	ld d, l                                          ; $4bfe: $55
	ld c, l                                          ; $4bff: $4d
	dec a                                            ; $4c00: $3d
	ld b, c                                          ; $4c01: $41
	ld b, h                                          ; $4c02: $44
	add hl, bc                                       ; $4c03: $09
	sub d                                            ; $4c04: $92
	adc [hl]                                         ; $4c05: $8e
	ld d, a                                          ; $4c06: $57
	ld d, d                                          ; $4c07: $52
	ld a, $66                                        ; $4c08: $3e $66
	add hl, sp                                       ; $4c0a: $39
	add hl, bc                                       ; $4c0b: $09
	ld b, b                                          ; $4c0c: $40
	ld c, l                                          ; $4c0d: $4d
	ld e, e                                          ; $4c0e: $5b
	ld d, [hl]                                       ; $4c0f: $56
	inc [hl]                                         ; $4c10: $34
	ldh a, [rHDMA5]                                  ; $4c11: $f0 $55
	ldh a, [rBCPS]                                   ; $4c13: $f0 $68
	add hl, bc                                       ; $4c15: $09
	pop af                                           ; $4c16: $f1
	ld [hl+], a                                      ; $4c17: $22
	ld e, c                                          ; $4c18: $59
	ldh a, [$1f]                                     ; $4c19: $f0 $1f
	ld e, c                                          ; $4c1b: $59
	sbc b                                            ; $4c1c: $98
	ldh a, [rWX]                                     ; $4c1d: $f0 $4b
	ld e, c                                          ; $4c1f: $59
	add hl, bc                                       ; $4c20: $09
	ldh a, [$34]                                     ; $4c21: $f0 $34
	ld b, d                                          ; $4c23: $42
	add h                                            ; $4c24: $84
	ld b, a                                          ; $4c25: $47
	ld a, $45                                        ; $4c26: $3e $45
	add hl, sp                                       ; $4c28: $39
	add hl, bc                                       ; $4c29: $09
	ldh a, [rHDMA5]                                  ; $4c2a: $f0 $55
	ldh a, [rBCPS]                                   ; $4c2c: $f0 $68
	jr c, jr_079_4c6d                                ; $4c2e: $38 $3d

	ld a, $52                                        ; $4c30: $3e $52
	ld d, c                                          ; $4c32: $51
	add hl, bc                                       ; $4c33: $09
	ld d, h                                          ; $4c34: $54
	ld c, l                                          ; $4c35: $4d
	inc a                                            ; $4c36: $3c
	ld d, b                                          ; $4c37: $50
	ldh a, [hDisp1_OBP1]                                     ; $4c38: $f0 $94
	pop af                                           ; $4c3a: $f1
	ld l, l                                          ; $4c3b: $6d
	ld b, a                                          ; $4c3c: $47
	add hl, bc                                       ; $4c3d: $09
	ld l, l                                          ; $4c3e: $6d
	ld a, h                                          ; $4c3f: $7c
	ld b, a                                          ; $4c40: $47
	ld h, a                                          ; $4c41: $67
	inc a                                            ; $4c42: $3c

jr_079_4c43:
	ld a, [hl-]                                      ; $4c43: $3a
	jr c, jr_079_4c4f                                ; $4c44: $38 $09

	sub b                                            ; $4c46: $90
	ld a, $3c                                        ; $4c47: $3e $3c
	dec sp                                           ; $4c49: $3b
	dec a                                            ; $4c4a: $3d
	ld c, d                                          ; $4c4b: $4a
	ld d, c                                          ; $4c4c: $51
	add hl, bc                                       ; $4c4d: $09
	ld [hl-], a                                      ; $4c4e: $32

jr_079_4c4f:
	ldh a, [$d4]                                     ; $4c4f: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $4c51: $f0 $87
	inc [hl]                                         ; $4c53: $34
	ld l, e                                          ; $4c54: $6b
	ld c, c                                          ; $4c55: $49
	sub a                                            ; $4c56: $97
	add hl, bc                                       ; $4c57: $09
	ldh a, [$6d]                                     ; $4c58: $f0 $6d
	ld e, c                                          ; $4c5a: $59
	ldh a, [$27]                                     ; $4c5b: $f0 $27
	ldh a, [$7b]                                     ; $4c5d: $f0 $7b
	ld h, l                                          ; $4c5f: $65
	ldh a, [rDIV]                                    ; $4c60: $f0 $04
	ld e, c                                          ; $4c62: $59
	add hl, bc                                       ; $4c63: $09
	sub b                                            ; $4c64: $90
	ld a, $55                                        ; $4c65: $3e $55
	ldh a, [$a3]                                     ; $4c67: $f0 $a3
	sbc a                                            ; $4c69: $9f
	ld a, $3d                                        ; $4c6a: $3e $3d
	add hl, bc                                       ; $4c6c: $09

jr_079_4c6d:
	pop af                                           ; $4c6d: $f1
	ld e, h                                          ; $4c6e: $5c
	ldh a, [rAUD1HIGH]                               ; $4c6f: $f0 $14
	ldh a, [$79]                                     ; $4c71: $f0 $79
	ld e, l                                          ; $4c73: $5d
	ld d, d                                          ; $4c74: $52
	ld a, $3f                                        ; $4c75: $3e $3f
	add hl, bc                                       ; $4c77: $09
	add c                                            ; $4c78: $81
	ldh a, [rSC]                                     ; $4c79: $f0 $02
	ldh a, [$09]                                     ; $4c7b: $f0 $09
	ldh a, [rDIV]                                    ; $4c7d: $f0 $04
	ldh a, [rP1]                                     ; $4c7f: $f0 $00
	ldh a, [hDisp0_WX]                                     ; $4c81: $f0 $89
	ldh a, [$27]                                     ; $4c83: $f0 $27
	add hl, bc                                       ; $4c85: $09
	ld c, c                                          ; $4c86: $49
	ld c, [hl]                                       ; $4c87: $4e
	ld d, h                                          ; $4c88: $54
	ld c, c                                          ; $4c89: $49
	ld b, a                                          ; $4c8a: $47
	ld a, $3d                                        ; $4c8b: $3e $3d
	add hl, bc                                       ; $4c8d: $09
	ldh a, [$08]                                     ; $4c8e: $f0 $08
	ld d, b                                          ; $4c90: $50
	ldh a, [$08]                                     ; $4c91: $f0 $08
	ld d, b                                          ; $4c93: $50
	inc [hl]                                         ; $4c94: $34
	ldh a, [$0a]                                     ; $4c95: $f0 $0a
	ld d, l                                          ; $4c97: $55
	add hl, bc                                       ; $4c98: $09
	ld b, d                                          ; $4c99: $42
	add c                                            ; $4c9a: $81
	ld [hl], l                                       ; $4c9b: $75
	sub l                                            ; $4c9c: $95
	ld h, l                                          ; $4c9d: $65
	ld l, c                                          ; $4c9e: $69
	ld b, h                                          ; $4c9f: $44
	add hl, bc                                       ; $4ca0: $09
	ld b, b                                          ; $4ca1: $40
	add hl, sp                                       ; $4ca2: $39
	ld a, [hl-]                                      ; $4ca3: $3a
	ld b, c                                          ; $4ca4: $41
	ld b, h                                          ; $4ca5: $44
	ld e, l                                          ; $4ca6: $5d
	ld e, d                                          ; $4ca7: $5a
	add hl, bc                                       ; $4ca8: $09
	ld l, [hl]                                       ; $4ca9: $6e
	dec sp                                           ; $4caa: $3b
	ccf                                              ; $4cab: $3f
	ld c, [hl]                                       ; $4cac: $4e
	ld l, h                                          ; $4cad: $6c
	dec a                                            ; $4cae: $3d
	jr c, jr_079_4cba                                ; $4caf: $38 $09

	ld e, d                                          ; $4cb1: $5a
	inc [hl]                                         ; $4cb2: $34
	ld e, d                                          ; $4cb3: $5a
	add hl, sp                                       ; $4cb4: $39
	ld b, h                                          ; $4cb5: $44
	dec sp                                           ; $4cb6: $3b
	dec a                                            ; $4cb7: $3d
	add hl, bc                                       ; $4cb8: $09
	ld [hl-], a                                      ; $4cb9: $32

jr_079_4cba:
	ld a, $66                                        ; $4cba: $3e $66
	add hl, sp                                       ; $4cbc: $39
	ld d, e                                          ; $4cbd: $53
	ld a, [hl-]                                      ; $4cbe: $3a
	jr c, jr_079_4cca                                ; $4cbf: $38 $09

jr_079_4cc1:
	pop af                                           ; $4cc1: $f1
	sub h                                            ; $4cc2: $94
	dec a                                            ; $4cc3: $3d
	inc a                                            ; $4cc4: $3c
	dec sp                                           ; $4cc5: $3b
	dec a                                            ; $4cc6: $3d
	inc a                                            ; $4cc7: $3c
	ld a, [hl-]                                      ; $4cc8: $3a
	add hl, bc                                       ; $4cc9: $09

jr_079_4cca:
	ld b, b                                          ; $4cca: $40
	add hl, sp                                       ; $4ccb: $39
	ld a, [hl-]                                      ; $4ccc: $3a
	ld b, d                                          ; $4ccd: $42
	inc a                                            ; $4cce: $3c
	ld a, [hl-]                                      ; $4ccf: $3a
	ld [hl], h                                       ; $4cd0: $74
	add hl, bc                                       ; $4cd1: $09
	ld h, a                                          ; $4cd2: $67
	dec sp                                           ; $4cd3: $3b
	ld h, c                                          ; $4cd4: $61
	ld d, [hl]                                       ; $4cd5: $56
	dec sp                                           ; $4cd6: $3b
	dec a                                            ; $4cd7: $3d
	ld b, l                                          ; $4cd8: $45
	add hl, bc                                       ; $4cd9: $09
	ldh a, [$57]                                     ; $4cda: $f0 $57
	pop af                                           ; $4cdc: $f1
	ld e, $50                                        ; $4cdd: $1e $50
	ld a, $38                                        ; $4cdf: $3e $38
	ldh a, [$a8]                                     ; $4ce1: $f0 $a8
	ldh a, [$8b]                                     ; $4ce3: $f0 $8b
	add hl, bc                                       ; $4ce5: $09
	ld h, a                                          ; $4ce6: $67
	dec sp                                           ; $4ce7: $3b
	ccf                                              ; $4ce8: $3f
	ld l, h                                          ; $4ce9: $6c
	ld b, l                                          ; $4cea: $45
	add hl, sp                                       ; $4ceb: $39
	ld b, l                                          ; $4cec: $45
	add hl, bc                                       ; $4ced: $09
	ldh a, [$ca]                                     ; $4cee: $f0 $ca
	ldh a, [$d9]                                     ; $4cf0: $f0 $d9
	pop af                                           ; $4cf2: $f1
	db $10                                           ; $4cf3: $10
	pop af                                           ; $4cf4: $f1
	ld [$30f0], sp                                   ; $4cf5: $08 $f0 $30
	ldh a, [rAUD3LEVEL]                              ; $4cf8: $f0 $1c
	ldh a, [$db]                                     ; $4cfa: $f0 $db
	add hl, bc                                       ; $4cfc: $09
	ld l, l                                          ; $4cfd: $6d
	ld a, h                                          ; $4cfe: $7c
	ld b, a                                          ; $4cff: $47
	ldh a, [$e1]                                     ; $4d00: $f0 $e1
	ldh a, [rSB]                                     ; $4d02: $f0 $01
	ld b, l                                          ; $4d04: $45
	add hl, sp                                       ; $4d05: $39
	add hl, bc                                       ; $4d06: $09
	pop af                                           ; $4d07: $f1
	inc de                                           ; $4d08: $13
	ldh a, [rAUDVOL]                                 ; $4d09: $f0 $24
	ld a, $3f                                        ; $4d0b: $3e $3f
	ld l, h                                          ; $4d0d: $6c
	ld c, [hl]                                       ; $4d0e: $4e
	inc a                                            ; $4d0f: $3c
	add hl, bc                                       ; $4d10: $09
	ld h, h                                          ; $4d11: $64
	pop af                                           ; $4d12: $f1
	add hl, bc                                       ; $4d13: $09
	ld d, a                                          ; $4d14: $57
	ld b, a                                          ; $4d15: $47
	ld h, a                                          ; $4d16: $67
	ld d, h                                          ; $4d17: $54
	add hl, sp                                       ; $4d18: $39
	add hl, bc                                       ; $4d19: $09
	inc a                                            ; $4d1a: $3c
	ld a, [hl-]                                      ; $4d1b: $3a
	ld d, a                                          ; $4d1c: $57
	ld e, h                                          ; $4d1d: $5c
	add b                                            ; $4d1e: $80
	ld [hl], c                                       ; $4d1f: $71
	ld b, d                                          ; $4d20: $42
	add hl, bc                                       ; $4d21: $09
	ld d, c                                          ; $4d22: $51
	ld b, c                                          ; $4d23: $41
	ld [hl], b                                       ; $4d24: $70
	ld d, l                                          ; $4d25: $55
	pop af                                           ; $4d26: $f1
	ld [hl], l                                       ; $4d27: $75
	jr c, jr_079_4cc1                                ; $4d28: $38 $97

	add hl, bc                                       ; $4d2a: $09
	ld l, [hl]                                       ; $4d2b: $6e
	dec sp                                           ; $4d2c: $3b
	ccf                                              ; $4d2d: $3f
	ld c, [hl]                                       ; $4d2e: $4e
	ld c, e                                          ; $4d2f: $4b
	sbc h                                            ; $4d30: $9c
	ld b, h                                          ; $4d31: $44
	add hl, bc                                       ; $4d32: $09
	ldh a, [$de]                                     ; $4d33: $f0 $de
	ldh a, [$a1]                                     ; $4d35: $f0 $a1
	ld e, c                                          ; $4d37: $59
	ldh a, [$60]                                     ; $4d38: $f0 $60
	ldh a, [$c4]                                     ; $4d3a: $f0 $c4
	ldh a, [$8e]                                     ; $4d3c: $f0 $8e
	ldh a, [$03]                                     ; $4d3e: $f0 $03
	add hl, bc                                       ; $4d40: $09
	pop af                                           ; $4d41: $f1
	ld d, h                                          ; $4d42: $54
	ldh a, [$a1]                                     ; $4d43: $f0 $a1
	ld e, c                                          ; $4d45: $59
	ldh a, [$7e]                                     ; $4d46: $f0 $7e
	sbc b                                            ; $4d48: $98
	ldh a, [$7c]                                     ; $4d49: $f0 $7c
	ld h, l                                          ; $4d4b: $65
	add hl, bc                                       ; $4d4c: $09
	add c                                            ; $4d4d: $81
	ldh a, [$03]                                     ; $4d4e: $f0 $03
	ldh a, [$03]                                     ; $4d50: $f0 $03
	ldh a, [$03]                                     ; $4d52: $f0 $03
	ldh a, [$03]                                     ; $4d54: $f0 $03
	ldh a, [$03]                                     ; $4d56: $f0 $03
	ldh a, [$03]                                     ; $4d58: $f0 $03
	add hl, bc                                       ; $4d5a: $09
	sbc b                                            ; $4d5b: $98
	ldh a, [rWX]                                     ; $4d5c: $f0 $4b
	ld e, c                                          ; $4d5e: $59
	ld b, d                                          ; $4d5f: $42
	ldh a, [$5f]                                     ; $4d60: $f0 $5f
	ldh a, [rAUD2HIGH]                               ; $4d62: $f0 $19
	ld c, e                                          ; $4d64: $4b
	add hl, bc                                       ; $4d65: $09
	ld b, b                                          ; $4d66: $40
	ld c, l                                          ; $4d67: $4d
	ld e, e                                          ; $4d68: $5b
	ld d, [hl]                                       ; $4d69: $56
	inc [hl]                                         ; $4d6a: $34
	ld d, d                                          ; $4d6b: $52
	dec a                                            ; $4d6c: $3d
	add hl, bc                                       ; $4d6d: $09
	ldh a, [rSCY]                                    ; $4d6e: $f0 $42
	add hl, sp                                       ; $4d70: $39
	inc [hl]                                         ; $4d71: $34
	ldh a, [$6f]                                     ; $4d72: $f0 $6f

jr_079_4d74:
	dec sp                                           ; $4d74: $3b
	dec a                                            ; $4d75: $3d
	adc l                                            ; $4d76: $8d
	add hl, bc                                       ; $4d77: $09
	ldh a, [rAUD1LOW]                                ; $4d78: $f0 $13
	sbc d                                            ; $4d7a: $9a
	ld b, h                                          ; $4d7b: $44
	dec sp                                           ; $4d7c: $3b
	dec a                                            ; $4d7d: $3d
	inc a                                            ; $4d7e: $3c
	ld a, [hl-]                                      ; $4d7f: $3a
	add hl, bc                                       ; $4d80: $09
	ldh a, [rHDMA1]                                  ; $4d81: $f0 $51
	dec sp                                           ; $4d83: $3b
	ccf                                              ; $4d84: $3f
	ld b, [hl]                                       ; $4d85: $46
	ldh a, [rSB]                                     ; $4d86: $f0 $01
	ld c, [hl]                                       ; $4d88: $4e
	ld b, l                                          ; $4d89: $45
	add hl, bc                                       ; $4d8a: $09
	ldh a, [$b7]                                     ; $4d8b: $f0 $b7
	ldh a, [$8c]                                     ; $4d8d: $f0 $8c
	ld c, l                                          ; $4d8f: $4d
	ld c, [hl]                                       ; $4d90: $4e
	ld b, d                                          ; $4d91: $42
	inc a                                            ; $4d92: $3c
	ld a, [hl-]                                      ; $4d93: $3a
	add hl, bc                                       ; $4d94: $09
	ld l, e                                          ; $4d95: $6b
	ld b, h                                          ; $4d96: $44
	inc [hl]                                         ; $4d97: $34
	ld b, b                                          ; $4d98: $40
	ld b, c                                          ; $4d99: $41
	ld a, [hl-]                                      ; $4d9a: $3a
	ld b, a                                          ; $4d9b: $47
	add hl, bc                                       ; $4d9c: $09
	ld c, e                                          ; $4d9d: $4b
	jr c, @+$36                                      ; $4d9e: $38 $34

	ld c, d                                          ; $4da0: $4a
	ld e, h                                          ; $4da1: $5c
	dec a                                            ; $4da2: $3d
	ld b, l                                          ; $4da3: $45
	add hl, bc                                       ; $4da4: $09
	ld b, [hl]                                       ; $4da5: $46
	inc [hl]                                         ; $4da6: $34
	ldh a, [$79]                                     ; $4da7: $f0 $79
	ld e, l                                          ; $4da9: $5d
	ld d, d                                          ; $4daa: $52
	ld a, $3f                                        ; $4dab: $3e $3f
	add hl, bc                                       ; $4dad: $09
	ld l, e                                          ; $4dae: $6b
	ld h, d                                          ; $4daf: $62
	ld h, h                                          ; $4db0: $64
	ldh a, [$c8]                                     ; $4db1: $f0 $c8
	jr c, jr_079_4df3                                ; $4db3: $38 $3e

	dec a                                            ; $4db5: $3d
	add hl, bc                                       ; $4db6: $09
	ld [hl], a                                       ; $4db7: $77
	dec sp                                           ; $4db8: $3b
	dec a                                            ; $4db9: $3d
	ld b, c                                          ; $4dba: $41
	ld b, h                                          ; $4dbb: $44
	ld e, l                                          ; $4dbc: $5d
	ld e, d                                          ; $4dbd: $5a
	add hl, bc                                       ; $4dbe: $09
	pop af                                           ; $4dbf: $f1
	nop                                              ; $4dc0: $00
	ld e, [hl]                                       ; $4dc1: $5e
	ccf                                              ; $4dc2: $3f
	ld b, [hl]                                       ; $4dc3: $46
	ldh a, [rSB]                                     ; $4dc4: $f0 $01
	ld a, [hl-]                                      ; $4dc6: $3a
	jr c, jr_079_4dd2                                ; $4dc7: $38 $09

	pop af                                           ; $4dc9: $f1
	add [hl]                                         ; $4dca: $86
	pop af                                           ; $4dcb: $f1
	xor c                                            ; $4dcc: $a9
	ld d, c                                          ; $4dcd: $51
	ld d, l                                          ; $4dce: $55
	jr c, jr_079_4e1b                                ; $4dcf: $38 $4a

	ld c, a                                          ; $4dd1: $4f

jr_079_4dd2:
	add hl, bc                                       ; $4dd2: $09
	ldh a, [rOBP1]                                   ; $4dd3: $f0 $49
	ldh a, [$59]                                     ; $4dd5: $f0 $59
	ldh a, [$5c]                                     ; $4dd7: $f0 $5c
	ld d, l                                          ; $4dd9: $55
	ld a, [hl-]                                      ; $4dda: $3a
	jr c, jr_079_4d74                                ; $4ddb: $38 $97

	add hl, bc                                       ; $4ddd: $09
	ld [hl], a                                       ; $4dde: $77
	ld h, e                                          ; $4ddf: $63
	ld a, [hl-]                                      ; $4de0: $3a
	inc a                                            ; $4de1: $3c
	dec sp                                           ; $4de2: $3b
	dec a                                            ; $4de3: $3d
	ld b, l                                          ; $4de4: $45
	add hl, bc                                       ; $4de5: $09
	ld h, h                                          ; $4de6: $64
	ld h, h                                          ; $4de7: $64
	ld h, h                                          ; $4de8: $64
	ld h, h                                          ; $4de9: $64
	ld h, h                                          ; $4dea: $64
	ld h, h                                          ; $4deb: $64
	dec sp                                           ; $4dec: $3b
	add hl, bc                                       ; $4ded: $09
	ldh a, [rOBP1]                                   ; $4dee: $f0 $49
	ldh a, [$59]                                     ; $4df0: $f0 $59
	inc [hl]                                         ; $4df2: $34

jr_079_4df3:
	ld [hl], a                                       ; $4df3: $77
	ld h, e                                          ; $4df4: $63
	ld a, [hl-]                                      ; $4df5: $3a
	jr c, jr_079_4e01                                ; $4df6: $38 $09

	ldh a, [$1f]                                     ; $4df8: $f0 $1f
	ldh a, [rAUD3LOW]                                ; $4dfa: $f0 $1d
	ld h, l                                          ; $4dfc: $65
	ldh a, [$60]                                     ; $4dfd: $f0 $60
	ldh a, [$c4]                                     ; $4dff: $f0 $c4

jr_079_4e01:
	ld [hl], e                                       ; $4e01: $73
	sub e                                            ; $4e02: $93
	add hl, bc                                       ; $4e03: $09
	ldh a, [hDisp0_WX]                                     ; $4e04: $f0 $89
	ldh a, [$c4]                                     ; $4e06: $f0 $c4
	ld h, l                                          ; $4e08: $65
	ldh a, [rBCPD]                                   ; $4e09: $f0 $69
	ldh a, [$03]                                     ; $4e0b: $f0 $03
	ldh a, [$32]                                     ; $4e0d: $f0 $32
	ld h, l                                          ; $4e0f: $65
	add hl, bc                                       ; $4e10: $09
	db $f4                                           ; $4e11: $f4
	ld b, a                                          ; $4e12: $47
	ld e, c                                          ; $4e13: $59
	ldh a, [$32]                                     ; $4e14: $f0 $32
	ldh a, [rWY]                                     ; $4e16: $f0 $4a
	ld [hl], e                                       ; $4e18: $73
	ldh a, [rAUD4POLY]                               ; $4e19: $f0 $22

jr_079_4e1b:
	ld h, l                                          ; $4e1b: $65
	add hl, bc                                       ; $4e1c: $09
	ldh a, [$66]                                     ; $4e1d: $f0 $66
	ld b, c                                          ; $4e1f: $41
	ld c, d                                          ; $4e20: $4a
	ld c, a                                          ; $4e21: $4f
	ld d, b                                          ; $4e22: $50
	ld e, [hl]                                       ; $4e23: $5e
	ccf                                              ; $4e24: $3f
	add hl, bc                                       ; $4e25: $09
	ldh a, [rHDMA1]                                  ; $4e26: $f0 $51
	dec sp                                           ; $4e28: $3b
	ccf                                              ; $4e29: $3f
	ld a, d                                          ; $4e2a: $7a
	ld e, a                                          ; $4e2b: $5f
	add hl, sp                                       ; $4e2c: $39
	inc a                                            ; $4e2d: $3c
	add hl, bc                                       ; $4e2e: $09
	ldh a, [$0b]                                     ; $4e2f: $f0 $0b
	ldh a, [$2a]                                     ; $4e31: $f0 $2a
	pop af                                           ; $4e33: $f1
	inc b                                            ; $4e34: $04
	dec sp                                           ; $4e35: $3b
	ld h, c                                          ; $4e36: $61
	ld d, [hl]                                       ; $4e37: $56
	dec sp                                           ; $4e38: $3b
	add hl, bc                                       ; $4e39: $09
	sub e                                            ; $4e3a: $93
	ldh a, [rSC]                                     ; $4e3b: $f0 $02
	sbc b                                            ; $4e3d: $98
	ld [hl], e                                       ; $4e3e: $73
	sub e                                            ; $4e3f: $93
	ldh a, [$99]                                     ; $4e40: $f0 $99
	sub b                                            ; $4e42: $90
	add hl, bc                                       ; $4e43: $09
	ld c, a                                          ; $4e44: $4f
	ld d, b                                          ; $4e45: $50
	ld e, [hl]                                       ; $4e46: $5e
	ld a, [hl-]                                      ; $4e47: $3a
	inc a                                            ; $4e48: $3c
	dec sp                                           ; $4e49: $3b
	dec a                                            ; $4e4a: $3d
	add hl, bc                                       ; $4e4b: $09
	ld b, a                                          ; $4e4c: $47
	ld h, a                                          ; $4e4d: $67
	ld e, l                                          ; $4e4e: $5d
	ld c, [hl]                                       ; $4e4f: $4e
	ld b, l                                          ; $4e50: $45
	add hl, sp                                       ; $4e51: $39
	ld b, a                                          ; $4e52: $47
	add hl, bc                                       ; $4e53: $09
	ldh a, [$bb]                                     ; $4e54: $f0 $bb
	ld d, d                                          ; $4e56: $52
	dec sp                                           ; $4e57: $3b
	ld h, c                                          ; $4e58: $61
	ld d, [hl]                                       ; $4e59: $56
	add hl, sp                                       ; $4e5a: $39
	ld b, l                                          ; $4e5b: $45
	add hl, bc                                       ; $4e5c: $09
	ldh a, [rHDMA5]                                  ; $4e5d: $f0 $55
	pop af                                           ; $4e5f: $f1
	add b                                            ; $4e60: $80
	ld b, h                                          ; $4e61: $44
	dec sp                                           ; $4e62: $3b
	dec a                                            ; $4e63: $3d
	inc a                                            ; $4e64: $3c
	ld a, [hl-]                                      ; $4e65: $3a
	add hl, bc                                       ; $4e66: $09
	ldh a, [$6d]                                     ; $4e67: $f0 $6d
	ld e, c                                          ; $4e69: $59
	ldh a, [$27]                                     ; $4e6a: $f0 $27
	ldh a, [$99]                                     ; $4e6c: $f0 $99
	sub b                                            ; $4e6e: $90
	ld b, h                                          ; $4e6f: $44
	ld b, l                                          ; $4e70: $45
	add hl, bc                                       ; $4e71: $09
	ldh a, [rTAC]                                    ; $4e72: $f0 $07
	inc a                                            ; $4e74: $3c
	dec sp                                           ; $4e75: $3b
	ccf                                              ; $4e76: $3f
	ld c, [hl]                                       ; $4e77: $4e
	dec sp                                           ; $4e78: $3b
	ccf                                              ; $4e79: $3f
	add hl, bc                                       ; $4e7a: $09
	ld d, h                                          ; $4e7b: $54
	ld c, l                                          ; $4e7c: $4d
	sub a                                            ; $4e7d: $97
	ldh a, [$b8]                                     ; $4e7e: $f0 $b8
	ldh a, [$73]                                     ; $4e80: $f0 $73
	ld b, h                                          ; $4e82: $44
	ld b, l                                          ; $4e83: $45
	add hl, bc                                       ; $4e84: $09
	ld a, [hl-]                                      ; $4e85: $3a
	ld d, b                                          ; $4e86: $50
	pop af                                           ; $4e87: $f1
	inc b                                            ; $4e88: $04
	ld c, l                                          ; $4e89: $4d
	ld c, [hl]                                       ; $4e8a: $4e
	dec sp                                           ; $4e8b: $3b
	ccf                                              ; $4e8c: $3f
	add hl, bc                                       ; $4e8d: $09
	pop af                                           ; $4e8e: $f1
	ld a, [hl-]                                      ; $4e8f: $3a
	ld d, l                                          ; $4e90: $55
	ld a, [hl-]                                      ; $4e91: $3a
	jr c, @+$43                                      ; $4e92: $38 $41

	ld b, h                                          ; $4e94: $44
	ld b, l                                          ; $4e95: $45
	add hl, bc                                       ; $4e96: $09
	ldh a, [rOBP1]                                   ; $4e97: $f0 $49
	ldh a, [$59]                                     ; $4e99: $f0 $59
	ldh a, [rPCM12]                                  ; $4e9b: $f0 $76
	ldh a, [rTMA]                                    ; $4e9d: $f0 $06
	ld h, e                                          ; $4e9f: $63
	ld c, h                                          ; $4ea0: $4c
	add l                                            ; $4ea1: $85
	add hl, bc                                       ; $4ea2: $09
	pop af                                           ; $4ea3: $f1
	ld sp, $f168                                     ; $4ea4: $31 $68 $f1
	ld l, $38                                        ; $4ea7: $2e $38
	dec a                                            ; $4ea9: $3d
	ldh a, [c]                                       ; $4eaa: $f2
	sub l                                            ; $4eab: $95
	ldh a, [c]                                       ; $4eac: $f2
	jr nc, @+$0b                                     ; $4ead: $30 $09

	pop af                                           ; $4eaf: $f1
	jp nz, $f33b                                     ; $4eb0: $c2 $3b $f3

	add hl, bc                                       ; $4eb3: $09
	ld a, [hl-]                                      ; $4eb4: $3a
	ldh a, [$d2]                                     ; $4eb5: $f0 $d2
	ld a, $3f                                        ; $4eb7: $3e $3f
	add hl, bc                                       ; $4eb9: $09
	ldh a, [$ce]                                     ; $4eba: $f0 $ce
	ld h, e                                          ; $4ebc: $63
	dec sp                                           ; $4ebd: $3b
	ld h, c                                          ; $4ebe: $61
	ld d, [hl]                                       ; $4ebf: $56
	dec sp                                           ; $4ec0: $3b
	dec a                                            ; $4ec1: $3d
	add hl, bc                                       ; $4ec2: $09
	ld b, [hl]                                       ; $4ec3: $46
	ld b, c                                          ; $4ec4: $41
	ld d, d                                          ; $4ec5: $52
	ld d, a                                          ; $4ec6: $57
	ldh a, [$66]                                     ; $4ec7: $f0 $66
	ld b, c                                          ; $4ec9: $41
	ld c, d                                          ; $4eca: $4a
	add hl, bc                                       ; $4ecb: $09
	ld a, $66                                        ; $4ecc: $3e $66
	add hl, sp                                       ; $4ece: $39
	ld d, e                                          ; $4ecf: $53
	ld a, [hl-]                                      ; $4ed0: $3a
	jr c, jr_079_4f1f                                ; $4ed1: $38 $4c

	add hl, bc                                       ; $4ed3: $09
	ldh a, [rSCX]                                    ; $4ed4: $f0 $43
	ldh a, [$b8]                                     ; $4ed6: $f0 $b8
	adc a                                            ; $4ed8: $8f
	ld b, d                                          ; $4ed9: $42
	ldh a, [$08]                                     ; $4eda: $f0 $08
	add hl, sp                                       ; $4edc: $39
	ld d, e                                          ; $4edd: $53
	add hl, bc                                       ; $4ede: $09
	jr c, jr_079_4f19                                ; $4edf: $38 $38

	ldh a, [$3d]                                     ; $4ee1: $f0 $3d
	ld a, l                                          ; $4ee3: $7d
	ldh a, [rWY]                                     ; $4ee4: $f0 $4a
	ldh a, [$c4]                                     ; $4ee6: $f0 $c4
	ldh a, [$3d]                                     ; $4ee8: $f0 $3d
	add hl, bc                                       ; $4eea: $09
	ld b, b                                          ; $4eeb: $40
	ld b, d                                          ; $4eec: $42
	add hl, sp                                       ; $4eed: $39
	ld h, c                                          ; $4eee: $61
	ldh a, [rTAC]                                    ; $4eef: $f0 $07
	inc a                                            ; $4ef1: $3c
	ld c, [hl]                                       ; $4ef2: $4e
	add hl, bc                                       ; $4ef3: $09
	ldh a, [$bb]                                     ; $4ef4: $f0 $bb
	ld d, d                                          ; $4ef6: $52
	ld c, [hl]                                       ; $4ef7: $4e
	ld l, h                                          ; $4ef8: $6c
	dec a                                            ; $4ef9: $3d
	jr c, jr_079_4f41                                ; $4efa: $38 $45

	add hl, bc                                       ; $4efc: $09
	halt                                             ; $4efd: $76
	ld c, a                                          ; $4efe: $4f
	ldh a, [$2d]                                     ; $4eff: $f0 $2d
	ld d, b                                          ; $4f01: $50
	ld a, [hl-]                                      ; $4f02: $3a
	jr c, jr_079_4f4a                                ; $4f03: $38 $45

	add hl, bc                                       ; $4f05: $09
	ldh a, [rAUD4ENV]                                ; $4f06: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4f08: $f0 $23
	ld b, b                                          ; $4f0a: $40
	add hl, sp                                       ; $4f0b: $39
	ld b, h                                          ; $4f0c: $44
	ld e, l                                          ; $4f0d: $5d
	ld e, d                                          ; $4f0e: $5a
	add hl, bc                                       ; $4f0f: $09
	ldh a, [$57]                                     ; $4f10: $f0 $57
	pop af                                           ; $4f12: $f1
	ld e, $50                                        ; $4f13: $1e $50
	ld a, $38                                        ; $4f15: $3e $38
	pop af                                           ; $4f17: $f1
	xor l                                            ; $4f18: $ad

jr_079_4f19:
	pop af                                           ; $4f19: $f1
	and l                                            ; $4f1a: $a5
	add hl, bc                                       ; $4f1b: $09
	sub e                                            ; $4f1c: $93
	ld [hl], l                                       ; $4f1d: $75
	ld e, c                                          ; $4f1e: $59

jr_079_4f1f:
	ld h, l                                          ; $4f1f: $65
	ldh a, [$6d]                                     ; $4f20: $f0 $6d
	ld e, c                                          ; $4f22: $59
	ldh a, [$27]                                     ; $4f23: $f0 $27
	add hl, bc                                       ; $4f25: $09
	ldh a, [$7e]                                     ; $4f26: $f0 $7e
	ldh a, [$50]                                     ; $4f28: $f0 $50
	pop af                                           ; $4f2a: $f1
	daa                                              ; $4f2b: $27
	ld e, c                                          ; $4f2c: $59
	ldh a, [rIF]                                     ; $4f2d: $f0 $0f
	pop af                                           ; $4f2f: $f1
	ld b, l                                          ; $4f30: $45
	ldh a, [$03]                                     ; $4f31: $f0 $03
	add hl, bc                                       ; $4f33: $09
	ldh a, [$b1]                                     ; $4f34: $f0 $b1
	ldh a, [c]                                       ; $4f36: $f2
	ld [hl+], a                                      ; $4f37: $22
	ld d, e                                          ; $4f38: $53
	ld b, [hl]                                       ; $4f39: $46
	dec sp                                           ; $4f3a: $3b
	dec a                                            ; $4f3b: $3d
	ld b, l                                          ; $4f3c: $45
	add hl, bc                                       ; $4f3d: $09
	ld b, [hl]                                       ; $4f3e: $46
	ld e, c                                          ; $4f3f: $59
	inc [hl]                                         ; $4f40: $34

jr_079_4f41:
	ldh a, [$ea]                                     ; $4f41: $f0 $ea
	ld b, h                                          ; $4f43: $44
	ld a, [hl-]                                      ; $4f44: $3a
	ld [hl], h                                       ; $4f45: $74
	add hl, bc                                       ; $4f46: $09
	add h                                            ; $4f47: $84
	sbc [hl]                                         ; $4f48: $9e
	ld c, d                                          ; $4f49: $4a

jr_079_4f4a:
	ld b, d                                          ; $4f4a: $42
	ldh a, [$a8]                                     ; $4f4b: $f0 $a8
	ldh a, [$8b]                                     ; $4f4d: $f0 $8b
	ld c, e                                          ; $4f4f: $4b
	add hl, bc                                       ; $4f50: $09
	ld d, h                                          ; $4f51: $54
	ld b, c                                          ; $4f52: $41
	ld a, [hl-]                                      ; $4f53: $3a
	ld c, a                                          ; $4f54: $4f
	ld b, c                                          ; $4f55: $41
	inc a                                            ; $4f56: $3c
	ld a, [hl-]                                      ; $4f57: $3a
	add hl, bc                                       ; $4f58: $09
	ldh a, [rAUD4ENV]                                ; $4f59: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4f5b: $f0 $23
	jr c, jr_079_4faf                                ; $4f5d: $38 $50

	ld a, $38                                        ; $4f5f: $3e $38
	adc l                                            ; $4f61: $8d
	add hl, bc                                       ; $4f62: $09
	ldh a, [$f9]                                     ; $4f63: $f0 $f9
	ldh a, [rSTAT]                                   ; $4f65: $f0 $41
	ld d, e                                          ; $4f67: $53
	jr c, jr_079_4fb8                                ; $4f68: $38 $4e

	inc a                                            ; $4f6a: $3c
	ld d, b                                          ; $4f6b: $50
	add hl, bc                                       ; $4f6c: $09
	ld d, h                                          ; $4f6d: $54
	inc [hl]                                         ; $4f6e: $34
	ld d, h                                          ; $4f6f: $54
	ld c, l                                          ; $4f70: $4d
	ld c, e                                          ; $4f71: $4b
	ld e, c                                          ; $4f72: $59
	dec sp                                           ; $4f73: $3b
	add hl, bc                                       ; $4f74: $09
	ld a, b                                          ; $4f75: $78
	ld h, c                                          ; $4f76: $61
	ld d, [hl]                                       ; $4f77: $56
	dec sp                                           ; $4f78: $3b
	dec a                                            ; $4f79: $3d
	ld b, c                                          ; $4f7a: $41
	ld b, h                                          ; $4f7b: $44
	add hl, bc                                       ; $4f7c: $09
	ldh a, [$2d]                                     ; $4f7d: $f0 $2d
	ld d, b                                          ; $4f7f: $50
	ld a, [hl-]                                      ; $4f80: $3a
	inc a                                            ; $4f81: $3c
	dec sp                                           ; $4f82: $3b
	dec a                                            ; $4f83: $3d
	adc l                                            ; $4f84: $8d
	add hl, bc                                       ; $4f85: $09
	ld l, [hl]                                       ; $4f86: $6e
	dec sp                                           ; $4f87: $3b
	ldh a, [$36]                                     ; $4f88: $f0 $36
	ld d, a                                          ; $4f8a: $57
	halt                                             ; $4f8b: $76
	ldh a, [rSTAT]                                   ; $4f8c: $f0 $41
	ld d, [hl]                                       ; $4f8e: $56
	add hl, bc                                       ; $4f8f: $09
	ld h, h                                          ; $4f90: $64
	sbc [hl]                                         ; $4f91: $9e
	adc b                                            ; $4f92: $88
	sub c                                            ; $4f93: $91
	ld b, a                                          ; $4f94: $47
	ldh a, [$ab]                                     ; $4f95: $f0 $ab
	inc a                                            ; $4f97: $3c
	add hl, bc                                       ; $4f98: $09
	ldh a, [$9f]                                     ; $4f99: $f0 $9f
	ld e, e                                          ; $4f9b: $5b
	ld d, b                                          ; $4f9c: $50
	ld c, l                                          ; $4f9d: $4d
	ld c, h                                          ; $4f9e: $4c
	add l                                            ; $4f9f: $85
	adc l                                            ; $4fa0: $8d
	add hl, bc                                       ; $4fa1: $09
	ld h, h                                          ; $4fa2: $64
	ldh a, [hDisp0_OBP0]                                     ; $4fa3: $f0 $86
	ldh a, [rAUD1ENV]                                ; $4fa5: $f0 $12
	jr c, jr_079_4fe5                                ; $4fa7: $38 $3c

	ld d, b                                          ; $4fa9: $50
	ld c, h                                          ; $4faa: $4c
	add hl, bc                                       ; $4fab: $09
	adc b                                            ; $4fac: $88
	sub c                                            ; $4fad: $91
	inc [hl]                                         ; $4fae: $34

jr_079_4faf:
	ldh a, [$57]                                     ; $4faf: $f0 $57
	ldh a, [$ae]                                     ; $4fb1: $f0 $ae
	ld b, h                                          ; $4fb3: $44
	ld c, h                                          ; $4fb4: $4c
	add hl, bc                                       ; $4fb5: $09
	db $f4                                           ; $4fb6: $f4
	inc sp                                           ; $4fb7: $33

jr_079_4fb8:
	ld h, a                                          ; $4fb8: $67
	ldh a, [rAUD1LOW]                                ; $4fb9: $f0 $13
	ldh a, [c]                                       ; $4fbb: $f2
	add hl, hl                                       ; $4fbc: $29
	ld c, d                                          ; $4fbd: $4a
	ld d, c                                          ; $4fbe: $51
	ld c, h                                          ; $4fbf: $4c
	add hl, bc                                       ; $4fc0: $09
	sbc b                                            ; $4fc1: $98
	ldh a, [$a1]                                     ; $4fc2: $f0 $a1
	ld e, c                                          ; $4fc4: $59
	ldh a, [$60]                                     ; $4fc5: $f0 $60
	ldh a, [$c4]                                     ; $4fc7: $f0 $c4
	ld h, l                                          ; $4fc9: $65
	ldh a, [$50]                                     ; $4fca: $f0 $50
	add hl, bc                                       ; $4fcc: $09
	pop af                                           ; $4fcd: $f1
	inc hl                                           ; $4fce: $23
	ld e, c                                          ; $4fcf: $59
	ldh a, [rAUD4POLY]                               ; $4fd0: $f0 $22
	ld h, l                                          ; $4fd2: $65
	ldh a, [$2f]                                     ; $4fd3: $f0 $2f
	ldh a, [$a1]                                     ; $4fd5: $f0 $a1
	ld e, c                                          ; $4fd7: $59
	add hl, bc                                       ; $4fd8: $09
	pop af                                           ; $4fd9: $f1
	ldh [c], a                                       ; $4fda: $e2
	pop af                                           ; $4fdb: $f1
	rst $38                                          ; $4fdc: $ff
	di                                               ; $4fdd: $f3
	ld sp, $2bf0                                     ; $4fde: $31 $f0 $2b
	pop af                                           ; $4fe1: $f1
	inc sp                                           ; $4fe2: $33
	ld [hl], e                                       ; $4fe3: $73
	sub e                                            ; $4fe4: $93

jr_079_4fe5:
	add hl, bc                                       ; $4fe5: $09
	ld l, e                                          ; $4fe6: $6b
	ld b, h                                          ; $4fe7: $44
	inc [hl]                                         ; $4fe8: $34
	ld d, d                                          ; $4fe9: $52
	dec a                                            ; $4fea: $3d
	ldh a, [rRP]                                     ; $4feb: $f0 $56
	inc a                                            ; $4fed: $3c
	add hl, bc                                       ; $4fee: $09
	ld d, c                                          ; $4fef: $51
	ld [hl], b                                       ; $4ff0: $70
	jr c, jr_079_5057                                ; $4ff1: $38 $64

	pop af                                           ; $4ff3: $f1
	call c, $4158                                    ; $4ff4: $dc $58 $41
	add hl, bc                                       ; $4ff7: $09
	ld d, d                                          ; $4ff8: $52
	ld b, h                                          ; $4ff9: $44
	ld l, e                                          ; $4ffa: $6b
	inc a                                            ; $4ffb: $3c
	ld b, [hl]                                       ; $4ffc: $46
	ld c, [hl]                                       ; $4ffd: $4e
	ld b, d                                          ; $4ffe: $42
	add hl, bc                                       ; $4fff: $09
	ld a, b                                          ; $5000: $78
	ccf                                              ; $5001: $3f
	ld d, l                                          ; $5002: $55
	ld c, l                                          ; $5003: $4d
	dec a                                            ; $5004: $3d
	ld b, d                                          ; $5005: $42
	ld b, a                                          ; $5006: $47
	add hl, bc                                       ; $5007: $09
	ld l, a                                          ; $5008: $6f
	ld c, e                                          ; $5009: $4b
	inc [hl]                                         ; $500a: $34
	ldh a, [rAUD2LOW]                                ; $500b: $f0 $18
	ldh a, [$dc]                                     ; $500d: $f0 $dc
	adc a                                            ; $500f: $8f
	ld d, e                                          ; $5010: $53
	add hl, bc                                       ; $5011: $09
	ld l, a                                          ; $5012: $6f
	ld c, e                                          ; $5013: $4b
	inc [hl]                                         ; $5014: $34
	ldh a, [rSVBK]                                   ; $5015: $f0 $70
	pop af                                           ; $5017: $f1
	ld [hl], a                                       ; $5018: $77
	pop af                                           ; $5019: $f1
	cp c                                             ; $501a: $b9
	ldh a, [rOBP1]                                   ; $501b: $f0 $49
	add hl, bc                                       ; $501d: $09
	pop af                                           ; $501e: $f1
	push af                                          ; $501f: $f5
	ld h, d                                          ; $5020: $62
	ld e, h                                          ; $5021: $5c
	jr c, jr_079_5063                                ; $5022: $38 $3f

	ld c, [hl]                                       ; $5024: $4e
	ld b, d                                          ; $5025: $42
	add hl, bc                                       ; $5026: $09
	ld d, h                                          ; $5027: $54
	inc [hl]                                         ; $5028: $34
	ld d, h                                          ; $5029: $54
	ld b, c                                          ; $502a: $41
	ld b, a                                          ; $502b: $47
	ld h, c                                          ; $502c: $61
	ld c, e                                          ; $502d: $4b
	add hl, bc                                       ; $502e: $09
	ld h, e                                          ; $502f: $63
	ld d, a                                          ; $5030: $57
	ld c, c                                          ; $5031: $49
	ldh a, [$fa]                                     ; $5032: $f0 $fa
	ld [hl], c                                       ; $5034: $71
	dec a                                            ; $5035: $3d
	ld b, l                                          ; $5036: $45
	add hl, bc                                       ; $5037: $09
	ld l, a                                          ; $5038: $6f
	ld b, a                                          ; $5039: $47
	ld c, e                                          ; $503a: $4b
	inc [hl]                                         ; $503b: $34
	ldh a, [$af]                                     ; $503c: $f0 $af
	ldh a, [rAUD3LEVEL]                              ; $503e: $f0 $1c
	ld c, h                                          ; $5040: $4c
	add hl, bc                                       ; $5041: $09
	ldh a, [rOBP1]                                   ; $5042: $f0 $49
	ldh a, [$59]                                     ; $5044: $f0 $59
	ldh a, [$fa]                                     ; $5046: $f0 $fa
	ld [hl], c                                       ; $5048: $71
	ld a, [hl-]                                      ; $5049: $3a
	jr c, jr_079_5091                                ; $504a: $38 $45

	add hl, bc                                       ; $504c: $09
	ldh a, [rAUD2LOW]                                ; $504d: $f0 $18
	ldh a, [$dc]                                     ; $504f: $f0 $dc
	ldh a, [$64]                                     ; $5051: $f0 $64
	jr c, jr_079_5099                                ; $5053: $38 $44

	inc a                                            ; $5055: $3c
	ld d, b                                          ; $5056: $50

jr_079_5057:
	add hl, bc                                       ; $5057: $09
	ld b, l                                          ; $5058: $45
	ld d, l                                          ; $5059: $55
	ld [hl], d                                       ; $505a: $72
	ld e, [hl]                                       ; $505b: $5e
	ld d, d                                          ; $505c: $52
	ld a, c                                          ; $505d: $79
	ld b, c                                          ; $505e: $41
	add hl, bc                                       ; $505f: $09
	ldh a, [rWY]                                     ; $5060: $f0 $4a
	ld e, c                                          ; $5062: $59

jr_079_5063:
	ld l, c                                          ; $5063: $69
	add e                                            ; $5064: $83
	pop af                                           ; $5065: $f1
	ld [de], a                                       ; $5066: $12
	ld [hl], e                                       ; $5067: $73
	ld l, c                                          ; $5068: $69
	add hl, bc                                       ; $5069: $09
	ldh a, [$35]                                     ; $506a: $f0 $35
	ldh a, [rSC]                                     ; $506c: $f0 $02
	ldh a, [$c3]                                     ; $506e: $f0 $c3
	ldh a, [$c2]                                     ; $5070: $f0 $c2
	ldh a, [rAUD3LOW]                                ; $5072: $f0 $1d
	ld a, l                                          ; $5074: $7d
	sub e                                            ; $5075: $93
	add hl, bc                                       ; $5076: $09
	add e                                            ; $5077: $83
	pop af                                           ; $5078: $f1
	ld [de], a                                       ; $5079: $12
	ld e, c                                          ; $507a: $59
	ldh a, [$f2]                                     ; $507b: $f0 $f2
	ldh a, [rDIV]                                    ; $507d: $f0 $04
	ldh a, [$c3]                                     ; $507f: $f0 $c3
	ldh a, [$03]                                     ; $5081: $f0 $03
	add hl, bc                                       ; $5083: $09
	ldh a, [$c3]                                     ; $5084: $f0 $c3
	ld e, c                                          ; $5086: $59
	ldh a, [rAUD4POLY]                               ; $5087: $f0 $22
	ld h, l                                          ; $5089: $65
	ldh a, [$2f]                                     ; $508a: $f0 $2f
	ldh a, [$a1]                                     ; $508c: $f0 $a1
	ld e, c                                          ; $508e: $59
	add hl, bc                                       ; $508f: $09
	pop af                                           ; $5090: $f1

jr_079_5091:
	inc hl                                           ; $5091: $23
	ld e, c                                          ; $5092: $59
	pop af                                           ; $5093: $f1
	dec e                                            ; $5094: $1d
	ldh a, [$03]                                     ; $5095: $f0 $03
	pop af                                           ; $5097: $f1
	ld l, c                                          ; $5098: $69

jr_079_5099:
	ldh a, [hDisp1_OBP0]                                     ; $5099: $f0 $93
	ldh a, [c]                                       ; $509b: $f2
	ld a, [hl+]                                      ; $509c: $2a
	add hl, bc                                       ; $509d: $09
	ldh a, [c]                                       ; $509e: $f2
	jr jr_079_5114                                   ; $509f: $18 $73

	ldh a, [$f2]                                     ; $50a1: $f0 $f2
	ldh a, [$50]                                     ; $50a3: $f0 $50
	ld [hl], l                                       ; $50a5: $75
	ld a, l                                          ; $50a6: $7d
	ld l, c                                          ; $50a7: $69
	add hl, bc                                       ; $50a8: $09
	ldh a, [rSCX]                                    ; $50a9: $f0 $43
	ldh a, [rAUDTERM]                                ; $50ab: $f0 $25
	ld h, d                                          ; $50ad: $62
	ldh a, [$b0]                                     ; $50ae: $f0 $b0
	dec sp                                           ; $50b0: $3b
	ccf                                              ; $50b1: $3f
	ld c, [hl]                                       ; $50b2: $4e
	add hl, bc                                       ; $50b3: $09
	ld c, a                                          ; $50b4: $4f
	ld d, b                                          ; $50b5: $50
	dec sp                                           ; $50b6: $3b
	ccf                                              ; $50b7: $3f
	ld d, l                                          ; $50b8: $55
	ld c, [hl]                                       ; $50b9: $4e
	ld b, l                                          ; $50ba: $45
	add hl, bc                                       ; $50bb: $09
	ld c, a                                          ; $50bc: $4f
	ld d, b                                          ; $50bd: $50
	dec sp                                           ; $50be: $3b
	ccf                                              ; $50bf: $3f
	ld e, h                                          ; $50c0: $5c
	dec a                                            ; $50c1: $3d
	ld b, l                                          ; $50c2: $45
	add hl, bc                                       ; $50c3: $09
	dec a                                            ; $50c4: $3d
	ld d, l                                          ; $50c5: $55
	ld e, b                                          ; $50c6: $58
	ld b, c                                          ; $50c7: $41
	ld b, [hl]                                       ; $50c8: $46
	dec sp                                           ; $50c9: $3b
	ccf                                              ; $50ca: $3f
	add hl, bc                                       ; $50cb: $09
	ldh a, [rBGP]                                    ; $50cc: $f0 $47
	ldh a, [$2a]                                     ; $50ce: $f0 $2a
	ld d, e                                          ; $50d0: $53
	ld b, [hl]                                       ; $50d1: $46
	dec sp                                           ; $50d2: $3b
	dec a                                            ; $50d3: $3d
	ld d, b                                          ; $50d4: $50
	add hl, bc                                       ; $50d5: $09
	jr c, jr_079_5117                                ; $50d6: $38 $3f

	ld b, [hl]                                       ; $50d8: $46
	ldh a, [rSB]                                     ; $50d9: $f0 $01
	ld c, [hl]                                       ; $50db: $4e
	inc a                                            ; $50dc: $3c
	ld d, b                                          ; $50dd: $50
	add hl, bc                                       ; $50de: $09
	ld b, [hl]                                       ; $50df: $46
	dec sp                                           ; $50e0: $3b
	inc [hl]                                         ; $50e1: $34
	ldh a, [rAUD3ENA]                                ; $50e2: $f0 $1a
	ldh a, [rBCPD]                                   ; $50e4: $f0 $69
	ld b, h                                          ; $50e6: $44
	scf                                              ; $50e7: $37
	add hl, bc                                       ; $50e8: $09
	ld l, d                                          ; $50e9: $6a
	ld l, b                                          ; $50ea: $68
	ld b, d                                          ; $50eb: $42
	ldh a, [$67]                                     ; $50ec: $f0 $67
	pop af                                           ; $50ee: $f1
	ld hl, $f067                                     ; $50ef: $21 $67 $f0
	ld c, b                                          ; $50f2: $48
	add hl, bc                                       ; $50f3: $09
	ld e, b                                          ; $50f4: $58
	ld b, [hl]                                       ; $50f5: $46
	inc [hl]                                         ; $50f6: $34
	ld h, a                                          ; $50f7: $67
	ld d, l                                          ; $50f8: $55
	ld h, e                                          ; $50f9: $63
	ld b, l                                          ; $50fa: $45
	add hl, bc                                       ; $50fb: $09
	pop af                                           ; $50fc: $f1
	ld d, l                                          ; $50fd: $55
	pop af                                           ; $50fe: $f1
	rst SubAFromDE                                          ; $50ff: $df
	ldh a, [hDisp1_WX]                                     ; $5100: $f0 $96
	sub [hl]                                         ; $5102: $96
	ld b, a                                          ; $5103: $47
	ldh a, [$0c]                                     ; $5104: $f0 $0c
	ld d, l                                          ; $5106: $55
	add hl, bc                                       ; $5107: $09
	ld a, b                                          ; $5108: $78
	ccf                                              ; $5109: $3f
	ld l, [hl]                                       ; $510a: $6e
	dec sp                                           ; $510b: $3b
	dec a                                            ; $510c: $3d
	ld b, c                                          ; $510d: $41
	ld b, h                                          ; $510e: $44
	add hl, bc                                       ; $510f: $09
	ld c, a                                          ; $5110: $4f
	add hl, sp                                       ; $5111: $39
	ld d, c                                          ; $5112: $51
	sbc l                                            ; $5113: $9d

jr_079_5114:
	ldh a, [$60]                                     ; $5114: $f0 $60
	add e                                            ; $5116: $83

jr_079_5117:
	ld l, c                                          ; $5117: $69
	add hl, bc                                       ; $5118: $09
	ld h, d                                          ; $5119: $62
	ldh a, [rAUD2HIGH]                               ; $511a: $f0 $19
	pop af                                           ; $511c: $f1
	jr nc, @+$40                                     ; $511d: $30 $3e

	ld d, d                                          ; $511f: $52
	ld a, $3d                                        ; $5120: $3e $3d
	add hl, bc                                       ; $5122: $09
	adc e                                            ; $5123: $8b
	ldh a, [$72]                                     ; $5124: $f0 $72
	inc [hl]                                         ; $5126: $34
	ld h, h                                          ; $5127: $64
	sbc [hl]                                         ; $5128: $9e
	ld a, [hl-]                                      ; $5129: $3a
	ld [hl], h                                       ; $512a: $74
	add hl, bc                                       ; $512b: $09
	ldh a, [$31]                                     ; $512c: $f0 $31
	ldh a, [hDisp0_LCDC]                                     ; $512e: $f0 $82
	pop af                                           ; $5130: $f1
	ld h, a                                          ; $5131: $67
	ld c, d                                          ; $5132: $4a
	ldh a, [rPCM34]                                  ; $5133: $f0 $77
	ldh a, [hDisp1_SCY]                                     ; $5135: $f0 $90
	ld h, d                                          ; $5137: $62
	add hl, bc                                       ; $5138: $09
	jr c, jr_079_5173                                ; $5139: $38 $38

	inc a                                            ; $513b: $3c
	ld d, b                                          ; $513c: $50
	ld d, b                                          ; $513d: $50
	ld a, $38                                        ; $513e: $3e $38
	add hl, bc                                       ; $5140: $09
	ldh a, [c]                                       ; $5141: $f2
	ld h, $3c                                        ; $5142: $26 $3c
	dec sp                                           ; $5144: $3b
	pop af                                           ; $5145: $f1
	rla                                              ; $5146: $17
	ld e, e                                          ; $5147: $5b
	dec sp                                           ; $5148: $3b
	ccf                                              ; $5149: $3f
	add hl, bc                                       ; $514a: $09
	ld h, a                                          ; $514b: $67
	ld e, h                                          ; $514c: $5c
	ld d, d                                          ; $514d: $52
	ld a, $66                                        ; $514e: $3e $66
	add hl, sp                                       ; $5150: $39
	add hl, bc                                       ; $5151: $09
	ld b, b                                          ; $5152: $40
	add hl, sp                                       ; $5153: $39
	ld c, d                                          ; $5154: $4a
	ld d, c                                          ; $5155: $51
	ld c, h                                          ; $5156: $4c
	add l                                            ; $5157: $85
	add hl, bc                                       ; $5158: $09
	ld b, b                                          ; $5159: $40
	ld c, l                                          ; $515a: $4d
	ld b, a                                          ; $515b: $47
	ld a, $3f                                        ; $515c: $3e $3f
	ld c, a                                          ; $515e: $4f
	add hl, bc                                       ; $515f: $09
	ld b, l                                          ; $5160: $45
	ld e, a                                          ; $5161: $5f
	ld a, $5d                                        ; $5162: $3e $5d
	ld c, l                                          ; $5164: $4d
	ld a, e                                          ; $5165: $7b
	add hl, bc                                       ; $5166: $09
	ld a, l                                          ; $5167: $7d
	ld h, l                                          ; $5168: $65
	ldh a, [rDIV]                                    ; $5169: $f0 $04
	ld e, c                                          ; $516b: $59
	ldh a, [rAUD3ENA]                                ; $516c: $f0 $1a
	ld a, l                                          ; $516e: $7d
	add hl, bc                                       ; $516f: $09
	ld c, d                                          ; $5170: $4a
	ld d, c                                          ; $5171: $51
	ld e, l                                          ; $5172: $5d

jr_079_5173:
	ld c, l                                          ; $5173: $4d
	ld e, d                                          ; $5174: $5a
	ld c, a                                          ; $5175: $4f
	add hl, bc                                       ; $5176: $09
	ld b, b                                          ; $5177: $40
	inc [hl]                                         ; $5178: $34
	ld b, b                                          ; $5179: $40
	add hl, sp                                       ; $517a: $39
	inc a                                            ; $517b: $3c
	ld a, [hl-]                                      ; $517c: $3a
	add hl, bc                                       ; $517d: $09
	ld l, l                                          ; $517e: $6d
	add h                                            ; $517f: $84
	ld c, d                                          ; $5180: $4a
	ld h, a                                          ; $5181: $67
	ld d, l                                          ; $5182: $55
	inc a                                            ; $5183: $3c

jr_079_5184:
	add hl, bc                                       ; $5184: $09
	ldh a, [$2d]                                     ; $5185: $f0 $2d
	ld d, b                                          ; $5187: $50
	ld a, [hl-]                                      ; $5188: $3a
	inc a                                            ; $5189: $3c
	dec sp                                           ; $518a: $3b
	dec a                                            ; $518b: $3d
	add hl, bc                                       ; $518c: $09
	ld [hl-], a                                      ; $518d: $32
	ldh a, [$5c]                                     ; $518e: $f0 $5c
	jr c, jr_079_5184                                ; $5190: $38 $f2

	adc a                                            ; $5192: $8f
	ldh a, [c]                                       ; $5193: $f2
	sub b                                            ; $5194: $90
	ld h, d                                          ; $5195: $62
	add hl, bc                                       ; $5196: $09
	ld d, c                                          ; $5197: $51
	ld [hl], b                                       ; $5198: $70
	inc a                                            ; $5199: $3c
	dec sp                                           ; $519a: $3b
	dec a                                            ; $519b: $3d
	ld c, h                                          ; $519c: $4c
	add hl, bc                                       ; $519d: $09
	ld a, $52                                        ; $519e: $3e $52
	jr c, jr_079_51f4                                ; $51a0: $38 $52

	ld a, $3d                                        ; $51a2: $3e $3d
	add hl, bc                                       ; $51a4: $09
	ldh a, [$2b]                                     ; $51a5: $f0 $2b
	ldh a, [rWX]                                     ; $51a7: $f0 $4b
	ldh a, [rAUD1LEN]                                ; $51a9: $f0 $11
	ld [hl], l                                       ; $51ab: $75
	ld e, c                                          ; $51ac: $59
	ld l, c                                          ; $51ad: $69
	add hl, bc                                       ; $51ae: $09
	ld h, h                                          ; $51af: $64
	ldh a, [$c8]                                     ; $51b0: $f0 $c8
	jr c, jr_079_51f2                                ; $51b2: $38 $3e

	ld d, d                                          ; $51b4: $52
	ld d, c                                          ; $51b5: $51
	add hl, bc                                       ; $51b6: $09
	sub b                                            ; $51b7: $90
	ld a, $3c                                        ; $51b8: $3e $3c
	dec sp                                           ; $51ba: $3b
	dec a                                            ; $51bb: $3d
	ld h, e                                          ; $51bc: $63
	add hl, bc                                       ; $51bd: $09
	ld c, a                                          ; $51be: $4f

jr_079_51bf:
	ld d, b                                          ; $51bf: $50
	dec sp                                           ; $51c0: $3b
	dec a                                            ; $51c1: $3d
	ldh a, [rSCX]                                    ; $51c2: $f0 $43
	ldh a, [rAUDTERM]                                ; $51c4: $f0 $25
	add hl, bc                                       ; $51c6: $09
	pop af                                           ; $51c7: $f1
	add hl, bc                                       ; $51c8: $09
	ld d, a                                          ; $51c9: $57
	ld d, d                                          ; $51ca: $52
	ld a, $66                                        ; $51cb: $3e $66
	add hl, sp                                       ; $51cd: $39
	add hl, bc                                       ; $51ce: $09
	ld d, h                                          ; $51cf: $54
	ld c, c                                          ; $51d0: $49
	ld b, a                                          ; $51d1: $47
	add b                                            ; $51d2: $80
	jr c, jr_079_5214                                ; $51d3: $38 $3f

	add hl, bc                                       ; $51d5: $09
	ldh a, [$64]                                     ; $51d6: $f0 $64
	ld h, e                                          ; $51d8: $63
	ld c, l                                          ; $51d9: $4d
	ccf                                              ; $51da: $3f
	ld c, [hl]                                       ; $51db: $4e
	adc l                                            ; $51dc: $8d
	add hl, bc                                       ; $51dd: $09
	ld [hl-], a                                      ; $51de: $32
	ld a, $52                                        ; $51df: $3e $52
	dec sp                                           ; $51e1: $3b
	dec a                                            ; $51e2: $3d
	scf                                              ; $51e3: $37
	add hl, bc                                       ; $51e4: $09
	ld c, a                                          ; $51e5: $4f
	ld d, b                                          ; $51e6: $50
	dec sp                                           ; $51e7: $3b
	dec a                                            ; $51e8: $3d
	sbc e                                            ; $51e9: $9b
	ldh a, [rAUDTERM]                                ; $51ea: $f0 $25
	add hl, bc                                       ; $51ec: $09
	ld h, a                                          ; $51ed: $67
	dec sp                                           ; $51ee: $3b
	ld h, c                                          ; $51ef: $61
	ld d, [hl]                                       ; $51f0: $56
	dec sp                                           ; $51f1: $3b

jr_079_51f2:
	dec a                                            ; $51f2: $3d
	add hl, bc                                       ; $51f3: $09

jr_079_51f4:
	ld b, b                                          ; $51f4: $40
	add hl, sp                                       ; $51f5: $39
	ld a, [hl-]                                      ; $51f6: $3a
	ld b, c                                          ; $51f7: $41
	ld c, d                                          ; $51f8: $4a
	ld d, c                                          ; $51f9: $51
	add hl, bc                                       ; $51fa: $09
	ldh a, [hDisp1_OBP1]                                     ; $51fb: $f0 $94
	ld [hl], c                                       ; $51fd: $71
	ccf                                              ; $51fe: $3f
	ld b, d                                          ; $51ff: $42
	pop af                                           ; $5200: $f1
	add e                                            ; $5201: $83
	ldh a, [c]                                       ; $5202: $f2
	ld d, a                                          ; $5203: $57
	add hl, bc                                       ; $5204: $09
	ldh a, [rSC]                                     ; $5205: $f0 $02
	ldh a, [rBCPD]                                   ; $5207: $f0 $69
	ldh a, [$1f]                                     ; $5209: $f0 $1f
	ldh a, [rAUD3LOW]                                ; $520b: $f0 $1d
	ld h, l                                          ; $520d: $65
	add e                                            ; $520e: $83
	add hl, bc                                       ; $520f: $09
	ld b, [hl]                                       ; $5210: $46
	ld d, a                                          ; $5211: $57
	ld d, d                                          ; $5212: $52
	ld d, c                                          ; $5213: $51

jr_079_5214:
	ld b, d                                          ; $5214: $42
	ld c, d                                          ; $5215: $4a
	add hl, bc                                       ; $5216: $09
	ld b, [hl]                                       ; $5217: $46
	ld [hl], h                                       ; $5218: $74
	inc [hl]                                         ; $5219: $34
	jr c, jr_079_5254                                ; $521a: $38 $38

	ld b, l                                          ; $521c: $45
	add hl, bc                                       ; $521d: $09
	pop af                                           ; $521e: $f1
	ld a, b                                          ; $521f: $78
	jr c, jr_079_51bf                                ; $5220: $38 $9d

	ld c, [hl]                                       ; $5222: $4e
	ld l, h                                          ; $5223: $6c
	ld h, d                                          ; $5224: $62
	add hl, bc                                       ; $5225: $09
	ld b, a                                          ; $5226: $47
	ldh a, [$e8]                                     ; $5227: $f0 $e8
	ld d, b                                          ; $5229: $50
	ld a, [hl-]                                      ; $522a: $3a
	ld e, h                                          ; $522b: $5c
	ld d, [hl]                                       ; $522c: $56
	add hl, bc                                       ; $522d: $09
	ld [hl], d                                       ; $522e: $72
	ccf                                              ; $522f: $3f
	jr c, jr_079_526d                                ; $5230: $38 $3b

	ccf                                              ; $5232: $3f
	ld b, l                                          ; $5233: $45
	add hl, bc                                       ; $5234: $09
	ldh a, [$b2]                                     ; $5235: $f0 $b2
	ldh a, [rKEY1]                                   ; $5237: $f0 $4d
	ld b, a                                          ; $5239: $47
	ld a, b                                          ; $523a: $78
	ccf                                              ; $523b: $3f
	ld b, l                                          ; $523c: $45
	add hl, bc                                       ; $523d: $09
	db $f4                                           ; $523e: $f4
	and d                                            ; $523f: $a2
	ld e, [hl]                                       ; $5240: $5e
	ccf                                              ; $5241: $3f
	ld d, l                                          ; $5242: $55
	ld c, [hl]                                       ; $5243: $4e
	adc l                                            ; $5244: $8d
	add hl, bc                                       ; $5245: $09
	ld [hl-], a                                      ; $5246: $32
	ld b, b                                          ; $5247: $40
	add hl, sp                                       ; $5248: $39
	add d                                            ; $5249: $82
	ld e, [hl]                                       ; $524a: $5e
	ld a, e                                          ; $524b: $7b
	add hl, bc                                       ; $524c: $09
	ldh a, [c]                                       ; $524d: $f2
	dec a                                            ; $524e: $3d
	pop af                                           ; $524f: $f1
	rst GetHLinHL                                          ; $5250: $cf
	ldh a, [$ee]                                     ; $5251: $f0 $ee
	ld b, d                                          ; $5253: $42

jr_079_5254:
	ldh a, [$38]                                     ; $5254: $f0 $38
	ld b, a                                          ; $5256: $47
	add hl, bc                                       ; $5257: $09
	ldh a, [$d8]                                     ; $5258: $f0 $d8
	ld c, a                                          ; $525a: $4f
	ld d, l                                          ; $525b: $55
	ld e, e                                          ; $525c: $5b
	ld c, d                                          ; $525d: $4a
	ld c, a                                          ; $525e: $4f
	add hl, bc                                       ; $525f: $09
	ld b, l                                          ; $5260: $45
	inc a                                            ; $5261: $3c
	dec sp                                           ; $5262: $3b
	dec a                                            ; $5263: $3d
	ld d, b                                          ; $5264: $50
	ld e, b                                          ; $5265: $58
	add hl, bc                                       ; $5266: $09
	ldh a, [rAUD2HIGH]                               ; $5267: $f0 $19
	ld b, a                                          ; $5269: $47
	sub [hl]                                         ; $526a: $96
	ld c, [hl]                                       ; $526b: $4e
	ld h, e                                          ; $526c: $63

jr_079_526d:
	ld b, l                                          ; $526d: $45
	add hl, bc                                       ; $526e: $09
	add hl, sp                                       ; $526f: $39
	ld c, [hl]                                       ; $5270: $4e
	ld e, b                                          ; $5271: $58
	jr c, jr_079_52d7                                ; $5272: $38 $63

	ld c, h                                          ; $5274: $4c
	add hl, bc                                       ; $5275: $09
	ldh a, [$e2]                                     ; $5276: $f0 $e2
	ldh a, [$e3]                                     ; $5278: $f0 $e3
	ld d, e                                          ; $527a: $53
	ld b, [hl]                                       ; $527b: $46
	ld c, [hl]                                       ; $527c: $4e
	ld b, d                                          ; $527d: $42
	add hl, bc                                       ; $527e: $09
	ld c, a                                          ; $527f: $4f
	add hl, sp                                       ; $5280: $39
	ld a, d                                          ; $5281: $7a
	ld e, a                                          ; $5282: $5f
	add hl, sp                                       ; $5283: $39
	ld b, l                                          ; $5284: $45
	add hl, bc                                       ; $5285: $09
	ldh a, [$d8]                                     ; $5286: $f0 $d8
	inc [hl]                                         ; $5288: $34
	pop af                                           ; $5289: $f1
	add l                                            ; $528a: $85
	pop af                                           ; $528b: $f1
	and h                                            ; $528c: $a4
	ld b, h                                          ; $528d: $44
	ld b, l                                          ; $528e: $45
	add hl, bc                                       ; $528f: $09
	ld b, b                                          ; $5290: $40
	ld c, l                                          ; $5291: $4d
	ld c, d                                          ; $5292: $4a
	jr c, jr_079_52cd                                ; $5293: $38 $38

	ld h, e                                          ; $5295: $63
	add hl, bc                                       ; $5296: $09
	ldh a, [$ac]                                     ; $5297: $f0 $ac
	ldh a, [c]                                       ; $5299: $f2
	ld b, d                                          ; $529a: $42
	ld e, [hl]                                       ; $529b: $5e
	ccf                                              ; $529c: $3f
	ld d, l                                          ; $529d: $55
	ld c, [hl]                                       ; $529e: $4e
	add hl, bc                                       ; $529f: $09
	ldh a, [rTAC]                                    ; $52a0: $f0 $07
	inc a                                            ; $52a2: $3c
	ld d, a                                          ; $52a3: $57
	ld l, [hl]                                       ; $52a4: $6e
	ld d, c                                          ; $52a5: $51
	jr c, jr_079_52b1                                ; $52a6: $38 $09

	ldh a, [rAUD3LOW]                                ; $52a8: $f0 $1d
	ldh a, [$09]                                     ; $52aa: $f0 $09
	ld e, c                                          ; $52ac: $59
	ldh a, [$7e]                                     ; $52ad: $f0 $7e
	ldh a, [$7c]                                     ; $52af: $f0 $7c

jr_079_52b1:
	ld e, c                                          ; $52b1: $59
	add hl, bc                                       ; $52b2: $09
	pop af                                           ; $52b3: $f1
	set 6, d                                         ; $52b4: $cb $f2
	jr nz, @+$64                                     ; $52b6: $20 $62

	pop af                                           ; $52b8: $f1
	db $d3                                           ; $52b9: $d3
	ld [hl], c                                       ; $52ba: $71
	ld c, [hl]                                       ; $52bb: $4e
	add hl, bc                                       ; $52bc: $09
	ldh a, [$34]                                     ; $52bd: $f0 $34
	ld b, a                                          ; $52bf: $47
	pop af                                           ; $52c0: $f1
	db $d3                                           ; $52c1: $d3
	ld [hl], c                                       ; $52c2: $71
	ld a, [hl-]                                      ; $52c3: $3a
	jr c, jr_079_52cf                                ; $52c4: $38 $09

	add c                                            ; $52c6: $81
	ldh a, [$1f]                                     ; $52c7: $f0 $1f
	ld [hl], l                                       ; $52c9: $75
	add e                                            ; $52ca: $83
	dec sp                                           ; $52cb: $3b
	ccf                                              ; $52cc: $3f

jr_079_52cd:
	add hl, bc                                       ; $52cd: $09
	ld a, a                                          ; $52ce: $7f

jr_079_52cf:
	ldh a, [rHDMA1]                                  ; $52cf: $f0 $51
	ld h, c                                          ; $52d1: $61
	ld d, e                                          ; $52d2: $53
	jr c, jr_079_530d                                ; $52d3: $38 $38

	add hl, bc                                       ; $52d5: $09
	ldh a, [c]                                       ; $52d6: $f2

jr_079_52d7:
	jr jr_079_534c                                   ; $52d7: $18 $73

	ldh a, [$f2]                                     ; $52d9: $f0 $f2
	ldh a, [$50]                                     ; $52db: $f0 $50
	ld [hl], e                                       ; $52dd: $73
	ldh a, [$32]                                     ; $52de: $f0 $32
	add hl, bc                                       ; $52e0: $09
	ldh a, [c]                                       ; $52e1: $f2
	dec e                                            ; $52e2: $1d
	adc [hl]                                         ; $52e3: $8e
	ld d, c                                          ; $52e4: $51
	ld c, [hl]                                       ; $52e5: $4e
	ld a, [hl-]                                      ; $52e6: $3a
	ld [hl], h                                       ; $52e7: $74
	add hl, bc                                       ; $52e8: $09
	ldh a, [rBCPD]                                   ; $52e9: $f0 $69
	ld [hl], l                                       ; $52eb: $75
	add e                                            ; $52ec: $83
	ld [hl], l                                       ; $52ed: $75
	ld [hl], e                                       ; $52ee: $73
	ld l, c                                          ; $52ef: $69
	add hl, bc                                       ; $52f0: $09
	ld l, d                                          ; $52f1: $6a
	ldh a, [rAUD1HIGH]                               ; $52f2: $f0 $14
	ld c, e                                          ; $52f4: $4b
	pop af                                           ; $52f5: $f1
	rlca                                             ; $52f6: $07
	ldh a, [hDisp0_LCDC]                                     ; $52f7: $f0 $82
	ld c, h                                          ; $52f9: $4c
	add hl, bc                                       ; $52fa: $09
	ldh a, [$63]                                     ; $52fb: $f0 $63
	pop af                                           ; $52fd: $f1
	dec sp                                           ; $52fe: $3b
	ld c, d                                          ; $52ff: $4a
	ld e, h                                          ; $5300: $5c
	ld a, [hl-]                                      ; $5301: $3a
	jr c, jr_079_530d                                ; $5302: $38 $09

	ld a, $4d                                        ; $5304: $3e $4d
	ld a, [hl-]                                      ; $5306: $3a
	jr c, @+$65                                      ; $5307: $38 $63

	ld c, h                                          ; $5309: $4c
	add hl, bc                                       ; $530a: $09
	ldh a, [$32]                                     ; $530b: $f0 $32

jr_079_530d:
	ld e, c                                          ; $530d: $59
	ldh a, [rAUD4LEN]                                ; $530e: $f0 $20
	ld e, c                                          ; $5310: $59
	pop af                                           ; $5311: $f1
	cpl                                              ; $5312: $2f
	di                                               ; $5313: $f3
	add a                                            ; $5314: $87
	add hl, bc                                       ; $5315: $09
	ldh a, [rOCPD]                                   ; $5316: $f0 $6b
	ld e, c                                          ; $5318: $59
	ldh a, [rOCPD]                                   ; $5319: $f0 $6b
	ldh a, [rOCPD]                                   ; $531b: $f0 $6b
	ldh a, [rOCPD]                                   ; $531d: $f0 $6b
	ldh a, [rOCPD]                                   ; $531f: $f0 $6b
	add hl, bc                                       ; $5321: $09
	add e                                            ; $5322: $83
	ldh a, [$2f]                                     ; $5323: $f0 $2f
	ld e, c                                          ; $5325: $59
	ldh a, [hDisp0_WX]                                     ; $5326: $f0 $89
	pop af                                           ; $5328: $f1
	inc sp                                           ; $5329: $33
	ldh a, [$3d]                                     ; $532a: $f0 $3d
	add hl, bc                                       ; $532c: $09
	ld l, l                                          ; $532d: $6d
	db $f4                                           ; $532e: $f4
	xor a                                            ; $532f: $af
	ldh a, [rAUD4POLY]                               ; $5330: $f0 $22
	ld e, c                                          ; $5332: $59
	ldh a, [$de]                                     ; $5333: $f0 $de
	add e                                            ; $5335: $83
	add hl, bc                                       ; $5336: $09
	ldh a, [$3b]                                     ; $5337: $f0 $3b
	dec sp                                           ; $5339: $3b
	dec a                                            ; $533a: $3d
	ld d, a                                          ; $533b: $57
	ld a, $3f                                        ; $533c: $3e $3f
	add hl, bc                                       ; $533e: $09
	inc a                                            ; $533f: $3c
	ld d, c                                          ; $5340: $51
	ld d, a                                          ; $5341: $57
	pop af                                           ; $5342: $f1
	adc b                                            ; $5343: $88
	pop af                                           ; $5344: $f1
	rst SubAFromHL                                          ; $5345: $d7
	ldh a, [$0d]                                     ; $5346: $f0 $0d
	add hl, bc                                       ; $5348: $09
	ld a, [hl]                                       ; $5349: $7e
	inc a                                            ; $534a: $3c
	dec sp                                           ; $534b: $3b

jr_079_534c:
	dec a                                            ; $534c: $3d
	ld h, e                                          ; $534d: $63
	ld b, l                                          ; $534e: $45
	add hl, bc                                       ; $534f: $09
	ld b, l                                          ; $5350: $45
	ld e, a                                          ; $5351: $5f
	ld a, $55                                        ; $5352: $3e $55
	ccf                                              ; $5354: $3f
	ld b, l                                          ; $5355: $45
	add hl, bc                                       ; $5356: $09
	ldh a, [rAUD1ENV]                                ; $5357: $f0 $12
	jr c, jr_079_53a4                                ; $5359: $38 $49

	ld d, h                                          ; $535b: $54
	ld e, a                                          ; $535c: $5f
	ld c, d                                          ; $535d: $4a
	add hl, bc                                       ; $535e: $09
	add e                                            ; $535f: $83
	add c                                            ; $5360: $81
	ldh a, [rP1]                                     ; $5361: $f0 $00
	ld [hl], e                                       ; $5363: $73
	ld l, c                                          ; $5364: $69
	ld b, a                                          ; $5365: $47
	add hl, bc                                       ; $5366: $09
	ldh a, [rLCDC]                                   ; $5367: $f0 $40
	ld d, a                                          ; $5369: $57
	ld d, d                                          ; $536a: $52

jr_079_536b:
	ld a, $66                                        ; $536b: $3e $66
	add hl, sp                                       ; $536d: $39
	add hl, bc                                       ; $536e: $09
	add a                                            ; $536f: $87
	ldh a, [$5b]                                     ; $5370: $f0 $5b
	ldh a, [$5e]                                     ; $5372: $f0 $5e
	ld b, h                                          ; $5374: $44
	dec sp                                           ; $5375: $3b
	ccf                                              ; $5376: $3f
	add hl, bc                                       ; $5377: $09
	pop af                                           ; $5378: $f1
	jr z, jr_079_536b                                ; $5379: $28 $f0

	add c                                            ; $537b: $81
	ldh a, [rWY]                                     ; $537c: $f0 $4a
	ld [hl], e                                       ; $537e: $73
	ldh a, [rAUD4POLY]                               ; $537f: $f0 $22
	ld h, l                                          ; $5381: $65
	add hl, bc                                       ; $5382: $09
	ld b, [hl]                                       ; $5383: $46
	dec sp                                           ; $5384: $3b
	inc [hl]                                         ; $5385: $34
	jr c, jr_079_53c0                                ; $5386: $38 $38

	ld b, d                                          ; $5388: $42
	add hl, bc                                       ; $5389: $09
	pop af                                           ; $538a: $f1
	inc hl                                           ; $538b: $23
	ld [hl], e                                       ; $538c: $73
	ld l, c                                          ; $538d: $69
	ldh a, [rAUD4LEN]                                ; $538e: $f0 $20
	ld [hl], e                                       ; $5390: $73
	ldh a, [$32]                                     ; $5391: $f0 $32
	add hl, bc                                       ; $5393: $09
	ldh a, [$3e]                                     ; $5394: $f0 $3e
	pop af                                           ; $5396: $f1
	ret nz                                           ; $5397: $c0

	pop af                                           ; $5398: $f1
	ld b, d                                          ; $5399: $42
	ldh a, [rAUD1LEN]                                ; $539a: $f0 $11
	ld e, c                                          ; $539c: $59
	add e                                            ; $539d: $83
	add hl, bc                                       ; $539e: $09
	ldh a, [hDisp1_OBP1]                                     ; $539f: $f0 $94
	ldh a, [rVBK]                                    ; $53a1: $f0 $4f
	pop af                                           ; $53a3: $f1

jr_079_53a4:
	ld b, d                                          ; $53a4: $42
	ldh a, [rAUD1LEN]                                ; $53a5: $f0 $11
	ld e, c                                          ; $53a7: $59
	add e                                            ; $53a8: $83
	add hl, bc                                       ; $53a9: $09
	ldh a, [rAUD2HIGH]                               ; $53aa: $f0 $19
	pop af                                           ; $53ac: $f1
	ret nz                                           ; $53ad: $c0

	pop af                                           ; $53ae: $f1
	ld b, d                                          ; $53af: $42
	ldh a, [rAUD1LEN]                                ; $53b0: $f0 $11
	ld e, c                                          ; $53b2: $59
	add e                                            ; $53b3: $83
	add hl, bc                                       ; $53b4: $09
	pop af                                           ; $53b5: $f1
	ld d, h                                          ; $53b6: $54
	ld e, c                                          ; $53b7: $59
	ldh a, [$60]                                     ; $53b8: $f0 $60
	ldh a, [$c4]                                     ; $53ba: $f0 $c4
	ld h, l                                          ; $53bc: $65
	ldh a, [$50]                                     ; $53bd: $f0 $50
	add hl, bc                                       ; $53bf: $09

jr_079_53c0:
	ldh a, [rAUD1LEN]                                ; $53c0: $f0 $11
	ld h, l                                          ; $53c2: $65
	ldh a, [$fd]                                     ; $53c3: $f0 $fd
	ldh a, [$a1]                                     ; $53c5: $f0 $a1
	ld e, c                                          ; $53c7: $59
	ldh a, [rDIV]                                    ; $53c8: $f0 $04
	add hl, bc                                       ; $53ca: $09
	ld e, h                                          ; $53cb: $5c
	ld d, b                                          ; $53cc: $50
	ld [hl], c                                       ; $53cd: $71
	ld e, h                                          ; $53ce: $5c
	ldh a, [rAUD1ENV]                                ; $53cf: $f0 $12
	sbc a                                            ; $53d1: $9f
	add hl, bc                                       ; $53d2: $09
	ldh a, [$50]                                     ; $53d3: $f0 $50
	ld [hl], e                                       ; $53d5: $73
	pop af                                           ; $53d6: $f1
	dec b                                            ; $53d7: $05
	ld e, c                                          ; $53d8: $59
	pop af                                           ; $53d9: $f1
	ld [bc], a                                       ; $53da: $02
	ld h, l                                          ; $53db: $65
	add hl, bc                                       ; $53dc: $09
	ld l, a                                          ; $53dd: $6f
	ld b, d                                          ; $53de: $42
	ldh a, [$aa]                                     ; $53df: $f0 $aa
	adc c                                            ; $53e1: $89
	ldh a, [$7f]                                     ; $53e2: $f0 $7f
	ld h, d                                          ; $53e4: $62
	add hl, bc                                       ; $53e5: $09
	ldh a, [$08]                                     ; $53e6: $f0 $08
	ld e, c                                          ; $53e8: $59
	dec sp                                           ; $53e9: $3b
	ldh a, [$08]                                     ; $53ea: $f0 $08
	ldh a, [$08]                                     ; $53ec: $f0 $08
	ldh a, [$08]                                     ; $53ee: $f0 $08
	add hl, bc                                       ; $53f0: $09
	ld c, a                                          ; $53f1: $4f
	ld h, c                                          ; $53f2: $61
	ld e, a                                          ; $53f3: $5f
	ld b, c                                          ; $53f4: $41
	ld c, d                                          ; $53f5: $4a
	ld d, c                                          ; $53f6: $51
	add hl, bc                                       ; $53f7: $09
	ldh a, [hDisp1_LCDC]                                     ; $53f8: $f0 $8f
	ld l, h                                          ; $53fa: $6c
	ld d, d                                          ; $53fb: $52
	ld a, $66                                        ; $53fc: $3e $66
	add hl, sp                                       ; $53fe: $39
	add hl, bc                                       ; $53ff: $09
	ld h, h                                          ; $5400: $64
	pop af                                           ; $5401: $f1
	ld e, l                                          ; $5402: $5d
	pop af                                           ; $5403: $f1
	and a                                            ; $5404: $a7
	ld a, $3f                                        ; $5405: $3e $3f
	ld c, a                                          ; $5407: $4f
	add hl, bc                                       ; $5408: $09
	add c                                            ; $5409: $81
	ldh a, [$1f]                                     ; $540a: $f0 $1f
	ld [hl], l                                       ; $540c: $75
	add e                                            ; $540d: $83
	ldh a, [rSC]                                     ; $540e: $f0 $02
	ld e, c                                          ; $5410: $59
	add hl, bc                                       ; $5411: $09
	pop af                                           ; $5412: $f1
	sub a                                            ; $5413: $97
	ldh a, [$3d]                                     ; $5414: $f0 $3d
	ld e, c                                          ; $5416: $59
	ldh a, [rAUD4LEN]                                ; $5417: $f0 $20
	ld h, l                                          ; $5419: $65
	ldh a, [$32]                                     ; $541a: $f0 $32
	add hl, bc                                       ; $541c: $09
	ldh a, [$35]                                     ; $541d: $f0 $35
	ld e, c                                          ; $541f: $59
	ldh a, [$32]                                     ; $5420: $f0 $32
	ldh a, [$6d]                                     ; $5422: $f0 $6d
	ld e, c                                          ; $5424: $59
	ldh a, [$27]                                     ; $5425: $f0 $27
	add hl, bc                                       ; $5427: $09
	pop af                                           ; $5428: $f1
	dec e                                            ; $5429: $1d
	ldh a, [rP1]                                     ; $542a: $f0 $00
	ld e, c                                          ; $542c: $59
	ldh a, [$50]                                     ; $542d: $f0 $50
	ld [hl], e                                       ; $542f: $73
	ldh a, [$32]                                     ; $5430: $f0 $32
	add hl, bc                                       ; $5432: $09
	ld [hl-], a                                      ; $5433: $32
	adc d                                            ; $5434: $8a
	ldh a, [$73]                                     ; $5435: $f0 $73
	adc a                                            ; $5437: $8f
	pop af                                           ; $5438: $f1
	ld c, [hl]                                       ; $5439: $4e
	ccf                                              ; $543a: $3f
	add hl, bc                                       ; $543b: $09
	ld d, c                                          ; $543c: $51
	dec sp                                           ; $543d: $3b
	ldh a, [rSB]                                     ; $543e: $f0 $01
	ld e, c                                          ; $5440: $59
	ldh a, [rVBK]                                    ; $5441: $f0 $4f
	ldh a, [$b0]                                     ; $5443: $f0 $b0
	add hl, bc                                       ; $5445: $09
	ld b, [hl]                                       ; $5446: $46
	dec sp                                           ; $5447: $3b
	inc [hl]                                         ; $5448: $34
	ld b, b                                          ; $5449: $40
	add hl, sp                                       ; $544a: $39
	inc a                                            ; $544b: $3c
	add hl, bc                                       ; $544c: $09
	ld h, a                                          ; $544d: $67
	ld e, h                                          ; $544e: $5c
	dec a                                            ; $544f: $3d
	jr c, jr_079_54af                                ; $5450: $38 $5d

	ld e, d                                          ; $5452: $5a
	add hl, bc                                       ; $5453: $09
	pop af                                           ; $5454: $f1
	sbc b                                            ; $5455: $98
	ldh a, [hDisp1_WY]                                     ; $5456: $f0 $95
	ld b, h                                          ; $5458: $44
	ld a, $3a                                        ; $5459: $3e $3a
	ld [hl], h                                       ; $545b: $74
	add hl, bc                                       ; $545c: $09
	ldh a, [rPCM12]                                  ; $545d: $f0 $76
	ldh a, [$d2]                                     ; $545f: $f0 $d2
	ldh a, [$3f]                                     ; $5461: $f0 $3f
	ld a, [hl-]                                      ; $5463: $3a
	ld b, c                                          ; $5464: $41
	ccf                                              ; $5465: $3f
	add hl, bc                                       ; $5466: $09
	ld h, h                                          ; $5467: $64
	ldh a, [$c8]                                     ; $5468: $f0 $c8
	jr c, jr_079_54aa                                ; $546a: $38 $3e

	dec a                                            ; $546c: $3d
	ld h, e                                          ; $546d: $63
	add hl, bc                                       ; $546e: $09
	ld l, d                                          ; $546f: $6a
	ld l, b                                          ; $5470: $68
	ld b, h                                          ; $5471: $44
	ld e, l                                          ; $5472: $5d
	ldh a, [$b6]                                     ; $5473: $f0 $b6
	ldh a, [$34]                                     ; $5475: $f0 $34
	add hl, bc                                       ; $5477: $09
	ldh a, [$b2]                                     ; $5478: $f0 $b2
	ldh a, [rKEY1]                                   ; $547a: $f0 $4d
	ld b, a                                          ; $547c: $47
	ld a, b                                          ; $547d: $78
	dec a                                            ; $547e: $3d
	ld b, l                                          ; $547f: $45
	add hl, bc                                       ; $5480: $09
	ld d, e                                          ; $5481: $53
	jr c, jr_079_54be                                ; $5482: $38 $3a

	ld e, l                                          ; $5484: $5d
	ld d, a                                          ; $5485: $57
	ld d, [hl]                                       ; $5486: $56
	add hl, bc                                       ; $5487: $09
	ld l, [hl]                                       ; $5488: $6e
	dec sp                                           ; $5489: $3b
	ldh a, [$36]                                     ; $548a: $f0 $36
	ld d, a                                          ; $548c: $57
	dec sp                                           ; $548d: $3b
	ccf                                              ; $548e: $3f
	add hl, bc                                       ; $548f: $09
	halt                                             ; $5490: $76
	ld c, e                                          ; $5491: $4b
	ld d, h                                          ; $5492: $54
	ld b, d                                          ; $5493: $42
	sbc d                                            ; $5494: $9a
	ld h, d                                          ; $5495: $62
	add hl, bc                                       ; $5496: $09
	sub c                                            ; $5497: $91
	ldh a, [$59]                                     ; $5498: $f0 $59
	inc [hl]                                         ; $549a: $34
	ld [hl], d                                       ; $549b: $72
	ld c, [hl]                                       ; $549c: $4e
	ld b, l                                          ; $549d: $45
	add hl, bc                                       ; $549e: $09
	ld d, d                                          ; $549f: $52
	ld [hl], h                                       ; $54a0: $74
	inc [hl]                                         ; $54a1: $34
	jr c, jr_079_54dc                                ; $54a2: $38 $38

	inc a                                            ; $54a4: $3c
	add hl, bc                                       ; $54a5: $09
	push af                                          ; $54a6: $f5
	cp $f3                                           ; $54a7: $fe $f3
	sbc b                                            ; $54a9: $98

jr_079_54aa:
	ldh a, [rDIV]                                    ; $54aa: $f0 $04
	ldh a, [$c2]                                     ; $54ac: $f0 $c2
	pop af                                           ; $54ae: $f1

jr_079_54af:
	inc hl                                           ; $54af: $23
	ldh a, [rAUD1LEN]                                ; $54b0: $f0 $11
	add hl, bc                                       ; $54b2: $09
	add c                                            ; $54b3: $81
	ld [hl], l                                       ; $54b4: $75
	ld [hl], e                                       ; $54b5: $73
	sbc b                                            ; $54b6: $98
	ldh a, [$7c]                                     ; $54b7: $f0 $7c
	ld e, c                                          ; $54b9: $59
	add hl, bc                                       ; $54ba: $09
	ldh a, [rIF]                                     ; $54bb: $f0 $0f
	ld e, c                                          ; $54bd: $59

jr_079_54be:
	ldh a, [$8e]                                     ; $54be: $f0 $8e
	pop af                                           ; $54c0: $f1
	inc sp                                           ; $54c1: $33
	sub e                                            ; $54c2: $93
	ld l, c                                          ; $54c3: $69
	add hl, bc                                       ; $54c4: $09
	ldh a, [rAUD1LEN]                                ; $54c5: $f0 $11
	ld h, l                                          ; $54c7: $65
	ldh a, [rAUD4POLY]                               ; $54c8: $f0 $22
	ld e, c                                          ; $54ca: $59
	ld l, c                                          ; $54cb: $69
	pop af                                           ; $54cc: $f1
	ld h, [hl]                                       ; $54cd: $66
	add hl, bc                                       ; $54ce: $09
	ldh a, [$8e]                                     ; $54cf: $f0 $8e
	pop af                                           ; $54d1: $f1
	ld c, l                                          ; $54d2: $4d
	ld h, l                                          ; $54d3: $65
	sub e                                            ; $54d4: $93
	ldh a, [rSC]                                     ; $54d5: $f0 $02
	ldh a, [rBCPD]                                   ; $54d7: $f0 $69
	add hl, bc                                       ; $54d9: $09
	pop af                                           ; $54da: $f1
	ld c, d                                          ; $54db: $4a

jr_079_54dc:
	ld e, l                                          ; $54dc: $5d
	ccf                                              ; $54dd: $3f
	ldh a, [$d9]                                     ; $54de: $f0 $d9
	add b                                            ; $54e0: $80
	ld h, e                                          ; $54e1: $63
	add hl, bc                                       ; $54e2: $09
	sbc b                                            ; $54e3: $98
	ldh a, [rWX]                                     ; $54e4: $f0 $4b
	ld [hl], e                                       ; $54e6: $73
	ldh a, [$fd]                                     ; $54e7: $f0 $fd
	ld h, l                                          ; $54e9: $65
	ldh a, [$50]                                     ; $54ea: $f0 $50
	add hl, bc                                       ; $54ec: $09
	pop af                                           ; $54ed: $f1
	or [hl]                                          ; $54ee: $b6
	ld b, d                                          ; $54ef: $42
	ldh a, [rAUD1ENV]                                ; $54f0: $f0 $12
	sbc a                                            ; $54f2: $9f
	ldh a, [rTIMA]                                   ; $54f3: $f0 $05
	pop af                                           ; $54f5: $f1
	rrca                                             ; $54f6: $0f
	add hl, bc                                       ; $54f7: $09
	pop af                                           ; $54f8: $f1
	ld b, b                                          ; $54f9: $40
	ld h, l                                          ; $54fa: $65
	ldh a, [rWY]                                     ; $54fb: $f0 $4a
	ldh a, [$c4]                                     ; $54fd: $f0 $c4
	ld h, l                                          ; $54ff: $65
	ldh a, [$50]                                     ; $5500: $f0 $50
	add hl, bc                                       ; $5502: $09
	ld a, b                                          ; $5503: $78
	dec a                                            ; $5504: $3d
	ld b, d                                          ; $5505: $42
	inc a                                            ; $5506: $3c
	ld a, $50                                        ; $5507: $3e $50
	add hl, bc                                       ; $5509: $09
	ld b, [hl]                                       ; $550a: $46
	dec sp                                           ; $550b: $3b
	inc [hl]                                         ; $550c: $34
	sbc c                                            ; $550d: $99
	dec sp                                           ; $550e: $3b
	ccf                                              ; $550f: $3f
	add hl, bc                                       ; $5510: $09
	ld l, h                                          ; $5511: $6c
	ld b, c                                          ; $5512: $41
	ld a, [hl-]                                      ; $5513: $3a
	adc a                                            ; $5514: $8f
	pop af                                           ; $5515: $f1
	ld c, [hl]                                       ; $5516: $4e
	ld c, d                                          ; $5517: $4a
	add hl, bc                                       ; $5518: $09
	pop af                                           ; $5519: $f1
	push bc                                          ; $551a: $c5
	pop af                                           ; $551b: $f1
	call c, $f142                                    ; $551c: $dc $42 $f1
	ld c, d                                          ; $551f: $4a
	ld e, l                                          ; $5520: $5d
	ld c, a                                          ; $5521: $4f
	add hl, bc                                       ; $5522: $09
	pop af                                           ; $5523: $f1
	push bc                                          ; $5524: $c5
	pop af                                           ; $5525: $f1
	call c, $f242                                    ; $5526: $dc $42 $f2
	ldh [c], a                                       ; $5529: $e2
	ldh a, [$a9]                                     ; $552a: $f0 $a9
	ld c, e                                          ; $552c: $4b
	add hl, bc                                       ; $552d: $09
	ld [hl-], a                                      ; $552e: $32
	ld c, c                                          ; $552f: $49
	ld d, a                                          ; $5530: $57
	ld b, [hl]                                       ; $5531: $46
	ld e, [hl]                                       ; $5532: $5e
	sbc h                                            ; $5533: $9c
	add hl, bc                                       ; $5534: $09
	ldh a, [$98]                                     ; $5535: $f0 $98
	ld b, a                                          ; $5537: $47
	pop af                                           ; $5538: $f1
	dec a                                            ; $5539: $3d
	inc a                                            ; $553a: $3c
	dec sp                                           ; $553b: $3b
	ccf                                              ; $553c: $3f
	add hl, bc                                       ; $553d: $09
	pop af                                           ; $553e: $f1
	ld sp, $4b68                                     ; $553f: $31 $68 $4b
	ldh a, [rSCX]                                    ; $5542: $f0 $43
	ldh a, [rAUDTERM]                                ; $5544: $f0 $25
	ld h, d                                          ; $5546: $62
	add hl, bc                                       ; $5547: $09
	ld c, a                                          ; $5548: $4f
	add hl, sp                                       ; $5549: $39
	ldh a, [c]                                       ; $554a: $f2
	adc [hl]                                         ; $554b: $8e
	pop af                                           ; $554c: $f1
	cp [hl]                                          ; $554d: $be
	ld a, $3d                                        ; $554e: $3e $3d
	add hl, bc                                       ; $5550: $09
	add hl, sp                                       ; $5551: $39
	ld d, d                                          ; $5552: $52
	ld d, c                                          ; $5553: $51
	ldh a, [$cb]                                     ; $5554: $f0 $cb
	ld b, h                                          ; $5556: $44
	ld b, l                                          ; $5557: $45
	add hl, bc                                       ; $5558: $09
	ldh a, [$ea]                                     ; $5559: $f0 $ea
	ld a, [hl-]                                      ; $555b: $3a
	ld b, c                                          ; $555c: $41
	ld b, h                                          ; $555d: $44
	ld e, l                                          ; $555e: $5d
	ld e, d                                          ; $555f: $5a
	add hl, bc                                       ; $5560: $09
	ld h, h                                          ; $5561: $64
	pop af                                           ; $5562: $f1
	ccf                                              ; $5563: $3f
	ldh a, [hDisp0_OBP1]                                     ; $5564: $f0 $87
	ld c, c                                          ; $5566: $49
	ldh a, [$e2]                                     ; $5567: $f0 $e2
	ldh a, [$e3]                                     ; $5569: $f0 $e3
	add hl, bc                                       ; $556b: $09
	ld [hl], d                                       ; $556c: $72
	adc c                                            ; $556d: $89
	ld d, c                                          ; $556e: $51
	ld c, [hl]                                       ; $556f: $4e
	ldh a, [$e2]                                     ; $5570: $f0 $e2
	ldh a, [$e3]                                     ; $5572: $f0 $e3
	add hl, bc                                       ; $5574: $09
	add e                                            ; $5575: $83
	pop af                                           ; $5576: $f1
	ld [de], a                                       ; $5577: $12
	ld e, c                                          ; $5578: $59
	ldh a, [$f2]                                     ; $5579: $f0 $f2
	pop af                                           ; $557b: $f1
	push bc                                          ; $557c: $c5
	ldh a, [$fc]                                     ; $557d: $f0 $fc
	add hl, bc                                       ; $557f: $09
	ldh a, [$6d]                                     ; $5580: $f0 $6d
	ld e, c                                          ; $5582: $59
	ldh a, [$7b]                                     ; $5583: $f0 $7b
	ld h, l                                          ; $5585: $65
	ldh a, [rDIV]                                    ; $5586: $f0 $04
	ld e, c                                          ; $5588: $59
	add hl, bc                                       ; $5589: $09
	ldh a, [rP1]                                     ; $558a: $f0 $00
	ldh a, [$3d]                                     ; $558c: $f0 $3d
	ldh a, [rP1]                                     ; $558e: $f0 $00
	ldh a, [$60]                                     ; $5590: $f0 $60
	ldh a, [$c4]                                     ; $5592: $f0 $c4
	ld e, c                                          ; $5594: $59
	add hl, bc                                       ; $5595: $09
	ldh a, [$3d]                                     ; $5596: $f0 $3d
	sub e                                            ; $5598: $93
	ldh a, [$7b]                                     ; $5599: $f0 $7b
	ldh a, [rAUD4POLY]                               ; $559b: $f0 $22
	ldh a, [rP1]                                     ; $559d: $f0 $00
	ld e, c                                          ; $559f: $59
	add hl, bc                                       ; $55a0: $09
	ldh a, [$2f]                                     ; $55a1: $f0 $2f
	ldh a, [$7c]                                     ; $55a3: $f0 $7c
	ldh a, [rSC]                                     ; $55a5: $f0 $02
	sub e                                            ; $55a7: $93
	ldh a, [rDIV]                                    ; $55a8: $f0 $04
	ld e, c                                          ; $55aa: $59
	add hl, bc                                       ; $55ab: $09
	di                                               ; $55ac: $f3
	sub b                                            ; $55ad: $90
	pop af                                           ; $55ae: $f1
	ld d, e                                          ; $55af: $53
	ldh a, [$f1]                                     ; $55b0: $f0 $f1
	ldh a, [rBCPD]                                   ; $55b2: $f0 $69
	ldh a, [$03]                                     ; $55b4: $f0 $03
	add e                                            ; $55b6: $83
	add hl, bc                                       ; $55b7: $09
	add e                                            ; $55b8: $83
	pop af                                           ; $55b9: $f1
	ld [de], a                                       ; $55ba: $12
	pop af                                           ; $55bb: $f1
	sub e                                            ; $55bc: $93
	ldh a, [$32]                                     ; $55bd: $f0 $32
	ldh a, [rSC]                                     ; $55bf: $f0 $02
	ldh a, [rAUD3LOW]                                ; $55c1: $f0 $1d
	add hl, bc                                       ; $55c3: $09
	ld a, l                                          ; $55c4: $7d
	ldh a, [$03]                                     ; $55c5: $f0 $03
	ldh a, [$35]                                     ; $55c7: $f0 $35
	sbc b                                            ; $55c9: $98
	ldh a, [rWX]                                     ; $55ca: $f0 $4b
	ld e, c                                          ; $55cc: $59
	add hl, bc                                       ; $55cd: $09
	ldh a, [$3d]                                     ; $55ce: $f0 $3d
	ld h, l                                          ; $55d0: $65
	ldh a, [rSC]                                     ; $55d1: $f0 $02
	ld [hl], e                                       ; $55d3: $73
	ldh a, [$2f]                                     ; $55d4: $f0 $2f
	ld e, c                                          ; $55d6: $59
	add hl, bc                                       ; $55d7: $09
	ld [hl], l                                       ; $55d8: $75
	ld e, c                                          ; $55d9: $59
	ldh a, [c]                                       ; $55da: $f2
	jr jr_079_5636                                   ; $55db: $18 $59

	ldh a, [c]                                       ; $55dd: $f2
	ld b, l                                          ; $55de: $45
	ldh a, [c]                                       ; $55df: $f2
	ld c, $09                                        ; $55e0: $0e $09
	ldh a, [$2c]                                     ; $55e2: $f0 $2c
	pop af                                           ; $55e4: $f1
	call z, $36f1                                    ; $55e5: $cc $f1 $36
	pop af                                           ; $55e8: $f1
	pop af                                           ; $55e9: $f1
	ldh a, [$31]                                     ; $55ea: $f0 $31
	ldh a, [$ad]                                     ; $55ec: $f0 $ad
	add hl, bc                                       ; $55ee: $09
	ldh a, [$31]                                     ; $55ef: $f0 $31
	ldh a, [$ad]                                     ; $55f1: $f0 $ad
	sbc b                                            ; $55f3: $98
	ldh a, [rWX]                                     ; $55f4: $f0 $4b
	ld e, c                                          ; $55f6: $59
	ldh a, [$bb]                                     ; $55f7: $f0 $bb
	add hl, bc                                       ; $55f9: $09
	ldh a, [rAUD4LEN]                                ; $55fa: $f0 $20
	ld [hl], l                                       ; $55fc: $75
	ld h, l                                          ; $55fd: $65
	ldh a, [rDIV]                                    ; $55fe: $f0 $04
	ld a, l                                          ; $5600: $7d
	ld h, l                                          ; $5601: $65
	add hl, bc                                       ; $5602: $09
	ldh a, [rOCPD]                                   ; $5603: $f0 $6b
	ldh a, [$a0]                                     ; $5605: $f0 $a0
	ld a, l                                          ; $5607: $7d
	ld l, c                                          ; $5608: $69
	ldh a, [rWY]                                     ; $5609: $f0 $4a
	ld e, c                                          ; $560b: $59
	add hl, bc                                       ; $560c: $09
	ldh a, [$f2]                                     ; $560d: $f0 $f2
	ld e, c                                          ; $560f: $59
	sbc b                                            ; $5610: $98
	ldh a, [rWX]                                     ; $5611: $f0 $4b
	ld [hl], e                                       ; $5613: $73
	ld l, c                                          ; $5614: $69
	add hl, bc                                       ; $5615: $09
	ldh a, [$5a]                                     ; $5616: $f0 $5a
	add l                                            ; $5618: $85
	inc [hl]                                         ; $5619: $34
	ld d, h                                          ; $561a: $54
	ld d, h                                          ; $561b: $54
	ld c, e                                          ; $561c: $4b
	add hl, bc                                       ; $561d: $09
	ld d, e                                          ; $561e: $53
	jr c, jr_079_565b                                ; $561f: $38 $3a

	jr c, jr_079_565d                                ; $5621: $38 $3a

	ld [hl], h                                       ; $5623: $74
	add hl, bc                                       ; $5624: $09
	ld a, $66                                        ; $5625: $3e $66
	add hl, sp                                       ; $5627: $39
	ld d, e                                          ; $5628: $53
	ld a, [hl-]                                      ; $5629: $3a
	jr c, jr_079_5635                                ; $562a: $38 $09

	ld l, h                                          ; $562c: $6c
	dec a                                            ; $562d: $3d
	jr c, @+$46                                      ; $562e: $38 $44

	inc a                                            ; $5630: $3c
	ld d, b                                          ; $5631: $50
	add hl, bc                                       ; $5632: $09
	ldh a, [$fa]                                     ; $5633: $f0 $fa

jr_079_5635:
	ld l, h                                          ; $5635: $6c

jr_079_5636:
	pop af                                           ; $5636: $f1
	inc d                                            ; $5637: $14
	ld c, l                                          ; $5638: $4d
	ld a, [hl-]                                      ; $5639: $3a
	jr c, jr_079_5645                                ; $563a: $38 $09

	ld h, c                                          ; $563c: $61
	ld h, [hl]                                       ; $563d: $66
	ld b, h                                          ; $563e: $44
	ld e, b                                          ; $563f: $58
	ld e, c                                          ; $5640: $59
	dec sp                                           ; $5641: $3b
	add hl, bc                                       ; $5642: $09
	ldh a, [$f3]                                     ; $5643: $f0 $f3

jr_079_5645:
	ld c, l                                          ; $5645: $4d
	ld h, c                                          ; $5646: $61
	ld d, [hl]                                       ; $5647: $56
	dec sp                                           ; $5648: $3b
	dec a                                            ; $5649: $3d
	add hl, bc                                       ; $564a: $09
	ldh a, [$0c]                                     ; $564b: $f0 $0c
	ld e, h                                          ; $564d: $5c
	ld d, d                                          ; $564e: $52
	ld a, $3d                                        ; $564f: $3e $3d
	ld b, l                                          ; $5651: $45
	add hl, bc                                       ; $5652: $09
	ld b, [hl]                                       ; $5653: $46
	dec sp                                           ; $5654: $3b
	inc [hl]                                         ; $5655: $34
	pop af                                           ; $5656: $f1
	ld c, b                                          ; $5657: $48
	ld b, h                                          ; $5658: $44
	scf                                              ; $5659: $37
	add hl, bc                                       ; $565a: $09

jr_079_565b:
	ld b, [hl]                                       ; $565b: $46
	dec sp                                           ; $565c: $3b

jr_079_565d:
	inc [hl]                                         ; $565d: $34
	ldh a, [c]                                       ; $565e: $f2
	ld [hl], b                                       ; $565f: $70
	ld b, h                                          ; $5660: $44
	scf                                              ; $5661: $37
	add hl, bc                                       ; $5662: $09
	ld b, [hl]                                       ; $5663: $46
	dec sp                                           ; $5664: $3b
	inc [hl]                                         ; $5665: $34
	ld l, d                                          ; $5666: $6a
	ld l, b                                          ; $5667: $68
	ld c, e                                          ; $5668: $4b
	add hl, bc                                       ; $5669: $09
	add c                                            ; $566a: $81
	ld [hl], l                                       ; $566b: $75
	sub l                                            ; $566c: $95
	ld h, l                                          ; $566d: $65
	ld l, c                                          ; $566e: $69
	ld h, d                                          ; $566f: $62
	add hl, bc                                       ; $5670: $09
	ldh a, [$e9]                                     ; $5671: $f0 $e9
	ldh a, [$0b]                                     ; $5673: $f0 $0b
	ld b, d                                          ; $5675: $42
	ldh a, [rAUD1ENV]                                ; $5676: $f0 $12
	sbc a                                            ; $5678: $9f
	ld c, e                                          ; $5679: $4b
	add hl, bc                                       ; $567a: $09
	ld [hl], b                                       ; $567b: $70
	ld [hl], c                                       ; $567c: $71
	ld b, c                                          ; $567d: $41
	ld a, [hl-]                                      ; $567e: $3a
	ld e, b                                          ; $567f: $58
	jr c, jr_079_568b                                ; $5680: $38 $09

	ldh a, [$e4]                                     ; $5682: $f0 $e4
	ld e, l                                          ; $5684: $5d
	ld c, [hl]                                       ; $5685: $4e
	ld a, [hl-]                                      ; $5686: $3a
	ld b, c                                          ; $5687: $41
	ccf                                              ; $5688: $3f
	add hl, bc                                       ; $5689: $09
	ld l, e                                          ; $568a: $6b

jr_079_568b:
	ldh a, [$0d]                                     ; $568b: $f0 $0d
	pop af                                           ; $568d: $f1
	ld bc, $4a41                                     ; $568e: $01 $41 $4a
	ld c, a                                          ; $5691: $4f
	add hl, bc                                       ; $5692: $09
	ld a, [hl-]                                      ; $5693: $3a
	ld b, c                                          ; $5694: $41
	ld c, d                                          ; $5695: $4a
	ld c, a                                          ; $5696: $4f
	ld a, [hl-]                                      ; $5697: $3a
	jr c, jr_079_56a3                                ; $5698: $38 $09

	ld d, e                                          ; $569a: $53
	sub b                                            ; $569b: $90
	ld a, $6c                                        ; $569c: $3e $6c
	ld b, h                                          ; $569e: $44
	adc l                                            ; $569f: $8d
	add hl, bc                                       ; $56a0: $09
	pop af                                           ; $56a1: $f1
	cp l                                             ; $56a2: $bd

jr_079_56a3:
	ldh a, [rLYC]                                    ; $56a3: $f0 $45
	ldh a, [c]                                       ; $56a5: $f2
	ld [hl], $f0                                     ; $56a6: $36 $f0
	push hl                                          ; $56a8: $e5
	ld l, b                                          ; $56a9: $68
	pop af                                           ; $56aa: $f1
	sbc h                                            ; $56ab: $9c
	add hl, bc                                       ; $56ac: $09
	ldh a, [$31]                                     ; $56ad: $f0 $31
	ld h, a                                          ; $56af: $67
	ld a, $3f                                        ; $56b0: $3e $3f
	ld d, l                                          ; $56b2: $55
	ld c, l                                          ; $56b3: $4d
	add hl, bc                                       ; $56b4: $09
	ld c, c                                          ; $56b5: $49
	ldh a, [rAUDVOL]                                 ; $56b6: $f0 $24
	ld a, $f1                                        ; $56b8: $3e $f1
	adc c                                            ; $56ba: $89
	ld b, c                                          ; $56bb: $41
	ld b, h                                          ; $56bc: $44
	add hl, bc                                       ; $56bd: $09
	ld a, a                                          ; $56be: $7f
	ld d, e                                          ; $56bf: $53
	ld d, c                                          ; $56c0: $51
	ld c, [hl]                                       ; $56c1: $4e
	ld a, [hl-]                                      ; $56c2: $3a
	ld [hl], h                                       ; $56c3: $74
	add hl, bc                                       ; $56c4: $09
	halt                                             ; $56c5: $76
	ld c, e                                          ; $56c6: $4b
	ld d, h                                          ; $56c7: $54
	ld c, l                                          ; $56c8: $4d
	inc a                                            ; $56c9: $3c
	ld d, b                                          ; $56ca: $50
	add hl, bc                                       ; $56cb: $09
	ldh a, [c]                                       ; $56cc: $f2
	add e                                            ; $56cd: $83
	ld a, $38                                        ; $56ce: $3e $38
	ldh a, [$f6]                                     ; $56d0: $f0 $f6
	pop af                                           ; $56d2: $f1
	inc [hl]                                         ; $56d3: $34
	ld c, d                                          ; $56d4: $4a
	add hl, bc                                       ; $56d5: $09
	ldh a, [$3f]                                     ; $56d6: $f0 $3f
	ld h, d                                          ; $56d8: $62
	adc b                                            ; $56d9: $88
	pop af                                           ; $56da: $f1
	inc h                                            ; $56db: $24
	pop af                                           ; $56dc: $f1
	inc bc                                           ; $56dd: $03
	ld b, a                                          ; $56de: $47
	add hl, bc                                       ; $56df: $09
	ldh a, [$dd]                                     ; $56e0: $f0 $dd
	ldh a, [$9c]                                     ; $56e2: $f0 $9c
	ld d, c                                          ; $56e4: $51
	ld c, [hl]                                       ; $56e5: $4e
	dec a                                            ; $56e6: $3d
	ld [hl], c                                       ; $56e7: $71
	add hl, bc                                       ; $56e8: $09
	ld b, [hl]                                       ; $56e9: $46

jr_079_56ea:
	ld [hl], h                                       ; $56ea: $74
	inc [hl]                                         ; $56eb: $34
	jr c, jr_079_5726                                ; $56ec: $38 $38

	adc l                                            ; $56ee: $8d
	add hl, bc                                       ; $56ef: $09
	ld b, [hl]                                       ; $56f0: $46
	dec sp                                           ; $56f1: $3b
	dec a                                            ; $56f2: $3d
	ld b, [hl]                                       ; $56f3: $46
	dec sp                                           ; $56f4: $3b
	dec a                                            ; $56f5: $3d
	add hl, bc                                       ; $56f6: $09
	ld a, [hl]                                       ; $56f7: $7e
	jr c, jr_079_56ea                                ; $56f8: $38 $f0

	jr c, jr_079_5746                                ; $56fa: $38 $4a

	ld d, c                                          ; $56fc: $51
	add hl, bc                                       ; $56fd: $09
	ldh a, [$97]                                     ; $56fe: $f0 $97
	sbc h                                            ; $5700: $9c
	inc a                                            ; $5701: $3c
	ld a, $38                                        ; $5702: $3e $38
	add hl, bc                                       ; $5704: $09
	ld e, d                                          ; $5705: $5a
	add hl, sp                                       ; $5706: $39
	ld b, h                                          ; $5707: $44
	dec sp                                           ; $5708: $3b
	dec a                                            ; $5709: $3d
	add hl, bc                                       ; $570a: $09
	ld b, b                                          ; $570b: $40
	add hl, sp                                       ; $570c: $39
	add d                                            ; $570d: $82
	ld e, [hl]                                       ; $570e: $5e
	ld a, e                                          ; $570f: $7b
	add hl, bc                                       ; $5710: $09
	ldh a, [rAUD2HIGH]                               ; $5711: $f0 $19
	ld b, a                                          ; $5713: $47
	sub [hl]                                         ; $5714: $96
	ld e, a                                          ; $5715: $5f
	add hl, sp                                       ; $5716: $39
	add hl, bc                                       ; $5717: $09
	add b                                            ; $5718: $80
	ld d, d                                          ; $5719: $52
	ld d, b                                          ; $571a: $50
	ld a, [hl-]                                      ; $571b: $3a
	jr c, jr_079_5727                                ; $571c: $38 $09

	ldh a, [$57]                                     ; $571e: $f0 $57
	pop af                                           ; $5720: $f1
	ld e, $50                                        ; $5721: $1e $50
	ld a, $38                                        ; $5723: $3e $38
	add hl, bc                                       ; $5725: $09

jr_079_5726:
	ld d, l                                          ; $5726: $55

jr_079_5727:
	ld b, h                                          ; $5727: $44
	ld d, b                                          ; $5728: $50
	ld a, [hl-]                                      ; $5729: $3a
	jr c, jr_079_5735                                ; $572a: $38 $09

	ld a, $61                                        ; $572c: $3e $61
	ld d, [hl]                                       ; $572e: $56
	dec sp                                           ; $572f: $3b
	dec a                                            ; $5730: $3d
	add hl, bc                                       ; $5731: $09
	ld d, c                                          ; $5732: $51
	ld l, h                                          ; $5733: $6c
	ld d, d                                          ; $5734: $52

jr_079_5735:
	ld a, c                                          ; $5735: $79
	ld b, c                                          ; $5736: $41
	add hl, bc                                       ; $5737: $09
	ld d, h                                          ; $5738: $54
	ld b, c                                          ; $5739: $41
	ld a, [hl-]                                      ; $573a: $3a
	ld c, a                                          ; $573b: $4f
	ld b, d                                          ; $573c: $42
	add hl, bc                                       ; $573d: $09
	ld e, d                                          ; $573e: $5a
	add hl, sp                                       ; $573f: $39
	ld a, $45                                        ; $5740: $3e $45
	add hl, sp                                       ; $5742: $39
	add hl, bc                                       ; $5743: $09
	ldh a, [rHDMA5]                                  ; $5744: $f0 $55

jr_079_5746:
	ldh a, [rBCPS]                                   ; $5746: $f0 $68
	ld a, $52                                        ; $5748: $3e $52
	ld d, c                                          ; $574a: $51
	add hl, bc                                       ; $574b: $09
	ldh a, [rAUD1LEN]                                ; $574c: $f0 $11
	ld h, l                                          ; $574e: $65
	ldh a, [rAUD4POLY]                               ; $574f: $f0 $22
	ld e, c                                          ; $5751: $59
	ld l, c                                          ; $5752: $69
	add hl, bc                                       ; $5753: $09
	ld h, a                                          ; $5754: $67
	inc a                                            ; $5755: $3c
	ld a, [hl-]                                      ; $5756: $3a
	jr c, @+$3e                                      ; $5757: $38 $3c

	add hl, bc                                       ; $5759: $09
	ldh a, [rAUD4POLY]                               ; $575a: $f0 $22
	ld h, l                                          ; $575c: $65
	ldh a, [$2f]                                     ; $575d: $f0 $2f
	ldh a, [$a1]                                     ; $575f: $f0 $a1
	ld e, c                                          ; $5761: $59
	add hl, bc                                       ; $5762: $09
	ld h, h                                          ; $5763: $64
	ld [hl], c                                       ; $5764: $71
	ld c, d                                          ; $5765: $4a
	ld c, c                                          ; $5766: $49
	add hl, sp                                       ; $5767: $39
	add hl, bc                                       ; $5768: $09
	ld a, [hl]                                       ; $5769: $7e
	inc a                                            ; $576a: $3c
	dec sp                                           ; $576b: $3b
	dec a                                            ; $576c: $3d
	ld b, l                                          ; $576d: $45
	add hl, bc                                       ; $576e: $09
	add c                                            ; $576f: $81
	ld [hl], l                                       ; $5770: $75
	sub l                                            ; $5771: $95
	ld h, l                                          ; $5772: $65
	ld l, c                                          ; $5773: $69
	add hl, bc                                       ; $5774: $09
	ldh a, [$79]                                     ; $5775: $f0 $79
	ld e, l                                          ; $5777: $5d
	ld d, d                                          ; $5778: $52
	ld a, $3f                                        ; $5779: $3e $3f
	add hl, bc                                       ; $577b: $09
	ldh a, [$ca]                                     ; $577c: $f0 $ca
	ldh a, [$d9]                                     ; $577e: $f0 $d9
	pop af                                           ; $5780: $f1
	db $10                                           ; $5781: $10
	pop af                                           ; $5782: $f1
	ld [$30f0], sp                                   ; $5783: $08 $f0 $30
	add hl, bc                                       ; $5786: $09
	sub b                                            ; $5787: $90
	ld a, $3c                                        ; $5788: $3e $3c
	dec sp                                           ; $578a: $3b
	dec a                                            ; $578b: $3d
	add hl, bc                                       ; $578c: $09
	ld d, h                                          ; $578d: $54
	ld b, c                                          ; $578e: $41
	ld b, a                                          ; $578f: $47
	ld h, c                                          ; $5790: $61
	ld c, e                                          ; $5791: $4b
	add hl, bc                                       ; $5792: $09
	sub e                                            ; $5793: $93
	ldh a, [rSC]                                     ; $5794: $f0 $02
	sbc b                                            ; $5796: $98
	ld [hl], e                                       ; $5797: $73
	sub e                                            ; $5798: $93
	add hl, bc                                       ; $5799: $09
	ld d, e                                          ; $579a: $53
	pop af                                           ; $579b: $f1
	and [hl]                                         ; $579c: $a6
	ld c, l                                          ; $579d: $4d
	dec a                                            ; $579e: $3d
	sub a                                            ; $579f: $97
	add hl, bc                                       ; $57a0: $09
	ld e, d                                          ; $57a1: $5a
	add hl, sp                                       ; $57a2: $39
	ld a, $3d                                        ; $57a3: $3e $3d
	ld d, b                                          ; $57a5: $50
	add hl, bc                                       ; $57a6: $09
	add a                                            ; $57a7: $87
	ldh a, [$5b]                                     ; $57a8: $f0 $5b
	ldh a, [$5e]                                     ; $57aa: $f0 $5e
	ld c, d                                          ; $57ac: $4a
	ld d, c                                          ; $57ad: $51
	add hl, bc                                       ; $57ae: $09
	ld d, h                                          ; $57af: $54
	ld h, c                                          ; $57b0: $61
	ld d, b                                          ; $57b1: $50
	ld d, h                                          ; $57b2: $54
	ld b, b                                          ; $57b3: $40
	add hl, bc                                       ; $57b4: $09
	ldh a, [$97]                                     ; $57b5: $f0 $97
	sbc h                                            ; $57b7: $9c
	inc a                                            ; $57b8: $3c
	ld a, $55                                        ; $57b9: $3e $55
	add hl, bc                                       ; $57bb: $09
	ldh a, [c]                                       ; $57bc: $f2
	ld [$3f3b], sp                                   ; $57bd: $08 $3b $3f
	ld b, [hl]                                       ; $57c0: $46
	ld c, [hl]                                       ; $57c1: $4e
	add hl, bc                                       ; $57c2: $09
	ld [hl-], a                                      ; $57c3: $32
	ldh a, [rAUD4LEN]                                ; $57c4: $f0 $20
	ld [hl], e                                       ; $57c6: $73

jr_079_57c7:
	ldh a, [$2b]                                     ; $57c7: $f0 $2b
	ldh a, [rP1]                                     ; $57c9: $f0 $00
	add hl, bc                                       ; $57cb: $09
	ld d, e                                          ; $57cc: $53
	ld b, [hl]                                       ; $57cd: $46
	ld c, [hl]                                       ; $57ce: $4e
	inc a                                            ; $57cf: $3c
	ld d, b                                          ; $57d0: $50
	add hl, bc                                       ; $57d1: $09
	ld a, [hl]                                       ; $57d2: $7e
	jr c, jr_079_57c7                                ; $57d3: $38 $f2

	adc a                                            ; $57d5: $8f
	ldh a, [c]                                       ; $57d6: $f2
	sub b                                            ; $57d7: $90
	ld h, d                                          ; $57d8: $62
	add hl, bc                                       ; $57d9: $09
	ldh a, [$6d]                                     ; $57da: $f0 $6d
	ld e, c                                          ; $57dc: $59
	ldh a, [$27]                                     ; $57dd: $f0 $27
	ld b, d                                          ; $57df: $42
	ldh a, [$ed]                                     ; $57e0: $f0 $ed
	add hl, bc                                       ; $57e2: $09
	ld l, d                                          ; $57e3: $6a
	inc [hl]                                         ; $57e4: $34
	ldh a, [$ea]                                     ; $57e5: $f0 $ea
	inc a                                            ; $57e7: $3c
	ld a, [hl-]                                      ; $57e8: $3a
	add hl, bc                                       ; $57e9: $09
	inc a                                            ; $57ea: $3c
	dec sp                                           ; $57eb: $3b
	ld d, h                                          ; $57ec: $54
	jr c, jr_079_5827                                ; $57ed: $38 $38

	add hl, bc                                       ; $57ef: $09
	ldh a, [$e8]                                     ; $57f0: $f0 $e8
	ld d, b                                          ; $57f2: $50
	ld a, [hl-]                                      ; $57f3: $3a
	jr c, jr_079_583f                                ; $57f4: $38 $49

	add hl, bc                                       ; $57f6: $09
	ld c, c                                          ; $57f7: $49
	inc [hl]                                         ; $57f8: $34
	ld l, l                                          ; $57f9: $6d
	ld a, h                                          ; $57fa: $7c
	ld b, a                                          ; $57fb: $47
	add hl, bc                                       ; $57fc: $09
	ldh a, [rTAC]                                    ; $57fd: $f0 $07
	inc a                                            ; $57ff: $3c
	dec sp                                           ; $5800: $3b
	ccf                                              ; $5801: $3f
	ld c, [hl]                                       ; $5802: $4e
	add hl, bc                                       ; $5803: $09
	ldh a, [$6e]                                     ; $5804: $f0 $6e
	ld e, c                                          ; $5806: $59
	ldh a, [rP1]                                     ; $5807: $f0 $00
	ld h, l                                          ; $5809: $65
	ldh a, [$50]                                     ; $580a: $f0 $50
	add hl, bc                                       ; $580c: $09
	ld c, c                                          ; $580d: $49
	ldh a, [rWY]                                     ; $580e: $f0 $4a
	ld e, c                                          ; $5810: $59
	ld l, c                                          ; $5811: $69
	ld b, h                                          ; $5812: $44
	add hl, bc                                       ; $5813: $09
	ld [hl-], a                                      ; $5814: $32
	ld a, [hl]                                       ; $5815: $7e
	inc a                                            ; $5816: $3c
	dec sp                                           ; $5817: $3b
	dec a                                            ; $5818: $3d
	add hl, bc                                       ; $5819: $09
	ld a, b                                          ; $581a: $78
	ccf                                              ; $581b: $3f
	dec a                                            ; $581c: $3d
	ld b, d                                          ; $581d: $42
	inc a                                            ; $581e: $3c
	add hl, bc                                       ; $581f: $09
	ld c, c                                          ; $5820: $49
	ld l, d                                          ; $5821: $6a
	pop af                                           ; $5822: $f1
	ld c, e                                          ; $5823: $4b
	ldh a, [$3e]                                     ; $5824: $f0 $3e
	ld b, a                                          ; $5826: $47

jr_079_5827:
	add hl, bc                                       ; $5827: $09
	ldh a, [$9f]                                     ; $5828: $f0 $9f
	ld e, e                                          ; $582a: $5b
	ld d, b                                          ; $582b: $50
	ld c, l                                          ; $582c: $4d
	ld a, [hl-]                                      ; $582d: $3a
	add hl, bc                                       ; $582e: $09
	ld d, h                                          ; $582f: $54
	add hl, sp                                       ; $5830: $39
	jr c, jr_079_586c                                ; $5831: $38 $39

	ldh a, [$28]                                     ; $5833: $f0 $28
	add hl, bc                                       ; $5835: $09
	jr c, jr_079_58a6                                ; $5836: $38 $6e

	ld d, b                                          ; $5838: $50
	ld a, $38                                        ; $5839: $3e $38
	add hl, bc                                       ; $583b: $09
	ldh a, [c]                                       ; $583c: $f2
	add hl, bc                                       ; $583d: $09
	sbc c                                            ; $583e: $99

jr_079_583f:
	ld e, b                                          ; $583f: $58
	ld c, l                                          ; $5840: $4d
	ccf                                              ; $5841: $3f
	add hl, bc                                       ; $5842: $09
	sbc c                                            ; $5843: $99
	ld h, c                                          ; $5844: $61
	ldh a, [rTMA]                                    ; $5845: $f0 $06
	ld h, e                                          ; $5847: $63
	ld a, c                                          ; $5848: $79
	add hl, bc                                       ; $5849: $09
	jr c, jr_079_5889                                ; $584a: $38 $3d

	ld b, h                                          ; $584c: $44
	ld d, l                                          ; $584d: $55
	ld h, e                                          ; $584e: $63
	add hl, bc                                       ; $584f: $09
	adc h                                            ; $5850: $8c
	pop af                                           ; $5851: $f1
	ld e, [hl]                                       ; $5852: $5e
	ld b, h                                          ; $5853: $44
	ld d, d                                          ; $5854: $52
	ld a, $09                                        ; $5855: $3e $09
	ldh a, [$7e]                                     ; $5857: $f0 $7e
	ldh a, [$7c]                                     ; $5859: $f0 $7c
	ld h, l                                          ; $585b: $65
	sub e                                            ; $585c: $93
	pop af                                           ; $585d: $f1
	ld b, h                                          ; $585e: $44
	add hl, bc                                       ; $585f: $09
	ldh a, [$b1]                                     ; $5860: $f0 $b1
	adc h                                            ; $5862: $8c
	ldh a, [rLY]                                     ; $5863: $f0 $44
	ldh a, [rAUD3LEVEL]                              ; $5865: $f0 $1c
	ldh a, [$db]                                     ; $5867: $f0 $db
	add hl, bc                                       ; $5869: $09
	ldh a, [$3d]                                     ; $586a: $f0 $3d

jr_079_586c:
	sub e                                            ; $586c: $93
	sbc b                                            ; $586d: $98
	ldh a, [rWX]                                     ; $586e: $f0 $4b
	ld h, l                                          ; $5870: $65
	add hl, bc                                       ; $5871: $09
	ld d, h                                          ; $5872: $54
	inc [hl]                                         ; $5873: $34
	ld d, h                                          ; $5874: $54
	ld c, l                                          ; $5875: $4d
	ld c, e                                          ; $5876: $4b
	add hl, bc                                       ; $5877: $09
	pop af                                           ; $5878: $f1
	adc $3a                                          ; $5879: $ce $3a
	inc a                                            ; $587b: $3c
	dec sp                                           ; $587c: $3b
	dec a                                            ; $587d: $3d
	add hl, bc                                       ; $587e: $09
	ld c, c                                          ; $587f: $49
	ld d, h                                          ; $5880: $54
	ld e, a                                          ; $5881: $5f
	ld c, d                                          ; $5882: $4a
	ld e, b                                          ; $5883: $58
	add hl, bc                                       ; $5884: $09
	jr c, jr_079_58bf                                ; $5885: $38 $38

	ld b, c                                          ; $5887: $41
	ld c, d                                          ; $5888: $4a

jr_079_5889:
	ld d, c                                          ; $5889: $51
	add hl, bc                                       ; $588a: $09
	pop af                                           ; $588b: $f1
	or b                                             ; $588c: $b0
	ldh a, [$3f]                                     ; $588d: $f0 $3f
	ld b, d                                          ; $588f: $42
	ldh a, [$c1]                                     ; $5890: $f0 $c1
	ldh a, [$d5]                                     ; $5892: $f0 $d5
	add hl, bc                                       ; $5894: $09
	ld h, c                                          ; $5895: $61
	ld h, [hl]                                       ; $5896: $66
	ld e, a                                          ; $5897: $5f
	dec sp                                           ; $5898: $3b
	ld c, c                                          ; $5899: $49
	add hl, bc                                       ; $589a: $09
	add e                                            ; $589b: $83
	ldh a, [$fd]                                     ; $589c: $f0 $fd
	ld e, c                                          ; $589e: $59
	ldh a, [$32]                                     ; $589f: $f0 $32
	ldh a, [$78]                                     ; $58a1: $f0 $78
	add hl, bc                                       ; $58a3: $09
	ld h, a                                          ; $58a4: $67
	ld d, h                                          ; $58a5: $54

jr_079_58a6:
	add hl, sp                                       ; $58a6: $39
	inc a                                            ; $58a7: $3c
	ld a, [hl-]                                      ; $58a8: $3a
	add hl, bc                                       ; $58a9: $09
	ld b, b                                          ; $58aa: $40
	add hl, sp                                       ; $58ab: $39
	ld b, h                                          ; $58ac: $44
	ld c, h                                          ; $58ad: $4c
	add l                                            ; $58ae: $85
	add hl, bc                                       ; $58af: $09
	ldh a, [rAUD4POLY]                               ; $58b0: $f0 $22
	ld [hl], e                                       ; $58b2: $73
	ldh a, [$35]                                     ; $58b3: $f0 $35
	ld e, c                                          ; $58b5: $59
	adc a                                            ; $58b6: $8f
	add hl, bc                                       ; $58b7: $09
	ld a, [hl]                                       ; $58b8: $7e
	inc a                                            ; $58b9: $3c
	dec sp                                           ; $58ba: $3b
	dec a                                            ; $58bb: $3d
	ld a, [hl-]                                      ; $58bc: $3a
	add hl, bc                                       ; $58bd: $09
	ld l, [hl]                                       ; $58be: $6e

jr_079_58bf:
	dec sp                                           ; $58bf: $3b
	ccf                                              ; $58c0: $3f
	ld c, [hl]                                       ; $58c1: $4e
	sub a                                            ; $58c2: $97
	add hl, bc                                       ; $58c3: $09
	jr c, @+$3f                                      ; $58c4: $38 $3d

	ld b, h                                          ; $58c6: $44
	ld e, l                                          ; $58c7: $5d
	ld c, [hl]                                       ; $58c8: $4e
	add hl, bc                                       ; $58c9: $09
	pop af                                           ; $58ca: $f1
	or h                                             ; $58cb: $b4
	ld e, l                                          ; $58cc: $5d
	sub h                                            ; $58cd: $94
	ld a, $3f                                        ; $58ce: $3e $3f
	add hl, bc                                       ; $58d0: $09
	ldh a, [$08]                                     ; $58d1: $f0 $08
	ld d, b                                          ; $58d3: $50
	inc [hl]                                         ; $58d4: $34
	ld [hl], d                                       ; $58d5: $72
	ccf                                              ; $58d6: $3f
	add hl, bc                                       ; $58d7: $09
	ld [hl-], a                                      ; $58d8: $32
	ld a, $3c                                        ; $58d9: $3e $3c
	ld [hl], h                                       ; $58db: $74
	ld a, $09                                        ; $58dc: $3e $09
	ldh a, [$31]                                     ; $58de: $f0 $31
	ld c, e                                          ; $58e0: $4b
	ld b, [hl]                                       ; $58e1: $46
	ld d, d                                          ; $58e2: $52
	ld d, a                                          ; $58e3: $57
	add hl, bc                                       ; $58e4: $09
	ldh a, [c]                                       ; $58e5: $f2
	ld d, e                                          ; $58e6: $53
	ld d, e                                          ; $58e7: $53
	ldh a, [c]                                       ; $58e8: $f2
	xor c                                            ; $58e9: $a9
	ld e, l                                          ; $58ea: $5d
	ccf                                              ; $58eb: $3f
	add hl, bc                                       ; $58ec: $09
	ld b, l                                          ; $58ed: $45
	ld e, a                                          ; $58ee: $5f
	ld a, $55                                        ; $58ef: $3e $55
	ld c, h                                          ; $58f1: $4c
	add hl, bc                                       ; $58f2: $09
	ldh a, [rHDMA4]                                  ; $58f3: $f0 $54
	ld a, $9d                                        ; $58f5: $3e $9d
	ld d, b                                          ; $58f7: $50
	jr c, @+$0b                                      ; $58f8: $38 $09

	ldh a, [rSCY]                                    ; $58fa: $f0 $42
	ldh a, [rSCY]                                    ; $58fc: $f0 $42
	ldh a, [rSCY]                                    ; $58fe: $f0 $42
	ldh a, [rSCY]                                    ; $5900: $f0 $42
	ldh a, [rSCY]                                    ; $5902: $f0 $42
	add hl, bc                                       ; $5904: $09
	ldh a, [hDisp0_WX]                                     ; $5905: $f0 $89
	pop af                                           ; $5907: $f1
	inc sp                                           ; $5908: $33
	ldh a, [$03]                                     ; $5909: $f0 $03
	ldh a, [$35]                                     ; $590b: $f0 $35
	ldh a, [$27]                                     ; $590d: $f0 $27
	add hl, bc                                       ; $590f: $09
	ldh a, [$a0]                                     ; $5910: $f0 $a0
	ld h, l                                          ; $5912: $65
	ldh a, [$f1]                                     ; $5913: $f0 $f1
	ldh a, [$8e]                                     ; $5915: $f0 $8e
	ldh a, [$03]                                     ; $5917: $f0 $03
	add hl, bc                                       ; $5919: $09
	ldh a, [$6d]                                     ; $591a: $f0 $6d
	ld e, c                                          ; $591c: $59
	ldh a, [$27]                                     ; $591d: $f0 $27
	ldh a, [$99]                                     ; $591f: $f0 $99
	sub b                                            ; $5921: $90
	add hl, bc                                       ; $5922: $09
	pop af                                           ; $5923: $f1
	ld e, c                                          ; $5924: $59
	ld b, h                                          ; $5925: $44
	dec sp                                           ; $5926: $3b
	dec a                                            ; $5927: $3d
	ld b, l                                          ; $5928: $45
	add hl, bc                                       ; $5929: $09
	ld l, h                                          ; $592a: $6c
	dec a                                            ; $592b: $3d
	jr c, jr_079_5972                                ; $592c: $38 $44

	sub a                                            ; $592e: $97
	add hl, bc                                       ; $592f: $09
	ld b, b                                          ; $5930: $40
	add hl, sp                                       ; $5931: $39
	ld b, h                                          ; $5932: $44
	ld e, a                                          ; $5933: $5f
	add hl, sp                                       ; $5934: $39
	add hl, bc                                       ; $5935: $09
	ldh a, [rAUD4LEN]                                ; $5936: $f0 $20
	ld a, l                                          ; $5938: $7d
	ldh a, [rAUD4LEN]                                ; $5939: $f0 $20
	ld e, c                                          ; $593b: $59
	ld a, l                                          ; $593c: $7d
	add hl, bc                                       ; $593d: $09
	ldh a, [$09]                                     ; $593e: $f0 $09
	ld [hl], e                                       ; $5940: $73
	sub e                                            ; $5941: $93
	ld [hl], l                                       ; $5942: $75
	add e                                            ; $5943: $83
	add hl, bc                                       ; $5944: $09
	ld [hl], d                                       ; $5945: $72
	ccf                                              ; $5946: $3f
	dec a                                            ; $5947: $3d
	ld h, e                                          ; $5948: $63
	ld b, l                                          ; $5949: $45
	add hl, bc                                       ; $594a: $09
	ld d, e                                          ; $594b: $53
	ld a, b                                          ; $594c: $78
	ld c, [hl]                                       ; $594d: $4e
	ld c, c                                          ; $594e: $49
	ld c, e                                          ; $594f: $4b
	add hl, bc                                       ; $5950: $09
	ldh a, [$d8]                                     ; $5951: $f0 $d8
	ld e, d                                          ; $5953: $5a
	jr c, jr_079_5990                                ; $5954: $38 $3a

	ld [hl], h                                       ; $5956: $74
	add hl, bc                                       ; $5957: $09
	ldh a, [rSCX]                                    ; $5958: $f0 $43
	ldh a, [rAUDTERM]                                ; $595a: $f0 $25
	ld b, d                                          ; $595c: $42
	ldh a, [$c1]                                     ; $595d: $f0 $c1
	ldh a, [$d5]                                     ; $595f: $f0 $d5
	add hl, bc                                       ; $5961: $09
	ldh a, [$ac]                                     ; $5962: $f0 $ac
	ccf                                              ; $5964: $3f
	jr c, @+$50                                      ; $5965: $38 $4e

	add h                                            ; $5967: $84
	add hl, bc                                       ; $5968: $09
	ldh a, [$5f]                                     ; $5969: $f0 $5f
	ldh a, [$d7]                                     ; $596b: $f0 $d7
	ld b, d                                          ; $596d: $42
	pop af                                           ; $596e: $f1
	add e                                            ; $596f: $83
	ldh a, [c]                                       ; $5970: $f2
	ld d, a                                          ; $5971: $57

jr_079_5972:
	add hl, bc                                       ; $5972: $09
	ldh a, [$3c]                                     ; $5973: $f0 $3c
	ldh a, [$39]                                     ; $5975: $f0 $39
	ldh a, [$b5]                                     ; $5977: $f0 $b5
	inc a                                            ; $5979: $3c
	ld d, a                                          ; $597a: $57
	add hl, bc                                       ; $597b: $09
	ld e, b                                          ; $597c: $58
	ld b, l                                          ; $597d: $45
	add hl, sp                                       ; $597e: $39
	ld a, [hl-]                                      ; $597f: $3a
	ld d, b                                          ; $5980: $50
	add hl, bc                                       ; $5981: $09
	ldh a, [$b8]                                     ; $5982: $f0 $b8
	ldh a, [$73]                                     ; $5984: $f0 $73
	ld b, h                                          ; $5986: $44
	inc a                                            ; $5987: $3c

jr_079_5988:
	ld d, b                                          ; $5988: $50
	add hl, bc                                       ; $5989: $09
	ldh a, [$8d]                                     ; $598a: $f0 $8d
	ldh a, [$9e]                                     ; $598c: $f0 $9e
	ld b, h                                          ; $598e: $44
	ld e, l                                          ; $598f: $5d

jr_079_5990:
	ld e, d                                          ; $5990: $5a
	add hl, bc                                       ; $5991: $09
	ldh a, [rSCX]                                    ; $5992: $f0 $43
	pop af                                           ; $5994: $f1
	jr nz, jr_079_5988                               ; $5995: $20 $f1

	inc e                                            ; $5997: $1c
	ld c, d                                          ; $5998: $4a
	ld c, e                                          ; $5999: $4b
	add hl, bc                                       ; $599a: $09
	pop af                                           ; $599b: $f1
	ld a, [hl-]                                      ; $599c: $3a
	ld d, l                                          ; $599d: $55
	ld a, [hl-]                                      ; $599e: $3a
	dec sp                                           ; $599f: $3b
	ccf                                              ; $59a0: $3f
	add hl, bc                                       ; $59a1: $09
	ldh a, [c]                                       ; $59a2: $f2
	ld b, a                                          ; $59a3: $47
	ldh a, [c]                                       ; $59a4: $f2
	dec [hl]                                         ; $59a5: $35
	ld b, d                                          ; $59a6: $42
	pop af                                           ; $59a7: $f1
	ld d, e                                          ; $59a8: $53
	ldh a, [c]                                       ; $59a9: $f2
	ld b, [hl]                                       ; $59aa: $46
	add hl, bc                                       ; $59ab: $09
	add e                                            ; $59ac: $83
	ld l, c                                          ; $59ad: $69
	ldh a, [rSC]                                     ; $59ae: $f0 $02
	ld a, l                                          ; $59b0: $7d
	sub e                                            ; $59b1: $93
	add hl, bc                                       ; $59b2: $09
	sub e                                            ; $59b3: $93
	ldh a, [rP1]                                     ; $59b4: $f0 $00
	add e                                            ; $59b6: $83
	ldh a, [rAUD3LOW]                                ; $59b7: $f0 $1d
	add e                                            ; $59b9: $83
	add hl, bc                                       ; $59ba: $09
	jr c, jr_079_59f5                                ; $59bb: $38 $38

	pop af                                           ; $59bd: $f1
	cp $f2                                           ; $59be: $fe $f2
	ccf                                              ; $59c0: $3f
	ld a, [hl-]                                      ; $59c1: $3a
	add hl, bc                                       ; $59c2: $09
	ld b, d                                          ; $59c3: $42
	ldh a, [$60]                                     ; $59c4: $f0 $60
	add e                                            ; $59c6: $83
	ld l, c                                          ; $59c7: $69
	ld b, h                                          ; $59c8: $44
	add hl, bc                                       ; $59c9: $09
	ld b, a                                          ; $59ca: $47
	ldh a, [rPCM12]                                  ; $59cb: $f0 $76
	ccf                                              ; $59cd: $3f
	ld a, [hl-]                                      ; $59ce: $3a
	jr c, jr_079_59da                                ; $59cf: $38 $09

	ld c, a                                          ; $59d1: $4f
	jr c, @+$3f                                      ; $59d2: $38 $3d

	ld b, d                                          ; $59d4: $42
	inc a                                            ; $59d5: $3c
	add hl, bc                                       ; $59d6: $09
	ld d, h                                          ; $59d7: $54
	ld b, c                                          ; $59d8: $41
	ld a, e                                          ; $59d9: $7b

jr_079_59da:
	ld b, c                                          ; $59da: $41
	ld c, e                                          ; $59db: $4b
	add hl, bc                                       ; $59dc: $09
	ldh a, [$b6]                                     ; $59dd: $f0 $b6
	ldh a, [$34]                                     ; $59df: $f0 $34
	ld a, [hl-]                                      ; $59e1: $3a
	pop af                                           ; $59e2: $f1
	ld c, h                                          ; $59e3: $4c
	jr c, jr_079_59ef                                ; $59e4: $38 $09

	sbc e                                            ; $59e6: $9b
	ldh a, [rAUDTERM]                                ; $59e7: $f0 $25
	ld b, d                                          ; $59e9: $42
	ldh a, [$c1]                                     ; $59ea: $f0 $c1
	ldh a, [$d5]                                     ; $59ec: $f0 $d5
	add hl, bc                                       ; $59ee: $09

jr_079_59ef:
	ld l, e                                          ; $59ef: $6b
	ld a, [hl-]                                      ; $59f0: $3a
	ld b, d                                          ; $59f1: $42
	ld d, h                                          ; $59f2: $54
	ld c, l                                          ; $59f3: $4d
	add hl, bc                                       ; $59f4: $09

jr_079_59f5:
	sbc b                                            ; $59f5: $98
	sub e                                            ; $59f6: $93
	ldh a, [rSC]                                     ; $59f7: $f0 $02
	ldh a, [$9d]                                     ; $59f9: $f0 $9d
	ld h, l                                          ; $59fb: $65
	add hl, bc                                       ; $59fc: $09
	ldh a, [c]                                       ; $59fd: $f2
	ld l, d                                          ; $59fe: $6a
	ld c, l                                          ; $59ff: $4d
	ld c, [hl]                                       ; $5a00: $4e
	ld b, d                                          ; $5a01: $42
	ld d, e                                          ; $5a02: $53
	add hl, bc                                       ; $5a03: $09
	ldh a, [rBCPD]                                   ; $5a04: $f0 $69
	ldh a, [$1f]                                     ; $5a06: $f0 $1f
	ld h, l                                          ; $5a08: $65
	pop af                                           ; $5a09: $f1
	ld b, l                                          ; $5a0a: $45
	ldh a, [$61]                                     ; $5a0b: $f0 $61
	add hl, bc                                       ; $5a0d: $09
	pop af                                           ; $5a0e: $f1
	ld d, d                                          ; $5a0f: $52
	ldh a, [rSC]                                     ; $5a10: $f0 $02
	ld [hl], e                                       ; $5a12: $73
	ldh a, [$2f]                                     ; $5a13: $f0 $2f
	ld e, c                                          ; $5a15: $59
	add hl, bc                                       ; $5a16: $09
	pop af                                           ; $5a17: $f1
	inc hl                                           ; $5a18: $23
	ld e, c                                          ; $5a19: $59
	pop af                                           ; $5a1a: $f1
	dec e                                            ; $5a1b: $1d
	ldh a, [$03]                                     ; $5a1c: $f0 $03
	ldh a, [c]                                       ; $5a1e: $f2
	ld a, [hl+]                                      ; $5a1f: $2a
	add hl, bc                                       ; $5a20: $09
	pop af                                           ; $5a21: $f1
	inc hl                                           ; $5a22: $23
	ld e, c                                          ; $5a23: $59
	ldh a, [$50]                                     ; $5a24: $f0 $50
	ld [hl], e                                       ; $5a26: $73
	ldh a, [$32]                                     ; $5a27: $f0 $32
	add hl, bc                                       ; $5a29: $09
	pop af                                           ; $5a2a: $f1
	ld l, [hl]                                       ; $5a2b: $6e
	ldh a, [$cf]                                     ; $5a2c: $f0 $cf
	ld a, [hl-]                                      ; $5a2e: $3a
	adc b                                            ; $5a2f: $88
	ld h, d                                          ; $5a30: $62
	add hl, bc                                       ; $5a31: $09
	ldh a, [$7d]                                     ; $5a32: $f0 $7d
	ld l, b                                          ; $5a34: $68
	ldh a, [hDisp1_BGP]                                     ; $5a35: $f0 $92
	pop af                                           ; $5a37: $f1
	call nz, $098c                                   ; $5a38: $c4 $8c $09
	pop af                                           ; $5a3b: $f1
	adc e                                            ; $5a3c: $8b
	ld b, a                                          ; $5a3d: $47
	ld b, l                                          ; $5a3e: $45
	ld c, [hl]                                       ; $5a3f: $4e
	ld c, c                                          ; $5a40: $49
	add hl, bc                                       ; $5a41: $09
	ldh a, [c]                                       ; $5a42: $f2
	ld b, b                                          ; $5a43: $40
	ldh a, [$6f]                                     ; $5a44: $f0 $6f
	ldh a, [c]                                       ; $5a46: $f2
	or a                                             ; $5a47: $b7
	ldh a, [$c8]                                     ; $5a48: $f0 $c8
	ld b, l                                          ; $5a4a: $45
	add hl, bc                                       ; $5a4b: $09
	ldh a, [c]                                       ; $5a4c: $f2
	xor h                                            ; $5a4d: $ac
	ldh a, [c]                                       ; $5a4e: $f2
	ld h, [hl]                                       ; $5a4f: $66
	ld a, $3d                                        ; $5a50: $3e $3d
	jr c, jr_079_5a5d                                ; $5a52: $38 $09

	ld c, e                                          ; $5a54: $4b
	jr c, @+$36                                      ; $5a55: $38 $34

	ld d, h                                          ; $5a57: $54
	ld c, l                                          ; $5a58: $4d
	add hl, bc                                       ; $5a59: $09
	ldh a, [$5c]                                     ; $5a5a: $f0 $5c
	inc a                                            ; $5a5c: $3c

jr_079_5a5d:
	dec sp                                           ; $5a5d: $3b
	dec a                                            ; $5a5e: $3d
	ld a, [hl-]                                      ; $5a5f: $3a
	add hl, bc                                       ; $5a60: $09
	ld d, h                                          ; $5a61: $54
	ld b, d                                          ; $5a62: $42
	ldh a, [$3f]                                     ; $5a63: $f0 $3f
	ld b, d                                          ; $5a65: $42
	add h                                            ; $5a66: $84
	add hl, bc                                       ; $5a67: $09
	sub c                                            ; $5a68: $91
	dec a                                            ; $5a69: $3d
	ld d, a                                          ; $5a6a: $57
	sbc [hl]                                         ; $5a6b: $9e
	ld b, l                                          ; $5a6c: $45
	add hl, bc                                       ; $5a6d: $09
	ld l, l                                          ; $5a6e: $6d
	ld a, h                                          ; $5a6f: $7c
	ld b, a                                          ; $5a70: $47
	ld [hl], d                                       ; $5a71: $72
	adc c                                            ; $5a72: $89
	add hl, bc                                       ; $5a73: $09
	ldh a, [rAUD2ENV]                                ; $5a74: $f0 $17
	add e                                            ; $5a76: $83
	ld a, l                                          ; $5a77: $7d
	ldh a, [rAUD3LOW]                                ; $5a78: $f0 $1d
	ld e, c                                          ; $5a7a: $59
	add hl, bc                                       ; $5a7b: $09
	ldh a, [rWY]                                     ; $5a7c: $f0 $4a
	ldh a, [c]                                       ; $5a7e: $f2
	jr jr_079_5afe                                   ; $5a7f: $18 $7d

	ldh a, [$ba]                                     ; $5a81: $f0 $ba
	ld e, c                                          ; $5a83: $59
	add hl, bc                                       ; $5a84: $09
	ldh a, [$b1]                                     ; $5a85: $f0 $b1
	adc h                                            ; $5a87: $8c
	ldh a, [rLY]                                     ; $5a88: $f0 $44
	ldh a, [$8d]                                     ; $5a8a: $f0 $8d
	ldh a, [$9e]                                     ; $5a8c: $f0 $9e
	add hl, bc                                       ; $5a8e: $09
	ldh a, [$2b]                                     ; $5a8f: $f0 $2b
	ldh a, [$7c]                                     ; $5a91: $f0 $7c
	ldh a, [$03]                                     ; $5a93: $f0 $03
	ldh a, [$9d]                                     ; $5a95: $f0 $9d
	ldh a, [rSC]                                     ; $5a97: $f0 $02
	add hl, bc                                       ; $5a99: $09
	ldh a, [rP1]                                     ; $5a9a: $f0 $00
	sub e                                            ; $5a9c: $93
	pop af                                           ; $5a9d: $f1
	ld b, b                                          ; $5a9e: $40
	add e                                            ; $5a9f: $83
	ld l, c                                          ; $5aa0: $69
	add hl, bc                                       ; $5aa1: $09
	ldh a, [$b8]                                     ; $5aa2: $f0 $b8
	ldh a, [$73]                                     ; $5aa4: $f0 $73
	ldh a, [$7b]                                     ; $5aa6: $f0 $7b
	ld h, l                                          ; $5aa8: $65
	add e                                            ; $5aa9: $83
	add hl, bc                                       ; $5aaa: $09
	ldh a, [rDIV]                                    ; $5aab: $f0 $04
	ld a, l                                          ; $5aad: $7d
	pop af                                           ; $5aae: $f1
	ld d, h                                          ; $5aaf: $54
	ld h, l                                          ; $5ab0: $65
	ldh a, [$50]                                     ; $5ab1: $f0 $50
	add hl, bc                                       ; $5ab3: $09
	ldh a, [$d6]                                     ; $5ab4: $f0 $d6
	inc [hl]                                         ; $5ab6: $34
	ld l, a                                          ; $5ab7: $6f
	ld b, d                                          ; $5ab8: $42
	ldh a, [rDMA]                                    ; $5ab9: $f0 $46
	add hl, bc                                       ; $5abb: $09
	ld a, [hl]                                       ; $5abc: $7e
	inc a                                            ; $5abd: $3c
	dec sp                                           ; $5abe: $3b
	dec a                                            ; $5abf: $3d
	ld a, $09                                        ; $5ac0: $3e $09
	di                                               ; $5ac2: $f3
	ld [hl], $44                                     ; $5ac3: $36 $44
	dec sp                                           ; $5ac5: $3b
	dec a                                            ; $5ac6: $3d
	ld b, l                                          ; $5ac7: $45
	add hl, bc                                       ; $5ac8: $09
	ldh a, [rIF]                                     ; $5ac9: $f0 $0f
	pop af                                           ; $5acb: $f1
	ld b, l                                          ; $5acc: $45
	ldh a, [$03]                                     ; $5acd: $f0 $03
	pop af                                           ; $5acf: $f1
	ret c                                            ; $5ad0: $d8

	ldh a, [c]                                       ; $5ad1: $f2
	ld de, $f109                                     ; $5ad2: $11 $09 $f1
	ld a, [de]                                       ; $5ad5: $1a
	ldh a, [c]                                       ; $5ad6: $f2
	db $e4                                           ; $5ad7: $e4
	ldh a, [rAUD3LOW]                                ; $5ad8: $f0 $1d
	sbc b                                            ; $5ada: $98
	ld h, l                                          ; $5adb: $65
	add hl, bc                                       ; $5adc: $09
	ldh a, [rAUD1LEN]                                ; $5add: $f0 $11
	ld h, l                                          ; $5adf: $65
	ldh a, [rDIV]                                    ; $5ae0: $f0 $04
	sub e                                            ; $5ae2: $93
	ld l, c                                          ; $5ae3: $69
	add hl, bc                                       ; $5ae4: $09
	ldh a, [rAUD1LEN]                                ; $5ae5: $f0 $11
	ld h, l                                          ; $5ae7: $65
	pop af                                           ; $5ae8: $f1
	ld [bc], a                                       ; $5ae9: $02
	ldh a, [$7c]                                     ; $5aea: $f0 $7c
	sub e                                            ; $5aec: $93
	add hl, bc                                       ; $5aed: $09
	ldh a, [rDIV]                                    ; $5aee: $f0 $04
	ld a, l                                          ; $5af0: $7d

Call_079_5af1:
	ldh a, [$3d]                                     ; $5af1: $f0 $3d
	ld e, c                                          ; $5af3: $59
	ldh a, [$32]                                     ; $5af4: $f0 $32
	add hl, bc                                       ; $5af6: $09
	ldh a, [$3d]                                     ; $5af7: $f0 $3d
	ld a, l                                          ; $5af9: $7d
	ldh a, [$32]                                     ; $5afa: $f0 $32
	ldh a, [$03]                                     ; $5afc: $f0 $03

jr_079_5afe:
	ldh a, [c]                                       ; $5afe: $f2
	ld e, $09                                        ; $5aff: $1e $09
	ldh a, [$35]                                     ; $5b01: $f0 $35
	ld [hl], e                                       ; $5b03: $73
	ldh a, [rAUD1LEN]                                ; $5b04: $f0 $11
	ld a, l                                          ; $5b06: $7d
	ld a, l                                          ; $5b07: $7d
	add hl, bc                                       ; $5b08: $09
	ldh a, [rAUD4LEN]                                ; $5b09: $f0 $20
	sbc b                                            ; $5b0b: $98
	ldh a, [$7c]                                     ; $5b0c: $f0 $7c
	ld e, c                                          ; $5b0e: $59
	ld h, l                                          ; $5b0f: $65
	add hl, bc                                       ; $5b10: $09
	ldh a, [$3d]                                     ; $5b11: $f0 $3d
	ldh a, [rAUD3LOW]                                ; $5b13: $f0 $1d
	ldh a, [$2b]                                     ; $5b15: $f0 $2b
	ldh a, [$a1]                                     ; $5b17: $f0 $a1
	ldh a, [$3d]                                     ; $5b19: $f0 $3d
	add hl, bc                                       ; $5b1b: $09
	ldh a, [rP1]                                     ; $5b1c: $f0 $00
	ldh a, [rOCPD]                                   ; $5b1e: $f0 $6b
	ldh a, [rAUD1LEN]                                ; $5b20: $f0 $11
	ld e, c                                          ; $5b22: $59
	ld [hl], e                                       ; $5b23: $73
	add hl, bc                                       ; $5b24: $09
	ld l, l                                          ; $5b25: $6d
	ldh a, [rTIMA]                                   ; $5b26: $f0 $05
	ldh a, [c]                                       ; $5b28: $f2
	inc d                                            ; $5b29: $14
	pop af                                           ; $5b2a: $f1
	rst AddAOntoHL                                          ; $5b2b: $ef
	ldh a, [$bd]                                     ; $5b2c: $f0 $bd
	add hl, bc                                       ; $5b2e: $09
	pop af                                           ; $5b2f: $f1
	ld [hl+], a                                      ; $5b30: $22
	ld e, c                                          ; $5b31: $59
	ldh a, [$1f]                                     ; $5b32: $f0 $1f
	ld e, c                                          ; $5b34: $59
	ldh a, [$2c]                                     ; $5b35: $f0 $2c
	add hl, bc                                       ; $5b37: $09
	add c                                            ; $5b38: $81
	ldh a, [$1f]                                     ; $5b39: $f0 $1f
	ldh a, [$50]                                     ; $5b3b: $f0 $50
	ldh a, [rSC]                                     ; $5b3d: $f0 $02
	ldh a, [$27]                                     ; $5b3f: $f0 $27
	add hl, bc                                       ; $5b41: $09
	ldh a, [rTMA]                                    ; $5b42: $f0 $06
	pop af                                           ; $5b44: $f1
	inc h                                            ; $5b45: $24
	ldh a, [rSC]                                     ; $5b46: $f0 $02
	ld a, l                                          ; $5b48: $7d
	ld h, l                                          ; $5b49: $65
	add hl, bc                                       ; $5b4a: $09
	ldh a, [rWY]                                     ; $5b4b: $f0 $4a
	ldh a, [rP1]                                     ; $5b4d: $f0 $00
	ldh a, [$c2]                                     ; $5b4f: $f0 $c2
	ld e, c                                          ; $5b51: $59
	ld l, c                                          ; $5b52: $69
	add hl, bc                                       ; $5b53: $09
	ld l, l                                          ; $5b54: $6d
	ldh a, [rTIMA]                                   ; $5b55: $f0 $05
	ldh a, [c]                                       ; $5b57: $f2

jr_079_5b58:
	inc d                                            ; $5b58: $14
	pop af                                           ; $5b59: $f1
	rst AddAOntoHL                                          ; $5b5a: $ef
	pop af                                           ; $5b5b: $f1
	adc l                                            ; $5b5c: $8d
	add hl, bc                                       ; $5b5d: $09
	ld e, d                                          ; $5b5e: $5a
	add hl, sp                                       ; $5b5f: $39
	ld b, h                                          ; $5b60: $44
	dec sp                                           ; $5b61: $3b
	dec a                                            ; $5b62: $3d
	add hl, bc                                       ; $5b63: $09
	ldh a, [$5c]                                     ; $5b64: $f0 $5c
	jr c, jr_079_5b58                                ; $5b66: $38 $f0

	jr c, @+$4c                                      ; $5b68: $38 $4a

	ld d, c                                          ; $5b6a: $51
	add hl, bc                                       ; $5b6b: $09
	add h                                            ; $5b6c: $84
	ldh a, [$2a]                                     ; $5b6d: $f0 $2a
	ld b, d                                          ; $5b6f: $42
	ldh a, [c]                                       ; $5b70: $f2
	rla                                              ; $5b71: $17
	di                                               ; $5b72: $f3
	sbc a                                            ; $5b73: $9f
	add hl, bc                                       ; $5b74: $09
	ldh a, [rAUD3LOW]                                ; $5b75: $f0 $1d
	sub e                                            ; $5b77: $93
	ldh a, [$50]                                     ; $5b78: $f0 $50
	ldh a, [rSC]                                     ; $5b7a: $f0 $02
	add e                                            ; $5b7c: $83
	add hl, bc                                       ; $5b7d: $09
	ldh a, [$0c]                                     ; $5b7e: $f0 $0c
	jr c, jr_079_5bbf                                ; $5b80: $38 $3d

	ld h, e                                          ; $5b82: $63
	ld b, l                                          ; $5b83: $45
	add hl, bc                                       ; $5b84: $09
	ldh a, [rTMA]                                    ; $5b85: $f0 $06
	ldh a, [$cd]                                     ; $5b87: $f0 $cd
	ldh a, [$a8]                                     ; $5b89: $f0 $a8
	ldh a, [$8b]                                     ; $5b8b: $f0 $8b
	ldh a, [rHDMA3]                                  ; $5b8d: $f0 $53
	add hl, bc                                       ; $5b8f: $09
	ldh a, [$7d]                                     ; $5b90: $f0 $7d
	pop af                                           ; $5b92: $f1
	cp h                                             ; $5b93: $bc
	ld e, l                                          ; $5b94: $5d
	ldh a, [rDMA]                                    ; $5b95: $f0 $46
	ldh a, [$62]                                     ; $5b97: $f0 $62
	add hl, bc                                       ; $5b99: $09
	ld l, h                                          ; $5b9a: $6c
	ld e, c                                          ; $5b9b: $59
	add b                                            ; $5b9c: $80
	ld e, l                                          ; $5b9d: $5d
	dec a                                            ; $5b9e: $3d
	add hl, bc                                       ; $5b9f: $09
	ldh a, [rSC]                                     ; $5ba0: $f0 $02
	ld a, l                                          ; $5ba2: $7d
	ldh a, [rSC]                                     ; $5ba3: $f0 $02
	ld [hl], e                                       ; $5ba5: $73
	sub e                                            ; $5ba6: $93
	add hl, bc                                       ; $5ba7: $09
	ld h, b                                          ; $5ba8: $60
	ld h, b                                          ; $5ba9: $60
	ld h, b                                          ; $5baa: $60
	ld h, b                                          ; $5bab: $60
	ld h, b                                          ; $5bac: $60
	add hl, bc                                       ; $5bad: $09
	add a                                            ; $5bae: $87
	ldh a, [c]                                       ; $5baf: $f2
	cp e                                             ; $5bb0: $bb
	ldh a, [c]                                       ; $5bb1: $f2
	pop hl                                           ; $5bb2: $e1
	ldh a, [rAUD1ENV]                                ; $5bb3: $f0 $12

jr_079_5bb5:
	sbc a                                            ; $5bb5: $9f
	add hl, bc                                       ; $5bb6: $09
	di                                               ; $5bb7: $f3
	ld [$f29e], a                                    ; $5bb8: $ea $9e $f2
	ld c, c                                          ; $5bbb: $49
	ldh a, [rAUD1ENV]                                ; $5bbc: $f0 $12
	sbc a                                            ; $5bbe: $9f

jr_079_5bbf:
	add hl, bc                                       ; $5bbf: $09
	di                                               ; $5bc0: $f3
	ld b, $f4                                        ; $5bc1: $06 $f4
	jr c, jr_079_5bb5                                ; $5bc3: $38 $f0

	ld a, [hl-]                                      ; $5bc5: $3a
	ldh a, [rAUD1ENV]                                ; $5bc6: $f0 $12
	sbc a                                            ; $5bc8: $9f
	add hl, bc                                       ; $5bc9: $09
	ldh a, [rSC]                                     ; $5bca: $f0 $02
	ld a, l                                          ; $5bcc: $7d
	ldh a, [rAUD4LEN]                                ; $5bcd: $f0 $20
	ldh a, [$03]                                     ; $5bcf: $f0 $03
	sbc a                                            ; $5bd1: $9f
	add hl, bc                                       ; $5bd2: $09
	ldh a, [c]                                       ; $5bd3: $f2
	ld [hl], $f1                                     ; $5bd4: $36 $f1
	ld [hl], e                                       ; $5bd6: $73
	ld l, b                                          ; $5bd7: $68
	pop af                                           ; $5bd8: $f1
	sbc h                                            ; $5bd9: $9c
	ld l, b                                          ; $5bda: $68

jr_079_5bdb:
	add hl, bc                                       ; $5bdb: $09
	ld h, h                                          ; $5bdc: $64
	pop af                                           ; $5bdd: $f1
	or e                                             ; $5bde: $b3
	ld h, c                                          ; $5bdf: $61
	ld d, [hl]                                       ; $5be0: $56
	ld b, c                                          ; $5be1: $41
	add hl, bc                                       ; $5be2: $09
	ldh a, [$9b]                                     ; $5be3: $f0 $9b
	ldh a, [$28]                                     ; $5be5: $f0 $28
	ld b, d                                          ; $5be7: $42
	pop af                                           ; $5be8: $f1
	jr z, jr_079_5bdb                                ; $5be9: $28 $f0

	ld b, h                                          ; $5beb: $44
	add hl, bc                                       ; $5bec: $09
	ld l, a                                          ; $5bed: $6f
	ld b, a                                          ; $5bee: $47
	pop af                                           ; $5bef: $f1
	inc c                                            ; $5bf0: $0c
	ld d, c                                          ; $5bf1: $51
	ld c, [hl]                                       ; $5bf2: $4e
	add hl, bc                                       ; $5bf3: $09
	ld e, d                                          ; $5bf4: $5a
	add hl, sp                                       ; $5bf5: $39
	ld a, $3f                                        ; $5bf6: $3e $3f
	ld c, a                                          ; $5bf8: $4f
	add hl, bc                                       ; $5bf9: $09
	jr c, jr_079_5c59                                ; $5bfa: $38 $5d

	ld a, [hl-]                                      ; $5bfc: $3a
	jr c, @+$44                                      ; $5bfd: $38 $42

	add hl, bc                                       ; $5bff: $09
	ldh a, [$e5]                                     ; $5c00: $f0 $e5
	ldh a, [$d3]                                     ; $5c02: $f0 $d3
	ldh a, [$a7]                                     ; $5c04: $f0 $a7
	pop af                                           ; $5c06: $f1
	ld h, c                                          ; $5c07: $61
	ld c, d                                          ; $5c08: $4a
	add hl, bc                                       ; $5c09: $09
	ld e, d                                          ; $5c0a: $5a
	add hl, sp                                       ; $5c0b: $39
	ld a, $3d                                        ; $5c0c: $3e $3d
	ld b, d                                          ; $5c0e: $42
	add hl, bc                                       ; $5c0f: $09
	ldh a, [$0b]                                     ; $5c10: $f0 $0b
	pop af                                           ; $5c12: $f1
	ld [hl], c                                       ; $5c13: $71
	ld h, h                                          ; $5c14: $64
	add hl, sp                                       ; $5c15: $39
	inc a                                            ; $5c16: $3c
	add hl, bc                                       ; $5c17: $09
	ldh a, [rIF]                                     ; $5c18: $f0 $0f
	ld l, c                                          ; $5c1a: $69
	ldh a, [rP1]                                     ; $5c1b: $f0 $00
	sbc b                                            ; $5c1d: $98
	ldh a, [$3d]                                     ; $5c1e: $f0 $3d
	add hl, bc                                       ; $5c20: $09
	ldh a, [$7d]                                     ; $5c21: $f0 $7d
	ld l, b                                          ; $5c23: $68
	ldh a, [hDisp1_BGP]                                     ; $5c24: $f0 $92
	ld e, b                                          ; $5c26: $58
	ld b, c                                          ; $5c27: $41
	add hl, bc                                       ; $5c28: $09
	adc d                                            ; $5c29: $8a
	ldh a, [$37]                                     ; $5c2a: $f0 $37
	ldh a, [$3a]                                     ; $5c2c: $f0 $3a
	ld e, b                                          ; $5c2e: $58
	ld b, c                                          ; $5c2f: $41
	add hl, bc                                       ; $5c30: $09
	ldh a, [$4e]                                     ; $5c31: $f0 $4e
	adc d                                            ; $5c33: $8a
	ld h, c                                          ; $5c34: $61
	ld d, [hl]                                       ; $5c35: $56
	ld b, c                                          ; $5c36: $41
	add hl, bc                                       ; $5c37: $09
	ldh a, [$78]                                     ; $5c38: $f0 $78
	ldh a, [c]                                       ; $5c3a: $f2
	inc c                                            ; $5c3b: $0c
	ld a, $3a                                        ; $5c3c: $3e $3a
	ld b, l                                          ; $5c3e: $45
	add hl, bc                                       ; $5c3f: $09
	ldh a, [hDisp1_LCDC]                                     ; $5c40: $f0 $8f
	ldh a, [$be]                                     ; $5c42: $f0 $be
	ld c, c                                          ; $5c44: $49
	ldh a, [c]                                       ; $5c45: $f2
	cp h                                             ; $5c46: $bc
	adc a                                            ; $5c47: $8f
	add hl, bc                                       ; $5c48: $09
	ld d, h                                          ; $5c49: $54
	ld b, c                                          ; $5c4a: $41
	ld b, a                                          ; $5c4b: $47
	ld h, c                                          ; $5c4c: $61
	ld c, e                                          ; $5c4d: $4b
	add hl, bc                                       ; $5c4e: $09
	ldh a, [$d0]                                     ; $5c4f: $f0 $d0
	ldh a, [$fc]                                     ; $5c51: $f0 $fc
	ldh a, [$6f]                                     ; $5c53: $f0 $6f
	ld c, d                                          ; $5c55: $4a
	ld d, c                                          ; $5c56: $51
	add hl, bc                                       ; $5c57: $09
	ld b, b                                          ; $5c58: $40

jr_079_5c59:
	add hl, sp                                       ; $5c59: $39
	jr c, jr_079_5cba                                ; $5c5a: $38 $5e

	ld a, e                                          ; $5c5c: $7b
	add hl, bc                                       ; $5c5d: $09
	ld l, l                                          ; $5c5e: $6d
	ldh a, [hDisp0_BGP]                                     ; $5c5f: $f0 $85
	pop af                                           ; $5c61: $f1
	ld a, l                                          ; $5c62: $7d
	ldh a, [hDisp0_LCDC]                                     ; $5c63: $f0 $82
	ld b, a                                          ; $5c65: $47
	add hl, bc                                       ; $5c66: $09
	ld b, l                                          ; $5c67: $45
	ld d, l                                          ; $5c68: $55
	ldh a, [$0c]                                     ; $5c69: $f0 $0c
	ld e, l                                          ; $5c6b: $5d
	ld b, l                                          ; $5c6c: $45
	add hl, bc                                       ; $5c6d: $09
	pop af                                           ; $5c6e: $f1
	db $fc                                           ; $5c6f: $fc
	ldh a, [rOCPS]                                   ; $5c70: $f0 $6a
	ld c, d                                          ; $5c72: $4a
	ld d, c                                          ; $5c73: $51
	add hl, bc                                       ; $5c74: $09
	ldh a, [$2d]                                     ; $5c75: $f0 $2d
	ld d, b                                          ; $5c77: $50
	ld a, [hl-]                                      ; $5c78: $3a
	jr c, jr_079_5c84                                ; $5c79: $38 $09

	ldh a, [hLCDCIntHandlerIdx]                                     ; $5c7b: $f0 $81
	ld e, l                                          ; $5c7d: $5d
	ccf                                              ; $5c7e: $3f
	ld c, a                                          ; $5c7f: $4f
	add hl, bc                                       ; $5c80: $09
	ld h, a                                          ; $5c81: $67
	ld d, h                                          ; $5c82: $54
	add hl, sp                                       ; $5c83: $39

jr_079_5c84:
	inc a                                            ; $5c84: $3c
	add hl, bc                                       ; $5c85: $09
	jr c, jr_079_5cc0                                ; $5c86: $38 $38

	ld e, l                                          ; $5c88: $5d
	ld e, d                                          ; $5c89: $5a
	add hl, bc                                       ; $5c8a: $09
	ld a, c                                          ; $5c8b: $79
	dec sp                                           ; $5c8c: $3b
	inc a                                            ; $5c8d: $3c
	ld d, l                                          ; $5c8e: $55
	add hl, bc                                       ; $5c8f: $09
	jr c, jr_079_5cca                                ; $5c90: $38 $38

	inc a                                            ; $5c92: $3c
	ld a, [hl-]                                      ; $5c93: $3a
	add hl, bc                                       ; $5c94: $09
	ld a, [hl-]                                      ; $5c95: $3a
	jr c, @+$65                                      ; $5c96: $38 $63

	ld c, h                                          ; $5c98: $4c
	add hl, bc                                       ; $5c99: $09
	ld a, $45                                        ; $5c9a: $3e $45
	add hl, sp                                       ; $5c9c: $39
	inc a                                            ; $5c9d: $3c
	add hl, bc                                       ; $5c9e: $09
	ldh a, [$2b]                                     ; $5c9f: $f0 $2b
	ldh a, [$c2]                                     ; $5ca1: $f0 $c2
	ld [hl], e                                       ; $5ca3: $73
	ld l, c                                          ; $5ca4: $69
	add hl, bc                                       ; $5ca5: $09
	ldh a, [$b5]                                     ; $5ca6: $f0 $b5
	dec sp                                           ; $5ca8: $3b
	ld d, l                                          ; $5ca9: $55
	ld d, a                                          ; $5caa: $57
	add hl, bc                                       ; $5cab: $09
	ld a, d                                          ; $5cac: $7a
	ld e, a                                          ; $5cad: $5f
	add hl, sp                                       ; $5cae: $39
	inc a                                            ; $5caf: $3c
	add hl, bc                                       ; $5cb0: $09
	ld h, c                                          ; $5cb1: $61
	ld h, [hl]                                       ; $5cb2: $66
	add hl, sp                                       ; $5cb3: $39
	ld e, d                                          ; $5cb4: $5a
	add hl, bc                                       ; $5cb5: $09
	ldh a, [rKEY1]                                   ; $5cb6: $f0 $4d
	dec sp                                           ; $5cb8: $3b
	ld d, l                                          ; $5cb9: $55

jr_079_5cba:
	ld d, a                                          ; $5cba: $57
	add hl, bc                                       ; $5cbb: $09
	ld l, h                                          ; $5cbc: $6c
	dec a                                            ; $5cbd: $3d
	jr c, jr_079_5d0c                                ; $5cbe: $38 $4c

jr_079_5cc0:
	add hl, bc                                       ; $5cc0: $09
	ld e, h                                          ; $5cc1: $5c
	ld c, l                                          ; $5cc2: $4d
	jr c, @+$3c                                      ; $5cc3: $38 $3a

	add hl, bc                                       ; $5cc5: $09
	ldh a, [$6e]                                     ; $5cc6: $f0 $6e
	ld e, c                                          ; $5cc8: $59
	ld [hl], e                                       ; $5cc9: $73

jr_079_5cca:
	ld c, c                                          ; $5cca: $49
	add hl, bc                                       ; $5ccb: $09
	ldh a, [c]                                       ; $5ccc: $f2
	ld a, $f2                                        ; $5ccd: $3e $f2
	sub $90                                          ; $5ccf: $d6 $90
	pop af                                           ; $5cd1: $f1
	ld h, a                                          ; $5cd2: $67
	add hl, bc                                       ; $5cd3: $09
	ld b, b                                          ; $5cd4: $40
	add hl, sp                                       ; $5cd5: $39
	inc a                                            ; $5cd6: $3c
	ld a, [hl-]                                      ; $5cd7: $3a
	add hl, bc                                       ; $5cd8: $09
	ldh a, [rSC]                                     ; $5cd9: $f0 $02
	ld [hl], e                                       ; $5cdb: $73
	ldh a, [$2f]                                     ; $5cdc: $f0 $2f
	ld e, c                                          ; $5cde: $59
	add hl, bc                                       ; $5cdf: $09
	ld b, l                                          ; $5ce0: $45
	ld e, a                                          ; $5ce1: $5f
	ld a, $55                                        ; $5ce2: $3e $55
	add hl, bc                                       ; $5ce4: $09
	ccf                                              ; $5ce5: $3f
	dec a                                            ; $5ce6: $3d
	ld b, c                                          ; $5ce7: $41
	ld b, h                                          ; $5ce8: $44
	add hl, bc                                       ; $5ce9: $09
	dec a                                            ; $5cea: $3d
	ld d, d                                          ; $5ceb: $52
	ld b, a                                          ; $5cec: $47
	ld c, e                                          ; $5ced: $4b
	add hl, bc                                       ; $5cee: $09
	adc d                                            ; $5cef: $8a
	ldh a, [hDisp1_WY]                                     ; $5cf0: $f0 $95
	ld a, $38                                        ; $5cf2: $3e $38
	add hl, bc                                       ; $5cf4: $09
	ld b, b                                          ; $5cf5: $40
	add hl, sp                                       ; $5cf6: $39
	ld b, l                                          ; $5cf7: $45
	ld c, h                                          ; $5cf8: $4c
	add hl, bc                                       ; $5cf9: $09
	ldh a, [rIF]                                     ; $5cfa: $f0 $0f
	ld [hl], l                                       ; $5cfc: $75
	ld e, c                                          ; $5cfd: $59
	ldh a, [$32]                                     ; $5cfe: $f0 $32
	add hl, bc                                       ; $5d00: $09
	ld b, l                                          ; $5d01: $45
	ld e, a                                          ; $5d02: $5f
	ld a, $38                                        ; $5d03: $3e $38
	add hl, bc                                       ; $5d05: $09
	ld b, [hl]                                       ; $5d06: $46
	inc [hl]                                         ; $5d07: $34
	ld b, [hl]                                       ; $5d08: $46
	ld b, d                                          ; $5d09: $42
	add hl, bc                                       ; $5d0a: $09
	ld b, h                                          ; $5d0b: $44

jr_079_5d0c:
	inc a                                            ; $5d0c: $3c
	ld d, b                                          ; $5d0d: $50
	inc [hl]                                         ; $5d0e: $34
	add hl, bc                                       ; $5d0f: $09
	pop af                                           ; $5d10: $f1
	push bc                                          ; $5d11: $c5
	pop af                                           ; $5d12: $f1
	call c, Call_079_64f2                            ; $5d13: $dc $f2 $64
	ld b, a                                          ; $5d16: $47
	add hl, bc                                       ; $5d17: $09
	ld a, [hl-]                                      ; $5d18: $3a
	ld b, c                                          ; $5d19: $41
	ld b, h                                          ; $5d1a: $44
	ld c, h                                          ; $5d1b: $4c
	add hl, bc                                       ; $5d1c: $09
	ld d, e                                          ; $5d1d: $53
	jr c, jr_079_5d5d                                ; $5d1e: $38 $3d

	ld b, l                                          ; $5d20: $45
	add hl, bc                                       ; $5d21: $09
	ld b, d                                          ; $5d22: $42
	ldh a, [hDisp0_SCY]                                     ; $5d23: $f0 $83
	ldh a, [rTIMA]                                   ; $5d25: $f0 $05
	ld l, b                                          ; $5d27: $68
	add hl, bc                                       ; $5d28: $09
	ldh a, [$5c]                                     ; $5d29: $f0 $5c
	jr c, jr_079_5d8a                                ; $5d2b: $38 $5d

	ld e, d                                          ; $5d2d: $5a
	add hl, bc                                       ; $5d2e: $09
	ldh a, [rSCX]                                    ; $5d2f: $f0 $43
	ldh a, [$b8]                                     ; $5d31: $f0 $b8
	adc a                                            ; $5d33: $8f
	ld c, e                                          ; $5d34: $4b
	add hl, bc                                       ; $5d35: $09
	ld d, e                                          ; $5d36: $53
	jr c, jr_079_5d87                                ; $5d37: $38 $4e

	sub a                                            ; $5d39: $97
	add hl, bc                                       ; $5d3a: $09
	adc d                                            ; $5d3b: $8a
	ldh a, [$73]                                     ; $5d3c: $f0 $73
	adc a                                            ; $5d3e: $8f
	ld c, e                                          ; $5d3f: $4b
	add hl, bc                                       ; $5d40: $09
	ld d, e                                          ; $5d41: $53
	add a                                            ; $5d42: $87
	adc e                                            ; $5d43: $8b
	ld e, h                                          ; $5d44: $5c
	add hl, bc                                       ; $5d45: $09
	ldh a, [$b6]                                     ; $5d46: $f0 $b6
	ldh a, [$34]                                     ; $5d48: $f0 $34
	ldh a, [rAUD3LEN]                                ; $5d4a: $f0 $1b
	ldh a, [$15]                                     ; $5d4c: $f0 $15
	add hl, bc                                       ; $5d4e: $09
	ld b, [hl]                                       ; $5d4f: $46
	ld b, c                                          ; $5d50: $41
	ld a, [hl-]                                      ; $5d51: $3a
	ld b, a                                          ; $5d52: $47
	add hl, bc                                       ; $5d53: $09
	ldh a, [$a7]                                     ; $5d54: $f0 $a7
	pop af                                           ; $5d56: $f1
	dec de                                           ; $5d57: $1b
	ld d, c                                          ; $5d58: $51
	ld c, [hl]                                       ; $5d59: $4e
	add hl, bc                                       ; $5d5a: $09
	ld c, a                                          ; $5d5b: $4f
	ld h, c                                          ; $5d5c: $61

jr_079_5d5d:
	ld e, a                                          ; $5d5d: $5f
	ld b, c                                          ; $5d5e: $41
	add hl, bc                                       ; $5d5f: $09
	jr c, jr_079_5d9f                                ; $5d60: $38 $3d

	ld b, c                                          ; $5d62: $41
	ld b, h                                          ; $5d63: $44
	add hl, bc                                       ; $5d64: $09
	pop af                                           ; $5d65: $f1
	daa                                              ; $5d66: $27
	ld e, c                                          ; $5d67: $59
	ldh a, [rP1]                                     ; $5d68: $f0 $00
	ld e, c                                          ; $5d6a: $59
	add hl, bc                                       ; $5d6b: $09
	add e                                            ; $5d6c: $83
	ldh a, [rSC]                                     ; $5d6d: $f0 $02
	ld h, l                                          ; $5d6f: $65
	add c                                            ; $5d70: $81
	add hl, bc                                       ; $5d71: $09
	ld e, e                                          ; $5d72: $5b
	ld d, [hl]                                       ; $5d73: $56
	ld b, [hl]                                       ; $5d74: $46
	ld a, [hl-]                                      ; $5d75: $3a
	add hl, bc                                       ; $5d76: $09
	ld a, d                                          ; $5d77: $7a
	ld c, [hl]                                       ; $5d78: $4e
	ld h, e                                          ; $5d79: $63
	ld b, l                                          ; $5d7a: $45
	add hl, bc                                       ; $5d7b: $09
	ldh a, [$d9]                                     ; $5d7c: $f0 $d9
	ldh a, [$65]                                     ; $5d7e: $f0 $65
	ldh a, [$74]                                     ; $5d80: $f0 $74
	ldh a, [$61]                                     ; $5d82: $f0 $61
	add hl, bc                                       ; $5d84: $09
	add h                                            ; $5d85: $84
	ld b, d                                          ; $5d86: $42

jr_079_5d87:
	ldh a, [$a8]                                     ; $5d87: $f0 $a8
	pop af                                           ; $5d89: $f1

jr_079_5d8a:
	ld [$f009], sp                                   ; $5d8a: $08 $09 $f0
	sub a                                            ; $5d8d: $97
	sbc h                                            ; $5d8e: $9c
	inc a                                            ; $5d8f: $3c
	ld a, $09                                        ; $5d90: $3e $09
	ldh a, [rPCM12]                                  ; $5d92: $f0 $76
	ldh a, [$d2]                                     ; $5d94: $f0 $d2
	ldh a, [$3f]                                     ; $5d96: $f0 $3f
	ldh a, [$bd]                                     ; $5d98: $f0 $bd
	add hl, bc                                       ; $5d9a: $09
	ldh a, [rP1]                                     ; $5d9b: $f0 $00
	ldh a, [$3d]                                     ; $5d9d: $f0 $3d

jr_079_5d9f:
	ldh a, [rP1]                                     ; $5d9f: $f0 $00
	ld e, c                                          ; $5da1: $59
	add hl, bc                                       ; $5da2: $09
	add c                                            ; $5da3: $81
	ldh a, [$1f]                                     ; $5da4: $f0 $1f
	ld [hl], l                                       ; $5da6: $75
	add e                                            ; $5da7: $83
	add hl, bc                                       ; $5da8: $09
	jr c, jr_079_5e19                                ; $5da9: $38 $6e

	ld [hl], h                                       ; $5dab: $74
	inc [hl]                                         ; $5dac: $34
	add hl, bc                                       ; $5dad: $09
	pop af                                           ; $5dae: $f1
	xor l                                            ; $5daf: $ad
	pop af                                           ; $5db0: $f1
	dec l                                            ; $5db1: $2d
	ldh a, [rAUD3LEN]                                ; $5db2: $f0 $1b
	ldh a, [$15]                                     ; $5db4: $f0 $15
	add hl, bc                                       ; $5db6: $09
	ldh a, [rAUD3LEN]                                ; $5db7: $f0 $1b
	ldh a, [$15]                                     ; $5db9: $f0 $15
	ld a, $3d                                        ; $5dbb: $3e $3d
	add hl, bc                                       ; $5dbd: $09
	ldh a, [$b9]                                     ; $5dbe: $f0 $b9
	ld a, h                                          ; $5dc0: $7c
	ldh a, [$80]                                     ; $5dc1: $f0 $80
	ldh a, [hDisp1_BGP]                                     ; $5dc3: $f0 $92
	add hl, bc                                       ; $5dc5: $09
	ldh a, [rLCDC]                                   ; $5dc6: $f0 $40
	ld e, a                                          ; $5dc8: $5f
	add hl, sp                                       ; $5dc9: $39
	ld b, l                                          ; $5dca: $45
	add hl, bc                                       ; $5dcb: $09
	ldh a, [$3e]                                     ; $5dcc: $f0 $3e
	ldh a, [$74]                                     ; $5dce: $f0 $74
	ldh a, [rBGP]                                    ; $5dd0: $f0 $47
	ldh a, [$2a]                                     ; $5dd2: $f0 $2a
	add hl, bc                                       ; $5dd4: $09
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5dd5: $f0 $81
	ldh a, [$a8]                                     ; $5dd7: $f0 $a8
	ldh a, [rBGP]                                    ; $5dd9: $f0 $47
	ldh a, [$2a]                                     ; $5ddb: $f0 $2a
	add hl, bc                                       ; $5ddd: $09
	ldh a, [$0c]                                     ; $5dde: $f0 $0c
	inc a                                            ; $5de0: $3c
	ld a, c                                          ; $5de1: $79
	ccf                                              ; $5de2: $3f
	add hl, bc                                       ; $5de3: $09
	ldh a, [$3e]                                     ; $5de4: $f0 $3e
	ldh a, [$a8]                                     ; $5de6: $f0 $a8
	ldh a, [rAUD2HIGH]                               ; $5de8: $f0 $19
	inc [hl]                                         ; $5dea: $34
	add hl, bc                                       ; $5deb: $09
	pop af                                           ; $5dec: $f1
	db $eb                                           ; $5ded: $eb
	ld [hl], c                                       ; $5dee: $71
	ld b, h                                          ; $5def: $44
	ld c, h                                          ; $5df0: $4c
	add hl, bc                                       ; $5df1: $09
	ld e, [hl]                                       ; $5df2: $5e
	ld e, [hl]                                       ; $5df3: $5e
	ld e, c                                          ; $5df4: $59
	dec sp                                           ; $5df5: $3b
	add hl, bc                                       ; $5df6: $09
	sub [hl]                                         ; $5df7: $96
	ld e, a                                          ; $5df8: $5f
	add hl, sp                                       ; $5df9: $39
	ld b, l                                          ; $5dfa: $45
	add hl, bc                                       ; $5dfb: $09
	pop af                                           ; $5dfc: $f1
	ld d, h                                          ; $5dfd: $54
	ld e, c                                          ; $5dfe: $59
	ld l, c                                          ; $5dff: $69
	di                                               ; $5e00: $f3
	ld h, [hl]                                       ; $5e01: $66
	add hl, bc                                       ; $5e02: $09
	ld b, h                                          ; $5e03: $44
	dec sp                                           ; $5e04: $3b
	dec a                                            ; $5e05: $3d
	ld c, c                                          ; $5e06: $49
	add hl, bc                                       ; $5e07: $09
	ldh a, [$a8]                                     ; $5e08: $f0 $a8
	ldh a, [$8b]                                     ; $5e0a: $f0 $8b
	ldh a, [rAUD2HIGH]                               ; $5e0c: $f0 $19
	inc [hl]                                         ; $5e0e: $34
	add hl, bc                                       ; $5e0f: $09
	add e                                            ; $5e10: $83
	pop af                                           ; $5e11: $f1
	ld [de], a                                       ; $5e12: $12
	ld e, c                                          ; $5e13: $59
	ldh a, [$f2]                                     ; $5e14: $f0 $f2
	add hl, bc                                       ; $5e16: $09
	ldh a, [$fa]                                     ; $5e17: $f0 $fa

jr_079_5e19:
	ld d, d                                          ; $5e19: $52
	ld a, [hl-]                                      ; $5e1a: $3a
	jr c, jr_079_5e26                                ; $5e1b: $38 $09

	ldh a, [rAUD3LEN]                                ; $5e1d: $f0 $1b
	ldh a, [$15]                                     ; $5e1f: $f0 $15
	sub d                                            ; $5e21: $92
	adc [hl]                                         ; $5e22: $8e
	add hl, bc                                       ; $5e23: $09
	ldh a, [$dd]                                     ; $5e24: $f0 $dd

jr_079_5e26:
	ldh a, [$9c]                                     ; $5e26: $f0 $9c
	ld d, c                                          ; $5e28: $51
	ld c, [hl]                                       ; $5e29: $4e

jr_079_5e2a:
	add hl, bc                                       ; $5e2a: $09
	ldh a, [$4c]                                     ; $5e2b: $f0 $4c
	ldh a, [rAUD2LOW]                                ; $5e2d: $f0 $18
	pop af                                           ; $5e2f: $f1
	sbc a                                            ; $5e30: $9f
	pop af                                           ; $5e31: $f1
	adc [hl]                                         ; $5e32: $8e
	add hl, bc                                       ; $5e33: $09
	ldh a, [rSCX]                                    ; $5e34: $f0 $43
	pop af                                           ; $5e36: $f1
	jr nz, jr_079_5e2a                               ; $5e37: $20 $f1

	inc e                                            ; $5e39: $1c
	ld c, d                                          ; $5e3a: $4a
	add hl, bc                                       ; $5e3b: $09
	ldh a, [c]                                       ; $5e3c: $f2
	db $10                                           ; $5e3d: $10
	ld b, d                                          ; $5e3e: $42
	ldh a, [$38]                                     ; $5e3f: $f0 $38
	ld b, a                                          ; $5e41: $47
	add hl, bc                                       ; $5e42: $09
	ldh a, [rPCM12]                                  ; $5e43: $f0 $76
	ldh a, [rTMA]                                    ; $5e45: $f0 $06
	add hl, sp                                       ; $5e47: $39
	ld c, h                                          ; $5e48: $4c
	add hl, bc                                       ; $5e49: $09
	ld c, c                                          ; $5e4a: $49
	dec sp                                           ; $5e4b: $3b
	ccf                                              ; $5e4c: $3f
	ld c, a                                          ; $5e4d: $4f
	add hl, bc                                       ; $5e4e: $09
	ldh a, [$7e]                                     ; $5e4f: $f0 $7e
	ldh a, [$a1]                                     ; $5e51: $f0 $a1
	ld e, c                                          ; $5e53: $59
	add e                                            ; $5e54: $83
	add hl, bc                                       ; $5e55: $09
	ldh a, [c]                                       ; $5e56: $f2
	ld c, $f2                                        ; $5e57: $0e $f2
	dec bc                                           ; $5e59: $0b
	ldh a, [hDisp0_OBP0]                                     ; $5e5a: $f0 $86
	pop af                                           ; $5e5c: $f1
	scf                                              ; $5e5d: $37
	add hl, bc                                       ; $5e5e: $09
	ldh a, [c]                                       ; $5e5f: $f2
	scf                                              ; $5e60: $37
	ldh a, [rOBP1]                                   ; $5e61: $f0 $49
	ldh a, [c]                                       ; $5e63: $f2
	jp hl                                            ; $5e64: $e9


	pop af                                           ; $5e65: $f1
	rrca                                             ; $5e66: $0f
	add hl, bc                                       ; $5e67: $09
	ldh a, [rAUD3LEN]                                ; $5e68: $f0 $1b
	ldh a, [$15]                                     ; $5e6a: $f0 $15
	di                                               ; $5e6c: $f3
	ld [$81f0], sp                                   ; $5e6d: $08 $f0 $81
	add hl, bc                                       ; $5e70: $09
	ldh a, [$3d]                                     ; $5e71: $f0 $3d
	ldh a, [$9d]                                     ; $5e73: $f0 $9d
	ldh a, [rP1]                                     ; $5e75: $f0 $00
	ldh a, [$35]                                     ; $5e77: $f0 $35
	add hl, bc                                       ; $5e79: $09
	ldh a, [$a2]                                     ; $5e7a: $f0 $a2
	ldh a, [rAUDTERM]                                ; $5e7c: $f0 $25
	ldh a, [hDisp1_SCX]                                     ; $5e7e: $f0 $91
	ldh a, [rRP]                                     ; $5e80: $f0 $56
	add hl, bc                                       ; $5e82: $09
	ldh a, [$e6]                                     ; $5e83: $f0 $e6
	ldh a, [$ef]                                     ; $5e85: $f0 $ef
	pop af                                           ; $5e87: $f1
	xor [hl]                                         ; $5e88: $ae
	adc h                                            ; $5e89: $8c
	add hl, bc                                       ; $5e8a: $09
	ldh a, [hDisp1_OBP1]                                     ; $5e8b: $f0 $94
	pop af                                           ; $5e8d: $f1
	ld l, l                                          ; $5e8e: $6d
	ld b, a                                          ; $5e8f: $47
	ld h, a                                          ; $5e90: $67
	add hl, bc                                       ; $5e91: $09
	ld [hl], l                                       ; $5e92: $75
	add c                                            ; $5e93: $81
	ldh a, [rP1]                                     ; $5e94: $f0 $00
	ldh a, [$35]                                     ; $5e96: $f0 $35
	add hl, bc                                       ; $5e98: $09
	ldh a, [rOBP1]                                   ; $5e99: $f0 $49
	ldh a, [$59]                                     ; $5e9b: $f0 $59
	ldh a, [rAUD4ENV]                                ; $5e9d: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5e9f: $f0 $23
	add hl, bc                                       ; $5ea1: $09
	pop af                                           ; $5ea2: $f1
	ld d, d                                          ; $5ea3: $52
	ldh a, [$2f]                                     ; $5ea4: $f0 $2f
	ld [hl], l                                       ; $5ea6: $75
	ld a, l                                          ; $5ea7: $7d
	add hl, bc                                       ; $5ea8: $09
	pop af                                           ; $5ea9: $f1
	ld [hl+], a                                      ; $5eaa: $22
	ld e, c                                          ; $5eab: $59
	ldh a, [$1f]                                     ; $5eac: $f0 $1f
	ld e, c                                          ; $5eae: $59
	add hl, bc                                       ; $5eaf: $09
	ld d, h                                          ; $5eb0: $54
	ld b, d                                          ; $5eb1: $42
	adc a                                            ; $5eb2: $8f
	ld b, a                                          ; $5eb3: $47
	add hl, bc                                       ; $5eb4: $09
	ldh a, [$a2]                                     ; $5eb5: $f0 $a2
	ldh a, [rAUDTERM]                                ; $5eb7: $f0 $25
	ldh a, [hDisp1_SCX]                                     ; $5eb9: $f0 $91
	ldh a, [rSVBK]                                   ; $5ebb: $f0 $70
	add hl, bc                                       ; $5ebd: $09
	ld l, d                                          ; $5ebe: $6a
	ld b, d                                          ; $5ebf: $42
	pop af                                           ; $5ec0: $f1
	inc a                                            ; $5ec1: $3c
	pop af                                           ; $5ec2: $f1
	ldh [$09], a                                     ; $5ec3: $e0 $09
	ldh a, [$29]                                     ; $5ec5: $f0 $29
	ld a, $38                                        ; $5ec7: $3e $38
	inc [hl]                                         ; $5ec9: $34
	add hl, bc                                       ; $5eca: $09
	ldh a, [c]                                       ; $5ecb: $f2
	ld e, d                                          ; $5ecc: $5a
	ldh a, [c]                                       ; $5ecd: $f2
	ld e, e                                          ; $5ece: $5b
	pop af                                           ; $5ecf: $f1
	ld b, a                                          ; $5ed0: $47
	ld h, a                                          ; $5ed1: $67
	add hl, bc                                       ; $5ed2: $09
	sbc b                                            ; $5ed3: $98
	ldh a, [rWX]                                     ; $5ed4: $f0 $4b
	ld [hl], e                                       ; $5ed6: $73
	sub e                                            ; $5ed7: $93
	add hl, bc                                       ; $5ed8: $09
	ldh a, [$8e]                                     ; $5ed9: $f0 $8e
	ldh a, [c]                                       ; $5edb: $f2
	daa                                              ; $5edc: $27
	ld e, c                                          ; $5edd: $59
	ldh a, [$27]                                     ; $5ede: $f0 $27
	add hl, bc                                       ; $5ee0: $09
	ldh a, [$78]                                     ; $5ee1: $f0 $78
	pop af                                           ; $5ee3: $f1
	ldh [c], a                                       ; $5ee4: $e2
	pop af                                           ; $5ee5: $f1
	and l                                            ; $5ee6: $a5
	pop af                                           ; $5ee7: $f1
	and [hl]                                         ; $5ee8: $a6
	add hl, bc                                       ; $5ee9: $09
	ldh a, [$31]                                     ; $5eea: $f0 $31
	ldh a, [$ad]                                     ; $5eec: $f0 $ad
	ldh a, [c]                                       ; $5eee: $f2
	inc a                                            ; $5eef: $3c
	ldh a, [c]                                       ; $5ef0: $f2
	cp c                                             ; $5ef1: $b9
	add hl, bc                                       ; $5ef2: $09
	ld l, d                                          ; $5ef3: $6a
	ld l, b                                          ; $5ef4: $68
	inc a                                            ; $5ef5: $3c
	ld d, b                                          ; $5ef6: $50
	add hl, bc                                       ; $5ef7: $09
	ldh a, [$60]                                     ; $5ef8: $f0 $60
	ld e, c                                          ; $5efa: $59
	ldh a, [rAUD3LOW]                                ; $5efb: $f0 $1d
	ld d, e                                          ; $5efd: $53
	add hl, bc                                       ; $5efe: $09
	ldh a, [$78]                                     ; $5eff: $f0 $78
	ldh a, [$f4]                                     ; $5f01: $f0 $f4
	dec sp                                           ; $5f03: $3b
	ccf                                              ; $5f04: $3f
	add hl, bc                                       ; $5f05: $09
	pop af                                           ; $5f06: $f1
	jr z, @-$0e                                      ; $5f07: $28 $f0

	ld b, h                                          ; $5f09: $44
	ld b, a                                          ; $5f0a: $47
	ld c, e                                          ; $5f0b: $4b
	add hl, bc                                       ; $5f0c: $09
	ldh a, [$0e]                                     ; $5f0d: $f0 $0e
	ld d, a                                          ; $5f0f: $57
	di                                               ; $5f10: $f3
	rst SubAFromHL                                          ; $5f11: $d7
	pop af                                           ; $5f12: $f1
	ld h, l                                          ; $5f13: $65
	add hl, bc                                       ; $5f14: $09
	pop af                                           ; $5f15: $f1
	ld [hl], b                                       ; $5f16: $70
	add h                                            ; $5f17: $84
	ldh a, [$cd]                                     ; $5f18: $f0 $cd
	ldh a, [c]                                       ; $5f1a: $f2
	ld sp, $f109                                     ; $5f1b: $31 $09 $f1
	ld a, [de]                                       ; $5f1e: $1a
	pop af                                           ; $5f1f: $f1
	inc c                                            ; $5f20: $0c
	ldh a, [rAUD1LOW]                                ; $5f21: $f0 $13
	ldh a, [$63]                                     ; $5f23: $f0 $63
	add hl, bc                                       ; $5f25: $09
	ldh a, [$7e]                                     ; $5f26: $f0 $7e
	ldh a, [$7c]                                     ; $5f28: $f0 $7c
	ld h, l                                          ; $5f2a: $65
	ldh a, [$03]                                     ; $5f2b: $f0 $03
	add hl, bc                                       ; $5f2d: $09
	ld a, l                                          ; $5f2e: $7d
	ldh a, [$9d]                                     ; $5f2f: $f0 $9d
	ld e, c                                          ; $5f31: $59
	ldh a, [$7e]                                     ; $5f32: $f0 $7e
	add hl, bc                                       ; $5f34: $09
	pop af                                           ; $5f35: $f1
	ld e, a                                          ; $5f36: $5f
	inc a                                            ; $5f37: $3c
	ld a, [hl-]                                      ; $5f38: $3a
	jr c, @+$0b                                      ; $5f39: $38 $09

	di                                               ; $5f3b: $f3
	ld [$f8f5], a                                    ; $5f3c: $ea $f5 $f8
	sub b                                            ; $5f3f: $90
	pop af                                           ; $5f40: $f1
	ld h, a                                          ; $5f41: $67
	add hl, bc                                       ; $5f42: $09
	ldh a, [$be]                                     ; $5f43: $f0 $be
	dec sp                                           ; $5f45: $3b
	inc a                                            ; $5f46: $3c
	ld e, c                                          ; $5f47: $59
	add hl, bc                                       ; $5f48: $09
	sub [hl]                                         ; $5f49: $96
	ld e, a                                          ; $5f4a: $5f
	add hl, sp                                       ; $5f4b: $39
	adc l                                            ; $5f4c: $8d
	add hl, bc                                       ; $5f4d: $09
	pop af                                           ; $5f4e: $f1
	ld [de], a                                       ; $5f4f: $12
	ldh a, [$c2]                                     ; $5f50: $f0 $c2
	ldh a, [rAUD1LEN]                                ; $5f52: $f0 $11
	ld h, l                                          ; $5f54: $65
	add hl, bc                                       ; $5f55: $09
	ldh a, [hDisp1_WX]                                     ; $5f56: $f0 $96
	di                                               ; $5f58: $f3
	ld h, c                                          ; $5f59: $61
	ld l, b                                          ; $5f5a: $68
	ldh a, [c]                                       ; $5f5b: $f2
	ld b, l                                          ; $5f5c: $45
	add hl, bc                                       ; $5f5d: $09
	pop af                                           ; $5f5e: $f1
	dec b                                            ; $5f5f: $05
	ldh a, [$50]                                     ; $5f60: $f0 $50
	pop af                                           ; $5f62: $f1
	dec b                                            ; $5f63: $05
	ldh a, [$50]                                     ; $5f64: $f0 $50
	add hl, bc                                       ; $5f66: $09
	ld a, a                                          ; $5f67: $7f
	ldh a, [rTAC]                                    ; $5f68: $f0 $07
	pop af                                           ; $5f6a: $f1
	ld [hl], $f2                                     ; $5f6b: $36 $f2
	db $dd                                           ; $5f6d: $dd
	add hl, bc                                       ; $5f6e: $09
	ldh a, [$50]                                     ; $5f6f: $f0 $50
	ld [hl], l                                       ; $5f71: $75
	ld a, l                                          ; $5f72: $7d
	ld l, c                                          ; $5f73: $69
	add hl, bc                                       ; $5f74: $09
	ldh a, [$1f]                                     ; $5f75: $f0 $1f
	ldh a, [$6e]                                     ; $5f77: $f0 $6e
	ld [hl], e                                       ; $5f79: $73
	ld l, c                                          ; $5f7a: $69
	add hl, bc                                       ; $5f7b: $09
	ldh a, [$2b]                                     ; $5f7c: $f0 $2b
	pop af                                           ; $5f7e: $f1
	inc sp                                           ; $5f7f: $33
	ld [hl], e                                       ; $5f80: $73
	sub e                                            ; $5f81: $93
	add hl, bc                                       ; $5f82: $09
	ldh a, [$6e]                                     ; $5f83: $f0 $6e
	ld e, c                                          ; $5f85: $59
	sub l                                            ; $5f86: $95
	ld h, l                                          ; $5f87: $65
	add hl, bc                                       ; $5f88: $09
	adc d                                            ; $5f89: $8a
	pop af                                           ; $5f8a: $f1
	inc bc                                           ; $5f8b: $03
	ldh a, [$78]                                     ; $5f8c: $f0 $78
	ldh a, [$f4]                                     ; $5f8e: $f0 $f4
	add hl, bc                                       ; $5f90: $09
	ldh a, [$f1]                                     ; $5f91: $f0 $f1
	ld e, c                                          ; $5f93: $59
	ld a, l                                          ; $5f94: $7d
	adc e                                            ; $5f95: $8b
	add hl, bc                                       ; $5f96: $09
	add a                                            ; $5f97: $87
	ldh a, [$5d]                                     ; $5f98: $f0 $5d
	ldh a, [rAUD4ENV]                                ; $5f9a: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5f9c: $f0 $23
	add hl, bc                                       ; $5f9e: $09
	db $f4                                           ; $5f9f: $f4
	inc l                                            ; $5fa0: $2c
	pop af                                           ; $5fa1: $f1
	dec sp                                           ; $5fa2: $3b
	ld b, h                                          ; $5fa3: $44
	ld b, l                                          ; $5fa4: $45
	add hl, bc                                       ; $5fa5: $09
	ld e, h                                          ; $5fa6: $5c
	inc [hl]                                         ; $5fa7: $34
	ld a, b                                          ; $5fa8: $78
	dec a                                            ; $5fa9: $3d
	add hl, bc                                       ; $5faa: $09
	ldh a, [$f9]                                     ; $5fab: $f0 $f9
	ldh a, [rSTAT]                                   ; $5fad: $f0 $41
	ld b, h                                          ; $5faf: $44
	ld a, [hl-]                                      ; $5fb0: $3a
	add hl, bc                                       ; $5fb1: $09
	ldh a, [rAUD1LOW]                                ; $5fb2: $f0 $13
	ldh a, [$63]                                     ; $5fb4: $f0 $63
	di                                               ; $5fb6: $f3
	jp hl                                            ; $5fb7: $e9


	ldh a, [$63]                                     ; $5fb8: $f0 $63
	add hl, bc                                       ; $5fba: $09
	add h                                            ; $5fbb: $84
	ldh a, [$65]                                     ; $5fbc: $f0 $65
	ldh a, [$31]                                     ; $5fbe: $f0 $31
	ldh a, [$ad]                                     ; $5fc0: $f0 $ad
	add hl, bc                                       ; $5fc2: $09
	ldh a, [rAUD4POLY]                               ; $5fc3: $f0 $22
	ld a, l                                          ; $5fc5: $7d
	ldh a, [rAUD4LEN]                                ; $5fc6: $f0 $20
	ld e, c                                          ; $5fc8: $59
	add hl, bc                                       ; $5fc9: $09
	ld a, l                                          ; $5fca: $7d
	ld h, l                                          ; $5fcb: $65
	ldh a, [$2b]                                     ; $5fcc: $f0 $2b
	ldh a, [$2f]                                     ; $5fce: $f0 $2f
	add hl, bc                                       ; $5fd0: $09
	ldh a, [c]                                       ; $5fd1: $f2
	ldh [c], a                                       ; $5fd2: $e2
	di                                               ; $5fd3: $f3
	ld h, c                                          ; $5fd4: $61
	ldh a, [$d4]                                     ; $5fd5: $f0 $d4
	ldh a, [c]                                       ; $5fd7: $f2
	inc hl                                           ; $5fd8: $23
	add hl, bc                                       ; $5fd9: $09
	ldh a, [rAUD3LOW]                                ; $5fda: $f0 $1d
	ldh a, [$8e]                                     ; $5fdc: $f0 $8e
	ldh a, [rSC]                                     ; $5fde: $f0 $02
	ld e, c                                          ; $5fe0: $59
	add hl, bc                                       ; $5fe1: $09
	ldh a, [rBCPD]                                   ; $5fe2: $f0 $69
	ldh a, [$c3]                                     ; $5fe4: $f0 $c3
	ld e, c                                          ; $5fe6: $59
	ld h, l                                          ; $5fe7: $65
	add hl, bc                                       ; $5fe8: $09
	pop af                                           ; $5fe9: $f1
	ld d, d                                          ; $5fea: $52
	ldh a, [rAUD1ENV]                                ; $5feb: $f0 $12
	sbc a                                            ; $5fed: $9f
	pop af                                           ; $5fee: $f1
	ret nz                                           ; $5fef: $c0

	add hl, bc                                       ; $5ff0: $09
	ldh a, [c]                                       ; $5ff1: $f2
	ld b, $f1                                        ; $5ff2: $06 $f1
	and [hl]                                         ; $5ff4: $a6
	ldh a, [$31]                                     ; $5ff5: $f0 $31
	pop af                                           ; $5ff7: $f1
	inc bc                                           ; $5ff8: $03
	add hl, bc                                       ; $5ff9: $09
	ldh a, [$ba]                                     ; $5ffa: $f0 $ba
	ld a, l                                          ; $5ffc: $7d
	ld e, c                                          ; $5ffd: $59
	ldh a, [rBCPD]                                   ; $5ffe: $f0 $69
	add hl, bc                                       ; $6000: $09
	ldh a, [$1f]                                     ; $6001: $f0 $1f
	ld [hl], e                                       ; $6003: $73
	sub e                                            ; $6004: $93
	ldh a, [c]                                       ; $6005: $f2
	ld e, $09                                        ; $6006: $1e $09
	add h                                            ; $6008: $84
	di                                               ; $6009: $f3
	ld bc, $01f1                                     ; $600a: $01 $f1 $01
	di                                               ; $600d: $f3
	call $9809                                       ; $600e: $cd $09 $98
	ldh a, [$7c]                                     ; $6011: $f0 $7c
	ldh a, [$2f]                                     ; $6013: $f0 $2f
	ld [hl], e                                       ; $6015: $73
	add hl, bc                                       ; $6016: $09
	ldh a, [$b1]                                     ; $6017: $f0 $b1
	adc h                                            ; $6019: $8c
	ldh a, [rLY]                                     ; $601a: $f0 $44
	ld h, a                                          ; $601c: $67
	add hl, bc                                       ; $601d: $09
	ldh a, [$7b]                                     ; $601e: $f0 $7b
	ldh a, [$c3]                                     ; $6020: $f0 $c3
	ldh a, [rP1]                                     ; $6022: $f0 $00
	ld e, c                                          ; $6024: $59
	add hl, bc                                       ; $6025: $09
	ldh a, [rBCPD]                                   ; $6026: $f0 $69
	ldh a, [rSC]                                     ; $6028: $f0 $02
	ldh a, [$6e]                                     ; $602a: $f0 $6e
	ld e, c                                          ; $602c: $59
	add hl, bc                                       ; $602d: $09
	ldh a, [$3d]                                     ; $602e: $f0 $3d
	ld a, l                                          ; $6030: $7d
	sbc b                                            ; $6031: $98
	ld e, c                                          ; $6032: $59
	add hl, bc                                       ; $6033: $09
	add e                                            ; $6034: $83
	ldh a, [$fd]                                     ; $6035: $f0 $fd
	ld e, c                                          ; $6037: $59
	ldh a, [$32]                                     ; $6038: $f0 $32
	add hl, bc                                       ; $603a: $09
	ldh a, [$50]                                     ; $603b: $f0 $50
	ldh a, [rSC]                                     ; $603d: $f0 $02
	ld [hl], e                                       ; $603f: $73
	ldh a, [$32]                                     ; $6040: $f0 $32
	add hl, bc                                       ; $6042: $09
	pop af                                           ; $6043: $f1
	ld [de], a                                       ; $6044: $12
	ld [hl], e                                       ; $6045: $73
	add c                                            ; $6046: $81
	add e                                            ; $6047: $83
	add hl, bc                                       ; $6048: $09
	ldh a, [$7b]                                     ; $6049: $f0 $7b
	ld h, l                                          ; $604b: $65
	add e                                            ; $604c: $83
	ld a, [hl]                                       ; $604d: $7e
	add hl, bc                                       ; $604e: $09
	ld h, h                                          ; $604f: $64
	ldh a, [$f3]                                     ; $6050: $f0 $f3
	ld c, l                                          ; $6052: $4d
	ldh a, [hDisp0_OBP1]                                     ; $6053: $f0 $87
	add hl, bc                                       ; $6055: $09
	ld l, l                                          ; $6056: $6d
	ldh a, [hDisp0_BGP]                                     ; $6057: $f0 $85
	add a                                            ; $6059: $87
	adc c                                            ; $605a: $89
	add hl, bc                                       ; $605b: $09
	ldh a, [rAUDTERM]                                ; $605c: $f0 $25
	ldh a, [rAUD2HIGH]                               ; $605e: $f0 $19
	sub h                                            ; $6060: $94
	ld a, b                                          ; $6061: $78
	add hl, bc                                       ; $6062: $09
	ldh a, [rAUD4LEN]                                ; $6063: $f0 $20
	ld [hl], e                                       ; $6065: $73
	ldh a, [$2b]                                     ; $6066: $f0 $2b
	ldh a, [rP1]                                     ; $6068: $f0 $00
	add hl, bc                                       ; $606a: $09
	ldh a, [$dd]                                     ; $606b: $f0 $dd
	ldh a, [$9c]                                     ; $606d: $f0 $9c
	sub d                                            ; $606f: $92
	adc [hl]                                         ; $6070: $8e
	add hl, bc                                       ; $6071: $09
	ldh a, [rSCX]                                    ; $6072: $f0 $43
	ldh a, [$b8]                                     ; $6074: $f0 $b8
	pop af                                           ; $6076: $f1
	add hl, de                                       ; $6077: $19
	pop af                                           ; $6078: $f1
	dec c                                            ; $6079: $0d
	add hl, bc                                       ; $607a: $09
	di                                               ; $607b: $f3
	and [hl]                                         ; $607c: $a6
	ldh a, [$3d]                                     ; $607d: $f0 $3d
	ld [hl], l                                       ; $607f: $75
	ld a, l                                          ; $6080: $7d
	add hl, bc                                       ; $6081: $09
	ldh a, [$6e]                                     ; $6082: $f0 $6e
	ld e, c                                          ; $6084: $59
	ldh a, [$35]                                     ; $6085: $f0 $35
	ldh a, [$03]                                     ; $6087: $f0 $03
	add hl, bc                                       ; $6089: $09
	ldh a, [$7b]                                     ; $608a: $f0 $7b
	sub e                                            ; $608c: $93
	sbc b                                            ; $608d: $98
	ld e, c                                          ; $608e: $59
	add hl, bc                                       ; $608f: $09
	ldh a, [$6e]                                     ; $6090: $f0 $6e
	ld e, c                                          ; $6092: $59
	ldh a, [$03]                                     ; $6093: $f0 $03
	ldh a, [rHDMA1]                                  ; $6095: $f0 $51
	add hl, bc                                       ; $6097: $09
	pop af                                           ; $6098: $f1
	ld c, c                                          ; $6099: $49
	ld [hl], e                                       ; $609a: $73
	sub e                                            ; $609b: $93
	ld h, l                                          ; $609c: $65
	add hl, bc                                       ; $609d: $09
	ldh a, [rOBP1]                                   ; $609e: $f0 $49
	ldh a, [$59]                                     ; $60a0: $f0 $59
	pop af                                           ; $60a2: $f1
	ld l, c                                          ; $60a3: $69
	ld a, a                                          ; $60a4: $7f
	add hl, bc                                       ; $60a5: $09
	ldh a, [$50]                                     ; $60a6: $f0 $50
	ld [hl], e                                       ; $60a8: $73
	ldh a, [rAUD4LEN]                                ; $60a9: $f0 $20
	ld a, l                                          ; $60ab: $7d
	add hl, bc                                       ; $60ac: $09
	ldh a, [$b7]                                     ; $60ad: $f0 $b7
	ldh a, [rAUD2HIGH]                               ; $60af: $f0 $19
	pop af                                           ; $60b1: $f1
	jp c, $2cf0                                      ; $60b2: $da $f0 $2c

	add hl, bc                                       ; $60b5: $09
	ldh a, [c]                                       ; $60b6: $f2
	ld b, $f0                                        ; $60b7: $06 $f0
	xor d                                            ; $60b9: $aa

jr_079_60ba:
	adc c                                            ; $60ba: $89
	pop af                                           ; $60bb: $f1
	inc bc                                           ; $60bc: $03
	add hl, bc                                       ; $60bd: $09
	ldh a, [c]                                       ; $60be: $f2
	ld b, c                                          ; $60bf: $41
	ldh a, [c]                                       ; $60c0: $f2
	inc de                                           ; $60c1: $13
	adc c                                            ; $60c2: $89
	sbc a                                            ; $60c3: $9f
	add hl, bc                                       ; $60c4: $09
	ldh a, [$1f]                                     ; $60c5: $f0 $1f
	ldh a, [c]                                       ; $60c7: $f2
	jr jr_079_60ba                                   ; $60c8: $18 $f0

	nop                                              ; $60ca: $00
	ldh a, [$c3]                                     ; $60cb: $f0 $c3
	add hl, bc                                       ; $60cd: $09
	ld l, l                                          ; $60ce: $6d
	ldh a, [rDMA]                                    ; $60cf: $f0 $46
	ldh a, [rAUD4ENV]                                ; $60d1: $f0 $21
	ldh a, [rAUD4GO]                                 ; $60d3: $f0 $23
	add hl, bc                                       ; $60d5: $09
	ldh a, [$f6]                                     ; $60d6: $f0 $f6
	pop af                                           ; $60d8: $f1
	inc [hl]                                         ; $60d9: $34
	ldh a, [$5f]                                     ; $60da: $f0 $5f
	add a                                            ; $60dc: $87
	add hl, bc                                       ; $60dd: $09
	pop af                                           ; $60de: $f1
	ld [hl], e                                       ; $60df: $73
	ldh a, [hDisp0_BGP]                                     ; $60e0: $f0 $85
	add a                                            ; $60e2: $87
	adc c                                            ; $60e3: $89
	add hl, bc                                       ; $60e4: $09
	pop af                                           ; $60e5: $f1
	ld d, d                                          ; $60e6: $52
	ldh a, [$35]                                     ; $60e7: $f0 $35
	ldh a, [$a0]                                     ; $60e9: $f0 $a0
	ld a, l                                          ; $60eb: $7d
	add hl, bc                                       ; $60ec: $09
	ldh a, [rAUD3LOW]                                ; $60ed: $f0 $1d
	ld h, l                                          ; $60ef: $65
	ldh a, [$a6]                                     ; $60f0: $f0 $a6
	ldh a, [$fa]                                     ; $60f2: $f0 $fa
	add hl, bc                                       ; $60f4: $09
	add e                                            ; $60f5: $83
	ldh a, [$1f]                                     ; $60f6: $f0 $1f
	ld [hl], e                                       ; $60f8: $73
	ld l, c                                          ; $60f9: $69
	add hl, bc                                       ; $60fa: $09

jr_079_60fb:
	pop af                                           ; $60fb: $f1
	ld a, [de]                                       ; $60fc: $1a
	pop af                                           ; $60fd: $f1
	inc c                                            ; $60fe: $0c
	ldh a, [$a9]                                     ; $60ff: $f0 $a9
	db $f4                                           ; $6101: $f4
	dec sp                                           ; $6102: $3b
	add hl, bc                                       ; $6103: $09
	ldh a, [$0a]                                     ; $6104: $f0 $0a
	pop af                                           ; $6106: $f1
	jr jr_079_60fb                                   ; $6107: $18 $f2

	ld b, a                                          ; $6109: $47
	ldh a, [c]                                       ; $610a: $f2
	dec [hl]                                         ; $610b: $35
	add hl, bc                                       ; $610c: $09
	sub h                                            ; $610d: $94
	ldh a, [$30]                                     ; $610e: $f0 $30
	sub h                                            ; $6110: $94
	ld a, b                                          ; $6111: $78
	add hl, bc                                       ; $6112: $09
	sub [hl]                                         ; $6113: $96
	adc a                                            ; $6114: $8f
	sub c                                            ; $6115: $91
	ldh a, [rBGP]                                    ; $6116: $f0 $47
	add hl, bc                                       ; $6118: $09
	ldh a, [rP1]                                     ; $6119: $f0 $00
	pop af                                           ; $611b: $f1
	ld b, b                                          ; $611c: $40
	ld e, c                                          ; $611d: $59
	ld [hl], e                                       ; $611e: $73
	add hl, bc                                       ; $611f: $09
	ld l, d                                          ; $6120: $6a
	ldh a, [$0d]                                     ; $6121: $f0 $0d
	ldh a, [$a8]                                     ; $6123: $f0 $a8
	ldh a, [$8b]                                     ; $6125: $f0 $8b
	add hl, bc                                       ; $6127: $09
	adc c                                            ; $6128: $89
	ldh a, [hDisp0_LCDC]                                     ; $6129: $f0 $82
	pop af                                           ; $612b: $f1
	ld d, e                                          ; $612c: $53
	ldh a, [c]                                       ; $612d: $f2
	ld [hl-], a                                      ; $612e: $32
	add hl, bc                                       ; $612f: $09
	ldh a, [c]                                       ; $6130: $f2
	cp a                                             ; $6131: $bf
	di                                               ; $6132: $f3
	sbc h                                            ; $6133: $9c
	ldh a, [c]                                       ; $6134: $f2
	or a                                             ; $6135: $b7
	ldh a, [$c8]                                     ; $6136: $f0 $c8
	add hl, bc                                       ; $6138: $09
	pop af                                           ; $6139: $f1
	ld [hl], b                                       ; $613a: $70
	ldh a, [rHDMA2]                                  ; $613b: $f0 $52
	pop af                                           ; $613d: $f1
	ld d, e                                          ; $613e: $53
	ldh a, [c]                                       ; $613f: $f2
	ld [hl-], a                                      ; $6140: $32
	add hl, bc                                       ; $6141: $09
	pop af                                           ; $6142: $f1
	rlca                                             ; $6143: $07
	ldh a, [hDisp0_LCDC]                                     ; $6144: $f0 $82
	pop af                                           ; $6146: $f1
	ld b, a                                          ; $6147: $47
	ld h, a                                          ; $6148: $67
	add hl, bc                                       ; $6149: $09
	ldh a, [$80]                                     ; $614a: $f0 $80
	ldh a, [$c5]                                     ; $614c: $f0 $c5
	ldh a, [$67]                                     ; $614e: $f0 $67
	ldh a, [$9f]                                     ; $6150: $f0 $9f
	add hl, bc                                       ; $6152: $09
	ld l, l                                          ; $6153: $6d
	ldh a, [rDMA]                                    ; $6154: $f0 $46
	ldh a, [$5f]                                     ; $6156: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $6158: $f0 $94
	add hl, bc                                       ; $615a: $09
	ld a, [hl]                                       ; $615b: $7e
	inc a                                            ; $615c: $3c
	dec sp                                           ; $615d: $3b
	dec a                                            ; $615e: $3d
	add hl, bc                                       ; $615f: $09
	ld d, h                                          ; $6160: $54
	ld b, d                                          ; $6161: $42
	di                                               ; $6162: $f3
	ld l, e                                          ; $6163: $6b
	jr c, @+$0b                                      ; $6164: $38 $09

	ldh a, [$3d]                                     ; $6166: $f0 $3d
	ld a, l                                          ; $6168: $7d
	ldh a, [$32]                                     ; $6169: $f0 $32
	ldh a, [$03]                                     ; $616b: $f0 $03
	add hl, bc                                       ; $616d: $09
	ldh a, [hDisp1_OBP0]                                     ; $616e: $f0 $93
	ldh a, [$b4]                                     ; $6170: $f0 $b4
	pop af                                           ; $6172: $f1
	di                                               ; $6173: $f3
	adc h                                            ; $6174: $8c
	add hl, bc                                       ; $6175: $09
	ldh a, [$6c]                                     ; $6176: $f0 $6c
	ldh a, [$61]                                     ; $6178: $f0 $61
	ldh a, [c]                                       ; $617a: $f2
	ld d, $8a                                        ; $617b: $16 $8a
	add hl, bc                                       ; $617d: $09
	ldh a, [rBCPD]                                   ; $617e: $f0 $69
	ldh a, [rSC]                                     ; $6180: $f0 $02
	ld h, l                                          ; $6182: $65
	ldh a, [$32]                                     ; $6183: $f0 $32
	add hl, bc                                       ; $6185: $09
	ldh a, [$f6]                                     ; $6186: $f0 $f6
	pop af                                           ; $6188: $f1
	inc [hl]                                         ; $6189: $34
	ldh a, [rDMA]                                    ; $618a: $f0 $46
	ldh a, [$62]                                     ; $618c: $f0 $62
	add hl, bc                                       ; $618e: $09
	ldh a, [rBGP]                                    ; $618f: $f0 $47
	ldh a, [$c9]                                     ; $6191: $f0 $c9
	ldh a, [rDMA]                                    ; $6193: $f0 $46
	ldh a, [$62]                                     ; $6195: $f0 $62
	add hl, bc                                       ; $6197: $09
	pop af                                           ; $6198: $f1
	cp a                                             ; $6199: $bf
	pop af                                           ; $619a: $f1
	db $fd                                           ; $619b: $fd
	ldh a, [rDMA]                                    ; $619c: $f0 $46
	ldh a, [$62]                                     ; $619e: $f0 $62
	add hl, bc                                       ; $61a0: $09
	jr c, jr_079_61e0                                ; $61a1: $38 $3d

	jr c, jr_079_61e2                                ; $61a3: $38 $3d

	add hl, bc                                       ; $61a5: $09
	ldh a, [$67]                                     ; $61a6: $f0 $67
	pop af                                           ; $61a8: $f1
	ld hl, $f067                                     ; $61a9: $21 $67 $f0
	ld c, b                                          ; $61ac: $48
	add hl, bc                                       ; $61ad: $09
	pop af                                           ; $61ae: $f1
	jp z, $f189                                      ; $61af: $ca $89 $f1

	ld b, a                                          ; $61b2: $47
	ld h, a                                          ; $61b3: $67
	add hl, bc                                       ; $61b4: $09
	ld b, b                                          ; $61b5: $40
	ld e, a                                          ; $61b6: $5f
	ld b, b                                          ; $61b7: $40
	ld e, a                                          ; $61b8: $5f
	add hl, bc                                       ; $61b9: $09
	ldh a, [rBGP]                                    ; $61ba: $f0 $47
	ldh a, [$2a]                                     ; $61bc: $f0 $2a
	ld b, h                                          ; $61be: $44
	ld a, $09                                        ; $61bf: $3e $09
	ldh a, [c]                                       ; $61c1: $f2
	cp e                                             ; $61c2: $bb
	pop af                                           ; $61c3: $f1
	ld a, a                                          ; $61c4: $7f
	ldh a, [rAUD1ENV]                                ; $61c5: $f0 $12
	sbc a                                            ; $61c7: $9f
	add hl, bc                                       ; $61c8: $09
	ldh a, [c]                                       ; $61c9: $f2
	ld [hl], $f1                                     ; $61ca: $36 $f1
	ld [hl], e                                       ; $61cc: $73
	ldh a, [rAUD1ENV]                                ; $61cd: $f0 $12
	sbc a                                            ; $61cf: $9f
	add hl, bc                                       ; $61d0: $09
	ldh a, [$9b]                                     ; $61d1: $f0 $9b
	di                                               ; $61d3: $f3
	ld e, [hl]                                       ; $61d4: $5e
	ldh a, [rAUD1ENV]                                ; $61d5: $f0 $12
	sbc a                                            ; $61d7: $9f
	add hl, bc                                       ; $61d8: $09
	ldh a, [$79]                                     ; $61d9: $f0 $79
	ldh a, [hDisp1_OBP0]                                     ; $61db: $f0 $93
	ldh a, [rAUD1ENV]                                ; $61dd: $f0 $12
	sbc a                                            ; $61df: $9f

jr_079_61e0:
	add hl, bc                                       ; $61e0: $09
	ldh a, [c]                                       ; $61e1: $f2

jr_079_61e2:
	ld [hl], $f2                                     ; $61e2: $36 $f2
	adc b                                            ; $61e4: $88
	ldh a, [rAUD1ENV]                                ; $61e5: $f0 $12
	sbc a                                            ; $61e7: $9f
	add hl, bc                                       ; $61e8: $09
	pop af                                           ; $61e9: $f1
	sub [hl]                                         ; $61ea: $96
	pop af                                           ; $61eb: $f1
	push de                                          ; $61ec: $d5
	ldh a, [rAUD1ENV]                                ; $61ed: $f0 $12
	sbc a                                            ; $61ef: $9f
	add hl, bc                                       ; $61f0: $09
	pop af                                           ; $61f1: $f1
	ld l, c                                          ; $61f2: $69
	di                                               ; $61f3: $f3
	ld a, [bc]                                       ; $61f4: $0a
	ldh a, [rAUD1ENV]                                ; $61f5: $f0 $12
	sbc a                                            ; $61f7: $9f
	add hl, bc                                       ; $61f8: $09
	add a                                            ; $61f9: $87
	ldh a, [c]                                       ; $61fa: $f2
	inc de                                           ; $61fb: $13
	ldh a, [rAUD1ENV]                                ; $61fc: $f0 $12
	sbc a                                            ; $61fe: $9f
	add hl, bc                                       ; $61ff: $09
	ld b, d                                          ; $6200: $42
	ldh a, [$6f]                                     ; $6201: $f0 $6f
	ld h, c                                          ; $6203: $61
	scf                                              ; $6204: $37
	add hl, bc                                       ; $6205: $09
	pop af                                           ; $6206: $f1
	ld b, c                                          ; $6207: $41
	ldh a, [$8b]                                     ; $6208: $f0 $8b
	sub b                                            ; $620a: $90
	adc a                                            ; $620b: $8f
	add hl, bc                                       ; $620c: $09
	ld e, h                                          ; $620d: $5c
	ld d, b                                          ; $620e: $50
	ld [hl], c                                       ; $620f: $71
	ld e, h                                          ; $6210: $5c
	add hl, bc                                       ; $6211: $09
	ldh a, [rAUD2HIGH]                               ; $6212: $f0 $19
	ldh a, [c]                                       ; $6214: $f2
	db $ec                                           ; $6215: $ec
	pop af                                           ; $6216: $f1
	jr z, @-$0e                                      ; $6217: $28 $f0

	ld b, h                                          ; $6219: $44
	add hl, bc                                       ; $621a: $09
	ld e, d                                          ; $621b: $5a
	add hl, sp                                       ; $621c: $39
	ld a, $3f                                        ; $621d: $3e $3f
	add hl, bc                                       ; $621f: $09
	ld c, a                                          ; $6220: $4f
	ld a, $4f                                        ; $6221: $3e $4f
	ld a, $09                                        ; $6223: $3e $09
	ld a, $52                                        ; $6225: $3e $52
	dec sp                                           ; $6227: $3b
	dec a                                            ; $6228: $3d
	add hl, bc                                       ; $6229: $09
	ld d, d                                          ; $622a: $52
	ld b, [hl]                                       ; $622b: $46
	ld d, d                                          ; $622c: $52
	ld b, [hl]                                       ; $622d: $46
	add hl, bc                                       ; $622e: $09
	ld d, c                                          ; $622f: $51
	dec sp                                           ; $6230: $3b
	ld [hl], b                                       ; $6231: $70
	ld d, l                                          ; $6232: $55
	add hl, bc                                       ; $6233: $09
	ld e, e                                          ; $6234: $5b
	ld d, [hl]                                       ; $6235: $56
	ld a, [hl-]                                      ; $6236: $3a
	jr c, jr_079_6242                                ; $6237: $38 $09

	ld l, [hl]                                       ; $6239: $6e
	dec sp                                           ; $623a: $3b
	ldh a, [$36]                                     ; $623b: $f0 $36
	ld d, a                                          ; $623d: $57
	add hl, bc                                       ; $623e: $09
	ldh a, [$f8]                                     ; $623f: $f0 $f8
	ld c, c                                          ; $6241: $49

jr_079_6242:
	halt                                             ; $6242: $76
	ld c, e                                          ; $6243: $4b
	add hl, bc                                       ; $6244: $09
	ldh a, [hDisp0_SCX]                                     ; $6245: $f0 $84
	add h                                            ; $6247: $84
	ld c, c                                          ; $6248: $49
	ld c, a                                          ; $6249: $4f
	add hl, bc                                       ; $624a: $09
	ldh a, [rOCPD]                                   ; $624b: $f0 $6b
	ldh a, [$a0]                                     ; $624d: $f0 $a0
	ld [hl], e                                       ; $624f: $73
	ld l, c                                          ; $6250: $69
	add hl, bc                                       ; $6251: $09
	sbc c                                            ; $6252: $99
	dec sp                                           ; $6253: $3b
	ccf                                              ; $6254: $3f
	dec a                                            ; $6255: $3d
	add hl, bc                                       ; $6256: $09
	ldh a, [$df]                                     ; $6257: $f0 $df
	pop af                                           ; $6259: $f1
	db $f4                                           ; $625a: $f4
	ld [hl], d                                       ; $625b: $72
	pop af                                           ; $625c: $f1
	ld e, $09                                        ; $625d: $1e $09
	ldh a, [$da]                                     ; $625f: $f0 $da
	ldh a, [rLYC]                                    ; $6261: $f0 $45
	ld e, b                                          ; $6263: $58
	ld b, c                                          ; $6264: $41
	add hl, bc                                       ; $6265: $09
	ldh a, [$b9]                                     ; $6266: $f0 $b9
	ld a, h                                          ; $6268: $7c
	ld e, b                                          ; $6269: $58
	ld b, c                                          ; $626a: $41
	add hl, bc                                       ; $626b: $09
	ldh a, [$e6]                                     ; $626c: $f0 $e6
	ldh a, [$ef]                                     ; $626e: $f0 $ef
	ld e, b                                          ; $6270: $58
	ld b, c                                          ; $6271: $41
	add hl, bc                                       ; $6272: $09
	ldh a, [$4c]                                     ; $6273: $f0 $4c
	ldh a, [rAUD2LOW]                                ; $6275: $f0 $18
	ld e, b                                          ; $6277: $58
	ld b, c                                          ; $6278: $41
	add hl, bc                                       ; $6279: $09
	ldh a, [$3c]                                     ; $627a: $f0 $3c
	ldh a, [$39]                                     ; $627c: $f0 $39
	ld e, b                                          ; $627e: $58
	ld b, c                                          ; $627f: $41
	add hl, bc                                       ; $6280: $09
	ldh a, [$33]                                     ; $6281: $f0 $33
	ldh a, [$2e]                                     ; $6283: $f0 $2e
	ld e, b                                          ; $6285: $58
	ld b, c                                          ; $6286: $41
	add hl, bc                                       ; $6287: $09
	ldh a, [$6c]                                     ; $6288: $f0 $6c
	ldh a, [$61]                                     ; $628a: $f0 $61
	ld e, b                                          ; $628c: $58
	ld b, c                                          ; $628d: $41
	add hl, bc                                       ; $628e: $09
	ldh a, [hDisp1_OBP0]                                     ; $628f: $f0 $93
	ldh a, [$b4]                                     ; $6291: $f0 $b4
	ld e, b                                          ; $6293: $58
	ld b, c                                          ; $6294: $41
	add hl, bc                                       ; $6295: $09
	pop af                                           ; $6296: $f1
	ld e, h                                          ; $6297: $5c
	ldh a, [rAUD1HIGH]                               ; $6298: $f0 $14
	ldh a, [$0a]                                     ; $629a: $f0 $0a
	ldh a, [$cf]                                     ; $629c: $f0 $cf
	add hl, bc                                       ; $629e: $09
	pop af                                           ; $629f: $f1
	ld [hl], $f1                                     ; $62a0: $36 $f1
	pop af                                           ; $62a2: $f1
	ldh a, [$31]                                     ; $62a3: $f0 $31
	ldh a, [$ad]                                     ; $62a5: $f0 $ad
	add hl, bc                                       ; $62a7: $09
	ld l, l                                          ; $62a8: $6d
	ldh a, [rTIMA]                                   ; $62a9: $f0 $05
	ldh a, [c]                                       ; $62ab: $f2
	inc d                                            ; $62ac: $14
	pop af                                           ; $62ad: $f1
	rst AddAOntoHL                                          ; $62ae: $ef
	add hl, bc                                       ; $62af: $09
	jr c, jr_079_6320                                ; $62b0: $38 $6e

	ld b, h                                          ; $62b2: $44
	ld c, h                                          ; $62b3: $4c
	add hl, bc                                       ; $62b4: $09
	ld a, $7b                                        ; $62b5: $3e $7b
	ld d, b                                          ; $62b7: $50
	ld d, l                                          ; $62b8: $55
	add hl, bc                                       ; $62b9: $09
	ld a, [hl-]                                      ; $62ba: $3a
	ld b, c                                          ; $62bb: $41
	ld c, c                                          ; $62bc: $49
	add hl, bc                                       ; $62bd: $09
	pop af                                           ; $62be: $f1
	nop                                              ; $62bf: $00
	ld e, [hl]                                       ; $62c0: $5e
	ccf                                              ; $62c1: $3f
	add hl, bc                                       ; $62c2: $09
	ld d, h                                          ; $62c3: $54

jr_079_62c4:
	dec sp                                           ; $62c4: $3b
	ld h, c                                          ; $62c5: $61
	add hl, bc                                       ; $62c6: $09
	ld d, h                                          ; $62c7: $54
	ld b, d                                          ; $62c8: $42
	sbc [hl]                                         ; $62c9: $9e
	add hl, bc                                       ; $62ca: $09
	ldh a, [rSCY]                                    ; $62cb: $f0 $42
	ld e, c                                          ; $62cd: $59
	ld b, c                                          ; $62ce: $41
	add hl, bc                                       ; $62cf: $09
	ldh a, [c]                                       ; $62d0: $f2
	jr z, jr_079_62c4                                ; $62d1: $28 $f1

	ld l, $f0                                        ; $62d3: $2e $f0
	rst SubAFromDE                                          ; $62d5: $df
	add hl, bc                                       ; $62d6: $09
	sbc b                                            ; $62d7: $98
	ldh a, [rWX]                                     ; $62d8: $f0 $4b
	ld e, c                                          ; $62da: $59
	add hl, bc                                       ; $62db: $09
	ldh a, [$a2]                                     ; $62dc: $f0 $a2
	ldh a, [rAUDTERM]                                ; $62de: $f0 $25
	ldh a, [hDisp1_SCX]                                     ; $62e0: $f0 $91
	add hl, bc                                       ; $62e2: $09
	ld b, b                                          ; $62e3: $40
	add hl, sp                                       ; $62e4: $39
	ld b, l                                          ; $62e5: $45
	add hl, bc                                       ; $62e6: $09
	pop af                                           ; $62e7: $f1
	add hl, hl                                       ; $62e8: $29
	ld a, $38                                        ; $62e9: $3e $38
	add hl, bc                                       ; $62eb: $09
	ld b, d                                          ; $62ec: $42
	dec sp                                           ; $62ed: $3b
	ccf                                              ; $62ee: $3f
	add hl, bc                                       ; $62ef: $09
	ldh a, [$a3]                                     ; $62f0: $f0 $a3
	ld e, b                                          ; $62f2: $58
	jr c, jr_079_62fe                                ; $62f3: $38 $09

	ld l, [hl]                                       ; $62f5: $6e
	dec sp                                           ; $62f6: $3b
	ld c, c                                          ; $62f7: $49
	add hl, bc                                       ; $62f8: $09
	ld d, h                                          ; $62f9: $54
	ld b, d                                          ; $62fa: $42
	ldh a, [$2a]                                     ; $62fb: $f0 $2a
	add hl, bc                                       ; $62fd: $09

jr_079_62fe:
	ldh a, [rAUD1LEN]                                ; $62fe: $f0 $11
	ldh a, [$3d]                                     ; $6300: $f0 $3d
	ldh a, [rSC]                                     ; $6302: $f0 $02
	add hl, bc                                       ; $6304: $09
	pop af                                           ; $6305: $f1
	ld l, $38                                        ; $6306: $2e $38
	dec a                                            ; $6308: $3d
	add hl, bc                                       ; $6309: $09
	add c                                            ; $630a: $81
	ld e, c                                          ; $630b: $59
	ldh a, [$03]                                     ; $630c: $f0 $03
	add hl, bc                                       ; $630e: $09
	ldh a, [rPCM34]                                  ; $630f: $f0 $77
	ldh a, [c]                                       ; $6311: $f2
	dec d                                            ; $6312: $15
	ldh a, [$df]                                     ; $6313: $f0 $df
	add hl, bc                                       ; $6315: $09
	ldh a, [c]                                       ; $6316: $f2
	ld a, [de]                                       ; $6317: $1a
	ldh a, [c]                                       ; $6318: $f2
	dec de                                           ; $6319: $1b
	ld a, a                                          ; $631a: $7f
	add hl, bc                                       ; $631b: $09
	pop af                                           ; $631c: $f1
	jp c, $2cf0                                      ; $631d: $da $f0 $2c

jr_079_6320:
	ldh a, [rLY]                                     ; $6320: $f0 $44
	add hl, bc                                       ; $6322: $09
	sub d                                            ; $6323: $92
	adc [hl]                                         ; $6324: $8e
	ld d, a                                          ; $6325: $57
	add hl, bc                                       ; $6326: $09
	pop af                                           ; $6327: $f1
	adc l                                            ; $6328: $8d
	ld a, $3f                                        ; $6329: $3e $3f
	add hl, bc                                       ; $632b: $09
	adc d                                            ; $632c: $8a
	ldh a, [$73]                                     ; $632d: $f0 $73
	ldh a, [$df]                                     ; $632f: $f0 $df
	add hl, bc                                       ; $6331: $09
	ldh a, [$d4]                                     ; $6332: $f0 $d4
	pop af                                           ; $6334: $f1
	add l                                            ; $6335: $85
	pop af                                           ; $6336: $f1
	inc bc                                           ; $6337: $03
	add hl, bc                                       ; $6338: $09
	ldh a, [rAUD2LOW]                                ; $6339: $f0 $18
	ldh a, [$dc]                                     ; $633b: $f0 $dc
	adc a                                            ; $633d: $8f
	add hl, bc                                       ; $633e: $09
	ld b, d                                          ; $633f: $42
	ldh a, [rSVBK]                                   ; $6340: $f0 $70
	ld b, a                                          ; $6342: $47
	add hl, bc                                       ; $6343: $09
	ldh a, [rP1]                                     ; $6344: $f0 $00
	pop af                                           ; $6346: $f1
	ld b, l                                          ; $6347: $45
	ldh a, [$27]                                     ; $6348: $f0 $27
	add hl, bc                                       ; $634a: $09
	ldh a, [$60]                                     ; $634b: $f0 $60
	ld [hl], l                                       ; $634d: $75
	ldh a, [$de]                                     ; $634e: $f0 $de
	add hl, bc                                       ; $6350: $09
	sub e                                            ; $6351: $93
	ldh a, [rSC]                                     ; $6352: $f0 $02
	ldh a, [rBCPD]                                   ; $6354: $f0 $69
	add hl, bc                                       ; $6356: $09
	pop af                                           ; $6357: $f1
	jp c, $cff1                                      ; $6358: $da $f1 $cf

	ldh a, [c]                                       ; $635b: $f2
	ld a, [hl+]                                      ; $635c: $2a
	add hl, bc                                       ; $635d: $09
	pop af                                           ; $635e: $f1
	dec e                                            ; $635f: $1d
	ld h, l                                          ; $6360: $65
	ldh a, [$2b]                                     ; $6361: $f0 $2b
	add hl, bc                                       ; $6363: $09
	ldh a, [$8a]                                     ; $6364: $f0 $8a
	ldh a, [c]                                       ; $6366: $f2
	xor e                                            ; $6367: $ab
	pop af                                           ; $6368: $f1
	ld c, h                                          ; $6369: $4c
	add hl, bc                                       ; $636a: $09
	pop af                                           ; $636b: $f1
	add l                                            ; $636c: $85
	pop af                                           ; $636d: $f1
	and h                                            ; $636e: $a4
	ld b, l                                          ; $636f: $45
	add hl, bc                                       ; $6370: $09
	ldh a, [rP1]                                     ; $6371: $f0 $00
	ldh a, [$8e]                                     ; $6373: $f0 $8e
	ld l, c                                          ; $6375: $69
	add hl, bc                                       ; $6376: $09
	adc e                                            ; $6377: $8b
	ldh a, [$72]                                     ; $6378: $f0 $72
	ldh a, [rRP]                                     ; $637a: $f0 $56
	add hl, bc                                       ; $637c: $09
	ldh a, [rAUD3ENA]                                ; $637d: $f0 $1a
	ld e, c                                          ; $637f: $59
	ldh a, [$32]                                     ; $6380: $f0 $32
	add hl, bc                                       ; $6382: $09
	ldh a, [rSCX]                                    ; $6383: $f0 $43
	pop af                                           ; $6385: $f1
	jr nz, @-$0d                                     ; $6386: $20 $f1

	inc e                                            ; $6388: $1c
	add hl, bc                                       ; $6389: $09
	adc d                                            ; $638a: $8a
	ldh a, [$37]                                     ; $638b: $f0 $37
	ldh a, [$3a]                                     ; $638d: $f0 $3a
	add hl, bc                                       ; $638f: $09
	pop af                                           ; $6390: $f1
	set 6, d                                         ; $6391: $cb $f2
	jr nz, jr_079_63e8                               ; $6393: $20 $53

	add hl, bc                                       ; $6395: $09
	adc b                                            ; $6396: $88
	ld l, b                                          ; $6397: $68
	ld c, e                                          ; $6398: $4b
	add hl, bc                                       ; $6399: $09
	ldh a, [$1f]                                     ; $639a: $f0 $1f
	ldh a, [rAUD3LOW]                                ; $639c: $f0 $1d
	ld h, l                                          ; $639e: $65
	add hl, bc                                       ; $639f: $09
	ld h, h                                          ; $63a0: $64
	sbc [hl]                                         ; $63a1: $9e
	ld c, a                                          ; $63a2: $4f
	add hl, bc                                       ; $63a3: $09
	ld b, [hl]                                       ; $63a4: $46
	ld c, l                                          ; $63a5: $4d
	dec sp                                           ; $63a6: $3b
	add hl, bc                                       ; $63a7: $09
	di                                               ; $63a8: $f3
	ld h, e                                          ; $63a9: $63
	di                                               ; $63aa: $f3
	dec bc                                           ; $63ab: $0b
	ldh a, [rAUD2LEN]                                ; $63ac: $f0 $16
	add hl, bc                                       ; $63ae: $09
	ldh a, [$99]                                     ; $63af: $f0 $99
	sub b                                            ; $63b1: $90
	ld c, e                                          ; $63b2: $4b
	add hl, bc                                       ; $63b3: $09
	ld l, e                                          ; $63b4: $6b
	ldh a, [$0d]                                     ; $63b5: $f0 $0d
	ldh a, [rLCDC]                                   ; $63b7: $f0 $40
	add hl, bc                                       ; $63b9: $09
	ld l, l                                          ; $63ba: $6d
	ldh a, [$0d]                                     ; $63bb: $f0 $0d
	ld [hl], d                                       ; $63bd: $72
	add hl, bc                                       ; $63be: $09
	ldh a, [$1f]                                     ; $63bf: $f0 $1f
	ld [hl], e                                       ; $63c1: $73
	sub e                                            ; $63c2: $93
	add hl, bc                                       ; $63c3: $09
	ld b, b                                          ; $63c4: $40
	ld c, l                                          ; $63c5: $4d
	pop af                                           ; $63c6: $f1
	rst SubAFromHL                                          ; $63c7: $d7
	add hl, bc                                       ; $63c8: $09
	ldh a, [hDisp0_OBP0]                                     ; $63c9: $f0 $86
	add d                                            ; $63cb: $82
	pop af                                           ; $63cc: $f1
	adc h                                            ; $63cd: $8c
	add hl, bc                                       ; $63ce: $09
	ld l, l                                          ; $63cf: $6d
	ldh a, [$0d]                                     ; $63d0: $f0 $0d
	ldh a, [rLCDC]                                   ; $63d2: $f0 $40
	add hl, bc                                       ; $63d4: $09
	ldh a, [c]                                       ; $63d5: $f2
	rst $38                                          ; $63d6: $ff
	ldh a, [c]                                       ; $63d7: $f2
	cp a                                             ; $63d8: $bf
	pop af                                           ; $63d9: $f1
	ld l, b                                          ; $63da: $68
	add hl, bc                                       ; $63db: $09
	ldh a, [$7b]                                     ; $63dc: $f0 $7b
	ld [hl], e                                       ; $63de: $73
	ld l, c                                          ; $63df: $69
	add hl, bc                                       ; $63e0: $09
	ldh a, [$33]                                     ; $63e1: $f0 $33
	ldh a, [$2e]                                     ; $63e3: $f0 $2e
	pop af                                           ; $63e5: $f1
	ld l, d                                          ; $63e6: $6a
	add hl, bc                                       ; $63e7: $09

jr_079_63e8:
	pop af                                           ; $63e8: $f1
	rst FarCall                                          ; $63e9: $f7
	pop af                                           ; $63ea: $f1
	ld c, [hl]                                       ; $63eb: $4e
	pop af                                           ; $63ec: $f1
	ld l, b                                          ; $63ed: $68
	add hl, bc                                       ; $63ee: $09
	ldh a, [$6e]                                     ; $63ef: $f0 $6e
	ld e, c                                          ; $63f1: $59
	ldh a, [$03]                                     ; $63f2: $f0 $03
	add hl, bc                                       ; $63f4: $09
	ld l, e                                          ; $63f5: $6b
	ldh a, [$0d]                                     ; $63f6: $f0 $0d
	ld a, b                                          ; $63f8: $78
	add hl, bc                                       ; $63f9: $09
	adc d                                            ; $63fa: $8a
	ldh a, [$73]                                     ; $63fb: $f0 $73
	pop af                                           ; $63fd: $f1
	ld l, b                                          ; $63fe: $68
	add hl, bc                                       ; $63ff: $09
	pop af                                           ; $6400: $f1
	inc a                                            ; $6401: $3c
	sub c                                            ; $6402: $91
	ldh a, [$a5]                                     ; $6403: $f0 $a5
	add hl, bc                                       ; $6405: $09
	ldh a, [rOCPD]                                   ; $6406: $f0 $6b
	ldh a, [$a0]                                     ; $6408: $f0 $a0
	ld a, l                                          ; $640a: $7d
	add hl, bc                                       ; $640b: $09
	ldh a, [c]                                       ; $640c: $f2
	ld b, h                                          ; $640d: $44
	ld [hl], e                                       ; $640e: $73
	ld l, c                                          ; $640f: $69
	add hl, bc                                       ; $6410: $09
	ldh a, [$80]                                     ; $6411: $f0 $80
	ldh a, [$c5]                                     ; $6413: $f0 $c5
	ld a, a                                          ; $6415: $7f
	add hl, bc                                       ; $6416: $09
	adc c                                            ; $6417: $89
	ldh a, [rLY]                                     ; $6418: $f0 $44
	pop af                                           ; $641a: $f1
	inc e                                            ; $641b: $1c
	add hl, bc                                       ; $641c: $09
	ldh a, [$67]                                     ; $641d: $f0 $67
	ldh a, [$9f]                                     ; $641f: $f0 $9f
	ldh a, [$a5]                                     ; $6421: $f0 $a5
	add hl, bc                                       ; $6423: $09
	or $02                                           ; $6424: $f6 $02
	pop af                                           ; $6426: $f1
	ld [hl], c                                       ; $6427: $71
	adc h                                            ; $6428: $8c
	add hl, bc                                       ; $6429: $09
	ldh a, [rIF]                                     ; $642a: $f0 $0f
	ld h, l                                          ; $642c: $65
	ldh a, [$f2]                                     ; $642d: $f0 $f2
	add hl, bc                                       ; $642f: $09
	di                                               ; $6430: $f3
	ld l, h                                          ; $6431: $6c
	di                                               ; $6432: $f3
	add hl, sp                                       ; $6433: $39
	pop af                                           ; $6434: $f1
	inc bc                                           ; $6435: $03
	add hl, bc                                       ; $6436: $09
	di                                               ; $6437: $f3
	and [hl]                                         ; $6438: $a6
	ldh a, [$6d]                                     ; $6439: $f0 $6d
	ldh a, [rDIV]                                    ; $643b: $f0 $04
	add hl, bc                                       ; $643d: $09
	ldh a, [rDIV]                                    ; $643e: $f0 $04
	ld a, l                                          ; $6440: $7d
	add c                                            ; $6441: $81
	add hl, bc                                       ; $6442: $09
	pop af                                           ; $6443: $f1
	inc a                                            ; $6444: $3c
	sub c                                            ; $6445: $91
	ldh a, [$b7]                                     ; $6446: $f0 $b7
	add hl, bc                                       ; $6448: $09
	ldh a, [rIF]                                     ; $6449: $f0 $0f
	sub e                                            ; $644b: $93
	ld [hl], e                                       ; $644c: $73
	add hl, bc                                       ; $644d: $09
	ldh a, [c]                                       ; $644e: $f2
	inc e                                            ; $644f: $1c
	pop af                                           ; $6450: $f1
	xor h                                            ; $6451: $ac
	pop af                                           ; $6452: $f1
	or h                                             ; $6453: $b4
	add hl, bc                                       ; $6454: $09
	ldh a, [c]                                       ; $6455: $f2
	add hl, hl                                       ; $6456: $29
	ldh a, [$15]                                     ; $6457: $f0 $15
	di                                               ; $6459: $f3
	rst JumpTable                                          ; $645a: $c7
	add hl, bc                                       ; $645b: $09
	ldh a, [rAUD1LEN]                                ; $645c: $f0 $11
	ld e, c                                          ; $645e: $59
	ldh a, [$32]                                     ; $645f: $f0 $32
	add hl, bc                                       ; $6461: $09
	pop af                                           ; $6462: $f1
	db $db                                           ; $6463: $db
	ldh a, [$7f]                                     ; $6464: $f0 $7f
	pop af                                           ; $6466: $f1
	inc bc                                           ; $6467: $03
	add hl, bc                                       ; $6468: $09
	ld l, c                                          ; $6469: $69
	ld a, l                                          ; $646a: $7d
	ld [hl], l                                       ; $646b: $75
	add hl, bc                                       ; $646c: $09
	ldh a, [rOBP1]                                   ; $646d: $f0 $49
	ldh a, [$59]                                     ; $646f: $f0 $59
	ld a, [hl]                                       ; $6471: $7e
	add hl, bc                                       ; $6472: $09
	pop af                                           ; $6473: $f1
	ld c, c                                          ; $6474: $49
	ldh a, [$9d]                                     ; $6475: $f0 $9d
	ld h, l                                          ; $6477: $65
	add hl, bc                                       ; $6478: $09
	ldh a, [hDisp0_OBP0]                                     ; $6479: $f0 $86
	pop af                                           ; $647b: $f1
	scf                                              ; $647c: $37
	ld e, c                                          ; $647d: $59
	add hl, bc                                       ; $647e: $09
	ldh a, [rAUD4LEN]                                ; $647f: $f0 $20
	ld e, c                                          ; $6481: $59
	ld h, l                                          ; $6482: $65
	add hl, bc                                       ; $6483: $09
	ldh a, [$67]                                     ; $6484: $f0 $67
	push af                                          ; $6486: $f5
	ei                                               ; $6487: $fb
	pop af                                           ; $6488: $f1
	ld [hl], c                                       ; $6489: $71
	add hl, bc                                       ; $648a: $09
	pop af                                           ; $648b: $f1
	inc hl                                           ; $648c: $23
	ld [hl], e                                       ; $648d: $73
	ld l, c                                          ; $648e: $69
	add hl, bc                                       ; $648f: $09
	add a                                            ; $6490: $87
	add h                                            ; $6491: $84
	ld e, c                                          ; $6492: $59
	add hl, bc                                       ; $6493: $09
	ldh a, [$03]                                     ; $6494: $f0 $03
	ld e, c                                          ; $6496: $59
	pop af                                           ; $6497: $f1
	ld b, l                                          ; $6498: $45
	add hl, bc                                       ; $6499: $09
	db $f4                                           ; $649a: $f4
	and a                                            ; $649b: $a7
	ldh a, [$65]                                     ; $649c: $f0 $65
	ldh a, [rAUD1LOW]                                ; $649e: $f0 $13
	add hl, bc                                       ; $64a0: $09
	ldh a, [rOCPD]                                   ; $64a1: $f0 $6b
	ld h, l                                          ; $64a3: $65
	ld l, c                                          ; $64a4: $69
	add hl, bc                                       ; $64a5: $09
	ld l, d                                          ; $64a6: $6a
	ld b, d                                          ; $64a7: $42
	db $f4                                           ; $64a8: $f4
	pop hl                                           ; $64a9: $e1
	add hl, bc                                       ; $64aa: $09
	ld b, h                                          ; $64ab: $44
	dec sp                                           ; $64ac: $3b
	ccf                                              ; $64ad: $3f
	add hl, bc                                       ; $64ae: $09
	pop af                                           ; $64af: $f1
	ld b, b                                          ; $64b0: $40
	ld [hl], e                                       ; $64b1: $73
	ldh a, [$2b]                                     ; $64b2: $f0 $2b
	add hl, bc                                       ; $64b4: $09
	ld e, b                                          ; $64b5: $58
	ld b, [hl]                                       ; $64b6: $46
	ccf                                              ; $64b7: $3f
	add hl, bc                                       ; $64b8: $09
	ldh a, [rAUD3ENA]                                ; $64b9: $f0 $1a
	ld e, c                                          ; $64bb: $59
	ld a, l                                          ; $64bc: $7d
	add hl, bc                                       ; $64bd: $09
	ldh a, [rIF]                                     ; $64be: $f0 $0f
	ld [hl], e                                       ; $64c0: $73
	ld l, c                                          ; $64c1: $69
	add hl, bc                                       ; $64c2: $09
	ldh a, [rAUD1ENV]                                ; $64c3: $f0 $12
	pop af                                           ; $64c5: $f1
	ld a, [bc]                                       ; $64c6: $0a
	pop af                                           ; $64c7: $f1
	ld [hl], d                                       ; $64c8: $72
	add hl, bc                                       ; $64c9: $09
	ld e, h                                          ; $64ca: $5c
	ld c, l                                          ; $64cb: $4d
	jr c, @+$0b                                      ; $64cc: $38 $09

	pop af                                           ; $64ce: $f1
	pop hl                                           ; $64cf: $e1
	ld d, a                                          ; $64d0: $57
	ldh a, [c]                                       ; $64d1: $f2
	or h                                             ; $64d2: $b4
	add hl, bc                                       ; $64d3: $09
	ldh a, [$79]                                     ; $64d4: $f0 $79
	ldh a, [$d7]                                     ; $64d6: $f0 $d7
	ld l, b                                          ; $64d8: $68
	add hl, bc                                       ; $64d9: $09
	ldh a, [rAUD3LEN]                                ; $64da: $f0 $1b
	ldh a, [$15]                                     ; $64dc: $f0 $15
	ld l, b                                          ; $64de: $68
	add hl, bc                                       ; $64df: $09
	ld h, h                                          ; $64e0: $64
	pop af                                           ; $64e1: $f1
	ccf                                              ; $64e2: $3f
	ldh a, [hDisp0_OBP1]                                     ; $64e3: $f0 $87
	add hl, bc                                       ; $64e5: $09
	ld b, [hl]                                       ; $64e6: $46
	ld b, d                                          ; $64e7: $42
	ld c, b                                          ; $64e8: $48
	add hl, bc                                       ; $64e9: $09
	pop af                                           ; $64ea: $f1
	sbc $3b                                          ; $64eb: $de $3b
	dec a                                            ; $64ed: $3d
	add hl, bc                                       ; $64ee: $09
	ldh a, [$b5]                                     ; $64ef: $f0 $b5
	inc a                                            ; $64f1: $3c

Call_079_64f2:
	ld d, a                                          ; $64f2: $57
	add hl, bc                                       ; $64f3: $09
	ldh a, [$7d]                                     ; $64f4: $f0 $7d
	ld l, b                                          ; $64f6: $68
	ldh a, [hDisp1_BGP]                                     ; $64f7: $f0 $92
	add hl, bc                                       ; $64f9: $09
	ldh a, [$0a]                                     ; $64fa: $f0 $0a
	pop af                                           ; $64fc: $f1
	and b                                            ; $64fd: $a0
	ldh a, [rAUD2ENV]                                ; $64fe: $f0 $17
	add hl, bc                                       ; $6500: $09
	ldh a, [$b3]                                     ; $6501: $f0 $b3
	ld e, b                                          ; $6503: $58
	ld b, c                                          ; $6504: $41
	add hl, bc                                       ; $6505: $09
	ldh a, [$31]                                     ; $6506: $f0 $31
	ldh a, [$ad]                                     ; $6508: $f0 $ad
	ldh a, [$65]                                     ; $650a: $f0 $65
	add hl, bc                                       ; $650c: $09
	ld l, [hl]                                       ; $650d: $6e
	dec sp                                           ; $650e: $3b
	dec a                                            ; $650f: $3d
	add hl, bc                                       ; $6510: $09
	ldh a, [c]                                       ; $6511: $f2
	ld b, e                                          ; $6512: $43
	ldh a, [rTMA]                                    ; $6513: $f0 $06
	ldh a, [$fc]                                     ; $6515: $f0 $fc
	add hl, bc                                       ; $6517: $09
	ld l, d                                          ; $6518: $6a
	ld l, b                                          ; $6519: $68
	ld c, e                                          ; $651a: $4b
	add hl, bc                                       ; $651b: $09
	ld a, d                                          ; $651c: $7a
	ld c, [hl]                                       ; $651d: $4e
	inc a                                            ; $651e: $3c
	add hl, bc                                       ; $651f: $09
	jr c, jr_079_655a                                ; $6520: $38 $38

	ld e, [hl]                                       ; $6522: $5e
	add hl, bc                                       ; $6523: $09
	ld b, [hl]                                       ; $6524: $46
	ld c, l                                          ; $6525: $4d
	ld [hl], $09                                     ; $6526: $36 $09
	sbc e                                            ; $6528: $9b
	ldh a, [$0e]                                     ; $6529: $f0 $0e
	ld b, a                                          ; $652b: $47
	add hl, bc                                       ; $652c: $09
	ldh a, [$a6]                                     ; $652d: $f0 $a6
	ldh a, [$2b]                                     ; $652f: $f0 $2b
	ldh a, [$7c]                                     ; $6531: $f0 $7c
	add hl, bc                                       ; $6533: $09
	ldh a, [$67]                                     ; $6534: $f0 $67
	ldh a, [rTAC]                                    ; $6536: $f0 $07
	add hl, bc                                       ; $6538: $09
	ldh a, [rOBP1]                                   ; $6539: $f0 $49
	ldh a, [$59]                                     ; $653b: $f0 $59
	add hl, bc                                       ; $653d: $09
	ldh a, [$b8]                                     ; $653e: $f0 $b8
	ldh a, [$73]                                     ; $6540: $f0 $73
	add hl, bc                                       ; $6542: $09


TextLargeDict_560::
	ldh a, [$5f]                                     ; $6543: $f0 $5f
	ldh a, [rAUD1ENV]                                ; $6545: $f0 $12
	add hl, bc                                       ; $6547: $09


;
	ld l, e                                          ; $6548: $6b
	ldh a, [$0d]                                     ; $6549: $f0 $0d
	add hl, bc                                       ; $654b: $09
	ldh a, [$f9]                                     ; $654c: $f0 $f9
	ldh a, [rSTAT]                                   ; $654e: $f0 $41
	add hl, bc                                       ; $6550: $09
	ldh a, [$80]                                     ; $6551: $f0 $80
	ldh a, [c]                                       ; $6553: $f2
	ld b, [hl]                                       ; $6554: $46
	add hl, bc                                       ; $6555: $09
	ldh a, [rVBK]                                    ; $6556: $f0 $4f
	ldh a, [$b0]                                     ; $6558: $f0 $b0

jr_079_655a:
	add hl, bc                                       ; $655a: $09
	ldh a, [$78]                                     ; $655b: $f0 $78
	ldh a, [rOBP0]                                   ; $655d: $f0 $48
	add hl, bc                                       ; $655f: $09
	ldh a, [$a9]                                     ; $6560: $f0 $a9
	ldh a, [$d1]                                     ; $6562: $f0 $d1
	add hl, bc                                       ; $6564: $09
	adc h                                            ; $6565: $8c
	pop af                                           ; $6566: $f1
	ld e, [hl]                                       ; $6567: $5e
	add hl, bc                                       ; $6568: $09
	ldh a, [rIE]                                     ; $6569: $f0 $ff
	ldh a, [$0b]                                     ; $656b: $f0 $0b
	add hl, bc                                       ; $656d: $09
	add h                                            ; $656e: $84
	ld a, a                                          ; $656f: $7f
	add hl, bc                                       ; $6570: $09
	pop af                                           ; $6571: $f1
	inc a                                            ; $6572: $3c
	pop af                                           ; $6573: $f1
	ldh [$09], a                                     ; $6574: $e0 $09
	add a                                            ; $6576: $87
	pop af                                           ; $6577: $f1
	ld e, c                                          ; $6578: $59
	add hl, bc                                       ; $6579: $09
	pop af                                           ; $657a: $f1
	ret                                              ; $657b: $c9


	jr c, jr_079_6587                                ; $657c: $38 $09

	pop af                                           ; $657e: $f1
	ld h, h                                          ; $657f: $64
	pop af                                           ; $6580: $f1
	ld d, c                                          ; $6581: $51
	add hl, bc                                       ; $6582: $09
	ld [hl-], a                                      ; $6583: $32
	ld l, d                                          ; $6584: $6a
	add hl, bc                                       ; $6585: $09
	ld a, a                                          ; $6586: $7f

jr_079_6587:
	ldh a, [rHDMA1]                                  ; $6587: $f0 $51
	add hl, bc                                       ; $6589: $09
	pop af                                           ; $658a: $f1
	add e                                            ; $658b: $83
	ldh a, [c]                                       ; $658c: $f2
	ld d, a                                          ; $658d: $57
	add hl, bc                                       ; $658e: $09


TextLargeDict_571_Name::
	ldh a, [$fb]                                     ; $658f: $f0 $fb
	sbc [hl]                                         ; $6591: $9e
	add hl, bc                                       ; $6592: $09


;
	ld l, l                                          ; $6593: $6d
	ldh a, [rDMA]                                    ; $6594: $f0 $46
	add hl, bc                                       ; $6596: $09
	ldh a, [c]                                       ; $6597: $f2
	ld l, a                                          ; $6598: $6f
	ldh a, [rTAC]                                    ; $6599: $f0 $07
	add hl, bc                                       ; $659b: $09
	ldh a, [c]                                       ; $659c: $f2
	add l                                            ; $659d: $85
	ldh a, [hDisp1_WY]                                     ; $659e: $f0 $95
	add hl, bc                                       ; $65a0: $09
	ldh a, [rSCX]                                    ; $65a1: $f0 $43
	db $f4                                           ; $65a3: $f4
	ld d, c                                          ; $65a4: $51
	add hl, bc                                       ; $65a5: $09
	pop af                                           ; $65a6: $f1
	inc de                                           ; $65a7: $13
	ldh a, [rAUDVOL]                                 ; $65a8: $f0 $24
	add hl, bc                                       ; $65aa: $09
	ldh a, [$78]                                     ; $65ab: $f0 $78
	pop af                                           ; $65ad: $f1
	ld c, h                                          ; $65ae: $4c
	add hl, bc                                       ; $65af: $09
	pop af                                           ; $65b0: $f1
	reti                                             ; $65b1: $d9


	ldh a, [$0b]                                     ; $65b2: $f0 $0b
	add hl, bc                                       ; $65b4: $09
	pop af                                           ; $65b5: $f1
	rlca                                             ; $65b6: $07
	ldh a, [hDisp0_LCDC]                                     ; $65b7: $f0 $82
	add hl, bc                                       ; $65b9: $09
	ldh a, [rPCM34]                                  ; $65ba: $f0 $77
	ldh a, [hDisp1_SCY]                                     ; $65bc: $f0 $90
	add hl, bc                                       ; $65be: $09
	ldh a, [hDisp0_BGP]                                     ; $65bf: $f0 $85
	ld h, a                                          ; $65c1: $67
	add hl, bc                                       ; $65c2: $09
	ldh a, [c]                                       ; $65c3: $f2
	inc e                                            ; $65c4: $1c
	pop af                                           ; $65c5: $f1
	xor h                                            ; $65c6: $ac
	add hl, bc                                       ; $65c7: $09
	ldh a, [$3d]                                     ; $65c8: $f0 $3d
	ld a, l                                          ; $65ca: $7d
	add hl, bc                                       ; $65cb: $09
	pop af                                           ; $65cc: $f1
	add a                                            ; $65cd: $87
	ldh a, [$63]                                     ; $65ce: $f0 $63
	add hl, bc                                       ; $65d0: $09
	pop af                                           ; $65d1: $f1
	ret c                                            ; $65d2: $d8

	ldh a, [c]                                       ; $65d3: $f2
	ld de, $f009                                     ; $65d4: $11 $09 $f0
	dec bc                                           ; $65d7: $0b
	ldh a, [c]                                       ; $65d8: $f2
	ld a, [bc]                                       ; $65d9: $0a
	add hl, bc                                       ; $65da: $09
	pop af                                           ; $65db: $f1
	daa                                              ; $65dc: $27
	ld e, c                                          ; $65dd: $59
	add hl, bc                                       ; $65de: $09
	ldh a, [$da]                                     ; $65df: $f0 $da
	ldh a, [rLYC]                                    ; $65e1: $f0 $45
	add hl, bc                                       ; $65e3: $09
	pop af                                           ; $65e4: $f1
	or l                                             ; $65e5: $b5
	ld a, h                                          ; $65e6: $7c
	add hl, bc                                       ; $65e7: $09
	pop af                                           ; $65e8: $f1
	add l                                            ; $65e9: $85
	pop af                                           ; $65ea: $f1
	and h                                            ; $65eb: $a4
	add hl, bc                                       ; $65ec: $09
	sbc e                                            ; $65ed: $9b
	ldh a, [rAUDTERM]                                ; $65ee: $f0 $25
	add hl, bc                                       ; $65f0: $09
	pop af                                           ; $65f1: $f1
	ld h, e                                          ; $65f2: $63
	ldh a, [rOBP0]                                   ; $65f3: $f0 $48
	add hl, bc                                       ; $65f5: $09
	ldh a, [$c0]                                     ; $65f6: $f0 $c0
	ldh a, [hDisp1_WY]                                     ; $65f8: $f0 $95
	add hl, bc                                       ; $65fa: $09
	ldh a, [rOBP1]                                   ; $65fb: $f0 $49
	adc a                                            ; $65fd: $8f
	add hl, bc                                       ; $65fe: $09
	pop af                                           ; $65ff: $f1
	ld d, b                                          ; $6600: $50
	ldh a, [c]                                       ; $6601: $f2
	dec h                                            ; $6602: $25
	add hl, bc                                       ; $6603: $09
	ldh a, [c]                                       ; $6604: $f2
	ld e, a                                          ; $6605: $5f
	ldh a, [c]                                       ; $6606: $f2
	ld h, b                                          ; $6607: $60
	add hl, bc                                       ; $6608: $09
	ldh a, [c]                                       ; $6609: $f2
	sbc e                                            ; $660a: $9b
	ldh a, [c]                                       ; $660b: $f2
	adc e                                            ; $660c: $8b
	add hl, bc                                       ; $660d: $09
	add h                                            ; $660e: $84
	di                                               ; $660f: $f3
	ld h, d                                          ; $6610: $62
	add hl, bc                                       ; $6611: $09
	ldh a, [hDisp0_OBP0]                                     ; $6612: $f0 $86
	pop af                                           ; $6614: $f1
	scf                                              ; $6615: $37
	add hl, bc                                       ; $6616: $09
	db $f4                                           ; $6617: $f4
	ldh [c], a                                       ; $6618: $e2
	di                                               ; $6619: $f3
	dec bc                                           ; $661a: $0b
	add hl, bc                                       ; $661b: $09
	pop af                                           ; $661c: $f1
	sub l                                            ; $661d: $95
	ldh a, [$63]                                     ; $661e: $f0 $63
	add hl, bc                                       ; $6620: $09
	pop af                                           ; $6621: $f1
	add h                                            ; $6622: $84
	adc c                                            ; $6623: $89
	add hl, bc                                       ; $6624: $09
	pop af                                           ; $6625: $f1
	ld e, l                                          ; $6626: $5d
	pop af                                           ; $6627: $f1
	and a                                            ; $6628: $a7
	add hl, bc                                       ; $6629: $09
	ldh a, [$a6]                                     ; $662a: $f0 $a6
	ldh a, [$2f]                                     ; $662c: $f0 $2f
	add hl, bc                                       ; $662e: $09
	ldh a, [$a9]                                     ; $662f: $f0 $a9
	db $f4                                           ; $6631: $f4
	dec sp                                           ; $6632: $3b
	add hl, bc                                       ; $6633: $09
	ldh a, [$31]                                     ; $6634: $f0 $31
	ldh a, [c]                                       ; $6636: $f2
	or [hl]                                          ; $6637: $b6
	add hl, bc                                       ; $6638: $09
	pop af                                           ; $6639: $f1
	xor e                                            ; $663a: $ab
	db $f4                                           ; $663b: $f4
	ld [hl], $09                                     ; $663c: $36 $09
	ldh a, [c]                                       ; $663e: $f2
	call nc, $02f2                                   ; $663f: $d4 $f2 $02
	add hl, bc                                       ; $6642: $09
	ld l, b                                          ; $6643: $68
	adc b                                            ; $6644: $88
	add hl, bc                                       ; $6645: $09
	ldh a, [c]                                       ; $6646: $f2
	ld hl, $33f2                                     ; $6647: $21 $f2 $33
	add hl, bc                                       ; $664a: $09
	pop af                                           ; $664b: $f1
	ldh [c], a                                       ; $664c: $e2
	pop af                                           ; $664d: $f1
	rst $38                                          ; $664e: $ff
	add hl, bc                                       ; $664f: $09
	ldh a, [$f6]                                     ; $6650: $f0 $f6
	ldh a, [c]                                       ; $6652: $f2
	and $09                                          ; $6653: $e6 $09
	ldh a, [$fa]                                     ; $6655: $f0 $fa
	pop af                                           ; $6657: $f1
	ld l, $09                                        ; $6658: $2e $09
	ldh a, [rOBP1]                                   ; $665a: $f0 $49
	pop af                                           ; $665c: $f1
	ld c, [hl]                                       ; $665d: $4e
	add hl, bc                                       ; $665e: $09
	ldh a, [$65]                                     ; $665f: $f0 $65
	pop af                                           ; $6661: $f1
	xor a                                            ; $6662: $af
	add hl, bc                                       ; $6663: $09
	pop af                                           ; $6664: $f1
	inc hl                                           ; $6665: $23
	ld e, c                                          ; $6666: $59
	add hl, bc                                       ; $6667: $09
	ld l, e                                          ; $6668: $6b
	pop af                                           ; $6669: $f1
	ld sp, hl                                        ; $666a: $f9
	add hl, bc                                       ; $666b: $09
	ldh a, [$ac]                                     ; $666c: $f0 $ac
	ldh a, [c]                                       ; $666e: $f2
	ld b, d                                          ; $666f: $42
	add hl, bc                                       ; $6670: $09
	ldh a, [$b7]                                     ; $6671: $f0 $b7
	sbc d                                            ; $6673: $9a
	add hl, bc                                       ; $6674: $09
	ldh a, [$ed]                                     ; $6675: $f0 $ed
	ldh a, [$fb]                                     ; $6677: $f0 $fb
	add hl, bc                                       ; $6679: $09
	ldh a, [$78]                                     ; $667a: $f0 $78
	ldh a, [c]                                       ; $667c: $f2
	inc c                                            ; $667d: $0c
	add hl, bc                                       ; $667e: $09
	sub h                                            ; $667f: $94
	ldh a, [rDMA]                                    ; $6680: $f0 $46
	add hl, bc                                       ; $6682: $09
	ldh a, [rAUDTERM]                                ; $6683: $f0 $25
	ldh a, [rAUD2HIGH]                               ; $6685: $f0 $19
	add hl, bc                                       ; $6687: $09
	di                                               ; $6688: $f3
	inc sp                                           ; $6689: $33
	ldh a, [c]                                       ; $668a: $f2
	ld a, [hl+]                                      ; $668b: $2a
	add hl, bc                                       ; $668c: $09
	ldh a, [c]                                       ; $668d: $f2
	ld d, b                                          ; $668e: $50
	ldh a, [c]                                       ; $668f: $f2
	cpl                                              ; $6690: $2f
	add hl, bc                                       ; $6691: $09
	pop af                                           ; $6692: $f1

jr_079_6693:
	or a                                             ; $6693: $b7
	pop af                                           ; $6694: $f1
	add $09                                          ; $6695: $c6 $09
	sbc e                                            ; $6697: $9b
	ldh a, [$0e]                                     ; $6698: $f0 $0e
	add hl, bc                                       ; $669a: $09
	pop af                                           ; $669b: $f1
	call nc, $0df0                                   ; $669c: $d4 $f0 $0d
	add hl, bc                                       ; $669f: $09
	db $f4                                           ; $66a0: $f4
	jr nc, jr_079_6693                               ; $66a1: $30 $f0

	ld a, b                                          ; $66a3: $78
	add hl, bc                                       ; $66a4: $09
	ldh a, [rAUD2LOW]                                ; $66a5: $f0 $18
	db $f4                                           ; $66a7: $f4
	dec hl                                           ; $66a8: $2b
	add hl, bc                                       ; $66a9: $09
	ldh a, [c]                                       ; $66aa: $f2
	adc $f0                                          ; $66ab: $ce $f0
	add hl, de                                       ; $66ad: $19
	add hl, bc                                       ; $66ae: $09
	ldh a, [rAUD4ENV]                                ; $66af: $f0 $21
	ldh a, [c]                                       ; $66b1: $f2
	ld [de], a                                       ; $66b2: $12
	add hl, bc                                       ; $66b3: $09
	ldh a, [c]                                       ; $66b4: $f2
	sbc c                                            ; $66b5: $99
	ldh a, [$38]                                     ; $66b6: $f0 $38
	add hl, bc                                       ; $66b8: $09
	push af                                          ; $66b9: $f5
	ld sp, hl                                        ; $66ba: $f9
	pop af                                           ; $66bb: $f1
	dec h                                            ; $66bc: $25
	add hl, bc                                       ; $66bd: $09
	pop af                                           ; $66be: $f1
	db $10                                           ; $66bf: $10
	di                                               ; $66c0: $f3
	adc [hl]                                         ; $66c1: $8e
	add hl, bc                                       ; $66c2: $09
	ldh a, [$b9]                                     ; $66c3: $f0 $b9
	ld a, h                                          ; $66c5: $7c
	add hl, bc                                       ; $66c6: $09
	ldh a, [$80]                                     ; $66c7: $f0 $80
	ldh a, [hDisp1_BGP]                                     ; $66c9: $f0 $92
	add hl, bc                                       ; $66cb: $09
	ldh a, [$2c]                                     ; $66cc: $f0 $2c
	ldh a, [$2d]                                     ; $66ce: $f0 $2d
	add hl, bc                                       ; $66d0: $09
	ldh a, [$bc]                                     ; $66d1: $f0 $bc
	ldh a, [rTIMA]                                   ; $66d3: $f0 $05
	add hl, bc                                       ; $66d5: $09
	ldh a, [rAUD2HIGH]                               ; $66d6: $f0 $19
	pop af                                           ; $66d8: $f1
	ld de, $f209                                     ; $66d9: $11 $09 $f2
	ldh [c], a                                       ; $66dc: $e2
	di                                               ; $66dd: $f3
	adc l                                            ; $66de: $8d
	add hl, bc                                       ; $66df: $09
	ld a, [hl]                                       ; $66e0: $7e
	ldh a, [rVBK]                                    ; $66e1: $f0 $4f
	add hl, bc                                       ; $66e3: $09
	ldh a, [c]                                       ; $66e4: $f2
	inc l                                            ; $66e5: $2c
	pop af                                           ; $66e6: $f1
	ld d, l                                          ; $66e7: $55
	add hl, bc                                       ; $66e8: $09
	pop af                                           ; $66e9: $f1
	cpl                                              ; $66ea: $2f
	ldh a, [$f0]                                     ; $66eb: $f0 $f0
	add hl, bc                                       ; $66ed: $09
	pop af                                           ; $66ee: $f1
	db $e3                                           ; $66ef: $e3
	ldh a, [$f1]                                     ; $66f0: $f0 $f1
	add hl, bc                                       ; $66f2: $09
	ld l, l                                          ; $66f3: $6d
	pop af                                           ; $66f4: $f1
	ld h, $09                                        ; $66f5: $26 $09
	ldh a, [$e6]                                     ; $66f7: $f0 $e6
	ldh a, [$ef]                                     ; $66f9: $f0 $ef
	add hl, bc                                       ; $66fb: $09
	pop af                                           ; $66fc: $f1
	xor [hl]                                         ; $66fd: $ae
	adc h                                            ; $66fe: $8c
	add hl, bc                                       ; $66ff: $09
	ldh a, [rLYC]                                    ; $6700: $f0 $45
	ld l, b                                          ; $6702: $68
	add hl, bc                                       ; $6703: $09
	ldh a, [$28]                                     ; $6704: $f0 $28
	ldh a, [c]                                       ; $6706: $f2
	cp b                                             ; $6707: $b8
	add hl, bc                                       ; $6708: $09
	ldh a, [$c0]                                     ; $6709: $f0 $c0
	ld [hl], d                                       ; $670b: $72
	add hl, bc                                       ; $670c: $09
	ld l, b                                          ; $670d: $68
	db $f4                                           ; $670e: $f4
	ldh [c], a                                       ; $670f: $e2
	add hl, bc                                       ; $6710: $09
	ldh a, [$f0]                                     ; $6711: $f0 $f0
	sub h                                            ; $6713: $94
	add hl, bc                                       ; $6714: $09
	di                                               ; $6715: $f3
	scf                                              ; $6716: $37
	ldh a, [$b3]                                     ; $6717: $f0 $b3
	add hl, bc                                       ; $6719: $09
	pop af                                           ; $671a: $f1
	rra                                              ; $671b: $1f
	ld l, b                                          ; $671c: $68
	add hl, bc                                       ; $671d: $09
	ldh a, [c]                                       ; $671e: $f2
	add c                                            ; $671f: $81
	ldh a, [c]                                       ; $6720: $f2
	ld l, b                                          ; $6721: $68
	add hl, bc                                       ; $6722: $09
	ldh a, [$fd]                                     ; $6723: $f0 $fd
	ld h, l                                          ; $6725: $65
	add hl, bc                                       ; $6726: $09
	ldh a, [rBCPD]                                   ; $6727: $f0 $69
	ld e, c                                          ; $6729: $59
	add hl, bc                                       ; $672a: $09
	ldh a, [rAUD3LEVEL]                              ; $672b: $f0 $1c
	ldh a, [$c1]                                     ; $672d: $f0 $c1
	add hl, bc                                       ; $672f: $09
	db $f4                                           ; $6730: $f4
	and l                                            ; $6731: $a5
	push af                                          ; $6732: $f5
	ld a, [$f309]                                    ; $6733: $fa $09 $f3
	rlca                                             ; $6736: $07
	ldh a, [c]                                       ; $6737: $f2
	db $e3                                           ; $6738: $e3
	add hl, bc                                       ; $6739: $09
	pop af                                           ; $673a: $f1
	and [hl]                                         ; $673b: $a6
	pop af                                           ; $673c: $f1
	call $f009                                       ; $673d: $cd $09 $f0
	and b                                            ; $6740: $a0
	ld h, l                                          ; $6741: $65
	add hl, bc                                       ; $6742: $09
	pop af                                           ; $6743: $f1
	ld d, e                                          ; $6744: $53
	ldh a, [$62]                                     ; $6745: $f0 $62
	add hl, bc                                       ; $6747: $09
	pop af                                           ; $6748: $f1
	add c                                            ; $6749: $81
	pop af                                           ; $674a: $f1
	ld l, $09                                        ; $674b: $2e $09
	di                                               ; $674d: $f3
	ld d, l                                          ; $674e: $55
	sbc d                                            ; $674f: $9a
	add hl, bc                                       ; $6750: $09
	ld l, a                                          ; $6751: $6f
	ld a, d                                          ; $6752: $7a
	add hl, bc                                       ; $6753: $09
	pop af                                           ; $6754: $f1
	rst GetHLinHL                                          ; $6755: $cf
	pop af                                           ; $6756: $f1
	rst SubAFromDE                                          ; $6757: $df
	add hl, bc                                       ; $6758: $09
	ldh a, [$e9]                                     ; $6759: $f0 $e9
	pop af                                           ; $675b: $f1
	xor h                                            ; $675c: $ac
	add hl, bc                                       ; $675d: $09
	ld a, a                                          ; $675e: $7f
	ldh a, [$b0]                                     ; $675f: $f0 $b0
	add hl, bc                                       ; $6761: $09
	ldh a, [c]                                       ; $6762: $f2
	or l                                             ; $6763: $b5
	ldh a, [$f5]                                     ; $6764: $f0 $f5
	add hl, bc                                       ; $6766: $09
	ldh a, [c]                                       ; $6767: $f2
	sbc h                                            ; $6768: $9c
	di                                               ; $6769: $f3
	sub $09                                          ; $676a: $d6 $09
	ldh a, [$6f]                                     ; $676c: $f0 $6f
	ldh a, [$e4]                                     ; $676e: $f0 $e4
	add hl, bc                                       ; $6770: $09
	ldh a, [rIE]                                     ; $6771: $f0 $ff
	di                                               ; $6773: $f3
	add sp, $09                                      ; $6774: $e8 $09
	ldh a, [$0b]                                     ; $6776: $f0 $0b
	ldh a, [hDisp1_WX]                                     ; $6778: $f0 $96
	add hl, bc                                       ; $677a: $09
	ldh a, [c]                                       ; $677b: $f2
	ld e, c                                          ; $677c: $59
	ld a, a                                          ; $677d: $7f
	add hl, bc                                       ; $677e: $09
	ldh a, [c]                                       ; $677f: $f2
	ld b, $f2                                        ; $6780: $06 $f2
	add hl, hl                                       ; $6782: $29
	add hl, bc                                       ; $6783: $09
	ldh a, [hDisp1_OBP1]                                     ; $6784: $f0 $94
	ldh a, [rVBK]                                    ; $6786: $f0 $4f
	add hl, bc                                       ; $6788: $09
	ldh a, [c]                                       ; $6789: $f2
	cp $f0                                           ; $678a: $fe $f0
	ld b, [hl]                                       ; $678c: $46

jr_079_678d:
	add hl, bc                                       ; $678d: $09
	di                                               ; $678e: $f3
	sub a                                            ; $678f: $97
	ldh a, [rTAC]                                    ; $6790: $f0 $07
	add hl, bc                                       ; $6792: $09
	add a                                            ; $6793: $87
	di                                               ; $6794: $f3
	ld [hl], $09                                     ; $6795: $36 $09
	pop af                                           ; $6797: $f1
	jr c, jr_079_678d                                ; $6798: $38 $f3

	ld l, [hl]                                       ; $679a: $6e
	add hl, bc                                       ; $679b: $09
	pop af                                           ; $679c: $f1
	ld d, e                                          ; $679d: $53
	ldh a, [c]                                       ; $679e: $f2
	add sp, $09                                      ; $679f: $e8 $09
	ldh a, [rAUD2LOW]                                ; $67a1: $f0 $18
	ldh a, [c]                                       ; $67a3: $f2
	and c                                            ; $67a4: $a1
	add hl, bc                                       ; $67a5: $09
	ldh a, [rVBK]                                    ; $67a6: $f0 $4f
	db $f4                                           ; $67a8: $f4
	cpl                                              ; $67a9: $2f
	add hl, bc                                       ; $67aa: $09
	pop af                                           ; $67ab: $f1
	adc [hl]                                         ; $67ac: $8e
	pop af                                           ; $67ad: $f1
	ld l, d                                          ; $67ae: $6a
	add hl, bc                                       ; $67af: $09
	ld [hl], d                                       ; $67b0: $72
	sub c                                            ; $67b1: $91
	add hl, bc                                       ; $67b2: $09
	pop af                                           ; $67b3: $f1
	ld a, [bc]                                       ; $67b4: $0a
	ldh a, [rAUD1LOW]                                ; $67b5: $f0 $13
	add hl, bc                                       ; $67b7: $09
	ldh a, [$db]                                     ; $67b8: $f0 $db
	ldh a, [c]                                       ; $67ba: $f2
	inc [hl]                                         ; $67bb: $34
	add hl, bc                                       ; $67bc: $09
	ld a, a                                          ; $67bd: $7f
	push af                                          ; $67be: $f5
	rst $38                                          ; $67bf: $ff
	add hl, bc                                       ; $67c0: $09
	pop af                                           ; $67c1: $f1
	cp [hl]                                          ; $67c2: $be
	ldh a, [$0b]                                     ; $67c3: $f0 $0b
	add hl, bc                                       ; $67c5: $09
	pop af                                           ; $67c6: $f1
	add hl, de                                       ; $67c7: $19
	ldh a, [c]                                       ; $67c8: $f2
	adc l                                            ; $67c9: $8d
	add hl, bc                                       ; $67ca: $09
	pop af                                           ; $67cb: $f1
	add [hl]                                         ; $67cc: $86
	or $01                                           ; $67cd: $f6 $01
	add hl, bc                                       ; $67cf: $09
	ldh a, [$7f]                                     ; $67d0: $f0 $7f
	ldh a, [c]                                       ; $67d2: $f2
	ld sp, $f209                                     ; $67d3: $31 $09 $f2
	add a                                            ; $67d6: $87
	pop af                                           ; $67d7: $f1
	dec a                                            ; $67d8: $3d
	add hl, bc                                       ; $67d9: $09
	ldh a, [c]                                       ; $67da: $f2
	sbc a                                            ; $67db: $9f
	ldh a, [c]                                       ; $67dc: $f2
	xor [hl]                                         ; $67dd: $ae
	add hl, bc                                       ; $67de: $09
	ldh a, [$cc]                                     ; $67df: $f0 $cc
	ldh a, [$78]                                     ; $67e1: $f0 $78
	add hl, bc                                       ; $67e3: $09
	pop af                                           ; $67e4: $f1
	ld e, h                                          ; $67e5: $5c
	ldh a, [$0b]                                     ; $67e6: $f0 $0b
	add hl, bc                                       ; $67e8: $09
	di                                               ; $67e9: $f3
	adc $f4                                          ; $67ea: $ce $f4
	ld b, [hl]                                       ; $67ec: $46
	add hl, bc                                       ; $67ed: $09
	sub c                                            ; $67ee: $91
	ldh a, [rDMA]                                    ; $67ef: $f0 $46
	add hl, bc                                       ; $67f1: $09
	push af                                          ; $67f2: $f5
	or $84                                           ; $67f3: $f6 $84
	add hl, bc                                       ; $67f5: $09
	ld l, e                                          ; $67f6: $6b
	ld [hl], d                                       ; $67f7: $72
	add hl, bc                                       ; $67f8: $09
	add a                                            ; $67f9: $87
	ldh a, [rAUD3LEVEL]                              ; $67fa: $f0 $1c
	add hl, bc                                       ; $67fc: $09
	push af                                          ; $67fd: $f5
	db $fc                                           ; $67fe: $fc
	pop af                                           ; $67ff: $f1
	sub l                                            ; $6800: $95
	add hl, bc                                       ; $6801: $09
	sub b                                            ; $6802: $90
	ldh a, [$6f]                                     ; $6803: $f0 $6f
	add hl, bc                                       ; $6805: $09
	di                                               ; $6806: $f3
	ld l, b                                          ; $6807: $68
	ldh a, [$59]                                     ; $6808: $f0 $59
	add hl, bc                                       ; $680a: $09
	ldh a, [$63]                                     ; $680b: $f0 $63
	pop af                                           ; $680d: $f1
	ld hl, $f009                                     ; $680e: $21 $09 $f0
	ld b, $f3                                        ; $6811: $06 $f3
	jr z, jr_079_681e                                ; $6813: $28 $09

	pop af                                           ; $6815: $f1
	ld a, a                                          ; $6816: $7f
	di                                               ; $6817: $f3
	ld c, a                                          ; $6818: $4f
	add hl, bc                                       ; $6819: $09
	ldh a, [$c6]                                     ; $681a: $f0 $c6
	ldh a, [c]                                       ; $681c: $f2
	cp c                                             ; $681d: $b9

jr_079_681e:
	add hl, bc                                       ; $681e: $09
	di                                               ; $681f: $f3
	and [hl]                                         ; $6820: $a6
	push af                                          ; $6821: $f5
	rst FarCall                                          ; $6822: $f7
	add hl, bc                                       ; $6823: $09
	pop af                                           ; $6824: $f1
	ld a, [de]                                       ; $6825: $1a
	push af                                          ; $6826: $f5
	db $fd                                           ; $6827: $fd
	add hl, bc                                       ; $6828: $09
	ldh a, [$f0]                                     ; $6829: $f0 $f0

jr_079_682b:
	ldh a, [c]                                       ; $682b: $f2
	ld [hl], d                                       ; $682c: $72
	add hl, bc                                       ; $682d: $09
	pop af                                           ; $682e: $f1
	ld b, $f4                                        ; $682f: $06 $f4
	and e                                            ; $6831: $a3
	add hl, bc                                       ; $6832: $09
	ldh a, [c]                                       ; $6833: $f2
	ld e, [hl]                                       ; $6834: $5e
	ldh a, [c]                                       ; $6835: $f2
	pop hl                                           ; $6836: $e1
	add hl, bc                                       ; $6837: $09
	ldh a, [c]                                       ; $6838: $f2
	jr c, jr_079_682b                                ; $6839: $38 $f0

	ld b, l                                          ; $683b: $45
	add hl, bc                                       ; $683c: $09
	ldh a, [$b6]                                     ; $683d: $f0 $b6
	ldh a, [rAUDTERM]                                ; $683f: $f0 $25
	add hl, bc                                       ; $6841: $09
	ldh a, [c]                                       ; $6842: $f2
	scf                                              ; $6843: $37
	pop af                                           ; $6844: $f1
	ld d, e                                          ; $6845: $53
	add hl, bc                                       ; $6846: $09
	ldh a, [$af]                                     ; $6847: $f0 $af
	ldh a, [rAUD3LEVEL]                              ; $6849: $f0 $1c
	add hl, bc                                       ; $684b: $09
	ld l, l                                          ; $684c: $6d
	ld a, h                                          ; $684d: $7c
	add hl, bc                                       ; $684e: $09
	ldh a, [rAUD2LEN]                                ; $684f: $f0 $16
	sbc d                                            ; $6851: $9a
	add hl, bc                                       ; $6852: $09
	ld l, l                                          ; $6853: $6d
	add h                                            ; $6854: $84
	add hl, bc                                       ; $6855: $09
	ldh a, [hDisp1_OBP0]                                     ; $6856: $f0 $93
	ldh a, [$b4]                                     ; $6858: $f0 $b4
	add hl, bc                                       ; $685a: $09
	pop af                                           ; $685b: $f1
	di                                               ; $685c: $f3
	adc h                                            ; $685d: $8c
	add hl, bc                                       ; $685e: $09
	ldh a, [$6c]                                     ; $685f: $f0 $6c
	ldh a, [$61]                                     ; $6861: $f0 $61
	add hl, bc                                       ; $6863: $09
	ldh a, [c]                                       ; $6864: $f2
	ld d, $8a                                        ; $6865: $16 $8a
	add hl, bc                                       ; $6867: $09
	ldh a, [$7e]                                     ; $6868: $f0 $7e
	ldh a, [$27]                                     ; $686a: $f0 $27
	add hl, bc                                       ; $686c: $09
	ldh a, [rIF]                                     ; $686d: $f0 $0f
	ldh a, [rIF]                                     ; $686f: $f0 $0f
	add hl, bc                                       ; $6871: $09
	ldh a, [rAUD3LOW]                                ; $6872: $f0 $1d
	ldh a, [rAUD3LOW]                                ; $6874: $f0 $1d
	add hl, bc                                       ; $6876: $09
	ld h, b                                          ; $6877: $60
	ld h, b                                          ; $6878: $60
	add hl, bc                                       ; $6879: $09
	ld c, b                                          ; $687a: $48
	ld c, b                                          ; $687b: $48
	add hl, bc                                       ; $687c: $09
	ldh a, [rDMA]                                    ; $687d: $f0 $46
	ldh a, [$62]                                     ; $687f: $f0 $62
	add hl, bc                                       ; $6881: $09
	ldh a, [rAUD3ENA]                                ; $6882: $f0 $1a
	ld a, l                                          ; $6884: $7d
	add hl, bc                                       ; $6885: $09
	ld b, [hl]                                       ; $6886: $46
	ld d, b                                          ; $6887: $50
	add hl, bc                                       ; $6888: $09
	di                                               ; $6889: $f3
	sbc c                                            ; $688a: $99
	pop af                                           ; $688b: $f1
	jp nz, $f109                                     ; $688c: $c2 $09 $f1

	adc $f3                                          ; $688f: $ce $f3
	inc h                                            ; $6891: $24
	add hl, bc                                       ; $6892: $09
	ldh a, [c]                                       ; $6893: $f2
	ld b, a                                          ; $6894: $47
	ldh a, [c]                                       ; $6895: $f2
	dec [hl]                                         ; $6896: $35
	add hl, bc                                       ; $6897: $09
	pop af                                           ; $6898: $f1
	cp l                                             ; $6899: $bd
	ldh a, [rLYC]                                    ; $689a: $f0 $45
	add hl, bc                                       ; $689c: $09
	ldh a, [rAUD3LEN]                                ; $689d: $f0 $1b
	ldh a, [$15]                                     ; $689f: $f0 $15
	add hl, bc                                       ; $68a1: $09
	sub [hl]                                         ; $68a2: $96
	adc a                                            ; $68a3: $8f
	add hl, bc                                       ; $68a4: $09
	pop af                                           ; $68a5: $f1
	add h                                            ; $68a6: $84
	ldh a, [c]                                       ; $68a7: $f2
	dec c                                            ; $68a8: $0d
	add hl, bc                                       ; $68a9: $09
	ldh a, [$bf]                                     ; $68aa: $f0 $bf
	ldh a, [rAUD2LEN]                                ; $68ac: $f0 $16
	add hl, bc                                       ; $68ae: $09
	ldh a, [$e2]                                     ; $68af: $f0 $e2
	ldh a, [$e3]                                     ; $68b1: $f0 $e3
	add hl, bc                                       ; $68b3: $09
	ld b, [hl]                                       ; $68b4: $46
	ld b, d                                          ; $68b5: $42
	add hl, bc                                       ; $68b6: $09
	add hl, sp                                       ; $68b7: $39
	ld b, c                                          ; $68b8: $41
	add hl, bc                                       ; $68b9: $09
	ld b, [hl]                                       ; $68ba: $46
	ld c, b                                          ; $68bb: $48
	add hl, bc                                       ; $68bc: $09
	ldh a, [$4c]                                     ; $68bd: $f0 $4c
	ldh a, [rAUD2LOW]                                ; $68bf: $f0 $18
	add hl, bc                                       ; $68c1: $09
	pop af                                           ; $68c2: $f1
	sbc a                                            ; $68c3: $9f
	pop af                                           ; $68c4: $f1
	adc [hl]                                         ; $68c5: $8e
	add hl, bc                                       ; $68c6: $09
	ldh a, [$3c]                                     ; $68c7: $f0 $3c
	ldh a, [$39]                                     ; $68c9: $f0 $39
	add hl, bc                                       ; $68cb: $09
	ldh a, [$33]                                     ; $68cc: $f0 $33
	ldh a, [$2e]                                     ; $68ce: $f0 $2e
	add hl, bc                                       ; $68d0: $09
	pop af                                           ; $68d1: $f1
	db $db                                           ; $68d2: $db
	pop af                                           ; $68d3: $f1
	ldh a, [$09]                                     ; $68d4: $f0 $09
	pop af                                           ; $68d6: $f1
	call nz, $098c                                   ; $68d7: $c4 $8c $09
	ldh a, [$4e]                                     ; $68da: $f0 $4e
	adc d                                            ; $68dc: $8a
	add hl, bc                                       ; $68dd: $09
	ldh a, [$df]                                     ; $68de: $f0 $df
	pop af                                           ; $68e0: $f1
	db $f4                                           ; $68e1: $f4
	add hl, bc                                       ; $68e2: $09
	ld [hl], d                                       ; $68e3: $72
	pop af                                           ; $68e4: $f1
	ld e, $09                                        ; $68e5: $1e $09
	ldh a, [$31]                                     ; $68e7: $f0 $31
	ldh a, [$ad]                                     ; $68e9: $f0 $ad
	add hl, bc                                       ; $68eb: $09
	ldh a, [$a8]                                     ; $68ec: $f0 $a8
	ldh a, [$8b]                                     ; $68ee: $f0 $8b
	add hl, bc                                       ; $68f0: $09
	pop af                                           ; $68f1: $f1
	add hl, sp                                       ; $68f2: $39
	ldh a, [$ad]                                     ; $68f3: $f0 $ad
	add hl, bc                                       ; $68f5: $09
	ld c, e                                          ; $68f6: $4b
	jr c, jr_079_6902                                ; $68f7: $38 $09

	ldh a, [c]                                       ; $68f9: $f2
	add hl, bc                                       ; $68fa: $09
	sbc c                                            ; $68fb: $99
	add hl, bc                                       ; $68fc: $09
	inc bc                                           ; $68fd: $03
	and d                                            ; $68fe: $a2
	ld bc, $a226                                     ; $68ff: $01 $26 $a2

jr_079_6902:
	ldh a, [rLYC]                                    ; $6902: $f0 $45
	inc bc                                           ; $6904: $03
	and d                                            ; $6905: $a2
	ld bc, $a228                                     ; $6906: $01 $28 $a2
	ld l, b                                          ; $6909: $68
	add hl, bc                                       ; $690a: $09
	inc bc                                           ; $690b: $03
	and d                                            ; $690c: $a2
	ld bc, $d22c                                     ; $690d: $01 $2c $d2
	ldh a, [rLYC]                                    ; $6910: $f0 $45
	inc bc                                           ; $6912: $03
	and d                                            ; $6913: $a2
	ld bc, $d22e                                     ; $6914: $01 $2e $d2
	ld l, b                                          ; $6917: $68
	add hl, bc                                       ; $6918: $09
	inc bc                                           ; $6919: $03
	and d                                            ; $691a: $a2
	ld bc, $a224                                     ; $691b: $01 $24 $a2
	ldh a, [rAUD1HIGH]                               ; $691e: $f0 $14
	inc bc                                           ; $6920: $03
	and d                                            ; $6921: $a2
	ld bc, $a226                                     ; $6922: $01 $26 $a2
	ldh a, [rLYC]                                    ; $6925: $f0 $45
	inc bc                                           ; $6927: $03
	and d                                            ; $6928: $a2
	ld bc, $a228                                     ; $6929: $01 $28 $a2
	ld l, b                                          ; $692c: $68
	add hl, bc                                       ; $692d: $09

;
	ld bc, $d035                                     ; $692e: $01 $35 $d0
	jr @+$24                                         ; $6931: $18 $22

	cpl                                              ; $6933: $2f
	dec sp                                           ; $6934: $3b
	ld b, d                                          ; $6935: $42
	ld c, c                                          ; $6936: $49
	ld d, b                                          ; $6937: $50
	ld e, [hl]                                       ; $6938: $5e
	ld h, h                                          ; $6939: $64
	ld l, e                                          ; $693a: $6b
	ld [hl], a                                       ; $693b: $77
	add d                                            ; $693c: $82
	adc l                                            ; $693d: $8d

jr_079_693e:
	sub h                                            ; $693e: $94
	sbc [hl]                                         ; $693f: $9e
	and l                                            ; $6940: $a5
	or c                                             ; $6941: $b1
	or [hl]                                          ; $6942: $b6
	cp c                                             ; $6943: $b9
	cp [hl]                                          ; $6944: $be
	add $f0                                          ; $6945: $c6 $f0
	sbc e                                            ; $6947: $9b
	ldh a, [$28]                                     ; $6948: $f0 $28
	ld b, d                                          ; $694a: $42

jr_079_694b:
	pop af                                           ; $694b: $f1
	jr z, jr_079_693e                                ; $694c: $28 $f0

	ld b, h                                          ; $694e: $44
	add hl, bc                                       ; $694f: $09
	ld e, h                                          ; $6950: $5c
	ld d, b                                          ; $6951: $50
	ld [hl], c                                       ; $6952: $71
	ld e, h                                          ; $6953: $5c
	ldh a, [rAUD2HIGH]                               ; $6954: $f0 $19
	ldh a, [c]                                       ; $6956: $f2
	db $ec                                           ; $6957: $ec
	pop af                                           ; $6958: $f1
	jr z, jr_079_694b                                ; $6959: $28 $f0

	ld b, h                                          ; $695b: $44
	add hl, bc                                       ; $695c: $09
	sbc b                                            ; $695d: $98
	ldh a, [rWX]                                     ; $695e: $f0 $4b
	ld [hl], e                                       ; $6960: $73
	ldh a, [$fd]                                     ; $6961: $f0 $fd
	ld h, l                                          ; $6963: $65
	ldh a, [$50]                                     ; $6964: $f0 $50
	di                                               ; $6966: $f3
	ld [hl-], a                                      ; $6967: $32
	add hl, bc                                       ; $6968: $09
	ldh a, [rPCM34]                                  ; $6969: $f0 $77
	ldh a, [c]                                       ; $696b: $f2
	dec d                                            ; $696c: $15
	ldh a, [$df]                                     ; $696d: $f0 $df
	add hl, bc                                       ; $696f: $09
	ldh a, [rOBP0]                                   ; $6970: $f0 $48
	ldh a, [$2c]                                     ; $6972: $f0 $2c
	ldh a, [rLY]                                     ; $6974: $f0 $44
	add hl, bc                                       ; $6976: $09
	pop af                                           ; $6977: $f1
	jp c, $2cf0                                      ; $6978: $da $f0 $2c

	ldh a, [rLY]                                     ; $697b: $f0 $44
	add hl, bc                                       ; $697d: $09
	add c                                            ; $697e: $81
	ldh a, [rSC]                                     ; $697f: $f0 $02
	ldh a, [$09]                                     ; $6981: $f0 $09
	ldh a, [rDIV]                                    ; $6983: $f0 $04
	ldh a, [rP1]                                     ; $6985: $f0 $00
	ldh a, [hDisp0_WX]                                     ; $6987: $f0 $89
	ldh a, [$27]                                     ; $6989: $f0 $27
	add hl, bc                                       ; $698b: $09
	adc d                                            ; $698c: $8a
	ldh a, [$73]                                     ; $698d: $f0 $73
	ldh a, [$df]                                     ; $698f: $f0 $df
	add hl, bc                                       ; $6991: $09
	ldh a, [c]                                       ; $6992: $f2
	jr z, @-$0d                                      ; $6993: $28 $f1

	ld l, $f0                                        ; $6995: $2e $f0
	rst SubAFromDE                                          ; $6997: $df
	add hl, bc                                       ; $6998: $09
	ldh a, [$6d]                                     ; $6999: $f0 $6d
	ld e, c                                          ; $699b: $59
	ldh a, [$27]                                     ; $699c: $f0 $27
	ldh a, [$7b]                                     ; $699e: $f0 $7b
	ld h, l                                          ; $69a0: $65
	ldh a, [rDIV]                                    ; $69a1: $f0 $04
	ld e, c                                          ; $69a3: $59
	add hl, bc                                       ; $69a4: $09
	ldh a, [$6e]                                     ; $69a5: $f0 $6e
	ld e, c                                          ; $69a7: $59
	ldh a, [rP1]                                     ; $69a8: $f0 $00
	ld h, l                                          ; $69aa: $65
	ldh a, [$50]                                     ; $69ab: $f0 $50
	ldh a, [$30]                                     ; $69ad: $f0 $30
	add hl, bc                                       ; $69af: $09
	ldh a, [$35]                                     ; $69b0: $f0 $35
	ldh a, [rSC]                                     ; $69b2: $f0 $02
	ldh a, [$c3]                                     ; $69b4: $f0 $c3
	ldh a, [$c2]                                     ; $69b6: $f0 $c2
	pop af                                           ; $69b8: $f1
	ld b, h                                          ; $69b9: $44
	add hl, bc                                       ; $69ba: $09
	ldh a, [$b2]                                     ; $69bb: $f0 $b2
	ldh a, [rLY]                                     ; $69bd: $f0 $44
	pop af                                           ; $69bf: $f1
	sbc b                                            ; $69c0: $98
	add hl, bc                                       ; $69c1: $09
	add e                                            ; $69c2: $83
	ldh a, [rDIV]                                    ; $69c3: $f0 $04
	ldh a, [$7e]                                     ; $69c5: $f0 $7e
	ldh a, [$3d]                                     ; $69c7: $f0 $3d
	ldh a, [$27]                                     ; $69c9: $f0 $27
	add hl, bc                                       ; $69cb: $09
	ldh a, [$74]                                     ; $69cc: $f0 $74
	ldh a, [$7a]                                     ; $69ce: $f0 $7a
	ldh a, [$df]                                     ; $69d0: $f0 $df
	add hl, bc                                       ; $69d2: $09
	ldh a, [rAUD1LEN]                                ; $69d3: $f0 $11
	ld h, l                                          ; $69d5: $65
	ldh a, [rAUD4POLY]                               ; $69d6: $f0 $22
	ld e, c                                          ; $69d8: $59
	ld l, c                                          ; $69d9: $69
	ldh a, [rHDMA3]                                  ; $69da: $f0 $53
	ldh a, [$30]                                     ; $69dc: $f0 $30
	add hl, bc                                       ; $69de: $09
	add c                                            ; $69df: $81
	ld e, c                                          ; $69e0: $59
	ldh a, [$03]                                     ; $69e1: $f0 $03
	add hl, bc                                       ; $69e3: $09
	pop af                                           ; $69e4: $f1
	cpl                                              ; $69e5: $2f
	add hl, bc                                       ; $69e6: $09
	ldh a, [$d4]                                     ; $69e7: $f0 $d4
	pop af                                           ; $69e9: $f1
	ld a, [hl+]                                      ; $69ea: $2a
	add hl, bc                                       ; $69eb: $09
	add e                                            ; $69ec: $83
	ldh a, [$c2]                                     ; $69ed: $f0 $c2
	ld e, c                                          ; $69ef: $59
	ld l, c                                          ; $69f0: $69
	ldh a, [$30]                                     ; $69f1: $f0 $30
	add hl, bc                                       ; $69f3: $09
	add e                                            ; $69f4: $83
	ldh a, [$2f]                                     ; $69f5: $f0 $2f
	ld e, c                                          ; $69f7: $59
	ldh a, [$30]                                     ; $69f8: $f0 $30
	add hl, bc                                       ; $69fa: $09
	ld bc, $d03a                                     ; $69fb: $01 $3a $d0
	ld d, c                                          ; $69fe: $51
	ld d, l                                          ; $69ff: $55
	ld e, h                                          ; $6a00: $5c
	ld h, d                                          ; $6a01: $62
	ld l, c                                          ; $6a02: $69
	ld [hl], b                                       ; $6a03: $70
	ld [hl], a                                       ; $6a04: $77
	ld a, [hl]                                       ; $6a05: $7e
	add e                                            ; $6a06: $83
	adc e                                            ; $6a07: $8b
	sub e                                            ; $6a08: $93
	sbc d                                            ; $6a09: $9a
	and c                                            ; $6a0a: $a1
	and [hl]                                         ; $6a0b: $a6
	xor l                                            ; $6a0c: $ad
	or h                                             ; $6a0d: $b4
	cp e                                             ; $6a0e: $bb
	cp a                                             ; $6a0f: $bf
	ld bc, $d038                                     ; $6a10: $01 $38 $d0
	inc a                                            ; $6a13: $3c
	ld b, b                                          ; $6a14: $40
	ld b, a                                          ; $6a15: $47
	ld c, l                                          ; $6a16: $4d
	ld d, h                                          ; $6a17: $54
	ld e, e                                          ; $6a18: $5b
	ld h, d                                          ; $6a19: $62
	ld l, c                                          ; $6a1a: $69
	ld l, [hl]                                       ; $6a1b: $6e
	halt                                             ; $6a1c: $76
	ld a, [hl]                                       ; $6a1d: $7e
	add l                                            ; $6a1e: $85
	adc h                                            ; $6a1f: $8c
	sub c                                            ; $6a20: $91
	sbc b                                            ; $6a21: $98
	sbc a                                            ; $6a22: $9f
	and [hl]                                         ; $6a23: $a6
	xor d                                            ; $6a24: $aa


TextLargeDict_004::
	ld bc, $d036                                     ; $6a25: $01 $36 $d0
	daa                                              ; $6a28: $27
	dec hl                                           ; $6a29: $2b
	ld [hl-], a                                      ; $6a2a: $32
	jr c, @+$41                                      ; $6a2b: $38 $3f

	ld b, [hl]                                       ; $6a2d: $46
	ld c, l                                          ; $6a2e: $4d
	ld d, h                                          ; $6a2f: $54
	ld e, c                                          ; $6a30: $59
	ld h, c                                          ; $6a31: $61
	ld l, c                                          ; $6a32: $69
	ld [hl], b                                       ; $6a33: $70
	ld [hl], a                                       ; $6a34: $77
	ld a, h                                          ; $6a35: $7c
	add e                                            ; $6a36: $83
	adc d                                            ; $6a37: $8a
	sub c                                            ; $6a38: $91
	sub l                                            ; $6a39: $95
	sbc d                                            ; $6a3a: $9a
	sbc [hl]                                         ; $6a3b: $9e
	and d                                            ; $6a3c: $a2
	and a                                            ; $6a3d: $a7
	xor e                                            ; $6a3e: $ab
	or b                                             ; $6a3f: $b0
	or l                                             ; $6a40: $b5
	cp b                                             ; $6a41: $b8
	cp l                                             ; $6a42: $bd
	pop bc                                           ; $6a43: $c1
	call nz, $ccc8                                   ; $6a44: $c4 $c8 $cc
	pop de                                           ; $6a47: $d1
	push de                                          ; $6a48: $d5
	reti                                             ; $6a49: $d9
	db $dc, $e0
	
;
	db $9b ; $6a4c
	ldh a, [$0e]                                     ; $6a4d: $f0 $0e
	add hl, bc                                       ; $6a4f: $09
	ldh a, [$da]                                     ; $6a50: $f0 $da
	ldh a, [rLYC]                                    ; $6a52: $f0 $45
	ld e, b                                          ; $6a54: $58
	ld b, c                                          ; $6a55: $41
	add hl, bc                                       ; $6a56: $09
	ldh a, [$b9]                                     ; $6a57: $f0 $b9
	ld a, h                                          ; $6a59: $7c
	ld e, b                                          ; $6a5a: $58
	ld b, c                                          ; $6a5b: $41
	add hl, bc                                       ; $6a5c: $09
	ldh a, [$e6]                                     ; $6a5d: $f0 $e6
	ldh a, [$ef]                                     ; $6a5f: $f0 $ef
	ld e, b                                          ; $6a61: $58
	ld b, c                                          ; $6a62: $41
	add hl, bc                                       ; $6a63: $09
	ldh a, [$4c]                                     ; $6a64: $f0 $4c
	ldh a, [rAUD2LOW]                                ; $6a66: $f0 $18
	ld e, b                                          ; $6a68: $58
	ld b, c                                          ; $6a69: $41
	add hl, bc                                       ; $6a6a: $09
	ldh a, [$3c]                                     ; $6a6b: $f0 $3c
	ldh a, [$39]                                     ; $6a6d: $f0 $39
	ld e, b                                          ; $6a6f: $58
	ld b, c                                          ; $6a70: $41
	add hl, bc                                       ; $6a71: $09
	ldh a, [$33]                                     ; $6a72: $f0 $33
	ldh a, [$2e]                                     ; $6a74: $f0 $2e
	ld e, b                                          ; $6a76: $58
	ld b, c                                          ; $6a77: $41
	add hl, bc                                       ; $6a78: $09
	ldh a, [$b3]                                     ; $6a79: $f0 $b3
	ld e, b                                          ; $6a7b: $58
	ld b, c                                          ; $6a7c: $41
	add hl, bc                                       ; $6a7d: $09
	ldh a, [$7d]                                     ; $6a7e: $f0 $7d
	ld l, b                                          ; $6a80: $68
	ldh a, [hDisp1_BGP]                                     ; $6a81: $f0 $92
	ld e, b                                          ; $6a83: $58
	ld b, c                                          ; $6a84: $41
	add hl, bc                                       ; $6a85: $09
	adc d                                            ; $6a86: $8a
	ldh a, [$37]                                     ; $6a87: $f0 $37
	ldh a, [$3a]                                     ; $6a89: $f0 $3a
	ld e, b                                          ; $6a8b: $58
	ld b, c                                          ; $6a8c: $41
	add hl, bc                                       ; $6a8d: $09
	ldh a, [$4e]                                     ; $6a8e: $f0 $4e
	adc d                                            ; $6a90: $8a
	ld h, c                                          ; $6a91: $61
	ld d, [hl]                                       ; $6a92: $56
	ld b, c                                          ; $6a93: $41
	add hl, bc                                       ; $6a94: $09
	ldh a, [$6c]                                     ; $6a95: $f0 $6c
	ldh a, [$61]                                     ; $6a97: $f0 $61
	ld e, b                                          ; $6a99: $58
	ld b, c                                          ; $6a9a: $41
	add hl, bc                                       ; $6a9b: $09
	ldh a, [rIF]                                     ; $6a9c: $f0 $0f
	ld [hl], e                                       ; $6a9e: $73
	ld l, c                                          ; $6a9f: $69
	add hl, bc                                       ; $6aa0: $09
	ldh a, [hDisp1_OBP0]                                     ; $6aa1: $f0 $93
	ldh a, [$b4]                                     ; $6aa3: $f0 $b4
	ld e, b                                          ; $6aa5: $58
	ld b, c                                          ; $6aa6: $41
	add hl, bc                                       ; $6aa7: $09
	ldh a, [$df]                                     ; $6aa8: $f0 $df
	pop af                                           ; $6aaa: $f1
	db $f4                                           ; $6aab: $f4
	ld e, b                                          ; $6aac: $58
	ld b, c                                          ; $6aad: $41
	add hl, bc                                       ; $6aae: $09
	ldh a, [$a2]                                     ; $6aaf: $f0 $a2
	ldh a, [rAUDTERM]                                ; $6ab1: $f0 $25
	ldh a, [hDisp1_SCX]                                     ; $6ab3: $f0 $91
	add hl, bc                                       ; $6ab5: $09
	ld a, [hl]                                       ; $6ab6: $7e
	ldh a, [$72]                                     ; $6ab7: $f0 $72
	add hl, bc                                       ; $6ab9: $09
	ldh a, [$f0]                                     ; $6aba: $f0 $f0
	ldh a, [c]                                       ; $6abc: $f2
	ld [hl], d                                       ; $6abd: $72
	add hl, bc                                       ; $6abe: $09
	sbc e                                            ; $6abf: $9b
	ldh a, [$0e]                                     ; $6ac0: $f0 $0e
	add hl, bc                                       ; $6ac2: $09
	pop af                                           ; $6ac3: $f1
	or l                                             ; $6ac4: $b5
	ld a, h                                          ; $6ac5: $7c
	add hl, bc                                       ; $6ac6: $09
	ldh a, [$80]                                     ; $6ac7: $f0 $80
	ldh a, [hDisp1_BGP]                                     ; $6ac9: $f0 $92
	add hl, bc                                       ; $6acb: $09
	pop af                                           ; $6acc: $f1
	xor [hl]                                         ; $6acd: $ae
	adc h                                            ; $6ace: $8c
	add hl, bc                                       ; $6acf: $09
	pop af                                           ; $6ad0: $f1
	sbc a                                            ; $6ad1: $9f
	pop af                                           ; $6ad2: $f1
	adc [hl]                                         ; $6ad3: $8e
	add hl, bc                                       ; $6ad4: $09
	ldh a, [$b5]                                     ; $6ad5: $f0 $b5
	inc a                                            ; $6ad7: $3c
	ld d, a                                          ; $6ad8: $57
	add hl, bc                                       ; $6ad9: $09
	pop af                                           ; $6ada: $f1
	ld l, d                                          ; $6adb: $6a
	add hl, bc                                       ; $6adc: $09
	pop af                                           ; $6add: $f1
	db $db                                           ; $6ade: $db
	pop af                                           ; $6adf: $f1
	ldh a, [$09]                                     ; $6ae0: $f0 $09
	pop af                                           ; $6ae2: $f1
	call nz, $098c                                   ; $6ae3: $c4 $8c $09
	ldh a, [rHDMA2]                                  ; $6ae6: $f0 $52
	add hl, bc                                       ; $6ae8: $09
	ldh a, [$4e]                                     ; $6ae9: $f0 $4e
	adc d                                            ; $6aeb: $8a
	add hl, bc                                       ; $6aec: $09
	ldh a, [c]                                       ; $6aed: $f2
	ld d, $8a                                        ; $6aee: $16 $8a
	add hl, bc                                       ; $6af0: $09
	ldh a, [rIF]                                     ; $6af1: $f0 $0f
	ld [hl], e                                       ; $6af3: $73
	ld l, c                                          ; $6af4: $69
	add hl, bc                                       ; $6af5: $09
	pop af                                           ; $6af6: $f1
	di                                               ; $6af7: $f3
	adc h                                            ; $6af8: $8c
	add hl, bc                                       ; $6af9: $09
	ld [hl], d                                       ; $6afa: $72
	pop af                                           ; $6afb: $f1
	ld e, $09                                        ; $6afc: $1e $09
	ld [hl], l                                       ; $6afe: $75
	ld a, l                                          ; $6aff: $7d
	add hl, bc                                       ; $6b00: $09
	ld a, [hl]                                       ; $6b01: $7e
	ldh a, [$72]                                     ; $6b02: $f0 $72
	add hl, bc                                       ; $6b04: $09
	ldh a, [c]                                       ; $6b05: $f2
	ld b, e                                          ; $6b06: $43
	ldh a, [c]                                       ; $6b07: $f2
	rst SubAFromBC                                          ; $6b08: $e7
	di                                               ; $6b09: $f3
	ld l, $09                                        ; $6b0a: $2e $09


;
	inc bc                                           ; $6b0c: $03
	and d                                            ; $6b0d: $a2
	ld bc, $a21f                                     ; $6b0e: $01 $1f $a2
	ldh a, [rLYC]                                    ; $6b11: $f0 $45
	inc bc                                           ; $6b13: $03
	and d                                            ; $6b14: $a2
	ld bc, $a221                                     ; $6b15: $01 $21 $a2
	ld l, b                                          ; $6b18: $68
	add hl, bc                                       ; $6b19: $09


TextLargeDict_008_BloodType::
	db $01 ; ram jumptable - 6b1a
	dw $a223 ; ram in question
	db $07 ; entry is 6b1a + this (6b21)
	db $0c ; (6b26)
	db $11 ; (6b2b)
	db $18 ; (6b32)

	db $f1                                   ; $6b21: $f1
	ld e, d                                          ; $6b22: $5a
	pop af                                           ; $6b23: $f1
	db $e4                                           ; $6b24: $e4
	add hl, bc                                       ; $6b25: $09

	pop af                                           ; $6b26: $f1
	cp b                                             ; $6b27: $b8
	pop af                                           ; $6b28: $f1
	db $e4                                           ; $6b29: $e4
	add hl, bc                                       ; $6b2a: $09

	pop af                                           ; $6b2b: $f1
	ld e, d                                          ; $6b2c: $5a
	pop af                                           ; $6b2d: $f1
	cp b                                             ; $6b2e: $b8
	pop af                                           ; $6b2f: $f1
	db $e4                                           ; $6b30: $e4
	add hl, bc                                       ; $6b31: $09

	pop af                                           ; $6b32: $f1
	ld h, h                                          ; $6b33: $64
	pop af                                           ; $6b34: $f1
	db $e4                                           ; $6b35: $e4
	add hl, bc                                       ; $6b36: $09


CharacterNames::
	dw $6bb7
	dw $6bbc
	dw $6bbe
	dw $6bc3
	dw $6bc9
	dw $6bcf
	dw $6bd4
	dw $6bda
	dw $6be0
	dw $6be6
	dw $6bec
	dw $6bf0
	dw $6bf7
	dw $6bfe
	dw $6c06
	dw $6c0c
	dw $6c12
	dw $6c18
	dw Data_79_6c1e
	dw Data_79_6c26
	dw $6c2b
	dw $6c31
	dw $6c39
	dw $6c41
	dw CharName18h
	dw CharName19h
	dw CharName1ah
	dw $6c5d
	dw $6c64
	dw $6c69
	dw $6c6d
	dw $6c72
	dw $6c7a
	dw $6c81
	dw $6c87
	dw $6c8d
	dw $6c91
	dw $6c97
	dw $6c9d
	dw $6ca2
	dw $6caa
	dw $6cb1
	dw $6cb7
	dw $6cbf
	dw $6cc5
	dw $6ccd
	dw $6cd3
	dw $6cda
	dw $6ce1
	dw $6ce8
	dw $6cef
	dw $6cf6
	dw $6cfd
	dw $6d04
	dw $6d0c
	dw $6d14
	dw $6d1c
	dw $6d22
	dw $6d28
	dw $6d2e
	dw $6d34
	dw $6d3c
	dw $6d43
	dw $6d46


;
	ld [hl], $36                                     ; $6bb7: $36 $36
	ld [hl], $09                                     ; $6bb9: $36 $09
	add hl, bc                                       ; $6bbb: $09
	ld de, $8f09                                     ; $6bbc: $11 $09 $8f
	ldh a, [$62]                                     ; $6bbf: $f0 $62
	add hl, bc                                       ; $6bc1: $09
	add hl, bc                                       ; $6bc2: $09
	pop af                                           ; $6bc3: $f1
	or a                                             ; $6bc4: $b7
	pop af                                           ; $6bc5: $f1
	add $09                                          ; $6bc6: $c6 $09
	add hl, bc                                       ; $6bc8: $09
	ldh a, [$da]                                     ; $6bc9: $f0 $da
	ldh a, [rLYC]                                    ; $6bcb: $f0 $45
	add hl, bc                                       ; $6bcd: $09
	add hl, bc                                       ; $6bce: $09
	ldh a, [$b9]                                     ; $6bcf: $f0 $b9
	ld a, h                                          ; $6bd1: $7c
	add hl, bc                                       ; $6bd2: $09
	add hl, bc                                       ; $6bd3: $09
	ldh a, [$e6]                                     ; $6bd4: $f0 $e6
	ldh a, [$ef]                                     ; $6bd6: $f0 $ef
	add hl, bc                                       ; $6bd8: $09
	add hl, bc                                       ; $6bd9: $09
	ldh a, [$4c]                                     ; $6bda: $f0 $4c
	ldh a, [rAUD2LOW]                                ; $6bdc: $f0 $18
	add hl, bc                                       ; $6bde: $09
	add hl, bc                                       ; $6bdf: $09
	ldh a, [$3c]                                     ; $6be0: $f0 $3c
	ldh a, [$39]                                     ; $6be2: $f0 $39
	add hl, bc                                       ; $6be4: $09
	add hl, bc                                       ; $6be5: $09
	ldh a, [$33]                                     ; $6be6: $f0 $33
	ldh a, [$2e]                                     ; $6be8: $f0 $2e
	add hl, bc                                       ; $6bea: $09
	add hl, bc                                       ; $6beb: $09
	ldh a, [$b3]                                     ; $6bec: $f0 $b3
	add hl, bc                                       ; $6bee: $09
	add hl, bc                                       ; $6bef: $09
	ldh a, [$7d]                                     ; $6bf0: $f0 $7d
	ld l, b                                          ; $6bf2: $68
	ldh a, [hDisp1_BGP]                                     ; $6bf3: $f0 $92
	add hl, bc                                       ; $6bf5: $09
	add hl, bc                                       ; $6bf6: $09
	adc d                                            ; $6bf7: $8a
	ldh a, [$37]                                     ; $6bf8: $f0 $37
	ldh a, [$3a]                                     ; $6bfa: $f0 $3a
	add hl, bc                                       ; $6bfc: $09
	add hl, bc                                       ; $6bfd: $09
	ldh a, [$0a]                                     ; $6bfe: $f0 $0a
	pop af                                           ; $6c00: $f1
	and b                                            ; $6c01: $a0
	ldh a, [rAUD2ENV]                                ; $6c02: $f0 $17
	add hl, bc                                       ; $6c04: $09
	add hl, bc                                       ; $6c05: $09
	ldh a, [$6c]                                     ; $6c06: $f0 $6c
	ldh a, [$61]                                     ; $6c08: $f0 $61
	add hl, bc                                       ; $6c0a: $09
	add hl, bc                                       ; $6c0b: $09
	ldh a, [rIF]                                     ; $6c0c: $f0 $0f
	ld [hl], e                                       ; $6c0e: $73
	ld l, c                                          ; $6c0f: $69
	add hl, bc                                       ; $6c10: $09
	add hl, bc                                       ; $6c11: $09
	ldh a, [hDisp1_OBP0]                                     ; $6c12: $f0 $93
	ldh a, [$b4]                                     ; $6c14: $f0 $b4
	add hl, bc                                       ; $6c16: $09
	add hl, bc                                       ; $6c17: $09
	ldh a, [$df]                                     ; $6c18: $f0 $df

jr_079_6c1a:
	pop af                                           ; $6c1a: $f1
	db $f4                                           ; $6c1b: $f4
	add hl, bc                                       ; $6c1c: $09
	add hl, bc                                       ; $6c1d: $09


Data_79_6c1e:
	ldh a, [$a2]                                     ; $6c1e: $f0 $a2
	ldh a, [rAUDTERM]                                ; $6c20: $f0 $25
	ldh a, [hDisp1_SCX]                                     ; $6c22: $f0 $91
	add hl, bc                                       ; $6c24: $09
	add hl, bc                                       ; $6c25: $09


Data_79_6c26:
	adc e                                            ; $6c26: $8b
	ldh a, [$72]                                     ; $6c27: $f0 $72
	add hl, bc                                       ; $6c29: $09
	add hl, bc                                       ; $6c2a: $09
	ldh a, [$f0]                                     ; $6c2b: $f0 $f0
	ldh a, [c]                                       ; $6c2d: $f2
	ld [hl], d                                       ; $6c2e: $72
	add hl, bc                                       ; $6c2f: $09
	add hl, bc                                       ; $6c30: $09
	pop af                                           ; $6c31: $f1
	add [hl]                                         ; $6c32: $86
	pop af                                           ; $6c33: $f1
	xor c                                            ; $6c34: $a9
	pop af                                           ; $6c35: $f1
	ld b, h                                          ; $6c36: $44
	add hl, bc                                       ; $6c37: $09
	add hl, bc                                       ; $6c38: $09
	ldh a, [$bc]                                     ; $6c39: $f0 $bc
	ldh a, [c]                                       ; $6c3b: $f2
	inc bc                                           ; $6c3c: $03
	pop af                                           ; $6c3d: $f1
	ld e, d                                          ; $6c3e: $5a
	add hl, bc                                       ; $6c3f: $09
	add hl, bc                                       ; $6c40: $09
	ldh a, [$bc]                                     ; $6c41: $f0 $bc
	ldh a, [rTIMA]                                   ; $6c43: $f0 $05
	add hl, bc                                       ; $6c45: $09
	add hl, bc                                       ; $6c46: $09


CharName18h:
	ldh a, [$ab]                                     ; $6c47: $f0 $ab
	adc h                                            ; $6c49: $8c
	pop af                                           ; $6c4a: $f1
	ld e, d                                          ; $6c4b: $5a
	add hl, bc                                       ; $6c4c: $09
	add hl, bc                                       ; $6c4d: $09


CharName19h:
	ldh a, [$ab]                                     ; $6c4e: $f0 $ab
	adc h                                            ; $6c50: $8c
	pop af                                           ; $6c51: $f1
	cp b                                             ; $6c52: $b8
	add hl, bc                                       ; $6c53: $09
	add hl, bc                                       ; $6c54: $09


CharName1ah:
	ldh a, [rAUD1LEN]                                ; $6c55: $f0 $11
	ldh a, [$3d]                                     ; $6c57: $f0 $3d
	ldh a, [rSC]                                     ; $6c59: $f0 $02
	add hl, bc                                       ; $6c5b: $09
	add hl, bc                                       ; $6c5c: $09
	ldh a, [$ab]                                     ; $6c5d: $f0 $ab
	ld b, d                                          ; $6c5f: $42
	pop af                                           ; $6c60: $f1
	dec l                                            ; $6c61: $2d
	add hl, bc                                       ; $6c62: $09
	add hl, bc                                       ; $6c63: $09
	pop af                                           ; $6c64: $f1
	or c                                             ; $6c65: $b1
	adc h                                            ; $6c66: $8c
	add hl, bc                                       ; $6c67: $09
	add hl, bc                                       ; $6c68: $09
	di                                               ; $6c69: $f3
	adc d                                            ; $6c6a: $8a
	add hl, bc                                       ; $6c6b: $09
	add hl, bc                                       ; $6c6c: $09
	push af                                          ; $6c6d: $f5
	or b                                             ; $6c6e: $b0
	adc a                                            ; $6c6f: $8f
	add hl, bc                                       ; $6c70: $09
	add hl, bc                                       ; $6c71: $09
	ldh a, [$fc]                                     ; $6c72: $f0 $fc
	ldh a, [c]                                       ; $6c74: $f2
	nop                                              ; $6c75: $00
	pop af                                           ; $6c76: $f1
	ld c, [hl]                                       ; $6c77: $4e
	add hl, bc                                       ; $6c78: $09
	add hl, bc                                       ; $6c79: $09
	ldh a, [$d4]                                     ; $6c7a: $f0 $d4
	ld b, d                                          ; $6c7c: $42
	pop af                                           ; $6c7d: $f1
	dec l                                            ; $6c7e: $2d
	add hl, bc                                       ; $6c7f: $09
	add hl, bc                                       ; $6c80: $09
	ldh a, [$df]                                     ; $6c81: $f0 $df
	pop af                                           ; $6c83: $f1
	ld c, [hl]                                       ; $6c84: $4e
	add hl, bc                                       ; $6c85: $09
	add hl, bc                                       ; $6c86: $09
	ldh a, [rAUD2ENV]                                ; $6c87: $f0 $17
	ld b, d                                          ; $6c89: $42
	adc h                                            ; $6c8a: $8c
	add hl, bc                                       ; $6c8b: $09
	add hl, bc                                       ; $6c8c: $09
	ldh a, [$ab]                                     ; $6c8d: $f0 $ab
	add hl, bc                                       ; $6c8f: $09
	add hl, bc                                       ; $6c90: $09
	pop af                                           ; $6c91: $f1
	jp $fbf0                                         ; $6c92: $c3 $f0 $fb


	add hl, bc                                       ; $6c95: $09
	add hl, bc                                       ; $6c96: $09
	ldh a, [$80]                                     ; $6c97: $f0 $80
	ldh a, [c]                                       ; $6c99: $f2
	ld b, [hl]                                       ; $6c9a: $46
	add hl, bc                                       ; $6c9b: $09
	add hl, bc                                       ; $6c9c: $09
	adc a                                            ; $6c9d: $8f
	pop af                                           ; $6c9e: $f1
	ld c, [hl]                                       ; $6c9f: $4e
	add hl, bc                                       ; $6ca0: $09
	add hl, bc                                       ; $6ca1: $09
	ldh a, [$f0]                                     ; $6ca2: $f0 $f0
	ldh a, [c]                                       ; $6ca4: $f2
	ld [hl], d                                       ; $6ca5: $72
	ldh a, [$5d]                                     ; $6ca6: $f0 $5d
	add hl, bc                                       ; $6ca8: $09
	add hl, bc                                       ; $6ca9: $09
	di                                               ; $6caa: $f3
	ldh [c], a                                       ; $6cab: $e2
	ld b, d                                          ; $6cac: $42
	ldh a, [rAUD2ENV]                                ; $6cad: $f0 $17
	add hl, bc                                       ; $6caf: $09
	add hl, bc                                       ; $6cb0: $09
	ldh a, [$d4]                                     ; $6cb1: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $6cb3: $f0 $87
	add hl, bc                                       ; $6cb5: $09
	add hl, bc                                       ; $6cb6: $09
	pop af                                           ; $6cb7: $f1
	dec sp                                           ; $6cb8: $3b
	pop af                                           ; $6cb9: $f1
	dec c                                            ; $6cba: $0d
	pop af                                           ; $6cbb: $f1
	ld b, d                                          ; $6cbc: $42
	add hl, bc                                       ; $6cbd: $09
	add hl, bc                                       ; $6cbe: $09
	pop af                                           ; $6cbf: $f1
	add h                                            ; $6cc0: $84
	ld e, b                                          ; $6cc1: $58
	ld b, c                                          ; $6cc2: $41
	add hl, bc                                       ; $6cc3: $09
	add hl, bc                                       ; $6cc4: $09
	ldh a, [rAUD2ENV]                                ; $6cc5: $f0 $17
	ldh a, [rTIMA]                                   ; $6cc7: $f0 $05
	pop af                                           ; $6cc9: $f1
	ldh a, [c]                                       ; $6cca: $f2
	add hl, bc                                       ; $6ccb: $09
	add hl, bc                                       ; $6ccc: $09
	di                                               ; $6ccd: $f3
	ld [hl+], a                                      ; $6cce: $22
	ldh a, [c]                                       ; $6ccf: $f2
	ld h, c                                          ; $6cd0: $61
	add hl, bc                                       ; $6cd1: $09
	add hl, bc                                       ; $6cd2: $09
	adc e                                            ; $6cd3: $8b
	ldh a, [$72]                                     ; $6cd4: $f0 $72
	ldh a, [$5d]                                     ; $6cd6: $f0 $5d
	add hl, bc                                       ; $6cd8: $09
	add hl, bc                                       ; $6cd9: $09
	ldh a, [$d0]                                     ; $6cda: $f0 $d0
	ld a, [hl]                                       ; $6cdc: $7e
	pop af                                           ; $6cdd: $f1
	ld e, d                                          ; $6cde: $5a
	add hl, bc                                       ; $6cdf: $09
	add hl, bc                                       ; $6ce0: $09
	ldh a, [$d0]                                     ; $6ce1: $f0 $d0
	ld a, [hl]                                       ; $6ce3: $7e
	pop af                                           ; $6ce4: $f1
	cp b                                             ; $6ce5: $b8
	add hl, bc                                       ; $6ce6: $09
	add hl, bc                                       ; $6ce7: $09
	ldh a, [$d0]                                     ; $6ce8: $f0 $d0
	ld a, [hl]                                       ; $6cea: $7e
	ldh a, [c]                                       ; $6ceb: $f2
	inc h                                            ; $6cec: $24
	add hl, bc                                       ; $6ced: $09
	add hl, bc                                       ; $6cee: $09
	ldh a, [rAUD2ENV]                                ; $6cef: $f0 $17
	adc h                                            ; $6cf1: $8c
	pop af                                           ; $6cf2: $f1
	ld e, d                                          ; $6cf3: $5a
	add hl, bc                                       ; $6cf4: $09
	add hl, bc                                       ; $6cf5: $09
	ldh a, [rAUD2ENV]                                ; $6cf6: $f0 $17
	adc h                                            ; $6cf8: $8c
	pop af                                           ; $6cf9: $f1
	cp b                                             ; $6cfa: $b8
	add hl, bc                                       ; $6cfb: $09
	add hl, bc                                       ; $6cfc: $09
	di                                               ; $6cfd: $f3
	ldh [c], a                                       ; $6cfe: $e2
	ld b, d                                          ; $6cff: $42
	ldh a, [$ab]                                     ; $6d00: $f0 $ab
	add hl, bc                                       ; $6d02: $09
	add hl, bc                                       ; $6d03: $09
	pop af                                           ; $6d04: $f1
	push bc                                          ; $6d05: $c5
	pop af                                           ; $6d06: $f1
	call c, Call_079_5af1                            ; $6d07: $dc $f1 $5a
	add hl, bc                                       ; $6d0a: $09
	add hl, bc                                       ; $6d0b: $09
	pop af                                           ; $6d0c: $f1
	push bc                                          ; $6d0d: $c5
	pop af                                           ; $6d0e: $f1
	call c, $b8f1                                    ; $6d0f: $dc $f1 $b8
	add hl, bc                                       ; $6d12: $09
	add hl, bc                                       ; $6d13: $09
	pop af                                           ; $6d14: $f1
	push bc                                          ; $6d15: $c5
	pop af                                           ; $6d16: $f1
	call c, $24f2                                    ; $6d17: $dc $f2 $24
	add hl, bc                                       ; $6d1a: $09
	add hl, bc                                       ; $6d1b: $09
	ldh a, [$7e]                                     ; $6d1c: $f0 $7e
	ldh a, [$27]                                     ; $6d1e: $f0 $27
	add hl, bc                                       ; $6d20: $09
	add hl, bc                                       ; $6d21: $09
	ldh a, [rAUD3LOW]                                ; $6d22: $f0 $1d
	ldh a, [rAUD3LOW]                                ; $6d24: $f0 $1d
	add hl, bc                                       ; $6d26: $09
	add hl, bc                                       ; $6d27: $09
	ldh a, [rIF]                                     ; $6d28: $f0 $0f
	ldh a, [rIF]                                     ; $6d2a: $f0 $0f
	add hl, bc                                       ; $6d2c: $09
	add hl, bc                                       ; $6d2d: $09
	ldh a, [$1f]                                     ; $6d2e: $f0 $1f
	ldh a, [$6e]                                     ; $6d30: $f0 $6e
	add hl, bc                                       ; $6d32: $09
	add hl, bc                                       ; $6d33: $09
	pop af                                           ; $6d34: $f1
	inc c                                            ; $6d35: $0c
	ldh a, [$fc]                                     ; $6d36: $f0 $fc
	pop af                                           ; $6d38: $f1
	ld b, d                                          ; $6d39: $42
	add hl, bc                                       ; $6d3a: $09
	add hl, bc                                       ; $6d3b: $09
	ldh a, [$f0]                                     ; $6d3c: $f0 $f0
	ldh a, [$ca]                                     ; $6d3e: $f0 $ca
	add h                                            ; $6d40: $84
	add hl, bc                                       ; $6d41: $09
	add hl, bc                                       ; $6d42: $09
	halt                                             ; $6d43: $76
	add hl, bc                                       ; $6d44: $09
	add hl, bc                                       ; $6d45: $09
	ldh a, [$f8]                                     ; $6d46: $f0 $f8
	add hl, bc                                       ; $6d48: $09
	add hl, bc                                       ; $6d49: $09


TextSmallDictTable::
	dw TextByteA0h_Period
	dw TextByteA1h_QuestionMark
	dw $6f1f
	dw $6f21
	dw $6f24
	dw $6f27
	dw $6f2a
	dw $6f2d
	dw TextByteA8h_PeriodNewLine
	dw $6f33
	dw $6f36
	dw $6f39
	dw $6f3c
	dw $6f3f
	dw $6dd8
	dw $6de1
	dw $6de8
	dw $6def
	dw $6df6
	dw $6dfd
	dw $6e04
	dw $6e0a
	dw $6e11
	dw $6e17
	dw $6e1e
	dw $6e24
	dw $6e2c
	dw $6e32
	dw $6e3a
	dw $6e40
	dw $6e48
	dw $6e4e
	dw $6e55
	dw $6e5b
	dw $6e61
	dw $6e67
	dw $6e6f
	dw $6e76
	dw $6e7e
	dw $6e85
	dw $6e8a
	dw $6e8f
	dw $6e94
	dw $6e99
	dw $6e9e
	dw $6ea3
	dw $6ea8
	dw $6ead
	dw $6eb2
	dw $6eb7
	dw $6ebc
	dw $6ec1
	dw $6ec6
	dw $6ecc
	dw $6ed2
	dw $6ed8
	dw $6edd
	dw $6ee2
	dw $6ee7
	dw $6eec
	dw $6ef0
	dw $6ef4
	dw $6ef8
	dw $6efc
	dw $6f01
	dw $6f05
	dw $6f0a
	dw $6f0f
	dw $6f12
	dw $6f17
	dw TextByteA0h_Period


;
	add c                                            ; $6dd8: $81
	ld [hl], l                                       ; $6dd9: $75
	sub l                                            ; $6dda: $95
	ld h, l                                          ; $6ddb: $65
	ld l, c                                          ; $6ddc: $69
	ld a, $45                                        ; $6ddd: $3e $45
	add hl, sp                                       ; $6ddf: $39
	add hl, bc                                       ; $6de0: $09


	ld c, c                                          ; $6de1: $49
	jr c, jr_079_6e1d                                ; $6de2: $38 $39

	ld d, h                                          ; $6de4: $54
	ld c, c                                          ; $6de5: $49
	ld h, d                                          ; $6de6: $62
	add hl, bc                                       ; $6de7: $09
	ld a, d                                          ; $6de8: $7a
	ld d, a                                          ; $6de9: $57
	ld d, d                                          ; $6dea: $52
	ld a, $66                                        ; $6deb: $3e $66
	add hl, sp                                       ; $6ded: $39
	add hl, bc                                       ; $6dee: $09
	ld a, $66                                        ; $6def: $3e $66
	add hl, sp                                       ; $6df1: $39
	ld d, e                                          ; $6df2: $53
	ld a, [hl-]                                      ; $6df3: $3a
	jr c, jr_079_6dff                                ; $6df4: $38 $09

	ld h, a                                          ; $6df6: $67
	ld e, h                                          ; $6df7: $5c
	ld d, d                                          ; $6df8: $52
	ld a, $66                                        ; $6df9: $3e $66
	add hl, sp                                       ; $6dfb: $39
	add hl, bc                                       ; $6dfc: $09
	ld b, b                                          ; $6dfd: $40
	add hl, sp                                       ; $6dfe: $39

jr_079_6dff:
	ld c, d                                          ; $6dff: $4a
	ld d, c                                          ; $6e00: $51
	ld c, h                                          ; $6e01: $4c
	add l                                            ; $6e02: $85
	add hl, bc                                       ; $6e03: $09
	ld b, b                                          ; $6e04: $40
	ld c, l                                          ; $6e05: $4d
	ld e, e                                          ; $6e06: $5b
	ld d, [hl]                                       ; $6e07: $56
	ld b, [hl]                                       ; $6e08: $46
	add hl, bc                                       ; $6e09: $09
	ldh a, [$0c]                                     ; $6e0a: $f0 $0c
	ld e, h                                          ; $6e0c: $5c
	sub h                                            ; $6e0d: $94
	ld a, $3d                                        ; $6e0e: $3e $3d
	add hl, bc                                       ; $6e10: $09
	ld b, b                                          ; $6e11: $40
	add hl, sp                                       ; $6e12: $39
	ld c, d                                          ; $6e13: $4a
	ld d, c                                          ; $6e14: $51
	ld c, h                                          ; $6e15: $4c
	add hl, bc                                       ; $6e16: $09
	ldh a, [$4e]                                     ; $6e17: $f0 $4e
	adc d                                            ; $6e19: $8a
	ld h, c                                          ; $6e1a: $61
	ld d, [hl]                                       ; $6e1b: $56
	ld b, c                                          ; $6e1c: $41

jr_079_6e1d:
	add hl, bc                                       ; $6e1d: $09
	ld e, d                                          ; $6e1e: $5a
	add hl, sp                                       ; $6e1f: $39
	ld a, $3d                                        ; $6e20: $3e $3d
	ld b, d                                          ; $6e22: $42
	add hl, bc                                       ; $6e23: $09
	adc d                                            ; $6e24: $8a
	ldh a, [$37]                                     ; $6e25: $f0 $37
	ldh a, [$3a]                                     ; $6e27: $f0 $3a
	ld e, b                                          ; $6e29: $58
	ld b, c                                          ; $6e2a: $41
	add hl, bc                                       ; $6e2b: $09
	sub d                                            ; $6e2c: $92
	adc [hl]                                         ; $6e2d: $8e
	dec sp                                           ; $6e2e: $3b
	ccf                                              ; $6e2f: $3f
	ld c, h                                          ; $6e30: $4c
	add hl, bc                                       ; $6e31: $09
	ldh a, [rAUD4ENV]                                ; $6e32: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6e34: $f0 $23
	inc a                                            ; $6e36: $3c
	dec sp                                           ; $6e37: $3b
	dec a                                            ; $6e38: $3d
	add hl, bc                                       ; $6e39: $09
	ld e, e                                          ; $6e3a: $5b
	ld d, [hl]                                       ; $6e3b: $56
	ld a, [hl-]                                      ; $6e3c: $3a
	jr c, jr_079_6e7b                                ; $6e3d: $38 $3c

	add hl, bc                                       ; $6e3f: $09
	ldh a, [$7d]                                     ; $6e40: $f0 $7d
	ld l, b                                          ; $6e42: $68
	ldh a, [hDisp1_BGP]                                     ; $6e43: $f0 $92
	ld e, b                                          ; $6e45: $58
	ld b, c                                          ; $6e46: $41
	add hl, bc                                       ; $6e47: $09
	ld b, b                                          ; $6e48: $40
	add hl, sp                                       ; $6e49: $39
	ld c, d                                          ; $6e4a: $4a
	ld d, c                                          ; $6e4b: $51
	inc a                                            ; $6e4c: $3c
	add hl, bc                                       ; $6e4d: $09
	ld h, h                                          ; $6e4e: $64
	pop af                                           ; $6e4f: $f1
	or e                                             ; $6e50: $b3
	ld h, c                                          ; $6e51: $61
	ld d, [hl]                                       ; $6e52: $56
	ld b, c                                          ; $6e53: $41
	add hl, bc                                       ; $6e54: $09
	ld b, b                                          ; $6e55: $40
	add hl, sp                                       ; $6e56: $39
	ld a, [hl-]                                      ; $6e57: $3a
	ld b, c                                          ; $6e58: $41
	ld b, h                                          ; $6e59: $44
	add hl, bc                                       ; $6e5a: $09
	ld e, d                                          ; $6e5b: $5a

jr_079_6e5c:
	add hl, sp                                       ; $6e5c: $39
	ld b, h                                          ; $6e5d: $44
	dec sp                                           ; $6e5e: $3b
	dec a                                            ; $6e5f: $3d
	add hl, bc                                       ; $6e60: $09
	ld b, b                                          ; $6e61: $40
	add hl, sp                                       ; $6e62: $39
	add d                                            ; $6e63: $82
	ld e, [hl]                                       ; $6e64: $5e
	ld a, e                                          ; $6e65: $7b
	add hl, bc                                       ; $6e66: $09
	ld a, [hl]                                       ; $6e67: $7e
	jr c, jr_079_6e5c                                ; $6e68: $38 $f2

	adc a                                            ; $6e6a: $8f
	ldh a, [c]                                       ; $6e6b: $f2
	sub b                                            ; $6e6c: $90
	ld h, d                                          ; $6e6d: $62
	add hl, bc                                       ; $6e6e: $09
	ldh a, [$97]                                     ; $6e6f: $f0 $97
	sbc h                                            ; $6e71: $9c
	inc a                                            ; $6e72: $3c
	ld a, $38                                        ; $6e73: $3e $38
	add hl, bc                                       ; $6e75: $09
	ldh a, [$57]                                     ; $6e76: $f0 $57
	pop af                                           ; $6e78: $f1
	ld e, $50                                        ; $6e79: $1e $50

jr_079_6e7b:
	ld a, $38                                        ; $6e7b: $3e $38
	add hl, bc                                       ; $6e7d: $09
	ldh a, [rAUD2HIGH]                               ; $6e7e: $f0 $19
	ld b, a                                          ; $6e80: $47
	sub [hl]                                         ; $6e81: $96
	ld e, a                                          ; $6e82: $5f
	add hl, sp                                       ; $6e83: $39
	add hl, bc                                       ; $6e84: $09
	ld b, b                                          ; $6e85: $40
	inc [hl]                                         ; $6e86: $34
	ld b, b                                          ; $6e87: $40
	add hl, sp                                       ; $6e88: $39
	add hl, bc                                       ; $6e89: $09
	ld a, [hl]                                       ; $6e8a: $7e
	inc a                                            ; $6e8b: $3c
	dec sp                                           ; $6e8c: $3b
	dec a                                            ; $6e8d: $3d
	add hl, bc                                       ; $6e8e: $09
	ld h, c                                          ; $6e8f: $61
	ld h, [hl]                                       ; $6e90: $66
	dec sp                                           ; $6e91: $3b
	ld c, c                                          ; $6e92: $49
	add hl, bc                                       ; $6e93: $09
	ld b, b                                          ; $6e94: $40
	ld c, l                                          ; $6e95: $4d
	ld c, d                                          ; $6e96: $4a
	ld c, e                                          ; $6e97: $4b
	add hl, bc                                       ; $6e98: $09
	ld a, d                                          ; $6e99: $7a
	ld e, a                                          ; $6e9a: $5f
	add hl, sp                                       ; $6e9b: $39
	inc a                                            ; $6e9c: $3c
	add hl, bc                                       ; $6e9d: $09
	ld c, d                                          ; $6e9e: $4a
	ld d, c                                          ; $6e9f: $51
	ld c, h                                          ; $6ea0: $4c
	add l                                            ; $6ea1: $85
	add hl, bc                                       ; $6ea2: $09
	ld h, a                                          ; $6ea3: $67
	ld d, h                                          ; $6ea4: $54
	add hl, sp                                       ; $6ea5: $39
	ld b, l                                          ; $6ea6: $45
	add hl, bc                                       ; $6ea7: $09
	dec a                                            ; $6ea8: $3d
	ld d, l                                          ; $6ea9: $55
	ld e, b                                          ; $6eaa: $58
	ld b, c                                          ; $6eab: $41
	add hl, bc                                       ; $6eac: $09
	ld e, d                                          ; $6ead: $5a
	add hl, sp                                       ; $6eae: $39
	ld a, $3f                                        ; $6eaf: $3e $3f
	add hl, bc                                       ; $6eb1: $09
	jr c, jr_079_6eec                                ; $6eb2: $38 $38

	ld h, e                                          ; $6eb4: $63
	ld b, l                                          ; $6eb5: $45
	add hl, bc                                       ; $6eb6: $09
	ld a, [hl-]                                      ; $6eb7: $3a
	inc a                                            ; $6eb8: $3c
	ld a, [hl-]                                      ; $6eb9: $3a
	inc a                                            ; $6eba: $3c
	add hl, bc                                       ; $6ebb: $09
	ld b, [hl]                                       ; $6ebc: $46
	ld b, c                                          ; $6ebd: $41
	ld d, d                                          ; $6ebe: $52
	ld d, a                                          ; $6ebf: $57
	add hl, bc                                       ; $6ec0: $09
	ld b, b                                          ; $6ec1: $40
	add hl, sp                                       ; $6ec2: $39
	ld a, [hl-]                                      ; $6ec3: $3a
	ld b, d                                          ; $6ec4: $42
	add hl, bc                                       ; $6ec5: $09
	ldh a, [$34]                                     ; $6ec6: $f0 $34
	ld b, a                                          ; $6ec8: $47
	jr c, jr_079_6f03                                ; $6ec9: $38 $38

	add hl, bc                                       ; $6ecb: $09
	ldh a, [$2d]                                     ; $6ecc: $f0 $2d
	ld d, b                                          ; $6ece: $50
	ld a, [hl-]                                      ; $6ecf: $3a
	jr c, jr_079_6edb                                ; $6ed0: $38 $09

	ldh a, [hLCDCIntHandlerIdx]                                     ; $6ed2: $f0 $81
	ld e, l                                          ; $6ed4: $5d
	ccf                                              ; $6ed5: $3f
	ld c, a                                          ; $6ed6: $4f
	add hl, bc                                       ; $6ed7: $09
	ld h, a                                          ; $6ed8: $67
	ld d, h                                          ; $6ed9: $54
	add hl, sp                                       ; $6eda: $39

jr_079_6edb:
	inc a                                            ; $6edb: $3c
	add hl, bc                                       ; $6edc: $09
	jr c, jr_079_6f17                                ; $6edd: $38 $38

	ld e, l                                          ; $6edf: $5d
	ld e, d                                          ; $6ee0: $5a
	add hl, bc                                       ; $6ee1: $09
	ld a, c                                          ; $6ee2: $79
	dec sp                                           ; $6ee3: $3b
	inc a                                            ; $6ee4: $3c
	ld d, l                                          ; $6ee5: $55
	add hl, bc                                       ; $6ee6: $09
	jr c, jr_079_6f21                                ; $6ee7: $38 $38

	inc a                                            ; $6ee9: $3c
	ld a, [hl-]                                      ; $6eea: $3a
	add hl, bc                                       ; $6eeb: $09

jr_079_6eec:
	add b                                            ; $6eec: $80
	ld d, d                                          ; $6eed: $52
	ld b, c                                          ; $6eee: $41
	add hl, bc                                       ; $6eef: $09
	ld b, b                                          ; $6ef0: $40
	add hl, sp                                       ; $6ef1: $39
	ld c, h                                          ; $6ef2: $4c
	add hl, bc                                       ; $6ef3: $09
	ld b, l                                          ; $6ef4: $45
	ld a, $34                                        ; $6ef5: $3e $34
	add hl, bc                                       ; $6ef7: $09
	adc b                                            ; $6ef8: $88
	sub c                                            ; $6ef9: $91
	ld b, a                                          ; $6efa: $47
	add hl, bc                                       ; $6efb: $09
	ld b, [hl]                                       ; $6efc: $46
	ldh a, [rSB]                                     ; $6efd: $f0 $01
	ld c, [hl]                                       ; $6eff: $4e
	add hl, bc                                       ; $6f00: $09
	dec a                                            ; $6f01: $3d
	ld h, e                                          ; $6f02: $63

jr_079_6f03:
	ld c, h                                          ; $6f03: $4c
	add hl, bc                                       ; $6f04: $09
	ldh a, [rAUD2ENV]                                ; $6f05: $f0 $17
	ld b, d                                          ; $6f07: $42
	adc h                                            ; $6f08: $8c
	add hl, bc                                       ; $6f09: $09
	ldh a, [$a8]                                     ; $6f0a: $f0 $a8
	ldh a, [$8b]                                     ; $6f0c: $f0 $8b
	add hl, bc                                       ; $6f0e: $09
	ld b, [hl]                                       ; $6f0f: $46
	ld d, b                                          ; $6f10: $50
	add hl, bc                                       ; $6f11: $09
	ldh a, [$67]                                     ; $6f12: $f0 $67
	ldh a, [rTAC]                                    ; $6f14: $f0 $07
	add hl, bc                                       ; $6f16: $09

jr_079_6f17:
	ld l, e                                          ; $6f17: $6b
	ldh a, [$0d]                                     ; $6f18: $f0 $0d
	add hl, bc                                       ; $6f1a: $09


TextByteA0h_Period:
	dec [hl]                                         ; $6f1b: $35
	dec bc                                           ; $6f1c: $0b


TextByteA1h_QuestionMark:
	ld [hl], $0b                                     ; $6f1d: $36 $0b


;
	scf                                              ; $6f1f: $37
	dec bc                                           ; $6f20: $0b

jr_079_6f21:
	dec [hl]                                         ; $6f21: $35
	inc sp                                           ; $6f22: $33
	dec bc                                           ; $6f23: $0b
	dec [hl]                                         ; $6f24: $35
	ld sp, $480b                                     ; $6f25: $31 $0b $48
	ld sp, $360b                                     ; $6f28: $31 $0b $36
	ld sp, $370b                                     ; $6f2b: $31 $0b $37
	db $31, $0b


TextByteA8h_PeriodNewLine:
	db $35
	ld a, [bc]                                       ; $6f31: $0a
	add hl, bc                                       ; $6f32: $09


;
	ld [hl], $0a                                     ; $6f33: $36 $0a
	add hl, bc                                       ; $6f35: $09
	scf                                              ; $6f36: $37
	ld a, [bc]                                       ; $6f37: $0a
	add hl, bc                                       ; $6f38: $09
	ld c, b                                          ; $6f39: $48
	ld a, [bc]                                       ; $6f3a: $0a
	add hl, bc                                       ; $6f3b: $09
	inc [hl]                                         ; $6f3c: $34
	ld a, [bc]                                       ; $6f3d: $0a
	add hl, bc                                       ; $6f3e: $09
	ld c, b                                          ; $6f3f: $48
	dec [hl]                                         ; $6f40: $35
	ld a, [bc]                                       ; $6f41: $0a
	add hl, bc                                       ; $6f42: $09
	dec b                                            ; $6f43: $05
	pop af                                           ; $6f44: $f1
	or a                                             ; $6f45: $b7
	pop af                                           ; $6f46: $f1
	add $9b                                          ; $6f47: $c6 $9b
	ldh a, [$0e]                                     ; $6f49: $f0 $0e
	add hl, bc                                       ; $6f4b: $09
	dec b                                            ; $6f4c: $05
	ldh a, [$da]                                     ; $6f4d: $f0 $da
	ldh a, [rLYC]                                    ; $6f4f: $f0 $45
	pop af                                           ; $6f51: $f1
	or l                                             ; $6f52: $b5
	ld a, h                                          ; $6f53: $7c
	add hl, bc                                       ; $6f54: $09
	dec b                                            ; $6f55: $05
	ldh a, [$b9]                                     ; $6f56: $f0 $b9
	ld a, h                                          ; $6f58: $7c
	ldh a, [$80]                                     ; $6f59: $f0 $80
	ldh a, [hDisp1_BGP]                                     ; $6f5b: $f0 $92
	add hl, bc                                       ; $6f5d: $09
	dec b                                            ; $6f5e: $05
	ldh a, [$e6]                                     ; $6f5f: $f0 $e6
	ldh a, [$ef]                                     ; $6f61: $f0 $ef
	pop af                                           ; $6f63: $f1
	xor [hl]                                         ; $6f64: $ae
	adc h                                            ; $6f65: $8c
	add hl, bc                                       ; $6f66: $09
	dec b                                            ; $6f67: $05
	ldh a, [$4c]                                     ; $6f68: $f0 $4c
	ldh a, [rAUD2LOW]                                ; $6f6a: $f0 $18
	pop af                                           ; $6f6c: $f1
	sbc a                                            ; $6f6d: $9f
	pop af                                           ; $6f6e: $f1
	adc [hl]                                         ; $6f6f: $8e
	add hl, bc                                       ; $6f70: $09
	dec b                                            ; $6f71: $05
	ldh a, [$3c]                                     ; $6f72: $f0 $3c
	ldh a, [$39]                                     ; $6f74: $f0 $39
	ldh a, [$b5]                                     ; $6f76: $f0 $b5
	inc a                                            ; $6f78: $3c
	ld d, a                                          ; $6f79: $57
	add hl, bc                                       ; $6f7a: $09
	dec b                                            ; $6f7b: $05
	ldh a, [$33]                                     ; $6f7c: $f0 $33
	ldh a, [$2e]                                     ; $6f7e: $f0 $2e
	pop af                                           ; $6f80: $f1
	ld l, d                                          ; $6f81: $6a
	add hl, bc                                       ; $6f82: $09
	dec b                                            ; $6f83: $05
	ldh a, [$b3]                                     ; $6f84: $f0 $b3
	pop af                                           ; $6f86: $f1
	db $db                                           ; $6f87: $db
	pop af                                           ; $6f88: $f1
	ldh a, [$09]                                     ; $6f89: $f0 $09
	dec b                                            ; $6f8b: $05
	ldh a, [$7d]                                     ; $6f8c: $f0 $7d
	ld l, b                                          ; $6f8e: $68
	ldh a, [hDisp1_BGP]                                     ; $6f8f: $f0 $92
	pop af                                           ; $6f91: $f1
	call nz, $098c                                   ; $6f92: $c4 $8c $09
	dec b                                            ; $6f95: $05
	adc d                                            ; $6f96: $8a
	ldh a, [$37]                                     ; $6f97: $f0 $37
	ldh a, [$3a]                                     ; $6f99: $f0 $3a
	ldh a, [rHDMA2]                                  ; $6f9b: $f0 $52
	add hl, bc                                       ; $6f9d: $09
	dec b                                            ; $6f9e: $05
	ldh a, [$0a]                                     ; $6f9f: $f0 $0a
	pop af                                           ; $6fa1: $f1
	and b                                            ; $6fa2: $a0
	ldh a, [rAUD2ENV]                                ; $6fa3: $f0 $17
	ldh a, [$4e]                                     ; $6fa5: $f0 $4e
	adc d                                            ; $6fa7: $8a
	add hl, bc                                       ; $6fa8: $09
	dec b                                            ; $6fa9: $05
	ldh a, [$6c]                                     ; $6faa: $f0 $6c
	ldh a, [$61]                                     ; $6fac: $f0 $61
	ldh a, [c]                                       ; $6fae: $f2
	ld d, $8a                                        ; $6faf: $16 $8a
	add hl, bc                                       ; $6fb1: $09
	dec b                                            ; $6fb2: $05
	ldh a, [rIF]                                     ; $6fb3: $f0 $0f
	ld l, c                                          ; $6fb5: $69
	ldh a, [rP1]                                     ; $6fb6: $f0 $00
	sbc b                                            ; $6fb8: $98
	ldh a, [$3d]                                     ; $6fb9: $f0 $3d
	ldh a, [rAUD3HIGH]                               ; $6fbb: $f0 $1e
	ldh a, [c]                                       ; $6fbd: $f2
	ld l, l                                          ; $6fbe: $6d
	add hl, bc                                       ; $6fbf: $09
	dec b                                            ; $6fc0: $05
	ldh a, [hDisp1_OBP0]                                     ; $6fc1: $f0 $93
	ldh a, [$b4]                                     ; $6fc3: $f0 $b4
	pop af                                           ; $6fc5: $f1
	di                                               ; $6fc6: $f3
	adc h                                            ; $6fc7: $8c
	add hl, bc                                       ; $6fc8: $09
	dec b                                            ; $6fc9: $05
	ldh a, [$df]                                     ; $6fca: $f0 $df
	pop af                                           ; $6fcc: $f1
	db $f4                                           ; $6fcd: $f4
	ld [hl], d                                       ; $6fce: $72
	pop af                                           ; $6fcf: $f1
	ld e, $09                                        ; $6fd0: $1e $09
	dec b                                            ; $6fd2: $05
	ldh a, [$a2]                                     ; $6fd3: $f0 $a2
	ldh a, [rAUDTERM]                                ; $6fd5: $f0 $25
	ldh a, [hDisp1_SCX]                                     ; $6fd7: $f0 $91
	ld [hl], l                                       ; $6fd9: $75
	ld a, l                                          ; $6fda: $7d
	add hl, bc                                       ; $6fdb: $09
	dec b                                            ; $6fdc: $05
	ldh a, [$0a]                                     ; $6fdd: $f0 $0a
	pop af                                           ; $6fdf: $f1
	and b                                            ; $6fe0: $a0
	ldh a, [rAUD2ENV]                                ; $6fe1: $f0 $17
	adc e                                            ; $6fe3: $8b
	ldh a, [$72]                                     ; $6fe4: $f0 $72
	add hl, bc                                       ; $6fe6: $09
	dec b                                            ; $6fe7: $05
	ldh a, [$f0]                                     ; $6fe8: $f0 $f0
	ldh a, [c]                                       ; $6fea: $f2
	ld [hl], d                                       ; $6feb: $72
	ldh a, [c]                                       ; $6fec: $f2
	ld b, e                                          ; $6fed: $43
	ldh a, [c]                                       ; $6fee: $f2
	rst SubAFromBC                                          ; $6fef: $e7
	di                                               ; $6ff0: $f3
	ld l, $09                                        ; $6ff1: $2e $09
	dec b                                            ; $6ff3: $05
	ldh a, [rAUD4LEN]                                ; $6ff4: $f0 $20
	ld [hl], e                                       ; $6ff6: $73
	ldh a, [$32]                                     ; $6ff7: $f0 $32
	pop af                                           ; $6ff9: $f1
	ld b, b                                          ; $6ffa: $40
	ld h, l                                          ; $6ffb: $65
	ldh a, [$32]                                     ; $6ffc: $f0 $32
	add hl, bc                                       ; $6ffe: $09
	dec b                                            ; $6fff: $05
	ldh a, [$8e]                                     ; $7000: $f0 $8e
	ldh a, [rSC]                                     ; $7002: $f0 $02
	ldh a, [$50]                                     ; $7004: $f0 $50
	ldh a, [$7b]                                     ; $7006: $f0 $7b

jr_079_7008:
	ld [hl], e                                       ; $7008: $73
	ld l, c                                          ; $7009: $69
	add hl, bc                                       ; $700a: $09
	dec b                                            ; $700b: $05
	ld de, $0912                                     ; $700c: $11 $12 $09
	dec b                                            ; $700f: $05
	ldh a, [$9b]                                     ; $7010: $f0 $9b

jr_079_7012:
	ldh a, [$28]                                     ; $7012: $f0 $28
	ld b, d                                          ; $7014: $42
	pop af                                           ; $7015: $f1
	jr z, jr_079_7008                                ; $7016: $28 $f0

	ld b, h                                          ; $7018: $44
	add hl, bc                                       ; $7019: $09
	dec b                                            ; $701a: $05
	ldh a, [rAUD2HIGH]                               ; $701b: $f0 $19
	ldh a, [c]                                       ; $701d: $f2
	db $ec                                           ; $701e: $ec
	pop af                                           ; $701f: $f1
	jr z, jr_079_7012                                ; $7020: $28 $f0

	ld b, h                                          ; $7022: $44
	add hl, bc                                       ; $7023: $09
	dec b                                            ; $7024: $05
	sbc b                                            ; $7025: $98
	ldh a, [rWX]                                     ; $7026: $f0 $4b
	ld [hl], e                                       ; $7028: $73
	ldh a, [$fd]                                     ; $7029: $f0 $fd
	ld h, l                                          ; $702b: $65
	ldh a, [$50]                                     ; $702c: $f0 $50
	di                                               ; $702e: $f3
	ld [hl-], a                                      ; $702f: $32
	add hl, bc                                       ; $7030: $09
	dec b                                            ; $7031: $05
	ldh a, [rPCM34]                                  ; $7032: $f0 $77
	ldh a, [c]                                       ; $7034: $f2
	dec d                                            ; $7035: $15
	ldh a, [$df]                                     ; $7036: $f0 $df
	add hl, bc                                       ; $7038: $09
	dec b                                            ; $7039: $05
	ldh a, [rOBP0]                                   ; $703a: $f0 $48
	ldh a, [$2c]                                     ; $703c: $f0 $2c
	ldh a, [rLY]                                     ; $703e: $f0 $44
	add hl, bc                                       ; $7040: $09
	dec b                                            ; $7041: $05
	pop af                                           ; $7042: $f1
	jp c, $2cf0                                      ; $7043: $da $f0 $2c

	ldh a, [rLY]                                     ; $7046: $f0 $44
	add hl, bc                                       ; $7048: $09
	dec b                                            ; $7049: $05
	adc d                                            ; $704a: $8a
	ldh a, [$73]                                     ; $704b: $f0 $73
	ldh a, [$df]                                     ; $704d: $f0 $df
	add hl, bc                                       ; $704f: $09
	dec b                                            ; $7050: $05
	ldh a, [c]                                       ; $7051: $f2
	jr z, @-$0d                                      ; $7052: $28 $f1

	ld l, $f0                                        ; $7054: $2e $f0
	rst SubAFromDE                                          ; $7056: $df
	add hl, bc                                       ; $7057: $09
	dec b                                            ; $7058: $05
	add c                                            ; $7059: $81
	ldh a, [rSC]                                     ; $705a: $f0 $02
	ldh a, [$09]                                     ; $705c: $f0 $09
	ldh a, [rDIV]                                    ; $705e: $f0 $04
	ldh a, [rP1]                                     ; $7060: $f0 $00
	ldh a, [hDisp0_WX]                                     ; $7062: $f0 $89
	ldh a, [$27]                                     ; $7064: $f0 $27
	add hl, bc                                       ; $7066: $09
	dec b                                            ; $7067: $05
	ldh a, [$6d]                                     ; $7068: $f0 $6d
	ld e, c                                          ; $706a: $59
	ldh a, [$27]                                     ; $706b: $f0 $27
	ldh a, [$7b]                                     ; $706d: $f0 $7b
	ld h, l                                          ; $706f: $65
	ldh a, [rDIV]                                    ; $7070: $f0 $04
	ld e, c                                          ; $7072: $59
	add hl, bc                                       ; $7073: $09
	dec b                                            ; $7074: $05
	ldh a, [$6e]                                     ; $7075: $f0 $6e
	ld e, c                                          ; $7077: $59
	ldh a, [rP1]                                     ; $7078: $f0 $00
	ld h, l                                          ; $707a: $65
	ldh a, [$50]                                     ; $707b: $f0 $50
	add hl, bc                                       ; $707d: $09
	dec b                                            ; $707e: $05
	ldh a, [$35]                                     ; $707f: $f0 $35
	ldh a, [rSC]                                     ; $7081: $f0 $02
	ldh a, [$c3]                                     ; $7083: $f0 $c3
	ldh a, [$c2]                                     ; $7085: $f0 $c2
	add hl, bc                                       ; $7087: $09
	dec b                                            ; $7088: $05
	ldh a, [$b2]                                     ; $7089: $f0 $b2
	ldh a, [rLY]                                     ; $708b: $f0 $44
	pop af                                           ; $708d: $f1
	sbc b                                            ; $708e: $98
	add hl, bc                                       ; $708f: $09
	dec b                                            ; $7090: $05
	add e                                            ; $7091: $83
	ldh a, [rDIV]                                    ; $7092: $f0 $04
	ldh a, [$7e]                                     ; $7094: $f0 $7e
	ldh a, [$3d]                                     ; $7096: $f0 $3d
	ldh a, [$27]                                     ; $7098: $f0 $27
	add hl, bc                                       ; $709a: $09
	dec b                                            ; $709b: $05
	add c                                            ; $709c: $81
	ld e, c                                          ; $709d: $59
	ldh a, [$03]                                     ; $709e: $f0 $03
	add hl, bc                                       ; $70a0: $09
	dec b                                            ; $70a1: $05
	pop af                                           ; $70a2: $f1
	cpl                                              ; $70a3: $2f
	add hl, bc                                       ; $70a4: $09
	dec b                                            ; $70a5: $05
	ldh a, [$d4]                                     ; $70a6: $f0 $d4
	pop af                                           ; $70a8: $f1
	ld a, [hl+]                                      ; $70a9: $2a
	add hl, bc                                       ; $70aa: $09
	dec b                                            ; $70ab: $05
	add e                                            ; $70ac: $83
	ldh a, [$c2]                                     ; $70ad: $f0 $c2
	ld e, c                                          ; $70af: $59
	ld l, c                                          ; $70b0: $69
	add hl, bc                                       ; $70b1: $09
	dec b                                            ; $70b2: $05
	add e                                            ; $70b3: $83
	ldh a, [$2f]                                     ; $70b4: $f0 $2f
	ld e, c                                          ; $70b6: $59
	add hl, bc                                       ; $70b7: $09
	dec b                                            ; $70b8: $05
	ldh a, [$74]                                     ; $70b9: $f0 $74
	ldh a, [$7a]                                     ; $70bb: $f0 $7a
	ldh a, [$df]                                     ; $70bd: $f0 $df
	add hl, bc                                       ; $70bf: $09
	dec b                                            ; $70c0: $05
	ldh a, [rAUD1LEN]                                ; $70c1: $f0 $11
	ld h, l                                          ; $70c3: $65
	ldh a, [rAUD4POLY]                               ; $70c4: $f0 $22
	ld e, c                                          ; $70c6: $59
	ld l, c                                          ; $70c7: $69
	add hl, bc                                       ; $70c8: $09
	dec b                                            ; $70c9: $05
	ldh a, [$d6]                                     ; $70ca: $f0 $d6
	ldh a, [$5a]                                     ; $70cc: $f0 $5a
	add hl, bc                                       ; $70ce: $09
	dec b                                            ; $70cf: $05
	ldh a, [$e8]                                     ; $70d0: $f0 $e8
	ld c, [hl]                                       ; $70d2: $4e
	add hl, bc                                       ; $70d3: $09
	ld [$0188], sp                                   ; $70d4: $08 $88 $01
	di                                               ; $70d7: $f3
	ld l, c                                          ; $70d8: $69
	add hl, bc                                       ; $70d9: $09
	dec b                                            ; $70da: $05
	di                                               ; $70db: $f3
	sub h                                            ; $70dc: $94
	add hl, bc                                       ; $70dd: $09
	dec b                                            ; $70de: $05
	ldh a, [rAUD3HIGH]                               ; $70df: $f0 $1e
	add hl, bc                                       ; $70e1: $09
	dec b                                            ; $70e2: $05
	ldh a, [rAUD3HIGH]                               ; $70e3: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $70e5: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $70e7: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $70e9: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $70eb: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $70ed: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $70ef: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $70f1: $f0 $1e
	add hl, bc                                       ; $70f3: $09
	dec b                                            ; $70f4: $05
	ldh a, [rAUD1HIGH]                               ; $70f5: $f0 $14
	add hl, bc                                       ; $70f7: $09
	dec b                                            ; $70f8: $05
	ldh a, [rLYC]                                    ; $70f9: $f0 $45
	add hl, bc                                       ; $70fb: $09
	dec b                                            ; $70fc: $05
	ld l, b                                          ; $70fd: $68
	add hl, bc                                       ; $70fe: $09
	dec b                                            ; $70ff: $05
	ldh a, [c]                                       ; $7100: $f2
	cp [hl]                                          ; $7101: $be
	add hl, bc                                       ; $7102: $09
	ld [$0658], sp                                   ; $7103: $08 $58 $06
	ldh a, [$d0]                                     ; $7106: $f0 $d0
	ldh a, [$79]                                     ; $7108: $f0 $79
	add hl, bc                                       ; $710a: $09
	ld [$0458], sp                                   ; $710b: $08 $58 $04
	pop af                                           ; $710e: $f1
	ld e, d                                          ; $710f: $5a
	pop af                                           ; $7110: $f1
	db $e4                                           ; $7111: $e4
	add hl, bc                                       ; $7112: $09
	ld [$0458], sp                                   ; $7113: $08 $58 $04
	pop af                                           ; $7116: $f1
	cp b                                             ; $7117: $b8
	pop af                                           ; $7118: $f1
	db $e4                                           ; $7119: $e4
	add hl, bc                                       ; $711a: $09

jr_079_711b:
	ld [$0458], sp                                   ; $711b: $08 $58 $04
	pop af                                           ; $711e: $f1
	ld e, d                                          ; $711f: $5a
	pop af                                           ; $7120: $f1
	cp b                                             ; $7121: $b8
	pop af                                           ; $7122: $f1
	db $e4                                           ; $7123: $e4
	add hl, bc                                       ; $7124: $09
	ld [$0458], sp                                   ; $7125: $08 $58 $04
	pop af                                           ; $7128: $f1
	ld h, h                                          ; $7129: $64
	pop af                                           ; $712a: $f1
	db $e4                                           ; $712b: $e4
	add hl, bc                                       ; $712c: $09
	dec b                                            ; $712d: $05
	ldh a, [rSCX]                                    ; $712e: $f0 $43
	ldh a, [$b8]                                     ; $7130: $f0 $b8
	adc a                                            ; $7132: $8f
	add hl, bc                                       ; $7133: $09
	dec b                                            ; $7134: $05
	ldh a, [$aa]                                     ; $7135: $f0 $aa

jr_079_7137:
	adc c                                            ; $7137: $89
	adc a                                            ; $7138: $8f
	add hl, bc                                       ; $7139: $09
	dec b                                            ; $713a: $05
	adc d                                            ; $713b: $8a
	ldh a, [$73]                                     ; $713c: $f0 $73
	adc a                                            ; $713e: $8f
	add hl, bc                                       ; $713f: $09
	dec b                                            ; $7140: $05
	pop af                                           ; $7141: $f1
	ld b, c                                          ; $7142: $41
	ldh a, [$8b]                                     ; $7143: $f0 $8b
	sub b                                            ; $7145: $90
	adc a                                            ; $7146: $8f
	add hl, bc                                       ; $7147: $09
	dec b                                            ; $7148: $05
	ldh a, [rAUD2LOW]                                ; $7149: $f0 $18
	ldh a, [$dc]                                     ; $714b: $f0 $dc
	adc a                                            ; $714d: $8f
	add hl, bc                                       ; $714e: $09
	dec b                                            ; $714f: $05
	ldh a, [rAUD4POLY]                               ; $7150: $f0 $22
	ld [hl], e                                       ; $7152: $73
	ldh a, [$35]                                     ; $7153: $f0 $35
	ld e, c                                          ; $7155: $59
	adc a                                            ; $7156: $8f
	add hl, bc                                       ; $7157: $09
	dec b                                            ; $7158: $05
	ldh a, [$60]                                     ; $7159: $f0 $60
	pop af                                           ; $715b: $f1
	ld [bc], a                                       ; $715c: $02
	add e                                            ; $715d: $83
	adc a                                            ; $715e: $8f
	add hl, bc                                       ; $715f: $09
	dec b                                            ; $7160: $05
	ldh a, [rPCM34]                                  ; $7161: $f0 $77
	ldh a, [hDisp1_SCY]                                     ; $7163: $f0 $90
	adc a                                            ; $7165: $8f
	add hl, bc                                       ; $7166: $09
	dec b                                            ; $7167: $05
	ldh a, [rAUD4LEN]                                ; $7168: $f0 $20
	add e                                            ; $716a: $83
	ldh a, [$c2]                                     ; $716b: $f0 $c2
	ld [hl], e                                       ; $716d: $73
	ld l, c                                          ; $716e: $69
	adc a                                            ; $716f: $8f
	add hl, bc                                       ; $7170: $09
	dec b                                            ; $7171: $05
	ld l, a                                          ; $7172: $6f
	ldh a, [c]                                       ; $7173: $f2
	dec b                                            ; $7174: $05
	adc a                                            ; $7175: $8f
	add hl, bc                                       ; $7176: $09
	dec b                                            ; $7177: $05
	ldh a, [rAUD1LOW]                                ; $7178: $f0 $13
	ldh a, [$28]                                     ; $717a: $f0 $28
	push af                                          ; $717c: $f5
	db $ed                                           ; $717d: $ed
	add hl, bc                                       ; $717e: $09
	ld [$2000], sp                                   ; $717f: $08 $00 $20
	ld [hl], d                                       ; $7182: $72
	adc c                                            ; $7183: $89

jr_079_7184:
	ld a, $3d                                        ; $7184: $3e $3d
	jr c, jr_079_711b                                ; $7186: $38 $93

	ldh a, [rSC]                                     ; $7188: $f0 $02
	ldh a, [rBCPD]                                   ; $718a: $f0 $69
	ld h, d                                          ; $718c: $62
	ld a, [bc]                                       ; $718d: $0a
	pop af                                           ; $718e: $f1
	jr c, jr_079_7184                                ; $718f: $38 $f3

	ld l, [hl]                                       ; $7191: $6e
	ld a, $3f                                        ; $7192: $3e $3f
	ld d, l                                          ; $7194: $55
	ld b, h                                          ; $7195: $44
	ld e, b                                          ; $7196: $58
	jr c, jr_079_71ce                                ; $7197: $38 $35

	add hl, bc                                       ; $7199: $09
	add hl, bc                                       ; $719a: $09
	ld [$2000], sp                                   ; $719b: $08 $00 $20
	sub [hl]                                         ; $719e: $96
	adc a                                            ; $719f: $8f

jr_079_71a0:
	ld a, $3d                                        ; $71a0: $3e $3d
	jr c, jr_079_7137                                ; $71a2: $38 $93

	ldh a, [rSC]                                     ; $71a4: $f0 $02
	ldh a, [rBCPD]                                   ; $71a6: $f0 $69
	ld h, d                                          ; $71a8: $62
	ld a, [bc]                                       ; $71a9: $0a
	pop af                                           ; $71aa: $f1
	jr c, jr_079_71a0                                ; $71ab: $38 $f3

	ld l, [hl]                                       ; $71ad: $6e
	ld a, $3f                                        ; $71ae: $3e $3f
	ld d, l                                          ; $71b0: $55
	ld b, h                                          ; $71b1: $44
	ld e, b                                          ; $71b2: $58
	jr c, jr_079_71ea                                ; $71b3: $38 $35

	add hl, bc                                       ; $71b5: $09
	add hl, bc                                       ; $71b6: $09
	ld [$2000], sp                                   ; $71b7: $08 $00 $20
	sub [hl]                                         ; $71ba: $96
	adc a                                            ; $71bb: $8f
	ld c, d                                          ; $71bc: $4a
	ld e, h                                          ; $71bd: $5c
	ld c, [hl]                                       ; $71be: $4e
	sub e                                            ; $71bf: $93
	ldh a, [rSC]                                     ; $71c0: $f0 $02
	ldh a, [rBCPD]                                   ; $71c2: $f0 $69
	ld d, e                                          ; $71c4: $53
	ld a, [bc]                                       ; $71c5: $0a
	ld b, [hl]                                       ; $71c6: $46
	ld d, a                                          ; $71c7: $57
	ld d, d                                          ; $71c8: $52
	ld a, c                                          ; $71c9: $79
	ld b, c                                          ; $71ca: $41
	dec [hl]                                         ; $71cb: $35
	add hl, bc                                       ; $71cc: $09
	add hl, bc                                       ; $71cd: $09

jr_079_71ce:
	ld [$2000], sp                                   ; $71ce: $08 $00 $20
	pop af                                           ; $71d1: $f1
	ld a, e                                          ; $71d2: $7b
	ldh a, [hDisp1_WY]                                     ; $71d3: $f0 $95
	ld c, e                                          ; $71d5: $4b
	ldh a, [$99]                                     ; $71d6: $f0 $99
	sub b                                            ; $71d8: $90
	di                                               ; $71d9: $f3
	inc sp                                           ; $71da: $33
	ldh a, [c]                                       ; $71db: $f2
	ld a, [hl+]                                      ; $71dc: $2a
	ld a, [bc]                                       ; $71dd: $0a
	pop af                                           ; $71de: $f1
	ld d, e                                          ; $71df: $53
	ldh a, [c]                                       ; $71e0: $f2
	add sp, -$10                                     ; $71e1: $e8 $f0
	ld c, [hl]                                       ; $71e3: $4e
	db $f4                                           ; $71e4: $f4
	daa                                              ; $71e5: $27
	inc [hl]                                         ; $71e6: $34
	add e                                            ; $71e7: $83
	pop af                                           ; $71e8: $f1
	ld [de], a                                       ; $71e9: $12

jr_079_71ea:
	ld e, c                                          ; $71ea: $59
	ldh a, [$f2]                                     ; $71eb: $f0 $f2
	di                                               ; $71ed: $f3
	inc [hl]                                         ; $71ee: $34
	pop af                                           ; $71ef: $f1
	ld [hl], d                                       ; $71f0: $72
	add hl, bc                                       ; $71f1: $09
	ld [$2000], sp                                   ; $71f2: $08 $00 $20
	sub e                                            ; $71f5: $93
	ldh a, [rSC]                                     ; $71f6: $f0 $02
	sbc b                                            ; $71f8: $98
	ld [hl], e                                       ; $71f9: $73
	sub e                                            ; $71fa: $93
	ld c, c                                          ; $71fb: $49
	pop af                                           ; $71fc: $f1
	ld [hl], b                                       ; $71fd: $70
	ldh a, [rHDMA2]                                  ; $71fe: $f0 $52
	ldh a, [$2c]                                     ; $7200: $f0 $2c
	ld b, d                                          ; $7202: $42
	ldh a, [$74]                                     ; $7203: $f0 $74
	ldh a, [$7a]                                     ; $7205: $f0 $7a
	ld d, e                                          ; $7207: $53
	adc e                                            ; $7208: $8b
	ld l, h                                          ; $7209: $6c
	ld a, [bc]                                       ; $720a: $0a
	ldh a, [$3d]                                     ; $720b: $f0 $3d
	sub e                                            ; $720d: $93
	ldh a, [$7b]                                     ; $720e: $f0 $7b
	ldh a, [rAUD4POLY]                               ; $7210: $f0 $22
	ldh a, [rP1]                                     ; $7212: $f0 $00
	ld e, c                                          ; $7214: $59
	ld h, d                                          ; $7215: $62
	ldh a, [rAUDTERM]                                ; $7216: $f0 $25
	ld [hl], c                                       ; $7218: $71
	ccf                                              ; $7219: $3f
	ld c, [hl]                                       ; $721a: $4e
	ld d, b                                          ; $721b: $50
	ld a, $38                                        ; $721c: $3e $38
	add hl, bc                                       ; $721e: $09
	ld [$2000], sp                                   ; $721f: $08 $00 $20
	pop af                                           ; $7222: $f1
	sub a                                            ; $7223: $97
	ldh a, [$3d]                                     ; $7224: $f0 $3d
	ldh a, [rAUD4LEN]                                ; $7226: $f0 $20

jr_079_7228:
	ld h, l                                          ; $7228: $65
	ldh a, [$32]                                     ; $7229: $f0 $32
	ld h, d                                          ; $722b: $62
	ldh a, [rAUDTERM]                                ; $722c: $f0 $25
	ld [hl], c                                       ; $722e: $71
	ccf                                              ; $722f: $3f
	ld c, [hl]                                       ; $7230: $4e
	ld d, b                                          ; $7231: $50
	ld a, $38                                        ; $7232: $3e $38
	ld a, [bc]                                       ; $7234: $0a
	pop af                                           ; $7235: $f1
	jr z, jr_079_7228                                ; $7236: $28 $f0

	ld b, h                                          ; $7238: $44
	ld b, a                                          ; $7239: $47
	ld h, a                                          ; $723a: $67
	ld d, l                                          ; $723b: $55
	ld b, d                                          ; $723c: $42
	ld d, e                                          ; $723d: $53
	adc e                                            ; $723e: $8b
	ld e, h                                          ; $723f: $5c
	ld a, [hl-]                                      ; $7240: $3a
	ld b, l                                          ; $7241: $45
	add hl, sp                                       ; $7242: $39
	ld b, h                                          ; $7243: $44
	add hl, bc                                       ; $7244: $09
	ld [$2000], sp                                   ; $7245: $08 $00 $20
	pop af                                           ; $7248: $f1
	ld de, $65f0                                     ; $7249: $11 $f0 $65
	ld d, e                                          ; $724c: $53
	ldh a, [c]                                       ; $724d: $f2
	ld e, c                                          ; $724e: $59
	jr c, jr_079_72a5                                ; $724f: $38 $54

	ld c, c                                          ; $7251: $49
	ld h, d                                          ; $7252: $62
	ld a, a                                          ; $7253: $7f
	ld b, a                                          ; $7254: $47
	ld a, $3f                                        ; $7255: $3e $3f
	jr c, @+$50                                      ; $7257: $38 $4e

	ld a, [bc]                                       ; $7259: $0a
	pop af                                           ; $725a: $f1
	ld a, e                                          ; $725b: $7b
	ldh a, [hDisp1_WY]                                     ; $725c: $f0 $95
	ld c, e                                          ; $725e: $4b
	ldh a, [$fa]                                     ; $725f: $f0 $fa
	pop af                                           ; $7261: $f1
	ld l, $09                                        ; $7262: $2e $09
	ld [$2000], sp                                   ; $7264: $08 $00 $20
	di                                               ; $7267: $f3
	sbc [hl]                                         ; $7268: $9e
	ld a, $38                                        ; $7269: $3e $38
	add e                                            ; $726b: $83
	pop af                                           ; $726c: $f1
	ld [de], a                                       ; $726d: $12
	ld e, c                                          ; $726e: $59
	ldh a, [$f2]                                     ; $726f: $f0 $f2
	ld c, e                                          ; $7271: $4b
	ld a, $3a                                        ; $7272: $3e $3a
	jr c, jr_079_7280                                ; $7274: $38 $0a

	pop af                                           ; $7276: $f1
	add c                                            ; $7277: $81
	ld h, c                                          ; $7278: $61
	ldh a, [$ac]                                     ; $7279: $f0 $ac
	ld e, l                                          ; $727b: $5d
	ld c, [hl]                                       ; $727c: $4e
	ldh a, [$99]                                     ; $727d: $f0 $99
	sub b                                            ; $727f: $90

jr_079_7280:
	ld d, e                                          ; $7280: $53
	adc e                                            ; $7281: $8b
	ld l, h                                          ; $7282: $6c
	add hl, bc                                       ; $7283: $09
	ld [$2000], sp                                   ; $7284: $08 $00 $20
	di                                               ; $7287: $f3
	sbc [hl]                                         ; $7288: $9e
	ld a, $38                                        ; $7289: $3e $38
	add e                                            ; $728b: $83
	pop af                                           ; $728c: $f1
	ld [de], a                                       ; $728d: $12
	ld e, c                                          ; $728e: $59
	ldh a, [$f2]                                     ; $728f: $f0 $f2
	ld c, e                                          ; $7291: $4b
	ld a, $3a                                        ; $7292: $3e $3a
	jr c, jr_079_72a0                                ; $7294: $38 $0a

	ldh a, [$6d]                                     ; $7296: $f0 $6d
	ld e, c                                          ; $7298: $59
	ldh a, [$60]                                     ; $7299: $f0 $60
	ld b, d                                          ; $729b: $42
	sbc e                                            ; $729c: $9b
	ldh a, [rAUDTERM]                                ; $729d: $f0 $25
	ld d, e                                          ; $729f: $53

jr_079_72a0:
	ld h, h                                          ; $72a0: $64
	ld a, a                                          ; $72a1: $7f
	ld b, a                                          ; $72a2: $47
	sub [hl]                                         ; $72a3: $96
	ld d, a                                          ; $72a4: $57

jr_079_72a5:
	add hl, bc                                       ; $72a5: $09
	ld [$2000], sp                                   ; $72a6: $08 $00 $20
	pop af                                           ; $72a9: $f1
	ld hl, sp+$3e                                    ; $72aa: $f8 $3e
	ldh a, [rSB]                                     ; $72ac: $f0 $01
	ld a, [hl-]                                      ; $72ae: $3a
	ldh a, [c]                                       ; $72af: $f2
	ld b, a                                          ; $72b0: $47
	ldh a, [c]                                       ; $72b1: $f2
	dec [hl]                                         ; $72b2: $35
	ld h, d                                          ; $72b3: $62
	ld a, $3f                                        ; $72b4: $3e $3f
	ld c, [hl]                                       ; $72b6: $4e
	ld d, b                                          ; $72b7: $50
	ld a, $38                                        ; $72b8: $3e $38
	ld a, [bc]                                       ; $72ba: $0a
	ld b, b                                          ; $72bb: $40
	ld b, d                                          ; $72bc: $42
	pop af                                           ; $72bd: $f1
	ld l, a                                          ; $72be: $6f
	inc [hl]                                         ; $72bf: $34
	di                                               ; $72c0: $f3
	nop                                              ; $72c1: $00
	ld a, $38                                        ; $72c2: $3e $38
	ld d, h                                          ; $72c4: $54
	ld c, c                                          ; $72c5: $49
	ld c, e                                          ; $72c6: $4b
	ldh a, [$d0]                                     ; $72c7: $f0 $d0
	ldh a, [$79]                                     ; $72c9: $f0 $79
	add hl, bc                                       ; $72cb: $09
	ld [$2000], sp                                   ; $72cc: $08 $00 $20
	pop af                                           ; $72cf: $f1
	sub $4b                                          ; $72d0: $d6 $4b
	ld e, h                                          ; $72d2: $5c
	ld c, l                                          ; $72d3: $4d
	ld c, [hl]                                       ; $72d4: $4e
	ld d, e                                          ; $72d5: $53
	inc [hl]                                         ; $72d6: $34
	pop af                                           ; $72d7: $f1
	ld h, e                                          ; $72d8: $63
	ldh a, [rOBP0]                                   ; $72d9: $f0 $48
	ld c, e                                          ; $72db: $4b
	ldh a, [$af]                                     ; $72dc: $f0 $af
	ldh a, [rAUD3LEVEL]                              ; $72de: $f0 $1c
	ld a, [bc]                                       ; $72e0: $0a
	ldh a, [c]                                       ; $72e1: $f2
	ld hl, $33f2                                     ; $72e2: $21 $f2 $33
	pop af                                           ; $72e5: $f1
	inc bc                                           ; $72e6: $03
	ld a, [hl-]                                      ; $72e7: $3a
	ld c, a                                          ; $72e8: $4f
	ld b, d                                          ; $72e9: $42
	ld d, e                                          ; $72ea: $53
	adc e                                            ; $72eb: $8b
	ld e, h                                          ; $72ec: $5c
	ld d, b                                          ; $72ed: $50
	ld a, $38                                        ; $72ee: $3e $38
	add hl, bc                                       ; $72f0: $09
	ld [$2000], sp                                   ; $72f1: $08 $00 $20
	ld e, h                                          ; $72f4: $5c
	ld d, b                                          ; $72f5: $50
	ld [hl], c                                       ; $72f6: $71
	ld e, h                                          ; $72f7: $5c
	ldh a, [rAUD1ENV]                                ; $72f8: $f0 $12
	sbc a                                            ; $72fa: $9f
	ld b, d                                          ; $72fb: $42
	di                                               ; $72fc: $f3
	rst AddAOntoHL                                          ; $72fd: $ef
	di                                               ; $72fe: $f3
	rst AddAOntoHL                                          ; $72ff: $ef
	di                                               ; $7300: $f3
	rst AddAOntoHL                                          ; $7301: $ef
	ldh a, [$aa]                                     ; $7302: $f0 $aa
	adc c                                            ; $7304: $89
	pop af                                           ; $7305: $f1
	ld b, d                                          ; $7306: $42
	ld a, [bc]                                       ; $7307: $0a
	pop af                                           ; $7308: $f1
	sub $f4                                          ; $7309: $d6 $f4
	or c                                             ; $730b: $b1
	ld b, d                                          ; $730c: $42
	dec a                                            ; $730d: $3d
	ld [hl], c                                       ; $730e: $71
	ld b, a                                          ; $730f: $47
	sub e                                            ; $7310: $93
	ldh a, [rSC]                                     ; $7311: $f0 $02
	sbc b                                            ; $7313: $98
	ld [hl], e                                       ; $7314: $73
	sub e                                            ; $7315: $93
	ld h, d                                          ; $7316: $62
	pop af                                           ; $7317: $f1
	ld h, [hl]                                       ; $7318: $66
	ld d, l                                          ; $7319: $55
	add hl, bc                                       ; $731a: $09
	ld [$2000], sp                                   ; $731b: $08 $00 $20
	pop af                                           ; $731e: $f1
	ld a, e                                          ; $731f: $7b
	ldh a, [hDisp1_WY]                                     ; $7320: $f0 $95
	ld c, e                                          ; $7322: $4b
	ldh a, [$3f]                                     ; $7323: $f0 $3f
	ld h, d                                          ; $7325: $62
	ldh a, [$bd]                                     ; $7326: $f0 $bd
	ld d, l                                          ; $7328: $55
	ld d, h                                          ; $7329: $54
	ld c, c                                          ; $732a: $49
	inc [hl]                                         ; $732b: $34
	ldh a, [$79]                                     ; $732c: $f0 $79
	ld c, [hl]                                       ; $732e: $4e
	ld d, l                                          ; $732f: $55
	ld a, [bc]                                       ; $7330: $0a
	ldh a, [$f9]                                     ; $7331: $f0 $f9
	ldh a, [rSTAT]                                   ; $7333: $f0 $41
	ld d, e                                          ; $7335: $53
	pop af                                           ; $7336: $f1
	sub d                                            ; $7337: $92
	jr c, jr_079_738d                                ; $7338: $38 $53

	pop af                                           ; $733a: $f1
	ld h, e                                          ; $733b: $63
	ldh a, [rOBP0]                                   ; $733c: $f0 $48
	ld c, e                                          ; $733e: $4b
	ldh a, [$af]                                     ; $733f: $f0 $af
	ldh a, [rAUD3LEVEL]                              ; $7341: $f0 $1c
	add hl, bc                                       ; $7343: $09
	ld [$2000], sp                                   ; $7344: $08 $00 $20
	ldh a, [$50]                                     ; $7347: $f0 $50
	ldh a, [$1f]                                     ; $7349: $f0 $1f
	ldh a, [$60]                                     ; $734b: $f0 $60
	add e                                            ; $734d: $83
	sub e                                            ; $734e: $93
	ld a, [hl-]                                      ; $734f: $3a
	ldh a, [$3f]                                     ; $7350: $f0 $3f
	inc [hl]                                         ; $7352: $34
	pop af                                           ; $7353: $f1
	ld [de], a                                       ; $7354: $12
	ld [hl], e                                       ; $7355: $73
	add c                                            ; $7356: $81
	add e                                            ; $7357: $83
	ld d, e                                          ; $7358: $53
	adc e                                            ; $7359: $8b
	ld l, h                                          ; $735a: $6c
	ld a, [bc]                                       ; $735b: $0a
	pop af                                           ; $735c: $f1
	ld e, b                                          ; $735d: $58
	inc a                                            ; $735e: $3c
	ld a, [hl-]                                      ; $735f: $3a
	ld c, c                                          ; $7360: $49
	ld d, h                                          ; $7361: $54
	ld e, a                                          ; $7362: $5f
	ld c, e                                          ; $7363: $4b
	ldh a, [rIE]                                     ; $7364: $f0 $ff
	ldh a, [$0b]                                     ; $7366: $f0 $0b
	add hl, bc                                       ; $7368: $09
	ld [$2000], sp                                   ; $7369: $08 $00 $20
	ldh a, [rPCM34]                                  ; $736c: $f0 $77
	ldh a, [hDisp1_SCY]                                     ; $736e: $f0 $90
	ld b, d                                          ; $7370: $42
	di                                               ; $7371: $f3
	inc hl                                           ; $7372: $23
	ldh a, [hDisp0_LCDC]                                     ; $7373: $f0 $82
	ld b, d                                          ; $7375: $42
	ld l, b                                          ; $7376: $68
	ld c, e                                          ; $7377: $4b
	ldh a, [hDisp1_LCDC]                                     ; $7378: $f0 $8f
	ld l, h                                          ; $737a: $6c
	ld d, e                                          ; $737b: $53
	ld h, c                                          ; $737c: $61
	ld a, [bc]                                       ; $737d: $0a
	ldh a, [$50]                                     ; $737e: $f0 $50
	ldh a, [$1f]                                     ; $7380: $f0 $1f
	ldh a, [$60]                                     ; $7382: $f0 $60
	add e                                            ; $7384: $83
	sub e                                            ; $7385: $93
	ld a, [hl-]                                      ; $7386: $3a
	ldh a, [$3f]                                     ; $7387: $f0 $3f
	inc [hl]                                         ; $7389: $34
	pop af                                           ; $738a: $f1
	ld [de], a                                       ; $738b: $12
	ld [hl], e                                       ; $738c: $73

jr_079_738d:
	add c                                            ; $738d: $81

jr_079_738e:
	add e                                            ; $738e: $83
	ld d, e                                          ; $738f: $53
	adc e                                            ; $7390: $8b
	ld l, h                                          ; $7391: $6c
	add hl, bc                                       ; $7392: $09
	ld [$2000], sp                                   ; $7393: $08 $00 $20
	pop af                                           ; $7396: $f1
	ld h, e                                          ; $7397: $63
	ldh a, [rOBP0]                                   ; $7398: $f0 $48
	adc a                                            ; $739a: $8f
	ld b, d                                          ; $739b: $42
	ldh a, [$3d]                                     ; $739c: $f0 $3d
	ld a, l                                          ; $739e: $7d
	ldh a, [$32]                                     ; $739f: $f0 $32
	ldh a, [$03]                                     ; $73a1: $f0 $03
	ld c, d                                          ; $73a3: $4a
	pop af                                           ; $73a4: $f1
	ld a, e                                          ; $73a5: $7b
	ldh a, [hDisp1_WY]                                     ; $73a6: $f0 $95
	ld c, e                                          ; $73a8: $4b
	pop af                                           ; $73a9: $f1
	sub l                                            ; $73aa: $95
	ldh a, [$63]                                     ; $73ab: $f0 $63
	ld a, [bc]                                       ; $73ad: $0a
	pop af                                           ; $73ae: $f1
	ld h, e                                          ; $73af: $63
	ldh a, [rOBP0]                                   ; $73b0: $f0 $48
	ld c, e                                          ; $73b2: $4b
	ld l, [hl]                                       ; $73b3: $6e
	ld c, [hl]                                       ; $73b4: $4e
	ld b, l                                          ; $73b5: $45
	ld d, a                                          ; $73b6: $57
	inc [hl]                                         ; $73b7: $34
	ld [hl], d                                       ; $73b8: $72
	ld c, [hl]                                       ; $73b9: $4e
	ldh a, [rDIV]                                    ; $73ba: $f0 $04
	ld a, l                                          ; $73bc: $7d
	add c                                            ; $73bd: $81
	add hl, bc                                       ; $73be: $09
	ld [$2000], sp                                   ; $73bf: $08 $00 $20
	ldh a, [$3d]                                     ; $73c2: $f0 $3d
	sub e                                            ; $73c4: $93
	sbc b                                            ; $73c5: $98
	ldh a, [rWX]                                     ; $73c6: $f0 $4b
	ld h, l                                          ; $73c8: $65
	ldh a, [$74]                                     ; $73c9: $f0 $74
	ldh a, [$7a]                                     ; $73cb: $f0 $7a
	inc [hl]                                         ; $73cd: $34
	ldh a, [$1f]                                     ; $73ce: $f0 $1f
	ld [hl], e                                       ; $73d0: $73
	sub e                                            ; $73d1: $93
	ld d, e                                          ; $73d2: $53
	adc e                                            ; $73d3: $8b
	ld l, h                                          ; $73d4: $6c
	ld a, [bc]                                       ; $73d5: $0a
	pop af                                           ; $73d6: $f1
	ld a, e                                          ; $73d7: $7b
	ldh a, [hDisp1_WY]                                     ; $73d8: $f0 $95
	ld c, e                                          ; $73da: $4b
	pop af                                           ; $73db: $f1
	sub l                                            ; $73dc: $95
	ldh a, [$63]                                     ; $73dd: $f0 $63
	ld c, d                                          ; $73df: $4a
	ldh a, [$98]                                     ; $73e0: $f0 $98
	ld b, a                                          ; $73e2: $47
	ld c, d                                          ; $73e3: $4a
	ld c, a                                          ; $73e4: $4f
	ldh a, [$4e]                                     ; $73e5: $f0 $4e
	ld a, $38                                        ; $73e7: $3e $38
	add hl, bc                                       ; $73e9: $09
	ld [$2000], sp                                   ; $73ea: $08 $00 $20
	ld l, e                                          ; $73ed: $6b
	sbc d                                            ; $73ee: $9a
	ld b, a                                          ; $73ef: $47
	ld c, a                                          ; $73f0: $4f
	sub d                                            ; $73f1: $92
	adc [hl]                                         ; $73f2: $8e
	ld c, [hl]                                       ; $73f3: $4e
	add h                                            ; $73f4: $84
	ld d, e                                          ; $73f5: $53
	adc e                                            ; $73f6: $8b
	ld e, h                                          ; $73f7: $5c
	ld d, b                                          ; $73f8: $50
	ld a, $38                                        ; $73f9: $3e $38
	ld a, [bc]                                       ; $73fb: $0a
	ldh a, [$98]                                     ; $73fc: $f0 $98
	inc a                                            ; $73fe: $3c
	ld d, b                                          ; $73ff: $50
	ld c, a                                          ; $7400: $4f
	push af                                          ; $7401: $f5
	db $ec                                           ; $7402: $ec
	ld h, e                                          ; $7403: $63
	ld c, l                                          ; $7404: $4d
	ccf                                              ; $7405: $3f
	jr c, jr_079_7456                                ; $7406: $38 $4e

	add hl, bc                                       ; $7408: $09
	ld [$2000], sp                                   ; $7409: $08 $00 $20
	jr c, jr_079_738e                                ; $740c: $38 $80

	ld c, a                                          ; $740e: $4f
	ldh a, [$6e]                                     ; $740f: $f0 $6e
	ld e, c                                          ; $7411: $59
	ld [hl], e                                       ; $7412: $73
	ld c, c                                          ; $7413: $49
	ld a, $3f                                        ; $7414: $3e $3f
	ld c, [hl]                                       ; $7416: $4e
	ld a, [bc]                                       ; $7417: $0a
	pop af                                           ; $7418: $f1
	ld a, e                                          ; $7419: $7b
	ldh a, [hDisp1_WY]                                     ; $741a: $f0 $95
	ld c, e                                          ; $741c: $4b
	ldh a, [c]                                       ; $741d: $f2
	jr nc, jr_079_748c                               ; $741e: $30 $6c

	ldh a, [$2c]                                     ; $7420: $f0 $2c
	add hl, bc                                       ; $7422: $09
	ld [$2000], sp                                   ; $7423: $08 $00 $20
	ldh a, [$60]                                     ; $7426: $f0 $60
	pop af                                           ; $7428: $f1
	ld [bc], a                                       ; $7429: $02
	add e                                            ; $742a: $83
	pop af                                           ; $742b: $f1
	ld c, e                                          ; $742c: $4b
	ldh a, [$f0]                                     ; $742d: $f0 $f0
	ld b, d                                          ; $742f: $42
	add e                                            ; $7430: $83
	pop af                                           ; $7431: $f1
	ld [de], a                                       ; $7432: $12
	ld e, c                                          ; $7433: $59
	ldh a, [$f2]                                     ; $7434: $f0 $f2
	ld c, e                                          ; $7436: $4b
	ldh a, [$f1]                                     ; $7437: $f0 $f1
	ldh a, [$9d]                                     ; $7439: $f0 $9d
	ld a, [bc]                                       ; $743b: $0a
	add hl, sp                                       ; $743c: $39
	ld c, [hl]                                       ; $743d: $4e
	ld e, b                                          ; $743e: $58
	jr c, @+$51                                      ; $743f: $38 $4f

	ld b, d                                          ; $7441: $42
	ld c, e                                          ; $7442: $4b
	ldh a, [$64]                                     ; $7443: $f0 $64
	jr c, @+$52                                      ; $7445: $38 $50

	ld a, $38                                        ; $7447: $3e $38
	add hl, bc                                       ; $7449: $09
	ld [$2000], sp                                   ; $744a: $08 $00 $20
	ldh a, [$6e]                                     ; $744d: $f0 $6e
	ld e, c                                          ; $744f: $59
	ld [hl], e                                       ; $7450: $73
	ld c, c                                          ; $7451: $49
	ld c, d                                          ; $7452: $4a
	ld e, h                                          ; $7453: $5c
	ld c, [hl]                                       ; $7454: $4e
	ld c, a                                          ; $7455: $4f

jr_079_7456:
	ld b, d                                          ; $7456: $42
	ld d, e                                          ; $7457: $53
	adc e                                            ; $7458: $8b
	ld e, h                                          ; $7459: $5c
	ld a, [bc]                                       ; $745a: $0a
	add hl, sp                                       ; $745b: $39
	ld c, [hl]                                       ; $745c: $4e
	ld e, b                                          ; $745d: $58
	jr c, jr_079_74af                                ; $745e: $38 $4f

	ld b, d                                          ; $7460: $42
	ld c, e                                          ; $7461: $4b
	ldh a, [$64]                                     ; $7462: $f0 $64
	jr c, jr_079_74b6                                ; $7464: $38 $50

	ld a, $38                                        ; $7466: $3e $38
	add hl, bc                                       ; $7468: $09
	ld [$2000], sp                                   ; $7469: $08 $00 $20
	add e                                            ; $746c: $83
	pop af                                           ; $746d: $f1
	ld [de], a                                       ; $746e: $12
	ld e, c                                          ; $746f: $59
	ldh a, [$f2]                                     ; $7470: $f0 $f2
	di                                               ; $7472: $f3
	inc [hl]                                         ; $7473: $34
	pop af                                           ; $7474: $f1
	ld [hl], d                                       ; $7475: $72
	ld c, d                                          ; $7476: $4a
	ldh a, [rPCM34]                                  ; $7477: $f0 $77
	ldh a, [hDisp1_SCY]                                     ; $7479: $f0 $90
	ld c, e                                          ; $747b: $4b
	ldh a, [$ca]                                     ; $747c: $f0 $ca
	ldh a, [$65]                                     ; $747e: $f0 $65
	ld [hl], l                                       ; $7480: $75
	pop af                                           ; $7481: $f1
	dec e                                            ; $7482: $1d
	ldh a, [$03]                                     ; $7483: $f0 $03
	ld a, [bc]                                       ; $7485: $0a
	ldh a, [$4e]                                     ; $7486: $f0 $4e
	push af                                          ; $7488: $f5
	db $eb                                           ; $7489: $eb
	ldh a, [$d0]                                     ; $748a: $f0 $d0

jr_079_748c:
	pop af                                           ; $748c: $f1
	pop bc                                           ; $748d: $c1
	ld a, [hl-]                                      ; $748e: $3a
	ldh a, [$ab]                                     ; $748f: $f0 $ab
	ld c, e                                          ; $7491: $4b
	ldh a, [$64]                                     ; $7492: $f0 $64
	jr c, @+$0b                                      ; $7494: $38 $09

	ld [$2000], sp                                   ; $7496: $08 $00 $20
	pop af                                           ; $7499: $f1
	ld de, $65f0                                     ; $749a: $11 $f0 $65
	ld h, d                                          ; $749d: $62
	ldh a, [rOBP0]                                   ; $749e: $f0 $48
	inc a                                            ; $74a0: $3c
	ld d, c                                          ; $74a1: $51
	ld d, h                                          ; $74a2: $54
	ld c, c                                          ; $74a3: $49
	ld d, e                                          ; $74a4: $53
	add a                                            ; $74a5: $87
	adc e                                            ; $74a6: $8b
	ld e, h                                          ; $74a7: $5c
	ld a, [bc]                                       ; $74a8: $0a
	ldh a, [$1f]                                     ; $74a9: $f0 $1f
	ld [hl], e                                       ; $74ab: $73
	sub e                                            ; $74ac: $93
	ld d, e                                          ; $74ad: $53
	adc e                                            ; $74ae: $8b

jr_079_74af:
	ld e, h                                          ; $74af: $5c
	ld c, d                                          ; $74b0: $4a
	inc [hl]                                         ; $74b1: $34
	db $f4                                           ; $74b2: $f4
	inc h                                            ; $74b3: $24
	ldh a, [c]                                       ; $74b4: $f2
	ld e, c                                          ; $74b5: $59

jr_079_74b6:
	pop af                                           ; $74b6: $f1
	ld b, d                                          ; $74b7: $42
	ld c, e                                          ; $74b8: $4b
	ldh a, [$64]                                     ; $74b9: $f0 $64
	jr c, @+$0b                                      ; $74bb: $38 $09

	ld [$2000], sp                                   ; $74bd: $08 $00 $20
	ldh a, [$ab]                                     ; $74c0: $f0 $ab
	dec sp                                           ; $74c2: $3b
	pop af                                           ; $74c3: $f1
	rla                                              ; $74c4: $17
	jr c, @+$56                                      ; $74c5: $38 $54

	ld c, c                                          ; $74c7: $49
	ld h, d                                          ; $74c8: $62
	ld a, a                                          ; $74c9: $7f
	ld b, a                                          ; $74ca: $47
	ld a, $3f                                        ; $74cb: $3e $3f
	ld c, [hl]                                       ; $74cd: $4e
	ld a, [bc]                                       ; $74ce: $0a
	pop af                                           ; $74cf: $f1
	ld [hl], b                                       ; $74d0: $70
	ldh a, [rHDMA2]                                  ; $74d1: $f0 $52
	ldh a, [$2c]                                     ; $74d3: $f0 $2c
	ld b, d                                          ; $74d5: $42
	ldh a, [$74]                                     ; $74d6: $f0 $74
	ldh a, [$7a]                                     ; $74d8: $f0 $7a
	ld d, e                                          ; $74da: $53
	adc e                                            ; $74db: $8b
	ld l, h                                          ; $74dc: $6c
	add hl, bc                                       ; $74dd: $09
	ld [$2000], sp                                   ; $74de: $08 $00 $20
	adc d                                            ; $74e1: $8a
	add h                                            ; $74e2: $84
	ld c, d                                          ; $74e3: $4a
	halt                                             ; $74e4: $76
	adc e                                            ; $74e5: $8b
	ld l, h                                          ; $74e6: $6c
	ld a, [bc]                                       ; $74e7: $0a
	pop af                                           ; $74e8: $f1
	ld a, e                                          ; $74e9: $7b
	ldh a, [hDisp1_WY]                                     ; $74ea: $f0 $95
	ld c, e                                          ; $74ec: $4b
	ldh a, [hDisp0_WX]                                     ; $74ed: $f0 $89
	ldh a, [$c4]                                     ; $74ef: $f0 $c4
	ld h, l                                          ; $74f1: $65
	ldh a, [$32]                                     ; $74f2: $f0 $32
	ldh a, [hDisp0_WX]                                     ; $74f4: $f0 $89
	sbc b                                            ; $74f6: $98
	ldh a, [rWX]                                     ; $74f7: $f0 $4b
	ld [hl], e                                       ; $74f9: $73
	ldh a, [$fd]                                     ; $74fa: $f0 $fd
	ld h, l                                          ; $74fc: $65
	ldh a, [$50]                                     ; $74fd: $f0 $50
	add hl, bc                                       ; $74ff: $09
	ld [$2000], sp                                   ; $7500: $08 $00 $20
	ldh a, [rAUD1ENV]                                ; $7503: $f0 $12
	ldh a, [c]                                       ; $7505: $f2
	adc e                                            ; $7506: $8b
	ld a, [hl-]                                      ; $7507: $3a
	ld c, a                                          ; $7508: $4f
	ld b, d                                          ; $7509: $42
	ld h, d                                          ; $750a: $62
	adc e                                            ; $750b: $8b
	ldh a, [$be]                                     ; $750c: $f0 $be
	ld a, [bc]                                       ; $750e: $0a
	adc d                                            ; $750f: $8a
	pop af                                           ; $7510: $f1
	inc bc                                           ; $7511: $03
	ld a, [hl-]                                      ; $7512: $3a
	ld c, a                                          ; $7513: $4f
	ld b, d                                          ; $7514: $42
	ld b, a                                          ; $7515: $47
	ld a, $3c                                        ; $7516: $3e $3c
	ldh a, [c]                                       ; $7518: $f2
	add l                                            ; $7519: $85
	ldh a, [hDisp1_WY]                                     ; $751a: $f0 $95
	ld h, d                                          ; $751c: $62
	ldh a, [rHDMA1]                                  ; $751d: $f0 $51
	dec a                                            ; $751f: $3d
	ld a, [hl-]                                      ; $7520: $3a
	jr c, jr_079_752c                                ; $7521: $38 $09

	ld [$2000], sp                                   ; $7523: $08 $00 $20
	ldh a, [rSVBK]                                   ; $7526: $f0 $70
	di                                               ; $7528: $f3
	ld e, l                                          ; $7529: $5d
	ld b, d                                          ; $752a: $42
	sbc d                                            ; $752b: $9a

jr_079_752c:
	ld h, d                                          ; $752c: $62
	ldh a, [$98]                                     ; $752d: $f0 $98
	ld c, a                                          ; $752f: $4f
	ldh a, [$2d]                                     ; $7530: $f0 $2d
	ld d, b                                          ; $7532: $50
	ld a, [hl-]                                      ; $7533: $3a
	jr c, jr_079_7540                                ; $7534: $38 $0a

	adc d                                            ; $7536: $8a
	pop af                                           ; $7537: $f1
	inc bc                                           ; $7538: $03
	ld c, d                                          ; $7539: $4a
	ldh a, [rAUD1ENV]                                ; $753a: $f0 $12
	ldh a, [c]                                       ; $753c: $f2
	adc e                                            ; $753d: $8b
	ld a, [hl-]                                      ; $753e: $3a
	ld c, a                                          ; $753f: $4f

jr_079_7540:
	ld b, d                                          ; $7540: $42
	ld a, $3c                                        ; $7541: $3e $3c
	ldh a, [rHDMA2]                                  ; $7543: $f0 $52
	ld e, b                                          ; $7545: $58
	ld a, [hl-]                                      ; $7546: $3a
	jr c, jr_079_7552                                ; $7547: $38 $09

	ld [$2000], sp                                   ; $7549: $08 $00 $20
	ldh a, [hDisp0_BGP]                                     ; $754c: $f0 $85
	ld h, a                                          ; $754e: $67
	ld b, a                                          ; $754f: $47
	db $f4                                           ; $7550: $f4
	dec a                                            ; $7551: $3d

jr_079_7552:
	ldh a, [$78]                                     ; $7552: $f0 $78
	ld c, d                                          ; $7554: $4a
	inc [hl]                                         ; $7555: $34
	ldh a, [$b2]                                     ; $7556: $f0 $b2
	ldh a, [rKEY1]                                   ; $7558: $f0 $4d
	pop af                                           ; $755a: $f1
	ld h, $55                                        ; $755b: $26 $55
	ld a, [bc]                                       ; $755d: $0a
	ldh a, [$dd]                                     ; $755e: $f0 $dd
	ldh a, [$9c]                                     ; $7560: $f0 $9c
	ld c, e                                          ; $7562: $4b
	ldh a, [rIE]                                     ; $7563: $f0 $ff
	ldh a, [$0b]                                     ; $7565: $f0 $0b
	ld c, d                                          ; $7567: $4a
	inc [hl]                                         ; $7568: $34
	add hl, sp                                       ; $7569: $39
	ld c, [hl]                                       ; $756a: $4e
	ld e, b                                          ; $756b: $58
	jr c, jr_079_7577                                ; $756c: $38 $09

	ld [$2000], sp                                   ; $756e: $08 $00 $20
	ldh a, [hDisp0_BGP]                                     ; $7571: $f0 $85
	ld h, a                                          ; $7573: $67
	ld b, a                                          ; $7574: $47
	db $f4                                           ; $7575: $f4
	dec a                                            ; $7576: $3d

jr_079_7577:
	ldh a, [$78]                                     ; $7577: $f0 $78
	ld c, d                                          ; $7579: $4a
	inc [hl]                                         ; $757a: $34
	add hl, sp                                       ; $757b: $39
	ld c, [hl]                                       ; $757c: $4e
	ld e, b                                          ; $757d: $58
	jr c, @+$0c                                      ; $757e: $38 $0a

	ldh a, [$3d]                                     ; $7580: $f0 $3d
	sub e                                            ; $7582: $93
	sbc b                                            ; $7583: $98
	ldh a, [rWX]                                     ; $7584: $f0 $4b
	ld h, l                                          ; $7586: $65
	ldh a, [$74]                                     ; $7587: $f0 $74
	ldh a, [$7a]                                     ; $7589: $f0 $7a
	ld d, e                                          ; $758b: $53
	adc e                                            ; $758c: $8b
	ld l, h                                          ; $758d: $6c
	add hl, bc                                       ; $758e: $09
	ld [$2000], sp                                   ; $758f: $08 $00 $20
	ldh a, [rBCPD]                                   ; $7592: $f0 $69
	ldh a, [$03]                                     ; $7594: $f0 $03
	ldh a, [rBCPD]                                   ; $7596: $f0 $69
	ldh a, [$03]                                     ; $7598: $f0 $03
	pop af                                           ; $759a: $f1
	ld b, l                                          ; $759b: $45
	ld b, d                                          ; $759c: $42
	ldh a, [$8e]                                     ; $759d: $f0 $8e
	pop af                                           ; $759f: $f1
	ld c, l                                          ; $75a0: $4d
	ld h, l                                          ; $75a1: $65
	ld a, [bc]                                       ; $75a2: $0a
	ldh a, [$3c]                                     ; $75a3: $f0 $3c
	push af                                          ; $75a5: $f5
	ld [$4f38], a                                    ; $75a6: $ea $38 $4f
	ld b, d                                          ; $75a9: $42
	ld c, e                                          ; $75aa: $4b
	ldh a, [$64]                                     ; $75ab: $f0 $64
	jr c, jr_079_75b8                                ; $75ad: $38 $09

	ld [$2000], sp                                   ; $75af: $08 $00 $20
	ldh a, [rOBP0]                                   ; $75b2: $f0 $48
	ldh a, [$2c]                                     ; $75b4: $f0 $2c
	adc e                                            ; $75b6: $8b
	ld e, h                                          ; $75b7: $5c

jr_079_75b8:
	ld c, d                                          ; $75b8: $4a
	inc [hl]                                         ; $75b9: $34
	ld h, h                                          ; $75ba: $64
	ld c, c                                          ; $75bb: $49
	ld a, [hl-]                                      ; $75bc: $3a
	ld a, $38                                        ; $75bd: $3e $38
	ld a, [bc]                                       ; $75bf: $0a
	di                                               ; $75c0: $f3
	add hl, bc                                       ; $75c1: $09
	ldh a, [rAUD4ENV]                                ; $75c2: $f0 $21
	di                                               ; $75c4: $f3
	jp z, $344a                                      ; $75c5: $ca $4a $34

	ldh a, [$ab]                                     ; $75c8: $f0 $ab
	adc h                                            ; $75ca: $8c
	ld b, d                                          ; $75cb: $42
	ldh a, [$f9]                                     ; $75cc: $f0 $f9
	ldh a, [rSTAT]                                   ; $75ce: $f0 $41
	ld c, e                                          ; $75d0: $4b
	ldh a, [rHDMA4]                                  ; $75d1: $f0 $54
	ld a, [hl-]                                      ; $75d3: $3a
	jr c, jr_079_75df                                ; $75d4: $38 $09

	ld [$2000], sp                                   ; $75d6: $08 $00 $20
	ldh a, [rOBP0]                                   ; $75d9: $f0 $48
	ldh a, [$2c]                                     ; $75db: $f0 $2c
	ld b, d                                          ; $75dd: $42
	pop af                                           ; $75de: $f1

jr_079_75df:
	ld a, b                                          ; $75df: $78
	jr c, @-$61                                      ; $75e0: $38 $9d

	ld c, [hl]                                       ; $75e2: $4e
	ld l, h                                          ; $75e3: $6c
	ld h, d                                          ; $75e4: $62
	ldh a, [rAUDTERM]                                ; $75e5: $f0 $25
	ld [hl], c                                       ; $75e7: $71
	ccf                                              ; $75e8: $3f
	ld c, [hl]                                       ; $75e9: $4e
	ld a, [bc]                                       ; $75ea: $0a
	ldh a, [$ab]                                     ; $75eb: $f0 $ab
	adc h                                            ; $75ed: $8c
	ld b, d                                          ; $75ee: $42
	ldh a, [$f9]                                     ; $75ef: $f0 $f9
	ldh a, [rSTAT]                                   ; $75f1: $f0 $41
	ld c, e                                          ; $75f3: $4b
	ldh a, [rHDMA4]                                  ; $75f4: $f0 $54
	ld a, [hl-]                                      ; $75f6: $3a
	jr c, jr_079_7602                                ; $75f7: $38 $09

	ld [$2000], sp                                   ; $75f9: $08 $00 $20
	di                                               ; $75fc: $f3
	inc l                                            ; $75fd: $2c
	di                                               ; $75fe: $f3
	dec l                                            ; $75ff: $2d
	ldh a, [rAUDVOL]                                 ; $7600: $f0 $24

jr_079_7602:
	ld c, c                                          ; $7602: $49

jr_079_7603:
	inc a                                            ; $7603: $3c
	ld b, d                                          ; $7604: $42
	ldh a, [rAUDVOL]                                 ; $7605: $f0 $24
	ld d, e                                          ; $7607: $53
	adc e                                            ; $7608: $8b
	ld e, h                                          ; $7609: $5c
	ld d, b                                          ; $760a: $50
	ld a, $38                                        ; $760b: $3e $38
	ld a, [bc]                                       ; $760d: $0a
	add hl, sp                                       ; $760e: $39
	ld c, [hl]                                       ; $760f: $4e
	ld e, b                                          ; $7610: $58
	jr c, jr_079_7603                                ; $7611: $38 $f0

	sbc c                                            ; $7613: $99
	sub b                                            ; $7614: $90
	ld c, e                                          ; $7615: $4b
	inc [hl]                                         ; $7616: $34
	ldh a, [$64]                                     ; $7617: $f0 $64
	jr c, jr_079_766b                                ; $7619: $38 $50

	ld a, $38                                        ; $761b: $3e $38
	add hl, bc                                       ; $761d: $09
	ld [$2000], sp                                   ; $761e: $08 $00 $20
	halt                                             ; $7621: $76
	ld b, d                                          ; $7622: $42
	di                                               ; $7623: $f3
	jp c, $8335                                      ; $7624: $da $35 $83

	pop af                                           ; $7627: $f1
	ld [de], a                                       ; $7628: $12
	ld e, c                                          ; $7629: $59
	ldh a, [$f2]                                     ; $762a: $f0 $f2
	ld c, e                                          ; $762c: $4b
	pop af                                           ; $762d: $f1
	ld l, e                                          ; $762e: $6b
	ldh a, [$c0]                                     ; $762f: $f0 $c0
	ld a, [bc]                                       ; $7631: $0a
	ldh a, [$3d]                                     ; $7632: $f0 $3d
	pop af                                           ; $7634: $f1
	ld [bc], a                                       ; $7635: $02
	ldh a, [$9d]                                     ; $7636: $f0 $9d
	ld c, c                                          ; $7638: $49
	inc [hl]                                         ; $7639: $34
	add c                                            ; $763a: $81
	ldh a, [$1f]                                     ; $763b: $f0 $1f
	ld [hl], l                                       ; $763d: $75
	add e                                            ; $763e: $83
	ld d, e                                          ; $763f: $53
	adc e                                            ; $7640: $8b
	ld l, h                                          ; $7641: $6c
	add hl, bc                                       ; $7642: $09
	ld [$2000], sp                                   ; $7643: $08 $00 $20
	ldh a, [$6d]                                     ; $7646: $f0 $6d
	ld e, c                                          ; $7648: $59
	ldh a, [$27]                                     ; $7649: $f0 $27
	ld c, c                                          ; $764b: $49
	inc a                                            ; $764c: $3c
	ldh a, [$a6]                                     ; $764d: $f0 $a6
	ldh a, [$2f]                                     ; $764f: $f0 $2f
	dec sp                                           ; $7651: $3b
	pop af                                           ; $7652: $f1
	rla                                              ; $7653: $17
	jr c, jr_079_76a5                                ; $7654: $38 $4f

	ld b, d                                          ; $7656: $42
	ld d, e                                          ; $7657: $53
	adc e                                            ; $7658: $8b
	ld l, h                                          ; $7659: $6c
	ld a, [bc]                                       ; $765a: $0a
	ld c, a                                          ; $765b: $4f
	dec sp                                           ; $765c: $3b
	ld c, c                                          ; $765d: $49
	ldh a, [rAUD2ENV]                                ; $765e: $f0 $17
	ld d, b                                          ; $7660: $50
	ld a, $55                                        ; $7661: $3e $55
	ld a, [hl-]                                      ; $7663: $3a
	ld c, l                                          ; $7664: $4d
	ld b, l                                          ; $7665: $45
	ld a, [hl-]                                      ; $7666: $3a
	add hl, bc                                       ; $7667: $09
	ld [$2000], sp                                   ; $7668: $08 $00 $20

jr_079_766b:
	ld e, h                                          ; $766b: $5c
	ld d, b                                          ; $766c: $50
	ld [hl], c                                       ; $766d: $71
	ld e, h                                          ; $766e: $5c
	ldh a, [rAUD1ENV]                                ; $766f: $f0 $12
	sbc a                                            ; $7671: $9f
	ld b, d                                          ; $7672: $42
	ldh a, [rSC]                                     ; $7673: $f0 $02
	ld a, l                                          ; $7675: $7d
	ldh a, [rAUD4LEN]                                ; $7676: $f0 $20
	ldh a, [$03]                                     ; $7678: $f0 $03
	sbc a                                            ; $767a: $9f
	ld a, [bc]                                       ; $767b: $0a
	pop af                                           ; $767c: $f1
	sub [hl]                                         ; $767d: $96
	pop af                                           ; $767e: $f1
	push de                                          ; $767f: $d5
	ldh a, [rAUD1ENV]                                ; $7680: $f0 $12
	sbc a                                            ; $7682: $9f
	ld b, d                                          ; $7683: $42
	ldh a, [rTIMA]                                   ; $7684: $f0 $05
	pop af                                           ; $7686: $f1
	ldh a, [c]                                       ; $7687: $f2
	ld c, d                                          ; $7688: $4a
	pop af                                           ; $7689: $f1
	ld b, c                                          ; $768a: $41
	ldh a, [$8b]                                     ; $768b: $f0 $8b
	sub b                                            ; $768d: $90
	adc a                                            ; $768e: $8f
	add hl, bc                                       ; $768f: $09
	ld [$2000], sp                                   ; $7690: $08 $00 $20
	pop af                                           ; $7693: $f1
	sub [hl]                                         ; $7694: $96
	pop af                                           ; $7695: $f1
	push de                                          ; $7696: $d5
	ldh a, [rAUD1ENV]                                ; $7697: $f0 $12
	sbc a                                            ; $7699: $9f
	ld b, d                                          ; $769a: $42
	ldh a, [rTIMA]                                   ; $769b: $f0 $05
	pop af                                           ; $769d: $f1
	ldh a, [c]                                       ; $769e: $f2
	ld a, [bc]                                       ; $769f: $0a
	pop af                                           ; $76a0: $f1
	ld a, e                                          ; $76a1: $7b
	ldh a, [hDisp1_WY]                                     ; $76a2: $f0 $95
	ld c, e                                          ; $76a4: $4b

jr_079_76a5:
	ldh a, [$99]                                     ; $76a5: $f0 $99
	sub b                                            ; $76a7: $90
	di                                               ; $76a8: $f3
	inc sp                                           ; $76a9: $33
	ldh a, [c]                                       ; $76aa: $f2
	ld a, [hl+]                                      ; $76ab: $2a
	add hl, bc                                       ; $76ac: $09
	ld [$2000], sp                                   ; $76ad: $08 $00 $20
	ld [hl], d                                       ; $76b0: $72
	dec a                                            ; $76b1: $3d
	ldh a, [rAUD3LEVEL]                              ; $76b2: $f0 $1c
	ld c, c                                          ; $76b4: $49
	ldh a, [$f5]                                     ; $76b5: $f0 $f5
	jr c, @+$36                                      ; $76b7: $38 $34

	ld h, a                                          ; $76b9: $67
	ldh a, [rOBP0]                                   ; $76ba: $f0 $48
	pop af                                           ; $76bc: $f1
	reti                                             ; $76bd: $d9


	ld a, [bc]                                       ; $76be: $0a
	di                                               ; $76bf: $f3
	ld l, h                                          ; $76c0: $6c
	di                                               ; $76c1: $f3
	add hl, sp                                       ; $76c2: $39
	pop af                                           ; $76c3: $f1
	inc bc                                           ; $76c4: $03
	ld c, d                                          ; $76c5: $4a
	ldh a, [$0d]                                     ; $76c6: $f0 $0d
	di                                               ; $76c8: $f3
	ld l, l                                          ; $76c9: $6d
	ld c, a                                          ; $76ca: $4f
	ld b, [hl]                                       ; $76cb: $46
	ld c, [hl]                                       ; $76cc: $4e
	add hl, bc                                       ; $76cd: $09
	ld [$2000], sp                                   ; $76ce: $08 $00 $20
	ldh a, [$ca]                                     ; $76d1: $f0 $ca
	push af                                          ; $76d3: $f5
	jp hl                                            ; $76d4: $e9


	ldh a, [$d0]                                     ; $76d5: $f0 $d0
	ldh a, [$79]                                     ; $76d7: $f0 $79
	ld b, d                                          ; $76d9: $42
	pop af                                           ; $76da: $f1
	add h                                            ; $76db: $84
	adc c                                            ; $76dc: $89
	ldh a, [rTIMA]                                   ; $76dd: $f0 $05
	ld a, [bc]                                       ; $76df: $0a
	ldh a, [$79]                                     ; $76e0: $f0 $79
	ld c, [hl]                                       ; $76e2: $4e
	ld d, l                                          ; $76e3: $55
	pop af                                           ; $76e4: $f1
	rrca                                             ; $76e5: $0f
	ldh a, [rOBP0]                                   ; $76e6: $f0 $48
	pop af                                           ; $76e8: $f1
	inc bc                                           ; $76e9: $03
	add hl, bc                                       ; $76ea: $09
	ld [$2000], sp                                   ; $76eb: $08 $00 $20
	pop af                                           ; $76ee: $f1
	ld a, e                                          ; $76ef: $7b
	ldh a, [hDisp1_WY]                                     ; $76f0: $f0 $95
	ld c, e                                          ; $76f2: $4b
	ldh a, [rAUD4POLY]                               ; $76f3: $f0 $22
	ld a, l                                          ; $76f5: $7d
	sub e                                            ; $76f6: $93
	ldh a, [rP1]                                     ; $76f7: $f0 $00
	ld h, l                                          ; $76f9: $65
	ldh a, [$50]                                     ; $76fa: $f0 $50
	ld a, [bc]                                       ; $76fc: $0a
	add e                                            ; $76fd: $83
	ldh a, [$fd]                                     ; $76fe: $f0 $fd
	ld e, c                                          ; $7700: $59
	ldh a, [$32]                                     ; $7701: $f0 $32
	db $f4                                           ; $7703: $f4
	ld b, [hl]                                       ; $7704: $46
	ld d, b                                          ; $7705: $50
	ld a, $38                                        ; $7706: $3e $38
	add hl, bc                                       ; $7708: $09
	ld [$2000], sp                                   ; $7709: $08 $00 $20
	pop af                                           ; $770c: $f1
	db $fc                                           ; $770d: $fc
	ldh a, [c]                                       ; $770e: $f2
	db $d3                                           ; $770f: $d3
	ld c, e                                          ; $7710: $4b
	ldh a, [$2b]                                     ; $7711: $f0 $2b
	ldh a, [$7c]                                     ; $7713: $f0 $7c
	ld e, c                                          ; $7715: $59
	pop af                                           ; $7716: $f1
	ld d, h                                          ; $7717: $54
	ld h, l                                          ; $7718: $65
	ldh a, [$50]                                     ; $7719: $f0 $50
	ld b, h                                          ; $771b: $44
	ld d, e                                          ; $771c: $53
	ld a, [bc]                                       ; $771d: $0a
	pop af                                           ; $771e: $f1
	ld [hl-], a                                      ; $771f: $32
	ld c, [hl]                                       ; $7720: $4e
	ld c, c                                          ; $7721: $49
	ld d, c                                          ; $7722: $51
	ld [hl], b                                       ; $7723: $70
	ld d, l                                          ; $7724: $55
	ldh a, [$71]                                     ; $7725: $f0 $71
	jr c, @+$52                                      ; $7727: $38 $50

	ld a, $38                                        ; $7729: $3e $38
	add hl, bc                                       ; $772b: $09
	ld [$2000], sp                                   ; $772c: $08 $00 $20
	add e                                            ; $772f: $83
	pop af                                           ; $7730: $f1
	ld [de], a                                       ; $7731: $12
	ld e, c                                          ; $7732: $59
	ldh a, [$f2]                                     ; $7733: $f0 $f2
	di                                               ; $7735: $f3
	inc [hl]                                         ; $7736: $34
	pop af                                           ; $7737: $f1
	ld [hl], d                                       ; $7738: $72
	ld c, d                                          ; $7739: $4a
	ldh a, [$0d]                                     ; $773a: $f0 $0d
	di                                               ; $773c: $f3
	ld l, l                                          ; $773d: $6d
	ld b, [hl]                                       ; $773e: $46
	ld d, a                                          ; $773f: $57
	ld a, [bc]                                       ; $7740: $0a
	ldh a, [$71]                                     ; $7741: $f0 $71
	ld e, a                                          ; $7743: $5f
	ld a, $55                                        ; $7744: $3e $55
	ldh a, [c]                                       ; $7746: $f2
	ld [hl], e                                       ; $7747: $73
	pop af                                           ; $7748: $f1
	add a                                            ; $7749: $87
	ldh a, [$78]                                     ; $774a: $f0 $78
	ld d, e                                          ; $774c: $53
	ldh a, [$9c]                                     ; $774d: $f0 $9c
	jr c, jr_079_775a                                ; $774f: $38 $09

	ld [$2000], sp                                   ; $7751: $08 $00 $20
	di                                               ; $7754: $f3
	ld l, h                                          ; $7755: $6c
	di                                               ; $7756: $f3
	add hl, sp                                       ; $7757: $39
	pop af                                           ; $7758: $f1
	inc bc                                           ; $7759: $03

jr_079_775a:
	ld c, d                                          ; $775a: $4a
	sbc [hl]                                         ; $775b: $9e
	pop af                                           ; $775c: $f1
	dec a                                            ; $775d: $3d
	ld e, h                                          ; $775e: $5c
	ld b, d                                          ; $775f: $42
	pop af                                           ; $7760: $f1
	ld a, [bc]                                       ; $7761: $0a
	pop af                                           ; $7762: $f1
	inc h                                            ; $7763: $24
	ld a, [bc]                                       ; $7764: $0a
	ld c, d                                          ; $7765: $4a
	ld c, a                                          ; $7766: $4f
	inc [hl]                                         ; $7767: $34
	ldh a, [c]                                       ; $7768: $f2
	ld b, $f2                                        ; $7769: $06 $f2
	add hl, hl                                       ; $776b: $29
	ld b, a                                          ; $776c: $47
	pop af                                           ; $776d: $f1
	ld h, e                                          ; $776e: $63
	ld d, e                                          ; $776f: $53
	ldh a, [$5c]                                     ; $7770: $f0 $5c
	jr c, jr_079_77c4                                ; $7772: $38 $50

	ld a, $38                                        ; $7774: $3e $38
	add hl, bc                                       ; $7776: $09
	ld [$2000], sp                                   ; $7777: $08 $00 $20
	pop af                                           ; $777a: $f1
	add l                                            ; $777b: $85
	pop af                                           ; $777c: $f1
	and h                                            ; $777d: $a4
	di                                               ; $777e: $f3
	ld h, d                                          ; $777f: $62
	ldh a, [$0e]                                     ; $7780: $f0 $0e
	ld b, d                                          ; $7782: $42
	ld l, l                                          ; $7783: $6d
	pop af                                           ; $7784: $f1
	ld c, [hl]                                       ; $7785: $4e
	ld c, c                                          ; $7786: $49
	jr c, jr_079_77c2                                ; $7787: $38 $39

	pop af                                           ; $7789: $f1
	adc e                                            ; $778a: $8b
	ld a, [bc]                                       ; $778b: $0a
	ldh a, [$a2]                                     ; $778c: $f0 $a2
	db $f4                                           ; $778e: $f4
	adc $f0                                          ; $778f: $ce $f0
	sub c                                            ; $7791: $91

jr_079_7792:
	ld c, c                                          ; $7792: $49
	pop af                                           ; $7793: $f1
	ld h, b                                          ; $7794: $60

jr_079_7795:
	ld d, e                                          ; $7795: $53
	ld a, [hl]                                       ; $7796: $7e
	jr c, @+$38                                      ; $7797: $38 $36

	ld [hl], $09                                     ; $7799: $36 $09

jr_079_779b:
	ld [$2000], sp                                   ; $779b: $08 $00 $20

jr_079_779e:
	ldh a, [$64]                                     ; $779e: $f0 $64
	jr c, jr_079_7792                                ; $77a0: $38 $f0

	ld h, h                                          ; $77a2: $64
	jr c, jr_079_7795                                ; $77a3: $38 $f0

jr_079_77a5:
	ld h, h                                          ; $77a5: $64
	jr c, @-$0e                                      ; $77a6: $38 $f0

jr_079_77a8:
	ld h, h                                          ; $77a8: $64
	jr c, jr_079_779b                                ; $77a9: $38 $f0

jr_079_77ab:
	ld h, h                                          ; $77ab: $64
	jr c, jr_079_779e                                ; $77ac: $38 $f0

jr_079_77ae:
	ld h, h                                          ; $77ae: $64
	jr c, jr_079_77bb                                ; $77af: $38 $0a

jr_079_77b1:
	ldh a, [$64]                                     ; $77b1: $f0 $64
	jr c, jr_079_77a5                                ; $77b3: $38 $f0

	ld h, h                                          ; $77b5: $64
	jr c, jr_079_77a8                                ; $77b6: $38 $f0

	ld h, h                                          ; $77b8: $64
	jr c, jr_079_77ab                                ; $77b9: $38 $f0

jr_079_77bb:
	ld h, h                                          ; $77bb: $64
	jr c, jr_079_77ae                                ; $77bc: $38 $f0

	ld h, h                                          ; $77be: $64
	jr c, jr_079_77b1                                ; $77bf: $38 $f0

	ld h, h                                          ; $77c1: $64

jr_079_77c2:
	jr c, jr_079_77cd                                ; $77c2: $38 $09

jr_079_77c4:
	ld [$2000], sp                                   ; $77c4: $08 $00 $20
	ld e, h                                          ; $77c7: $5c
	ldh a, [rAUD1SWEEP]                              ; $77c8: $f0 $10
	ld e, h                                          ; $77ca: $5c
	ldh a, [rAUD1SWEEP]                              ; $77cb: $f0 $10

jr_079_77cd:
	ld e, h                                          ; $77cd: $5c
	ldh a, [rAUD1SWEEP]                              ; $77ce: $f0 $10
	ld e, h                                          ; $77d0: $5c
	ldh a, [rAUD1SWEEP]                              ; $77d1: $f0 $10
	ld e, h                                          ; $77d3: $5c
	ldh a, [rAUD1SWEEP]                              ; $77d4: $f0 $10
	ld e, h                                          ; $77d6: $5c
	ldh a, [rAUD1SWEEP]                              ; $77d7: $f0 $10
	ld e, h                                          ; $77d9: $5c
	ldh a, [rAUD1SWEEP]                              ; $77da: $f0 $10
	ld a, [bc]                                       ; $77dc: $0a
	ld e, h                                          ; $77dd: $5c
	ldh a, [rAUD1SWEEP]                              ; $77de: $f0 $10
	ld e, h                                          ; $77e0: $5c
	ldh a, [rAUD1SWEEP]                              ; $77e1: $f0 $10
	ld e, h                                          ; $77e3: $5c
	ldh a, [rAUD1SWEEP]                              ; $77e4: $f0 $10
	ld e, h                                          ; $77e6: $5c
	ldh a, [rAUD1SWEEP]                              ; $77e7: $f0 $10
	ld e, h                                          ; $77e9: $5c
	ldh a, [rAUD1SWEEP]                              ; $77ea: $f0 $10
	ld e, h                                          ; $77ec: $5c
	ldh a, [rAUD1SWEEP]                              ; $77ed: $f0 $10
	ld e, h                                          ; $77ef: $5c
	ldh a, [rAUD1SWEEP]                              ; $77f0: $f0 $10
	add hl, bc                                       ; $77f2: $09
	ld [$2000], sp                                   ; $77f3: $08 $00 $20
	ld e, h                                          ; $77f6: $5c
	ldh a, [rAUD1SWEEP]                              ; $77f7: $f0 $10
	ld c, d                                          ; $77f9: $4a
	inc [hl]                                         ; $77fa: $34
	ldh a, [$64]                                     ; $77fb: $f0 $64
	ldh a, [hDisp1_WY]                                     ; $77fd: $f0 $95
	ld c, d                                          ; $77ff: $4a
	inc [hl]                                         ; $7800: $34
	pop af                                           ; $7801: $f1
	sub h                                            ; $7802: $94
	push af                                          ; $7803: $f5
	add sp, $4a                                      ; $7804: $e8 $4a
	ldh a, [$64]                                     ; $7806: $f0 $64
	ld a, [hl-]                                      ; $7808: $3a
	ldh a, [$f8]                                     ; $7809: $f0 $f8
	ld a, [bc]                                       ; $780b: $0a
	pop af                                           ; $780c: $f1
	add [hl]                                         ; $780d: $86
	ldh a, [rHDMA1]                                  ; $780e: $f0 $51
	ld h, c                                          ; $7810: $61
	ld c, d                                          ; $7811: $4a
	ldh a, [rOBP1]                                   ; $7812: $f0 $49
	ldh a, [$ab]                                     ; $7814: $f0 $ab
	adc h                                            ; $7816: $8c
	ldh a, [rTIMA]                                   ; $7817: $f0 $05
	pop af                                           ; $7819: $f1
	ldh a, [c]                                       ; $781a: $f2
	ld b, d                                          ; $781b: $42
	ldh a, [$ae]                                     ; $781c: $f0 $ae
	dec [hl]                                         ; $781e: $35
	add hl, bc                                       ; $781f: $09
	ld [$2000], sp                                   ; $7820: $08 $00 $20
	ldh a, [c]                                       ; $7823: $f2
	add hl, sp                                       ; $7824: $39
	ldh a, [c]                                       ; $7825: $f2
	xor $f2                                          ; $7826: $ee $f2
	xor $f2                                          ; $7828: $ee $f2
	xor $f2                                          ; $782a: $ee $f2
	xor $f2                                          ; $782c: $ee $f2
	xor $f2                                          ; $782e: $ee $f2
	cp [hl]                                          ; $7830: $be
	ldh a, [c]                                       ; $7831: $f2
	cp [hl]                                          ; $7832: $be
	add hl, bc                                       ; $7833: $09
	ld [$2000], sp                                   ; $7834: $08 $00 $20
	ld h, $f0                                        ; $7837: $26 $f0
	and [hl]                                         ; $7839: $a6
	ldh a, [$2b]                                     ; $783a: $f0 $2b
	ldh a, [$7c]                                     ; $783c: $f0 $7c
	dec h                                            ; $783e: $25
	rla                                              ; $783f: $17
	inc d                                            ; $7840: $14
	add hl, bc                                       ; $7841: $09
	ld [$2000], sp                                   ; $7842: $08 $00 $20
	pop af                                           ; $7845: $f1
	inc de                                           ; $7846: $13
	ldh a, [rAUDVOL]                                 ; $7847: $f0 $24
	ld h, d                                          ; $7849: $62
	inc a                                            ; $784a: $3c

Call_079_784b:
	ld e, l                                          ; $784b: $5d
	ld c, [hl]                                       ; $784c: $4e
	ldh a, [$e9]                                     ; $784d: $f0 $e9
	ldh a, [$0b]                                     ; $784f: $f0 $0b
	ld h, d                                          ; $7851: $62
	ld a, [bc]                                       ; $7852: $0a
	pop af                                           ; $7853: $f1
	jr c, @+$43                                      ; $7854: $38 $41

	ld c, d                                          ; $7856: $4a
	ld d, l                                          ; $7857: $55
	ld b, h                                          ; $7858: $44
	ld e, b                                          ; $7859: $58
	jr c, jr_079_7865                                ; $785a: $38 $09

	ld [$2000], sp                                   ; $785c: $08 $00 $20
	ld h, a                                          ; $785f: $67
	ld e, h                                          ; $7860: $5c
	ldh a, [$bc]                                     ; $7861: $f0 $bc
	ld h, d                                          ; $7863: $62
	pop af                                           ; $7864: $f1

jr_079_7865:
	jr c, @+$43                                      ; $7865: $38 $41

	ld c, d                                          ; $7867: $4a
	ld d, l                                          ; $7868: $55
	ld b, h                                          ; $7869: $44
	ld e, b                                          ; $786a: $58
	jr c, @+$0b                                      ; $786b: $38 $09

	ld [$2000], sp                                   ; $786d: $08 $00 $20
	ld l, b                                          ; $7870: $68
	ld b, a                                          ; $7871: $47
	ld h, c                                          ; $7872: $61
	ld h, d                                          ; $7873: $62
	pop af                                           ; $7874: $f1
	jr c, jr_079_78b8                                ; $7875: $38 $41

	ld c, d                                          ; $7877: $4a
	ld d, l                                          ; $7878: $55
	ld b, h                                          ; $7879: $44
	ld e, b                                          ; $787a: $58
	jr c, jr_079_7886                                ; $787b: $38 $09

	ld [$2000], sp                                   ; $787d: $08 $00 $20
	ld l, d                                          ; $7880: $6a
	ldh a, [rLYC]                                    ; $7881: $f0 $45
	ld b, d                                          ; $7883: $42
	ldh a, [$cc]                                     ; $7884: $f0 $cc

jr_079_7886:
	ldh a, [hDisp0_WY]                                     ; $7886: $f0 $88
	ld c, c                                          ; $7888: $49
	ldh a, [$31]                                     ; $7889: $f0 $31
	ldh a, [c]                                       ; $788b: $f2
	add sp, $09                                      ; $788c: $e8 $09
	ld [$2000], sp                                   ; $788e: $08 $00 $20
	add [hl]                                         ; $7891: $86
	di                                               ; $7892: $f3
	and h                                            ; $7893: $a4
	pop af                                           ; $7894: $f1
	add hl, sp                                       ; $7895: $39
	ldh a, [$ad]                                     ; $7896: $f0 $ad
	ldh a, [$80]                                     ; $7898: $f0 $80
	ldh a, [c]                                       ; $789a: $f2
	ld b, [hl]                                       ; $789b: $46
	pop af                                           ; $789c: $f1
	xor l                                            ; $789d: $ad
	pop af                                           ; $789e: $f1
	and l                                            ; $789f: $a5
	di                                               ; $78a0: $f3
	and l                                            ; $78a1: $a5
	add hl, bc                                       ; $78a2: $09
	inc d                                            ; $78a3: $14
	ld [$2000], sp                                   ; $78a4: $08 $00 $20
	ldh a, [rWY]                                     ; $78a7: $f0 $4a
	ld e, c                                          ; $78a9: $59
	ldh a, [rDIV]                                    ; $78aa: $f0 $04
	ld h, d                                          ; $78ac: $62
	pop af                                           ; $78ad: $f1
	pop af                                           ; $78ae: $f1
	ld c, [hl]                                       ; $78af: $4e
	add c                                            ; $78b0: $81
	ld [hl], l                                       ; $78b1: $75
	ld e, c                                          ; $78b2: $59
	pop af                                           ; $78b3: $f1
	db $e3                                           ; $78b4: $e3
	ld e, c                                          ; $78b5: $59
	ld d, e                                          ; $78b6: $53
	ld a, [bc]                                       ; $78b7: $0a

jr_079_78b8:
	ldh a, [c]                                       ; $78b8: $f2
	and b                                            ; $78b9: $a0
	ldh a, [c]                                       ; $78ba: $f2
	add hl, sp                                       ; $78bb: $39
	pop af                                           ; $78bc: $f1
	ld e, d                                          ; $78bd: $5a
	di                                               ; $78be: $f3
	dec c                                            ; $78bf: $0d
	ldh a, [c]                                       ; $78c0: $f2
	add hl, sp                                       ; $78c1: $39
	ldh a, [$6e]                                     ; $78c2: $f0 $6e
	ldh a, [rDIV]                                    ; $78c4: $f0 $04
	ld h, l                                          ; $78c6: $65
	ld h, d                                          ; $78c7: $62
	ldh a, [c]                                       ; $78c8: $f2
	and d                                            ; $78c9: $a2
	ld a, $3f                                        ; $78ca: $3e $3f
	ldh a, [$a3]                                     ; $78cc: $f0 $a3
	ld e, b                                          ; $78ce: $58
	jr c, jr_079_78da                                ; $78cf: $38 $09

	inc d                                            ; $78d1: $14
	ld [$2000], sp                                   ; $78d2: $08 $00 $20
	ldh a, [$98]                                     ; $78d5: $f0 $98
	ld b, d                                          ; $78d7: $42
	add e                                            ; $78d8: $83
	sub e                                            ; $78d9: $93

jr_079_78da:
	ldh a, [rP1]                                     ; $78da: $f0 $00
	ld e, c                                          ; $78dc: $59
	ld h, l                                          ; $78dd: $65
	ldh a, [$7b]                                     ; $78de: $f0 $7b
	ld e, c                                          ; $78e0: $59
	ldh a, [rAUD4LEN]                                ; $78e1: $f0 $20
	ld e, c                                          ; $78e3: $59
	ld h, d                                          ; $78e4: $62
	ld a, [bc]                                       ; $78e5: $0a
	pop af                                           ; $78e6: $f1
	pop af                                           ; $78e7: $f1
	ldh a, [$9f]                                     ; $78e8: $f0 $9f
	ld a, $52                                        ; $78ea: $3e $52
	ld d, c                                          ; $78ec: $51
	inc a                                            ; $78ed: $3c
	add hl, bc                                       ; $78ee: $09
	inc d                                            ; $78ef: $14
	ld [$2000], sp                                   ; $78f0: $08 $00 $20
	ld e, d                                          ; $78f3: $5a
	ld b, d                                          ; $78f4: $42
	pop af                                           ; $78f5: $f1
	ld b, b                                          ; $78f6: $40
	ld h, l                                          ; $78f7: $65
	ldh a, [rWY]                                     ; $78f8: $f0 $4a
	ldh a, [$c4]                                     ; $78fa: $f0 $c4
	ld h, l                                          ; $78fc: $65
	ldh a, [$50]                                     ; $78fd: $f0 $50
	ld h, d                                          ; $78ff: $62
	ld [hl], d                                       ; $7900: $72
	ld d, d                                          ; $7901: $52
	ld d, c                                          ; $7902: $51
	inc a                                            ; $7903: $3c
	add hl, bc                                       ; $7904: $09
	nop                                              ; $7905: $00
	nop                                              ; $7906: $00
	nop                                              ; $7907: $00
	nop                                              ; $7908: $00
	pop af                                           ; $7909: $f1
	ld a, c                                          ; $790a: $79
	pop af                                           ; $790b: $f1
	ld h, d                                          ; $790c: $62
	ldh a, [rAUD2HIGH]                               ; $790d: $f0 $19
	ld c, d                                          ; $790f: $4a
	ld d, c                                          ; $7910: $51
	add hl, bc                                       ; $7911: $09
	nop                                              ; $7912: $00
	nop                                              ; $7913: $00
	nop                                              ; $7914: $00
	ldh a, [$2f]                                     ; $7915: $f0 $2f
	ldh a, [$7c]                                     ; $7917: $f0 $7c
	ld h, l                                          ; $7919: $65
	ldh a, [$7b]                                     ; $791a: $f0 $7b
	ldh a, [$03]                                     ; $791c: $f0 $03
	ld e, b                                          ; $791e: $58
	ld c, l                                          ; $791f: $4d
	ld d, d                                          ; $7920: $52
	ld a, $3d                                        ; $7921: $3e $3d
	add hl, bc                                       ; $7923: $09
	pop af                                           ; $7924: $f1
	inc c                                            ; $7925: $0c
	ldh a, [$fc]                                     ; $7926: $f0 $fc
	pop af                                           ; $7928: $f1
	ld d, e                                          ; $7929: $53
	ldh a, [c]                                       ; $792a: $f2
	add sp, $09                                      ; $792b: $e8 $09
	inc bc                                           ; $792d: $03
	add d                                            ; $792e: $82
	ccf                                              ; $792f: $3f
	db $d3                                           ; $7930: $d3
	ldh a, [$6f]                                     ; $7931: $f0 $6f
	add hl, bc                                       ; $7933: $09
	inc bc                                           ; $7934: $03
	add d                                            ; $7935: $82
	ld b, c                                          ; $7936: $41
	db $d3                                           ; $7937: $d3
	pop af                                           ; $7938: $f1
	add b                                            ; $7939: $80
	add hl, bc                                       ; $793a: $09
	inc bc                                           ; $793b: $03
	add d                                            ; $793c: $82
	ld b, e                                          ; $793d: $43
	db $d3                                           ; $793e: $d3
	ldh a, [rTAC]                                    ; $793f: $f0 $07
	ld e, l                                          ; $7941: $5d
	add hl, bc                                       ; $7942: $09
	di                                               ; $7943: $f3
	ld l, c                                          ; $7944: $69
	add hl, bc                                       ; $7945: $09
	inc d                                            ; $7946: $14
	ld [$2000], sp                                   ; $7947: $08 $00 $20
	pop af                                           ; $794a: $f1
	inc c                                            ; $794b: $0c
	ldh a, [$fc]                                     ; $794c: $f0 $fc
	ldh a, [$8a]                                     ; $794e: $f0 $8a
	pop af                                           ; $7950: $f1
	ld [hl], d                                       ; $7951: $72
	ld a, [hl-]                                      ; $7952: $3a
	ldh a, [rWY]                                     ; $7953: $f0 $4a
	ld e, c                                          ; $7955: $59
	ldh a, [rDIV]                                    ; $7956: $f0 $04
	ld d, e                                          ; $7958: $53
	ld b, [hl]                                       ; $7959: $46
	ld d, a                                          ; $795a: $57
	ld d, d                                          ; $795b: $52
	ld a, c                                          ; $795c: $79
	ld b, c                                          ; $795d: $41
	rla                                              ; $795e: $17
	inc d                                            ; $795f: $14
	add hl, bc                                       ; $7960: $09
	inc d                                            ; $7961: $14
	ld [$2000], sp                                   ; $7962: $08 $00 $20
	ldh a, [$98]                                     ; $7965: $f0 $98
	ld b, d                                          ; $7967: $42
	di                                               ; $7968: $f3
	inc bc                                           ; $7969: $03
	ld e, [hl]                                       ; $796a: $5e
	ld h, d                                          ; $796b: $62
	ldh a, [$0c]                                     ; $796c: $f0 $0c
	ld e, h                                          ; $796e: $5c
	ld d, d                                          ; $796f: $52
	ld d, c                                          ; $7970: $51
	inc a                                            ; $7971: $3c
	add hl, bc                                       ; $7972: $09
	inc d                                            ; $7973: $14
	add hl, bc                                       ; $7974: $09


Data_79_7975::
	ld [$0456], sp                                   ; $7975: $08 $56 $04
	ldh a, [hDisp1_OBP1]                                     ; $7978: $f0 $94
	ld [hl], c                                       ; $797a: $71
	add hl, bc                                       ; $797b: $09


Data_79_797c::
	ld [$0436], sp                                   ; $797c: $08 $36 $04
	pop af                                           ; $797f: $f1
	ld h, c                                          ; $7980: $61
	ld e, h                                          ; $7981: $5c
	add hl, bc                                       ; $7982: $09


Data_79_7983::
	ld [$0636], sp                                   ; $7983: $08 $36 $06
	di                                               ; $7986: $f3
	sbc c                                            ; $7987: $99
	ld d, c                                          ; $7988: $51
	add hl, bc                                       ; $7989: $09


Data_79_798a::
	ld [$0656], sp                                   ; $798a: $08 $56 $06
	ldh a, [c]                                       ; $798d: $f2
	adc d                                            ; $798e: $8a
	ld d, c                                          ; $798f: $51
	add hl, bc                                       ; $7990: $09


;
	ld [$0804], sp                                   ; $7991: $08 $04 $08
	sub e                                            ; $7994: $93
	ldh a, [rP1]                                     ; $7995: $f0 $00
	ldh a, [$3d]                                     ; $7997: $f0 $3d
	add hl, bc                                       ; $7999: $09
	ld [_SetWramBankToHighByteInStackAfterReturn], sp                                   ; $799a: $08 $48 $08
	add h                                            ; $799d: $84
	add hl, bc                                       ; $799e: $09
	ld [$042c], sp                                   ; $799f: $08 $2c $04
	ldh a, [$7b]                                     ; $79a2: $f0 $7b
	ld e, c                                          ; $79a4: $59
	ldh a, [rBCPD]                                   ; $79a5: $f0 $69
	add hl, bc                                       ; $79a7: $09
	ld [$0464], sp                                   ; $79a8: $08 $64 $04
	ldh a, [$1f]                                     ; $79ab: $f0 $1f
	ld e, c                                          ; $79ad: $59
	ldh a, [$32]                                     ; $79ae: $f0 $32
	add hl, bc                                       ; $79b0: $09
	ld [$0410], sp                                   ; $79b1: $08 $10 $04
	ldh a, [c]                                       ; $79b4: $f2
	ld c, b                                          ; $79b5: $48
	pop af                                           ; $79b6: $f1
	ld h, h                                          ; $79b7: $64
	add [hl]                                         ; $79b8: $86
	ldh a, [c]                                       ; $79b9: $f2
	ld d, l                                          ; $79ba: $55
	pop af                                           ; $79bb: $f1
	ld e, d                                          ; $79bc: $5a
	ldh a, [c]                                       ; $79bd: $f2
	add hl, sp                                       ; $79be: $39
	pop af                                           ; $79bf: $f1
	ld e, d                                          ; $79c0: $5a
	add hl, bc                                       ; $79c1: $09
	ld [$0410], sp                                   ; $79c2: $08 $10 $04
	pop af                                           ; $79c5: $f1
	cp b                                             ; $79c6: $b8
	di                                               ; $79c7: $f3
	dec c                                            ; $79c8: $0d
	pop af                                           ; $79c9: $f1
	ld h, h                                          ; $79ca: $64
	pop af                                           ; $79cb: $f1
	ld d, c                                          ; $79cc: $51
	ldh a, [c]                                       ; $79cd: $f2
	ld c, d                                          ; $79ce: $4a
	ldh a, [c]                                       ; $79cf: $f2
	ld c, b                                          ; $79d0: $48
	add hl, bc                                       ; $79d1: $09
	ld [$2000], sp                                   ; $79d2: $08 $00 $20
	ldh a, [$1f]                                     ; $79d5: $f0 $1f
	ld e, c                                          ; $79d7: $59
	ldh a, [$32]                                     ; $79d8: $f0 $32
	ld d, c                                          ; $79da: $51
	ld c, [hl]                                       ; $79db: $4e
	ldh a, [$8e]                                     ; $79dc: $f0 $8e
	pop af                                           ; $79de: $f1
	ld c, l                                          ; $79df: $4d
	ld a, l                                          ; $79e0: $7d
	ldh a, [$03]                                     ; $79e1: $f0 $03
	ld h, d                                          ; $79e3: $62
	ld a, [bc]                                       ; $79e4: $0a
	pop af                                           ; $79e5: $f1
	jr c, @+$43                                      ; $79e6: $38 $41

	ld c, d                                          ; $79e8: $4a
	ld d, l                                          ; $79e9: $55
	ld b, h                                          ; $79ea: $44
	ld e, b                                          ; $79eb: $58
	jr c, jr_079_79f7                                ; $79ec: $38 $09

	ld [$2000], sp                                   ; $79ee: $08 $00 $20
	ldh a, [$7b]                                     ; $79f1: $f0 $7b
	ld e, c                                          ; $79f3: $59
	ldh a, [rBCPD]                                   ; $79f4: $f0 $69
	ld d, c                                          ; $79f6: $51

jr_079_79f7:
	ld c, [hl]                                       ; $79f7: $4e
	ldh a, [$8e]                                     ; $79f8: $f0 $8e
	pop af                                           ; $79fa: $f1
	ld c, l                                          ; $79fb: $4d
	ld a, l                                          ; $79fc: $7d
	ldh a, [$03]                                     ; $79fd: $f0 $03
	ld h, d                                          ; $79ff: $62
	ld a, [bc]                                       ; $7a00: $0a
	pop af                                           ; $7a01: $f1
	jr c, jr_079_7a45                                ; $7a02: $38 $41

	ld c, d                                          ; $7a04: $4a
	ld d, l                                          ; $7a05: $55
	ld b, h                                          ; $7a06: $44
	ld e, b                                          ; $7a07: $58
	jr c, jr_079_7a13                                ; $7a08: $38 $09

	ld [$2000], sp                                   ; $7a0a: $08 $00 $20
	ldh a, [c]                                       ; $7a0d: $f2
	adc d                                            ; $7a0e: $8a
	ldh a, [c]                                       ; $7a0f: $f2
	ld l, [hl]                                       ; $7a10: $6e
	ld d, c                                          ; $7a11: $51
	ld c, [hl]                                       ; $7a12: $4e

jr_079_7a13:
	ldh a, [$8e]                                     ; $7a13: $f0 $8e
	pop af                                           ; $7a15: $f1
	ld c, l                                          ; $7a16: $4d
	ld a, l                                          ; $7a17: $7d
	ldh a, [$03]                                     ; $7a18: $f0 $03
	ld h, d                                          ; $7a1a: $62

jr_079_7a1b:
	ld a, [bc]                                       ; $7a1b: $0a
	pop af                                           ; $7a1c: $f1
	jr c, @+$43                                      ; $7a1d: $38 $41

	ld c, d                                          ; $7a1f: $4a
	ld d, l                                          ; $7a20: $55
	ld b, h                                          ; $7a21: $44
	ld e, b                                          ; $7a22: $58
	jr c, jr_079_7a2e                                ; $7a23: $38 $09

	ld [$2000], sp                                   ; $7a25: $08 $00 $20
	ldh a, [rAUD1LEN]                                ; $7a28: $f0 $11
	ldh a, [$fd]                                     ; $7a2a: $f0 $fd
	ld e, c                                          ; $7a2c: $59
	pop af                                           ; $7a2d: $f1

jr_079_7a2e:
	rra                                              ; $7a2e: $1f
	ld b, d                                          ; $7a2f: $42
	ldh a, [$8e]                                     ; $7a30: $f0 $8e
	pop af                                           ; $7a32: $f1
	ld c, l                                          ; $7a33: $4d
	ld a, l                                          ; $7a34: $7d
	ldh a, [$03]                                     ; $7a35: $f0 $03
	ld h, d                                          ; $7a37: $62
	ld a, [bc]                                       ; $7a38: $0a
	pop af                                           ; $7a39: $f1
	jr c, @+$43                                      ; $7a3a: $38 $41

	ld c, d                                          ; $7a3c: $4a
	ld d, l                                          ; $7a3d: $55
	ld b, h                                          ; $7a3e: $44
	ld e, b                                          ; $7a3f: $58
	jr c, @+$0b                                      ; $7a40: $38 $09

	ld [$2000], sp                                   ; $7a42: $08 $00 $20

jr_079_7a45:
	ldh a, [rAUD1LEN]                                ; $7a45: $f0 $11
	ldh a, [$fd]                                     ; $7a47: $f0 $fd
	ld e, c                                          ; $7a49: $59
	ldh a, [$bc]                                     ; $7a4a: $f0 $bc
	ld b, d                                          ; $7a4c: $42
	ldh a, [$8e]                                     ; $7a4d: $f0 $8e
	pop af                                           ; $7a4f: $f1
	ld c, l                                          ; $7a50: $4d
	ld a, l                                          ; $7a51: $7d
	ldh a, [$03]                                     ; $7a52: $f0 $03
	ld h, d                                          ; $7a54: $62
	ld a, [bc]                                       ; $7a55: $0a
	pop af                                           ; $7a56: $f1
	jr c, jr_079_7a9a                                ; $7a57: $38 $41

	ld c, d                                          ; $7a59: $4a
	ld d, l                                          ; $7a5a: $55
	ld b, h                                          ; $7a5b: $44
	ld e, b                                          ; $7a5c: $58
	jr c, @+$0b                                      ; $7a5d: $38 $09

	ld [$0204], sp                                   ; $7a5f: $08 $04 $02
	ld de, $0509                                     ; $7a62: $11 $09 $05
	ld [de], a                                       ; $7a65: $12
	add hl, bc                                       ; $7a66: $09
	ld [$0404], sp                                   ; $7a67: $08 $04 $04
	dec d                                            ; $7a6a: $15
	add hl, bc                                       ; $7a6b: $09
	ld [$2000], sp                                   ; $7a6c: $08 $00 $20
	pop af                                           ; $7a6f: $f1
	jp $fbf0                                         ; $7a70: $c3 $f0 $fb


	add [hl]                                         ; $7a73: $86
	add [hl]                                         ; $7a74: $86
	jr nc, @-$0d                                     ; $7a75: $30 $f1

	or [hl]                                          ; $7a77: $b6
	ld b, d                                          ; $7a78: $42
	ldh a, [rAUD1ENV]                                ; $7a79: $f0 $12
	sbc a                                            ; $7a7b: $9f
	ldh a, [rTIMA]                                   ; $7a7c: $f0 $05
	pop af                                           ; $7a7e: $f1
	rrca                                             ; $7a7f: $0f
	ld sp, $1417                                     ; $7a80: $31 $17 $14
	jr nc, jr_079_7a1b                               ; $7a83: $30 $96

	adc c                                            ; $7a85: $89
	ld a, $3f                                        ; $7a86: $3e $3f
	inc a                                            ; $7a88: $3c
	ld d, b                                          ; $7a89: $50
	ld b, [hl]                                       ; $7a8a: $46
	dec sp                                           ; $7a8b: $3b
	ld c, c                                          ; $7a8c: $49
	jr c, jr_079_7ac8                                ; $7a8d: $38 $39

	ldh a, [$2a]                                     ; $7a8f: $f0 $2a
	ld b, a                                          ; $7a91: $47
	ld a, [bc]                                       ; $7a92: $0a
	ldh a, [$e5]                                     ; $7a93: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $7a95: $f0 $14
	ld c, c                                          ; $7a97: $49
	jr c, @+$3b                                      ; $7a98: $38 $39

jr_079_7a9a:
	ldh a, [rLYC]                                    ; $7a9a: $f0 $45
	ld l, b                                          ; $7a9c: $68
	ld d, e                                          ; $7a9d: $53
	rla                                              ; $7a9e: $17
	inc d                                            ; $7a9f: $14
	ldh a, [hDisp0_BGP]                                     ; $7aa0: $f0 $85
	ld c, l                                          ; $7aa2: $4d
	ld b, l                                          ; $7aa3: $45
	add hl, sp                                       ; $7aa4: $39
	ld c, c                                          ; $7aa5: $49
	ld a, $3f                                        ; $7aa6: $3e $3f
	jr c, jr_079_7afc                                ; $7aa8: $38 $52

	ld d, c                                          ; $7aaa: $51
	dec [hl]                                         ; $7aab: $35
	rla                                              ; $7aac: $17
	inc d                                            ; $7aad: $14
	ldh a, [rAUD2ENV]                                ; $7aae: $f0 $17
	ld b, d                                          ; $7ab0: $42
	adc h                                            ; $7ab1: $8c
	ld b, a                                          ; $7ab2: $47
	ld a, [bc]                                       ; $7ab3: $0a
	pop af                                           ; $7ab4: $f1
	pop hl                                           ; $7ab5: $e1
	ld d, a                                          ; $7ab6: $57
	pop af                                           ; $7ab7: $f1
	dec a                                            ; $7ab8: $3d
	jr c, jr_079_7afa                                ; $7ab9: $38 $3f

	ld c, a                                          ; $7abb: $4f
	ld d, b                                          ; $7abc: $50
	add hl, sp                                       ; $7abd: $39
	dec a                                            ; $7abe: $3d
	ld [hl], c                                       ; $7abf: $71
	ld b, a                                          ; $7ac0: $47
	inc [hl]                                         ; $7ac1: $34
	rla                                              ; $7ac2: $17
	inc d                                            ; $7ac3: $14
	ldh a, [$dd]                                     ; $7ac4: $f0 $dd
	ldh a, [$9c]                                     ; $7ac6: $f0 $9c

jr_079_7ac8:
	ld b, a                                          ; $7ac8: $47
	add e                                            ; $7ac9: $83
	pop af                                           ; $7aca: $f1
	ld [de], a                                       ; $7acb: $12
	ld e, c                                          ; $7acc: $59
	ldh a, [$f2]                                     ; $7acd: $f0 $f2
	inc [hl]                                         ; $7acf: $34
	ld a, [bc]                                       ; $7ad0: $0a
	ld h, h                                          ; $7ad1: $64
	ld a, $56                                        ; $7ad2: $3e $56
	ld c, l                                          ; $7ad4: $4d
	inc [hl]                                         ; $7ad5: $34
	pop af                                           ; $7ad6: $f1
	ldh [c], a                                       ; $7ad7: $e2
	pop af                                           ; $7ad8: $f1
	rst $38                                          ; $7ad9: $ff
	di                                               ; $7ada: $f3
	ld sp, $2bf0                                     ; $7adb: $31 $f0 $2b
	pop af                                           ; $7ade: $f1
	inc sp                                           ; $7adf: $33
	ld [hl], e                                       ; $7ae0: $73
	sub e                                            ; $7ae1: $93
	inc [hl]                                         ; $7ae2: $34
	rla                                              ; $7ae3: $17
	inc d                                            ; $7ae4: $14
	pop af                                           ; $7ae5: $f1
	db $dd                                           ; $7ae6: $dd
	ldh a, [$7f]                                     ; $7ae7: $f0 $7f
	ld h, d                                          ; $7ae9: $62
	ld h, h                                          ; $7aea: $64
	ld a, $6c                                        ; $7aeb: $3e $6c
	ld a, [hl-]                                      ; $7aed: $3a
	ld d, l                                          ; $7aee: $55
	inc [hl]                                         ; $7aef: $34
	ld a, [bc]                                       ; $7af0: $0a
	pop af                                           ; $7af1: $f1
	ld l, [hl]                                       ; $7af2: $6e
	ldh a, [$cf]                                     ; $7af3: $f0 $cf
	ld a, [hl-]                                      ; $7af5: $3a
	ld d, h                                          ; $7af6: $54
	ld c, c                                          ; $7af7: $49
	ld h, d                                          ; $7af8: $62
	ld l, [hl]                                       ; $7af9: $6e

jr_079_7afa:
	ld d, a                                          ; $7afa: $57
	ld d, d                                          ; $7afb: $52

jr_079_7afc:
	ld a, $3d                                        ; $7afc: $3e $3d
	dec [hl]                                         ; $7afe: $35
	rla                                              ; $7aff: $17
	inc d                                            ; $7b00: $14
	ld a, $3c                                        ; $7b01: $3e $3c
	ld a, $34                                        ; $7b03: $3e $34
	ldh a, [$5f]                                     ; $7b05: $f0 $5f
	ldh a, [$d7]                                     ; $7b07: $f0 $d7
	ld b, d                                          ; $7b09: $42
	ldh a, [rAUD3LEVEL]                              ; $7b0a: $f0 $1c
	pop af                                           ; $7b0c: $f1
	inc bc                                           ; $7b0d: $03
	ld h, d                                          ; $7b0e: $62
	ld a, [bc]                                       ; $7b0f: $0a
	pop af                                           ; $7b10: $f1
	ld d, e                                          ; $7b11: $53
	ldh a, [c]                                       ; $7b12: $f2
	ld [hl-], a                                      ; $7b13: $32
	ld d, c                                          ; $7b14: $51
	ld c, [hl]                                       ; $7b15: $4e
	ld d, d                                          ; $7b16: $52
	ld c, d                                          ; $7b17: $4a
	ld c, e                                          ; $7b18: $4b
	inc [hl]                                         ; $7b19: $34
	rla                                              ; $7b1a: $17
	inc d                                            ; $7b1b: $14
	pop af                                           ; $7b1c: $f1
	or [hl]                                          ; $7b1d: $b6
	ld c, e                                          ; $7b1e: $4b
	ldh a, [$ec]                                     ; $7b1f: $f0 $ec
	ld a, $3f                                        ; $7b21: $3e $3f
	ld b, [hl]                                       ; $7b23: $46
	ld e, h                                          ; $7b24: $5c
	ld d, b                                          ; $7b25: $50
	ld [hl], c                                       ; $7b26: $71
	ld d, d                                          ; $7b27: $52
	ld a, c                                          ; $7b28: $79
	ld b, c                                          ; $7b29: $41
	dec [hl]                                         ; $7b2a: $35
	rla                                              ; $7b2b: $17
	inc d                                            ; $7b2c: $14
	ld l, e                                          ; $7b2d: $6b
	ldh a, [$0d]                                     ; $7b2e: $f0 $0d

jr_079_7b30:
	ld c, d                                          ; $7b30: $4a
	ld c, a                                          ; $7b31: $4f
	inc [hl]                                         ; $7b32: $34
	ld l, e                                          ; $7b33: $6b
	ldh a, [$0d]                                     ; $7b34: $f0 $0d
	ld c, d                                          ; $7b36: $4a
	ld c, a                                          ; $7b37: $4f
	inc [hl]                                         ; $7b38: $34
	ld a, [bc]                                       ; $7b39: $0a
	ldh a, [$2b]                                     ; $7b3a: $f0 $2b
	ldh a, [$7c]                                     ; $7b3c: $f0 $7c
	ld [hl], l                                       ; $7b3e: $75
	ld h, l                                          ; $7b3f: $65
	ldh a, [$7e]                                     ; $7b40: $f0 $7e
	ld d, c                                          ; $7b42: $51
	ld c, [hl]                                       ; $7b43: $4e
	add b                                            ; $7b44: $80
	ld c, a                                          ; $7b45: $4f
	ld d, a                                          ; $7b46: $57
	ld c, d                                          ; $7b47: $4a
	ld d, c                                          ; $7b48: $51
	dec [hl]                                         ; $7b49: $35
	rla                                              ; $7b4a: $17
	inc d                                            ; $7b4b: $14
	ld b, b                                          ; $7b4c: $40
	ld a, $3f                                        ; $7b4d: $3e $3f
	inc [hl]                                         ; $7b4f: $34
	rla                                              ; $7b50: $17
	inc d                                            ; $7b51: $14
	ldh a, [c]                                       ; $7b52: $f2
	ld b, b                                          ; $7b53: $40
	sbc h                                            ; $7b54: $9c
	ld l, [hl]                                       ; $7b55: $6e
	ld d, c                                          ; $7b56: $51
	ldh a, [$8c]                                     ; $7b57: $f0 $8c
	ccf                                              ; $7b59: $3f
	ld b, d                                          ; $7b5a: $42
	pop af                                           ; $7b5b: $f1
	ld b, b                                          ; $7b5c: $40
	ld h, l                                          ; $7b5d: $65
	ldh a, [rWY]                                     ; $7b5e: $f0 $4a
	ldh a, [$c4]                                     ; $7b60: $f0 $c4
	ld h, l                                          ; $7b62: $65
	ldh a, [$50]                                     ; $7b63: $f0 $50
	ld h, d                                          ; $7b65: $62
	ld a, [bc]                                       ; $7b66: $0a
	ld [hl], d                                       ; $7b67: $72
	ld c, [hl]                                       ; $7b68: $4e
	ld d, h                                          ; $7b69: $54
	ld c, c                                          ; $7b6a: $49
	ld c, d                                          ; $7b6b: $4a
	ld a, $66                                        ; $7b6c: $3e $66
	add hl, sp                                       ; $7b6e: $39
	dec [hl]                                         ; $7b6f: $35
	ld sp, $0917                                     ; $7b70: $31 $17 $09
	ld [$2000], sp                                   ; $7b73: $08 $00 $20
	pop af                                           ; $7b76: $f1
	jp $fbf0                                         ; $7b77: $c3 $f0 $fb


	ld a, [bc]                                       ; $7b7a: $0a
	jr nc, @-$0e                                     ; $7b7b: $30 $f0

	ld [de], a                                       ; $7b7d: $12
	sbc a                                            ; $7b7e: $9f
	ldh a, [rTIMA]                                   ; $7b7f: $f0 $05
	pop af                                           ; $7b81: $f1
	rrca                                             ; $7b82: $0f
	ld h, d                                          ; $7b83: $62
	pop af                                           ; $7b84: $f1
	pop hl                                           ; $7b85: $e1
	ld d, a                                          ; $7b86: $57
	ldh a, [$e0]                                     ; $7b87: $f0 $e0
	dec sp                                           ; $7b89: $3b
	ccf                                              ; $7b8a: $3f
	ld sp, $1417                                     ; $7b8b: $31 $17 $14
	pop af                                           ; $7b8e: $f1
	or a                                             ; $7b8f: $b7
	pop af                                           ; $7b90: $f1
	add $86                                          ; $7b91: $c6 $86
	sbc e                                            ; $7b93: $9b
	ldh a, [$0e]                                     ; $7b94: $f0 $0e
	rla                                              ; $7b96: $17
	inc d                                            ; $7b97: $14
	jr nc, jr_079_7b30                               ; $7b98: $30 $96

	adc c                                            ; $7b9a: $89
	ld a, $3f                                        ; $7b9b: $3e $3f
	inc a                                            ; $7b9d: $3c
	ld d, b                                          ; $7b9e: $50
	ld c, e                                          ; $7b9f: $4b
	ld l, [hl]                                       ; $7ba0: $6e
	jr c, jr_079_7bf2                                ; $7ba1: $38 $4f

	ld b, d                                          ; $7ba3: $42
	ld c, d                                          ; $7ba4: $4a
	inc [hl]                                         ; $7ba5: $34
	ld a, [bc]                                       ; $7ba6: $0a
	ld c, a                                          ; $7ba7: $4f
	add hl, sp                                       ; $7ba8: $39
	ldh a, [$e5]                                     ; $7ba9: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $7bab: $f0 $14
	ld b, d                                          ; $7bad: $42
	ldh a, [rLYC]                                    ; $7bae: $f0 $45
	ld l, b                                          ; $7bb0: $68
	ld d, e                                          ; $7bb1: $53
	rla                                              ; $7bb2: $17
	inc d                                            ; $7bb3: $14
	ldh a, [hDisp0_BGP]                                     ; $7bb4: $f0 $85
	ld c, l                                          ; $7bb6: $4d
	ld b, l                                          ; $7bb7: $45
	add hl, sp                                       ; $7bb8: $39
	ld c, c                                          ; $7bb9: $49
	ld a, $3f                                        ; $7bba: $3e $3f
	jr c, jr_079_7c10                                ; $7bbc: $38 $52

	ld d, c                                          ; $7bbe: $51
	dec [hl]                                         ; $7bbf: $35
	rla                                              ; $7bc0: $17
	inc d                                            ; $7bc1: $14
	ldh a, [$dd]                                     ; $7bc2: $f0 $dd
	ldh a, [$9c]                                     ; $7bc4: $f0 $9c
	ld b, a                                          ; $7bc6: $47
	add e                                            ; $7bc7: $83
	pop af                                           ; $7bc8: $f1
	ld [de], a                                       ; $7bc9: $12
	ld e, c                                          ; $7bca: $59
	ldh a, [$f2]                                     ; $7bcb: $f0 $f2
	inc [hl]                                         ; $7bcd: $34
	ld a, [bc]                                       ; $7bce: $0a
	sub e                                            ; $7bcf: $93
	ldh a, [rSC]                                     ; $7bd0: $f0 $02
	ldh a, [rBCPD]                                   ; $7bd2: $f0 $69
	pop af                                           ; $7bd4: $f1
	rrca                                             ; $7bd5: $0f
	ldh a, [rOBP0]                                   ; $7bd6: $f0 $48
	db $f4                                           ; $7bd8: $f4
	ld h, $34                                        ; $7bd9: $26 $34
	rla                                              ; $7bdb: $17
	inc d                                            ; $7bdc: $14
	ld c, c                                          ; $7bdd: $49
	ccf                                              ; $7bde: $3f
	ld c, a                                          ; $7bdf: $4f
	db $f4                                           ; $7be0: $f4
	add hl, sp                                       ; $7be1: $39
	ldh a, [$31]                                     ; $7be2: $f0 $31
	ld a, $3d                                        ; $7be4: $3e $3d
	ld l, b                                          ; $7be6: $68
	ldh a, [$cf]                                     ; $7be7: $f0 $cf
	ld h, d                                          ; $7be9: $62
	ld a, [bc]                                       ; $7bea: $0a
	ld l, a                                          ; $7beb: $6f
	ld c, e                                          ; $7bec: $4b
	pop af                                           ; $7bed: $f1
	pop af                                           ; $7bee: $f1
	dec sp                                           ; $7bef: $3b
	ccf                                              ; $7bf0: $3f
	ld e, h                                          ; $7bf1: $5c

jr_079_7bf2:
	ld d, d                                          ; $7bf2: $52
	ld a, $3d                                        ; $7bf3: $3e $3d
	dec [hl]                                         ; $7bf5: $35
	rla                                              ; $7bf6: $17
	inc d                                            ; $7bf7: $14
	ld a, $3c                                        ; $7bf8: $3e $3c
	ld a, $34                                        ; $7bfa: $3e $34
	ld l, l                                          ; $7bfc: $6d
	add b                                            ; $7bfd: $80
	ld b, h                                          ; $7bfe: $44
	ld e, l                                          ; $7bff: $5d
	ldh a, [rVBK]                                    ; $7c00: $f0 $4f
	ldh a, [$8d]                                     ; $7c02: $f0 $8d
	ld d, a                                          ; $7c04: $57
	ld a, [hl-]                                      ; $7c05: $3a
	ld a, [bc]                                       ; $7c06: $0a
	ld d, h                                          ; $7c07: $54
	ld c, c                                          ; $7c08: $49
	ld d, e                                          ; $7c09: $53
	ld b, [hl]                                       ; $7c0a: $46
	ld d, a                                          ; $7c0b: $57
	ld d, d                                          ; $7c0c: $52
	ld d, c                                          ; $7c0d: $51
	dec [hl]                                         ; $7c0e: $35
	rla                                              ; $7c0f: $17

jr_079_7c10:
	inc d                                            ; $7c10: $14
	ld b, b                                          ; $7c11: $40
	ld c, l                                          ; $7c12: $4d
	ld c, e                                          ; $7c13: $4b
	inc [hl]                                         ; $7c14: $34
	ldh a, [$57]                                     ; $7c15: $f0 $57
	ldh a, [$ae]                                     ; $7c17: $f0 $ae
	ld a, [hl-]                                      ; $7c19: $3a
	ldh a, [$ab]                                     ; $7c1a: $f0 $ab
	pop af                                           ; $7c1c: $f1
	ld a, [bc]                                       ; $7c1d: $0a
	ld b, a                                          ; $7c1e: $47
	ld a, [bc]                                       ; $7c1f: $0a
	push af                                          ; $7c20: $f5
	rst SubAFromBC                                          ; $7c21: $e7
	ld d, a                                          ; $7c22: $57
	ldh a, [rTMA]                                    ; $7c23: $f0 $06
	ld e, [hl]                                       ; $7c25: $5e
	ld a, [hl-]                                      ; $7c26: $3a
	inc a                                            ; $7c27: $3c
	dec sp                                           ; $7c28: $3b
	dec a                                            ; $7c29: $3d
	sbc d                                            ; $7c2a: $9a
	ld c, d                                          ; $7c2b: $4a
	ld d, c                                          ; $7c2c: $51
	dec [hl]                                         ; $7c2d: $35
	rla                                              ; $7c2e: $17
	inc d                                            ; $7c2f: $14
	ld c, d                                          ; $7c30: $4a
	ld c, a                                          ; $7c31: $4f
	inc [hl]                                         ; $7c32: $34
	pop af                                           ; $7c33: $f1
	rlca                                             ; $7c34: $07
	ldh a, [hDisp0_LCDC]                                     ; $7c35: $f0 $82
	ld d, d                                          ; $7c37: $52
	ld c, d                                          ; $7c38: $4a
	ld b, [hl]                                       ; $7c39: $46
	ld c, c                                          ; $7c3a: $49
	ld h, e                                          ; $7c3b: $63
	sbc h                                            ; $7c3c: $9c
	inc a                                            ; $7c3d: $3c
	inc [hl]                                         ; $7c3e: $34
	ld a, [bc]                                       ; $7c3f: $0a
	ld e, h                                          ; $7c40: $5c
	dec sp                                           ; $7c41: $3b
	ld c, c                                          ; $7c42: $49
	ldh a, [$57]                                     ; $7c43: $f0 $57
	ldh a, [$ae]                                     ; $7c45: $f0 $ae
	ld a, [hl-]                                      ; $7c47: $3a
	add h                                            ; $7c48: $84
	ld d, e                                          ; $7c49: $53
	rla                                              ; $7c4a: $17
	inc d                                            ; $7c4b: $14
	ld l, a                                          ; $7c4c: $6f
	ld b, d                                          ; $7c4d: $42
	sbc [hl]                                         ; $7c4e: $9e
	ld b, a                                          ; $7c4f: $47
	pop af                                           ; $7c50: $f1
	and [hl]                                         ; $7c51: $a6
	ld c, l                                          ; $7c52: $4d
	ld c, [hl]                                       ; $7c53: $4e
	ld c, c                                          ; $7c54: $49
	ldh a, [$9f]                                     ; $7c55: $f0 $9f
	ld e, e                                          ; $7c57: $5b
	ccf                                              ; $7c58: $3f
	jr c, jr_079_7cad                                ; $7c59: $38 $52

	ld d, c                                          ; $7c5b: $51
	dec [hl]                                         ; $7c5c: $35
	rla                                              ; $7c5d: $17
	inc d                                            ; $7c5e: $14
	ld b, b                                          ; $7c5f: $40
	ld a, $3f                                        ; $7c60: $3e $3f
	inc [hl]                                         ; $7c62: $34
	ld d, h                                          ; $7c63: $54
	ld b, d                                          ; $7c64: $42
	adc c                                            ; $7c65: $89
	sbc a                                            ; $7c66: $9f
	ld b, a                                          ; $7c67: $47
	pop af                                           ; $7c68: $f1
	ld [hl], c                                       ; $7c69: $71
	ld h, e                                          ; $7c6a: $63
	ld c, [hl]                                       ; $7c6b: $4e
	pop af                                           ; $7c6c: $f1
	ld [hl], c                                       ; $7c6d: $71
	pop af                                           ; $7c6e: $f1
	dec c                                            ; $7c6f: $0d
	ld h, d                                          ; $7c70: $62
	inc [hl]                                         ; $7c71: $34
	ld a, [bc]                                       ; $7c72: $0a
	ld l, a                                          ; $7c73: $6f
	ld c, a                                          ; $7c74: $4f
	pop af                                           ; $7c75: $f1
	ld d, e                                          ; $7c76: $53
	ld a, $f3                                        ; $7c77: $3e $f3
	add $f0                                          ; $7c79: $c6 $f0
	ld bc, $3945                                     ; $7c7b: $01 $45 $39
	ld c, c                                          ; $7c7e: $49
	ld [hl], a                                       ; $7c7f: $77
	jr c, jr_079_7cd4                                ; $7c80: $38 $52

	ld d, c                                          ; $7c82: $51
	dec [hl]                                         ; $7c83: $35
	ld sp, $0917                                     ; $7c84: $31 $17 $09
	ld [$2000], sp                                   ; $7c87: $08 $00 $20
	pop af                                           ; $7c8a: $f1
	jp $fbf0                                         ; $7c8b: $c3 $f0 $fb


	add [hl]                                         ; $7c8e: $86
	add [hl]                                         ; $7c8f: $86
	jr nc, @-$0b                                     ; $7c90: $30 $f3

	inc c                                            ; $7c92: $0c
	ldh a, [c]                                       ; $7c93: $f2
	rla                                              ; $7c94: $17
	ld c, c                                          ; $7c95: $49
	ld l, a                                          ; $7c96: $6f
	ld sp, $f00a                                     ; $7c97: $31 $0a $f0
	jp c, Jump_079_45f0                              ; $7c9a: $da $f0 $45

jr_079_7c9d:
	add [hl]                                         ; $7c9d: $86
	pop af                                           ; $7c9e: $f1
	or l                                             ; $7c9f: $b5
	ld a, h                                          ; $7ca0: $7c
	rla                                              ; $7ca1: $17
	inc d                                            ; $7ca2: $14
	jr nc, jr_079_7d14                               ; $7ca3: $30 $6f

	ld c, e                                          ; $7ca5: $4b
	pop af                                           ; $7ca6: $f1
	add hl, de                                       ; $7ca7: $19
	ld e, b                                          ; $7ca8: $58
	jr c, jr_079_7c9d                                ; $7ca9: $38 $f2

	inc b                                            ; $7cab: $04
	inc a                                            ; $7cac: $3c

jr_079_7cad:
	ld d, b                                          ; $7cad: $50
	ld a, [bc]                                       ; $7cae: $0a
	pop af                                           ; $7caf: $f1
	ld de, $65f0                                     ; $7cb0: $11 $f0 $65
	ld d, e                                          ; $7cb3: $53
	ldh a, [c]                                       ; $7cb4: $f2
	ld e, c                                          ; $7cb5: $59
	ld d, l                                          ; $7cb6: $55
	inc [hl]                                         ; $7cb7: $34
	rla                                              ; $7cb8: $17
	inc d                                            ; $7cb9: $14
	di                                               ; $7cba: $f3
	sbc [hl]                                         ; $7cbb: $9e
	ld a, $38                                        ; $7cbc: $3e $38
	pop af                                           ; $7cbe: $f1
	ld h, e                                          ; $7cbf: $63
	ldh a, [rOBP0]                                   ; $7cc0: $f0 $48
	ld h, d                                          ; $7cc2: $62
	ld a, $3d                                        ; $7cc3: $3e $3d
	ld d, a                                          ; $7cc5: $57
	ld d, c                                          ; $7cc6: $51
	ld c, [hl]                                       ; $7cc7: $4e
	ld c, c                                          ; $7cc8: $49
	inc [hl]                                         ; $7cc9: $34
	rla                                              ; $7cca: $17
	inc d                                            ; $7ccb: $14
	ld d, c                                          ; $7ccc: $51
	sbc l                                            ; $7ccd: $9d
	ld b, a                                          ; $7cce: $47
	di                                               ; $7ccf: $f3
	inc c                                            ; $7cd0: $0c
	ldh a, [c]                                       ; $7cd1: $f2
	rla                                              ; $7cd2: $17
	ld c, d                                          ; $7cd3: $4a

jr_079_7cd4:
	ld a, [bc]                                       ; $7cd4: $0a
	ldh a, [c]                                       ; $7cd5: $f2
	ld [de], a                                       ; $7cd6: $12
	ld c, l                                          ; $7cd7: $4d
	ccf                                              ; $7cd8: $3f
	ld a, $52                                        ; $7cd9: $3e $52
	add hl, sp                                       ; $7cdb: $39
	ld b, d                                          ; $7cdc: $42
	ld c, d                                          ; $7cdd: $4a
	ld d, c                                          ; $7cde: $51
	dec [hl]                                         ; $7cdf: $35
	rla                                              ; $7ce0: $17
	inc d                                            ; $7ce1: $14
	ld c, d                                          ; $7ce2: $4a
	ld d, c                                          ; $7ce3: $51
	inc a                                            ; $7ce4: $3c
	ld d, b                                          ; $7ce5: $50
	inc [hl]                                         ; $7ce6: $34
	ldh a, [$f9]                                     ; $7ce7: $f0 $f9
	ldh a, [rSTAT]                                   ; $7ce9: $f0 $41
	ld c, a                                          ; $7ceb: $4f
	ld b, [hl]                                       ; $7cec: $46
	ld d, d                                          ; $7ced: $52
	ld d, a                                          ; $7cee: $57
	ld a, [bc]                                       ; $7cef: $0a
	pop af                                           ; $7cf0: $f1
	sub d                                            ; $7cf1: $92
	ld d, l                                          ; $7cf2: $55
	ld b, [hl]                                       ; $7cf3: $46
	ld d, a                                          ; $7cf4: $57
	ld d, d                                          ; $7cf5: $52
	ld a, c                                          ; $7cf6: $79
	ld b, c                                          ; $7cf7: $41
	dec [hl]                                         ; $7cf8: $35
	rla                                              ; $7cf9: $17
	inc d                                            ; $7cfa: $14
	ldh a, [$fa]                                     ; $7cfb: $f0 $fa
	pop af                                           ; $7cfd: $f1
	ld l, $62                                        ; $7cfe: $2e $62
	ld d, c                                          ; $7d00: $51
	ld c, [hl]                                       ; $7d01: $4e
	sbc d                                            ; $7d02: $9a
	ld d, e                                          ; $7d03: $53
	ld l, a                                          ; $7d04: $6f
	ld b, a                                          ; $7d05: $47
	ld c, c                                          ; $7d06: $49
	dec sp                                           ; $7d07: $3b
	ccf                                              ; $7d08: $3f
	ld b, d                                          ; $7d09: $42
	ld a, [bc]                                       ; $7d0a: $0a
	push af                                          ; $7d0b: $f5
	and $6d                                          ; $7d0c: $e6 $6d
	ld b, d                                          ; $7d0e: $42
	pop af                                           ; $7d0f: $f1
	ld a, e                                          ; $7d10: $7b
	ldh a, [hDisp1_WY]                                     ; $7d11: $f0 $95
	ld c, d                                          ; $7d13: $4a

jr_079_7d14:
	ld a, $3d                                        ; $7d14: $3e $3d
	dec [hl]                                         ; $7d16: $35
	rla                                              ; $7d17: $17
	inc d                                            ; $7d18: $14
	ld a, $3c                                        ; $7d19: $3e $3c
	ld a, $34                                        ; $7d1b: $3e $34
	ld d, h                                          ; $7d1d: $54
	ld c, l                                          ; $7d1e: $4d
	inc a                                            ; $7d1f: $3c
	ld d, b                                          ; $7d20: $50
	ld c, a                                          ; $7d21: $4f
	ld a, [bc]                                       ; $7d22: $0a
	ld d, h                                          ; $7d23: $54
	ld c, l                                          ; $7d24: $4d
	ld b, a                                          ; $7d25: $47
	ldh a, [$e4]                                     ; $7d26: $f0 $e4
	ld e, l                                          ; $7d28: $5d
	ld c, [hl]                                       ; $7d29: $4e
	ld d, h                                          ; $7d2a: $54
	ld c, c                                          ; $7d2b: $49
	ld a, [hl-]                                      ; $7d2c: $3a
	ld d, l                                          ; $7d2d: $55
	inc [hl]                                         ; $7d2e: $34
	rla                                              ; $7d2f: $17
	inc d                                            ; $7d30: $14
	di                                               ; $7d31: $f3
	inc c                                            ; $7d32: $0c
	ldh a, [c]                                       ; $7d33: $f2
	rla                                              ; $7d34: $17
	ld c, c                                          ; $7d35: $49
	db $f4                                           ; $7d36: $f4
	ld [hl-], a                                      ; $7d37: $32
	ld b, a                                          ; $7d38: $47
	pop af                                           ; $7d39: $f1
	ld h, $41                                        ; $7d3a: $26 $41
	ld c, d                                          ; $7d3c: $4a
	ld h, a                                          ; $7d3d: $67
	ld d, h                                          ; $7d3e: $54
	add hl, sp                                       ; $7d3f: $39
	ld c, c                                          ; $7d40: $49
	ld a, [bc]                                       ; $7d41: $0a
	ld [hl], a                                       ; $7d42: $77
	dec sp                                           ; $7d43: $3b
	ccf                                              ; $7d44: $3f
	jr c, jr_079_7d99                                ; $7d45: $38 $52

	ld d, c                                          ; $7d47: $51

jr_079_7d48:
	dec [hl]                                         ; $7d48: $35
	ld sp, $0917                                     ; $7d49: $31 $17 $09
	ld [$2000], sp                                   ; $7d4c: $08 $00 $20
	pop af                                           ; $7d4f: $f1
	jp $fbf0                                         ; $7d50: $c3 $f0 $fb


	add [hl]                                         ; $7d53: $86
	add [hl]                                         ; $7d54: $86
	jr nc, jr_079_7d48                               ; $7d55: $30 $f1

	or [hl]                                          ; $7d57: $b6
	ld b, d                                          ; $7d58: $42
	di                                               ; $7d59: $f3
	sub a                                            ; $7d5a: $97

jr_079_7d5b:
	pop af                                           ; $7d5b: $f1
	ei                                               ; $7d5c: $fb
	ld sp, $f00a                                     ; $7d5d: $31 $0a $f0
	xor e                                            ; $7d60: $ab
	adc h                                            ; $7d61: $8c
	ldh a, [rTIMA]                                   ; $7d62: $f0 $05

jr_079_7d64:
	pop af                                           ; $7d64: $f1
	ldh a, [c]                                       ; $7d65: $f2
	rla                                              ; $7d66: $17
	inc d                                            ; $7d67: $14
	jr nc, jr_079_7d5b                               ; $7d68: $30 $f1

	or [hl]                                          ; $7d6a: $b6
	ld c, e                                          ; $7d6b: $4b
	ldh a, [$fb]                                     ; $7d6c: $f0 $fb
	sbc [hl]                                         ; $7d6e: $9e
	ld c, a                                          ; $7d6f: $4f
	ld c, a                                          ; $7d70: $4f
	ld d, b                                          ; $7d71: $50
	ld e, [hl]                                       ; $7d72: $5e
	ld a, [hl-]                                      ; $7d73: $3a
	jr c, jr_079_7daa                                ; $7d74: $38 $34

	ld a, [bc]                                       ; $7d76: $0a
	ldh a, [c]                                       ; $7d77: $f2
	rst SubAFromHL                                          ; $7d78: $d7
	ld a, $38                                        ; $7d79: $3e $38
	ldh a, [c]                                       ; $7d7b: $f2
	reti                                             ; $7d7c: $d9


	ld c, d                                          ; $7d7d: $4a

jr_079_7d7e:
	ld d, c                                          ; $7d7e: $51
	dec [hl]                                         ; $7d7f: $35
	rla                                              ; $7d80: $17
	inc d                                            ; $7d81: $14
	ld d, h                                          ; $7d82: $54
	ld b, c                                          ; $7d83: $41
	ld a, [hl-]                                      ; $7d84: $3a
	ld c, c                                          ; $7d85: $49
	ld d, h                                          ; $7d86: $54
	ld e, a                                          ; $7d87: $5f
	ld b, a                                          ; $7d88: $47
	ld a, $3c                                        ; $7d89: $3e $3c
	ld a, [bc]                                       ; $7d8b: $0a
	di                                               ; $7d8c: $f3
	sub l                                            ; $7d8d: $95
	ldh a, [$30]                                     ; $7d8e: $f0 $30
	ld c, d                                          ; $7d90: $4a
	ld e, h                                          ; $7d91: $5c
	ld d, d                                          ; $7d92: $52
	ld a, c                                          ; $7d93: $79
	ld b, c                                          ; $7d94: $41
	dec [hl]                                         ; $7d95: $35
	rla                                              ; $7d96: $17
	inc d                                            ; $7d97: $14
	ld c, d                                          ; $7d98: $4a

jr_079_7d99:
	ld c, a                                          ; $7d99: $4f
	inc [hl]                                         ; $7d9a: $34
	pop af                                           ; $7d9b: $f1
	or [hl]                                          ; $7d9c: $b6
	ld c, e                                          ; $7d9d: $4b
	ld d, h                                          ; $7d9e: $54
	ld c, l                                          ; $7d9f: $4d
	inc a                                            ; $7da0: $3c
	ld d, b                                          ; $7da1: $50
	ld c, a                                          ; $7da2: $4f
	rla                                              ; $7da3: $17
	inc d                                            ; $7da4: $14
	ldh a, [$33]                                     ; $7da5: $f0 $33
	ld d, l                                          ; $7da7: $55
	ldh a, [c]                                       ; $7da8: $f2
	ld [hl], e                                       ; $7da9: $73

jr_079_7daa:
	ld a, $55                                        ; $7daa: $3e $55
	inc [hl]                                         ; $7dac: $34
	ldh a, [$79]                                     ; $7dad: $f0 $79
	ld c, [hl]                                       ; $7daf: $4e
	ld d, l                                          ; $7db0: $55
	ld a, [bc]                                       ; $7db1: $0a
	ldh a, [rTIMA]                                   ; $7db2: $f0 $05
	ld e, h                                          ; $7db4: $5c
	ccf                                              ; $7db5: $3f
	jr c, jr_079_7e0c                                ; $7db6: $38 $54

	add hl, sp                                       ; $7db8: $39
	ld c, c                                          ; $7db9: $49
	ld [hl], a                                       ; $7dba: $77
	jr c, jr_079_7e0f                                ; $7dbb: $38 $52

	ld d, c                                          ; $7dbd: $51
	dec [hl]                                         ; $7dbe: $35

jr_079_7dbf:
	ld sp, $0917                                     ; $7dbf: $31 $17 $09
	ld [$2000], sp                                   ; $7dc2: $08 $00 $20
	pop af                                           ; $7dc5: $f1
	jp $fbf0                                         ; $7dc6: $c3 $f0 $fb


	add [hl]                                         ; $7dc9: $86
	add [hl]                                         ; $7dca: $86
	jr nc, jr_079_7dbf                               ; $7dcb: $30 $f2

	db $fc                                           ; $7dcd: $fc
	ld e, l                                          ; $7dce: $5d
	ld l, a                                          ; $7dcf: $6f
	ld b, d                                          ; $7dd0: $42
	pop af                                           ; $7dd1: $f1
	ld c, h                                          ; $7dd2: $4c
	jr c, jr_079_7e06                                ; $7dd3: $38 $31

	ld a, [bc]                                       ; $7dd5: $0a
	ldh a, [rAUD2ENV]                                ; $7dd6: $f0 $17
	ldh a, [rTIMA]                                   ; $7dd8: $f0 $05
	pop af                                           ; $7dda: $f1
	ldh a, [c]                                       ; $7ddb: $f2
	rla                                              ; $7ddc: $17
	inc d                                            ; $7ddd: $14
	jr nc, jr_079_7e4f                               ; $7dde: $30 $6f

	ld c, e                                          ; $7de0: $4b
	inc [hl]                                         ; $7de1: $34
	jr c, jr_079_7d64                                ; $7de2: $38 $80

	ld c, a                                          ; $7de4: $4f
	di                                               ; $7de5: $f3
	jr nc, jr_079_7e35                               ; $7de6: $30 $4d

	ccf                                              ; $7de8: $3f
	ld a, [bc]                                       ; $7de9: $0a
	ld b, [hl]                                       ; $7dea: $46
	ld c, [hl]                                       ; $7deb: $4e
	ldh a, [$ab]                                     ; $7dec: $f0 $ab
	ld b, d                                          ; $7dee: $42
	adc h                                            ; $7def: $8c
	ld h, d                                          ; $7df0: $62
	ld [hl], d                                       ; $7df1: $72
	ccf                                              ; $7df2: $3f
	jr c, @+$54                                      ; $7df3: $38 $52

	ld d, c                                          ; $7df5: $51
	dec [hl]                                         ; $7df6: $35
	rla                                              ; $7df7: $17
	inc d                                            ; $7df8: $14
	ld e, h                                          ; $7df9: $5c
	dec sp                                           ; $7dfa: $3b
	ld c, c                                          ; $7dfb: $49
	jr c, jr_079_7d7e                                ; $7dfc: $38 $80

	inc a                                            ; $7dfe: $3c
	inc [hl]                                         ; $7dff: $34
	ld b, b                                          ; $7e00: $40
	ld b, d                                          ; $7e01: $42
	ldh a, [$ab]                                     ; $7e02: $f0 $ab
	ld b, d                                          ; $7e04: $42
	adc h                                            ; $7e05: $8c

jr_079_7e06:
	ld d, e                                          ; $7e06: $53
	ld a, [bc]                                       ; $7e07: $0a
	ld l, a                                          ; $7e08: $6f
	ld b, d                                          ; $7e09: $42
	ldh a, [$38]                                     ; $7e0a: $f0 $38

jr_079_7e0c:
	ld h, d                                          ; $7e0c: $62
	pop af                                           ; $7e0d: $f1
	pop hl                                           ; $7e0e: $e1

jr_079_7e0f:
	ld d, a                                          ; $7e0f: $57
	pop af                                           ; $7e10: $f1
	dec a                                            ; $7e11: $3d
	jr c, @+$41                                      ; $7e12: $38 $3f

	ld a, [bc]                                       ; $7e14: $0a
	ld d, l                                          ; $7e15: $55
	ld c, l                                          ; $7e16: $4d
	ld c, [hl]                                       ; $7e17: $4e
	ld c, c                                          ; $7e18: $49
	ldh a, [$9f]                                     ; $7e19: $f0 $9f
	ld e, e                                          ; $7e1b: $5b
	ccf                                              ; $7e1c: $3f
	jr c, @+$54                                      ; $7e1d: $38 $52

	ld d, c                                          ; $7e1f: $51
	dec [hl]                                         ; $7e20: $35
	rla                                              ; $7e21: $17
	inc d                                            ; $7e22: $14
	ld l, e                                          ; $7e23: $6b
	db $f4                                           ; $7e24: $f4
	dec h                                            ; $7e25: $25
	inc a                                            ; $7e26: $3c
	ld b, a                                          ; $7e27: $47
	jr c, @+$50                                      ; $7e28: $38 $4e

	ld l, a                                          ; $7e2a: $6f
	ld h, d                                          ; $7e2b: $62
	pop af                                           ; $7e2c: $f1
	adc l                                            ; $7e2d: $8d
	ld a, $3f                                        ; $7e2e: $3e $3f
	ld c, h                                          ; $7e30: $4c
	dec [hl]                                         ; $7e31: $35
	ld sp, $0917                                     ; $7e32: $31 $17 $09

jr_079_7e35:
	ld [$2000], sp                                   ; $7e35: $08 $00 $20
	jr nc, jr_079_7e73                               ; $7e38: $30 $39

	ld h, h                                          ; $7e3a: $64
	ld h, h                                          ; $7e3b: $64
	ld h, h                                          ; $7e3c: $64
	ld h, h                                          ; $7e3d: $64

jr_079_7e3e:
	ld h, h                                          ; $7e3e: $64
	ld h, h                                          ; $7e3f: $64
	ld e, c                                          ; $7e40: $59

jr_079_7e41:
	ld e, c                                          ; $7e41: $59
	ld e, c                                          ; $7e42: $59
	ld e, c                                          ; $7e43: $59
	scf                                              ; $7e44: $37
	scf                                              ; $7e45: $37
	ld sp, $0809                                     ; $7e46: $31 $09 $08
	nop                                              ; $7e49: $00
	jr nz, jr_079_7e3e                               ; $7e4a: $20 $f2

	call nz, $87f1                                   ; $7e4c: $c4 $f1 $87

jr_079_7e4f:
	jr nc, jr_079_7e41                               ; $7e4f: $30 $f0

	sbc l                                            ; $7e51: $9d
	ldh a, [$a6]                                     ; $7e52: $f0 $a6
	ld l, c                                          ; $7e54: $69
	ld h, l                                          ; $7e55: $65
	ldh a, [c]                                       ; $7e56: $f2
	and $f1                                          ; $7e57: $e6 $f1
	ld l, $31                                        ; $7e59: $2e $31
	ld a, [bc]                                       ; $7e5b: $0a
	ld h, d                                          ; $7e5c: $62
	ldh a, [c]                                       ; $7e5d: $f2
	ld e, h                                          ; $7e5e: $5c
	pop af                                           ; $7e5f: $f1

jr_079_7e60:
	ld l, e                                          ; $7e60: $6b
	ld a, $3d                                        ; $7e61: $3e $3d
	dec [hl]                                         ; $7e63: $35
	rla                                              ; $7e64: $17
	inc d                                            ; $7e65: $14
	add hl, bc                                       ; $7e66: $09
	ld [$2000], sp                                   ; $7e67: $08 $00 $20
	ldh a, [c]                                       ; $7e6a: $f2
	call nz, $87f1                                   ; $7e6b: $c4 $f1 $87
	jr nc, jr_079_7e60                               ; $7e6e: $30 $f0

	or $f1                                           ; $7e70: $f6 $f1
	inc [hl]                                         ; $7e72: $34

jr_079_7e73:
	ldh a, [c]                                       ; $7e73: $f2
	pop bc                                           ; $7e74: $c1
	pop af                                           ; $7e75: $f1
	ld a, d                                          ; $7e76: $7a
	ldh a, [$1f]                                     ; $7e77: $f0 $1f
	ldh a, [$6e]                                     ; $7e79: $f0 $6e
	ld sp, $620a                                     ; $7e7b: $31 $0a $62
	ldh a, [c]                                       ; $7e7e: $f2
	ld e, h                                          ; $7e7f: $5c
	pop af                                           ; $7e80: $f1
	ld l, e                                          ; $7e81: $6b
	ld a, $3d                                        ; $7e82: $3e $3d
	dec [hl]                                         ; $7e84: $35
	rla                                              ; $7e85: $17
	inc d                                            ; $7e86: $14
	add hl, bc                                       ; $7e87: $09
	ld [$2000], sp                                   ; $7e88: $08 $00 $20
	ldh a, [c]                                       ; $7e8b: $f2
	call nz, $87f1                                   ; $7e8c: $c4 $f1 $87
	jr nc, @-$0c                                     ; $7e8f: $30 $f2

	adc a                                            ; $7e91: $8f
	ldh a, [c]                                       ; $7e92: $f2
	sub b                                            ; $7e93: $90
	pop af                                           ; $7e94: $f1
	reti                                             ; $7e95: $d9


	add [hl]                                         ; $7e96: $86
	ldh a, [$3f]                                     ; $7e97: $f0 $3f
	db $f4                                           ; $7e99: $f4
	ld b, h                                          ; $7e9a: $44
	ld b, d                                          ; $7e9b: $42
	pop af                                           ; $7e9c: $f1
	add e                                            ; $7e9d: $83
	ld sp, $620a                                     ; $7e9e: $31 $0a $62
	ldh a, [c]                                       ; $7ea1: $f2
	ld e, h                                          ; $7ea2: $5c
	pop af                                           ; $7ea3: $f1

jr_079_7ea4:
	ld l, e                                          ; $7ea4: $6b
	ld a, $3d                                        ; $7ea5: $3e $3d
	dec [hl]                                         ; $7ea7: $35
	rla                                              ; $7ea8: $17
	inc d                                            ; $7ea9: $14
	add hl, bc                                       ; $7eaa: $09
	ld [$2000], sp                                   ; $7eab: $08 $00 $20
	ldh a, [c]                                       ; $7eae: $f2
	call nz, $87f1                                   ; $7eaf: $c4 $f1 $87
	jr nc, jr_079_7ea4                               ; $7eb2: $30 $f0

	ld a, [de]                                       ; $7eb4: $1a
	ld e, c                                          ; $7eb5: $59
	ldh a, [$9d]                                     ; $7eb6: $f0 $9d
	ldh a, [$03]                                     ; $7eb8: $f0 $03
	ld h, l                                          ; $7eba: $65
	ld b, d                                          ; $7ebb: $42
	ldh a, [rOCPD]                                   ; $7ebc: $f0 $6b
	ldh a, [rSC]                                     ; $7ebe: $f0 $02
	pop af                                           ; $7ec0: $f1
	ld b, c                                          ; $7ec1: $41
	ld e, h                                          ; $7ec2: $5c
	ld sp, $620a                                     ; $7ec3: $31 $0a $62
	ldh a, [c]                                       ; $7ec6: $f2
	ld e, h                                          ; $7ec7: $5c
	pop af                                           ; $7ec8: $f1
	ld l, e                                          ; $7ec9: $6b
	ld a, $3d                                        ; $7eca: $3e $3d

jr_079_7ecc:
	dec [hl]                                         ; $7ecc: $35
	rla                                              ; $7ecd: $17
	inc d                                            ; $7ece: $14
	add hl, bc                                       ; $7ecf: $09
	ld [$2000], sp                                   ; $7ed0: $08 $00 $20
	ldh a, [c]                                       ; $7ed3: $f2
	call nz, $87f1                                   ; $7ed4: $c4 $f1 $87
	jr nc, jr_079_7ecc                               ; $7ed7: $30 $f3

	and e                                            ; $7ed9: $a3
	di                                               ; $7eda: $f3
	sbc $f1                                          ; $7edb: $de $f1
	ld d, d                                          ; $7edd: $52
	ldh a, [$dc]                                     ; $7ede: $f0 $dc
	di                                               ; $7ee0: $f3
	db $eb                                           ; $7ee1: $eb
	ld sp, $620a                                     ; $7ee2: $31 $0a $62
	ldh a, [c]                                       ; $7ee5: $f2
	ld e, h                                          ; $7ee6: $5c
	pop af                                           ; $7ee7: $f1

jr_079_7ee8:
	ld l, e                                          ; $7ee8: $6b
	ld a, $3d                                        ; $7ee9: $3e $3d
	dec [hl]                                         ; $7eeb: $35
	rla                                              ; $7eec: $17
	inc d                                            ; $7eed: $14
	add hl, bc                                       ; $7eee: $09
	ld [$2000], sp                                   ; $7eef: $08 $00 $20
	ldh a, [c]                                       ; $7ef2: $f2
	call nz, $87f1                                   ; $7ef3: $c4 $f1 $87
	jr nc, jr_079_7ee8                               ; $7ef6: $30 $f0

	add l                                            ; $7ef8: $85
	pop af                                           ; $7ef9: $f1
	ld h, l                                          ; $7efa: $65
	ldh a, [$c3]                                     ; $7efb: $f0 $c3
	ld e, c                                          ; $7efd: $59
	ldh a, [rAUD4LEN]                                ; $7efe: $f0 $20
	ld e, c                                          ; $7f00: $59
	pop af                                           ; $7f01: $f1
	sub a                                            ; $7f02: $97
	ld [hl], e                                       ; $7f03: $73
	ldh a, [$32]                                     ; $7f04: $f0 $32
	ld sp, $620a                                     ; $7f06: $31 $0a $62
	ldh a, [c]                                       ; $7f09: $f2
	ld e, h                                          ; $7f0a: $5c
	pop af                                           ; $7f0b: $f1
	ld l, e                                          ; $7f0c: $6b

jr_079_7f0d:
	ld a, $3d                                        ; $7f0d: $3e $3d
	dec [hl]                                         ; $7f0f: $35
	rla                                              ; $7f10: $17
	inc d                                            ; $7f11: $14
	add hl, bc                                       ; $7f12: $09
	ld [$2000], sp                                   ; $7f13: $08 $00 $20
	ldh a, [c]                                       ; $7f16: $f2
	call nz, $87f1                                   ; $7f17: $c4 $f1 $87
	jr nc, jr_079_7f0d                               ; $7f1a: $30 $f1

	scf                                              ; $7f1c: $37
	ld b, d                                          ; $7f1d: $42
	ldh a, [c]                                       ; $7f1e: $f2
	rrca                                             ; $7f1f: $0f
	ldh a, [rAUD4POLY]                               ; $7f20: $f0 $22
	ld e, c                                          ; $7f22: $59
	ldh a, [rBCPD]                                   ; $7f23: $f0 $69
	ld sp, $620a                                     ; $7f25: $31 $0a $62
	ldh a, [c]                                       ; $7f28: $f2
	ld e, h                                          ; $7f29: $5c
	pop af                                           ; $7f2a: $f1

jr_079_7f2b:
	ld l, e                                          ; $7f2b: $6b
	ld a, $3d                                        ; $7f2c: $3e $3d
	dec [hl]                                         ; $7f2e: $35
	rla                                              ; $7f2f: $17
	inc d                                            ; $7f30: $14
	add hl, bc                                       ; $7f31: $09
	ld [$2000], sp                                   ; $7f32: $08 $00 $20
	ldh a, [c]                                       ; $7f35: $f2
	call nz, $87f1                                   ; $7f36: $c4 $f1 $87
	jr nc, jr_079_7f2b                               ; $7f39: $30 $f0

	ld [hl], a                                       ; $7f3b: $77
	di                                               ; $7f3c: $f3
	and e                                            ; $7f3d: $a3
	ldh a, [c]                                       ; $7f3e: $f2
	ld hl, $0a31                                     ; $7f3f: $21 $31 $0a
	ld h, d                                          ; $7f42: $62
	ldh a, [c]                                       ; $7f43: $f2
	ld e, h                                          ; $7f44: $5c
	pop af                                           ; $7f45: $f1

jr_079_7f46:
	ld l, e                                          ; $7f46: $6b
	ld a, $3d                                        ; $7f47: $3e $3d
	dec [hl]                                         ; $7f49: $35
	rla                                              ; $7f4a: $17
	inc d                                            ; $7f4b: $14
	add hl, bc                                       ; $7f4c: $09
	ld [$2000], sp                                   ; $7f4d: $08 $00 $20
	ldh a, [c]                                       ; $7f50: $f2
	call nz, $87f1                                   ; $7f51: $c4 $f1 $87
	jr nc, jr_079_7f46                               ; $7f54: $30 $f0

	cp d                                             ; $7f56: $ba
	ld a, l                                          ; $7f57: $7d
	ldh a, [$3d]                                     ; $7f58: $f0 $3d
	ldh a, [$a6]                                     ; $7f5a: $f0 $a6
	ldh a, [rSC]                                     ; $7f5c: $f0 $02
	ldh a, [$f1]                                     ; $7f5e: $f0 $f1
	ld h, l                                          ; $7f60: $65
	sub e                                            ; $7f61: $93
	ld sp, $620a                                     ; $7f62: $31 $0a $62
	ldh a, [c]                                       ; $7f65: $f2
	ld e, h                                          ; $7f66: $5c
	pop af                                           ; $7f67: $f1
	ld l, e                                          ; $7f68: $6b
	ld a, $3d                                        ; $7f69: $3e $3d
	dec [hl]                                         ; $7f6b: $35
	rla                                              ; $7f6c: $17
	inc d                                            ; $7f6d: $14
	add hl, bc                                       ; $7f6e: $09
	ld [$2000], sp                                   ; $7f6f: $08 $00 $20
	ld [hl-], a                                      ; $7f72: $32
	ld e, b                                          ; $7f73: $58
	ccf                                              ; $7f74: $3f
	inc [hl]                                         ; $7f75: $34
	ld l, d                                          ; $7f76: $6a
	ldh a, [rAUD1HIGH]                               ; $7f77: $f0 $14
	ld b, d                                          ; $7f79: $42
	pop af                                           ; $7f7a: $f1
	ld h, e                                          ; $7f7b: $63
	db $f4                                           ; $7f7c: $f4
	inc hl                                           ; $7f7d: $23
	ld c, e                                          ; $7f7e: $4b
	ld c, b                                          ; $7f7f: $48
	dec [hl]                                         ; $7f80: $35
	inc sp                                           ; $7f81: $33
	rla                                              ; $7f82: $17
	inc d                                            ; $7f83: $14
	ld h, h                                          ; $7f84: $64
	ld l, h                                          ; $7f85: $6c
	ld d, l                                          ; $7f86: $55
	ld e, e                                          ; $7f87: $5b
	ld h, d                                          ; $7f88: $62
	pop af                                           ; $7f89: $f1
	ld e, a                                          ; $7f8a: $5f
	ld e, h                                          ; $7f8b: $5c
	ld d, d                                          ; $7f8c: $52
	ld d, c                                          ; $7f8d: $51
	dec [hl]                                         ; $7f8e: $35
	rla                                              ; $7f8f: $17
	add hl, bc                                       ; $7f90: $09
	ld [$2000], sp                                   ; $7f91: $08 $00 $20
	ld de, $3943                                     ; $7f94: $11 $43 $39
	ld h, h                                          ; $7f97: $64
	ld d, a                                          ; $7f98: $57
	ld d, [hl]                                       ; $7f99: $56
	ld b, [hl]                                       ; $7f9a: $46
	ld b, [hl]                                       ; $7f9b: $46
	ld b, [hl]                                       ; $7f9c: $46
	ld e, c                                          ; $7f9d: $59
	ld e, c                                          ; $7f9e: $59
	rla                                              ; $7f9f: $17
	add hl, bc                                       ; $7fa0: $09
	ld [$2000], sp                                   ; $7fa1: $08 $00 $20
	ld de, $5443                                     ; $7fa4: $11 $43 $54
	inc [hl]                                         ; $7fa7: $34
	ld d, h                                          ; $7fa8: $54
	ld c, l                                          ; $7fa9: $4d
	ld c, e                                          ; $7faa: $4b
	scf                                              ; $7fab: $37
	scf                                              ; $7fac: $37
	rla                                              ; $7fad: $17
	add hl, bc                                       ; $7fae: $09
	ld [$2000], sp                                   ; $7faf: $08 $00 $20
	ld de, $f043                                     ; $7fb2: $11 $43 $f0
	ld [bc], a                                       ; $7fb5: $02
	ld [hl], e                                       ; $7fb6: $73
	ldh a, [$2f]                                     ; $7fb7: $f0 $2f
	ld e, c                                          ; $7fb9: $59
	scf                                              ; $7fba: $37
	ld a, [bc]                                       ; $7fbb: $0a
	add a                                            ; $7fbc: $87
	pop af                                           ; $7fbd: $f1
	ld e, c                                          ; $7fbe: $59
	ld b, h                                          ; $7fbf: $44
	scf                                              ; $7fc0: $37
	scf                                              ; $7fc1: $37
	rla                                              ; $7fc2: $17
	add hl, bc                                       ; $7fc3: $09
	ld [$2000], sp                                   ; $7fc4: $08 $00 $20
	ld de, $f043                                     ; $7fc7: $11 $43 $f0
	ld [bc], a                                       ; $7fca: $02
	ld [hl], e                                       ; $7fcb: $73
	ldh a, [$2f]                                     ; $7fcc: $f0 $2f
	ld e, c                                          ; $7fce: $59
	scf                                              ; $7fcf: $37
	ld a, [bc]                                       ; $7fd0: $0a
	ldh a, [rAUD2HIGH]                               ; $7fd1: $f0 $19
	pop af                                           ; $7fd3: $f1
	ld e, c                                          ; $7fd4: $59
	ld b, h                                          ; $7fd5: $44
	scf                                              ; $7fd6: $37
	scf                                              ; $7fd7: $37
	rla                                              ; $7fd8: $17
	add hl, bc                                       ; $7fd9: $09
	ld [$2000], sp                                   ; $7fda: $08 $00 $20
	ld de, $f043                                     ; $7fdd: $11 $43 $f0
	ld [bc], a                                       ; $7fe0: $02
	ld [hl], e                                       ; $7fe1: $73
	ldh a, [$2f]                                     ; $7fe2: $f0 $2f
	ld e, c                                          ; $7fe4: $59
	scf                                              ; $7fe5: $37
	ld a, [bc]                                       ; $7fe6: $0a
	pop af                                           ; $7fe7: $f1
	ld e, c                                          ; $7fe8: $59
	ld b, h                                          ; $7fe9: $44
	scf                                              ; $7fea: $37
	scf                                              ; $7feb: $37
	rla                                              ; $7fec: $17
	add hl, bc                                       ; $7fed: $09
	ld [$2000], sp                                   ; $7fee: $08 $00 $20
	ld de, $f143                                     ; $7ff1: $11 $43 $f1
	add hl, de                                       ; $7ff4: $19
	pop af                                           ; $7ff5: $f1
	ld e, c                                          ; $7ff6: $59
	ld b, h                                          ; $7ff7: $44
	dec sp                                           ; $7ff8: $3b
	dec a                                            ; $7ff9: $3d
	dec [hl]                                         ; $7ffa: $35
	rla                                              ; $7ffb: $17
	add hl, bc                                       ; $7ffc: $09
	ld [$2000], sp                                   ; $7ffd: $08 $00 $20
