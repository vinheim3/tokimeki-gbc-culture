; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $093", ROMX[$4000], BANK[$93]

	ldh a, [$ed]                                     ; $4000: $f0 $ed
	and c                                            ; $4002: $a1
	cpl                                              ; $4003: $2f
	ld b, e                                          ; $4004: $43
	ldh a, [$31]                                     ; $4005: $f0 $31
	ld c, e                                          ; $4007: $4b
	db $eb                                           ; $4008: $eb
	ld l, a                                          ; $4009: $6f
	inc de                                           ; $400a: $13
	ld a, [hl-]                                      ; $400b: $3a
	ld b, c                                          ; $400c: $41
	ld b, h                                          ; $400d: $44
	ld e, l                                          ; $400e: $5d

jr_093_400f:
	ld e, d                                          ; $400f: $5a
	ld c, h                                          ; $4010: $4c
	and b                                            ; $4011: $a0
	ld b, [hl]                                       ; $4012: $46
	dec sp                                           ; $4013: $3b
	inc [hl]                                         ; $4014: $34
	ret nz                                           ; $4015: $c0

	xor b                                            ; $4016: $a8
	ldh a, [rTAC]                                    ; $4017: $f0 $07
	inc a                                            ; $4019: $3c
	ld d, b                                          ; $401a: $50
	ld a, [hl-]                                      ; $401b: $3a
	jr c, jr_093_400f                                ; $401c: $38 $f1

	dec bc                                           ; $401e: $0b
	ld b, l                                          ; $401f: $45
	ld c, h                                          ; $4020: $4c
	and b                                            ; $4021: $a0
	cpl                                              ; $4022: $2f
	ld b, e                                          ; $4023: $43
	ld c, d                                          ; $4024: $4a
	ld c, a                                          ; $4025: $4f
	inc [hl]                                         ; $4026: $34
	jr c, jr_093_4061                                ; $4027: $38 $38

	ldh a, [$ed]                                     ; $4029: $f0 $ed
	ld b, h                                          ; $402b: $44
	dec sp                                           ; $402c: $3b
	dec a                                            ; $402d: $3d
	inc de                                           ; $402e: $13
	ld c, d                                          ; $402f: $4a
	ld a, $66                                        ; $4030: $3e $66
	add hl, sp                                       ; $4032: $39
	and b                                            ; $4033: $a0
	ld b, [hl]                                       ; $4034: $46
	dec sp                                           ; $4035: $3b
	inc [hl]                                         ; $4036: $34
	db $ec                                           ; $4037: $ec
	push bc                                          ; $4038: $c5
	xor h                                            ; $4039: $ac
	adc d                                            ; $403a: $8a
	ldh a, [$73]                                     ; $403b: $f0 $73
	adc a                                            ; $403d: $8f
	ld [$a0c5], a                                    ; $403e: $ea $c5 $a0
	ld b, [hl]                                       ; $4041: $46
	dec sp                                           ; $4042: $3b
	inc [hl]                                         ; $4043: $34
	ld [$ac9c], a                                    ; $4044: $ea $9c $ac
	ldh a, [$b2]                                     ; $4047: $f0 $b2
	ldh a, [rKEY1]                                   ; $4049: $f0 $4d
	ld b, a                                          ; $404b: $47
	ld a, b                                          ; $404c: $78
	ccf                                              ; $404d: $3f
	xor b                                            ; $404e: $a8
	db $ec                                           ; $404f: $ec
	ld [hl], $38                                     ; $4050: $36 $38
	ccf                                              ; $4052: $3f
	rst SubAFromDE                                          ; $4053: $df
	ld h, e                                          ; $4054: $63
	and b                                            ; $4055: $a0
	cpl                                              ; $4056: $2f
	ld b, e                                          ; $4057: $43
	ld b, b                                          ; $4058: $40
	add hl, sp                                       ; $4059: $39
	ld b, h                                          ; $405a: $44
	ld c, h                                          ; $405b: $4c
	xor h                                            ; $405c: $ac
	ld [$ac9c], a                                    ; $405d: $ea $9c $ac
	ld h, a                                          ; $4060: $67

jr_093_4061:
	ld d, l                                          ; $4061: $55
	ld b, l                                          ; $4062: $45
	and b                                            ; $4063: $a0
	cpl                                              ; $4064: $2f
	ld b, e                                          ; $4065: $43
	ldh a, [rPCM12]                                  ; $4066: $f0 $76
	ldh a, [$d2]                                     ; $4068: $f0 $d2
	ldh a, [$3f]                                     ; $406a: $f0 $3f
	inc a                                            ; $406c: $3c
	ld [hl], h                                       ; $406d: $74
	xor b                                            ; $406e: $a8
	ldh a, [rBGP]                                    ; $406f: $f0 $47
	ldh a, [$2a]                                     ; $4071: $f0 $2a
	ld b, [hl]                                       ; $4073: $46
	ld c, [hl]                                       ; $4074: $4e
	inc a                                            ; $4075: $3c
	ld a, [hl-]                                      ; $4076: $3a
	ld [hl], h                                       ; $4077: $74
	and b                                            ; $4078: $a0
	cpl                                              ; $4079: $2f
	ld b, e                                          ; $407a: $43
	ld b, b                                          ; $407b: $40
	add hl, sp                                       ; $407c: $39
	ld b, h                                          ; $407d: $44
	ld c, h                                          ; $407e: $4c
	xor h                                            ; $407f: $ac
	ld [$349c], a                                    ; $4080: $ea $9c $34
	ld h, a                                          ; $4083: $67
	ld d, l                                          ; $4084: $55
	ld b, l                                          ; $4085: $45
	and b                                            ; $4086: $a0
	cpl                                              ; $4087: $2f
	ld b, e                                          ; $4088: $43
	ldh a, [rBGP]                                    ; $4089: $f0 $47
	ldh a, [$2a]                                     ; $408b: $f0 $2a
	ld b, [hl]                                       ; $408d: $46
	ld c, [hl]                                       ; $408e: $4e
	inc a                                            ; $408f: $3c
	ld a, [hl-]                                      ; $4090: $3a
	ld [hl], h                                       ; $4091: $74
	and b                                            ; $4092: $a0
	ld [$a8da], a                                    ; $4093: $ea $da $a8
	jr c, jr_093_40d0                                ; $4096: $38 $38

	xor $2b                                          ; $4098: $ee $2b
	ld b, h                                          ; $409a: $44
	dec sp                                           ; $409b: $3b
	dec a                                            ; $409c: $3d
	ld h, e                                          ; $409d: $63
	xor b                                            ; $409e: $a8
	ld a, [hl-]                                      ; $409f: $3a
	ld b, c                                          ; $40a0: $41
	ccf                                              ; $40a1: $3f
	add d                                            ; $40a2: $82
	dec sp                                           ; $40a3: $3b
	dec a                                            ; $40a4: $3d
	dec sp                                           ; $40a5: $3b
	ld e, l                                          ; $40a6: $5d
	ld c, b                                          ; $40a7: $48
	and c                                            ; $40a8: $a1
	cpl                                              ; $40a9: $2f
	ld b, e                                          ; $40aa: $43
	ld b, e                                          ; $40ab: $43
	ld c, c                                          ; $40ac: $49
	ld e, h                                          ; $40ad: $5c
	ld [hl], c                                       ; $40ae: $71
	ld e, h                                          ; $40af: $5c
	ldh a, [$eb]                                     ; $40b0: $f0 $eb
	and c                                            ; $40b2: $a1
	ld b, b                                          ; $40b3: $40
	add hl, sp                                       ; $40b4: $39
	ld b, b                                          ; $40b5: $40
	add hl, sp                                       ; $40b6: $39
	inc [hl]                                         ; $40b7: $34
	ld b, b                                          ; $40b8: $40
	ld c, l                                          ; $40b9: $4d
	xor b                                            ; $40ba: $a8
	ld b, [hl]                                       ; $40bb: $46
	ld c, l                                          ; $40bc: $4d
	ld l, e                                          ; $40bd: $6b
	ld b, d                                          ; $40be: $42
	ldh a, [$ed]                                     ; $40bf: $f0 $ed
	ld a, [hl-]                                      ; $40c1: $3a
	ld b, d                                          ; $40c2: $42
	and c                                            ; $40c3: $a1
	cpl                                              ; $40c4: $2f
	ld b, e                                          ; $40c5: $43
	ldh a, [$31]                                     ; $40c6: $f0 $31
	ld c, e                                          ; $40c8: $4b
	inc [hl]                                         ; $40c9: $34
	db $eb                                           ; $40ca: $eb
	ld l, a                                          ; $40cb: $6f
	inc de                                           ; $40cc: $13
	ld a, [hl-]                                      ; $40cd: $3a
	ld b, c                                          ; $40ce: $41
	ld b, h                                          ; $40cf: $44

jr_093_40d0:
	and b                                            ; $40d0: $a0
	db $d3                                           ; $40d1: $d3
	xor c                                            ; $40d2: $a9
	ldh a, [rOCPS]                                   ; $40d3: $f0 $6a
	ld d, a                                          ; $40d5: $57
	ld c, d                                          ; $40d6: $4a
	ldh a, [rTAC]                                    ; $40d7: $f0 $07
	inc a                                            ; $40d9: $3c
	ld d, b                                          ; $40da: $50
	ld a, [hl-]                                      ; $40db: $3a
	jr c, jr_093_4127                                ; $40dc: $38 $49

	ld [hl], a                                       ; $40de: $77
	dec sp                                           ; $40df: $3b
	dec a                                            ; $40e0: $3d
	and b                                            ; $40e1: $a0
	cpl                                              ; $40e2: $2f
	ld b, e                                          ; $40e3: $43
	pop af                                           ; $40e4: $f1
	db $fc                                           ; $40e5: $fc
	ldh a, [rOCPS]                                   ; $40e6: $f0 $6a
	inc [hl]                                         ; $40e8: $34
	ldh a, [rTAC]                                    ; $40e9: $f0 $07
	inc a                                            ; $40eb: $3c
	ld d, b                                          ; $40ec: $50
	ld a, [hl-]                                      ; $40ed: $3a
	jr c, jr_093_4135                                ; $40ee: $38 $45

	ld c, h                                          ; $40f0: $4c
	and b                                            ; $40f1: $a0
	ld [$ac9c], a                                    ; $40f2: $ea $9c $ac
	ldh a, [$b2]                                     ; $40f5: $f0 $b2
	ldh a, [rKEY1]                                   ; $40f7: $f0 $4d
	ld b, a                                          ; $40f9: $47
	ld a, b                                          ; $40fa: $78
	ccf                                              ; $40fb: $3f
	xor b                                            ; $40fc: $a8
	db $ec                                           ; $40fd: $ec
	ld [hl], $38                                     ; $40fe: $36 $38
	ccf                                              ; $4100: $3f
	rst SubAFromDE                                          ; $4101: $df
	ld h, e                                          ; $4102: $63
	and b                                            ; $4103: $a0
	cpl                                              ; $4104: $2f
	ld b, e                                          ; $4105: $43
	ld b, b                                          ; $4106: $40
	add hl, sp                                       ; $4107: $39
	ld b, h                                          ; $4108: $44
	ld c, h                                          ; $4109: $4c
	xor h                                            ; $410a: $ac
	ld [$679c], a                                    ; $410b: $ea $9c $67
	ld d, l                                          ; $410e: $55
	ld b, l                                          ; $410f: $45
	and b                                            ; $4110: $a0
	or h                                             ; $4111: $b4
	xor h                                            ; $4112: $ac
	ld [$a8c7], a                                    ; $4113: $ea $c7 $a8
	ldh a, [rPCM12]                                  ; $4116: $f0 $76
	ldh a, [$d2]                                     ; $4118: $f0 $d2
	ldh a, [$3f]                                     ; $411a: $f0 $3f
	ld h, d                                          ; $411c: $62
	ldh a, [$bd]                                     ; $411d: $f0 $bd
	jr c, jr_093_4160                                ; $411f: $38 $3f

	rst SubAFromDE                                          ; $4121: $df
	ld h, e                                          ; $4122: $63
	and b                                            ; $4123: $a0
	jp hl                                            ; $4124: $e9


	jr nz, @-$5e                                     ; $4125: $20 $a0

jr_093_4127:
	ld [$acee], a                                    ; $4127: $ea $ee $ac
	ldh a, [$5c]                                     ; $412a: $f0 $5c
	ld d, l                                          ; $412c: $55
	ld a, [hl-]                                      ; $412d: $3a
	jr c, jr_093_4171                                ; $412e: $38 $41

	ld b, h                                          ; $4130: $44
	ld e, l                                          ; $4131: $5d
	ld e, d                                          ; $4132: $5a

jr_093_4133:
	xor b                                            ; $4133: $a8
	ld b, [hl]                                       ; $4134: $46

jr_093_4135:
	ld c, l                                          ; $4135: $4d
	inc [hl]                                         ; $4136: $34
	ld l, l                                          ; $4137: $6d
	ldh a, [$65]                                     ; $4138: $f0 $65
	ld l, e                                          ; $413a: $6b
	ld b, d                                          ; $413b: $42
	ldh a, [$ed]                                     ; $413c: $f0 $ed
	and c                                            ; $413e: $a1
	ld b, [hl]                                       ; $413f: $46
	dec sp                                           ; $4140: $3b
	inc [hl]                                         ; $4141: $34
	ret nz                                           ; $4142: $c0

	xor b                                            ; $4143: $a8
	ldh a, [rOCPS]                                   ; $4144: $f0 $6a
	ld d, a                                          ; $4146: $57
	ld c, d                                          ; $4147: $4a
	inc [hl]                                         ; $4148: $34
	ldh a, [rTAC]                                    ; $4149: $f0 $07
	inc a                                            ; $414b: $3c
	ld d, b                                          ; $414c: $50
	ld a, [hl-]                                      ; $414d: $3a
	jr c, jr_093_419b                                ; $414e: $38 $4b

	sbc h                                            ; $4150: $9c
	ld b, l                                          ; $4151: $45
	ld c, h                                          ; $4152: $4c
	and b                                            ; $4153: $a0
	cpl                                              ; $4154: $2f
	ld b, e                                          ; $4155: $43
	db $ec                                           ; $4156: $ec
	pop hl                                           ; $4157: $e1
	ld c, e                                          ; $4158: $4b
	inc [hl]                                         ; $4159: $34
	ldh a, [$6d]                                     ; $415a: $f0 $6d
	ld e, c                                          ; $415c: $59
	ldh a, [$27]                                     ; $415d: $f0 $27
	inc de                                           ; $415f: $13

jr_093_4160:
	ld a, [hl-]                                      ; $4160: $3a
	ld b, c                                          ; $4161: $41
	ccf                                              ; $4162: $3f
	inc [hl]                                         ; $4163: $34
	ld b, [hl]                                       ; $4164: $46
	ld d, d                                          ; $4165: $52
	ld d, a                                          ; $4166: $57
	ld a, $3a                                        ; $4167: $3e $3a
	jr c, @+$51                                      ; $4169: $38 $4f

	ld b, c                                          ; $416b: $41
	ld c, h                                          ; $416c: $4c
	and b                                            ; $416d: $a0
	cpl                                              ; $416e: $2f
	ld b, e                                          ; $416f: $43
	adc d                                            ; $4170: $8a

jr_093_4171:
	ldh a, [$73]                                     ; $4171: $f0 $73
	adc a                                            ; $4173: $8f
	inc a                                            ; $4174: $3c
	xor l                                            ; $4175: $ad
	ld l, e                                          ; $4176: $6b
	ld b, d                                          ; $4177: $42
	ldh a, [$c1]                                     ; $4178: $f0 $c1
	ldh a, [$d5]                                     ; $417a: $f0 $d5
	ld h, d                                          ; $417c: $62
	ld a, $3f                                        ; $417d: $3e $3f
	ld c, [hl]                                       ; $417f: $4e
	ld b, c                                          ; $4180: $41
	ld b, h                                          ; $4181: $44
	ld e, a                                          ; $4182: $5f
	add hl, sp                                       ; $4183: $39
	ld c, b                                          ; $4184: $48
	and b                                            ; $4185: $a0
	ld d, d                                          ; $4186: $52
	inc [hl]                                         ; $4187: $34
	ldh a, [$34]                                     ; $4188: $f0 $34
	ld b, a                                          ; $418a: $47
	db $ec                                           ; $418b: $ec
	ld [$b4ad], sp                                   ; $418c: $08 $ad $b4
	xor h                                            ; $418f: $ac
	jp hl                                            ; $4190: $e9


	jr nz, jr_093_4133                               ; $4191: $20 $a0

	ld [$a897], a                                    ; $4193: $ea $97 $a8
	ldh a, [$57]                                     ; $4196: $f0 $57
	pop af                                           ; $4198: $f1
	ld e, $50                                        ; $4199: $1e $50

jr_093_419b:
	ld a, $3c                                        ; $419b: $3e $3c
	dec sp                                           ; $419d: $3b
	dec a                                            ; $419e: $3d
	ld h, e                                          ; $419f: $63
	xor b                                            ; $41a0: $a8
	db $ed                                           ; $41a1: $ed
	ld h, l                                          ; $41a2: $65
	db $eb                                           ; $41a3: $eb
	ld d, [hl]                                       ; $41a4: $56
	and b                                            ; $41a5: $a0
	cpl                                              ; $41a6: $2f
	ld b, e                                          ; $41a7: $43
	ld b, b                                          ; $41a8: $40
	ld b, c                                          ; $41a9: $41
	ld a, [hl-]                                      ; $41aa: $3a
	ld b, a                                          ; $41ab: $47
	db $ec                                           ; $41ac: $ec
	cp c                                             ; $41ad: $b9
	xor c                                            ; $41ae: $a9
	add sp, -$7e                                     ; $41af: $e8 $82
	and b                                            ; $41b1: $a0
	ld [$ac97], a                                    ; $41b2: $ea $97 $ac
	ld d, c                                          ; $41b5: $51
	ld [hl], b                                       ; $41b6: $70
	ld d, l                                          ; $41b7: $55
	ld [$a8e6], a                                    ; $41b8: $ea $e6 $a8
	db $ed                                           ; $41bb: $ed
	ld h, b                                          ; $41bc: $60
	ld b, d                                          ; $41bd: $42
	xor $2b                                          ; $41be: $ee $2b
	ld c, h                                          ; $41c0: $4c
	and b                                            ; $41c1: $a0
	cpl                                              ; $41c2: $2f
	ld b, e                                          ; $41c3: $43
	ld b, [hl]                                       ; $41c4: $46
	ld d, a                                          ; $41c5: $57
	ld d, e                                          ; $41c6: $53
	ld c, c                                          ; $41c7: $49
	add hl, sp                                       ; $41c8: $39
	xor b                                            ; $41c9: $a8
	ld b, b                                          ; $41ca: $40
	ld b, c                                          ; $41cb: $41
	ld a, [hl-]                                      ; $41cc: $3a
	ld b, a                                          ; $41cd: $47
	ldh a, [$66]                                     ; $41ce: $f0 $66
	ld b, c                                          ; $41d0: $41
	ld c, d                                          ; $41d1: $4a
	ld c, a                                          ; $41d2: $4f
	ld d, b                                          ; $41d3: $50
	ld e, [hl]                                       ; $41d4: $5e
	ld c, [hl]                                       ; $41d5: $4e
	ld c, c                                          ; $41d6: $49
	xor h                                            ; $41d7: $ac
	ldh a, [$29]                                     ; $41d8: $f0 $29
	ld a, $38                                        ; $41da: $3e $38
	ld b, l                                          ; $41dc: $45
	and b                                            ; $41dd: $a0
	db $ec                                           ; $41de: $ec
	push bc                                          ; $41df: $c5
	xor h                                            ; $41e0: $ac
	adc d                                            ; $41e1: $8a
	ldh a, [$73]                                     ; $41e2: $f0 $73
	adc a                                            ; $41e4: $8f
	ld [$a0c5], a                                    ; $41e5: $ea $c5 $a0
	or h                                             ; $41e8: $b4
	xor h                                            ; $41e9: $ac
	ld [$a0c7], a                                    ; $41ea: $ea $c7 $a0
	db $eb                                           ; $41ed: $eb
	sbc d                                            ; $41ee: $9a
	xor b                                            ; $41ef: $a8
	ld d, c                                          ; $41f0: $51
	ld [hl], b                                       ; $41f1: $70
	ld d, l                                          ; $41f2: $55
	ldh a, [$57]                                     ; $41f3: $f0 $57
	ldh a, [$ae]                                     ; $41f5: $f0 $ae
	ld a, [hl-]                                      ; $41f7: $3a
	xor $2b                                          ; $41f8: $ee $2b
	ld b, h                                          ; $41fa: $44
	dec sp                                           ; $41fb: $3b
	dec a                                            ; $41fc: $3d
	ld h, e                                          ; $41fd: $63
	and b                                            ; $41fe: $a0
	cpl                                              ; $41ff: $2f
	ld b, e                                          ; $4200: $43
	adc b                                            ; $4201: $88
	sub c                                            ; $4202: $91
	ld [hl], $ec                                     ; $4203: $36 $ec
	cp c                                             ; $4205: $b9
	xor h                                            ; $4206: $ac
	add sp, -$7e                                     ; $4207: $e8 $82
	and b                                            ; $4209: $a0
	ld h, h                                          ; $420a: $64
	inc a                                            ; $420b: $3c
	ld a, $3a                                        ; $420c: $3e $3a
	ldh a, [$ed]                                     ; $420e: $f0 $ed
	ld c, h                                          ; $4210: $4c
	xor b                                            ; $4211: $a8
	add a                                            ; $4212: $87
	pop af                                           ; $4213: $f1
	dec l                                            ; $4214: $2d
	ld c, d                                          ; $4215: $4a
	ldh a, [c]                                       ; $4216: $f2
	ld bc, $9438                                     ; $4217: $01 $38 $94
	ld a, $d3                                        ; $421a: $3e $d3
	ld h, d                                          ; $421c: $62
	inc de                                           ; $421d: $13
	ei                                               ; $421e: $fb
	ld a, b                                          ; $421f: $78
	ld e, [hl]                                       ; $4220: $5e
	ld h, c                                          ; $4221: $61

jr_093_4222:
	ld d, [hl]                                       ; $4222: $56
	dec sp                                           ; $4223: $3b
	dec a                                            ; $4224: $3d
	ld h, e                                          ; $4225: $63
	ld b, l                                          ; $4226: $45
	and b                                            ; $4227: $a0
	cpl                                              ; $4228: $2f
	ld b, e                                          ; $4229: $43
	db $dd                                           ; $422a: $dd
	ld c, c                                          ; $422b: $49
	ld d, a                                          ; $422c: $57
	ld b, [hl]                                       ; $422d: $46
	ld e, [hl]                                       ; $422e: $5e
	sbc h                                            ; $422f: $9c
	xor h                                            ; $4230: $ac
	ldh a, [c]                                       ; $4231: $f2
	ld bc, $4b38                                     ; $4232: $01 $38 $4b
	pop af                                           ; $4235: $f1
	inc b                                            ; $4236: $04
	ld c, l                                          ; $4237: $4d
	dec a                                            ; $4238: $3d
	ld l, h                                          ; $4239: $6c
	dec a                                            ; $423a: $3d
	jr c, @+$46                                      ; $423b: $38 $44

	ld a, [hl-]                                      ; $423d: $3a
	and b                                            ; $423e: $a0
	ld b, [hl]                                       ; $423f: $46
	ld c, e                                          ; $4240: $4b
	ld c, e                                          ; $4241: $4b
	ld c, e                                          ; $4242: $4b
	inc [hl]                                         ; $4243: $34
	ld h, h                                          ; $4244: $64
	inc a                                            ; $4245: $3c
	ld a, $38                                        ; $4246: $3e $38
	dec [hl]                                         ; $4248: $35
	inc hl                                           ; $4249: $23
	inc de                                           ; $424a: $13
	db $ec                                           ; $424b: $ec
	push bc                                          ; $424c: $c5
	inc [hl]                                         ; $424d: $34
	adc d                                            ; $424e: $8a
	ldh a, [$73]                                     ; $424f: $f0 $73
	adc a                                            ; $4251: $8f
	ld [$a0c5], a                                    ; $4252: $ea $c5 $a0
	ld c, h                                          ; $4255: $4c
	add l                                            ; $4256: $85

Jump_093_4257:
	xor h                                            ; $4257: $ac
	db $ed                                           ; $4258: $ed
	ld d, a                                          ; $4259: $57
	pop af                                           ; $425a: $f1
	adc a                                            ; $425b: $8f
	ld a, $38                                        ; $425c: $3e $38
	ld b, c                                          ; $425e: $41
	ld c, d                                          ; $425f: $4a
	ld a, $66                                        ; $4260: $3e $66
	add hl, sp                                       ; $4262: $39
	and c                                            ; $4263: $a1
	cpl                                              ; $4264: $2f
	ld b, e                                          ; $4265: $43
	ld b, b                                          ; $4266: $40
	add hl, sp                                       ; $4267: $39
	ld b, h                                          ; $4268: $44
	ld c, h                                          ; $4269: $4c
	xor h                                            ; $426a: $ac
	add sp, -$43                                     ; $426b: $e8 $bd
	ld b, [hl]                                       ; $426d: $46
	ld c, [hl]                                       ; $426e: $4e
	ld a, $48                                        ; $426f: $3e $48
	and b                                            ; $4271: $a0
	ld b, b                                          ; $4272: $40
	add hl, sp                                       ; $4273: $39
	inc [hl]                                         ; $4274: $34
	ld b, b                                          ; $4275: $40
	ld c, l                                          ; $4276: $4d
	ld a, [hl-]                                      ; $4277: $3a
	ld d, b                                          ; $4278: $50
	jr c, jr_093_42b3                                ; $4279: $38 $38

	ld b, d                                          ; $427b: $42
	xor b                                            ; $427c: $a8
	or h                                             ; $427d: $b4
	inc [hl]                                         ; $427e: $34
	jp hl                                            ; $427f: $e9


	jr nz, jr_093_4222                               ; $4280: $20 $a0

	cpl                                              ; $4282: $2f
	ld b, e                                          ; $4283: $43
	pop af                                           ; $4284: $f1
	adc a                                            ; $4285: $8f
	ld a, $55                                        ; $4286: $3e $55
	ld a, [hl-]                                      ; $4288: $3a
	inc a                                            ; $4289: $3c
	dec sp                                           ; $428a: $3b
	dec a                                            ; $428b: $3d
	ld d, b                                          ; $428c: $50
	xor h                                            ; $428d: $ac
	ld l, e                                          ; $428e: $6b
	ld b, h                                          ; $428f: $44
	dec sp                                           ; $4290: $3b
	dec a                                            ; $4291: $3d
	ld b, c                                          ; $4292: $41
	ld b, h                                          ; $4293: $44
	ld e, a                                          ; $4294: $5f
	add hl, sp                                       ; $4295: $39
	and b                                            ; $4296: $a0
	ld b, [hl]                                       ; $4297: $46
	ld c, e                                          ; $4298: $4b
	ld c, e                                          ; $4299: $4b
	ld c, e                                          ; $429a: $4b
	inc [hl]                                         ; $429b: $34
	ld h, h                                          ; $429c: $64
	inc a                                            ; $429d: $3c
	ld a, $38                                        ; $429e: $3e $38
	dec [hl]                                         ; $42a0: $35
	inc hl                                           ; $42a1: $23
	inc de                                           ; $42a2: $13
	db $ec                                           ; $42a3: $ec
	push bc                                          ; $42a4: $c5
	xor h                                            ; $42a5: $ac
	adc d                                            ; $42a6: $8a
	ldh a, [$73]                                     ; $42a7: $f0 $73
	adc a                                            ; $42a9: $8f
	ld [$a0c5], a                                    ; $42aa: $ea $c5 $a0
	ld c, c                                          ; $42ad: $49
	ld d, h                                          ; $42ae: $54
	ld e, a                                          ; $42af: $5f
	ld c, d                                          ; $42b0: $4a
	xor h                                            ; $42b1: $ac
	db $ed                                           ; $42b2: $ed

jr_093_42b3:
	ld d, a                                          ; $42b3: $57
	pop af                                           ; $42b4: $f1
	adc a                                            ; $42b5: $8f
	ld a, $38                                        ; $42b6: $3e $38
	ld b, c                                          ; $42b8: $41
	ld c, d                                          ; $42b9: $4a
	ld a, $66                                        ; $42ba: $3e $66
	add hl, sp                                       ; $42bc: $39
	and c                                            ; $42bd: $a1
	cpl                                              ; $42be: $2f
	ld b, e                                          ; $42bf: $43
	ld [$ac9c], a                                    ; $42c0: $ea $9c $ac
	ld l, e                                          ; $42c3: $6b
	ld b, h                                          ; $42c4: $44
	dec sp                                           ; $42c5: $3b
	dec a                                            ; $42c6: $3d
	ld b, c                                          ; $42c7: $41
	ld b, h                                          ; $42c8: $44
	ld e, a                                          ; $42c9: $5f
	add hl, sp                                       ; $42ca: $39
	and b                                            ; $42cb: $a0
	ld h, h                                          ; $42cc: $64
	inc a                                            ; $42cd: $3c
	ld a, $3a                                        ; $42ce: $3e $3a
	ldh a, [$ed]                                     ; $42d0: $f0 $ed
	ld c, h                                          ; $42d2: $4c
	xor b                                            ; $42d3: $a8
	ld [hl], a                                       ; $42d4: $77
	jr c, jr_093_4312                                ; $42d5: $38 $3b

	ld e, h                                          ; $42d7: $5c
	ld d, a                                          ; $42d8: $57
	inc [hl]                                         ; $42d9: $34
	add a                                            ; $42da: $87
	pop af                                           ; $42db: $f1
	dec l                                            ; $42dc: $2d
	ld c, d                                          ; $42dd: $4a
	inc de                                           ; $42de: $13
	ldh a, [c]                                       ; $42df: $f2
	ld bc, $613b                                     ; $42e0: $01 $3b $61
	ld d, [hl]                                       ; $42e3: $56
	dec sp                                           ; $42e4: $3b
	dec a                                            ; $42e5: $3d
	ld h, e                                          ; $42e6: $63
	and b                                            ; $42e7: $a0
	cpl                                              ; $42e8: $2f
	ld b, e                                          ; $42e9: $43
	ld b, l                                          ; $42ea: $45
	inc a                                            ; $42eb: $3c
	dec sp                                           ; $42ec: $3b
	dec a                                            ; $42ed: $3d
	inc [hl]                                         ; $42ee: $34
	ldh a, [rAUD4ENV]                                ; $42ef: $f0 $21
	ldh a, [rAUD4GO]                                 ; $42f1: $f0 $23
	ld d, l                                          ; $42f3: $55
	ccf                                              ; $42f4: $3f
	xor b                                            ; $42f5: $a8
	ld [hl-], a                                      ; $42f6: $32
	xor $2b                                          ; $42f7: $ee $2b
	ldh a, [rAUD2HIGH]                               ; $42f9: $f0 $19
	ld b, a                                          ; $42fb: $47
	ldh a, [$0c]                                     ; $42fc: $f0 $0c
	ld d, h                                          ; $42fe: $54
	ld e, [hl]                                       ; $42ff: $5e
	ccf                                              ; $4300: $3f
	ld e, h                                          ; $4301: $5c
	dec a                                            ; $4302: $3d
	inc de                                           ; $4303: $13

jr_093_4304:
	ldh a, [c]                                       ; $4304: $f2
	ld bc, $f138                                     ; $4305: $01 $38 $f1
	dec l                                            ; $4308: $2d
	ld c, e                                          ; $4309: $4b
	inc [hl]                                         ; $430a: $34

jr_093_430b:
	db $ec                                           ; $430b: $ec
	pop hl                                           ; $430c: $e1
	inc a                                            ; $430d: $3c
	and e                                            ; $430e: $a3
	ld b, [hl]                                       ; $430f: $46
	ld e, c                                          ; $4310: $59
	inc [hl]                                         ; $4311: $34

jr_093_4312:
	ld h, h                                          ; $4312: $64
	inc a                                            ; $4313: $3c
	ld a, $38                                        ; $4314: $3e $38
	ld c, b                                          ; $4316: $48
	dec [hl]                                         ; $4317: $35
	inc hl                                           ; $4318: $23
	inc de                                           ; $4319: $13
	db $ec                                           ; $431a: $ec
	push bc                                          ; $431b: $c5
	inc [hl]                                         ; $431c: $34
	adc d                                            ; $431d: $8a
	ldh a, [$73]                                     ; $431e: $f0 $73
	adc a                                            ; $4320: $8f
	ld [$a0c5], a                                    ; $4321: $ea $c5 $a0
	ld c, h                                          ; $4324: $4c
	add l                                            ; $4325: $85
	inc [hl]                                         ; $4326: $34
	ld d, h                                          ; $4327: $54
	ld c, l                                          ; $4328: $4d
	inc a                                            ; $4329: $3c
	ld d, b                                          ; $432a: $50
	ldh a, [$ea]                                     ; $432b: $f0 $ea
	and c                                            ; $432d: $a1
	ld c, c                                          ; $432e: $49
	ld d, h                                          ; $432f: $54
	ld e, a                                          ; $4330: $5f
	ld c, d                                          ; $4331: $4a
	xor h                                            ; $4332: $ac
	ld d, h                                          ; $4333: $54
	ld c, l                                          ; $4334: $4d
	inc a                                            ; $4335: $3c
	ld d, b                                          ; $4336: $50
	ldh a, [$ea]                                     ; $4337: $f0 $ea
	and c                                            ; $4339: $a1
	db $ed                                           ; $433a: $ed
	ld b, [hl]                                       ; $433b: $46
	xor h                                            ; $433c: $ac
	ld l, d                                          ; $433d: $6a
	ld b, d                                          ; $433e: $42
	xor $2b                                          ; $433f: $ee $2b
	pop af                                           ; $4341: $f1
	ld h, [hl]                                       ; $4342: $66
	jr c, jr_093_4384                                ; $4343: $38 $3f

	dec a                                            ; $4345: $3d

jr_093_4346:
	ld h, e                                          ; $4346: $63
	ld b, l                                          ; $4347: $45
	and b                                            ; $4348: $a0
	cp e                                             ; $4349: $bb
	ld h, e                                          ; $434a: $63
	ld b, l                                          ; $434b: $45
	xor b                                            ; $434c: $a8
	ldh a, [rAUD1LEN]                                ; $434d: $f0 $11
	pop af                                           ; $434f: $f1
	ld d, h                                          ; $4350: $54
	ld [hl], e                                       ; $4351: $73
	sub e                                            ; $4352: $93
	ldh a, [rAUD4LEN]                                ; $4353: $f0 $20
	ld h, l                                          ; $4355: $65
	ldh a, [$32]                                     ; $4356: $f0 $32
	ld l, h                                          ; $4358: $6c
	dec a                                            ; $4359: $3d
	jr c, jr_093_4304                                ; $435a: $38 $a8

	ld b, [hl]                                       ; $435c: $46
	ld c, e                                          ; $435d: $4b
	ld c, e                                          ; $435e: $4b

jr_093_435f:
	ld c, e                                          ; $435f: $4b
	ld c, e                                          ; $4360: $4b
	and b                                            ; $4361: $a0
	cpl                                              ; $4362: $2f
	ld b, e                                          ; $4363: $43
	ld l, e                                          ; $4364: $6b
	ld [hl], $f1                                     ; $4365: $36 $f1
	ld d, $47                                        ; $4367: $16 $47
	inc de                                           ; $4369: $13
	ldh a, [c]                                       ; $436a: $f2
	ld bc, $9438                                     ; $436b: $01 $38 $94
	ld a, $3d                                        ; $436e: $3e $3d
	ld d, a                                          ; $4370: $57
	ld a, $3f                                        ; $4371: $3e $3f
	and b                                            ; $4373: $a0
	ld [hl], a                                       ; $4374: $77
	jr c, jr_093_430b                                ; $4375: $38 $94

	ld a, $f2                                        ; $4377: $3e $f2
	ld bc, $4538                                     ; $4379: $01 $38 $45
	xor b                                            ; $437c: $a8
	ld b, [hl]                                       ; $437d: $46
	ld c, e                                          ; $437e: $4b
	ld c, e                                          ; $437f: $4b
	ld c, e                                          ; $4380: $4b
	ld c, e                                          ; $4381: $4b
	ld c, e                                          ; $4382: $4b

jr_093_4383:
	and b                                            ; $4383: $a0

jr_093_4384:
	cpl                                              ; $4384: $2f
	ld b, e                                          ; $4385: $43
	pop af                                           ; $4386: $f1
	inc b                                            ; $4387: $04
	ld d, a                                          ; $4388: $57
	ldh a, [rTMA]                                    ; $4389: $f0 $06
	ld e, [hl]                                       ; $438b: $5e
	sbc h                                            ; $438c: $9c
	xor h                                            ; $438d: $ac
	add hl, sp                                       ; $438e: $39
	ld e, l                                          ; $438f: $5d
	dec a                                            ; $4390: $3d
	db $eb                                           ; $4391: $eb
	dec [hl]                                         ; $4392: $35
	db $ec                                           ; $4393: $ec
	cp c                                             ; $4394: $b9
	and b                                            ; $4395: $a0
	ld d, d                                          ; $4396: $52
	inc [hl]                                         ; $4397: $34
	ldh a, [$34]                                     ; $4398: $f0 $34
	ld b, a                                          ; $439a: $47
	db $ec                                           ; $439b: $ec
	ld [$40ad], sp                                   ; $439c: $08 $ad $40
	ld c, l                                          ; $439f: $4d
	ld e, e                                          ; $43a0: $5b
	ld d, [hl]                                       ; $43a1: $56
	inc [hl]                                         ; $43a2: $34
	jp hl                                            ; $43a3: $e9


	jr nz, jr_093_4346                               ; $43a4: $20 $a0

	cpl                                              ; $43a6: $2f
	ld b, e                                          ; $43a7: $43
	db $ec                                           ; $43a8: $ec
	ld b, a                                          ; $43a9: $47
	db $ec                                           ; $43aa: $ec
	ld hl, $ec13                                     ; $43ab: $21 $13 $ec
	pop hl                                           ; $43ae: $e1
	ld d, e                                          ; $43af: $53
	jr c, jr_093_43ef                                ; $43b0: $38 $3d

	ld a, [hl-]                                      ; $43b2: $3a
	xor b                                            ; $43b3: $a8
	ld [hl], d                                       ; $43b4: $72
	ld b, a                                          ; $43b5: $47
	ld a, b                                          ; $43b6: $78
	ccf                                              ; $43b7: $3f
	ld d, l                                          ; $43b8: $55
	ld c, l                                          ; $43b9: $4d
	dec a                                            ; $43ba: $3d
	ld l, h                                          ; $43bb: $6c
	dec a                                            ; $43bc: $3d
	jr c, jr_093_435f                                ; $43bd: $38 $a0

	ldh a, [rAUD4LEN]                                ; $43bf: $f0 $20
	ld [hl], e                                       ; $43c1: $73
	ldh a, [$32]                                     ; $43c2: $f0 $32
	inc [hl]                                         ; $43c4: $34
	db $eb                                           ; $43c5: $eb
	adc $ad                                          ; $43c6: $ce $ad
	ld d, d                                          ; $43c8: $52
	sbc h                                            ; $43c9: $9c
	jr c, jr_093_4415                                ; $43ca: $38 $49

	ld e, h                                          ; $43cc: $5c
	ld b, a                                          ; $43cd: $47
	inc de                                           ; $43ce: $13
	ld a, b                                          ; $43cf: $78
	ld h, c                                          ; $43d0: $61
	ld d, [hl]                                       ; $43d1: $56
	dec sp                                           ; $43d2: $3b
	dec a                                            ; $43d3: $3d
	inc a                                            ; $43d4: $3c
	ld a, [hl-]                                      ; $43d5: $3a
	ld [hl], h                                       ; $43d6: $74
	ld c, b                                          ; $43d7: $48

jr_093_43d8:
	and b                                            ; $43d8: $a0
	cpl                                              ; $43d9: $2f
	ld b, e                                          ; $43da: $43
	ld b, [hl]                                       ; $43db: $46
	dec sp                                           ; $43dc: $3b
	inc [hl]                                         ; $43dd: $34
	db $ec                                           ; $43de: $ec
	pop hl                                           ; $43df: $e1
	xor b                                            ; $43e0: $a8
	ld [$a01f], a                                    ; $43e1: $ea $1f $a0
	ld b, [hl]                                       ; $43e4: $46
	dec sp                                           ; $43e5: $3b
	inc [hl]                                         ; $43e6: $34
	pop af                                           ; $43e7: $f1
	ld d, $f0                                        ; $43e8: $16 $f0
	ld d, $62                                        ; $43ea: $16 $62
	ld [hl], a                                       ; $43ec: $77
	jr c, jr_093_4383                                ; $43ed: $38 $94

jr_093_43ef:
	ld a, $13                                        ; $43ef: $3e $13
	dec a                                            ; $43f1: $3d
	ld h, e                                          ; $43f2: $63
	dec [hl]                                         ; $43f3: $35
	ld c, a                                          ; $43f4: $4f
	add hl, sp                                       ; $43f5: $39
	inc [hl]                                         ; $43f6: $34
	ld a, d                                          ; $43f7: $7a
	ld d, b                                          ; $43f8: $50
	ld a, [hl-]                                      ; $43f9: $3a
	ld d, l                                          ; $43fa: $55
	ld h, c                                          ; $43fb: $61
	ld d, [hl]                                       ; $43fc: $56
	and b                                            ; $43fd: $a0
	cpl                                              ; $43fe: $2f
	ld b, e                                          ; $43ff: $43
	ld l, e                                          ; $4400: $6b
	ld c, a                                          ; $4401: $4f
	inc [hl]                                         ; $4402: $34
	ldh a, [$d2]                                     ; $4403: $f0 $d2
	ld [hl], d                                       ; $4405: $72
	dec a                                            ; $4406: $3d
	ld c, c                                          ; $4407: $49
	dec a                                            ; $4408: $3d
	ld b, c                                          ; $4409: $41
	ld b, a                                          ; $440a: $47
	inc de                                           ; $440b: $13
	ld a, d                                          ; $440c: $7a
	ld d, b                                          ; $440d: $50
	ld a, [hl-]                                      ; $440e: $3a
	ld d, l                                          ; $440f: $55
	ccf                                              ; $4410: $3f
	ld c, a                                          ; $4411: $4f
	ld c, b                                          ; $4412: $48
	and b                                            ; $4413: $a0
	ld b, b                                          ; $4414: $40

jr_093_4415:
	ld c, l                                          ; $4415: $4d
	ld e, e                                          ; $4416: $5b
	ld d, [hl]                                       ; $4417: $56
	ld l, a                                          ; $4418: $6f
	xor h                                            ; $4419: $ac
	ld c, a                                          ; $441a: $4f
	add hl, sp                                       ; $441b: $39
	pop af                                           ; $441c: $f1
	ld l, a                                          ; $441d: $6f
	ld b, d                                          ; $441e: $42
	ldh a, [$28]                                     ; $441f: $f0 $28
	ld b, a                                          ; $4421: $47
	db $eb                                           ; $4422: $eb
	adc e                                            ; $4423: $8b
	ld c, b                                          ; $4424: $48
	and b                                            ; $4425: $a0
	ld d, h                                          ; $4426: $54
	ld c, l                                          ; $4427: $4d
	ld c, d                                          ; $4428: $4a
	ld c, a                                          ; $4429: $4f
	xor h                                            ; $442a: $ac
	ld l, a                                          ; $442b: $6f
	inc [hl]                                         ; $442c: $34
	ldh a, [$80]                                     ; $442d: $f0 $80
	ldh a, [$c5]                                     ; $442f: $f0 $c5
	pop af                                           ; $4431: $f1
	adc a                                            ; $4432: $8f
	ld a, $38                                        ; $4433: $3e $38
	ld b, d                                          ; $4435: $42
	ld b, l                                          ; $4436: $45
	and b                                            ; $4437: $a0
	cpl                                              ; $4438: $2f
	ld b, e                                          ; $4439: $43
	db $d3                                           ; $443a: $d3
	xor c                                            ; $443b: $a9
	ld b, b                                          ; $443c: $40
	ld c, l                                          ; $443d: $4d
	ld a, [hl-]                                      ; $443e: $3a
	ld d, b                                          ; $443f: $50
	inc [hl]                                         ; $4440: $34
	ld [$a069], a                                    ; $4441: $ea $69 $a0
	cpl                                              ; $4444: $2f
	ld b, e                                          ; $4445: $43
	ld l, e                                          ; $4446: $6b
	ld d, e                                          ; $4447: $53
	ld b, b                                          ; $4448: $40
	ld b, c                                          ; $4449: $41
	ld a, [hl-]                                      ; $444a: $3a
	ld b, a                                          ; $444b: $47
	inc de                                           ; $444c: $13
	pop af                                           ; $444d: $f1
	adc a                                            ; $444e: $8f
	ld a, $38                                        ; $444f: $3e $38
	ld b, c                                          ; $4451: $41
	ld b, h                                          ; $4452: $44
	ld e, a                                          ; $4453: $5f
	add hl, sp                                       ; $4454: $39
	and c                                            ; $4455: $a1
	jr c, jr_093_43d8                                ; $4456: $38 $80

	ld d, d                                          ; $4458: $52
	ld c, d                                          ; $4459: $4a
	ld c, a                                          ; $445a: $4f
	inc [hl]                                         ; $445b: $34
	ld d, h                                          ; $445c: $54
	ld d, h                                          ; $445d: $54
	ld b, a                                          ; $445e: $47
	inc de                                           ; $445f: $13
	jr c, jr_093_449f                                ; $4460: $38 $3d

	dec sp                                           ; $4462: $3b
	ccf                                              ; $4463: $3f
	db $eb                                           ; $4464: $eb
	inc [hl]                                         ; $4465: $34
	ld c, d                                          ; $4466: $4a
	ld a, $66                                        ; $4467: $3e $66
	add hl, sp                                       ; $4469: $39
	xor b                                            ; $446a: $a8
	ld l, a                                          ; $446b: $6f
	inc [hl]                                         ; $446c: $34
	ldh a, [$80]                                     ; $446d: $f0 $80
	ldh a, [$c5]                                     ; $446f: $f0 $c5
	pop af                                           ; $4471: $f1
	adc a                                            ; $4472: $8f
	ld a, $38                                        ; $4473: $3e $38
	ld b, d                                          ; $4475: $42
	ld b, l                                          ; $4476: $45
	and b                                            ; $4477: $a0
	cpl                                              ; $4478: $2f
	ld b, e                                          ; $4479: $43
	ld b, b                                          ; $447a: $40
	ld c, l                                          ; $447b: $4d
	ld c, e                                          ; $447c: $4b
	inc [hl]                                         ; $447d: $34
	ret nz                                           ; $447e: $c0

	inc de                                           ; $447f: $13
	ld e, l                                          ; $4480: $5d
	ld e, d                                          ; $4481: $5a
	ld c, h                                          ; $4482: $4c
	ld c, b                                          ; $4483: $48
	and b                                            ; $4484: $a0
	pop af                                           ; $4485: $f1
	ld l, a                                          ; $4486: $6f
	ld b, d                                          ; $4487: $42
	adc a                                            ; $4488: $8f
	ld b, d                                          ; $4489: $42
	inc [hl]                                         ; $448a: $34
	ldh a, [$c1]                                     ; $448b: $f0 $c1
	ldh a, [$d5]                                     ; $448d: $f0 $d5
	ld c, a                                          ; $448f: $4f
	inc de                                           ; $4490: $13
	ld [hl], d                                       ; $4491: $72
	dec a                                            ; $4492: $3d
	jr c, jr_093_44d7                                ; $4493: $38 $42

	ld b, l                                          ; $4495: $45
	and b                                            ; $4496: $a0
	cpl                                              ; $4497: $2f
	ld b, e                                          ; $4498: $43
	ld b, b                                          ; $4499: $40
	add hl, sp                                       ; $449a: $39
	ld c, b                                          ; $449b: $48
	dec [hl]                                         ; $449c: $35
	halt                                             ; $449d: $76
	ld h, d                                          ; $449e: $62

jr_093_449f:
	di                                               ; $449f: $f3
	db $e3                                           ; $44a0: $e3
	jr c, jr_093_44e2                                ; $44a1: $38 $3f

	inc de                                           ; $44a3: $13
	ld h, a                                          ; $44a4: $67
	dec sp                                           ; $44a5: $3b
	ccf                                              ; $44a6: $3f
	ld a, $52                                        ; $44a7: $3e $52
	xor $1f                                          ; $44a9: $ee $1f
	ld b, h                                          ; $44ab: $44
	ld c, h                                          ; $44ac: $4c
	and b                                            ; $44ad: $a0
	ld b, b                                          ; $44ae: $40
	add hl, sp                                       ; $44af: $39
	inc [hl]                                         ; $44b0: $34
	ld h, a                                          ; $44b1: $67
	dec sp                                           ; $44b2: $3b
	ccf                                              ; $44b3: $3f
	ld a, $52                                        ; $44b4: $3e $52
	add hl, sp                                       ; $44b6: $39
	ld b, d                                          ; $44b7: $42
	ld b, l                                          ; $44b8: $45
	xor b                                            ; $44b9: $a8
	pop af                                           ; $44ba: $f1
	jr nc, jr_093_452e                               ; $44bb: $30 $71

	ld a, [hl-]                                      ; $44bd: $3a
	jr c, jr_093_450a                                ; $44be: $38 $4a

	xor l                                            ; $44c0: $ad
	ld b, b                                          ; $44c1: $40
	ld c, l                                          ; $44c2: $4d
	ld e, e                                          ; $44c3: $5b
	ld d, [hl]                                       ; $44c4: $56
	inc [hl]                                         ; $44c5: $34
	ld e, b                                          ; $44c6: $58
	ld b, l                                          ; $44c7: $45
	ld a, [hl-]                                      ; $44c8: $3a
	ld d, b                                          ; $44c9: $50
	and b                                            ; $44ca: $a0
	cpl                                              ; $44cb: $2f
	ld b, e                                          ; $44cc: $43

jr_093_44cd:
	ld b, b                                          ; $44cd: $40
	add hl, sp                                       ; $44ce: $39
	ldh a, [$e0]                                     ; $44cf: $f0 $e0
	ld a, $3f                                        ; $44d1: $3e $3f
	ld d, l                                          ; $44d3: $55
	ld c, [hl]                                       ; $44d4: $4e
	ld c, c                                          ; $44d5: $49
	ld c, e                                          ; $44d6: $4b

jr_093_44d7:
	inc de                                           ; $44d7: $13
	ld [hl], a                                       ; $44d8: $77
	ld h, e                                          ; $44d9: $63
	ld a, [hl-]                                      ; $44da: $3a
	inc a                                            ; $44db: $3c
	dec sp                                           ; $44dc: $3b
	dec a                                            ; $44dd: $3d
	adc l                                            ; $44de: $8d
	xor l                                            ; $44df: $ad
	halt                                             ; $44e0: $76
	ld c, a                                          ; $44e1: $4f

jr_093_44e2:
	ld d, d                                          ; $44e2: $52
	ld b, h                                          ; $44e3: $44
	ld d, d                                          ; $44e4: $52
	ld b, h                                          ; $44e5: $44
	ld b, h                                          ; $44e6: $44
	ld a, [hl-]                                      ; $44e7: $3a
	and b                                            ; $44e8: $a0
	cpl                                              ; $44e9: $2f
	ld b, e                                          ; $44ea: $43
	jr c, jr_093_455b                                ; $44eb: $38 $6e

	inc [hl]                                         ; $44ed: $34
	db $ed                                           ; $44ee: $ed
	ld d, a                                          ; $44ef: $57
	pop af                                           ; $44f0: $f1
	adc a                                            ; $44f1: $8f
	ld a, $55                                        ; $44f2: $3e $55
	ccf                                              ; $44f4: $3f
	xor h                                            ; $44f5: $ac
	pop af                                           ; $44f6: $f1
	ld l, a                                          ; $44f7: $6f
	ld b, d                                          ; $44f8: $42
	adc a                                            ; $44f9: $8f
	ld b, d                                          ; $44fa: $42
	ld [hl], d                                       ; $44fb: $72
	adc c                                            ; $44fc: $89
	ld c, a                                          ; $44fd: $4f
	sub h                                            ; $44fe: $94
	ld a, b                                          ; $44ff: $78
	ld a, [hl-]                                      ; $4500: $3a
	jr c, jr_093_4548                                ; $4501: $38 $45

	and b                                            ; $4503: $a0
	ld a, [hl-]                                      ; $4504: $3a
	ld b, c                                          ; $4505: $41
	ld b, h                                          ; $4506: $44
	inc [hl]                                         ; $4507: $34
	db $d3                                           ; $4508: $d3
	xor b                                            ; $4509: $a8

jr_093_450a:
	adc d                                            ; $450a: $8a
	ldh a, [$73]                                     ; $450b: $f0 $73
	adc a                                            ; $450d: $8f
	ld b, a                                          ; $450e: $47
	ld a, b                                          ; $450f: $78
	ld c, l                                          ; $4510: $4d
	ld a, e                                          ; $4511: $7b
	ld d, c                                          ; $4512: $51
	ld [hl], b                                       ; $4513: $70
	inc a                                            ; $4514: $3c
	dec sp                                           ; $4515: $3b
	dec a                                            ; $4516: $3d
	ld b, d                                          ; $4517: $42
	ld b, a                                          ; $4518: $47
	and b                                            ; $4519: $a0
	cpl                                              ; $451a: $2f
	ld b, e                                          ; $451b: $43
	ld d, c                                          ; $451c: $51
	ld [hl], b                                       ; $451d: $70
	jr c, jr_093_455b                                ; $451e: $38 $3b

	ccf                                              ; $4520: $3f
	inc [hl]                                         ; $4521: $34
	ld l, e                                          ; $4522: $6b
	ld d, e                                          ; $4523: $53
	and c                                            ; $4524: $a1
	ld [$a84e], a                                    ; $4525: $ea $4e $a8
	or h                                             ; $4528: $b4
	inc [hl]                                         ; $4529: $34
	jp hl                                            ; $452a: $e9


	jr nz, jr_093_44cd                               ; $452b: $20 $a0

	cpl                                              ; $452d: $2f

jr_093_452e:
	ld b, e                                          ; $452e: $43
	ld l, e                                          ; $452f: $6b
	ld d, e                                          ; $4530: $53
	ld d, c                                          ; $4531: $51
	ld [hl], b                                       ; $4532: $70
	jr c, jr_093_4576                                ; $4533: $38 $41

	ld b, h                                          ; $4535: $44
	ld e, a                                          ; $4536: $5f
	add hl, sp                                       ; $4537: $39
	xor b                                            ; $4538: $a8
	ld [hl], d                                       ; $4539: $72
	ld b, a                                          ; $453a: $47
	ld h, a                                          ; $453b: $67
	dec sp                                           ; $453c: $3b
	ccf                                              ; $453d: $3f
	ld l, h                                          ; $453e: $6c
	dec a                                            ; $453f: $3d
	jr c, jr_093_457c                                ; $4540: $38 $3a

	ld [hl], h                                       ; $4542: $74
	and b                                            ; $4543: $a0
	ld b, b                                          ; $4544: $40
	ld c, l                                          ; $4545: $4d
	ld e, e                                          ; $4546: $5b
	ld d, [hl]                                       ; $4547: $56

jr_093_4548:
	xor h                                            ; $4548: $ac
	adc d                                            ; $4549: $8a
	ldh a, [$73]                                     ; $454a: $f0 $73
	adc a                                            ; $454c: $8f
	ld b, a                                          ; $454d: $47
	inc [hl]                                         ; $454e: $34
	ldh a, [$e8]                                     ; $454f: $f0 $e8
	ld c, [hl]                                       ; $4551: $4e
	ld h, e                                          ; $4552: $63
	ld c, h                                          ; $4553: $4c
	and b                                            ; $4554: $a0
	cpl                                              ; $4555: $2f
	ld b, e                                          ; $4556: $43
	ld e, [hl]                                       ; $4557: $5e
	dec sp                                           ; $4558: $3b
	inc [hl]                                         ; $4559: $34
	db $ec                                           ; $455a: $ec

jr_093_455b:
	pop hl                                           ; $455b: $e1
	dec sp                                           ; $455c: $3b
	ccf                                              ; $455d: $3f
	xor h                                            ; $455e: $ac
	adc d                                            ; $455f: $8a
	ldh a, [$73]                                     ; $4560: $f0 $73
	adc a                                            ; $4562: $8f
	ld b, h                                          ; $4563: $44
	dec sp                                           ; $4564: $3b
	dec a                                            ; $4565: $3d
	ld e, l                                          ; $4566: $5d
	and c                                            ; $4567: $a1
	db $ec                                           ; $4568: $ec
	db $f4                                           ; $4569: $f4
	xor b                                            ; $456a: $a8
	ld d, d                                          ; $456b: $52
	ld e, b                                          ; $456c: $58
	inc a                                            ; $456d: $3c
	ld c, b                                          ; $456e: $48
	ld [$41b1], a                                    ; $456f: $ea $b1 $41
	ld e, e                                          ; $4572: $5b
	ld d, [hl]                                       ; $4573: $56
	and b                                            ; $4574: $a0
	db $ec                                           ; $4575: $ec

jr_093_4576:
	db $f4                                           ; $4576: $f4
	inc [hl]                                         ; $4577: $34
	ld d, d                                          ; $4578: $52
	ld e, b                                          ; $4579: $58
	inc a                                            ; $457a: $3c
	inc de                                           ; $457b: $13

jr_093_457c:
	ld [$41b1], a                                    ; $457c: $ea $b1 $41
	ld e, e                                          ; $457f: $5b
	ld d, [hl]                                       ; $4580: $56
	ld c, b                                          ; $4581: $48
	and b                                            ; $4582: $a0
	pop af                                           ; $4583: $f1
	ld hl, sp+$3e                                    ; $4584: $f8 $3e
	jr c, jr_093_45eb                                ; $4586: $38 $63

	ld c, h                                          ; $4588: $4c
	add l                                            ; $4589: $85
	xor b                                            ; $458a: $a8
	ld d, d                                          ; $458b: $52
	inc [hl]                                         ; $458c: $34
	db $ec                                           ; $458d: $ec
	ld [$2fa0], sp                                   ; $458e: $08 $a0 $2f
	ld b, e                                          ; $4591: $43
	ldh a, [$2d]                                     ; $4592: $f0 $2d
	dec sp                                           ; $4594: $3b
	ccf                                              ; $4595: $3f
	dec a                                            ; $4596: $3d
	ld b, l                                          ; $4597: $45
	xor b                                            ; $4598: $a8
	pop af                                           ; $4599: $f1
	ld a, [hl]                                       ; $459a: $7e
	db $ec                                           ; $459b: $ec
	ret c                                            ; $459c: $d8

	ld b, l                                          ; $459d: $45
	and b                                            ; $459e: $a0
	cpl                                              ; $459f: $2f
	ld b, e                                          ; $45a0: $43
	ld c, d                                          ; $45a1: $4a
	ld c, a                                          ; $45a2: $4f
	ld a, [hl-]                                      ; $45a3: $3a
	ld [hl], h                                       ; $45a4: $74
	inc [hl]                                         ; $45a5: $34
	ld d, h                                          ; $45a6: $54
	ld c, l                                          ; $45a7: $4d
	inc a                                            ; $45a8: $3c
	ld d, b                                          ; $45a9: $50
	inc de                                           ; $45aa: $13
	ld [$46f2], a                                    ; $45ab: $ea $f2 $46
	ld c, [hl]                                       ; $45ae: $4e
	ld a, $48                                        ; $45af: $3e $48
	and b                                            ; $45b1: $a0
	ld [$4a9c], a                                    ; $45b2: $ea $9c $4a
	inc de                                           ; $45b5: $13
	ret nc                                           ; $45b6: $d0

	xor b                                            ; $45b7: $a8
	or h                                             ; $45b8: $b4
	inc [hl]                                         ; $45b9: $34
	db $ec                                           ; $45ba: $ec
	and d                                            ; $45bb: $a2
	xor h                                            ; $45bc: $ac
	ld e, b                                          ; $45bd: $58
	ld b, l                                          ; $45be: $45
	ld a, [hl-]                                      ; $45bf: $3a
	ld d, b                                          ; $45c0: $50
	and b                                            ; $45c1: $a0
	cpl                                              ; $45c2: $2f
	ld b, e                                          ; $45c3: $43
	ld e, [hl]                                       ; $45c4: $5e
	ld e, c                                          ; $45c5: $59
	dec sp                                           ; $45c6: $3b
	xor h                                            ; $45c7: $ac
	ld d, d                                          ; $45c8: $52
	ld b, h                                          ; $45c9: $44
	inc [hl]                                         ; $45ca: $34
	jr c, jr_093_4605                                ; $45cb: $38 $38

	db $ec                                           ; $45cd: $ec
	ret c                                            ; $45ce: $d8

jr_093_45cf:
	and b                                            ; $45cf: $a0
	sbc h                                            ; $45d0: $9c
	dec sp                                           ; $45d1: $3b
	ld c, c                                          ; $45d2: $49
	ldh a, [$c9]                                     ; $45d3: $f0 $c9
	ld e, l                                          ; $45d5: $5d
	ccf                                              ; $45d6: $3f
	ld h, h                                          ; $45d7: $64
	ld d, l                                          ; $45d8: $55
	ld c, c                                          ; $45d9: $49
	inc de                                           ; $45da: $13
	ld l, h                                          ; $45db: $6c
	ld b, c                                          ; $45dc: $41
	ld a, [hl-]                                      ; $45dd: $3a
	ld b, a                                          ; $45de: $47
	ldh a, [$5c]                                     ; $45df: $f0 $5c
	jr c, jr_093_45cf                                ; $45e1: $38 $ec

	ret c                                            ; $45e3: $d8

	and b                                            ; $45e4: $a0
	cpl                                              ; $45e5: $2f
	ld b, e                                          ; $45e6: $43
	ld b, b                                          ; $45e7: $40
	ld c, l                                          ; $45e8: $4d
	ld c, a                                          ; $45e9: $4f
	inc [hl]                                         ; $45ea: $34

jr_093_45eb:
	ld b, b                                          ; $45eb: $40
	add hl, sp                                       ; $45ec: $39
	ld b, h                                          ; $45ed: $44
	ld c, h                                          ; $45ee: $4c
	and b                                            ; $45ef: $a0
	cpl                                              ; $45f0: $2f
	ld b, e                                          ; $45f1: $43
	ld e, [hl]                                       ; $45f2: $5e
	ld e, c                                          ; $45f3: $59
	dec sp                                           ; $45f4: $3b
	inc [hl]                                         ; $45f5: $34
	ld d, d                                          ; $45f6: $52
	ld b, h                                          ; $45f7: $44
	xor h                                            ; $45f8: $ac
	jr c, jr_093_4633                                ; $45f9: $38 $38

	db $ec                                           ; $45fb: $ec
	ret c                                            ; $45fc: $d8

	and b                                            ; $45fd: $a0
	ld d, d                                          ; $45fe: $52
	ld b, h                                          ; $45ff: $44
	or $00                                           ; $4600: $f6 $00
	dec a                                            ; $4602: $3d
	jr c, jr_093_4662                                ; $4603: $38 $5d

jr_093_4605:
	ld e, d                                          ; $4605: $5a
	xor h                                            ; $4606: $ac
	sbc h                                            ; $4607: $9c
	dec sp                                           ; $4608: $3b
	ld c, c                                          ; $4609: $49
	ldh a, [$c9]                                     ; $460a: $f0 $c9
	ld e, l                                          ; $460c: $5d
	ccf                                              ; $460d: $3f
	ld h, h                                          ; $460e: $64
	ld d, l                                          ; $460f: $55
	ld c, c                                          ; $4610: $49
	inc [hl]                                         ; $4611: $34
	ld l, h                                          ; $4612: $6c
	ld b, c                                          ; $4613: $41
	ld a, [hl-]                                      ; $4614: $3a
	ld b, a                                          ; $4615: $47
	inc de                                           ; $4616: $13
	ldh a, [$5c]                                     ; $4617: $f0 $5c
	jr c, jr_093_4665                                ; $4619: $38 $4a

	ld a, $66                                        ; $461b: $3e $66
	and b                                            ; $461d: $a0
	cpl                                              ; $461e: $2f
	ld b, e                                          ; $461f: $43
	ld b, b                                          ; $4620: $40
	ld c, l                                          ; $4621: $4d
	ld c, a                                          ; $4622: $4f
	inc [hl]                                         ; $4623: $34
	ld b, b                                          ; $4624: $40
	add hl, sp                                       ; $4625: $39
	ld b, h                                          ; $4626: $44
	ld c, h                                          ; $4627: $4c
	ld c, b                                          ; $4628: $48
	and b                                            ; $4629: $a0
	add hl, bc                                       ; $462a: $09
	cpl                                              ; $462b: $2f
	ld b, e                                          ; $462c: $43
	ld e, b                                          ; $462d: $58
	ccf                                              ; $462e: $3f
	xor h                                            ; $462f: $ac
	xor $1d                                          ; $4630: $ee $1d
	ld c, a                                          ; $4632: $4f

jr_093_4633:
	ld a, $3d                                        ; $4633: $3e $3d
	ld d, h                                          ; $4635: $54
	ld c, c                                          ; $4636: $49
	ld b, h                                          ; $4637: $44
	ld a, $ac                                        ; $4638: $3e $ac
	adc d                                            ; $463a: $8a
	ldh a, [$73]                                     ; $463b: $f0 $73
	adc a                                            ; $463d: $8f
	ldh a, [$5a]                                     ; $463e: $f0 $5a
	ld h, a                                          ; $4640: $67
	ld d, l                                          ; $4641: $55
	inc a                                            ; $4642: $3c
	and b                                            ; $4643: $a0
	ld b, [hl]                                       ; $4644: $46
	dec sp                                           ; $4645: $3b
	inc [hl]                                         ; $4646: $34
	db $eb                                           ; $4647: $eb
	sbc c                                            ; $4648: $99
	xor b                                            ; $4649: $a8
	ld a, b                                          ; $464a: $78
	ccf                                              ; $464b: $3f
	ld d, l                                          ; $464c: $55
	ld c, l                                          ; $464d: $4d
	dec a                                            ; $464e: $3d
	ld b, d                                          ; $464f: $42
	ld c, h                                          ; $4650: $4c
	and b                                            ; $4651: $a0
	cpl                                              ; $4652: $2f
	ld b, e                                          ; $4653: $43
	ld d, h                                          ; $4654: $54
	ld d, h                                          ; $4655: $54
	ld c, e                                          ; $4656: $4b
	xor h                                            ; $4657: $ac
	jp hl                                            ; $4658: $e9


	ld l, e                                          ; $4659: $6b
	and c                                            ; $465a: $a1
	jp hl                                            ; $465b: $e9


	ld l, [hl]                                       ; $465c: $6e
	xor b                                            ; $465d: $a8
	db $ec                                           ; $465e: $ec
	cp c                                             ; $465f: $b9
	ld d, b                                          ; $4660: $50
	ld e, d                                          ; $4661: $5a

jr_093_4662:
	add hl, sp                                       ; $4662: $39
	and c                                            ; $4663: $a1
	cpl                                              ; $4664: $2f

jr_093_4665:
	ld b, e                                          ; $4665: $43
	ld h, h                                          ; $4666: $64
	ldh a, [$c8]                                     ; $4667: $f0 $c8
	jr c, jr_093_46bc                                ; $4669: $38 $51

	ld c, [hl]                                       ; $466b: $4e
	ld b, l                                          ; $466c: $45
	and b                                            ; $466d: $a0
	ld b, b                                          ; $466e: $40
	ld c, l                                          ; $466f: $4d
	ld e, e                                          ; $4670: $5b
	ld d, [hl]                                       ; $4671: $56
	xor h                                            ; $4672: $ac
	db $ec                                           ; $4673: $ec
	ld d, [hl]                                       ; $4674: $56
	ld b, d                                          ; $4675: $42
	ldh a, [$d6]                                     ; $4676: $f0 $d6
	ld c, h                                          ; $4678: $4c
	and b                                            ; $4679: $a0
	ld [hl], b                                       ; $467a: $70
	ld [hl], c                                       ; $467b: $71
	ld b, c                                          ; $467c: $41
	ld c, h                                          ; $467d: $4c
	dec [hl]                                         ; $467e: $35
	rla                                              ; $467f: $17
	ld h, c                                          ; $4680: $61
	ld d, [hl]                                       ; $4681: $56
	ld b, c                                          ; $4682: $41
	ld c, c                                          ; $4683: $49
	ldh a, [$bd]                                     ; $4684: $f0 $bd
	jr c, jr_093_46c7                                ; $4686: $38 $3f

	ld b, [hl]                                       ; $4688: $46

jr_093_4689:
	ldh a, [rSB]                                     ; $4689: $f0 $01
	ld a, [hl-]                                      ; $468b: $3a
	jr c, @+$4b                                      ; $468c: $38 $49

	xor h                                            ; $468e: $ac
	ldh a, [c]                                       ; $468f: $f2
	ld h, c                                          ; $4690: $61
	di                                               ; $4691: $f3
	ld e, [hl]                                       ; $4692: $5e

jr_093_4693:
	ldh a, [c]                                       ; $4693: $f2
	ld l, b                                          ; $4694: $68
	ld d, e                                          ; $4695: $53
	add hl, sp                                       ; $4696: $39
	ld c, [hl]                                       ; $4697: $4e
	ld e, b                                          ; $4698: $58
	ld d, l                                          ; $4699: $55
	dec sp                                           ; $469a: $3b
	ccf                                              ; $469b: $3f
	ld c, b                                          ; $469c: $48
	and b                                            ; $469d: $a0
	cpl                                              ; $469e: $2f
	ld b, e                                          ; $469f: $43

Call_093_46a0:
	call nc, $a845                                   ; $46a0: $d4 $45 $a8
	ldh a, [$d6]                                     ; $46a3: $f0 $d6
	ld b, d                                          ; $46a5: $42
	ldh a, [$c6]                                     ; $46a6: $f0 $c6
	ldh a, [rHDMA3]                                  ; $46a8: $f0 $53
	ld b, a                                          ; $46aa: $47
	ld h, h                                          ; $46ab: $64
	ldh a, [$c8]                                     ; $46ac: $f0 $c8
	jr c, jr_093_4701                                ; $46ae: $38 $51

	ld c, [hl]                                       ; $46b0: $4e
	inc a                                            ; $46b1: $3c
	ld d, b                                          ; $46b2: $50
	and b                                            ; $46b3: $a0
	db $ec                                           ; $46b4: $ec
	cpl                                              ; $46b5: $2f
	inc [hl]                                         ; $46b6: $34
	ld [hl], b                                       ; $46b7: $70
	ld [hl], c                                       ; $46b8: $71
	ld b, c                                          ; $46b9: $41
	ld c, h                                          ; $46ba: $4c
	and b                                            ; $46bb: $a0

jr_093_46bc:
	db $ed                                           ; $46bc: $ed
	cp [hl]                                          ; $46bd: $be
	ldh a, [rRP]                                     ; $46be: $f0 $56
	xor b                                            ; $46c0: $a8
	ld l, d                                          ; $46c1: $6a
	ldh a, [$0d]                                     ; $46c2: $f0 $0d
	ld c, e                                          ; $46c4: $4b
	inc [hl]                                         ; $46c5: $34
	db $f4                                           ; $46c6: $f4

jr_093_46c7:
	dec l                                            ; $46c7: $2d
	ldh a, [$3e]                                     ; $46c8: $f0 $3e
	ldh a, [$58]                                     ; $46ca: $f0 $58
	ldh a, [c]                                       ; $46cc: $f2
	ld [hl], c                                       ; $46cd: $71
	db $fd                                           ; $46ce: $fd
	ld d, [hl]                                       ; $46cf: $56
	inc a                                            ; $46d0: $3c
	ld d, b                                          ; $46d1: $50
	inc de                                           ; $46d2: $13
	ld h, h                                          ; $46d3: $64
	ldh a, [$c8]                                     ; $46d4: $f0 $c8
	jr c, jr_093_4729                                ; $46d6: $38 $51

	ld c, [hl]                                       ; $46d8: $4e
	ld b, l                                          ; $46d9: $45
	and b                                            ; $46da: $a0
	ld b, b                                          ; $46db: $40
	ld c, l                                          ; $46dc: $4d

jr_093_46dd:
	ld e, e                                          ; $46dd: $5b
	ld d, [hl]                                       ; $46de: $56
	inc [hl]                                         ; $46df: $34
	ldh a, [$e8]                                     ; $46e0: $f0 $e8
	ld c, [hl]                                       ; $46e2: $4e
	ld h, e                                          ; $46e3: $63
	ld c, h                                          ; $46e4: $4c
	xor b                                            ; $46e5: $a8
	jp hl                                            ; $46e6: $e9


	jr nz, jr_093_4689                               ; $46e7: $20 $a0

	db $eb                                           ; $46e9: $eb
	sbc c                                            ; $46ea: $99
	xor b                                            ; $46eb: $a8
	jr c, @+$52                                      ; $46ec: $38 $50

	dec sp                                           ; $46ee: $3b
	ld a, $56                                        ; $46ef: $3e $56
	jr c, jr_093_4693                                ; $46f1: $38 $a0

	jp hl                                            ; $46f3: $e9


	ld l, [hl]                                       ; $46f4: $6e
	xor b                                            ; $46f5: $a8
	db $ec                                           ; $46f6: $ec
	cp c                                             ; $46f7: $b9
	ld d, b                                          ; $46f8: $50
	ld e, d                                          ; $46f9: $5a
	add hl, sp                                       ; $46fa: $39
	xor c                                            ; $46fb: $a9
	ldh a, [$bd]                                     ; $46fc: $f0 $bd
	jr c, jr_093_473f                                ; $46fe: $38 $3f

	rst SubAFromDE                                          ; $4700: $df

jr_093_4701:
	ld h, e                                          ; $4701: $63
	ld b, l                                          ; $4702: $45
	and b                                            ; $4703: $a0
	ld b, b                                          ; $4704: $40
	ld c, l                                          ; $4705: $4d
	ld e, e                                          ; $4706: $5b
	ld d, [hl]                                       ; $4707: $56
	inc [hl]                                         ; $4708: $34
	db $ec                                           ; $4709: $ec
	ld d, [hl]                                       ; $470a: $56
	ld b, d                                          ; $470b: $42
	inc de                                           ; $470c: $13
	ldh a, [$d6]                                     ; $470d: $f0 $d6
	ld b, h                                          ; $470f: $44
	inc a                                            ; $4710: $3c
	ld d, b                                          ; $4711: $50
	and b                                            ; $4712: $a0
	ld [hl], b                                       ; $4713: $70
	ld [hl], c                                       ; $4714: $71
	ld b, c                                          ; $4715: $41
	ld c, h                                          ; $4716: $4c
	xor b                                            ; $4717: $a8
	ld h, c                                          ; $4718: $61
	ld d, [hl]                                       ; $4719: $56
	ld b, c                                          ; $471a: $41
	ld c, c                                          ; $471b: $49
	ldh a, [$bd]                                     ; $471c: $f0 $bd
	jr c, jr_093_475f                                ; $471e: $38 $3f

	ld b, [hl]                                       ; $4720: $46
	ldh a, [rSB]                                     ; $4721: $f0 $01
	ld a, [hl-]                                      ; $4723: $3a

jr_093_4724:
	jr c, jr_093_476f                                ; $4724: $38 $49

	xor h                                            ; $4726: $ac
	ldh a, [c]                                       ; $4727: $f2
	ld h, c                                          ; $4728: $61

jr_093_4729:
	di                                               ; $4729: $f3
	ld e, [hl]                                       ; $472a: $5e
	ldh a, [c]                                       ; $472b: $f2
	ld l, b                                          ; $472c: $68
	ld d, e                                          ; $472d: $53

jr_093_472e:
	add hl, sp                                       ; $472e: $39
	ld c, [hl]                                       ; $472f: $4e
	ld e, b                                          ; $4730: $58
	jr c, jr_093_4775                                ; $4731: $38 $42

	ld b, l                                          ; $4733: $45
	and b                                            ; $4734: $a0
	ld b, b                                          ; $4735: $40
	ld c, l                                          ; $4736: $4d
	ld e, e                                          ; $4737: $5b
	ld d, [hl]                                       ; $4738: $56
	xor h                                            ; $4739: $ac
	jp hl                                            ; $473a: $e9


	jr nz, jr_093_46dd                               ; $473b: $20 $a0

	ldh a, [rPCM12]                                  ; $473d: $f0 $76

jr_093_473f:
	ldh a, [$d2]                                     ; $473f: $f0 $d2
	ldh a, [$3f]                                     ; $4741: $f0 $3f
	ld h, d                                          ; $4743: $62
	inc de                                           ; $4744: $13
	ldh a, [$bd]                                     ; $4745: $f0 $bd
	jr c, jr_093_4788                                ; $4747: $38 $3f

	ld c, [hl]                                       ; $4749: $4e
	ld b, d                                          ; $474a: $42
	ld b, l                                          ; $474b: $45
	xor b                                            ; $474c: $a8
	db $ec                                           ; $474d: $ec
	cp c                                             ; $474e: $b9
	ld d, b                                          ; $474f: $50
	ld e, d                                          ; $4750: $5a
	add hl, sp                                       ; $4751: $39
	xor c                                            ; $4752: $a9
	ldh a, [$bd]                                     ; $4753: $f0 $bd
	jr c, jr_093_4796                                ; $4755: $38 $3f

	rst SubAFromDE                                          ; $4757: $df
	ld h, e                                          ; $4758: $63
	ld b, l                                          ; $4759: $45
	and b                                            ; $475a: $a0
	ld b, b                                          ; $475b: $40
	ld c, l                                          ; $475c: $4d
	ld e, e                                          ; $475d: $5b
	ld d, [hl]                                       ; $475e: $56

jr_093_475f:
	xor h                                            ; $475f: $ac
	db $ec                                           ; $4760: $ec
	ld d, [hl]                                       ; $4761: $56
	ld b, d                                          ; $4762: $42
	ldh a, [$d6]                                     ; $4763: $f0 $d6
	ld b, h                                          ; $4765: $44
	inc a                                            ; $4766: $3c
	ld d, b                                          ; $4767: $50
	and b                                            ; $4768: $a0
	ld b, b                                          ; $4769: $40
	add hl, sp                                       ; $476a: $39
	ld a, $3f                                        ; $476b: $3e $3f
	ld d, l                                          ; $476d: $55
	ld c, l                                          ; $476e: $4d

jr_093_476f:
	ld c, [hl]                                       ; $476f: $4e
	and c                                            ; $4770: $a1
	cpl                                              ; $4771: $2f
	ld b, e                                          ; $4772: $43
	db $ec                                           ; $4773: $ec
	pop hl                                           ; $4774: $e1

jr_093_4775:
	db $eb                                           ; $4775: $eb
	inc sp                                           ; $4776: $33
	xor b                                            ; $4777: $a8
	ldh a, [rPCM12]                                  ; $4778: $f0 $76
	ldh a, [$d2]                                     ; $477a: $f0 $d2
	ldh a, [$3f]                                     ; $477c: $f0 $3f
	ld c, d                                          ; $477e: $4a
	ld c, a                                          ; $477f: $4f
	ldh a, [$bd]                                     ; $4780: $f0 $bd
	jr c, jr_093_47c3                                ; $4782: $38 $3f

	ld c, a                                          ; $4784: $4f
	ld d, b                                          ; $4785: $50
	ld h, h                                          ; $4786: $64
	add hl, sp                                       ; $4787: $39

jr_093_4788:
	inc a                                            ; $4788: $3c
	ld a, [hl-]                                      ; $4789: $3a
	and b                                            ; $478a: $a0
	cpl                                              ; $478b: $2f
	ld b, e                                          ; $478c: $43
	di                                               ; $478d: $f3
	sub b                                            ; $478e: $90
	ld b, c                                          ; $478f: $41
	ld c, d                                          ; $4790: $4a
	ld c, [hl]                                       ; $4791: $4e
	inc a                                            ; $4792: $3c
	ld d, b                                          ; $4793: $50
	xor h                                            ; $4794: $ac
	pop af                                           ; $4795: $f1

jr_093_4796:
	jr nc, jr_093_4809                               ; $4796: $30 $71

	ld b, l                                          ; $4798: $45
	add hl, sp                                       ; $4799: $39
	ld c, b                                          ; $479a: $48
	and b                                            ; $479b: $a0
	cpl                                              ; $479c: $2f
	ld b, e                                          ; $479d: $43
	db $ec                                           ; $479e: $ec
	di                                               ; $479f: $f3
	xor c                                            ; $47a0: $a9
	ld b, [hl]                                       ; $47a1: $46
	jr c, jr_093_4724                                ; $47a2: $38 $80

	jr c, jr_093_47f4                                ; $47a4: $38 $4e

	ld b, d                                          ; $47a6: $42
	and c                                            ; $47a7: $a1
	ldh a, [rRP]                                     ; $47a8: $f0 $56
	ld b, a                                          ; $47aa: $47
	ld b, [hl]                                       ; $47ab: $46
	jr c, jr_093_472e                                ; $47ac: $38 $80

	pop af                                           ; $47ae: $f1
	ld bc, $637b                                     ; $47af: $01 $7b $63
	ld d, a                                          ; $47b2: $57
	inc de                                           ; $47b3: $13
	ld e, b                                          ; $47b4: $58
	ld c, l                                          ; $47b5: $4d
	ld c, [hl]                                       ; $47b6: $4e
	ld c, c                                          ; $47b7: $49
	ld c, e                                          ; $47b8: $4b
	ld c, h                                          ; $47b9: $4c
	and b                                            ; $47ba: $a0
	cpl                                              ; $47bb: $2f
	ld b, e                                          ; $47bc: $43
	sub h                                            ; $47bd: $94
	dec a                                            ; $47be: $3d
	inc [hl]                                         ; $47bf: $34
	db $ec                                           ; $47c0: $ec
	di                                               ; $47c1: $f3
	and d                                            ; $47c2: $a2

jr_093_47c3:
	ld h, h                                          ; $47c3: $64
	dec sp                                           ; $47c4: $3b
	ld c, c                                          ; $47c5: $49
	inc [hl]                                         ; $47c6: $34
	ld [hl], l                                       ; $47c7: $75
	ldh a, [rWY]                                     ; $47c8: $f0 $4a
	ldh a, [$c4]                                     ; $47ca: $f0 $c4
	ld e, c                                          ; $47cc: $59
	ld h, d                                          ; $47cd: $62
	inc de                                           ; $47ce: $13
	sbc c                                            ; $47cf: $99
	dec a                                            ; $47d0: $3d
	ld a, c                                          ; $47d1: $79
	ld h, c                                          ; $47d2: $61
	ld d, [hl]                                       ; $47d3: $56
	jr c, jr_093_4833                                ; $47d4: $38 $5d

	ld a, [hl-]                                      ; $47d6: $3a
	jr c, @-$56                                      ; $47d7: $38 $a8

	ldh a, [rHDMA5]                                  ; $47d9: $f0 $55
	ldh a, [rBCPS]                                   ; $47db: $f0 $68
	ld d, c                                          ; $47dd: $51
	ld c, [hl]                                       ; $47de: $4e
	ld b, l                                          ; $47df: $45
	and b                                            ; $47e0: $a0
	cpl                                              ; $47e1: $2f
	ld b, e                                          ; $47e2: $43
	ld l, e                                          ; $47e3: $6b
	ld d, e                                          ; $47e4: $53
	ldh a, [rHDMA5]                                  ; $47e5: $f0 $55
	ldh a, [rBCPS]                                   ; $47e7: $f0 $68
	ld b, h                                          ; $47e9: $44
	xor b                                            ; $47ea: $a8
	ldh a, [$0a]                                     ; $47eb: $f0 $0a
	ld d, l                                          ; $47ed: $55
	ld a, d                                          ; $47ee: $7a
	ld c, l                                          ; $47ef: $4d
	ld b, l                                          ; $47f0: $45
	xor b                                            ; $47f1: $a8
	db $eb                                           ; $47f2: $eb
	inc [hl]                                         ; $47f3: $34

jr_093_47f4:
	inc [hl]                                         ; $47f4: $34
	sbc c                                            ; $47f5: $99
	add b                                            ; $47f6: $80
	inc a                                            ; $47f7: $3c
	and b                                            ; $47f8: $a0
	cpl                                              ; $47f9: $2f
	ld b, e                                          ; $47fa: $43
	ld h, h                                          ; $47fb: $64
	jr c, @+$36                                      ; $47fc: $38 $34

	db $ec                                           ; $47fe: $ec
	di                                               ; $47ff: $f3
	xor b                                            ; $4800: $a8
	jr c, @-$7e                                      ; $4801: $38 $80

	ld d, d                                          ; $4803: $52
	ld c, d                                          ; $4804: $4a
	ldh a, [$bd]                                     ; $4805: $f0 $bd
	jr c, jr_093_4848                                ; $4807: $38 $3f

jr_093_4809:
	inc de                                           ; $4809: $13
	ld c, a                                          ; $480a: $4f
	ld d, b                                          ; $480b: $50
	dec sp                                           ; $480c: $3b
	ccf                                              ; $480d: $3f
	ld c, [hl]                                       ; $480e: $4e
	ld b, c                                          ; $480f: $41
	ld b, h                                          ; $4810: $44
	ld b, l                                          ; $4811: $45
	and b                                            ; $4812: $a0
	ld d, d                                          ; $4813: $52
	ld [hl], h                                       ; $4814: $74
	inc [hl]                                         ; $4815: $34
	ld b, b                                          ; $4816: $40
	add hl, sp                                       ; $4817: $39
	ld b, [hl]                                       ; $4818: $46
	ld a, c                                          ; $4819: $79
	ld c, [hl]                                       ; $481a: $4e
	ld a, [hl-]                                      ; $481b: $3a
	xor b                                            ; $481c: $a8
	ld d, d                                          ; $481d: $52
	ld b, h                                          ; $481e: $44
	inc [hl]                                         ; $481f: $34
	ldh a, [$58]                                     ; $4820: $f0 $58
	di                                               ; $4822: $f3
	or d                                             ; $4823: $b2
	ldh a, [rAUD3LEVEL]                              ; $4824: $f0 $1c
	ld b, h                                          ; $4826: $44
	and b                                            ; $4827: $a0
	cpl                                              ; $4828: $2f
	ld b, e                                          ; $4829: $43
	ld d, d                                          ; $482a: $52
	ld b, h                                          ; $482b: $44
	inc [hl]                                         ; $482c: $34
	ldh a, [$58]                                     ; $482d: $f0 $58
	di                                               ; $482f: $f3
	or d                                             ; $4830: $b2
	ldh a, [rAUD3LEVEL]                              ; $4831: $f0 $1c

jr_093_4833:
	ld b, h                                          ; $4833: $44
	ld [hl], h                                       ; $4834: $74
	pop af                                           ; $4835: $f1
	dec [hl]                                         ; $4836: $35
	xor c                                            ; $4837: $a9
	ld l, e                                          ; $4838: $6b
	di                                               ; $4839: $f3
	or d                                             ; $483a: $b2
	ldh a, [$bd]                                     ; $483b: $f0 $bd
	jr c, jr_093_487e                                ; $483d: $38 $3f

	ld c, a                                          ; $483f: $4f
	ld d, b                                          ; $4840: $50
	add hl, sp                                       ; $4841: $39
	ld a, a                                          ; $4842: $7f
	ld a, [hl-]                                      ; $4843: $3a
	ld b, c                                          ; $4844: $41
	ld b, h                                          ; $4845: $44
	ld b, l                                          ; $4846: $45
	and c                                            ; $4847: $a1

jr_093_4848:
	ld b, [hl]                                       ; $4848: $46
	ld c, c                                          ; $4849: $49
	ldh a, [$e5]                                     ; $484a: $f0 $e5
	ldh a, [c]                                       ; $484c: $f2
	ld [hl], c                                       ; $484d: $71
	di                                               ; $484e: $f3
	or d                                             ; $484f: $b2
	sbc l                                            ; $4850: $9d
	ld d, b                                          ; $4851: $50
	jr c, jr_093_4890                                ; $4852: $38 $3c

	ld a, [hl-]                                      ; $4854: $3a
	and b                                            ; $4855: $a0
	cpl                                              ; $4856: $2f
	ld b, e                                          ; $4857: $43
	add b                                            ; $4858: $80
	inc [hl]                                         ; $4859: $34
	ldh a, [$9a]                                     ; $485a: $f0 $9a
	ld e, h                                          ; $485c: $5c
	ldh a, [rTMA]                                    ; $485d: $f0 $06
	jr c, jr_093_48bd                                ; $485f: $38 $5c

	ld c, l                                          ; $4861: $4d
	ld b, c                                          ; $4862: $41
	xor b                                            ; $4863: $a8
	db $ec                                           ; $4864: $ec
	pop hl                                           ; $4865: $e1
	inc [hl]                                         ; $4866: $34
	db $ec                                           ; $4867: $ec
	dec h                                            ; $4868: $25
	halt                                             ; $4869: $76
	ld a, d                                          ; $486a: $7a
	ld c, [hl]                                       ; $486b: $4e
	ld b, l                                          ; $486c: $45
	and b                                            ; $486d: $a0
	cpl                                              ; $486e: $2f
	ld b, e                                          ; $486f: $43
	ld [$a852], a                                    ; $4870: $ea $52 $a8
	ld [$a079], a                                    ; $4873: $ea $79 $a0
	ld [$487a], a                                    ; $4876: $ea $7a $48
	and b                                            ; $4879: $a0
	cpl                                              ; $487a: $2f
	ld b, e                                          ; $487b: $43
	ld b, [hl]                                       ; $487c: $46
	dec sp                                           ; $487d: $3b

jr_093_487e:
	inc [hl]                                         ; $487e: $34
	inc a                                            ; $487f: $3c
	inc [hl]                                         ; $4880: $34
	db $ec                                           ; $4881: $ec
	pop hl                                           ; $4882: $e1
	dec [hl]                                         ; $4883: $35
	rla                                              ; $4884: $17
	db $eb                                           ; $4885: $eb
	or a                                             ; $4886: $b7
	xor c                                            ; $4887: $a9
	ld [hl-], a                                      ; $4888: $32
	ld h, c                                          ; $4889: $61
	dec sp                                           ; $488a: $3b
	inc [hl]                                         ; $488b: $34
	di                                               ; $488c: $f3
	jr nc, jr_093_48e7                               ; $488d: $30 $58

	ld c, l                                          ; $488f: $4d

jr_093_4890:
	ld h, c                                          ; $4890: $61
	ld d, d                                          ; $4891: $52
	dec sp                                           ; $4892: $3b
	dec a                                            ; $4893: $3d
	adc l                                            ; $4894: $8d
	and e                                            ; $4895: $a3
	cpl                                              ; $4896: $2f
	ld b, e                                          ; $4897: $43
	ld b, [hl]                                       ; $4898: $46
	dec sp                                           ; $4899: $3b
	inc [hl]                                         ; $489a: $34
	inc a                                            ; $489b: $3c
	inc [hl]                                         ; $489c: $34
	db $ec                                           ; $489d: $ec
	pop hl                                           ; $489e: $e1
	dec [hl]                                         ; $489f: $35
	rla                                              ; $48a0: $17
	db $eb                                           ; $48a1: $eb
	or a                                             ; $48a2: $b7
	xor c                                            ; $48a3: $a9
	ld [hl-], a                                      ; $48a4: $32
	jp hl                                            ; $48a5: $e9


	jp $eaa3                                         ; $48a6: $c3 $a3 $ea


	db $ec                                           ; $48a9: $ec
	ld b, l                                          ; $48aa: $45
	dec [hl]                                         ; $48ab: $35
	rla                                              ; $48ac: $17
	ld b, [hl]                                       ; $48ad: $46
	ld a, [hl-]                                      ; $48ae: $3a
	dec a                                            ; $48af: $3d
	ld b, a                                          ; $48b0: $47
	ld c, e                                          ; $48b1: $4b
	inc [hl]                                         ; $48b2: $34
	ld b, [hl]                                       ; $48b3: $46
	ld d, d                                          ; $48b4: $52
	ld d, a                                          ; $48b5: $57
	inc de                                           ; $48b6: $13
	ld [hl], d                                       ; $48b7: $72
	ld a, c                                          ; $48b8: $79
	dec a                                            ; $48b9: $3d
	ld d, l                                          ; $48ba: $55
	ld a, [hl-]                                      ; $48bb: $3a
	inc a                                            ; $48bc: $3c

jr_093_48bd:
	dec sp                                           ; $48bd: $3b
	dec a                                            ; $48be: $3d
	ld e, l                                          ; $48bf: $5d

jr_093_48c0:
	ld e, d                                          ; $48c0: $5a
	ld c, b                                          ; $48c1: $48
	and b                                            ; $48c2: $a0
	cpl                                              ; $48c3: $2f
	ld b, e                                          ; $48c4: $43
	ld e, [hl]                                       ; $48c5: $5e
	dec sp                                           ; $48c6: $3b
	inc [hl]                                         ; $48c7: $34
	db $ec                                           ; $48c8: $ec
	db $d3                                           ; $48c9: $d3
	and c                                            ; $48ca: $a1
	call nc, $d8ec                                   ; $48cb: $d4 $ec $d8
	xor b                                            ; $48ce: $a8
	pop af                                           ; $48cf: $f1
	ld l, [hl]                                       ; $48d0: $6e
	ldh a, [$cf]                                     ; $48d1: $f0 $cf
	ld b, [hl]                                       ; $48d3: $46
	ld c, [hl]                                       ; $48d4: $4e
	ld b, d                                          ; $48d5: $42
	ld b, l                                          ; $48d6: $45

jr_093_48d7:
	and b                                            ; $48d7: $a0
	cpl                                              ; $48d8: $2f
	ld b, e                                          ; $48d9: $43
	db $ec                                           ; $48da: $ec
	ldh a, [$a8]                                     ; $48db: $f0 $a8
	pop af                                           ; $48dd: $f1
	ld l, [hl]                                       ; $48de: $6e
	ldh a, [$cf]                                     ; $48df: $f0 $cf
	ld c, h                                          ; $48e1: $4c
	add l                                            ; $48e2: $85
	and b                                            ; $48e3: $a0
	ld d, d                                          ; $48e4: $52
	ld b, h                                          ; $48e5: $44
	inc [hl]                                         ; $48e6: $34

jr_093_48e7:
	ld d, h                                          ; $48e7: $54
	ld d, h                                          ; $48e8: $54
	ld b, a                                          ; $48e9: $47
	jr c, jr_093_493a                                ; $48ea: $38 $4e

	add b                                            ; $48ec: $80
	ld c, a                                          ; $48ed: $4f
	ld d, a                                          ; $48ee: $57
	and c                                            ; $48ef: $a1
	cpl                                              ; $48f0: $2f
	ld b, e                                          ; $48f1: $43
	jr c, jr_093_4962                                ; $48f2: $38 $6e

	inc [hl]                                         ; $48f4: $34
	ld c, a                                          ; $48f5: $4f
	add hl, sp                                       ; $48f6: $39
	ld a, d                                          ; $48f7: $7a
	ld c, [hl]                                       ; $48f8: $4e
	ld b, l                                          ; $48f9: $45
	dec [hl]                                         ; $48fa: $35
	rla                                              ; $48fb: $17
	ld [hl-], a                                      ; $48fc: $32
	ld e, b                                          ; $48fd: $58
	ld d, c                                          ; $48fe: $51
	ld d, e                                          ; $48ff: $53
	ld b, a                                          ; $4900: $47
	inc [hl]                                         ; $4901: $34
	db $ec                                           ; $4902: $ec
	pop hl                                           ; $4903: $e1
	ld c, c                                          ; $4904: $49
	jr c, jr_093_4955                                ; $4905: $38 $4e

	ld c, c                                          ; $4907: $49
	inc de                                           ; $4908: $13
	db $ec                                           ; $4909: $ec
	ld c, $72                                        ; $490a: $0e $72
	ccf                                              ; $490c: $3f
	ld d, b                                          ; $490d: $50
	ld c, l                                          ; $490e: $4d
	ld a, [hl-]                                      ; $490f: $3a
	jr c, jr_093_4980                                ; $4910: $38 $6e

	and e                                            ; $4912: $a3
	ldh a, [$50]                                     ; $4913: $f0 $50
	ld [hl], e                                       ; $4915: $73
	ldh a, [$32]                                     ; $4916: $f0 $32
	inc [hl]                                         ; $4918: $34
	db $ec                                           ; $4919: $ec
	cp c                                             ; $491a: $b9
	xor b                                            ; $491b: $a8
	or h                                             ; $491c: $b4
	jp hl                                            ; $491d: $e9


	jr nz, jr_093_48c0                               ; $491e: $20 $a0

	cpl                                              ; $4920: $2f
	ld b, e                                          ; $4921: $43
	db $ec                                           ; $4922: $ec
	pop hl                                           ; $4923: $e1
	db $eb                                           ; $4924: $eb
	ld [$ecac], sp                                   ; $4925: $08 $ac $ec
	ld c, $ea                                        ; $4928: $0e $ea
	ld b, $48                                        ; $492a: $06 $48
	and b                                            ; $492c: $a0
	db $eb                                           ; $492d: $eb
	sbc c                                            ; $492e: $99
	xor h                                            ; $492f: $ac
	jr c, jr_093_4982                                ; $4930: $38 $50

	dec sp                                           ; $4932: $3b
	ld a, $56                                        ; $4933: $3e $56
	jr c, jr_093_48d7                                ; $4935: $38 $a0

	ldh a, [$2d]                                     ; $4937: $f0 $2d
	dec sp                                           ; $4939: $3b

jr_093_493a:
	ccf                                              ; $493a: $3f
	ccf                                              ; $493b: $3f
	ld e, h                                          ; $493c: $5c
	dec a                                            ; $493d: $3d
	ld d, l                                          ; $493e: $55
	ld a, c                                          ; $493f: $79
	ld b, a                                          ; $4940: $47
	xor h                                            ; $4941: $ac
	ld c, c                                          ; $4942: $49
	pop af                                           ; $4943: $f1
	halt                                             ; $4944: $76
	ld e, l                                          ; $4945: $5d
	ld a, [hl-]                                      ; $4946: $3a
	jr c, jr_093_4993                                ; $4947: $38 $4a

	ld b, l                                          ; $4949: $45
	and b                                            ; $494a: $a0
	cpl                                              ; $494b: $2f
	ld b, e                                          ; $494c: $43
	db $ec                                           ; $494d: $ec
	dec b                                            ; $494e: $05
	ld b, l                                          ; $494f: $45
	xor b                                            ; $4950: $a8
	ldh a, [c]                                       ; $4951: $f2
	and [hl]                                         ; $4952: $a6
	ldh a, [$59]                                     ; $4953: $f0 $59

jr_093_4955:
	ld b, h                                          ; $4955: $44
	ld b, l                                          ; $4956: $45
	inc [hl]                                         ; $4957: $34
	ldh a, [c]                                       ; $4958: $f2
	and [hl]                                         ; $4959: $a6
	ldh a, [$59]                                     ; $495a: $f0 $59
	and b                                            ; $495c: $a0
	db $ec                                           ; $495d: $ec
	scf                                              ; $495e: $37
	xor c                                            ; $495f: $a9
	adc b                                            ; $4960: $88
	sub c                                            ; $4961: $91

jr_093_4962:
	inc a                                            ; $4962: $3c
	ld a, [hl-]                                      ; $4963: $3a
	ld [hl], h                                       ; $4964: $74
	and b                                            ; $4965: $a0
	cpl                                              ; $4966: $2f
	ld b, e                                          ; $4967: $43
	adc b                                            ; $4968: $88
	sub c                                            ; $4969: $91
	ld b, h                                          ; $496a: $44
	ld b, l                                          ; $496b: $45
	and b                                            ; $496c: $a0
	ld d, d                                          ; $496d: $52
	inc [hl]                                         ; $496e: $34
	jr c, @+$3a                                      ; $496f: $38 $38

	ld h, e                                          ; $4971: $63
	xor b                                            ; $4972: $a8
	or h                                             ; $4973: $b4
	xor h                                            ; $4974: $ac
	add sp, -$16                                     ; $4975: $e8 $ea
	and b                                            ; $4977: $a0
	cpl                                              ; $4978: $2f
	ld b, e                                          ; $4979: $43
	db $ec                                           ; $497a: $ec
	pop hl                                           ; $497b: $e1
	db $eb                                           ; $497c: $eb
	ld [$ecac], sp                                   ; $497d: $08 $ac $ec

jr_093_4980:
	ld c, $49                                        ; $4980: $0e $49

jr_093_4982:
	ld [hl], d                                       ; $4982: $72
	ld c, [hl]                                       ; $4983: $4e
	ld b, c                                          ; $4984: $41
	ld b, h                                          ; $4985: $44
	ld e, l                                          ; $4986: $5d
	ld e, d                                          ; $4987: $5a
	ld c, b                                          ; $4988: $48
	and b                                            ; $4989: $a0
	ld [$45ec], a                                    ; $498a: $ea $ec $45
	xor b                                            ; $498d: $a8
	adc e                                            ; $498e: $8b
	ld e, h                                          ; $498f: $5c
	ld c, d                                          ; $4990: $4a
	ld a, $66                                        ; $4991: $3e $66

jr_093_4993:
	add hl, sp                                       ; $4993: $39
	inc [hl]                                         ; $4994: $34
	ld d, h                                          ; $4995: $54
	add hl, sp                                       ; $4996: $39
	jr c, jr_093_49d2                                ; $4997: $38 $39

	ld b, d                                          ; $4999: $42
	and b                                            ; $499a: $a0
	cpl                                              ; $499b: $2f
	ld b, e                                          ; $499c: $43
	ld b, b                                          ; $499d: $40
	ld d, a                                          ; $499e: $57
	ld d, [hl]                                       ; $499f: $56
	inc [hl]                                         ; $49a0: $34
	ldh a, [$64]                                     ; $49a1: $f0 $64
	jr c, jr_093_4a00                                ; $49a3: $38 $5b

	ld d, [hl]                                       ; $49a5: $56
	inc de                                           ; $49a6: $13
	ld a, [hl-]                                      ; $49a7: $3a
	jr c, jr_093_4a07                                ; $49a8: $38 $5d

	ld e, d                                          ; $49aa: $5a
	xor b                                            ; $49ab: $a8
	ret                                              ; $49ac: $c9


	inc [hl]                                         ; $49ad: $34
	db $eb                                           ; $49ae: $eb
	ld c, a                                          ; $49af: $4f
	ld c, h                                          ; $49b0: $4c
	and b                                            ; $49b1: $a0
	db $ec                                           ; $49b2: $ec
	db $d3                                           ; $49b3: $d3
	xor c                                            ; $49b4: $a9
	ld b, [hl]                                       ; $49b5: $46
	ld a, [hl-]                                      ; $49b6: $3a
	dec a                                            ; $49b7: $3d
	ld d, e                                          ; $49b8: $53
	db $f4                                           ; $49b9: $f4
	push af                                          ; $49ba: $f5
	jr c, jr_093_4a07                                ; $49bb: $38 $4a

	ld c, [hl]                                       ; $49bd: $4e
	inc de                                           ; $49be: $13
	ld h, e                                          ; $49bf: $63
	ld e, l                                          ; $49c0: $5d
	db $ec                                           ; $49c1: $ec
	ret c                                            ; $49c2: $d8

	ld b, d                                          ; $49c3: $42
	ld b, a                                          ; $49c4: $47
	and b                                            ; $49c5: $a0
	cpl                                              ; $49c6: $2f
	ld b, e                                          ; $49c7: $43
	ld b, b                                          ; $49c8: $40
	add hl, sp                                       ; $49c9: $39
	jr c, jr_093_4a05                                ; $49ca: $38 $39

	ldh a, [c]                                       ; $49cc: $f2
	ld h, e                                          ; $49cd: $63
	pop af                                           ; $49ce: $f1
	jp Jump_093_565b                                 ; $49cf: $c3 $5b $56


jr_093_49d2:
	inc de                                           ; $49d2: $13
	ld a, [hl-]                                      ; $49d3: $3a
	ld d, l                                          ; $49d4: $55
	ccf                                              ; $49d5: $3f
	xor b                                            ; $49d6: $a8
	db $ec                                           ; $49d7: $ec
	pop hl                                           ; $49d8: $e1
	ld c, e                                          ; $49d9: $4b
	db $eb                                           ; $49da: $eb
	ld l, d                                          ; $49db: $6a
	ld a, [hl-]                                      ; $49dc: $3a
	jr c, jr_093_4980                                ; $49dd: $38 $a1

	ldh a, [$34]                                     ; $49df: $f0 $34
	ld b, a                                          ; $49e1: $47
	xor b                                            ; $49e2: $a8
	ld l, a                                          ; $49e3: $6f
	ld d, e                                          ; $49e4: $53
	db $f4                                           ; $49e5: $f4
	push af                                          ; $49e6: $f5
	jr c, jr_093_4a33                                ; $49e7: $38 $4a

	ld c, [hl]                                       ; $49e9: $4e
	ld h, e                                          ; $49ea: $63
	ld e, l                                          ; $49eb: $5d
	db $ec                                           ; $49ec: $ec
	ret c                                            ; $49ed: $d8

	ld h, e                                          ; $49ee: $63
	and b                                            ; $49ef: $a0
	cpl                                              ; $49f0: $2f
	ld b, e                                          ; $49f1: $43
	rst JumpTable                                          ; $49f2: $c7
	xor b                                            ; $49f3: $a8
	ld b, b                                          ; $49f4: $40
	ld c, l                                          ; $49f5: $4d
	ld a, [hl-]                                      ; $49f6: $3a
	ld d, b                                          ; $49f7: $50
	jr c, jr_093_4a32                                ; $49f8: $38 $38

	ld b, c                                          ; $49fa: $41
	ld b, h                                          ; $49fb: $44
	ld e, l                                          ; $49fc: $5d
	ld e, d                                          ; $49fd: $5a
	ld c, b                                          ; $49fe: $48
	and b                                            ; $49ff: $a0

jr_093_4a00:
	ld e, e                                          ; $4a00: $5b
	ld d, [hl]                                       ; $4a01: $56
	ld b, [hl]                                       ; $4a02: $46
	ld l, a                                          ; $4a03: $6f
	inc [hl]                                         ; $4a04: $34

jr_093_4a05:
	ldh a, [rAUD2LEN]                                ; $4a05: $f0 $16

jr_093_4a07:
	ld d, e                                          ; $4a07: $53
	inc de                                           ; $4a08: $13
	ld b, [hl]                                       ; $4a09: $46
	ld c, [hl]                                       ; $4a0a: $4e
	inc a                                            ; $4a0b: $3c
	ld d, b                                          ; $4a0c: $50
	ld c, b                                          ; $4a0d: $48
	xor h                                            ; $4a0e: $ac
	add sp, -$16                                     ; $4a0f: $e8 $ea
	and b                                            ; $4a11: $a0
	cpl                                              ; $4a12: $2f
	ld b, e                                          ; $4a13: $43
	db $ec                                           ; $4a14: $ec
	reti                                             ; $4a15: $d9


	inc [hl]                                         ; $4a16: $34
	ld sp, hl                                        ; $4a17: $f9
	jp Jump_093_4257                                 ; $4a18: $c3 $57 $42


	add h                                            ; $4a1b: $84
	ld b, d                                          ; $4a1c: $42
	inc de                                           ; $4a1d: $13
	ldh a, [rAUD3LEVEL]                              ; $4a1e: $f0 $1c
	ld d, e                                          ; $4a20: $53
	ld a, a                                          ; $4a21: $7f
	ld b, a                                          ; $4a22: $47
	ld a, [hl-]                                      ; $4a23: $3a
	ld c, [hl]                                       ; $4a24: $4e
	ld a, [hl-]                                      ; $4a25: $3a
	xor l                                            ; $4a26: $ad
	ld a, d                                          ; $4a27: $7a
	ld e, a                                          ; $4a28: $5f
	ld c, b                                          ; $4a29: $48
	and b                                            ; $4a2a: $a0
	jp hl                                            ; $4a2b: $e9


	push af                                          ; $4a2c: $f5
	and b                                            ; $4a2d: $a0
	cpl                                              ; $4a2e: $2f
	ld b, e                                          ; $4a2f: $43
	db $eb                                           ; $4a30: $eb
	add hl, bc                                       ; $4a31: $09

jr_093_4a32:
	xor h                                            ; $4a32: $ac

jr_093_4a33:
	db $eb                                           ; $4a33: $eb
	ld a, [bc]                                       ; $4a34: $0a
	inc de                                           ; $4a35: $13
	ld [$a07b], a                                    ; $4a36: $ea $7b $a0
	db $eb                                           ; $4a39: $eb
	ld [hl], h                                       ; $4a3a: $74
	xor h                                            ; $4a3b: $ac
	ld [$a860], a                                    ; $4a3c: $ea $60 $a8
	jp hl                                            ; $4a3f: $e9


	or $a1                                           ; $4a40: $f6 $a1
	cpl                                              ; $4a42: $2f
	db $eb                                           ; $4a43: $eb
	dec bc                                           ; $4a44: $0b
	add hl, bc                                       ; $4a45: $09
	db $eb                                           ; $4a46: $eb
	sbc [hl]                                         ; $4a47: $9e
	inc [hl]                                         ; $4a48: $34
	db $eb                                           ; $4a49: $eb
	sbc [hl]                                         ; $4a4a: $9e
	xor b                                            ; $4a4b: $a8
	ld [$347c], a                                    ; $4a4c: $ea $7c $34
	db $ec                                           ; $4a4f: $ec
	add b                                            ; $4a50: $80
	and b                                            ; $4a51: $a0
	cpl                                              ; $4a52: $2f
	ld b, e                                          ; $4a53: $43
	add sp, -$02                                     ; $4a54: $e8 $fe
	and b                                            ; $4a56: $a0
	jp hl                                            ; $4a57: $e9


	rst FarCall                                          ; $4a58: $f7
	xor b                                            ; $4a59: $a8
	db $eb                                           ; $4a5a: $eb
	call nz, $2fa0                                   ; $4a5b: $c4 $a0 $2f
	ld b, e                                          ; $4a5e: $43
	db $ec                                           ; $4a5f: $ec
	pop hl                                           ; $4a60: $e1
	ld d, e                                          ; $4a61: $53
	jr c, jr_093_4ab2                                ; $4a62: $38 $4e

	ld c, c                                          ; $4a64: $49
	inc de                                           ; $4a65: $13
	ld [$ad4d], a                                    ; $4a66: $ea $4d $ad
	db $eb                                           ; $4a69: $eb
	inc c                                            ; $4a6a: $0c
	and b                                            ; $4a6b: $a0
	cpl                                              ; $4a6c: $2f
	add sp, $3b                                      ; $4a6d: $e8 $3b
	add hl, bc                                       ; $4a6f: $09
	ld [$a97d], a                                    ; $4a70: $ea $7d $a9
	ld [$a07e], a                                    ; $4a73: $ea $7e $a0
	cpl                                              ; $4a76: $2f
	ld b, e                                          ; $4a77: $43
	ld h, h                                          ; $4a78: $64
	sbc [hl]                                         ; $4a79: $9e
	ld c, c                                          ; $4a7a: $49
	inc de                                           ; $4a7b: $13
	xor $06                                          ; $4a7c: $ee $06
	ld b, a                                          ; $4a7e: $47
	ld d, c                                          ; $4a7f: $51
	ld c, [hl]                                       ; $4a80: $4e
	ld a, [hl-]                                      ; $4a81: $3a
	ld b, l                                          ; $4a82: $45
	ld a, [hl-]                                      ; $4a83: $3a
	and b                                            ; $4a84: $a0
	db $ec                                           ; $4a85: $ec
	ld sp, $e8a8                                     ; $4a86: $31 $a8 $e8
	rst $38                                          ; $4a89: $ff
	and b                                            ; $4a8a: $a0
	cpl                                              ; $4a8b: $2f
	ld b, e                                          ; $4a8c: $43
	jp hl                                            ; $4a8d: $e9


	ld l, a                                          ; $4a8e: $6f
	and b                                            ; $4a8f: $a0
	ld b, [hl]                                       ; $4a90: $46
	dec sp                                           ; $4a91: $3b
	inc [hl]                                         ; $4a92: $34
	db $eb                                           ; $4a93: $eb
	sbc c                                            ; $4a94: $99
	xor h                                            ; $4a95: $ac
	db $ec                                           ; $4a96: $ec
	cp c                                             ; $4a97: $b9
	inc [hl]                                         ; $4a98: $34
	ld a, b                                          ; $4a99: $78
	ccf                                              ; $4a9a: $3f
	ld d, l                                          ; $4a9b: $55
	ld c, l                                          ; $4a9c: $4d
	ccf                                              ; $4a9d: $3f
	and b                                            ; $4a9e: $a0
	cpl                                              ; $4a9f: $2f
	ld b, e                                          ; $4aa0: $43
	db $eb                                           ; $4aa1: $eb
	ld [hl-], a                                      ; $4aa2: $32
	inc de                                           ; $4aa3: $13
	db $eb                                           ; $4aa4: $eb
	adc b                                            ; $4aa5: $88
	db $ec                                           ; $4aa6: $ec
	ld [hl+], a                                      ; $4aa7: $22
	and b                                            ; $4aa8: $a0
	db $ec                                           ; $4aa9: $ec
	db $f4                                           ; $4aaa: $f4
	xor h                                            ; $4aab: $ac
	add sp, -$16                                     ; $4aac: $e8 $ea
	and b                                            ; $4aae: $a0
	cpl                                              ; $4aaf: $2f
	ld b, e                                          ; $4ab0: $43
	jp hl                                            ; $4ab1: $e9


jr_093_4ab2:
	rst SubAFromDE                                          ; $4ab2: $df

jr_093_4ab3:
	and b                                            ; $4ab3: $a0
	db $eb                                           ; $4ab4: $eb
	ld d, b                                          ; $4ab5: $50
	and c                                            ; $4ab6: $a1
	cpl                                              ; $4ab7: $2f
	ld b, e                                          ; $4ab8: $43
	db $ec                                           ; $4ab9: $ec
	add hl, sp                                       ; $4aba: $39
	jr c, jr_093_4af5                                ; $4abb: $38 $38

	ldh a, [$3f]                                     ; $4abd: $f0 $3f
	ld b, h                                          ; $4abf: $44

jr_093_4ac0:
	ld b, l                                          ; $4ac0: $45
	xor b                                            ; $4ac1: $a8
	ldh a, [rVBK]                                    ; $4ac2: $f0 $4f
	ld d, e                                          ; $4ac4: $53
	ldh a, [c]                                       ; $4ac5: $f2
	di                                               ; $4ac6: $f3
	ld h, e                                          ; $4ac7: $63
	ld c, l                                          ; $4ac8: $4d
	ld c, [hl]                                       ; $4ac9: $4e
	ld a, a                                          ; $4aca: $7f
	ld d, e                                          ; $4acb: $53
	ld a, $3d                                        ; $4acc: $3e $3d
	ld c, h                                          ; $4ace: $4c
	and b                                            ; $4acf: $a0
	ld a, a                                          ; $4ad0: $7f
	ld b, a                                          ; $4ad1: $47
	sub [hl]                                         ; $4ad2: $96
	dec sp                                           ; $4ad3: $3b
	ccf                                              ; $4ad4: $3f
	ld c, a                                          ; $4ad5: $4f
	ld d, b                                          ; $4ad6: $50
	ld e, [hl]                                       ; $4ad7: $5e
	dec a                                            ; $4ad8: $3d
	xor c                                            ; $4ad9: $a9
	db $ed                                           ; $4ada: $ed
	dec hl                                           ; $4adb: $2b
	ld b, h                                          ; $4adc: $44
	dec sp                                           ; $4add: $3b
	dec a                                            ; $4ade: $3d
	ld b, d                                          ; $4adf: $42
	ld b, l                                          ; $4ae0: $45
	and b                                            ; $4ae1: $a0
	cpl                                              ; $4ae2: $2f
	ld b, e                                          ; $4ae3: $43
	ld e, d                                          ; $4ae4: $5a
	ld h, h                                          ; $4ae5: $64
	ld d, a                                          ; $4ae6: $57
	ld c, d                                          ; $4ae7: $4a
	xor h                                            ; $4ae8: $ac
	jr c, jr_093_4b23                                ; $4ae9: $38 $38

	ldh a, [$3f]                                     ; $4aeb: $f0 $3f
	ld b, h                                          ; $4aed: $44
	ld c, c                                          ; $4aee: $49
	ld [hl], a                                       ; $4aef: $77
	dec sp                                           ; $4af0: $3b
	dec a                                            ; $4af1: $3d
	ld b, l                                          ; $4af2: $45
	and b                                            ; $4af3: $a0
	db $eb                                           ; $4af4: $eb

jr_093_4af5:
	ld e, l                                          ; $4af5: $5d
	xor h                                            ; $4af6: $ac
	pop af                                           ; $4af7: $f1
	db $d3                                           ; $4af8: $d3
	ld [hl], c                                       ; $4af9: $71
	ccf                                              ; $4afa: $3f
	ld d, l                                          ; $4afb: $55
	ld c, l                                          ; $4afc: $4d
	ccf                                              ; $4afd: $3f
	and b                                            ; $4afe: $a0
	cpl                                              ; $4aff: $2f
	ld b, e                                          ; $4b00: $43
	db $ed                                           ; $4b01: $ed
	ld b, l                                          ; $4b02: $45
	xor h                                            ; $4b03: $ac
	jp hl                                            ; $4b04: $e9


	inc l                                            ; $4b05: $2c
	and b                                            ; $4b06: $a0
	jp hl                                            ; $4b07: $e9


	add h                                            ; $4b08: $84
	xor h                                            ; $4b09: $ac
	ld b, [hl]                                       ; $4b0a: $46
	ld d, a                                          ; $4b0b: $57
	ld d, e                                          ; $4b0c: $53
	ld c, c                                          ; $4b0d: $49
	add hl, sp                                       ; $4b0e: $39
	xor b                                            ; $4b0f: $a8
	jp hl                                            ; $4b10: $e9


	jr nz, jr_093_4ab3                               ; $4b11: $20 $a0

	ld b, [hl]                                       ; $4b13: $46
	dec sp                                           ; $4b14: $3b
	inc [hl]                                         ; $4b15: $34
	db $eb                                           ; $4b16: $eb
	sbc c                                            ; $4b17: $99
	xor h                                            ; $4b18: $ac
	jr c, jr_093_4b6b                                ; $4b19: $38 $50

	dec sp                                           ; $4b1b: $3b
	ld a, $56                                        ; $4b1c: $3e $56
	jr c, jr_093_4ac0                                ; $4b1e: $38 $a0

	db $ec                                           ; $4b20: $ec
	db $f4                                           ; $4b21: $f4
	xor b                                            ; $4b22: $a8

jr_093_4b23:
	ld [hl], a                                       ; $4b23: $77
	add hl, sp                                       ; $4b24: $39

jr_093_4b25:
	db $ed                                           ; $4b25: $ed
	sbc $34                                          ; $4b26: $de $34
	ld [hl], d                                       ; $4b28: $72
	ccf                                              ; $4b29: $3f
	jr c, jr_093_4b67                                ; $4b2a: $38 $3b

	ccf                                              ; $4b2c: $3f
	ld c, h                                          ; $4b2d: $4c
	and b                                            ; $4b2e: $a0
	db $ed                                           ; $4b2f: $ed
	ld [hl], a                                       ; $4b30: $77
	ld c, e                                          ; $4b31: $4b
	and c                                            ; $4b32: $a1
	db $ec                                           ; $4b33: $ec
	cp c                                             ; $4b34: $b9
	ld h, e                                          ; $4b35: $63
	xor b                                            ; $4b36: $a8
	ldh a, [$3f]                                     ; $4b37: $f0 $3f
	ld b, d                                          ; $4b39: $42
	pop af                                           ; $4b3a: $f1
	dec sp                                           ; $4b3b: $3b
	ld c, [hl]                                       ; $4b3c: $4e
	add h                                            ; $4b3d: $84
	ld c, d                                          ; $4b3e: $4a
	and b                                            ; $4b3f: $a0
	cpl                                              ; $4b40: $2f
	ld b, e                                          ; $4b41: $43
	rst JumpTable                                          ; $4b42: $c7
	xor c                                            ; $4b43: $a9
	ld b, b                                          ; $4b44: $40
	ld b, c                                          ; $4b45: $41
	ld a, [hl-]                                      ; $4b46: $3a
	ld d, h                                          ; $4b47: $54
	ld c, c                                          ; $4b48: $49
	ld a, [hl-]                                      ; $4b49: $3a
	jr c, jr_093_4b95                                ; $4b4a: $38 $49

	ld [hl], a                                       ; $4b4c: $77
	add hl, sp                                       ; $4b4d: $39
	ld e, l                                          ; $4b4e: $5d
	ld e, d                                          ; $4b4f: $5a
	ld c, b                                          ; $4b50: $48
	and b                                            ; $4b51: $a0
	jr c, jr_093_4b8c                                ; $4b52: $38 $38

	ld b, d                                          ; $4b54: $42
	ld b, l                                          ; $4b55: $45
	xor b                                            ; $4b56: $a8
	ldh a, [$34]                                     ; $4b57: $f0 $34
	ld b, a                                          ; $4b59: $47
	inc [hl]                                         ; $4b5a: $34
	ld a, [$f8bb]                                    ; $4b5b: $fa $bb $f8
	or a                                             ; $4b5e: $b7
	ld a, $3a                                        ; $4b5f: $3e $3a
	ld d, l                                          ; $4b61: $55
	ccf                                              ; $4b62: $3f
	ld c, a                                          ; $4b63: $4f
	and b                                            ; $4b64: $a0
	ld a, d                                          ; $4b65: $7a
	ld c, [hl]                                       ; $4b66: $4e

jr_093_4b67:
	ld b, d                                          ; $4b67: $42
	ld c, h                                          ; $4b68: $4c
	xor b                                            ; $4b69: $a8
	db $eb                                           ; $4b6a: $eb

jr_093_4b6b:
	ld e, l                                          ; $4b6b: $5d
	inc [hl]                                         ; $4b6c: $34
	ld [hl], d                                       ; $4b6d: $72
	ld b, a                                          ; $4b6e: $47
	ld a, b                                          ; $4b6f: $78
	ccf                                              ; $4b70: $3f
	ld d, l                                          ; $4b71: $55
	ld c, l                                          ; $4b72: $4d
	ccf                                              ; $4b73: $3f
	inc de                                           ; $4b74: $13
	ld b, [hl]                                       ; $4b75: $46
	ld d, a                                          ; $4b76: $57
	ld d, e                                          ; $4b77: $53
	ld c, c                                          ; $4b78: $49
	add hl, sp                                       ; $4b79: $39
	and b                                            ; $4b7a: $a0
	ld b, [hl]                                       ; $4b7b: $46
	dec sp                                           ; $4b7c: $3b
	xor h                                            ; $4b7d: $ac
	jr c, jr_093_4bd0                                ; $4b7e: $38 $50

	dec sp                                           ; $4b80: $3b
	ld a, $56                                        ; $4b81: $3e $56
	jr c, jr_093_4b25                                ; $4b83: $38 $a0

	db $ec                                           ; $4b85: $ec
	db $f4                                           ; $4b86: $f4
	xor h                                            ; $4b87: $ac
	ld e, e                                          ; $4b88: $5b
	dec sp                                           ; $4b89: $3b
	ld d, l                                          ; $4b8a: $55
	ld d, a                                          ; $4b8b: $57

jr_093_4b8c:
	ld c, c                                          ; $4b8c: $49
	ld [hl], d                                       ; $4b8d: $72
	ccf                                              ; $4b8e: $3f
	jr c, jr_093_4bcc                                ; $4b8f: $38 $3b

	ccf                                              ; $4b91: $3f
	ld c, h                                          ; $4b92: $4c
	and b                                            ; $4b93: $a0
	cpl                                              ; $4b94: $2f

jr_093_4b95:
	ld b, e                                          ; $4b95: $43
	jp hl                                            ; $4b96: $e9


	add e                                            ; $4b97: $83
	xor b                                            ; $4b98: $a8
	sbc $a0                                          ; $4b99: $de $a0
	pop af                                           ; $4b9b: $f1
	or b                                             ; $4b9c: $b0
	ldh a, [$3f]                                     ; $4b9d: $f0 $3f
	ld b, d                                          ; $4b9f: $42
	ld a, [hl]                                       ; $4ba0: $7e
	ld e, b                                          ; $4ba1: $58
	ld d, e                                          ; $4ba2: $53
	pop af                                           ; $4ba3: $f1
	dec sp                                           ; $4ba4: $3b
	ld c, [hl]                                       ; $4ba5: $4e
	inc de                                           ; $4ba6: $13
	ld a, [hl-]                                      ; $4ba7: $3a
	ld b, c                                          ; $4ba8: $41
	ccf                                              ; $4ba9: $3f
	inc [hl]                                         ; $4baa: $34
	ld [hl], d                                       ; $4bab: $72
	ldh a, [hDisp1_WX]                                     ; $4bac: $f0 $96
	ld a, $3d                                        ; $4bae: $3e $3d
	ld h, e                                          ; $4bb0: $63
	and b                                            ; $4bb1: $a0
	cpl                                              ; $4bb2: $2f
	ld b, e                                          ; $4bb3: $43
	rst JumpTable                                          ; $4bb4: $c7
	and c                                            ; $4bb5: $a1
	ld c, d                                          ; $4bb6: $4a
	ld c, a                                          ; $4bb7: $4f

jr_093_4bb8:
	inc [hl]                                         ; $4bb8: $34
	ld b, l                                          ; $4bb9: $45
	ld d, l                                          ; $4bba: $55
	ldh a, [$a4]                                     ; $4bbb: $f0 $a4
	ld e, [hl]                                       ; $4bbd: $5e
	dec a                                            ; $4bbe: $3d
	ld d, b                                          ; $4bbf: $50
	xor h                                            ; $4bc0: $ac
	ld b, b                                          ; $4bc1: $40
	ld b, d                                          ; $4bc2: $42
	sbc l                                            ; $4bc3: $9d
	ld d, b                                          ; $4bc4: $50
	jr c, jr_093_4bb8                                ; $4bc5: $38 $f1

	dec sp                                           ; $4bc7: $3b
	ld c, [hl]                                       ; $4bc8: $4e
	ld h, e                                          ; $4bc9: $63
	ld c, h                                          ; $4bca: $4c
	and b                                            ; $4bcb: $a0

jr_093_4bcc:
	cpl                                              ; $4bcc: $2f
	ld b, e                                          ; $4bcd: $43
	xor $10                                          ; $4bce: $ee $10

jr_093_4bd0:
	dec [hl]                                         ; $4bd0: $35
	rla                                              ; $4bd1: $17
	db $ed                                           ; $4bd2: $ed
	ld b, l                                          ; $4bd3: $45
	xor h                                            ; $4bd4: $ac
	jp hl                                            ; $4bd5: $e9


	inc l                                            ; $4bd6: $2c
	and b                                            ; $4bd7: $a0
	ld a, d                                          ; $4bd8: $7a
	ld c, [hl]                                       ; $4bd9: $4e
	ld b, d                                          ; $4bda: $42
	xor c                                            ; $4bdb: $a9
	jp hl                                            ; $4bdc: $e9


	jr nz, @-$5e                                     ; $4bdd: $20 $a0

	cpl                                              ; $4bdf: $2f
	ld b, e                                          ; $4be0: $43
	db $ec                                           ; $4be1: $ec
	pop hl                                           ; $4be2: $e1
	db $eb                                           ; $4be3: $eb
	inc sp                                           ; $4be4: $33
	xor b                                            ; $4be5: $a8
	db $eb                                           ; $4be6: $eb
	inc [hl]                                         ; $4be7: $34
	xor h                                            ; $4be8: $ac
	xor $08                                          ; $4be9: $ee $08
	ld c, d                                          ; $4beb: $4a
	ldh a, [$3f]                                     ; $4bec: $f0 $3f
	ld c, d                                          ; $4bee: $4a
	ld c, a                                          ; $4bef: $4f
	ld [hl], d                                       ; $4bf0: $72
	ld c, [hl]                                       ; $4bf1: $4e
	inc a                                            ; $4bf2: $3c
	and b                                            ; $4bf3: $a0
	cpl                                              ; $4bf4: $2f
	ld b, e                                          ; $4bf5: $43
	ldh a, [$80]                                     ; $4bf6: $f0 $80
	ldh a, [$c5]                                     ; $4bf8: $f0 $c5
	jr c, jr_093_4c34                                ; $4bfa: $38 $38

	ldh a, [$3f]                                     ; $4bfc: $f0 $3f
	ld b, h                                          ; $4bfe: $44
	dec sp                                           ; $4bff: $3b
	dec a                                            ; $4c00: $3d
	ld a, [hl-]                                      ; $4c01: $3a
	and b                                            ; $4c02: $a0
	add hl, bc                                       ; $4c03: $09
	ldh a, [$b2]                                     ; $4c04: $f0 $b2
	ldh a, [rKEY1]                                   ; $4c06: $f0 $4d
	ld b, a                                          ; $4c08: $47
	ld a, b                                          ; $4c09: $78
	ccf                                              ; $4c0a: $3f
	ld b, [hl]                                       ; $4c0b: $46
	ldh a, [rSB]                                     ; $4c0c: $f0 $01
	dec a                                            ; $4c0e: $3d
	ld h, e                                          ; $4c0f: $63
	ld b, l                                          ; $4c10: $45
	and b                                            ; $4c11: $a0
	cpl                                              ; $4c12: $2f
	ld b, e                                          ; $4c13: $43
	db $ec                                           ; $4c14: $ec
	cp c                                             ; $4c15: $b9
	xor b                                            ; $4c16: $a8
	add sp, -$6d                                     ; $4c17: $e8 $93
	and b                                            ; $4c19: $a0
	xor $14                                          ; $4c1a: $ee $14
	inc [hl]                                         ; $4c1c: $34
	ld d, h                                          ; $4c1d: $54
	ld b, d                                          ; $4c1e: $42
	sbc e                                            ; $4c1f: $9b
	xor l                                            ; $4c20: $ad
	ld l, a                                          ; $4c21: $6f
	ld b, d                                          ; $4c22: $42
	dec a                                            ; $4c23: $3d
	ld [hl], c                                       ; $4c24: $71
	ld b, a                                          ; $4c25: $47
	pop af                                           ; $4c26: $f1
	ld l, $38                                        ; $4c27: $2e $38
	ccf                                              ; $4c29: $3f
	ld d, l                                          ; $4c2a: $55
	ld c, l                                          ; $4c2b: $4d
	dec a                                            ; $4c2c: $3d
	ld b, d                                          ; $4c2d: $42
	inc a                                            ; $4c2e: $3c
	ld a, $50                                        ; $4c2f: $3e $50
	and c                                            ; $4c31: $a1
	cpl                                              ; $4c32: $2f
	ld b, e                                          ; $4c33: $43

jr_093_4c34:
	ld b, b                                          ; $4c34: $40
	add hl, sp                                       ; $4c35: $39
	inc a                                            ; $4c36: $3c
	ld c, a                                          ; $4c37: $4f
	ld a, $4d                                        ; $4c38: $3e $4d
	ld a, [hl-]                                      ; $4c3a: $3a
	jr c, jr_093_4c89                                ; $4c3b: $38 $4c

	and b                                            ; $4c3d: $a0
	ld d, h                                          ; $4c3e: $54
	ld c, l                                          ; $4c3f: $4d
	inc [hl]                                         ; $4c40: $34
	ld b, [hl]                                       ; $4c41: $46
	ld a, [hl-]                                      ; $4c42: $3a
	dec a                                            ; $4c43: $3d
	ld b, d                                          ; $4c44: $42
	inc de                                           ; $4c45: $13
	sbc e                                            ; $4c46: $9b
	db $ec                                           ; $4c47: $ec
	ret c                                            ; $4c48: $d8

	ld b, d                                          ; $4c49: $42
	and c                                            ; $4c4a: $a1
	cpl                                              ; $4c4b: $2f
	ld b, e                                          ; $4c4c: $43
	ldh a, [$f5]                                     ; $4c4d: $f0 $f5
	add hl, sp                                       ; $4c4f: $39
	ld b, l                                          ; $4c50: $45
	and b                                            ; $4c51: $a0
	ld l, e                                          ; $4c52: $6b
	ld b, h                                          ; $4c53: $44
	inc [hl]                                         ; $4c54: $34
	db $d3                                           ; $4c55: $d3
	and b                                            ; $4c56: $a0
	cpl                                              ; $4c57: $2f
	ld b, e                                          ; $4c58: $43
	add sp, -$2d                                     ; $4c59: $e8 $d3
	inc de                                           ; $4c5b: $13
	jp hl                                            ; $4c5c: $e9


	dec a                                            ; $4c5d: $3d
	xor b                                            ; $4c5e: $a8
	add sp, -$7b                                     ; $4c5f: $e8 $85
	and c                                            ; $4c61: $a1
	call c, $f234                                    ; $4c62: $dc $34 $f2
	rst JumpTable                                          ; $4c65: $c7
	ld d, l                                          ; $4c66: $55
	ld h, e                                          ; $4c67: $63
	xor b                                            ; $4c68: $a8
	or h                                             ; $4c69: $b4
	xor h                                            ; $4c6a: $ac
	db $ec                                           ; $4c6b: $ec
	push bc                                          ; $4c6c: $c5
	inc [hl]                                         ; $4c6d: $34
	ldh a, [rHDMA5]                                  ; $4c6e: $f0 $55
	ldh a, [rBCPS]                                   ; $4c70: $f0 $68
	ld d, c                                          ; $4c72: $51
	ld c, [hl]                                       ; $4c73: $4e
	ld h, e                                          ; $4c74: $63
	ld c, h                                          ; $4c75: $4c
	and b                                            ; $4c76: $a0
	cpl                                              ; $4c77: $2f
	ld b, e                                          ; $4c78: $43
	ld e, [hl]                                       ; $4c79: $5e
	add l                                            ; $4c7a: $85
	xor b                                            ; $4c7b: $a8
	jp hl                                            ; $4c7c: $e9


	or e                                             ; $4c7d: $b3
	and c                                            ; $4c7e: $a1
	ld l, a                                          ; $4c7f: $6f
	ld d, e                                          ; $4c80: $53
	ld h, a                                          ; $4c81: $67
	inc a                                            ; $4c82: $3c
	ld a, [hl-]                                      ; $4c83: $3a
	jr c, jr_093_4ccf                                ; $4c84: $38 $49

	xor h                                            ; $4c86: $ac
	ldh a, [c]                                       ; $4c87: $f2
	rst SubAFromHL                                          ; $4c88: $d7

jr_093_4c89:
	ld a, $f0                                        ; $4c89: $3e $f0
	cp [hl]                                          ; $4c8b: $be
	add h                                            ; $4c8c: $84
	ld d, e                                          ; $4c8d: $53
	adc $38                                          ; $4c8e: $ce $38
	ld c, [hl]                                       ; $4c90: $4e
	ld b, d                                          ; $4c91: $42
	ld b, l                                          ; $4c92: $45
	and b                                            ; $4c93: $a0
	ld l, a                                          ; $4c94: $6f
	ld b, d                                          ; $4c95: $42
	adc d                                            ; $4c96: $8a
	ld a, $58                                        ; $4c97: $3e $58
	ld h, d                                          ; $4c99: $62
	di                                               ; $4c9a: $f3
	ld l, a                                          ; $4c9b: $6f
	ld e, [hl]                                       ; $4c9c: $5e
	dec a                                            ; $4c9d: $3d
	inc de                                           ; $4c9e: $13
	sbc e                                            ; $4c9f: $9b
	ld c, e                                          ; $4ca0: $4b
	ld b, [hl]                                       ; $4ca1: $46
	ld c, [hl]                                       ; $4ca2: $4e
	inc a                                            ; $4ca3: $3c
	ld a, $50                                        ; $4ca4: $3e $50
	and b                                            ; $4ca6: $a0
	cpl                                              ; $4ca7: $2f
	ld b, e                                          ; $4ca8: $43
	ld b, [hl]                                       ; $4ca9: $46
	ld c, [hl]                                       ; $4caa: $4e
	inc a                                            ; $4cab: $3c
	ld a, [hl-]                                      ; $4cac: $3a
	ld [hl], h                                       ; $4cad: $74
	and b                                            ; $4cae: $a0
	ld d, h                                          ; $4caf: $54
	ld b, d                                          ; $4cb0: $42
	adc c                                            ; $4cb1: $89
	sbc a                                            ; $4cb2: $9f
	ld b, d                                          ; $4cb3: $42
	add h                                            ; $4cb4: $84
	ld a, [hl-]                                      ; $4cb5: $3a
	ld d, b                                          ; $4cb6: $50
	xor h                                            ; $4cb7: $ac
	ld b, b                                          ; $4cb8: $40
	add hl, sp                                       ; $4cb9: $39
	jr c, @+$3b                                      ; $4cba: $38 $39

	sbc e                                            ; $4cbc: $9b
	ld h, d                                          ; $4cbd: $62
	inc de                                           ; $4cbe: $13
	push af                                          ; $4cbf: $f5
	ld [hl], $57                                     ; $4cc0: $36 $57
	dec a                                            ; $4cc2: $3d
	ld d, l                                          ; $4cc3: $55
	ld a, [hl-]                                      ; $4cc4: $3a
	ld c, [hl]                                       ; $4cc5: $4e
	ld c, a                                          ; $4cc6: $4f
	ld b, d                                          ; $4cc7: $42
	ld b, l                                          ; $4cc8: $45
	and b                                            ; $4cc9: $a0
	ld d, h                                          ; $4cca: $54
	ld b, d                                          ; $4ccb: $42
	ldh a, [rAUD2HIGH]                               ; $4ccc: $f0 $19
	ld b, a                                          ; $4cce: $47

jr_093_4ccf:
	ld b, [hl]                                       ; $4ccf: $46
	ld c, [hl]                                       ; $4cd0: $4e
	ld b, d                                          ; $4cd1: $42
	ld c, h                                          ; $4cd2: $4c
	xor b                                            ; $4cd3: $a8
	ld b, b                                          ; $4cd4: $40
	ld c, l                                          ; $4cd5: $4d
	ld a, [hl-]                                      ; $4cd6: $3a
	ld d, b                                          ; $4cd7: $50
	ldh a, [c]                                       ; $4cd8: $f2
	rst JumpTable                                          ; $4cd9: $c7
	ld d, l                                          ; $4cda: $55
	ld h, e                                          ; $4cdb: $63
	and b                                            ; $4cdc: $a0
	cpl                                              ; $4cdd: $2f
	ld b, e                                          ; $4cde: $43
	halt                                             ; $4cdf: $76
	ld c, e                                          ; $4ce0: $4b
	xor h                                            ; $4ce1: $ac

jr_093_4ce2:
	ldh a, [rAUD1LOW]                                ; $4ce2: $f0 $13
	jr c, @+$4b                                      ; $4ce4: $38 $49

	ld [hl], a                                       ; $4ce6: $77
	add hl, sp                                       ; $4ce7: $39
	ld e, l                                          ; $4ce8: $5d
	ld e, d                                          ; $4ce9: $5a
	ld c, b                                          ; $4cea: $48
	and b                                            ; $4ceb: $a0
	sub c                                            ; $4cec: $91
	ldh a, [$59]                                     ; $4ced: $f0 $59
	ld b, l                                          ; $4cef: $45
	xor b                                            ; $4cf0: $a8
	ld l, a                                          ; $4cf1: $6f
	ld c, e                                          ; $4cf2: $4b
	inc [hl]                                         ; $4cf3: $34
	ldh a, [$d8]                                     ; $4cf4: $f0 $d8
	ld c, c                                          ; $4cf6: $49
	add b                                            ; $4cf7: $80
	ld b, d                                          ; $4cf8: $42
	ldh a, [$28]                                     ; $4cf9: $f0 $28
	ld b, a                                          ; $4cfb: $47
	pop af                                           ; $4cfc: $f1
	add h                                            ; $4cfd: $84
	ld d, d                                          ; $4cfe: $52
	ld c, l                                          ; $4cff: $4d
	ld c, [hl]                                       ; $4d00: $4e
	inc de                                           ; $4d01: $13
	ldh a, [rAUD2ENV]                                ; $4d02: $f0 $17
	db $ec                                           ; $4d04: $ec
	ret c                                            ; $4d05: $d8

	ld b, d                                          ; $4d06: $42
	ld b, l                                          ; $4d07: $45
	and b                                            ; $4d08: $a0
	cpl                                              ; $4d09: $2f
	ld b, e                                          ; $4d0a: $43
	ld b, [hl]                                       ; $4d0b: $46
	dec sp                                           ; $4d0c: $3b
	inc [hl]                                         ; $4d0d: $34
	db $ed                                           ; $4d0e: $ed
	ld d, e                                          ; $4d0f: $53
	xor b                                            ; $4d10: $a8
	ld [$a01f], a                                    ; $4d11: $ea $1f $a0
	ldh a, [$34]                                     ; $4d14: $f0 $34
	ld b, a                                          ; $4d16: $47
	inc [hl]                                         ; $4d17: $34
	ldh a, [c]                                       ; $4d18: $f2
	rra                                              ; $4d19: $1f
	ldh a, [$38]                                     ; $4d1a: $f0 $38
	ld b, d                                          ; $4d1c: $42
	dec a                                            ; $4d1d: $3d
	ld [hl], c                                       ; $4d1e: $71
	ld b, a                                          ; $4d1f: $47
	xor h                                            ; $4d20: $ac
	ld a, b                                          ; $4d21: $78
	dec a                                            ; $4d22: $3d
	ld h, e                                          ; $4d23: $63
	ld e, l                                          ; $4d24: $5d
	db $ec                                           ; $4d25: $ec
	ret c                                            ; $4d26: $d8

	ld h, e                                          ; $4d27: $63
	and b                                            ; $4d28: $a0
	ld b, [hl]                                       ; $4d29: $46
	ld d, d                                          ; $4d2a: $52
	ld d, a                                          ; $4d2b: $57
	ldh a, [$29]                                     ; $4d2c: $f0 $29
	ld a, $38                                        ; $4d2e: $3e $38
	db $eb                                           ; $4d30: $eb
	ld h, b                                          ; $4d31: $60
	inc de                                           ; $4d32: $13
	db $ec                                           ; $4d33: $ec
	ret c                                            ; $4d34: $d8

	ld e, l                                          ; $4d35: $5d
	ld e, d                                          ; $4d36: $5a
	inc [hl]                                         ; $4d37: $34
	ld c, c                                          ; $4d38: $49
	ld d, a                                          ; $4d39: $57
	ld b, [hl]                                       ; $4d3a: $46
	ld e, [hl]                                       ; $4d3b: $5e
	sbc h                                            ; $4d3c: $9c
	inc de                                           ; $4d3d: $13
	ldh a, [c]                                       ; $4d3e: $f2
	rst JumpTable                                          ; $4d3f: $c7
	jr c, jr_093_4d81                                ; $4d40: $38 $3f

	ld h, h                                          ; $4d42: $64
	ld d, l                                          ; $4d43: $55
	ld h, e                                          ; $4d44: $63
	and b                                            ; $4d45: $a0
	cpl                                              ; $4d46: $2f
	ld b, e                                          ; $4d47: $43
	ldh a, [$34]                                     ; $4d48: $f0 $34
	ld b, a                                          ; $4d4a: $47
	push af                                          ; $4d4b: $f5
	inc l                                            ; $4d4c: $2c
	ldh a, [$cb]                                     ; $4d4d: $f0 $cb
	ldh a, [$2c]                                     ; $4d4f: $f0 $2c
	ld b, d                                          ; $4d51: $42
	add b                                            ; $4d52: $80
	ld c, a                                          ; $4d53: $4f
	ld d, a                                          ; $4d54: $57
	ld e, e                                          ; $4d55: $5b
	ld d, [hl]                                       ; $4d56: $56
	inc de                                           ; $4d57: $13
	ld a, [hl-]                                      ; $4d58: $3a
	jr c, jr_093_4d9c                                ; $4d59: $38 $41

	ld b, h                                          ; $4d5b: $44
	ld e, l                                          ; $4d5c: $5d
	ld e, d                                          ; $4d5d: $5a
	ld c, b                                          ; $4d5e: $48
	and b                                            ; $4d5f: $a0
	jr c, jr_093_4ce2                                ; $4d60: $38 $80

	ld d, d                                          ; $4d62: $52
	ld c, d                                          ; $4d63: $4a
	ld c, a                                          ; $4d64: $4f
	inc [hl]                                         ; $4d65: $34
	ld d, h                                          ; $4d66: $54
	ld d, h                                          ; $4d67: $54
	ld b, a                                          ; $4d68: $47
	pop af                                           ; $4d69: $f1
	ld e, a                                          ; $4d6a: $5f
	ld e, h                                          ; $4d6b: $5c
	inc de                                           ; $4d6c: $13
	pop af                                           ; $4d6d: $f1
	jr nc, jr_093_4de1                               ; $4d6e: $30 $71

	ccf                                              ; $4d70: $3f
	ld h, h                                          ; $4d71: $64
	jr c, jr_093_4db1                                ; $4d72: $38 $3d

	ld d, b                                          ; $4d74: $50
	inc [hl]                                         ; $4d75: $34
	ldh a, [$ab]                                     ; $4d76: $f0 $ab
	ld b, d                                          ; $4d78: $42
	adc h                                            ; $4d79: $8c
	ldh a, [rSTAT]                                   ; $4d7a: $f0 $41
	ld d, e                                          ; $4d7c: $53
	inc de                                           ; $4d7d: $13
	db $f4                                           ; $4d7e: $f4
	ld h, h                                          ; $4d7f: $64
	dec sp                                           ; $4d80: $3b

jr_093_4d81:
	ccf                                              ; $4d81: $3f
	jr c, jr_093_4dbe                                ; $4d82: $38 $3a

	jr c, jr_093_4de9                                ; $4d84: $38 $63

	ld b, l                                          ; $4d86: $45
	and b                                            ; $4d87: $a0
	xor $14                                          ; $4d88: $ee $14
	inc [hl]                                         ; $4d8a: $34
	ld l, [hl]                                       ; $4d8b: $6e
	ld b, h                                          ; $4d8c: $44
	and b                                            ; $4d8d: $a0
	cpl                                              ; $4d8e: $2f
	ld b, e                                          ; $4d8f: $43
	db $ed                                           ; $4d90: $ed
	ld d, e                                          ; $4d91: $53
	xor b                                            ; $4d92: $a8
	ld [$a01f], a                                    ; $4d93: $ea $1f $a0
	ldh a, [$2a]                                     ; $4d96: $f0 $2a
	ldh a, [$f5]                                     ; $4d98: $f0 $f5
	jr c, jr_093_4de1                                ; $4d9a: $38 $45

jr_093_4d9c:
	xor h                                            ; $4d9c: $ac
	ldh a, [rHDMA5]                                  ; $4d9d: $f0 $55
	ldh a, [rBCPS]                                   ; $4d9f: $f0 $68
	ld d, c                                          ; $4da1: $51
	ld c, [hl]                                       ; $4da2: $4e
	ld h, e                                          ; $4da3: $63
	and b                                            ; $4da4: $a0
	ldh a, [$80]                                     ; $4da5: $f0 $80
	ldh a, [$c5]                                     ; $4da7: $f0 $c5
	ld c, d                                          ; $4da9: $4a
	ld d, c                                          ; $4daa: $51
	xor b                                            ; $4dab: $a8
	ld e, b                                          ; $4dac: $58
	dec sp                                           ; $4dad: $3b
	ld e, h                                          ; $4dae: $5c
	inc [hl]                                         ; $4daf: $34
	ldh a, [c]                                       ; $4db0: $f2

jr_093_4db1:
	rst JumpTable                                          ; $4db1: $c7
	jr c, jr_093_4df1                                ; $4db2: $38 $3d

	inc a                                            ; $4db4: $3c
	ld d, b                                          ; $4db5: $50
	and b                                            ; $4db6: $a0
	cpl                                              ; $4db7: $2f
	ld b, e                                          ; $4db8: $43
	ld b, b                                          ; $4db9: $40
	add hl, sp                                       ; $4dba: $39
	ld c, b                                          ; $4dbb: $48
	and b                                            ; $4dbc: $a0
	ld l, e                                          ; $4dbd: $6b

jr_093_4dbe:
	ld a, [hl-]                                      ; $4dbe: $3a
	ld b, d                                          ; $4dbf: $42
	xor h                                            ; $4dc0: $ac
	ld d, h                                          ; $4dc1: $54
	ld b, d                                          ; $4dc2: $42
	adc $42                                          ; $4dc3: $ce $42
	db $ed                                           ; $4dc5: $ed
	ld [hl], l                                       ; $4dc6: $75
	ld c, e                                          ; $4dc7: $4b
	and c                                            ; $4dc8: $a1
	cpl                                              ; $4dc9: $2f
	ld b, e                                          ; $4dca: $43
	adc a                                            ; $4dcb: $8f
	pop af                                           ; $4dcc: $f1
	ld c, [hl]                                       ; $4dcd: $4e
	db $ed                                           ; $4dce: $ed
	sbc h                                            ; $4dcf: $9c
	ld c, d                                          ; $4dd0: $4a
	db $ec                                           ; $4dd1: $ec
	ei                                               ; $4dd2: $fb
	inc de                                           ; $4dd3: $13
	ldh a, [$a5]                                     ; $4dd4: $f0 $a5
	ldh a, [rSCX]                                    ; $4dd6: $f0 $43
	ld b, h                                          ; $4dd8: $44
	ld b, l                                          ; $4dd9: $45
	and b                                            ; $4dda: $a0
	ldh a, [$a5]                                     ; $4ddb: $f0 $a5
	ldh a, [rSCX]                                    ; $4ddd: $f0 $43
	ld c, b                                          ; $4ddf: $48
	xor c                                            ; $4de0: $a9

jr_093_4de1:
	ld l, e                                          ; $4de1: $6b
	inc a                                            ; $4de2: $3c
	inc [hl]                                         ; $4de3: $34
	di                                               ; $4de4: $f3
	ld a, l                                          ; $4de5: $7d
	inc a                                            ; $4de6: $3c
	ld a, $38                                        ; $4de7: $3e $38

jr_093_4de9:
	ldh a, [c]                                       ; $4de9: $f2
	sub $5c                                          ; $4dea: $d6 $5c
	ld c, h                                          ; $4dec: $4c
	ld c, b                                          ; $4ded: $48
	and b                                            ; $4dee: $a0
	cpl                                              ; $4def: $2f
	ld b, e                                          ; $4df0: $43

jr_093_4df1:
	add sp, -$2d                                     ; $4df1: $e8 $d3
	inc de                                           ; $4df3: $13
	ldh a, [$a5]                                     ; $4df4: $f0 $a5
	dec sp                                           ; $4df6: $3b
	dec a                                            ; $4df7: $3d
	inc [hl]                                         ; $4df8: $34
	ldh a, [rSCX]                                    ; $4df9: $f0 $43
	ldh a, [rAUDTERM]                                ; $4dfb: $f0 $25
	ld a, [hl-]                                      ; $4dfd: $3a
	ld b, c                                          ; $4dfe: $41
	ld b, h                                          ; $4dff: $44
	xor b                                            ; $4e00: $a8
	add sp, -$7b                                     ; $4e01: $e8 $85
	and c                                            ; $4e03: $a1
	call c, $f234                                    ; $4e04: $dc $34 $f2
	rst JumpTable                                          ; $4e07: $c7
	ld d, l                                          ; $4e08: $55
	ld h, e                                          ; $4e09: $63
	and b                                            ; $4e0a: $a0
	ld l, a                                          ; $4e0b: $6f
	ld d, e                                          ; $4e0c: $53
	ld h, a                                          ; $4e0d: $67
	inc a                                            ; $4e0e: $3c
	ld a, [hl-]                                      ; $4e0f: $3a
	jr c, jr_093_4e5b                                ; $4e10: $38 $49

	xor h                                            ; $4e12: $ac
	ldh a, [c]                                       ; $4e13: $f2
	rst SubAFromHL                                          ; $4e14: $d7
	ld a, $f0                                        ; $4e15: $3e $f0
	cp [hl]                                          ; $4e17: $be
	add h                                            ; $4e18: $84
	ld d, e                                          ; $4e19: $53
	inc de                                           ; $4e1a: $13
	adc $38                                          ; $4e1b: $ce $38
	ld c, [hl]                                       ; $4e1d: $4e
	ld b, d                                          ; $4e1e: $42
	ld b, l                                          ; $4e1f: $45
	and b                                            ; $4e20: $a0
	ld l, e                                          ; $4e21: $6b
	ld a, [hl-]                                      ; $4e22: $3a
	ld b, d                                          ; $4e23: $42
	xor h                                            ; $4e24: $ac
	ld d, h                                          ; $4e25: $54
	ld b, d                                          ; $4e26: $42
	inc [hl]                                         ; $4e27: $34
	adc $42                                          ; $4e28: $ce $42
	db $ed                                           ; $4e2a: $ed
	ld [hl], l                                       ; $4e2b: $75
	ld c, e                                          ; $4e2c: $4b
	and c                                            ; $4e2d: $a1
	ld b, [hl]                                       ; $4e2e: $46
	ld d, d                                          ; $4e2f: $52
	ld d, a                                          ; $4e30: $57
	xor h                                            ; $4e31: $ac
	pop af                                           ; $4e32: $f1
	add hl, hl                                       ; $4e33: $29
	ld a, $55                                        ; $4e34: $3e $55
	ld a, [hl-]                                      ; $4e36: $3a
	jr c, jr_093_4e96                                ; $4e37: $38 $5d

	ld e, d                                          ; $4e39: $5a
	xor l                                            ; $4e3a: $ad
	ld c, c                                          ; $4e3b: $49
	ld d, a                                          ; $4e3c: $57
	ld b, [hl]                                       ; $4e3d: $46
	ld e, [hl]                                       ; $4e3e: $5e
	sbc h                                            ; $4e3f: $9c
	ldh a, [c]                                       ; $4e40: $f2
	rst JumpTable                                          ; $4e41: $c7
	ld d, l                                          ; $4e42: $55
	ld h, e                                          ; $4e43: $63
	and b                                            ; $4e44: $a0
	cpl                                              ; $4e45: $2f
	ld b, e                                          ; $4e46: $43
	ld e, h                                          ; $4e47: $5c
	dec sp                                           ; $4e48: $3b
	ld c, c                                          ; $4e49: $49
	xor h                                            ; $4e4a: $ac
	ldh a, [rAUD4ENV]                                ; $4e4b: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4e4d: $f0 $23
	jr c, jr_093_4e9a                                ; $4e4f: $38 $49

	ld [hl], a                                       ; $4e51: $77
	add hl, sp                                       ; $4e52: $39
	ld b, l                                          ; $4e53: $45
	and b                                            ; $4e54: $a0
	ldh a, [$80]                                     ; $4e55: $f0 $80
	ldh a, [$c5]                                     ; $4e57: $f0 $c5
	ld c, d                                          ; $4e59: $4a
	ld d, c                                          ; $4e5a: $51

jr_093_4e5b:
	xor b                                            ; $4e5b: $a8
	ld e, b                                          ; $4e5c: $58
	dec sp                                           ; $4e5d: $3b
	ld e, h                                          ; $4e5e: $5c
	xor h                                            ; $4e5f: $ac
	ldh a, [c]                                       ; $4e60: $f2
	rst JumpTable                                          ; $4e61: $c7
	jr c, jr_093_4ea1                                ; $4e62: $38 $3d

	inc a                                            ; $4e64: $3c
	ld d, b                                          ; $4e65: $50
	and b                                            ; $4e66: $a0
	ld b, l                                          ; $4e67: $45
	ld d, l                                          ; $4e68: $55
	ldh a, [rTAC]                                    ; $4e69: $f0 $07
	inc a                                            ; $4e6b: $3c
	ld d, b                                          ; $4e6c: $50
	ld a, [hl-]                                      ; $4e6d: $3a
	inc a                                            ; $4e6e: $3c
	dec sp                                           ; $4e6f: $3b
	dec a                                            ; $4e70: $3d
	ld e, l                                          ; $4e71: $5d
	ld e, d                                          ; $4e72: $5a
	xor h                                            ; $4e73: $ac
	db $ec                                           ; $4e74: $ec
	cp c                                             ; $4e75: $b9
	ld b, c                                          ; $4e76: $41
	ld e, e                                          ; $4e77: $5b
	ld d, [hl]                                       ; $4e78: $56
	ld a, [hl-]                                      ; $4e79: $3a
	ld d, l                                          ; $4e7a: $55
	ccf                                              ; $4e7b: $3f
	and b                                            ; $4e7c: $a0
	cpl                                              ; $4e7d: $2f
	ld b, e                                          ; $4e7e: $43
	ld b, l                                          ; $4e7f: $45
	ld d, l                                          ; $4e80: $55
	ldh a, [rTAC]                                    ; $4e81: $f0 $07
	inc a                                            ; $4e83: $3c
	ld d, b                                          ; $4e84: $50
	ld a, [hl-]                                      ; $4e85: $3a
	jr c, jr_093_4ec9                                ; $4e86: $38 $41

	ld e, e                                          ; $4e88: $5b
	ld d, [hl]                                       ; $4e89: $56
	xor h                                            ; $4e8a: $ac
	halt                                             ; $4e8b: $76
	ld b, d                                          ; $4e8c: $42
	db $ed                                           ; $4e8d: $ed
	ld l, d                                          ; $4e8e: $6a
	ld c, a                                          ; $4e8f: $4f
	ld d, d                                          ; $4e90: $52
	ld b, h                                          ; $4e91: $44
	ld d, d                                          ; $4e92: $52
	ld b, h                                          ; $4e93: $44
	ld b, h                                          ; $4e94: $44
	ld a, [hl-]                                      ; $4e95: $3a

jr_093_4e96:
	and b                                            ; $4e96: $a0
	ld b, l                                          ; $4e97: $45
	ld d, l                                          ; $4e98: $55
	pop af                                           ; $4e99: $f1

jr_093_4e9a:
	ld h, [hl]                                       ; $4e9a: $66
	jr c, jr_093_4edc                                ; $4e9b: $38 $3f

	ld a, [hl-]                                      ; $4e9d: $3a
	inc a                                            ; $4e9e: $3c
	dec sp                                           ; $4e9f: $3b
	dec a                                            ; $4ea0: $3d

jr_093_4ea1:
	ld e, l                                          ; $4ea1: $5d
	ld e, d                                          ; $4ea2: $5a
	xor h                                            ; $4ea3: $ac
	db $ec                                           ; $4ea4: $ec
	cp c                                             ; $4ea5: $b9
	ld b, c                                          ; $4ea6: $41
	ld e, e                                          ; $4ea7: $5b
	ld d, [hl]                                       ; $4ea8: $56
	ld a, [hl-]                                      ; $4ea9: $3a
	ld d, l                                          ; $4eaa: $55
	ccf                                              ; $4eab: $3f
	and b                                            ; $4eac: $a0
	cpl                                              ; $4ead: $2f
	ld b, e                                          ; $4eae: $43
	ld h, c                                          ; $4eaf: $61
	ld d, [hl]                                       ; $4eb0: $56
	ld b, c                                          ; $4eb1: $41
	ld c, c                                          ; $4eb2: $49
	pop af                                           ; $4eb3: $f1
	ld h, [hl]                                       ; $4eb4: $66
	jr c, jr_093_4ef6                                ; $4eb5: $38 $3f

	ccf                                              ; $4eb7: $3f
	ld d, l                                          ; $4eb8: $55
	ld c, l                                          ; $4eb9: $4d
	ld b, l                                          ; $4eba: $45
	xor b                                            ; $4ebb: $a8
	db $ec                                           ; $4ebc: $ec
	jp hl                                            ; $4ebd: $e9


	db $ed                                           ; $4ebe: $ed
	ld l, d                                          ; $4ebf: $6a
	ld a, $3d                                        ; $4ec0: $3e $3d
	ld b, c                                          ; $4ec2: $41
	ld b, h                                          ; $4ec3: $44
	inc a                                            ; $4ec4: $3c
	ld d, b                                          ; $4ec5: $50
	and b                                            ; $4ec6: $a0
	xor $14                                          ; $4ec7: $ee $14

jr_093_4ec9:
	and b                                            ; $4ec9: $a0
	cpl                                              ; $4eca: $2f
	ld b, e                                          ; $4ecb: $43
	ld b, [hl]                                       ; $4ecc: $46
	dec sp                                           ; $4ecd: $3b
	inc [hl]                                         ; $4ece: $34
	db $ed                                           ; $4ecf: $ed
	ld d, e                                          ; $4ed0: $53
	xor h                                            ; $4ed1: $ac
	ld [$a81f], a                                    ; $4ed2: $ea $1f $a8
	db $eb                                           ; $4ed5: $eb
	ld d, b                                          ; $4ed6: $50
	and c                                            ; $4ed7: $a1
	ld b, [hl]                                       ; $4ed8: $46
	ld d, d                                          ; $4ed9: $52
	ld d, a                                          ; $4eda: $57
	xor h                                            ; $4edb: $ac

jr_093_4edc:
	pop af                                           ; $4edc: $f1
	ld h, [hl]                                       ; $4edd: $66
	jr c, jr_093_4f1f                                ; $4ede: $38 $3f

	ld a, [hl-]                                      ; $4ee0: $3a
	inc a                                            ; $4ee1: $3c
	dec sp                                           ; $4ee2: $3b
	dec a                                            ; $4ee3: $3d
	inc a                                            ; $4ee4: $3c
	ld d, b                                          ; $4ee5: $50
	xor h                                            ; $4ee6: $ac
	ld b, l                                          ; $4ee7: $45
	ld d, l                                          ; $4ee8: $55
	ldh a, [rTAC]                                    ; $4ee9: $f0 $07
	inc a                                            ; $4eeb: $3c
	ld d, b                                          ; $4eec: $50

jr_093_4eed:
	ld a, [hl-]                                      ; $4eed: $3a
	jr c, jr_093_4f53                                ; $4eee: $38 $63

	and b                                            ; $4ef0: $a0
	cpl                                              ; $4ef1: $2f
	ld b, e                                          ; $4ef2: $43
	db $ec                                           ; $4ef3: $ec
	jp hl                                            ; $4ef4: $e9


	db $ed                                           ; $4ef5: $ed

jr_093_4ef6:
	ld d, l                                          ; $4ef6: $55
	ld b, c                                          ; $4ef7: $41
	inc de                                           ; $4ef8: $13
	db $ec                                           ; $4ef9: $ec
	jr nz, jr_093_4eed                               ; $4efa: $20 $f1

	ld h, [hl]                                       ; $4efc: $66
	jr c, jr_093_4f3e                                ; $4efd: $38 $3f

	ccf                                              ; $4eff: $3f
	ld d, l                                          ; $4f00: $55
	ld c, l                                          ; $4f01: $4d
	ld b, l                                          ; $4f02: $45
	and b                                            ; $4f03: $a0
	dec a                                            ; $4f04: $3d
	ld d, d                                          ; $4f05: $52
	dec a                                            ; $4f06: $3d
	ld d, d                                          ; $4f07: $52
	inc [hl]                                         ; $4f08: $34
	ldh a, [c]                                       ; $4f09: $f2
	add $3b                                          ; $4f0a: $c6 $3b
	dec a                                            ; $4f0c: $3d
	ld b, h                                          ; $4f0d: $44
	ld e, l                                          ; $4f0e: $5d
	ld b, l                                          ; $4f0f: $45
	xor b                                            ; $4f10: $a8
	ldh a, [$34]                                     ; $4f11: $f0 $34
	ld b, a                                          ; $4f13: $47
	ldh a, [c]                                       ; $4f14: $f2
	rra                                              ; $4f15: $1f
	ldh a, [$38]                                     ; $4f16: $f0 $38
	ld b, a                                          ; $4f18: $47
	ldh a, [rAUD2LEN]                                ; $4f19: $f0 $16
	ld d, e                                          ; $4f1b: $53
	inc de                                           ; $4f1c: $13
	jp hl                                            ; $4f1d: $e9


	inc c                                            ; $4f1e: $0c

jr_093_4f1f:
	and b                                            ; $4f1f: $a0
	db $ec                                           ; $4f20: $ec
	dec h                                            ; $4f21: $25
	xor h                                            ; $4f22: $ac
	ldh a, [$6d]                                     ; $4f23: $f0 $6d
	ld e, c                                          ; $4f25: $59
	ldh a, [$27]                                     ; $4f26: $f0 $27
	ld c, e                                          ; $4f28: $4b
	ldh a, [rTMA]                                    ; $4f29: $f0 $06
	ld h, e                                          ; $4f2b: $63
	ld a, [hl-]                                      ; $4f2c: $3a
	jr c, jr_093_4f92                                ; $4f2d: $38 $63

	xor b                                            ; $4f2f: $a8
	ld b, [hl]                                       ; $4f30: $46
	ld a, [hl-]                                      ; $4f31: $3a
	dec a                                            ; $4f32: $3d
	ld d, e                                          ; $4f33: $53
	ld l, [hl]                                       ; $4f34: $6e
	dec sp                                           ; $4f35: $3b
	ccf                                              ; $4f36: $3f
	ld [hl], d                                       ; $4f37: $72
	ld a, c                                          ; $4f38: $79
	ccf                                              ; $4f39: $3f
	ld d, l                                          ; $4f3a: $55
	ld c, l                                          ; $4f3b: $4d
	ld c, [hl]                                       ; $4f3c: $4e
	inc a                                            ; $4f3d: $3c

jr_093_4f3e:
	ld a, $50                                        ; $4f3e: $3e $50
	and b                                            ; $4f40: $a0
	cpl                                              ; $4f41: $2f
	ld b, e                                          ; $4f42: $43
	ld [hl], d                                       ; $4f43: $72
	ccf                                              ; $4f44: $3f
	ccf                                              ; $4f45: $3f
	ld c, h                                          ; $4f46: $4c
	and b                                            ; $4f47: $a0
	ld l, a                                          ; $4f48: $6f
	ld h, d                                          ; $4f49: $62
	db $ed                                           ; $4f4a: $ed
	ld d, h                                          ; $4f4b: $54
	ld b, a                                          ; $4f4c: $47
	inc de                                           ; $4f4d: $13
	ld d, c                                          ; $4f4e: $51
	ld c, [hl]                                       ; $4f4f: $4e
	add b                                            ; $4f50: $80
	ld c, a                                          ; $4f51: $4f
	ld d, a                                          ; $4f52: $57

jr_093_4f53:
	xor c                                            ; $4f53: $a9
	ld b, [hl]                                       ; $4f54: $46
	ld a, [hl-]                                      ; $4f55: $3a
	dec a                                            ; $4f56: $3d
	ld d, e                                          ; $4f57: $53
	ld l, [hl]                                       ; $4f58: $6e
	dec sp                                           ; $4f59: $3b
	ccf                                              ; $4f5a: $3f
	ld [hl], d                                       ; $4f5b: $72
	ld a, c                                          ; $4f5c: $79
	ccf                                              ; $4f5d: $3f
	ld d, l                                          ; $4f5e: $55
	ld c, l                                          ; $4f5f: $4d
	ld c, [hl]                                       ; $4f60: $4e
	inc a                                            ; $4f61: $3c
	ld a, $50                                        ; $4f62: $3e $50
	and b                                            ; $4f64: $a0
	ld l, a                                          ; $4f65: $6f
	ld h, d                                          ; $4f66: $62
	db $ed                                           ; $4f67: $ed
	ld d, h                                          ; $4f68: $54
	ld b, a                                          ; $4f69: $47
	xor c                                            ; $4f6a: $a9
	ld c, c                                          ; $4f6b: $49
	ld b, c                                          ; $4f6c: $41
	ld c, d                                          ; $4f6d: $4a
	ld c, a                                          ; $4f6e: $4f
	db $ec                                           ; $4f6f: $ec
	dec bc                                           ; $4f70: $0b
	xor b                                            ; $4f71: $a8
	ld b, [hl]                                       ; $4f72: $46
	ld a, [hl-]                                      ; $4f73: $3a
	dec a                                            ; $4f74: $3d
	ld d, e                                          ; $4f75: $53
	ld l, [hl]                                       ; $4f76: $6e
	dec sp                                           ; $4f77: $3b
	ccf                                              ; $4f78: $3f

jr_093_4f79:
	ld [hl], d                                       ; $4f79: $72
	ld a, c                                          ; $4f7a: $79
	ccf                                              ; $4f7b: $3f
	ld d, l                                          ; $4f7c: $55
	ld c, l                                          ; $4f7d: $4d
	ld c, [hl]                                       ; $4f7e: $4e
	inc a                                            ; $4f7f: $3c
	ld a, $50                                        ; $4f80: $3e $50
	and b                                            ; $4f82: $a0
	cpl                                              ; $4f83: $2f
	ld b, e                                          ; $4f84: $43
	ldh a, [rAUD4ENV]                                ; $4f85: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4f87: $f0 $23
	jr c, jr_093_4f79                                ; $4f89: $38 $ee

	ld a, [hl+]                                      ; $4f8b: $2a
	ld l, [hl]                                       ; $4f8c: $6e
	dec sp                                           ; $4f8d: $3b
	ccf                                              ; $4f8e: $3f
	ld c, [hl]                                       ; $4f8f: $4e
	ld b, c                                          ; $4f90: $41
	inc de                                           ; $4f91: $13

jr_093_4f92:
	ld b, h                                          ; $4f92: $44
	ld e, l                                          ; $4f93: $5d
	ld e, d                                          ; $4f94: $5a
	inc [hl]                                         ; $4f95: $34
	jp hl                                            ; $4f96: $e9


	ld b, b                                          ; $4f97: $40
	and c                                            ; $4f98: $a1
	ldh a, [$80]                                     ; $4f99: $f0 $80
	ldh a, [$c5]                                     ; $4f9b: $f0 $c5
	ld b, l                                          ; $4f9d: $45
	and b                                            ; $4f9e: $a0
	cpl                                              ; $4f9f: $2f

Call_093_4fa0:
	ld b, e                                          ; $4fa0: $43
	xor $10                                          ; $4fa1: $ee $10
	and b                                            ; $4fa3: $a0
	ld e, d                                          ; $4fa4: $5a
	ld b, d                                          ; $4fa5: $42
	ld b, l                                          ; $4fa6: $45
	add hl, sp                                       ; $4fa7: $39
	ld a, [hl-]                                      ; $4fa8: $3a
	xor $2a                                          ; $4fa9: $ee $2a
	inc a                                            ; $4fab: $3c
	ld a, $50                                        ; $4fac: $3e $50
	and c                                            ; $4fae: $a1
	cpl                                              ; $4faf: $2f
	ld b, e                                          ; $4fb0: $43
	ldh a, [$6d]                                     ; $4fb1: $f0 $6d
	ld e, c                                          ; $4fb3: $59
	ldh a, [$27]                                     ; $4fb4: $f0 $27
	ld h, d                                          ; $4fb6: $62
	ld a, $3f                                        ; $4fb7: $3e $3f
	xor h                                            ; $4fb9: $ac
	ld b, b                                          ; $4fba: $40
	ld b, d                                          ; $4fbb: $42
	add h                                            ; $4fbc: $84
	ld b, d                                          ; $4fbd: $42
	ldh a, [$99]                                     ; $4fbe: $f0 $99
	sub b                                            ; $4fc0: $90
	ldh a, [$7b]                                     ; $4fc1: $f0 $7b
	ld h, l                                          ; $4fc3: $65
	add e                                            ; $4fc4: $83
	ld h, d                                          ; $4fc5: $62
	inc de                                           ; $4fc6: $13
	pop af                                           ; $4fc7: $f1
	rst JumpTable                                          ; $4fc8: $c7
	ldh a, [hDisp0_WY]                                     ; $4fc9: $f0 $88
	ld d, c                                          ; $4fcb: $51
	ld c, [hl]                                       ; $4fcc: $4e
	xor $2a                                          ; $4fcd: $ee $2a
	ld b, h                                          ; $4fcf: $44
	ld b, l                                          ; $4fd0: $45
	and b                                            ; $4fd1: $a0
	xor $10                                          ; $4fd2: $ee $10
	and b                                            ; $4fd4: $a0
	cpl                                              ; $4fd5: $2f
	ld b, e                                          ; $4fd6: $43
	ld h, c                                          ; $4fd7: $61
	ld h, [hl]                                       ; $4fd8: $66
	inc [hl]                                         ; $4fd9: $34
	ret                                              ; $4fda: $c9


	inc [hl]                                         ; $4fdb: $34
	db $ed                                           ; $4fdc: $ed
	ld d, a                                          ; $4fdd: $57
	inc de                                           ; $4fde: $13
	ldh a, [$75]                                     ; $4fdf: $f0 $75
	adc h                                            ; $4fe1: $8c
	ld d, e                                          ; $4fe2: $53
	ldh a, [$5c]                                     ; $4fe3: $f0 $5c
	jr c, jr_093_5023                                ; $4fe5: $38 $3c

	ld a, [hl-]                                      ; $4fe7: $3a
	ld c, b                                          ; $4fe8: $48
	ldh a, [rAUD3ENA]                                ; $4fe9: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $4feb: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $4fed: $f0 $1a
	and b                                            ; $4fef: $a0
	pop af                                           ; $4ff0: $f1
	ldh [c], a                                       ; $4ff1: $e2
	ld e, l                                          ; $4ff2: $5d
	db $ec                                           ; $4ff3: $ec
	dec bc                                           ; $4ff4: $0b
	ld c, b                                          ; $4ff5: $48
	and b                                            ; $4ff6: $a0
	ld d, d                                          ; $4ff7: $52
	ld b, h                                          ; $4ff8: $44
	ld d, d                                          ; $4ff9: $52
	ld b, h                                          ; $4ffa: $44
	ld c, h                                          ; $4ffb: $4c
	ld c, b                                          ; $4ffc: $48
	and b                                            ; $4ffd: $a0
	cpl                                              ; $4ffe: $2f
	ld b, e                                          ; $4fff: $43
	add hl, sp                                       ; $5000: $39
	ld e, c                                          ; $5001: $59
	ld b, c                                          ; $5002: $41
	ld c, b                                          ; $5003: $48
	inc [hl]                                         ; $5004: $34
	ld c, a                                          ; $5005: $4f
	add hl, sp                                       ; $5006: $39
	ld l, l                                          ; $5007: $6d
	ldh a, [$d3]                                     ; $5008: $f0 $d3
	inc de                                           ; $500a: $13
	ld l, [hl]                                       ; $500b: $6e
	ld d, b                                          ; $500c: $50
	ld a, c                                          ; $500d: $79
	ccf                                              ; $500e: $3f
	ld d, l                                          ; $500f: $55
	ld c, l                                          ; $5010: $4d
	ld a, [hl-]                                      ; $5011: $3a
	jr c, jr_093_5050                                ; $5012: $38 $3c

	ld a, [hl-]                                      ; $5014: $3a
	ld [hl], h                                       ; $5015: $74
	ld c, b                                          ; $5016: $48
	and b                                            ; $5017: $a0
	ld l, [hl]                                       ; $5018: $6e
	ld [hl], c                                       ; $5019: $71
	ld a, [hl-]                                      ; $501a: $3a
	ld e, b                                          ; $501b: $58
	jr c, @-$52                                      ; $501c: $38 $ac

	ld [hl], d                                       ; $501e: $72
	ldh a, [rIE]                                     ; $501f: $f0 $ff
	ld a, $38                                        ; $5021: $3e $38

jr_093_5023:
	ld h, e                                          ; $5023: $63
	ld b, l                                          ; $5024: $45
	and b                                            ; $5025: $a0
	db $ec                                           ; $5026: $ec
	sub $ec                                          ; $5027: $d6 $ec
	ret c                                            ; $5029: $d8

	and c                                            ; $502a: $a1
	cpl                                              ; $502b: $2f
	ld b, e                                          ; $502c: $43
	ld d, d                                          ; $502d: $52
	inc [hl]                                         ; $502e: $34
	ld [$a076], a                                    ; $502f: $ea $76 $a0
	ldh a, [$6d]                                     ; $5032: $f0 $6d
	ld e, c                                          ; $5034: $59
	ldh a, [$27]                                     ; $5035: $f0 $27
	ld b, a                                          ; $5037: $47
	ld a, $3f                                        ; $5038: $3e $3f
	ld c, e                                          ; $503a: $4b
	inc de                                           ; $503b: $13
	ldh a, [rAUD4ENV]                                ; $503c: $f0 $21
	ldh a, [rAUD4GO]                                 ; $503e: $f0 $23
	jr c, @+$65                                      ; $5040: $38 $63

	ld c, h                                          ; $5042: $4c
	and b                                            ; $5043: $a0
	pop de                                           ; $5044: $d1
	ld b, d                                          ; $5045: $42
	inc de                                           ; $5046: $13
	ldh a, [$7b]                                     ; $5047: $f0 $7b
	ld h, l                                          ; $5049: $65
	add e                                            ; $504a: $83
	db $ec                                           ; $504b: $ec
	ret c                                            ; $504c: $d8

	and b                                            ; $504d: $a0
	cpl                                              ; $504e: $2f
	ld b, e                                          ; $504f: $43

jr_093_5050:
	ld d, d                                          ; $5050: $52
	inc a                                            ; $5051: $3c
	ld a, $3f                                        ; $5052: $3e $3f
	ld d, l                                          ; $5054: $55
	ld c, l                                          ; $5055: $4d
	ld b, l                                          ; $5056: $45
	and b                                            ; $5057: $a0
	ld b, b                                          ; $5058: $40
	ld c, l                                          ; $5059: $4d
	sbc l                                            ; $505a: $9d
	ld d, b                                          ; $505b: $50
	jr c, jr_093_50a8                                ; $505c: $38 $4a

	ld a, [hl-]                                      ; $505e: $3a
	jr c, jr_093_50aa                                ; $505f: $38 $49

	xor h                                            ; $5061: $ac
	ld l, a                                          ; $5062: $6f
	ld b, a                                          ; $5063: $47
	ld c, e                                          ; $5064: $4b
	ld hl, sp+$31                                    ; $5065: $f8 $31
	ld d, a                                          ; $5067: $57
	ldh a, [rTMA]                                    ; $5068: $f0 $06
	ld h, e                                          ; $506a: $63
	db $ec                                           ; $506b: $ec
	dec bc                                           ; $506c: $0b
	xor b                                            ; $506d: $a8
	ldh a, [rOCPD]                                   ; $506e: $f0 $6b
	ld e, c                                          ; $5070: $59
	ldh a, [rOCPD]                                   ; $5071: $f0 $6b
	ld [hl], e                                       ; $5073: $73
	ldh a, [rOCPD]                                   ; $5074: $f0 $6b
	ld [hl], e                                       ; $5076: $73
	ldh a, [rOCPD]                                   ; $5077: $f0 $6b
	and b                                            ; $5079: $a0
	cpl                                              ; $507a: $2f
	ld b, e                                          ; $507b: $43
	jp hl                                            ; $507c: $e9


	xor a                                            ; $507d: $af
	xor b                                            ; $507e: $a8
	add sp, $4f                                      ; $507f: $e8 $4f
	xor b                                            ; $5081: $a8
	ld [$a0c6], a                                    ; $5082: $ea $c6 $a0
	call c, $38ad                                    ; $5085: $dc $ad $38
	jr c, jr_093_50ed                                ; $5088: $38 $63

	inc [hl]                                         ; $508a: $34
	ld [hl], d                                       ; $508b: $72
	ccf                                              ; $508c: $3f
	jr c, jr_093_50ca                                ; $508d: $38 $3b

	ccf                                              ; $508f: $3f
	rst SubAFromDE                                          ; $5090: $df
	and b                                            ; $5091: $a0
	db $ed                                           ; $5092: $ed
	ld c, c                                          ; $5093: $49
	db $ec                                           ; $5094: $ec
	ret c                                            ; $5095: $d8

	xor b                                            ; $5096: $a8
	ld l, a                                          ; $5097: $6f
	ld b, a                                          ; $5098: $47
	ld c, e                                          ; $5099: $4b
	inc a                                            ; $509a: $3c
	ld a, [hl-]                                      ; $509b: $3a
	ld h, e                                          ; $509c: $63
	ld a, [hl-]                                      ; $509d: $3a
	jr c, jr_093_50fd                                ; $509e: $38 $5d

	ld e, d                                          ; $50a0: $5a
	and b                                            ; $50a1: $a0
	cpl                                              ; $50a2: $2f
	ld b, e                                          ; $50a3: $43
	xor $10                                          ; $50a4: $ee $10
	xor b                                            ; $50a6: $a8
	rst JumpTable                                          ; $50a7: $c7

jr_093_50a8:
	dec [hl]                                         ; $50a8: $35
	ld b, b                                          ; $50a9: $40

jr_093_50aa:
	add hl, sp                                       ; $50aa: $39
	ld b, h                                          ; $50ab: $44
	ld c, h                                          ; $50ac: $4c
	and b                                            ; $50ad: $a0
	ld b, [hl]                                       ; $50ae: $46
	ld d, d                                          ; $50af: $52
	ld d, a                                          ; $50b0: $57
	ldh a, [rBGP]                                    ; $50b1: $f0 $47
	ldh a, [$2a]                                     ; $50b3: $f0 $2a
	ld c, e                                          ; $50b5: $4b
	inc de                                           ; $50b6: $13
	ld a, [hl-]                                      ; $50b7: $3a
	jr c, jr_093_5117                                ; $50b8: $38 $5d

	ld e, d                                          ; $50ba: $5a
	ld c, b                                          ; $50bb: $48
	xor h                                            ; $50bc: $ac
	jr c, jr_093_50f7                                ; $50bd: $38 $38

	ld h, e                                          ; $50bf: $63
	inc [hl]                                         ; $50c0: $34
	ld [hl], d                                       ; $50c1: $72
	ccf                                              ; $50c2: $3f
	jr c, @+$3d                                      ; $50c3: $38 $3b

	ccf                                              ; $50c5: $3f
	rst SubAFromDE                                          ; $50c6: $df
	and b                                            ; $50c7: $a0
	pop de                                           ; $50c8: $d1
	xor h                                            ; $50c9: $ac

jr_093_50ca:
	db $ed                                           ; $50ca: $ed
	ld c, c                                          ; $50cb: $49
	db $ec                                           ; $50cc: $ec
	ret c                                            ; $50cd: $d8

	xor b                                            ; $50ce: $a8
	ld l, a                                          ; $50cf: $6f
	ld b, d                                          ; $50d0: $42
	adc d                                            ; $50d1: $8a
	ld a, $58                                        ; $50d2: $3e $58
	ld b, a                                          ; $50d4: $47
	ld c, e                                          ; $50d5: $4b
	xor h                                            ; $50d6: $ac
	db $f4                                           ; $50d7: $f4
	sbc h                                            ; $50d8: $9c
	ldh a, [rKEY1]                                   ; $50d9: $f0 $4d
	ld c, a                                          ; $50db: $4f
	add b                                            ; $50dc: $80
	inc a                                            ; $50dd: $3c
	ld a, [hl-]                                      ; $50de: $3a
	jr c, jr_093_513e                                ; $50df: $38 $5d

	ld e, d                                          ; $50e1: $5a
	and b                                            ; $50e2: $a0
	cpl                                              ; $50e3: $2f
	ld b, e                                          ; $50e4: $43
	ld d, h                                          ; $50e5: $54
	ld c, l                                          ; $50e6: $4d
	inc a                                            ; $50e7: $3c
	ld d, b                                          ; $50e8: $50
	inc de                                           ; $50e9: $13
	xor $2a                                          ; $50ea: $ee $2a
	db $ec                                           ; $50ec: $ec

jr_093_50ed:
	ldh a, [c]                                       ; $50ed: $f2

jr_093_50ee:
	ld a, [hl-]                                      ; $50ee: $3a
	ld b, c                                          ; $50ef: $41
	ld b, h                                          ; $50f0: $44
	xor b                                            ; $50f1: $a8
	jp hl                                            ; $50f2: $e9


	call nc, Call_093_46a0                           ; $50f3: $d4 $a0 $46
	ld d, d                                          ; $50f6: $52

jr_093_50f7:
	ld d, a                                          ; $50f7: $57
	ldh a, [rBGP]                                    ; $50f8: $f0 $47
	ldh a, [$2a]                                     ; $50fa: $f0 $2a
	ld c, e                                          ; $50fc: $4b

jr_093_50fd:
	inc de                                           ; $50fd: $13
	ld a, [hl-]                                      ; $50fe: $3a
	jr c, jr_093_515e                                ; $50ff: $38 $5d

	ld e, d                                          ; $5101: $5a
	ld c, b                                          ; $5102: $48
	xor h                                            ; $5103: $ac
	db $eb                                           ; $5104: $eb
	inc [hl]                                         ; $5105: $34
	ld h, e                                          ; $5106: $63
	ld c, h                                          ; $5107: $4c
	xor h                                            ; $5108: $ac
	ld [hl], d                                       ; $5109: $72
	ccf                                              ; $510a: $3f
	jr c, @+$3d                                      ; $510b: $38 $3b

	ccf                                              ; $510d: $3f
	rst SubAFromDE                                          ; $510e: $df
	and b                                            ; $510f: $a0
	ld l, a                                          ; $5110: $6f
	ld d, e                                          ; $5111: $53
	jr c, jr_093_514e                                ; $5112: $38 $3a

	ld e, l                                          ; $5114: $5d
	ld c, l                                          ; $5115: $4d
	ld a, e                                          ; $5116: $7b

jr_093_5117:
	xor h                                            ; $5117: $ac
	db $ed                                           ; $5118: $ed
	ld c, c                                          ; $5119: $49
	ld b, a                                          ; $511a: $47
	ld c, a                                          ; $511b: $4f
	ld [hl], d                                       ; $511c: $72
	ld e, [hl]                                       ; $511d: $5e
	dec a                                            ; $511e: $3d
	ld b, d                                          ; $511f: $42
	inc de                                           ; $5120: $13
	ld c, d                                          ; $5121: $4a
	ld a, $66                                        ; $5122: $3e $66
	add hl, sp                                       ; $5124: $39
	ld e, l                                          ; $5125: $5d
	ld c, l                                          ; $5126: $4d
	ld e, d                                          ; $5127: $5a
	ld c, b                                          ; $5128: $48
	and b                                            ; $5129: $a0
	ld hl, $20ad                                     ; $512a: $21 $ad $20
	ld [hl], d                                       ; $512d: $72
	dec a                                            ; $512e: $3d
	ld d, l                                          ; $512f: $55
	ld a, [hl-]                                      ; $5130: $3a
	jr c, @+$5f                                      ; $5131: $38 $5d

	ld e, d                                          ; $5133: $5a
	xor h                                            ; $5134: $ac
	db $eb                                           ; $5135: $eb
	inc [hl]                                         ; $5136: $34
	ld h, e                                          ; $5137: $63
	ld c, h                                          ; $5138: $4c
	and b                                            ; $5139: $a0
	cpl                                              ; $513a: $2f
	ld b, e                                          ; $513b: $43
	ld b, [hl]                                       ; $513c: $46
	ld c, l                                          ; $513d: $4d

jr_093_513e:
	inc [hl]                                         ; $513e: $34
	db $ed                                           ; $513f: $ed
	ld d, e                                          ; $5140: $53
	ld d, e                                          ; $5141: $53
	jr c, jr_093_517e                                ; $5142: $38 $3a

	jr c, jr_093_50ee                                ; $5144: $38 $a8

	ld [$1343], a                                    ; $5146: $ea $43 $13
	jp hl                                            ; $5149: $e9


	cp l                                             ; $514a: $bd
	ld c, b                                          ; $514b: $48
	and b                                            ; $514c: $a0
	ld a, [hl-]                                      ; $514d: $3a

jr_093_514e:
	inc [hl]                                         ; $514e: $34
	ld a, [hl-]                                      ; $514f: $3a
	ld b, a                                          ; $5150: $47
	ld l, d                                          ; $5151: $6a
	ld b, d                                          ; $5152: $42
	ld c, b                                          ; $5153: $48
	and b                                            ; $5154: $a0
	cpl                                              ; $5155: $2f
	ld b, e                                          ; $5156: $43
	ldh a, [c]                                       ; $5157: $f2
	sub d                                            ; $5158: $92
	jr c, jr_093_5198                                ; $5159: $38 $3d

	ld c, d                                          ; $515b: $4a
	ld a, $66                                        ; $515c: $3e $66

jr_093_515e:
	add hl, sp                                       ; $515e: $39
	xor c                                            ; $515f: $a9
	ld d, h                                          ; $5160: $54
	ld c, l                                          ; $5161: $4d
	ld d, e                                          ; $5162: $53
	inc [hl]                                         ; $5163: $34
	ldh a, [$2c]                                     ; $5164: $f0 $2c
	pop af                                           ; $5166: $f1
	call z, $36f1                                    ; $5167: $cc $f1 $36
	pop af                                           ; $516a: $f1
	pop af                                           ; $516b: $f1
	ld b, h                                          ; $516c: $44
	ld b, l                                          ; $516d: $45
	and b                                            ; $516e: $a0
	ld d, h                                          ; $516f: $54
	ld c, l                                          ; $5170: $4d
	ld a, [hl-]                                      ; $5171: $3a
	ld d, b                                          ; $5172: $50
	inc [hl]                                         ; $5173: $34
	ldh a, [rWY]                                     ; $5174: $f0 $4a
	ld e, c                                          ; $5176: $59
	ld l, c                                          ; $5177: $69
	ld b, d                                          ; $5178: $42
	ldh a, [rBGP]                                    ; $5179: $f0 $47
	xor h                                            ; $517b: $ac
	ld c, a                                          ; $517c: $4f
	dec sp                                           ; $517d: $3b

jr_093_517e:
	ld c, c                                          ; $517e: $49
	db $ec                                           ; $517f: $ec
	ld c, $f1                                        ; $5180: $0e $f1
	ld a, c                                          ; $5182: $79
	pop af                                           ; $5183: $f1
	ld h, d                                          ; $5184: $62
	ld d, e                                          ; $5185: $53
	inc de                                           ; $5186: $13
	sub h                                            ; $5187: $94
	ld a, b                                          ; $5188: $78
	ld c, [hl]                                       ; $5189: $4e
	ld h, e                                          ; $518a: $63
	ld c, h                                          ; $518b: $4c
	and b                                            ; $518c: $a0
	cpl                                              ; $518d: $2f
	ld b, e                                          ; $518e: $43
	xor $10                                          ; $518f: $ee $10
	dec [hl]                                         ; $5191: $35
	rla                                              ; $5192: $17
	ld [hl-], a                                      ; $5193: $32
	pop af                                           ; $5194: $f1
	ld l, a                                          ; $5195: $6f
	ld b, a                                          ; $5196: $47
	ld c, a                                          ; $5197: $4f

jr_093_5198:
	dec sp                                           ; $5198: $3b
	ld c, c                                          ; $5199: $49
	pop af                                           ; $519a: $f1
	adc d                                            ; $519b: $8a
	di                                               ; $519c: $f3
	jp $f13a                                         ; $519d: $c3 $3a $f1


	sbc l                                            ; $51a0: $9d
	jr c, jr_093_520f                                ; $51a1: $38 $6c

	ld h, c                                          ; $51a3: $61
	ld d, e                                          ; $51a4: $53
	inc de                                           ; $51a5: $13
	ld b, [hl]                                       ; $51a6: $46
	ld c, [hl]                                       ; $51a7: $4e
	ld b, h                                          ; $51a8: $44
	ld e, a                                          ; $51a9: $5f
	add hl, sp                                       ; $51aa: $39
	ld [hl], $33                                     ; $51ab: $36 $33
	add hl, bc                                       ; $51ad: $09
	ld b, [hl]                                       ; $51ae: $46
	ld d, d                                          ; $51af: $52
	ld d, a                                          ; $51b0: $57
	ldh a, [rBGP]                                    ; $51b1: $f0 $47
	ldh a, [$2a]                                     ; $51b3: $f0 $2a
	ld c, e                                          ; $51b5: $4b
	inc de                                           ; $51b6: $13
	ld a, [hl-]                                      ; $51b7: $3a
	jr c, jr_093_5217                                ; $51b8: $38 $5d

	ld e, d                                          ; $51ba: $5a
	xor l                                            ; $51bb: $ad
	jr c, jr_093_51f6                                ; $51bc: $38 $38

	ld h, e                                          ; $51be: $63
	inc [hl]                                         ; $51bf: $34
	ld [hl], d                                       ; $51c0: $72
	ccf                                              ; $51c1: $3f
	jr c, jr_093_51ff                                ; $51c2: $38 $3b

	ccf                                              ; $51c4: $3f
	rst SubAFromDE                                          ; $51c5: $df
	and b                                            ; $51c6: $a0
	ld d, h                                          ; $51c7: $54
	ld c, l                                          ; $51c8: $4d
	ld a, [hl-]                                      ; $51c9: $3a
	ld d, b                                          ; $51ca: $50
	ldh a, [rWY]                                     ; $51cb: $f0 $4a
	ld e, c                                          ; $51cd: $59
	ld l, c                                          ; $51ce: $69
	ld b, d                                          ; $51cf: $42
	ldh a, [rBGP]                                    ; $51d0: $f0 $47
	xor h                                            ; $51d2: $ac
	ldh a, [$58]                                     ; $51d3: $f0 $58
	add h                                            ; $51d5: $84
	sbc l                                            ; $51d6: $9d
	ld d, b                                          ; $51d7: $50
	jr c, jr_093_5214                                ; $51d8: $38 $3a

	ld d, b                                          ; $51da: $50
	inc de                                           ; $51db: $13
	ldh a, [c]                                       ; $51dc: $f2
	push af                                          ; $51dd: $f5
	ld e, l                                          ; $51de: $5d
	ldh a, [rHDMA1]                                  ; $51df: $f0 $51
	ld h, c                                          ; $51e1: $61
	ld c, d                                          ; $51e2: $4a
	ld e, h                                          ; $51e3: $5c
	call c, Call_093_46a0                            ; $51e4: $dc $a0 $46
	ld d, d                                          ; $51e7: $52
	ld d, a                                          ; $51e8: $57
	ldh a, [rBGP]                                    ; $51e9: $f0 $47
	ldh a, [$2a]                                     ; $51eb: $f0 $2a
	ld c, e                                          ; $51ed: $4b
	inc de                                           ; $51ee: $13
	ld a, [hl-]                                      ; $51ef: $3a
	jr c, jr_093_524f                                ; $51f0: $38 $5d

	ld e, d                                          ; $51f2: $5a
	xor l                                            ; $51f3: $ad
	db $eb                                           ; $51f4: $eb
	inc [hl]                                         ; $51f5: $34

jr_093_51f6:
	ld h, e                                          ; $51f6: $63
	ld c, h                                          ; $51f7: $4c
	xor h                                            ; $51f8: $ac
	ld [hl], d                                       ; $51f9: $72
	ccf                                              ; $51fa: $3f
	jr c, jr_093_5238                                ; $51fb: $38 $3b

	ccf                                              ; $51fd: $3f
	rst SubAFromDE                                          ; $51fe: $df

jr_093_51ff:
	and b                                            ; $51ff: $a0
	ld d, h                                          ; $5200: $54
	ld c, l                                          ; $5201: $4d
	ld a, [hl-]                                      ; $5202: $3a
	ld d, b                                          ; $5203: $50
	ldh a, [rWY]                                     ; $5204: $f0 $4a
	ld e, c                                          ; $5206: $59
	ld l, c                                          ; $5207: $69
	ld b, d                                          ; $5208: $42
	ldh a, [rBGP]                                    ; $5209: $f0 $47
	xor h                                            ; $520b: $ac
	pop af                                           ; $520c: $f1
	inc de                                           ; $520d: $13
	ldh a, [c]                                       ; $520e: $f2

jr_093_520f:
	ret nc                                           ; $520f: $d0

	ld c, c                                          ; $5210: $49
	inc a                                            ; $5211: $3c
	pop af                                           ; $5212: $f1
	sbc l                                            ; $5213: $9d

jr_093_5214:
	ld h, e                                          ; $5214: $63
	ld a, [hl-]                                      ; $5215: $3a
	ld d, l                                          ; $5216: $55

jr_093_5217:
	ccf                                              ; $5217: $3f
	jr c, jr_093_5252                                ; $5218: $38 $38

	ld b, d                                          ; $521a: $42
	ld c, h                                          ; $521b: $4c
	and b                                            ; $521c: $a0
	cpl                                              ; $521d: $2f
	ld b, e                                          ; $521e: $43
	db $ec                                           ; $521f: $ec
	cp c                                             ; $5220: $b9
	ld d, b                                          ; $5221: $50
	xor h                                            ; $5222: $ac
	ldh a, [rPCM12]                                  ; $5223: $f0 $76
	ldh a, [$d2]                                     ; $5225: $f0 $d2
	ldh a, [$3f]                                     ; $5227: $f0 $3f
	ld e, d                                          ; $5229: $5a
	add hl, sp                                       ; $522a: $39
	and c                                            ; $522b: $a1
	call c, $d034                                    ; $522c: $dc $34 $d0
	xor b                                            ; $522f: $a8
	ld l, a                                          ; $5230: $6f
	ld d, e                                          ; $5231: $53
	pop af                                           ; $5232: $f1
	dec b                                            ; $5233: $05
	ldh a, [rWY]                                     ; $5234: $f0 $4a
	ldh a, [$03]                                     ; $5236: $f0 $03

jr_093_5238:
	ld a, [hl-]                                      ; $5238: $3a
	ld b, c                                          ; $5239: $41
	ld b, h                                          ; $523a: $44
	inc a                                            ; $523b: $3c
	ld d, b                                          ; $523c: $50
	xor h                                            ; $523d: $ac
	adc d                                            ; $523e: $8a
	add h                                            ; $523f: $84
	ld b, a                                          ; $5240: $47
	ldh a, [$bd]                                     ; $5241: $f0 $bd
	jr c, jr_093_5284                                ; $5243: $38 $3f

	ld b, l                                          ; $5245: $45
	and b                                            ; $5246: $a0
	cpl                                              ; $5247: $2f
	ld b, e                                          ; $5248: $43
	ld [$a84a], a                                    ; $5249: $ea $4a $a8
	ld e, d                                          ; $524c: $5a
	add hl, sp                                       ; $524d: $39
	and c                                            ; $524e: $a1

jr_093_524f:
	db $ec                                           ; $524f: $ec
	sub $4c                                          ; $5250: $d6 $4c

jr_093_5252:
	xor b                                            ; $5252: $a8
	ld c, d                                          ; $5253: $4a
	ld c, a                                          ; $5254: $4f
	inc [hl]                                         ; $5255: $34
	ld l, a                                          ; $5256: $6f
	ld c, e                                          ; $5257: $4b
	xor h                                            ; $5258: $ac
	ld c, a                                          ; $5259: $4f
	add hl, sp                                       ; $525a: $39
	ldh a, [rHDMA4]                                  ; $525b: $f0 $54
	ld a, $8a                                        ; $525d: $3e $8a
	add h                                            ; $525f: $84
	ld b, l                                          ; $5260: $45
	and b                                            ; $5261: $a0
	cpl                                              ; $5262: $2f
	ld b, e                                          ; $5263: $43
	rst JumpTable                                          ; $5264: $c7
	ld b, h                                          ; $5265: $44
	ld c, h                                          ; $5266: $4c
	and b                                            ; $5267: $a0
	call c, $f0a8                                    ; $5268: $dc $a8 $f0
	halt                                             ; $526b: $76
	ccf                                              ; $526c: $3f
	ld a, [hl-]                                      ; $526d: $3a
	jr c, jr_093_52cd                                ; $526e: $38 $5d

	ld e, d                                          ; $5270: $5a
	xor h                                            ; $5271: $ac
	ldh a, [c]                                       ; $5272: $f2
	ld a, b                                          ; $5273: $78
	ld a, $3f                                        ; $5274: $3e $3f
	rst SubAFromDE                                          ; $5276: $df
	ld h, e                                          ; $5277: $63
	and b                                            ; $5278: $a0
	cpl                                              ; $5279: $2f
	ld b, e                                          ; $527a: $43
	ld b, [hl]                                       ; $527b: $46
	inc [hl]                                         ; $527c: $34
	ld b, [hl]                                       ; $527d: $46
	ld d, a                                          ; $527e: $57
	ld d, e                                          ; $527f: $53
	ld c, c                                          ; $5280: $49
	add hl, sp                                       ; $5281: $39
	xor l                                            ; $5282: $ad
	ld [hl-], a                                      ; $5283: $32

jr_093_5284:
	ldh a, [rPCM12]                                  ; $5284: $f0 $76
	ccf                                              ; $5286: $3f
	ld a, [hl-]                                      ; $5287: $3a
	jr c, jr_093_52cc                                ; $5288: $38 $42

	ld b, a                                          ; $528a: $47
	inc [hl]                                         ; $528b: $34
	ldh a, [c]                                       ; $528c: $f2
	ld a, b                                          ; $528d: $78
	ld a, $3f                                        ; $528e: $3e $3f
	inc de                                           ; $5290: $13
	ld d, l                                          ; $5291: $55
	ld c, l                                          ; $5292: $4d
	ld c, [hl]                                       ; $5293: $4e
	ld a, [hl-]                                      ; $5294: $3a
	ld b, c                                          ; $5295: $41
	ccf                                              ; $5296: $3f
	inc [hl]                                         ; $5297: $34
	ldh a, [$c0]                                     ; $5298: $f0 $c0
	ldh a, [$f0]                                     ; $529a: $f0 $f0
	ld b, h                                          ; $529c: $44
	and e                                            ; $529d: $a3
	cpl                                              ; $529e: $2f
	ld b, e                                          ; $529f: $43
	ld b, [hl]                                       ; $52a0: $46
	dec sp                                           ; $52a1: $3b
	inc [hl]                                         ; $52a2: $34
	db $ed                                           ; $52a3: $ed
	ld d, e                                          ; $52a4: $53
	xor b                                            ; $52a5: $a8
	add sp, -$71                                     ; $52a6: $e8 $8f
	and c                                            ; $52a8: $a1
	call c, Call_093_6f34                            ; $52a9: $dc $34 $6f
	ld b, d                                          ; $52ac: $42
	adc d                                            ; $52ad: $8a
	ld h, d                                          ; $52ae: $62
	xor h                                            ; $52af: $ac
	ldh a, [$3f]                                     ; $52b0: $f0 $3f
	ld c, c                                          ; $52b2: $49
	ld a, $3f                                        ; $52b3: $3e $3f
	ldh a, [$8d]                                     ; $52b5: $f0 $8d
	ld a, $3f                                        ; $52b7: $3e $3f
	ld h, h                                          ; $52b9: $64
	ld d, l                                          ; $52ba: $55
	ld b, d                                          ; $52bb: $42
	ld c, a                                          ; $52bc: $4f
	inc de                                           ; $52bd: $13
	ldh a, [$5c]                                     ; $52be: $f0 $5c
	ld d, l                                          ; $52c0: $55
	db $ec                                           ; $52c1: $ec
	dec bc                                           ; $52c2: $0b
	and b                                            ; $52c3: $a0
	ldh a, [rPCM12]                                  ; $52c4: $f0 $76
	ccf                                              ; $52c6: $3f
	ld c, [hl]                                       ; $52c7: $4e
	ld h, e                                          ; $52c8: $63
	xor b                                            ; $52c9: $a8
	db $ec                                           ; $52ca: $ec
	reti                                             ; $52cb: $d9


jr_093_52cc:
	inc [hl]                                         ; $52cc: $34

jr_093_52cd:
	ld l, a                                          ; $52cd: $6f
	dec sp                                           ; $52ce: $3b
	ccf                                              ; $52cf: $3f
	adc d                                            ; $52d0: $8a
	add h                                            ; $52d1: $84
	ld b, l                                          ; $52d2: $45

jr_093_52d3:
	ld c, h                                          ; $52d3: $4c
	and b                                            ; $52d4: $a0
	ld d, h                                          ; $52d5: $54
	ld c, l                                          ; $52d6: $4d
	ld b, d                                          ; $52d7: $42
	ld e, d                                          ; $52d8: $5a
	ld d, h                                          ; $52d9: $54
	ld d, e                                          ; $52da: $53
	ld l, a                                          ; $52db: $6f
	ld a, [hl-]                                      ; $52dc: $3a
	ld b, d                                          ; $52dd: $42
	xor h                                            ; $52de: $ac
	db $ed                                           ; $52df: $ed
	ld e, [hl]                                       ; $52e0: $5e
	ldh a, [rPCM12]                                  ; $52e1: $f0 $76
	ccf                                              ; $52e3: $3f
	ld a, [hl-]                                      ; $52e4: $3a
	jr c, jr_093_52d3                                ; $52e5: $38 $ec

	ret c                                            ; $52e7: $d8

	xor b                                            ; $52e8: $a8
	ld c, a                                          ; $52e9: $4f
	dec sp                                           ; $52ea: $3b
	ld c, c                                          ; $52eb: $49
	ld b, l                                          ; $52ec: $45
	ld d, l                                          ; $52ed: $55
	ld [hl], d                                       ; $52ee: $72
	ld a, [hl-]                                      ; $52ef: $3a
	ld e, b                                          ; $52f0: $58
	jr c, jr_093_5338                                ; $52f1: $38 $45

	and b                                            ; $52f3: $a0
	cpl                                              ; $52f4: $2f
	ld b, e                                          ; $52f5: $43
	jp hl                                            ; $52f6: $e9


	and h                                            ; $52f7: $a4
	xor b                                            ; $52f8: $a8
	ldh a, [$bd]                                     ; $52f9: $f0 $bd
	ld e, h                                          ; $52fb: $5c
	ldh a, [hDisp1_WX]                                     ; $52fc: $f0 $96
	ld a, $52                                        ; $52fe: $3e $52
	ld d, c                                          ; $5300: $51
	and b                                            ; $5301: $a0
	cpl                                              ; $5302: $2f
	ld b, e                                          ; $5303: $43
	ld l, d                                          ; $5304: $6a
	ldh a, [$0d]                                     ; $5305: $f0 $0d
	ld b, d                                          ; $5307: $42
	ld c, e                                          ; $5308: $4b
	xor h                                            ; $5309: $ac
	ld e, d                                          ; $530a: $5a
	add hl, sp                                       ; $530b: $39
	ld c, d                                          ; $530c: $4a
	ld a, $66                                        ; $530d: $3e $66
	add hl, sp                                       ; $530f: $39
	and c                                            ; $5310: $a1
	ldh a, [rPCM12]                                  ; $5311: $f0 $76
	ccf                                              ; $5313: $3f
	ld a, [hl-]                                      ; $5314: $3a
	jr c, jr_093_5374                                ; $5315: $38 $5d

	ld e, d                                          ; $5317: $5a
	xor h                                            ; $5318: $ac
	ldh a, [c]                                       ; $5319: $f2
	ld a, b                                          ; $531a: $78
	ld a, $3f                                        ; $531b: $3e $3f
	rst SubAFromDE                                          ; $531d: $df
	ld h, e                                          ; $531e: $63
	and b                                            ; $531f: $a0
	cpl                                              ; $5320: $2f
	ld b, e                                          ; $5321: $43
	ld b, [hl]                                       ; $5322: $46
	inc [hl]                                         ; $5323: $34
	ld b, [hl]                                       ; $5324: $46
	ld d, a                                          ; $5325: $57
	ld d, e                                          ; $5326: $53
	ld c, c                                          ; $5327: $49
	add hl, sp                                       ; $5328: $39
	xor l                                            ; $5329: $ad
	ld [hl-], a                                      ; $532a: $32
	dec a                                            ; $532b: $3d
	inc [hl]                                         ; $532c: $34
	pop af                                           ; $532d: $f1
	jp hl                                            ; $532e: $e9


	inc a                                            ; $532f: $3c
	dec sp                                           ; $5330: $3b
	dec a                                            ; $5331: $3d
	and e                                            ; $5332: $a3
	jr c, jr_093_5385                                ; $5333: $38 $50

	ld a, [hl-]                                      ; $5335: $3a
	jr c, jr_093_539b                                ; $5336: $38 $63

jr_093_5338:
	and b                                            ; $5338: $a0
	cpl                                              ; $5339: $2f
	ld b, e                                          ; $533a: $43
	ld b, [hl]                                       ; $533b: $46
	dec sp                                           ; $533c: $3b
	inc [hl]                                         ; $533d: $34
	db $ed                                           ; $533e: $ed
	ld d, e                                          ; $533f: $53
	xor b                                            ; $5340: $a8
	jp hl                                            ; $5341: $e9


	or h                                             ; $5342: $b4
	and b                                            ; $5343: $a0
	xor $14                                          ; $5344: $ee $14
	xor h                                            ; $5346: $ac
	db $eb                                           ; $5347: $eb
	ld e, b                                          ; $5348: $58
	ldh a, [$bd]                                     ; $5349: $f0 $bd
	jr c, jr_093_538c                                ; $534b: $38 $3f

	ld c, [hl]                                       ; $534d: $4e
	ld b, d                                          ; $534e: $42
	ld c, h                                          ; $534f: $4c
	and b                                            ; $5350: $a0
	cpl                                              ; $5351: $2f
	ld b, e                                          ; $5352: $43
	add sp, -$13                                     ; $5353: $e8 $ed
	xor b                                            ; $5355: $a8
	db $eb                                           ; $5356: $eb
	add h                                            ; $5357: $84
	inc [hl]                                         ; $5358: $34
	db $eb                                           ; $5359: $eb
	xor c                                            ; $535a: $a9
	ld c, b                                          ; $535b: $48
	and b                                            ; $535c: $a0
	db $ed                                           ; $535d: $ed
	ld e, a                                          ; $535e: $5f
	ld [hl], $54                                     ; $535f: $36 $54
	add hl, sp                                       ; $5361: $39
	jr c, jr_093_539d                                ; $5362: $38 $39

	ld b, d                                          ; $5364: $42
	ld c, e                                          ; $5365: $4b
	xor h                                            ; $5366: $ac
	db $ed                                           ; $5367: $ed
	ld e, a                                          ; $5368: $5f
	ld c, c                                          ; $5369: $49
	ld c, e                                          ; $536a: $4b
	add d                                            ; $536b: $82
	ld h, e                                          ; $536c: $63
	ld a, [hl-]                                      ; $536d: $3a
	jr c, jr_093_53d3                                ; $536e: $38 $63

	and b                                            ; $5370: $a0
	cpl                                              ; $5371: $2f
	ld b, e                                          ; $5372: $43
	ld e, [hl]                                       ; $5373: $5e

jr_093_5374:
	dec sp                                           ; $5374: $3b
	xor b                                            ; $5375: $a8
	ld [hl-], a                                      ; $5376: $32
	add hl, sp                                       ; $5377: $39
	dec sp                                           ; $5378: $3b
	inc [hl]                                         ; $5379: $34
	db $fc                                           ; $537a: $fc
	ld [$f038], sp                                   ; $537b: $08 $38 $f0
	db $db                                           ; $537e: $db
	ld hl, sp+$2d                                    ; $537f: $f8 $2d
	ld h, d                                          ; $5381: $62
	ld c, b                                          ; $5382: $48
	and e                                            ; $5383: $a3
	ld l, a                                          ; $5384: $6f

jr_093_5385:
	ld b, d                                          ; $5385: $42
	ld b, l                                          ; $5386: $45
	add hl, sp                                       ; $5387: $39
	ld a, [hl-]                                      ; $5388: $3a
	xor h                                            ; $5389: $ac
	inc a                                            ; $538a: $3c
	ld b, c                                          ; $538b: $41

jr_093_538c:
	di                                               ; $538c: $f3
	ld e, a                                          ; $538d: $5f
	ld e, h                                          ; $538e: $5c
	ld a, [hl-]                                      ; $538f: $3a
	adc d                                            ; $5390: $8a
	ld a, $58                                        ; $5391: $3e $58
	ld h, d                                          ; $5393: $62
	ldh a, [rHDMA1]                                  ; $5394: $f0 $51
	dec sp                                           ; $5396: $3b
	dec a                                            ; $5397: $3d
	add h                                            ; $5398: $84
	ld h, d                                          ; $5399: $62
	inc de                                           ; $539a: $13

jr_093_539b:
	pop af                                           ; $539b: $f1
	dec b                                            ; $539c: $05

jr_093_539d:
	ldh a, [rWY]                                     ; $539d: $f0 $4a
	ldh a, [$03]                                     ; $539f: $f0 $03
	ld b, a                                          ; $53a1: $47
	ld a, $3f                                        ; $53a2: $3e $3f
	inc [hl]                                         ; $53a4: $34
	ldh a, [hDisp1_OBP1]                                     ; $53a5: $f0 $94
	ld [hl], c                                       ; $53a7: $71
	ccf                                              ; $53a8: $3f
	db $ed                                           ; $53a9: $ed
	ld e, a                                          ; $53aa: $5f
	ld c, c                                          ; $53ab: $49
	inc de                                           ; $53ac: $13
	add d                                            ; $53ad: $82
	ld e, [hl]                                       ; $53ae: $5e
	ld c, [hl]                                       ; $53af: $4e
	ld b, d                                          ; $53b0: $42
	ld b, l                                          ; $53b1: $45
	and b                                            ; $53b2: $a0
	cpl                                              ; $53b3: $2f
	ld b, e                                          ; $53b4: $43
	ld b, b                                          ; $53b5: $40
	inc [hl]                                         ; $53b6: $34
	ld b, b                                          ; $53b7: $40
	ld c, l                                          ; $53b8: $4d
	ld a, [hl-]                                      ; $53b9: $3a
	ld d, b                                          ; $53ba: $50
	xor h                                            ; $53bb: $ac
	ld l, d                                          ; $53bc: $6a
	ldh a, [$0d]                                     ; $53bd: $f0 $0d
	pop af                                           ; $53bf: $f1
	dec b                                            ; $53c0: $05
	ldh a, [rWY]                                     ; $53c1: $f0 $4a
	ldh a, [$03]                                     ; $53c3: $f0 $03
	ld b, a                                          ; $53c5: $47
	ld a, [hl-]                                      ; $53c6: $3a
	dec sp                                           ; $53c7: $3b
	ccf                                              ; $53c8: $3f
	ld d, l                                          ; $53c9: $55
	ld c, l                                          ; $53ca: $4d
	ld a, [hl-]                                      ; $53cb: $3a
	jr c, @-$5d                                      ; $53cc: $38 $a1

	call c, $f0ad                                    ; $53ce: $dc $ad $f0
	and h                                            ; $53d1: $a4
	ld e, [hl]                                       ; $53d2: $5e

jr_093_53d3:
	ld a, [hl-]                                      ; $53d3: $3a

jr_093_53d4:
	jr c, jr_093_542a                                ; $53d4: $38 $54

	ld c, c                                          ; $53d6: $49
	ld c, a                                          ; $53d7: $4f
	ld a, [hl-]                                      ; $53d8: $3a
	jr c, jr_093_543e                                ; $53d9: $38 $63

	ld b, l                                          ; $53db: $45
	and b                                            ; $53dc: $a0
	cpl                                              ; $53dd: $2f
	ld b, e                                          ; $53de: $43
	ld e, [hl]                                       ; $53df: $5e
	dec sp                                           ; $53e0: $3b
	inc [hl]                                         ; $53e1: $34
	adc b                                            ; $53e2: $88
	sub c                                            ; $53e3: $91
	and b                                            ; $53e4: $a0
	db $ed                                           ; $53e5: $ed
	ld a, h                                          ; $53e6: $7c
	ld b, a                                          ; $53e7: $47
	ldh a, [$ec]                                     ; $53e8: $f0 $ec
	ld d, d                                          ; $53ea: $52
	dec sp                                           ; $53eb: $3b
	ccf                                              ; $53ec: $3f
	ld c, [hl]                                       ; $53ed: $4e
	inc de                                           ; $53ee: $13
	ld c, d                                          ; $53ef: $4a
	ld a, $66                                        ; $53f0: $3e $66
	add hl, sp                                       ; $53f2: $39
	xor b                                            ; $53f3: $a8
	or h                                             ; $53f4: $b4
	xor h                                            ; $53f5: $ac
	db $ec                                           ; $53f6: $ec
	push bc                                          ; $53f7: $c5
	inc [hl]                                         ; $53f8: $34
	ldh a, [rHDMA5]                                  ; $53f9: $f0 $55
	ldh a, [rBCPS]                                   ; $53fb: $f0 $68
	ld d, c                                          ; $53fd: $51
	ld c, [hl]                                       ; $53fe: $4e
	ld h, e                                          ; $53ff: $63
	and b                                            ; $5400: $a0
	db $ec                                           ; $5401: $ec
	ldh a, [$a8]                                     ; $5402: $f0 $a8
	db $eb                                           ; $5404: $eb
	ld e, b                                          ; $5405: $58
	ldh a, [$bd]                                     ; $5406: $f0 $bd
	jr c, jr_093_5449                                ; $5408: $38 $3f

	ld c, [hl]                                       ; $540a: $4e
	ld b, d                                          ; $540b: $42
	ld c, h                                          ; $540c: $4c
	and b                                            ; $540d: $a0
	ld h, h                                          ; $540e: $64
	pop af                                           ; $540f: $f1
	pop bc                                           ; $5410: $c1
	ld d, a                                          ; $5411: $57
	ld b, l                                          ; $5412: $45
	xor b                                            ; $5413: $a8
	or h                                             ; $5414: $b4
	inc [hl]                                         ; $5415: $34
	ldh a, [rHDMA5]                                  ; $5416: $f0 $55
	ldh a, [rBCPS]                                   ; $5418: $f0 $68
	ld d, c                                          ; $541a: $51
	ld c, [hl]                                       ; $541b: $4e
	ld h, e                                          ; $541c: $63
	and b                                            ; $541d: $a0
	adc b                                            ; $541e: $88
	sub c                                            ; $541f: $91
	ld b, d                                          ; $5420: $42
	adc d                                            ; $5421: $8a
	ld h, d                                          ; $5422: $62
	inc de                                           ; $5423: $13
	ldh a, [$63]                                     ; $5424: $f0 $63
	pop af                                           ; $5426: $f1
	dec sp                                           ; $5427: $3b
	ld c, d                                          ; $5428: $4a
	ld e, h                                          ; $5429: $5c

jr_093_542a:
	ld c, [hl]                                       ; $542a: $4e
	ld b, l                                          ; $542b: $45
	add hl, sp                                       ; $542c: $39
	ld b, a                                          ; $542d: $47
	ld a, [hl-]                                      ; $542e: $3a
	ld d, a                                          ; $542f: $57
	ld a, [hl-]                                      ; $5430: $3a
	ld e, b                                          ; $5431: $58
	jr c, jr_093_53d4                                ; $5432: $38 $a0

	cpl                                              ; $5434: $2f
	ld b, e                                          ; $5435: $43
	jp hl                                            ; $5436: $e9


	ld d, d                                          ; $5437: $52
	ld b, l                                          ; $5438: $45
	xor b                                            ; $5439: $a8
	ld l, e                                          ; $543a: $6b
	ld a, $47                                        ; $543b: $3e $47
	ld a, b                                          ; $543d: $78

jr_093_543e:
	dec a                                            ; $543e: $3d
	ld b, c                                          ; $543f: $41
	ld b, h                                          ; $5440: $44
	ld e, a                                          ; $5441: $5f
	add hl, sp                                       ; $5442: $39
	ld c, b                                          ; $5443: $48
	and c                                            ; $5444: $a1
	cpl                                              ; $5445: $2f
	ld b, e                                          ; $5446: $43
	jp hl                                            ; $5447: $e9


	ld b, e                                          ; $5448: $43

jr_093_5449:
	xor b                                            ; $5449: $a8
	db $ed                                           ; $544a: $ed
	ld d, e                                          ; $544b: $53
	db $eb                                           ; $544c: $eb
	and d                                            ; $544d: $a2
	inc de                                           ; $544e: $13
	ld [$a051], a                                    ; $544f: $ea $51 $a0
	ld l, a                                          ; $5452: $6f
	ld b, a                                          ; $5453: $47
	ldh a, [rPCM12]                                  ; $5454: $f0 $76
	ldh a, [rTMA]                                    ; $5456: $f0 $06
	add hl, sp                                       ; $5458: $39
	ldh a, [$3f]                                     ; $5459: $f0 $3f
	ld c, e                                          ; $545b: $4b
	inc de                                           ; $545c: $13
	ld b, [hl]                                       ; $545d: $46
	ld c, [hl]                                       ; $545e: $4e
	inc a                                            ; $545f: $3c
	ld a, $50                                        ; $5460: $3e $50
	ld c, b                                          ; $5462: $48
	and c                                            ; $5463: $a1
	cpl                                              ; $5464: $2f
	ld b, e                                          ; $5465: $43
	ld e, d                                          ; $5466: $5a
	add hl, sp                                       ; $5467: $39
	inc a                                            ; $5468: $3c
	ld a, [hl-]                                      ; $5469: $3a
	ld [hl], h                                       ; $546a: $74
	xor b                                            ; $546b: $a8
	ld d, h                                          ; $546c: $54
	ld c, l                                          ; $546d: $4d
	ld a, [hl-]                                      ; $546e: $3a
	ld b, c                                          ; $546f: $41
	inc a                                            ; $5470: $3c
	ld e, d                                          ; $5471: $5a
	add hl, sp                                       ; $5472: $39
	and c                                            ; $5473: $a1
	jr c, jr_093_54ae                                ; $5474: $38 $38

	db $ec                                           ; $5476: $ec
	ret c                                            ; $5477: $d8

	xor b                                            ; $5478: $a8
	ld d, h                                          ; $5479: $54
	ld c, l                                          ; $547a: $4d
	ld b, [hl]                                       ; $547b: $46
	ld a, [hl-]                                      ; $547c: $3a
	dec a                                            ; $547d: $3d
	ld d, e                                          ; $547e: $53
	ldh a, [$bd]                                     ; $547f: $f0 $bd
	jr c, jr_093_54c0                                ; $5481: $38 $3d

	ld b, d                                          ; $5483: $42
	and c                                            ; $5484: $a1
	cpl                                              ; $5485: $2f
	ld b, e                                          ; $5486: $43
	ld b, [hl]                                       ; $5487: $46
	ld [hl], h                                       ; $5488: $74
	inc [hl]                                         ; $5489: $34
	ld b, b                                          ; $548a: $40
	add hl, sp                                       ; $548b: $39
	ld b, h                                          ; $548c: $44
	ld b, l                                          ; $548d: $45
	and b                                            ; $548e: $a0
	ld l, d                                          ; $548f: $6a
	ldh a, [$0d]                                     ; $5490: $f0 $0d
	inc [hl]                                         ; $5492: $34
	ld l, a                                          ; $5493: $6f
	ld b, d                                          ; $5494: $42
	ldh a, [$3f]                                     ; $5495: $f0 $3f
	ld h, d                                          ; $5497: $62
	inc de                                           ; $5498: $13
	ldh a, [$bd]                                     ; $5499: $f0 $bd
	jr c, jr_093_54dc                                ; $549b: $38 $3f

	ld c, a                                          ; $549d: $4f
	ld d, b                                          ; $549e: $50
	ld h, h                                          ; $549f: $64
	add hl, sp                                       ; $54a0: $39
	inc a                                            ; $54a1: $3c
	ld a, $50                                        ; $54a2: $3e $50
	and b                                            ; $54a4: $a0
	cpl                                              ; $54a5: $2f
	ld b, e                                          ; $54a6: $43
	ld b, b                                          ; $54a7: $40

Call_093_54a8:
	ld b, c                                          ; $54a8: $41
	ld a, [hl-]                                      ; $54a9: $3a
	ld b, a                                          ; $54aa: $47
	inc de                                           ; $54ab: $13
	ld a, a                                          ; $54ac: $7f
	ld b, a                                          ; $54ad: $47

jr_093_54ae:
	sub [hl]                                         ; $54ae: $96
	dec sp                                           ; $54af: $3b
	ccf                                              ; $54b0: $3f
	ld d, l                                          ; $54b1: $55
	ld c, l                                          ; $54b2: $4d
	dec a                                            ; $54b3: $3d
	ld b, c                                          ; $54b4: $41
	ld b, h                                          ; $54b5: $44
	xor b                                            ; $54b6: $a8
	add sp, -$1b                                     ; $54b7: $e8 $e5
	and b                                            ; $54b9: $a0
	ldh a, [$5a]                                     ; $54ba: $f0 $5a
	add l                                            ; $54bc: $85
	xor h                                            ; $54bd: $ac
	pop de                                           ; $54be: $d1
	inc [hl]                                         ; $54bf: $34

jr_093_54c0:
	jr c, jr_093_54fa                                ; $54c0: $38 $38

	db $ec                                           ; $54c2: $ec
	ret c                                            ; $54c3: $d8

	xor b                                            ; $54c4: $a8
	ld d, h                                          ; $54c5: $54
	ld c, l                                          ; $54c6: $4d
	ld b, [hl]                                       ; $54c7: $46
	ld a, [hl-]                                      ; $54c8: $3a
	dec a                                            ; $54c9: $3d
	ld d, e                                          ; $54ca: $53
	ldh a, [$bd]                                     ; $54cb: $f0 $bd
	jr c, jr_093_550c                                ; $54cd: $38 $3d

	ld b, d                                          ; $54cf: $42
	and c                                            ; $54d0: $a1
	ld b, [hl]                                       ; $54d1: $46
	ld a, [hl-]                                      ; $54d2: $3a
	dec a                                            ; $54d3: $3d
	ld c, a                                          ; $54d4: $4f
	db $ec                                           ; $54d5: $ec
	ld hl, sp-$54                                    ; $54d6: $f8 $ac
	adc d                                            ; $54d8: $8a
	ld a, $38                                        ; $54d9: $3e $38
	ld c, a                                          ; $54db: $4f

jr_093_54dc:
	ld b, d                                          ; $54dc: $42
	ld h, d                                          ; $54dd: $62
	ldh a, [$63]                                     ; $54de: $f0 $63
	pop af                                           ; $54e0: $f1
	dec sp                                           ; $54e1: $3b
	inc de                                           ; $54e2: $13
	ld c, d                                          ; $54e3: $4a
	ld e, h                                          ; $54e4: $5c
	ld c, [hl]                                       ; $54e5: $4e
	ldh a, [hDisp0_OBP1]                                     ; $54e6: $f0 $87
	ld b, a                                          ; $54e8: $47
	ld a, [hl-]                                      ; $54e9: $3a
	dec sp                                           ; $54ea: $3b
	dec a                                            ; $54eb: $3d
	ld b, d                                          ; $54ec: $42
	ld c, h                                          ; $54ed: $4c
	and b                                            ; $54ee: $a0
	cpl                                              ; $54ef: $2f
	ld b, e                                          ; $54f0: $43
	ld c, e                                          ; $54f1: $4b
	ld c, e                                          ; $54f2: $4b
	xor l                                            ; $54f3: $ad
	ld b, [hl]                                       ; $54f4: $46
	ld d, a                                          ; $54f5: $57
	ld d, e                                          ; $54f6: $53
	ld c, c                                          ; $54f7: $49
	add hl, sp                                       ; $54f8: $39
	and b                                            ; $54f9: $a0

jr_093_54fa:
	db $ec                                           ; $54fa: $ec
	sub $4c                                          ; $54fb: $d6 $4c
	xor b                                            ; $54fd: $a8
	ld d, h                                          ; $54fe: $54
	ld c, l                                          ; $54ff: $4d
	ld b, [hl]                                       ; $5500: $46
	ld a, [hl-]                                      ; $5501: $3a
	dec a                                            ; $5502: $3d
	ld d, e                                          ; $5503: $53
	ldh a, [$bd]                                     ; $5504: $f0 $bd
	jr c, jr_093_5545                                ; $5506: $38 $3d

	ld b, d                                          ; $5508: $42
	and c                                            ; $5509: $a1
	ld c, a                                          ; $550a: $4f
	add hl, sp                                       ; $550b: $39

jr_093_550c:
	ldh a, [rHDMA4]                                  ; $550c: $f0 $54
	ld a, $92                                        ; $550e: $3e $92
	adc [hl]                                         ; $5510: $8e
	dec sp                                           ; $5511: $3b
	dec a                                            ; $5512: $3d
	inc de                                           ; $5513: $13
	ldh a, [$08]                                     ; $5514: $f0 $08
	add hl, sp                                       ; $5516: $39
	ld d, e                                          ; $5517: $53
	ret nc                                           ; $5518: $d0

	and b                                            ; $5519: $a0
	cpl                                              ; $551a: $2f
	ld b, e                                          ; $551b: $43
	rst JumpTable                                          ; $551c: $c7
	ld b, h                                          ; $551d: $44
	ld c, h                                          ; $551e: $4c
	ld c, b                                          ; $551f: $48
	and b                                            ; $5520: $a0
	ld l, e                                          ; $5521: $6b
	ld b, d                                          ; $5522: $42
	ldh a, [$ed]                                     ; $5523: $f0 $ed
	inc a                                            ; $5525: $3c
	inc de                                           ; $5526: $13
	ldh a, [rTAC]                                    ; $5527: $f0 $07
	inc a                                            ; $5529: $3c
	ld d, b                                          ; $552a: $50
	ld a, [hl-]                                      ; $552b: $3a
	jr c, jr_093_558b                                ; $552c: $38 $5d

	ld e, d                                          ; $552e: $5a
	xor h                                            ; $552f: $ac
	db $ec                                           ; $5530: $ec
	cp c                                             ; $5531: $b9
	ld b, c                                          ; $5532: $41
	db $ec                                           ; $5533: $ec
	ret c                                            ; $5534: $d8

	and b                                            ; $5535: $a0
	cpl                                              ; $5536: $2f
	ld b, e                                          ; $5537: $43
	ld b, [hl]                                       ; $5538: $46
	ld d, a                                          ; $5539: $57
	ld d, e                                          ; $553a: $53
	ld c, c                                          ; $553b: $49
	add hl, sp                                       ; $553c: $39
	xor b                                            ; $553d: $a8
	ldh a, [$31]                                     ; $553e: $f0 $31
	ld c, e                                          ; $5540: $4b
	db $eb                                           ; $5541: $eb
	ld l, a                                          ; $5542: $6f
	inc de                                           ; $5543: $13
	ld b, h                                          ; $5544: $44

jr_093_5545:
	dec sp                                           ; $5545: $3b
	dec a                                            ; $5546: $3d
	ld b, c                                          ; $5547: $41
	ld b, h                                          ; $5548: $44
	ld e, l                                          ; $5549: $5d
	ld e, d                                          ; $554a: $5a
	ld c, h                                          ; $554b: $4c
	ld c, b                                          ; $554c: $48
	and b                                            ; $554d: $a0

jr_093_554e:
	ldh a, [$6d]                                     ; $554e: $f0 $6d
	ld e, c                                          ; $5550: $59
	ldh a, [$27]                                     ; $5551: $f0 $27
	xor c                                            ; $5553: $a9
	db $d3                                           ; $5554: $d3
	xor c                                            ; $5555: $a9
	ldh a, [rTAC]                                    ; $5556: $f0 $07
	inc a                                            ; $5558: $3c
	ld d, b                                          ; $5559: $50
	ld a, [hl-]                                      ; $555a: $3a
	jr c, jr_093_554e                                ; $555b: $38 $f1

	dec bc                                           ; $555d: $0b
	ld c, h                                          ; $555e: $4c
	and b                                            ; $555f: $a0
	cpl                                              ; $5560: $2f
	ld b, e                                          ; $5561: $43
	pop af                                           ; $5562: $f1
	db $fc                                           ; $5563: $fc
	ldh a, [rOCPS]                                   ; $5564: $f0 $6a
	inc [hl]                                         ; $5566: $34
	pop hl                                           ; $5567: $e1
	ld c, e                                          ; $5568: $4b
	xor h                                            ; $5569: $ac
	db $ec                                           ; $556a: $ec
	dec b                                            ; $556b: $05
	add h                                            ; $556c: $84
	ld b, d                                          ; $556d: $42
	ldh a, [$38]                                     ; $556e: $f0 $38
	ld d, e                                          ; $5570: $53
	pop af                                           ; $5571: $f1
	sub d                                            ; $5572: $92
	jr c, @+$47                                      ; $5573: $38 $45

	ld c, h                                          ; $5575: $4c
	add hl, bc                                       ; $5576: $09
	ld l, e                                          ; $5577: $6b
	ld b, d                                          ; $5578: $42
	ldh a, [$ed]                                     ; $5579: $f0 $ed
	inc a                                            ; $557b: $3c
	inc de                                           ; $557c: $13
	ldh a, [rTAC]                                    ; $557d: $f0 $07
	inc a                                            ; $557f: $3c
	ld d, b                                          ; $5580: $50
	ld a, [hl-]                                      ; $5581: $3a
	jr c, jr_093_55c0                                ; $5582: $38 $3c

	ld d, b                                          ; $5584: $50
	xor h                                            ; $5585: $ac
	ld b, [hl]                                       ; $5586: $46
	ld d, d                                          ; $5587: $52
	ld d, a                                          ; $5588: $57
	pop af                                           ; $5589: $f1
	ld h, [hl]                                       ; $558a: $66

jr_093_558b:
	jr c, jr_093_55cc                                ; $558b: $38 $3f

	ld a, [hl-]                                      ; $558d: $3a
	inc a                                            ; $558e: $3c
	dec sp                                           ; $558f: $3b
	dec a                                            ; $5590: $3d
	ld h, e                                          ; $5591: $63
	and b                                            ; $5592: $a0
	cpl                                              ; $5593: $2f
	ld b, e                                          ; $5594: $43
	ldh a, [$31]                                     ; $5595: $f0 $31
	ld c, e                                          ; $5597: $4b
	inc [hl]                                         ; $5598: $34
	db $eb                                           ; $5599: $eb
	ld l, a                                          ; $559a: $6f
	inc de                                           ; $559b: $13
	ld b, h                                          ; $559c: $44
	dec sp                                           ; $559d: $3b
	dec a                                            ; $559e: $3d
	ld b, c                                          ; $559f: $41
	ld b, h                                          ; $55a0: $44
	ld e, l                                          ; $55a1: $5d
	ld e, d                                          ; $55a2: $5a
	ld c, h                                          ; $55a3: $4c
	ld c, b                                          ; $55a4: $48
	and b                                            ; $55a5: $a0
	ldh a, [$6d]                                     ; $55a6: $f0 $6d
	ld e, c                                          ; $55a8: $59
	ldh a, [$27]                                     ; $55a9: $f0 $27
	xor c                                            ; $55ab: $a9
	ld c, a                                          ; $55ac: $4f
	add hl, sp                                       ; $55ad: $39
	ldh a, [rHDMA4]                                  ; $55ae: $f0 $54
	ld a, $f0                                        ; $55b0: $3e $f0
	rlca                                             ; $55b2: $07
	inc a                                            ; $55b3: $3c
	ld c, [hl]                                       ; $55b4: $4e
	ldh a, [$ed]                                     ; $55b5: $f0 $ed
	ld b, a                                          ; $55b7: $47
	inc de                                           ; $55b8: $13
	ld a, $3f                                        ; $55b9: $3e $3f
	ld c, a                                          ; $55bb: $4f
	ld d, b                                          ; $55bc: $50
	jr c, jr_093_55fc                                ; $55bd: $38 $3d

	inc a                                            ; $55bf: $3c

jr_093_55c0:
	dec sp                                           ; $55c0: $3b
	dec a                                            ; $55c1: $3d
	ld h, e                                          ; $55c2: $63
	and b                                            ; $55c3: $a0
	cpl                                              ; $55c4: $2f
	ld b, e                                          ; $55c5: $43
	ld b, b                                          ; $55c6: $40
	add hl, sp                                       ; $55c7: $39
	xor c                                            ; $55c8: $a9
	ld c, d                                          ; $55c9: $4a
	ld c, a                                          ; $55ca: $4f
	inc [hl]                                         ; $55cb: $34

jr_093_55cc:
	pop af                                           ; $55cc: $f1
	ld h, [hl]                                       ; $55cd: $66
	jr c, jr_093_560f                                ; $55ce: $38 $3f

	ccf                                              ; $55d0: $3f
	inc de                                           ; $55d1: $13
	pop af                                           ; $55d2: $f1
	add hl, hl                                       ; $55d3: $29
	ld a, $3c                                        ; $55d4: $3e $3c
	dec sp                                           ; $55d6: $3b
	dec a                                            ; $55d7: $3d
	ld a, [hl-]                                      ; $55d8: $3a
	ld c, b                                          ; $55d9: $48
	and b                                            ; $55da: $a0
	cpl                                              ; $55db: $2f
	ld b, e                                          ; $55dc: $43
	ld b, [hl]                                       ; $55dd: $46
	dec sp                                           ; $55de: $3b
	inc [hl]                                         ; $55df: $34
	db $ed                                           ; $55e0: $ed
	ld d, e                                          ; $55e1: $53
	inc de                                           ; $55e2: $13
	ld [$a81f], a                                    ; $55e3: $ea $1f $a8
	db $eb                                           ; $55e6: $eb
	ld d, b                                          ; $55e7: $50
	and c                                            ; $55e8: $a1
	ld l, e                                          ; $55e9: $6b
	ld b, d                                          ; $55ea: $42
	ldh a, [$ed]                                     ; $55eb: $f0 $ed
	inc a                                            ; $55ed: $3c
	inc de                                           ; $55ee: $13
	ldh a, [rTAC]                                    ; $55ef: $f0 $07
	inc a                                            ; $55f1: $3c
	ld d, b                                          ; $55f2: $50
	ld a, [hl-]                                      ; $55f3: $3a
	jr c, jr_093_5632                                ; $55f4: $38 $3c

	ld d, b                                          ; $55f6: $50
	xor h                                            ; $55f7: $ac
	db $ed                                           ; $55f8: $ed
	ld e, [hl]                                       ; $55f9: $5e
	inc [hl]                                         ; $55fa: $34
	pop af                                           ; $55fb: $f1

jr_093_55fc:
	ld h, [hl]                                       ; $55fc: $66
	jr c, jr_093_563e                                ; $55fd: $38 $3f

	ld a, [hl-]                                      ; $55ff: $3a
	inc a                                            ; $5600: $3c
	dec sp                                           ; $5601: $3b
	dec a                                            ; $5602: $3d
	ld h, e                                          ; $5603: $63
	and b                                            ; $5604: $a0
	cpl                                              ; $5605: $2f
	ld b, e                                          ; $5606: $43
	db $ec                                           ; $5607: $ec
	jp hl                                            ; $5608: $e9


	xor $2b                                          ; $5609: $ee $2b
	inc de                                           ; $560b: $13
	ld a, $3d                                        ; $560c: $3e $3d
	ld b, c                                          ; $560e: $41

jr_093_560f:
	ld b, h                                          ; $560f: $44
	inc a                                            ; $5610: $3c
	ld d, b                                          ; $5611: $50
	xor b                                            ; $5612: $a8
	db $eb                                           ; $5613: $eb
	sub a                                            ; $5614: $97
	pop af                                           ; $5615: $f1
	ld h, [hl]                                       ; $5616: $66
	jr c, jr_093_5658                                ; $5617: $38 $3f

	ccf                                              ; $5619: $3f
	ld d, l                                          ; $561a: $55
	ld c, l                                          ; $561b: $4d
	ld b, l                                          ; $561c: $45
	and b                                            ; $561d: $a0
	ld l, a                                          ; $561e: $6f
	ld b, d                                          ; $561f: $42
	ld b, l                                          ; $5620: $45
	add hl, sp                                       ; $5621: $39
	ld b, a                                          ; $5622: $47
	xor h                                            ; $5623: $ac
	ld a, a                                          ; $5624: $7f
	ldh a, [c]                                       ; $5625: $f2
	ld a, [bc]                                       ; $5626: $0a
	ld d, e                                          ; $5627: $53
	ld b, [hl]                                       ; $5628: $46
	dec sp                                           ; $5629: $3b
	ccf                                              ; $562a: $3f
	xor h                                            ; $562b: $ac
	db $ec                                           ; $562c: $ec
	cp c                                             ; $562d: $b9
	ld c, c                                          ; $562e: $49
	ld [hl], a                                       ; $562f: $77
	add hl, sp                                       ; $5630: $39
	ld h, e                                          ; $5631: $63

jr_093_5632:
	ld b, l                                          ; $5632: $45
	and b                                            ; $5633: $a0
	cpl                                              ; $5634: $2f
	ld b, e                                          ; $5635: $43
	rst JumpTable                                          ; $5636: $c7
	xor c                                            ; $5637: $a9
	ld b, [hl]                                       ; $5638: $46
	ld d, a                                          ; $5639: $57
	ld d, e                                          ; $563a: $53
	ld c, c                                          ; $563b: $49
	add hl, sp                                       ; $563c: $39
	and b                                            ; $563d: $a0

jr_093_563e:
	pop de                                           ; $563e: $d1
	xor h                                            ; $563f: $ac
	pop af                                           ; $5640: $f1
	add c                                            ; $5641: $81
	ld h, c                                          ; $5642: $61
	add b                                            ; $5643: $80
	ld e, h                                          ; $5644: $5c
	ld d, e                                          ; $5645: $53
	ld b, [hl]                                       ; $5646: $46
	dec sp                                           ; $5647: $3b
	ccf                                              ; $5648: $3f
	xor l                                            ; $5649: $ad
	ld l, a                                          ; $564a: $6f
	pop af                                           ; $564b: $f1
	dec a                                            ; $564c: $3d
	ld e, h                                          ; $564d: $5c
	ld c, d                                          ; $564e: $4a
	inc [hl]                                         ; $564f: $34
	db $ec                                           ; $5650: $ec
	cp c                                             ; $5651: $b9
	ld h, e                                          ; $5652: $63
	and b                                            ; $5653: $a0
	cpl                                              ; $5654: $2f
	ld b, e                                          ; $5655: $43
	rst JumpTable                                          ; $5656: $c7
	ld b, h                                          ; $5657: $44

jr_093_5658:
	ld c, h                                          ; $5658: $4c
	xor b                                            ; $5659: $a8
	ld b, [hl]                                       ; $565a: $46

Jump_093_565b:
	ld d, a                                          ; $565b: $57
	ld d, e                                          ; $565c: $53
	ld c, c                                          ; $565d: $49
	add hl, sp                                       ; $565e: $39
	and b                                            ; $565f: $a0
	pop de                                           ; $5660: $d1
	inc [hl]                                         ; $5661: $34
	db $ec                                           ; $5662: $ec
	cp c                                             ; $5663: $b9
	ld e, l                                          ; $5664: $5d
	ld e, d                                          ; $5665: $5a
	xor h                                            ; $5666: $ac
	ld l, a                                          ; $5667: $6f
	ld b, d                                          ; $5668: $42
	ld b, l                                          ; $5669: $45
	add hl, sp                                       ; $566a: $39
	ld a, [hl-]                                      ; $566b: $3a
	ld a, a                                          ; $566c: $7f
	ldh a, [c]                                       ; $566d: $f2
	ld a, [bc]                                       ; $566e: $0a
	ld c, e                                          ; $566f: $4b
	xor h                                            ; $5670: $ac
	ld a, [hl-]                                      ; $5671: $3a
	inc a                                            ; $5672: $3c
	dec sp                                           ; $5673: $3b
	ldh [$a0], a                                     ; $5674: $e0 $a0
	cpl                                              ; $5676: $2f
	ld b, e                                          ; $5677: $43
	ld b, b                                          ; $5678: $40
	add hl, sp                                       ; $5679: $39
	xor c                                            ; $567a: $a9
	ld a, l                                          ; $567b: $7d
	ldh a, [rAUD3LOW]                                ; $567c: $f0 $1d
	ld a, l                                          ; $567e: $7d
	ldh a, [$2b]                                     ; $567f: $f0 $2b
	ld b, h                                          ; $5681: $44
	dec sp                                           ; $5682: $3b
	dec a                                            ; $5683: $3d
	inc a                                            ; $5684: $3c
	ld a, [hl-]                                      ; $5685: $3a
	and b                                            ; $5686: $a0
	adc e                                            ; $5687: $8b
	ld e, h                                          ; $5688: $5c
	ld a, [hl-]                                      ; $5689: $3a
	ldh a, [$ed]                                     ; $568a: $f0 $ed
	db $ec                                           ; $568c: $ec
	ret c                                            ; $568d: $d8

	ld e, l                                          ; $568e: $5d
	ld e, d                                          ; $568f: $5a
	xor h                                            ; $5690: $ac
	cp e                                             ; $5691: $bb
	ld b, c                                          ; $5692: $41
	db $ec                                           ; $5693: $ec
	ret c                                            ; $5694: $d8

	and c                                            ; $5695: $a1
	cpl                                              ; $5696: $2f
	ld b, e                                          ; $5697: $43
	ld b, [hl]                                       ; $5698: $46
	ld d, a                                          ; $5699: $57
	ld d, e                                          ; $569a: $53
	ld c, c                                          ; $569b: $49
	add hl, sp                                       ; $569c: $39
	xor h                                            ; $569d: $ac
	ld c, d                                          ; $569e: $4a
	ld c, a                                          ; $569f: $4f
	inc [hl]                                         ; $56a0: $34
	jp nc, $8b13                                     ; $56a1: $d2 $13 $8b

	ld e, h                                          ; $56a4: $5c
	db $ec                                           ; $56a5: $ec
	ret c                                            ; $56a6: $d8

	ld b, d                                          ; $56a7: $42
	inc a                                            ; $56a8: $3c
	ld c, b                                          ; $56a9: $48
	and b                                            ; $56aa: $a0
	ldh a, [rAUD1LEN]                                ; $56ab: $f0 $11
	pop af                                           ; $56ad: $f1
	ld d, h                                          ; $56ae: $54
	ldh a, [$35]                                     ; $56af: $f0 $35
	ldh a, [$03]                                     ; $56b1: $f0 $03
	ld d, c                                          ; $56b3: $51
	ldh a, [$cb]                                     ; $56b4: $f0 $cb
	ccf                                              ; $56b6: $3f
	inc de                                           ; $56b7: $13
	ld a, l                                          ; $56b8: $7d
	ldh a, [rAUD3LOW]                                ; $56b9: $f0 $1d
	ld a, l                                          ; $56bb: $7d
	ldh a, [$2b]                                     ; $56bc: $f0 $2b
	ld c, h                                          ; $56be: $4c
	and b                                            ; $56bf: $a0
	cpl                                              ; $56c0: $2f
	ld b, e                                          ; $56c1: $43
	rst JumpTable                                          ; $56c2: $c7
	xor c                                            ; $56c3: $a9
	ldh a, [$e9]                                     ; $56c4: $f0 $e9
	ldh a, [$5d]                                     ; $56c6: $f0 $5d
	ld h, e                                          ; $56c8: $63
	ld d, b                                          ; $56c9: $50
	sbc h                                            ; $56ca: $9c
	xor h                                            ; $56cb: $ac
	db $ed                                           ; $56cc: $ed
	ld d, e                                          ; $56cd: $53
	ld c, e                                          ; $56ce: $4b
	ld e, h                                          ; $56cf: $5c
	ldh a, [rKEY1]                                   ; $56d0: $f0 $4d
	ld a, $38                                        ; $56d2: $3e $38
	ld a, [hl-]                                      ; $56d4: $3a
	ld b, [hl]                                       ; $56d5: $46
	and b                                            ; $56d6: $a0
	ld l, a                                          ; $56d7: $6f
	ld c, e                                          ; $56d8: $4b
	xor h                                            ; $56d9: $ac
	ld hl, sp-$43                                    ; $56da: $f8 $bd
	db $f4                                           ; $56dc: $f4
	jr nz, jr_093_5732                               ; $56dd: $20 $53

	ld e, h                                          ; $56df: $5c
	ld d, b                                          ; $56e0: $50
	jr c, jr_093_571d                                ; $56e1: $38 $3a

	ld b, d                                          ; $56e3: $42
	and b                                            ; $56e4: $a0
	cpl                                              ; $56e5: $2f
	ld b, e                                          ; $56e6: $43
	ld b, b                                          ; $56e7: $40
	add hl, sp                                       ; $56e8: $39
	ld b, h                                          ; $56e9: $44
	ld c, h                                          ; $56ea: $4c
	xor b                                            ; $56eb: $a8
	db $ed                                           ; $56ec: $ed
	ld d, e                                          ; $56ed: $53
	ld d, b                                          ; $56ee: $50

jr_093_56ef:
	ld a, $38                                        ; $56ef: $3e $38
	ld c, h                                          ; $56f1: $4c
	and b                                            ; $56f2: $a0
	ld l, a                                          ; $56f3: $6f
	ld b, a                                          ; $56f4: $47
	ld c, e                                          ; $56f5: $4b
	xor h                                            ; $56f6: $ac
	ldh a, [rPCM12]                                  ; $56f7: $f0 $76
	ldh a, [rTMA]                                    ; $56f9: $f0 $06
	ld h, e                                          ; $56fb: $63
	ld a, [hl-]                                      ; $56fc: $3a
	jr c, jr_093_56ef                                ; $56fd: $38 $f0

	db $ed                                           ; $56ff: $ed
	ld c, h                                          ; $5700: $4c
	xor b                                            ; $5701: $a8
	ld b, [hl]                                       ; $5702: $46
	ld d, d                                          ; $5703: $52
	ld d, a                                          ; $5704: $57
	adc e                                            ; $5705: $8b
	ld e, h                                          ; $5706: $5c
	db $ec                                           ; $5707: $ec
	ret c                                            ; $5708: $d8

	ld h, e                                          ; $5709: $63
	and b                                            ; $570a: $a0
	cpl                                              ; $570b: $2f
	ld b, e                                          ; $570c: $43
	ld b, b                                          ; $570d: $40
	add hl, sp                                       ; $570e: $39
	xor l                                            ; $570f: $ad
	ldh a, [rAUD4ENV]                                ; $5710: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5712: $f0 $23
	jr c, jr_093_575f                                ; $5714: $38 $49

	ld [$3a4d], a                                    ; $5716: $ea $4d $3a
	ld [hl], h                                       ; $5719: $74
	and b                                            ; $571a: $a0
	cpl                                              ; $571b: $2f
	ld b, e                                          ; $571c: $43

jr_093_571d:
	db $ec                                           ; $571d: $ec
	ld b, a                                          ; $571e: $47
	db $ec                                           ; $571f: $ec
	ld hl, $ed13                                     ; $5720: $21 $13 $ed
	ld d, e                                          ; $5723: $53
	db $ec                                           ; $5724: $ec
	inc hl                                           ; $5725: $23
	xor b                                            ; $5726: $a8
	add sp, -$63                                     ; $5727: $e8 $9d
	and b                                            ; $5729: $a0
	ld h, h                                          ; $572a: $64
	ldh a, [$f3]                                     ; $572b: $f0 $f3
	ld c, l                                          ; $572d: $4d
	db $ec                                           ; $572e: $ec
	ld [de], a                                       ; $572f: $12
	and b                                            ; $5730: $a0
	cpl                                              ; $5731: $2f

jr_093_5732:
	ld b, e                                          ; $5732: $43
	ld b, [hl]                                       ; $5733: $46
	dec sp                                           ; $5734: $3b
	inc [hl]                                         ; $5735: $34
	db $ed                                           ; $5736: $ed
	ld d, e                                          ; $5737: $53
	xor b                                            ; $5738: $a8
	ld [$a81f], a                                    ; $5739: $ea $1f $a8
	db $eb                                           ; $573c: $eb
	ld d, b                                          ; $573d: $50
	and c                                            ; $573e: $a1
	or h                                             ; $573f: $b4
	xor h                                            ; $5740: $ac
	db $ec                                           ; $5741: $ec
	push bc                                          ; $5742: $c5
	inc [hl]                                         ; $5743: $34
	ldh a, [rHDMA5]                                  ; $5744: $f0 $55
	ldh a, [rBCPS]                                   ; $5746: $f0 $68
	ld d, c                                          ; $5748: $51
	ld c, [hl]                                       ; $5749: $4e
	ld h, e                                          ; $574a: $63
	ld c, h                                          ; $574b: $4c
	and b                                            ; $574c: $a0
	db $ed                                           ; $574d: $ed
	sbc a                                            ; $574e: $9f
	inc [hl]                                         ; $574f: $34
	ld d, h                                          ; $5750: $54
	ld b, c                                          ; $5751: $41
	ld a, [hl-]                                      ; $5752: $3a
	ldh a, [$28]                                     ; $5753: $f0 $28
	ld b, a                                          ; $5755: $47
	inc de                                           ; $5756: $13
	db $eb                                           ; $5757: $eb
	ld d, $a0                                        ; $5758: $16 $a0
	cpl                                              ; $575a: $2f
	ld b, e                                          ; $575b: $43
	ld b, [hl]                                       ; $575c: $46
	dec sp                                           ; $575d: $3b
	inc [hl]                                         ; $575e: $34

jr_093_575f:
	db $ed                                           ; $575f: $ed
	ld d, e                                          ; $5760: $53
	sbc c                                            ; $5761: $99
	dec sp                                           ; $5762: $3b
	ccf                                              ; $5763: $3f
	ld b, l                                          ; $5764: $45
	and b                                            ; $5765: $a0
	add hl, bc                                       ; $5766: $09
	xor $14                                          ; $5767: $ee $14
	inc [hl]                                         ; $5769: $34
	ld d, h                                          ; $576a: $54
	ld d, h                                          ; $576b: $54
	ld c, e                                          ; $576c: $4b
	ld l, e                                          ; $576d: $6b
	ld h, d                                          ; $576e: $62
	inc de                                           ; $576f: $13
	ld a, $3f                                        ; $5770: $3e $3f
	jr c, jr_093_57c2                                ; $5772: $38 $4e

	ld b, d                                          ; $5774: $42
	inc a                                            ; $5775: $3c
	ld a, $50                                        ; $5776: $3e $50
	and c                                            ; $5778: $a1
	cpl                                              ; $5779: $2f
	ld b, e                                          ; $577a: $43
	ldh a, [rSCX]                                    ; $577b: $f0 $43
	ldh a, [$b8]                                     ; $577d: $f0 $b8
	adc a                                            ; $577f: $8f
	ld c, d                                          ; $5780: $4a
	ld c, e                                          ; $5781: $4b
	inc de                                           ; $5782: $13
	sbc e                                            ; $5783: $9b
	ld b, d                                          ; $5784: $42
	ldh a, [$c1]                                     ; $5785: $f0 $c1
	ldh a, [$d5]                                     ; $5787: $f0 $d5
	ld h, d                                          ; $5789: $62
	ld a, $3f                                        ; $578a: $3e $3f
	jr c, jr_093_57dc                                ; $578c: $38 $4e

	ld l, h                                          ; $578e: $6c
	dec a                                            ; $578f: $3d
	jr c, jr_093_57d6                                ; $5790: $38 $44

	ld c, h                                          ; $5792: $4c
	and b                                            ; $5793: $a0
	ld l, a                                          ; $5794: $6f
	inc [hl]                                         ; $5795: $34
	ld d, h                                          ; $5796: $54
	add hl, sp                                       ; $5797: $39
	jr c, jr_093_57d3                                ; $5798: $38 $39

	inc de                                           ; $579a: $13
	ldh a, [rSCX]                                    ; $579b: $f0 $43
	adc c                                            ; $579d: $89
	pop af                                           ; $579e: $f1
	inc bc                                           ; $579f: $03
	ld a, [hl-]                                      ; $57a0: $3a
	ld c, a                                          ; $57a1: $4f
	db $ec                                           ; $57a2: $ec
	or $13                                           ; $57a3: $f6 $13
	ld b, [hl]                                       ; $57a5: $46
	ld d, d                                          ; $57a6: $52
	ld d, a                                          ; $57a7: $57
	db $ed                                           ; $57a8: $ed
	ld [hl], h                                       ; $57a9: $74
	ld a, [hl-]                                      ; $57aa: $3a
	jr c, jr_093_57ef                                ; $57ab: $38 $42

	ld b, l                                          ; $57ad: $45
	ld c, h                                          ; $57ae: $4c
	and b                                            ; $57af: $a0
	cpl                                              ; $57b0: $2f
	ld b, e                                          ; $57b1: $43
	ld d, d                                          ; $57b2: $52
	ld b, [hl]                                       ; $57b3: $46
	inc [hl]                                         ; $57b4: $34
	ld b, b                                          ; $57b5: $40
	add hl, sp                                       ; $57b6: $39
	add d                                            ; $57b7: $82
	ld h, e                                          ; $57b8: $63
	sbc h                                            ; $57b9: $9c
	xor b                                            ; $57ba: $a8
	ld [hl], d                                       ; $57bb: $72
	ccf                                              ; $57bc: $3f
	call $3ea0                                       ; $57bd: $cd $a0 $3e
	inc a                                            ; $57c0: $3c
	dec a                                            ; $57c1: $3d

jr_093_57c2:
	ld d, e                                          ; $57c2: $53
	db $ec                                           ; $57c3: $ec
	dec bc                                           ; $57c4: $0b
	xor b                                            ; $57c5: $a8
	ld b, b                                          ; $57c6: $40
	ld c, l                                          ; $57c7: $4d
	ld e, e                                          ; $57c8: $5b
	ld d, [hl]                                       ; $57c9: $56
	inc [hl]                                         ; $57ca: $34
	ld [$a0a9], a                                    ; $57cb: $ea $a9 $a0
	cpl                                              ; $57ce: $2f
	ld b, e                                          ; $57cf: $43
	db $eb                                           ; $57d0: $eb
	ld d, b                                          ; $57d1: $50
	and c                                            ; $57d2: $a1

jr_093_57d3:
	db $ec                                           ; $57d3: $ec
	ld a, [de]                                       ; $57d4: $1a
	inc de                                           ; $57d5: $13

jr_093_57d6:
	sbc e                                            ; $57d6: $9b
	ld c, a                                          ; $57d7: $4f
	jr c, @+$3a                                      ; $57d8: $38 $38

	ld b, c                                          ; $57da: $41
	db $ec                                           ; $57db: $ec

jr_093_57dc:
	ret c                                            ; $57dc: $d8

	and b                                            ; $57dd: $a0
	cpl                                              ; $57de: $2f
	ld b, e                                          ; $57df: $43
	rst JumpTable                                          ; $57e0: $c7
	and b                                            ; $57e1: $a0
	ld c, a                                          ; $57e2: $4f
	add hl, sp                                       ; $57e3: $39
	or b                                             ; $57e4: $b0
	and b                                            ; $57e5: $a0
	cpl                                              ; $57e6: $2f
	ld b, e                                          ; $57e7: $43
	ld b, b                                          ; $57e8: $40
	add hl, sp                                       ; $57e9: $39
	ld b, h                                          ; $57ea: $44
	ld c, h                                          ; $57eb: $4c
	xor b                                            ; $57ec: $a8
	ld a, d                                          ; $57ed: $7a
	ld e, a                                          ; $57ee: $5f

jr_093_57ef:
	add hl, sp                                       ; $57ef: $39
	and b                                            ; $57f0: $a0
	sbc e                                            ; $57f1: $9b
	ld b, d                                          ; $57f2: $42
	ldh a, [$c1]                                     ; $57f3: $f0 $c1
	ldh a, [$d5]                                     ; $57f5: $f0 $d5
	xor c                                            ; $57f7: $a9
	ld l, a                                          ; $57f8: $6f
	ld b, d                                          ; $57f9: $42
	adc d                                            ; $57fa: $8a
	ld a, $58                                        ; $57fb: $3e $58
	ld h, d                                          ; $57fd: $62
	di                                               ; $57fe: $f3
	ld l, a                                          ; $57ff: $6f
	ld e, [hl]                                       ; $5800: $5e
	dec a                                            ; $5801: $3d
	inc de                                           ; $5802: $13
	sbc e                                            ; $5803: $9b
	ld c, e                                          ; $5804: $4b
	ld b, [hl]                                       ; $5805: $46
	ld c, [hl]                                       ; $5806: $4e
	inc a                                            ; $5807: $3c
	ld a, $50                                        ; $5808: $3e $50
	and b                                            ; $580a: $a0
	cpl                                              ; $580b: $2f
	ld b, e                                          ; $580c: $43
	ld b, b                                          ; $580d: $40
	ld c, l                                          ; $580e: $4d
	ld c, e                                          ; $580f: $4b
	xor h                                            ; $5810: $ac
	ldh a, [rAUD1LOW]                                ; $5811: $f0 $13
	jr c, jr_093_5856                                ; $5813: $38 $41

	db $ec                                           ; $5815: $ec
	ret c                                            ; $5816: $d8

	inc a                                            ; $5817: $3c
	ld a, [hl-]                                      ; $5818: $3a
	ld [hl], h                                       ; $5819: $74
	ld c, b                                          ; $581a: $48
	and b                                            ; $581b: $a0
	add b                                            ; $581c: $80
	ldh a, [$8c]                                     ; $581d: $f0 $8c
	ld d, h                                          ; $581f: $54
	ldh a, [$8c]                                     ; $5820: $f0 $8c
	add d                                            ; $5822: $82
	ld h, e                                          ; $5823: $63
	sbc h                                            ; $5824: $9c
	ld b, a                                          ; $5825: $47
	inc de                                           ; $5826: $13
	db $ed                                           ; $5827: $ed
	ld bc, $3a6c                                     ; $5828: $01 $6c $3a
	ld e, b                                          ; $582b: $58
	jr c, jr_093_5873                                ; $582c: $38 $45

	and b                                            ; $582e: $a0
	cpl                                              ; $582f: $2f
	ld b, e                                          ; $5830: $43
	ld e, [hl]                                       ; $5831: $5e
	dec sp                                           ; $5832: $3b
	inc [hl]                                         ; $5833: $34
	halt                                             ; $5834: $76
	ld d, e                                          ; $5835: $53
	and c                                            ; $5836: $a1
	ld b, [hl]                                       ; $5837: $46
	dec a                                            ; $5838: $3d
	ld d, a                                          ; $5839: $57
	ld d, d                                          ; $583a: $52
	ld e, [hl]                                       ; $583b: $5e
	db $ec                                           ; $583c: $ec
	ret c                                            ; $583d: $d8

	xor b                                            ; $583e: $a8
	ld l, a                                          ; $583f: $6f
	ld b, a                                          ; $5840: $47
	ld l, [hl]                                       ; $5841: $6e
	ld d, b                                          ; $5842: $50
	ld a, c                                          ; $5843: $79
	ld c, [hl]                                       ; $5844: $4e
	ld a, a                                          ; $5845: $7f
	and c                                            ; $5846: $a1
	cpl                                              ; $5847: $2f
	ld b, e                                          ; $5848: $43
	ld h, c                                          ; $5849: $61
	add l                                            ; $584a: $85
	inc [hl]                                         ; $584b: $34
	ldh a, [rTAC]                                    ; $584c: $f0 $07
	inc a                                            ; $584e: $3c
	dec sp                                           ; $584f: $3b
	dec a                                            ; $5850: $3d
	ld b, l                                          ; $5851: $45
	and b                                            ; $5852: $a0
	ld [hl], d                                       ; $5853: $72
	add b                                            ; $5854: $80
	inc a                                            ; $5855: $3c

jr_093_5856:
	dec sp                                           ; $5856: $3b
	dec a                                            ; $5857: $3d
	and c                                            ; $5858: $a1
	cpl                                              ; $5859: $2f
	ld b, e                                          ; $585a: $43
	ld d, h                                          ; $585b: $54
	ld d, h                                          ; $585c: $54
	ld b, a                                          ; $585d: $47
	ld hl, sp+$1f                                    ; $585e: $f8 $1f
	dec sp                                           ; $5860: $3b
	ccf                                              ; $5861: $3f
	ld b, [hl]                                       ; $5862: $46
	ld c, [hl]                                       ; $5863: $4e
	ld b, d                                          ; $5864: $42
	inc de                                           ; $5865: $13
	ld a, [hl-]                                      ; $5866: $3a
	ld b, c                                          ; $5867: $41
	inc a                                            ; $5868: $3c
	ld e, d                                          ; $5869: $5a
	add hl, sp                                       ; $586a: $39
	and c                                            ; $586b: $a1
	ldh a, [$fa]                                     ; $586c: $f0 $fa
	ld b, c                                          ; $586e: $41
	ld c, d                                          ; $586f: $4a
	ld l, h                                          ; $5870: $6c
	ccf                                              ; $5871: $3f
	and b                                            ; $5872: $a0

jr_093_5873:
	cpl                                              ; $5873: $2f
	ld b, e                                          ; $5874: $43
	ld h, h                                          ; $5875: $64
	ldh a, [c]                                       ; $5876: $f2
	ld a, l                                          ; $5877: $7d
	inc [hl]                                         ; $5878: $34
	ldh a, [rRP]                                     ; $5879: $f0 $56
	ld b, d                                          ; $587b: $42
	rst FarCall                                          ; $587c: $f7
	ld [$134b], a                                    ; $587d: $ea $4b $13
	pop af                                           ; $5880: $f1
	ld h, l                                          ; $5881: $65
	ld b, d                                          ; $5882: $42
	ldh a, [c]                                       ; $5883: $f2
	jp c, $345c                                      ; $5884: $da $5c $34

	ldh a, [rRP]                                     ; $5887: $f0 $56
	ld b, d                                          ; $5889: $42
	di                                               ; $588a: $f3
	ld b, c                                          ; $588b: $41
	ld c, e                                          ; $588c: $4b
	ld d, d                                          ; $588d: $52
	ld c, [hl]                                       ; $588e: $4e
	ld c, d                                          ; $588f: $4a
	ld c, b                                          ; $5890: $48
	add hl, bc                                       ; $5891: $09
	ld a, [hl-]                                      ; $5892: $3a
	ld b, c                                          ; $5893: $41
	inc a                                            ; $5894: $3c
	ldh a, [$3c]                                     ; $5895: $f0 $3c
	push af                                          ; $5897: $f5
	ld [$6338], a                                    ; $5898: $ea $38 $63
	ld c, h                                          ; $589b: $4c
	and b                                            ; $589c: $a0
	cpl                                              ; $589d: $2f
	ld b, e                                          ; $589e: $43
	ld d, h                                          ; $589f: $54
	ld c, l                                          ; $58a0: $4d
	ld c, d                                          ; $58a1: $4a
	ld c, a                                          ; $58a2: $4f
	xor h                                            ; $58a3: $ac
	db $eb                                           ; $58a4: $eb
	pop hl                                           ; $58a5: $e1
	ld a, $3d                                        ; $58a6: $3e $3d
	ld b, c                                          ; $58a8: $41
	ld b, h                                          ; $58a9: $44
	ld b, l                                          ; $58aa: $45
	xor b                                            ; $58ab: $a8
	ld d, h                                          ; $58ac: $54
	ld c, l                                          ; $58ad: $4d
	pop af                                           ; $58ae: $f1
	ld c, e                                          ; $58af: $4b
	ldh a, [$3e]                                     ; $58b0: $f0 $3e
	ld c, e                                          ; $58b2: $4b
	ldh a, [rAUD1LOW]                                ; $58b3: $f0 $13
	jr c, @+$47                                      ; $58b5: $38 $45

	and b                                            ; $58b7: $a0
	ld a, $3c                                        ; $58b8: $3e $3c
	dec a                                            ; $58ba: $3d
	ld d, e                                          ; $58bb: $53
	db $ec                                           ; $58bc: $ec
	dec bc                                           ; $58bd: $0b
	xor b                                            ; $58be: $a8
	ld d, d                                          ; $58bf: $52
	inc [hl]                                         ; $58c0: $34
	ld d, h                                          ; $58c1: $54
	ld c, l                                          ; $58c2: $4d
	ld c, d                                          ; $58c3: $4a
	jr c, jr_093_58fe                                ; $58c4: $38 $38

	ld d, h                                          ; $58c6: $54
	ld c, c                                          ; $58c7: $49
	ld b, a                                          ; $58c8: $47
	inc de                                           ; $58c9: $13
	ld a, $52                                        ; $58ca: $3e $52
	ld a, $66                                        ; $58cc: $3e $66
	add hl, sp                                       ; $58ce: $39
	and b                                            ; $58cf: $a0
	cpl                                              ; $58d0: $2f
	ld b, e                                          ; $58d1: $43
	db $ec                                           ; $58d2: $ec
	cp c                                             ; $58d3: $b9
	and b                                            ; $58d4: $a0
	ld b, b                                          ; $58d5: $40
	ld c, l                                          ; $58d6: $4d
	ld e, e                                          ; $58d7: $5b
	ld d, [hl]                                       ; $58d8: $56
	xor h                                            ; $58d9: $ac
	ld l, a                                          ; $58da: $6f
	ld c, e                                          ; $58db: $4b
	inc [hl]                                         ; $58dc: $34
	ldh a, [$d6]                                     ; $58dd: $f0 $d6
	ld b, d                                          ; $58df: $42
	ldh a, [$cc]                                     ; $58e0: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $58e2: $f0 $88
	db $eb                                           ; $58e4: $eb
	ld l, l                                          ; $58e5: $6d
	inc de                                           ; $58e6: $13
	ld a, d                                          ; $58e7: $7a
	ld c, [hl]                                       ; $58e8: $4e
	ld h, e                                          ; $58e9: $63
	ld c, h                                          ; $58ea: $4c
	and b                                            ; $58eb: $a0
	sbc e                                            ; $58ec: $9b
	ld b, d                                          ; $58ed: $42
	ldh a, [$c1]                                     ; $58ee: $f0 $c1
	ldh a, [$d5]                                     ; $58f0: $f0 $d5
	xor c                                            ; $58f2: $a9
	ld h, e                                          ; $58f3: $63
	ldh a, [rAUD1SWEEP]                              ; $58f4: $f0 $10
	ld h, e                                          ; $58f6: $63
	ldh a, [rAUD1SWEEP]                              ; $58f7: $f0 $10
	ld l, a                                          ; $58f9: $6f
	ld h, d                                          ; $58fa: $62
	ldh a, [$3b]                                     ; $58fb: $f0 $3b
	dec sp                                           ; $58fd: $3b

jr_093_58fe:
	ccf                                              ; $58fe: $3f
	xor h                                            ; $58ff: $ac
	ld b, b                                          ; $5900: $40
	ld c, l                                          ; $5901: $4d
	ld b, h                                          ; $5902: $44
	ld e, l                                          ; $5903: $5d
	and c                                            ; $5904: $a1
	cpl                                              ; $5905: $2f
	ld b, e                                          ; $5906: $43
	ld a, [hl-]                                      ; $5907: $3a
	ld b, c                                          ; $5908: $41
	inc a                                            ; $5909: $3c
	ldh a, [$64]                                     ; $590a: $f0 $64
	ld b, b                                          ; $590c: $40
	add hl, sp                                       ; $590d: $39
	ld b, h                                          ; $590e: $44
	ld c, h                                          ; $590f: $4c
	and b                                            ; $5910: $a0
	db $ec                                           ; $5911: $ec
	db $d3                                           ; $5912: $d3
	ld l, a                                          ; $5913: $6f
	ld d, e                                          ; $5914: $53
	inc [hl]                                         ; $5915: $34
	db $eb                                           ; $5916: $eb
	ld e, b                                          ; $5917: $58
	inc de                                           ; $5918: $13
	ldh a, [$fa]                                     ; $5919: $f0 $fa
	ld d, d                                          ; $591b: $52
	ld a, [hl-]                                      ; $591c: $3a
	ld d, l                                          ; $591d: $55
	ccf                                              ; $591e: $3f
	ld c, e                                          ; $591f: $4b
	inc de                                           ; $5920: $13
	db $eb                                           ; $5921: $eb
	push af                                          ; $5922: $f5
	inc a                                            ; $5923: $3c
	ld a, $50                                        ; $5924: $3e $50
	and b                                            ; $5926: $a0
	cpl                                              ; $5927: $2f
	ld b, e                                          ; $5928: $43
	ld e, d                                          ; $5929: $5a
	inc [hl]                                         ; $592a: $34
	db $ec                                           ; $592b: $ec
	db $d3                                           ; $592c: $d3
	dec sp                                           ; $592d: $3b
	ccf                                              ; $592e: $3f
	xor h                                            ; $592f: $ac
	sbc e                                            ; $5930: $9b
	ld c, e                                          ; $5931: $4b
	ldh a, [rVBK]                                    ; $5932: $f0 $4f
	ld h, d                                          ; $5934: $62
	inc de                                           ; $5935: $13
	ldh a, [c]                                       ; $5936: $f2
	or c                                             ; $5937: $b1
	inc a                                            ; $5938: $3c
	ld b, a                                          ; $5939: $47
	ld d, c                                          ; $593a: $51
	ld c, [hl]                                       ; $593b: $4e
	ld b, c                                          ; $593c: $41
	ld b, h                                          ; $593d: $44
	ld b, l                                          ; $593e: $45
	and b                                            ; $593f: $a0
	ldh a, [$9a]                                     ; $5940: $f0 $9a
	ld e, h                                          ; $5942: $5c
	ldh a, [rTMA]                                    ; $5943: $f0 $06
	dec sp                                           ; $5945: $3b
	ccf                                              ; $5946: $3f
	ld d, b                                          ; $5947: $50
	ld c, l                                          ; $5948: $4d
	ld a, [hl-]                                      ; $5949: $3a
	jr c, jr_093_59af                                ; $594a: $38 $63

	xor b                                            ; $594c: $a8
	ld l, a                                          ; $594d: $6f
	inc [hl]                                         ; $594e: $34
	ldh a, [$d6]                                     ; $594f: $f0 $d6
	ld b, d                                          ; $5951: $42
	ldh a, [$cc]                                     ; $5952: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $5954: $f0 $88
	ld d, e                                          ; $5956: $53
	ld b, [hl]                                       ; $5957: $46
	ld c, [hl]                                       ; $5958: $4e

jr_093_5959:
	ld b, d                                          ; $5959: $42
	xor b                                            ; $595a: $a8
	ld [$5121], a                                    ; $595b: $ea $21 $51
	ld c, [hl]                                       ; $595e: $4e
	ld h, e                                          ; $595f: $63
	and b                                            ; $5960: $a0
	cpl                                              ; $5961: $2f
	ld b, e                                          ; $5962: $43
	ldh a, [rSCX]                                    ; $5963: $f0 $43
	ldh a, [$b8]                                     ; $5965: $f0 $b8
	adc a                                            ; $5967: $8f
	ld c, d                                          ; $5968: $4a
	ld c, e                                          ; $5969: $4b
	ldh a, [$a5]                                     ; $596a: $f0 $a5
	ldh a, [rSCX]                                    ; $596c: $f0 $43
	ld b, d                                          ; $596e: $42
	inc de                                           ; $596f: $13
	ldh a, [$c1]                                     ; $5970: $f0 $c1
	ldh a, [$d5]                                     ; $5972: $f0 $d5
	ld h, d                                          ; $5974: $62
	ld a, $3f                                        ; $5975: $3e $3f
	jr c, jr_093_59c7                                ; $5977: $38 $4e

	ld l, h                                          ; $5979: $6c
	dec a                                            ; $597a: $3d
	jr c, jr_093_59c1                                ; $597b: $38 $44

	ld c, h                                          ; $597d: $4c
	and b                                            ; $597e: $a0
	ld l, a                                          ; $597f: $6f
	inc [hl]                                         ; $5980: $34
	ld d, h                                          ; $5981: $54
	add hl, sp                                       ; $5982: $39
	jr c, jr_093_59be                                ; $5983: $38 $39

	inc de                                           ; $5985: $13
	pop af                                           ; $5986: $f1
	sbc b                                            ; $5987: $98
	ldh a, [hDisp1_WY]                                     ; $5988: $f0 $95
	ld a, [hl-]                                      ; $598a: $3a
	ld c, a                                          ; $598b: $4f
	db $ec                                           ; $598c: $ec
	or $13                                           ; $598d: $f6 $13
	ld b, [hl]                                       ; $598f: $46
	ld d, d                                          ; $5990: $52
	ld d, a                                          ; $5991: $57
	db $ed                                           ; $5992: $ed
	ld [hl], h                                       ; $5993: $74
	ld a, [hl-]                                      ; $5994: $3a
	jr c, jr_093_59d9                                ; $5995: $38 $42

	ld b, l                                          ; $5997: $45
	ld c, h                                          ; $5998: $4c
	and b                                            ; $5999: $a0
	ld l, a                                          ; $599a: $6f
	ld c, a                                          ; $599b: $4f
	add hl, sp                                       ; $599c: $39
	xor $05                                          ; $599d: $ee $05
	xor b                                            ; $599f: $a8
	ld d, h                                          ; $59a0: $54
	ld c, l                                          ; $59a1: $4d
	pop af                                           ; $59a2: $f1
	ld c, e                                          ; $59a3: $4b
	ldh a, [$3e]                                     ; $59a4: $f0 $3e
	ldh a, [$fa]                                     ; $59a6: $f0 $fa
	ldh a, [$be]                                     ; $59a8: $f0 $be
	ld a, [hl-]                                      ; $59aa: $3a
	ld d, b                                          ; $59ab: $50
	xor h                                            ; $59ac: $ac
	xor $08                                          ; $59ad: $ee $08

jr_093_59af:
	ld c, d                                          ; $59af: $4a
	ldh a, [$fa]                                     ; $59b0: $f0 $fa
	ld b, c                                          ; $59b2: $41
	ld c, d                                          ; $59b3: $4a
	ld d, l                                          ; $59b4: $55
	ld c, l                                          ; $59b5: $4d
	ld a, [hl-]                                      ; $59b6: $3a
	jr c, jr_093_5959                                ; $59b7: $38 $a0

	cpl                                              ; $59b9: $2f
	ld b, e                                          ; $59ba: $43
	ld e, e                                          ; $59bb: $5b
	ld d, [hl]                                       ; $59bc: $56
	ld b, [hl]                                       ; $59bd: $46

jr_093_59be:
	inc [hl]                                         ; $59be: $34
	halt                                             ; $59bf: $76
	ld c, a                                          ; $59c0: $4f

jr_093_59c1:
	jr c, jr_093_59fb                                ; $59c1: $38 $38

	ld l, [hl]                                       ; $59c3: $6e
	xor b                                            ; $59c4: $a8
	ld c, a                                          ; $59c5: $4f
	add hl, sp                                       ; $59c6: $39

jr_093_59c7:
	ld a, d                                          ; $59c7: $7a
	ld e, a                                          ; $59c8: $5f
	add hl, sp                                       ; $59c9: $39
	and b                                            ; $59ca: $a0
	ldh a, [rAUDVOL]                                 ; $59cb: $f0 $24
	ld d, e                                          ; $59cd: $53
	pop af                                           ; $59ce: $f1
	dec sp                                           ; $59cf: $3b
	ld c, [hl]                                       ; $59d0: $4e
	ld h, e                                          ; $59d1: $63
	ld c, h                                          ; $59d2: $4c
	xor b                                            ; $59d3: $a8
	ld e, b                                          ; $59d4: $58
	ld b, [hl]                                       ; $59d5: $46
	inc [hl]                                         ; $59d6: $34
	or b                                             ; $59d7: $b0
	and b                                            ; $59d8: $a0

jr_093_59d9:
	ldh a, [$a5]                                     ; $59d9: $f0 $a5
	ldh a, [rSCX]                                    ; $59db: $f0 $43
	ld b, d                                          ; $59dd: $42
	ldh a, [$c1]                                     ; $59de: $f0 $c1
	ldh a, [$d5]                                     ; $59e0: $f0 $d5
	xor c                                            ; $59e2: $a9
	ld b, b                                          ; $59e3: $40
	ld b, c                                          ; $59e4: $41
	ld a, [hl-]                                      ; $59e5: $3a
	ld c, a                                          ; $59e6: $4f
	ld b, d                                          ; $59e7: $42
	ld [hl], d                                       ; $59e8: $72
	ld c, [hl]                                       ; $59e9: $4e
	ld b, d                                          ; $59ea: $42
	and c                                            ; $59eb: $a1
	cpl                                              ; $59ec: $2f
	ld b, e                                          ; $59ed: $43
	db $ec                                           ; $59ee: $ec
	add hl, bc                                       ; $59ef: $09
	ld a, b                                          ; $59f0: $78
	dec a                                            ; $59f1: $3d
	ld b, c                                          ; $59f2: $41
	ld b, h                                          ; $59f3: $44
	ld a, $48                                        ; $59f4: $3e $48
	and b                                            ; $59f6: $a0
	ld b, b                                          ; $59f7: $40
	ld b, c                                          ; $59f8: $41
	ld a, [hl-]                                      ; $59f9: $3a
	ld c, a                                          ; $59fa: $4f

jr_093_59fb:
	ld b, d                                          ; $59fb: $42
	ld [hl], d                                       ; $59fc: $72
	ld c, [hl]                                       ; $59fd: $4e
	ld a, [hl-]                                      ; $59fe: $3a
	ld d, b                                          ; $59ff: $50
	xor h                                            ; $5a00: $ac
	ld l, a                                          ; $5a01: $6f
	inc [hl]                                         ; $5a02: $34
	ldh a, [rHDMA5]                                  ; $5a03: $f0 $55
	ldh a, [rBCPS]                                   ; $5a05: $f0 $68
	ld d, c                                          ; $5a07: $51
	ld c, [hl]                                       ; $5a08: $4e
	ld h, e                                          ; $5a09: $63
	and b                                            ; $5a0a: $a0
	cpl                                              ; $5a0b: $2f
	ld b, e                                          ; $5a0c: $43
	ld b, b                                          ; $5a0d: $40
	ld b, c                                          ; $5a0e: $41
	ld a, [hl-]                                      ; $5a0f: $3a
	inc [hl]                                         ; $5a10: $34
	db $ed                                           ; $5a11: $ed
	ld d, e                                          ; $5a12: $53
	inc de                                           ; $5a13: $13
	jp hl                                            ; $5a14: $e9


	pop bc                                           ; $5a15: $c1
	and b                                            ; $5a16: $a0
	ld l, e                                          ; $5a17: $6b
	xor c                                            ; $5a18: $a9
	ld d, d                                          ; $5a19: $52
	ld b, h                                          ; $5a1a: $44
	ld l, e                                          ; $5a1b: $6b
	inc a                                            ; $5a1c: $3c
	ldh a, [rAUD2LEN]                                ; $5a1d: $f0 $16
	ld d, e                                          ; $5a1f: $53
	ld b, [hl]                                       ; $5a20: $46
	ld c, [hl]                                       ; $5a21: $4e
	ld b, d                                          ; $5a22: $42
	and c                                            ; $5a23: $a1
	cpl                                              ; $5a24: $2f
	ld b, e                                          ; $5a25: $43
	halt                                             ; $5a26: $76
	ld c, a                                          ; $5a27: $4f
	inc [hl]                                         ; $5a28: $34
	ld a, d                                          ; $5a29: $7a
	ld c, [hl]                                       ; $5a2a: $4e
	ld b, l                                          ; $5a2b: $45
	and b                                            ; $5a2c: $a0
	ldh a, [$08]                                     ; $5a2d: $f0 $08
	ld e, c                                          ; $5a2f: $59
	ldh a, [$08]                                     ; $5a30: $f0 $08
	ldh a, [$08]                                     ; $5a32: $f0 $08
	ldh a, [$08]                                     ; $5a34: $f0 $08
	ldh a, [$08]                                     ; $5a36: $f0 $08
	ldh a, [$08]                                     ; $5a38: $f0 $08
	ldh a, [$08]                                     ; $5a3a: $f0 $08
	xor l                                            ; $5a3c: $ad
	ldh a, [$34]                                     ; $5a3d: $f0 $34
	ld b, a                                          ; $5a3f: $47
	ld l, a                                          ; $5a40: $6f
	ld b, d                                          ; $5a41: $42
	ldh a, [$d7]                                     ; $5a42: $f0 $d7
	ld e, a                                          ; $5a44: $5f
	ld b, a                                          ; $5a45: $47
	add b                                            ; $5a46: $80
	jr c, jr_093_5a88                                ; $5a47: $38 $3f

	inc de                                           ; $5a49: $13
	ld a, b                                          ; $5a4a: $78
	ld a, [hl-]                                      ; $5a4b: $3a
	ld d, l                                          ; $5a4c: $55
	ccf                                              ; $5a4d: $3f
	ld c, a                                          ; $5a4e: $4f
	jr c, jr_093_5a89                                ; $5a4f: $38 $38

	ld b, d                                          ; $5a51: $42
	ld b, l                                          ; $5a52: $45
	and b                                            ; $5a53: $a0
	cpl                                              ; $5a54: $2f
	ld b, e                                          ; $5a55: $43

jr_093_5a56:
	xor $10                                          ; $5a56: $ee $10
	and b                                            ; $5a58: $a0
	ldh a, [$a5]                                     ; $5a59: $f0 $a5
	ldh a, [rSCX]                                    ; $5a5b: $f0 $43
	ld b, d                                          ; $5a5d: $42
	ldh a, [$c1]                                     ; $5a5e: $f0 $c1
	ldh a, [$d5]                                     ; $5a60: $f0 $d5
	xor c                                            ; $5a62: $a9

jr_093_5a63:
	ld h, e                                          ; $5a63: $63
	ldh a, [rAUD1SWEEP]                              ; $5a64: $f0 $10
	ld h, e                                          ; $5a66: $63
	ldh a, [rAUD1SWEEP]                              ; $5a67: $f0 $10
	ld l, a                                          ; $5a69: $6f
	ld h, d                                          ; $5a6a: $62
	ldh a, [$3b]                                     ; $5a6b: $f0 $3b
	dec sp                                           ; $5a6d: $3b
	ccf                                              ; $5a6e: $3f
	xor h                                            ; $5a6f: $ac
	ld b, b                                          ; $5a70: $40
	ld b, c                                          ; $5a71: $41
	ld a, [hl-]                                      ; $5a72: $3a
	ld c, a                                          ; $5a73: $4f
	ld b, d                                          ; $5a74: $42
	ld [hl], d                                       ; $5a75: $72
	ld a, c                                          ; $5a76: $79
	ld c, [hl]                                       ; $5a77: $4e
	ld h, e                                          ; $5a78: $63
	ld e, l                                          ; $5a79: $5d
	and c                                            ; $5a7a: $a1
	cpl                                              ; $5a7b: $2f
	ld b, e                                          ; $5a7c: $43
	ld e, d                                          ; $5a7d: $5a
	inc [hl]                                         ; $5a7e: $34
	db $ec                                           ; $5a7f: $ec
	db $d3                                           ; $5a80: $d3
	dec sp                                           ; $5a81: $3b
	ccf                                              ; $5a82: $3f
	xor h                                            ; $5a83: $ac
	ldh a, [$a5]                                     ; $5a84: $f0 $a5
	ldh a, [rSCX]                                    ; $5a86: $f0 $43

jr_093_5a88:
	ld a, [hl-]                                      ; $5a88: $3a

jr_093_5a89:
	ld b, c                                          ; $5a89: $41
	ccf                                              ; $5a8a: $3f
	xor h                                            ; $5a8b: $ac
	di                                               ; $5a8c: $f3
	ld a, l                                          ; $5a8d: $7d
	inc a                                            ; $5a8e: $3c
	ld a, $38                                        ; $5a8f: $3e $38
	db $ec                                           ; $5a91: $ec
	ret c                                            ; $5a92: $d8

	inc a                                            ; $5a93: $3c
	and b                                            ; $5a94: $a0
	ld b, b                                          ; $5a95: $40
	ld b, c                                          ; $5a96: $41
	ld a, [hl-]                                      ; $5a97: $3a
	ld b, a                                          ; $5a98: $47
	ldh a, [$fa]                                     ; $5a99: $f0 $fa
	ld l, h                                          ; $5a9b: $6c
	dec a                                            ; $5a9c: $3d
	ld e, l                                          ; $5a9d: $5d
	ld c, l                                          ; $5a9e: $4d
	ld a, e                                          ; $5a9f: $7b
	xor h                                            ; $5aa0: $ac
	di                                               ; $5aa1: $f3
	reti                                             ; $5aa2: $d9


	ld d, l                                          ; $5aa3: $55
	xor $08                                          ; $5aa4: $ee $08
	ld c, d                                          ; $5aa6: $4a
	ld [hl], b                                       ; $5aa7: $70
	di                                               ; $5aa8: $f3
	ld e, d                                          ; $5aa9: $5a
	ld a, [hl-]                                      ; $5aaa: $3a
	ld e, b                                          ; $5aab: $58
	jr c, jr_093_5a56                                ; $5aac: $38 $a8

	ldh a, [$bf]                                     ; $5aae: $f0 $bf
	ldh a, [rPCM12]                                  ; $5ab0: $f0 $76
	ldh a, [rTMA]                                    ; $5ab2: $f0 $06
	jr c, jr_093_5afa                                ; $5ab4: $38 $44

	ld h, e                                          ; $5ab6: $63
	and b                                            ; $5ab7: $a0
	cpl                                              ; $5ab8: $2f
	ld b, e                                          ; $5ab9: $43
	ld b, b                                          ; $5aba: $40
	ld b, c                                          ; $5abb: $41
	ld a, [hl-]                                      ; $5abc: $3a
	inc [hl]                                         ; $5abd: $34
	ldh a, [$d8]                                     ; $5abe: $f0 $d8
	ld e, d                                          ; $5ac0: $5a
	jr c, jr_093_5a63                                ; $5ac1: $38 $a0

	ld l, a                                          ; $5ac3: $6f
	xor h                                            ; $5ac4: $ac
	ldh a, [$d6]                                     ; $5ac5: $f0 $d6
	ld b, d                                          ; $5ac7: $42
	ldh a, [$cc]                                     ; $5ac8: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $5aca: $f0 $88
	ld d, e                                          ; $5acc: $53
	ld b, [hl]                                       ; $5acd: $46
	ld c, [hl]                                       ; $5ace: $4e
	ld b, d                                          ; $5acf: $42
	xor b                                            ; $5ad0: $a8
	ld [$5121], a                                    ; $5ad1: $ea $21 $51
	ld c, [hl]                                       ; $5ad4: $4e
	ld h, e                                          ; $5ad5: $63
	ld c, h                                          ; $5ad6: $4c
	xor b                                            ; $5ad7: $a8
	ldh a, [$08]                                     ; $5ad8: $f0 $08
	ld e, c                                          ; $5ada: $59
	ldh a, [$08]                                     ; $5adb: $f0 $08
	ldh a, [$08]                                     ; $5add: $f0 $08
	ldh a, [$08]                                     ; $5adf: $f0 $08
	ldh a, [$08]                                     ; $5ae1: $f0 $08
	ldh a, [$08]                                     ; $5ae3: $f0 $08
	and b                                            ; $5ae5: $a0
	xor $14                                          ; $5ae6: $ee $14
	xor h                                            ; $5ae8: $ac
	ld l, e                                          ; $5ae9: $6b
	inc a                                            ; $5aea: $3c
	ldh a, [$bb]                                     ; $5aeb: $f0 $bb
	ld d, d                                          ; $5aed: $52
	ld c, [hl]                                       ; $5aee: $4e
	db $ec                                           ; $5aef: $ec
	ld [de], a                                       ; $5af0: $12
	and b                                            ; $5af1: $a0
	cpl                                              ; $5af2: $2f
	ld b, e                                          ; $5af3: $43
	ld l, d                                          ; $5af4: $6a
	inc a                                            ; $5af5: $3c
	ld d, b                                          ; $5af6: $50
	db $ed                                           ; $5af7: $ed
	ld l, d                                          ; $5af8: $6a
	ld d, e                                          ; $5af9: $53

jr_093_5afa:
	inc de                                           ; $5afa: $13
	ldh a, [$bb]                                     ; $5afb: $f0 $bb
	ld d, d                                          ; $5afd: $52
	ld c, [hl]                                       ; $5afe: $4e
	ld l, h                                          ; $5aff: $6c
	dec a                                            ; $5b00: $3d
	jr c, @+$46                                      ; $5b01: $38 $44

	ld c, h                                          ; $5b03: $4c
	and b                                            ; $5b04: $a0
	cpl                                              ; $5b05: $2f
	ld b, e                                          ; $5b06: $43
	ld c, h                                          ; $5b07: $4c
	add l                                            ; $5b08: $85
	inc [hl]                                         ; $5b09: $34
	ld l, d                                          ; $5b0a: $6a
	ld b, d                                          ; $5b0b: $42
	add h                                            ; $5b0c: $84
	xor h                                            ; $5b0d: $ac
	ld l, e                                          ; $5b0e: $6b
	ld d, e                                          ; $5b0f: $53
	add d                                            ; $5b10: $82
	jr c, jr_093_5b50                                ; $5b11: $38 $3d

	inc a                                            ; $5b13: $3c
	dec sp                                           ; $5b14: $3b
	dec a                                            ; $5b15: $3d
	ld b, c                                          ; $5b16: $41
	ld b, h                                          ; $5b17: $44
	ld c, c                                          ; $5b18: $49
	ld [hl], a                                       ; $5b19: $77
	add hl, sp                                       ; $5b1a: $39
	and c                                            ; $5b1b: $a1
	ld e, b                                          ; $5b1c: $58
	ld b, [hl]                                       ; $5b1d: $46
	inc [hl]                                         ; $5b1e: $34
	ld l, e                                          ; $5b1f: $6b
	inc a                                            ; $5b20: $3c
	ld a, $50                                        ; $5b21: $3e $50
	ld c, h                                          ; $5b23: $4c
	xor b                                            ; $5b24: $a8
	pop af                                           ; $5b25: $f1
	ld l, a                                          ; $5b26: $6f
	add h                                            ; $5b27: $84
	ld b, d                                          ; $5b28: $42
	sbc d                                            ; $5b29: $9a
	ld b, a                                          ; $5b2a: $47
	ld c, e                                          ; $5b2b: $4b
	xor h                                            ; $5b2c: $ac
	ld b, [hl]                                       ; $5b2d: $46
	ld d, d                                          ; $5b2e: $52
	ld d, a                                          ; $5b2f: $57
	db $ed                                           ; $5b30: $ed
	ld [hl], h                                       ; $5b31: $74
	ld a, [hl-]                                      ; $5b32: $3a
	jr c, jr_093_5b71                                ; $5b33: $38 $3c

	ld d, b                                          ; $5b35: $50
	and b                                            ; $5b36: $a0
	cpl                                              ; $5b37: $2f
	ld b, e                                          ; $5b38: $43
	rst JumpTable                                          ; $5b39: $c7
	xor b                                            ; $5b3a: $a8
	or h                                             ; $5b3b: $b4
	xor h                                            ; $5b3c: $ac
	db $ec                                           ; $5b3d: $ec
	push bc                                          ; $5b3e: $c5
	db $ec                                           ; $5b3f: $ec
	rrca                                             ; $5b40: $0f
	and c                                            ; $5b41: $a1
	call c, Call_093_6fa8                            ; $5b42: $dc $a8 $6f
	ld c, e                                          ; $5b45: $4b
	ldh a, [$34]                                     ; $5b46: $f0 $34
	ld b, a                                          ; $5b48: $47
	inc a                                            ; $5b49: $3c
	ld d, d                                          ; $5b4a: $52
	ld h, e                                          ; $5b4b: $63
	ld a, [hl-]                                      ; $5b4c: $3a
	jr c, jr_093_5bb2                                ; $5b4d: $38 $63

	ld b, l                                          ; $5b4f: $45

jr_093_5b50:
	xor b                                            ; $5b50: $a8
	or b                                             ; $5b51: $b0
	and b                                            ; $5b52: $a0
	db $ed                                           ; $5b53: $ed
	ld l, d                                          ; $5b54: $6a
	ld a, [hl-]                                      ; $5b55: $3a
	ld b, c                                          ; $5b56: $41
	ccf                                              ; $5b57: $3f
	inc de                                           ; $5b58: $13
	db $eb                                           ; $5b59: $eb
	ld d, e                                          ; $5b5a: $53
	ld b, c                                          ; $5b5b: $41
	db $ec                                           ; $5b5c: $ec
	ret c                                            ; $5b5d: $d8

	and c                                            ; $5b5e: $a1
	cpl                                              ; $5b5f: $2f
	ld b, e                                          ; $5b60: $43
	db $ec                                           ; $5b61: $ec
	add hl, bc                                       ; $5b62: $09
	ld a, b                                          ; $5b63: $78
	dec a                                            ; $5b64: $3d
	ld b, c                                          ; $5b65: $41
	ld b, h                                          ; $5b66: $44
	inc a                                            ; $5b67: $3c
	ld d, b                                          ; $5b68: $50
	xor b                                            ; $5b69: $a8
	pop af                                           ; $5b6a: $f1
	ld h, [hl]                                       ; $5b6b: $66
	jr c, jr_093_5bad                                ; $5b6c: $38 $3f

	jr c, jr_093_5bc4                                ; $5b6e: $38 $54

	add hl, sp                                       ; $5b70: $39

jr_093_5b71:
	ld b, l                                          ; $5b71: $45
	and b                                            ; $5b72: $a0
	db $ec                                           ; $5b73: $ec
	reti                                             ; $5b74: $d9


	inc de                                           ; $5b75: $13
	add b                                            ; $5b76: $80
	ld d, d                                          ; $5b77: $52
	ld d, b                                          ; $5b78: $50
	ld a, [hl-]                                      ; $5b79: $3a
	inc a                                            ; $5b7a: $3c
	dec sp                                           ; $5b7b: $3b
	dec a                                            ; $5b7c: $3d
	db $ec                                           ; $5b7d: $ec
	ret c                                            ; $5b7e: $d8

	and b                                            ; $5b7f: $a0
	cpl                                              ; $5b80: $2f
	ld b, e                                          ; $5b81: $43
	ld l, e                                          ; $5b82: $6b
	ld h, d                                          ; $5b83: $62
	add d                                            ; $5b84: $82
	dec sp                                           ; $5b85: $3b
	ccf                                              ; $5b86: $3f
	ld c, [hl]                                       ; $5b87: $4e
	inc a                                            ; $5b88: $3c
	ld c, e                                          ; $5b89: $4b
	xor h                                            ; $5b8a: $ac
	ldh a, [rTAC]                                    ; $5b8b: $f0 $07
	inc a                                            ; $5b8d: $3c
	ld d, b                                          ; $5b8e: $50
	ld a, [hl-]                                      ; $5b8f: $3a
	inc a                                            ; $5b90: $3c
	dec sp                                           ; $5b91: $3b
	dec a                                            ; $5b92: $3d
	ld e, l                                          ; $5b93: $5d
	ld e, d                                          ; $5b94: $5a
	ld c, h                                          ; $5b95: $4c
	and b                                            ; $5b96: $a0
	ld d, h                                          ; $5b97: $54
	ld b, d                                          ; $5b98: $42
	ld l, a                                          ; $5b99: $6f
	ld h, d                                          ; $5b9a: $62
	ldh a, [$a7]                                     ; $5b9b: $f0 $a7
	ld c, l                                          ; $5b9d: $4d
	sub h                                            ; $5b9e: $94
	ld a, $3f                                        ; $5b9f: $3e $3f
	xor h                                            ; $5ba1: $ac
	ld d, h                                          ; $5ba2: $54
	ld b, c                                          ; $5ba3: $41
	ld a, [hl-]                                      ; $5ba4: $3a
	ldh a, [$2c]                                     ; $5ba5: $f0 $2c
	ld [hl], d                                       ; $5ba7: $72
	ld a, c                                          ; $5ba8: $79
	ld c, [hl]                                       ; $5ba9: $4e
	ld a, [hl-]                                      ; $5baa: $3a
	ld b, c                                          ; $5bab: $41
	ccf                                              ; $5bac: $3f

jr_093_5bad:
	xor h                                            ; $5bad: $ac
	ldh a, [c]                                       ; $5bae: $f2
	ld bc, $7963                                     ; $5baf: $01 $63 $79

jr_093_5bb2:
	ld c, [hl]                                       ; $5bb2: $4e
	ld h, e                                          ; $5bb3: $63
	ld c, h                                          ; $5bb4: $4c
	and b                                            ; $5bb5: $a0
	cpl                                              ; $5bb6: $2f
	ld b, e                                          ; $5bb7: $43
	ld b, b                                          ; $5bb8: $40
	inc [hl]                                         ; $5bb9: $34
	ld b, b                                          ; $5bba: $40
	ld b, c                                          ; $5bbb: $41
	ld a, [hl-]                                      ; $5bbc: $3a
	ld d, h                                          ; $5bbd: $54
	ld c, c                                          ; $5bbe: $49
	inc de                                           ; $5bbf: $13
	add d                                            ; $5bc0: $82
	dec sp                                           ; $5bc1: $3b
	dec a                                            ; $5bc2: $3d
	dec sp                                           ; $5bc3: $3b

jr_093_5bc4:
	ccf                                              ; $5bc4: $3f
	ld c, b                                          ; $5bc5: $48
	and b                                            ; $5bc6: $a0
	ld l, a                                          ; $5bc7: $6f
	xor h                                            ; $5bc8: $ac
	ldh a, [$d6]                                     ; $5bc9: $f0 $d6
	ld b, d                                          ; $5bcb: $42
	ldh a, [$cc]                                     ; $5bcc: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $5bce: $f0 $88
	ld d, e                                          ; $5bd0: $53
	ld b, [hl]                                       ; $5bd1: $46
	ld c, [hl]                                       ; $5bd2: $4e
	ld b, d                                          ; $5bd3: $42
	xor b                                            ; $5bd4: $a8
	ld [$5121], a                                    ; $5bd5: $ea $21 $51
	ld c, [hl]                                       ; $5bd8: $4e
	ld h, e                                          ; $5bd9: $63
	xor b                                            ; $5bda: $a8
	ldh a, [$08]                                     ; $5bdb: $f0 $08
	ld e, c                                          ; $5bdd: $59
	ldh a, [$08]                                     ; $5bde: $f0 $08
	ldh a, [$08]                                     ; $5be0: $f0 $08
	ldh a, [$08]                                     ; $5be2: $f0 $08
	ldh a, [$08]                                     ; $5be4: $f0 $08
	ldh a, [$08]                                     ; $5be6: $f0 $08
	and b                                            ; $5be8: $a0
	db $ec                                           ; $5be9: $ec
	add hl, bc                                       ; $5bea: $09
	inc [hl]                                         ; $5beb: $34
	xor $06                                          ; $5bec: $ee $06
	ld b, a                                          ; $5bee: $47
	inc de                                           ; $5bef: $13
	ld a, b                                          ; $5bf0: $78
	ccf                                              ; $5bf1: $3f
	ld b, [hl]                                       ; $5bf2: $46
	ldh a, [rSB]                                     ; $5bf3: $f0 $01
	dec a                                            ; $5bf5: $3d
	ld b, d                                          ; $5bf6: $42
	ld b, a                                          ; $5bf7: $47
	xor h                                            ; $5bf8: $ac
	add b                                            ; $5bf9: $80
	ld d, d                                          ; $5bfa: $52
	ld d, b                                          ; $5bfb: $50
	ld a, [hl-]                                      ; $5bfc: $3a
	inc a                                            ; $5bfd: $3c
	dec sp                                           ; $5bfe: $3b
	dec a                                            ; $5bff: $3d
	ld h, e                                          ; $5c00: $63
	and b                                            ; $5c01: $a0
	cpl                                              ; $5c02: $2f
	ld b, e                                          ; $5c03: $43
	ld e, [hl]                                       ; $5c04: $5e
	dec sp                                           ; $5c05: $3b
	xor h                                            ; $5c06: $ac
	ldh a, [rAUD4ENV]                                ; $5c07: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5c09: $f0 $23
	ld d, l                                          ; $5c0b: $55
	ld a, [hl-]                                      ; $5c0c: $3a
	inc a                                            ; $5c0d: $3c
	dec sp                                           ; $5c0e: $3b
	dec a                                            ; $5c0f: $3d
	ld c, b                                          ; $5c10: $48
	and c                                            ; $5c11: $a1
	ld l, a                                          ; $5c12: $6f
	ld c, a                                          ; $5c13: $4f
	di                                               ; $5c14: $f3
	dec de                                           ; $5c15: $1b
	ld d, l                                          ; $5c16: $55
	inc de                                           ; $5c17: $13
	ld [hl], d                                       ; $5c18: $72
	ld d, b                                          ; $5c19: $50
	ld c, l                                          ; $5c1a: $4d
	dec a                                            ; $5c1b: $3d
	ld c, a                                          ; $5c1c: $4f
	ld b, d                                          ; $5c1d: $42
	ld c, h                                          ; $5c1e: $4c
	xor b                                            ; $5c1f: $a8
	db $eb                                           ; $5c20: $eb
	ld e, b                                          ; $5c21: $58
	ld c, d                                          ; $5c22: $4a
	inc [hl]                                         ; $5c23: $34
	ld d, h                                          ; $5c24: $54
	ld b, d                                          ; $5c25: $42
	ld l, a                                          ; $5c26: $6f
	ld d, e                                          ; $5c27: $53
	inc de                                           ; $5c28: $13
	ldh a, [$66]                                     ; $5c29: $f0 $66
	ldh a, [$fe]                                     ; $5c2b: $f0 $fe
	ld c, c                                          ; $5c2d: $49
	ld c, d                                          ; $5c2e: $4a
	ld c, a                                          ; $5c2f: $4f
	ld [hl], a                                       ; $5c30: $77
	dec sp                                           ; $5c31: $3b
	dec a                                            ; $5c32: $3d
	ld b, d                                          ; $5c33: $42
	and c                                            ; $5c34: $a1
	cpl                                              ; $5c35: $2f
	ld b, e                                          ; $5c36: $43
	ld b, b                                          ; $5c37: $40
	ld b, c                                          ; $5c38: $41
	ld a, [hl-]                                      ; $5c39: $3a
	ld d, h                                          ; $5c3a: $54
	ld c, c                                          ; $5c3b: $49
	inc de                                           ; $5c3c: $13
	add d                                            ; $5c3d: $82
	ld h, e                                          ; $5c3e: $63
	ld c, l                                          ; $5c3f: $4d
	dec a                                            ; $5c40: $3d
	dec sp                                           ; $5c41: $3b
	ccf                                              ; $5c42: $3f
	ld c, b                                          ; $5c43: $48
	and b                                            ; $5c44: $a0
	cpl                                              ; $5c45: $2f
	ld b, e                                          ; $5c46: $43
	jp hl                                            ; $5c47: $e9


	jp c, $e913                                      ; $5c48: $da $13 $e9

	ld c, l                                          ; $5c4b: $4d
	ld b, h                                          ; $5c4c: $44
	ld c, h                                          ; $5c4d: $4c
	xor b                                            ; $5c4e: $a8
	db $ed                                           ; $5c4f: $ed
	ld d, e                                          ; $5c50: $53
	inc [hl]                                         ; $5c51: $34
	jp hl                                            ; $5c52: $e9


	ldh [$a1], a                                     ; $5c53: $e0 $a1
	call c, $f0a8                                    ; $5c55: $dc $a8 $f0
	ld [hl+], a                                      ; $5c58: $22
	ld e, c                                          ; $5c59: $59
	ldh a, [$de]                                     ; $5c5a: $f0 $de
	add e                                            ; $5c5c: $83
	ld c, d                                          ; $5c5d: $4a
	inc [hl]                                         ; $5c5e: $34
	pop af                                           ; $5c5f: $f1
	dec b                                            ; $5c60: $05
	ldh a, [rWY]                                     ; $5c61: $f0 $4a
	ldh a, [$03]                                     ; $5c63: $f0 $03
	ld c, d                                          ; $5c65: $4a
	ld c, a                                          ; $5c66: $4f
	inc de                                           ; $5c67: $13
	ld a, $3f                                        ; $5c68: $3e $3f
	ld b, [hl]                                       ; $5c6a: $46
	ldh a, [rSB]                                     ; $5c6b: $f0 $01
	ld b, l                                          ; $5c6d: $45
	add hl, sp                                       ; $5c6e: $39
	inc a                                            ; $5c6f: $3c
	ld a, $50                                        ; $5c70: $3e $50
	and b                                            ; $5c72: $a0
	cpl                                              ; $5c73: $2f
	ld b, e                                          ; $5c74: $43
	jp hl                                            ; $5c75: $e9


	ret c                                            ; $5c76: $d8

	and c                                            ; $5c77: $a1
	ldh a, [$bd]                                     ; $5c78: $f0 $bd
	jr c, jr_093_5cbb                                ; $5c7a: $38 $3f

	ld [$635b], a                                    ; $5c7c: $ea $5b $63
	and b                                            ; $5c7f: $a0
	cpl                                              ; $5c80: $2f
	ld b, e                                          ; $5c81: $43
	ld e, [hl]                                       ; $5c82: $5e
	dec sp                                           ; $5c83: $3b
	inc [hl]                                         ; $5c84: $34
	db $ec                                           ; $5c85: $ec
	db $d3                                           ; $5c86: $d3
	and c                                            ; $5c87: $a1
	ld d, h                                          ; $5c88: $54
	ld b, d                                          ; $5c89: $42
	ld l, a                                          ; $5c8a: $6f
	ld d, e                                          ; $5c8b: $53
	pop af                                           ; $5c8c: $f1
	dec b                                            ; $5c8d: $05
	ldh a, [rWY]                                     ; $5c8e: $f0 $4a
	ldh a, [$03]                                     ; $5c90: $f0 $03
	ld h, d                                          ; $5c92: $62
	ld a, $3f                                        ; $5c93: $3e $3f
	inc de                                           ; $5c95: $13
	rst SubAFromDE                                          ; $5c96: $df
	ld b, d                                          ; $5c97: $42
	ld b, a                                          ; $5c98: $47
	inc [hl]                                         ; $5c99: $34
	xor $1e                                          ; $5c9a: $ee $1e
	pop af                                           ; $5c9c: $f1
	rst SubAFromHL                                          ; $5c9d: $d7
	ldh a, [$0d]                                     ; $5c9e: $f0 $0d
	ld b, d                                          ; $5ca0: $42
	inc de                                           ; $5ca1: $13
	ldh a, [$3f]                                     ; $5ca2: $f0 $3f
	ld a, $3c                                        ; $5ca4: $3e $3c
	ldh a, [$bd]                                     ; $5ca6: $f0 $bd
	ld e, l                                          ; $5ca8: $5d
	ld a, [hl-]                                      ; $5ca9: $3a
	jr c, jr_093_5ce6                                ; $5caa: $38 $3a

	ld b, c                                          ; $5cac: $41
	ccf                                              ; $5cad: $3f
	ld c, b                                          ; $5cae: $48
	and b                                            ; $5caf: $a0
	cpl                                              ; $5cb0: $2f
	ld b, e                                          ; $5cb1: $43
	ld b, b                                          ; $5cb2: $40
	ld c, l                                          ; $5cb3: $4d
	ld c, d                                          ; $5cb4: $4a
	inc [hl]                                         ; $5cb5: $34
	ld b, b                                          ; $5cb6: $40
	ld b, d                                          ; $5cb7: $42
	ldh a, [$3f]                                     ; $5cb8: $f0 $3f
	ld c, e                                          ; $5cba: $4b

jr_093_5cbb:
	and c                                            ; $5cbb: $a1
	db $ed                                           ; $5cbc: $ed
	ld h, c                                          ; $5cbd: $61
	ld c, a                                          ; $5cbe: $4f
	inc de                                           ; $5cbf: $13
	pop af                                           ; $5cc0: $f1
	ld l, $5c                                        ; $5cc1: $2e $5c
	ldh a, [hDisp1_WX]                                     ; $5cc3: $f0 $96
	ld a, $58                                        ; $5cc5: $3e $58
	ld a, c                                          ; $5cc7: $79
	dec a                                            ; $5cc8: $3d
	ld e, l                                          ; $5cc9: $5d
	ld e, d                                          ; $5cca: $5a
	xor h                                            ; $5ccb: $ac
	ld l, a                                          ; $5ccc: $6f
	ld c, a                                          ; $5ccd: $4f
	di                                               ; $5cce: $f3
	ld b, $ec                                        ; $5ccf: $06 $ec
	ret c                                            ; $5cd1: $d8

	inc a                                            ; $5cd2: $3c
	ld d, b                                          ; $5cd3: $50
	inc [hl]                                         ; $5cd4: $34
	pop af                                           ; $5cd5: $f1
	pop de                                           ; $5cd6: $d1
	pop af                                           ; $5cd7: $f1
	sbc [hl]                                         ; $5cd8: $9e
	di                                               ; $5cd9: $f3
	or d                                             ; $5cda: $b2
	inc de                                           ; $5cdb: $13
	pop af                                           ; $5cdc: $f1
	rst SubAFromHL                                          ; $5cdd: $d7
	ldh a, [$0d]                                     ; $5cde: $f0 $0d
	ld c, d                                          ; $5ce0: $4a
	ldh a, [c]                                       ; $5ce1: $f2
	ld a, b                                          ; $5ce2: $78
	ld a, $3f                                        ; $5ce3: $3e $3f
	ld b, [hl]                                       ; $5ce5: $46

jr_093_5ce6:
	ldh a, [rSB]                                     ; $5ce6: $f0 $01
	dec a                                            ; $5ce8: $3d
	ld h, e                                          ; $5ce9: $63
	and b                                            ; $5cea: $a0
	cpl                                              ; $5ceb: $2f
	ld b, e                                          ; $5cec: $43
	rst JumpTable                                          ; $5ced: $c7
	ld c, b                                          ; $5cee: $48
	dec [hl]                                         ; $5cef: $35
	rla                                              ; $5cf0: $17
	ld b, b                                          ; $5cf1: $40
	ld c, l                                          ; $5cf2: $4d
	ld c, e                                          ; $5cf3: $4b
	add a                                            ; $5cf4: $87
	ldh a, [$5d]                                     ; $5cf5: $f0 $5d
	ld b, h                                          ; $5cf7: $44
	dec sp                                           ; $5cf8: $3b
	dec a                                            ; $5cf9: $3d
	ld c, h                                          ; $5cfa: $4c
	xor b                                            ; $5cfb: $a8
	ld [hl-], a                                      ; $5cfc: $32
	adc d                                            ; $5cfd: $8a
	ldh a, [$73]                                     ; $5cfe: $f0 $73
	adc a                                            ; $5d00: $8f
	pop af                                           ; $5d01: $f1
	ld c, [hl]                                       ; $5d02: $4e
	ld d, e                                          ; $5d03: $53
	ld c, b                                          ; $5d04: $48
	and e                                            ; $5d05: $a3
	ld l, a                                          ; $5d06: $6f
	ld b, d                                          ; $5d07: $42
	adc d                                            ; $5d08: $8a
	ld a, $58                                        ; $5d09: $3e $58
	ld c, e                                          ; $5d0b: $4b
	xor h                                            ; $5d0c: $ac
	db $ed                                           ; $5d0d: $ed
	ret nz                                           ; $5d0e: $c0

	inc [hl]                                         ; $5d0f: $34
	ldh a, [$3f]                                     ; $5d10: $f0 $3f
	ld a, [hl-]                                      ; $5d12: $3a
	ld e, d                                          ; $5d13: $5a
	ld b, a                                          ; $5d14: $47
	ld c, e                                          ; $5d15: $4b
	inc de                                           ; $5d16: $13
	pop af                                           ; $5d17: $f1
	and l                                            ; $5d18: $a5
	pop af                                           ; $5d19: $f1
	and [hl]                                         ; $5d1a: $a6
	ld c, d                                          ; $5d1b: $4a
	ld e, h                                          ; $5d1c: $5c
	ld a, [hl-]                                      ; $5d1d: $3a
	jr c, jr_093_5d62                                ; $5d1e: $38 $42

	ld c, h                                          ; $5d20: $4c
	and b                                            ; $5d21: $a0
	cpl                                              ; $5d22: $2f
	ld b, e                                          ; $5d23: $43
	rst JumpTable                                          ; $5d24: $c7
	ld b, h                                          ; $5d25: $44
	ld c, h                                          ; $5d26: $4c
	xor b                                            ; $5d27: $a8
	or h                                             ; $5d28: $b4
	xor h                                            ; $5d29: $ac
	db $ec                                           ; $5d2a: $ec
	push bc                                          ; $5d2b: $c5
	db $ec                                           ; $5d2c: $ec
	rrca                                             ; $5d2d: $0f
	and c                                            ; $5d2e: $a1
	call c, Call_093_54a8                            ; $5d2f: $dc $a8 $54
	ld b, d                                          ; $5d32: $42
	adc d                                            ; $5d33: $8a
	ld a, $58                                        ; $5d34: $3e $58
	ld h, d                                          ; $5d36: $62
	ldh a, [$3f]                                     ; $5d37: $f0 $3f
	ld c, c                                          ; $5d39: $49
	ld a, $3f                                        ; $5d3a: $3e $3f
	inc de                                           ; $5d3c: $13
	ldh a, [$8d]                                     ; $5d3d: $f0 $8d
	ld d, c                                          ; $5d3f: $51
	ld b, d                                          ; $5d40: $42
	ld c, a                                          ; $5d41: $4f
	jr c, jr_093_5d7c                                ; $5d42: $38 $38

	ld h, e                                          ; $5d44: $63
	ld c, h                                          ; $5d45: $4c
	and b                                            ; $5d46: $a0
	ldh a, [rPCM12]                                  ; $5d47: $f0 $76
	ldh a, [$d2]                                     ; $5d49: $f0 $d2
	ldh a, [$3f]                                     ; $5d4b: $f0 $3f
	xor c                                            ; $5d4d: $a9
	ld b, b                                          ; $5d4e: $40
	ld b, c                                          ; $5d4f: $41
	ld a, [hl-]                                      ; $5d50: $3a
	ld c, a                                          ; $5d51: $4f
	ld b, d                                          ; $5d52: $42
	ld a, [hl-]                                      ; $5d53: $3a
	jr c, jr_093_5db9                                ; $5d54: $38 $63

	and b                                            ; $5d56: $a0
	cpl                                              ; $5d57: $2f
	ld b, e                                          ; $5d58: $43
	ldh a, [$5a]                                     ; $5d59: $f0 $5a
	dec sp                                           ; $5d5b: $3b
	inc [hl]                                         ; $5d5c: $34
	ld e, d                                          ; $5d5d: $5a
	add hl, sp                                       ; $5d5e: $39
	jr c, jr_093_5d9a                                ; $5d5f: $38 $39

	sbc d                                            ; $5d61: $9a

jr_093_5d62:
	and c                                            ; $5d62: $a1
	ld d, h                                          ; $5d63: $54
	ld b, d                                          ; $5d64: $42
	ld l, a                                          ; $5d65: $6f
	ld h, d                                          ; $5d66: $62
	inc [hl]                                         ; $5d67: $34
	ld b, [hl]                                       ; $5d68: $46
	ld b, c                                          ; $5d69: $41
	ld a, [hl-]                                      ; $5d6a: $3a
	ldh a, [$3f]                                     ; $5d6b: $f0 $3f
	ld c, d                                          ; $5d6d: $4a
	inc de                                           ; $5d6e: $13
	pop af                                           ; $5d6f: $f1
	and l                                            ; $5d70: $a5
	pop af                                           ; $5d71: $f1
	and [hl]                                         ; $5d72: $a6
	ld d, c                                          ; $5d73: $51
	ld c, [hl]                                       ; $5d74: $4e
	ld a, [hl-]                                      ; $5d75: $3a
	ld b, c                                          ; $5d76: $41
	ccf                                              ; $5d77: $3f
	xor h                                            ; $5d78: $ac
	adc d                                            ; $5d79: $8a
	ld h, d                                          ; $5d7a: $62
	push af                                          ; $5d7b: $f5

jr_093_5d7c:
	ld a, d                                          ; $5d7c: $7a
	push af                                          ; $5d7d: $f5
	ld a, e                                          ; $5d7e: $7b
	ld a, $3f                                        ; $5d7f: $3e $3f
	jr c, jr_093_5dd1                                ; $5d81: $38 $4e

	ld h, e                                          ; $5d83: $63
	and b                                            ; $5d84: $a0
	cpl                                              ; $5d85: $2f
	ld b, e                                          ; $5d86: $43
	ld b, b                                          ; $5d87: $40
	inc [hl]                                         ; $5d88: $34
	ld b, b                                          ; $5d89: $40
	ld c, l                                          ; $5d8a: $4d
	ld c, d                                          ; $5d8b: $4a
	ld c, b                                          ; $5d8c: $48
	and b                                            ; $5d8d: $a0
	sub c                                            ; $5d8e: $91
	ldh a, [$59]                                     ; $5d8f: $f0 $59
	inc [hl]                                         ; $5d91: $34
	ldh a, [c]                                       ; $5d92: $f2
	ld hl, $f357                                     ; $5d93: $21 $57 $f3
	ld b, d                                          ; $5d96: $42
	ccf                                              ; $5d97: $3f
	ccf                                              ; $5d98: $3f
	inc de                                           ; $5d99: $13

jr_093_5d9a:
	ld e, h                                          ; $5d9a: $5c
	dec a                                            ; $5d9b: $3d
	ld h, e                                          ; $5d9c: $63
	and b                                            ; $5d9d: $a0
	cpl                                              ; $5d9e: $2f
	ld b, e                                          ; $5d9f: $43
	rst JumpTable                                          ; $5da0: $c7
	ld c, b                                          ; $5da1: $48
	and b                                            ; $5da2: $a0
	ld d, d                                          ; $5da3: $52
	inc [hl]                                         ; $5da4: $34
	ld d, h                                          ; $5da5: $54
	ld b, d                                          ; $5da6: $42
	ld l, a                                          ; $5da7: $6f
	ld b, d                                          ; $5da8: $42
	adc d                                            ; $5da9: $8a
	ld a, $58                                        ; $5daa: $3e $58
	ld h, d                                          ; $5dac: $62
	inc de                                           ; $5dad: $13
	pop af                                           ; $5dae: $f1
	and l                                            ; $5daf: $a5
	pop af                                           ; $5db0: $f1
	and [hl]                                         ; $5db1: $a6
	ld c, d                                          ; $5db2: $4a
	ld e, h                                          ; $5db3: $5c
	ld c, [hl]                                       ; $5db4: $4e
	ld c, a                                          ; $5db5: $4f
	ld b, d                                          ; $5db6: $42
	ld a, [hl-]                                      ; $5db7: $3a
	ld e, d                                          ; $5db8: $5a

jr_093_5db9:
	xor h                                            ; $5db9: $ac
	ld b, [hl]                                       ; $5dba: $46
	ld c, [hl]                                       ; $5dbb: $4e
	ld c, e                                          ; $5dbc: $4b
	sbc h                                            ; $5dbd: $9c
	ld c, a                                          ; $5dbe: $4f
	ld a, [hl-]                                      ; $5dbf: $3a
	jr c, jr_093_5e04                                ; $5dc0: $38 $42

	ld b, h                                          ; $5dc2: $44
	ld e, l                                          ; $5dc3: $5d
	ld c, l                                          ; $5dc4: $4d
	ld e, d                                          ; $5dc5: $5a
	and b                                            ; $5dc6: $a0
	ld l, d                                          ; $5dc7: $6a
	inc a                                            ; $5dc8: $3c
	ld d, b                                          ; $5dc9: $50
	ldh a, [$cc]                                     ; $5dca: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $5dcc: $f0 $88
	ld d, e                                          ; $5dce: $53
	ld b, [hl]                                       ; $5dcf: $46
	ld c, [hl]                                       ; $5dd0: $4e

jr_093_5dd1:
	ld b, d                                          ; $5dd1: $42
	xor b                                            ; $5dd2: $a8
	ld [$5121], a                                    ; $5dd3: $ea $21 $51
	ld c, [hl]                                       ; $5dd6: $4e
	ld h, e                                          ; $5dd7: $63
	xor b                                            ; $5dd8: $a8
	ldh a, [$08]                                     ; $5dd9: $f0 $08
	ld e, c                                          ; $5ddb: $59
	ldh a, [$08]                                     ; $5ddc: $f0 $08
	ldh a, [$08]                                     ; $5dde: $f0 $08
	ldh a, [$08]                                     ; $5de0: $f0 $08
	ldh a, [$08]                                     ; $5de2: $f0 $08
	ldh a, [$08]                                     ; $5de4: $f0 $08
	and b                                            ; $5de6: $a0
	xor $05                                          ; $5de7: $ee $05
	ld c, h                                          ; $5de9: $4c
	xor b                                            ; $5dea: $a8
	pop af                                           ; $5deb: $f1
	and e                                            ; $5dec: $a3
	pop af                                           ; $5ded: $f1
	ld [hl], d                                       ; $5dee: $72
	ld a, [hl-]                                      ; $5def: $3a
	jr c, jr_093_5e55                                ; $5df0: $38 $63

	and b                                            ; $5df2: $a0
	ld b, [hl]                                       ; $5df3: $46
	ld d, d                                          ; $5df4: $52
	ld d, a                                          ; $5df5: $57
	ld b, a                                          ; $5df6: $47
	ld c, a                                          ; $5df7: $4f
	ldh a, [rPCM12]                                  ; $5df8: $f0 $76
	ccf                                              ; $5dfa: $3f
	ld a, [hl-]                                      ; $5dfb: $3a
	jr c, jr_093_5e11                                ; $5dfc: $38 $13

	ld c, a                                          ; $5dfe: $4f
	ld b, d                                          ; $5dff: $42
	db $ec                                           ; $5e00: $ec
	jr nz, jr_093_5e43                               ; $5e01: $20 $40

	ld b, d                                          ; $5e03: $42

jr_093_5e04:
	ldh a, [$30]                                     ; $5e04: $f0 $30
	ld c, d                                          ; $5e06: $4a
	inc de                                           ; $5e07: $13
	ldh a, [c]                                       ; $5e08: $f2
	ld hl, $f357                                     ; $5e09: $21 $57 $f3
	ld b, d                                          ; $5e0c: $42
	ccf                                              ; $5e0d: $3f
	ccf                                              ; $5e0e: $3f
	ld e, h                                          ; $5e0f: $5c
	dec a                                            ; $5e10: $3d

jr_093_5e11:
	ld h, e                                          ; $5e11: $63
	and b                                            ; $5e12: $a0
	ld d, h                                          ; $5e13: $54
	ld d, h                                          ; $5e14: $54
	ld c, e                                          ; $5e15: $4b
	ld c, b                                          ; $5e16: $48
	and b                                            ; $5e17: $a0
	cpl                                              ; $5e18: $2f
	ld b, e                                          ; $5e19: $43
	ld e, d                                          ; $5e1a: $5a
	inc [hl]                                         ; $5e1b: $34
	db $eb                                           ; $5e1c: $eb
	rst FarCall                                          ; $5e1d: $f7
	xor c                                            ; $5e1e: $a9
	db $ed                                           ; $5e1f: $ed
	ld d, e                                          ; $5e20: $53
	and b                                            ; $5e21: $a0
	ld d, d                                          ; $5e22: $52
	dec sp                                           ; $5e23: $3b
	dec a                                            ; $5e24: $3d
	ld d, l                                          ; $5e25: $55
	inc [hl]                                         ; $5e26: $34
	ld l, e                                          ; $5e27: $6b
	ld h, d                                          ; $5e28: $62
	ld [hl], d                                       ; $5e29: $72
	ld b, a                                          ; $5e2a: $47
	inc de                                           ; $5e2b: $13
	db $eb                                           ; $5e2c: $eb
	ld d, $48                                        ; $5e2d: $16 $48
	and b                                            ; $5e2f: $a0
	cpl                                              ; $5e30: $2f
	ld b, e                                          ; $5e31: $43
	ld l, e                                          ; $5e32: $6b
	ld h, d                                          ; $5e33: $62
	ld l, [hl]                                       ; $5e34: $6e
	dec sp                                           ; $5e35: $3b
	ccf                                              ; $5e36: $3f
	ld c, [hl]                                       ; $5e37: $4e
	ld b, d                                          ; $5e38: $42
	xor c                                            ; $5e39: $a9
	ld b, l                                          ; $5e3a: $45
	ld d, l                                          ; $5e3b: $55
	ld [hl], d                                       ; $5e3c: $72
	ld e, [hl]                                       ; $5e3d: $5e
	ld a, [hl-]                                      ; $5e3e: $3a
	jr c, @+$47                                      ; $5e3f: $38 $45

	and b                                            ; $5e41: $a0
	db $eb                                           ; $5e42: $eb

jr_093_5e43:
	ld e, b                                          ; $5e43: $58
	ld l, a                                          ; $5e44: $6f
	ld c, e                                          ; $5e45: $4b
	inc de                                           ; $5e46: $13
	db $ed                                           ; $5e47: $ed
	ld [hl], h                                       ; $5e48: $74
	ld a, [hl-]                                      ; $5e49: $3a
	jr c, @+$44                                      ; $5e4a: $38 $42

	xor b                                            ; $5e4c: $a8
	xor $08                                          ; $5e4d: $ee $08
	ld c, d                                          ; $5e4f: $4a
	ld [hl], d                                       ; $5e50: $72
	ccf                                              ; $5e51: $3f
	ld d, l                                          ; $5e52: $55
	ld b, h                                          ; $5e53: $44
	ld e, b                                          ; $5e54: $58

jr_093_5e55:
	ld c, [hl]                                       ; $5e55: $4e
	xor b                                            ; $5e56: $a8
	ld [$a021], a                                    ; $5e57: $ea $21 $a0
	cpl                                              ; $5e5a: $2f
	ld b, e                                          ; $5e5b: $43
	ld h, h                                          ; $5e5c: $64
	ld h, h                                          ; $5e5d: $64
	ld h, h                                          ; $5e5e: $64
	ld h, h                                          ; $5e5f: $64
	ld h, h                                          ; $5e60: $64
	ld h, h                                          ; $5e61: $64
	ld h, h                                          ; $5e62: $64
	ld h, h                                          ; $5e63: $64
	xor b                                            ; $5e64: $a8
	db $eb                                           ; $5e65: $eb
	add h                                            ; $5e66: $84
	ld [hl], h                                       ; $5e67: $74
	and c                                            ; $5e68: $a1
	jp hl                                            ; $5e69: $e9


	ld d, [hl]                                       ; $5e6a: $56
	xor b                                            ; $5e6b: $a8
	jp hl                                            ; $5e6c: $e9


	ld d, a                                          ; $5e6d: $57
	and b                                            ; $5e6e: $a0
	cpl                                              ; $5e6f: $2f
	ld b, e                                          ; $5e70: $43
	db $ed                                           ; $5e71: $ed
	ld d, e                                          ; $5e72: $53
	inc [hl]                                         ; $5e73: $34
	ret                                              ; $5e74: $c9


	inc de                                           ; $5e75: $13
	sbc c                                            ; $5e76: $99
	dec sp                                           ; $5e77: $3b
	ccf                                              ; $5e78: $3f
	ld b, l                                          ; $5e79: $45
	dec [hl]                                         ; $5e7a: $35
	halt                                             ; $5e7b: $76
	ld c, a                                          ; $5e7c: $4f
	ld a, d                                          ; $5e7d: $7a
	ld c, [hl]                                       ; $5e7e: $4e
	ld b, l                                          ; $5e7f: $45
	and b                                            ; $5e80: $a0
	ld h, e                                          ; $5e81: $63
	ldh a, [rAUD1SWEEP]                              ; $5e82: $f0 $10
	ld h, e                                          ; $5e84: $63
	ldh a, [rAUD1SWEEP]                              ; $5e85: $f0 $10
	inc [hl]                                         ; $5e87: $34
	ld d, h                                          ; $5e88: $54
	ld b, d                                          ; $5e89: $42
	ld l, a                                          ; $5e8a: $6f
	ld h, d                                          ; $5e8b: $62
	inc de                                           ; $5e8c: $13
	ldh a, [$a7]                                     ; $5e8d: $f0 $a7
	ld c, l                                          ; $5e8f: $4d
	ccf                                              ; $5e90: $3f
	ld a, b                                          ; $5e91: $78
	ccf                                              ; $5e92: $3f
	inc [hl]                                         ; $5e93: $34
	db $eb                                           ; $5e94: $eb
	ld e, b                                          ; $5e95: $58
	ld h, d                                          ; $5e96: $62
	inc de                                           ; $5e97: $13
	ld [hl], d                                       ; $5e98: $72
	ld a, c                                          ; $5e99: $79
	ld c, [hl]                                       ; $5e9a: $4e
	add b                                            ; $5e9b: $80
	ld c, a                                          ; $5e9c: $4f
	ld d, a                                          ; $5e9d: $57
	ld b, h                                          ; $5e9e: $44
	dec sp                                           ; $5e9f: $3b
	dec a                                            ; $5ea0: $3d
	ld b, d                                          ; $5ea1: $42
	inc a                                            ; $5ea2: $3c
	ld a, $50                                        ; $5ea3: $3e $50
	and c                                            ; $5ea5: $a1
	cpl                                              ; $5ea6: $2f
	ld b, e                                          ; $5ea7: $43
	ld e, [hl]                                       ; $5ea8: $5e
	dec sp                                           ; $5ea9: $3b
	inc [hl]                                         ; $5eaa: $34
	ld l, e                                          ; $5eab: $6b
	ld h, d                                          ; $5eac: $62
	ld l, [hl]                                       ; $5ead: $6e
	dec sp                                           ; $5eae: $3b
	ccf                                              ; $5eaf: $3f
	ld c, [hl]                                       ; $5eb0: $4e
	ld b, d                                          ; $5eb1: $42
	xor c                                            ; $5eb2: $a9
	ld b, l                                          ; $5eb3: $45
	ld d, l                                          ; $5eb4: $55
	ld [hl], d                                       ; $5eb5: $72
	ld e, [hl]                                       ; $5eb6: $5e
	ld a, [hl-]                                      ; $5eb7: $3a
	jr c, jr_093_5eff                                ; $5eb8: $38 $45

	and b                                            ; $5eba: $a0
	ld d, d                                          ; $5ebb: $52
	inc [hl]                                         ; $5ebc: $34
	ld l, a                                          ; $5ebd: $6f
	ld c, c                                          ; $5ebe: $49
	di                                               ; $5ebf: $f3
	rla                                              ; $5ec0: $17
	ei                                               ; $5ec1: $fb
	and a                                            ; $5ec2: $a7
	ld d, c                                          ; $5ec3: $51
	ld c, [hl]                                       ; $5ec4: $4e
	ld c, c                                          ; $5ec5: $49
	inc de                                           ; $5ec6: $13
	db $f4                                           ; $5ec7: $f4
	sub a                                            ; $5ec8: $97
	di                                               ; $5ec9: $f3
	ld c, h                                          ; $5eca: $4c
	di                                               ; $5ecb: $f3
	inc [hl]                                         ; $5ecc: $34
	push af                                          ; $5ecd: $f5
	dec [hl]                                         ; $5ece: $35
	ld c, e                                          ; $5ecf: $4b
	or $34                                           ; $5ed0: $f6 $34
	ld c, [hl]                                       ; $5ed2: $4e
	ld e, l                                          ; $5ed3: $5d
	ld e, d                                          ; $5ed4: $5a
	xor h                                            ; $5ed5: $ac
	ldh a, [c]                                       ; $5ed6: $f2
	rra                                              ; $5ed7: $1f
	ldh a, [$38]                                     ; $5ed8: $f0 $38
	ld b, a                                          ; $5eda: $47
	ld c, e                                          ; $5edb: $4b
	db $ed                                           ; $5edc: $ed
	xor d                                            ; $5edd: $aa
	jr c, jr_093_5f18                                ; $5ede: $38 $38

	inc a                                            ; $5ee0: $3c
	ld c, a                                          ; $5ee1: $4f
	ld c, h                                          ; $5ee2: $4c
	and b                                            ; $5ee3: $a0
	cpl                                              ; $5ee4: $2f
	ld b, e                                          ; $5ee5: $43
	ld l, e                                          ; $5ee6: $6b
	ld h, d                                          ; $5ee7: $62
	di                                               ; $5ee8: $f3
	rla                                              ; $5ee9: $17
	ei                                               ; $5eea: $fb
	and a                                            ; $5eeb: $a7
	ld a, $3f                                        ; $5eec: $3e $3f
	ld c, [hl]                                       ; $5eee: $4e
	ld b, d                                          ; $5eef: $42
	inc a                                            ; $5ef0: $3c
	inc de                                           ; $5ef1: $13
	db $ec                                           ; $5ef2: $ec
	dec b                                            ; $5ef3: $05
	ld e, l                                          ; $5ef4: $5d
	ld e, d                                          ; $5ef5: $5a
	xor h                                            ; $5ef6: $ac
	ld [hl], d                                       ; $5ef7: $72
	ld e, [hl]                                       ; $5ef8: $5e
	ld a, [hl-]                                      ; $5ef9: $3a
	jr c, jr_093_5f3d                                ; $5efa: $38 $41

	db $ed                                           ; $5efc: $ed
	ld b, e                                          ; $5efd: $43
	ld a, e                                          ; $5efe: $7b

jr_093_5eff:
	and b                                            ; $5eff: $a0
	xor $14                                          ; $5f00: $ee $14
	inc [hl]                                         ; $5f02: $34
	ld b, b                                          ; $5f03: $40
	add hl, sp                                       ; $5f04: $39
	xor c                                            ; $5f05: $a9
	ld l, a                                          ; $5f06: $6f
	ld c, e                                          ; $5f07: $4b
	ldh a, [rHDMA5]                                  ; $5f08: $f0 $55
	ldh a, [rBCPS]                                   ; $5f0a: $f0 $68
	ld d, c                                          ; $5f0c: $51
	ld c, [hl]                                       ; $5f0d: $4e
	inc a                                            ; $5f0e: $3c
	ld d, b                                          ; $5f0f: $50
	xor h                                            ; $5f10: $ac
	xor $08                                          ; $5f11: $ee $08
	ld c, d                                          ; $5f13: $4a
	db $ed                                           ; $5f14: $ed
	sbc $47                                          ; $5f15: $de $47
	ld [hl], d                                       ; $5f17: $72

jr_093_5f18:
	ld c, l                                          ; $5f18: $4d
	ld a, e                                          ; $5f19: $7b
	and c                                            ; $5f1a: $a1
	cpl                                              ; $5f1b: $2f
	ld b, e                                          ; $5f1c: $43
	ld e, [hl]                                       ; $5f1d: $5e
	dec sp                                           ; $5f1e: $3b
	xor c                                            ; $5f1f: $a9
	db $ec                                           ; $5f20: $ec
	db $d3                                           ; $5f21: $d3
	ld a, d                                          ; $5f22: $7a
	dec sp                                           ; $5f23: $3b
	ld h, c                                          ; $5f24: $61
	ld d, [hl]                                       ; $5f25: $56
	add hl, sp                                       ; $5f26: $39
	ld b, d                                          ; $5f27: $42
	and c                                            ; $5f28: $a1
	db $eb                                           ; $5f29: $eb
	ld e, b                                          ; $5f2a: $58
	ld h, d                                          ; $5f2b: $62
	ld [hl], d                                       ; $5f2c: $72
	ccf                                              ; $5f2d: $3f
	jr c, jr_093_5f7e                                ; $5f2e: $38 $4e

	ldh a, [$08]                                     ; $5f30: $f0 $08
	ld e, d                                          ; $5f32: $5a
	inc de                                           ; $5f33: $13
	ldh a, [$ea]                                     ; $5f34: $f0 $ea
	db $ec                                           ; $5f36: $ec
	ret c                                            ; $5f37: $d8

	ld b, d                                          ; $5f38: $42
	xor b                                            ; $5f39: $a8
	ld [$a021], a                                    ; $5f3a: $ea $21 $a0

jr_093_5f3d:
	cpl                                              ; $5f3d: $2f
	ld b, e                                          ; $5f3e: $43
	db $eb                                           ; $5f3f: $eb
	ld e, b                                          ; $5f40: $58
	dec sp                                           ; $5f41: $3b
	ccf                                              ; $5f42: $3f
	ld c, b                                          ; $5f43: $48
	xor h                                            ; $5f44: $ac
	ld h, h                                          ; $5f45: $64
	ld h, h                                          ; $5f46: $64
	ld h, h                                          ; $5f47: $64
	ld h, h                                          ; $5f48: $64
	ld h, h                                          ; $5f49: $64
	ld h, h                                          ; $5f4a: $64
	ld h, h                                          ; $5f4b: $64
	ld h, h                                          ; $5f4c: $64
	xor b                                            ; $5f4d: $a8
	db $eb                                           ; $5f4e: $eb
	add h                                            ; $5f4f: $84
	ld [hl], h                                       ; $5f50: $74
	and c                                            ; $5f51: $a1
	cpl                                              ; $5f52: $2f
	ld b, e                                          ; $5f53: $43
	db $ed                                           ; $5f54: $ed
	ld d, e                                          ; $5f55: $53
	xor h                                            ; $5f56: $ac
	jp hl                                            ; $5f57: $e9


	pop bc                                           ; $5f58: $c1
	xor b                                            ; $5f59: $a8
	db $eb                                           ; $5f5a: $eb
	ld e, b                                          ; $5f5b: $58
	ld l, [hl]                                       ; $5f5c: $6e
	dec sp                                           ; $5f5d: $3b
	ccf                                              ; $5f5e: $3f
	ld c, [hl]                                       ; $5f5f: $4e
	ld d, h                                          ; $5f60: $54
	ld c, c                                          ; $5f61: $49
	inc de                                           ; $5f62: $13
	ld [$41b1], a                                    ; $5f63: $ea $b1 $41
	ld b, h                                          ; $5f66: $44
	ld b, l                                          ; $5f67: $45
	and b                                            ; $5f68: $a0
	ldh a, [rSCY]                                    ; $5f69: $f0 $42
	ldh a, [rAUD1SWEEP]                              ; $5f6b: $f0 $10
	ld e, l                                          ; $5f6d: $5d
	ld a, [hl-]                                      ; $5f6e: $3a
	jr c, jr_093_5fbb                                ; $5f6f: $38 $4a

	ld b, l                                          ; $5f71: $45
	xor b                                            ; $5f72: $a8
	ld e, d                                          ; $5f73: $5a
	add hl, sp                                       ; $5f74: $39
	jr c, jr_093_5fb0                                ; $5f75: $38 $39

	add b                                            ; $5f77: $80
	ld c, a                                          ; $5f78: $4f
	ld d, a                                          ; $5f79: $57
	ld c, d                                          ; $5f7a: $4a
	xor h                                            ; $5f7b: $ac
	ld d, h                                          ; $5f7c: $54
	ld b, c                                          ; $5f7d: $41

jr_093_5f7e:
	ld a, [hl-]                                      ; $5f7e: $3a
	ldh a, [$2c]                                     ; $5f7f: $f0 $2c
	ld [hl], d                                       ; $5f81: $72
	ld b, a                                          ; $5f82: $47
	ld a, b                                          ; $5f83: $78
	dec a                                            ; $5f84: $3d
	ld b, d                                          ; $5f85: $42
	ld b, l                                          ; $5f86: $45
	and b                                            ; $5f87: $a0
	cpl                                              ; $5f88: $2f
	ld b, e                                          ; $5f89: $43
	ld e, [hl]                                       ; $5f8a: $5e
	dec sp                                           ; $5f8b: $3b
	xor c                                            ; $5f8c: $a9
	db $ed                                           ; $5f8d: $ed
	ld d, e                                          ; $5f8e: $53
	ld l, e                                          ; $5f8f: $6b
	pop af                                           ; $5f90: $f1
	ld [hl-], a                                      ; $5f91: $32
	dec sp                                           ; $5f92: $3b
	ccf                                              ; $5f93: $3f
	ld c, [hl]                                       ; $5f94: $4e
	ld b, d                                          ; $5f95: $42
	and c                                            ; $5f96: $a1
	db $eb                                           ; $5f97: $eb
	ld e, b                                          ; $5f98: $58
	ld [hl], d                                       ; $5f99: $72
	ld a, c                                          ; $5f9a: $79
	ld d, b                                          ; $5f9b: $50
	ld c, l                                          ; $5f9c: $4d
	ccf                                              ; $5f9d: $3f
	inc de                                           ; $5f9e: $13
	ldh a, [$d0]                                     ; $5f9f: $f0 $d0
	push af                                          ; $5fa1: $f5
	add hl, hl                                       ; $5fa2: $29
	db $f4                                           ; $5fa3: $f4
	ld a, e                                          ; $5fa4: $7b
	ld b, h                                          ; $5fa5: $44
	ld h, e                                          ; $5fa6: $63

jr_093_5fa7:
	dec [hl]                                         ; $5fa7: $35
	ld b, b                                          ; $5fa8: $40
	ld c, l                                          ; $5fa9: $4d
	ld e, e                                          ; $5faa: $5b
	ld d, [hl]                                       ; $5fab: $56
	ldh a, [rHDMA5]                                  ; $5fac: $f0 $55
	ldh a, [rBCPS]                                   ; $5fae: $f0 $68

jr_093_5fb0:
	and b                                            ; $5fb0: $a0
	cpl                                              ; $5fb1: $2f
	ld b, e                                          ; $5fb2: $43
	db $ec                                           ; $5fb3: $ec
	jr z, jr_093_5fa7                                ; $5fb4: $28 $f1

	or b                                             ; $5fb6: $b0
	ldh a, [$3f]                                     ; $5fb7: $f0 $3f
	ld h, d                                          ; $5fb9: $62
	inc de                                           ; $5fba: $13

jr_093_5fbb:
	ldh a, [$c1]                                     ; $5fbb: $f0 $c1
	ldh a, [$d5]                                     ; $5fbd: $f0 $d5
	ld a, $3f                                        ; $5fbf: $3e $3f
	ld c, [hl]                                       ; $5fc1: $4e
	ld l, h                                          ; $5fc2: $6c
	dec a                                            ; $5fc3: $3d
	jr c, jr_093_600a                                ; $5fc4: $38 $44

	ld c, h                                          ; $5fc6: $4c
	and b                                            ; $5fc7: $a0
	ld b, b                                          ; $5fc8: $40
	add hl, sp                                       ; $5fc9: $39
	xor b                                            ; $5fca: $a8
	ld l, a                                          ; $5fcb: $6f
	ld b, a                                          ; $5fcc: $47
	ld [hl], d                                       ; $5fcd: $72
	ldh a, [rTMA]                                    ; $5fce: $f0 $06
	add hl, sp                                       ; $5fd0: $39
	ldh a, [$3f]                                     ; $5fd1: $f0 $3f
	ld c, e                                          ; $5fd3: $4b
	ld b, [hl]                                       ; $5fd4: $46
	ld c, [hl]                                       ; $5fd5: $4e
	inc a                                            ; $5fd6: $3c
	ld a, $50                                        ; $5fd7: $3e $50
	and c                                            ; $5fd9: $a1
	cpl                                              ; $5fda: $2f
	ld b, e                                          ; $5fdb: $43
	db $ec                                           ; $5fdc: $ec
	ld c, $ed                                        ; $5fdd: $0e $ed
	ld bc, $456c                                     ; $5fdf: $01 $6c $45
	add hl, sp                                       ; $5fe2: $39
	ld b, l                                          ; $5fe3: $45
	and b                                            ; $5fe4: $a0
	db $ec                                           ; $5fe5: $ec
	sub $4c                                          ; $5fe6: $d6 $4c
	xor b                                            ; $5fe8: $a8
	ld l, a                                          ; $5fe9: $6f
	ld b, a                                          ; $5fea: $47
	ld [hl], d                                       ; $5feb: $72
	ldh a, [rTMA]                                    ; $5fec: $f0 $06
	add hl, sp                                       ; $5fee: $39
	ld d, d                                          ; $5fef: $52
	ld c, d                                          ; $5ff0: $4a
	ld b, a                                          ; $5ff1: $47
	xor $2d                                          ; $5ff2: $ee $2d
	inc a                                            ; $5ff4: $3c
	ld a, [hl-]                                      ; $5ff5: $3a
	jr c, jr_093_605b                                ; $5ff6: $38 $63

	and b                                            ; $5ff8: $a0
	cpl                                              ; $5ff9: $2f
	ld b, e                                          ; $5ffa: $43
	adc d                                            ; $5ffb: $8a
	ldh a, [$73]                                     ; $5ffc: $f0 $73
	adc a                                            ; $5ffe: $8f
	ld b, d                                          ; $5fff: $42
	ldh a, [$3f]                                     ; $6000: $f0 $3f
	ld b, h                                          ; $6002: $44
	inc a                                            ; $6003: $3c
	ld d, b                                          ; $6004: $50
	ld c, h                                          ; $6005: $4c
	xor b                                            ; $6006: $a8
	ld b, b                                          ; $6007: $40
	ld c, l                                          ; $6008: $4d
	ld b, a                                          ; $6009: $47

jr_093_600a:
	inc [hl]                                         ; $600a: $34
	db $ed                                           ; $600b: $ed
	ld d, e                                          ; $600c: $53
	ld b, d                                          ; $600d: $42
	adc d                                            ; $600e: $8a
	ld a, $58                                        ; $600f: $3e $58
	ld b, a                                          ; $6011: $47
	inc de                                           ; $6012: $13
	ld [hl], d                                       ; $6013: $72
	ldh a, [rTMA]                                    ; $6014: $f0 $06
	add hl, sp                                       ; $6016: $39
	ldh a, [$3f]                                     ; $6017: $f0 $3f
	ld c, e                                          ; $6019: $4b
	ld b, b                                          ; $601a: $40
	add hl, sp                                       ; $601b: $39
	ld c, e                                          ; $601c: $4b
	ldh a, [rAUD1LOW]                                ; $601d: $f0 $13
	jr c, jr_093_6066                                ; $601f: $38 $45

	and b                                            ; $6021: $a0
	xor $14                                          ; $6022: $ee $14
	inc [hl]                                         ; $6024: $34
	adc b                                            ; $6025: $88
	sub c                                            ; $6026: $91
	ld b, d                                          ; $6027: $42
	ld d, h                                          ; $6028: $54
	ld c, c                                          ; $6029: $49
	ld h, d                                          ; $602a: $62
	inc de                                           ; $602b: $13
	add d                                            ; $602c: $82
	add hl, sp                                       ; $602d: $39
	ld b, d                                          ; $602e: $42
	ld d, e                                          ; $602f: $53
	add hl, sp                                       ; $6030: $39
	ld d, d                                          ; $6031: $52
	ld d, l                                          ; $6032: $55
	ld a, [hl-]                                      ; $6033: $3a
	dec sp                                           ; $6034: $3b
	dec a                                            ; $6035: $3d
	db $ec                                           ; $6036: $ec
	ret c                                            ; $6037: $d8

	and b                                            ; $6038: $a0
	cpl                                              ; $6039: $2f
	ld b, e                                          ; $603a: $43
	ld b, b                                          ; $603b: $40
	ld b, c                                          ; $603c: $41
	ld a, [hl-]                                      ; $603d: $3a
	ld d, h                                          ; $603e: $54
	ld c, c                                          ; $603f: $49
	ld a, [hl-]                                      ; $6040: $3a
	jr c, jr_093_6088                                ; $6041: $38 $45

	dec [hl]                                         ; $6043: $35
	rla                                              ; $6044: $17
	ld [hl-], a                                      ; $6045: $32
	db $ed                                           ; $6046: $ed
	ld d, e                                          ; $6047: $53
	ld b, d                                          ; $6048: $42
	ld h, h                                          ; $6049: $64
	inc a                                            ; $604a: $3c
	ldh a, [rSB]                                     ; $604b: $f0 $01
	ld c, d                                          ; $604d: $4a
	xor h                                            ; $604e: $ac
	pop af                                           ; $604f: $f1
	cp e                                             ; $6050: $bb
	ld e, [hl]                                       ; $6051: $5e
	ld d, b                                          ; $6052: $50
	ld c, l                                          ; $6053: $4d
	dec a                                            ; $6054: $3d
	inc a                                            ; $6055: $3c
	ld d, b                                          ; $6056: $50

jr_093_6057:
	and e                                            ; $6057: $a3
	ld l, a                                          ; $6058: $6f
	ld b, a                                          ; $6059: $47
	ld [hl], d                                       ; $605a: $72

jr_093_605b:
	ldh a, [rTMA]                                    ; $605b: $f0 $06
	add hl, sp                                       ; $605d: $39
	ldh a, [$3f]                                     ; $605e: $f0 $3f
	ld d, e                                          ; $6060: $53
	inc de                                           ; $6061: $13
	ldh a, [rAUD1LOW]                                ; $6062: $f0 $13
	jr c, jr_093_6057                                ; $6064: $38 $f1

jr_093_6066:
	ld c, e                                          ; $6066: $4b
	ldh a, [$3e]                                     ; $6067: $f0 $3e
	inc [hl]                                         ; $6069: $34
	ld d, h                                          ; $606a: $54
	ld d, h                                          ; $606b: $54
	ld b, a                                          ; $606c: $47
	jr c, jr_093_60ae                                ; $606d: $38 $3f

	ld c, a                                          ; $606f: $4f
	inc de                                           ; $6070: $13
	ldh a, [rAUD1LOW]                                ; $6071: $f0 $13
	db $ed                                           ; $6073: $ed
	add a                                            ; $6074: $87
	ld c, h                                          ; $6075: $4c
	xor b                                            ; $6076: $a8
	ld c, a                                          ; $6077: $4f
	add hl, sp                                       ; $6078: $39
	inc [hl]                                         ; $6079: $34
	or b                                             ; $607a: $b0
	and b                                            ; $607b: $a0
	cpl                                              ; $607c: $2f
	ld b, e                                          ; $607d: $43
	ld b, b                                          ; $607e: $40
	add hl, sp                                       ; $607f: $39
	ld b, h                                          ; $6080: $44
	ld c, h                                          ; $6081: $4c
	xor b                                            ; $6082: $a8
	db $ec                                           ; $6083: $ec
	rrca                                             ; $6084: $0f
	and b                                            ; $6085: $a0
	ld l, a                                          ; $6086: $6f
	ld c, e                                          ; $6087: $4b

jr_093_6088:
	pop af                                           ; $6088: $f1
	adc l                                            ; $6089: $8d
	ld a, $3d                                        ; $608a: $3e $3d
	ld d, l                                          ; $608c: $55
	ld a, [hl-]                                      ; $608d: $3a
	jr c, jr_093_60f3                                ; $608e: $38 $63

	xor b                                            ; $6090: $a8
	ldh a, [c]                                       ; $6091: $f2
	rra                                              ; $6092: $1f
	ldh a, [$38]                                     ; $6093: $f0 $38
	db $ed                                           ; $6095: $ed
	ld bc, $3f78                                     ; $6096: $01 $78 $3f
	ld d, l                                          ; $6099: $55
	ld c, l                                          ; $609a: $4d
	ld c, [hl]                                       ; $609b: $4e
	and c                                            ; $609c: $a1
	cpl                                              ; $609d: $2f
	ld b, e                                          ; $609e: $43
	ld l, e                                          ; $609f: $6b
	ld c, d                                          ; $60a0: $4a
	inc [hl]                                         ; $60a1: $34
	halt                                             ; $60a2: $76
	ld d, e                                          ; $60a3: $53
	ld c, b                                          ; $60a4: $48
	and c                                            ; $60a5: $a1
	pop af                                           ; $60a6: $f1
	adc l                                            ; $60a7: $8d
	ld d, c                                          ; $60a8: $51
	ld b, d                                          ; $60a9: $42
	inc [hl]                                         ; $60aa: $34
	pop af                                           ; $60ab: $f1
	adc l                                            ; $60ac: $8d
	ld e, b                                          ; $60ad: $58

jr_093_60ae:
	ld a, [hl-]                                      ; $60ae: $3a
	jr c, jr_093_60f3                                ; $60af: $38 $42

	xor b                                            ; $60b1: $a8
	ld e, d                                          ; $60b2: $5a
	dec sp                                           ; $60b3: $3b
	ld h, c                                          ; $60b4: $61
	ld a, [hl-]                                      ; $60b5: $3a
	ld b, d                                          ; $60b6: $42
	and c                                            ; $60b7: $a1
	cpl                                              ; $60b8: $2f
	ld b, e                                          ; $60b9: $43
	ldh a, [rTAC]                                    ; $60ba: $f0 $07
	inc a                                            ; $60bc: $3c
	ld d, a                                          ; $60bd: $57
	ld d, d                                          ; $60be: $52
	ld a, $3d                                        ; $60bf: $3e $3d
	xor b                                            ; $60c1: $a8
	pop af                                           ; $60c2: $f1
	adc l                                            ; $60c3: $8d
	ld a, $52                                        ; $60c4: $3e $52
	ld d, c                                          ; $60c6: $51
	and b                                            ; $60c7: $a0
	ld [hl], d                                       ; $60c8: $72
	add b                                            ; $60c9: $80
	inc a                                            ; $60ca: $3c
	dec sp                                           ; $60cb: $3b
	dec a                                            ; $60cc: $3d
	inc a                                            ; $60cd: $3c
	ld a, $50                                        ; $60ce: $3e $50
	and c                                            ; $60d0: $a1
	cpl                                              ; $60d1: $2f
	ld b, e                                          ; $60d2: $43
	ld d, h                                          ; $60d3: $54
	ld d, h                                          ; $60d4: $54
	ld b, a                                          ; $60d5: $47
	db $eb                                           ; $60d6: $eb
	ld l, e                                          ; $60d7: $6b
	ld b, d                                          ; $60d8: $42
	ld c, e                                          ; $60d9: $4b
	inc de                                           ; $60da: $13
	ld e, d                                          ; $60db: $5a
	add hl, sp                                       ; $60dc: $39
	and c                                            ; $60dd: $a1
	db $ec                                           ; $60de: $ec
	sub $4c                                          ; $60df: $d6 $4c
	xor b                                            ; $60e1: $a8
	ld d, h                                          ; $60e2: $54
	ld c, l                                          ; $60e3: $4d
	ld c, d                                          ; $60e4: $4a
	ld c, e                                          ; $60e5: $4b
	inc [hl]                                         ; $60e6: $34
	ld l, a                                          ; $60e7: $6f
	ld b, a                                          ; $60e8: $47
	ld c, e                                          ; $60e9: $4b
	ld [hl], d                                       ; $60ea: $72
	ldh a, [rTMA]                                    ; $60eb: $f0 $06
	ld h, e                                          ; $60ed: $63
	ld a, [hl-]                                      ; $60ee: $3a
	jr c, jr_093_6154                                ; $60ef: $38 $63

	and b                                            ; $60f1: $a0
	cpl                                              ; $60f2: $2f

jr_093_60f3:
	ld b, e                                          ; $60f3: $43
	ld b, b                                          ; $60f4: $40
	ld b, c                                          ; $60f5: $41
	ld a, [hl-]                                      ; $60f6: $3a
	ld [hl], h                                       ; $60f7: $74
	xor h                                            ; $60f8: $ac
	db $eb                                           ; $60f9: $eb
	pop hl                                           ; $60fa: $e1
	ld a, $3d                                        ; $60fb: $3e $3d
	ld b, d                                          ; $60fd: $42
	ld b, a                                          ; $60fe: $47
	ld c, b                                          ; $60ff: $48
	and b                                            ; $6100: $a0
	xor $14                                          ; $6101: $ee $14
	inc [hl]                                         ; $6103: $34
	ld c, a                                          ; $6104: $4f
	add hl, sp                                       ; $6105: $39
	ld d, h                                          ; $6106: $54
	ld b, c                                          ; $6107: $41
	ld a, [hl-]                                      ; $6108: $3a
	ldh a, [rBGP]                                    ; $6109: $f0 $47
	ldh a, [$2a]                                     ; $610b: $f0 $2a
	xor b                                            ; $610d: $a8
	ldh a, [$d6]                                     ; $610e: $f0 $d6
	ld b, d                                          ; $6110: $42
	ldh a, [$cc]                                     ; $6111: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $6113: $f0 $88
	db $eb                                           ; $6115: $eb
	ld l, l                                          ; $6116: $6d
	xor h                                            ; $6117: $ac
	ldh a, [rHDMA5]                                  ; $6118: $f0 $55
	ldh a, [rBCPS]                                   ; $611a: $f0 $68
	ld d, c                                          ; $611c: $51
	ld c, [hl]                                       ; $611d: $4e
	ld h, e                                          ; $611e: $63
	and b                                            ; $611f: $a0
	cpl                                              ; $6120: $2f
	ld b, e                                          ; $6121: $43
	ld h, c                                          ; $6122: $61
	ld h, [hl]                                       ; $6123: $66
	inc [hl]                                         ; $6124: $34
	ret                                              ; $6125: $c9


	inc de                                           ; $6126: $13
	sbc c                                            ; $6127: $99
	dec sp                                           ; $6128: $3b
	ccf                                              ; $6129: $3f
	ld b, l                                          ; $612a: $45
	ld c, b                                          ; $612b: $48
	and b                                            ; $612c: $a0
	xor $14                                          ; $612d: $ee $14
	inc [hl]                                         ; $612f: $34
	ld l, a                                          ; $6130: $6f
	ld c, e                                          ; $6131: $4b
	inc de                                           ; $6132: $13
	pop af                                           ; $6133: $f1
	adc l                                            ; $6134: $8d
	ld e, b                                          ; $6135: $58
	ld a, [hl-]                                      ; $6136: $3a
	jr c, @+$65                                      ; $6137: $38 $63

	ld b, l                                          ; $6139: $45
	xor b                                            ; $613a: $a8
	ldh a, [c]                                       ; $613b: $f2
	rra                                              ; $613c: $1f
	ldh a, [$38]                                     ; $613d: $f0 $38
	ld d, e                                          ; $613f: $53
	db $ed                                           ; $6140: $ed
	ld bc, $3f78                                     ; $6141: $01 $78 $3f
	ld d, l                                          ; $6144: $55
	ld c, l                                          ; $6145: $4d
	ld c, [hl]                                       ; $6146: $4e
	and c                                            ; $6147: $a1
	jr c, jr_093_6182                                ; $6148: $38 $38

	ld b, d                                          ; $614a: $42
	ld b, l                                          ; $614b: $45
	xor b                                            ; $614c: $a8
	ldh a, [$34]                                     ; $614d: $f0 $34
	ld b, a                                          ; $614f: $47
	ld l, a                                          ; $6150: $6f
	ld c, e                                          ; $6151: $4b
	inc [hl]                                         ; $6152: $34
	ld d, h                                          ; $6153: $54

jr_093_6154:
	ld b, d                                          ; $6154: $42
	ld d, d                                          ; $6155: $52
	ld d, d                                          ; $6156: $52
	ld a, d                                          ; $6157: $7a
	dec sp                                           ; $6158: $3b
	ccf                                              ; $6159: $3f
	ld c, a                                          ; $615a: $4f
	ld c, b                                          ; $615b: $48
	and b                                            ; $615c: $a0
	ldh a, [c]                                       ; $615d: $f2
	rra                                              ; $615e: $1f
	ldh a, [$38]                                     ; $615f: $f0 $38
	ld c, b                                          ; $6161: $48
	xor h                                            ; $6162: $ac
	adc d                                            ; $6163: $8a
	ld h, d                                          ; $6164: $62
	ld [hl], d                                       ; $6165: $72
	ld c, [hl]                                       ; $6166: $4e
	ldh a, [rAUD3LEVEL]                              ; $6167: $f0 $1c
	ld d, e                                          ; $6169: $53
	db $ec                                           ; $616a: $ec
	dec bc                                           ; $616b: $0b
	and b                                            ; $616c: $a0
	cpl                                              ; $616d: $2f
	ld b, e                                          ; $616e: $43
	ld b, b                                          ; $616f: $40
	ld b, c                                          ; $6170: $41
	ld a, [hl-]                                      ; $6171: $3a
	ld [hl], h                                       ; $6172: $74
	inc [hl]                                         ; $6173: $34
	db $ec                                           ; $6174: $ec
	jp hl                                            ; $6175: $e9


	inc de                                           ; $6176: $13
	pop af                                           ; $6177: $f1
	adc l                                            ; $6178: $8d
	ld a, $3d                                        ; $6179: $3e $3d
	ld b, d                                          ; $617b: $42
	ld b, a                                          ; $617c: $47
	ld c, b                                          ; $617d: $48
	and b                                            ; $617e: $a0
	xor $14                                          ; $617f: $ee $14
	inc [hl]                                         ; $6181: $34

jr_093_6182:
	ld l, e                                          ; $6182: $6b
	inc a                                            ; $6183: $3c
	ldh a, [$bb]                                     ; $6184: $f0 $bb
	ld d, d                                          ; $6186: $52
	ld c, [hl]                                       ; $6187: $4e
	inc de                                           ; $6188: $13
	db $ec                                           ; $6189: $ec
	ld [de], a                                       ; $618a: $12
	and b                                            ; $618b: $a0
	cpl                                              ; $618c: $2f
	ld b, e                                          ; $618d: $43
	ld l, d                                          ; $618e: $6a
	inc a                                            ; $618f: $3c
	ld d, b                                          ; $6190: $50
	xor $2b                                          ; $6191: $ee $2b
	ld d, e                                          ; $6193: $53
	ldh a, [$bb]                                     ; $6194: $f0 $bb
	ld d, d                                          ; $6196: $52
	ld c, [hl]                                       ; $6197: $4e
	inc de                                           ; $6198: $13
	ld l, h                                          ; $6199: $6c
	dec a                                            ; $619a: $3d
	jr c, jr_093_61e1                                ; $619b: $38 $44

	ld c, h                                          ; $619d: $4c
	and b                                            ; $619e: $a0
	cpl                                              ; $619f: $2f
	ld b, e                                          ; $61a0: $43
	cp e                                             ; $61a1: $bb
	and c                                            ; $61a2: $a1
	ld l, e                                          ; $61a3: $6b
	ld b, d                                          ; $61a4: $42
	ldh a, [$ed]                                     ; $61a5: $f0 $ed
	inc a                                            ; $61a7: $3c
	ldh a, [rTAC]                                    ; $61a8: $f0 $07
	inc a                                            ; $61aa: $3c
	ld d, b                                          ; $61ab: $50
	ld a, [hl-]                                      ; $61ac: $3a
	jr c, jr_093_61c2                                ; $61ad: $38 $13

	inc a                                            ; $61af: $3c
	ld d, b                                          ; $61b0: $50
	inc [hl]                                         ; $61b1: $34
	pop af                                           ; $61b2: $f1
	ld h, [hl]                                       ; $61b3: $66
	jr c, jr_093_61f5                                ; $61b4: $38 $3f

	ld a, [hl-]                                      ; $61b6: $3a
	inc a                                            ; $61b7: $3c
	dec sp                                           ; $61b8: $3b
	dec a                                            ; $61b9: $3d
	ld h, e                                          ; $61ba: $63
	and b                                            ; $61bb: $a0
	cpl                                              ; $61bc: $2f
	ld b, e                                          ; $61bd: $43
	ld e, [hl]                                       ; $61be: $5e
	dec sp                                           ; $61bf: $3b
	inc [hl]                                         ; $61c0: $34
	db $ec                                           ; $61c1: $ec

jr_093_61c2:
	reti                                             ; $61c2: $d9


	xor b                                            ; $61c3: $a8
	ld l, d                                          ; $61c4: $6a
	ld b, d                                          ; $61c5: $42
	db $eb                                           ; $61c6: $eb
	ld l, a                                          ; $61c7: $6f
	ld a, [hl-]                                      ; $61c8: $3a
	ld b, c                                          ; $61c9: $41
	ld b, h                                          ; $61ca: $44
	dec [hl]                                         ; $61cb: $35
	inc hl                                           ; $61cc: $23
	inc de                                           ; $61cd: $13
	ld [hl], b                                       ; $61ce: $70
	ld [hl], c                                       ; $61cf: $71
	ld b, c                                          ; $61d0: $41
	ld c, h                                          ; $61d1: $4c
	xor h                                            ; $61d2: $ac
	ldh a, [$9a]                                     ; $61d3: $f0 $9a
	ld e, h                                          ; $61d5: $5c
	ldh a, [rTMA]                                    ; $61d6: $f0 $06
	ld h, e                                          ; $61d8: $63
	ld a, c                                          ; $61d9: $79
	dec a                                            ; $61da: $3d
	ld l, h                                          ; $61db: $6c
	dec a                                            ; $61dc: $3d
	jr c, jr_093_6229                                ; $61dd: $38 $4a

	ld c, b                                          ; $61df: $48
	and b                                            ; $61e0: $a0

jr_093_61e1:
	ld b, b                                          ; $61e1: $40
	add hl, sp                                       ; $61e2: $39
	inc [hl]                                         ; $61e3: $34
	call nc, $a863                                   ; $61e4: $d4 $63 $a8
	ld l, d                                          ; $61e7: $6a
	ldh a, [$d7]                                     ; $61e8: $f0 $d7
	inc [hl]                                         ; $61ea: $34
	ld a, a                                          ; $61eb: $7f
	ld h, d                                          ; $61ec: $62
	ldh a, [$9a]                                     ; $61ed: $f0 $9a
	ld e, l                                          ; $61ef: $5d
	ccf                                              ; $61f0: $3f
	ld d, l                                          ; $61f1: $55
	ld c, l                                          ; $61f2: $4d
	ld c, l                                          ; $61f3: $4d
	ld a, e                                          ; $61f4: $7b

jr_093_61f5:
	and b                                            ; $61f5: $a0
	cpl                                              ; $61f6: $2f
	ld b, e                                          ; $61f7: $43
	ld b, [hl]                                       ; $61f8: $46
	ld d, a                                          ; $61f9: $57
	ld d, e                                          ; $61fa: $53
	ld c, c                                          ; $61fb: $49
	add hl, sp                                       ; $61fc: $39
	xor h                                            ; $61fd: $ac
	db $ed                                           ; $61fe: $ed
	ld d, e                                          ; $61ff: $53
	ldh a, [$4e]                                     ; $6200: $f0 $4e
	ld a, $38                                        ; $6202: $3e $38
	ld c, h                                          ; $6204: $4c
	and b                                            ; $6205: $a0
	ld a, [hl-]                                      ; $6206: $3a
	inc [hl]                                         ; $6207: $34
	inc hl                                           ; $6208: $23
	ld l, e                                          ; $6209: $6b
	add d                                            ; $620a: $82
	dec sp                                           ; $620b: $3b
	ccf                                              ; $620c: $3f
	ld c, [hl]                                       ; $620d: $4e
	ld b, d                                          ; $620e: $42
	ld b, l                                          ; $620f: $45
	ld c, b                                          ; $6210: $48
	dec [hl]                                         ; $6211: $35
	ld [hl+], a                                      ; $6212: $22
	inc de                                           ; $6213: $13
	db $ec                                           ; $6214: $ec
	push bc                                          ; $6215: $c5
	or b                                             ; $6216: $b0
	and b                                            ; $6217: $a0
	ld l, e                                          ; $6218: $6b
	xor c                                            ; $6219: $a9
	ld l, d                                          ; $621a: $6a
	ld b, d                                          ; $621b: $42
	ldh a, [$ed]                                     ; $621c: $f0 $ed
	ld c, e                                          ; $621e: $4b
	and c                                            ; $621f: $a1
	cpl                                              ; $6220: $2f
	ld b, e                                          ; $6221: $43
	ld l, d                                          ; $6222: $6a
	ld b, d                                          ; $6223: $42
	ld c, e                                          ; $6224: $4b
	ld c, h                                          ; $6225: $4c
	xor h                                            ; $6226: $ac
	db $eb                                           ; $6227: $eb
	ld l, a                                          ; $6228: $6f

jr_093_6229:
	ld a, [hl-]                                      ; $6229: $3a
	ld b, c                                          ; $622a: $41
	ld b, h                                          ; $622b: $44
	and b                                            ; $622c: $a0
	ldh a, [$6d]                                     ; $622d: $f0 $6d
	ld e, c                                          ; $622f: $59
	ldh a, [$27]                                     ; $6230: $f0 $27
	ld b, d                                          ; $6232: $42
	ldh a, [$99]                                     ; $6233: $f0 $99
	sub b                                            ; $6235: $90
	ld c, d                                          ; $6236: $4a
	ld d, c                                          ; $6237: $51
	dec sp                                           ; $6238: $3b
	ccf                                              ; $6239: $3f
	xor c                                            ; $623a: $a9
	ld b, b                                          ; $623b: $40
	ld b, c                                          ; $623c: $41
	ld a, [hl-]                                      ; $623d: $3a
	ldh a, [$ed]                                     ; $623e: $f0 $ed
	pop af                                           ; $6240: $f1
	ld h, [hl]                                       ; $6241: $66
	inc a                                            ; $6242: $3c
	ld a, c                                          ; $6243: $79
	ccf                                              ; $6244: $3f
	inc de                                           ; $6245: $13
	ld l, a                                          ; $6246: $6f
	ld d, e                                          ; $6247: $53
	ldh a, [$66]                                     ; $6248: $f0 $66
	ldh a, [$fe]                                     ; $624a: $f0 $fe
	ld c, c                                          ; $624c: $49
	ld c, d                                          ; $624d: $4a
	ld c, a                                          ; $624e: $4f
	ld [hl], a                                       ; $624f: $77
	dec sp                                           ; $6250: $3b
	ccf                                              ; $6251: $3f
	ld c, [hl]                                       ; $6252: $4e
	ld b, d                                          ; $6253: $42
	and c                                            ; $6254: $a1
	cpl                                              ; $6255: $2f
	ld b, e                                          ; $6256: $43
	ld c, d                                          ; $6257: $4a
	ld c, a                                          ; $6258: $4f
	inc [hl]                                         ; $6259: $34
	jr c, jr_093_6294                                ; $625a: $38 $38

	ldh a, [$ed]                                     ; $625c: $f0 $ed
	ld c, d                                          ; $625e: $4a
	ld a, $66                                        ; $625f: $3e $66
	add hl, sp                                       ; $6261: $39
	ld c, b                                          ; $6262: $48
	and c                                            ; $6263: $a1
	ld h, h                                          ; $6264: $64
	db $f4                                           ; $6265: $f4
	ld h, h                                          ; $6266: $64
	ld d, a                                          ; $6267: $57
	xor b                                            ; $6268: $a8
	ld d, h                                          ; $6269: $54
	ld b, d                                          ; $626a: $42
	ld l, a                                          ; $626b: $6f
	ld h, d                                          ; $626c: $62
	ldh a, [$a7]                                     ; $626d: $f0 $a7
	ld c, l                                          ; $626f: $4d
	ld b, h                                          ; $6270: $44
	ld a, $3f                                        ; $6271: $3e $3f
	xor h                                            ; $6273: $ac
	db $eb                                           ; $6274: $eb
	sbc e                                            ; $6275: $9b
	ld c, d                                          ; $6276: $4a
	ld d, c                                          ; $6277: $51
	dec sp                                           ; $6278: $3b
	ccf                                              ; $6279: $3f
	xor c                                            ; $627a: $a9
	ld h, h                                          ; $627b: $64
	ldh a, [c]                                       ; $627c: $f2
	ld bc, $4438                                     ; $627d: $01 $38 $44
	ld h, e                                          ; $6280: $63
	and b                                            ; $6281: $a0
	ld l, a                                          ; $6282: $6f
	inc [hl]                                         ; $6283: $34
	ldh a, [$d6]                                     ; $6284: $f0 $d6
	ld b, d                                          ; $6286: $42
	ldh a, [$cc]                                     ; $6287: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $6289: $f0 $88
	ld d, e                                          ; $628b: $53
	inc de                                           ; $628c: $13
	ld b, [hl]                                       ; $628d: $46
	ld c, [hl]                                       ; $628e: $4e
	ld b, d                                          ; $628f: $42
	xor b                                            ; $6290: $a8
	ld [$5121], a                                    ; $6291: $ea $21 $51

jr_093_6294:
	ld c, [hl]                                       ; $6294: $4e
	ld h, e                                          ; $6295: $63
	xor b                                            ; $6296: $a8
	ldh a, [$08]                                     ; $6297: $f0 $08
	ld e, c                                          ; $6299: $59
	ldh a, [$08]                                     ; $629a: $f0 $08
	ldh a, [$08]                                     ; $629c: $f0 $08
	ldh a, [$08]                                     ; $629e: $f0 $08
	ldh a, [$08]                                     ; $62a0: $f0 $08
	ldh a, [$08]                                     ; $62a2: $f0 $08
	and b                                            ; $62a4: $a0
	ldh a, [$6d]                                     ; $62a5: $f0 $6d
	ld e, c                                          ; $62a7: $59
	ldh a, [$27]                                     ; $62a8: $f0 $27
	ld b, d                                          ; $62aa: $42
	ldh a, [$99]                                     ; $62ab: $f0 $99
	sub b                                            ; $62ad: $90
	ld c, d                                          ; $62ae: $4a
	ld d, c                                          ; $62af: $51
	dec sp                                           ; $62b0: $3b
	ccf                                              ; $62b1: $3f
	xor c                                            ; $62b2: $a9
	ld b, b                                          ; $62b3: $40
	ld b, c                                          ; $62b4: $41
	ld a, [hl-]                                      ; $62b5: $3a
	ldh a, [$ed]                                     ; $62b6: $f0 $ed
	pop af                                           ; $62b8: $f1
	ld h, [hl]                                       ; $62b9: $66
	inc a                                            ; $62ba: $3c
	ld a, c                                          ; $62bb: $79
	ccf                                              ; $62bc: $3f
	xor h                                            ; $62bd: $ac
	ld l, a                                          ; $62be: $6f
	ld d, e                                          ; $62bf: $53
	ldh a, [$66]                                     ; $62c0: $f0 $66
	ldh a, [$fe]                                     ; $62c2: $f0 $fe
	ld c, c                                          ; $62c4: $49
	ld c, d                                          ; $62c5: $4a
	ld c, a                                          ; $62c6: $4f
	ld [hl], a                                       ; $62c7: $77
	dec sp                                           ; $62c8: $3b
	ccf                                              ; $62c9: $3f
	ld c, [hl]                                       ; $62ca: $4e
	ld b, d                                          ; $62cb: $42
	and c                                            ; $62cc: $a1
	ld h, h                                          ; $62cd: $64
	db $f4                                           ; $62ce: $f4
	ld h, h                                          ; $62cf: $64
	ld d, a                                          ; $62d0: $57
	xor b                                            ; $62d1: $a8
	ld l, a                                          ; $62d2: $6f
	ld b, d                                          ; $62d3: $42
	ld b, l                                          ; $62d4: $45
	add hl, sp                                       ; $62d5: $39
	ld b, a                                          ; $62d6: $47
	ld a, a                                          ; $62d7: $7f
	ldh a, [c]                                       ; $62d8: $f2
	ld a, [bc]                                       ; $62d9: $0a
	push af                                          ; $62da: $f5
	sub d                                            ; $62db: $92
	ld c, l                                          ; $62dc: $4d
	ld c, [hl]                                       ; $62dd: $4e
	pop af                                           ; $62de: $f1
	ld b, d                                          ; $62df: $42
	ld b, a                                          ; $62e0: $47
	xor h                                            ; $62e1: $ac
	ld b, b                                          ; $62e2: $40
	ld b, c                                          ; $62e3: $41
	ld a, [hl-]                                      ; $62e4: $3a
	ldh a, [$ed]                                     ; $62e5: $f0 $ed
	ld d, e                                          ; $62e7: $53
	ldh a, [rPCM12]                                  ; $62e8: $f0 $76
	ldh a, [rTMA]                                    ; $62ea: $f0 $06
	dec sp                                           ; $62ec: $3b
	ccf                                              ; $62ed: $3f
	and c                                            ; $62ee: $a1
	ld b, b                                          ; $62ef: $40
	ld d, a                                          ; $62f0: $57
	ld d, [hl]                                       ; $62f1: $56
	xor h                                            ; $62f2: $ac
	ldh a, [rPCM12]                                  ; $62f3: $f0 $76
	ldh a, [rTMA]                                    ; $62f5: $f0 $06
	add hl, sp                                       ; $62f7: $39
	pop af                                           ; $62f8: $f1
	dec bc                                           ; $62f9: $0b
	ld a, [hl-]                                      ; $62fa: $3a
	jr c, jr_093_6360                                ; $62fb: $38 $63

	ld b, l                                          ; $62fd: $45
	ld c, h                                          ; $62fe: $4c
	xor b                                            ; $62ff: $a8
	ldh a, [$08]                                     ; $6300: $f0 $08
	ld e, c                                          ; $6302: $59
	ldh a, [$08]                                     ; $6303: $f0 $08
	ldh a, [$08]                                     ; $6305: $f0 $08
	ldh a, [$08]                                     ; $6307: $f0 $08
	ldh a, [$08]                                     ; $6309: $f0 $08
	ldh a, [$08]                                     ; $630b: $f0 $08
	ldh a, [$08]                                     ; $630d: $f0 $08
	and b                                            ; $630f: $a0
	call c, Call_093_6f34                            ; $6310: $dc $34 $6f
	ld b, d                                          ; $6313: $42

jr_093_6314:
	ld a, a                                          ; $6314: $7f
	ldh a, [c]                                       ; $6315: $f2
	ld a, [bc]                                       ; $6316: $0a
	ld b, a                                          ; $6317: $47
	inc de                                           ; $6318: $13
	ldh a, [c]                                       ; $6319: $f2
	sbc $3b                                          ; $631a: $de $3b
	dec a                                            ; $631c: $3d
	ld d, a                                          ; $631d: $57
	ld c, d                                          ; $631e: $4a
	inc [hl]                                         ; $631f: $34
	db $ec                                           ; $6320: $ec
	cp c                                             ; $6321: $b9
	ld b, c                                          ; $6322: $41
	inc de                                           ; $6323: $13
	db $ec                                           ; $6324: $ec
	ret c                                            ; $6325: $d8

	inc a                                            ; $6326: $3c
	ld a, $50                                        ; $6327: $3e $50
	and b                                            ; $6329: $a0
	cpl                                              ; $632a: $2f
	ld b, e                                          ; $632b: $43
	db $ec                                           ; $632c: $ec
	cp c                                             ; $632d: $b9
	xor b                                            ; $632e: $a8
	ld a, a                                          ; $632f: $7f
	ld b, a                                          ; $6330: $47
	sub [hl]                                         ; $6331: $96
	dec sp                                           ; $6332: $3b
	ccf                                              ; $6333: $3f
	ld c, a                                          ; $6334: $4f
	ld d, b                                          ; $6335: $50
	ld e, [hl]                                       ; $6336: $5e
	ccf                                              ; $6337: $3f
	and b                                            ; $6338: $a0
	adc d                                            ; $6339: $8a
	ld a, $38                                        ; $633a: $3e $38
	ld c, a                                          ; $633c: $4f
	ld b, d                                          ; $633d: $42
	ld c, e                                          ; $633e: $4b
	xor h                                            ; $633f: $ac
	adc d                                            ; $6340: $8a
	ld a, $38                                        ; $6341: $3e $38
	ldh a, [$ed]                                     ; $6343: $f0 $ed
	ld h, d                                          ; $6345: $62
	adc e                                            ; $6346: $8b
	ldh a, [$be]                                     ; $6347: $f0 $be
	ld b, d                                          ; $6349: $42
	ld b, l                                          ; $634a: $45
	and b                                            ; $634b: $a0
	cpl                                              ; $634c: $2f
	ld b, e                                          ; $634d: $43
	ld b, b                                          ; $634e: $40
	inc [hl]                                         ; $634f: $34
	or h                                             ; $6350: $b4
	inc de                                           ; $6351: $13
	db $ec                                           ; $6352: $ec
	push bc                                          ; $6353: $c5
	db $ec                                           ; $6354: $ec
	rrca                                             ; $6355: $0f
	and c                                            ; $6356: $a1
	ld b, [hl]                                       ; $6357: $46
	ld a, [hl-]                                      ; $6358: $3a
	dec a                                            ; $6359: $3d
	ld b, a                                          ; $635a: $47
	ld a, $3f                                        ; $635b: $3e $3f
	ld c, e                                          ; $635d: $4b
	xor h                                            ; $635e: $ac
	pop de                                           ; $635f: $d1

jr_093_6360:
	ld b, d                                          ; $6360: $42
	ldh a, [$28]                                     ; $6361: $f0 $28
	ld b, a                                          ; $6363: $47
	ldh a, [$a7]                                     ; $6364: $f0 $a7
	ld c, l                                          ; $6366: $4d
	ccf                                              ; $6367: $3f
	inc de                                           ; $6368: $13
	ld a, b                                          ; $6369: $78
	ccf                                              ; $636a: $3f
	ld d, l                                          ; $636b: $55
	ld c, l                                          ; $636c: $4d
	dec a                                            ; $636d: $3d
	db $ec                                           ; $636e: $ec
	ret c                                            ; $636f: $d8

	and b                                            ; $6370: $a0
	ld d, h                                          ; $6371: $54
	ld b, d                                          ; $6372: $42
	ld l, a                                          ; $6373: $6f
	ld h, d                                          ; $6374: $62
	ldh a, [$3b]                                     ; $6375: $f0 $3b
	add hl, sp                                       ; $6377: $39
	ld b, d                                          ; $6378: $42
	ld b, h                                          ; $6379: $44
	inc a                                            ; $637a: $3c
	ld d, b                                          ; $637b: $50
	xor h                                            ; $637c: $ac
	ld d, h                                          ; $637d: $54
	ld b, d                                          ; $637e: $42
	sbc l                                            ; $637f: $9d
	ld d, b                                          ; $6380: $50
	jr c, jr_093_6314                                ; $6381: $38 $91

	ldh a, [$59]                                     ; $6383: $f0 $59
	ld b, l                                          ; $6385: $45
	ld c, h                                          ; $6386: $4c
	xor b                                            ; $6387: $a8
	ldh a, [$08]                                     ; $6388: $f0 $08
	ld e, c                                          ; $638a: $59
	ldh a, [$08]                                     ; $638b: $f0 $08
	ldh a, [$08]                                     ; $638d: $f0 $08
	ldh a, [$08]                                     ; $638f: $f0 $08
	ldh a, [$08]                                     ; $6391: $f0 $08
	ldh a, [$08]                                     ; $6393: $f0 $08
	and b                                            ; $6395: $a0
	cpl                                              ; $6396: $2f
	ld b, e                                          ; $6397: $43
	rst JumpTable                                          ; $6398: $c7
	ld b, h                                          ; $6399: $44
	ld c, h                                          ; $639a: $4c
	ld c, b                                          ; $639b: $48
	and b                                            ; $639c: $a0
	ld d, d                                          ; $639d: $52
	inc [hl]                                         ; $639e: $34
	ld b, b                                          ; $639f: $40
	ld c, l                                          ; $63a0: $4d
	ld a, [hl-]                                      ; $63a1: $3a
	ld d, a                                          ; $63a2: $57
	ld b, a                                          ; $63a3: $47
	inc de                                           ; $63a4: $13
	db $ec                                           ; $63a5: $ec
	cp c                                             ; $63a6: $b9
	ld b, c                                          ; $63a7: $41
	ld e, e                                          ; $63a8: $5b
	ld d, [hl]                                       ; $63a9: $56
	ld a, [hl-]                                      ; $63aa: $3a
	ld d, l                                          ; $63ab: $55
	ccf                                              ; $63ac: $3f
	and b                                            ; $63ad: $a0
	ld d, h                                          ; $63ae: $54
	ld b, d                                          ; $63af: $42
	sbc l                                            ; $63b0: $9d
	ld d, b                                          ; $63b1: $50
	jr c, jr_093_63fe                                ; $63b2: $38 $4a

	xor h                                            ; $63b4: $ac
	ldh a, [$66]                                     ; $63b5: $f0 $66
	ld b, c                                          ; $63b7: $41
	ld c, d                                          ; $63b8: $4a
	ld c, a                                          ; $63b9: $4f
	ld d, b                                          ; $63ba: $50
	dec sp                                           ; $63bb: $3b
	ld h, c                                          ; $63bc: $61
	ld d, [hl]                                       ; $63bd: $56
	pop af                                           ; $63be: $f1
	sbc $4e                                          ; $63bf: $de $4e
	ld h, e                                          ; $63c1: $63
	ld c, h                                          ; $63c2: $4c
	xor b                                            ; $63c3: $a8
	sub c                                            ; $63c4: $91
	ldh a, [$59]                                     ; $63c5: $f0 $59
	ld b, d                                          ; $63c7: $42
	ld d, h                                          ; $63c8: $54
	ld c, c                                          ; $63c9: $49
	ld a, [hl-]                                      ; $63ca: $3a
	ld b, c                                          ; $63cb: $41
	ld b, h                                          ; $63cc: $44
	inc a                                            ; $63cd: $3c
	ld d, b                                          ; $63ce: $50
	and b                                            ; $63cf: $a0
	ld b, b                                          ; $63d0: $40
	ld c, l                                          ; $63d1: $4d
	ld e, e                                          ; $63d2: $5b
	ld d, [hl]                                       ; $63d3: $56
	inc [hl]                                         ; $63d4: $34
	ldh a, [$d6]                                     ; $63d5: $f0 $d6
	ld b, d                                          ; $63d7: $42
	ldh a, [$cc]                                     ; $63d8: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $63da: $f0 $88
	ld d, e                                          ; $63dc: $53
	inc de                                           ; $63dd: $13
	ld b, [hl]                                       ; $63de: $46
	ld c, [hl]                                       ; $63df: $4e
	inc a                                            ; $63e0: $3c
	ld d, b                                          ; $63e1: $50
	inc [hl]                                         ; $63e2: $34
	ldh a, [rHDMA5]                                  ; $63e3: $f0 $55
	ldh a, [rBCPS]                                   ; $63e5: $f0 $68
	ld d, c                                          ; $63e7: $51
	ld c, [hl]                                       ; $63e8: $4e
	ld h, e                                          ; $63e9: $63
	xor b                                            ; $63ea: $a8
	ldh a, [$08]                                     ; $63eb: $f0 $08
	ld e, c                                          ; $63ed: $59
	ldh a, [$08]                                     ; $63ee: $f0 $08
	ldh a, [$08]                                     ; $63f0: $f0 $08
	ldh a, [$08]                                     ; $63f2: $f0 $08
	ldh a, [$08]                                     ; $63f4: $f0 $08
	ldh a, [$08]                                     ; $63f6: $f0 $08
	and b                                            ; $63f8: $a0
	ld l, d                                          ; $63f9: $6a
	ld b, d                                          ; $63fa: $42
	ldh a, [$ed]                                     ; $63fb: $f0 $ed
	xor l                                            ; $63fd: $ad

jr_093_63fe:
	add b                                            ; $63fe: $80
	ld d, d                                          ; $63ff: $52
	ld d, b                                          ; $6400: $50
	ld a, [hl-]                                      ; $6401: $3a
	inc a                                            ; $6402: $3c
	dec sp                                           ; $6403: $3b
	ldh [$a0], a                                     ; $6404: $e0 $a0
	cpl                                              ; $6406: $2f
	ld b, e                                          ; $6407: $43
	rst JumpTable                                          ; $6408: $c7
	xor c                                            ; $6409: $a9
	ldh a, [$80]                                     ; $640a: $f0 $80
	ldh a, [$c5]                                     ; $640c: $f0 $c5
	inc [hl]                                         ; $640e: $34
	cp e                                             ; $640f: $bb
	ld c, c                                          ; $6410: $49
	inc de                                           ; $6411: $13
	ld [hl], a                                       ; $6412: $77
	xor $1f                                          ; $6413: $ee $1f
	ld b, h                                          ; $6415: $44
	ld e, l                                          ; $6416: $5d
	ld e, d                                          ; $6417: $5a
	ld c, b                                          ; $6418: $48
	and b                                            ; $6419: $a0
	ld l, a                                          ; $641a: $6f
	ld c, e                                          ; $641b: $4b
	add b                                            ; $641c: $80
	ld d, d                                          ; $641d: $52
	ld d, b                                          ; $641e: $50
	ld a, [hl-]                                      ; $641f: $3a
	inc a                                            ; $6420: $3c
	dec sp                                           ; $6421: $3b
	dec a                                            ; $6422: $3d
	ld h, e                                          ; $6423: $63
	and b                                            ; $6424: $a0
	cpl                                              ; $6425: $2f
	ld b, e                                          ; $6426: $43
	ld [hl], b                                       ; $6427: $70
	ld [hl], c                                       ; $6428: $71
	ld b, c                                          ; $6429: $41
	ld c, h                                          ; $642a: $4c
	xor b                                            ; $642b: $a8
	ldh a, [$9a]                                     ; $642c: $f0 $9a
	ld e, h                                          ; $642e: $5c
	ldh a, [rTMA]                                    ; $642f: $f0 $06
	ld h, e                                          ; $6431: $63
	ld a, c                                          ; $6432: $79
	dec a                                            ; $6433: $3d
	ld l, h                                          ; $6434: $6c
	dec a                                            ; $6435: $3d
	jr c, @+$4c                                      ; $6436: $38 $4a

	ld c, b                                          ; $6438: $48
	and b                                            ; $6439: $a0
	call c, Call_093_6aa8                            ; $643a: $dc $a8 $6a
	ldh a, [$d7]                                     ; $643d: $f0 $d7
	inc [hl]                                         ; $643f: $34
	ld a, a                                          ; $6440: $7f
	ld h, d                                          ; $6441: $62
	ldh a, [$9a]                                     ; $6442: $f0 $9a
	ld e, l                                          ; $6444: $5d
	ccf                                              ; $6445: $3f
	ldh a, [c]                                       ; $6446: $f2
	rst JumpTable                                          ; $6447: $c7
	di                                               ; $6448: $f3
	halt                                             ; $6449: $76
	and b                                            ; $644a: $a0
	cpl                                              ; $644b: $2f
	ld b, e                                          ; $644c: $43
	or h                                             ; $644d: $b4
	xor h                                            ; $644e: $ac
	db $ec                                           ; $644f: $ec
	push bc                                          ; $6450: $c5
	db $ec                                           ; $6451: $ec
	rrca                                             ; $6452: $0f
	and c                                            ; $6453: $a1
	ld h, e                                          ; $6454: $63
	ldh a, [rAUD1SWEEP]                              ; $6455: $f0 $10
	ld h, e                                          ; $6457: $63
	ldh a, [rAUD1SWEEP]                              ; $6458: $f0 $10
	ld l, a                                          ; $645a: $6f
	ld h, d                                          ; $645b: $62
	inc de                                           ; $645c: $13
	ldh a, [$3b]                                     ; $645d: $f0 $3b

jr_093_645f:
	dec sp                                           ; $645f: $3b
	dec a                                            ; $6460: $3d
	ld b, d                                          ; $6461: $42
	ld c, e                                          ; $6462: $4b
	xor h                                            ; $6463: $ac
	ld d, h                                          ; $6464: $54
	ld c, l                                          ; $6465: $4d
	ld h, d                                          ; $6466: $62
	ld [hl], d                                       ; $6467: $72
	ld a, c                                          ; $6468: $79
	ld c, [hl]                                       ; $6469: $4e
	dec a                                            ; $646a: $3d
	ld [hl], c                                       ; $646b: $71
	ld b, h                                          ; $646c: $44
	dec sp                                           ; $646d: $3b
	dec a                                            ; $646e: $3d
	ld b, d                                          ; $646f: $42
	and c                                            ; $6470: $a1
	cpl                                              ; $6471: $2f
	ld b, e                                          ; $6472: $43
	ld h, h                                          ; $6473: $64
	inc [hl]                                         ; $6474: $34
	ldh a, [rAUD4ENV]                                ; $6475: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6477: $f0 $23
	ld d, l                                          ; $6479: $55
	ld a, [hl-]                                      ; $647a: $3a
	inc a                                            ; $647b: $3c
	dec sp                                           ; $647c: $3b
	dec a                                            ; $647d: $3d
	and c                                            ; $647e: $a1
	ldh a, [rAUD4ENV]                                ; $647f: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6481: $f0 $23
	jr c, jr_093_64e8                                ; $6483: $38 $63

	ld e, l                                          ; $6485: $5d
	ld a, [hl-]                                      ; $6486: $3a
	jr c, jr_093_649c                                ; $6487: $38 $13

jr_093_6489:
	ld c, d                                          ; $6489: $4a
	ld a, $66                                        ; $648a: $3e $66
	add hl, sp                                       ; $648c: $39
	xor b                                            ; $648d: $a8
	ld l, a                                          ; $648e: $6f
	ld b, a                                          ; $648f: $47
	ld c, e                                          ; $6490: $4b
	ldh a, [rPCM12]                                  ; $6491: $f0 $76
	ldh a, [rTMA]                                    ; $6493: $f0 $06
	ld h, e                                          ; $6495: $63
	ld a, [hl-]                                      ; $6496: $3a
	jr c, jr_093_6489                                ; $6497: $38 $f0

	db $ed                                           ; $6499: $ed
	ld b, h                                          ; $649a: $44
	ld h, e                                          ; $649b: $63

jr_093_649c:
	and b                                            ; $649c: $a0
	cpl                                              ; $649d: $2f
	ld b, e                                          ; $649e: $43
	rst JumpTable                                          ; $649f: $c7
	ld b, h                                          ; $64a0: $44
	ld c, h                                          ; $64a1: $4c
	and b                                            ; $64a2: $a0
	ldh a, [$2d]                                     ; $64a3: $f0 $2d
	dec sp                                           ; $64a5: $3b
	ccf                                              ; $64a6: $3f
	ld c, [hl]                                       ; $64a7: $4e
	ld a, [hl-]                                      ; $64a8: $3a
	ld d, b                                          ; $64a9: $50
	xor h                                            ; $64aa: $ac
	ld c, a                                          ; $64ab: $4f
	dec sp                                           ; $64ac: $3b
	ld c, c                                          ; $64ad: $49
	ld d, d                                          ; $64ae: $52
	ld a, $3a                                        ; $64af: $3e $3a
	ldh a, [$28]                                     ; $64b1: $f0 $28
	ld b, a                                          ; $64b3: $47
	inc de                                           ; $64b4: $13
	ldh a, [$a7]                                     ; $64b5: $f0 $a7
	ld c, l                                          ; $64b7: $4d
	ccf                                              ; $64b8: $3f
	ld h, a                                          ; $64b9: $67
	ld e, h                                          ; $64ba: $5c
	ld a, [hl-]                                      ; $64bb: $3a
	ld e, b                                          ; $64bc: $58
	jr c, jr_093_645f                                ; $64bd: $38 $a0

	ld l, d                                          ; $64bf: $6a
	ld b, d                                          ; $64c0: $42
	ldh a, [$ed]                                     ; $64c1: $f0 $ed
	ld c, e                                          ; $64c3: $4b
	inc [hl]                                         ; $64c4: $34
	ld l, e                                          ; $64c5: $6b
	ld b, h                                          ; $64c6: $44
	dec sp                                           ; $64c7: $3b
	dec a                                            ; $64c8: $3d
	ld b, d                                          ; $64c9: $42
	inc a                                            ; $64ca: $3c
	inc de                                           ; $64cb: $13
	pop af                                           ; $64cc: $f1
	dec c                                            ; $64cd: $0d
	ldh a, [$79]                                     ; $64ce: $f0 $79
	ld a, $3f                                        ; $64d0: $3e $3f
	ld d, l                                          ; $64d2: $55
	ld b, h                                          ; $64d3: $44
	ld e, b                                          ; $64d4: $58
	ld c, [hl]                                       ; $64d5: $4e
	and c                                            ; $64d6: $a1
	cpl                                              ; $64d7: $2f
	ld b, e                                          ; $64d8: $43
	ld l, d                                          ; $64d9: $6a
	ld b, d                                          ; $64da: $42
	ld c, e                                          ; $64db: $4b
	inc [hl]                                         ; $64dc: $34
	db $eb                                           ; $64dd: $eb
	bit 0, h                                         ; $64de: $cb $44
	ld b, l                                          ; $64e0: $45
	and b                                            ; $64e1: $a0
	ld b, b                                          ; $64e2: $40
	ld b, c                                          ; $64e3: $41
	ld a, [hl-]                                      ; $64e4: $3a
	sbc d                                            ; $64e5: $9a
	ld c, e                                          ; $64e6: $4b
	inc de                                           ; $64e7: $13

jr_093_64e8:
	ldh a, [$2d]                                     ; $64e8: $f0 $2d
	dec sp                                           ; $64ea: $3b
	ccf                                              ; $64eb: $3f
	ld c, [hl]                                       ; $64ec: $4e
	ld h, e                                          ; $64ed: $63
	ld b, l                                          ; $64ee: $45
	xor b                                            ; $64ef: $a8
	ld l, d                                          ; $64f0: $6a
	ld b, d                                          ; $64f1: $42
	ldh a, [$ed]                                     ; $64f2: $f0 $ed
	ld b, d                                          ; $64f4: $42
	ld l, e                                          ; $64f5: $6b
	db $f4                                           ; $64f6: $f4
	dec h                                            ; $64f7: $25
	ld h, d                                          ; $64f8: $62
	pop af                                           ; $64f9: $f1
	ld h, [hl]                                       ; $64fa: $66
	ld e, l                                          ; $64fb: $5d
	ld a, e                                          ; $64fc: $7b
	inc de                                           ; $64fd: $13
	ld l, a                                          ; $64fe: $6f
	ld d, e                                          ; $64ff: $53
	ldh a, [$66]                                     ; $6500: $f0 $66
	ldh a, [$fe]                                     ; $6502: $f0 $fe
	ld b, d                                          ; $6504: $42
	inc a                                            ; $6505: $3c
	ld a, $50                                        ; $6506: $3e $50
	and c                                            ; $6508: $a1
	cpl                                              ; $6509: $2f
	ld b, e                                          ; $650a: $43
	ld b, b                                          ; $650b: $40
	inc [hl]                                         ; $650c: $34
	ld b, b                                          ; $650d: $40
	ld c, l                                          ; $650e: $4d
	ld c, e                                          ; $650f: $4b

jr_093_6510:
	ld c, b                                          ; $6510: $48
	and b                                            ; $6511: $a0
	ld l, a                                          ; $6512: $6f
	inc [hl]                                         ; $6513: $34
	ld d, h                                          ; $6514: $54
	add hl, sp                                       ; $6515: $39
	jr c, @+$3b                                      ; $6516: $38 $39

	inc de                                           ; $6518: $13
	ldh a, [c]                                       ; $6519: $f2
	ld a, [bc]                                       ; $651a: $0a
	ld b, d                                          ; $651b: $42
	ldh a, [rAUD1LOW]                                ; $651c: $f0 $13
	jr c, jr_093_6510                                ; $651e: $38 $f0

	db $ed                                           ; $6520: $ed
	inc [hl]                                         ; $6521: $34
	ldh a, [$64]                                     ; $6522: $f0 $64
	jr c, jr_093_6560                                ; $6524: $38 $3a

	ld b, d                                          ; $6526: $42
	xor b                                            ; $6527: $a8
	ld [$5121], a                                    ; $6528: $ea $21 $51
	ld c, [hl]                                       ; $652b: $4e
	ld h, e                                          ; $652c: $63
	and b                                            ; $652d: $a0
	cpl                                              ; $652e: $2f
	ld b, e                                          ; $652f: $43
	ld b, [hl]                                       ; $6530: $46
	dec sp                                           ; $6531: $3b
	inc [hl]                                         ; $6532: $34
	db $ed                                           ; $6533: $ed
	ld d, e                                          ; $6534: $53
	xor b                                            ; $6535: $a8
	jp hl                                            ; $6536: $e9


	pop bc                                           ; $6537: $c1
	and b                                            ; $6538: $a0
	cpl                                              ; $6539: $2f
	ld b, e                                          ; $653a: $43
	ld l, e                                          ; $653b: $6b
	ldh a, [$cf]                                     ; $653c: $f0 $cf
	xor e                                            ; $653e: $ab
	ld b, e                                          ; $653f: $43
	ldh a, [$6d]                                     ; $6540: $f0 $6d
	ld e, c                                          ; $6542: $59
	ldh a, [$27]                                     ; $6543: $f0 $27
	ld h, d                                          ; $6545: $62
	ldh a, [rOCPS]                                   ; $6546: $f0 $6a
	ld e, e                                          ; $6548: $5b
	ccf                                              ; $6549: $3f
	xor h                                            ; $654a: $ac
	ld b, [hl]                                       ; $654b: $46
	ld a, [hl-]                                      ; $654c: $3a
	dec a                                            ; $654d: $3d
	ld b, d                                          ; $654e: $42
	ld [$6218], a                                    ; $654f: $ea $18 $62
	xor h                                            ; $6552: $ac
	pop af                                           ; $6553: $f1
	rst JumpTable                                          ; $6554: $c7
	ldh a, [hDisp0_WY]                                     ; $6555: $f0 $88
	ld a, $52                                        ; $6557: $3e $52
	ld d, c                                          ; $6559: $51
	ldh a, [$eb]                                     ; $655a: $f0 $eb
	db $ed                                           ; $655c: $ed
	ld b, e                                          ; $655d: $43
	and b                                            ; $655e: $a0
	db $eb                                           ; $655f: $eb

jr_093_6560:
	inc [hl]                                         ; $6560: $34
	ld h, e                                          ; $6561: $63
	ld c, h                                          ; $6562: $4c
	xor b                                            ; $6563: $a8
	ld b, [hl]                                       ; $6564: $46
	ld a, [hl-]                                      ; $6565: $3a
	dec a                                            ; $6566: $3d
	inc [hl]                                         ; $6567: $34
	ld l, [hl]                                       ; $6568: $6e
	dec sp                                           ; $6569: $3b
	ccf                                              ; $656a: $3f
	ld l, h                                          ; $656b: $6c
	ccf                                              ; $656c: $3f
	and b                                            ; $656d: $a0
	cpl                                              ; $656e: $2f
	ld b, e                                          ; $656f: $43
	ld h, h                                          ; $6570: $64
	inc [hl]                                         ; $6571: $34
	halt                                             ; $6572: $76
	ld d, e                                          ; $6573: $53
	and c                                            ; $6574: $a1
	add b                                            ; $6575: $80
	ldh a, [$8c]                                     ; $6576: $f0 $8c
	ld d, h                                          ; $6578: $54
	ldh a, [$8c]                                     ; $6579: $f0 $8c
	add d                                            ; $657b: $82
	ld h, e                                          ; $657c: $63
	sbc h                                            ; $657d: $9c
	ld b, a                                          ; $657e: $47
	xor h                                            ; $657f: $ac
	ldh a, [$0a]                                     ; $6580: $f0 $0a
	ld d, l                                          ; $6582: $55
	ld l, [hl]                                       ; $6583: $6e
	ld d, a                                          ; $6584: $57
	ld a, [hl-]                                      ; $6585: $3a
	ld e, b                                          ; $6586: $58
	jr c, @-$5e                                      ; $6587: $38 $a0

	cpl                                              ; $6589: $2f
	ld b, e                                          ; $658a: $43
	db $ec                                           ; $658b: $ec
	push bc                                          ; $658c: $c5
	db $ec                                           ; $658d: $ec
	rrca                                             ; $658e: $0f
	and c                                            ; $658f: $a1
	ld l, a                                          ; $6590: $6f
	inc [hl]                                         ; $6591: $34
	ldh a, [$d6]                                     ; $6592: $f0 $d6
	ld b, d                                          ; $6594: $42
	ldh a, [$cc]                                     ; $6595: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $6597: $f0 $88
	ld d, e                                          ; $6599: $53
	inc de                                           ; $659a: $13
	ld b, [hl]                                       ; $659b: $46
	ld c, [hl]                                       ; $659c: $4e
	inc a                                            ; $659d: $3c
	ld d, b                                          ; $659e: $50
	inc [hl]                                         ; $659f: $34
	ldh a, [rHDMA5]                                  ; $65a0: $f0 $55
	ldh a, [rBCPS]                                   ; $65a2: $f0 $68
	ld d, c                                          ; $65a4: $51
	ld c, [hl]                                       ; $65a5: $4e
	ld h, e                                          ; $65a6: $63
	xor b                                            ; $65a7: $a8
	ldh a, [$08]                                     ; $65a8: $f0 $08
	ld e, c                                          ; $65aa: $59
	ldh a, [$08]                                     ; $65ab: $f0 $08
	ldh a, [$08]                                     ; $65ad: $f0 $08
	ldh a, [$08]                                     ; $65af: $f0 $08
	ldh a, [$08]                                     ; $65b1: $f0 $08
	ldh a, [$08]                                     ; $65b3: $f0 $08
	and b                                            ; $65b5: $a0
	cpl                                              ; $65b6: $2f
	ld b, e                                          ; $65b7: $43
	ldh a, [$aa]                                     ; $65b8: $f0 $aa
	adc c                                            ; $65ba: $89
	adc a                                            ; $65bb: $8f
	ld c, e                                          ; $65bc: $4b
	ld d, h                                          ; $65bd: $54
	ld c, l                                          ; $65be: $4d
	inc a                                            ; $65bf: $3c
	ld d, b                                          ; $65c0: $50
	inc de                                           ; $65c1: $13
	xor $2a                                          ; $65c2: $ee $2a
	db $ec                                           ; $65c4: $ec
	ldh a, [c]                                       ; $65c5: $f2
	ld d, e                                          ; $65c6: $53
	inc de                                           ; $65c7: $13
	ldh a, [$bb]                                     ; $65c8: $f0 $bb
	ld d, d                                          ; $65ca: $52
	ld c, [hl]                                       ; $65cb: $4e
	ld l, h                                          ; $65cc: $6c
	dec a                                            ; $65cd: $3d
	jr c, jr_093_6614                                ; $65ce: $38 $44

	ld c, h                                          ; $65d0: $4c
	and b                                            ; $65d1: $a0
	pop de                                           ; $65d2: $d1
	xor h                                            ; $65d3: $ac
	db $ed                                           ; $65d4: $ed
	ld c, c                                          ; $65d5: $49
	db $ec                                           ; $65d6: $ec
	ret c                                            ; $65d7: $d8

	and b                                            ; $65d8: $a0
	cpl                                              ; $65d9: $2f
	ld b, e                                          ; $65da: $43
	ld a, a                                          ; $65db: $7f
	ld b, a                                          ; $65dc: $47
	sub [hl]                                         ; $65dd: $96
	dec sp                                           ; $65de: $3b
	ccf                                              ; $65df: $3f
	ld d, l                                          ; $65e0: $55
	ld c, l                                          ; $65e1: $4d
	dec a                                            ; $65e2: $3d
	inc de                                           ; $65e3: $13
	ld l, h                                          ; $65e4: $6c
	dec a                                            ; $65e5: $3d
	jr c, @+$46                                      ; $65e6: $38 $44

	ld c, h                                          ; $65e8: $4c
	and b                                            ; $65e9: $a0
	dec a                                            ; $65ea: $3d
	ld b, h                                          ; $65eb: $44
	inc [hl]                                         ; $65ec: $34
	ld l, a                                          ; $65ed: $6f
	ld b, d                                          ; $65ee: $42
	sbc [hl]                                         ; $65ef: $9e
	ld c, d                                          ; $65f0: $4a
	ld c, e                                          ; $65f1: $4b
	xor h                                            ; $65f2: $ac
	dec a                                            ; $65f3: $3d
	ld b, h                                          ; $65f4: $44
	ld b, d                                          ; $65f5: $42
	ldh a, [c]                                       ; $65f6: $f2
	ld b, l                                          ; $65f7: $45
	ld b, d                                          ; $65f8: $42
	ldh a, [c]                                       ; $65f9: $f2
	ld c, $47                                        ; $65fa: $0e $47
	pop af                                           ; $65fc: $f1
	ld d, e                                          ; $65fd: $53
	ld d, a                                          ; $65fe: $57
	ldh a, [$a3]                                     ; $65ff: $f0 $a3
	ld d, e                                          ; $6601: $53
	dec sp                                           ; $6602: $3b
	ccf                                              ; $6603: $3f
	inc de                                           ; $6604: $13
	ld a, $52                                        ; $6605: $3e $52
	add hl, sp                                       ; $6607: $39
	ld b, d                                          ; $6608: $42
	ld d, e                                          ; $6609: $53
	ldh a, [$8d]                                     ; $660a: $f0 $8d
	ldh a, [$9e]                                     ; $660c: $f0 $9e
	ld c, h                                          ; $660e: $4c
	and b                                            ; $660f: $a0
	cpl                                              ; $6610: $2f
	ld b, e                                          ; $6611: $43
	rst JumpTable                                          ; $6612: $c7
	ld c, d                                          ; $6613: $4a

jr_093_6614:
	ld d, c                                          ; $6614: $51
	inc a                                            ; $6615: $3c
	ld c, b                                          ; $6616: $48
	and b                                            ; $6617: $a0
	ld d, h                                          ; $6618: $54
	ld b, d                                          ; $6619: $42
	ld l, a                                          ; $661a: $6f
	ld b, a                                          ; $661b: $47
	ld d, h                                          ; $661c: $54
	ld b, c                                          ; $661d: $41
	ld a, [hl-]                                      ; $661e: $3a
	adc d                                            ; $661f: $8a
	db $f4                                           ; $6620: $f4
	ld l, b                                          ; $6621: $68
	ld h, d                                          ; $6622: $62
	inc de                                           ; $6623: $13
	ldh a, [c]                                       ; $6624: $f2
	push hl                                          ; $6625: $e5
	ld e, [hl]                                       ; $6626: $5e
	ccf                                              ; $6627: $3f
	ld d, l                                          ; $6628: $55
	ld c, l                                          ; $6629: $4d
	dec a                                            ; $662a: $3d
	ldh a, [$d4]                                     ; $662b: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $662d: $f0 $87
	ld h, d                                          ; $662f: $62
	inc de                                           ; $6630: $13
	db $f4                                           ; $6631: $f4
	sbc a                                            ; $6632: $9f
	add hl, sp                                       ; $6633: $39
	ld h, e                                          ; $6634: $63
	and b                                            ; $6635: $a0
	cpl                                              ; $6636: $2f
	ld b, e                                          ; $6637: $43
	xor $10                                          ; $6638: $ee $10
	xor b                                            ; $663a: $a8
	ld b, b                                          ; $663b: $40
	inc [hl]                                         ; $663c: $34
	or h                                             ; $663d: $b4
	xor h                                            ; $663e: $ac
	db $ec                                           ; $663f: $ec
	push bc                                          ; $6640: $c5
	db $ec                                           ; $6641: $ec
	rrca                                             ; $6642: $0f
	and c                                            ; $6643: $a1
	ld l, a                                          ; $6644: $6f
	ld b, d                                          ; $6645: $42
	adc d                                            ; $6646: $8a
	ld a, $58                                        ; $6647: $3e $58
	ld b, a                                          ; $6649: $47
	ld c, e                                          ; $664a: $4b
	inc de                                           ; $664b: $13
	di                                               ; $664c: $f3
	ld e, c                                          ; $664d: $59
	push af                                          ; $664e: $f5
	ld a, $f4                                        ; $664f: $3e $f4
	sbc h                                            ; $6651: $9c
	ld a, e                                          ; $6652: $7b
	ld a, [hl-]                                      ; $6653: $3a
	jr c, @+$5f                                      ; $6654: $38 $5d

	ld e, d                                          ; $6656: $5a
	xor h                                            ; $6657: $ac
	db $ed                                           ; $6658: $ed
	ld c, c                                          ; $6659: $49
	ld b, h                                          ; $665a: $44
	dec sp                                           ; $665b: $3b
	dec a                                            ; $665c: $3d
	ld b, c                                          ; $665d: $41
	db $ec                                           ; $665e: $ec
	ret c                                            ; $665f: $d8

	and b                                            ; $6660: $a0
	cpl                                              ; $6661: $2f
	ld b, e                                          ; $6662: $43
	rst JumpTable                                          ; $6663: $c7
	ld b, h                                          ; $6664: $44
	ld c, h                                          ; $6665: $4c
	xor b                                            ; $6666: $a8
	db $ed                                           ; $6667: $ed
	ld d, e                                          ; $6668: $53
	ld b, a                                          ; $6669: $47
	ld c, e                                          ; $666a: $4b
	inc de                                           ; $666b: $13
	inc a                                            ; $666c: $3c
	ld a, [hl-]                                      ; $666d: $3a
	ld h, e                                          ; $666e: $63
	ld a, [hl-]                                      ; $666f: $3a
	jr c, jr_093_66cf                                ; $6670: $38 $5d

	ld e, d                                          ; $6672: $5a
	ld c, h                                          ; $6673: $4c
	ld c, b                                          ; $6674: $48
	and b                                            ; $6675: $a0
	sub c                                            ; $6676: $91
	ldh a, [$59]                                     ; $6677: $f0 $59
	ld d, c                                          ; $6679: $51
	ldh a, [$cb]                                     ; $667a: $f0 $cb
	ccf                                              ; $667c: $3f
	xor h                                            ; $667d: $ac
	jr c, jr_093_66d2                                ; $667e: $38 $52

	ld e, b                                          ; $6680: $58
	ld d, b                                          ; $6681: $50
	pop af                                           ; $6682: $f1
	push af                                          ; $6683: $f5
	ld b, a                                          ; $6684: $47
	sub h                                            ; $6685: $94
	ld d, c                                          ; $6686: $51
	sbc d                                            ; $6687: $9a
	ld c, d                                          ; $6688: $4a
	ld c, a                                          ; $6689: $4f
	inc de                                           ; $668a: $13
	ld a, [hl-]                                      ; $668b: $3a
	inc a                                            ; $668c: $3c
	dec sp                                           ; $668d: $3b
	ldh [$a8], a                                     ; $668e: $e0 $a8
	ldh a, [$08]                                     ; $6690: $f0 $08
	ld e, c                                          ; $6692: $59
	ldh a, [$08]                                     ; $6693: $f0 $08
	ldh a, [$08]                                     ; $6695: $f0 $08
	ldh a, [$08]                                     ; $6697: $f0 $08
	ldh a, [$08]                                     ; $6699: $f0 $08
	ldh a, [$08]                                     ; $669b: $f0 $08
	and b                                            ; $669d: $a0
	cpl                                              ; $669e: $2f
	ld b, e                                          ; $669f: $43
	or h                                             ; $66a0: $b4
	xor h                                            ; $66a1: $ac
	xor $06                                          ; $66a2: $ee $06
	ld b, a                                          ; $66a4: $47
	db $ec                                           ; $66a5: $ec
	rrca                                             ; $66a6: $0f
	and c                                            ; $66a7: $a1
	db $eb                                           ; $66a8: $eb
	xor d                                            ; $66a9: $aa
	xor h                                            ; $66aa: $ac
	ld l, a                                          ; $66ab: $6f
	inc [hl]                                         ; $66ac: $34
	ldh a, [$d6]                                     ; $66ad: $f0 $d6
	ld b, d                                          ; $66af: $42
	ldh a, [$cc]                                     ; $66b0: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $66b2: $f0 $88
	db $eb                                           ; $66b4: $eb
	ld l, l                                          ; $66b5: $6d
	xor h                                            ; $66b6: $ac
	ldh a, [rHDMA5]                                  ; $66b7: $f0 $55
	ldh a, [rBCPS]                                   ; $66b9: $f0 $68
	ld d, c                                          ; $66bb: $51
	ld c, [hl]                                       ; $66bc: $4e
	ld h, e                                          ; $66bd: $63
	ld c, h                                          ; $66be: $4c
	and b                                            ; $66bf: $a0
	cpl                                              ; $66c0: $2f
	ld b, e                                          ; $66c1: $43
	ld e, d                                          ; $66c2: $5a
	add hl, sp                                       ; $66c3: $39
	cp e                                             ; $66c4: $bb
	and c                                            ; $66c5: $a1
	ldh a, [c]                                       ; $66c6: $f2
	rra                                              ; $66c7: $1f
	ldh a, [$38]                                     ; $66c8: $f0 $38
	ld c, e                                          ; $66ca: $4b
	ld e, d                                          ; $66cb: $5a
	add hl, sp                                       ; $66cc: $39
	ld [hl], a                                       ; $66cd: $77
	dec sp                                           ; $66ce: $3b

jr_093_66cf:
	dec a                                            ; $66cf: $3d
	ld b, d                                          ; $66d0: $42
	and c                                            ; $66d1: $a1

jr_093_66d2:
	cpl                                              ; $66d2: $2f
	ld b, e                                          ; $66d3: $43
	db $ed                                           ; $66d4: $ed
	ld c, c                                          ; $66d5: $49
	ld b, h                                          ; $66d6: $44
	dec sp                                           ; $66d7: $3b
	dec a                                            ; $66d8: $3d
	ld a, [hl-]                                      ; $66d9: $3a
	ld c, c                                          ; $66da: $49
	inc de                                           ; $66db: $13
	ld [hl], a                                       ; $66dc: $77
	dec sp                                           ; $66dd: $3b
	dec a                                            ; $66de: $3d
	ld e, l                                          ; $66df: $5d
	ld e, d                                          ; $66e0: $5a
	ld c, b                                          ; $66e1: $48
	and b                                            ; $66e2: $a0
	ld d, h                                          ; $66e3: $54
	ld b, d                                          ; $66e4: $42
	ld l, a                                          ; $66e5: $6f
	ld b, l                                          ; $66e6: $45
	ld d, a                                          ; $66e7: $57
	and c                                            ; $66e8: $a1
	ld b, b                                          ; $66e9: $40
	ld b, c                                          ; $66ea: $41
	ld a, [hl-]                                      ; $66eb: $3a
	ld c, e                                          ; $66ec: $4b
	sbc h                                            ; $66ed: $9c
	ld a, [hl-]                                      ; $66ee: $3a
	jr c, @+$65                                      ; $66ef: $38 $63

	ld b, l                                          ; $66f1: $45
	ld c, h                                          ; $66f2: $4c
	xor b                                            ; $66f3: $a8
	ld l, a                                          ; $66f4: $6f
	ld b, d                                          ; $66f5: $42
	adc d                                            ; $66f6: $8a
	ld a, $58                                        ; $66f7: $3e $58
	ld b, d                                          ; $66f9: $42
	sbc [hl]                                         ; $66fa: $9e
	ld c, d                                          ; $66fb: $4a
	ld c, e                                          ; $66fc: $4b
	xor h                                            ; $66fd: $ac
	ld hl, sp-$38                                    ; $66fe: $f8 $c8
	ccf                                              ; $6700: $3f
	ld d, e                                          ; $6701: $53
	ei                                               ; $6702: $fb
	pop bc                                           ; $6703: $c1
	ld b, c                                          ; $6704: $41
	ld c, d                                          ; $6705: $4a
	ld a, $52                                        ; $6706: $3e $52
	add hl, sp                                       ; $6708: $39
	ld c, a                                          ; $6709: $4f
	ld b, d                                          ; $670a: $42
	and b                                            ; $670b: $a0
	cpl                                              ; $670c: $2f
	ld b, e                                          ; $670d: $43
	rst JumpTable                                          ; $670e: $c7
	ld c, d                                          ; $670f: $4a
	ld d, c                                          ; $6710: $51
	ld c, h                                          ; $6711: $4c
	xor b                                            ; $6712: $a8
	ld h, h                                          ; $6713: $64
	dec sp                                           ; $6714: $3b
	ld a, $56                                        ; $6715: $3e $56
	ld c, [hl]                                       ; $6717: $4e
	ldh a, [rOCPS]                                   ; $6718: $f0 $6a
	ld d, a                                          ; $671a: $57
	ld c, d                                          ; $671b: $4a
	ld d, c                                          ; $671c: $51
	and b                                            ; $671d: $a0
	db $eb                                           ; $671e: $eb
	ld [hl], h                                       ; $671f: $74
	ld b, d                                          ; $6720: $42
	ld a, [hl-]                                      ; $6721: $3a
	ld d, b                                          ; $6722: $50
	inc de                                           ; $6723: $13
	jr c, jr_093_675e                                ; $6724: $38 $38

	ld b, d                                          ; $6726: $42
	ld b, l                                          ; $6727: $45
	xor b                                            ; $6728: $a8
	ld l, a                                          ; $6729: $6f
	inc [hl]                                         ; $672a: $34
	ldh a, [$d6]                                     ; $672b: $f0 $d6
	ld b, d                                          ; $672d: $42
	ldh a, [$cc]                                     ; $672e: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $6730: $f0 $88
	db $eb                                           ; $6732: $eb
	ld l, l                                          ; $6733: $6d
	xor h                                            ; $6734: $ac
	ldh a, [rHDMA5]                                  ; $6735: $f0 $55
	ldh a, [rBCPS]                                   ; $6737: $f0 $68
	ld d, c                                          ; $6739: $51
	ld c, [hl]                                       ; $673a: $4e
	ld h, e                                          ; $673b: $63
	and b                                            ; $673c: $a0
	ld a, [hl-]                                      ; $673d: $3a
	inc [hl]                                         ; $673e: $34
	ld a, [hl-]                                      ; $673f: $3a
	ld b, c                                          ; $6740: $41
	ld b, h                                          ; $6741: $44
	dec sp                                           ; $6742: $3b
	dec a                                            ; $6743: $3d
	ld b, d                                          ; $6744: $42
	ld l, d                                          ; $6745: $6a
	ld b, d                                          ; $6746: $42
	ld c, b                                          ; $6747: $48
	and b                                            ; $6748: $a0
	cpl                                              ; $6749: $2f
	ld b, e                                          ; $674a: $43
	ld l, d                                          ; $674b: $6a
	ld b, d                                          ; $674c: $42
	ld d, e                                          ; $674d: $53
	inc [hl]                                         ; $674e: $34
	ldh a, [$2c]                                     ; $674f: $f0 $2c
	pop af                                           ; $6751: $f1
	call z, $36f1                                    ; $6752: $cc $f1 $36
	pop af                                           ; $6755: $f1
	pop af                                           ; $6756: $f1
	inc de                                           ; $6757: $13
	dec sp                                           ; $6758: $3b
	ccf                                              ; $6759: $3f
	ldh a, [$f8]                                     ; $675a: $f0 $f8
	ld [hl], $ea                                     ; $675c: $36 $ea

jr_093_675e:
	or e                                             ; $675e: $b3
	and b                                            ; $675f: $a0
	rst JumpTable                                          ; $6760: $c7
	xor c                                            ; $6761: $a9
	db $ec                                           ; $6762: $ec
	rra                                              ; $6763: $1f
	pop af                                           ; $6764: $f1
	rst SubAFromHL                                          ; $6765: $d7
	ldh a, [$0d]                                     ; $6766: $f0 $0d
	ld c, d                                          ; $6768: $4a
	inc de                                           ; $6769: $13
	ld l, a                                          ; $676a: $6f
	ld c, e                                          ; $676b: $4b
	ldh a, [c]                                       ; $676c: $f2
	sub d                                            ; $676d: $92
	inc a                                            ; $676e: $3c
	ld a, [hl-]                                      ; $676f: $3a
	jr c, jr_093_67d5                                ; $6770: $38 $63

	ld b, l                                          ; $6772: $45
	and b                                            ; $6773: $a0
	cpl                                              ; $6774: $2f
	ld b, e                                          ; $6775: $43
	halt                                             ; $6776: $76
	ld c, e                                          ; $6777: $4b
	ld d, c                                          ; $6778: $51
	ld [hl], b                                       ; $6779: $70
	ld d, l                                          ; $677a: $55
	ldh a, [c]                                       ; $677b: $f2
	sub d                                            ; $677c: $92
	jr c, jr_093_67bc                                ; $677d: $38 $3d

	inc de                                           ; $677f: $13
	ld e, l                                          ; $6780: $5d
	ld e, d                                          ; $6781: $5a
	ld a, [hl-]                                      ; $6782: $3a
	ld [hl], h                                       ; $6783: $74
	and b                                            ; $6784: $a0
	ld l, a                                          ; $6785: $6f
	sbc l                                            ; $6786: $9d
	ld d, b                                          ; $6787: $50
	jr c, jr_093_67cc                                ; $6788: $38 $42

	adc d                                            ; $678a: $8a
	db $f4                                           ; $678b: $f4
	ld l, b                                          ; $678c: $68
	ld b, a                                          ; $678d: $47
	ld a, [hl-]                                      ; $678e: $3a
	ld c, [hl]                                       ; $678f: $4e
	ld c, c                                          ; $6790: $49
	inc de                                           ; $6791: $13
	xor $1e                                          ; $6792: $ee $1e
	pop af                                           ; $6794: $f1
	rst SubAFromHL                                          ; $6795: $d7
	ldh a, [$0d]                                     ; $6796: $f0 $0d
	ld b, d                                          ; $6798: $42
	sbc d                                            ; $6799: $9a
	ld c, d                                          ; $679a: $4a
	ld c, e                                          ; $679b: $4b
	ldh a, [c]                                       ; $679c: $f2
	sub d                                            ; $679d: $92
	inc a                                            ; $679e: $3c
	ld a, [hl-]                                      ; $679f: $3a
	jr c, @+$44                                      ; $67a0: $38 $42

	ld b, l                                          ; $67a2: $45
	and b                                            ; $67a3: $a0
	cpl                                              ; $67a4: $2f
	ld b, e                                          ; $67a5: $43
	ld b, l                                          ; $67a6: $45
	ld d, l                                          ; $67a7: $55
	pop af                                           ; $67a8: $f1
	dec sp                                           ; $67a9: $3b
	ld b, c                                          ; $67aa: $41
	ld a, [hl-]                                      ; $67ab: $3a
	jr c, jr_093_680b                                ; $67ac: $38 $5d

	ld e, d                                          ; $67ae: $5a
	xor h                                            ; $67af: $ac
	ld b, b                                          ; $67b0: $40
	add hl, sp                                       ; $67b1: $39
	jr c, jr_093_67ed                                ; $67b2: $38 $39

	sbc d                                            ; $67b4: $9a
	ld a, [hl-]                                      ; $67b5: $3a
	ld b, d                                          ; $67b6: $42
	and c                                            ; $67b7: $a1
	db $ec                                           ; $67b8: $ec
	db $f4                                           ; $67b9: $f4
	xor b                                            ; $67ba: $a8
	pop af                                           ; $67bb: $f1

jr_093_67bc:
	dec sp                                           ; $67bc: $3b
	ld c, [hl]                                       ; $67bd: $4e
	ld b, l                                          ; $67be: $45
	add hl, sp                                       ; $67bf: $39
	ld b, a                                          ; $67c0: $47
	ld a, [hl-]                                      ; $67c1: $3a
	ld d, a                                          ; $67c2: $57
	ld a, [hl-]                                      ; $67c3: $3a
	ld e, b                                          ; $67c4: $58
	jr c, @-$5e                                      ; $67c5: $38 $a0

	cpl                                              ; $67c7: $2f
	ld b, e                                          ; $67c8: $43
	pop af                                           ; $67c9: $f1
	dec sp                                           ; $67ca: $3b
	ld c, [hl]                                       ; $67cb: $4e

jr_093_67cc:
	ld b, l                                          ; $67cc: $45
	add hl, sp                                       ; $67cd: $39
	ld b, a                                          ; $67ce: $47
	ld c, h                                          ; $67cf: $4c
	add l                                            ; $67d0: $85
	xor l                                            ; $67d1: $ad
	or h                                             ; $67d2: $b4
	xor h                                            ; $67d3: $ac
	db $ec                                           ; $67d4: $ec

jr_093_67d5:
	push bc                                          ; $67d5: $c5
	db $ec                                           ; $67d6: $ec
	rrca                                             ; $67d7: $0f
	and c                                            ; $67d8: $a1
	ld a, [hl-]                                      ; $67d9: $3a
	ld b, c                                          ; $67da: $41
	ld b, h                                          ; $67db: $44
	dec sp                                           ; $67dc: $3b
	dec a                                            ; $67dd: $3d
	ld b, d                                          ; $67de: $42
	ld l, d                                          ; $67df: $6a
	ld b, d                                          ; $67e0: $42
	ld c, b                                          ; $67e1: $48
	and b                                            ; $67e2: $a0
	ldh a, [$5a]                                     ; $67e3: $f0 $5a
	add l                                            ; $67e5: $85
	inc [hl]                                         ; $67e6: $34
	rst FarCall                                          ; $67e7: $f7
	nop                                              ; $67e8: $00
	di                                               ; $67e9: $f3
	call nz, $854c                                   ; $67ea: $c4 $4c $85

jr_093_67ed:
	xor b                                            ; $67ed: $a8
	ld b, [hl]                                       ; $67ee: $46
	ld c, l                                          ; $67ef: $4d
	ld e, b                                          ; $67f0: $58
	ld e, [hl]                                       ; $67f1: $5e
	ld b, [hl]                                       ; $67f2: $46
	ld c, l                                          ; $67f3: $4d
	ld a, e                                          ; $67f4: $7b
	inc [hl]                                         ; $67f5: $34
	push af                                          ; $67f6: $f5
	cpl                                              ; $67f7: $2f
	ld d, a                                          ; $67f8: $57
	ldh a, [$2c]                                     ; $67f9: $f0 $2c
	ld d, e                                          ; $67fb: $53
	inc de                                           ; $67fc: $13
	ldh a, [rHDMA3]                                  ; $67fd: $f0 $53
	ld h, e                                          ; $67ff: $63
	ld a, [hl-]                                      ; $6800: $3a
	ld d, l                                          ; $6801: $55
	ccf                                              ; $6802: $3f
	ld c, a                                          ; $6803: $4f
	pop af                                           ; $6804: $f1
	and c                                            ; $6805: $a1
	ld e, [hl]                                       ; $6806: $5e
	ld c, [hl]                                       ; $6807: $4e
	ld b, d                                          ; $6808: $42
	ld c, h                                          ; $6809: $4c
	and b                                            ; $680a: $a0

jr_093_680b:
	cpl                                              ; $680b: $2f
	ld b, e                                          ; $680c: $43
	rst JumpTable                                          ; $680d: $c7
	jr c, jr_093_6849                                ; $680e: $38 $39

	inc de                                           ; $6810: $13
	ldh a, [c]                                       ; $6811: $f2
	ld h, e                                          ; $6812: $63
	pop af                                           ; $6813: $f1
	jp $d8ec                                         ; $6814: $c3 $ec $d8


	ld c, c                                          ; $6817: $49
	inc de                                           ; $6818: $13
	ld [hl], a                                       ; $6819: $77
	add hl, sp                                       ; $681a: $39
	ld e, l                                          ; $681b: $5d
	ld e, d                                          ; $681c: $5a
	ld c, b                                          ; $681d: $48
	and b                                            ; $681e: $a0
	ld l, e                                          ; $681f: $6b
	xor c                                            ; $6820: $a9
	ld l, a                                          ; $6821: $6f
	ld b, d                                          ; $6822: $42
	ldh a, [$a4]                                     ; $6823: $f0 $a4
	ld e, [hl]                                       ; $6825: $5e
	ld b, a                                          ; $6826: $47
	ld l, e                                          ; $6827: $6b
	inc a                                            ; $6828: $3c
	inc de                                           ; $6829: $13
	add d                                            ; $682a: $82
	jr c, @+$3f                                      ; $682b: $38 $3d

	ld b, b                                          ; $682d: $40
	add hl, sp                                       ; $682e: $39
	db $ec                                           ; $682f: $ec
	ret c                                            ; $6830: $d8

	and c                                            ; $6831: $a1
	cpl                                              ; $6832: $2f
	ld b, e                                          ; $6833: $43
	jr c, @+$36                                      ; $6834: $38 $34

	jr c, jr_093_6896                                ; $6836: $38 $5e

	xor b                                            ; $6838: $a8
	ld l, e                                          ; $6839: $6b
	ld c, d                                          ; $683a: $4a
	ld c, a                                          ; $683b: $4f
	ld a, [hl-]                                      ; $683c: $3a
	jr c, jr_093_6889                                ; $683d: $38 $4a

	ld d, c                                          ; $683f: $51
	and b                                            ; $6840: $a0
	ld b, b                                          ; $6841: $40
	add hl, sp                                       ; $6842: $39
	inc [hl]                                         ; $6843: $34
	ld b, b                                          ; $6844: $40
	ld c, l                                          ; $6845: $4d
	ld e, e                                          ; $6846: $5b
	ld d, [hl]                                       ; $6847: $56
	inc de                                           ; $6848: $13

jr_093_6849:
	ldh a, [$d6]                                     ; $6849: $f0 $d6
	ld b, d                                          ; $684b: $42
	ldh a, [$cc]                                     ; $684c: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $684e: $f0 $88
	db $eb                                           ; $6850: $eb
	ld l, l                                          ; $6851: $6d
	xor h                                            ; $6852: $ac
	ldh a, [rHDMA5]                                  ; $6853: $f0 $55
	ldh a, [rBCPS]                                   ; $6855: $f0 $68
	ld d, c                                          ; $6857: $51
	ld c, [hl]                                       ; $6858: $4e
	ld h, e                                          ; $6859: $63
	xor b                                            ; $685a: $a8
	ldh a, [$08]                                     ; $685b: $f0 $08
	ld e, c                                          ; $685d: $59
	ldh a, [$08]                                     ; $685e: $f0 $08
	ldh a, [$08]                                     ; $6860: $f0 $08
	ldh a, [$08]                                     ; $6862: $f0 $08
	ldh a, [$08]                                     ; $6864: $f0 $08
	ldh a, [$08]                                     ; $6866: $f0 $08
	and b                                            ; $6868: $a0

jr_093_6869:
	ldh a, [$5a]                                     ; $6869: $f0 $5a
	add l                                            ; $686b: $85
	inc [hl]                                         ; $686c: $34
	rst FarCall                                          ; $686d: $f7
	nop                                              ; $686e: $00
	di                                               ; $686f: $f3
	call nz, $854c                                   ; $6870: $c4 $4c $85
	xor b                                            ; $6873: $a8
	ld b, [hl]                                       ; $6874: $46
	ld c, l                                          ; $6875: $4d
	ld e, b                                          ; $6876: $58
	ld e, [hl]                                       ; $6877: $5e
	ld b, [hl]                                       ; $6878: $46
	ld c, l                                          ; $6879: $4d
	ld a, e                                          ; $687a: $7b
	inc [hl]                                         ; $687b: $34
	ld l, l                                          ; $687c: $6d
	ld l, b                                          ; $687d: $68
	ld b, a                                          ; $687e: $47
	inc de                                           ; $687f: $13
	ld l, e                                          ; $6880: $6b
	add h                                            ; $6881: $84
	ld c, d                                          ; $6882: $4a
	ld c, a                                          ; $6883: $4f
	ldh a, [rWY]                                     ; $6884: $f0 $4a
	ld e, c                                          ; $6886: $59
	ld l, c                                          ; $6887: $69
	ld c, d                                          ; $6888: $4a

jr_093_6889:
	ld e, h                                          ; $6889: $5c
	call c, $2fa0                                    ; $688a: $dc $a0 $2f
	ld b, e                                          ; $688d: $43
	rst JumpTable                                          ; $688e: $c7
	jr c, jr_093_68ca                                ; $688f: $38 $39

	ld c, a                                          ; $6891: $4f
	ld b, d                                          ; $6892: $42
	ld e, e                                          ; $6893: $5b
	ld d, [hl]                                       ; $6894: $56
	inc de                                           ; $6895: $13

jr_093_6896:
	ld a, [hl-]                                      ; $6896: $3a
	jr c, @+$4b                                      ; $6897: $38 $49

	ld [hl], a                                       ; $6899: $77
	xor $1f                                          ; $689a: $ee $1f
	ld b, h                                          ; $689c: $44
	ld e, l                                          ; $689d: $5d
	ld e, d                                          ; $689e: $5a
	ld c, b                                          ; $689f: $48
	and b                                            ; $68a0: $a0
	ld l, e                                          ; $68a1: $6b
	ld [hl], $6f                                     ; $68a2: $36 $6f
	ld b, d                                          ; $68a4: $42
	ldh a, [$a4]                                     ; $68a5: $f0 $a4
	ld e, [hl]                                       ; $68a7: $5e
	ld b, a                                          ; $68a8: $47
	ld l, e                                          ; $68a9: $6b
	inc a                                            ; $68aa: $3c
	inc de                                           ; $68ab: $13
	ldh a, [rSCX]                                    ; $68ac: $f0 $43
	db $f4                                           ; $68ae: $f4
	add c                                            ; $68af: $81
	ld d, e                                          ; $68b0: $53
	ld b, [hl]                                       ; $68b1: $46
	ld c, [hl]                                       ; $68b2: $4e
	ld b, d                                          ; $68b3: $42
	inc a                                            ; $68b4: $3c
	ld a, $50                                        ; $68b5: $3e $50
	and c                                            ; $68b7: $a1
	add hl, bc                                       ; $68b8: $09
	jp hl                                            ; $68b9: $e9


	sbc $a0                                          ; $68ba: $de $a0
	cpl                                              ; $68bc: $2f
	ld b, e                                          ; $68bd: $43
	db $ec                                           ; $68be: $ec
	cp c                                             ; $68bf: $b9
	xor b                                            ; $68c0: $a8
	add sp, -$6d                                     ; $68c1: $e8 $93
	and b                                            ; $68c3: $a0
	add hl, sp                                       ; $68c4: $39
	ld h, e                                          ; $68c5: $63
	ld [hl], h                                       ; $68c6: $74
	inc [hl]                                         ; $68c7: $34
	jr c, jr_093_6905                                ; $68c8: $38 $3b

jr_093_68ca:
	ldh a, [$36]                                     ; $68ca: $f0 $36
	jr c, jr_093_6869                                ; $68cc: $38 $9b

	ld d, e                                          ; $68ce: $53
	inc de                                           ; $68cf: $13
	db $eb                                           ; $68d0: $eb
	ld l, e                                          ; $68d1: $6b
	ld c, h                                          ; $68d2: $4c
	and b                                            ; $68d3: $a0
	cpl                                              ; $68d4: $2f
	ld b, e                                          ; $68d5: $43
	sbc e                                            ; $68d6: $9b
	ld d, e                                          ; $68d7: $53
	ldh a, [$64]                                     ; $68d8: $f0 $64
	jr c, jr_093_6916                                ; $68da: $38 $3a

	ld b, d                                          ; $68dc: $42
	and c                                            ; $68dd: $a1
	sbc e                                            ; $68de: $9b
	ld d, e                                          ; $68df: $53
	inc de                                           ; $68e0: $13
	ldh a, [$64]                                     ; $68e1: $f0 $64
	jr c, jr_093_691f                                ; $68e3: $38 $3a

	ld b, c                                          ; $68e5: $41
	ld e, e                                          ; $68e6: $5b
	ld d, [hl]                                       ; $68e7: $56
	ld a, [hl-]                                      ; $68e8: $3a
	ld d, l                                          ; $68e9: $55
	ccf                                              ; $68ea: $3f
	xor h                                            ; $68eb: $ac
	pop af                                           ; $68ec: $f1
	rrca                                             ; $68ed: $0f
	db $f4                                           ; $68ee: $f4
	ret                                              ; $68ef: $c9


	ld d, e                                          ; $68f0: $53
	ld c, h                                          ; $68f1: $4c
	ld c, b                                          ; $68f2: $48
	inc [hl]                                         ; $68f3: $34
	inc hl                                           ; $68f4: $23
	ret                                              ; $68f5: $c9


	ld c, b                                          ; $68f6: $48
	and b                                            ; $68f7: $a0
	cpl                                              ; $68f8: $2f
	ld b, e                                          ; $68f9: $43
	add sp, -$2d                                     ; $68fa: $e8 $d3
	inc de                                           ; $68fc: $13
	jp hl                                            ; $68fd: $e9


	dec a                                            ; $68fe: $3d
	xor b                                            ; $68ff: $a8
	jp hl                                            ; $6900: $e9


	ld h, e                                          ; $6901: $63
	and c                                            ; $6902: $a1
	ld l, a                                          ; $6903: $6f
	ld b, a                                          ; $6904: $47

jr_093_6905:
	inc [hl]                                         ; $6905: $34
	ld d, l                                          ; $6906: $55
	ld c, l                                          ; $6907: $4d
	ld c, [hl]                                       ; $6908: $4e
	ld b, d                                          ; $6909: $42

jr_093_690a:
	xor c                                            ; $690a: $a9
	ld c, d                                          ; $690b: $4a
	ld c, a                                          ; $690c: $4f
	inc [hl]                                         ; $690d: $34
	ldh a, [$fa]                                     ; $690e: $f0 $fa
	ld [hl], c                                       ; $6910: $71
	ld c, [hl]                                       ; $6911: $4e
	inc a                                            ; $6912: $3c
	ld a, [hl-]                                      ; $6913: $3a
	ld [hl], h                                       ; $6914: $74
	ld c, b                                          ; $6915: $48

jr_093_6916:
	and b                                            ; $6916: $a0
	cpl                                              ; $6917: $2f
	ld b, e                                          ; $6918: $43
	ldh a, [c]                                       ; $6919: $f2
	ld c, h                                          ; $691a: $4c
	jr c, jr_093_690a                                ; $691b: $38 $ed

	ld l, a                                          ; $691d: $6f
	ld h, c                                          ; $691e: $61

jr_093_691f:
	ld c, d                                          ; $691f: $4a
	inc de                                           ; $6920: $13
	ldh a, [$fa]                                     ; $6921: $f0 $fa
	ld b, c                                          ; $6923: $41
	ld c, d                                          ; $6924: $4a
	ld l, h                                          ; $6925: $6c
	ld a, [hl-]                                      ; $6926: $3a
	ld b, l                                          ; $6927: $45
	xor b                                            ; $6928: $a8
	ld b, b                                          ; $6929: $40
	ld b, c                                          ; $692a: $41
	ld a, [hl-]                                      ; $692b: $3a
	ld b, a                                          ; $692c: $47
	inc [hl]                                         ; $692d: $34
	pop af                                           ; $692e: $f1
	ld a, [$553e]                                    ; $692f: $fa $3e $55
	ld a, [hl-]                                      ; $6932: $3a
	jr c, jr_093_6980                                ; $6933: $38 $4b

	sbc h                                            ; $6935: $9c
	ld b, h                                          ; $6936: $44
	inc a                                            ; $6937: $3c
	ld d, b                                          ; $6938: $50
	and b                                            ; $6939: $a0
	ldh a, [$b2]                                     ; $693a: $f0 $b2
	ldh a, [rKEY1]                                   ; $693c: $f0 $4d
	ld b, a                                          ; $693e: $47
	ld a, b                                          ; $693f: $78
	dec sp                                           ; $6940: $3b
	dec a                                            ; $6941: $3d
	ld b, l                                          ; $6942: $45
	ld e, c                                          ; $6943: $59
	ld b, c                                          ; $6944: $41
	and b                                            ; $6945: $a0
	sbc e                                            ; $6946: $9b
	ld d, e                                          ; $6947: $53
	inc de                                           ; $6948: $13
	ldh a, [$64]                                     ; $6949: $f0 $64
	jr c, jr_093_6987                                ; $694b: $38 $3a

	ld b, c                                          ; $694d: $41
	ld e, e                                          ; $694e: $5b
	ld d, [hl]                                       ; $694f: $56
	ld a, [hl-]                                      ; $6950: $3a
	ld d, l                                          ; $6951: $55
	ccf                                              ; $6952: $3f
	xor h                                            ; $6953: $ac
	pop af                                           ; $6954: $f1
	rrca                                             ; $6955: $0f
	db $f4                                           ; $6956: $f4
	ret                                              ; $6957: $c9


	ld d, e                                          ; $6958: $53
	db $ed                                           ; $6959: $ed
	ld l, b                                          ; $695a: $68
	ld a, [hl-]                                      ; $695b: $3a
	ld b, d                                          ; $695c: $42
	ld b, l                                          ; $695d: $45
	and b                                            ; $695e: $a0
	ld l, a                                          ; $695f: $6f
	ld b, a                                          ; $6960: $47
	inc [hl]                                         ; $6961: $34
	ldh a, [$fa]                                     ; $6962: $f0 $fa
	ld [hl], c                                       ; $6964: $71
	ld c, [hl]                                       ; $6965: $4e
	inc a                                            ; $6966: $3c
	ld a, [hl-]                                      ; $6967: $3a
	ld [hl], h                                       ; $6968: $74
	and b                                            ; $6969: $a0
	cpl                                              ; $696a: $2f
	ld b, e                                          ; $696b: $43
	ld b, [hl]                                       ; $696c: $46
	dec sp                                           ; $696d: $3b
	inc [hl]                                         ; $696e: $34
	db $eb                                           ; $696f: $eb
	ld a, [$eaa8]                                    ; $6970: $fa $a8 $ea
	rra                                              ; $6973: $1f
	and b                                            ; $6974: $a0
	sbc e                                            ; $6975: $9b
	ld d, e                                          ; $6976: $53
	inc de                                           ; $6977: $13
	ldh a, [$64]                                     ; $6978: $f0 $64
	jr c, jr_093_69b6                                ; $697a: $38 $3a

	ld b, c                                          ; $697c: $41
	ld e, e                                          ; $697d: $5b
	ld d, [hl]                                       ; $697e: $56
	ld a, [hl-]                                      ; $697f: $3a

jr_093_6980:
	ld d, l                                          ; $6980: $55
	ccf                                              ; $6981: $3f
	xor h                                            ; $6982: $ac
	pop af                                           ; $6983: $f1
	rrca                                             ; $6984: $0f
	db $f4                                           ; $6985: $f4
	ret                                              ; $6986: $c9


jr_093_6987:
	ld d, e                                          ; $6987: $53
	inc [hl]                                         ; $6988: $34
	db $ed                                           ; $6989: $ed
	ld l, b                                          ; $698a: $68
	ld a, [hl-]                                      ; $698b: $3a
	ld b, d                                          ; $698c: $42
	ld b, l                                          ; $698d: $45
	and b                                            ; $698e: $a0
	ld l, a                                          ; $698f: $6f
	ld b, a                                          ; $6990: $47
	inc [hl]                                         ; $6991: $34
	ld d, l                                          ; $6992: $55
	ld c, l                                          ; $6993: $4d
	ld c, [hl]                                       ; $6994: $4e
	ld b, d                                          ; $6995: $42
	xor c                                            ; $6996: $a9
	ld c, d                                          ; $6997: $4a
	ld c, a                                          ; $6998: $4f
	ld a, [hl-]                                      ; $6999: $3a
	ld [hl], h                                       ; $699a: $74
	ld c, b                                          ; $699b: $48
	and b                                            ; $699c: $a0
	cpl                                              ; $699d: $2f
	ld b, e                                          ; $699e: $43
	db $eb                                           ; $699f: $eb
	ld a, [$eaa8]                                    ; $69a0: $fa $a8 $ea
	rra                                              ; $69a3: $1f
	and b                                            ; $69a4: $a0
	ld a, [hl-]                                      ; $69a5: $3a
	ld b, a                                          ; $69a6: $47
	ld d, h                                          ; $69a7: $54
	ld d, h                                          ; $69a8: $54
	xor h                                            ; $69a9: $ac
	pop af                                           ; $69aa: $f1
	rrca                                             ; $69ab: $0f
	db $f4                                           ; $69ac: $f4
	ret                                              ; $69ad: $c9


	ld b, h                                          ; $69ae: $44
	ld d, b                                          ; $69af: $50
	ld e, l                                          ; $69b0: $5d
	db $ec                                           ; $69b1: $ec
	ret c                                            ; $69b2: $d8

	and b                                            ; $69b3: $a0
	cpl                                              ; $69b4: $2f
	ld b, e                                          ; $69b5: $43

jr_093_69b6:
	add sp, -$2d                                     ; $69b6: $e8 $d3
	inc de                                           ; $69b8: $13

jr_093_69b9:
	jp hl                                            ; $69b9: $e9


	dec a                                            ; $69ba: $3d
	xor b                                            ; $69bb: $a8
	add sp, -$7b                                     ; $69bc: $e8 $85
	and c                                            ; $69be: $a1
	add hl, sp                                       ; $69bf: $39
	ld h, e                                          ; $69c0: $63
	ld [hl], h                                       ; $69c1: $74
	inc [hl]                                         ; $69c2: $34
	jr c, jr_093_6a00                                ; $69c3: $38 $3b

	ldh a, [$36]                                     ; $69c5: $f0 $36
	jr c, jr_093_69b9                                ; $69c7: $38 $f0

	and l                                            ; $69c9: $a5
	ldh a, [rSCX]                                    ; $69ca: $f0 $43
	ld d, e                                          ; $69cc: $53
	inc de                                           ; $69cd: $13
	db $eb                                           ; $69ce: $eb
	ld l, e                                          ; $69cf: $6b
	ld c, h                                          ; $69d0: $4c
	and b                                            ; $69d1: $a0
	cpl                                              ; $69d2: $2f
	ld b, e                                          ; $69d3: $43
	ldh a, [$a5]                                     ; $69d4: $f0 $a5
	ldh a, [rSCX]                                    ; $69d6: $f0 $43
	ld d, e                                          ; $69d8: $53
	ldh a, [$64]                                     ; $69d9: $f0 $64
	jr c, jr_093_6a17                                ; $69db: $38 $3a

	ld b, d                                          ; $69dd: $42
	and c                                            ; $69de: $a1
	ldh a, [$a5]                                     ; $69df: $f0 $a5
	ldh a, [rSCX]                                    ; $69e1: $f0 $43
	ld d, e                                          ; $69e3: $53
	inc de                                           ; $69e4: $13
	ldh a, [$64]                                     ; $69e5: $f0 $64
	jr c, jr_093_6a23                                ; $69e7: $38 $3a

	ld b, c                                          ; $69e9: $41
	ld e, e                                          ; $69ea: $5b
	ld d, [hl]                                       ; $69eb: $56
	ld a, [hl-]                                      ; $69ec: $3a
	ld d, l                                          ; $69ed: $55
	ccf                                              ; $69ee: $3f
	xor h                                            ; $69ef: $ac
	pop af                                           ; $69f0: $f1
	rrca                                             ; $69f1: $0f
	db $f4                                           ; $69f2: $f4
	ret                                              ; $69f3: $c9


	ld d, e                                          ; $69f4: $53
	ld c, h                                          ; $69f5: $4c
	ld c, b                                          ; $69f6: $48
	inc [hl]                                         ; $69f7: $34
	inc hl                                           ; $69f8: $23
	ret                                              ; $69f9: $c9


	ld c, b                                          ; $69fa: $48
	and b                                            ; $69fb: $a0
	cpl                                              ; $69fc: $2f
	ld b, e                                          ; $69fd: $43
	add sp, -$2d                                     ; $69fe: $e8 $d3

jr_093_6a00:
	inc de                                           ; $6a00: $13
	ldh a, [$a5]                                     ; $6a01: $f0 $a5
	dec sp                                           ; $6a03: $3b

jr_093_6a04:
	dec a                                            ; $6a04: $3d
	inc [hl]                                         ; $6a05: $34
	ldh a, [rSCX]                                    ; $6a06: $f0 $43
	ldh a, [rAUDTERM]                                ; $6a08: $f0 $25
	ld a, [hl-]                                      ; $6a0a: $3a
	ld b, c                                          ; $6a0b: $41
	ld b, h                                          ; $6a0c: $44
	xor b                                            ; $6a0d: $a8
	jp hl                                            ; $6a0e: $e9


	ld h, e                                          ; $6a0f: $63
	and c                                            ; $6a10: $a1
	cpl                                              ; $6a11: $2f
	ld b, e                                          ; $6a12: $43
	ldh a, [c]                                       ; $6a13: $f2
	ld c, h                                          ; $6a14: $4c
	jr c, jr_093_6a04                                ; $6a15: $38 $ed

jr_093_6a17:
	ld l, a                                          ; $6a17: $6f
	ld h, c                                          ; $6a18: $61
	ld c, d                                          ; $6a19: $4a
	inc de                                           ; $6a1a: $13
	ldh a, [$fa]                                     ; $6a1b: $f0 $fa
	ld b, c                                          ; $6a1d: $41
	ld c, d                                          ; $6a1e: $4a
	ld l, h                                          ; $6a1f: $6c
	ld a, [hl-]                                      ; $6a20: $3a
	ld b, l                                          ; $6a21: $45
	xor b                                            ; $6a22: $a8

jr_093_6a23:
	ldh a, [$80]                                     ; $6a23: $f0 $80
	ldh a, [$c5]                                     ; $6a25: $f0 $c5
	inc [hl]                                         ; $6a27: $34
	ldh a, [$fa]                                     ; $6a28: $f0 $fa
	ld l, h                                          ; $6a2a: $6c
	ld l, [hl]                                       ; $6a2b: $6e
	ld d, c                                          ; $6a2c: $51
	jr c, jr_093_6a6b                                ; $6a2d: $38 $3c

	ld d, b                                          ; $6a2f: $50
	and b                                            ; $6a30: $a0
	ldh a, [$a5]                                     ; $6a31: $f0 $a5
	ldh a, [rSCX]                                    ; $6a33: $f0 $43
	ld d, e                                          ; $6a35: $53
	inc de                                           ; $6a36: $13
	ldh a, [$64]                                     ; $6a37: $f0 $64
	jr c, @+$3c                                      ; $6a39: $38 $3a

	ld b, c                                          ; $6a3b: $41
	ld e, e                                          ; $6a3c: $5b
	ld d, [hl]                                       ; $6a3d: $56
	ld a, [hl-]                                      ; $6a3e: $3a
	ld d, l                                          ; $6a3f: $55
	ccf                                              ; $6a40: $3f
	xor h                                            ; $6a41: $ac
	pop af                                           ; $6a42: $f1
	rrca                                             ; $6a43: $0f
	db $f4                                           ; $6a44: $f4
	ret                                              ; $6a45: $c9


	ld d, e                                          ; $6a46: $53
	db $ed                                           ; $6a47: $ed
	ld l, b                                          ; $6a48: $68
	ld a, [hl-]                                      ; $6a49: $3a
	ld b, d                                          ; $6a4a: $42
	ld b, l                                          ; $6a4b: $45
	and b                                            ; $6a4c: $a0
	ldh a, [$a5]                                     ; $6a4d: $f0 $a5
	ldh a, [rSCX]                                    ; $6a4f: $f0 $43
	ld d, e                                          ; $6a51: $53
	inc de                                           ; $6a52: $13
	ldh a, [$64]                                     ; $6a53: $f0 $64
	jr c, jr_093_6a91                                ; $6a55: $38 $3a

	ld b, c                                          ; $6a57: $41
	ld e, e                                          ; $6a58: $5b
	ld d, [hl]                                       ; $6a59: $56
	ld a, [hl-]                                      ; $6a5a: $3a
	ld d, l                                          ; $6a5b: $55
	ccf                                              ; $6a5c: $3f
	xor h                                            ; $6a5d: $ac
	pop af                                           ; $6a5e: $f1
	rrca                                             ; $6a5f: $0f
	db $f4                                           ; $6a60: $f4
	ret                                              ; $6a61: $c9


	ld d, e                                          ; $6a62: $53
	inc [hl]                                         ; $6a63: $34
	db $ed                                           ; $6a64: $ed
	ld l, b                                          ; $6a65: $68
	ld a, [hl-]                                      ; $6a66: $3a
	ld b, d                                          ; $6a67: $42
	ld b, l                                          ; $6a68: $45
	and b                                            ; $6a69: $a0
	cpl                                              ; $6a6a: $2f

jr_093_6a6b:
	ld b, e                                          ; $6a6b: $43
	add sp, -$2d                                     ; $6a6c: $e8 $d3
	inc de                                           ; $6a6e: $13
	ldh a, [$a5]                                     ; $6a6f: $f0 $a5
	dec sp                                           ; $6a71: $3b
	dec a                                            ; $6a72: $3d
	inc [hl]                                         ; $6a73: $34
	ldh a, [rSCX]                                    ; $6a74: $f0 $43
	ldh a, [rAUDTERM]                                ; $6a76: $f0 $25
	ld a, [hl-]                                      ; $6a78: $3a
	ld b, c                                          ; $6a79: $41
	ld b, h                                          ; $6a7a: $44
	xor b                                            ; $6a7b: $a8
	add sp, -$7b                                     ; $6a7c: $e8 $85
	and c                                            ; $6a7e: $a1
	xor $1f                                          ; $6a7f: $ee $1f
	inc [hl]                                         ; $6a81: $34
	pop af                                           ; $6a82: $f1
	add hl, sp                                       ; $6a83: $39
	ld a, $47                                        ; $6a84: $3e $47
	inc de                                           ; $6a86: $13
	ldh a, [$fa]                                     ; $6a87: $f0 $fa
	ld b, c                                          ; $6a89: $41
	ld c, d                                          ; $6a8a: $4a
	ld l, h                                          ; $6a8b: $6c
	ld c, [hl]                                       ; $6a8c: $4e
	ld c, h                                          ; $6a8d: $4c
	xor b                                            ; $6a8e: $a8
	xor $05                                          ; $6a8f: $ee $05

jr_093_6a91:
	inc a                                            ; $6a91: $3c
	ld c, a                                          ; $6a92: $4f
	ld a, $41                                        ; $6a93: $3e $41
	ld a, [hl-]                                      ; $6a95: $3a
	jr c, jr_093_6af5                                ; $6a96: $38 $5d

	ld e, d                                          ; $6a98: $5a
	ld c, b                                          ; $6a99: $48
	and b                                            ; $6a9a: $a0
	cpl                                              ; $6a9b: $2f
	ld b, e                                          ; $6a9c: $43
	add a                                            ; $6a9d: $87
	ldh a, [$5b]                                     ; $6a9e: $f0 $5b
	ldh a, [$5e]                                     ; $6aa0: $f0 $5e
	ld b, h                                          ; $6aa2: $44
	ld b, l                                          ; $6aa3: $45
	xor h                                            ; $6aa4: $ac
	db $ed                                           ; $6aa5: $ed
	cp c                                             ; $6aa6: $b9
	ld b, a                                          ; $6aa7: $47

Call_093_6aa8:
	ldh a, [$fa]                                     ; $6aa8: $f0 $fa
	ld [hl], c                                       ; $6aaa: $71
	ld c, [hl]                                       ; $6aab: $4e
	inc a                                            ; $6aac: $3c
	ld d, b                                          ; $6aad: $50
	and b                                            ; $6aae: $a0
	db $eb                                           ; $6aaf: $eb
	add [hl]                                         ; $6ab0: $86
	xor h                                            ; $6ab1: $ac
	ld l, d                                          ; $6ab2: $6a
	inc [hl]                                         ; $6ab3: $34
	ldh a, [$ea]                                     ; $6ab4: $f0 $ea
	ld a, $3f                                        ; $6ab6: $3e $3f
	ld c, [hl]                                       ; $6ab8: $4e
	ld b, c                                          ; $6ab9: $41
	ld c, d                                          ; $6aba: $4a
	ld a, $66                                        ; $6abb: $3e $66
	add hl, sp                                       ; $6abd: $39
	and b                                            ; $6abe: $a0
	cpl                                              ; $6abf: $2f
	ld b, e                                          ; $6ac0: $43
	ld b, [hl]                                       ; $6ac1: $46
	ld [hl], h                                       ; $6ac2: $74
	inc [hl]                                         ; $6ac3: $34
	ldh a, [$ea]                                     ; $6ac4: $f0 $ea
	ld b, h                                          ; $6ac6: $44
	ld b, l                                          ; $6ac7: $45
	and b                                            ; $6ac8: $a0
	ld b, h                                          ; $6ac9: $44
	dec sp                                           ; $6aca: $3b
	dec a                                            ; $6acb: $3d
	ld d, b                                          ; $6acc: $50
	ld e, b                                          ; $6acd: $58
	xor h                                            ; $6ace: $ac
	ld d, h                                          ; $6acf: $54
	ld c, l                                          ; $6ad0: $4d
	inc a                                            ; $6ad1: $3c
	ld d, b                                          ; $6ad2: $50
	xor $06                                          ; $6ad3: $ee $06
	ld b, a                                          ; $6ad5: $47
	inc de                                           ; $6ad6: $13
	add sp, -$45                                     ; $6ad7: $e8 $bb
	and b                                            ; $6ad9: $a0
	cpl                                              ; $6ada: $2f
	ld b, e                                          ; $6adb: $43
	db $eb                                           ; $6adc: $eb
	ld [bc], a                                       ; $6add: $02
	xor h                                            ; $6ade: $ac
	ld d, h                                          ; $6adf: $54
	ld d, h                                          ; $6ae0: $54
	ld h, d                                          ; $6ae1: $62
	ldh a, [c]                                       ; $6ae2: $f2
	ld a, a                                          ; $6ae3: $7f
	ld c, l                                          ; $6ae4: $4d
	ld c, [hl]                                       ; $6ae5: $4e
	ld h, e                                          ; $6ae6: $63
	ld e, l                                          ; $6ae7: $5d
	ld b, a                                          ; $6ae8: $47
	ld c, e                                          ; $6ae9: $4b
	inc de                                           ; $6aea: $13
	jr c, jr_093_6b29                                ; $6aeb: $38 $3c

	ld a, [hl-]                                      ; $6aed: $3a
	jr c, jr_093_6b2c                                ; $6aee: $38 $3c

	ld d, b                                          ; $6af0: $50
	ld c, b                                          ; $6af1: $48
	and b                                            ; $6af2: $a0
	db $ec                                           ; $6af3: $ec
	inc e                                            ; $6af4: $1c

jr_093_6af5:
	xor h                                            ; $6af5: $ac
	db $ec                                           ; $6af6: $ec
	reti                                             ; $6af7: $d9


	ldh a, [rAUD1LOW]                                ; $6af8: $f0 $13
	ldh a, [$63]                                     ; $6afa: $f0 $63
	ld b, l                                          ; $6afc: $45
	ld c, h                                          ; $6afd: $4c
	add l                                            ; $6afe: $85
	ld c, b                                          ; $6aff: $48
	and b                                            ; $6b00: $a0
	cpl                                              ; $6b01: $2f
	ld b, e                                          ; $6b02: $43
	ldh a, [$5c]                                     ; $6b03: $f0 $5c
	jr c, jr_093_6b53                                ; $6b05: $38 $4c

	and b                                            ; $6b07: $a0
	jr c, jr_093_6b42                                ; $6b08: $38 $38

	ld b, d                                          ; $6b0a: $42
	ld b, l                                          ; $6b0b: $45
	inc [hl]                                         ; $6b0c: $34
	ldh a, [$34]                                     ; $6b0d: $f0 $34
	ld b, a                                          ; $6b0f: $47
	xor l                                            ; $6b10: $ad
	ld b, b                                          ; $6b11: $40
	ld c, l                                          ; $6b12: $4d
	ld e, e                                          ; $6b13: $5b
	ld d, [hl]                                       ; $6b14: $56
	inc [hl]                                         ; $6b15: $34
	ld h, a                                          ; $6b16: $67
	ld d, l                                          ; $6b17: $55
	ld c, h                                          ; $6b18: $4c
	and b                                            ; $6b19: $a0
	xor $1f                                          ; $6b1a: $ee $1f
	inc [hl]                                         ; $6b1c: $34
	pop af                                           ; $6b1d: $f1
	add hl, sp                                       ; $6b1e: $39
	ld a, $47                                        ; $6b1f: $3e $47
	inc de                                           ; $6b21: $13
	ldh a, [$fa]                                     ; $6b22: $f0 $fa
	ld b, c                                          ; $6b24: $41
	ld c, d                                          ; $6b25: $4a
	ld l, h                                          ; $6b26: $6c
	ld b, c                                          ; $6b27: $41
	ld c, h                                          ; $6b28: $4c

jr_093_6b29:
	xor b                                            ; $6b29: $a8
	xor $05                                          ; $6b2a: $ee $05

jr_093_6b2c:
	inc a                                            ; $6b2c: $3c
	ld c, a                                          ; $6b2d: $4f
	ld a, $41                                        ; $6b2e: $3e $41
	ld a, [hl-]                                      ; $6b30: $3a
	jr c, jr_093_6b90                                ; $6b31: $38 $5d

	ld e, d                                          ; $6b33: $5a
	ld c, b                                          ; $6b34: $48
	and b                                            ; $6b35: $a0
	ld e, e                                          ; $6b36: $5b
	ld d, [hl]                                       ; $6b37: $56
	ld b, [hl]                                       ; $6b38: $46
	ld e, b                                          ; $6b39: $58
	xor h                                            ; $6b3a: $ac
	ld d, h                                          ; $6b3b: $54
	ld c, l                                          ; $6b3c: $4d
	inc a                                            ; $6b3d: $3c
	ld d, b                                          ; $6b3e: $50
	xor $06                                          ; $6b3f: $ee $06
	ld b, a                                          ; $6b41: $47

jr_093_6b42:
	inc de                                           ; $6b42: $13
	add sp, -$45                                     ; $6b43: $e8 $bb
	and b                                            ; $6b45: $a0
	ld b, b                                          ; $6b46: $40
	ld c, l                                          ; $6b47: $4d
	ld c, a                                          ; $6b48: $4f
	call c, $eba8                                    ; $6b49: $dc $a8 $eb
	inc [hl]                                         ; $6b4c: $34
	inc [hl]                                         ; $6b4d: $34
	ld [$a0b0], a                                    ; $6b4e: $ea $b0 $a0
	jr c, jr_093_6b8b                                ; $6b51: $38 $38

jr_093_6b53:
	ld b, l                                          ; $6b53: $45
	inc [hl]                                         ; $6b54: $34
	ldh a, [$34]                                     ; $6b55: $f0 $34
	ld b, a                                          ; $6b57: $47
	xor l                                            ; $6b58: $ad
	ld b, b                                          ; $6b59: $40
	ld c, l                                          ; $6b5a: $4d
	ld e, e                                          ; $6b5b: $5b
	ld d, [hl]                                       ; $6b5c: $56
	inc [hl]                                         ; $6b5d: $34
	ld h, a                                          ; $6b5e: $67
	ld d, l                                          ; $6b5f: $55
	ld c, h                                          ; $6b60: $4c
	and b                                            ; $6b61: $a0
	xor $1f                                          ; $6b62: $ee $1f
	inc [hl]                                         ; $6b64: $34
	pop af                                           ; $6b65: $f1
	add hl, sp                                       ; $6b66: $39
	ld a, $47                                        ; $6b67: $3e $47
	inc de                                           ; $6b69: $13
	ldh a, [$fa]                                     ; $6b6a: $f0 $fa
	ld b, c                                          ; $6b6c: $41
	ld c, d                                          ; $6b6d: $4a
	ld l, h                                          ; $6b6e: $6c
	ld c, [hl]                                       ; $6b6f: $4e
	ld c, h                                          ; $6b70: $4c
	xor b                                            ; $6b71: $a8
	xor $05                                          ; $6b72: $ee $05
	inc a                                            ; $6b74: $3c
	ld c, a                                          ; $6b75: $4f
	ld a, $41                                        ; $6b76: $3e $41
	ld a, [hl-]                                      ; $6b78: $3a
	jr c, jr_093_6bd8                                ; $6b79: $38 $5d

	ld e, d                                          ; $6b7b: $5a
	xor l                                            ; $6b7c: $ad
	jp hl                                            ; $6b7d: $e9


	ld e, h                                          ; $6b7e: $5c
	and b                                            ; $6b7f: $a0
	cpl                                              ; $6b80: $2f
	ld b, e                                          ; $6b81: $43
	ld e, [hl]                                       ; $6b82: $5e
	add l                                            ; $6b83: $85
	xor h                                            ; $6b84: $ac
	jp hl                                            ; $6b85: $e9


	or e                                             ; $6b86: $b3
	and c                                            ; $6b87: $a1
	ldh a, [$08]                                     ; $6b88: $f0 $08
	inc a                                            ; $6b8a: $3c

jr_093_6b8b:
	ld b, a                                          ; $6b8b: $47
	ld c, a                                          ; $6b8c: $4f
	xor h                                            ; $6b8d: $ac
	adc $f3                                          ; $6b8e: $ce $f3

jr_093_6b90:
	ld b, l                                          ; $6b90: $45
	ld d, b                                          ; $6b91: $50
	ld a, [hl-]                                      ; $6b92: $3a
	jr c, jr_093_6bde                                ; $6b93: $38 $49

	ld c, h                                          ; $6b95: $4c
	xor b                                            ; $6b96: $a8
	or h                                             ; $6b97: $b4
	and b                                            ; $6b98: $a0
	ld b, b                                          ; $6b99: $40
	ld c, l                                          ; $6b9a: $4d
	ld a, [hl-]                                      ; $6b9b: $3a
	ld d, b                                          ; $6b9c: $50
	inc [hl]                                         ; $6b9d: $34
	ld b, b                                          ; $6b9e: $40
	ld d, h                                          ; $6b9f: $54
	ld b, a                                          ; $6ba0: $47
	jr c, jr_093_6bde                                ; $6ba1: $38 $3b

	ldh a, [$36]                                     ; $6ba3: $f0 $36
	jr c, jr_093_6bba                                ; $6ba5: $38 $13

	pop af                                           ; $6ba7: $f1
	add c                                            ; $6ba8: $81
	ld h, c                                          ; $6ba9: $61
	ccf                                              ; $6baa: $3f
	ld c, [hl]                                       ; $6bab: $4e
	inc a                                            ; $6bac: $3c
	ld d, b                                          ; $6bad: $50
	inc [hl]                                         ; $6bae: $34
	pop af                                           ; $6baf: $f1
	add hl, hl                                       ; $6bb0: $29
	ld a, $5d                                        ; $6bb1: $3e $5d
	ld d, a                                          ; $6bb3: $57
	ld d, [hl]                                       ; $6bb4: $56
	inc de                                           ; $6bb5: $13
	di                                               ; $6bb6: $f3
	dec hl                                           ; $6bb7: $2b
	dec sp                                           ; $6bb8: $3b
	ccf                                              ; $6bb9: $3f

jr_093_6bba:
	ld h, a                                          ; $6bba: $67
	ld d, l                                          ; $6bbb: $55
	ld h, e                                          ; $6bbc: $63
	ld b, l                                          ; $6bbd: $45
	and b                                            ; $6bbe: $a0
	cpl                                              ; $6bbf: $2f
	ld b, e                                          ; $6bc0: $43
	ld b, b                                          ; $6bc1: $40
	add hl, sp                                       ; $6bc2: $39
	ld c, b                                          ; $6bc3: $48
	and b                                            ; $6bc4: $a0
	cpl                                              ; $6bc5: $2f
	ld [hl-], a                                      ; $6bc6: $32
	sbc $f3                                          ; $6bc7: $de $f3
	dec hl                                           ; $6bc9: $2b
	dec sp                                           ; $6bca: $3b
	ccf                                              ; $6bcb: $3f
	inc de                                           ; $6bcc: $13
	ld h, a                                          ; $6bcd: $67
	dec sp                                           ; $6bce: $3b
	dec a                                            ; $6bcf: $3d
	ld b, l                                          ; $6bd0: $45
	and e                                            ; $6bd1: $a3
	db $ec                                           ; $6bd2: $ec
	ld e, a                                          ; $6bd3: $5f
	ld [hl], d                                       ; $6bd4: $72
	ccf                                              ; $6bd5: $3f
	dec a                                            ; $6bd6: $3d
	ld b, l                                          ; $6bd7: $45

jr_093_6bd8:
	xor b                                            ; $6bd8: $a8
	ld [$a0b3], a                                    ; $6bd9: $ea $b3 $a0
	cpl                                              ; $6bdc: $2f
	ld b, e                                          ; $6bdd: $43

jr_093_6bde:
	ld b, [hl]                                       ; $6bde: $46
	dec sp                                           ; $6bdf: $3b
	inc [hl]                                         ; $6be0: $34
	db $eb                                           ; $6be1: $eb
	ld a, [$eaa8]                                    ; $6be2: $fa $a8 $ea
	rra                                              ; $6be5: $1f
	xor b                                            ; $6be6: $a8
	ld b, [hl]                                       ; $6be7: $46
	ld d, a                                          ; $6be8: $57
	ld d, e                                          ; $6be9: $53
	ld c, c                                          ; $6bea: $49
	add hl, sp                                       ; $6beb: $39
	and b                                            ; $6bec: $a0
	pop af                                           ; $6bed: $f1
	ld [hl], a                                       ; $6bee: $77
	db $f4                                           ; $6bef: $f4
	sbc d                                            ; $6bf0: $9a
	ld c, e                                          ; $6bf1: $4b
	xor h                                            ; $6bf2: $ac
	ld b, l                                          ; $6bf3: $45
	ld d, l                                          ; $6bf4: $55
	ldh a, [rTAC]                                    ; $6bf5: $f0 $07
	ld b, c                                          ; $6bf7: $41
	ld a, [hl-]                                      ; $6bf8: $3a
	jr c, jr_093_6c58                                ; $6bf9: $38 $5d

	ld e, d                                          ; $6bfb: $5a
	xor h                                            ; $6bfc: $ac
	ld a, [hl-]                                      ; $6bfd: $3a
	ld b, c                                          ; $6bfe: $41
	inc a                                            ; $6bff: $3c
	di                                               ; $6c00: $f3
	ld a, c                                          ; $6c01: $79
	pop af                                           ; $6c02: $f1
	ld l, e                                          ; $6c03: $6b
	ld a, $3a                                        ; $6c04: $3e $3a
	ld d, e                                          ; $6c06: $53
	ld d, b                                          ; $6c07: $50
	inc de                                           ; $6c08: $13
	pop af                                           ; $6c09: $f1
	ld h, [hl]                                       ; $6c0a: $66
	jr c, jr_093_6c6e                                ; $6c0b: $38 $61

	ld d, [hl]                                       ; $6c0d: $56
	dec sp                                           ; $6c0e: $3b
	dec a                                            ; $6c0f: $3d
	and b                                            ; $6c10: $a0
	cpl                                              ; $6c11: $2f
	ld b, e                                          ; $6c12: $43
	ld b, l                                          ; $6c13: $45
	ld d, l                                          ; $6c14: $55

jr_093_6c15:
	inc [hl]                                         ; $6c15: $34
	ldh a, [rTAC]                                    ; $6c16: $f0 $07
	inc a                                            ; $6c18: $3c
	ld d, b                                          ; $6c19: $50
	ld a, [hl-]                                      ; $6c1a: $3a
	jr c, jr_093_6c59                                ; $6c1b: $38 $3c

	ld c, b                                          ; $6c1d: $48
	and b                                            ; $6c1e: $a0
	db $eb                                           ; $6c1f: $eb
	add [hl]                                         ; $6c20: $86
	xor l                                            ; $6c21: $ad
	ld l, d                                          ; $6c22: $6a
	inc a                                            ; $6c23: $3c
	ld d, b                                          ; $6c24: $50
	xor h                                            ; $6c25: $ac
	add sp, -$44                                     ; $6c26: $e8 $bc
	and c                                            ; $6c28: $a1
	cpl                                              ; $6c29: $2f
	ld b, e                                          ; $6c2a: $43
	jp hl                                            ; $6c2b: $e9


	ld h, h                                          ; $6c2c: $64
	xor b                                            ; $6c2d: $a8
	add sp, -$43                                     ; $6c2e: $e8 $bd
	inc de                                           ; $6c30: $13
	ld b, [hl]                                       ; $6c31: $46
	ld c, [hl]                                       ; $6c32: $4e
	ld a, $48                                        ; $6c33: $3e $48
	and b                                            ; $6c35: $a0
	pop af                                           ; $6c36: $f1
	ld [hl], a                                       ; $6c37: $77
	db $f4                                           ; $6c38: $f4
	sbc d                                            ; $6c39: $9a
	ld c, e                                          ; $6c3a: $4b
	xor h                                            ; $6c3b: $ac
	ld b, l                                          ; $6c3c: $45
	ld d, l                                          ; $6c3d: $55
	ldh a, [rTAC]                                    ; $6c3e: $f0 $07
	ld b, c                                          ; $6c40: $41
	ld a, [hl-]                                      ; $6c41: $3a
	jr c, jr_093_6ca1                                ; $6c42: $38 $5d

	ld e, d                                          ; $6c44: $5a
	xor h                                            ; $6c45: $ac
	ld a, [hl-]                                      ; $6c46: $3a
	ld b, c                                          ; $6c47: $41
	inc a                                            ; $6c48: $3c
	db $fc                                           ; $6c49: $fc
	inc sp                                           ; $6c4a: $33
	ld b, b                                          ; $6c4b: $40
	add hl, sp                                       ; $6c4c: $39
	ld c, d                                          ; $6c4d: $4a
	xor h                                            ; $6c4e: $ac
	inc a                                            ; $6c4f: $3c
	dec sp                                           ; $6c50: $3b
	ld d, h                                          ; $6c51: $54
	db $eb                                           ; $6c52: $eb
	ld e, a                                          ; $6c53: $5f
	and b                                            ; $6c54: $a0
	cpl                                              ; $6c55: $2f
	ld b, e                                          ; $6c56: $43
	db $fc                                           ; $6c57: $fc

jr_093_6c58:
	inc sp                                           ; $6c58: $33

jr_093_6c59:
	ld b, b                                          ; $6c59: $40
	add hl, sp                                       ; $6c5a: $39
	ld c, d                                          ; $6c5b: $4a
	ld c, h                                          ; $6c5c: $4c
	ld c, b                                          ; $6c5d: $48
	and b                                            ; $6c5e: $a0
	db $eb                                           ; $6c5f: $eb
	add [hl]                                         ; $6c60: $86
	xor l                                            ; $6c61: $ad
	ld l, d                                          ; $6c62: $6a
	inc a                                            ; $6c63: $3c
	ld d, b                                          ; $6c64: $50
	xor h                                            ; $6c65: $ac
	ldh a, [rBGP]                                    ; $6c66: $f0 $47
	ldh a, [$2a]                                     ; $6c68: $f0 $2a
	ld b, d                                          ; $6c6a: $42
	di                                               ; $6c6b: $f3
	ld e, $f0                                        ; $6c6c: $1e $f0

jr_093_6c6e:
	ld b, $80                                        ; $6c6e: $06 $80
	inc a                                            ; $6c70: $3c
	ld a, [hl-]                                      ; $6c71: $3a
	jr c, jr_093_6c15                                ; $6c72: $38 $a1

	db $ec                                           ; $6c74: $ec
	ld e, a                                          ; $6c75: $5f
	ld [hl], d                                       ; $6c76: $72
	ccf                                              ; $6c77: $3f
	dec a                                            ; $6c78: $3d
	ld b, l                                          ; $6c79: $45
	and b                                            ; $6c7a: $a0
	cpl                                              ; $6c7b: $2f
	ld b, e                                          ; $6c7c: $43
	ld b, [hl]                                       ; $6c7d: $46
	dec sp                                           ; $6c7e: $3b
	inc [hl]                                         ; $6c7f: $34
	db $eb                                           ; $6c80: $eb
	ld a, [$ea13]                                    ; $6c81: $fa $13 $ea
	rra                                              ; $6c84: $1f
	xor b                                            ; $6c85: $a8
	db $eb                                           ; $6c86: $eb
	ld d, b                                          ; $6c87: $50
	and c                                            ; $6c88: $a1
	ldh a, [rAUDVOL]                                 ; $6c89: $f0 $24
	ld d, e                                          ; $6c8b: $53
	inc [hl]                                         ; $6c8c: $34
	pop af                                           ; $6c8d: $f1
	ld a, [$553e]                                    ; $6c8e: $fa $3e $55
	ccf                                              ; $6c91: $3f
	xor h                                            ; $6c92: $ac
	jp nc, $45ac                                     ; $6c93: $d2 $ac $45

	ld d, l                                          ; $6c96: $55
	ldh a, [rTAC]                                    ; $6c97: $f0 $07
	inc a                                            ; $6c99: $3c
	ld b, c                                          ; $6c9a: $41
	ld a, [hl-]                                      ; $6c9b: $3a
	inc a                                            ; $6c9c: $3c
	dec sp                                           ; $6c9d: $3b
	dec a                                            ; $6c9e: $3d
	ld h, e                                          ; $6c9f: $63
	and b                                            ; $6ca0: $a0

jr_093_6ca1:
	cpl                                              ; $6ca1: $2f
	ld b, e                                          ; $6ca2: $43
	ld b, b                                          ; $6ca3: $40
	add hl, sp                                       ; $6ca4: $39
	xor l                                            ; $6ca5: $ad
	ld [hl-], a                                      ; $6ca6: $32
	ld b, b                                          ; $6ca7: $40
	ld b, c                                          ; $6ca8: $41
	ld a, [hl-]                                      ; $6ca9: $3a
	ld b, a                                          ; $6caa: $47
	pop af                                           ; $6cab: $f1

jr_093_6cac:
	ld a, [$3c3e]                                    ; $6cac: $fa $3e $3c
	dec sp                                           ; $6caf: $3b
	dec a                                            ; $6cb0: $3d
	inc a                                            ; $6cb1: $3c
	ld a, [hl-]                                      ; $6cb2: $3a
	ld [hl], $33                                     ; $6cb3: $36 $33
	add hl, bc                                       ; $6cb5: $09
	cpl                                              ; $6cb6: $2f
	ld b, e                                          ; $6cb7: $43
	ldh a, [rAUD4ENV]                                ; $6cb8: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6cba: $f0 $23
	jr c, jr_093_6cac                                ; $6cbc: $38 $ee

	ld a, [hl+]                                      ; $6cbe: $2a
	inc de                                           ; $6cbf: $13
	jp hl                                            ; $6cc0: $e9


	add $ac                                          ; $6cc1: $c6 $ac
	jp hl                                            ; $6cc3: $e9


	ld b, b                                          ; $6cc4: $40
	and c                                            ; $6cc5: $a1
	ld e, e                                          ; $6cc6: $5b
	inc [hl]                                         ; $6cc7: $34
	xor $2a                                          ; $6cc8: $ee $2a
	ld a, [hl-]                                      ; $6cca: $3a
	ld b, d                                          ; $6ccb: $42
	xor c                                            ; $6ccc: $a9
	ret                                              ; $6ccd: $c9


	ldh a, [rIF]                                     ; $6cce: $f0 $0f
	add e                                            ; $6cd0: $83
	inc a                                            ; $6cd1: $3c
	ld a, [hl-]                                      ; $6cd2: $3a
	ld c, b                                          ; $6cd3: $48
	and b                                            ; $6cd4: $a0
	cpl                                              ; $6cd5: $2f
	ld b, e                                          ; $6cd6: $43
	db $eb                                           ; $6cd7: $eb
	ld a, [$1353]                                    ; $6cd8: $fa $53 $13
	adc e                                            ; $6cdb: $8b
	ld e, h                                          ; $6cdc: $5c
	ld b, b                                          ; $6cdd: $40
	add hl, sp                                       ; $6cde: $39
	ld a, [hl-]                                      ; $6cdf: $3a
	xor $2a                                          ; $6ce0: $ee $2a
	ld b, h                                          ; $6ce2: $44
	ld b, l                                          ; $6ce3: $45
	and b                                            ; $6ce4: $a0
	ld e, d                                          ; $6ce5: $5a
	ld b, c                                          ; $6ce6: $41
	ld a, [hl-]                                      ; $6ce7: $3a
	ld b, d                                          ; $6ce8: $42
	and c                                            ; $6ce9: $a1
	cpl                                              ; $6cea: $2f
	ld b, e                                          ; $6ceb: $43
	ldh a, [$6d]                                     ; $6cec: $f0 $6d
	ld e, c                                          ; $6cee: $59
	ldh a, [$27]                                     ; $6cef: $f0 $27
	ld h, d                                          ; $6cf1: $62
	ld a, $3f                                        ; $6cf2: $3e $3f
	xor h                                            ; $6cf4: $ac
	ld b, b                                          ; $6cf5: $40
	ld b, d                                          ; $6cf6: $42
	add h                                            ; $6cf7: $84
	ld b, d                                          ; $6cf8: $42
	ldh a, [$99]                                     ; $6cf9: $f0 $99
	sub b                                            ; $6cfb: $90
	ldh a, [$7b]                                     ; $6cfc: $f0 $7b
	ld h, l                                          ; $6cfe: $65
	add e                                            ; $6cff: $83
	ld h, d                                          ; $6d00: $62
	inc de                                           ; $6d01: $13
	pop af                                           ; $6d02: $f1
	rst JumpTable                                          ; $6d03: $c7
	ldh a, [hDisp0_WY]                                     ; $6d04: $f0 $88
	ld d, c                                          ; $6d06: $51
	ld c, [hl]                                       ; $6d07: $4e
	xor $2a                                          ; $6d08: $ee $2a
	ld b, h                                          ; $6d0a: $44
	ld b, l                                          ; $6d0b: $45
	and b                                            ; $6d0c: $a0
	ldh a, [$5a]                                     ; $6d0d: $f0 $5a
	ld e, c                                          ; $6d0f: $59
	inc [hl]                                         ; $6d10: $34
	ldh a, [rAUD4ENV]                                ; $6d11: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6d13: $f0 $23
	ld b, b                                          ; $6d15: $40
	add hl, sp                                       ; $6d16: $39
	xor b                                            ; $6d17: $a8
	ld l, [hl]                                       ; $6d18: $6e
	dec sp                                           ; $6d19: $3b
	ccf                                              ; $6d1a: $3f
	ld l, h                                          ; $6d1b: $6c
	ld c, [hl]                                       ; $6d1c: $4e
	ld c, h                                          ; $6d1d: $4c
	and b                                            ; $6d1e: $a0
	pop af                                           ; $6d1f: $f1
	ld d, d                                          ; $6d20: $52
	cp e                                             ; $6d21: $bb
	ld c, h                                          ; $6d22: $4c
	xor b                                            ; $6d23: $a8
	ld l, a                                          ; $6d24: $6f
	dec sp                                           ; $6d25: $3b
	ccf                                              ; $6d26: $3f
	ldh a, [$99]                                     ; $6d27: $f0 $99
	sub b                                            ; $6d29: $90
	ldh a, [$7b]                                     ; $6d2a: $f0 $7b
	ld h, l                                          ; $6d2c: $65
	add e                                            ; $6d2d: $83
	ld b, [hl]                                       ; $6d2e: $46
	ld c, [hl]                                       ; $6d2f: $4e
	ld b, c                                          ; $6d30: $41
	ld b, h                                          ; $6d31: $44
	ld c, h                                          ; $6d32: $4c
	and b                                            ; $6d33: $a0
	ld c, h                                          ; $6d34: $4c
	ld e, [hl]                                       ; $6d35: $5e
	ld c, h                                          ; $6d36: $4c
	ld e, [hl]                                       ; $6d37: $5e
	xor h                                            ; $6d38: $ac
	ld d, $4f                                        ; $6d39: $16 $4f
	ld l, [hl]                                       ; $6d3b: $6e
	dec sp                                           ; $6d3c: $3b
	ccf                                              ; $6d3d: $3f
	ld b, l                                          ; $6d3e: $45
	and b                                            ; $6d3f: $a0
	db $eb                                           ; $6d40: $eb
	add [hl]                                         ; $6d41: $86
	xor l                                            ; $6d42: $ad
	ld l, d                                          ; $6d43: $6a
	inc a                                            ; $6d44: $3c
	ld d, b                                          ; $6d45: $50
	xor h                                            ; $6d46: $ac
	ldh a, [rBGP]                                    ; $6d47: $f0 $47
	ldh a, [$2a]                                     ; $6d49: $f0 $2a
	ld b, d                                          ; $6d4b: $42
	di                                               ; $6d4c: $f3
	ld e, $f0                                        ; $6d4d: $1e $f0
	ld b, $34                                        ; $6d4f: $06 $34
	add b                                            ; $6d51: $80
	inc a                                            ; $6d52: $3c
	ld a, [hl-]                                      ; $6d53: $3a
	jr c, jr_093_6d9b                                ; $6d54: $38 $45

	ld c, h                                          ; $6d56: $4c
	and b                                            ; $6d57: $a0
	cpl                                              ; $6d58: $2f
	ld b, e                                          ; $6d59: $43
	jp hl                                            ; $6d5a: $e9


	ld h, h                                          ; $6d5b: $64
	xor b                                            ; $6d5c: $a8
	ld d, d                                          ; $6d5d: $52
	ld b, h                                          ; $6d5e: $44
	inc [hl]                                         ; $6d5f: $34
	ld d, h                                          ; $6d60: $54
	ld d, h                                          ; $6d61: $54
	ld b, a                                          ; $6d62: $47
	jr c, jr_093_6d9f                                ; $6d63: $38 $3a

	jr c, @+$4b                                      ; $6d65: $38 $49

	inc de                                           ; $6d67: $13
	jr c, jr_093_6dc7                                ; $6d68: $38 $5d

	ld a, [hl-]                                      ; $6d6a: $3a
	jr c, jr_093_6dab                                ; $6d6b: $38 $3e

	ld c, b                                          ; $6d6d: $48
	and b                                            ; $6d6e: $a0
	ld e, [hl]                                       ; $6d6f: $5e
	ld e, c                                          ; $6d70: $59
	inc [hl]                                         ; $6d71: $34
	xor $2a                                          ; $6d72: $ee $2a
	ld a, [hl-]                                      ; $6d74: $3a
	ld b, d                                          ; $6d75: $42
	and c                                            ; $6d76: $a1
	add hl, sp                                       ; $6d77: $39
	ld e, c                                          ; $6d78: $59
	ld b, c                                          ; $6d79: $41
	inc [hl]                                         ; $6d7a: $34
	ld e, d                                          ; $6d7b: $5a
	ld b, c                                          ; $6d7c: $41
	ld a, [hl-]                                      ; $6d7d: $3a
	ld b, d                                          ; $6d7e: $42
	and c                                            ; $6d7f: $a1
	ldh a, [$5a]                                     ; $6d80: $f0 $5a
	ld e, c                                          ; $6d82: $59
	xor h                                            ; $6d83: $ac
	ret                                              ; $6d84: $c9


	ldh a, [rAUD4ENV]                                ; $6d85: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6d87: $f0 $23
	ld b, b                                          ; $6d89: $40
	add hl, sp                                       ; $6d8a: $39
	dec [hl]                                         ; $6d8b: $35
	ld l, [hl]                                       ; $6d8c: $6e
	dec sp                                           ; $6d8d: $3b
	ccf                                              ; $6d8e: $3f
	ld l, h                                          ; $6d8f: $6c
	ld c, [hl]                                       ; $6d90: $4e
	ld c, h                                          ; $6d91: $4c
	and b                                            ; $6d92: $a0
	ldh a, [$80]                                     ; $6d93: $f0 $80
	ldh a, [$c5]                                     ; $6d95: $f0 $c5
	inc [hl]                                         ; $6d97: $34
	cp e                                             ; $6d98: $bb
	ld b, l                                          ; $6d99: $45
	and b                                            ; $6d9a: $a0

jr_093_6d9b:
	ld d, $4f                                        ; $6d9b: $16 $4f
	inc de                                           ; $6d9d: $13
	ld l, [hl]                                       ; $6d9e: $6e

jr_093_6d9f:
	dec sp                                           ; $6d9f: $3b
	ccf                                              ; $6da0: $3f
	ld l, h                                          ; $6da1: $6c
	ccf                                              ; $6da2: $3f
	ld b, l                                          ; $6da3: $45
	and b                                            ; $6da4: $a0
	ld c, h                                          ; $6da5: $4c
	add l                                            ; $6da6: $85
	inc [hl]                                         ; $6da7: $34
	ld d, h                                          ; $6da8: $54
	ld d, h                                          ; $6da9: $54
	ld c, d                                          ; $6daa: $4a

jr_093_6dab:
	ldh a, [rAUD4ENV]                                ; $6dab: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6dad: $f0 $23

jr_093_6daf:
	jr c, jr_093_6dc4                                ; $6daf: $38 $13

	xor $2a                                          ; $6db1: $ee $2a
	ld l, [hl]                                       ; $6db3: $6e
	dec sp                                           ; $6db4: $3b
	ccf                                              ; $6db5: $3f
	ld c, [hl]                                       ; $6db6: $4e
	dec sp                                           ; $6db7: $3b
	ccf                                              ; $6db8: $3f
	inc de                                           ; $6db9: $13
	ldh a, [$0c]                                     ; $6dba: $f0 $0c
	db $ec                                           ; $6dbc: $ec
	ld l, $5d                                        ; $6dbd: $2e $5d
	ld e, d                                          ; $6dbf: $5a
	and c                                            ; $6dc0: $a1
	cpl                                              ; $6dc1: $2f
	ld b, e                                          ; $6dc2: $43
	ld b, [hl]                                       ; $6dc3: $46

jr_093_6dc4:
	dec sp                                           ; $6dc4: $3b
	inc [hl]                                         ; $6dc5: $34
	db $eb                                           ; $6dc6: $eb

jr_093_6dc7:
	ld a, [$eea8]                                    ; $6dc7: $fa $a8 $ee
	rra                                              ; $6dca: $1f
	inc [hl]                                         ; $6dcb: $34
	ld l, [hl]                                       ; $6dcc: $6e
	dec sp                                           ; $6dcd: $3b
	ccf                                              ; $6dce: $3f
	ld c, [hl]                                       ; $6dcf: $4e
	ld b, l                                          ; $6dd0: $45
	and b                                            ; $6dd1: $a0
	ld e, e                                          ; $6dd2: $5b
	ld d, [hl]                                       ; $6dd3: $56
	ld b, [hl]                                       ; $6dd4: $46
	ld e, b                                          ; $6dd5: $58
	xor h                                            ; $6dd6: $ac
	ldh a, [$0a]                                     ; $6dd7: $f0 $0a
	pop af                                           ; $6dd9: $f1
	jr @+$70                                         ; $6dda: $18 $6e

	ld d, a                                          ; $6ddc: $57
	dec a                                            ; $6ddd: $3d
	jr c, jr_093_6e1a                                ; $6dde: $38 $3a

	and b                                            ; $6de0: $a0
	ret                                              ; $6de1: $c9


	db $ed                                           ; $6de2: $ed
	cp c                                             ; $6de3: $b9
	ld d, c                                          ; $6de4: $51
	ldh a, [$cb]                                     ; $6de5: $f0 $cb
	dec a                                            ; $6de7: $3d
	ld c, h                                          ; $6de8: $4c

jr_093_6de9:
	and b                                            ; $6de9: $a0
	ld b, [hl]                                       ; $6dea: $46
	dec sp                                           ; $6deb: $3b
	inc [hl]                                         ; $6dec: $34
	db $eb                                           ; $6ded: $eb
	ld a, [$eaa8]                                    ; $6dee: $fa $a8 $ea
	rra                                              ; $6df1: $1f
	and b                                            ; $6df2: $a0
	cpl                                              ; $6df3: $2f
	ld b, e                                          ; $6df4: $43
	ldh a, [rAUD4ENV]                                ; $6df5: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6df7: $f0 $23
	jr c, jr_093_6de9                                ; $6df9: $38 $ee

	ld a, [hl+]                                      ; $6dfb: $2a
	inc de                                           ; $6dfc: $13
	ld l, [hl]                                       ; $6dfd: $6e
	dec sp                                           ; $6dfe: $3b
	ccf                                              ; $6dff: $3f
	ld c, [hl]                                       ; $6e00: $4e
	dec sp                                           ; $6e01: $3b
	ccf                                              ; $6e02: $3f
	xor h                                            ; $6e03: $ac
	ldh a, [$0c]                                     ; $6e04: $f0 $0c

jr_093_6e06:
	db $ec                                           ; $6e06: $ec
	ld l, $5d                                        ; $6e07: $2e $5d
	ld e, d                                          ; $6e09: $5a
	xor l                                            ; $6e0a: $ad
	db $ec                                           ; $6e0b: $ec
	reti                                             ; $6e0c: $d9


	ld a, d                                          ; $6e0d: $7a
	ld c, [hl]                                       ; $6e0e: $4e
	and b                                            ; $6e0f: $a0
	ld b, [hl]                                       ; $6e10: $46
	dec sp                                           ; $6e11: $3b
	xor h                                            ; $6e12: $ac
	db $eb                                           ; $6e13: $eb
	ld a, [$3b99]                                    ; $6e14: $fa $99 $3b
	ccf                                              ; $6e17: $3f
	ld b, l                                          ; $6e18: $45
	and b                                            ; $6e19: $a0

jr_093_6e1a:
	cpl                                              ; $6e1a: $2f
	ld b, e                                          ; $6e1b: $43
	add hl, sp                                       ; $6e1c: $39
	inc [hl]                                         ; $6e1d: $34
	ldh a, [c]                                       ; $6e1e: $f2
	and e                                            ; $6e1f: $a3
	jr c, jr_093_6e6a                                ; $6e20: $38 $48

	xor h                                            ; $6e22: $ac
	ldh a, [c]                                       ; $6e23: $f2
	and e                                            ; $6e24: $a3
	ld d, c                                          ; $6e25: $51
	ldh a, [$cb]                                     ; $6e26: $f0 $cb
	ld c, [hl]                                       ; $6e28: $4e
	ld c, b                                          ; $6e29: $48
	and b                                            ; $6e2a: $a0
	db $ed                                           ; $6e2b: $ed
	ld e, d                                          ; $6e2c: $5a
	jr c, jr_093_6daf                                ; $6e2d: $38 $80

	ld b, d                                          ; $6e2f: $42
	ldh a, [$2a]                                     ; $6e30: $f0 $2a
	ld b, a                                          ; $6e32: $47
	inc a                                            ; $6e33: $3c
	inc de                                           ; $6e34: $13
	pop af                                           ; $6e35: $f1
	ld [hl], h                                       ; $6e36: $74
	ldh a, [$7c]                                     ; $6e37: $f0 $7c
	ldh a, [rSC]                                     ; $6e39: $f0 $02
	ldh a, [rP1]                                     ; $6e3b: $f0 $00
	ld e, c                                          ; $6e3d: $59
	ld d, e                                          ; $6e3e: $53
	db $f4                                           ; $6e3f: $f4
	add e                                            ; $6e40: $83
	ld e, [hl]                                       ; $6e41: $5e
	ccf                                              ; $6e42: $3f
	ld c, [hl]                                       ; $6e43: $4e
	ld c, h                                          ; $6e44: $4c
	and b                                            ; $6e45: $a0
	cpl                                              ; $6e46: $2f
	ld b, e                                          ; $6e47: $43
	db $eb                                           ; $6e48: $eb
	ld a, [$1342]                                    ; $6e49: $fa $42 $13
	add c                                            ; $6e4c: $81
	ld [hl], l                                       ; $6e4d: $75
	ld a, l                                          ; $6e4e: $7d
	ld b, a                                          ; $6e4f: $47
	ld [hl], d                                       ; $6e50: $72
	ld c, c                                          ; $6e51: $49
	ld c, l                                          ; $6e52: $4d
	ccf                                              ; $6e53: $3f
	db $ec                                           ; $6e54: $ec
	ld l, $45                                        ; $6e55: $2e $45
	and b                                            ; $6e57: $a0
	cpl                                              ; $6e58: $2f
	ld b, e                                          ; $6e59: $43
	ld e, [hl]                                       ; $6e5a: $5e
	ld [hl], $64                                     ; $6e5b: $36 $64
	inc [hl]                                         ; $6e5d: $34
	halt                                             ; $6e5e: $76
	dec [hl]                                         ; $6e5f: $35
	ld [hl+], a                                      ; $6e60: $22
	inc de                                           ; $6e61: $13
	jr c, jr_093_6e98                                ; $6e62: $38 $34

	jr c, jr_093_6ed4                                ; $6e64: $38 $6e

	inc [hl]                                         ; $6e66: $34
	ldh a, [$08]                                     ; $6e67: $f0 $08
	ld d, b                                          ; $6e69: $50

jr_093_6e6a:
	inc [hl]                                         ; $6e6a: $34
	halt                                             ; $6e6b: $76
	ld c, e                                          ; $6e6c: $4b
	inc de                                           ; $6e6d: $13
	sub h                                            ; $6e6e: $94
	ldh a, [$c1]                                     ; $6e6f: $f0 $c1
	pop af                                           ; $6e71: $f1
	ld b, d                                          ; $6e72: $42
	ld b, h                                          ; $6e73: $44
	inc a                                            ; $6e74: $3c
	ld d, b                                          ; $6e75: $50
	ld c, b                                          ; $6e76: $48
	ld [hl+], a                                      ; $6e77: $22
	inc de                                           ; $6e78: $13
	pop af                                           ; $6e79: $f1
	ld l, a                                          ; $6e7a: $6f
	ld b, a                                          ; $6e7b: $47
	ld c, a                                          ; $6e7c: $4f
	ld l, [hl]                                       ; $6e7d: $6e
	ld d, a                                          ; $6e7e: $57
	dec a                                            ; $6e7f: $3d
	jr c, jr_093_6e06                                ; $6e80: $38 $84

	jr c, jr_093_6ed2                                ; $6e82: $38 $4e

	ld b, h                                          ; $6e84: $44
	ld e, a                                          ; $6e85: $5f
	add hl, sp                                       ; $6e86: $39
	ld a, $58                                        ; $6e87: $3e $58
	and b                                            ; $6e89: $a0
	ld b, b                                          ; $6e8a: $40
	add hl, sp                                       ; $6e8b: $39
	inc a                                            ; $6e8c: $3c
	ld b, [hl]                                       ; $6e8d: $46
	xor h                                            ; $6e8e: $ac
	ld h, c                                          ; $6e8f: $61
	ld h, [hl]                                       ; $6e90: $66
	dec sp                                           ; $6e91: $3b
	ld h, c                                          ; $6e92: $61
	ldh a, [$8d]                                     ; $6e93: $f0 $8d
	ldh a, [$9e]                                     ; $6e95: $f0 $9e
	and b                                            ; $6e97: $a0

jr_093_6e98:
	cpl                                              ; $6e98: $2f
	ld [hl-], a                                      ; $6e99: $32
	ldh a, [rSCY]                                    ; $6e9a: $f0 $42
	ld e, c                                          ; $6e9c: $59
	xor h                                            ; $6e9d: $ac
	db $eb                                           ; $6e9e: $eb
	ld a, [$f042]                                    ; $6e9f: $fa $42 $f0
	rst SubAFromHL                                          ; $6ea2: $d7
	ld e, e                                          ; $6ea3: $5b
	ld d, [hl]                                       ; $6ea4: $56
	xor h                                            ; $6ea5: $ac
	db $eb                                           ; $6ea6: $eb
	ld l, d                                          ; $6ea7: $6a
	ccf                                              ; $6ea8: $3f
	add c                                            ; $6ea9: $81
	ld [hl], l                                       ; $6eaa: $75
	ld a, l                                          ; $6eab: $7d
	ld c, d                                          ; $6eac: $4a
	ld e, h                                          ; $6ead: $5c
	ld a, [hl-]                                      ; $6eae: $3a
	jr c, jr_093_6ef6                                ; $6eaf: $38 $45

	and e                                            ; $6eb1: $a3
	cpl                                              ; $6eb2: $2f
	ld [hl-], a                                      ; $6eb3: $32
	add hl, sp                                       ; $6eb4: $39
	ld e, c                                          ; $6eb5: $59
	ld b, c                                          ; $6eb6: $41
	xor e                                            ; $6eb7: $ab
	db $ed                                           ; $6eb8: $ed
	cp c                                             ; $6eb9: $b9
	ld d, c                                          ; $6eba: $51
	ldh a, [$cb]                                     ; $6ebb: $f0 $cb
	dec a                                            ; $6ebd: $3d
	inc a                                            ; $6ebe: $3c
	ld a, [hl-]                                      ; $6ebf: $3a
	xor e                                            ; $6ec0: $ab
	pop af                                           ; $6ec1: $f1
	ld a, [$15f3]                                    ; $6ec2: $fa $f3 $15
	ldh a, [$0d]                                     ; $6ec5: $f0 $0d
	ld h, d                                          ; $6ec7: $62
	ldh a, [rHDMA4]                                  ; $6ec8: $f0 $54
	ld a, $f0                                        ; $6eca: $3e $f0
	ld a, $f0                                        ; $6ecc: $3e $f0
	ld bc, $134e                                     ; $6ece: $01 $4e $13
	ldh a, [c]                                       ; $6ed1: $f2

jr_093_6ed2:
	ld b, b                                          ; $6ed2: $40
	di                                               ; $6ed3: $f3

jr_093_6ed4:
	sub $53                                          ; $6ed4: $d6 $53
	ld b, [hl]                                       ; $6ed6: $46
	ld c, [hl]                                       ; $6ed7: $4e
	ld a, [hl-]                                      ; $6ed8: $3a
	inc sp                                           ; $6ed9: $33
	add hl, bc                                       ; $6eda: $09
	cpl                                              ; $6edb: $2f
	ld b, e                                          ; $6edc: $43
	jp hl                                            ; $6edd: $e9


	xor a                                            ; $6ede: $af
	xor b                                            ; $6edf: $a8
	add sp, $4f                                      ; $6ee0: $e8 $4f
	xor b                                            ; $6ee2: $a8
	ld [$a0c6], a                                    ; $6ee3: $ea $c6 $a0
	xor $1f                                          ; $6ee6: $ee $1f
	inc [hl]                                         ; $6ee8: $34
	ld [hl], d                                       ; $6ee9: $72
	ld c, [hl]                                       ; $6eea: $4e
	ld [hl], d                                       ; $6eeb: $72
	ld c, [hl]                                       ; $6eec: $4e
	and b                                            ; $6eed: $a0
	db $ed                                           ; $6eee: $ed
	ld c, c                                          ; $6eef: $49
	ld b, h                                          ; $6ef0: $44
	dec sp                                           ; $6ef1: $3b
	dec a                                            ; $6ef2: $3d
	ld a, $ac                                        ; $6ef3: $3e $ac
	cp e                                             ; $6ef5: $bb

jr_093_6ef6:
	ld b, c                                          ; $6ef6: $41
	ld b, h                                          ; $6ef7: $44
	ld e, l                                          ; $6ef8: $5d
	ld e, d                                          ; $6ef9: $5a
	xor h                                            ; $6efa: $ac
	ld l, e                                          ; $6efb: $6b
	inc a                                            ; $6efc: $3c
	ldh a, [$2c]                                     ; $6efd: $f0 $2c
	pop af                                           ; $6eff: $f1
	cp [hl]                                          ; $6f00: $be
	ld d, a                                          ; $6f01: $57
	ld a, [hl-]                                      ; $6f02: $3a
	jr c, jr_093_6f84                                ; $6f03: $38 $7f

	ld d, e                                          ; $6f05: $53
	ld c, b                                          ; $6f06: $48
	and b                                            ; $6f07: $a0
	cpl                                              ; $6f08: $2f
	ld b, e                                          ; $6f09: $43
	ld l, e                                          ; $6f0a: $6b
	ld b, h                                          ; $6f0b: $44
	ld e, a                                          ; $6f0c: $5f
	add hl, sp                                       ; $6f0d: $39
	xor h                                            ; $6f0e: $ac
	ldh a, [$2c]                                     ; $6f0f: $f0 $2c
	pop af                                           ; $6f11: $f1
	cp [hl]                                          ; $6f12: $be
	ld d, a                                          ; $6f13: $57
	ld a, [hl-]                                      ; $6f14: $3a
	jr c, jr_093_6f66                                ; $6f15: $38 $4f

	db $ec                                           ; $6f17: $ec
	or $a1                                           ; $6f18: $f6 $a1
	ld b, l                                          ; $6f1a: $45
	ld d, l                                          ; $6f1b: $55
	inc [hl]                                         ; $6f1c: $34
	ldh a, [rTAC]                                    ; $6f1d: $f0 $07
	inc a                                            ; $6f1f: $3c
	ld d, b                                          ; $6f20: $50
	ld a, [hl-]                                      ; $6f21: $3a
	jr c, jr_093_6f81                                ; $6f22: $38 $5d

	ld e, d                                          ; $6f24: $5a
	xor l                                            ; $6f25: $ad
	db $eb                                           ; $6f26: $eb
	add [hl]                                         ; $6f27: $86
	ld c, b                                          ; $6f28: $48
	and b                                            ; $6f29: $a0
	cpl                                              ; $6f2a: $2f
	ld b, e                                          ; $6f2b: $43
	ld l, e                                          ; $6f2c: $6b
	and c                                            ; $6f2d: $a1
	ld l, d                                          ; $6f2e: $6a
	inc a                                            ; $6f2f: $3c
	ld d, b                                          ; $6f30: $50
	xor h                                            ; $6f31: $ac
	add sp, -$44                                     ; $6f32: $e8 $bc

Call_093_6f34:
	and b                                            ; $6f34: $a0
	cpl                                              ; $6f35: $2f
	ld b, e                                          ; $6f36: $43
	jp hl                                            ; $6f37: $e9


	ld h, h                                          ; $6f38: $64
	xor b                                            ; $6f39: $a8
	ld d, d                                          ; $6f3a: $52
	ld b, h                                          ; $6f3b: $44
	inc [hl]                                         ; $6f3c: $34
	db $ec                                           ; $6f3d: $ec
	ldh a, [c]                                       ; $6f3e: $f2
	ld c, a                                          ; $6f3f: $4f
	ld l, [hl]                                       ; $6f40: $6e
	ld d, b                                          ; $6f41: $50
	ld a, [hl-]                                      ; $6f42: $3a
	ld e, h                                          ; $6f43: $5c
	ld d, [hl]                                       ; $6f44: $56
	inc de                                           ; $6f45: $13
	ld a, [hl-]                                      ; $6f46: $3a
	ld d, b                                          ; $6f47: $50
	ld a, [hl-]                                      ; $6f48: $3a
	jr c, jr_093_6f89                                ; $6f49: $38 $3e

	ld c, b                                          ; $6f4b: $48
	and b                                            ; $6f4c: $a0
	db $ed                                           ; $6f4d: $ed
	ld c, c                                          ; $6f4e: $49
	ld b, h                                          ; $6f4f: $44
	dec sp                                           ; $6f50: $3b
	dec a                                            ; $6f51: $3d
	ld b, c                                          ; $6f52: $41
	ld b, h                                          ; $6f53: $44
	ld e, l                                          ; $6f54: $5d
	ld e, d                                          ; $6f55: $5a
	xor e                                            ; $6f56: $ab
	ld b, b                                          ; $6f57: $40
	ld c, l                                          ; $6f58: $4d
	ld b, h                                          ; $6f59: $44
	ld e, l                                          ; $6f5a: $5d
	ld b, h                                          ; $6f5b: $44
	dec sp                                           ; $6f5c: $3b
	dec a                                            ; $6f5d: $3d
	inc a                                            ; $6f5e: $3c
	ld a, [hl-]                                      ; $6f5f: $3a
	ld [hl], h                                       ; $6f60: $74
	and b                                            ; $6f61: $a0
	cpl                                              ; $6f62: $2f
	ld b, e                                          ; $6f63: $43
	pop af                                           ; $6f64: $f1
	add d                                            ; $6f65: $82

jr_093_6f66:
	inc a                                            ; $6f66: $3c
	ld b, a                                          ; $6f67: $47
	xor h                                            ; $6f68: $ac
	ld b, b                                          ; $6f69: $40
	ld c, l                                          ; $6f6a: $4d
	ld b, h                                          ; $6f6b: $44
	ld e, l                                          ; $6f6c: $5d
	ld b, h                                          ; $6f6d: $44
	dec sp                                           ; $6f6e: $3b
	dec a                                            ; $6f6f: $3d
	inc a                                            ; $6f70: $3c
	ld a, [hl-]                                      ; $6f71: $3a
	and b                                            ; $6f72: $a0
	ld [hl], d                                       ; $6f73: $72
	ld b, a                                          ; $6f74: $47
	ld a, b                                          ; $6f75: $78
	dec a                                            ; $6f76: $3d
	ld b, l                                          ; $6f77: $45
	and b                                            ; $6f78: $a0
	xor $1f                                          ; $6f79: $ee $1f
	inc [hl]                                         ; $6f7b: $34
	ld d, h                                          ; $6f7c: $54
	ld c, l                                          ; $6f7d: $4d
	ldh a, [rAUD3LEVEL]                              ; $6f7e: $f0 $1c
	sub c                                            ; $6f80: $91

jr_093_6f81:
	ccf                                              ; $6f81: $3f
	ld b, a                                          ; $6f82: $47
	inc de                                           ; $6f83: $13

jr_093_6f84:
	ld a, b                                          ; $6f84: $78
	dec a                                            ; $6f85: $3d
	ld b, d                                          ; $6f86: $42
	ld b, l                                          ; $6f87: $45
	and b                                            ; $6f88: $a0

jr_093_6f89:
	db $ec                                           ; $6f89: $ec
	inc de                                           ; $6f8a: $13
	ld b, c                                          ; $6f8b: $41
	ld b, h                                          ; $6f8c: $44
	ld e, l                                          ; $6f8d: $5d
	ld e, d                                          ; $6f8e: $5a
	xor h                                            ; $6f8f: $ac
	ld b, b                                          ; $6f90: $40
	ld c, l                                          ; $6f91: $4d
	ld b, h                                          ; $6f92: $44
	ld e, l                                          ; $6f93: $5d
	ld a, [hl-]                                      ; $6f94: $3a
	ld b, d                                          ; $6f95: $42
	ld b, l                                          ; $6f96: $45
	ld c, h                                          ; $6f97: $4c
	xor b                                            ; $6f98: $a8
	pop af                                           ; $6f99: $f1

jr_093_6f9a:
	add c                                            ; $6f9a: $81
	ld h, c                                          ; $6f9b: $61
	ld d, e                                          ; $6f9c: $53
	pop af                                           ; $6f9d: $f1
	add hl, hl                                       ; $6f9e: $29
	ld a, $3c                                        ; $6f9f: $3e $3c
	dec sp                                           ; $6fa1: $3b
	dec a                                            ; $6fa2: $3d
	ld a, [hl-]                                      ; $6fa3: $3a
	and b                                            ; $6fa4: $a0
	cpl                                              ; $6fa5: $2f

jr_093_6fa6:
	ld b, e                                          ; $6fa6: $43
	db $ec                                           ; $6fa7: $ec

Call_093_6fa8:
	ld d, $74                                        ; $6fa8: $16 $74
	xor l                                            ; $6faa: $ad
	ld [hl-], a                                      ; $6fab: $32
	ld e, d                                          ; $6fac: $5a
	add hl, sp                                       ; $6fad: $39
	ld l, [hl]                                       ; $6fae: $6e
	dec sp                                           ; $6faf: $3b

jr_093_6fb0:
	ccf                                              ; $6fb0: $3f
	xor h                                            ; $6fb1: $ac
	pop af                                           ; $6fb2: $f1
	add c                                            ; $6fb3: $81
	ld h, c                                          ; $6fb4: $61
	ld h, d                                          ; $6fb5: $62
	add b                                            ; $6fb6: $80
	ld e, l                                          ; $6fb7: $5d
	ld c, [hl]                                       ; $6fb8: $4e
	ld b, c                                          ; $6fb9: $41
	ld b, h                                          ; $6fba: $44
	ld [hl], $33                                     ; $6fbb: $36 $33
	add hl, bc                                       ; $6fbd: $09
	ld hl, $10ee                                     ; $6fbe: $21 $ee $10
	xor b                                            ; $6fc1: $a8
	jr nz, jr_093_6fb0                               ; $6fc2: $20 $ec

	ldh a, [c]                                       ; $6fc4: $f2
	ld c, e                                          ; $6fc5: $4b
	ld d, d                                          ; $6fc6: $52
	ld b, h                                          ; $6fc7: $44
	ld a, [hl-]                                      ; $6fc8: $3a
	ld b, d                                          ; $6fc9: $42
	and c                                            ; $6fca: $a1
	cpl                                              ; $6fcb: $2f

jr_093_6fcc:
	ld b, e                                          ; $6fcc: $43
	ld d, h                                          ; $6fcd: $54
	ld c, l                                          ; $6fce: $4d
	inc a                                            ; $6fcf: $3c
	ld d, b                                          ; $6fd0: $50
	ld d, c                                          ; $6fd1: $51
	sbc l                                            ; $6fd2: $9d
	ld b, h                                          ; $6fd3: $44
	ld b, l                                          ; $6fd4: $45
	and b                                            ; $6fd5: $a0
	ld b, [hl]                                       ; $6fd6: $46
	ld [hl], h                                       ; $6fd7: $74
	xor h                                            ; $6fd8: $ac
	ldh a, [$0a]                                     ; $6fd9: $f0 $0a
	ld d, l                                          ; $6fdb: $55
	ldh a, [$bb]                                     ; $6fdc: $f0 $bb
	ld d, d                                          ; $6fde: $52
	ld d, b                                          ; $6fdf: $50
	ld a, [hl-]                                      ; $6fe0: $3a
	jr c, jr_093_701f                                ; $6fe1: $38 $3c

	ld a, [hl-]                                      ; $6fe3: $3a
	ld [hl], h                                       ; $6fe4: $74
	and b                                            ; $6fe5: $a0
	cpl                                              ; $6fe6: $2f
	ld b, e                                          ; $6fe7: $43
	ld b, [hl]                                       ; $6fe8: $46
	ld c, l                                          ; $6fe9: $4d
	xor h                                            ; $6fea: $ac
	db $eb                                           ; $6feb: $eb
	ld a, [$3853]                                    ; $6fec: $fa $53 $38
	ld a, [hl-]                                      ; $6fef: $3a
	jr c, jr_093_6f9a                                ; $6ff0: $38 $a8

	ld [$1343], a                                    ; $6ff2: $ea $43 $13
	jp hl                                            ; $6ff5: $e9


	cp l                                             ; $6ff6: $bd
	ld c, b                                          ; $6ff7: $48
	and b                                            ; $6ff8: $a0
	ld d, c                                          ; $6ff9: $51
	dec sp                                           ; $6ffa: $3b
	ld [hl], b                                       ; $6ffb: $70
	jr c, jr_093_6fa6                                ; $6ffc: $38 $a8

	ldh a, [$f6]                                     ; $6ffe: $f0 $f6
	push af                                          ; $7000: $f5
	inc e                                            ; $7001: $1c
	ld b, d                                          ; $7002: $42
	ld l, l                                          ; $7003: $6d
	db $f4                                           ; $7004: $f4
	add hl, bc                                       ; $7005: $09
	ld b, a                                          ; $7006: $47
	xor h                                            ; $7007: $ac
	ldh a, [$d9]                                     ; $7008: $f0 $d9
	ld h, c                                          ; $700a: $61
	ldh a, [rHDMA3]                                  ; $700b: $f0 $53
	dec sp                                           ; $700d: $3b
	dec a                                            ; $700e: $3d
	ld a, a                                          ; $700f: $7f
	ldh a, [rTAC]                                    ; $7010: $f0 $07
	ld b, l                                          ; $7012: $45
	and b                                            ; $7013: $a0
	cpl                                              ; $7014: $2f
	ld b, e                                          ; $7015: $43
	ld [$1357], a                                    ; $7016: $ea $57 $13
	ldh a, [$29]                                     ; $7019: $f0 $29
	ld a, $38                                        ; $701b: $3e $38
	ld b, l                                          ; $701d: $45
	and b                                            ; $701e: $a0

jr_093_701f:
	ld d, c                                          ; $701f: $51
	dec sp                                           ; $7020: $3b
	ld [hl], b                                       ; $7021: $70
	jr c, jr_093_6fcc                                ; $7022: $38 $a8

	db $eb                                           ; $7024: $eb
	ld e, b                                          ; $7025: $58
	ld h, d                                          ; $7026: $62
	ld [hl], d                                       ; $7027: $72
	ld c, l                                          ; $7028: $4d

jr_093_7029:
	ld c, [hl]                                       ; $7029: $4e
	ld a, [hl-]                                      ; $702a: $3a
	ld b, c                                          ; $702b: $41
	ccf                                              ; $702c: $3f
	xor h                                            ; $702d: $ac
	ld a, b                                          ; $702e: $78
	dec a                                            ; $702f: $3d
	ldh a, [$b1]                                     ; $7030: $f0 $b1
	ldh a, [c]                                       ; $7032: $f2
	ld [hl+], a                                      ; $7033: $22
	ld d, e                                          ; $7034: $53
	ld b, [hl]                                       ; $7035: $46
	dec sp                                           ; $7036: $3b
	dec a                                            ; $7037: $3d
	ld h, e                                          ; $7038: $63
	and b                                            ; $7039: $a0
	db $eb                                           ; $703a: $eb
	add [hl]                                         ; $703b: $86
	xor l                                            ; $703c: $ad

jr_093_703d:
	ld l, d                                          ; $703d: $6a
	inc a                                            ; $703e: $3c
	ld d, b                                          ; $703f: $50
	xor h                                            ; $7040: $ac
	ldh a, [rBGP]                                    ; $7041: $f0 $47
	ldh a, [$2a]                                     ; $7043: $f0 $2a
	ld b, d                                          ; $7045: $42
	di                                               ; $7046: $f3
	ld e, $f0                                        ; $7047: $1e $f0
	ld b, $34                                        ; $7049: $06 $34
	add b                                            ; $704b: $80
	inc a                                            ; $704c: $3c
	ld a, [hl-]                                      ; $704d: $3a
	jr c, @-$5d                                      ; $704e: $38 $a1

	cpl                                              ; $7050: $2f
	ld b, e                                          ; $7051: $43
	db $ec                                           ; $7052: $ec
	cp c                                             ; $7053: $b9
	ld d, b                                          ; $7054: $50
	xor h                                            ; $7055: $ac
	ldh a, [rPCM12]                                  ; $7056: $f0 $76
	ldh a, [$d2]                                     ; $7058: $f0 $d2
	ldh a, [$3f]                                     ; $705a: $f0 $3f
	ld e, d                                          ; $705c: $5a
	add hl, sp                                       ; $705d: $39
	and c                                            ; $705e: $a1
	xor $1f                                          ; $705f: $ee $1f
	inc [hl]                                         ; $7061: $34
	ldh a, [$bd]                                     ; $7062: $f0 $bd
	jr c, jr_093_70a5                                ; $7064: $38 $3f

	ldh a, [$bd]                                     ; $7066: $f0 $bd
	jr c, jr_093_70a9                                ; $7068: $38 $3f

	and b                                            ; $706a: $a0
	cpl                                              ; $706b: $2f
	ld b, e                                          ; $706c: $43
	ld [$a84a], a                                    ; $706d: $ea $4a $a8
	ld e, d                                          ; $7070: $5a
	add hl, sp                                       ; $7071: $39
	and c                                            ; $7072: $a1
	ldh a, [rPCM12]                                  ; $7073: $f0 $76
	ccf                                              ; $7075: $3f
	ld c, [hl]                                       ; $7076: $4e
	inc [hl]                                         ; $7077: $34
	ldh a, [rPCM12]                                  ; $7078: $f0 $76
	ccf                                              ; $707a: $3f
	ld c, [hl]                                       ; $707b: $4e

jr_093_707c:
	xor b                                            ; $707c: $a8
	ld d, c                                          ; $707d: $51
	ld [hl], b                                       ; $707e: $70
	ld e, c                                          ; $707f: $59
	jr c, jr_093_70b6                                ; $7080: $38 $34

	add c                                            ; $7082: $81
	ldh a, [$1f]                                     ; $7083: $f0 $1f
	ld l, h                                          ; $7085: $6c
	dec a                                            ; $7086: $3d
	jr c, jr_093_7029                                ; $7087: $38 $a0

	cpl                                              ; $7089: $2f
	ld b, e                                          ; $708a: $43

jr_093_708b:
	add sp, -$1b                                     ; $708b: $e8 $e5
	and b                                            ; $708d: $a0
	ldh a, [rPCM12]                                  ; $708e: $f0 $76
	ccf                                              ; $7090: $3f
	ld a, [hl-]                                      ; $7091: $3a
	ld e, c                                          ; $7092: $59
	jr c, jr_093_703d                                ; $7093: $38 $a8

	ld c, d                                          ; $7095: $4a
	ld c, a                                          ; $7096: $4f
	inc [hl]                                         ; $7097: $34
	jr c, jr_093_70d2                                ; $7098: $38 $38

	ldh a, [hDisp1_WY]                                     ; $709a: $f0 $95
	sub h                                            ; $709c: $94
	ld a, $3f                                        ; $709d: $3e $3f
	ld c, [hl]                                       ; $709f: $4e
	ld c, h                                          ; $70a0: $4c
	and b                                            ; $70a1: $a0
	cpl                                              ; $70a2: $2f
	ld b, e                                          ; $70a3: $43
	rst JumpTable                                          ; $70a4: $c7

jr_093_70a5:
	xor c                                            ; $70a5: $a9
	ld b, [hl]                                       ; $70a6: $46
	ld d, a                                          ; $70a7: $57
	ld d, e                                          ; $70a8: $53

jr_093_70a9:
	ld c, c                                          ; $70a9: $49
	add hl, sp                                       ; $70aa: $39
	ld c, b                                          ; $70ab: $48
	and b                                            ; $70ac: $a0
	cpl                                              ; $70ad: $2f
	ld b, e                                          ; $70ae: $43
	jp hl                                            ; $70af: $e9


	ld h, h                                          ; $70b0: $64
	xor b                                            ; $70b1: $a8
	ld d, d                                          ; $70b2: $52
	ld b, h                                          ; $70b3: $44
	inc [hl]                                         ; $70b4: $34
	di                                               ; $70b5: $f3

jr_093_70b6:
	cp l                                             ; $70b6: $bd
	ldh a, [rDMA]                                    ; $70b7: $f0 $46
	ld a, $3f                                        ; $70b9: $3e $3f
	ld a, [hl-]                                      ; $70bb: $3a
	ld e, h                                          ; $70bc: $5c
	ld d, [hl]                                       ; $70bd: $56
	inc de                                           ; $70be: $13
	ld a, [hl-]                                      ; $70bf: $3a
	ld d, b                                          ; $70c0: $50
	ld a, [hl-]                                      ; $70c1: $3a
	jr c, jr_093_7102                                ; $70c2: $38 $3e

	ld c, b                                          ; $70c4: $48
	and b                                            ; $70c5: $a0
	ldh a, [rPCM12]                                  ; $70c6: $f0 $76
	ccf                                              ; $70c8: $3f
	ld c, [hl]                                       ; $70c9: $4e
	inc [hl]                                         ; $70ca: $34
	ldh a, [rPCM12]                                  ; $70cb: $f0 $76

jr_093_70cd:
	ccf                                              ; $70cd: $3f
	ld c, [hl]                                       ; $70ce: $4e
	xor b                                            ; $70cf: $a8
	ld d, c                                          ; $70d0: $51
	ld [hl], b                                       ; $70d1: $70

jr_093_70d2:
	jr c, jr_093_7120                                ; $70d2: $38 $4c

	inc [hl]                                         ; $70d4: $34
	add c                                            ; $70d5: $81
	ldh a, [$1f]                                     ; $70d6: $f0 $1f
	ld l, h                                          ; $70d8: $6c
	dec a                                            ; $70d9: $3d
	jr c, jr_093_707c                                ; $70da: $38 $a0

	ldh a, [rPCM12]                                  ; $70dc: $f0 $76

jr_093_70de:
	ccf                                              ; $70de: $3f
	ld a, [hl-]                                      ; $70df: $3a
	ld e, c                                          ; $70e0: $59
	jr c, jr_093_708b                                ; $70e1: $38 $a8

	ld c, d                                          ; $70e3: $4a
	ld c, a                                          ; $70e4: $4f
	inc [hl]                                         ; $70e5: $34
	jr c, jr_093_7120                                ; $70e6: $38 $38

	ld b, c                                          ; $70e8: $41
	db $ec                                           ; $70e9: $ec
	ret c                                            ; $70ea: $d8

	and b                                            ; $70eb: $a0
	ld c, h                                          ; $70ec: $4c
	add l                                            ; $70ed: $85
	inc [hl]                                         ; $70ee: $34
	ld d, h                                          ; $70ef: $54
	ld d, h                                          ; $70f0: $54
	ld c, d                                          ; $70f1: $4a
	inc de                                           ; $70f2: $13
	db $ec                                           ; $70f3: $ec
	ld [hl], $38                                     ; $70f4: $36 $38
	ccf                                              ; $70f6: $3f
	inc de                                           ; $70f7: $13
	ld d, l                                          ; $70f8: $55
	ld c, l                                          ; $70f9: $4d
	ld c, [hl]                                       ; $70fa: $4e
	ld b, c                                          ; $70fb: $41
	ld c, d                                          ; $70fc: $4a
	ld a, $66                                        ; $70fd: $3e $66
	add hl, sp                                       ; $70ff: $39
	and c                                            ; $7100: $a1
	cpl                                              ; $7101: $2f

jr_093_7102:
	ld b, e                                          ; $7102: $43
	ld b, [hl]                                       ; $7103: $46
	dec sp                                           ; $7104: $3b
	inc [hl]                                         ; $7105: $34
	db $eb                                           ; $7106: $eb
	ld a, [$eea8]                                    ; $7107: $fa $a8 $ee
	rra                                              ; $710a: $1f
	inc [hl]                                         ; $710b: $34
	ldh a, [$bd]                                     ; $710c: $f0 $bd
	jr c, jr_093_714f                                ; $710e: $38 $3f

	rst SubAFromDE                                          ; $7110: $df
	ld b, l                                          ; $7111: $45
	and b                                            ; $7112: $a0
	ld e, e                                          ; $7113: $5b
	ld d, [hl]                                       ; $7114: $56
	ld b, [hl]                                       ; $7115: $46
	inc [hl]                                         ; $7116: $34
	ldh a, [$bd]                                     ; $7117: $f0 $bd
	jr c, @+$41                                      ; $7119: $38 $3f

	ldh a, [$bd]                                     ; $711b: $f0 $bd
	jr c, jr_093_715e                                ; $711d: $38 $3f

	and b                                            ; $711f: $a0

jr_093_7120:
	ld d, c                                          ; $7120: $51
	ld [hl], b                                       ; $7121: $70
	ld e, c                                          ; $7122: $59
	jr c, jr_093_70cd                                ; $7123: $38 $a8

	ldh a, [rPCM12]                                  ; $7125: $f0 $76
	ccf                                              ; $7127: $3f
	ld c, [hl]                                       ; $7128: $4e
	inc [hl]                                         ; $7129: $34
	ldh a, [rPCM12]                                  ; $712a: $f0 $76
	ccf                                              ; $712c: $3f
	ld c, [hl]                                       ; $712d: $4e
	and b                                            ; $712e: $a0
	ldh a, [rPCM12]                                  ; $712f: $f0 $76
	ccf                                              ; $7131: $3f
	ld a, [hl-]                                      ; $7132: $3a
	ld e, c                                          ; $7133: $59
	jr c, jr_093_70de                                ; $7134: $38 $a8

	ld l, a                                          ; $7136: $6f
	inc [hl]                                         ; $7137: $34
	ld d, h                                          ; $7138: $54
	ld b, c                                          ; $7139: $41
	ld a, [hl-]                                      ; $713a: $3a
	ldh a, [$d2]                                     ; $713b: $f0 $d2
	db $ec                                           ; $713d: $ec
	ret c                                            ; $713e: $d8

	ld b, l                                          ; $713f: $45
	and b                                            ; $7140: $a0
	cpl                                              ; $7141: $2f
	ld b, e                                          ; $7142: $43
	rst JumpTable                                          ; $7143: $c7
	xor c                                            ; $7144: $a9
	ldh a, [rPCM12]                                  ; $7145: $f0 $76
	ccf                                              ; $7147: $3f
	ld a, [hl-]                                      ; $7148: $3a
	inc a                                            ; $7149: $3c
	dec sp                                           ; $714a: $3b
	dec a                                            ; $714b: $3d
	xor c                                            ; $714c: $a9
	ld [hl], b                                       ; $714d: $70
	ld [hl], c                                       ; $714e: $71

jr_093_714f:
	ld b, c                                          ; $714f: $41
	ld c, h                                          ; $7150: $4c
	and b                                            ; $7151: $a0
	ldh a, [rPCM12]                                  ; $7152: $f0 $76
	ldh a, [$d2]                                     ; $7154: $f0 $d2
	ldh a, [$3f]                                     ; $7156: $f0 $3f
	inc de                                           ; $7158: $13
	ldh a, [$bd]                                     ; $7159: $f0 $bd
	jr c, @+$41                                      ; $715b: $38 $3f

	ld d, l                                          ; $715d: $55

jr_093_715e:
	ld c, l                                          ; $715e: $4d
	ld c, [hl]                                       ; $715f: $4e
	dec sp                                           ; $7160: $3b
	ccf                                              ; $7161: $3f
	inc de                                           ; $7162: $13
	ldh a, [$0c]                                     ; $7163: $f0 $0c
	db $ec                                           ; $7165: $ec
	ld l, $5d                                        ; $7166: $2e $5d
	ld e, d                                          ; $7168: $5a
	xor l                                            ; $7169: $ad
	db $ec                                           ; $716a: $ec
	reti                                             ; $716b: $d9


	ld a, d                                          ; $716c: $7a
	ld c, [hl]                                       ; $716d: $4e
	and b                                            ; $716e: $a0
	cpl                                              ; $716f: $2f
	ld b, e                                          ; $7170: $43
	ld b, [hl]                                       ; $7171: $46
	dec sp                                           ; $7172: $3b
	xor h                                            ; $7173: $ac
	db $eb                                           ; $7174: $eb
	ld a, [$3b99]                                    ; $7175: $fa $99 $3b
	ccf                                              ; $7178: $3f
	ld b, l                                          ; $7179: $45
	and b                                            ; $717a: $a0
	cpl                                              ; $717b: $2f
	ld b, e                                          ; $717c: $43
	ld [$48be], a                                    ; $717d: $ea $be $48
	and b                                            ; $7180: $a0
	jp hl                                            ; $7181: $e9


	sbc $45                                          ; $7182: $de $45
	and b                                            ; $7184: $a0
	cpl                                              ; $7185: $2f
	ld b, e                                          ; $7186: $43
	ld b, [hl]                                       ; $7187: $46
	dec sp                                           ; $7188: $3b
	inc [hl]                                         ; $7189: $34
	db $eb                                           ; $718a: $eb
	ld a, [$e9a8]                                    ; $718b: $fa $a8 $e9
	or h                                             ; $718e: $b4
	and b                                            ; $718f: $a0
	add hl, sp                                       ; $7190: $39
	ld b, b                                          ; $7191: $40
	ld e, c                                          ; $7192: $59
	dec sp                                           ; $7193: $3b
	xor b                                            ; $7194: $a8
	ld d, h                                          ; $7195: $54
	ld b, c                                          ; $7196: $41
	ld a, [hl-]                                      ; $7197: $3a
	ld b, d                                          ; $7198: $42
	ldh a, [$bd]                                     ; $7199: $f0 $bd
	jr c, jr_093_71dc                                ; $719b: $38 $3f

	ld c, [hl]                                       ; $719d: $4e
	ld b, d                                          ; $719e: $42
	ld e, c                                          ; $719f: $59
	and c                                            ; $71a0: $a1
	cpl                                              ; $71a1: $2f
	ld b, e                                          ; $71a2: $43
	add sp, -$13                                     ; $71a3: $e8 $ed
	xor b                                            ; $71a5: $a8
	db $eb                                           ; $71a6: $eb
	add h                                            ; $71a7: $84
	xor h                                            ; $71a8: $ac
	db $eb                                           ; $71a9: $eb

jr_093_71aa:
	xor c                                            ; $71aa: $a9
	ld c, b                                          ; $71ab: $48
	and b                                            ; $71ac: $a0
	db $ec                                           ; $71ad: $ec
	ldh a, [$a8]                                     ; $71ae: $f0 $a8
	ld d, d                                          ; $71b0: $52
	inc [hl]                                         ; $71b1: $34
	ldh a, [$9f]                                     ; $71b2: $f0 $9f
	ld e, e                                          ; $71b4: $5b
	ccf                                              ; $71b5: $3f
	ld b, [hl]                                       ; $71b6: $46
	ldh a, [rSB]                                     ; $71b7: $f0 $01
	ccf                                              ; $71b9: $3f
	ld c, a                                          ; $71ba: $4f
	inc de                                           ; $71bb: $13
	db $ec                                           ; $71bc: $ec
	ld [$2fa0], sp                                   ; $71bd: $08 $a0 $2f
	ld b, e                                          ; $71c0: $43
	ld d, a                                          ; $71c1: $57
	inc [hl]                                         ; $71c2: $34
	ldh a, [$63]                                     ; $71c3: $f0 $63
	pop af                                           ; $71c5: $f1
	dec sp                                           ; $71c6: $3b
	ldh a, [$7f]                                     ; $71c7: $f0 $7f
	ld d, e                                          ; $71c9: $53
	ld b, [hl]                                       ; $71ca: $46
	dec sp                                           ; $71cb: $3b
	ccf                                              ; $71cc: $3f
	inc de                                           ; $71cd: $13
	ldh a, [$29]                                     ; $71ce: $f0 $29
	ld a, $38                                        ; $71d0: $3e $38
	ld b, l                                          ; $71d2: $45
	and b                                            ; $71d3: $a0
	ld l, a                                          ; $71d4: $6f
	inc [hl]                                         ; $71d5: $34
	ld d, h                                          ; $71d6: $54
	ld d, h                                          ; $71d7: $54
	ld b, a                                          ; $71d8: $47
	jr c, jr_093_721a                                ; $71d9: $38 $3f

	ld c, a                                          ; $71db: $4f

jr_093_71dc:
	inc de                                           ; $71dc: $13
	db $db                                           ; $71dd: $db
	ld a, [hl-]                                      ; $71de: $3a
	jr c, jr_093_721d                                ; $71df: $38 $3c

	ld d, b                                          ; $71e1: $50
	inc [hl]                                         ; $71e2: $34
	ld a, d                                          ; $71e3: $7a
	ld c, [hl]                                       ; $71e4: $4e
	ld c, h                                          ; $71e5: $4c
	xor b                                            ; $71e6: $a8
	ld b, b                                          ; $71e7: $40
	ld c, l                                          ; $71e8: $4d
	ld e, e                                          ; $71e9: $5b
	ld d, [hl]                                       ; $71ea: $56
	and b                                            ; $71eb: $a0
	cpl                                              ; $71ec: $2f
	ld b, e                                          ; $71ed: $43
	jp hl                                            ; $71ee: $e9


	ld b, e                                          ; $71ef: $43
	xor b                                            ; $71f0: $a8
	db $eb                                           ; $71f1: $eb
	ld a, [$a2eb]                                    ; $71f2: $fa $eb $a2
	inc de                                           ; $71f5: $13
	ld [$a051], a                                    ; $71f6: $ea $51 $a0
	ld l, [hl]                                       ; $71f9: $6e
	ld b, h                                          ; $71fa: $44
	ld e, c                                          ; $71fb: $59
	dec sp                                           ; $71fc: $3b
	inc [hl]                                         ; $71fd: $34

jr_093_71fe:
	db $ed                                           ; $71fe: $ed
	ld b, h                                          ; $71ff: $44
	xor b                                            ; $7200: $a8
	ldh a, [$9f]                                     ; $7201: $f0 $9f
	ld e, e                                          ; $7203: $5b
	ld d, b                                          ; $7204: $50
	ld b, c                                          ; $7205: $41
	ld a, [hl-]                                      ; $7206: $3a
	ld e, c                                          ; $7207: $59
	jr c, jr_093_71aa                                ; $7208: $38 $a0

	db $ed                                           ; $720a: $ed
	ld e, a                                          ; $720b: $5f
	ld b, a                                          ; $720c: $47
	ld a, $3f                                        ; $720d: $3e $3f
	ld c, e                                          ; $720f: $4b
	xor h                                            ; $7210: $ac
	ld b, l                                          ; $7211: $45
	ld b, h                                          ; $7212: $44
	ld c, l                                          ; $7213: $4d
	ld d, e                                          ; $7214: $53
	ld sp, hl                                        ; $7215: $f9
	dec a                                            ; $7216: $3d
	ld c, l                                          ; $7217: $4d
	ccf                                              ; $7218: $3f
	ld c, [hl]                                       ; $7219: $4e

jr_093_721a:
	ld b, l                                          ; $721a: $45
	and b                                            ; $721b: $a0
	cpl                                              ; $721c: $2f

jr_093_721d:
	ld b, e                                          ; $721d: $43
	ld e, [hl]                                       ; $721e: $5e
	dec sp                                           ; $721f: $3b
	and b                                            ; $7220: $a0
	ld b, [hl]                                       ; $7221: $46
	ld c, e                                          ; $7222: $4b
	ld c, e                                          ; $7223: $4b
	ld c, e                                          ; $7224: $4b
	xor h                                            ; $7225: $ac
	db $ed                                           ; $7226: $ed
	ld a, h                                          ; $7227: $7c
	ld b, l                                          ; $7228: $45
	inc [hl]                                         ; $7229: $34
	db $ed                                           ; $722a: $ed
	ld a, h                                          ; $722b: $7c
	xor b                                            ; $722c: $a8
	ld e, b                                          ; $722d: $58
	ccf                                              ; $722e: $3f
	inc [hl]                                         ; $722f: $34
	ldh a, [c]                                       ; $7230: $f2
	ret nz                                           ; $7231: $c0

	ld h, e                                          ; $7232: $63
	ld c, l                                          ; $7233: $4d
	ld a, [hl-]                                      ; $7234: $3a
	jr c, jr_093_7270                                ; $7235: $38 $39

	ld h, c                                          ; $7237: $61
	ld b, a                                          ; $7238: $47
	xor h                                            ; $7239: $ac
	ldh a, [c]                                       ; $723a: $f2
	cp h                                             ; $723b: $bc
	pop af                                           ; $723c: $f1
	db $ed                                           ; $723d: $ed
	ld a, $45                                        ; $723e: $3e $45
	add hl, sp                                       ; $7240: $39
	and b                                            ; $7241: $a0
	cpl                                              ; $7242: $2f
	ld b, e                                          ; $7243: $43
	add h                                            ; $7244: $84
	ld h, d                                          ; $7245: $62
	db $f4                                           ; $7246: $f4
	sub h                                            ; $7247: $94
	ld l, h                                          ; $7248: $6c
	dec a                                            ; $7249: $3d
	jr c, jr_093_7293                                ; $724a: $38 $47

	ld c, b                                          ; $724c: $48
	and b                                            ; $724d: $a0
	db $f4                                           ; $724e: $f4
	sub h                                            ; $724f: $94
	ld b, h                                          ; $7250: $44
	ld c, a                                          ; $7251: $4f
	ld b, c                                          ; $7252: $41
	xor b                                            ; $7253: $a8
	ld e, e                                          ; $7254: $5b
	ld d, [hl]                                       ; $7255: $56
	ld b, [hl]                                       ; $7256: $46
	ld c, h                                          ; $7257: $4c
	inc [hl]                                         ; $7258: $34
	ld a, e                                          ; $7259: $7b
	jr c, @+$7d                                      ; $725a: $38 $7b

	jr c, jr_093_71fe                                ; $725c: $38 $a0

	ld b, [hl]                                       ; $725e: $46
	dec sp                                           ; $725f: $3b
	inc [hl]                                         ; $7260: $34
	add hl, sp                                       ; $7261: $39
	ld b, b                                          ; $7262: $40
	ld e, c                                          ; $7263: $59
	dec sp                                           ; $7264: $3b
	xor b                                            ; $7265: $a8
	db $eb                                           ; $7266: $eb
	ld a, h                                          ; $7267: $7c
	ld e, c                                          ; $7268: $59
	and b                                            ; $7269: $a0
	ld l, h                                          ; $726a: $6c
	ld b, c                                          ; $726b: $41
	ld a, [hl-]                                      ; $726c: $3a
	ld b, d                                          ; $726d: $42
	ldh a, [$d2]                                     ; $726e: $f0 $d2

jr_093_7270:
	ld [hl], d                                       ; $7270: $72
	ld c, l                                          ; $7271: $4d
	ld a, e                                          ; $7272: $7b
	xor h                                            ; $7273: $ac
	ld l, e                                          ; $7274: $6b
	db $f4                                           ; $7275: $f4
	dec h                                            ; $7276: $25
	inc a                                            ; $7277: $3c
	ld d, b                                          ; $7278: $50
	ld [hl], d                                       ; $7279: $72
	ccf                                              ; $727a: $3f
	ld c, a                                          ; $727b: $4f
	xor h                                            ; $727c: $ac
	db $ed                                           ; $727d: $ed
	ld e, a                                          ; $727e: $5f
	ld b, a                                          ; $727f: $47
	ld l, h                                          ; $7280: $6c
	ld e, [hl]                                       ; $7281: $5e
	ld a, [hl-]                                      ; $7282: $3a
	jr c, jr_093_72ca                                ; $7283: $38 $45

	and b                                            ; $7285: $a0
	cpl                                              ; $7286: $2f
	ld b, e                                          ; $7287: $43
	ld e, [hl]                                       ; $7288: $5e
	dec sp                                           ; $7289: $3b
	inc [hl]                                         ; $728a: $34
	ld b, b                                          ; $728b: $40
	add hl, sp                                       ; $728c: $39
	and c                                            ; $728d: $a1
	rst FarCall                                          ; $728e: $f7
	ld d, d                                          ; $728f: $52
	ld b, d                                          ; $7290: $42
	ldh a, [$a3]                                     ; $7291: $f0 $a3

jr_093_7293:
	db $f4                                           ; $7293: $f4
	adc a                                            ; $7294: $8f
	ld a, e                                          ; $7295: $7b
	ld a, $3f                                        ; $7296: $3e $3f
	xor h                                            ; $7298: $ac
	db $eb                                           ; $7299: $eb
	ld a, h                                          ; $729a: $7c
	ld b, c                                          ; $729b: $41
	ld b, h                                          ; $729c: $44
	ld e, c                                          ; $729d: $59
	and b                                            ; $729e: $a0
	cpl                                              ; $729f: $2f
	ld b, e                                          ; $72a0: $43
	ld b, [hl]                                       ; $72a1: $46
	dec sp                                           ; $72a2: $3b
	inc [hl]                                         ; $72a3: $34
	db $eb                                           ; $72a4: $eb
	ld a, [$ecac]                                    ; $72a5: $fa $ac $ec
	ld a, [hl]                                       ; $72a8: $7e
	xor b                                            ; $72a9: $a8
	ld [$48be], a                                    ; $72aa: $ea $be $48
	and b                                            ; $72ad: $a0
	ld hl, $10ee                                     ; $72ae: $21 $ee $10
	and b                                            ; $72b1: $a0
	cpl                                              ; $72b2: $2f
	ld b, e                                          ; $72b3: $43
	db $eb                                           ; $72b4: $eb
	ld a, [$6bac]                                    ; $72b5: $fa $ac $6b
	ld a, $47                                        ; $72b8: $3e $47
	ld a, b                                          ; $72ba: $78
	dec a                                            ; $72bb: $3d
	ld b, c                                          ; $72bc: $41
	ld b, h                                          ; $72bd: $44
	ld e, a                                          ; $72be: $5f
	add hl, sp                                       ; $72bf: $39
	and c                                            ; $72c0: $a1
	ld b, [hl]                                       ; $72c1: $46
	xor h                                            ; $72c2: $ac
	pop af                                           ; $72c3: $f1
	or b                                             ; $72c4: $b0
	ldh a, [$3f]                                     ; $72c5: $f0 $3f
	ld a, e                                          ; $72c7: $7b
	dec sp                                           ; $72c8: $3b
	inc a                                            ; $72c9: $3c

jr_093_72ca:
	ld d, a                                          ; $72ca: $57
	ld b, h                                          ; $72cb: $44
	ld c, h                                          ; $72cc: $4c
	ld c, b                                          ; $72cd: $48
	and b                                            ; $72ce: $a0
	cpl                                              ; $72cf: $2f
	ld b, e                                          ; $72d0: $43
	pop af                                           ; $72d1: $f1
	or b                                             ; $72d2: $b0
	ldh a, [$3f]                                     ; $72d3: $f0 $3f
	inc [hl]                                         ; $72d5: $34
	ldh a, [$64]                                     ; $72d6: $f0 $64
	jr c, @+$3c                                      ; $72d8: $38 $3a

	ld b, d                                          ; $72da: $42
	and c                                            ; $72db: $a1
	ld e, d                                          ; $72dc: $5a
	dec sp                                           ; $72dd: $3b
	ld h, c                                          ; $72de: $61
	inc a                                            ; $72df: $3c
	ld c, c                                          ; $72e0: $49
	add d                                            ; $72e1: $82
	add hl, sp                                       ; $72e2: $39
	ld c, c                                          ; $72e3: $49
	ld e, c                                          ; $72e4: $59
	xor h                                            ; $72e5: $ac
	add sp, $68                                      ; $72e6: $e8 $68
	inc de                                           ; $72e8: $13
	adc e                                            ; $72e9: $8b
	ld e, h                                          ; $72ea: $5c
	inc a                                            ; $72eb: $3c
	ld a, [hl-]                                      ; $72ec: $3a
	ld [hl], h                                       ; $72ed: $74
	and b                                            ; $72ee: $a0
	cpl                                              ; $72ef: $2f
	ld b, e                                          ; $72f0: $43
	pop af                                           ; $72f1: $f1
	or b                                             ; $72f2: $b0
	ldh a, [$3f]                                     ; $72f3: $f0 $3f
	ld c, a                                          ; $72f5: $4f
	inc [hl]                                         ; $72f6: $34
	jp nc, $f013                                     ; $72f7: $d2 $13 $f0

	ld e, l                                          ; $72fa: $5d
	ld h, e                                          ; $72fb: $63
	ld b, c                                          ; $72fc: $41
	ld a, [hl-]                                      ; $72fd: $3a
	jr c, jr_093_7349                                ; $72fe: $38 $49

	inc de                                           ; $7300: $13
	ld [hl], a                                       ; $7301: $77
	add hl, sp                                       ; $7302: $39
	ld e, l                                          ; $7303: $5d
	ld e, d                                          ; $7304: $5a
	ld a, [hl-]                                      ; $7305: $3a
	ld c, b                                          ; $7306: $48
	and b                                            ; $7307: $a0
	db $eb                                           ; $7308: $eb
	add [hl]                                         ; $7309: $86
	xor h                                            ; $730a: $ac
	ld l, d                                          ; $730b: $6a
	inc [hl]                                         ; $730c: $34
	ldh a, [$ea]                                     ; $730d: $f0 $ea
	ld a, $3f                                        ; $730f: $3e $3f
	ld b, c                                          ; $7311: $41
	ld c, d                                          ; $7312: $4a
	ld a, $66                                        ; $7313: $3e $66
	add hl, sp                                       ; $7315: $39
	and b                                            ; $7316: $a0
	ld b, [hl]                                       ; $7317: $46
	inc [hl]                                         ; $7318: $34
	pop af                                           ; $7319: $f1
	or b                                             ; $731a: $b0
	ldh a, [$3f]                                     ; $731b: $f0 $3f
	ld a, e                                          ; $731d: $7b
	dec sp                                           ; $731e: $3b
	inc a                                            ; $731f: $3c
	ld d, a                                          ; $7320: $57
	ld c, b                                          ; $7321: $48
	and b                                            ; $7322: $a0
	ld e, d                                          ; $7323: $5a
	dec sp                                           ; $7324: $3b
	ld h, c                                          ; $7325: $61
	inc a                                            ; $7326: $3c
	ld c, c                                          ; $7327: $49
	add d                                            ; $7328: $82
	add hl, sp                                       ; $7329: $39
	ld c, c                                          ; $732a: $49
	ld e, b                                          ; $732b: $58
	xor h                                            ; $732c: $ac
	add sp, $68                                      ; $732d: $e8 $68
	inc de                                           ; $732f: $13
	adc e                                            ; $7330: $8b
	ld e, h                                          ; $7331: $5c
	inc a                                            ; $7332: $3c
	ld a, [hl-]                                      ; $7333: $3a
	ld [hl], h                                       ; $7334: $74
	and b                                            ; $7335: $a0
	ld l, e                                          ; $7336: $6b
	inc a                                            ; $7337: $3c
	xor h                                            ; $7338: $ac
	pop af                                           ; $7339: $f1
	or b                                             ; $733a: $b0
	ldh a, [$3f]                                     ; $733b: $f0 $3f
	ld a, e                                          ; $733d: $7b
	dec sp                                           ; $733e: $3b
	inc a                                            ; $733f: $3c
	ld d, a                                          ; $7340: $57
	ld b, h                                          ; $7341: $44
	ld c, h                                          ; $7342: $4c
	ld c, b                                          ; $7343: $48
	and b                                            ; $7344: $a0
	ld d, h                                          ; $7345: $54
	add hl, sp                                       ; $7346: $39
	jr c, jr_093_7382                                ; $7347: $38 $39

jr_093_7349:
	xor h                                            ; $7349: $ac
	db $ed                                           ; $734a: $ed
	ld e, a                                          ; $734b: $5f
	pop af                                           ; $734c: $f1
	inc bc                                           ; $734d: $03
	ld a, [hl-]                                      ; $734e: $3a
	ld b, d                                          ; $734f: $42
	ld c, e                                          ; $7350: $4b
	inc [hl]                                         ; $7351: $34
	ret                                              ; $7352: $c9


	ld c, b                                          ; $7353: $48
	and b                                            ; $7354: $a0
	cpl                                              ; $7355: $2f
	ld b, e                                          ; $7356: $43
	ld b, b                                          ; $7357: $40
	ld b, c                                          ; $7358: $41
	ld a, [hl-]                                      ; $7359: $3a
	ld b, a                                          ; $735a: $47
	xor h                                            ; $735b: $ac
	db $ed                                           ; $735c: $ed
	ld e, a                                          ; $735d: $5f
	pop af                                           ; $735e: $f1
	inc bc                                           ; $735f: $03
	inc a                                            ; $7360: $3c
	ld a, [hl-]                                      ; $7361: $3a
	ld [hl], h                                       ; $7362: $74
	ld c, b                                          ; $7363: $48
	and b                                            ; $7364: $a0
	pop af                                           ; $7365: $f1
	or b                                             ; $7366: $b0
	ldh a, [$3f]                                     ; $7367: $f0 $3f
	ld a, e                                          ; $7369: $7b
	dec sp                                           ; $736a: $3b
	inc a                                            ; $736b: $3c
	ld d, a                                          ; $736c: $57
	ld c, b                                          ; $736d: $48
	and b                                            ; $736e: $a0
	cpl                                              ; $736f: $2f
	ld b, e                                          ; $7370: $43
	ld b, [hl]                                       ; $7371: $46
	dec sp                                           ; $7372: $3b
	xor h                                            ; $7373: $ac
	db $eb                                           ; $7374: $eb
	ld a, [$9934]                                    ; $7375: $fa $34 $99
	dec sp                                           ; $7378: $3b
	ccf                                              ; $7379: $3f
	ld b, l                                          ; $737a: $45
	and b                                            ; $737b: $a0
	ld l, d                                          ; $737c: $6a
	ld b, d                                          ; $737d: $42
	xor $2b                                          ; $737e: $ee $2b
	ld [hl], d                                       ; $7380: $72
	ccf                                              ; $7381: $3f

jr_093_7382:
	dec a                                            ; $7382: $3d
	ld b, l                                          ; $7383: $45
	xor b                                            ; $7384: $a8
	ld d, c                                          ; $7385: $51
	ld [hl], b                                       ; $7386: $70
	ld d, l                                          ; $7387: $55
	cp e                                             ; $7388: $bb
	ld c, h                                          ; $7389: $4c
	and b                                            ; $738a: $a0
	ld l, d                                          ; $738b: $6a
	ld b, d                                          ; $738c: $42
	inc [hl]                                         ; $738d: $34
	ldh a, [$99]                                     ; $738e: $f0 $99
	sub b                                            ; $7390: $90
	dec sp                                           ; $7391: $3b
	ccf                                              ; $7392: $3f
	inc de                                           ; $7393: $13
	db $eb                                           ; $7394: $eb
	ld l, a                                          ; $7395: $6f
	ld c, d                                          ; $7396: $4a
	ld a, $66                                        ; $7397: $3e $66
	add hl, sp                                       ; $7399: $39
	and c                                            ; $739a: $a1
	cpl                                              ; $739b: $2f
	ld b, e                                          ; $739c: $43
	ld b, b                                          ; $739d: $40
	add hl, sp                                       ; $739e: $39
	inc [hl]                                         ; $739f: $34
	ld b, l                                          ; $73a0: $45
	ld d, l                                          ; $73a1: $55
	ldh a, [$2d]                                     ; $73a2: $f0 $2d
	dec sp                                           ; $73a4: $3b
	ccf                                              ; $73a5: $3f
	ld c, [hl]                                       ; $73a6: $4e
	ld c, h                                          ; $73a7: $4c
	and b                                            ; $73a8: $a0
	ldh a, [$80]                                     ; $73a9: $f0 $80
	ldh a, [$c5]                                     ; $73ab: $f0 $c5
	xor h                                            ; $73ad: $ac
	adc e                                            ; $73ae: $8b
	ld e, h                                          ; $73af: $5c
	ld b, h                                          ; $73b0: $44
	dec sp                                           ; $73b1: $3b
	dec a                                            ; $73b2: $3d
	inc a                                            ; $73b3: $3c
	ld d, b                                          ; $73b4: $50
	ld c, b                                          ; $73b5: $48
	and b                                            ; $73b6: $a0
	cpl                                              ; $73b7: $2f
	ld b, e                                          ; $73b8: $43
	ret nz                                           ; $73b9: $c0

	xor h                                            ; $73ba: $ac
	ldh a, [c]                                       ; $73bb: $f2
	ld a, [$383e]                                    ; $73bc: $fa $3e $38
	ld c, h                                          ; $73bf: $4c
	and b                                            ; $73c0: $a0
	db $eb                                           ; $73c1: $eb
	add [hl]                                         ; $73c2: $86
	xor l                                            ; $73c3: $ad
	ld l, d                                          ; $73c4: $6a
	inc a                                            ; $73c5: $3c
	ld d, b                                          ; $73c6: $50
	xor h                                            ; $73c7: $ac
	add sp, -$44                                     ; $73c8: $e8 $bc
	and b                                            ; $73ca: $a0
	ld l, d                                          ; $73cb: $6a
	ld b, d                                          ; $73cc: $42
	xor $2b                                          ; $73cd: $ee $2b
	ld [hl], d                                       ; $73cf: $72
	ccf                                              ; $73d0: $3f
	dec a                                            ; $73d1: $3d
	ld b, l                                          ; $73d2: $45
	xor b                                            ; $73d3: $a8
	ld [$a0b3], a                                    ; $73d4: $ea $b3 $a0
	xor $1e                                          ; $73d7: $ee $1e
	ldh a, [$ed]                                     ; $73d9: $f0 $ed
	xor h                                            ; $73db: $ac
	db $eb                                           ; $73dc: $eb
	ld l, a                                          ; $73dd: $6f
	ld b, h                                          ; $73de: $44
	ld b, l                                          ; $73df: $45
	ld c, h                                          ; $73e0: $4c
	and b                                            ; $73e1: $a0
	cpl                                              ; $73e2: $2f
	ld b, e                                          ; $73e3: $43
	ldh a, [$5a]                                     ; $73e4: $f0 $5a
	add l                                            ; $73e6: $85
	inc [hl]                                         ; $73e7: $34
	ldh a, [$2d]                                     ; $73e8: $f0 $2d
	dec sp                                           ; $73ea: $3b
	ccf                                              ; $73eb: $3f
	ld c, [hl]                                       ; $73ec: $4e
	ld b, c                                          ; $73ed: $41
	ld b, h                                          ; $73ee: $44
	and b                                            ; $73ef: $a0
	ld b, b                                          ; $73f0: $40
	ld d, a                                          ; $73f1: $57
	ld d, [hl]                                       ; $73f2: $56
	sub c                                            ; $73f3: $91
	ldh a, [$59]                                     ; $73f4: $f0 $59
	ld b, l                                          ; $73f6: $45
	xor b                                            ; $73f7: $a8
	ld l, a                                          ; $73f8: $6f
	inc [hl]                                         ; $73f9: $34
	adc e                                            ; $73fa: $8b
	ld e, h                                          ; $73fb: $5c
	ld b, h                                          ; $73fc: $44
	dec sp                                           ; $73fd: $3b
	dec a                                            ; $73fe: $3d
	ld b, c                                          ; $73ff: $41
	ld b, h                                          ; $7400: $44
	ld c, a                                          ; $7401: $4f
	ld b, c                                          ; $7402: $41
	and b                                            ; $7403: $a0
	cpl                                              ; $7404: $2f
	ld b, e                                          ; $7405: $43
	ldh a, [c]                                       ; $7406: $f2
	ld a, [$383e]                                    ; $7407: $fa $3e $38
	pop af                                           ; $740a: $f1
	ld b, [hl]                                       ; $740b: $46
	ld b, h                                          ; $740c: $44
	ld c, h                                          ; $740d: $4c
	ld c, b                                          ; $740e: $48
	and b                                            ; $740f: $a0
	ld l, d                                          ; $7410: $6a
	ld b, d                                          ; $7411: $42
	xor $2b                                          ; $7412: $ee $2b
	ld [hl], d                                       ; $7414: $72
	ccf                                              ; $7415: $3f
	dec a                                            ; $7416: $3d
	ld b, l                                          ; $7417: $45
	and b                                            ; $7418: $a0
	ld c, a                                          ; $7419: $4f
	add hl, sp                                       ; $741a: $39
	ldh a, [rAUD4POLY]                               ; $741b: $f0 $22
	ld a, l                                          ; $741d: $7d
	ldh a, [rAUD1LEN]                                ; $741e: $f0 $11
	ld e, c                                          ; $7420: $59
	xor b                                            ; $7421: $a8
	ld l, a                                          ; $7422: $6f
	inc [hl]                                         ; $7423: $34
	jp hl                                            ; $7424: $e9


	adc $a0                                          ; $7425: $ce $a0
	cpl                                              ; $7427: $2f
	ld b, e                                          ; $7428: $43
	ld d, h                                          ; $7429: $54
	ld b, d                                          ; $742a: $42
	ldh a, [$ed]                                     ; $742b: $f0 $ed
	ldh a, [$2d]                                     ; $742d: $f0 $2d
	dec sp                                           ; $742f: $3b
	ccf                                              ; $7430: $3f
	ld c, [hl]                                       ; $7431: $4e
	ld b, c                                          ; $7432: $41
	ld b, h                                          ; $7433: $44
	and c                                            ; $7434: $a1
	ldh a, [$2d]                                     ; $7435: $f0 $2d
	dec sp                                           ; $7437: $3b
	ccf                                              ; $7438: $3f
	ld c, [hl]                                       ; $7439: $4e
	ld b, l                                          ; $743a: $45
	xor b                                            ; $743b: $a8
	db $eb                                           ; $743c: $eb
	ld l, a                                          ; $743d: $6f
	ld c, d                                          ; $743e: $4a
	ld a, $66                                        ; $743f: $3e $66
	add hl, sp                                       ; $7441: $39
	and b                                            ; $7442: $a0
	cpl                                              ; $7443: $2f
	ld b, e                                          ; $7444: $43
	pop af                                           ; $7445: $f1
	db $fc                                           ; $7446: $fc
	ldh a, [rOCPS]                                   ; $7447: $f0 $6a
	db $ec                                           ; $7449: $ec
	dec b                                            ; $744a: $05
	ld b, l                                          ; $744b: $45
	ld c, b                                          ; $744c: $48
	and b                                            ; $744d: $a0
	ld l, a                                          ; $744e: $6f
	inc [hl]                                         ; $744f: $34
	ld d, h                                          ; $7450: $54
	add hl, sp                                       ; $7451: $39
	jr c, jr_093_748d                                ; $7452: $38 $39

	inc de                                           ; $7454: $13
	db $eb                                           ; $7455: $eb
	ld h, l                                          ; $7456: $65
	ld l, h                                          ; $7457: $6c
	dec a                                            ; $7458: $3d
	jr c, jr_093_7495                                ; $7459: $38 $3a

	ld b, d                                          ; $745b: $42
	inc de                                           ; $745c: $13
	ret                                              ; $745d: $c9


	ld c, h                                          ; $745e: $4c
	ld c, b                                          ; $745f: $48
	add hl, bc                                       ; $7460: $09
	cpl                                              ; $7461: $2f
	ld b, e                                          ; $7462: $43
	ld b, b                                          ; $7463: $40
	add hl, sp                                       ; $7464: $39
	xor c                                            ; $7465: $a9
	jr c, jr_093_74a0                                ; $7466: $38 $38

	ldh a, [$ed]                                     ; $7468: $f0 $ed
	ld b, h                                          ; $746a: $44
	ld c, c                                          ; $746b: $49
	inc de                                           ; $746c: $13
	ld [hl], a                                       ; $746d: $77
	xor $1f                                          ; $746e: $ee $1f
	ld b, h                                          ; $7470: $44
	ld e, l                                          ; $7471: $5d
	ld e, d                                          ; $7472: $5a
	ld a, [hl-]                                      ; $7473: $3a
	ld [hl], h                                       ; $7474: $74
	and b                                            ; $7475: $a0
	cpl                                              ; $7476: $2f
	ld b, e                                          ; $7477: $43
	ld b, [hl]                                       ; $7478: $46
	dec sp                                           ; $7479: $3b
	inc [hl]                                         ; $747a: $34
	db $eb                                           ; $747b: $eb
	ld a, [$eaa8]                                    ; $747c: $fa $a8 $ea
	rra                                              ; $747f: $1f
	xor b                                            ; $7480: $a8
	db $eb                                           ; $7481: $eb
	ld d, b                                          ; $7482: $50
	and c                                            ; $7483: $a1
	ld l, a                                          ; $7484: $6f
	inc [hl]                                         ; $7485: $34
	ld d, h                                          ; $7486: $54
	add hl, sp                                       ; $7487: $39
	jr c, jr_093_74c3                                ; $7488: $38 $39

	inc de                                           ; $748a: $13
	ldh a, [$3c]                                     ; $748b: $f0 $3c

jr_093_748d:
	ld d, l                                          ; $748d: $55
	ld e, b                                          ; $748e: $58
	jr c, jr_093_74d3                                ; $748f: $38 $42

	ldh a, [rIF]                                     ; $7491: $f0 $0f
	add e                                            ; $7493: $83
	and b                                            ; $7494: $a0

jr_093_7495:
	ld l, a                                          ; $7495: $6f
	inc [hl]                                         ; $7496: $34
	ld d, h                                          ; $7497: $54
	add hl, sp                                       ; $7498: $39
	jr c, jr_093_74d4                                ; $7499: $38 $39

	inc de                                           ; $749b: $13
	ldh a, [$3c]                                     ; $749c: $f0 $3c
	ld d, l                                          ; $749e: $55
	ld e, b                                          ; $749f: $58

jr_093_74a0:
	jr c, jr_093_74e4                                ; $74a0: $38 $42

	db $ed                                           ; $74a2: $ed
	ld l, b                                          ; $74a3: $68
	ld a, [hl-]                                      ; $74a4: $3a
	ld b, d                                          ; $74a5: $42
	and b                                            ; $74a6: $a0
	ld a, b                                          ; $74a7: $78
	ccf                                              ; $74a8: $3f
	ld b, l                                          ; $74a9: $45
	inc a                                            ; $74aa: $3c
	dec sp                                           ; $74ab: $3b
	dec a                                            ; $74ac: $3d
	ld a, [hl-]                                      ; $74ad: $3a
	dec sp                                           ; $74ae: $3b
	ccf                                              ; $74af: $3f
	inc de                                           ; $74b0: $13
	add d                                            ; $74b1: $82
	add hl, sp                                       ; $74b2: $39
	ldh a, [$78]                                     ; $74b3: $f0 $78
	ld e, e                                          ; $74b5: $5b
	dec [hl]                                         ; $74b6: $35
	cp e                                             ; $74b7: $bb
	ld b, l                                          ; $74b8: $45
	and b                                            ; $74b9: $a0
	cpl                                              ; $74ba: $2f
	ld b, e                                          ; $74bb: $43
	ld b, l                                          ; $74bc: $45
	inc a                                            ; $74bd: $3c
	dec sp                                           ; $74be: $3b
	dec a                                            ; $74bf: $3d
	xor b                                            ; $74c0: $a8
	sub d                                            ; $74c1: $92
	adc [hl]                                         ; $74c2: $8e

jr_093_74c3:
	dec sp                                           ; $74c3: $3b
	ccf                                              ; $74c4: $3f
	xor $2b                                          ; $74c5: $ee $2b
	ld a, $3d                                        ; $74c7: $3e $3d
	ldh a, [$b1]                                     ; $74c9: $f0 $b1
	ldh a, [c]                                       ; $74cb: $f2
	ld [hl+], a                                      ; $74cc: $22
	ld d, e                                          ; $74cd: $53
	inc de                                           ; $74ce: $13
	ld b, [hl]                                       ; $74cf: $46
	dec sp                                           ; $74d0: $3b
	dec a                                            ; $74d1: $3d
	ld b, l                                          ; $74d2: $45

jr_093_74d3:
	and b                                            ; $74d3: $a0

jr_093_74d4:
	ld l, e                                          ; $74d4: $6b
	inc a                                            ; $74d5: $3c
	pop af                                           ; $74d6: $f1
	ld l, e                                          ; $74d7: $6b
	ld a, $3d                                        ; $74d8: $3e $3d
	inc a                                            ; $74da: $3c
	ld a, [hl-]                                      ; $74db: $3a
	dec sp                                           ; $74dc: $3b
	ccf                                              ; $74dd: $3f
	inc de                                           ; $74de: $13
	add d                                            ; $74df: $82
	add hl, sp                                       ; $74e0: $39
	ldh a, [$78]                                     ; $74e1: $f0 $78
	ld e, e                                          ; $74e3: $5b

jr_093_74e4:
	xor b                                            ; $74e4: $a8
	cp e                                             ; $74e5: $bb
	ld b, l                                          ; $74e6: $45
	and b                                            ; $74e7: $a0
	ld c, a                                          ; $74e8: $4f
	add hl, sp                                       ; $74e9: $39
	ldh a, [rAUD4POLY]                               ; $74ea: $f0 $22
	ld a, l                                          ; $74ec: $7d
	ldh a, [rAUD1LEN]                                ; $74ed: $f0 $11
	ld e, c                                          ; $74ef: $59
	xor b                                            ; $74f0: $a8
	ld l, e                                          ; $74f1: $6b
	inc a                                            ; $74f2: $3c
	pop af                                           ; $74f3: $f1
	ld l, e                                          ; $74f4: $6b
	ld a, $3d                                        ; $74f5: $3e $3d
	inc a                                            ; $74f7: $3c
	ld a, [hl-]                                      ; $74f8: $3a
	dec sp                                           ; $74f9: $3b
	ccf                                              ; $74fa: $3f
	add d                                            ; $74fb: $82
	add hl, sp                                       ; $74fc: $39
	ldh a, [$78]                                     ; $74fd: $f0 $78
	ld e, e                                          ; $74ff: $5b
	xor b                                            ; $7500: $a8
	db $ed                                           ; $7501: $ed
	ld e, [hl]                                       ; $7502: $5e
	inc [hl]                                         ; $7503: $34
	cp e                                             ; $7504: $bb
	ld b, l                                          ; $7505: $45
	and b                                            ; $7506: $a0
	cpl                                              ; $7507: $2f
	ld b, e                                          ; $7508: $43
	db $ec                                           ; $7509: $ec
	ld b, a                                          ; $750a: $47
	db $ec                                           ; $750b: $ec
	ld hl, $eb13                                     ; $750c: $21 $13 $eb
	ld a, [$23ec]                                    ; $750f: $fa $ec $23
	xor b                                            ; $7512: $a8
	add sp, -$63                                     ; $7513: $e8 $9d
	and b                                            ; $7515: $a0
	ld b, b                                          ; $7516: $40
	add hl, sp                                       ; $7517: $39
	inc [hl]                                         ; $7518: $34
	db $ec                                           ; $7519: $ec
	reti                                             ; $751a: $d9


	xor l                                            ; $751b: $ad
	ldh a, [$8d]                                     ; $751c: $f0 $8d
	ldh a, [$9e]                                     ; $751e: $f0 $9e
	ld c, h                                          ; $7520: $4c
	xor l                                            ; $7521: $ad
	jp hl                                            ; $7522: $e9


	ld e, h                                          ; $7523: $5c
	and b                                            ; $7524: $a0
	xor $1f                                          ; $7525: $ee $1f
	inc [hl]                                         ; $7527: $34
	ld l, d                                          ; $7528: $6a
	ld l, b                                          ; $7529: $68
	ldh a, [rAUD2HIGH]                               ; $752a: $f0 $19
	ld b, a                                          ; $752c: $47
	inc de                                           ; $752d: $13
	db $ed                                           ; $752e: $ed
	adc b                                            ; $752f: $88
	ld [hl], d                                       ; $7530: $72
	dec a                                            ; $7531: $3d
	jr c, jr_093_7570                                ; $7532: $38 $3c

	ld d, b                                          ; $7534: $50
	and b                                            ; $7535: $a0
	ld b, b                                          ; $7536: $40
	add hl, sp                                       ; $7537: $39
	inc [hl]                                         ; $7538: $34
	db $ec                                           ; $7539: $ec
	reti                                             ; $753a: $d9


	xor l                                            ; $753b: $ad
	jp hl                                            ; $753c: $e9


	ld e, h                                          ; $753d: $5c
	and b                                            ; $753e: $a0
	ldh a, [$08]                                     ; $753f: $f0 $08
	inc a                                            ; $7541: $3c
	ld b, a                                          ; $7542: $47
	ld c, a                                          ; $7543: $4f
	inc [hl]                                         ; $7544: $34
	adc $72                                          ; $7545: $ce $72
	ld c, [hl]                                       ; $7547: $4e
	inc de                                           ; $7548: $13
	ld c, c                                          ; $7549: $49
	ld d, h                                          ; $754a: $54
	ld e, a                                          ; $754b: $5f
	ld b, [hl]                                       ; $754c: $46
	ld c, [hl]                                       ; $754d: $4e
	inc a                                            ; $754e: $3c
	ld d, b                                          ; $754f: $50
	xor l                                            ; $7550: $ad
	or h                                             ; $7551: $b4
	and b                                            ; $7552: $a0
	jp hl                                            ; $7553: $e9


	ld e, h                                          ; $7554: $5c
	and b                                            ; $7555: $a0
	ldh a, [$08]                                     ; $7556: $f0 $08
	inc a                                            ; $7558: $3c
	ld b, a                                          ; $7559: $47
	ld c, a                                          ; $755a: $4f
	xor h                                            ; $755b: $ac
	adc $f3                                          ; $755c: $ce $f3
	ld b, l                                          ; $755e: $45
	ld d, b                                          ; $755f: $50
	ld a, [hl-]                                      ; $7560: $3a
	jr c, jr_093_75ac                                ; $7561: $38 $49

	inc de                                           ; $7563: $13
	jr c, jr_093_75c3                                ; $7564: $38 $5d

	ld a, [hl-]                                      ; $7566: $3a
	jr c, jr_093_75a5                                ; $7567: $38 $3c

	ld d, b                                          ; $7569: $50
	and b                                            ; $756a: $a0
	di                                               ; $756b: $f3
	ret                                              ; $756c: $c9


	ld e, [hl]                                       ; $756d: $5e
	pop af                                           ; $756e: $f1
	ld l, b                                          ; $756f: $68

jr_093_7570:
	ld b, a                                          ; $7570: $47
	inc [hl]                                         ; $7571: $34
	ldh a, [$98]                                     ; $7572: $f0 $98
	inc a                                            ; $7574: $3c
	jr c, jr_093_75c5                                ; $7575: $38 $4e

	ld c, c                                          ; $7577: $49
	inc de                                           ; $7578: $13
	ld [$3a4d], a                                    ; $7579: $ea $4d $3a
	ld [hl], h                                       ; $757c: $74
	xor b                                            ; $757d: $a8
	pop af                                           ; $757e: $f1
	ld l, a                                          ; $757f: $6f
	ld b, c                                          ; $7580: $41
	ld c, c                                          ; $7581: $49
	ld d, h                                          ; $7582: $54
	inc [hl]                                         ; $7583: $34
	ld h, a                                          ; $7584: $67
	ld d, h                                          ; $7585: $54
	and b                                            ; $7586: $a0
	cpl                                              ; $7587: $2f
	ld b, e                                          ; $7588: $43
	ld b, [hl]                                       ; $7589: $46
	dec sp                                           ; $758a: $3b
	xor h                                            ; $758b: $ac
	jp hl                                            ; $758c: $e9


	pop bc                                           ; $758d: $c1
	and b                                            ; $758e: $a0
	add hl, bc                                       ; $758f: $09
	ld [$a82e], a                                    ; $7590: $ea $2e $a8
	ldh a, [rSCX]                                    ; $7593: $f0 $43
	ldh a, [$b8]                                     ; $7595: $f0 $b8
	adc a                                            ; $7597: $8f
	ld c, d                                          ; $7598: $4a
	ld c, e                                          ; $7599: $4b
	xor h                                            ; $759a: $ac
	sbc e                                            ; $759b: $9b
	ld b, d                                          ; $759c: $42
	ldh a, [$c1]                                     ; $759d: $f0 $c1
	ldh a, [$d5]                                     ; $759f: $f0 $d5
	ld h, d                                          ; $75a1: $62
	ld c, b                                          ; $75a2: $48
	and b                                            ; $75a3: $a0
	cpl                                              ; $75a4: $2f

jr_093_75a5:
	ld b, e                                          ; $75a5: $43
	jp hl                                            ; $75a6: $e9


	ld e, l                                          ; $75a7: $5d
	inc de                                           ; $75a8: $13
	pop af                                           ; $75a9: $f1
	ld e, a                                          ; $75aa: $5f
	dec sp                                           ; $75ab: $3b

jr_093_75ac:
	ldh a, [$36]                                     ; $75ac: $f0 $36
	ld d, b                                          ; $75ae: $50
	ld a, [hl-]                                      ; $75af: $3a
	jr c, jr_093_75fc                                ; $75b0: $38 $4a

	ld d, l                                          ; $75b2: $55
	ld c, l                                          ; $75b3: $4d
	ld b, l                                          ; $75b4: $45
	and b                                            ; $75b5: $a0
	xor $10                                          ; $75b6: $ee $10
	xor b                                            ; $75b8: $a8
	ld d, h                                          ; $75b9: $54
	ld d, h                                          ; $75ba: $54
	xor $10                                          ; $75bb: $ee $10
	inc [hl]                                         ; $75bd: $34
	inc hl                                           ; $75be: $23

jr_093_75bf:
	ld [hl], d                                       ; $75bf: $72
	ld c, [hl]                                       ; $75c0: $4e
	ld b, d                                          ; $75c1: $42
	and c                                            ; $75c2: $a1

jr_093_75c3:
	cpl                                              ; $75c3: $2f
	ld b, e                                          ; $75c4: $43

jr_093_75c5:
	db $ec                                           ; $75c5: $ec
	add hl, bc                                       ; $75c6: $09
	ld a, b                                          ; $75c7: $78
	ld b, c                                          ; $75c8: $41
	ld b, h                                          ; $75c9: $44
	inc a                                            ; $75ca: $3c
	ld d, b                                          ; $75cb: $50
	xor h                                            ; $75cc: $ac
	ld [hl], d                                       ; $75cd: $72
	ccf                                              ; $75ce: $3f
	call $d2a0                                       ; $75cf: $cd $a0 $d2
	xor h                                            ; $75d2: $ac
	ld a, a                                          ; $75d3: $7f
	ld d, e                                          ; $75d4: $53
	pop af                                           ; $75d5: $f1
	dec hl                                           ; $75d6: $2b
	ld d, d                                          ; $75d7: $52
	ld a, [hl-]                                      ; $75d8: $3a
	jr c, jr_093_7615                                ; $75d9: $38 $3a

	ld [hl], h                                       ; $75db: $74
	ld c, b                                          ; $75dc: $48
	and b                                            ; $75dd: $a0
	cpl                                              ; $75de: $2f
	ld b, e                                          ; $75df: $43
	ldh a, [rTAC]                                    ; $75e0: $f0 $07
	inc a                                            ; $75e2: $3c
	dec sp                                           ; $75e3: $3b
	dec a                                            ; $75e4: $3d
	inc [hl]                                         ; $75e5: $34
	sbc e                                            ; $75e6: $9b
	ld d, e                                          ; $75e7: $53
	inc de                                           ; $75e8: $13
	ldh a, [$64]                                     ; $75e9: $f0 $64
	jr c, jr_093_7627                                ; $75eb: $38 $3a

	ld b, c                                          ; $75ed: $41
	ld c, d                                          ; $75ee: $4a
	ld a, $66                                        ; $75ef: $3e $66
	add hl, sp                                       ; $75f1: $39
	and c                                            ; $75f2: $a1
	ld b, b                                          ; $75f3: $40
	inc [hl]                                         ; $75f4: $34
	ld b, b                                          ; $75f5: $40
	ld b, c                                          ; $75f6: $41
	ld a, [hl-]                                      ; $75f7: $3a
	ld d, h                                          ; $75f8: $54
	ld c, c                                          ; $75f9: $49
	ld c, b                                          ; $75fa: $48
	xor h                                            ; $75fb: $ac

jr_093_75fc:
	ld a, [hl-]                                      ; $75fc: $3a
	jr c, jr_093_7662                                ; $75fd: $38 $63

	ld b, l                                          ; $75ff: $45
	and b                                            ; $7600: $a0
	cpl                                              ; $7601: $2f
	ld b, e                                          ; $7602: $43
	or h                                             ; $7603: $b4
	xor h                                            ; $7604: $ac
	jr c, jr_093_763f                                ; $7605: $38 $38

	db $ec                                           ; $7607: $ec
	ret c                                            ; $7608: $d8

	xor b                                            ; $7609: $a8
	ld [hl], d                                       ; $760a: $72
	ld b, a                                          ; $760b: $47
	call $eea0                                       ; $760c: $cd $a0 $ee
	db $10                                           ; $760f: $10
	xor b                                            ; $7610: $a8
	ld l, [hl]                                       ; $7611: $6e
	dec sp                                           ; $7612: $3b
	ldh a, [$36]                                     ; $7613: $f0 $36

jr_093_7615:
	xor h                                            ; $7615: $ac
	ld [hl], d                                       ; $7616: $72
	ld c, [hl]                                       ; $7617: $4e
	ld b, d                                          ; $7618: $42
	ld b, l                                          ; $7619: $45
	ld e, b                                          ; $761a: $58
	ld a, [hl-]                                      ; $761b: $3a
	jr c, jr_093_75bf                                ; $761c: $38 $a1

	cpl                                              ; $761e: $2f
	ld b, e                                          ; $761f: $43
	ld e, [hl]                                       ; $7620: $5e
	ld e, c                                          ; $7621: $59
	dec sp                                           ; $7622: $3b
	xor h                                            ; $7623: $ac
	db $ec                                           ; $7624: $ec
	add hl, bc                                       ; $7625: $09
	ld a, b                                          ; $7626: $78

jr_093_7627:
	dec a                                            ; $7627: $3d
	ld b, d                                          ; $7628: $42
	ld b, a                                          ; $7629: $47
	xor b                                            ; $762a: $a8
	ldh a, [rTAC]                                    ; $762b: $f0 $07
	inc a                                            ; $762d: $3c
	dec sp                                           ; $762e: $3b
	dec a                                            ; $762f: $3d
	xor b                                            ; $7630: $a8
	sbc e                                            ; $7631: $9b
	ld d, e                                          ; $7632: $53
	ldh a, [$64]                                     ; $7633: $f0 $64
	jr c, jr_093_7671                                ; $7635: $38 $3a

	ld b, c                                          ; $7637: $41
	ld c, d                                          ; $7638: $4a
	ld a, $66                                        ; $7639: $3e $66
	add hl, sp                                       ; $763b: $39
	and c                                            ; $763c: $a1
	sbc e                                            ; $763d: $9b
	ld d, e                                          ; $763e: $53

jr_093_763f:
	ldh a, [$64]                                     ; $763f: $f0 $64
	jr c, jr_093_767d                                ; $7641: $38 $3a

	ld h, e                                          ; $7643: $63
	ld e, l                                          ; $7644: $5d
	inc de                                           ; $7645: $13
	ld e, e                                          ; $7646: $5b
	ld d, [hl]                                       ; $7647: $56
	ld a, [hl-]                                      ; $7648: $3a
	ld d, l                                          ; $7649: $55
	ccf                                              ; $764a: $3f
	ld c, b                                          ; $764b: $48
	and b                                            ; $764c: $a0
	cpl                                              ; $764d: $2f
	ld b, e                                          ; $764e: $43
	ld h, e                                          ; $764f: $63
	ld e, l                                          ; $7650: $5d
	ld e, e                                          ; $7651: $5b
	ld d, [hl]                                       ; $7652: $56
	ld a, [hl-]                                      ; $7653: $3a
	ld d, l                                          ; $7654: $55
	ccf                                              ; $7655: $3f
	ld c, b                                          ; $7656: $48
	and b                                            ; $7657: $a0
	pop af                                           ; $7658: $f1
	rrca                                             ; $7659: $0f
	db $f4                                           ; $765a: $f4
	ret                                              ; $765b: $c9


	ld d, e                                          ; $765c: $53
	ld c, h                                          ; $765d: $4c
	ld c, b                                          ; $765e: $48
	xor h                                            ; $765f: $ac
	ret                                              ; $7660: $c9


	ld c, b                                          ; $7661: $48

jr_093_7662:
	and b                                            ; $7662: $a0
	cpl                                              ; $7663: $2f
	ld b, e                                          ; $7664: $43
	jp hl                                            ; $7665: $e9


	ld e, l                                          ; $7666: $5d
	inc de                                           ; $7667: $13
	pop af                                           ; $7668: $f1
	ld b, e                                          ; $7669: $43
	ld d, b                                          ; $766a: $50
	ld a, [hl-]                                      ; $766b: $3a
	jr c, jr_093_76b8                                ; $766c: $38 $4a

	ld d, l                                          ; $766e: $55
	ld c, l                                          ; $766f: $4d
	ld b, l                                          ; $7670: $45

jr_093_7671:
	and b                                            ; $7671: $a0
	ld e, [hl]                                       ; $7672: $5e
	add l                                            ; $7673: $85
	inc [hl]                                         ; $7674: $34
	sbc e                                            ; $7675: $9b
	ld a, [hl-]                                      ; $7676: $3a
	ld b, c                                          ; $7677: $41
	ccf                                              ; $7678: $3f
	ld [hl], d                                       ; $7679: $72
	ld c, [hl]                                       ; $767a: $4e
	ld b, d                                          ; $767b: $42
	xor c                                            ; $767c: $a9

jr_093_767d:
	pop af                                           ; $767d: $f1
	jr nc, jr_093_76f1                               ; $767e: $30 $71

	ccf                                              ; $7680: $3f
	ldh a, [$34]                                     ; $7681: $f0 $34
	ld b, d                                          ; $7683: $42
	ld c, c                                          ; $7684: $49
	ld d, h                                          ; $7685: $54
	inc de                                           ; $7686: $13
	call $f0a0                                       ; $7687: $cd $a0 $f0
	db $ec                                           ; $768a: $ec
	ld d, d                                          ; $768b: $52
	dec sp                                           ; $768c: $3b
	ccf                                              ; $768d: $3f
	ld c, [hl]                                       ; $768e: $4e
	db $ec                                           ; $768f: $ec
	ret c                                            ; $7690: $d8

	xor b                                            ; $7691: $a8
	ld b, b                                          ; $7692: $40
	ld b, c                                          ; $7693: $41
	ld a, [hl-]                                      ; $7694: $3a
	ld b, d                                          ; $7695: $42
	ld [hl], d                                       ; $7696: $72
	ld c, [hl]                                       ; $7697: $4e
	ld b, d                                          ; $7698: $42
	ld a, [hl-]                                      ; $7699: $3a
	ld b, c                                          ; $769a: $41
	ccf                                              ; $769b: $3f
	xor h                                            ; $769c: $ac
	ld c, a                                          ; $769d: $4f
	add hl, sp                                       ; $769e: $39
	inc [hl]                                         ; $769f: $34
	ld b, h                                          ; $76a0: $44
	ld e, b                                          ; $76a1: $58
	ld b, h                                          ; $76a2: $44
	ld e, b                                          ; $76a3: $58
	and b                                            ; $76a4: $a0
	cpl                                              ; $76a5: $2f
	ld b, e                                          ; $76a6: $43
	rst JumpTable                                          ; $76a7: $c7
	xor c                                            ; $76a8: $a9
	sbc e                                            ; $76a9: $9b
	ld c, e                                          ; $76aa: $4b
	ldh a, [rVBK]                                    ; $76ab: $f0 $4f
	ld h, d                                          ; $76ad: $62
	inc de                                           ; $76ae: $13
	ldh a, [c]                                       ; $76af: $f2
	or c                                             ; $76b0: $b1
	inc a                                            ; $76b1: $3c
	ld b, a                                          ; $76b2: $47
	ld d, c                                          ; $76b3: $51
	ld c, [hl]                                       ; $76b4: $4e
	ld b, c                                          ; $76b5: $41
	ld b, h                                          ; $76b6: $44
	ld b, l                                          ; $76b7: $45

jr_093_76b8:
	and b                                            ; $76b8: $a0
	ld [$a82e], a                                    ; $76b9: $ea $2e $a8
	ldh a, [rSCX]                                    ; $76bc: $f0 $43
	ldh a, [$b8]                                     ; $76be: $f0 $b8
	adc a                                            ; $76c0: $8f
	ld c, d                                          ; $76c1: $4a
	ld c, e                                          ; $76c2: $4b
	xor h                                            ; $76c3: $ac
	ldh a, [$a5]                                     ; $76c4: $f0 $a5
	ldh a, [rSCX]                                    ; $76c6: $f0 $43
	ld b, d                                          ; $76c8: $42
	ldh a, [$c1]                                     ; $76c9: $f0 $c1
	ldh a, [$d5]                                     ; $76cb: $f0 $d5
	ld h, d                                          ; $76cd: $62
	ld c, b                                          ; $76ce: $48
	and b                                            ; $76cf: $a0
	cpl                                              ; $76d0: $2f
	ld b, e                                          ; $76d1: $43
	db $ec                                           ; $76d2: $ec
	add hl, bc                                       ; $76d3: $09
	ld a, b                                          ; $76d4: $78
	dec a                                            ; $76d5: $3d
	ld b, c                                          ; $76d6: $41
	ld b, h                                          ; $76d7: $44
	inc a                                            ; $76d8: $3c
	ld d, b                                          ; $76d9: $50
	xor h                                            ; $76da: $ac
	ld [hl], d                                       ; $76db: $72
	ccf                                              ; $76dc: $3f
	call $2fa0                                       ; $76dd: $cd $a0 $2f
	ld b, e                                          ; $76e0: $43
	ldh a, [rTAC]                                    ; $76e1: $f0 $07
	inc a                                            ; $76e3: $3c
	dec sp                                           ; $76e4: $3b
	dec a                                            ; $76e5: $3d
	inc [hl]                                         ; $76e6: $34
	ldh a, [$a5]                                     ; $76e7: $f0 $a5
	ldh a, [rSCX]                                    ; $76e9: $f0 $43
	ld d, e                                          ; $76eb: $53
	inc de                                           ; $76ec: $13
	ldh a, [$64]                                     ; $76ed: $f0 $64
	jr c, jr_093_772b                                ; $76ef: $38 $3a

jr_093_76f1:
	ld b, c                                          ; $76f1: $41
	ld c, d                                          ; $76f2: $4a
	ld a, $66                                        ; $76f3: $3e $66
	add hl, sp                                       ; $76f5: $39
	and c                                            ; $76f6: $a1
	ld b, b                                          ; $76f7: $40
	inc [hl]                                         ; $76f8: $34
	ld b, b                                          ; $76f9: $40
	ld b, c                                          ; $76fa: $41
	ld a, [hl-]                                      ; $76fb: $3a
	ld d, h                                          ; $76fc: $54
	ld c, c                                          ; $76fd: $49
	ld c, b                                          ; $76fe: $48
	xor h                                            ; $76ff: $ac
	ld b, [hl]                                       ; $7700: $46
	ld c, [hl]                                       ; $7701: $4e
	ld e, l                                          ; $7702: $5d
	ld e, d                                          ; $7703: $5a
	ld c, b                                          ; $7704: $48
	and b                                            ; $7705: $a0
	cpl                                              ; $7706: $2f
	ld b, e                                          ; $7707: $43
	db $ec                                           ; $7708: $ec
	ld a, [de]                                       ; $7709: $1a
	ld d, h                                          ; $770a: $54
	add hl, sp                                       ; $770b: $39
	jr c, jr_093_7747                                ; $770c: $38 $39

	ld b, d                                          ; $770e: $42
	ld h, d                                          ; $770f: $62
	inc de                                           ; $7710: $13
	ld [hl], d                                       ; $7711: $72
	ld c, [hl]                                       ; $7712: $4e
	ld b, d                                          ; $7713: $42
	ld c, a                                          ; $7714: $4f
	jr c, jr_093_774f                                ; $7715: $38 $38

	inc a                                            ; $7717: $3c
	ld c, a                                          ; $7718: $4f
	ld b, l                                          ; $7719: $45
	and b                                            ; $771a: $a0
	xor $10                                          ; $771b: $ee $10
	xor b                                            ; $771d: $a8
	ld l, [hl]                                       ; $771e: $6e
	dec sp                                           ; $771f: $3b
	ldh a, [$36]                                     ; $7720: $f0 $36
	inc [hl]                                         ; $7722: $34
	ld [hl], d                                       ; $7723: $72
	ld c, [hl]                                       ; $7724: $4e
	ld b, d                                          ; $7725: $42
	ld b, l                                          ; $7726: $45
	ld e, b                                          ; $7727: $58
	ld a, [hl-]                                      ; $7728: $3a
	jr c, @-$5d                                      ; $7729: $38 $a1

jr_093_772b:
	cpl                                              ; $772b: $2f
	ld b, e                                          ; $772c: $43
	ld e, [hl]                                       ; $772d: $5e
	ld e, c                                          ; $772e: $59
	dec sp                                           ; $772f: $3b
	xor h                                            ; $7730: $ac
	db $ec                                           ; $7731: $ec
	add hl, bc                                       ; $7732: $09
	ld a, b                                          ; $7733: $78
	dec a                                            ; $7734: $3d
	ld b, d                                          ; $7735: $42
	ld b, a                                          ; $7736: $47
	xor b                                            ; $7737: $a8
	ldh a, [rTAC]                                    ; $7738: $f0 $07
	inc a                                            ; $773a: $3c
	dec sp                                           ; $773b: $3b
	dec a                                            ; $773c: $3d
	xor b                                            ; $773d: $a8
	ldh a, [$a5]                                     ; $773e: $f0 $a5
	ldh a, [rSCX]                                    ; $7740: $f0 $43
	ld d, e                                          ; $7742: $53
	ldh a, [$64]                                     ; $7743: $f0 $64
	jr c, jr_093_7781                                ; $7745: $38 $3a

jr_093_7747:
	ld b, c                                          ; $7747: $41
	ld c, d                                          ; $7748: $4a
	ld a, $66                                        ; $7749: $3e $66
	add hl, sp                                       ; $774b: $39
	and c                                            ; $774c: $a1
	ld c, b                                          ; $774d: $48
	db $eb                                           ; $774e: $eb

jr_093_774f:
	adc c                                            ; $774f: $89
	ld c, h                                          ; $7750: $4c
	and b                                            ; $7751: $a0
	ld e, [hl]                                       ; $7752: $5e
	add l                                            ; $7753: $85
	ld e, c                                          ; $7754: $59
	dec sp                                           ; $7755: $3b
	xor h                                            ; $7756: $ac
	ldh a, [$a5]                                     ; $7757: $f0 $a5
	ldh a, [rSCX]                                    ; $7759: $f0 $43
	ld a, [hl-]                                      ; $775b: $3a
	ld b, c                                          ; $775c: $41
	ccf                                              ; $775d: $3f
	ld [hl], d                                       ; $775e: $72
	ld c, [hl]                                       ; $775f: $4e
	ld b, d                                          ; $7760: $42
	xor c                                            ; $7761: $a9
	pop af                                           ; $7762: $f1
	jr nc, jr_093_77d6                               ; $7763: $30 $71

	ccf                                              ; $7765: $3f
	ldh a, [$34]                                     ; $7766: $f0 $34
	ld b, d                                          ; $7768: $42
	ldh a, [$28]                                     ; $7769: $f0 $28
	call $f0a0                                       ; $776b: $cd $a0 $f0
	db $ec                                           ; $776e: $ec
	ld d, d                                          ; $776f: $52
	dec sp                                           ; $7770: $3b
	ccf                                              ; $7771: $3f
	ld c, [hl]                                       ; $7772: $4e
	db $ec                                           ; $7773: $ec
	ret c                                            ; $7774: $d8

	xor b                                            ; $7775: $a8
	ld b, b                                          ; $7776: $40
	ld b, c                                          ; $7777: $41
	ld a, [hl-]                                      ; $7778: $3a
	inc [hl]                                         ; $7779: $34
	ld h, c                                          ; $777a: $61
	ld h, [hl]                                       ; $777b: $66
	ld b, h                                          ; $777c: $44
	ld e, b                                          ; $777d: $58
	ld a, [hl-]                                      ; $777e: $3a
	ld b, d                                          ; $777f: $42
	xor h                                            ; $7780: $ac

jr_093_7781:
	ld [hl], d                                       ; $7781: $72
	ld c, [hl]                                       ; $7782: $4e
	ld b, d                                          ; $7783: $42
	pop af                                           ; $7784: $f1
	jr nc, jr_093_77f8                               ; $7785: $30 $71

	ccf                                              ; $7787: $3f
	ld c, b                                          ; $7788: $48
	and b                                            ; $7789: $a0
	cpl                                              ; $778a: $2f
	ld b, e                                          ; $778b: $43
	rst JumpTable                                          ; $778c: $c7
	xor c                                            ; $778d: $a9
	ldh a, [$a5]                                     ; $778e: $f0 $a5
	ldh a, [rSCX]                                    ; $7790: $f0 $43
	inc [hl]                                         ; $7792: $34
	xor $05                                          ; $7793: $ee $05
	inc a                                            ; $7795: $3c
	ld a, [hl-]                                      ; $7796: $3a
	ld [hl], h                                       ; $7797: $74
	ld c, b                                          ; $7798: $48
	and b                                            ; $7799: $a0
	add hl, sp                                       ; $779a: $39
	inc [hl]                                         ; $779b: $34
	xor $1f                                          ; $779c: $ee $1f
	ld c, b                                          ; $779e: $48
	and b                                            ; $779f: $a0
	cpl                                              ; $77a0: $2f
	ld b, e                                          ; $77a1: $43
	db $eb                                           ; $77a2: $eb
	ld d, b                                          ; $77a3: $50
	xor c                                            ; $77a4: $a9
	db $eb                                           ; $77a5: $eb
	ld a, [$eca0]                                    ; $77a6: $fa $a0 $ec
	ld hl, sp-$10                                    ; $77a9: $f8 $f0
	adc $63                                          ; $77ab: $ce $63
	dec sp                                           ; $77ad: $3b
	dec a                                            ; $77ae: $3d
	xor b                                            ; $77af: $a8
	ld b, [hl]                                       ; $77b0: $46
	ld [hl], h                                       ; $77b1: $74
	inc [hl]                                         ; $77b2: $34
	cp e                                             ; $77b3: $bb
	ld a, [hl-]                                      ; $77b4: $3a
	ld [hl], h                                       ; $77b5: $74
	ld c, b                                          ; $77b6: $48
	and b                                            ; $77b7: $a0
	cpl                                              ; $77b8: $2f
	ld b, e                                          ; $77b9: $43
	ld l, e                                          ; $77ba: $6b
	ld b, h                                          ; $77bb: $44
	inc a                                            ; $77bc: $3c
	pop af                                           ; $77bd: $f1
	dec l                                            ; $77be: $2d
	ld b, a                                          ; $77bf: $47
	xor h                                            ; $77c0: $ac
	ldh a, [$7f]                                     ; $77c1: $f0 $7f
	ld d, e                                          ; $77c3: $53
	ld a, [hl-]                                      ; $77c4: $3a
	jr c, jr_093_7813                                ; $77c5: $38 $4c

	add l                                            ; $77c7: $85
	and b                                            ; $77c8: $a0
	ldh a, [$08]                                     ; $77c9: $f0 $08
	ld d, b                                          ; $77cb: $50
	inc [hl]                                         ; $77cc: $34
	ld b, b                                          ; $77cd: $40
	ld b, c                                          ; $77ce: $41
	ld a, [hl-]                                      ; $77cf: $3a
	sbc d                                            ; $77d0: $9a
	ld b, l                                          ; $77d1: $45
	ld d, a                                          ; $77d2: $57
	inc de                                           ; $77d3: $13
	pop af                                           ; $77d4: $f1
	ld l, a                                          ; $77d5: $6f

jr_093_77d6:
	ld b, d                                          ; $77d6: $42
	ldh a, [$28]                                     ; $77d7: $f0 $28
	ld b, a                                          ; $77d9: $47
	call $2fa0                                       ; $77da: $cd $a0 $2f
	ld b, e                                          ; $77dd: $43
	ld e, [hl]                                       ; $77de: $5e
	add l                                            ; $77df: $85
	xor c                                            ; $77e0: $a9
	ld c, a                                          ; $77e1: $4f
	add hl, sp                                       ; $77e2: $39
	db $eb                                           ; $77e3: $eb
	jr c, jr_093_782b                                ; $77e4: $38 $45

	and b                                            ; $77e6: $a0
	jr c, jr_093_7821                                ; $77e7: $38 $38

	db $ec                                           ; $77e9: $ec
	ret c                                            ; $77ea: $d8

	xor b                                            ; $77eb: $a8
	ldh a, [$08]                                     ; $77ec: $f0 $08
	ld d, b                                          ; $77ee: $50
	inc [hl]                                         ; $77ef: $34
	ldh a, [$0a]                                     ; $77f0: $f0 $0a
	ld d, l                                          ; $77f2: $55
	ldh a, [$0a]                                     ; $77f3: $f0 $0a
	ld d, l                                          ; $77f5: $55
	and b                                            ; $77f6: $a0
	cpl                                              ; $77f7: $2f

jr_093_77f8:
	ld b, e                                          ; $77f8: $43
	ld b, b                                          ; $77f9: $40
	add hl, sp                                       ; $77fa: $39
	xor b                                            ; $77fb: $a8
	ld e, e                                          ; $77fc: $5b
	ld d, [hl]                                       ; $77fd: $56
	ld b, [hl]                                       ; $77fe: $46
	inc [hl]                                         ; $77ff: $34
	ld [hl], d                                       ; $7800: $72
	ld b, a                                          ; $7801: $47
	db $ec                                           ; $7802: $ec
	rlca                                             ; $7803: $07
	and c                                            ; $7804: $a1
	ld e, [hl]                                       ; $7805: $5e
	ld e, c                                          ; $7806: $59
	dec sp                                           ; $7807: $3b
	inc [hl]                                         ; $7808: $34
	ld d, d                                          ; $7809: $52
	ld e, e                                          ; $780a: $5b
	ldh a, [c]                                       ; $780b: $f2
	db $eb                                           ; $780c: $eb
	and c                                            ; $780d: $a1
	cpl                                              ; $780e: $2f
	ld b, e                                          ; $780f: $43
	ldh a, [$08]                                     ; $7810: $f0 $08
	ld d, b                                          ; $7812: $50

jr_093_7813:
	inc [hl]                                         ; $7813: $34
	ld h, a                                          ; $7814: $67
	ld d, l                                          ; $7815: $55
	ld b, l                                          ; $7816: $45
	and b                                            ; $7817: $a0
	add hl, sp                                       ; $7818: $39
	ldh a, [c]                                       ; $7819: $f2
	ld l, h                                          ; $781a: $6c
	xor l                                            ; $781b: $ad
	db $ed                                           ; $781c: $ed
	ld e, [hl]                                       ; $781d: $5e
	inc [hl]                                         ; $781e: $34
	pop af                                           ; $781f: $f1
	dec sp                                           ; $7820: $3b

jr_093_7821:
	ld b, c                                          ; $7821: $41
	ld a, [hl-]                                      ; $7822: $3a
	jr c, jr_093_7863                                ; $7823: $38 $3e

	xor h                                            ; $7825: $ac
	ldh a, [rAUD4ENV]                                ; $7826: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7828: $f0 $23
	ld d, l                                          ; $782a: $55

jr_093_782b:
	ld a, [hl-]                                      ; $782b: $3a
	inc a                                            ; $782c: $3c
	dec sp                                           ; $782d: $3b
	dec a                                            ; $782e: $3d
	ld b, l                                          ; $782f: $45
	and b                                            ; $7830: $a0
	cpl                                              ; $7831: $2f
	ld b, e                                          ; $7832: $43
	ld b, b                                          ; $7833: $40
	add hl, sp                                       ; $7834: $39
	xor c                                            ; $7835: $a9
	ld [hl-], a                                      ; $7836: $32
	ldh a, [$80]                                     ; $7837: $f0 $80
	ldh a, [$c5]                                     ; $7839: $f0 $c5
	ei                                               ; $783b: $fb
	ld a, b                                          ; $783c: $78
	ld e, [hl]                                       ; $783d: $5e
	dec a                                            ; $783e: $3d
	ld l, h                                          ; $783f: $6c
	dec a                                            ; $7840: $3d
	jr c, jr_093_7887                                ; $7841: $38 $44

	ld a, [hl-]                                      ; $7843: $3a
	and e                                            ; $7844: $a3
	ld d, h                                          ; $7845: $54
	ld d, h                                          ; $7846: $54
	inc de                                           ; $7847: $13
	ldh a, [$9a]                                     ; $7848: $f0 $9a
	ld e, h                                          ; $784a: $5c
	ldh a, [rTMA]                                    ; $784b: $f0 $06
	dec sp                                           ; $784d: $3b
	dec a                                            ; $784e: $3d
	ld b, c                                          ; $784f: $41
	ld b, h                                          ; $7850: $44
	inc a                                            ; $7851: $3c
	ld d, b                                          ; $7852: $50
	xor h                                            ; $7853: $ac
	ld d, h                                          ; $7854: $54
	ld b, d                                          ; $7855: $42
	ldh a, [c]                                       ; $7856: $f2
	ld l, a                                          ; $7857: $6f
	push af                                          ; $7858: $f5
	dec [hl]                                         ; $7859: $35
	ld c, e                                          ; $785a: $4b
	xor h                                            ; $785b: $ac
	ldh a, [$9a]                                     ; $785c: $f0 $9a
	ld e, h                                          ; $785e: $5c
	ldh a, [rTMA]                                    ; $785f: $f0 $06
	dec sp                                           ; $7861: $3b
	ccf                                              ; $7862: $3f

jr_093_7863:
	ld c, a                                          ; $7863: $4f
	ld d, b                                          ; $7864: $50
	add hl, sp                                       ; $7865: $39
	inc a                                            ; $7866: $3c
	ld b, c                                          ; $7867: $41
	ld c, h                                          ; $7868: $4c
	and b                                            ; $7869: $a0
	cpl                                              ; $786a: $2f
	ld b, e                                          ; $786b: $43
	ld e, [hl]                                       ; $786c: $5e
	add l                                            ; $786d: $85
	dec sp                                           ; $786e: $3b
	ld [hl], $37                                     ; $786f: $36 $37
	rla                                              ; $7871: $17
	ld [hl-], a                                      ; $7872: $32
	db $ec                                           ; $7873: $ec
	push de                                          ; $7874: $d5
	xor h                                            ; $7875: $ac
	or $f3                                           ; $7876: $f6 $f3
	push af                                          ; $7878: $f5
	ld e, b                                          ; $7879: $58
	ld h, d                                          ; $787a: $62
	ld a, [$3bf2]                                    ; $787b: $fa $f2 $3b
	dec a                                            ; $787e: $3d
	inc a                                            ; $787f: $3c
	ld c, b                                          ; $7880: $48
	inc sp                                           ; $7881: $33
	add hl, bc                                       ; $7882: $09
	ldh a, [$08]                                     ; $7883: $f0 $08
	ld d, b                                          ; $7885: $50
	inc [hl]                                         ; $7886: $34

jr_093_7887:
	ld l, e                                          ; $7887: $6b
	ld a, $3f                                        ; $7888: $3e $3f
	ld c, [hl]                                       ; $788a: $4e
	ld b, d                                          ; $788b: $42
	xor b                                            ; $788c: $a8
	ldh a, [$0a]                                     ; $788d: $f0 $0a
	ld d, l                                          ; $788f: $55
	ld h, a                                          ; $7890: $67
	ld d, l                                          ; $7891: $55
	ld h, e                                          ; $7892: $63
	ld b, l                                          ; $7893: $45
	and b                                            ; $7894: $a0
	cpl                                              ; $7895: $2f
	ld b, e                                          ; $7896: $43
	ld b, [hl]                                       ; $7897: $46
	ld [hl], h                                       ; $7898: $74
	inc [hl]                                         ; $7899: $34
	ret                                              ; $789a: $c9


	sbc c                                            ; $789b: $99
	dec sp                                           ; $789c: $3b
	ccf                                              ; $789d: $3f
	xor l                                            ; $789e: $ad
	db $eb                                           ; $789f: $eb
	ld a, [$f034]                                    ; $78a0: $fa $34 $f0
	ld a, [bc]                                       ; $78a3: $0a
	ld d, c                                          ; $78a4: $51
	ldh a, [$cb]                                     ; $78a5: $f0 $cb
	ld b, h                                          ; $78a7: $44
	ld b, l                                          ; $78a8: $45
	and b                                            ; $78a9: $a0
	db $ec                                           ; $78aa: $ec
	add hl, bc                                       ; $78ab: $09
	ld b, d                                          ; $78ac: $42
	inc de                                           ; $78ad: $13
	db $ed                                           ; $78ae: $ed
	db $10                                           ; $78af: $10
	ld a, [hl-]                                      ; $78b0: $3a
	ld b, c                                          ; $78b1: $41
	ld b, h                                          ; $78b2: $44
	inc a                                            ; $78b3: $3c
	ld d, b                                          ; $78b4: $50
	xor h                                            ; $78b5: $ac
	ld c, a                                          ; $78b6: $4f
	dec sp                                           ; $78b7: $3b
	ld c, c                                          ; $78b8: $49
	ldh a, [rAUD4ENV]                                ; $78b9: $f0 $21
	ldh a, [rAUD4GO]                                 ; $78bb: $f0 $23
	jr c, jr_093_7908                                ; $78bd: $38 $49

	ld d, h                                          ; $78bf: $54
	call $2fa0                                       ; $78c0: $cd $a0 $2f
	ld b, e                                          ; $78c3: $43
	rst JumpTable                                          ; $78c4: $c7
	ld [hl], $4a                                     ; $78c5: $36 $4a
	ld c, a                                          ; $78c7: $4f
	ld c, b                                          ; $78c8: $48
	and b                                            ; $78c9: $a0
	ldh a, [$08]                                     ; $78ca: $f0 $08
	ld d, b                                          ; $78cc: $50
	xor h                                            ; $78cd: $ac
	ldh a, [$bc]                                     ; $78ce: $f0 $bc
	ld b, a                                          ; $78d0: $47
	ld h, a                                          ; $78d1: $67
	dec sp                                           ; $78d2: $3b
	ld h, c                                          ; $78d3: $61
	ld d, [hl]                                       ; $78d4: $56
	add hl, sp                                       ; $78d5: $39
	ld b, l                                          ; $78d6: $45
	and b                                            ; $78d7: $a0
	cpl                                              ; $78d8: $2f
	ld b, e                                          ; $78d9: $43
	ld b, [hl]                                       ; $78da: $46
	dec sp                                           ; $78db: $3b
	inc [hl]                                         ; $78dc: $34
	jp hl                                            ; $78dd: $e9


	pop bc                                           ; $78de: $c1
	and b                                            ; $78df: $a0
	ld [$a82e], a                                    ; $78e0: $ea $2e $a8

jr_093_78e3:
	db $ed                                           ; $78e3: $ed
	ld l, d                                          ; $78e4: $6a
	add a                                            ; $78e5: $87
	ldh a, [rHDMA3]                                  ; $78e6: $f0 $53
	inc de                                           ; $78e8: $13
	ld [$a05d], a                                    ; $78e9: $ea $5d $a0
	ld a, [hl-]                                      ; $78ec: $3a
	ld b, c                                          ; $78ed: $41
	inc a                                            ; $78ee: $3c
	di                                               ; $78ef: $f3
	reti                                             ; $78f0: $d9


	jr c, jr_093_78e3                                ; $78f1: $38 $f0

	inc h                                            ; $78f3: $24
	ld c, d                                          ; $78f4: $4a
	xor h                                            ; $78f5: $ac
	db $db                                           ; $78f6: $db
	ld a, [hl-]                                      ; $78f7: $3a

jr_093_78f8:
	inc a                                            ; $78f8: $3c
	dec sp                                           ; $78f9: $3b
	dec a                                            ; $78fa: $3d
	ld a, [hl-]                                      ; $78fb: $3a
	ld [hl], h                                       ; $78fc: $74
	ld c, b                                          ; $78fd: $48
	and b                                            ; $78fe: $a0
	cpl                                              ; $78ff: $2f
	ld b, e                                          ; $7900: $43
	ld b, b                                          ; $7901: $40
	add hl, sp                                       ; $7902: $39
	ld b, h                                          ; $7903: $44
	ld c, h                                          ; $7904: $4c
	xor b                                            ; $7905: $a8
	ld b, l                                          ; $7906: $45
	ld d, l                                          ; $7907: $55

jr_093_7908:
	pop af                                           ; $7908: $f1
	dec sp                                           ; $7909: $3b
	ld d, b                                          ; $790a: $50
	ld a, [hl-]                                      ; $790b: $3a
	jr c, jr_093_7921                                ; $790c: $38 $13

	ldh a, [rAUDVOL]                                 ; $790e: $f0 $24
	ld b, h                                          ; $7910: $44
	dec sp                                           ; $7911: $3b
	dec a                                            ; $7912: $3d
	ld a, $4c                                        ; $7913: $3e $4c
	ld c, b                                          ; $7915: $48
	and b                                            ; $7916: $a0
	ld e, e                                          ; $7917: $5b
	ld d, [hl]                                       ; $7918: $56
	ld b, [hl]                                       ; $7919: $46
	inc [hl]                                         ; $791a: $34
	pop af                                           ; $791b: $f1
	push af                                          ; $791c: $f5
	ldh a, [hDisp1_WX]                                     ; $791d: $f0 $96
	ld a, $47                                        ; $791f: $3e $47

jr_093_7921:
	xor h                                            ; $7921: $ac
	pop af                                           ; $7922: $f1
	ld l, a                                          ; $7923: $6f
	ld b, d                                          ; $7924: $42
	ldh a, [$28]                                     ; $7925: $f0 $28
	inc [hl]                                         ; $7927: $34
	call $2fa0                                       ; $7928: $cd $a0 $2f
	ld b, e                                          ; $792b: $43
	db $eb                                           ; $792c: $eb
	xor d                                            ; $792d: $aa
	xor h                                            ; $792e: $ac
	db $ed                                           ; $792f: $ed
	db $10                                           ; $7930: $10
	ldh a, [$ce]                                     ; $7931: $f0 $ce
	ld h, e                                          ; $7933: $63
	ld d, a                                          ; $7934: $57
	ld b, d                                          ; $7935: $42
	ldh a, [rBGP]                                    ; $7936: $f0 $47
	ldh a, [$2a]                                     ; $7938: $f0 $2a
	ld b, h                                          ; $793a: $44
	ld b, l                                          ; $793b: $45
	and b                                            ; $793c: $a0
	ld c, a                                          ; $793d: $4f
	add hl, sp                                       ; $793e: $39
	inc [hl]                                         ; $793f: $34
	ld b, b                                          ; $7940: $40
	ld b, c                                          ; $7941: $41
	ld a, [hl-]                                      ; $7942: $3a
	ldh a, [rBGP]                                    ; $7943: $f0 $47
	ldh a, [$2a]                                     ; $7945: $f0 $2a
	xor c                                            ; $7947: $a9
	ld e, e                                          ; $7948: $5b
	ld d, [hl]                                       ; $7949: $56
	ld b, [hl]                                       ; $794a: $46
	ld e, b                                          ; $794b: $58
	xor h                                            ; $794c: $ac
	ld h, h                                          ; $794d: $64
	di                                               ; $794e: $f3
	sbc b                                            ; $794f: $98
	ld a, $3f                                        ; $7950: $3e $3f
	ld a, d                                          ; $7952: $7a
	ld d, b                                          ; $7953: $50
	ld a, [hl-]                                      ; $7954: $3a
	jr c, jr_093_78f8                                ; $7955: $38 $a1

	cpl                                              ; $7957: $2f
	ld b, e                                          ; $7958: $43
	ld b, b                                          ; $7959: $40
	add hl, sp                                       ; $795a: $39
	ld b, h                                          ; $795b: $44
	ld c, h                                          ; $795c: $4c
	xor b                                            ; $795d: $a8
	ld b, b                                          ; $795e: $40
	add hl, sp                                       ; $795f: $39
	ld a, $48                                        ; $7960: $3e $48
	and b                                            ; $7962: $a0
	ldh a, [$08]                                     ; $7963: $f0 $08
	ld d, b                                          ; $7965: $50
	ldh a, [$08]                                     ; $7966: $f0 $08
	ld d, b                                          ; $7968: $50
	xor h                                            ; $7969: $ac
	ldh a, [$0a]                                     ; $796a: $f0 $0a
	ld d, l                                          ; $796c: $55
	call $2fa0                                       ; $796d: $cd $a0 $2f
	ld b, e                                          ; $7970: $43
	ld h, c                                          ; $7971: $61
	ld h, [hl]                                       ; $7972: $66
	inc [hl]                                         ; $7973: $34
	ret                                              ; $7974: $c9


	ld c, b                                          ; $7975: $48
	and b                                            ; $7976: $a0
	pop af                                           ; $7977: $f1
	ld d, d                                          ; $7978: $52
	di                                               ; $7979: $f3
	reti                                             ; $797a: $d9


	ld [hl], h                                       ; $797b: $74
	ld e, c                                          ; $797c: $59
	xor b                                            ; $797d: $a8
	ld l, e                                          ; $797e: $6b
	ld b, h                                          ; $797f: $44
	dec sp                                           ; $7980: $3b
	dec a                                            ; $7981: $3d
	ld b, d                                          ; $7982: $42
	inc [hl]                                         ; $7983: $34
	ld l, d                                          ; $7984: $6a
	ld b, d                                          ; $7985: $42
	add h                                            ; $7986: $84
	and b                                            ; $7987: $a0
	cpl                                              ; $7988: $2f
	ld b, e                                          ; $7989: $43
	ld e, b                                          ; $798a: $58
	ld [hl], h                                       ; $798b: $74
	xor h                                            ; $798c: $ac
	ld l, e                                          ; $798d: $6b
	ld b, h                                          ; $798e: $44
	dec sp                                           ; $798f: $3b
	dec a                                            ; $7990: $3d
	ld b, c                                          ; $7991: $41
	ld b, h                                          ; $7992: $44
	ld e, a                                          ; $7993: $5f
	add hl, sp                                       ; $7994: $39
	ld c, h                                          ; $7995: $4c
	and b                                            ; $7996: $a0
	ld e, e                                          ; $7997: $5b
	ld d, [hl]                                       ; $7998: $56
	ld b, [hl]                                       ; $7999: $46
	inc [hl]                                         ; $799a: $34
	pop af                                           ; $799b: $f1
	push af                                          ; $799c: $f5
	ldh a, [hDisp1_WX]                                     ; $799d: $f0 $96
	ld a, $47                                        ; $799f: $3e $47
	xor h                                            ; $79a1: $ac
	pop af                                           ; $79a2: $f1
	ld l, a                                          ; $79a3: $6f
	ld b, d                                          ; $79a4: $42
	ld c, c                                          ; $79a5: $49
	ld d, h                                          ; $79a6: $54
	call Call_093_4fa0                               ; $79a7: $cd $a0 $4f
	add hl, sp                                       ; $79aa: $39
	inc [hl]                                         ; $79ab: $34
	ld b, b                                          ; $79ac: $40
	ld b, c                                          ; $79ad: $41
	ld a, [hl-]                                      ; $79ae: $3a
	ldh a, [rBGP]                                    ; $79af: $f0 $47
	ldh a, [$2a]                                     ; $79b1: $f0 $2a
	xor c                                            ; $79b3: $a9
	ld e, e                                          ; $79b4: $5b
	ld d, [hl]                                       ; $79b5: $56
	ld b, [hl]                                       ; $79b6: $46
	ld e, b                                          ; $79b7: $58
	xor h                                            ; $79b8: $ac
	ld h, h                                          ; $79b9: $64
	di                                               ; $79ba: $f3
	sbc b                                            ; $79bb: $98
	ld a, $3f                                        ; $79bc: $3e $3f
	ld a, d                                          ; $79be: $7a
	ld e, a                                          ; $79bf: $5f
	add hl, sp                                       ; $79c0: $39
	ld b, l                                          ; $79c1: $45
	and b                                            ; $79c2: $a0
	ld l, d                                          ; $79c3: $6a
	ld b, d                                          ; $79c4: $42
	add h                                            ; $79c5: $84
	inc [hl]                                         ; $79c6: $34
	ld b, h                                          ; $79c7: $44
	dec sp                                           ; $79c8: $3b
	ld e, b                                          ; $79c9: $58
	ld e, c                                          ; $79ca: $59
	xor b                                            ; $79cb: $a8
	ld c, a                                          ; $79cc: $4f
	add hl, sp                                       ; $79cd: $39
	ret                                              ; $79ce: $c9


	ld a, a                                          ; $79cf: $7f
	ld b, d                                          ; $79d0: $42
	di                                               ; $79d1: $f3
	call nz, $3d38                                   ; $79d2: $c4 $38 $3d
	ld d, h                                          ; $79d5: $54
	ld c, c                                          ; $79d6: $49
	inc de                                           ; $79d7: $13
	add d                                            ; $79d8: $82
	dec sp                                           ; $79d9: $3b
	ccf                                              ; $79da: $3f
	db $ec                                           ; $79db: $ec
	push af                                          ; $79dc: $f5
	ld b, l                                          ; $79dd: $45
	ld c, h                                          ; $79de: $4c
	and b                                            ; $79df: $a0
	cpl                                              ; $79e0: $2f
	ld b, e                                          ; $79e1: $43
	ld a, $3c                                        ; $79e2: $3e $3c
	ld c, a                                          ; $79e4: $4f
	inc [hl]                                         ; $79e5: $34
	ld b, l                                          ; $79e6: $45
	ld d, l                                          ; $79e7: $55
	pop af                                           ; $79e8: $f1
	dec sp                                           ; $79e9: $3b
	ld d, b                                          ; $79ea: $50
	ld a, [hl-]                                      ; $79eb: $3a
	jr c, jr_093_7a01                                ; $79ec: $38 $13

	ldh a, [rAUDVOL]                                 ; $79ee: $f0 $24
	ld b, h                                          ; $79f0: $44
	dec sp                                           ; $79f1: $3b
	dec a                                            ; $79f2: $3d
	ld c, h                                          ; $79f3: $4c
	and b                                            ; $79f4: $a0
	ld l, e                                          ; $79f5: $6b
	inc a                                            ; $79f6: $3c
	xor h                                            ; $79f7: $ac
	ld a, a                                          ; $79f8: $7f
	ld d, e                                          ; $79f9: $53
	pop af                                           ; $79fa: $f1
	or h                                             ; $79fb: $b4
	ld e, l                                          ; $79fc: $5d
	ld h, c                                          ; $79fd: $61
	ld d, [hl]                                       ; $79fe: $56
	dec sp                                           ; $79ff: $3b
	dec a                                            ; $7a00: $3d

jr_093_7a01:
	ld a, [hl-]                                      ; $7a01: $3a
	xor b                                            ; $7a02: $a8
	ld c, a                                          ; $7a03: $4f
	add hl, sp                                       ; $7a04: $39
	inc [hl]                                         ; $7a05: $34
	ld a, d                                          ; $7a06: $7a
	ld e, a                                          ; $7a07: $5f
	add hl, sp                                       ; $7a08: $39
	ld b, l                                          ; $7a09: $45
	and b                                            ; $7a0a: $a0
	cpl                                              ; $7a0b: $2f
	ld b, e                                          ; $7a0c: $43
	ld b, b                                          ; $7a0d: $40
	add hl, sp                                       ; $7a0e: $39
	ld b, h                                          ; $7a0f: $44
	ld c, h                                          ; $7a10: $4c
	xor b                                            ; $7a11: $a8
	ld a, d                                          ; $7a12: $7a
	ld e, a                                          ; $7a13: $5f
	add hl, sp                                       ; $7a14: $39
	and b                                            ; $7a15: $a0
	ld b, b                                          ; $7a16: $40
	ld c, l                                          ; $7a17: $4d
	ld e, e                                          ; $7a18: $5b
	ld d, [hl]                                       ; $7a19: $56
	inc [hl]                                         ; $7a1a: $34
	ld l, d                                          ; $7a1b: $6a
	ldh a, [$0d]                                     ; $7a1c: $f0 $0d
	ld c, e                                          ; $7a1e: $4b
	xor h                                            ; $7a1f: $ac
	ld c, a                                          ; $7a20: $4f
	dec sp                                           ; $7a21: $3b
	ld c, c                                          ; $7a22: $49
	sub b                                            ; $7a23: $90
	ld a, $38                                        ; $7a24: $3e $38
	ldh a, [$28]                                     ; $7a26: $f0 $28
	ld b, a                                          ; $7a28: $47
	inc de                                           ; $7a29: $13
	ldh a, [$a7]                                     ; $7a2a: $f0 $a7
	ld c, l                                          ; $7a2c: $4d
	ccf                                              ; $7a2d: $3f
	dec sp                                           ; $7a2e: $3b
	ccf                                              ; $7a2f: $3f
	ld c, h                                          ; $7a30: $4c
	and b                                            ; $7a31: $a0
	ld [$a82e], a                                    ; $7a32: $ea $2e $a8
	ldh a, [$aa]                                     ; $7a35: $f0 $aa
	adc c                                            ; $7a37: $89
	adc a                                            ; $7a38: $8f
	ld c, e                                          ; $7a39: $4b
	ldh a, [$6d]                                     ; $7a3a: $f0 $6d
	ld e, c                                          ; $7a3c: $59
	ldh a, [$27]                                     ; $7a3d: $f0 $27
	ld h, d                                          ; $7a3f: $62
	di                                               ; $7a40: $f3
	call nz, $16f0                                   ; $7a41: $c4 $f0 $16
	ld a, $3d                                        ; $7a44: $3e $3d
	inc de                                           ; $7a46: $13
	xor $2a                                          ; $7a47: $ee $2a
	db $ec                                           ; $7a49: $ec
	ldh a, [c]                                       ; $7a4a: $f2
	db $ed                                           ; $7a4b: $ed
	ld b, e                                          ; $7a4c: $43
	xor b                                            ; $7a4d: $a8
	ld l, [hl]                                       ; $7a4e: $6e
	dec sp                                           ; $7a4f: $3b
	ccf                                              ; $7a50: $3f
	ld [hl], d                                       ; $7a51: $72
	ld b, l                                          ; $7a52: $45
	add hl, sp                                       ; $7a53: $39
	ld b, l                                          ; $7a54: $45
	and b                                            ; $7a55: $a0
	db $eb                                           ; $7a56: $eb
	cp a                                             ; $7a57: $bf
	xor h                                            ; $7a58: $ac
	ldh a, [$bc]                                     ; $7a59: $f0 $bc
	ld b, a                                          ; $7a5b: $47
	add c                                            ; $7a5c: $81
	ld [hl], l                                       ; $7a5d: $75
	ld a, l                                          ; $7a5e: $7d
	ld a, $52                                        ; $7a5f: $3e $52
	ld e, c                                          ; $7a61: $59
	ld d, c                                          ; $7a62: $51
	and b                                            ; $7a63: $a0
	pop af                                           ; $7a64: $f1
	ld d, d                                          ; $7a65: $52
	cp e                                             ; $7a66: $bb
	ld c, h                                          ; $7a67: $4c
	xor b                                            ; $7a68: $a8
	ld l, a                                          ; $7a69: $6f
	dec sp                                           ; $7a6a: $3b
	ccf                                              ; $7a6b: $3f
	ldh a, [$99]                                     ; $7a6c: $f0 $99
	sub b                                            ; $7a6e: $90
	ldh a, [$7b]                                     ; $7a6f: $f0 $7b
	ld h, l                                          ; $7a71: $65
	add e                                            ; $7a72: $83
	ld b, [hl]                                       ; $7a73: $46
	ld c, [hl]                                       ; $7a74: $4e
	ld b, c                                          ; $7a75: $41
	ld b, h                                          ; $7a76: $44
	ld c, h                                          ; $7a77: $4c
	xor b                                            ; $7a78: $a8
	ldh a, [$d6]                                     ; $7a79: $f0 $d6
	ld c, e                                          ; $7a7b: $4b
	inc [hl]                                         ; $7a7c: $34
	ld d, $44                                        ; $7a7d: $16 $44
	ld b, l                                          ; $7a7f: $45
	and b                                            ; $7a80: $a0
	ld e, b                                          ; $7a81: $58
	ccf                                              ; $7a82: $3f
	xor h                                            ; $7a83: $ac
	ldh a, [$d6]                                     ; $7a84: $f0 $d6
	ld c, e                                          ; $7a86: $4b
	ld e, d                                          ; $7a87: $5a
	ld d, h                                          ; $7a88: $54

jr_093_7a89:
	ld b, a                                          ; $7a89: $47
	db $ec                                           ; $7a8a: $ec
	rlca                                             ; $7a8b: $07
	and c                                            ; $7a8c: $a1
	ld e, e                                          ; $7a8d: $5b
	ld d, [hl]                                       ; $7a8e: $56
	xor h                                            ; $7a8f: $ac
	ldh a, [$bc]                                     ; $7a90: $f0 $bc
	ld b, a                                          ; $7a92: $47
	add c                                            ; $7a93: $81
	ld [hl], l                                       ; $7a94: $75
	ld a, l                                          ; $7a95: $7d
	ld d, c                                          ; $7a96: $51
	ld c, [hl]                                       ; $7a97: $4e
	ld c, h                                          ; $7a98: $4c
	and b                                            ; $7a99: $a0
	ldh a, [$80]                                     ; $7a9a: $f0 $80
	ldh a, [$c5]                                     ; $7a9c: $f0 $c5
	xor h                                            ; $7a9e: $ac
	cp e                                             ; $7a9f: $bb
	ld b, l                                          ; $7aa0: $45
	xor b                                            ; $7aa1: $a8
	ld e, e                                          ; $7aa2: $5b
	ld d, [hl]                                       ; $7aa3: $56
	inc [hl]                                         ; $7aa4: $34
	ldh a, [$d6]                                     ; $7aa5: $f0 $d6
	ld c, e                                          ; $7aa7: $4b
	inc [hl]                                         ; $7aa8: $34
	ld d, $44                                        ; $7aa9: $16 $44
	ld b, l                                          ; $7aab: $45
	and b                                            ; $7aac: $a0
	ld e, b                                          ; $7aad: $58
	ccf                                              ; $7aae: $3f
	inc [hl]                                         ; $7aaf: $34
	ldh a, [$d6]                                     ; $7ab0: $f0 $d6
	ld c, e                                          ; $7ab2: $4b
	ld e, d                                          ; $7ab3: $5a
	ld d, h                                          ; $7ab4: $54
	ld b, a                                          ; $7ab5: $47
	ld h, a                                          ; $7ab6: $67
	ld d, l                                          ; $7ab7: $55
	and c                                            ; $7ab8: $a1
	ld l, a                                          ; $7ab9: $6f
	ld d, e                                          ; $7aba: $53
	ldh a, [$bc]                                     ; $7abb: $f0 $bc
	ld c, h                                          ; $7abd: $4c
	and b                                            ; $7abe: $a0
	ld l, e                                          ; $7abf: $6b
	ld d, h                                          ; $7ac0: $54
	ld c, l                                          ; $7ac1: $4d
	inc [hl]                                         ; $7ac2: $34
	db $ed                                           ; $7ac3: $ed
	cp c                                             ; $7ac4: $b9
	ld d, c                                          ; $7ac5: $51
	ldh a, [$cb]                                     ; $7ac6: $f0 $cb
	ldh a, [c]                                       ; $7ac8: $f2
	db $eb                                           ; $7ac9: $eb
	xor b                                            ; $7aca: $a8
	db $ed                                           ; $7acb: $ed
	rst FarCall                                          ; $7acc: $f7
	dec sp                                           ; $7acd: $3b
	ccf                                              ; $7ace: $3f
	ldh a, [$78]                                     ; $7acf: $f0 $78
	ld e, e                                          ; $7ad1: $5b
	xor b                                            ; $7ad2: $a8
	ldh a, [$d6]                                     ; $7ad3: $f0 $d6
	ld c, e                                          ; $7ad5: $4b
	ld d, $44                                        ; $7ad6: $16 $44
	ld b, l                                          ; $7ad8: $45
	and b                                            ; $7ad9: $a0
	ld e, e                                          ; $7ada: $5b
	ld d, [hl]                                       ; $7adb: $56
	inc [hl]                                         ; $7adc: $34
	ldh a, [$b2]                                     ; $7add: $f0 $b2
	ld b, c                                          ; $7adf: $41
	ld b, h                                          ; $7ae0: $44
	ld d, h                                          ; $7ae1: $54
	ld c, c                                          ; $7ae2: $49
	ld b, h                                          ; $7ae3: $44
	ld a, $13                                        ; $7ae4: $3e $13
	ld [$a0d0], a                                    ; $7ae6: $ea $d0 $a0
	cpl                                              ; $7ae9: $2f
	ld b, e                                          ; $7aea: $43
	ld e, [hl]                                       ; $7aeb: $5e
	ld [hl], $64                                     ; $7aec: $36 $64
	inc [hl]                                         ; $7aee: $34
	halt                                             ; $7aef: $76
	xor c                                            ; $7af0: $a9
	jr c, jr_093_7b3b                                ; $7af1: $38 $48

	inc [hl]                                         ; $7af3: $34
	jr c, jr_093_7b64                                ; $7af4: $38 $6e

	inc [hl]                                         ; $7af6: $34
	ldh a, [$08]                                     ; $7af7: $f0 $08
	ld d, b                                          ; $7af9: $50
	ld c, b                                          ; $7afa: $48
	xor h                                            ; $7afb: $ac
	pop af                                           ; $7afc: $f1
	ld l, a                                          ; $7afd: $6f
	ld b, a                                          ; $7afe: $47
	ld c, a                                          ; $7aff: $4f
	ld l, [hl]                                       ; $7b00: $6e
	ld d, a                                          ; $7b01: $57
	dec a                                            ; $7b02: $3d
	jr c, jr_093_7a89                                ; $7b03: $38 $84

	inc de                                           ; $7b05: $13
	jr c, @+$50                                      ; $7b06: $38 $4e

	ld b, h                                          ; $7b08: $44
	ld e, a                                          ; $7b09: $5f
	add hl, sp                                       ; $7b0a: $39
	ld a, $58                                        ; $7b0b: $3e $58
	and b                                            ; $7b0d: $a0
	ld b, b                                          ; $7b0e: $40
	add hl, sp                                       ; $7b0f: $39
	inc a                                            ; $7b10: $3c
	ld b, [hl]                                       ; $7b11: $46
	xor h                                            ; $7b12: $ac
	ld h, c                                          ; $7b13: $61
	ld h, [hl]                                       ; $7b14: $66
	dec sp                                           ; $7b15: $3b
	ld h, c                                          ; $7b16: $61
	ldh a, [$8d]                                     ; $7b17: $f0 $8d
	ldh a, [$9e]                                     ; $7b19: $f0 $9e
	and b                                            ; $7b1b: $a0
	cpl                                              ; $7b1c: $2f
	ld [hl-], a                                      ; $7b1d: $32
	ldh a, [rSCY]                                    ; $7b1e: $f0 $42
	ld e, c                                          ; $7b20: $59
	xor h                                            ; $7b21: $ac
	db $eb                                           ; $7b22: $eb
	ld a, [$f042]                                    ; $7b23: $fa $42 $f0
	rst SubAFromHL                                          ; $7b26: $d7
	ld e, e                                          ; $7b27: $5b
	ld d, [hl]                                       ; $7b28: $56
	xor h                                            ; $7b29: $ac
	db $eb                                           ; $7b2a: $eb
	ld l, d                                          ; $7b2b: $6a
	ccf                                              ; $7b2c: $3f
	add c                                            ; $7b2d: $81
	ld [hl], l                                       ; $7b2e: $75
	ld a, l                                          ; $7b2f: $7d
	ld c, d                                          ; $7b30: $4a
	ld e, h                                          ; $7b31: $5c
	ld a, [hl-]                                      ; $7b32: $3a
	jr c, jr_093_7b7a                                ; $7b33: $38 $45

	and e                                            ; $7b35: $a3
	ld [$a82e], a                                    ; $7b36: $ea $2e $a8
	xor $2a                                          ; $7b39: $ee $2a

jr_093_7b3b:
	db $ec                                           ; $7b3b: $ec
	ldh a, [c]                                       ; $7b3c: $f2
	ld d, e                                          ; $7b3d: $53
	inc de                                           ; $7b3e: $13
	ld [$a05d], a                                    ; $7b3f: $ea $5d $a0
	db $ed                                           ; $7b42: $ed
	ld c, c                                          ; $7b43: $49
	ld b, h                                          ; $7b44: $44
	dec sp                                           ; $7b45: $3b
	dec a                                            ; $7b46: $3d
	ld a, $ac                                        ; $7b47: $3e $ac
	cp e                                             ; $7b49: $bb
	ld b, c                                          ; $7b4a: $41
	ld b, h                                          ; $7b4b: $44
	ld e, l                                          ; $7b4c: $5d
	ld e, d                                          ; $7b4d: $5a
	xor h                                            ; $7b4e: $ac
	ldh a, [$2c]                                     ; $7b4f: $f0 $2c
	pop af                                           ; $7b51: $f1
	cp [hl]                                          ; $7b52: $be
	ld d, a                                          ; $7b53: $57
	ld a, [hl-]                                      ; $7b54: $3a
	jr c, jr_093_7b92                                ; $7b55: $38 $3b

	ccf                                              ; $7b57: $3f
	jr c, jr_093_7b93                                ; $7b58: $38 $39

	inc a                                            ; $7b5a: $3c
	ld c, b                                          ; $7b5b: $48
	and b                                            ; $7b5c: $a0
	cpl                                              ; $7b5d: $2f
	ld b, e                                          ; $7b5e: $43
	ld l, e                                          ; $7b5f: $6b
	ld b, h                                          ; $7b60: $44
	ld e, a                                          ; $7b61: $5f
	add hl, sp                                       ; $7b62: $39
	xor h                                            ; $7b63: $ac

jr_093_7b64:
	ldh a, [$2c]                                     ; $7b64: $f0 $2c
	pop af                                           ; $7b66: $f1
	cp [hl]                                          ; $7b67: $be
	ld d, a                                          ; $7b68: $57
	ld a, [hl-]                                      ; $7b69: $3a
	jr c, jr_093_7bbb                                ; $7b6a: $38 $4f

	db $ec                                           ; $7b6c: $ec
	or $a1                                           ; $7b6d: $f6 $a1
	ld b, l                                          ; $7b6f: $45
	ld d, l                                          ; $7b70: $55
	inc [hl]                                         ; $7b71: $34
	ldh a, [rTAC]                                    ; $7b72: $f0 $07
	inc a                                            ; $7b74: $3c
	ld d, b                                          ; $7b75: $50
	ld a, [hl-]                                      ; $7b76: $3a
	jr c, jr_093_7bd6                                ; $7b77: $38 $5d

	ld e, d                                          ; $7b79: $5a

jr_093_7b7a:
	xor l                                            ; $7b7a: $ad
	ld b, b                                          ; $7b7b: $40
	ld c, l                                          ; $7b7c: $4d
	ld b, l                                          ; $7b7d: $45
	ld d, a                                          ; $7b7e: $57
	ld e, b                                          ; $7b7f: $58
	ld c, b                                          ; $7b80: $48
	xor h                                            ; $7b81: $ac
	ldh a, [$d6]                                     ; $7b82: $f0 $d6
	inc [hl]                                         ; $7b84: $34
	ld e, d                                          ; $7b85: $5a
	ld d, h                                          ; $7b86: $54
	db $ec                                           ; $7b87: $ec
	rlca                                             ; $7b88: $07
	and c                                            ; $7b89: $a1
	cpl                                              ; $7b8a: $2f
	ld b, e                                          ; $7b8b: $43
	db $ed                                           ; $7b8c: $ed
	ld c, c                                          ; $7b8d: $49
	ld b, h                                          ; $7b8e: $44
	dec sp                                           ; $7b8f: $3b
	dec a                                            ; $7b90: $3d
	ld c, h                                          ; $7b91: $4c

jr_093_7b92:
	and b                                            ; $7b92: $a0

jr_093_7b93:
	db $ed                                           ; $7b93: $ed
	ld c, c                                          ; $7b94: $49
	ld b, h                                          ; $7b95: $44
	dec sp                                           ; $7b96: $3b
	dec a                                            ; $7b97: $3d
	ld b, c                                          ; $7b98: $41
	ld b, h                                          ; $7b99: $44
	ld e, l                                          ; $7b9a: $5d
	ld e, d                                          ; $7b9b: $5a
	ld c, b                                          ; $7b9c: $48
	xor h                                            ; $7b9d: $ac
	ld b, b                                          ; $7b9e: $40
	ld c, l                                          ; $7b9f: $4d
	ld b, h                                          ; $7ba0: $44
	ld e, l                                          ; $7ba1: $5d
	dec sp                                           ; $7ba2: $3b
	ccf                                              ; $7ba3: $3f
	ldh a, [$78]                                     ; $7ba4: $f0 $78
	ld e, e                                          ; $7ba6: $5b
	and b                                            ; $7ba7: $a0
	cpl                                              ; $7ba8: $2f
	ld b, e                                          ; $7ba9: $43
	pop af                                           ; $7baa: $f1
	add d                                            ; $7bab: $82
	inc a                                            ; $7bac: $3c
	ld b, a                                          ; $7bad: $47
	xor h                                            ; $7bae: $ac
	ld b, b                                          ; $7baf: $40
	add hl, sp                                       ; $7bb0: $39
	ld b, h                                          ; $7bb1: $44
	ld e, l                                          ; $7bb2: $5d
	ld e, d                                          ; $7bb3: $5a
	ld c, b                                          ; $7bb4: $48
	and b                                            ; $7bb5: $a0
	ld b, b                                          ; $7bb6: $40
	ld b, c                                          ; $7bb7: $41
	ld a, [hl-]                                      ; $7bb8: $3a
	sbc d                                            ; $7bb9: $9a
	ld b, l                                          ; $7bba: $45

jr_093_7bbb:
	ld d, a                                          ; $7bbb: $57
	ld e, b                                          ; $7bbc: $58
	xor h                                            ; $7bbd: $ac
	ldh a, [$d6]                                     ; $7bbe: $f0 $d6
	inc [hl]                                         ; $7bc0: $34
	ld e, d                                          ; $7bc1: $5a
	ld d, h                                          ; $7bc2: $54
	db $ec                                           ; $7bc3: $ec
	rlca                                             ; $7bc4: $07
	and c                                            ; $7bc5: $a1
	db $ec                                           ; $7bc6: $ec
	inc de                                           ; $7bc7: $13
	ld b, c                                          ; $7bc8: $41
	ld b, h                                          ; $7bc9: $44
	ld e, l                                          ; $7bca: $5d
	ld e, d                                          ; $7bcb: $5a
	xor h                                            ; $7bcc: $ac
	ld b, b                                          ; $7bcd: $40
	ld c, l                                          ; $7bce: $4d
	ld b, h                                          ; $7bcf: $44
	ld e, l                                          ; $7bd0: $5d
	inc [hl]                                         ; $7bd1: $34
	ld l, h                                          ; $7bd2: $6c
	dec a                                            ; $7bd3: $3d
	jr c, jr_093_7c10                                ; $7bd4: $38 $3a

jr_093_7bd6:
	xor b                                            ; $7bd6: $a8
	pop af                                           ; $7bd7: $f1
	add c                                            ; $7bd8: $81
	ld h, c                                          ; $7bd9: $61
	ld d, e                                          ; $7bda: $53
	pop af                                           ; $7bdb: $f1
	add hl, hl                                       ; $7bdc: $29
	ld a, $3c                                        ; $7bdd: $3e $3c
	dec sp                                           ; $7bdf: $3b
	dec a                                            ; $7be0: $3d
	ld a, [hl-]                                      ; $7be1: $3a
	and b                                            ; $7be2: $a0
	cpl                                              ; $7be3: $2f
	ld b, e                                          ; $7be4: $43
	db $ec                                           ; $7be5: $ec
	ld d, $74                                        ; $7be6: $16 $74
	ld c, b                                          ; $7be8: $48
	dec [hl]                                         ; $7be9: $35
	rla                                              ; $7bea: $17
	ld [hl-], a                                      ; $7beb: $32
	ld e, d                                          ; $7bec: $5a
	add hl, sp                                       ; $7bed: $39
	ld l, [hl]                                       ; $7bee: $6e
	dec sp                                           ; $7bef: $3b
	ccf                                              ; $7bf0: $3f
	xor h                                            ; $7bf1: $ac
	pop af                                           ; $7bf2: $f1
	add c                                            ; $7bf3: $81
	ld h, c                                          ; $7bf4: $61
	ld h, d                                          ; $7bf5: $62
	add b                                            ; $7bf6: $80
	ld e, l                                          ; $7bf7: $5d
	ld c, [hl]                                       ; $7bf8: $4e
	ld b, c                                          ; $7bf9: $41
	ld b, h                                          ; $7bfa: $44
	ld [hl], $33                                     ; $7bfb: $36 $33
	add hl, bc                                       ; $7bfd: $09
	ld e, e                                          ; $7bfe: $5b
	ld d, [hl]                                       ; $7bff: $56
	ld b, [hl]                                       ; $7c00: $46
	inc [hl]                                         ; $7c01: $34
	ld [$a0d0], a                                    ; $7c02: $ea $d0 $a0
	cpl                                              ; $7c05: $2f
	ld b, e                                          ; $7c06: $43
	ld b, b                                          ; $7c07: $40
	add hl, sp                                       ; $7c08: $39
	ld b, h                                          ; $7c09: $44
	ld c, h                                          ; $7c0a: $4c
	dec [hl]                                         ; $7c0b: $35
	ld a, d                                          ; $7c0c: $7a
	ld e, a                                          ; $7c0d: $5f
	add hl, sp                                       ; $7c0e: $39
	and b                                            ; $7c0f: $a0

jr_093_7c10:
	ld h, c                                          ; $7c10: $61
	ld h, [hl]                                       ; $7c11: $66
	ld d, c                                          ; $7c12: $51
	ld [hl], b                                       ; $7c13: $70
	ld b, h                                          ; $7c14: $44
	dec sp                                           ; $7c15: $3b
	dec a                                            ; $7c16: $3d
	ld c, h                                          ; $7c17: $4c
	xor b                                            ; $7c18: $a8
	ldh a, [$3d]                                     ; $7c19: $f0 $3d
	ld h, l                                          ; $7c1b: $65
	ldh a, [$de]                                     ; $7c1c: $f0 $de
	ldh a, [rP1]                                     ; $7c1e: $f0 $00
	dec sp                                           ; $7c20: $3b
	ccf                                              ; $7c21: $3f
	ldh a, [$78]                                     ; $7c22: $f0 $78
	ld e, e                                          ; $7c24: $5b
	and b                                            ; $7c25: $a0
	cpl                                              ; $7c26: $2f
	ld b, e                                          ; $7c27: $43
	adc b                                            ; $7c28: $88
	sub c                                            ; $7c29: $91
	inc [hl]                                         ; $7c2a: $34
	ld [$a0b3], a                                    ; $7c2b: $ea $b3 $a0
	ld b, h                                          ; $7c2e: $44
	ld a, $66                                        ; $7c2f: $3e $66
	add hl, sp                                       ; $7c31: $39
	xor b                                            ; $7c32: $a8
	db $eb                                           ; $7c33: $eb
	add [hl]                                         ; $7c34: $86
	xor h                                            ; $7c35: $ac
	ldh a, [$d6]                                     ; $7c36: $f0 $d6
	inc [hl]                                         ; $7c38: $34
	ld e, d                                          ; $7c39: $5a
	ld d, h                                          ; $7c3a: $54
	db $ec                                           ; $7c3b: $ec
	rlca                                             ; $7c3c: $07
	and c                                            ; $7c3d: $a1
	cpl                                              ; $7c3e: $2f
	ld b, e                                          ; $7c3f: $43
	ld e, [hl]                                       ; $7c40: $5e
	add l                                            ; $7c41: $85
	inc [hl]                                         ; $7c42: $34
	ld c, a                                          ; $7c43: $4f
	add hl, sp                                       ; $7c44: $39
	ld h, a                                          ; $7c45: $67
	ld d, l                                          ; $7c46: $55
	ld b, d                                          ; $7c47: $42
	ld [hl], $17                                     ; $7c48: $36 $17
	ld [hl-], a                                      ; $7c4a: $32
	ld b, [hl]                                       ; $7c4b: $46
	ld b, c                                          ; $7c4c: $41
	ld a, [hl-]                                      ; $7c4d: $3a
	ld c, a                                          ; $7c4e: $4f
	ld b, d                                          ; $7c4f: $42
	ld [hl], d                                       ; $7c50: $72
	ccf                                              ; $7c51: $3f
	xor h                                            ; $7c52: $ac
	pop af                                           ; $7c53: $f1
	rra                                              ; $7c54: $1f
	ld a, a                                          ; $7c55: $7f
	ld b, h                                          ; $7c56: $44
	ld a, [hl-]                                      ; $7c57: $3a
	ld [hl], h                                       ; $7c58: $74
	ld c, b                                          ; $7c59: $48
	and e                                            ; $7c5a: $a3
	ldh a, [$08]                                     ; $7c5b: $f0 $08
	ld d, b                                          ; $7c5d: $50
	inc [hl]                                         ; $7c5e: $34
	ld c, c                                          ; $7c5f: $49
	ld d, a                                          ; $7c60: $57
	ld b, [hl]                                       ; $7c61: $46
	ld e, [hl]                                       ; $7c62: $5e
	sbc h                                            ; $7c63: $9c
	xor h                                            ; $7c64: $ac
	ld b, [hl]                                       ; $7c65: $46
	dec sp                                           ; $7c66: $3b
	ld h, c                                          ; $7c67: $61
	ld [$a038], a                                    ; $7c68: $ea $38 $a0
	cpl                                              ; $7c6b: $2f
	ld b, e                                          ; $7c6c: $43
	ld b, [hl]                                       ; $7c6d: $46
	dec sp                                           ; $7c6e: $3b
	ld h, c                                          ; $7c6f: $61
	dec sp                                           ; $7c70: $3b
	ccf                                              ; $7c71: $3f
	xor h                                            ; $7c72: $ac
	ld h, c                                          ; $7c73: $61
	ld h, [hl]                                       ; $7c74: $66
	inc [hl]                                         ; $7c75: $34
	ret                                              ; $7c76: $c9


	ld c, b                                          ; $7c77: $48
	and b                                            ; $7c78: $a0
	ldh a, [$08]                                     ; $7c79: $f0 $08
	ld d, b                                          ; $7c7b: $50
	inc [hl]                                         ; $7c7c: $34
	ldh a, [$0a]                                     ; $7c7d: $f0 $0a
	ld d, l                                          ; $7c7f: $55
	ldh a, [$0a]                                     ; $7c80: $f0 $0a
	ld d, l                                          ; $7c82: $55
	and b                                            ; $7c83: $a0
	ld h, c                                          ; $7c84: $61
	ld h, [hl]                                       ; $7c85: $66
	ld d, c                                          ; $7c86: $51
	ld [hl], b                                       ; $7c87: $70
	ld b, h                                          ; $7c88: $44
	dec sp                                           ; $7c89: $3b
	dec a                                            ; $7c8a: $3d
	ld c, h                                          ; $7c8b: $4c
	xor b                                            ; $7c8c: $a8
	ld e, d                                          ; $7c8d: $5a
	dec sp                                           ; $7c8e: $3b
	ldh a, [c]                                       ; $7c8f: $f2
	sbc $66                                          ; $7c90: $de $66
	ld e, c                                          ; $7c92: $59
	ld b, c                                          ; $7c93: $41
	dec sp                                           ; $7c94: $3b
	ccf                                              ; $7c95: $3f
	ldh a, [$78]                                     ; $7c96: $f0 $78
	ld e, e                                          ; $7c98: $5b
	and b                                            ; $7c99: $a0
	ld c, h                                          ; $7c9a: $4c
	add l                                            ; $7c9b: $85
	ld c, h                                          ; $7c9c: $4c
	add l                                            ; $7c9d: $85
	inc [hl]                                         ; $7c9e: $34
	db $eb                                           ; $7c9f: $eb
	add [hl]                                         ; $7ca0: $86
	xor h                                            ; $7ca1: $ac
	ldh a, [$d6]                                     ; $7ca2: $f0 $d6
	inc [hl]                                         ; $7ca4: $34
	ld e, d                                          ; $7ca5: $5a
	ld d, h                                          ; $7ca6: $54
	ld h, a                                          ; $7ca7: $67
	ld d, l                                          ; $7ca8: $55
	and c                                            ; $7ca9: $a1
	ld l, d                                          ; $7caa: $6a
	ld b, d                                          ; $7cab: $42
	ld d, d                                          ; $7cac: $52
	ld e, e                                          ; $7cad: $5b
	ldh a, [c]                                       ; $7cae: $f2
	db $eb                                           ; $7caf: $eb
	xor b                                            ; $7cb0: $a8
	ld h, c                                          ; $7cb1: $61
	ld h, [hl]                                       ; $7cb2: $66
	ld d, c                                          ; $7cb3: $51
	ld [hl], b                                       ; $7cb4: $70
	ld b, h                                          ; $7cb5: $44
	dec sp                                           ; $7cb6: $3b
	dec a                                            ; $7cb7: $3d
	ld c, h                                          ; $7cb8: $4c
	and b                                            ; $7cb9: $a0
	cpl                                              ; $7cba: $2f
	ld b, e                                          ; $7cbb: $43
	adc b                                            ; $7cbc: $88
	sub c                                            ; $7cbd: $91
	inc [hl]                                         ; $7cbe: $34
	ld d, c                                          ; $7cbf: $51
	ld [hl], b                                       ; $7cc0: $70
	ld d, c                                          ; $7cc1: $51
	ldh a, [$cb]                                     ; $7cc2: $f0 $cb
	ld b, h                                          ; $7cc4: $44
	ld c, h                                          ; $7cc5: $4c
	and b                                            ; $7cc6: $a0
	ld [$a82e], a                                    ; $7cc7: $ea $2e $a8
	db $ec                                           ; $7cca: $ec
	ld [hl], $38                                     ; $7ccb: $36 $38
	ccf                                              ; $7ccd: $3f
	ld d, l                                          ; $7cce: $55
	ld c, l                                          ; $7ccf: $4d
	ccf                                              ; $7cd0: $3f
	ld c, [hl]                                       ; $7cd1: $4e
	inc de                                           ; $7cd2: $13
	ld l, h                                          ; $7cd3: $6c
	dec a                                            ; $7cd4: $3d
	jr c, jr_093_7d1b                                ; $7cd5: $38 $44

	ld b, l                                          ; $7cd7: $45
	and b                                            ; $7cd8: $a0
	cpl                                              ; $7cd9: $2f
	ld b, e                                          ; $7cda: $43
	jp hl                                            ; $7cdb: $e9


	ld e, l                                          ; $7cdc: $5d
	inc de                                           ; $7cdd: $13
	pop af                                           ; $7cde: $f1
	ld e, a                                          ; $7cdf: $5f
	dec sp                                           ; $7ce0: $3b
	adc [hl]                                         ; $7ce1: $8e
	ld d, b                                          ; $7ce2: $50
	ld a, [hl-]                                      ; $7ce3: $3a
	jr c, jr_093_7d30                                ; $7ce4: $38 $4a

	xor l                                            ; $7ce6: $ad
	ldh a, [$bd]                                     ; $7ce7: $f0 $bd
	jr c, jr_093_7d2a                                ; $7ce9: $38 $3f

	ld c, a                                          ; $7ceb: $4f
	ld d, b                                          ; $7cec: $50
	dec sp                                           ; $7ced: $3b
	ccf                                              ; $7cee: $3f
	ccf                                              ; $7cef: $3f
	ld b, l                                          ; $7cf0: $45
	and b                                            ; $7cf1: $a0
	xor $1f                                          ; $7cf2: $ee $1f
	inc [hl]                                         ; $7cf4: $34
	ld b, b                                          ; $7cf5: $40
	add hl, sp                                       ; $7cf6: $39
	ld d, c                                          ; $7cf7: $51
	ld c, [hl]                                       ; $7cf8: $4e
	ld c, h                                          ; $7cf9: $4c
	and b                                            ; $7cfa: $a0
	cpl                                              ; $7cfb: $2f
	ld b, e                                          ; $7cfc: $43
	jp hl                                            ; $7cfd: $e9


	ret c                                            ; $7cfe: $d8

	and c                                            ; $7cff: $a1
	ldh a, [rPCM12]                                  ; $7d00: $f0 $76
	ccf                                              ; $7d02: $3f
	ld a, [hl-]                                      ; $7d03: $3a
	jr c, @+$3d                                      ; $7d04: $38 $3b

	ccf                                              ; $7d06: $3f
	jr c, jr_093_7d42                                ; $7d07: $38 $39

	inc a                                            ; $7d09: $3c
	xor h                                            ; $7d0a: $ac
	ld l, e                                          ; $7d0b: $6b
	ld c, c                                          ; $7d0c: $49
	jr c, jr_093_7d48                                ; $7d0d: $38 $39

	inc a                                            ; $7d0f: $3c
	xor l                                            ; $7d10: $ad
	pop af                                           ; $7d11: $f1
	jr nc, @+$73                                     ; $7d12: $30 $71

	ld h, c                                          ; $7d14: $61
	ld d, [hl]                                       ; $7d15: $56
	dec sp                                           ; $7d16: $3b
	dec a                                            ; $7d17: $3d
	and b                                            ; $7d18: $a0
	cpl                                              ; $7d19: $2f
	ld b, e                                          ; $7d1a: $43

jr_093_7d1b:
	ld b, b                                          ; $7d1b: $40
	add hl, sp                                       ; $7d1c: $39
	xor b                                            ; $7d1d: $a8
	pop af                                           ; $7d1e: $f1
	jr nc, @+$73                                     ; $7d1f: $30 $71

	ld h, c                                          ; $7d21: $61
	ld d, [hl]                                       ; $7d22: $56
	dec sp                                           ; $7d23: $3b
	dec a                                            ; $7d24: $3d
	ld b, d                                          ; $7d25: $42
	inc a                                            ; $7d26: $3c
	ld c, b                                          ; $7d27: $48
	and b                                            ; $7d28: $a0
	ld c, h                                          ; $7d29: $4c

jr_093_7d2a:
	add l                                            ; $7d2a: $85
	ld c, h                                          ; $7d2b: $4c
	add l                                            ; $7d2c: $85
	inc [hl]                                         ; $7d2d: $34
	db $eb                                           ; $7d2e: $eb
	add [hl]                                         ; $7d2f: $86

jr_093_7d30:
	xor h                                            ; $7d30: $ac
	ldh a, [$d6]                                     ; $7d31: $f0 $d6
	inc [hl]                                         ; $7d33: $34
	ld e, d                                          ; $7d34: $5a
	ld d, h                                          ; $7d35: $54
	db $ec                                           ; $7d36: $ec
	rlca                                             ; $7d37: $07
	and c                                            ; $7d38: $a1
	ldh a, [rPCM12]                                  ; $7d39: $f0 $76
	ccf                                              ; $7d3b: $3f
	ld a, [hl-]                                      ; $7d3c: $3a
	jr c, jr_093_7d7a                                ; $7d3d: $38 $3b

	ccf                                              ; $7d3f: $3f
	jr c, jr_093_7d7b                                ; $7d40: $38 $39

jr_093_7d42:
	inc a                                            ; $7d42: $3c
	xor h                                            ; $7d43: $ac
	ldh a, [$a3]                                     ; $7d44: $f0 $a3
	ldh a, [$0b]                                     ; $7d46: $f0 $0b

jr_093_7d48:
	ld b, h                                          ; $7d48: $44
	dec sp                                           ; $7d49: $3b
	dec a                                            ; $7d4a: $3d
	inc a                                            ; $7d4b: $3c
	ld d, b                                          ; $7d4c: $50
	xor h                                            ; $7d4d: $ac
	pop af                                           ; $7d4e: $f1
	jr nc, jr_093_7dc2                               ; $7d4f: $30 $71

	ld h, c                                          ; $7d51: $61
	ld d, [hl]                                       ; $7d52: $56
	dec sp                                           ; $7d53: $3b
	dec a                                            ; $7d54: $3d
	ld b, l                                          ; $7d55: $45
	and b                                            ; $7d56: $a0
	ldh a, [$bd]                                     ; $7d57: $f0 $bd
	jr c, jr_093_7d9a                                ; $7d59: $38 $3f

	ld c, a                                          ; $7d5b: $4f
	ld d, b                                          ; $7d5c: $50
	dec sp                                           ; $7d5d: $3b
	ccf                                              ; $7d5e: $3f
	ld d, l                                          ; $7d5f: $55
	ld c, [hl]                                       ; $7d60: $4e
	ld c, h                                          ; $7d61: $4c
	and b                                            ; $7d62: $a0
	ldh a, [$bd]                                     ; $7d63: $f0 $bd
	jr c, jr_093_7da6                                ; $7d65: $38 $3f

	ld c, [hl]                                       ; $7d67: $4e
	add h                                            ; $7d68: $84
	ld d, e                                          ; $7d69: $53
	xor h                                            ; $7d6a: $ac
	ld h, h                                          ; $7d6b: $64
	pop af                                           ; $7d6c: $f1
	rla                                              ; $7d6d: $17
	ld b, c                                          ; $7d6e: $41
	ld h, c                                          ; $7d6f: $61
	ld e, b                                          ; $7d70: $58
	ld b, c                                          ; $7d71: $41
	ld b, h                                          ; $7d72: $44
	inc a                                            ; $7d73: $3c
	ld d, b                                          ; $7d74: $50
	xor h                                            ; $7d75: $ac
	pop af                                           ; $7d76: $f1
	jr nc, jr_093_7dea                               ; $7d77: $30 $71

	ccf                                              ; $7d79: $3f

jr_093_7d7a:
	ld a, b                                          ; $7d7a: $78

jr_093_7d7b:
	ld h, c                                          ; $7d7b: $61
	ld d, [hl]                                       ; $7d7c: $56
	dec sp                                           ; $7d7d: $3b
	dec a                                            ; $7d7e: $3d
	and b                                            ; $7d7f: $a0
	ldh a, [rPCM12]                                  ; $7d80: $f0 $76
	ldh a, [$d2]                                     ; $7d82: $f0 $d2
	ldh a, [$3f]                                     ; $7d84: $f0 $3f
	ld c, e                                          ; $7d86: $4b
	ld c, a                                          ; $7d87: $4f
	add hl, sp                                       ; $7d88: $39
	jr c, jr_093_7dc3                                ; $7d89: $38 $38

	inc a                                            ; $7d8b: $3c
	ld d, b                                          ; $7d8c: $50
	xor h                                            ; $7d8d: $ac
	ld [$a0d0], a                                    ; $7d8e: $ea $d0 $a0
	ld [$a82e], a                                    ; $7d91: $ea $2e $a8
	ld b, [hl]                                       ; $7d94: $46
	dec sp                                           ; $7d95: $3b
	ld c, b                                          ; $7d96: $48
	and b                                            ; $7d97: $a0
	cpl                                              ; $7d98: $2f
	ld b, e                                          ; $7d99: $43

jr_093_7d9a:
	jp hl                                            ; $7d9a: $e9


	ld e, l                                          ; $7d9b: $5d
	xor l                                            ; $7d9c: $ad
	ld b, c                                          ; $7d9d: $41
	inc [hl]                                         ; $7d9e: $34
	db $eb                                           ; $7d9f: $eb
	ld a, [$eba8]                                    ; $7da0: $fa $a8 $eb
	rst FarCall                                          ; $7da3: $f7
	and c                                            ; $7da4: $a1
	ld h, c                                          ; $7da5: $61

jr_093_7da6:
	ld h, [hl]                                       ; $7da6: $66
	inc [hl]                                         ; $7da7: $34
	ret                                              ; $7da8: $c9


	xor h                                            ; $7da9: $ac
	ld [hl], c                                       ; $7daa: $71
	dec a                                            ; $7dab: $3d
	ldh a, [rIF]                                     ; $7dac: $f0 $0f
	pop af                                           ; $7dae: $f1
	ld [bc], a                                       ; $7daf: $02
	di                                               ; $7db0: $f3
	ld [hl], h                                       ; $7db1: $74
	di                                               ; $7db2: $f3
	ld [hl], a                                       ; $7db3: $77
	and b                                            ; $7db4: $a0
	cpl                                              ; $7db5: $2f
	ld b, e                                          ; $7db6: $43
	ld e, [hl]                                       ; $7db7: $5e
	dec sp                                           ; $7db8: $3b
	xor h                                            ; $7db9: $ac
	ldh a, [rAUD2HIGH]                               ; $7dba: $f0 $19
	ld c, d                                          ; $7dbc: $4a
	ld l, e                                          ; $7dbd: $6b
	ld l, [hl]                                       ; $7dbe: $6e
	dec sp                                           ; $7dbf: $3b
	ccf                                              ; $7dc0: $3f
	ld c, [hl]                                       ; $7dc1: $4e

jr_093_7dc2:
	ld b, d                                          ; $7dc2: $42

jr_093_7dc3:
	and c                                            ; $7dc3: $a1
	ld e, b                                          ; $7dc4: $58

jr_093_7dc5:
	inc [hl]                                         ; $7dc5: $34
	ldh a, [$d6]                                     ; $7dc6: $f0 $d6
	ld h, a                                          ; $7dc8: $67
	ld d, h                                          ; $7dc9: $54
	add hl, sp                                       ; $7dca: $39
	and b                                            ; $7dcb: $a0
	cpl                                              ; $7dcc: $2f
	ld b, e                                          ; $7dcd: $43
	ld h, c                                          ; $7dce: $61
	ld h, [hl]                                       ; $7dcf: $66
	inc [hl]                                         ; $7dd0: $34
	ret                                              ; $7dd1: $c9


	xor h                                            ; $7dd2: $ac
	ld d, d                                          ; $7dd3: $52
	ld b, h                                          ; $7dd4: $44
	ld [hl], d                                       ; $7dd5: $72
	ccf                                              ; $7dd6: $3f
	ld a, [hl-]                                      ; $7dd7: $3a
	jr c, jr_093_7e1f                                ; $7dd8: $38 $45

	and b                                            ; $7dda: $a0
	add a                                            ; $7ddb: $87
	ld a, $3d                                        ; $7ddc: $3e $3d
	sbc d                                            ; $7dde: $9a
	inc de                                           ; $7ddf: $13
	ldh a, [rAUD1LOW]                                ; $7de0: $f0 $13
	jr c, jr_093_7e1f                                ; $7de2: $38 $3b

	ccf                                              ; $7de4: $3f
	jr c, jr_093_7e20                                ; $7de5: $38 $39

	inc a                                            ; $7de7: $3c
	xor h                                            ; $7de8: $ac
	ld [hl], d                                       ; $7de9: $72

jr_093_7dea:
	ld a, [hl-]                                      ; $7dea: $3a
	ld d, l                                          ; $7deb: $55
	ccf                                              ; $7dec: $3f
	ld c, a                                          ; $7ded: $4f
	jr c, jr_093_7e28                                ; $7dee: $38 $38

	dec sp                                           ; $7df0: $3b
	ccf                                              ; $7df1: $3f
	inc de                                           ; $7df2: $13
	ldh a, [$78]                                     ; $7df3: $f0 $78
	ld e, e                                          ; $7df5: $5b
	ld b, h                                          ; $7df6: $44
	inc a                                            ; $7df7: $3c
	ld d, b                                          ; $7df8: $50
	and b                                            ; $7df9: $a0
	cpl                                              ; $7dfa: $2f
	ld b, e                                          ; $7dfb: $43
	rst JumpTable                                          ; $7dfc: $c7
	xor c                                            ; $7dfd: $a9
	ld b, b                                          ; $7dfe: $40
	ld d, h                                          ; $7dff: $54
	ld d, d                                          ; $7e00: $52
	ld c, d                                          ; $7e01: $4a
	jr c, jr_093_7e3d                                ; $7e02: $38 $39

	ld a, [hl-]                                      ; $7e04: $3a
	ld d, b                                          ; $7e05: $50

jr_093_7e06:
	xor h                                            ; $7e06: $ac
	ldh a, [$34]                                     ; $7e07: $f0 $34
	ld b, a                                          ; $7e09: $47
	db $ec                                           ; $7e0a: $ec
	ld [$5ba0], sp                                   ; $7e0b: $08 $a0 $5b
	ld d, [hl]                                       ; $7e0e: $56
	ld b, [hl]                                       ; $7e0f: $46
	inc [hl]                                         ; $7e10: $34
	pop af                                           ; $7e11: $f1
	jr jr_093_7e06                                   ; $7e12: $18 $f2

	sub c                                            ; $7e14: $91
	ld c, d                                          ; $7e15: $4a
	inc de                                           ; $7e16: $13
	call $f0a8                                       ; $7e17: $cd $a8 $f0
	ld [$f050], sp                                   ; $7e1a: $08 $50 $f0
	ld a, [bc]                                       ; $7e1d: $0a
	ld d, l                                          ; $7e1e: $55

jr_093_7e1f:
	and b                                            ; $7e1f: $a0

jr_093_7e20:
	cpl                                              ; $7e20: $2f
	add sp, -$05                                     ; $7e21: $e8 $fb
	xor h                                            ; $7e23: $ac
	db $ed                                           ; $7e24: $ed
	ld e, [hl]                                       ; $7e25: $5e
	add b                                            ; $7e26: $80
	ld d, d                                          ; $7e27: $52

jr_093_7e28:
	ld d, b                                          ; $7e28: $50
	ld a, [hl-]                                      ; $7e29: $3a
	ld d, l                                          ; $7e2a: $55
	ld a, [hl-]                                      ; $7e2b: $3a
	jr c, jr_093_7dc5                                ; $7e2c: $38 $97

	xor l                                            ; $7e2e: $ad
	ld c, a                                          ; $7e2f: $4f
	dec sp                                           ; $7e30: $3b
	ld c, c                                          ; $7e31: $49
	ld [hl], d                                       ; $7e32: $72
	dec a                                            ; $7e33: $3d
	jr c, jr_093_7e70                                ; $7e34: $38 $3a

	ld [hl], h                                       ; $7e36: $74
	and e                                            ; $7e37: $a3
	xor $10                                          ; $7e38: $ee $10
	xor b                                            ; $7e3a: $a8
	ldh a, [$2d]                                     ; $7e3b: $f0 $2d

jr_093_7e3d:
	dec sp                                           ; $7e3d: $3b
	ccf                                              ; $7e3e: $3f
	dec a                                            ; $7e3f: $3d
	ld c, d                                          ; $7e40: $4a
	ld a, $66                                        ; $7e41: $3e $66
	add hl, sp                                       ; $7e43: $39
	and b                                            ; $7e44: $a0
	cpl                                              ; $7e45: $2f
	ld b, e                                          ; $7e46: $43
	ld e, [hl]                                       ; $7e47: $5e
	dec sp                                           ; $7e48: $3b
	inc [hl]                                         ; $7e49: $34
	ld l, e                                          ; $7e4a: $6b
	ld d, e                                          ; $7e4b: $53
	xor c                                            ; $7e4c: $a9
	ld b, b                                          ; $7e4d: $40
	ld c, l                                          ; $7e4e: $4d
	ld b, l                                          ; $7e4f: $45
	ld d, a                                          ; $7e50: $57
	ld e, b                                          ; $7e51: $58
	xor h                                            ; $7e52: $ac
	ldh a, [rAUD2HIGH]                               ; $7e53: $f0 $19
	ld c, d                                          ; $7e55: $4a
	ld l, e                                          ; $7e56: $6b
	ld l, [hl]                                       ; $7e57: $6e
	dec sp                                           ; $7e58: $3b
	ccf                                              ; $7e59: $3f
	ld c, [hl]                                       ; $7e5a: $4e
	ld b, d                                          ; $7e5b: $42
	and c                                            ; $7e5c: $a1
	sbc $ec                                          ; $7e5d: $de $ec
	dec b                                            ; $7e5f: $05
	xor c                                            ; $7e60: $a9
	pop af                                           ; $7e61: $f1
	ld hl, sp+$3e                                    ; $7e62: $f8 $3e
	ld d, c                                          ; $7e64: $51
	ldh a, [$cb]                                     ; $7e65: $f0 $cb
	ldh a, [c]                                       ; $7e67: $f2
	db $eb                                           ; $7e68: $eb
	and b                                            ; $7e69: $a0
	cpl                                              ; $7e6a: $2f
	ld b, e                                          ; $7e6b: $43
	adc b                                            ; $7e6c: $88
	sub c                                            ; $7e6d: $91
	ld b, h                                          ; $7e6e: $44
	ld b, l                                          ; $7e6f: $45

jr_093_7e70:
	xor b                                            ; $7e70: $a8
	ldh a, [$0a]                                     ; $7e71: $f0 $0a
	ld d, l                                          ; $7e73: $55
	ld [hl], d                                       ; $7e74: $72
	dec a                                            ; $7e75: $3d
	jr c, jr_093_7eb2                                ; $7e76: $38 $3a

	ld [hl], h                                       ; $7e78: $74
	and b                                            ; $7e79: $a0

jr_093_7e7a:
	ld b, h                                          ; $7e7a: $44
	dec sp                                           ; $7e7b: $3b
	dec a                                            ; $7e7c: $3d
	ld d, b                                          ; $7e7d: $50
	inc [hl]                                         ; $7e7e: $34
	ldh a, [$5f]                                     ; $7e7f: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $7e81: $f0 $94
	inc a                                            ; $7e83: $3c
	ld d, b                                          ; $7e84: $50
	inc de                                           ; $7e85: $13
	ld [hl], d                                       ; $7e86: $72
	ld a, [hl-]                                      ; $7e87: $3a
	jr c, jr_093_7e7a                                ; $7e88: $38 $f0

	call z, $88f0                                    ; $7e8a: $cc $f0 $88
	db $ec                                           ; $7e8d: $ec
	ld b, [hl]                                       ; $7e8e: $46
	ld [hl], a                                       ; $7e8f: $77
	ld e, [hl]                                       ; $7e90: $5e
	ld a, e                                          ; $7e91: $7b
	xor h                                            ; $7e92: $ac
	jr c, @+$3a                                      ; $7e93: $38 $38

	ld h, e                                          ; $7e95: $63
	ld e, l                                          ; $7e96: $5d
	ld b, h                                          ; $7e97: $44
	inc a                                            ; $7e98: $3c
	ld d, b                                          ; $7e99: $50
	ld c, b                                          ; $7e9a: $48
	and b                                            ; $7e9b: $a0
	cpl                                              ; $7e9c: $2f
	ld b, e                                          ; $7e9d: $43
	ldh a, [$34]                                     ; $7e9e: $f0 $34
	ld b, d                                          ; $7ea0: $42
	ld c, c                                          ; $7ea1: $49
	ld d, h                                          ; $7ea2: $54
	ld h, a                                          ; $7ea3: $67
	ld d, h                                          ; $7ea4: $54
	add hl, sp                                       ; $7ea5: $39
	dec sp                                           ; $7ea6: $3b
	ccf                                              ; $7ea7: $3f
	xor c                                            ; $7ea8: $a9
	db $ec                                           ; $7ea9: $ec
	db $d3                                           ; $7eaa: $d3
	xor c                                            ; $7eab: $a9
	db $ec                                           ; $7eac: $ec
	add hl, bc                                       ; $7ead: $09
	ld a, b                                          ; $7eae: $78
	dec a                                            ; $7eaf: $3d
	ld b, d                                          ; $7eb0: $42
	ld b, a                                          ; $7eb1: $47

jr_093_7eb2:
	and b                                            ; $7eb2: $a0
	xor $05                                          ; $7eb3: $ee $05
	add l                                            ; $7eb5: $85
	xor c                                            ; $7eb6: $a9
	jr c, jr_093_7ef1                                ; $7eb7: $38 $38

	ld e, e                                          ; $7eb9: $5b
	ld d, [hl]                                       ; $7eba: $56
	ld b, c                                          ; $7ebb: $41
	xor h                                            ; $7ebc: $ac
	pop af                                           ; $7ebd: $f1
	ld l, a                                          ; $7ebe: $6f
	ld b, c                                          ; $7ebf: $41
	ld c, c                                          ; $7ec0: $49
	ld d, h                                          ; $7ec1: $54
	call $2fa0                                       ; $7ec2: $cd $a0 $2f
	ld b, e                                          ; $7ec5: $43
	ldh a, [$34]                                     ; $7ec6: $f0 $34
	ld b, a                                          ; $7ec8: $47
	inc [hl]                                         ; $7ec9: $34
	ld [hl], d                                       ; $7eca: $72
	dec a                                            ; $7ecb: $3d
	jr c, jr_093_7f1d                                ; $7ecc: $38 $4f

	ld b, d                                          ; $7ece: $42
	ld d, e                                          ; $7ecf: $53
	inc de                                           ; $7ed0: $13
	jp hl                                            ; $7ed1: $e9


	inc c                                            ; $7ed2: $0c
	xor h                                            ; $7ed3: $ac
	db $ec                                           ; $7ed4: $ec
	ld [$eda0], sp                                   ; $7ed5: $08 $a0 $ed
	ld b, c                                          ; $7ed8: $41
	xor c                                            ; $7ed9: $a9
	add sp, -$54                                     ; $7eda: $e8 $ac
	xor b                                            ; $7edc: $a8
	ldh a, [$08]                                     ; $7edd: $f0 $08
	ld d, b                                          ; $7edf: $50
	ldh a, [$0a]                                     ; $7ee0: $f0 $0a
	ld d, l                                          ; $7ee2: $55
	and b                                            ; $7ee3: $a0
	cpl                                              ; $7ee4: $2f
	add sp, -$05                                     ; $7ee5: $e8 $fb
	xor h                                            ; $7ee7: $ac
	ld d, h                                          ; $7ee8: $54
	ld c, l                                          ; $7ee9: $4d
	ld c, e                                          ; $7eea: $4b
	inc [hl]                                         ; $7eeb: $34
	ld [hl], d                                       ; $7eec: $72
	dec a                                            ; $7eed: $3d
	inc a                                            ; $7eee: $3c
	dec sp                                           ; $7eef: $3b
	dec a                                            ; $7ef0: $3d

jr_093_7ef1:
	sub a                                            ; $7ef1: $97
	xor b                                            ; $7ef2: $a8
	ret                                              ; $7ef3: $c9


	ldh a, [$d7]                                     ; $7ef4: $f0 $d7
	pop af                                           ; $7ef6: $f1
	sub c                                            ; $7ef7: $91
	ld c, b                                          ; $7ef8: $48
	and e                                            ; $7ef9: $a3
	xor $10                                          ; $7efa: $ee $10
	and b                                            ; $7efc: $a0
	cpl                                              ; $7efd: $2f
	ld b, e                                          ; $7efe: $43
	ld e, [hl]                                       ; $7eff: $5e
	dec sp                                           ; $7f00: $3b
	inc [hl]                                         ; $7f01: $34
	db $eb                                           ; $7f02: $eb
	rst FarCall                                          ; $7f03: $f7
	ld [hl], $17                                     ; $7f04: $36 $17
	pop af                                           ; $7f06: $f1
	ld d, $47                                        ; $7f07: $16 $47
	db $f4                                           ; $7f09: $f4
	ld h, h                                          ; $7f0a: $64
	dec sp                                           ; $7f0b: $3b
	ld h, c                                          ; $7f0c: $61
	ld d, [hl]                                       ; $7f0d: $56
	dec sp                                           ; $7f0e: $3b
	ccf                                              ; $7f0f: $3f
	xor b                                            ; $7f10: $a8
	ld [hl-], a                                      ; $7f11: $32
	ld a, [hl-]                                      ; $7f12: $3a
	ld b, c                                          ; $7f13: $41
	inc a                                            ; $7f14: $3c
	ldh a, [$71]                                     ; $7f15: $f0 $71
	jr c, jr_093_7f53                                ; $7f17: $38 $3a

	and e                                            ; $7f19: $a3
	ld c, h                                          ; $7f1a: $4c
	add l                                            ; $7f1b: $85
	xor h                                            ; $7f1c: $ac

jr_093_7f1d:
	ld d, d                                          ; $7f1d: $52
	ld e, e                                          ; $7f1e: $5b
	ld c, d                                          ; $7f1f: $4a
	ld d, h                                          ; $7f20: $54
	ld b, c                                          ; $7f21: $41
	ld a, [hl-]                                      ; $7f22: $3a
	ld b, d                                          ; $7f23: $42
	ld [hl], d                                       ; $7f24: $72
	ld c, [hl]                                       ; $7f25: $4e
	ld a, a                                          ; $7f26: $7f
	and c                                            ; $7f27: $a1
	cpl                                              ; $7f28: $2f
	ld b, e                                          ; $7f29: $43
	jr c, jr_093_7f60                                ; $7f2a: $38 $34

	jr c, jr_093_7f9c                                ; $7f2c: $38 $6e

	ld [hl], d                                       ; $7f2e: $72
	ld a, [hl-]                                      ; $7f2f: $3a
	ld d, l                                          ; $7f30: $55
	ccf                                              ; $7f31: $3f
	ld c, a                                          ; $7f32: $4f
	inc de                                           ; $7f33: $13
	db $ec                                           ; $7f34: $ec
	ld a, [bc]                                       ; $7f35: $0a
	dec sp                                           ; $7f36: $3b
	ccf                                              ; $7f37: $3f
	ld c, b                                          ; $7f38: $48
	and b                                            ; $7f39: $a0
	db $ed                                           ; $7f3a: $ed
	ld b, c                                          ; $7f3b: $41
	xor c                                            ; $7f3c: $a9
	ld e, e                                          ; $7f3d: $5b
	ld d, [hl]                                       ; $7f3e: $56
	ld b, [hl]                                       ; $7f3f: $46
	inc [hl]                                         ; $7f40: $34
	pop af                                           ; $7f41: $f1
	ld l, a                                          ; $7f42: $6f
	call $f0a8                                       ; $7f43: $cd $a8 $f0
	ld [$f050], sp                                   ; $7f46: $08 $50 $f0
	ld a, [bc]                                       ; $7f49: $0a
	ld d, l                                          ; $7f4a: $55
	and b                                            ; $7f4b: $a0
	cpl                                              ; $7f4c: $2f
	add sp, -$05                                     ; $7f4d: $e8 $fb
	xor h                                            ; $7f4f: $ac
	ld d, h                                          ; $7f50: $54
	ld c, l                                          ; $7f51: $4d
	ld c, e                                          ; $7f52: $4b

jr_093_7f53:
	inc [hl]                                         ; $7f53: $34
	ld [hl], d                                       ; $7f54: $72
	dec a                                            ; $7f55: $3d
	inc a                                            ; $7f56: $3c
	dec sp                                           ; $7f57: $3b
	dec a                                            ; $7f58: $3d
	sub a                                            ; $7f59: $97
	xor b                                            ; $7f5a: $a8
	ld d, c                                          ; $7f5b: $51
	ld [hl], b                                       ; $7f5c: $70
	ld d, l                                          ; $7f5d: $55
	ldh a, [$d7]                                     ; $7f5e: $f0 $d7

jr_093_7f60:
	pop af                                           ; $7f60: $f1
	sub c                                            ; $7f61: $91
	ld c, b                                          ; $7f62: $48
	and e                                            ; $7f63: $a3
	ld [$a82e], a                                    ; $7f64: $ea $2e $a8
	adc d                                            ; $7f67: $8a
	ldh a, [$73]                                     ; $7f68: $f0 $73
	adc a                                            ; $7f6a: $8f
	ld c, d                                          ; $7f6b: $4a
	ld c, e                                          ; $7f6c: $4b
	xor h                                            ; $7f6d: $ac
	db $eb                                           ; $7f6e: $eb
	adc b                                            ; $7f6f: $88
	ld h, d                                          ; $7f70: $62
	ld c, b                                          ; $7f71: $48
	and b                                            ; $7f72: $a0
	cpl                                              ; $7f73: $2f
	ld b, e                                          ; $7f74: $43
	pop af                                           ; $7f75: $f1
	or b                                             ; $7f76: $b0
	ldh a, [$3f]                                     ; $7f77: $f0 $3f
	ldh a, [$64]                                     ; $7f79: $f0 $64
	jr c, @+$3c                                      ; $7f7b: $38 $3a

	ld b, d                                          ; $7f7d: $42
	and c                                            ; $7f7e: $a1
	ld e, d                                          ; $7f7f: $5a
	dec sp                                           ; $7f80: $3b
	ld h, c                                          ; $7f81: $61
	inc a                                            ; $7f82: $3c
	dec sp                                           ; $7f83: $3b
	ccf                                              ; $7f84: $3f
	jr c, jr_093_7fc0                                ; $7f85: $38 $39

	ld c, c                                          ; $7f87: $49
	xor h                                            ; $7f88: $ac
	ldh a, [$64]                                     ; $7f89: $f0 $64
	jr c, @+$3d                                      ; $7f8b: $38 $3b

	ccf                                              ; $7f8d: $3f
	jr c, jr_093_7fc9                                ; $7f8e: $38 $39

	inc a                                            ; $7f90: $3c
	ld c, b                                          ; $7f91: $48
	and b                                            ; $7f92: $a0
	cpl                                              ; $7f93: $2f
	ld b, e                                          ; $7f94: $43
	dec a                                            ; $7f95: $3d
	ld d, d                                          ; $7f96: $52
	ld b, a                                          ; $7f97: $47
	ld [hl], d                                       ; $7f98: $72
	ld c, [hl]                                       ; $7f99: $4e
	ld b, d                                          ; $7f9a: $42
	ld c, a                                          ; $7f9b: $4f

jr_093_7f9c:
	xor h                                            ; $7f9c: $ac
	jr c, jr_093_7fd7                                ; $7f9d: $38 $38

	inc a                                            ; $7f9f: $3c
	ld c, a                                          ; $7fa0: $4f
	ld b, l                                          ; $7fa1: $45
	xor c                                            ; $7fa2: $a9
	ld [hl], d                                       ; $7fa3: $72
	ld b, a                                          ; $7fa4: $47
	call $2fa0                                       ; $7fa5: $cd $a0 $2f
	ld b, e                                          ; $7fa8: $43
	ld e, [hl]                                       ; $7fa9: $5e
	ld e, c                                          ; $7faa: $59
	dec sp                                           ; $7fab: $3b
	xor h                                            ; $7fac: $ac
	db $ec                                           ; $7fad: $ec
	add hl, bc                                       ; $7fae: $09
	ld a, b                                          ; $7faf: $78
	dec a                                            ; $7fb0: $3d
	ld b, d                                          ; $7fb1: $42
	ld b, a                                          ; $7fb2: $47
	xor b                                            ; $7fb3: $a8
	pop af                                           ; $7fb4: $f1
	or b                                             ; $7fb5: $b0
	ldh a, [$3f]                                     ; $7fb6: $f0 $3f
	ldh a, [$64]                                     ; $7fb8: $f0 $64
	jr c, @+$3c                                      ; $7fba: $38 $3a

	ld b, d                                          ; $7fbc: $42
	and c                                            ; $7fbd: $a1
	ld e, d                                          ; $7fbe: $5a
	dec sp                                           ; $7fbf: $3b

jr_093_7fc0:
	ld h, c                                          ; $7fc0: $61
	inc a                                            ; $7fc1: $3c
	ld c, c                                          ; $7fc2: $49
	add d                                            ; $7fc3: $82
	add hl, sp                                       ; $7fc4: $39
	ld c, c                                          ; $7fc5: $49
	xor h                                            ; $7fc6: $ac
	add sp, $68                                      ; $7fc7: $e8 $68

jr_093_7fc9:
	inc de                                           ; $7fc9: $13
	adc e                                            ; $7fca: $8b
	ld e, h                                          ; $7fcb: $5c
	dec sp                                           ; $7fcc: $3b
	ccf                                              ; $7fcd: $3f
	ldh a, [$78]                                     ; $7fce: $f0 $78
	ld e, e                                          ; $7fd0: $5b
	and b                                            ; $7fd1: $a0
	pop af                                           ; $7fd2: $f1
	or b                                             ; $7fd3: $b0
	ldh a, [$3f]                                     ; $7fd4: $f0 $3f
	ld a, [hl-]                                      ; $7fd6: $3a

jr_093_7fd7:
	ld b, c                                          ; $7fd7: $41
	ccf                                              ; $7fd8: $3f
	pop af                                           ; $7fd9: $f1
	jr nc, @+$73                                     ; $7fda: $30 $71

	ccf                                              ; $7fdc: $3f
	ld e, b                                          ; $7fdd: $58
	xor h                                            ; $7fde: $ac
	ldh a, [$34]                                     ; $7fdf: $f0 $34
	ld b, d                                          ; $7fe1: $42
	ld c, c                                          ; $7fe2: $49
	ld d, h                                          ; $7fe3: $54
	call $2fa0                                       ; $7fe4: $cd $a0 $2f
	ld b, e                                          ; $7fe7: $43
	ld e, [hl]                                       ; $7fe8: $5e
	ld e, c                                          ; $7fe9: $59
	dec sp                                           ; $7fea: $3b
	xor h                                            ; $7feb: $ac
	db $ec                                           ; $7fec: $ec
	add hl, bc                                       ; $7fed: $09
	ld a, b                                          ; $7fee: $78
	dec a                                            ; $7fef: $3d
	ld b, d                                          ; $7ff0: $42
	ld b, a                                          ; $7ff1: $47
	xor h                                            ; $7ff2: $ac
	pop af                                           ; $7ff3: $f1
	or b                                             ; $7ff4: $b0
	ldh a, [$3f]                                     ; $7ff5: $f0 $3f
	ldh a, [$64]                                     ; $7ff7: $f0 $64
	jr c, @+$3c                                      ; $7ff9: $38 $3a

	ld b, d                                          ; $7ffb: $42
	and c                                            ; $7ffc: $a1
	ld b, b                                          ; $7ffd: $40
	ld b, c                                          ; $7ffe: $41
	ld a, [hl-]                                      ; $7fff: $3a
