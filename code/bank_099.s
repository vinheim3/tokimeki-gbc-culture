; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $099", ROMX[$4000], BANK[$99]

	ld a, [hl-]                                      ; $4000: $3a
	dec a                                            ; $4001: $3d
	ld c, c                                          ; $4002: $49
	ld c, e                                          ; $4003: $4b
	ldh a, [$9a]                                     ; $4004: $f0 $9a
	ld e, h                                          ; $4006: $5c
	ldh a, [rTMA]                                    ; $4007: $f0 $06
	dec sp                                           ; $4009: $3b
	ccf                                              ; $400a: $3f
	ld d, b                                          ; $400b: $50
	ld b, c                                          ; $400c: $41
	ld a, [hl-]                                      ; $400d: $3a
	ld e, c                                          ; $400e: $59
	db $38, $a8                                      ; $400f: $38 $a8
	db $eb                                           ; $4011: $eb
	sbc a                                            ; $4012: $9f
	and b                                            ; $4013: $a0
	ld b, [hl]                                       ; $4014: $46
	dec sp                                           ; $4015: $3b
	xor h                                            ; $4016: $ac
	pop af                                           ; $4017: $f1
	ld d, $f0                                        ; $4018: $16 $f0
	ld d, $62                                        ; $401a: $16 $62
	ld [hl], a                                       ; $401c: $77
	db $38, $94                                      ; $401d: $38 $94
	ld a, $3d                                        ; $401f: $3e $3d
	scf                                              ; $4021: $37
	inc de                                           ; $4022: $13
	ldh a, [$74]                                     ; $4023: $f0 $74
	ldh a, [$7a]                                     ; $4025: $f0 $7a
	ld b, d                                          ; $4027: $42
	ldh a, [rBGP]                                    ; $4028: $f0 $47
	ldh a, [$2a]                                     ; $402a: $f0 $2a
	ld b, a                                          ; $402c: $47
	ldh a, [$c7]                                     ; $402d: $f0 $c7
	ld c, l                                          ; $402f: $4d
	ld c, [hl]                                       ; $4030: $4e
	ld e, c                                          ; $4031: $59
	and d                                            ; $4032: $a2
	ld e, d                                          ; $4033: $5a
	add hl, sp                                       ; $4034: $39
	ld a, $3d                                        ; $4035: $3e $3d
	ld b, c                                          ; $4037: $41
	ld c, d                                          ; $4038: $4a
	ld d, c                                          ; $4039: $51
	inc a                                            ; $403a: $3c
	and c                                            ; $403b: $a1
	cpl                                              ; $403c: $2f
	ld b, e                                          ; $403d: $43
	xor $27                                          ; $403e: $ee $27
	xor b                                            ; $4040: $a8
	ld [$a8a1], a                                    ; $4041: $ea $a1 $a8
	halt                                             ; $4044: $76
	ld c, c                                          ; $4045: $49
	ld b, [hl]                                       ; $4046: $46
	db $38, $80                                      ; $4047: $38 $80
	ld c, c                                          ; $4049: $49
	xor h                                            ; $404a: $ac
	jp hl                                            ; $404b: $e9


	add a                                            ; $404c: $87
	and c                                            ; $404d: $a1
	ld e, [hl]                                       ; $404e: $5e
	dec sp                                           ; $404f: $3b
	xor $10                                          ; $4050: $ee $10
	ld [hl+], a                                      ; $4052: $22
	rla                                              ; $4053: $17
	db $eb                                           ; $4054: $eb
	db $f4                                           ; $4055: $f4
	xor $10                                          ; $4056: $ee $10
	xor h                                            ; $4058: $ac
	jp hl                                            ; $4059: $e9


	adc c                                            ; $405a: $89
	ldh a, [$f1]                                     ; $405b: $f0 $f1
	ldh a, [$9d]                                     ; $405d: $f0 $9d
	ld a, [hl-]                                      ; $405f: $3a
	ld b, c                                          ; $4060: $41
	ld c, d                                          ; $4061: $4a
	ld d, c                                          ; $4062: $51
	inc a                                            ; $4063: $3c
	and c                                            ; $4064: $a1
	cpl                                              ; $4065: $2f
	ld b, e                                          ; $4066: $43
	xor $1f                                          ; $4067: $ee $1f
	dec [hl]                                         ; $4069: $35
	rla                                              ; $406a: $17
	xor $27                                          ; $406b: $ee $27
	ld [$1315], a                                    ; $406d: $ea $15 $13
	db $ec                                           ; $4070: $ec
	ld b, b                                          ; $4071: $40
	ld d, l                                          ; $4072: $55
	ld c, l                                          ; $4073: $4d
	and b                                            ; $4074: $a0
	cp [hl]                                          ; $4075: $be
	xor $10                                          ; $4076: $ee $10
	and b                                            ; $4078: $a0
	db $ec                                           ; $4079: $ec
	reti                                             ; $407a: $d9


	xor $27                                          ; $407b: $ee $27
	ld c, e                                          ; $407d: $4b
	xor h                                            ; $407e: $ac
	ldh a, [$bc]                                     ; $407f: $f0 $bc
	ldh a, [c]                                       ; $4081: $f2
	inc bc                                           ; $4082: $03
	ld c, c                                          ; $4083: $49
	sbc h                                            ; $4084: $9c
	dec sp                                           ; $4085: $3b
	ld c, c                                          ; $4086: $49
	xor $06                                          ; $4087: $ee $06
	ld b, a                                          ; $4089: $47
	jr c, jr_099_40c9                                ; $408a: $38 $3d

	jr c, @+$4c                                      ; $408c: $38 $4a

	ld d, c                                          ; $408e: $51
	and b                                            ; $408f: $a0
	cpl                                              ; $4090: $2f

jr_099_4091:
	ld b, e                                          ; $4091: $43
	ld b, [hl]                                       ; $4092: $46
	ld d, a                                          ; $4093: $57
	ld d, e                                          ; $4094: $53
	ld c, c                                          ; $4095: $49
	add hl, sp                                       ; $4096: $39
	inc [hl]                                         ; $4097: $34
	xor $27                                          ; $4098: $ee $27
	xor b                                            ; $409a: $a8
	ldh a, [$9f]                                     ; $409b: $f0 $9f
	ld e, e                                          ; $409d: $5b
	ccf                                              ; $409e: $3f
	jr c, jr_099_40de                                ; $409f: $38 $3d

	ld b, l                                          ; $40a1: $45

jr_099_40a2:
	and b                                            ; $40a2: $a0
	db $eb                                           ; $40a3: $eb
	ccf                                              ; $40a4: $3f
	xor b                                            ; $40a5: $a8
	ldh a, [$bc]                                     ; $40a6: $f0 $bc
	ldh a, [c]                                       ; $40a8: $f2
	inc bc                                           ; $40a9: $03
	dec [hl]                                         ; $40aa: $35
	xor $27                                          ; $40ab: $ee $27
	db $ec                                           ; $40ad: $ec
	reti                                             ; $40ae: $d9


	xor $10                                          ; $40af: $ee $10
	and b                                            ; $40b1: $a0
	cpl                                              ; $40b2: $2f
	ld b, e                                          ; $40b3: $43
	ld b, b                                          ; $40b4: $40
	add hl, sp                                       ; $40b5: $39
	inc a                                            ; $40b6: $3c

jr_099_40b7:
	xor $10                                          ; $40b7: $ee $10
	xor b                                            ; $40b9: $a8
	ldh a, [rTAC]                                    ; $40ba: $f0 $07
	inc a                                            ; $40bc: $3c
	dec sp                                           ; $40bd: $3b
	dec a                                            ; $40be: $3d
	ld b, l                                          ; $40bf: $45
	inc [hl]                                         ; $40c0: $34
	xor $27                                          ; $40c1: $ee $27
	and b                                            ; $40c3: $a0
	ld b, [hl]                                       ; $40c4: $46
	ld e, c                                          ; $40c5: $59
	ld b, [hl]                                       ; $40c6: $46
	inc [hl]                                         ; $40c7: $34
	db $eb                                           ; $40c8: $eb

jr_099_40c9:
	or $13                                           ; $40c9: $f6 $13
	ldh a, [$e4]                                     ; $40cb: $f0 $e4
	ld e, l                                          ; $40cd: $5d
	ld h, c                                          ; $40ce: $61
	ld d, [hl]                                       ; $40cf: $56
	add hl, sp                                       ; $40d0: $39
	ld a, [hl-]                                      ; $40d1: $3a
	ld b, c                                          ; $40d2: $41
	ccf                                              ; $40d3: $3f
	xor $10                                          ; $40d4: $ee $10
	xor b                                            ; $40d6: $a8
	xor $27                                          ; $40d7: $ee $27
	inc [hl]                                         ; $40d9: $34
	ld c, a                                          ; $40da: $4f
	add hl, sp                                       ; $40db: $39
	ldh a, [$9a]                                     ; $40dc: $f0 $9a

jr_099_40de:
	ld e, h                                          ; $40de: $5c
	ldh a, [rTMA]                                    ; $40df: $f0 $06
	dec sp                                           ; $40e1: $3b
	ccf                                              ; $40e2: $3f
	ld d, b                                          ; $40e3: $50
	ld b, c                                          ; $40e4: $41
	ld a, [hl-]                                      ; $40e5: $3a
	ld e, c                                          ; $40e6: $59
	jr c, jr_099_4091                                ; $40e7: $38 $a8

	db $eb                                           ; $40e9: $eb
	xor b                                            ; $40ea: $a8
	and b                                            ; $40eb: $a0
	ld l, [hl]                                       ; $40ec: $6e
	dec sp                                           ; $40ed: $3b
	ldh a, [$36]                                     ; $40ee: $f0 $36
	xor $27                                          ; $40f0: $ee $27
	inc de                                           ; $40f2: $13
	ld h, e                                          ; $40f3: $63
	inc a                                            ; $40f4: $3c
	ld b, c                                          ; $40f5: $41
	ld a, [hl-]                                      ; $40f6: $3a
	ld e, c                                          ; $40f7: $59
	jr c, jr_099_40a2                                ; $40f8: $38 $a8

	ldh a, [$ec]                                     ; $40fa: $f0 $ec
	ld [hl], c                                       ; $40fc: $71
	ld d, b                                          ; $40fd: $50
	ld c, l                                          ; $40fe: $4d
	ld a, [hl-]                                      ; $40ff: $3a
	jr c, jr_099_4147                                ; $4100: $38 $45

	ld e, c                                          ; $4102: $59
	and b                                            ; $4103: $a0
	cpl                                              ; $4104: $2f
	ld b, e                                          ; $4105: $43
	xor $0a                                          ; $4106: $ee $0a
	xor b                                            ; $4108: $a8
	ld [$a8a1], a                                    ; $4109: $ea $a1 $a8
	halt                                             ; $410c: $76
	ld c, c                                          ; $410d: $49
	ld b, [hl]                                       ; $410e: $46
	jr c, jr_099_4091                                ; $410f: $38 $80

	ld c, c                                          ; $4111: $49
	xor h                                            ; $4112: $ac
	jp hl                                            ; $4113: $e9


	add a                                            ; $4114: $87
	and c                                            ; $4115: $a1
	ld e, [hl]                                       ; $4116: $5e
	dec sp                                           ; $4117: $3b
	scf                                              ; $4118: $37
	xor c                                            ; $4119: $a9
	jr c, jr_099_4178                                ; $411a: $38 $5c

	ld a, [hl-]                                      ; $411c: $3a
	ld d, a                                          ; $411d: $57
	ld l, e                                          ; $411e: $6b
	ld h, d                                          ; $411f: $62
	add d                                            ; $4120: $82
	jr c, jr_099_40b7                                ; $4121: $38 $94

	ld d, c                                          ; $4123: $51
	ld b, d                                          ; $4124: $42
	xor $10                                          ; $4125: $ee $10
	ld [hl], $22                                     ; $4127: $36 $22
	inc de                                           ; $4129: $13
	ld l, d                                          ; $412a: $6a
	ld d, c                                          ; $412b: $51
	sbc l                                            ; $412c: $9d
	xor $10                                          ; $412d: $ee $10
	inc de                                           ; $412f: $13
	di                                               ; $4130: $f3
	inc bc                                           ; $4131: $03
	ld e, [hl]                                       ; $4132: $5e
	ld a, [hl-]                                      ; $4133: $3a
	ld e, h                                          ; $4134: $5c
	ld d, [hl]                                       ; $4135: $56
	db $eb                                           ; $4136: $eb
	push af                                          ; $4137: $f5
	and c                                            ; $4138: $a1
	cpl                                              ; $4139: $2f

Jump_099_413a:
	ld b, e                                          ; $413a: $43
	xor $1f                                          ; $413b: $ee $1f
	dec [hl]                                         ; $413d: $35
	rla                                              ; $413e: $17
	xor $0a                                          ; $413f: $ee $0a
	ld [$1315], a                                    ; $4141: $ea $15 $13
	db $ec                                           ; $4144: $ec
	ld b, b                                          ; $4145: $40
	ld d, l                                          ; $4146: $55

jr_099_4147:
	ld c, l                                          ; $4147: $4d
	and b                                            ; $4148: $a0
	ld d, d                                          ; $4149: $52
	jr c, jr_099_4187                                ; $414a: $38 $3b

	dec a                                            ; $414c: $3d
	ld a, [hl-]                                      ; $414d: $3a
	ld [hl], h                                       ; $414e: $74
	xor $10                                          ; $414f: $ee $10
	add hl, bc                                       ; $4151: $09
	ld b, [hl]                                       ; $4152: $46
	ld a, [hl-]                                      ; $4153: $3a
	dec a                                            ; $4154: $3d
	ld c, d                                          ; $4155: $4a
	ld d, c                                          ; $4156: $51
	xor $10                                          ; $4157: $ee $10
	and b                                            ; $4159: $a0
	cpl                                              ; $415a: $2f
	ld b, e                                          ; $415b: $43
	ld b, [hl]                                       ; $415c: $46
	ld d, a                                          ; $415d: $57

jr_099_415e:
	ld d, e                                          ; $415e: $53
	ld c, c                                          ; $415f: $49
	add hl, sp                                       ; $4160: $39
	inc [hl]                                         ; $4161: $34
	xor $0a                                          ; $4162: $ee $0a
	xor b                                            ; $4164: $a8
	ldh a, [$9f]                                     ; $4165: $f0 $9f
	ld e, e                                          ; $4167: $5b
	ccf                                              ; $4168: $3f
	jr c, @+$3f                                      ; $4169: $38 $3d

	ld b, l                                          ; $416b: $45
	and b                                            ; $416c: $a0
	ld [hl], b                                       ; $416d: $70
	ld [hl], c                                       ; $416e: $71
	ld b, c                                          ; $416f: $41
	ld c, h                                          ; $4170: $4c
	xor $10                                          ; $4171: $ee $10
	xor b                                            ; $4173: $a8
	ld l, a                                          ; $4174: $6f
	xor $10                                          ; $4175: $ee $10
	add hl, bc                                       ; $4177: $09

jr_099_4178:
	cpl                                              ; $4178: $2f
	ld b, e                                          ; $4179: $43
	ld b, b                                          ; $417a: $40
	add hl, sp                                       ; $417b: $39
	inc a                                            ; $417c: $3c
	xor $10                                          ; $417d: $ee $10
	inc de                                           ; $417f: $13
	jr c, jr_099_41ba                                ; $4180: $38 $38

	ld b, l                                          ; $4182: $45
	inc [hl]                                         ; $4183: $34
	ldh a, [rTAC]                                    ; $4184: $f0 $07
	inc a                                            ; $4186: $3c

jr_099_4187:
	dec sp                                           ; $4187: $3b
	dec a                                            ; $4188: $3d
	inc a                                            ; $4189: $3c
	ld d, b                                          ; $418a: $50
	xor $10                                          ; $418b: $ee $10
	and b                                            ; $418d: $a0
	ld e, [hl]                                       ; $418e: $5e
	dec sp                                           ; $418f: $3b

jr_099_4190:
	ld [hl], $eb                                     ; $4190: $36 $eb
	or $13                                           ; $4192: $f6 $13
	ldh a, [$e4]                                     ; $4194: $f0 $e4
	ld e, l                                          ; $4196: $5d
	dec a                                            ; $4197: $3d
	ld b, d                                          ; $4198: $42
	xor c                                            ; $4199: $a9
	ld l, a                                          ; $419a: $6f
	inc [hl]                                         ; $419b: $34
	ldh a, [c]                                       ; $419c: $f2
	ld e, c                                          ; $419d: $59
	jr c, jr_099_4190                                ; $419e: $38 $f0

	xor e                                            ; $41a0: $ab
	ld c, e                                          ; $41a1: $4b
	ldh a, [$64]                                     ; $41a2: $f0 $64
	jr c, jr_099_41e0                                ; $41a4: $38 $3a

	ld b, d                                          ; $41a6: $42
	xor $10                                          ; $41a7: $ee $10
	xor b                                            ; $41a9: $a8
	db $eb                                           ; $41aa: $eb
	xor b                                            ; $41ab: $a8
	and b                                            ; $41ac: $a0
	ld h, b                                          ; $41ad: $60
	inc hl                                           ; $41ae: $23
	ld h, b                                          ; $41af: $60
	inc hl                                           ; $41b0: $23
	ld h, b                                          ; $41b1: $60
	inc hl                                           ; $41b2: $23
	ld h, b                                          ; $41b3: $60
	inc hl                                           ; $41b4: $23
	ld h, b                                          ; $41b5: $60
	rla                                              ; $41b6: $17
	ldh a, [c]                                       ; $41b7: $f2
	pop de                                           ; $41b8: $d1
	di                                               ; $41b9: $f3

jr_099_41ba:
	or e                                             ; $41ba: $b3
	ld b, a                                          ; $41bb: $47
	ldh a, [$ec]                                     ; $41bc: $f0 $ec
	ld [hl], c                                       ; $41be: $71
	ld d, b                                          ; $41bf: $50
	ld c, l                                          ; $41c0: $4d
	ld b, b                                          ; $41c1: $40
	add hl, sp                                       ; $41c2: $39
	ld c, a                                          ; $41c3: $4f
	inc de                                           ; $41c4: $13
	ld a, [hl-]                                      ; $41c5: $3a
	jr c, jr_099_4212                                ; $41c6: $38 $4a

	ld d, c                                          ; $41c8: $51
	xor $10                                          ; $41c9: $ee $10
	and b                                            ; $41cb: $a0
	db $eb                                           ; $41cc: $eb
	rst FarCall                                          ; $41cd: $f7
	inc a                                            ; $41ce: $3c
	ld a, [hl-]                                      ; $41cf: $3a
	and c                                            ; $41d0: $a1
	cpl                                              ; $41d1: $2f
	ld b, e                                          ; $41d2: $43
	xor $29                                          ; $41d3: $ee $29
	xor b                                            ; $41d5: $a8
	ld [$a8a1], a                                    ; $41d6: $ea $a1 $a8
	halt                                             ; $41d9: $76
	ld c, c                                          ; $41da: $49
	ld b, [hl]                                       ; $41db: $46
	jr c, jr_099_415e                                ; $41dc: $38 $80

	ld c, c                                          ; $41de: $49
	xor h                                            ; $41df: $ac

jr_099_41e0:
	jp hl                                            ; $41e0: $e9


	add a                                            ; $41e1: $87
	and c                                            ; $41e2: $a1
	ld b, b                                          ; $41e3: $40
	inc [hl]                                         ; $41e4: $34
	ld b, b                                          ; $41e5: $40
	ld b, c                                          ; $41e6: $41
	ld a, [hl-]                                      ; $41e7: $3a
	ld d, h                                          ; $41e8: $54
	ld c, c                                          ; $41e9: $49
	xor $10                                          ; $41ea: $ee $10
	inc de                                           ; $41ec: $13
	pop af                                           ; $41ed: $f1
	ld d, $47                                        ; $41ee: $16 $47
	xor $10                                          ; $41f0: $ee $10
	and b                                            ; $41f2: $a0
	cpl                                              ; $41f3: $2f
	ld b, e                                          ; $41f4: $43
	xor $29                                          ; $41f5: $ee $29
	ld b, d                                          ; $41f7: $42
	ldh a, [$57]                                     ; $41f8: $f0 $57
	ldh a, [hDisp1_WX]                                     ; $41fa: $f0 $96
	ld a, [hl-]                                      ; $41fc: $3a
	inc de                                           ; $41fd: $13
	db $ed                                           ; $41fe: $ed
	ld l, a                                          ; $41ff: $6f
	ld h, c                                          ; $4200: $61
	ld h, d                                          ; $4201: $62
	db $ec                                           ; $4202: $ec
	ld b, b                                          ; $4203: $40
	ldh a, [$08]                                     ; $4204: $f0 $08
	ld a, $38                                        ; $4206: $3e $38
	ld b, c                                          ; $4208: $41
	ld b, h                                          ; $4209: $44
	and b                                            ; $420a: $a0
	xor $1f                                          ; $420b: $ee $1f
	xor $10                                          ; $420d: $ee $10
	xor b                                            ; $420f: $a8
	ldh a, [rHDMA4]                                  ; $4210: $f0 $54

jr_099_4212:
	ld a, $99                                        ; $4212: $3e $99
	dec sp                                           ; $4214: $3b
	ccf                                              ; $4215: $3f
	ld d, l                                          ; $4216: $55
	ld c, l                                          ; $4217: $4d
	ld c, [hl]                                       ; $4218: $4e
	inc a                                            ; $4219: $3c
	ld a, [hl-]                                      ; $421a: $3a
	and c                                            ; $421b: $a1
	ld l, a                                          ; $421c: $6f
	xor $10                                          ; $421d: $ee $10
	ld b, [hl]                                       ; $421f: $46
	ld a, [hl-]                                      ; $4220: $3a

jr_099_4221:
	dec a                                            ; $4221: $3d
	ld c, c                                          ; $4222: $49
	inc de                                           ; $4223: $13
	sbc h                                            ; $4224: $9c
	dec sp                                           ; $4225: $3b
	ld c, c                                          ; $4226: $49
	xor $06                                          ; $4227: $ee $06
	ld b, a                                          ; $4229: $47
	xor $10                                          ; $422a: $ee $10
	and b                                            ; $422c: $a0
	cpl                                              ; $422d: $2f
	ld b, e                                          ; $422e: $43
	ld b, [hl]                                       ; $422f: $46
	ld d, a                                          ; $4230: $57
	ld d, e                                          ; $4231: $53
	ld c, c                                          ; $4232: $49
	add hl, sp                                       ; $4233: $39
	inc [hl]                                         ; $4234: $34
	xor $29                                          ; $4235: $ee $29
	xor b                                            ; $4237: $a8
	ldh a, [$9f]                                     ; $4238: $f0 $9f
	ld e, e                                          ; $423a: $5b
	ccf                                              ; $423b: $3f
	jr c, @+$3f                                      ; $423c: $38 $3d

	ld b, l                                          ; $423e: $45
	and b                                            ; $423f: $a0
	ld [hl], b                                       ; $4240: $70
	ld [hl], c                                       ; $4241: $71
	ld b, c                                          ; $4242: $41
	ld c, h                                          ; $4243: $4c
	xor $10                                          ; $4244: $ee $10
	xor b                                            ; $4246: $a8
	ld l, a                                          ; $4247: $6f
	xor $10                                          ; $4248: $ee $10
	db $ec                                           ; $424a: $ec
	reti                                             ; $424b: $d9


	xor $10                                          ; $424c: $ee $10
	add hl, bc                                       ; $424e: $09
	cpl                                              ; $424f: $2f
	ld b, e                                          ; $4250: $43
	ld b, b                                          ; $4251: $40
	add hl, sp                                       ; $4252: $39
	inc a                                            ; $4253: $3c
	xor $10                                          ; $4254: $ee $10
	inc de                                           ; $4256: $13
	ldh a, [rTAC]                                    ; $4257: $f0 $07
	inc a                                            ; $4259: $3c
	dec sp                                           ; $425a: $3b
	dec a                                            ; $425b: $3d
	ld b, l                                          ; $425c: $45
	inc [hl]                                         ; $425d: $34
	xor $29                                          ; $425e: $ee $29
	and b                                            ; $4260: $a0
	db $eb                                           ; $4261: $eb
	or $13                                           ; $4262: $f6 $13
	ldh a, [$e4]                                     ; $4264: $f0 $e4
	ld e, l                                          ; $4266: $5d
	ld h, c                                          ; $4267: $61
	ld d, [hl]                                       ; $4268: $56
	dec sp                                           ; $4269: $3b
	dec a                                            ; $426a: $3d
	ld c, h                                          ; $426b: $4c
	xor b                                            ; $426c: $a8
	ld c, a                                          ; $426d: $4f
	add hl, sp                                       ; $426e: $39
	ldh a, [rHDMA3]                                  ; $426f: $f0 $53
	ld e, [hl]                                       ; $4271: $5e
	ld a, [hl-]                                      ; $4272: $3a
	ld d, l                                          ; $4273: $55
	ld a, [hl-]                                      ; $4274: $3a
	dec sp                                           ; $4275: $3b
	ld h, c                                          ; $4276: $61
	ld d, [hl]                                       ; $4277: $56
	dec sp                                           ; $4278: $3b
	dec a                                            ; $4279: $3d
	xor $10                                          ; $427a: $ee $10
	inc de                                           ; $427c: $13
	db $eb                                           ; $427d: $eb
	xor b                                            ; $427e: $a8
	and b                                            ; $427f: $a0
	ld [hl], b                                       ; $4280: $70
	ld [hl], c                                       ; $4281: $71
	ld b, c                                          ; $4282: $41
	ld c, h                                          ; $4283: $4c
	xor b                                            ; $4284: $a8
	db $ec                                           ; $4285: $ec
	reti                                             ; $4286: $d9


	ld l, d                                          ; $4287: $6a
	ld d, c                                          ; $4288: $51
	sbc l                                            ; $4289: $9d
	inc de                                           ; $428a: $13
	ldh a, [$ec]                                     ; $428b: $f0 $ec
	ld [hl], c                                       ; $428d: $71
	ld d, b                                          ; $428e: $50
	ld c, l                                          ; $428f: $4d
	ld a, [hl-]                                      ; $4290: $3a
	jr c, jr_099_42f6                                ; $4291: $38 $63

	and b                                            ; $4293: $a0
	cpl                                              ; $4294: $2f
	ld b, e                                          ; $4295: $43
	ld [hl], l                                       ; $4296: $75
	ld a, l                                          ; $4297: $7d
	xor b                                            ; $4298: $a8
	ld [$a8a1], a                                    ; $4299: $ea $a1 $a8
	halt                                             ; $429c: $76
	ld c, c                                          ; $429d: $49
	ld b, [hl]                                       ; $429e: $46
	jr c, jr_099_4221                                ; $429f: $38 $80

	ld c, c                                          ; $42a1: $49
	xor h                                            ; $42a2: $ac
	jp hl                                            ; $42a3: $e9


	add a                                            ; $42a4: $87
	and c                                            ; $42a5: $a1
	ld e, [hl]                                       ; $42a6: $5e
	dec sp                                           ; $42a7: $3b
	xor c                                            ; $42a8: $a9
	ld b, b                                          ; $42a9: $40
	inc [hl]                                         ; $42aa: $34
	ld b, b                                          ; $42ab: $40
	ld c, l                                          ; $42ac: $4d
	ld c, e                                          ; $42ad: $4b
	xor $10                                          ; $42ae: $ee $10
	and b                                            ; $42b0: $a0
	cpl                                              ; $42b1: $2f
	ld b, e                                          ; $42b2: $43
	ld [hl], l                                       ; $42b3: $75
	ld a, l                                          ; $42b4: $7d
	ld b, d                                          ; $42b5: $42
	ldh a, [$57]                                     ; $42b6: $f0 $57
	ldh a, [hDisp1_WX]                                     ; $42b8: $f0 $96
	ld a, [hl-]                                      ; $42ba: $3a
	inc de                                           ; $42bb: $13
	db $ed                                           ; $42bc: $ed
	ld l, a                                          ; $42bd: $6f
	ld h, c                                          ; $42be: $61
	ld h, d                                          ; $42bf: $62
	db $ec                                           ; $42c0: $ec
	ld b, b                                          ; $42c1: $40
	ld d, l                                          ; $42c2: $55
	ld c, l                                          ; $42c3: $4d
	and b                                            ; $42c4: $a0
	ld b, b                                          ; $42c5: $40
	ld c, l                                          ; $42c6: $4d
	ld c, e                                          ; $42c7: $4b
	xor $10                                          ; $42c8: $ee $10
	and b                                            ; $42ca: $a0
	ld l, a                                          ; $42cb: $6f
	ld b, d                                          ; $42cc: $42
	ld d, h                                          ; $42cd: $54
	ld c, c                                          ; $42ce: $49
	ld h, d                                          ; $42cf: $62
	inc de                                           ; $42d0: $13
	ldh a, [$63]                                     ; $42d1: $f0 $63
	pop af                                           ; $42d3: $f1
	dec sp                                           ; $42d4: $3b
	ld a, $3f                                        ; $42d5: $3e $3f
	ld d, l                                          ; $42d7: $55
	ld c, l                                          ; $42d8: $4d
	ccf                                              ; $42d9: $3f
	jr c, @+$50                                      ; $42da: $38 $4e

	ld b, d                                          ; $42dc: $42
	ld c, e                                          ; $42dd: $4b
	xor h                                            ; $42de: $ac
	ld b, [hl]                                       ; $42df: $46
	ld a, [hl-]                                      ; $42e0: $3a
	dec a                                            ; $42e1: $3d
	ld b, h                                          ; $42e2: $44
	ld e, l                                          ; $42e3: $5d
	ld b, h                                          ; $42e4: $44
	ld c, c                                          ; $42e5: $49
	ldh a, [$9f]                                     ; $42e6: $f0 $9f
	ld e, e                                          ; $42e8: $5b
	ccf                                              ; $42e9: $3f
	jr c, jr_099_433a                                ; $42ea: $38 $4e

	ld h, e                                          ; $42ec: $63
	and b                                            ; $42ed: $a0
	cpl                                              ; $42ee: $2f
	ld b, e                                          ; $42ef: $43
	ld b, [hl]                                       ; $42f0: $46
	ld d, a                                          ; $42f1: $57
	ld d, e                                          ; $42f2: $53
	ld c, c                                          ; $42f3: $49
	add hl, sp                                       ; $42f4: $39
	inc [hl]                                         ; $42f5: $34

jr_099_42f6:
	ld [hl], l                                       ; $42f6: $75
	ld a, l                                          ; $42f7: $7d
	xor b                                            ; $42f8: $a8
	halt                                             ; $42f9: $76
	ld c, a                                          ; $42fa: $4f
	inc [hl]                                         ; $42fb: $34
	ldh a, [$9f]                                     ; $42fc: $f0 $9f
	ld e, e                                          ; $42fe: $5b
	ccf                                              ; $42ff: $3f
	jr c, jr_099_433f                                ; $4300: $38 $3d

	ld b, l                                          ; $4302: $45
	and b                                            ; $4303: $a0
	xor $1e                                          ; $4304: $ee $1e
	ldh a, [rAUDVOL]                                 ; $4306: $f0 $24
	ld c, e                                          ; $4308: $4b
	xor h                                            ; $4309: $ac
	ldh a, [rAUD1LOW]                                ; $430a: $f0 $13
	inc a                                            ; $430c: $3c
	dec sp                                           ; $430d: $3b
	dec a                                            ; $430e: $3d
	ld d, h                                          ; $430f: $54
	ld c, c                                          ; $4310: $49
	ld b, a                                          ; $4311: $47
	ld a, $3f                                        ; $4312: $3e $3f
	ld d, l                                          ; $4314: $55
	ld c, l                                          ; $4315: $4d
	dec a                                            ; $4316: $3d
	ld d, d                                          ; $4317: $52
	ld e, [hl]                                       ; $4318: $5e
	and b                                            ; $4319: $a0
	cpl                                              ; $431a: $2f
	ld b, e                                          ; $431b: $43
	xor $10                                          ; $431c: $ee $10
	xor $10                                          ; $431e: $ee $10
	and b                                            ; $4320: $a0
	db $eb                                           ; $4321: $eb
	or $13                                           ; $4322: $f6 $13
	db $eb                                           ; $4324: $eb
	ld b, b                                          ; $4325: $40
	xor $10                                          ; $4326: $ee $10
	xor b                                            ; $4328: $a8
	ldh a, [rRP]                                     ; $4329: $f0 $56
	ld c, a                                          ; $432b: $4f
	add b                                            ; $432c: $80
	ld d, l                                          ; $432d: $55
	ldh a, [c]                                       ; $432e: $f2
	ld h, a                                          ; $432f: $67
	ld d, l                                          ; $4330: $55
	pop af                                           ; $4331: $f1
	ldh [c], a                                       ; $4332: $e2
	ld e, l                                          ; $4333: $5d
	ld a, [hl-]                                      ; $4334: $3a
	jr c, @-$0e                                      ; $4335: $38 $f0

	xor e                                            ; $4337: $ab
	ld b, h                                          ; $4338: $44
	xor b                                            ; $4339: $a8

jr_099_433a:
	ld c, a                                          ; $433a: $4f
	add hl, sp                                       ; $433b: $39
	inc [hl]                                         ; $433c: $34
	ld e, b                                          ; $433d: $58
	ld b, l                                          ; $433e: $45

jr_099_433f:
	ld a, [hl-]                                      ; $433f: $3a
	ld d, b                                          ; $4340: $50
	ld d, c                                          ; $4341: $51
	ld c, [hl]                                       ; $4342: $4e
	ld b, l                                          ; $4343: $45
	and b                                            ; $4344: $a0
	db $eb                                           ; $4345: $eb

jr_099_4346:
	ccf                                              ; $4346: $3f
	xor $10                                          ; $4347: $ee $10
	xor b                                            ; $4349: $a8
	ldh a, [$a4]                                     ; $434a: $f0 $a4
	ld e, [hl]                                       ; $434c: $5e
	ld c, [hl]                                       ; $434d: $4e
	ldh a, [rBGP]                                    ; $434e: $f0 $47
	ldh a, [$2a]                                     ; $4350: $f0 $2a
	ld h, d                                          ; $4352: $62
	ld d, l                                          ; $4353: $55
	ld b, h                                          ; $4354: $44
	ld e, b                                          ; $4355: $58
	jr c, jr_099_4346                                ; $4356: $38 $ee

	db $10                                           ; $4358: $10
	and b                                            ; $4359: $a0
	ld e, d                                          ; $435a: $5a
	add hl, sp                                       ; $435b: $39
	jr c, jr_099_439b                                ; $435c: $38 $3d

	ld a, $52                                        ; $435e: $3e $52
	ld a, $3d                                        ; $4360: $3e $3d
	inc a                                            ; $4362: $3c
	and c                                            ; $4363: $a1
	cpl                                              ; $4364: $2f
	ld b, e                                          ; $4365: $43
	add hl, sp                                       ; $4366: $39
	dec sp                                           ; $4367: $3b
	inc [hl]                                         ; $4368: $34
	ldh a, [$b5]                                     ; $4369: $f0 $b5
	inc [hl]                                         ; $436b: $34
	ldh a, [c]                                       ; $436c: $f2
	ld b, e                                          ; $436d: $43
	ldh a, [c]                                       ; $436e: $f2
	rst SubAFromBC                                          ; $436f: $e7
	di                                               ; $4370: $f3
	ld l, $ee                                        ; $4371: $2e $ee
	db $10                                           ; $4373: $10
	xor b                                            ; $4374: $a8
	ld [$a8a1], a                                    ; $4375: $ea $a1 $a8
	halt                                             ; $4378: $76
	ld c, c                                          ; $4379: $49
	ld b, [hl]                                       ; $437a: $46
	jr c, @-$7e                                      ; $437b: $38 $80

	ld c, c                                          ; $437d: $49
	xor h                                            ; $437e: $ac
	jp hl                                            ; $437f: $e9


	add a                                            ; $4380: $87
	and c                                            ; $4381: $a1
	ld b, [hl]                                       ; $4382: $46
	inc [hl]                                         ; $4383: $34
	ldh a, [c]                                       ; $4384: $f2
	rra                                              ; $4385: $1f
	ldh a, [$38]                                     ; $4386: $f0 $38
	ldh a, [hDisp0_OBP1]                                     ; $4388: $f0 $87
	ld c, c                                          ; $438a: $49
	inc de                                           ; $438b: $13
	xor $1e                                          ; $438c: $ee $1e
	ld h, h                                          ; $438e: $64
	ldh a, [$38]                                     ; $438f: $f0 $38
	ld c, d                                          ; $4391: $4a
	ld d, c                                          ; $4392: $51
	inc a                                            ; $4393: $3c
	xor $10                                          ; $4394: $ee $10
	and c                                            ; $4396: $a1
	cpl                                              ; $4397: $2f
	ld b, e                                          ; $4398: $43
	ldh a, [c]                                       ; $4399: $f2
	ld b, e                                          ; $439a: $43

jr_099_439b:
	ldh a, [c]                                       ; $439b: $f2
	rst SubAFromBC                                          ; $439c: $e7
	di                                               ; $439d: $f3
	ld l, $42                                        ; $439e: $2e $42
	ldh a, [$57]                                     ; $43a0: $f0 $57
	ldh a, [hDisp1_WX]                                     ; $43a2: $f0 $96
	ld a, [hl-]                                      ; $43a4: $3a
	inc de                                           ; $43a5: $13
	db $ed                                           ; $43a6: $ed
	ld l, a                                          ; $43a7: $6f
	ld h, c                                          ; $43a8: $61
	ld h, d                                          ; $43a9: $62
	inc [hl]                                         ; $43aa: $34
	ld e, h                                          ; $43ab: $5c
	inc [hl]                                         ; $43ac: $34
	db $ec                                           ; $43ad: $ec
	ld b, b                                          ; $43ae: $40
	ld d, l                                          ; $43af: $55
	ld c, l                                          ; $43b0: $4d
	xor b                                            ; $43b1: $a8
	ld [hl-], a                                      ; $43b2: $32
	adc b                                            ; $43b3: $88
	sub c                                            ; $43b4: $91
	ld c, e                                          ; $43b5: $4b
	ldh a, [$0c]                                     ; $43b6: $f0 $0c
	ld e, h                                          ; $43b8: $5c
	dec a                                            ; $43b9: $3d
	ld d, l                                          ; $43ba: $55
	ld a, [hl-]                                      ; $43bb: $3a
	ld e, c                                          ; $43bc: $59
	jr c, @+$35                                      ; $43bd: $38 $33

	add hl, bc                                       ; $43bf: $09
	ld c, e                                          ; $43c0: $4b
	inc [hl]                                         ; $43c1: $34
	xor $2d                                          ; $43c2: $ee $2d
	xor $10                                          ; $43c4: $ee $10
	inc de                                           ; $43c6: $13
	ld b, b                                          ; $43c7: $40
	ld c, l                                          ; $43c8: $4d
	ld c, e                                          ; $43c9: $4b
	xor $10                                          ; $43ca: $ee $10
	add hl, bc                                       ; $43cc: $09
	ld l, [hl]                                       ; $43cd: $6e
	ld c, e                                          ; $43ce: $4b
	ld d, a                                          ; $43cf: $57
	ld l, a                                          ; $43d0: $6f
	ld c, e                                          ; $43d1: $4b
	inc [hl]                                         ; $43d2: $34
	ldh a, [c]                                       ; $43d3: $f2
	rra                                              ; $43d4: $1f
	ldh a, [$38]                                     ; $43d5: $f0 $38
	ldh a, [hDisp0_OBP1]                                     ; $43d7: $f0 $87
	ld b, d                                          ; $43d9: $42
	inc de                                           ; $43da: $13
	ld d, h                                          ; $43db: $54
	ld c, c                                          ; $43dc: $49
	ld d, e                                          ; $43dd: $53
	pop af                                           ; $43de: $f1
	dec d                                            ; $43df: $15
	ld c, l                                          ; $43e0: $4d
	ld d, b                                          ; $43e1: $50
	ld c, l                                          ; $43e2: $4d
	ld d, d                                          ; $43e3: $52
	ld a, c                                          ; $43e4: $79
	ld b, c                                          ; $43e5: $41
	xor $10                                          ; $43e6: $ee $10
	and b                                            ; $43e8: $a0
	cpl                                              ; $43e9: $2f
	ld b, e                                          ; $43ea: $43
	ld d, e                                          ; $43eb: $53
	ld e, c                                          ; $43ec: $59

Call_099_43ed:
	ld b, c                                          ; $43ed: $41
	scf                                              ; $43ee: $37
	jr c, jr_099_4425                                ; $43ef: $38 $34

	jr c, jr_099_4461                                ; $43f1: $38 $6e

	xor $10                                          ; $43f3: $ee $10
	inc de                                           ; $43f5: $13
	ld b, [hl]                                       ; $43f6: $46
	ld d, a                                          ; $43f7: $57
	ld d, e                                          ; $43f8: $53
	ld c, c                                          ; $43f9: $49
	add hl, sp                                       ; $43fa: $39
	xor $10                                          ; $43fb: $ee $10
	ldh a, [c]                                       ; $43fd: $f2
	ld b, e                                          ; $43fe: $43
	ldh a, [c]                                       ; $43ff: $f2
	rst SubAFromBC                                          ; $4400: $e7
	di                                               ; $4401: $f3
	ld l, $ee                                        ; $4402: $2e $ee
	db $10                                           ; $4404: $10
	and b                                            ; $4405: $a0
	jp hl                                            ; $4406: $e9


	ld h, $a8                                        ; $4407: $26 $a8
	ld l, a                                          ; $4409: $6f
	ld c, e                                          ; $440a: $4b
	inc [hl]                                         ; $440b: $34
	ld l, [hl]                                       ; $440c: $6e
	ld c, e                                          ; $440d: $4b
	ld d, a                                          ; $440e: $57
	xor $1e                                          ; $440f: $ee $1e
	ldh a, [$38]                                     ; $4411: $f0 $38
	ld b, d                                          ; $4413: $42
	ld d, h                                          ; $4414: $54
	ld c, c                                          ; $4415: $49
	ld d, e                                          ; $4416: $53
	xor $10                                          ; $4417: $ee $10
	and b                                            ; $4419: $a0
	cpl                                              ; $441a: $2f
	ld b, e                                          ; $441b: $43
	rst JumpTable                                          ; $441c: $c7
	inc a                                            ; $441d: $3c
	xor b                                            ; $441e: $a8
	ldh a, [$f8]                                     ; $441f: $f0 $f8
	ld c, c                                          ; $4421: $49
	pop af                                           ; $4422: $f1
	and d                                            ; $4423: $a2
	ld a, c                                          ; $4424: $79

jr_099_4425:
	ld b, a                                          ; $4425: $47
	ld a, [hl-]                                      ; $4426: $3a
	ld c, l                                          ; $4427: $4d
	ld b, l                                          ; $4428: $45
	xor b                                            ; $4429: $a8
	ldh a, [c]                                       ; $442a: $f2
	ld b, e                                          ; $442b: $43
	ldh a, [c]                                       ; $442c: $f2
	rst SubAFromBC                                          ; $442d: $e7
	di                                               ; $442e: $f3
	ld l, $35                                        ; $442f: $2e $35
	ld [hl-], a                                      ; $4431: $32
	ldh a, [rOCPD]                                   ; $4432: $f0 $6b
	ld [hl], e                                       ; $4434: $73
	inc sp                                           ; $4435: $33
	add hl, bc                                       ; $4436: $09
	db $eb                                           ; $4437: $eb
	or $13                                           ; $4438: $f6 $13
	ldh a, [$e4]                                     ; $443a: $f0 $e4
	ld e, l                                          ; $443c: $5d
	ccf                                              ; $443d: $3f
	ld [$4cb4], a                                    ; $443e: $ea $b4 $4c
	xor b                                            ; $4441: $a8
	db $ed                                           ; $4442: $ed
	db $db                                           ; $4443: $db
	ld b, a                                          ; $4444: $47
	ldh a, [$8d]                                     ; $4445: $f0 $8d
	ldh a, [$9e]                                     ; $4447: $f0 $9e
	ld c, d                                          ; $4449: $4a
	ld d, c                                          ; $444a: $51
	ld d, e                                          ; $444b: $53
	inc [hl]                                         ; $444c: $34
	ld l, a                                          ; $444d: $6f
	ld c, e                                          ; $444e: $4b
	ldh a, [c]                                       ; $444f: $f2
	rra                                              ; $4450: $1f
	ldh a, [$38]                                     ; $4451: $f0 $38
	ld b, d                                          ; $4453: $42
	inc de                                           ; $4454: $13
	pop af                                           ; $4455: $f1
	rra                                              ; $4456: $1f
	ld h, d                                          ; $4457: $62
	ldh a, [c]                                       ; $4458: $f2
	ld l, [hl]                                       ; $4459: $6e
	ld d, a                                          ; $445a: $57
	ld d, d                                          ; $445b: $52
	ld d, c                                          ; $445c: $51
	dec [hl]                                         ; $445d: $35
	db $eb                                           ; $445e: $eb
	xor b                                            ; $445f: $a8
	and b                                            ; $4460: $a0

jr_099_4461:
	jp hl                                            ; $4461: $e9


	ld h, $a8                                        ; $4462: $26 $a8
	ld e, d                                          ; $4464: $5a
	ld h, c                                          ; $4465: $61
	ld d, b                                          ; $4466: $50
	ld c, a                                          ; $4467: $4f
	ldh a, [$57]                                     ; $4468: $f0 $57
	ldh a, [$ae]                                     ; $446a: $f0 $ae
	ld a, [hl-]                                      ; $446c: $3a
	ld h, h                                          ; $446d: $64
	ldh a, [$38]                                     ; $446e: $f0 $38
	ld a, [hl-]                                      ; $4470: $3a
	ld b, d                                          ; $4471: $42
	ld c, d                                          ; $4472: $4a
	xor $10                                          ; $4473: $ee $10
	and b                                            ; $4475: $a0
	ldh a, [rOCPS]                                   ; $4476: $f0 $6a
	ldh a, [$9f]                                     ; $4478: $f0 $9f
	pop af                                           ; $447a: $f1
	ld b, b                                          ; $447b: $40
	ldh a, [rSC]                                     ; $447c: $f0 $02
	ld e, c                                          ; $447e: $59
	ld b, h                                          ; $447f: $44
	ld b, l                                          ; $4480: $45
	xor b                                            ; $4481: $a8
	ld d, d                                          ; $4482: $52
	dec sp                                           ; $4483: $3b
	dec a                                            ; $4484: $3d
	ld d, l                                          ; $4485: $55
	inc [hl]                                         ; $4486: $34
	ld d, h                                          ; $4487: $54
	ld c, l                                          ; $4488: $4d
	ld b, h                                          ; $4489: $44
	inc a                                            ; $448a: $3c
	ld d, b                                          ; $448b: $50
	db $ed                                           ; $448c: $ed
	and a                                            ; $448d: $a7
	ld c, e                                          ; $448e: $4b
	xor $10                                          ; $448f: $ee $10
	and b                                            ; $4491: $a0
	ldh a, [c]                                       ; $4492: $f2
	sbc l                                            ; $4493: $9d
	pop af                                           ; $4494: $f1
	ld h, c                                          ; $4495: $61
	ld h, d                                          ; $4496: $62
	di                                               ; $4497: $f3
	ld [$0df0], sp                                   ; $4498: $08 $f0 $0d
	pop af                                           ; $449b: $f1
	add d                                            ; $449c: $82
	ldh a, [c]                                       ; $449d: $f2
	sbc a                                            ; $449e: $9f
	ld a, $3d                                        ; $449f: $3e $3d
	ld d, d                                          ; $44a1: $52
	ld e, [hl]                                       ; $44a2: $5e
	xor b                                            ; $44a3: $a8
	pop af                                           ; $44a4: $f1
	or [hl]                                          ; $44a5: $b6
	ld c, e                                          ; $44a6: $4b
	pop af                                           ; $44a7: $f1
	adc a                                            ; $44a8: $8f
	ld a, $38                                        ; $44a9: $3e $38
	ld b, c                                          ; $44ab: $41
	ld b, h                                          ; $44ac: $44
	inc [hl]                                         ; $44ad: $34
	ldh a, [rHDMA5]                                  ; $44ae: $f0 $55
	ldh a, [rBCPS]                                   ; $44b0: $f0 $68
	ld d, c                                          ; $44b2: $51
	ld c, [hl]                                       ; $44b3: $4e
	ld b, l                                          ; $44b4: $45
	and b                                            ; $44b5: $a0
	add hl, bc                                       ; $44b6: $09
	cpl                                              ; $44b7: $2f
	ld h, $43                                        ; $44b8: $26 $43
	ld a, $34                                        ; $44ba: $3e $34
	db $ed                                           ; $44bc: $ed
	xor c                                            ; $44bd: $a9
	ld c, b                                          ; $44be: $48
	dec [hl]                                         ; $44bf: $35
	dec h                                            ; $44c0: $25
	add hl, bc                                       ; $44c1: $09
	cpl                                              ; $44c2: $2f
	db $eb                                           ; $44c3: $eb
	ccf                                              ; $44c4: $3f
	and b                                            ; $44c5: $a0
	cpl                                              ; $44c6: $2f
	ld d, h                                          ; $44c7: $54
	ld b, c                                          ; $44c8: $41
	ld a, [hl-]                                      ; $44c9: $3a
	ldh a, [$28]                                     ; $44ca: $f0 $28
	ld b, a                                          ; $44cc: $47
	pop af                                           ; $44cd: $f1
	ld bc, $4df0                                     ; $44ce: $01 $f0 $4d
	sub h                                            ; $44d1: $94
	ld a, $3d                                        ; $44d2: $3e $3d
	ld d, a                                          ; $44d4: $57
	ld a, $3f                                        ; $44d5: $3e $3f
	and b                                            ; $44d7: $a0
	cpl                                              ; $44d8: $2f
	ld l, d                                          ; $44d9: $6a
	ld l, b                                          ; $44da: $68
	inc [hl]                                         ; $44db: $34
	ld b, [hl]                                       ; $44dc: $46
	ld a, [hl-]                                      ; $44dd: $3a
	dec a                                            ; $44de: $3d
	ld b, a                                          ; $44df: $47
	db $eb                                           ; $44e0: $eb
	db $f4                                           ; $44e1: $f4
	add hl, bc                                       ; $44e2: $09
	cpl                                              ; $44e3: $2f
	add d                                            ; $44e4: $82
	jr c, jr_099_4524                                ; $44e5: $38 $3d

	jr c, jr_099_453d                                ; $44e7: $38 $54

	ld c, c                                          ; $44e9: $49
	ld d, e                                          ; $44ea: $53
	ld b, [hl]                                       ; $44eb: $46
	dec sp                                           ; $44ec: $3b
	ccf                                              ; $44ed: $3f
	ld c, b                                          ; $44ee: $48
	and b                                            ; $44ef: $a0
	cpl                                              ; $44f0: $2f
	ld h, $43                                        ; $44f1: $26 $43
	add d                                            ; $44f3: $82
	jr c, jr_099_4533                                ; $44f4: $38 $3d

	jr c, @+$56                                      ; $44f6: $38 $54

	ld c, c                                          ; $44f8: $49
	dec sp                                           ; $44f9: $3b
	ccf                                              ; $44fa: $3f
	inc [hl]                                         ; $44fb: $34
	ld l, e                                          ; $44fc: $6b
	ld [hl], $25                                     ; $44fd: $36 $25
	add hl, bc                                       ; $44ff: $09
	cpl                                              ; $4500: $2f
	ld l, a                                          ; $4501: $6f
	ld c, h                                          ; $4502: $4c
	inc [hl]                                         ; $4503: $34
	add hl, bc                                       ; $4504: $09
	cpl                                              ; $4505: $2f
	ld l, d                                          ; $4506: $6a
	ld d, d                                          ; $4507: $52
	ld c, d                                          ; $4508: $4a
	ldh a, [$ab]                                     ; $4509: $f0 $ab
	ld b, d                                          ; $450b: $42
	adc h                                            ; $450c: $8c
	ld c, c                                          ; $450d: $49
	add hl, bc                                       ; $450e: $09
	cpl                                              ; $450f: $2f
	ldh a, [$9a]                                     ; $4510: $f0 $9a
	ld e, h                                          ; $4512: $5c
	ldh a, [rTMA]                                    ; $4513: $f0 $06
	dec sp                                           ; $4515: $3b
	dec a                                            ; $4516: $3d
	ld d, h                                          ; $4517: $54
	ld c, c                                          ; $4518: $49
	ld d, e                                          ; $4519: $53
	ld a, [hl-]                                      ; $451a: $3a
	jr c, jr_099_455f                                ; $451b: $38 $42

	ld c, b                                          ; $451d: $48
	and b                                            ; $451e: $a0
	cpl                                              ; $451f: $2f
	ld c, d                                          ; $4520: $4a
	ld c, a                                          ; $4521: $4f
	inc [hl]                                         ; $4522: $34
	add hl, bc                                       ; $4523: $09

jr_099_4524:
	cpl                                              ; $4524: $2f
	db $ed                                           ; $4525: $ed
	ld [hl], h                                       ; $4526: $74
	ld d, e                                          ; $4527: $53
	ld a, [hl-]                                      ; $4528: $3a
	inc a                                            ; $4529: $3c
	dec sp                                           ; $452a: $3b
	dec a                                            ; $452b: $3d
	pop af                                           ; $452c: $f1
	dec bc                                           ; $452d: $0b
	db $ec                                           ; $452e: $ec
	ret c                                            ; $452f: $d8

	ld b, d                                          ; $4530: $42
	ld b, l                                          ; $4531: $45
	and b                                            ; $4532: $a0

jr_099_4533:
	cpl                                              ; $4533: $2f
	ld l, a                                          ; $4534: $6f
	db $ed                                           ; $4535: $ed
	ld b, e                                          ; $4536: $43
	inc [hl]                                         ; $4537: $34
	add hl, bc                                       ; $4538: $09
	cpl                                              ; $4539: $2f
	ldh a, [$ab]                                     ; $453a: $f0 $ab
	ld b, d                                          ; $453c: $42

jr_099_453d:
	adc h                                            ; $453d: $8c
	ld c, c                                          ; $453e: $49
	ldh a, [$9a]                                     ; $453f: $f0 $9a
	ld e, h                                          ; $4541: $5c
	ldh a, [rTMA]                                    ; $4542: $f0 $06
	dec sp                                           ; $4544: $3b
	ccf                                              ; $4545: $3f
	ld l, h                                          ; $4546: $6c
	dec a                                            ; $4547: $3d
	inc a                                            ; $4548: $3c
	dec sp                                           ; $4549: $3b
	dec a                                            ; $454a: $3d
	ld a, $09                                        ; $454b: $3e $09
	cpl                                              ; $454d: $2f
	ldh a, [rSC]                                     ; $454e: $f0 $02
	ldh a, [rBCPD]                                   ; $4550: $f0 $69
	ld [hl], l                                       ; $4552: $75
	ldh a, [rDIV]                                    ; $4553: $f0 $04
	ld e, c                                          ; $4555: $59
	db $ed                                           ; $4556: $ed
	ld b, e                                          ; $4557: $43
	add hl, bc                                       ; $4558: $09
	cpl                                              ; $4559: $2f
	ld l, e                                          ; $455a: $6b
	ldh a, [rOCPS]                                   ; $455b: $f0 $6a
	ld c, a                                          ; $455d: $4f
	pop af                                           ; $455e: $f1

jr_099_455f:
	and c                                            ; $455f: $a1
	dec sp                                           ; $4560: $3b
	dec a                                            ; $4561: $3d
	ld d, h                                          ; $4562: $54
	ld c, c                                          ; $4563: $49
	ld c, a                                          ; $4564: $4f
	ld b, [hl]                                       ; $4565: $46
	ld c, [hl]                                       ; $4566: $4e
	ld h, e                                          ; $4567: $63
	and b                                            ; $4568: $a0
	cpl                                              ; $4569: $2f
	db $eb                                           ; $456a: $eb
	db $f4                                           ; $456b: $f4
	add hl, bc                                       ; $456c: $09
	cpl                                              ; $456d: $2f
	ldh a, [$9a]                                     ; $456e: $f0 $9a
	ld e, h                                          ; $4570: $5c
	ldh a, [rTMA]                                    ; $4571: $f0 $06
	add hl, sp                                       ; $4573: $39
	ld a, a                                          ; $4574: $7f
	ld b, a                                          ; $4575: $47
	ld a, [hl-]                                      ; $4576: $3a
	ld c, l                                          ; $4577: $4d
	ld a, [hl-]                                      ; $4578: $3a
	inc a                                            ; $4579: $3c
	dec sp                                           ; $457a: $3b
	dec a                                            ; $457b: $3d
	ld b, d                                          ; $457c: $42
	and b                                            ; $457d: $a0
	cpl                                              ; $457e: $2f
	ld h, $43                                        ; $457f: $26 $43
	ld e, d                                          ; $4581: $5a
	inc [hl]                                         ; $4582: $34
	db $ec                                           ; $4583: $ec
	db $d3                                           ; $4584: $d3
	ld [hl], $25                                     ; $4585: $36 $25
	add hl, bc                                       ; $4587: $09
	cpl                                              ; $4588: $2f
	ld b, [hl]                                       ; $4589: $46
	ld a, [hl-]                                      ; $458a: $3a
	dec a                                            ; $458b: $3d
	ld d, e                                          ; $458c: $53
	ld c, b                                          ; $458d: $48
	inc [hl]                                         ; $458e: $34
	add hl, bc                                       ; $458f: $09
	cpl                                              ; $4590: $2f
	ld b, [hl]                                       ; $4591: $46
	ld a, [hl-]                                      ; $4592: $3a
	dec a                                            ; $4593: $3d
	ld d, e                                          ; $4594: $53
	ld b, b                                          ; $4595: $40
	ld a, e                                          ; $4596: $7b
	ld b, a                                          ; $4597: $47

jr_099_4598:
	jr c, jr_099_45d9                                ; $4598: $38 $3f

	ld d, l                                          ; $459a: $55
	ld c, l                                          ; $459b: $4d
	dec a                                            ; $459c: $3d
	inc a                                            ; $459d: $3c
	ld d, b                                          ; $459e: $50
	ld c, b                                          ; $459f: $48
	and b                                            ; $45a0: $a0
	cpl                                              ; $45a1: $2f
	ld l, d                                          ; $45a2: $6a
	ld d, d                                          ; $45a3: $52
	ld c, d                                          ; $45a4: $4a
	inc [hl]                                         ; $45a5: $34
	ld b, [hl]                                       ; $45a6: $46
	ld a, [hl-]                                      ; $45a7: $3a
	dec a                                            ; $45a8: $3d
	ld b, d                                          ; $45a9: $42
	sbc d                                            ; $45aa: $9a
	ld h, d                                          ; $45ab: $62
	inc [hl]                                         ; $45ac: $34
	add hl, bc                                       ; $45ad: $09
	cpl                                              ; $45ae: $2f
	dec a                                            ; $45af: $3d
	ld b, h                                          ; $45b0: $44
	ld b, d                                          ; $45b1: $42
	ldh a, [c]                                       ; $45b2: $f2
	jp z, $fbf2                                      ; $45b3: $ca $f2 $fb

	db $f4                                           ; $45b6: $f4
	ld d, d                                          ; $45b7: $52
	ld l, h                                          ; $45b8: $6c
	ld b, h                                          ; $45b9: $44
	ld c, c                                          ; $45ba: $49
	add hl, bc                                       ; $45bb: $09
	cpl                                              ; $45bc: $2f
	ld [hl], a                                       ; $45bd: $77
	dec sp                                           ; $45be: $3b
	ccf                                              ; $45bf: $3f
	dec a                                            ; $45c0: $3d
	ld c, b                                          ; $45c1: $48
	and b                                            ; $45c2: $a0
	cpl                                              ; $45c3: $2f
	add hl, sp                                       ; $45c4: $39
	xor $1f                                          ; $45c5: $ee $1f
	inc [hl]                                         ; $45c7: $34
	ld e, h                                          ; $45c8: $5c
	dec sp                                           ; $45c9: $3b
	ld c, c                                          ; $45ca: $49
	add hl, bc                                       ; $45cb: $09
	cpl                                              ; $45cc: $2f
	ld b, [hl]                                       ; $45cd: $46
	ld a, [hl-]                                      ; $45ce: $3a
	dec a                                            ; $45cf: $3d
	ld b, a                                          ; $45d0: $47
	ld l, a                                          ; $45d1: $6f
	ld b, d                                          ; $45d2: $42
	adc b                                            ; $45d3: $88
	ldh a, [rVBK]                                    ; $45d4: $f0 $4f
	ld d, e                                          ; $45d6: $53
	add hl, bc                                       ; $45d7: $09
	cpl                                              ; $45d8: $2f

jr_099_45d9:
	di                                               ; $45d9: $f3
	ld c, l                                          ; $45da: $4d
	ld d, b                                          ; $45db: $50
	ld c, l                                          ; $45dc: $4d
	ld c, [hl]                                       ; $45dd: $4e
	ld b, d                                          ; $45de: $42
	ld d, e                                          ; $45df: $53
	ldh a, [$71]                                     ; $45e0: $f0 $71
	ld d, l                                          ; $45e2: $55
	ccf                                              ; $45e3: $3f
	inc [hl]                                         ; $45e4: $34
	add hl, bc                                       ; $45e5: $09
	cpl                                              ; $45e6: $2f
	ld b, b                                          ; $45e7: $40
	add hl, sp                                       ; $45e8: $39
	ld [hl], a                                       ; $45e9: $77
	jr c, jr_099_4640                                ; $45ea: $38 $54

	ld b, c                                          ; $45ec: $41
	ld c, d                                          ; $45ed: $4a
	jr c, jr_099_462d                                ; $45ee: $38 $3d

	ld b, d                                          ; $45f0: $42
	inc a                                            ; $45f1: $3c
	ld c, a                                          ; $45f2: $4f
	ld a, $4d                                        ; $45f3: $3e $4d
	ld a, [hl-]                                      ; $45f5: $3a
	jr c, jr_099_4598                                ; $45f6: $38 $a0

	cpl                                              ; $45f8: $2f
	ld c, d                                          ; $45f9: $4a
	ld c, a                                          ; $45fa: $4f
	inc [hl]                                         ; $45fb: $34
	db $ed                                           ; $45fc: $ed
	ld a, c                                          ; $45fd: $79
	ld d, c                                          ; $45fe: $51
	ld c, [hl]                                       ; $45ff: $4e
	ld l, d                                          ; $4600: $6a
	ld c, b                                          ; $4601: $48
	inc [hl]                                         ; $4602: $34
	add hl, bc                                       ; $4603: $09
	cpl                                              ; $4604: $2f
	ldh a, [c]                                       ; $4605: $f2
	ld a, a                                          ; $4606: $7f
	ld c, l                                          ; $4607: $4d
	ldh a, [c]                                       ; $4608: $f2
	ld a, a                                          ; $4609: $7f
	ld c, l                                          ; $460a: $4d
	ld b, a                                          ; $460b: $47
	ld a, [hl-]                                      ; $460c: $3a
	ld c, [hl]                                       ; $460d: $4e
	inc a                                            ; $460e: $3c
	ld c, a                                          ; $460f: $4f
	ld a, $4d                                        ; $4610: $3e $4d
	ld a, [hl-]                                      ; $4612: $3a
	jr c, jr_099_461e                                ; $4613: $38 $09

	cpl                                              ; $4615: $2f
	ld l, d                                          ; $4616: $6a
	ld b, a                                          ; $4617: $47
	ld a, [hl-]                                      ; $4618: $3a
	dec sp                                           ; $4619: $3b
	ccf                                              ; $461a: $3f
	db $ec                                           ; $461b: $ec
	ld hl, sp+$34                                    ; $461c: $f8 $34

jr_099_461e:
	add hl, bc                                       ; $461e: $09
	cpl                                              ; $461f: $2f
	ld d, h                                          ; $4620: $54
	ld b, d                                          ; $4621: $42
	db $ed                                           ; $4622: $ed
	ld l, a                                          ; $4623: $6f
	ld h, c                                          ; $4624: $61
	ld b, a                                          ; $4625: $47
	ld a, a                                          ; $4626: $7f
	ldh a, [$9a]                                     ; $4627: $f0 $9a
	jr c, jr_099_4668                                ; $4629: $38 $3d

	ld b, d                                          ; $462b: $42
	ld c, b                                          ; $462c: $48

jr_099_462d:
	and b                                            ; $462d: $a0
	cpl                                              ; $462e: $2f
	db $eb                                           ; $462f: $eb
	ld l, d                                          ; $4630: $6a
	ccf                                              ; $4631: $3f
	inc [hl]                                         ; $4632: $34
	add hl, bc                                       ; $4633: $09
	cpl                                              ; $4634: $2f
	ldh a, [$e1]                                     ; $4635: $f0 $e1
	ldh a, [rSB]                                     ; $4637: $f0 $01
	dec a                                            ; $4639: $3d
	jr c, jr_099_46bb                                ; $463a: $38 $7f

	ldh a, [rTAC]                                    ; $463c: $f0 $07
	ld b, h                                          ; $463e: $44
	ld e, l                                          ; $463f: $5d

jr_099_4640:
	ld e, d                                          ; $4640: $5a
	add hl, bc                                       ; $4641: $09
	cpl                                              ; $4642: $2f
	ld c, a                                          ; $4643: $4f
	add hl, sp                                       ; $4644: $39
	inc [hl]                                         ; $4645: $34
	dec a                                            ; $4646: $3d
	ld b, h                                          ; $4647: $44
	ld b, d                                          ; $4648: $42
	ldh a, [c]                                       ; $4649: $f2
	jp z, $fbf2                                      ; $464a: $ca $f2 $fb

	db $f4                                           ; $464d: $f4
	ld d, d                                          ; $464e: $52
	ld l, h                                          ; $464f: $6c
	ld e, e                                          ; $4650: $5b
	ld d, [hl]                                       ; $4651: $56
	ldh a, [$64]                                     ; $4652: $f0 $64
	ld c, b                                          ; $4654: $48
	and b                                            ; $4655: $a0
	cpl                                              ; $4656: $2f
	xor $08                                          ; $4657: $ee $08
	ld b, d                                          ; $4659: $42
	pop hl                                           ; $465a: $e1
	ld c, c                                          ; $465b: $49
	ld a, $3f                                        ; $465c: $3e $3f
	inc [hl]                                         ; $465e: $34
	add hl, bc                                       ; $465f: $09
	cpl                                              ; $4660: $2f
	ld l, a                                          ; $4661: $6f
	ld b, h                                          ; $4662: $44
	ld e, l                                          ; $4663: $5d
	ld h, d                                          ; $4664: $62
	ld [hl], d                                       ; $4665: $72
	add b                                            ; $4666: $80
	ld [hl], c                                       ; $4667: $71

jr_099_4668:
	ccf                                              ; $4668: $3f
	ldh a, [$08]                                     ; $4669: $f0 $08
	ld a, $38                                        ; $466b: $3e $38
	inc a                                            ; $466d: $3c
	ld d, b                                          ; $466e: $50
	inc [hl]                                         ; $466f: $34
	add hl, bc                                       ; $4670: $09
	cpl                                              ; $4671: $2f
	ldh a, [c]                                       ; $4672: $f2
	sub h                                            ; $4673: $94
	ld a, a                                          ; $4674: $7f
	ld h, d                                          ; $4675: $62
	sub h                                            ; $4676: $94
	ld a, $3f                                        ; $4677: $3e $3f
	add d                                            ; $4679: $82
	jr c, jr_099_46ce                                ; $467a: $38 $52

	ld d, c                                          ; $467c: $51
	and b                                            ; $467d: $a0
	cpl                                              ; $467e: $2f
	adc e                                            ; $467f: $8b
	ld e, h                                          ; $4680: $5c
	ld c, d                                          ; $4681: $4a
	ld d, c                                          ; $4682: $51
	ld c, b                                          ; $4683: $48
	and b                                            ; $4684: $a0
	cpl                                              ; $4685: $2f
	ldh a, [$f6]                                     ; $4686: $f0 $f6
	pop af                                           ; $4688: $f1
	inc [hl]                                         ; $4689: $34
	ldh a, [rAUD2HIGH]                               ; $468a: $f0 $19
	ld b, d                                          ; $468c: $42
	ldh a, [$98]                                     ; $468d: $f0 $98
	ld b, l                                          ; $468f: $45
	ld d, a                                          ; $4690: $57
	ld c, a                                          ; $4691: $4f
	ld b, [hl]                                       ; $4692: $46
	ld a, [hl-]                                      ; $4693: $3a
	dec a                                            ; $4694: $3d
	ld d, e                                          ; $4695: $53
	inc [hl]                                         ; $4696: $34
	add hl, bc                                       ; $4697: $09
	cpl                                              ; $4698: $2f
	ld h, $43                                        ; $4699: $26 $43
	ldh a, [$31]                                     ; $469b: $f0 $31
	ld h, d                                          ; $469d: $62
	add d                                            ; $469e: $82
	add hl, sp                                       ; $469f: $39
	ld c, c                                          ; $46a0: $49
	ld c, b                                          ; $46a1: $48
	and b                                            ; $46a2: $a0
	cpl                                              ; $46a3: $2f
	halt                                             ; $46a4: $76
	ld c, a                                          ; $46a5: $4f
	db $ed                                           ; $46a6: $ed
	xor c                                            ; $46a7: $a9
	ld b, d                                          ; $46a8: $42
	sbc d                                            ; $46a9: $9a
	ld d, e                                          ; $46aa: $53
	ld c, b                                          ; $46ab: $48
	dec [hl]                                         ; $46ac: $35
	dec h                                            ; $46ad: $25
	add hl, bc                                       ; $46ae: $09
	cpl                                              ; $46af: $2f
	ld b, [hl]                                       ; $46b0: $46
	inc [hl]                                         ; $46b1: $34
	ld b, [hl]                                       ; $46b2: $46
	ld c, l                                          ; $46b3: $4d
	ld c, b                                          ; $46b4: $48
	and c                                            ; $46b5: $a1
	cpl                                              ; $46b6: $2f
	ldh a, [$29]                                     ; $46b7: $f0 $29
	ld a, $38                                        ; $46b9: $3e $38

jr_099_46bb:
	ld c, e                                          ; $46bb: $4b
	sbc h                                            ; $46bc: $9c
	ld a, [hl-]                                      ; $46bd: $3a
	ld b, d                                          ; $46be: $42
	ld b, a                                          ; $46bf: $47
	inc [hl]                                         ; $46c0: $34
	add hl, bc                                       ; $46c1: $09
	cpl                                              ; $46c2: $2f
	di                                               ; $46c3: $f3
	ld [hl], c                                       ; $46c4: $71
	ld d, e                                          ; $46c5: $53
	sub h                                            ; $46c6: $94
	ccf                                              ; $46c7: $3f
	ld e, h                                          ; $46c8: $5c
	ld h, c                                          ; $46c9: $61
	ld d, [hl]                                       ; $46ca: $56
	dec sp                                           ; $46cb: $3b
	dec a                                            ; $46cc: $3d
	and b                                            ; $46cd: $a0

jr_099_46ce:
	cpl                                              ; $46ce: $2f
	sbc $34                                          ; $46cf: $de $34
	sbc $34                                          ; $46d1: $de $34
	add hl, bc                                       ; $46d3: $09
	cpl                                              ; $46d4: $2f
	ldh a, [$9f]                                     ; $46d5: $f0 $9f
	ld e, e                                          ; $46d7: $5b
	ccf                                              ; $46d8: $3f
	jr c, jr_099_4713                                ; $46d9: $38 $38

	ld b, d                                          ; $46db: $42
	ld c, h                                          ; $46dc: $4c
	and c                                            ; $46dd: $a1
	cpl                                              ; $46de: $2f
	ld h, $43                                        ; $46df: $26 $43
	db $ec                                           ; $46e1: $ec
	dec l                                            ; $46e2: $2d
	ld b, h                                          ; $46e3: $44
	ld b, l                                          ; $46e4: $45
	and b                                            ; $46e5: $a0
	cpl                                              ; $46e6: $2f
	adc e                                            ; $46e7: $8b
	ld e, h                                          ; $46e8: $5c
	ld b, h                                          ; $46e9: $44
	ld b, l                                          ; $46ea: $45
	inc [hl]                                         ; $46eb: $34
	db $ed                                           ; $46ec: $ed
	xor c                                            ; $46ed: $a9
	dec [hl]                                         ; $46ee: $35
	dec h                                            ; $46ef: $25
	add hl, bc                                       ; $46f0: $09
	cpl                                              ; $46f1: $2f
	ldh a, [$29]                                     ; $46f2: $f0 $29
	ld a, $38                                        ; $46f4: $3e $38
	ld c, b                                          ; $46f6: $48
	and b                                            ; $46f7: $a0
	cpl                                              ; $46f8: $2f
	jr c, @-$7e                                      ; $46f9: $38 $80

	ld d, d                                          ; $46fb: $52
	ld c, d                                          ; $46fc: $4a
	ld c, a                                          ; $46fd: $4f
	ld l, a                                          ; $46fe: $6f
	ld b, d                                          ; $46ff: $42
	sbc d                                            ; $4700: $9a
	ld h, d                                          ; $4701: $62
	inc [hl]                                         ; $4702: $34
	add hl, bc                                       ; $4703: $09
	cpl                                              ; $4704: $2f
	ldh a, [c]                                       ; $4705: $f2
	ld a, a                                          ; $4706: $7f
	ld e, b                                          ; $4707: $58
	ld a, [hl-]                                      ; $4708: $3a
	jr c, jr_099_4755                                ; $4709: $38 $4a

	ld c, h                                          ; $470b: $4c
	ld c, b                                          ; $470c: $48
	and b                                            ; $470d: $a0
	add hl, bc                                       ; $470e: $09
	cpl                                              ; $470f: $2f
	ld h, $43                                        ; $4710: $26 $43
	ld b, [hl]                                       ; $4712: $46

jr_099_4713:
	dec sp                                           ; $4713: $3b
	inc [hl]                                         ; $4714: $34
	ldh a, [rRP]                                     ; $4715: $f0 $56
	ld c, e                                          ; $4717: $4b
	ld c, b                                          ; $4718: $48
	dec [hl]                                         ; $4719: $35
	dec h                                            ; $471a: $25
	add hl, bc                                       ; $471b: $09
	cpl                                              ; $471c: $2f
	ld l, d                                          ; $471d: $6a
	ld d, d                                          ; $471e: $52
	ld c, d                                          ; $471f: $4a
	inc [hl]                                         ; $4720: $34
	db $eb                                           ; $4721: $eb
	ccf                                              ; $4722: $3f
	and b                                            ; $4723: $a0
	cpl                                              ; $4724: $2f
	ld l, a                                          ; $4725: $6f
	inc [hl]                                         ; $4726: $34
	db $ec                                           ; $4727: $ec
	sbc $3b                                          ; $4728: $de $3b
	ccf                                              ; $472a: $3f
	add d                                            ; $472b: $82
	jr c, jr_099_4780                                ; $472c: $38 $52

	ld d, c                                          ; $472e: $51
	and b                                            ; $472f: $a0
	cpl                                              ; $4730: $2f
	ld d, h                                          ; $4731: $54
	ld b, c                                          ; $4732: $41
	ld a, [hl-]                                      ; $4733: $3a
	ldh a, [$28]                                     ; $4734: $f0 $28
	ld b, a                                          ; $4736: $47

jr_099_4737:
	pop af                                           ; $4737: $f1
	ld bc, $4df0                                     ; $4738: $01 $f0 $4d
	sub h                                            ; $473b: $94
	ld a, $3d                                        ; $473c: $3e $3d
	ld b, d                                          ; $473e: $42
	ld c, e                                          ; $473f: $4b
	inc [hl]                                         ; $4740: $34
	add hl, bc                                       ; $4741: $09
	cpl                                              ; $4742: $2f
	ld b, [hl]                                       ; $4743: $46
	ld a, [hl-]                                      ; $4744: $3a
	dec a                                            ; $4745: $3d
	ld b, a                                          ; $4746: $47
	db $eb                                           ; $4747: $eb
	db $f4                                           ; $4748: $f4
	add hl, bc                                       ; $4749: $09
	cpl                                              ; $474a: $2f
	add d                                            ; $474b: $82
	jr c, jr_099_478b                                ; $474c: $38 $3d

	jr c, jr_099_47a4                                ; $474e: $38 $54

	ld c, c                                          ; $4750: $49
	ld d, e                                          ; $4751: $53
	ld b, [hl]                                       ; $4752: $46
	dec sp                                           ; $4753: $3b
	dec a                                            ; $4754: $3d

jr_099_4755:
	inc a                                            ; $4755: $3c
	ld d, b                                          ; $4756: $50
	ld c, b                                          ; $4757: $48
	and b                                            ; $4758: $a0
	cpl                                              ; $4759: $2f
	ld h, $43                                        ; $475a: $26 $43
	add d                                            ; $475c: $82
	jr c, jr_099_479c                                ; $475d: $38 $3d

	jr c, jr_099_47b5                                ; $475f: $38 $54

	ld c, c                                          ; $4761: $49
	dec sp                                           ; $4762: $3b
	ccf                                              ; $4763: $3f
	inc [hl]                                         ; $4764: $34
	ld l, e                                          ; $4765: $6b
	ld [hl], $25                                     ; $4766: $36 $25
	add hl, bc                                       ; $4768: $09
	cpl                                              ; $4769: $2f
	ld l, a                                          ; $476a: $6f
	inc [hl]                                         ; $476b: $34
	ld l, d                                          ; $476c: $6a
	ld d, d                                          ; $476d: $52
	ld c, d                                          ; $476e: $4a
	ld b, [hl]                                       ; $476f: $46
	ld a, [hl-]                                      ; $4770: $3a
	dec a                                            ; $4771: $3d
	ld b, a                                          ; $4772: $47
	add hl, bc                                       ; $4773: $09
	cpl                                              ; $4774: $2f
	ldh a, [$fe]                                     ; $4775: $f0 $fe
	add b                                            ; $4777: $80
	inc a                                            ; $4778: $3c
	dec sp                                           ; $4779: $3b
	ccf                                              ; $477a: $3f
	jr c, jr_099_47ba                                ; $477b: $38 $3d

	ld b, d                                          ; $477d: $42
	ld c, e                                          ; $477e: $4b
	inc [hl]                                         ; $477f: $34

jr_099_4780:
	add hl, bc                                       ; $4780: $09
	cpl                                              ; $4781: $2f
	ldh a, [c]                                       ; $4782: $f2
	and [hl]                                         ; $4783: $a6
	ldh a, [$59]                                     ; $4784: $f0 $59
	db $ec                                           ; $4786: $ec
	ret c                                            ; $4787: $d8

	ld b, d                                          ; $4788: $42
	and b                                            ; $4789: $a0
	cpl                                              ; $478a: $2f

jr_099_478b:
	ld h, $43                                        ; $478b: $26 $43
	ld b, b                                          ; $478d: $40
	ld b, c                                          ; $478e: $41
	ld a, [hl-]                                      ; $478f: $3a
	ld b, d                                          ; $4790: $42
	inc [hl]                                         ; $4791: $34
	ldh a, [$98]                                     ; $4792: $f0 $98
	db $ed                                           ; $4794: $ed
	ld b, e                                          ; $4795: $43
	ld h, e                                          ; $4796: $63
	inc a                                            ; $4797: $3c
	ld c, [hl]                                       ; $4798: $4e
	ld b, l                                          ; $4799: $45
	dec [hl]                                         ; $479a: $35
	dec h                                            ; $479b: $25

jr_099_479c:
	add hl, bc                                       ; $479c: $09
	cpl                                              ; $479d: $2f
	rst JumpTable                                          ; $479e: $c7
	ld c, b                                          ; $479f: $48
	and c                                            ; $47a0: $a1
	cpl                                              ; $47a1: $2f
	ld l, a                                          ; $47a2: $6f
	inc [hl]                                         ; $47a3: $34

jr_099_47a4:
	ld b, [hl]                                       ; $47a4: $46
	ld a, [hl-]                                      ; $47a5: $3a
	dec a                                            ; $47a6: $3d
	ld b, a                                          ; $47a7: $47
	ld l, l                                          ; $47a8: $6d
	ldh a, [rAUD3LEVEL]                              ; $47a9: $f0 $1c
	pop af                                           ; $47ab: $f1
	halt                                             ; $47ac: $76
	ld c, l                                          ; $47ad: $4d
	ld a, $61                                        ; $47ae: $3e $61
	ld d, [hl]                                       ; $47b0: $56
	dec sp                                           ; $47b1: $3b
	ccf                                              ; $47b2: $3f
	add hl, bc                                       ; $47b3: $09
	cpl                                              ; $47b4: $2f

jr_099_47b5:
	jr c, jr_099_4737                                ; $47b5: $38 $80

	ld c, d                                          ; $47b7: $4a
	ld c, a                                          ; $47b8: $4f
	inc [hl]                                         ; $47b9: $34

jr_099_47ba:
	ld b, [hl]                                       ; $47ba: $46
	ld a, [hl-]                                      ; $47bb: $3a
	dec a                                            ; $47bc: $3d
	ld b, d                                          ; $47bd: $42
	sbc d                                            ; $47be: $9a
	ld [hl], d                                       ; $47bf: $72
	ccf                                              ; $47c0: $3f
	dec a                                            ; $47c1: $3d
	ld b, d                                          ; $47c2: $42
	and b                                            ; $47c3: $a0
	cpl                                              ; $47c4: $2f
	ld b, b                                          ; $47c5: $40
	ld c, l                                          ; $47c6: $4d
	ld c, d                                          ; $47c7: $4a
	inc [hl]                                         ; $47c8: $34
	ld a, c                                          ; $47c9: $79
	ld [hl], c                                       ; $47ca: $71
	ccf                                              ; $47cb: $3f
	ldh a, [$d2]                                     ; $47cc: $f0 $d2

jr_099_47ce:
	ld b, h                                          ; $47ce: $44
	ld e, l                                          ; $47cf: $5d
	ld c, d                                          ; $47d0: $4a
	ld c, a                                          ; $47d1: $4f
	add hl, bc                                       ; $47d2: $09
	cpl                                              ; $47d3: $2f
	ldh a, [$f4]                                     ; $47d4: $f0 $f4
	ld e, [hl]                                       ; $47d6: $5e
	ccf                                              ; $47d7: $3f
	ld c, a                                          ; $47d8: $4f
	ld d, b                                          ; $47d9: $50
	jr c, jr_099_4819                                ; $47da: $38 $3d

	ld d, l                                          ; $47dc: $55
	ccf                                              ; $47dd: $3f
	inc [hl]                                         ; $47de: $34
	add hl, bc                                       ; $47df: $09
	cpl                                              ; $47e0: $2f
	ld b, [hl]                                       ; $47e1: $46
	ld b, c                                          ; $47e2: $41
	ld a, [hl-]                                      ; $47e3: $3a
	sbc d                                            ; $47e4: $9a
	ld h, d                                          ; $47e5: $62
	ld c, b                                          ; $47e6: $48
	and b                                            ; $47e7: $a0
	cpl                                              ; $47e8: $2f
	db $eb                                           ; $47e9: $eb
	ccf                                              ; $47ea: $3f
	and b                                            ; $47eb: $a0
	cpl                                              ; $47ec: $2f
	ld h, $43                                        ; $47ed: $26 $43
	ld b, b                                          ; $47ef: $40
	add hl, sp                                       ; $47f0: $39
	ld b, h                                          ; $47f1: $44
	dec sp                                           ; $47f2: $3b
	dec a                                            ; $47f3: $3d
	ld b, d                                          ; $47f4: $42
	inc a                                            ; $47f5: $3c
	ld c, b                                          ; $47f6: $48
	dec [hl]                                         ; $47f7: $35
	dec h                                            ; $47f8: $25
	add hl, bc                                       ; $47f9: $09
	cpl                                              ; $47fa: $2f
	ld b, [hl]                                       ; $47fb: $46
	ld b, c                                          ; $47fc: $41
	ld a, [hl-]                                      ; $47fd: $3a
	sbc d                                            ; $47fe: $9a
	ld a, $3f                                        ; $47ff: $3e $3f
	ld h, h                                          ; $4801: $64
	jr c, jr_099_4843                                ; $4802: $38 $3f

	inc [hl]                                         ; $4804: $34
	add hl, bc                                       ; $4805: $09
	cpl                                              ; $4806: $2f
	ld l, e                                          ; $4807: $6b
	ld c, d                                          ; $4808: $4a
	ld d, c                                          ; $4809: $51
	ld e, l                                          ; $480a: $5d
	ld e, d                                          ; $480b: $5a
	ld c, b                                          ; $480c: $48
	and b                                            ; $480d: $a0
	cpl                                              ; $480e: $2f
	db $ec                                           ; $480f: $ec
	reti                                             ; $4810: $d9


	inc [hl]                                         ; $4811: $34
	ld l, l                                          ; $4812: $6d
	ldh a, [rAUD3LEVEL]                              ; $4813: $f0 $1c
	pop af                                           ; $4815: $f1
	halt                                             ; $4816: $76
	ld c, l                                          ; $4817: $4d
	ld h, d                                          ; $4818: $62

jr_099_4819:
	ldh a, [$9f]                                     ; $4819: $f0 $9f
	ld e, e                                          ; $481b: $5b
	ld d, d                                          ; $481c: $52
	ld d, c                                          ; $481d: $51
	and b                                            ; $481e: $a0
	cpl                                              ; $481f: $2f
	ld l, a                                          ; $4820: $6f
	ld c, c                                          ; $4821: $49
	ldh a, [$9a]                                     ; $4822: $f0 $9a
	ld e, h                                          ; $4824: $5c
	ldh a, [rTMA]                                    ; $4825: $f0 $06
	dec sp                                           ; $4827: $3b
	ccf                                              ; $4828: $3f
	ld d, l                                          ; $4829: $55
	ld b, h                                          ; $482a: $44
	ld e, b                                          ; $482b: $58
	jr c, jr_099_47ce                                ; $482c: $38 $a0

	cpl                                              ; $482e: $2f
	ld h, $43                                        ; $482f: $26 $43
	ldh a, [$31]                                     ; $4831: $f0 $31
	ld c, e                                          ; $4833: $4b
	halt                                             ; $4834: $76
	ld c, a                                          ; $4835: $4f
	xor $28                                          ; $4836: $ee $28
	ld e, b                                          ; $4838: $58
	ld b, c                                          ; $4839: $41
	ld d, e                                          ; $483a: $53
	inc [hl]                                         ; $483b: $34
	add hl, bc                                       ; $483c: $09
	cpl                                              ; $483d: $2f
	ld a, a                                          ; $483e: $7f
	ld b, a                                          ; $483f: $47
	ld a, [hl-]                                      ; $4840: $3a
	dec sp                                           ; $4841: $3b
	db $ec                                           ; $4842: $ec

jr_099_4843:
	add hl, de                                       ; $4843: $19
	dec [hl]                                         ; $4844: $35
	dec h                                            ; $4845: $25
	add hl, bc                                       ; $4846: $09
	cpl                                              ; $4847: $2f
	ld b, b                                          ; $4848: $40
	ld c, l                                          ; $4849: $4d
	ld e, e                                          ; $484a: $5b
	ld d, [hl]                                       ; $484b: $56
	inc [hl]                                         ; $484c: $34
	db $ed                                           ; $484d: $ed
	ld l, l                                          ; $484e: $6d
	ld a, [hl-]                                      ; $484f: $3a
	ld b, d                                          ; $4850: $42
	ld c, h                                          ; $4851: $4c
	and b                                            ; $4852: $a0
	cpl                                              ; $4853: $2f
	ldh a, [$29]                                     ; $4854: $f0 $29
	ld a, $38                                        ; $4856: $3e $38
	ld h, e                                          ; $4858: $63
	and b                                            ; $4859: $a0
	cpl                                              ; $485a: $2f
	ld h, h                                          ; $485b: $64
	pop af                                           ; $485c: $f1
	ld d, a                                          ; $485d: $57
	jr c, jr_099_48a2                                ; $485e: $38 $42

	sbc d                                            ; $4860: $9a
	ld c, e                                          ; $4861: $4b
	inc [hl]                                         ; $4862: $34
	ld d, h                                          ; $4863: $54
	ld c, l                                          ; $4864: $4d
	inc a                                            ; $4865: $3c
	ld d, b                                          ; $4866: $50
	add hl, bc                                       ; $4867: $09
	cpl                                              ; $4868: $2f
	ldh a, [$2d]                                     ; $4869: $f0 $2d
	dec sp                                           ; $486b: $3b
	ccf                                              ; $486c: $3f
	jr c, jr_099_48cb                                ; $486d: $38 $5c

	ld d, d                                          ; $486f: $52
	ld a, $66                                        ; $4870: $3e $66
	add hl, sp                                       ; $4872: $39
	and b                                            ; $4873: $a0
	cpl                                              ; $4874: $2f
	ld h, $43                                        ; $4875: $26 $43
	ld b, b                                          ; $4877: $40
	add hl, sp                                       ; $4878: $39
	ld b, h                                          ; $4879: $44
	ld c, h                                          ; $487a: $4c
	dec [hl]                                         ; $487b: $35
	dec h                                            ; $487c: $25
	add hl, bc                                       ; $487d: $09
	add hl, bc                                       ; $487e: $09
	cpl                                              ; $487f: $2f
	ld h, $43                                        ; $4880: $26 $43
	ld e, [hl]                                       ; $4882: $5e
	dec sp                                           ; $4883: $3b
	ld [hl], $f0                                     ; $4884: $36 $f0
	ld d, [hl]                                       ; $4886: $56
	ld b, h                                          ; $4887: $44
	ld c, l                                          ; $4888: $4d
	ld [hl], $25                                     ; $4889: $36 $25
	add hl, bc                                       ; $488b: $09
	cpl                                              ; $488c: $2f
	ld hl, $ebeb                                     ; $488d: $21 $eb $eb
	and b                                            ; $4890: $a0
	cpl                                              ; $4891: $2f
	ld h, $43                                        ; $4892: $26 $43
	ld e, d                                          ; $4894: $5a
	ld d, h                                          ; $4895: $54
	inc a                                            ; $4896: $3c
	ld c, d                                          ; $4897: $4a
	ld [hl], d                                       ; $4898: $72
	dec a                                            ; $4899: $3d
	ld b, l                                          ; $489a: $45
	add hl, sp                                       ; $489b: $39
	ld a, [hl-]                                      ; $489c: $3a
	ld [hl], $25                                     ; $489d: $36 $25
	add hl, bc                                       ; $489f: $09
	cpl                                              ; $48a0: $2f
	ld h, e                                          ; $48a1: $63

jr_099_48a2:
	inc [hl]                                         ; $48a2: $34
	ld l, a                                          ; $48a3: $6f
	ld c, b                                          ; $48a4: $48
	and b                                            ; $48a5: $a0
	cpl                                              ; $48a6: $2f
	db $ec                                           ; $48a7: $ec
	di                                               ; $48a8: $f3
	ld c, d                                          ; $48a9: $4a
	ld d, c                                          ; $48aa: $51
	and b                                            ; $48ab: $a0
	cpl                                              ; $48ac: $2f
	ld h, $43                                        ; $48ad: $26 $43
	db $ec                                           ; $48af: $ec
	di                                               ; $48b0: $f3
	ld b, a                                          ; $48b1: $47
	di                                               ; $48b2: $f3
	jp c, Jump_099_413a                              ; $48b3: $da $3a $41

	ccf                                              ; $48b6: $3f
	jr c, jr_099_48f6                                ; $48b7: $38 $3d

	dec sp                                           ; $48b9: $3b
	ld e, l                                          ; $48ba: $5d
	ld [hl], $25                                     ; $48bb: $36 $25
	add hl, bc                                       ; $48bd: $09
	cpl                                              ; $48be: $2f
	jr c, @+$60                                      ; $48bf: $38 $5e

	and b                                            ; $48c1: $a0
	cpl                                              ; $48c2: $2f
	db $ec                                           ; $48c3: $ec
	di                                               ; $48c4: $f3
	ld [hl], l                                       ; $48c5: $75
	ld a, l                                          ; $48c6: $7d
	add hl, bc                                       ; $48c7: $09
	cpl                                              ; $48c8: $2f
	adc b                                            ; $48c9: $88
	add h                                            ; $48ca: $84

jr_099_48cb:
	ld c, d                                          ; $48cb: $4a
	ld d, c                                          ; $48cc: $51
	and b                                            ; $48cd: $a0
	cpl                                              ; $48ce: $2f
	ld h, $43                                        ; $48cf: $26 $43
	ld e, [hl]                                       ; $48d1: $5e
	ld [hl], $25                                     ; $48d2: $36 $25
	add hl, bc                                       ; $48d4: $09
	cpl                                              ; $48d5: $2f
	db $eb                                           ; $48d6: $eb
	ccf                                              ; $48d7: $3f
	and b                                            ; $48d8: $a0
	cpl                                              ; $48d9: $2f
	ld l, d                                          ; $48da: $6a
	ld d, d                                          ; $48db: $52
	ld c, d                                          ; $48dc: $4a
	ld l, a                                          ; $48dd: $6f
	ld c, b                                          ; $48de: $48
	and b                                            ; $48df: $a0
	cpl                                              ; $48e0: $2f
	ldh a, [$ab]                                     ; $48e1: $f0 $ab
	ld b, d                                          ; $48e3: $42
	ldh a, [rSCY]                                    ; $48e4: $f0 $42
	ld d, a                                          ; $48e6: $57
	ld h, d                                          ; $48e7: $62
	ld a, $3f                                        ; $48e8: $3e $3f
	inc [hl]                                         ; $48ea: $34
	add hl, bc                                       ; $48eb: $09
	cpl                                              ; $48ec: $2f
	pop af                                           ; $48ed: $f1
	ld a, [hl]                                       ; $48ee: $7e
	ld h, d                                          ; $48ef: $62
	add b                                            ; $48f0: $80

jr_099_48f1:
	jr c, jr_099_4932                                ; $48f1: $38 $3f

	dec a                                            ; $48f3: $3d
	ld b, d                                          ; $48f4: $42
	ld c, b                                          ; $48f5: $48

jr_099_48f6:
	and b                                            ; $48f6: $a0
	cpl                                              ; $48f7: $2f
	ld h, $43                                        ; $48f8: $26 $43
	ld d, c                                          ; $48fa: $51
	inc [hl]                                         ; $48fb: $34
	ld d, c                                          ; $48fc: $51
	ld [hl], b                                       ; $48fd: $70
	jr c, jr_099_48f1                                ; $48fe: $38 $f1

	ld a, [hl]                                       ; $4900: $7e
	ld b, h                                          ; $4901: $44
	dec [hl]                                         ; $4902: $35
	dec h                                            ; $4903: $25
	add hl, bc                                       ; $4904: $09
	cpl                                              ; $4905: $2f
	db $ec                                           ; $4906: $ec
	ld e, [hl]                                       ; $4907: $5e
	ld c, d                                          ; $4908: $4a
	ld c, e                                          ; $4909: $4b
	inc [hl]                                         ; $490a: $34
	add hl, bc                                       ; $490b: $09
	cpl                                              ; $490c: $2f
	pop hl                                           ; $490d: $e1
	ld c, e                                          ; $490e: $4b
	ldh a, [rAUD1ENV]                                ; $490f: $f0 $12

jr_099_4911:
	sbc a                                            ; $4911: $9f
	ld h, d                                          ; $4912: $62
	db $ed                                           ; $4913: $ed
	ld a, c                                          ; $4914: $79
	ld d, c                                          ; $4915: $51
	ld c, [hl]                                       ; $4916: $4e
	ld d, d                                          ; $4917: $52
	ld c, d                                          ; $4918: $4a
	add hl, bc                                       ; $4919: $09
	cpl                                              ; $491a: $2f
	ldh a, [rSVBK]                                   ; $491b: $f0 $70
	ld b, d                                          ; $491d: $42
	ldh a, [$f0]                                     ; $491e: $f0 $f0
	ld c, d                                          ; $4920: $4a
	ld c, e                                          ; $4921: $4b
	inc [hl]                                         ; $4922: $34
	ldh a, [$ab]                                     ; $4923: $f0 $ab
	ld b, d                                          ; $4925: $42
	adc h                                            ; $4926: $8c
	ld c, c                                          ; $4927: $49
	ld a, $3f                                        ; $4928: $3e $3f
	add hl, bc                                       ; $492a: $09
	cpl                                              ; $492b: $2f
	ldh a, [rTIMA]                                   ; $492c: $f0 $05
	pop af                                           ; $492e: $f1
	rrca                                             ; $492f: $0f
	ld a, $3a                                        ; $4930: $3e $3a

jr_099_4932:
	ld d, l                                          ; $4932: $55
	ccf                                              ; $4933: $3f
	xor $2d                                          ; $4934: $ee $2d
	ld e, l                                          ; $4936: $5d
	ld a, [hl-]                                      ; $4937: $3a
	jr c, jr_099_497c                                ; $4938: $38 $42

	and b                                            ; $493a: $a0
	cpl                                              ; $493b: $2f
	ld h, $43                                        ; $493c: $26 $43
	di                                               ; $493e: $f3
	jr nz, @-$0e                                     ; $493f: $20 $f0

	ld a, d                                          ; $4941: $7a
	ld l, h                                          ; $4942: $6c
	dec a                                            ; $4943: $3d
	jr c, jr_099_498e                                ; $4944: $38 $48

	dec [hl]                                         ; $4946: $35
	dec h                                            ; $4947: $25
	add hl, bc                                       ; $4948: $09
	cpl                                              ; $4949: $2f
	ld c, d                                          ; $494a: $4a
	ld c, a                                          ; $494b: $4f
	inc [hl]                                         ; $494c: $34
	ld l, a                                          ; $494d: $6f
	ld c, b                                          ; $494e: $48
	and b                                            ; $494f: $a0
	cpl                                              ; $4950: $2f
	ld b, [hl]                                       ; $4951: $46
	ld c, c                                          ; $4952: $49
	ld l, l                                          ; $4953: $6d
	ld l, b                                          ; $4954: $68
	ld b, h                                          ; $4955: $44
	dec sp                                           ; $4956: $3b
	dec a                                            ; $4957: $3d
	ld e, l                                          ; $4958: $5d
	ld e, d                                          ; $4959: $5a
	inc [hl]                                         ; $495a: $34
	add hl, bc                                       ; $495b: $09
	cpl                                              ; $495c: $2f
	db $eb                                           ; $495d: $eb
	db $f4                                           ; $495e: $f4
	db $ed                                           ; $495f: $ed
	adc c                                            ; $4960: $89
	ld d, e                                          ; $4961: $53
	add hl, bc                                       ; $4962: $09
	cpl                                              ; $4963: $2f
	sub h                                            ; $4964: $94
	ld a, b                                          ; $4965: $78
	ld a, [hl-]                                      ; $4966: $3a
	ld d, l                                          ; $4967: $55
	ccf                                              ; $4968: $3f
	ld c, b                                          ; $4969: $48
	and b                                            ; $496a: $a0
	cpl                                              ; $496b: $2f
	ld d, h                                          ; $496c: $54
	ld b, c                                          ; $496d: $41
	ld a, [hl-]                                      ; $496e: $3a
	ldh a, [$28]                                     ; $496f: $f0 $28
	ld b, a                                          ; $4971: $47
	pop af                                           ; $4972: $f1
	ld bc, $4df0                                     ; $4973: $01 $f0 $4d
	sub h                                            ; $4976: $94
	ld a, $3d                                        ; $4977: $3e $3d
	ld d, a                                          ; $4979: $57
	ld a, $3f                                        ; $497a: $3e $3f

jr_099_497c:
	inc [hl]                                         ; $497c: $34
	add hl, bc                                       ; $497d: $09
	cpl                                              ; $497e: $2f
	ld h, $43                                        ; $497f: $26 $43
	jr c, jr_099_49b7                                ; $4981: $38 $34

	jr c, @+$3a                                      ; $4983: $38 $38

	ld b, l                                          ; $4985: $45
	dec [hl]                                         ; $4986: $35
	ldh a, [$34]                                     ; $4987: $f0 $34
	ld b, a                                          ; $4989: $47
	ld c, b                                          ; $498a: $48
	dec [hl]                                         ; $498b: $35
	dec h                                            ; $498c: $25
	add hl, bc                                       ; $498d: $09

jr_099_498e:
	cpl                                              ; $498e: $2f
	jr c, jr_099_4911                                ; $498f: $38 $80

	ld c, a                                          ; $4991: $4f
	inc [hl]                                         ; $4992: $34
	db $f4                                           ; $4993: $f4
	jr jr_099_49e8                                   ; $4994: $18 $52

	ld c, l                                          ; $4996: $4d
	pop af                                           ; $4997: $f1
	push af                                          ; $4998: $f5
	ld a, e                                          ; $4999: $7b
	inc a                                            ; $499a: $3c
	ld d, a                                          ; $499b: $57
	ld c, d                                          ; $499c: $4a
	add hl, bc                                       ; $499d: $09
	cpl                                              ; $499e: $2f
	ld c, d                                          ; $499f: $4a
	ld c, a                                          ; $49a0: $4f
	inc [hl]                                         ; $49a1: $34
	ld l, d                                          ; $49a2: $6a
	ld d, d                                          ; $49a3: $52
	ld c, d                                          ; $49a4: $4a
	db $f4                                           ; $49a5: $f4
	jr jr_099_49fa                                   ; $49a6: $18 $52

	ld c, l                                          ; $49a8: $4d
	pop af                                           ; $49a9: $f1
	push af                                          ; $49aa: $f5
	ld h, d                                          ; $49ab: $62
	add hl, bc                                       ; $49ac: $09
	cpl                                              ; $49ad: $2f
	dec a                                            ; $49ae: $3d
	dec a                                            ; $49af: $3d
	jr c, jr_099_49f1                                ; $49b0: $38 $3f

	dec a                                            ; $49b2: $3d
	ld b, d                                          ; $49b3: $42
	ld c, e                                          ; $49b4: $4b
	inc [hl]                                         ; $49b5: $34
	ld b, [hl]                                       ; $49b6: $46

jr_099_49b7:
	ld a, [hl-]                                      ; $49b7: $3a
	dec a                                            ; $49b8: $3d
	ld b, a                                          ; $49b9: $47
	add hl, bc                                       ; $49ba: $09
	cpl                                              ; $49bb: $2f
	ldh a, [$64]                                     ; $49bc: $f0 $64
	ld h, e                                          ; $49be: $63
	ld c, l                                          ; $49bf: $4d
	ld b, l                                          ; $49c0: $45
	add hl, sp                                       ; $49c1: $39
	ld c, c                                          ; $49c2: $49
	ld a, $3f                                        ; $49c3: $3e $3f
	dec a                                            ; $49c5: $3d
	inc a                                            ; $49c6: $3c
	ld d, b                                          ; $49c7: $50
	ld a, [hl-]                                      ; $49c8: $3a
	ld b, d                                          ; $49c9: $42
	ld c, b                                          ; $49ca: $48
	and b                                            ; $49cb: $a0
	cpl                                              ; $49cc: $2f
	ldh a, [$64]                                     ; $49cd: $f0 $64
	ld h, e                                          ; $49cf: $63
	ld c, l                                          ; $49d0: $4d
	ccf                                              ; $49d1: $3f
	ld a, $52                                        ; $49d2: $3e $52
	ld e, [hl]                                       ; $49d4: $5e
	ld a, e                                          ; $49d5: $7b
	inc [hl]                                         ; $49d6: $34
	add hl, bc                                       ; $49d7: $09
	cpl                                              ; $49d8: $2f
	ld b, [hl]                                       ; $49d9: $46
	ld a, [hl-]                                      ; $49da: $3a
	dec a                                            ; $49db: $3d
	ld b, d                                          ; $49dc: $42
	sbc d                                            ; $49dd: $9a
	ld h, d                                          ; $49de: $62
	pop af                                           ; $49df: $f1
	dec d                                            ; $49e0: $15
	ld c, l                                          ; $49e1: $4d
	ld d, b                                          ; $49e2: $50
	ld c, l                                          ; $49e3: $4d
	ld c, [hl]                                       ; $49e4: $4e
	ld c, c                                          ; $49e5: $49
	add hl, bc                                       ; $49e6: $09
	cpl                                              ; $49e7: $2f

jr_099_49e8:
	ld [hl], a                                       ; $49e8: $77
	dec sp                                           ; $49e9: $3b
	dec a                                            ; $49ea: $3d
	inc a                                            ; $49eb: $3c
	ld d, b                                          ; $49ec: $50
	ld c, b                                          ; $49ed: $48
	and b                                            ; $49ee: $a0
	cpl                                              ; $49ef: $2f
	ld c, d                                          ; $49f0: $4a

jr_099_49f1:
	ld c, a                                          ; $49f1: $4f
	inc [hl]                                         ; $49f2: $34
	jr c, @-$7e                                      ; $49f3: $38 $80

	ld c, a                                          ; $49f5: $4f
	ld b, [hl]                                       ; $49f6: $46
	ld a, [hl-]                                      ; $49f7: $3a
	dec a                                            ; $49f8: $3d
	ld c, e                                          ; $49f9: $4b

jr_099_49fa:
	ld l, a                                          ; $49fa: $6f
	ld b, a                                          ; $49fb: $47
	add hl, bc                                       ; $49fc: $09
	cpl                                              ; $49fd: $2f
	db $ed                                           ; $49fe: $ed
	halt                                             ; $49ff: $76
	ld h, d                                          ; $4a00: $62
	ld a, $3f                                        ; $4a01: $3e $3f
	ld e, h                                          ; $4a03: $5c
	ccf                                              ; $4a04: $3f
	ld d, l                                          ; $4a05: $55
	ld c, l                                          ; $4a06: $4d
	ccf                                              ; $4a07: $3f
	inc [hl]                                         ; $4a08: $34
	add hl, bc                                       ; $4a09: $09
	cpl                                              ; $4a0a: $2f

jr_099_4a0b:
	db $ec                                           ; $4a0b: $ec
	dec hl                                           ; $4a0c: $2b
	ldh a, [$d8]                                     ; $4a0d: $f0 $d8
	ld e, d                                          ; $4a0f: $5a
	jr c, jr_099_4a66                                ; $4a10: $38 $54

	ld c, c                                          ; $4a12: $49
	ld h, d                                          ; $4a13: $62
	add d                                            ; $4a14: $82
	dec sp                                           ; $4a15: $3b
	dec a                                            ; $4a16: $3d
	ld b, d                                          ; $4a17: $42
	ld b, a                                          ; $4a18: $47
	inc [hl]                                         ; $4a19: $34
	add hl, bc                                       ; $4a1a: $09
	cpl                                              ; $4a1b: $2f
	db $ed                                           ; $4a1c: $ed
	ld h, c                                          ; $4a1d: $61
	ld c, a                                          ; $4a1e: $4f
	db $ed                                           ; $4a1f: $ed
	ld h, c                                          ; $4a20: $61
	ld c, a                                          ; $4a21: $4f
	ld c, b                                          ; $4a22: $48
	and b                                            ; $4a23: $a0
	cpl                                              ; $4a24: $2f
	ld l, a                                          ; $4a25: $6f
	inc [hl]                                         ; $4a26: $34
	ldh a, [$29]                                     ; $4a27: $f0 $29
	ld a, $55                                        ; $4a29: $3e $55
	ccf                                              ; $4a2b: $3f
	inc [hl]                                         ; $4a2c: $34
	add hl, bc                                       ; $4a2d: $09
	cpl                                              ; $4a2e: $2f
	jr c, @-$7e                                      ; $4a2f: $38 $80

	ld c, a                                          ; $4a31: $4f
	db $ed                                           ; $4a32: $ed
	halt                                             ; $4a33: $76
	ld b, d                                          ; $4a34: $42
	pop af                                           ; $4a35: $f1
	dec a                                            ; $4a36: $3d
	ld d, h                                          ; $4a37: $54
	add hl, sp                                       ; $4a38: $39
	db $f4                                           ; $4a39: $f4
	ld [$094a], a                                    ; $4a3a: $ea $4a $09
	cpl                                              ; $4a3d: $2f
	ldh a, [c]                                       ; $4a3e: $f2
	adc c                                            ; $4a3f: $89
	jr c, jr_099_4a81                                ; $4a40: $38 $3f

	dec a                                            ; $4a42: $3d
	ld b, d                                          ; $4a43: $42
	ld b, l                                          ; $4a44: $45
	ld c, b                                          ; $4a45: $48
	and b                                            ; $4a46: $a0
	cpl                                              ; $4a47: $2f
	ldh a, [$d7]                                     ; $4a48: $f0 $d7
	inc [hl]                                         ; $4a4a: $34
	ld l, a                                          ; $4a4b: $6f
	ld d, e                                          ; $4a4c: $53
	ldh a, [$3b]                                     ; $4a4d: $f0 $3b
	ldh a, [c]                                       ; $4a4f: $f2
	pop af                                           ; $4a50: $f1
	ld e, b                                          ; $4a51: $58
	ld c, l                                          ; $4a52: $4d
	dec a                                            ; $4a53: $3d
	ld c, c                                          ; $4a54: $49
	ld e, h                                          ; $4a55: $5c
	inc [hl]                                         ; $4a56: $34
	add hl, bc                                       ; $4a57: $09
	cpl                                              ; $4a58: $2f
	db $f4                                           ; $4a59: $f4
	ld h, [hl]                                       ; $4a5a: $66
	di                                               ; $4a5b: $f3
	ld bc, $30f0                                     ; $4a5c: $01 $f0 $30
	ld d, d                                          ; $4a5f: $52
	ld c, d                                          ; $4a60: $4a
	ld a, b                                          ; $4a61: $78
	ccf                                              ; $4a62: $3f
	ld d, l                                          ; $4a63: $55
	ld c, l                                          ; $4a64: $4d
	dec a                                            ; $4a65: $3d

jr_099_4a66:
	ld c, d                                          ; $4a66: $4a
	ld a, $66                                        ; $4a67: $3e $66
	add hl, sp                                       ; $4a69: $39
	and b                                            ; $4a6a: $a0
	cpl                                              ; $4a6b: $2f
	ld d, h                                          ; $4a6c: $54
	ld b, c                                          ; $4a6d: $41
	ld a, [hl-]                                      ; $4a6e: $3a
	ld l, a                                          ; $4a6f: $6f
	ld h, d                                          ; $4a70: $62
	db $ed                                           ; $4a71: $ed
	ld h, h                                          ; $4a72: $64
	ld a, $3f                                        ; $4a73: $3e $3f
	ld d, l                                          ; $4a75: $55
	ld c, l                                          ; $4a76: $4d
	ld c, [hl]                                       ; $4a77: $4e
	ld a, [hl-]                                      ; $4a78: $3a
	ld b, c                                          ; $4a79: $41
	ccf                                              ; $4a7a: $3f
	inc [hl]                                         ; $4a7b: $34
	add hl, bc                                       ; $4a7c: $09
	cpl                                              ; $4a7d: $2f
	ld d, c                                          ; $4a7e: $51
	ld [hl], b                                       ; $4a7f: $70
	ld d, l                                          ; $4a80: $55

jr_099_4a81:
	ldh a, [$29]                                     ; $4a81: $f0 $29
	ld a, $3c                                        ; $4a83: $3e $3c
	dec sp                                           ; $4a85: $3b
	dec a                                            ; $4a86: $3d
	and b                                            ; $4a87: $a0
	cpl                                              ; $4a88: $2f
	jr c, jr_099_4a0b                                ; $4a89: $38 $80

	ld c, a                                          ; $4a8b: $4f
	ld a, a                                          ; $4a8c: $7f
	ldh a, [$5b]                                     ; $4a8d: $f0 $5b
	ld b, a                                          ; $4a8f: $47
	ldh a, [rTIMA]                                   ; $4a90: $f0 $05
	ld e, h                                          ; $4a92: $5c
	ccf                                              ; $4a93: $3f
	ld e, h                                          ; $4a94: $5c
	dec a                                            ; $4a95: $3d
	ld e, l                                          ; $4a96: $5d
	ld e, d                                          ; $4a97: $5a
	ld c, b                                          ; $4a98: $48
	and b                                            ; $4a99: $a0
	cpl                                              ; $4a9a: $2f
	ld l, a                                          ; $4a9b: $6f
	db $ed                                           ; $4a9c: $ed
	ld b, e                                          ; $4a9d: $43
	inc [hl]                                         ; $4a9e: $34
	pop af                                           ; $4a9f: $f1
	db $fc                                           ; $4aa0: $fc
	ldh a, [rOCPS]                                   ; $4aa1: $f0 $6a
	ld b, d                                          ; $4aa3: $42
	pop hl                                           ; $4aa4: $e1
	ld b, l                                          ; $4aa5: $45
	and b                                            ; $4aa6: $a0
	cpl                                              ; $4aa7: $2f
	jr c, @-$7e                                      ; $4aa8: $38 $80

	ld c, d                                          ; $4aaa: $4a
	ld c, a                                          ; $4aab: $4f
	ld l, h                                          ; $4aac: $6c
	ld b, c                                          ; $4aad: $41
	ld a, [hl-]                                      ; $4aae: $3a
	ld c, c                                          ; $4aaf: $49
	xor $06                                          ; $4ab0: $ee $06
	ld b, a                                          ; $4ab2: $47
	jr c, jr_099_4af4                                ; $4ab3: $38 $3f

	add hl, bc                                       ; $4ab5: $09
	cpl                                              ; $4ab6: $2f
	ld h, h                                          ; $4ab7: $64
	ld a, $56                                        ; $4ab8: $3e $56
	ldh a, [$8c]                                     ; $4aba: $f0 $8c
	ld d, a                                          ; $4abc: $57
	ld a, $3d                                        ; $4abd: $3e $3d
	ld d, a                                          ; $4abf: $57
	inc [hl]                                         ; $4ac0: $34
	add hl, bc                                       ; $4ac1: $09
	cpl                                              ; $4ac2: $2f
	ldh a, [$b2]                                     ; $4ac3: $f0 $b2
	ldh a, [rKEY1]                                   ; $4ac5: $f0 $4d
	ld b, a                                          ; $4ac7: $47
	ld h, a                                          ; $4ac8: $67
	dec sp                                           ; $4ac9: $3b
	dec a                                            ; $4aca: $3d
	ld d, a                                          ; $4acb: $57
	ld a, $3d                                        ; $4acc: $3e $3d
	inc a                                            ; $4ace: $3c
	dec sp                                           ; $4acf: $3b
	dec a                                            ; $4ad0: $3d
	and b                                            ; $4ad1: $a0
	cpl                                              ; $4ad2: $2f
	db $eb                                           ; $4ad3: $eb
	cpl                                              ; $4ad4: $2f
	ld b, d                                          ; $4ad5: $42
	ld c, c                                          ; $4ad6: $49
	ld e, h                                          ; $4ad7: $5c
	db $ed                                           ; $4ad8: $ed
	ld b, e                                          ; $4ad9: $43
	add hl, bc                                       ; $4ada: $09
	cpl                                              ; $4adb: $2f
	ld b, [hl]                                       ; $4adc: $46
	ld a, [hl-]                                      ; $4add: $3a
	dec a                                            ; $4ade: $3d
	ld b, a                                          ; $4adf: $47
	ld c, b                                          ; $4ae0: $48
	and b                                            ; $4ae1: $a0
	cpl                                              ; $4ae2: $2f
	ldh a, [$79]                                     ; $4ae3: $f0 $79
	ld l, b                                          ; $4ae5: $68
	inc a                                            ; $4ae6: $3c
	ld d, b                                          ; $4ae7: $50
	ld c, e                                          ; $4ae8: $4b
	ld b, b                                          ; $4ae9: $40
	add hl, sp                                       ; $4aea: $39
	ld a, [hl-]                                      ; $4aeb: $3a

jr_099_4aec:
	ld c, l                                          ; $4aec: $4d
	ld c, [hl]                                       ; $4aed: $4e
	ld e, l                                          ; $4aee: $5d
	ld e, d                                          ; $4aef: $5a
	inc [hl]                                         ; $4af0: $34
	add hl, bc                                       ; $4af1: $09
	cpl                                              ; $4af2: $2f
	db $ed                                           ; $4af3: $ed

jr_099_4af4:
	ld a, c                                          ; $4af4: $79
	ld d, c                                          ; $4af5: $51
	ld c, [hl]                                       ; $4af6: $4e
	sbc [hl]                                         ; $4af7: $9e
	ld b, a                                          ; $4af8: $47
	inc [hl]                                         ; $4af9: $34
	adc b                                            ; $4afa: $88
	sub c                                            ; $4afb: $91
	ld b, d                                          ; $4afc: $42
	ld l, a                                          ; $4afd: $6f
	ld h, d                                          ; $4afe: $62
	add hl, bc                                       ; $4aff: $09
	cpl                                              ; $4b00: $2f
	ld [hl], d                                       ; $4b01: $72
	ccf                                              ; $4b02: $3f
	pop af                                           ; $4b03: $f1
	add hl, hl                                       ; $4b04: $29
	ld a, $3c                                        ; $4b05: $3e $3c
	dec sp                                           ; $4b07: $3b
	dec a                                            ; $4b08: $3d
	inc a                                            ; $4b09: $3c
	ld d, b                                          ; $4b0a: $50
	ld c, b                                          ; $4b0b: $48
	and b                                            ; $4b0c: $a0
	cpl                                              ; $4b0d: $2f
	ld c, a                                          ; $4b0e: $4f
	add hl, sp                                       ; $4b0f: $39
	db $ec                                           ; $4b10: $ec
	ld e, [hl]                                       ; $4b11: $5e
	ld a, [hl-]                                      ; $4b12: $3a
	ld b, c                                          ; $4b13: $41
	ccf                                              ; $4b14: $3f
	inc [hl]                                         ; $4b15: $34
	add hl, bc                                       ; $4b16: $09
	cpl                                              ; $4b17: $2f
	ld e, d                                          ; $4b18: $5a
	add hl, sp                                       ; $4b19: $39
	ld c, d                                          ; $4b1a: $4a
	ld c, a                                          ; $4b1b: $4f
	jr c, jr_099_4b56                                ; $4b1c: $38 $38

	ld b, d                                          ; $4b1e: $42
	and b                                            ; $4b1f: $a0
	cpl                                              ; $4b20: $2f
	ld b, h                                          ; $4b21: $44
	inc a                                            ; $4b22: $3c
	ld d, b                                          ; $4b23: $50
	ld c, b                                          ; $4b24: $48
	add hl, bc                                       ; $4b25: $09
	cpl                                              ; $4b26: $2f
	adc e                                            ; $4b27: $8b
	ld e, h                                          ; $4b28: $5c
	ld c, d                                          ; $4b29: $4a
	ld d, c                                          ; $4b2a: $51
	and b                                            ; $4b2b: $a0
	cpl                                              ; $4b2c: $2f
	ld l, d                                          ; $4b2d: $6a
	ld d, d                                          ; $4b2e: $52
	ld c, d                                          ; $4b2f: $4a
	inc [hl]                                         ; $4b30: $34
	pop af                                           ; $4b31: $f1
	ld a, [hl]                                       ; $4b32: $7e
	ld h, d                                          ; $4b33: $62
	add b                                            ; $4b34: $80
	jr c, jr_099_4b76                                ; $4b35: $38 $3f

	jr c, jr_099_4b78                                ; $4b37: $38 $3f

	add hl, bc                                       ; $4b39: $09
	cpl                                              ; $4b3a: $2f
	ld c, d                                          ; $4b3b: $4a
	ld c, a                                          ; $4b3c: $4f
	inc [hl]                                         ; $4b3d: $34
	ld l, a                                          ; $4b3e: $6f
	ld c, c                                          ; $4b3f: $49
	ldh a, [$9a]                                     ; $4b40: $f0 $9a
	ld e, h                                          ; $4b42: $5c
	ldh a, [rTMA]                                    ; $4b43: $f0 $06
	dec sp                                           ; $4b45: $3b
	ccf                                              ; $4b46: $3f
	ld d, l                                          ; $4b47: $55
	ld b, h                                          ; $4b48: $44
	ld e, b                                          ; $4b49: $58
	jr c, jr_099_4aec                                ; $4b4a: $38 $a0

	cpl                                              ; $4b4c: $2f
	ld h, $43                                        ; $4b4d: $26 $43
	db $ec                                           ; $4b4f: $ec
	di                                               ; $4b50: $f3
	ld c, b                                          ; $4b51: $48
	and b                                            ; $4b52: $a0
	cpl                                              ; $4b53: $2f
	jr c, jr_099_4bc4                                ; $4b54: $38 $6e

jr_099_4b56:
	inc [hl]                                         ; $4b56: $34
	db $ec                                           ; $4b57: $ec
	di                                               ; $4b58: $f3
	ld e, b                                          ; $4b59: $58
	ld b, c                                          ; $4b5a: $41
	ld c, b                                          ; $4b5b: $48
	dec [hl]                                         ; $4b5c: $35
	dec h                                            ; $4b5d: $25
	add hl, bc                                       ; $4b5e: $09
	cpl                                              ; $4b5f: $2f
	pop af                                           ; $4b60: $f1
	or c                                             ; $4b61: $b1
	ldh a, [c]                                       ; $4b62: $f2
	ld [hl], l                                       ; $4b63: $75
	ld b, h                                          ; $4b64: $44
	ld c, c                                          ; $4b65: $49
	ld [hl], a                                       ; $4b66: $77
	add hl, sp                                       ; $4b67: $39
	ld e, l                                          ; $4b68: $5d
	ld e, d                                          ; $4b69: $5a
	ld c, b                                          ; $4b6a: $48
	and b                                            ; $4b6b: $a0
	cpl                                              ; $4b6c: $2f
	ld b, [hl]                                       ; $4b6d: $46
	ld a, [hl-]                                      ; $4b6e: $3a
	dec a                                            ; $4b6f: $3d
	ld b, d                                          ; $4b70: $42
	db $ed                                           ; $4b71: $ed
	ld l, a                                          ; $4b72: $6f
	ld h, c                                          ; $4b73: $61
	ld h, d                                          ; $4b74: $62
	db $ec                                           ; $4b75: $ec

jr_099_4b76:
	ld b, b                                          ; $4b76: $40
	and b                                            ; $4b77: $a0

jr_099_4b78:
	cpl                                              ; $4b78: $2f
	ld b, b                                          ; $4b79: $40
	ld c, l                                          ; $4b7a: $4d
	ld c, d                                          ; $4b7b: $4a
	ldh a, [c]                                       ; $4b7c: $f2
	add hl, de                                       ; $4b7d: $19
	ld [hl], c                                       ; $4b7e: $71
	ld d, e                                          ; $4b7f: $53
	add b                                            ; $4b80: $80
	ld d, l                                          ; $4b81: $55
	ld a, [hl-]                                      ; $4b82: $3a
	ld d, b                                          ; $4b83: $50
	ld c, b                                          ; $4b84: $48
	and b                                            ; $4b85: $a0
	cpl                                              ; $4b86: $2f
	ld h, $43                                        ; $4b87: $26 $43
	ld b, b                                          ; $4b89: $40
	ld d, h                                          ; $4b8a: $54
	ld d, d                                          ; $4b8b: $52
	ld c, d                                          ; $4b8c: $4a

jr_099_4b8d:
	pop af                                           ; $4b8d: $f1
	ld c, h                                          ; $4b8e: $4c
	dec sp                                           ; $4b8f: $3b
	ccf                                              ; $4b90: $3f
	ld d, l                                          ; $4b91: $55
	ld c, l                                          ; $4b92: $4d
	ccf                                              ; $4b93: $3f
	inc [hl]                                         ; $4b94: $34
	add hl, bc                                       ; $4b95: $09
	cpl                                              ; $4b96: $2f
	pop af                                           ; $4b97: $f1
	pop bc                                           ; $4b98: $c1
	ld c, l                                          ; $4b99: $4d
	ld c, [hl]                                       ; $4b9a: $4e
	pop af                                           ; $4b9b: $f1
	dec bc                                           ; $4b9c: $0b
	ldh a, [rAUD1LOW]                                ; $4b9d: $f0 $13
	jr c, jr_099_4b8d                                ; $4b9f: $38 $ec

	ret c                                            ; $4ba1: $d8

	inc a                                            ; $4ba2: $3c
	dec [hl]                                         ; $4ba3: $35
	dec h                                            ; $4ba4: $25
	add hl, bc                                       ; $4ba5: $09
	cpl                                              ; $4ba6: $2f
	ld b, b                                          ; $4ba7: $40
	inc [hl]                                         ; $4ba8: $34
	ld b, b                                          ; $4ba9: $40
	ld c, l                                          ; $4baa: $4d
	ld e, e                                          ; $4bab: $5b
	ld d, [hl]                                       ; $4bac: $56
	ld c, b                                          ; $4bad: $48
	and b                                            ; $4bae: $a0
	cpl                                              ; $4baf: $2f
	ld h, $43                                        ; $4bb0: $26 $43
	db $ec                                           ; $4bb2: $ec
	dec l                                            ; $4bb3: $2d
	dec [hl]                                         ; $4bb4: $35
	db $ed                                           ; $4bb5: $ed
	ld l, l                                          ; $4bb6: $6d
	ld b, h                                          ; $4bb7: $44
	ld b, l                                          ; $4bb8: $45
	dec [hl]                                         ; $4bb9: $35
	dec h                                            ; $4bba: $25
	add hl, bc                                       ; $4bbb: $09
	cpl                                              ; $4bbc: $2f
	ld l, a                                          ; $4bbd: $6f
	ld c, b                                          ; $4bbe: $48
	ld l, a                                          ; $4bbf: $6f
	ld c, b                                          ; $4bc0: $48
	and b                                            ; $4bc1: $a0
	cpl                                              ; $4bc2: $2f
	ld l, e                                          ; $4bc3: $6b

jr_099_4bc4:
	ccf                                              ; $4bc4: $3f
	add d                                            ; $4bc5: $82
	dec sp                                           ; $4bc6: $3b
	dec a                                            ; $4bc7: $3d
	ld d, b                                          ; $4bc8: $50
	jr c, jr_099_4c03                                ; $4bc9: $38 $38

	ld b, d                                          ; $4bcb: $42
	inc a                                            ; $4bcc: $3c
	ld c, b                                          ; $4bcd: $48
	and b                                            ; $4bce: $a0
	cpl                                              ; $4bcf: $2f
	db $ec                                           ; $4bd0: $ec
	ld hl, sp+$34                                    ; $4bd1: $f8 $34
	add hl, bc                                       ; $4bd3: $09
	cpl                                              ; $4bd4: $2f
	pop af                                           ; $4bd5: $f1
	db $fc                                           ; $4bd6: $fc
	ldh a, [rOCPS]                                   ; $4bd7: $f0 $6a
	ld b, d                                          ; $4bd9: $42
	pop hl                                           ; $4bda: $e1
	ld b, a                                          ; $4bdb: $47
	ld a, [hl-]                                      ; $4bdc: $3a
	ld c, l                                          ; $4bdd: $4d
	dec a                                            ; $4bde: $3d
	ld b, d                                          ; $4bdf: $42
	ld c, h                                          ; $4be0: $4c
	ld c, b                                          ; $4be1: $48
	and b                                            ; $4be2: $a0
	cpl                                              ; $4be3: $2f
	ld h, $43                                        ; $4be4: $26 $43
	ld l, l                                          ; $4be6: $6d
	add b                                            ; $4be7: $80
	ld b, h                                          ; $4be8: $44
	ld e, l                                          ; $4be9: $5d
	ldh a, [$0c]                                     ; $4bea: $f0 $0c
	jr c, jr_099_4c2d                                ; $4bec: $38 $3f

	ld c, a                                          ; $4bee: $4f
	db $ec                                           ; $4bef: $ec
	ld a, [bc]                                       ; $4bf0: $0a
	ld [hl], $25                                     ; $4bf1: $36 $25
	add hl, bc                                       ; $4bf3: $09
	cpl                                              ; $4bf4: $2f
	ld e, [hl]                                       ; $4bf5: $5e
	dec sp                                           ; $4bf6: $3b
	inc [hl]                                         ; $4bf7: $34
	ld l, e                                          ; $4bf8: $6b
	and c                                            ; $4bf9: $a1
	cpl                                              ; $4bfa: $2f
	ld h, $43                                        ; $4bfb: $26 $43
	adc e                                            ; $4bfd: $8b
	ldh a, [$72]                                     ; $4bfe: $f0 $72
	ld d, e                                          ; $4c00: $53
	ldh a, [c]                                       ; $4c01: $f2
	ld [de], a                                       ; $4c02: $12

jr_099_4c03:
	ld c, l                                          ; $4c03: $4d
	dec a                                            ; $4c04: $3d
	ld c, c                                          ; $4c05: $49
	ld e, h                                          ; $4c06: $5c
	ld b, d                                          ; $4c07: $42
	add hl, bc                                       ; $4c08: $09
	cpl                                              ; $4c09: $2f
	sbc d                                            ; $4c0a: $9a
	ld b, h                                          ; $4c0b: $44
	ld e, l                                          ; $4c0c: $5d
	ld e, d                                          ; $4c0d: $5a
	ld c, b                                          ; $4c0e: $48
	dec [hl]                                         ; $4c0f: $35
	dec h                                            ; $4c10: $25
	add hl, bc                                       ; $4c11: $09
	cpl                                              ; $4c12: $2f
	jp hl                                            ; $4c13: $e9


	and h                                            ; $4c14: $a4
	ld c, b                                          ; $4c15: $48
	and b                                            ; $4c16: $a0
	cpl                                              ; $4c17: $2f
	db $ed                                           ; $4c18: $ed
	ld c, $47                                        ; $4c19: $0e $47
	ld l, a                                          ; $4c1b: $6f
	ld d, e                                          ; $4c1c: $53
	pop hl                                           ; $4c1d: $e1
	ld b, h                                          ; $4c1e: $44
	ld c, c                                          ; $4c1f: $49
	jr c, jr_099_4c5b                                ; $4c20: $38 $39

	add hl, bc                                       ; $4c22: $09
	cpl                                              ; $4c23: $2f
	sbc d                                            ; $4c24: $9a
	ld d, e                                          ; $4c25: $53
	ld a, e                                          ; $4c26: $7b
	ld c, l                                          ; $4c27: $4d
	ccf                                              ; $4c28: $3f
	db $ec                                           ; $4c29: $ec
	push de                                          ; $4c2a: $d5
	ld b, d                                          ; $4c2b: $42
	ld c, d                                          ; $4c2c: $4a

jr_099_4c2d:
	inc [hl]                                         ; $4c2d: $34
	add hl, bc                                       ; $4c2e: $09
	cpl                                              ; $4c2f: $2f
	ldh a, [c]                                       ; $4c30: $f2
	halt                                             ; $4c31: $76
	di                                               ; $4c32: $f3
	ld b, b                                          ; $4c33: $40
	ld h, d                                          ; $4c34: $62
	db $f4                                           ; $4c35: $f4
	sbc l                                            ; $4c36: $9d
	ldh a, [$a5]                                     ; $4c37: $f0 $a5
	ld a, $3d                                        ; $4c39: $3e $3d
	ld b, c                                          ; $4c3b: $41
	ld c, d                                          ; $4c3c: $4a
	ld d, c                                          ; $4c3d: $51
	ld c, b                                          ; $4c3e: $48
	and b                                            ; $4c3f: $a0
	cpl                                              ; $4c40: $2f
	ld h, $43                                        ; $4c41: $26 $43
	db $ec                                           ; $4c43: $ec
	reti                                             ; $4c44: $d9


	ld b, b                                          ; $4c45: $40
	add hl, sp                                       ; $4c46: $39
	ld b, h                                          ; $4c47: $44
	dec sp                                           ; $4c48: $3b
	dec a                                            ; $4c49: $3d
	ld b, c                                          ; $4c4a: $41
	ld b, h                                          ; $4c4b: $44
	ld c, b                                          ; $4c4c: $48
	dec [hl]                                         ; $4c4d: $35
	dec h                                            ; $4c4e: $25
	add hl, bc                                       ; $4c4f: $09
	cpl                                              ; $4c50: $2f
	ld e, l                                          ; $4c51: $5d
	inc [hl]                                         ; $4c52: $34
	ldh a, [c]                                       ; $4c53: $f2
	ld c, h                                          ; $4c54: $4c
	db $f4                                           ; $4c55: $f4
	jp hl                                            ; $4c56: $e9


	ld a, $52                                        ; $4c57: $3e $52
	ld d, c                                          ; $4c59: $51
	inc a                                            ; $4c5a: $3c

jr_099_4c5b:
	ld c, b                                          ; $4c5b: $48
	and b                                            ; $4c5c: $a0
	cpl                                              ; $4c5d: $2f
	ld h, $43                                        ; $4c5e: $26 $43
	jr c, jr_099_4cd0                                ; $4c60: $38 $6e

	ld c, b                                          ; $4c62: $48
	and b                                            ; $4c63: $a0
	cpl                                              ; $4c64: $2f
	ld b, b                                          ; $4c65: $40
	ld b, d                                          ; $4c66: $42
	db $ed                                           ; $4c67: $ed
	ld l, a                                          ; $4c68: $6f
	ld h, c                                          ; $4c69: $61
	ldh a, [rTAC]                                    ; $4c6a: $f0 $07
	inc a                                            ; $4c6c: $3c
	ld c, [hl]                                       ; $4c6d: $4e
	inc a                                            ; $4c6e: $3c
	ld d, b                                          ; $4c6f: $50
	ld c, b                                          ; $4c70: $48
	dec [hl]                                         ; $4c71: $35
	dec h                                            ; $4c72: $25
	add hl, bc                                       ; $4c73: $09
	cpl                                              ; $4c74: $2f
	ld b, [hl]                                       ; $4c75: $46
	ld d, a                                          ; $4c76: $57
	ld d, e                                          ; $4c77: $53
	ld c, c                                          ; $4c78: $49
	add hl, sp                                       ; $4c79: $39
	ld c, b                                          ; $4c7a: $48
	and b                                            ; $4c7b: $a0
	cpl                                              ; $4c7c: $2f
	sbc $f0                                          ; $4c7d: $de $f0
	ld c, [hl]                                       ; $4c7f: $4e
	ld a, $38                                        ; $4c80: $3e $38
	ld b, d                                          ; $4c82: $42
	ld c, h                                          ; $4c83: $4c
	ld c, b                                          ; $4c84: $48
	and b                                            ; $4c85: $a0
	cpl                                              ; $4c86: $2f
	ld b, [hl]                                       ; $4c87: $46
	ld a, [hl-]                                      ; $4c88: $3a
	dec a                                            ; $4c89: $3d
	ld h, d                                          ; $4c8a: $62
	adc e                                            ; $4c8b: $8b
	ld e, h                                          ; $4c8c: $5c
	ld b, a                                          ; $4c8d: $47
	ld a, [hl-]                                      ; $4c8e: $3a
	dec sp                                           ; $4c8f: $3b
	ccf                                              ; $4c90: $3f
	db $ec                                           ; $4c91: $ec
	cp c                                             ; $4c92: $b9
	ld c, b                                          ; $4c93: $48
	and b                                            ; $4c94: $a0
	add hl, bc                                       ; $4c95: $09
	cpl                                              ; $4c96: $2f
	ld h, $43                                        ; $4c97: $26 $43
	ld e, h                                          ; $4c99: $5c
	inc [hl]                                         ; $4c9a: $34
	db $ec                                           ; $4c9b: $ec
	rst SubAFromDE                                          ; $4c9c: $df
	ld c, b                                          ; $4c9d: $48
	dec [hl]                                         ; $4c9e: $35
	dec h                                            ; $4c9f: $25
	add hl, bc                                       ; $4ca0: $09
	cpl                                              ; $4ca1: $2f
	ld h, $43                                        ; $4ca2: $26 $43
	ld e, h                                          ; $4ca4: $5c
	inc [hl]                                         ; $4ca5: $34
	db $ec                                           ; $4ca6: $ec
	rst SubAFromDE                                          ; $4ca7: $df
	and b                                            ; $4ca8: $a0
	cpl                                              ; $4ca9: $2f
	db $ed                                           ; $4caa: $ed
	ld e, d                                          ; $4cab: $5a
	db $ed                                           ; $4cac: $ed
	call nz, $eb4b                                   ; $4cad: $c4 $4b $eb
	rst FarCall                                          ; $4cb0: $f7
	ld [hl], $25                                     ; $4cb1: $36 $25
	add hl, bc                                       ; $4cb3: $09
	cpl                                              ; $4cb4: $2f
	db $ec                                           ; $4cb5: $ec
	xor $42                                          ; $4cb6: $ee $42
	ldh a, [$38]                                     ; $4cb8: $f0 $38
	ld d, e                                          ; $4cba: $53
	inc [hl]                                         ; $4cbb: $34
	add hl, bc                                       ; $4cbc: $09
	cpl                                              ; $4cbd: $2f

jr_099_4cbe:
	adc e                                            ; $4cbe: $8b
	ld l, h                                          ; $4cbf: $6c
	ld b, a                                          ; $4cc0: $47
	ld b, [hl]                                       ; $4cc1: $46
	add hl, sp                                       ; $4cc2: $39
	ld c, c                                          ; $4cc3: $49
	ld [hl], a                                       ; $4cc4: $77
	dec sp                                           ; $4cc5: $3b
	ccf                                              ; $4cc6: $3f
	inc [hl]                                         ; $4cc7: $34
	add hl, bc                                       ; $4cc8: $09
	cpl                                              ; $4cc9: $2f
	ld [hl], a                                       ; $4cca: $77
	jr c, jr_099_4cbe                                ; $4ccb: $38 $f1

	inc d                                            ; $4ccd: $14
	dec sp                                           ; $4cce: $3b
	ccf                                              ; $4ccf: $3f

jr_099_4cd0:
	add hl, bc                                       ; $4cd0: $09
	cpl                                              ; $4cd1: $2f
	db $eb                                           ; $4cd2: $eb
	call nc, $3e47                                   ; $4cd3: $d4 $47 $3e
	ccf                                              ; $4cd6: $3f
	ld [$a0b4], a                                    ; $4cd7: $ea $b4 $a0
	cpl                                              ; $4cda: $2f
	ld h, $32                                        ; $4cdb: $26 $32
	ld c, a                                          ; $4cdd: $4f
	ld a, $3c                                        ; $4cde: $3e $3c
	ld a, $3f                                        ; $4ce0: $3e $3f
	inc [hl]                                         ; $4ce2: $34
	halt                                             ; $4ce3: $76
	ld b, d                                          ; $4ce4: $42
	dec a                                            ; $4ce5: $3d
	ld [hl], c                                       ; $4ce6: $71
	ld b, a                                          ; $4ce7: $47
	ld c, b                                          ; $4ce8: $48
	dec [hl]                                         ; $4ce9: $35
	inc sp                                           ; $4cea: $33
	dec h                                            ; $4ceb: $25
	add hl, bc                                       ; $4cec: $09
	cpl                                              ; $4ced: $2f
	db $eb                                           ; $4cee: $eb
	ld d, a                                          ; $4cef: $57
	and b                                            ; $4cf0: $a0
	cpl                                              ; $4cf1: $2f
	ldh a, [rHDMA5]                                  ; $4cf2: $f0 $55
	ldh a, [rBCPS]                                   ; $4cf4: $f0 $68
	ld b, h                                          ; $4cf6: $44
	ld c, c                                          ; $4cf7: $49
	ld c, e                                          ; $4cf8: $4b
	ld [hl], a                                       ; $4cf9: $77
	jr c, jr_099_4d4e                                ; $4cfa: $38 $52

	ld a, $3d                                        ; $4cfc: $3e $3d
	ld e, l                                          ; $4cfe: $5d
	ld e, d                                          ; $4cff: $5a
	ld c, b                                          ; $4d00: $48
	and b                                            ; $4d01: $a0
	cpl                                              ; $4d02: $2f
	db $eb                                           ; $4d03: $eb
	db $f4                                           ; $4d04: $f4
	inc [hl]                                         ; $4d05: $34
	ld l, d                                          ; $4d06: $6a
	ld l, b                                          ; $4d07: $68
	ld b, [hl]                                       ; $4d08: $46
	ld a, [hl-]                                      ; $4d09: $3a
	dec a                                            ; $4d0a: $3d
	ld b, a                                          ; $4d0b: $47
	add hl, bc                                       ; $4d0c: $09
	cpl                                              ; $4d0d: $2f
	add d                                            ; $4d0e: $82
	ld h, e                                          ; $4d0f: $63
	ld a, [hl-]                                      ; $4d10: $3a
	ld e, l                                          ; $4d11: $5d
	ld c, l                                          ; $4d12: $4d
	ld a, e                                          ; $4d13: $7b
	ld a, [hl-]                                      ; $4d14: $3a
	ld d, b                                          ; $4d15: $50
	ld a, [hl-]                                      ; $4d16: $3a
	jr c, jr_099_4d6d                                ; $4d17: $38 $54

	ld c, c                                          ; $4d19: $49
	ld d, e                                          ; $4d1a: $53
	ld b, [hl]                                       ; $4d1b: $46
	dec sp                                           ; $4d1c: $3b
	ccf                                              ; $4d1d: $3f
	add hl, bc                                       ; $4d1e: $09
	cpl                                              ; $4d1f: $2f
	ld d, h                                          ; $4d20: $54
	ld b, c                                          ; $4d21: $41
	ld a, [hl-]                                      ; $4d22: $3a
	ldh a, [$28]                                     ; $4d23: $f0 $28
	ld b, a                                          ; $4d25: $47
	inc [hl]                                         ; $4d26: $34
	add hl, bc                                       ; $4d27: $09
	cpl                                              ; $4d28: $2f
	pop af                                           ; $4d29: $f1
	ld bc, $4df0                                     ; $4d2a: $01 $f0 $4d
	sub h                                            ; $4d2d: $94
	ld a, $3f                                        ; $4d2e: $3e $3f
	ld [$a0b4], a                                    ; $4d30: $ea $b4 $a0
	cpl                                              ; $4d33: $2f
	ld h, $43                                        ; $4d34: $26 $43
	ldh a, [$34]                                     ; $4d36: $f0 $34
	ld b, a                                          ; $4d38: $47
	inc [hl]                                         ; $4d39: $34
	jr c, jr_099_4d74                                ; $4d3a: $38 $38

	ld b, l                                          ; $4d3c: $45
	and b                                            ; $4d3d: $a0
	cpl                                              ; $4d3e: $2f
	add d                                            ; $4d3f: $82
	jr c, jr_099_4d7f                                ; $4d40: $38 $3d

	jr c, jr_099_4d98                                ; $4d42: $38 $54

	ld c, c                                          ; $4d44: $49
	dec sp                                           ; $4d45: $3b
	ccf                                              ; $4d46: $3f
	inc [hl]                                         ; $4d47: $34
	ld l, e                                          ; $4d48: $6b
	ld [hl], $25                                     ; $4d49: $36 $25
	add hl, bc                                       ; $4d4b: $09
	cpl                                              ; $4d4c: $2f
	ld l, a                                          ; $4d4d: $6f

jr_099_4d4e:
	ld c, e                                          ; $4d4e: $4b
	inc [hl]                                         ; $4d4f: $34
	pop af                                           ; $4d50: $f1
	ld de, $65f0                                     ; $4d51: $11 $f0 $65
	ld d, e                                          ; $4d54: $53
	ldh a, [c]                                       ; $4d55: $f2
	ld e, c                                          ; $4d56: $59
	inc a                                            ; $4d57: $3c
	dec sp                                           ; $4d58: $3b
	dec a                                            ; $4d59: $3d
	ld a, c                                          ; $4d5a: $79
	jr c, jr_099_4d99                                ; $4d5b: $38 $3c

	inc [hl]                                         ; $4d5d: $34
	add hl, bc                                       ; $4d5e: $09
	cpl                                              ; $4d5f: $2f
	db $ed                                           ; $4d60: $ed
	ld h, d                                          ; $4d61: $62
	ld c, a                                          ; $4d62: $4f
	ld b, [hl]                                       ; $4d63: $46
	ld d, d                                          ; $4d64: $52
	ld d, a                                          ; $4d65: $57
	jr c, jr_099_4da2                                ; $4d66: $38 $3a

	ld d, l                                          ; $4d68: $55
	ccf                                              ; $4d69: $3f
	inc [hl]                                         ; $4d6a: $34
	add hl, bc                                       ; $4d6b: $09
	cpl                                              ; $4d6c: $2f

jr_099_4d6d:
	pop af                                           ; $4d6d: $f1
	ld a, e                                          ; $4d6e: $7b
	ldh a, [hDisp1_WY]                                     ; $4d6f: $f0 $95
	ld c, e                                          ; $4d71: $4b
	adc b                                            ; $4d72: $88
	ld h, d                                          ; $4d73: $62

jr_099_4d74:
	ldh a, [$fa]                                     ; $4d74: $f0 $fa
	ldh a, [$be]                                     ; $4d76: $f0 $be
	ld d, h                                          ; $4d78: $54
	ld c, c                                          ; $4d79: $49
	sbc l                                            ; $4d7a: $9d
	ld d, b                                          ; $4d7b: $50
	jr c, jr_099_4dbc                                ; $4d7c: $38 $3e

	inc a                                            ; $4d7e: $3c

jr_099_4d7f:
	add hl, bc                                       ; $4d7f: $09
	cpl                                              ; $4d80: $2f
	ld b, [hl]                                       ; $4d81: $46
	ld d, a                                          ; $4d82: $57
	ld d, d                                          ; $4d83: $52
	ld a, c                                          ; $4d84: $79
	ld b, c                                          ; $4d85: $41
	and b                                            ; $4d86: $a0
	cpl                                              ; $4d87: $2f
	ld b, b                                          ; $4d88: $40
	ld a, $3f                                        ; $4d89: $3e $3f
	inc [hl]                                         ; $4d8b: $34
	adc b                                            ; $4d8c: $88
	ld h, d                                          ; $4d8d: $62
	ldh a, [$fa]                                     ; $4d8e: $f0 $fa
	ldh a, [$be]                                     ; $4d90: $f0 $be
	dec a                                            ; $4d92: $3d
	ldh a, [rKEY1]                                   ; $4d93: $f0 $4d
	ld b, a                                          ; $4d95: $47
	inc [hl]                                         ; $4d96: $34
	add hl, bc                                       ; $4d97: $09

jr_099_4d98:
	cpl                                              ; $4d98: $2f

jr_099_4d99:
	ld b, b                                          ; $4d99: $40
	ld b, d                                          ; $4d9a: $42
	ldh a, [rAUD2HIGH]                               ; $4d9b: $f0 $19
	ld b, d                                          ; $4d9d: $42
	pop af                                           ; $4d9e: $f1
	ld [hl], b                                       ; $4d9f: $70
	ldh a, [rHDMA2]                                  ; $4da0: $f0 $52

jr_099_4da2:
	ld b, a                                          ; $4da2: $47
	di                                               ; $4da3: $f3
	ld a, [hl]                                       ; $4da4: $7e
	ld c, l                                          ; $4da5: $4d
	inc [hl]                                         ; $4da6: $34
	add hl, bc                                       ; $4da7: $09
	cpl                                              ; $4da8: $2f
	ldh a, [rHDMA4]                                  ; $4da9: $f0 $54
	ld a, $f5                                        ; $4dab: $3e $f5
	ld d, b                                          ; $4dad: $50
	push af                                          ; $4dae: $f5
	ld d, c                                          ; $4daf: $51
	ld a, $3f                                        ; $4db0: $3e $3f
	ld a, $52                                        ; $4db2: $3e $52
	add hl, sp                                       ; $4db4: $39
	db $ed                                           ; $4db5: $ed
	ld e, l                                          ; $4db6: $5d
	ld d, e                                          ; $4db7: $53
	add hl, bc                                       ; $4db8: $09
	cpl                                              ; $4db9: $2f
	pop af                                           ; $4dba: $f1
	ldh [c], a                                       ; $4dbb: $e2

jr_099_4dbc:
	ld e, l                                          ; $4dbc: $5d
	ld a, [hl-]                                      ; $4dbd: $3a
	ld d, l                                          ; $4dbe: $55
	ccf                                              ; $4dbf: $3f
	inc [hl]                                         ; $4dc0: $34
	add hl, bc                                       ; $4dc1: $09
	cpl                                              ; $4dc2: $2f
	adc b                                            ; $4dc3: $88
	sub c                                            ; $4dc4: $91
	ld b, d                                          ; $4dc5: $42
	db $ed                                           ; $4dc6: $ed
	ld l, a                                          ; $4dc7: $6f
	ld h, c                                          ; $4dc8: $61
	ld h, d                                          ; $4dc9: $62
	add hl, bc                                       ; $4dca: $09
	cpl                                              ; $4dcb: $2f
	di                                               ; $4dcc: $f3
	ld l, d                                          ; $4dcd: $6a

jr_099_4dce:
	ld h, c                                          ; $4dce: $61
	ldh a, [$79]                                     ; $4dcf: $f0 $79
	ld e, l                                          ; $4dd1: $5d
	ld d, b                                          ; $4dd2: $50
	ld c, l                                          ; $4dd3: $4d
	ld a, [hl-]                                      ; $4dd4: $3a
	jr c, jr_099_4e21                                ; $4dd5: $38 $4a

	jr c, jr_099_4e27                                ; $4dd7: $38 $4e

	add hl, bc                                       ; $4dd9: $09
	cpl                                              ; $4dda: $2f
	di                                               ; $4ddb: $f3
	ld [bc], a                                       ; $4ddc: $02
	pop af                                           ; $4ddd: $f1
	ld [$ed3a], a                                    ; $4dde: $ea $3a $ed
	ld e, l                                          ; $4de1: $5d
	ld d, e                                          ; $4de2: $53
	inc [hl]                                         ; $4de3: $34
	add hl, bc                                       ; $4de4: $09
	cpl                                              ; $4de5: $2f
	sbc h                                            ; $4de6: $9c
	dec sp                                           ; $4de7: $3b
	ld c, c                                          ; $4de8: $49
	ldh a, [c]                                       ; $4de9: $f2
	add h                                            ; $4dea: $84
	ldh a, [$d9]                                     ; $4deb: $f0 $d9
	dec a                                            ; $4ded: $3d
	ld a, $55                                        ; $4dee: $3e $55
	ccf                                              ; $4df0: $3f
	ld c, b                                          ; $4df1: $48
	and b                                            ; $4df2: $a0
	cpl                                              ; $4df3: $2f
	ld c, d                                          ; $4df4: $4a
	ld c, a                                          ; $4df5: $4f
	inc [hl]                                         ; $4df6: $34
	ld l, d                                          ; $4df7: $6a
	ld l, b                                          ; $4df8: $68
	ld c, c                                          ; $4df9: $49
	jr c, jr_099_4e35                                ; $4dfa: $38 $39

	ld l, b                                          ; $4dfc: $68
	ld h, d                                          ; $4dfd: $62
	db $f4                                           ; $4dfe: $f4
	rst SubAFromBC                                          ; $4dff: $e7
	ld b, a                                          ; $4e00: $47
	add hl, bc                                       ; $4e01: $09

jr_099_4e02:
	cpl                                              ; $4e02: $2f
	ld l, d                                          ; $4e03: $6a
	ld d, d                                          ; $4e04: $52
	ld c, d                                          ; $4e05: $4a
	ld b, d                                          ; $4e06: $42
	db $ed                                           ; $4e07: $ed
	ld e, l                                          ; $4e08: $5d
	ld h, d                                          ; $4e09: $62
	ldh a, [$5d]                                     ; $4e0a: $f0 $5d
	ld e, [hl]                                       ; $4e0c: $5e
	ld b, l                                          ; $4e0d: $45
	add hl, sp                                       ; $4e0e: $39
	ld c, c                                          ; $4e0f: $49
	add hl, bc                                       ; $4e10: $09
	cpl                                              ; $4e11: $2f
	ld [hl], a                                       ; $4e12: $77
	xor $1f                                          ; $4e13: $ee $1f
	ld c, d                                          ; $4e15: $4a
	ld d, c                                          ; $4e16: $51
	and b                                            ; $4e17: $a0
	cpl                                              ; $4e18: $2f
	ld h, $43                                        ; $4e19: $26 $43
	ld e, d                                          ; $4e1b: $5a
	inc [hl]                                         ; $4e1c: $34
	db $ec                                           ; $4e1d: $ec
	db $d3                                           ; $4e1e: $d3
	ld [hl], $25                                     ; $4e1f: $36 $25

jr_099_4e21:
	add hl, bc                                       ; $4e21: $09
	cpl                                              ; $4e22: $2f
	ld l, d                                          ; $4e23: $6a
	ld d, d                                          ; $4e24: $52
	ld c, d                                          ; $4e25: $4a
	inc [hl]                                         ; $4e26: $34

jr_099_4e27:
	add hl, bc                                       ; $4e27: $09
	cpl                                              ; $4e28: $2f
	adc $42                                          ; $4e29: $ce $42
	adc b                                            ; $4e2b: $88
	ld c, c                                          ; $4e2c: $49
	sub h                                            ; $4e2d: $94
	ldh a, [rHDMA3]                                  ; $4e2e: $f0 $53
	dec sp                                           ; $4e30: $3b
	ccf                                              ; $4e31: $3f
	inc [hl]                                         ; $4e32: $34
	add hl, bc                                       ; $4e33: $09
	cpl                                              ; $4e34: $2f

jr_099_4e35:
	ld l, a                                          ; $4e35: $6f
	ld b, d                                          ; $4e36: $42
	ld [hl], a                                       ; $4e37: $77
	jr c, jr_099_4dce                                ; $4e38: $38 $94

	ld b, d                                          ; $4e3a: $42
	ldh a, [rAUD2HIGH]                               ; $4e3b: $f0 $19
	ld b, a                                          ; $4e3d: $47
	add hl, bc                                       ; $4e3e: $09
	cpl                                              ; $4e3f: $2f
	ldh a, [$8d]                                     ; $4e40: $f0 $8d
	ld a, $3f                                        ; $4e42: $3e $3f
	ld e, h                                          ; $4e44: $5c
	ld d, d                                          ; $4e45: $52
	ld a, $3d                                        ; $4e46: $3e $3d
	and b                                            ; $4e48: $a0
	cpl                                              ; $4e49: $2f
	ld c, d                                          ; $4e4a: $4a
	ld c, a                                          ; $4e4b: $4f
	inc [hl]                                         ; $4e4c: $34
	ld b, [hl]                                       ; $4e4d: $46
	ld a, [hl-]                                      ; $4e4e: $3a
	dec a                                            ; $4e4f: $3d
	ld c, c                                          ; $4e50: $49
	ldh a, [$2d]                                     ; $4e51: $f0 $2d
	ld d, a                                          ; $4e53: $57
	ldh a, [rTMA]                                    ; $4e54: $f0 $06
	dec sp                                           ; $4e56: $3b
	dec a                                            ; $4e57: $3d
	add hl, bc                                       ; $4e58: $09
	cpl                                              ; $4e59: $2f
	ldh a, [rAUD1ENV]                                ; $4e5a: $f0 $12
	sbc a                                            ; $4e5c: $9f
	ldh a, [rTIMA]                                   ; $4e5d: $f0 $05
	pop af                                           ; $4e5f: $f1
	rrca                                             ; $4e60: $0f
	ld b, d                                          ; $4e61: $42
	ldh a, [rOBP1]                                   ; $4e62: $f0 $49
	ccf                                              ; $4e64: $3f
	ld h, d                                          ; $4e65: $62
	add hl, bc                                       ; $4e66: $09
	cpl                                              ; $4e67: $2f
	dec a                                            ; $4e68: $3d
	ld b, h                                          ; $4e69: $44
	ld b, d                                          ; $4e6a: $42
	ld [hl], a                                       ; $4e6b: $77
	jr c, jr_099_4e02                                ; $4e6c: $38 $94

	ld b, h                                          ; $4e6e: $44
	ld e, l                                          ; $4e6f: $5d
	ld b, a                                          ; $4e70: $47
	add hl, bc                                       ; $4e71: $09
	cpl                                              ; $4e72: $2f
	ld a, $3d                                        ; $4e73: $3e $3d
	ld d, l                                          ; $4e75: $55
	ld a, [hl-]                                      ; $4e76: $3a
	jr c, jr_099_4eb5                                ; $4e77: $38 $3c

	ld d, b                                          ; $4e79: $50
	ld c, b                                          ; $4e7a: $48
	inc [hl]                                         ; $4e7b: $34
	add hl, bc                                       ; $4e7c: $09
	cpl                                              ; $4e7d: $2f
	pop af                                           ; $4e7e: $f1
	add hl, de                                       ; $4e7f: $19
	pop af                                           ; $4e80: $f1
	dec c                                            ; $4e81: $0d
	ld b, d                                          ; $4e82: $42
	ld b, l                                          ; $4e83: $45
	add hl, sp                                       ; $4e84: $39
	ld a, [hl-]                                      ; $4e85: $3a
	ldh a, [$c9]                                     ; $4e86: $f0 $c9
	pop af                                           ; $4e88: $f1
	ld c, h                                          ; $4e89: $4c
	ld b, h                                          ; $4e8a: $44
	ld e, l                                          ; $4e8b: $5d
	ld b, d                                          ; $4e8c: $42
	sbc d                                            ; $4e8d: $9a
	ld b, a                                          ; $4e8e: $47
	add hl, bc                                       ; $4e8f: $09
	cpl                                              ; $4e90: $2f
	ld a, $3d                                        ; $4e91: $3e $3d
	ld d, l                                          ; $4e93: $55
	ld a, [hl-]                                      ; $4e94: $3a
	jr c, jr_099_4ed3                                ; $4e95: $38 $3c

	ld d, b                                          ; $4e97: $50
	inc [hl]                                         ; $4e98: $34
	add hl, bc                                       ; $4e99: $09
	cpl                                              ; $4e9a: $2f
	ld l, a                                          ; $4e9b: $6f
	ld b, d                                          ; $4e9c: $42
	ld l, l                                          ; $4e9d: $6d
	ldh a, [rTIMA]                                   ; $4e9e: $f0 $05
	ldh a, [rTAC]                                    ; $4ea0: $f0 $07
	ld b, d                                          ; $4ea2: $42
	ldh a, [c]                                       ; $4ea3: $f2
	sub h                                            ; $4ea4: $94
	ld a, a                                          ; $4ea5: $7f
	ld h, d                                          ; $4ea6: $62
	sub h                                            ; $4ea7: $94
	ld a, $3f                                        ; $4ea8: $3e $3f
	add hl, bc                                       ; $4eaa: $09
	cpl                                              ; $4eab: $2f
	add d                                            ; $4eac: $82
	jr c, jr_099_4f01                                ; $4ead: $38 $52

	ld d, c                                          ; $4eaf: $51
	and b                                            ; $4eb0: $a0
	cpl                                              ; $4eb1: $2f
	adc e                                            ; $4eb2: $8b
	ld e, h                                          ; $4eb3: $5c
	ld c, d                                          ; $4eb4: $4a

jr_099_4eb5:
	ld d, c                                          ; $4eb5: $51
	and b                                            ; $4eb6: $a0
	cpl                                              ; $4eb7: $2f
	pop af                                           ; $4eb8: $f1
	ld [hl], b                                       ; $4eb9: $70
	add h                                            ; $4eba: $84
	ld e, e                                          ; $4ebb: $5b
	ld d, [hl]                                       ; $4ebc: $56
	ld a, [hl-]                                      ; $4ebd: $3a
	ld d, l                                          ; $4ebe: $55
	inc [hl]                                         ; $4ebf: $34
	add hl, bc                                       ; $4ec0: $09
	cpl                                              ; $4ec1: $2f
	ld h, h                                          ; $4ec2: $64
	db $ed                                           ; $4ec3: $ed
	ld h, d                                          ; $4ec4: $62
	ld c, d                                          ; $4ec5: $4a
	ld c, a                                          ; $4ec6: $4f
	db $eb                                           ; $4ec7: $eb
	add a                                            ; $4ec8: $87
	and b                                            ; $4ec9: $a0
	cpl                                              ; $4eca: $2f
	db $ed                                           ; $4ecb: $ed
	ld a, c                                          ; $4ecc: $79
	ld a, $3f                                        ; $4ecd: $3e $3f
	inc a                                            ; $4ecf: $3c
	ld d, b                                          ; $4ed0: $50
	ld c, a                                          ; $4ed1: $4f
	inc [hl]                                         ; $4ed2: $34

jr_099_4ed3:
	sbc h                                            ; $4ed3: $9c
	dec sp                                           ; $4ed4: $3b
	ld c, c                                          ; $4ed5: $49
	add hl, bc                                       ; $4ed6: $09
	cpl                                              ; $4ed7: $2f
	ld b, [hl]                                       ; $4ed8: $46
	ld a, [hl-]                                      ; $4ed9: $3a
	dec a                                            ; $4eda: $3d
	ld b, a                                          ; $4edb: $47
	ldh a, [rHDMA3]                                  ; $4edc: $f0 $53
	ld e, [hl]                                       ; $4ede: $5e
	ld c, [hl]                                       ; $4edf: $4e
	ld a, [hl-]                                      ; $4ee0: $3a
	ld d, b                                          ; $4ee1: $50
	ld c, b                                          ; $4ee2: $48
	and b                                            ; $4ee3: $a0
	cpl                                              ; $4ee4: $2f
	ld h, $43                                        ; $4ee5: $26 $43
	ldh a, [$31]                                     ; $4ee7: $f0 $31
	ld h, d                                          ; $4ee9: $62
	add d                                            ; $4eea: $82
	add hl, sp                                       ; $4eeb: $39
	ld c, c                                          ; $4eec: $49
	add hl, bc                                       ; $4eed: $09
	cpl                                              ; $4eee: $2f
	halt                                             ; $4eef: $76
	ld c, a                                          ; $4ef0: $4f
	db $ec                                           ; $4ef1: $ec
	rst SubAFromDE                                          ; $4ef2: $df
	ld b, d                                          ; $4ef3: $42
	sbc d                                            ; $4ef4: $9a
	ld d, e                                          ; $4ef5: $53
	ld c, b                                          ; $4ef6: $48
	dec [hl]                                         ; $4ef7: $35
	dec h                                            ; $4ef8: $25
	add hl, bc                                       ; $4ef9: $09
	cpl                                              ; $4efa: $2f
	ldh a, [$08]                                     ; $4efb: $f0 $08
	inc [hl]                                         ; $4efd: $34
	adc b                                            ; $4efe: $88
	sub c                                            ; $4eff: $91
	ld c, d                                          ; $4f00: $4a

jr_099_4f01:
	ld d, c                                          ; $4f01: $51
	inc a                                            ; $4f02: $3c
	ld c, b                                          ; $4f03: $48
	and b                                            ; $4f04: $a0
	cpl                                              ; $4f05: $2f
	sbc $34                                          ; $4f06: $de $34
	ld d, h                                          ; $4f08: $54
	ld b, c                                          ; $4f09: $41
	ld a, [hl-]                                      ; $4f0a: $3a
	ld l, a                                          ; $4f0b: $6f
	ld c, d                                          ; $4f0c: $4a
	add hl, bc                                       ; $4f0d: $09
	cpl                                              ; $4f0e: $2f
	db $eb                                           ; $4f0f: $eb
	add a                                            ; $4f10: $87
	inc a                                            ; $4f11: $3c
	ld c, b                                          ; $4f12: $48
	and c                                            ; $4f13: $a1
	cpl                                              ; $4f14: $2f
	ld h, $43                                        ; $4f15: $26 $43
	db $ec                                           ; $4f17: $ec
	dec l                                            ; $4f18: $2d
	ld b, h                                          ; $4f19: $44
	ld b, l                                          ; $4f1a: $45
	inc [hl]                                         ; $4f1b: $34
	add hl, bc                                       ; $4f1c: $09
	cpl                                              ; $4f1d: $2f
	adc e                                            ; $4f1e: $8b
	ld e, h                                          ; $4f1f: $5c
	ld b, h                                          ; $4f20: $44
	ld b, l                                          ; $4f21: $45
	inc [hl]                                         ; $4f22: $34
	db $ec                                           ; $4f23: $ec
	rst SubAFromDE                                          ; $4f24: $df
	dec [hl]                                         ; $4f25: $35
	dec h                                            ; $4f26: $25
	add hl, bc                                       ; $4f27: $09
	cpl                                              ; $4f28: $2f
	ldh a, [$29]                                     ; $4f29: $f0 $29
	ld a, $38                                        ; $4f2b: $3e $38
	ld c, d                                          ; $4f2d: $4a
	ld d, c                                          ; $4f2e: $51
	ld c, b                                          ; $4f2f: $48
	and b                                            ; $4f30: $a0
	cpl                                              ; $4f31: $2f
	ld b, [hl]                                       ; $4f32: $46
	dec sp                                           ; $4f33: $3b
	ld hl, $10ee                                     ; $4f34: $21 $ee $10
	add hl, bc                                       ; $4f37: $09
	cpl                                              ; $4f38: $2f
	ld h, $43                                        ; $4f39: $26 $43
	ld b, [hl]                                       ; $4f3b: $46
	dec sp                                           ; $4f3c: $3b
	inc [hl]                                         ; $4f3d: $34
	pop af                                           ; $4f3e: $f1
	adc $3a                                          ; $4f3f: $ce $3a
	jr c, @+$37                                      ; $4f41: $38 $35

	db $ec                                           ; $4f43: $ec
	rst SubAFromDE                                          ; $4f44: $df
	dec [hl]                                         ; $4f45: $35
	dec h                                            ; $4f46: $25
	add hl, bc                                       ; $4f47: $09
	cpl                                              ; $4f48: $2f
	add hl, sp                                       ; $4f49: $39
	ldh a, [rSCY]                                    ; $4f4a: $f0 $42
	ldh a, [rSCY]                                    ; $4f4c: $f0 $42
	ldh a, [rSCY]                                    ; $4f4e: $f0 $42
	xor $10                                          ; $4f50: $ee $10
	and b                                            ; $4f52: $a0
	cpl                                              ; $4f53: $2f
	pop af                                           ; $4f54: $f1
	ld de, $65f0                                     ; $4f55: $11 $f0 $65
	ld d, e                                          ; $4f58: $53
	ldh a, [c]                                       ; $4f59: $f2
	ld e, c                                          ; $4f5a: $59
	jr c, jr_099_4f9f                                ; $4f5b: $38 $42

	ld c, a                                          ; $4f5d: $4f
	jr c, jr_099_4f98                                ; $4f5e: $38 $38

	ld c, a                                          ; $4f60: $4f
	ld b, d                                          ; $4f61: $42
	ld c, d                                          ; $4f62: $4a
	ld d, c                                          ; $4f63: $51
	ld c, h                                          ; $4f64: $4c
	and b                                            ; $4f65: $a0
	cpl                                              ; $4f66: $2f
	ld d, h                                          ; $4f67: $54
	add hl, sp                                       ; $4f68: $39
	ld l, [hl]                                       ; $4f69: $6e
	dec sp                                           ; $4f6a: $3b
	ccf                                              ; $4f6b: $3f
	inc [hl]                                         ; $4f6c: $34
	ld b, [hl]                                       ; $4f6d: $46
	ld a, [hl-]                                      ; $4f6e: $3a
	dec a                                            ; $4f6f: $3d
	ld b, a                                          ; $4f70: $47
	add hl, bc                                       ; $4f71: $09
	cpl                                              ; $4f72: $2f
	ldh a, [c]                                       ; $4f73: $f2
	sub [hl]                                         ; $4f74: $96
	ld e, h                                          ; $4f75: $5c
	pop af                                           ; $4f76: $f1
	jr nc, jr_099_4fea                               ; $4f77: $30 $71

	ccf                                              ; $4f79: $3f
	pop af                                           ; $4f7a: $f1
	and c                                            ; $4f7b: $a1
	ld e, [hl]                                       ; $4f7c: $5e
	ld c, [hl]                                       ; $4f7d: $4e
	ld b, c                                          ; $4f7e: $41
	ld c, d                                          ; $4f7f: $4a
	ld d, c                                          ; $4f80: $51
	inc a                                            ; $4f81: $3c
	ld d, b                                          ; $4f82: $50
	ld c, b                                          ; $4f83: $48
	and b                                            ; $4f84: $a0
	cpl                                              ; $4f85: $2f
	db $ec                                           ; $4f86: $ec
	db $eb                                           ; $4f87: $eb
	inc [hl]                                         ; $4f88: $34
	add hl, bc                                       ; $4f89: $09
	cpl                                              ; $4f8a: $2f
	ld b, b                                          ; $4f8b: $40
	ld b, d                                          ; $4f8c: $42
	ld d, d                                          ; $4f8d: $52
	ld d, d                                          ; $4f8e: $52
	ld c, d                                          ; $4f8f: $4a
	jr c, jr_099_4fd1                                ; $4f90: $38 $3f

	ld d, l                                          ; $4f92: $55
	ld b, h                                          ; $4f93: $44
	ld e, b                                          ; $4f94: $58
	jr c, jr_099_4fdf                                ; $4f95: $38 $48

	and b                                            ; $4f97: $a0

jr_099_4f98:
	add hl, bc                                       ; $4f98: $09
	cpl                                              ; $4f99: $2f
	ld h, $43                                        ; $4f9a: $26 $43
	ldh a, [$d8]                                     ; $4f9c: $f0 $d8
	inc [hl]                                         ; $4f9e: $34

jr_099_4f9f:
	db $ec                                           ; $4f9f: $ec
	ldh [rOBP0], a                                   ; $4fa0: $e0 $48
	dec [hl]                                         ; $4fa2: $35
	dec h                                            ; $4fa3: $25
	add hl, bc                                       ; $4fa4: $09
	cpl                                              ; $4fa5: $2f
	db $ec                                           ; $4fa6: $ec
	db $dd                                           ; $4fa7: $dd
	ld c, b                                          ; $4fa8: $48
	and b                                            ; $4fa9: $a0
	cpl                                              ; $4faa: $2f
	jr c, jr_099_500b                                ; $4fab: $38 $5e

	ld c, b                                          ; $4fad: $48
	and b                                            ; $4fae: $a0
	cpl                                              ; $4faf: $2f
	jp hl                                            ; $4fb0: $e9


	and h                                            ; $4fb1: $a4
	and b                                            ; $4fb2: $a0
	cpl                                              ; $4fb3: $2f
	ld d, h                                          ; $4fb4: $54
	ld b, c                                          ; $4fb5: $41
	ld a, [hl-]                                      ; $4fb6: $3a
	ldh a, [$28]                                     ; $4fb7: $f0 $28
	ld b, a                                          ; $4fb9: $47
	pop af                                           ; $4fba: $f1
	ld bc, $4df0                                     ; $4fbb: $01 $f0 $4d
	sub h                                            ; $4fbe: $94
	ld a, $3f                                        ; $4fbf: $3e $3f
	ld c, b                                          ; $4fc1: $48
	and b                                            ; $4fc2: $a0
	cpl                                              ; $4fc3: $2f
	ld h, $43                                        ; $4fc4: $26 $43
	ld e, d                                          ; $4fc6: $5a
	inc [hl]                                         ; $4fc7: $34
	db $eb                                           ; $4fc8: $eb
	rst FarCall                                          ; $4fc9: $f7
	and c                                            ; $4fca: $a1
	cpl                                              ; $4fcb: $2f
	db $ec                                           ; $4fcc: $ec
	ldh [$50], a                                     ; $4fcd: $e0 $50
	ld a, $55                                        ; $4fcf: $3e $55

jr_099_4fd1:
	ld a, [hl-]                                      ; $4fd1: $3a
	jr c, jr_099_5019                                ; $4fd2: $38 $45

	dec [hl]                                         ; $4fd4: $35
	dec h                                            ; $4fd5: $25
	add hl, bc                                       ; $4fd6: $09
	cpl                                              ; $4fd7: $2f
	jr c, jr_099_500e                                ; $4fd8: $38 $34

	jr c, jr_099_5014                                ; $4fda: $38 $38

	ld b, d                                          ; $4fdc: $42
	ld b, l                                          ; $4fdd: $45
	and b                                            ; $4fde: $a0

jr_099_4fdf:
	cpl                                              ; $4fdf: $2f
	db $ec                                           ; $4fe0: $ec
	ld h, [hl]                                       ; $4fe1: $66
	ldh a, [$5d]                                     ; $4fe2: $f0 $5d
	ld h, e                                          ; $4fe4: $63
	ld c, [hl]                                       ; $4fe5: $4e
	ld d, h                                          ; $4fe6: $54
	ld c, c                                          ; $4fe7: $49
	ld b, a                                          ; $4fe8: $47
	add hl, bc                                       ; $4fe9: $09

jr_099_4fea:
	cpl                                              ; $4fea: $2f
	ldh a, [$ec]                                     ; $4feb: $f0 $ec
	ld [hl], c                                       ; $4fed: $71
	dec a                                            ; $4fee: $3d
	ld b, c                                          ; $4fef: $41
	ld b, h                                          ; $4ff0: $44
	inc a                                            ; $4ff1: $3c
	ld d, b                                          ; $4ff2: $50
	ld c, b                                          ; $4ff3: $48
	and b                                            ; $4ff4: $a0
	cpl                                              ; $4ff5: $2f
	ld h, $43                                        ; $4ff6: $26 $43
	ld e, [hl]                                       ; $4ff8: $5e
	ld [hl], $f0                                     ; $4ff9: $36 $f0

jr_099_4ffb:
	ld e, l                                          ; $4ffb: $5d
	ld h, e                                          ; $4ffc: $63
	ld c, [hl]                                       ; $4ffd: $4e
	ld [hl], $25                                     ; $4ffe: $36 $25
	add hl, bc                                       ; $5000: $09
	cpl                                              ; $5001: $2f
	ld b, b                                          ; $5002: $40
	add hl, sp                                       ; $5003: $39
	inc [hl]                                         ; $5004: $34
	ldh a, [$5d]                                     ; $5005: $f0 $5d
	ld h, e                                          ; $5007: $63
	ld c, [hl]                                       ; $5008: $4e
	ld b, d                                          ; $5009: $42
	and b                                            ; $500a: $a0

jr_099_500b:
	cpl                                              ; $500b: $2f
	ld l, d                                          ; $500c: $6a
	ld d, d                                          ; $500d: $52

jr_099_500e:
	ld c, d                                          ; $500e: $4a
	ld b, d                                          ; $500f: $42
	ld l, a                                          ; $5010: $6f
	ld c, e                                          ; $5011: $4b
	inc [hl]                                         ; $5012: $34
	add hl, bc                                       ; $5013: $09

jr_099_5014:
	cpl                                              ; $5014: $2f
	db $ed                                           ; $5015: $ed
	ld e, l                                          ; $5016: $5d
	ld b, d                                          ; $5017: $42
	pop af                                           ; $5018: $f1

jr_099_5019:
	and e                                            ; $5019: $a3
	pop af                                           ; $501a: $f1
	ld [hl], d                                       ; $501b: $72
	ld b, a                                          ; $501c: $47
	db $f4                                           ; $501d: $f4
	add d                                            ; $501e: $82
	ld c, l                                          ; $501f: $4d
	ccf                                              ; $5020: $3f
	add hl, bc                                       ; $5021: $09
	cpl                                              ; $5022: $2f
	add h                                            ; $5023: $84
	ld h, d                                          ; $5024: $62
	ld [hl], d                                       ; $5025: $72
	ldh a, [$a3]                                     ; $5026: $f0 $a3
	ld a, $3d                                        ; $5028: $3e $3d
	di                                               ; $502a: $f3
	ld [hl], a                                       ; $502b: $77
	ldh a, [$0d]                                     ; $502c: $f0 $0d
	ld h, d                                          ; $502e: $62
	pop af                                           ; $502f: $f1
	inc b                                            ; $5030: $04
	dec sp                                           ; $5031: $3b
	ccf                                              ; $5032: $3f
	inc [hl]                                         ; $5033: $34
	add hl, bc                                       ; $5034: $09
	cpl                                              ; $5035: $2f
	ldh a, [$98]                                     ; $5036: $f0 $98
	ld d, e                                          ; $5038: $53
	ld [hl], d                                       ; $5039: $72
	ccf                                              ; $503a: $3f
	ld c, a                                          ; $503b: $4f
	inc [hl]                                         ; $503c: $34
	add hl, bc                                       ; $503d: $09
	cpl                                              ; $503e: $2f
	ld d, c                                          ; $503f: $51
	ld [hl], b                                       ; $5040: $70
	ld d, l                                          ; $5041: $55
	ldh a, [$64]                                     ; $5042: $f0 $64
	ld a, [hl-]                                      ; $5044: $3a
	pop hl                                           ; $5045: $e1
	ld b, h                                          ; $5046: $44
	dec sp                                           ; $5047: $3b
	dec a                                            ; $5048: $3d
	and b                                            ; $5049: $a0
	cpl                                              ; $504a: $2f
	pop af                                           ; $504b: $f1
	db $fc                                           ; $504c: $fc
	ldh a, [rOCPS]                                   ; $504d: $f0 $6a
	ld b, d                                          ; $504f: $42
	pop hl                                           ; $5050: $e1
	ld d, e                                          ; $5051: $53
	add hl, bc                                       ; $5052: $09
	cpl                                              ; $5053: $2f
	ldh a, [rHDMA2]                                  ; $5054: $f0 $52
	ld b, h                                          ; $5056: $44
	ld b, d                                          ; $5057: $42
	pop af                                           ; $5058: $f1
	ld [hl], b                                       ; $5059: $70
	ld b, h                                          ; $505a: $44
	ld b, d                                          ; $505b: $42
	ld c, c                                          ; $505c: $49
	add hl, bc                                       ; $505d: $09
	cpl                                              ; $505e: $2f
	di                                               ; $505f: $f3
	ld d, $38                                        ; $5060: $16 $38
	ld c, d                                          ; $5062: $4a
	jr c, @+$50                                      ; $5063: $38 $4e

	ld b, d                                          ; $5065: $42
	ld h, d                                          ; $5066: $62
	inc [hl]                                         ; $5067: $34
	add hl, bc                                       ; $5068: $09
	cpl                                              ; $5069: $2f
	pop af                                           ; $506a: $f1
	or d                                             ; $506b: $b2
	pop af                                           ; $506c: $f1
	ld c, b                                          ; $506d: $48
	ld b, a                                          ; $506e: $47
	ld a, $3f                                        ; $506f: $3e $3f
	dec a                                            ; $5071: $3d
	ld h, e                                          ; $5072: $63
	and b                                            ; $5073: $a0
	cpl                                              ; $5074: $2f
	ld b, h                                          ; $5075: $44
	ld e, l                                          ; $5076: $5d
	ld e, d                                          ; $5077: $5a
	inc [hl]                                         ; $5078: $34
	jr c, jr_099_4ffb                                ; $5079: $38 $80

	ld b, d                                          ; $507b: $42
	ldh a, [c]                                       ; $507c: $f2
	inc b                                            ; $507d: $04
	inc a                                            ; $507e: $3c
	ld d, b                                          ; $507f: $50
	inc a                                            ; $5080: $3c
	inc [hl]                                         ; $5081: $34
	add hl, bc                                       ; $5082: $09
	cpl                                              ; $5083: $2f
	ld l, a                                          ; $5084: $6f
	ld b, d                                          ; $5085: $42
	ldh a, [rAUD2HIGH]                               ; $5086: $f0 $19
	ld b, a                                          ; $5088: $47
	add hl, bc                                       ; $5089: $09
	cpl                                              ; $508a: $2f
	ldh a, [hDisp1_OBP1]                                     ; $508b: $f0 $94
	ld [hl], c                                       ; $508d: $71
	ccf                                              ; $508e: $3f
	pop af                                           ; $508f: $f1
	adc c                                            ; $5090: $89
	ld l, h                                          ; $5091: $6c
	ldh a, [$3e]                                     ; $5092: $f0 $3e
	ldh a, [rSB]                                     ; $5094: $f0 $01
	ld c, [hl]                                       ; $5096: $4e
	ldh a, [$78]                                     ; $5097: $f0 $78
	pop af                                           ; $5099: $f1
	ldh [c], a                                       ; $509a: $e2
	ld d, e                                          ; $509b: $53
	ld c, b                                          ; $509c: $48
	add hl, bc                                       ; $509d: $09
	cpl                                              ; $509e: $2f
	ld d, c                                          ; $509f: $51
	sbc l                                            ; $50a0: $9d
	ld b, a                                          ; $50a1: $47
	inc [hl]                                         ; $50a2: $34
	ld b, [hl]                                       ; $50a3: $46
	ld a, [hl-]                                      ; $50a4: $3a
	dec a                                            ; $50a5: $3d
	ld b, a                                          ; $50a6: $47
	add hl, bc                                       ; $50a7: $09
	cpl                                              ; $50a8: $2f
	pop af                                           ; $50a9: $f1
	ld [hl], b                                       ; $50aa: $70
	ld a, $3f                                        ; $50ab: $3e $3f
	ld c, [hl]                                       ; $50ad: $4e
	ld c, c                                          ; $50ae: $49
	ld a, a                                          ; $50af: $7f
	ldh a, [$9a]                                     ; $50b0: $f0 $9a
	jr c, jr_099_50f1                                ; $50b2: $38 $3d

	ld h, e                                          ; $50b4: $63
	and b                                            ; $50b5: $a0
	cpl                                              ; $50b6: $2f
	ld c, d                                          ; $50b7: $4a
	ld c, a                                          ; $50b8: $4f
	inc [hl]                                         ; $50b9: $34
	ld l, a                                          ; $50ba: $6f
	ld c, e                                          ; $50bb: $4b
	ldh a, [$aa]                                     ; $50bc: $f0 $aa
	adc c                                            ; $50be: $89
	ld c, c                                          ; $50bf: $49
	jr c, jr_099_50fb                                ; $50c0: $38 $39

	ldh a, [$5c]                                     ; $50c2: $f0 $5c
	pop af                                           ; $50c4: $f1
	and a                                            ; $50c5: $a7
	ld b, a                                          ; $50c6: $47
	add hl, bc                                       ; $50c7: $09
	cpl                                              ; $50c8: $2f
	db $f4                                           ; $50c9: $f4
	ld l, [hl]                                       ; $50ca: $6e
	ld h, d                                          ; $50cb: $62
	db $f4                                           ; $50cc: $f4
	xor $57                                          ; $50cd: $ee $57
	pop af                                           ; $50cf: $f1
	ld a, h                                          ; $50d0: $7c
	ld a, $3d                                        ; $50d1: $3e $3d
	ldh a, [rAUD2ENV]                                ; $50d3: $f0 $17
	and b                                            ; $50d5: $a0
	cpl                                              ; $50d6: $2f
	ld b, b                                          ; $50d7: $40
	ld b, c                                          ; $50d8: $41
	ld a, [hl-]                                      ; $50d9: $3a
	db $f4                                           ; $50da: $f4
	adc c                                            ; $50db: $89
	add b                                            ; $50dc: $80
	jr c, jr_099_511c                                ; $50dd: $38 $3d

	ldh a, [$78]                                     ; $50df: $f0 $78
	pop af                                           ; $50e1: $f1
	ldh [c], a                                       ; $50e2: $e2
	ld h, d                                          ; $50e3: $62
	add hl, bc                                       ; $50e4: $09
	cpl                                              ; $50e5: $2f
	ldh a, [c]                                       ; $50e6: $f2
	and d                                            ; $50e7: $a2
	ld e, b                                          ; $50e8: $58
	ld e, [hl]                                       ; $50e9: $5e
	ld c, [hl]                                       ; $50ea: $4e
	dec a                                            ; $50eb: $3d
	ld [hl], c                                       ; $50ec: $71
	ld b, a                                          ; $50ed: $47
	inc [hl]                                         ; $50ee: $34
	add hl, bc                                       ; $50ef: $09
	cpl                                              ; $50f0: $2f

jr_099_50f1:
	xor $17                                          ; $50f1: $ee $17
	ld b, h                                          ; $50f3: $44
	ld e, l                                          ; $50f4: $5d
	ld b, a                                          ; $50f5: $47
	push af                                          ; $50f6: $f5
	ld [hl], e                                       ; $50f7: $73
	pop af                                           ; $50f8: $f1
	sub $3e                                          ; $50f9: $d6 $3e

jr_099_50fb:
	dec a                                            ; $50fb: $3d
	ld b, d                                          ; $50fc: $42
	and b                                            ; $50fd: $a0
	cpl                                              ; $50fe: $2f
	ld b, h                                          ; $50ff: $44
	ld e, l                                          ; $5100: $5d
	ld e, d                                          ; $5101: $5a
	inc [hl]                                         ; $5102: $34
	db $ed                                           ; $5103: $ed
	ld a, c                                          ; $5104: $79
	ld d, e                                          ; $5105: $53
	ldh a, [$9b]                                     ; $5106: $f0 $9b
	ldh a, [c]                                       ; $5108: $f2
	ld h, a                                          ; $5109: $67
	jr c, jr_099_514b                                ; $510a: $38 $3f

	ld d, l                                          ; $510c: $55
	ld c, [hl]                                       ; $510d: $4e
	ld c, c                                          ; $510e: $49
	inc [hl]                                         ; $510f: $34
	add hl, bc                                       ; $5110: $09
	cpl                                              ; $5111: $2f
	ld b, b                                          ; $5112: $40
	ld b, d                                          ; $5113: $42
	pop af                                           ; $5114: $f1
	ld c, h                                          ; $5115: $4c
	jr c, jr_099_516b                                ; $5116: $38 $53

	ldh a, [$9c]                                     ; $5118: $f0 $9c
	ld d, l                                          ; $511a: $55
	ld a, [hl-]                                      ; $511b: $3a

jr_099_511c:
	dec sp                                           ; $511c: $3b
	ccf                                              ; $511d: $3f
	ld e, h                                          ; $511e: $5c
	ccf                                              ; $511f: $3f
	inc [hl]                                         ; $5120: $34
	add hl, bc                                       ; $5121: $09
	cpl                                              ; $5122: $2f
	db $ed                                           ; $5123: $ed
	ld e, l                                          ; $5124: $5d
	ld c, d                                          ; $5125: $4a
	ld c, a                                          ; $5126: $4f
	ldh a, [c]                                       ; $5127: $f2
	and d                                            ; $5128: $a2
	ld e, b                                          ; $5129: $58
	ld e, [hl]                                       ; $512a: $5e
	ld e, h                                          ; $512b: $5c
	ld c, l                                          ; $512c: $4d
	ld a, [hl-]                                      ; $512d: $3a
	ld d, l                                          ; $512e: $55
	ld a, [hl-]                                      ; $512f: $3a
	dec sp                                           ; $5130: $3b
	ccf                                              ; $5131: $3f
	ld c, b                                          ; $5132: $48
	and b                                            ; $5133: $a0
	cpl                                              ; $5134: $2f
	db $ec                                           ; $5135: $ec
	jr nz, jr_099_5178                               ; $5136: $20 $40

	ld b, d                                          ; $5138: $42
	pop af                                           ; $5139: $f1
	ld c, h                                          ; $513a: $4c
	jr c, jr_099_519f                                ; $513b: $38 $62

	ldh a, [c]                                       ; $513d: $f2
	scf                                              ; $513e: $37
	ldh a, [rOBP1]                                   ; $513f: $f0 $49
	ld b, a                                          ; $5141: $47
	add hl, bc                                       ; $5142: $09
	cpl                                              ; $5143: $2f
	rst FarCall                                          ; $5144: $f7
	ld [hl], d                                       ; $5145: $72
	ldh a, [hDisp0_WY]                                     ; $5146: $f0 $88
	ld a, $45                                        ; $5148: $3e $45
	add hl, sp                                       ; $514a: $39

jr_099_514b:
	ld c, c                                          ; $514b: $49
	ld a, $3f                                        ; $514c: $3e $3f
	inc [hl]                                         ; $514e: $34
	add hl, bc                                       ; $514f: $09
	cpl                                              ; $5150: $2f
	ld b, [hl]                                       ; $5151: $46
	ld a, [hl-]                                      ; $5152: $3a
	dec a                                            ; $5153: $3d
	ld b, a                                          ; $5154: $47
	ldh a, [$fc]                                     ; $5155: $f0 $fc
	jr c, jr_099_51bb                                ; $5157: $38 $62

	di                                               ; $5159: $f3
	cp b                                             ; $515a: $b8
	ld b, c                                          ; $515b: $41
	ld b, h                                          ; $515c: $44
	ld b, d                                          ; $515d: $42
	and b                                            ; $515e: $a0
	cpl                                              ; $515f: $2f
	db $ed                                           ; $5160: $ed
	ld h, e                                          ; $5161: $63
	ld c, e                                          ; $5162: $4b
	inc [hl]                                         ; $5163: $34
	add d                                            ; $5164: $82
	ld h, e                                          ; $5165: $63
	ld a, [hl-]                                      ; $5166: $3a
	ld d, l                                          ; $5167: $55
	ccf                                              ; $5168: $3f
	ld c, a                                          ; $5169: $4f
	add hl, bc                                       ; $516a: $09

jr_099_516b:
	cpl                                              ; $516b: $2f
	ldh a, [rTAC]                                    ; $516c: $f0 $07
	inc a                                            ; $516e: $3c
	ld c, [hl]                                       ; $516f: $4e
	ld e, l                                          ; $5170: $5d
	ld e, d                                          ; $5171: $5a
	ld c, b                                          ; $5172: $48
	and b                                            ; $5173: $a0
	cpl                                              ; $5174: $2f
	ldh a, [rOBP1]                                   ; $5175: $f0 $49
	ccf                                              ; $5177: $3f

jr_099_5178:
	ld b, a                                          ; $5178: $47
	ld h, h                                          ; $5179: $64
	jr c, jr_099_51bb                                ; $517a: $38 $3f

	inc [hl]                                         ; $517c: $34
	ld l, a                                          ; $517d: $6f
	ld c, e                                          ; $517e: $4b
	ld b, [hl]                                       ; $517f: $46
	ld a, [hl-]                                      ; $5180: $3a
	dec a                                            ; $5181: $3d
	ld b, a                                          ; $5182: $47
	add hl, bc                                       ; $5183: $09
	cpl                                              ; $5184: $2f
	ldh a, [$e4]                                     ; $5185: $f0 $e4
	ld e, l                                          ; $5187: $5d
	ccf                                              ; $5188: $3f
	db $ec                                           ; $5189: $ec
	push de                                          ; $518a: $d5
	ld b, d                                          ; $518b: $42
	and b                                            ; $518c: $a0
	cpl                                              ; $518d: $2f
	ld c, a                                          ; $518e: $4f
	add hl, sp                                       ; $518f: $39
	inc [hl]                                         ; $5190: $34
	ld b, [hl]                                       ; $5191: $46
	ld a, [hl-]                                      ; $5192: $3a
	dec a                                            ; $5193: $3d
	ld b, a                                          ; $5194: $47
	ldh a, [$64]                                     ; $5195: $f0 $64
	ld h, e                                          ; $5197: $63
	ld c, l                                          ; $5198: $4d
	ld c, [hl]                                       ; $5199: $4e
	ld a, [hl-]                                      ; $519a: $3a
	ld b, c                                          ; $519b: $41
	ccf                                              ; $519c: $3f
	add hl, bc                                       ; $519d: $09
	cpl                                              ; $519e: $2f

jr_099_519f:
	ldh a, [$a4]                                     ; $519f: $f0 $a4
	ld e, [hl]                                       ; $51a1: $5e
	dec a                                            ; $51a2: $3d
	ld d, l                                          ; $51a3: $55
	ld a, [hl-]                                      ; $51a4: $3a
	jr c, @-$5e                                      ; $51a5: $38 $a0

	cpl                                              ; $51a7: $2f
	ldh a, [$f6]                                     ; $51a8: $f0 $f6
	pop af                                           ; $51aa: $f1
	inc [hl]                                         ; $51ab: $34
	ldh a, [c]                                       ; $51ac: $f2
	pop bc                                           ; $51ad: $c1
	pop af                                           ; $51ae: $f1
	ld a, d                                          ; $51af: $7a
	ld b, d                                          ; $51b0: $42
	ldh a, [rAUD2LOW]                                ; $51b1: $f0 $18
	pop af                                           ; $51b3: $f1
	ld l, d                                          ; $51b4: $6a
	ld c, a                                          ; $51b5: $4f
	di                                               ; $51b6: $f3
	ld b, d                                          ; $51b7: $42
	ccf                                              ; $51b8: $3f
	ld c, [hl]                                       ; $51b9: $4e
	ld h, e                                          ; $51ba: $63

jr_099_51bb:
	and b                                            ; $51bb: $a0
	cpl                                              ; $51bc: $2f
	db $ed                                           ; $51bd: $ed
	ld b, e                                          ; $51be: $43
	ld c, a                                          ; $51bf: $4f
	add hl, sp                                       ; $51c0: $39
	inc [hl]                                         ; $51c1: $34
	ld l, a                                          ; $51c2: $6f
	ld b, d                                          ; $51c3: $42
	ldh a, [rAUD2LOW]                                ; $51c4: $f0 $18
	pop af                                           ; $51c6: $f1
	ld l, d                                          ; $51c7: $6a
	ld c, e                                          ; $51c8: $4b
	inc [hl]                                         ; $51c9: $34
	add hl, bc                                       ; $51ca: $09
	cpl                                              ; $51cb: $2f
	ld b, [hl]                                       ; $51cc: $46
	ld a, [hl-]                                      ; $51cd: $3a
	dec a                                            ; $51ce: $3d
	ld b, a                                          ; $51cf: $47
	adc e                                            ; $51d0: $8b
	inc a                                            ; $51d1: $3c
	ld c, l                                          ; $51d2: $4d
	ld c, [hl]                                       ; $51d3: $4e
	ld d, h                                          ; $51d4: $54
	ld c, c                                          ; $51d5: $49
	ld b, a                                          ; $51d6: $47
	add hl, bc                                       ; $51d7: $09
	cpl                                              ; $51d8: $2f
	ldh a, [$5d]                                     ; $51d9: $f0 $5d
	ld h, e                                          ; $51db: $63
	dec sp                                           ; $51dc: $3b
	dec a                                            ; $51dd: $3d
	inc a                                            ; $51de: $3c
	ld d, b                                          ; $51df: $50
	ld c, b                                          ; $51e0: $48
	and b                                            ; $51e1: $a0
	cpl                                              ; $51e2: $2f
	ld h, $43                                        ; $51e3: $26 $43
	ldh a, [$31]                                     ; $51e5: $f0 $31
	ld h, d                                          ; $51e7: $62
	add d                                            ; $51e8: $82
	add hl, sp                                       ; $51e9: $39
	ld c, c                                          ; $51ea: $49
	inc [hl]                                         ; $51eb: $34
	add hl, bc                                       ; $51ec: $09
	cpl                                              ; $51ed: $2f
	halt                                             ; $51ee: $76
	ld c, a                                          ; $51ef: $4f
	db $ec                                           ; $51f0: $ec
	ldh [rSCY], a                                    ; $51f1: $e0 $42
	sbc d                                            ; $51f3: $9a
	ld d, e                                          ; $51f4: $53
	ld c, b                                          ; $51f5: $48
	dec [hl]                                         ; $51f6: $35
	dec h                                            ; $51f7: $25
	add hl, bc                                       ; $51f8: $09
	cpl                                              ; $51f9: $2f
	ldh a, [$08]                                     ; $51fa: $f0 $08
	inc [hl]                                         ; $51fc: $34
	sbc $48                                          ; $51fd: $de $48
	and c                                            ; $51ff: $a1
	cpl                                              ; $5200: $2f
	ld e, e                                          ; $5201: $5b
	ld d, [hl]                                       ; $5202: $56
	ld b, [hl]                                       ; $5203: $46
	inc [hl]                                         ; $5204: $34
	ldh a, [rAUD2LOW]                                ; $5205: $f0 $18
	pop af                                           ; $5207: $f1
	ld l, d                                          ; $5208: $6a
	ld c, e                                          ; $5209: $4b
	add hl, bc                                       ; $520a: $09
	cpl                                              ; $520b: $2f
	ldh a, [rSTAT]                                   ; $520c: $f0 $41
	pop af                                           ; $520e: $f1
	ld d, e                                          ; $520f: $53
	ld e, b                                          ; $5210: $58
	ld c, l                                          ; $5211: $4d
	dec a                                            ; $5212: $3d
	ld b, d                                          ; $5213: $42
	ld c, h                                          ; $5214: $4c
	ld c, b                                          ; $5215: $48
	and b                                            ; $5216: $a0
	cpl                                              ; $5217: $2f
	ldh a, [$29]                                     ; $5218: $f0 $29
	ld a, $38                                        ; $521a: $3e $38
	ld h, e                                          ; $521c: $63
	ld c, b                                          ; $521d: $48
	and b                                            ; $521e: $a0
	cpl                                              ; $521f: $2f
	ld e, h                                          ; $5220: $5c
	dec sp                                           ; $5221: $3b
	ld c, c                                          ; $5222: $49
	inc [hl]                                         ; $5223: $34
	ldh a, [$f6]                                     ; $5224: $f0 $f6
	pop af                                           ; $5226: $f1
	inc [hl]                                         ; $5227: $34
	ldh a, [c]                                       ; $5228: $f2
	pop bc                                           ; $5229: $c1
	pop af                                           ; $522a: $f1
	ld a, d                                          ; $522b: $7a
	ld a, $3d                                        ; $522c: $3e $3d
	ld c, c                                          ; $522e: $49
	ld a, $3f                                        ; $522f: $3e $3f
	ld c, a                                          ; $5231: $4f
	add hl, bc                                       ; $5232: $09
	cpl                                              ; $5233: $2f
	ld d, h                                          ; $5234: $54
	ld b, c                                          ; $5235: $41
	ld a, [hl-]                                      ; $5236: $3a
	ld b, a                                          ; $5237: $47
	pop af                                           ; $5238: $f1
	and d                                            ; $5239: $a2
	ld a, c                                          ; $523a: $79
	ld b, a                                          ; $523b: $47
	ld a, [hl-]                                      ; $523c: $3a
	ld c, l                                          ; $523d: $4d
	ld a, [hl-]                                      ; $523e: $3a
	inc a                                            ; $523f: $3c
	dec sp                                           ; $5240: $3b
	dec a                                            ; $5241: $3d
	ld c, c                                          ; $5242: $49
	add hl, bc                                       ; $5243: $09
	cpl                                              ; $5244: $2f
	ld [hl], a                                       ; $5245: $77
	add hl, sp                                       ; $5246: $39
	ld h, e                                          ; $5247: $63
	ld c, b                                          ; $5248: $48
	and b                                            ; $5249: $a0
	cpl                                              ; $524a: $2f
	ld h, $43                                        ; $524b: $26 $43
	halt                                             ; $524d: $76
	ld c, a                                          ; $524e: $4f
	inc [hl]                                         ; $524f: $34
	pop af                                           ; $5250: $f1
	and d                                            ; $5251: $a2
	ld a, c                                          ; $5252: $79
	ld b, h                                          ; $5253: $44
	ld b, l                                          ; $5254: $45
	dec [hl]                                         ; $5255: $35
	dec h                                            ; $5256: $25
	add hl, bc                                       ; $5257: $09
	cpl                                              ; $5258: $2f
	ld l, a                                          ; $5259: $6f
	ld c, a                                          ; $525a: $4f
	dec sp                                           ; $525b: $3b
	ld c, c                                          ; $525c: $49
	inc [hl]                                         ; $525d: $34
	add hl, bc                                       ; $525e: $09
	cpl                                              ; $525f: $2f
	ld b, [hl]                                       ; $5260: $46
	ld a, [hl-]                                      ; $5261: $3a
	dec a                                            ; $5262: $3d
	ld b, a                                          ; $5263: $47
	adc e                                            ; $5264: $8b
	inc a                                            ; $5265: $3c
	ld c, l                                          ; $5266: $4d
	ld c, [hl]                                       ; $5267: $4e
	pop hl                                           ; $5268: $e1
	ld b, a                                          ; $5269: $47
	add hl, bc                                       ; $526a: $09
	cpl                                              ; $526b: $2f
	ld a, [hl-]                                      ; $526c: $3a
	ld c, [hl]                                       ; $526d: $4e
	dec a                                            ; $526e: $3d
	ld [hl], c                                       ; $526f: $71
	ld b, a                                          ; $5270: $47
	inc [hl]                                         ; $5271: $34
	pop af                                           ; $5272: $f1
	db $dd                                           ; $5273: $dd
	ldh a, [$7f]                                     ; $5274: $f0 $7f
	ld d, c                                          ; $5276: $51
	ld c, [hl]                                       ; $5277: $4e
	ld h, e                                          ; $5278: $63
	and b                                            ; $5279: $a0
	add hl, bc                                       ; $527a: $09
	cpl                                              ; $527b: $2f
	ld h, $43                                        ; $527c: $26 $43
	inc a                                            ; $527e: $3c
	inc [hl]                                         ; $527f: $34
	db $ec                                           ; $5280: $ec
	pop hl                                           ; $5281: $e1
	ld c, b                                          ; $5282: $48
	dec [hl]                                         ; $5283: $35
	dec h                                            ; $5284: $25
	add hl, bc                                       ; $5285: $09

jr_099_5286:
	cpl                                              ; $5286: $2f
	ld b, [hl]                                       ; $5287: $46
	dec sp                                           ; $5288: $3b
	inc [hl]                                         ; $5289: $34
	pop af                                           ; $528a: $f1
	daa                                              ; $528b: $27
	inc [hl]                                         ; $528c: $34
	db $ec                                           ; $528d: $ec
	cpl                                              ; $528e: $2f
	and b                                            ; $528f: $a0
	cpl                                              ; $5290: $2f
	sbc c                                            ; $5291: $99
	dec sp                                           ; $5292: $3b
	dec a                                            ; $5293: $3d
	ld [hl], $eb                                     ; $5294: $36 $eb
	ccf                                              ; $5296: $3f
	and b                                            ; $5297: $a0
	cpl                                              ; $5298: $2f
	ld d, h                                          ; $5299: $54
	ld b, c                                          ; $529a: $41
	ld a, [hl-]                                      ; $529b: $3a
	ldh a, [$28]                                     ; $529c: $f0 $28
	ld b, a                                          ; $529e: $47
	add hl, bc                                       ; $529f: $09
	cpl                                              ; $52a0: $2f
	pop af                                           ; $52a1: $f1
	ld bc, $4df0                                     ; $52a2: $01 $f0 $4d
	sub h                                            ; $52a5: $94
	ld a, $3d                                        ; $52a6: $3e $3d
	ld d, a                                          ; $52a8: $57
	ld a, $3f                                        ; $52a9: $3e $3f
	and b                                            ; $52ab: $a0
	cpl                                              ; $52ac: $2f
	ld h, $43                                        ; $52ad: $26 $43
	ldh a, [$34]                                     ; $52af: $f0 $34
	ld b, a                                          ; $52b1: $47
	inc [hl]                                         ; $52b2: $34
	jr c, jr_099_52ed                                ; $52b3: $38 $38

	ld b, l                                          ; $52b5: $45
	dec [hl]                                         ; $52b6: $35
	ld l, e                                          ; $52b7: $6b
	ld b, d                                          ; $52b8: $42
	ldh a, [rAUD2LEN]                                ; $52b9: $f0 $16
	ld [hl], $25                                     ; $52bb: $36 $25
	add hl, bc                                       ; $52bd: $09
	cpl                                              ; $52be: $2f
	db $ed                                           ; $52bf: $ed
	ld c, [hl]                                       ; $52c0: $4e
	and b                                            ; $52c1: $a0
	cpl                                              ; $52c2: $2f
	ld l, l                                          ; $52c3: $6d
	add b                                            ; $52c4: $80
	ldh a, [$0c]                                     ; $52c5: $f0 $0c
	ld e, h                                          ; $52c7: $5c
	dec a                                            ; $52c8: $3d
	jr c, jr_099_530c                                ; $52c9: $38 $41

	ld b, h                                          ; $52cb: $44
	ld e, l                                          ; $52cc: $5d
	ld e, d                                          ; $52cd: $5a
	ld c, b                                          ; $52ce: $48
	and b                                            ; $52cf: $a0
	cpl                                              ; $52d0: $2f
	add a                                            ; $52d1: $87
	di                                               ; $52d2: $f3
	add e                                            ; $52d3: $83
	rst FarCall                                          ; $52d4: $f7
	xor [hl]                                         ; $52d5: $ae
	ld a, [hl-]                                      ; $52d6: $3a
	pop af                                           ; $52d7: $f1
	ld a, [bc]                                       ; $52d8: $0a
	pop af                                           ; $52d9: $f1
	inc h                                            ; $52da: $24
	ld b, d                                          ; $52db: $42
	pop hl                                           ; $52dc: $e1
	ld c, e                                          ; $52dd: $4b
	inc [hl]                                         ; $52de: $34
	add hl, bc                                       ; $52df: $09
	cpl                                              ; $52e0: $2f
	ldh a, [$64]                                     ; $52e1: $f0 $64
	jr c, jr_099_5286                                ; $52e3: $38 $a1

	cpl                                              ; $52e5: $2f
	ld h, $43                                        ; $52e6: $26 $43
	jr c, jr_099_5358                                ; $52e8: $38 $6e

	inc [hl]                                         ; $52ea: $34
	adc e                                            ; $52eb: $8b
	ld e, h                                          ; $52ec: $5c

jr_099_52ed:
	ld b, h                                          ; $52ed: $44
	ld e, l                                          ; $52ee: $5d
	ld e, d                                          ; $52ef: $5a
	ld c, b                                          ; $52f0: $48
	add hl, bc                                       ; $52f1: $09
	cpl                                              ; $52f2: $2f
	ld b, b                                          ; $52f3: $40
	ld c, l                                          ; $52f4: $4d
	ld b, h                                          ; $52f5: $44
	ld e, l                                          ; $52f6: $5d
	ld [hl], $25                                     ; $52f7: $36 $25
	add hl, bc                                       ; $52f9: $09
	cpl                                              ; $52fa: $2f
	ld b, [hl]                                       ; $52fb: $46
	dec sp                                           ; $52fc: $3b
	ldh a, [hDisp0_WX]                                     ; $52fd: $f0 $89
	pop af                                           ; $52ff: $f1
	inc sp                                           ; $5300: $33
	ld a, l                                          ; $5301: $7d
	ld l, c                                          ; $5302: $69
	inc [hl]                                         ; $5303: $34
	add hl, bc                                       ; $5304: $09
	cpl                                              ; $5305: $2f
	ret                                              ; $5306: $c9


	sbc c                                            ; $5307: $99
	dec sp                                           ; $5308: $3b
	ccf                                              ; $5309: $3f
	and b                                            ; $530a: $a0
	cpl                                              ; $530b: $2f

jr_099_530c:
	adc b                                            ; $530c: $88
	sub c                                            ; $530d: $91
	ld b, d                                          ; $530e: $42
	ldh a, [rAUD2LEN]                                ; $530f: $f0 $16
	ld c, e                                          ; $5311: $4b
	inc [hl]                                         ; $5312: $34
	ld d, h                                          ; $5313: $54
	ld c, l                                          ; $5314: $4d
	inc a                                            ; $5315: $3c
	ld d, b                                          ; $5316: $50
	ld a, [hl-]                                      ; $5317: $3a
	ld b, d                                          ; $5318: $42
	and b                                            ; $5319: $a0
	cpl                                              ; $531a: $2f
	db $eb                                           ; $531b: $eb
	db $f4                                           ; $531c: $f4
	inc [hl]                                         ; $531d: $34
	ld b, [hl]                                       ; $531e: $46
	ld a, [hl-]                                      ; $531f: $3a
	dec a                                            ; $5320: $3d
	ld b, a                                          ; $5321: $47
	add hl, bc                                       ; $5322: $09
	cpl                                              ; $5323: $2f
	add d                                            ; $5324: $82
	jr c, jr_099_5364                                ; $5325: $38 $3d

	jr c, @+$56                                      ; $5327: $38 $54

	ld c, c                                          ; $5329: $49
	ld d, e                                          ; $532a: $53
	ld b, [hl]                                       ; $532b: $46
	dec sp                                           ; $532c: $3b
	ccf                                              ; $532d: $3f
	ld c, b                                          ; $532e: $48
	and b                                            ; $532f: $a0
	cpl                                              ; $5330: $2f
	ld l, a                                          ; $5331: $6f
	dec sp                                           ; $5332: $3b
	ccf                                              ; $5333: $3f
	ld c, h                                          ; $5334: $4c
	inc [hl]                                         ; $5335: $34
	ldh a, [$98]                                     ; $5336: $f0 $98
	ld c, c                                          ; $5338: $49
	ld c, d                                          ; $5339: $4a
	ld c, a                                          ; $533a: $4f
	add hl, bc                                       ; $533b: $09
	cpl                                              ; $533c: $2f
	pop af                                           ; $533d: $f1
	ld h, b                                          ; $533e: $60
	ld a, [hl]                                       ; $533f: $7e
	ld d, l                                          ; $5340: $55
	ldh a, [rAUDVOL]                                 ; $5341: $f0 $24
	ld h, d                                          ; $5343: $62
	ld d, c                                          ; $5344: $51
	ld c, [hl]                                       ; $5345: $4e
	inc a                                            ; $5346: $3c
	ld d, b                                          ; $5347: $50
	inc [hl]                                         ; $5348: $34
	add hl, bc                                       ; $5349: $09
	cpl                                              ; $534a: $2f
	ld b, b                                          ; $534b: $40
	add hl, sp                                       ; $534c: $39
	ld c, e                                          ; $534d: $4b
	ld [hl], d                                       ; $534e: $72
	ld e, [hl]                                       ; $534f: $5e
	ld a, [hl-]                                      ; $5350: $3a
	inc a                                            ; $5351: $3c
	dec sp                                           ; $5352: $3b
	dec a                                            ; $5353: $3d
	inc a                                            ; $5354: $3c
	ld c, a                                          ; $5355: $4f
	add hl, bc                                       ; $5356: $09
	cpl                                              ; $5357: $2f

jr_099_5358:
	ld a, $4d                                        ; $5358: $3e $4d
	ld a, [hl-]                                      ; $535a: $3a
	jr c, jr_099_539e                                ; $535b: $38 $41

	ld b, h                                          ; $535d: $44
	ld e, l                                          ; $535e: $5d
	ld e, d                                          ; $535f: $5a
	inc [hl]                                         ; $5360: $34
	add hl, bc                                       ; $5361: $09
	cpl                                              ; $5362: $2f
	ld b, [hl]                                       ; $5363: $46

jr_099_5364:
	ld a, [hl-]                                      ; $5364: $3a
	dec a                                            ; $5365: $3d
	ld c, c                                          ; $5366: $49
	ldh a, [rAUDVOL]                                 ; $5367: $f0 $24
	ld h, d                                          ; $5369: $62
	ld a, $3f                                        ; $536a: $3e $3f
	ld c, [hl]                                       ; $536c: $4e
	ld c, c                                          ; $536d: $49
	ld e, h                                          ; $536e: $5c
	ld d, e                                          ; $536f: $53
	inc [hl]                                         ; $5370: $34
	add hl, bc                                       ; $5371: $09
	cpl                                              ; $5372: $2f
	db $ed                                           ; $5373: $ed
	ld [hl], d                                       ; $5374: $72
	ldh a, [rP1]                                     ; $5375: $f0 $00
	ldh a, [rSC]                                     ; $5377: $f0 $02
	ld [hl], e                                       ; $5379: $73
	sub e                                            ; $537a: $93
	add e                                            ; $537b: $83
	ld a, $3f                                        ; $537c: $3e $3f
	jr c, jr_099_53d0                                ; $537e: $38 $50

	ld c, l                                          ; $5380: $4d
	dec a                                            ; $5381: $3d
	ld b, d                                          ; $5382: $42
	and b                                            ; $5383: $a0
	cpl                                              ; $5384: $2f
	ld l, d                                          ; $5385: $6a
	ld b, a                                          ; $5386: $47
	ld a, [hl-]                                      ; $5387: $3a
	dec sp                                           ; $5388: $3b
	ccf                                              ; $5389: $3f
	inc [hl]                                         ; $538a: $34
	add hl, bc                                       ; $538b: $09
	cpl                                              ; $538c: $2f
	ld b, b                                          ; $538d: $40
	ld c, l                                          ; $538e: $4d
	ld b, a                                          ; $538f: $47
	db $ec                                           ; $5390: $ec
	ld hl, sp+$7f                                    ; $5391: $f8 $7f
	ldh a, [$9a]                                     ; $5393: $f0 $9a
	jr c, jr_099_53d6                                ; $5395: $38 $3f

	inc [hl]                                         ; $5397: $34
	add hl, bc                                       ; $5398: $09
	cpl                                              ; $5399: $2f
	ld d, h                                          ; $539a: $54
	ld b, d                                          ; $539b: $42
	ld d, d                                          ; $539c: $52
	ld d, d                                          ; $539d: $52

jr_099_539e:
	db $ed                                           ; $539e: $ed
	ld a, c                                          ; $539f: $79
	ld a, $3f                                        ; $53a0: $3e $3f
	inc [hl]                                         ; $53a2: $34
	add hl, bc                                       ; $53a3: $09
	cpl                                              ; $53a4: $2f
	ld b, [hl]                                       ; $53a5: $46
	ld a, [hl-]                                      ; $53a6: $3a
	dec a                                            ; $53a7: $3d
	ld b, a                                          ; $53a8: $47
	ldh a, [rHDMA3]                                  ; $53a9: $f0 $53
	ld e, [hl]                                       ; $53ab: $5e
	ld a, [hl-]                                      ; $53ac: $3a
	ld d, l                                          ; $53ad: $55
	ld a, [hl-]                                      ; $53ae: $3a
	ld c, [hl]                                       ; $53af: $4e
	inc a                                            ; $53b0: $3c
	ld c, a                                          ; $53b1: $4f
	add hl, bc                                       ; $53b2: $09
	cpl                                              ; $53b3: $2f
	ld a, $4d                                        ; $53b4: $3e $4d
	ld a, [hl-]                                      ; $53b6: $3a
	jr c, jr_099_5402                                ; $53b7: $38 $49

	ld [hl], a                                       ; $53b9: $77
	dec sp                                           ; $53ba: $3b
	dec a                                            ; $53bb: $3d
	ld d, b                                          ; $53bc: $50
	inc [hl]                                         ; $53bd: $34
	add hl, bc                                       ; $53be: $09
	cpl                                              ; $53bf: $2f
	ldh a, [c]                                       ; $53c0: $f2
	adc $f8                                          ; $53c1: $ce $f8
	adc a                                            ; $53c3: $8f
	ld b, a                                          ; $53c4: $47
	ldh a, [c]                                       ; $53c5: $f2
	rst SubAFromHL                                          ; $53c6: $d7
	ld a, $55                                        ; $53c7: $3e $55
	ld a, [hl-]                                      ; $53c9: $3a
	dec sp                                           ; $53ca: $3b
	ccf                                              ; $53cb: $3f
	ld e, h                                          ; $53cc: $5c
	ccf                                              ; $53cd: $3f
	inc [hl]                                         ; $53ce: $34
	add hl, bc                                       ; $53cf: $09

jr_099_53d0:
	cpl                                              ; $53d0: $2f
	ld l, a                                          ; $53d1: $6f
	db $eb                                           ; $53d2: $eb
	ld h, a                                          ; $53d3: $67
	jr c, jr_099_540e                                ; $53d4: $38 $38

jr_099_53d6:
	ld b, d                                          ; $53d6: $42
	inc a                                            ; $53d7: $3c
	inc [hl]                                         ; $53d8: $34
	add hl, bc                                       ; $53d9: $09
	cpl                                              ; $53da: $2f
	ldh a, [rTAC]                                    ; $53db: $f0 $07
	inc a                                            ; $53dd: $3c
	ld d, b                                          ; $53de: $50
	ld a, [hl-]                                      ; $53df: $3a
	ld d, l                                          ; $53e0: $55
	ld a, [hl-]                                      ; $53e1: $3a
	dec sp                                           ; $53e2: $3b
	ccf                                              ; $53e3: $3f
	ld c, b                                          ; $53e4: $48
	and b                                            ; $53e5: $a0
	cpl                                              ; $53e6: $2f
	ld l, a                                          ; $53e7: $6f
	ld c, h                                          ; $53e8: $4c
	and b                                            ; $53e9: $a0
	cpl                                              ; $53ea: $2f
	db $eb                                           ; $53eb: $eb
	or b                                             ; $53ec: $b0
	pop af                                           ; $53ed: $f1
	ld a, [bc]                                       ; $53ee: $0a
	pop af                                           ; $53ef: $f1
	inc h                                            ; $53f0: $24
	ld b, h                                          ; $53f1: $44
	ld e, l                                          ; $53f2: $5d
	ld e, d                                          ; $53f3: $5a
	inc [hl]                                         ; $53f4: $34
	add hl, bc                                       ; $53f5: $09
	cpl                                              ; $53f6: $2f
	ld d, h                                          ; $53f7: $54
	ld b, d                                          ; $53f8: $42
	sbc d                                            ; $53f9: $9a
	ld b, h                                          ; $53fa: $44
	ld e, l                                          ; $53fb: $5d
	ld c, e                                          ; $53fc: $4b
	inc [hl]                                         ; $53fd: $34
	pop af                                           ; $53fe: $f1
	jp nz, $1ff3                                     ; $53ff: $c2 $f3 $1f

jr_099_5402:
	ld b, a                                          ; $5402: $47
	ldh a, [$a4]                                     ; $5403: $f0 $a4
	ld e, [hl]                                       ; $5405: $5e
	dec a                                            ; $5406: $3d
	ld b, d                                          ; $5407: $42
	and b                                            ; $5408: $a0
	cpl                                              ; $5409: $2f
	ld b, b                                          ; $540a: $40
	ld c, l                                          ; $540b: $4d
	ld c, d                                          ; $540c: $4a
	inc [hl]                                         ; $540d: $34

jr_099_540e:
	ldh a, [$ec]                                     ; $540e: $f0 $ec
	ldh a, [rVBK]                                    ; $5410: $f0 $4f
	ld a, $3d                                        ; $5412: $3e $3d
	ld b, d                                          ; $5414: $42
	and b                                            ; $5415: $a0
	cpl                                              ; $5416: $2f
	pop hl                                           ; $5417: $e1
	inc a                                            ; $5418: $3c
	ld d, b                                          ; $5419: $50
	add d                                            ; $541a: $82
	add hl, sp                                       ; $541b: $39
	ld b, d                                          ; $541c: $42
	ld c, e                                          ; $541d: $4b
	inc [hl]                                         ; $541e: $34
	add hl, bc                                       ; $541f: $09
	cpl                                              ; $5420: $2f
	ld d, c                                          ; $5421: $51
	ld [hl], b                                       ; $5422: $70
	ld d, l                                          ; $5423: $55
	db $eb                                           ; $5424: $eb
	ld c, a                                          ; $5425: $4f
	ld b, c                                          ; $5426: $41
	ld b, h                                          ; $5427: $44
	ld e, l                                          ; $5428: $5d
	ld e, d                                          ; $5429: $5a
	and b                                            ; $542a: $a0
	cpl                                              ; $542b: $2f
	ld l, a                                          ; $542c: $6f
	ld b, d                                          ; $542d: $42
	adc b                                            ; $542e: $88
	sub c                                            ; $542f: $91
	ld b, d                                          ; $5430: $42
	db $ed                                           ; $5431: $ed
	ld l, a                                          ; $5432: $6f
	ld h, c                                          ; $5433: $61
	ld h, d                                          ; $5434: $62
	add hl, bc                                       ; $5435: $09
	cpl                                              ; $5436: $2f
	ldh a, [$0c]                                     ; $5437: $f0 $0c
	jr c, jr_099_547a                                ; $5439: $38 $3f

	db $ec                                           ; $543b: $ec
	push af                                          ; $543c: $f5
	ld c, b                                          ; $543d: $48
	and b                                            ; $543e: $a0
	cpl                                              ; $543f: $2f
	ldh a, [$0c]                                     ; $5440: $f0 $0c
	jr c, jr_099_5483                                ; $5442: $38 $3f

	ld d, l                                          ; $5444: $55
	ld c, l                                          ; $5445: $4d
	ld c, [hl]                                       ; $5446: $4e
	ld b, h                                          ; $5447: $44
	ld e, l                                          ; $5448: $5d
	ld c, d                                          ; $5449: $4a
	jr c, jr_099_5484                                ; $544a: $38 $38

	ld b, d                                          ; $544c: $42
	and b                                            ; $544d: $a0
	cpl                                              ; $544e: $2f
	ld hl, $10ee                                     ; $544f: $21 $ee $10
	ld h, b                                          ; $5452: $60
	and b                                            ; $5453: $a0
	cpl                                              ; $5454: $2f
	db $ed                                           ; $5455: $ed
	ld a, l                                          ; $5456: $7d
	pop af                                           ; $5457: $f1
	ld d, h                                          ; $5458: $54
	add e                                            ; $5459: $83
	di                                               ; $545a: $f3
	sub [hl]                                         ; $545b: $96
	ld e, c                                          ; $545c: $59
	and b                                            ; $545d: $a0
	cpl                                              ; $545e: $2f
	ld b, [hl]                                       ; $545f: $46
	ld a, [hl-]                                      ; $5460: $3a
	dec a                                            ; $5461: $3d
	ld d, e                                          ; $5462: $53
	jr c, @+$3c                                      ; $5463: $38 $3a

	jr c, jr_099_54b0                                ; $5465: $38 $49

	add hl, bc                                       ; $5467: $09
	cpl                                              ; $5468: $2f
	pop af                                           ; $5469: $f1
	xor b                                            ; $546a: $a8
	ld a, $55                                        ; $546b: $3e $55
	ccf                                              ; $546d: $3f
	ld c, b                                          ; $546e: $48
	and b                                            ; $546f: $a0
	cpl                                              ; $5470: $2f
	ld b, h                                          ; $5471: $44
	inc a                                            ; $5472: $3c
	ld d, b                                          ; $5473: $50
	ld c, b                                          ; $5474: $48
	inc [hl]                                         ; $5475: $34
	add hl, bc                                       ; $5476: $09
	cpl                                              ; $5477: $2f
	ld b, h                                          ; $5478: $44
	inc a                                            ; $5479: $3c

jr_099_547a:
	ld d, b                                          ; $547a: $50
	ld l, a                                          ; $547b: $6f
	ld c, c                                          ; $547c: $49
	ld c, b                                          ; $547d: $48
	and b                                            ; $547e: $a0
	cpl                                              ; $547f: $2f
	ld h, $43                                        ; $5480: $26 $43
	ld e, b                                          ; $5482: $58

jr_099_5483:
	dec sp                                           ; $5483: $3b

jr_099_5484:
	ld e, h                                          ; $5484: $5c
	inc [hl]                                         ; $5485: $34
	adc e                                            ; $5486: $8b
	ld e, h                                          ; $5487: $5c
	db $ed                                           ; $5488: $ed
	ld b, e                                          ; $5489: $43
	add hl, bc                                       ; $548a: $09
	cpl                                              ; $548b: $2f
	add d                                            ; $548c: $82
	dec sp                                           ; $548d: $3b
	dec a                                            ; $548e: $3d
	ld c, d                                          ; $548f: $4a
	ld a, $66                                        ; $5490: $3e $66
	add hl, sp                                       ; $5492: $39
	dec [hl]                                         ; $5493: $35
	dec h                                            ; $5494: $25
	add hl, bc                                       ; $5495: $09
	cpl                                              ; $5496: $2f
	ld e, [hl]                                       ; $5497: $5e
	dec sp                                           ; $5498: $3b
	inc [hl]                                         ; $5499: $34
	add hl, bc                                       ; $549a: $09
	cpl                                              ; $549b: $2f
	add hl, sp                                       ; $549c: $39
	inc [hl]                                         ; $549d: $34
	xor $1f                                          ; $549e: $ee $1f
	and b                                            ; $54a0: $a0
	cpl                                              ; $54a1: $2f
	ld h, $43                                        ; $54a2: $26 $43
	ld b, b                                          ; $54a4: $40
	ld c, l                                          ; $54a5: $4d
	dec sp                                           ; $54a6: $3b
	ccf                                              ; $54a7: $3f
	ldh a, [$31]                                     ; $54a8: $f0 $31
	ld c, e                                          ; $54aa: $4b
	inc [hl]                                         ; $54ab: $34
	add hl, bc                                       ; $54ac: $09
	cpl                                              ; $54ad: $2f
	db $ec                                           ; $54ae: $ec
	pop hl                                           ; $54af: $e1

jr_099_54b0:
	ld b, d                                          ; $54b0: $42
	sbc d                                            ; $54b1: $9a
	ld a, [hl-]                                      ; $54b2: $3a
	ld b, c                                          ; $54b3: $41
	ld b, h                                          ; $54b4: $44
	dec [hl]                                         ; $54b5: $35

jr_099_54b6:
	dec h                                            ; $54b6: $25
	add hl, bc                                       ; $54b7: $09
	cpl                                              ; $54b8: $2f
	ld hl, $10ee                                     ; $54b9: $21 $ee $10
	xor $10                                          ; $54bc: $ee $10
	inc [hl]                                         ; $54be: $34
	add hl, bc                                       ; $54bf: $09
	cpl                                              ; $54c0: $2f
	sbc $48                                          ; $54c1: $de $48
	and c                                            ; $54c3: $a1
	cpl                                              ; $54c4: $2f
	ld h, $43                                        ; $54c5: $26 $43
	ld d, h                                          ; $54c7: $54
	ld b, c                                          ; $54c8: $41
	ld a, [hl-]                                      ; $54c9: $3a
	ldh a, [rBGP]                                    ; $54ca: $f0 $47
	ld b, a                                          ; $54cc: $47
	db $ed                                           ; $54cd: $ed
	ld a, h                                          ; $54ce: $7c
	ld a, [hl-]                                      ; $54cf: $3a
	ld b, c                                          ; $54d0: $41
	ccf                                              ; $54d1: $3f
	add hl, bc                                       ; $54d2: $09
	cpl                                              ; $54d3: $2f
	add d                                            ; $54d4: $82
	ld e, [hl]                                       ; $54d5: $5e
	ld a, [hl-]                                      ; $54d6: $3a
	jr c, jr_099_551e                                ; $54d7: $38 $45

	dec [hl]                                         ; $54d9: $35
	dec h                                            ; $54da: $25
	add hl, bc                                       ; $54db: $09
	cpl                                              ; $54dc: $2f
	jp hl                                            ; $54dd: $e9


	db $e4                                           ; $54de: $e4
	and b                                            ; $54df: $a0
	cpl                                              ; $54e0: $2f
	db $eb                                           ; $54e1: $eb
	ld a, d                                          ; $54e2: $7a
	jr c, jr_099_552d                                ; $54e3: $38 $48

	and b                                            ; $54e5: $a0
	cpl                                              ; $54e6: $2f
	ldh a, [rTIMA]                                   ; $54e7: $f0 $05
	ld d, d                                          ; $54e9: $52
	ld c, l                                          ; $54ea: $4d
	ccf                                              ; $54eb: $3f
	inc a                                            ; $54ec: $3c
	ld d, b                                          ; $54ed: $50
	inc [hl]                                         ; $54ee: $34
	add hl, bc                                       ; $54ef: $09
	cpl                                              ; $54f0: $2f
	ld l, d                                          ; $54f1: $6a
	ld l, b                                          ; $54f2: $68
	ld d, e                                          ; $54f3: $53
	db $ed                                           ; $54f4: $ed
	ld [hl], d                                       ; $54f5: $72
	pop af                                           ; $54f6: $f1
	and d                                            ; $54f7: $a2
	ld a, c                                          ; $54f8: $79
	ld b, l                                          ; $54f9: $45
	and b                                            ; $54fa: $a0
	cpl                                              ; $54fb: $2f
	ldh a, [$09]                                     ; $54fc: $f0 $09
	ldh a, [rAUD4LEN]                                ; $54fe: $f0 $20
	ld e, c                                          ; $5500: $59
	ldh a, [$8e]                                     ; $5501: $f0 $8e
	ldh a, [c]                                       ; $5503: $f2
	daa                                              ; $5504: $27
	ldh a, [$6d]                                     ; $5505: $f0 $6d
	ld [hl], e                                       ; $5507: $73
	ld l, c                                          ; $5508: $69
	and b                                            ; $5509: $a0
	cpl                                              ; $550a: $2f
	ld l, a                                          ; $550b: $6f
	inc [hl]                                         ; $550c: $34
	ld l, l                                          ; $550d: $6d
	ldh a, [rTIMA]                                   ; $550e: $f0 $05
	pop af                                           ; $5510: $f1
	dec d                                            ; $5511: $15
	ld c, l                                          ; $5512: $4d
	ld a, [hl-]                                      ; $5513: $3a
	jr c, jr_099_54b6                                ; $5514: $38 $a0

	add hl, bc                                       ; $5516: $09
	cpl                                              ; $5517: $2f
	ld h, $43                                        ; $5518: $26 $43
	inc a                                            ; $551a: $3c
	inc [hl]                                         ; $551b: $34
	db $ed                                           ; $551c: $ed
	ld d, e                                          ; $551d: $53

jr_099_551e:
	ld c, b                                          ; $551e: $48
	dec [hl]                                         ; $551f: $35
	dec h                                            ; $5520: $25
	add hl, bc                                       ; $5521: $09
	cpl                                              ; $5522: $2f
	ld d, h                                          ; $5523: $54
	ld b, c                                          ; $5524: $41
	ld a, [hl-]                                      ; $5525: $3a
	ldh a, [$28]                                     ; $5526: $f0 $28
	ld b, a                                          ; $5528: $47
	pop af                                           ; $5529: $f1
	ld bc, $4df0                                     ; $552a: $01 $f0 $4d

jr_099_552d:
	sub h                                            ; $552d: $94
	ld a, $3d                                        ; $552e: $3e $3d
	ld d, a                                          ; $5530: $57
	ld a, $3f                                        ; $5531: $3e $3f
	inc [hl]                                         ; $5533: $34
	add hl, bc                                       ; $5534: $09
	cpl                                              ; $5535: $2f
	db $eb                                           ; $5536: $eb
	ccf                                              ; $5537: $3f
	and b                                            ; $5538: $a0
	cpl                                              ; $5539: $2f
	ld h, $43                                        ; $553a: $26 $43
	jr c, jr_099_5572                                ; $553c: $38 $34

	jr c, jr_099_559c                                ; $553e: $38 $5c

	ld a, [hl-]                                      ; $5540: $3a
	ld d, a                                          ; $5541: $57
	and b                                            ; $5542: $a0
	cpl                                              ; $5543: $2f
	db $ed                                           ; $5544: $ed
	ld d, e                                          ; $5545: $53
	ld d, e                                          ; $5546: $53
	ldh a, [c]                                       ; $5547: $f2
	inc c                                            ; $5548: $0c
	dec sp                                           ; $5549: $3b
	dec a                                            ; $554a: $3d
	ld c, b                                          ; $554b: $48
	dec [hl]                                         ; $554c: $35
	dec h                                            ; $554d: $25
	add hl, bc                                       ; $554e: $09
	cpl                                              ; $554f: $2f
	ld b, b                                          ; $5550: $40
	inc [hl]                                         ; $5551: $34
	ld b, b                                          ; $5552: $40
	ld b, c                                          ; $5553: $41
	ld a, [hl-]                                      ; $5554: $3a
	ld b, a                                          ; $5555: $47
	ldh a, [c]                                       ; $5556: $f2
	sub d                                            ; $5557: $92
	inc a                                            ; $5558: $3c
	ld a, [hl-]                                      ; $5559: $3a
	ld d, l                                          ; $555a: $55
	ccf                                              ; $555b: $3f
	ld c, a                                          ; $555c: $4f
	ld c, b                                          ; $555d: $48
	and b                                            ; $555e: $a0
	cpl                                              ; $555f: $2f
	ld c, d                                          ; $5560: $4a
	ld c, a                                          ; $5561: $4f
	inc [hl]                                         ; $5562: $34
	jr c, jr_099_559d                                ; $5563: $38 $38

	ld b, d                                          ; $5565: $42
	and b                                            ; $5566: $a0
	cpl                                              ; $5567: $2f
	ld l, a                                          ; $5568: $6f
	ld b, d                                          ; $5569: $42
	ldh a, [rAUDVOL]                                 ; $556a: $f0 $24
	ld h, d                                          ; $556c: $62
	ldh a, [$0c]                                     ; $556d: $f0 $0c
	jr c, jr_099_55b0                                ; $556f: $38 $3f

	and b                                            ; $5571: $a0

jr_099_5572:
	cpl                                              ; $5572: $2f
	ld h, $43                                        ; $5573: $26 $43
	xor $10                                          ; $5575: $ee $10
	xor $10                                          ; $5577: $ee $10
	dec [hl]                                         ; $5579: $35
	dec h                                            ; $557a: $25
	add hl, bc                                       ; $557b: $09
	cpl                                              ; $557c: $2f
	ld l, a                                          ; $557d: $6f
	inc [hl]                                         ; $557e: $34
	ldh a, [rAUD2HIGH]                               ; $557f: $f0 $19
	adc c                                            ; $5581: $89
	ld b, d                                          ; $5582: $42
	ldh a, [c]                                       ; $5583: $f2
	inc b                                            ; $5584: $04
	inc [hl]                                         ; $5585: $34
	add hl, bc                                       ; $5586: $09
	cpl                                              ; $5587: $2f
	ld d, h                                          ; $5588: $54
	ld b, d                                          ; $5589: $42
	di                                               ; $558a: $f3
	ld [hl-], a                                      ; $558b: $32
	ld b, a                                          ; $558c: $47
	pop af                                           ; $558d: $f1
	ld e, a                                          ; $558e: $5f
	dec sp                                           ; $558f: $3b
	db $f4                                           ; $5590: $f4
	ld e, b                                          ; $5591: $58
	ld a, $3f                                        ; $5592: $3e $3f
	ld e, h                                          ; $5594: $5c
	dec a                                            ; $5595: $3d
	ld b, d                                          ; $5596: $42
	and b                                            ; $5597: $a0
	cpl                                              ; $5598: $2f
	ld b, b                                          ; $5599: $40
	ld b, d                                          ; $559a: $42
	sbc [hl]                                         ; $559b: $9e

jr_099_559c:
	ld b, d                                          ; $559c: $42

jr_099_559d:
	di                                               ; $559d: $f3
	ld [hl-], a                                      ; $559e: $32
	ld c, d                                          ; $559f: $4a
	inc [hl]                                         ; $55a0: $34
	ld l, a                                          ; $55a1: $6f
	ld c, b                                          ; $55a2: $48
	and b                                            ; $55a3: $a0
	cpl                                              ; $55a4: $2f
	ldh a, [$ab]                                     ; $55a5: $f0 $ab
	ld b, d                                          ; $55a7: $42
	adc h                                            ; $55a8: $8c
	ld b, a                                          ; $55a9: $47
	db $ed                                           ; $55aa: $ed
	ld h, c                                          ; $55ab: $61
	ld c, a                                          ; $55ac: $4f
	pop af                                           ; $55ad: $f1
	pop hl                                           ; $55ae: $e1
	ld d, b                                          ; $55af: $50

jr_099_55b0:
	ld c, l                                          ; $55b0: $4d
	ccf                                              ; $55b1: $3f
	ld c, b                                          ; $55b2: $48
	and b                                            ; $55b3: $a0
	cpl                                              ; $55b4: $2f
	db $ec                                           ; $55b5: $ec
	jr nz, @+$0b                                     ; $55b6: $20 $09

	cpl                                              ; $55b8: $2f
	ld d, h                                          ; $55b9: $54
	ld b, d                                          ; $55ba: $42
	di                                               ; $55bb: $f3
	ld [hl-], a                                      ; $55bc: $32
	ld b, a                                          ; $55bd: $47
	ld a, b                                          ; $55be: $78
	ld c, [hl]                                       ; $55bf: $4e
	ldh a, [rBGP]                                    ; $55c0: $f0 $47
	ld b, a                                          ; $55c2: $47
	inc [hl]                                         ; $55c3: $34
	add hl, bc                                       ; $55c4: $09
	cpl                                              ; $55c5: $2f
	ldh a, [rTIMA]                                   ; $55c6: $f0 $05
	ld d, d                                          ; $55c8: $52
	ld c, l                                          ; $55c9: $4d
	ldh a, [$5d]                                     ; $55ca: $f0 $5d
	ld h, e                                          ; $55cc: $63
	ld e, a                                          ; $55cd: $5f
	add hl, sp                                       ; $55ce: $39
	and b                                            ; $55cf: $a0
	cpl                                              ; $55d0: $2f
	ld c, a                                          ; $55d1: $4f
	dec sp                                           ; $55d2: $3b
	ld c, c                                          ; $55d3: $49
	inc [hl]                                         ; $55d4: $34
	ld c, a                                          ; $55d5: $4f
	ccf                                              ; $55d6: $3f
	ld c, [hl]                                       ; $55d7: $4e
	ldh a, [rAUD2ENV]                                ; $55d8: $f0 $17
	ld b, a                                          ; $55da: $47
	ld a, [hl-]                                      ; $55db: $3a
	dec sp                                           ; $55dc: $3b
	ccf                                              ; $55dd: $3f
	inc [hl]                                         ; $55de: $34
	add hl, bc                                       ; $55df: $09
	cpl                                              ; $55e0: $2f
	ldh a, [$ab]                                     ; $55e1: $f0 $ab
	ld b, d                                          ; $55e3: $42
	adc h                                            ; $55e4: $8c
	ldh a, [rSTAT]                                   ; $55e5: $f0 $41
	ld h, d                                          ; $55e7: $62
	ld [hl], d                                       ; $55e8: $72
	ldh a, [$e0]                                     ; $55e9: $f0 $e0
	ld a, $3f                                        ; $55eb: $3e $3f
	ld l, [hl]                                       ; $55ed: $6e
	ld e, a                                          ; $55ee: $5f
	add hl, sp                                       ; $55ef: $39
	ld c, c                                          ; $55f0: $49
	add hl, bc                                       ; $55f1: $09
	cpl                                              ; $55f2: $2f
	ld [hl], a                                       ; $55f3: $77
	dec sp                                           ; $55f4: $3b
	dec a                                            ; $55f5: $3d
	ld b, d                                          ; $55f6: $42
	and b                                            ; $55f7: $a0
	cpl                                              ; $55f8: $2f
	db $ed                                           ; $55f9: $ed
	ret c                                            ; $55fa: $d8

	ld b, d                                          ; $55fb: $42
	ldh a, [$b1]                                     ; $55fc: $f0 $b1
	ldh a, [c]                                       ; $55fe: $f2
	ld [hl+], a                                      ; $55ff: $22
	ld d, e                                          ; $5600: $53
	ld b, [hl]                                       ; $5601: $46
	dec sp                                           ; $5602: $3b
	ccf                                              ; $5603: $3f
	inc [hl]                                         ; $5604: $34
	add hl, bc                                       ; $5605: $09
	cpl                                              ; $5606: $2f
	ldh a, [$ab]                                     ; $5607: $f0 $ab
	ld b, d                                          ; $5609: $42
	adc h                                            ; $560a: $8c
	ld b, d                                          ; $560b: $42
	ldh a, [rAUD3LEVEL]                              ; $560c: $f0 $1c
	ld h, d                                          ; $560e: $62
	db $f4                                           ; $560f: $f4
	sub l                                            ; $5610: $95
	ld d, l                                          ; $5611: $55
	ldh a, [rAUD2ENV]                                ; $5612: $f0 $17
	ld b, a                                          ; $5614: $47
	ld a, [hl-]                                      ; $5615: $3a
	dec sp                                           ; $5616: $3b
	dec a                                            ; $5617: $3d
	ld h, e                                          ; $5618: $63
	and b                                            ; $5619: $a0
	cpl                                              ; $561a: $2f
	ld b, b                                          ; $561b: $40
	ld a, $3f                                        ; $561c: $3e $3f
	inc [hl]                                         ; $561e: $34
	add hl, bc                                       ; $561f: $09
	cpl                                              ; $5620: $2f
	ld h, e                                          ; $5621: $63
	ldh a, [rAUD1SWEEP]                              ; $5622: $f0 $10
	ld c, c                                          ; $5624: $49
	ldh a, [rAUD1ENV]                                ; $5625: $f0 $12
	ldh a, [c]                                       ; $5627: $f2
	dec h                                            ; $5628: $25
	ld a, [hl-]                                      ; $5629: $3a
	di                                               ; $562a: $f3
	ld [hl], a                                       ; $562b: $77
	ldh a, [$0d]                                     ; $562c: $f0 $0d
	ld h, d                                          ; $562e: $62
	pop af                                           ; $562f: $f1
	inc b                                            ; $5630: $04
	dec sp                                           ; $5631: $3b
	ccf                                              ; $5632: $3f
	ld c, b                                          ; $5633: $48
	inc [hl]                                         ; $5634: $34
	add hl, bc                                       ; $5635: $09
	cpl                                              ; $5636: $2f
	ldh a, [$ab]                                     ; $5637: $f0 $ab
	ld b, d                                          ; $5639: $42
	adc h                                            ; $563a: $8c
	ldh a, [rSTAT]                                   ; $563b: $f0 $41
	ld b, a                                          ; $563d: $47
	ldh a, [c]                                       ; $563e: $f2
	jp hl                                            ; $563f: $e9


	ld sp, hl                                        ; $5640: $f9
	cp b                                             ; $5641: $b8
	ld a, $3f                                        ; $5642: $3e $3f
	ld e, h                                          ; $5644: $5c
	dec a                                            ; $5645: $3d
	ld b, d                                          ; $5646: $42
	and b                                            ; $5647: $a0
	cpl                                              ; $5648: $2f
	ld h, $43                                        ; $5649: $26 $43
	ld c, b                                          ; $564b: $48
	rst JumpTable                                          ; $564c: $c7
	ld b, h                                          ; $564d: $44
	dec sp                                           ; $564e: $3b
	dec a                                            ; $564f: $3d
	ld b, c                                          ; $5650: $41
	ld b, h                                          ; $5651: $44
	ld c, b                                          ; $5652: $48
	dec [hl]                                         ; $5653: $35
	dec h                                            ; $5654: $25
	add hl, bc                                       ; $5655: $09
	cpl                                              ; $5656: $2f
	ldh a, [$5f]                                     ; $5657: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $5659: $f0 $94
	ld c, e                                          ; $565b: $4b
	db $eb                                           ; $565c: $eb
	ld h, e                                          ; $565d: $63
	ld c, b                                          ; $565e: $48
	and b                                            ; $565f: $a0
	cpl                                              ; $5660: $2f
	ldh a, [$ab]                                     ; $5661: $f0 $ab
	ld b, d                                          ; $5663: $42
	adc h                                            ; $5664: $8c
	ld b, a                                          ; $5665: $47
	ld c, a                                          ; $5666: $4f
	ccf                                              ; $5667: $3f
	ld c, e                                          ; $5668: $4b
	ld l, [hl]                                       ; $5669: $6e
	ld e, b                                          ; $566a: $58
	ld c, l                                          ; $566b: $4d
	ld c, [hl]                                       ; $566c: $4e
	ld d, h                                          ; $566d: $54
	ld c, c                                          ; $566e: $49
	ld d, e                                          ; $566f: $53
	add hl, bc                                       ; $5670: $09
	cpl                                              ; $5671: $2f
	ldh a, [$29]                                     ; $5672: $f0 $29
	ld a, $3c                                        ; $5674: $3e $3c
	dec sp                                           ; $5676: $3b
	dec a                                            ; $5677: $3d
	ld c, b                                          ; $5678: $48
	and b                                            ; $5679: $a0
	cpl                                              ; $567a: $2f
	ld c, d                                          ; $567b: $4a
	ld c, a                                          ; $567c: $4f
	inc [hl]                                         ; $567d: $34
	ld b, b                                          ; $567e: $40
	ld b, c                                          ; $567f: $41
	ld a, [hl-]                                      ; $5680: $3a
	sbc d                                            ; $5681: $9a
	ld e, e                                          ; $5682: $5b
	ld d, [hl]                                       ; $5683: $56
	inc [hl]                                         ; $5684: $34

jr_099_5685:
	add hl, bc                                       ; $5685: $09
	cpl                                              ; $5686: $2f
	ld l, a                                          ; $5687: $6f
	ld b, d                                          ; $5688: $42
	ldh a, [rVBK]                                    ; $5689: $f0 $4f
	ld c, e                                          ; $568b: $4b
	ldh a, [c]                                       ; $568c: $f2
	adc [hl]                                         ; $568d: $8e
	dec a                                            ; $568e: $3d
	ld e, b                                          ; $568f: $58
	ld c, l                                          ; $5690: $4d
	ld a, [hl-]                                      ; $5691: $3a
	inc a                                            ; $5692: $3c
	dec sp                                           ; $5693: $3b
	dec a                                            ; $5694: $3d
	ld h, e                                          ; $5695: $63
	and b                                            ; $5696: $a0
	cpl                                              ; $5697: $2f
	db $eb                                           ; $5698: $eb
	add $4c                                          ; $5699: $c6 $4c
	and b                                            ; $569b: $a0
	cpl                                              ; $569c: $2f
	db $ed                                           ; $569d: $ed
	ld e, l                                          ; $569e: $5d
	ld b, a                                          ; $569f: $47
	pop af                                           ; $56a0: $f1
	ld a, [hl]                                       ; $56a1: $7e
	ld h, d                                          ; $56a2: $62
	add b                                            ; $56a3: $80
	jr c, jr_099_56e5                                ; $56a4: $38 $3f

	ldh a, [rTIMA]                                   ; $56a6: $f0 $05
	ld e, h                                          ; $56a8: $5c
	ccf                                              ; $56a9: $3f
	jr c, jr_099_56eb                                ; $56aa: $38 $3f

	inc [hl]                                         ; $56ac: $34
	add hl, bc                                       ; $56ad: $09
	cpl                                              ; $56ae: $2f
	ldh a, [rVBK]                                    ; $56af: $f0 $4f
	ld d, e                                          ; $56b1: $53
	ldh a, [c]                                       ; $56b2: $f2
	adc [hl]                                         ; $56b3: $8e
	dec a                                            ; $56b4: $3d
	ld e, b                                          ; $56b5: $58
	ld c, l                                          ; $56b6: $4d
	ld c, [hl]                                       ; $56b7: $4e
	ld c, e                                          ; $56b8: $4b
	sbc h                                            ; $56b9: $9c
	ld d, e                                          ; $56ba: $53
	ldh a, [rAUD1LOW]                                ; $56bb: $f0 $13
	jr c, jr_099_570e                                ; $56bd: $38 $4f

	ld b, d                                          ; $56bf: $42
	and b                                            ; $56c0: $a0
	cpl                                              ; $56c1: $2f
	ldh a, [c]                                       ; $56c2: $f2
	rra                                              ; $56c3: $1f
	ldh a, [$38]                                     ; $56c4: $f0 $38
	ld b, a                                          ; $56c6: $47
	ldh a, [rHDMA3]                                  ; $56c7: $f0 $53
	ld h, e                                          ; $56c9: $63
	ld a, [hl-]                                      ; $56ca: $3a
	ld e, l                                          ; $56cb: $5d
	ld c, l                                          ; $56cc: $4d
	ld a, e                                          ; $56cd: $7b
	inc [hl]                                         ; $56ce: $34
	ld d, h                                          ; $56cf: $54
	ld b, c                                          ; $56d0: $41
	ld a, [hl-]                                      ; $56d1: $3a
	sbc d                                            ; $56d2: $9a
	ld c, e                                          ; $56d3: $4b
	add hl, bc                                       ; $56d4: $09
	cpl                                              ; $56d5: $2f
	ldh a, [$a4]                                     ; $56d6: $f0 $a4
	ld e, [hl]                                       ; $56d8: $5e
	ld a, [hl-]                                      ; $56d9: $3a
	inc a                                            ; $56da: $3c
	dec sp                                           ; $56db: $3b
	dec a                                            ; $56dc: $3d
	ld b, d                                          ; $56dd: $42
	inc a                                            ; $56de: $3c
	ld c, a                                          ; $56df: $4f
	ld a, $4d                                        ; $56e0: $3e $4d
	ld a, [hl-]                                      ; $56e2: $3a
	jr c, jr_099_5685                                ; $56e3: $38 $a0

jr_099_56e5:
	cpl                                              ; $56e5: $2f
	ld c, b                                          ; $56e6: $48
	ldh a, [c]                                       ; $56e7: $f2
	rra                                              ; $56e8: $1f
	ldh a, [$38]                                     ; $56e9: $f0 $38

jr_099_56eb:
	ld c, c                                          ; $56eb: $49
	ldh a, [$2d]                                     ; $56ec: $f0 $2d
	ld d, a                                          ; $56ee: $57
	ldh a, [rTMA]                                    ; $56ef: $f0 $06
	dec sp                                           ; $56f1: $3b
	ccf                                              ; $56f2: $3f
	ld c, b                                          ; $56f3: $48
	inc [hl]                                         ; $56f4: $34
	add hl, bc                                       ; $56f5: $09
	cpl                                              ; $56f6: $2f
	ld d, h                                          ; $56f7: $54
	ld b, d                                          ; $56f8: $42
	add h                                            ; $56f9: $84
	ld c, c                                          ; $56fa: $49
	ld a, [hl-]                                      ; $56fb: $3a
	ld d, b                                          ; $56fc: $50
	inc [hl]                                         ; $56fd: $34
	ld l, d                                          ; $56fe: $6a
	ld b, d                                          ; $56ff: $42
	db $ed                                           ; $5700: $ed
	ld e, l                                          ; $5701: $5d
	ld h, d                                          ; $5702: $62
	add hl, bc                                       ; $5703: $09
	cpl                                              ; $5704: $2f
	di                                               ; $5705: $f3
	ld b, d                                          ; $5706: $42
	ccf                                              ; $5707: $3f
	ld d, b                                          ; $5708: $50
	ld c, l                                          ; $5709: $4d
	ld c, [hl]                                       ; $570a: $4e
	ld c, c                                          ; $570b: $49
	ld [hl], a                                       ; $570c: $77
	dec sp                                           ; $570d: $3b

jr_099_570e:
	dec a                                            ; $570e: $3d
	ld h, e                                          ; $570f: $63
	and b                                            ; $5710: $a0
	cpl                                              ; $5711: $2f
	ld b, h                                          ; $5712: $44
	ld e, l                                          ; $5713: $5d
	ld e, d                                          ; $5714: $5a
	inc [hl]                                         ; $5715: $34
	ld l, a                                          ; $5716: $6f
	ld b, a                                          ; $5717: $47
	ld c, e                                          ; $5718: $4b
	ld b, b                                          ; $5719: $40
	ld b, d                                          ; $571a: $42
	ldh a, [rBGP]                                    ; $571b: $f0 $47
	inc [hl]                                         ; $571d: $34
	db $ed                                           ; $571e: $ed
	ld e, l                                          ; $571f: $5d
	ld h, d                                          ; $5720: $62
	add hl, bc                                       ; $5721: $09
	cpl                                              ; $5722: $2f
	di                                               ; $5723: $f3
	ld b, d                                          ; $5724: $42
	ccf                                              ; $5725: $3f
	ld c, [hl]                                       ; $5726: $4e
	ldh a, [c]                                       ; $5727: $f2
	sub h                                            ; $5728: $94
	ld a, a                                          ; $5729: $7f
	ld d, e                                          ; $572a: $53

jr_099_572b:
	ldh a, [rAUD1LOW]                                ; $572b: $f0 $13
	inc a                                            ; $572d: $3c
	dec sp                                           ; $572e: $3b
	dec a                                            ; $572f: $3d
	ld b, d                                          ; $5730: $42
	and b                                            ; $5731: $a0
	cpl                                              ; $5732: $2f
	ld d, d                                          ; $5733: $52
	dec a                                            ; $5734: $3d
	inc [hl]                                         ; $5735: $34
	ldh a, [c]                                       ; $5736: $f2
	ld a, c                                          ; $5737: $79
	ld b, d                                          ; $5738: $42
	db $ed                                           ; $5739: $ed
	ld e, l                                          ; $573a: $5d
	ld b, a                                          ; $573b: $47
	ldh a, [$e8]                                     ; $573c: $f0 $e8
	ld d, a                                          ; $573e: $57
	dec a                                            ; $573f: $3d
	ld d, l                                          ; $5740: $55
	add hl, bc                                       ; $5741: $09
	cpl                                              ; $5742: $2f
	ld a, [hl-]                                      ; $5743: $3a
	inc a                                            ; $5744: $3c
	dec sp                                           ; $5745: $3b
	dec a                                            ; $5746: $3d
	inc a                                            ; $5747: $3c
	ld d, b                                          ; $5748: $50
	ld c, b                                          ; $5749: $48
	and b                                            ; $574a: $a0
	cpl                                              ; $574b: $2f
	ld c, d                                          ; $574c: $4a
	ld c, a                                          ; $574d: $4f
	inc [hl]                                         ; $574e: $34
	ld l, d                                          ; $574f: $6a
	ld b, a                                          ; $5750: $47
	ld a, [hl-]                                      ; $5751: $3a
	dec sp                                           ; $5752: $3b
	ccf                                              ; $5753: $3f
	inc [hl]                                         ; $5754: $34

jr_099_5755:
	add hl, bc                                       ; $5755: $09
	cpl                                              ; $5756: $2f
	db $ec                                           ; $5757: $ec
	ld hl, sp-$0e                                    ; $5758: $f8 $f2
	sub h                                            ; $575a: $94
	ld a, a                                          ; $575b: $7f
	ld d, e                                          ; $575c: $53
	sub h                                            ; $575d: $94
	dec a                                            ; $575e: $3d
	ld h, e                                          ; $575f: $63
	and b                                            ; $5760: $a0
	cpl                                              ; $5761: $2f
	ldh a, [c]                                       ; $5762: $f2
	rra                                              ; $5763: $1f
	ldh a, [$38]                                     ; $5764: $f0 $38
	ld b, a                                          ; $5766: $47
	ld c, b                                          ; $5767: $48
	inc [hl]                                         ; $5768: $34
	add hl, bc                                       ; $5769: $09
	cpl                                              ; $576a: $2f
	ld d, h                                          ; $576b: $54
	ld b, c                                          ; $576c: $41
	ld a, [hl-]                                      ; $576d: $3a
	ldh a, [rAUD2ENV]                                ; $576e: $f0 $17
	ld b, h                                          ; $5770: $44
	ld c, c                                          ; $5771: $49
	ld [hl], a                                       ; $5772: $77
	ld h, e                                          ; $5773: $63
	ld c, l                                          ; $5774: $4d
	dec a                                            ; $5775: $3d
	ld d, d                                          ; $5776: $52
	ld d, d                                          ; $5777: $52
	ld c, b                                          ; $5778: $48
	inc [hl]                                         ; $5779: $34
	add hl, bc                                       ; $577a: $09
	cpl                                              ; $577b: $2f
	db $ed                                           ; $577c: $ed
	ld a, c                                          ; $577d: $79
	ld d, c                                          ; $577e: $51
	ld c, [hl]                                       ; $577f: $4e
	ld a, [hl-]                                      ; $5780: $3a
	ld b, c                                          ; $5781: $41
	ccf                                              ; $5782: $3f
	db $f4                                           ; $5783: $f4
	ld [$505e], sp                                   ; $5784: $08 $5e $50
	ld c, l                                          ; $5787: $4d
	ld a, [hl-]                                      ; $5788: $3a
	jr c, jr_099_572b                                ; $5789: $38 $a0

	cpl                                              ; $578b: $2f
	ld l, e                                          ; $578c: $6b
	ldh a, [c]                                       ; $578d: $f2
	ld l, a                                          ; $578e: $6f
	add h                                            ; $578f: $84
	ld b, d                                          ; $5790: $42
	ldh a, [$ab]                                     ; $5791: $f0 $ab
	pop af                                           ; $5793: $f1
	ld a, [bc]                                       ; $5794: $0a
	ld b, l                                          ; $5795: $45
	ld d, a                                          ; $5796: $57
	ld c, a                                          ; $5797: $4f
	ld c, b                                          ; $5798: $48
	inc [hl]                                         ; $5799: $34
	add hl, bc                                       ; $579a: $09
	cpl                                              ; $579b: $2f
	dec a                                            ; $579c: $3d
	ld b, h                                          ; $579d: $44
	ldh a, [c]                                       ; $579e: $f2
	rra                                              ; $579f: $1f
	ldh a, [$38]                                     ; $57a0: $f0 $38
	ld b, h                                          ; $57a2: $44
	ld e, l                                          ; $57a3: $5d
	ld b, b                                          ; $57a4: $40
	ld a, e                                          ; $57a5: $7b
	ld b, a                                          ; $57a6: $47
	jr c, jr_099_57e8                                ; $57a7: $38 $3f

	db $ec                                           ; $57a9: $ec
	push af                                          ; $57aa: $f5
	and b                                            ; $57ab: $a0
	cpl                                              ; $57ac: $2f
	ld l, a                                          ; $57ad: $6f
	ld b, d                                          ; $57ae: $42
	ldh a, [rVBK]                                    ; $57af: $f0 $4f
	ld b, d                                          ; $57b1: $42
	pop af                                           ; $57b2: $f1
	adc b                                            ; $57b3: $88
	ld h, d                                          ; $57b4: $62
	or $88                                           ; $57b5: $f6 $88
	ld a, $3f                                        ; $57b7: $3e $3f
	ld d, l                                          ; $57b9: $55
	ld c, l                                          ; $57ba: $4d
	ld c, [hl]                                       ; $57bb: $4e
	ld b, d                                          ; $57bc: $42
	ld c, e                                          ; $57bd: $4b
	inc [hl]                                         ; $57be: $34
	add hl, bc                                       ; $57bf: $09
	cpl                                              ; $57c0: $2f
	ldh a, [c]                                       ; $57c1: $f2
	rra                                              ; $57c2: $1f
	ldh a, [$38]                                     ; $57c3: $f0 $38
	ld b, h                                          ; $57c5: $44
	ld e, l                                          ; $57c6: $5d
	ld b, h                                          ; $57c7: $44
	inc a                                            ; $57c8: $3c
	ld d, b                                          ; $57c9: $50
	ld c, b                                          ; $57ca: $48
	and b                                            ; $57cb: $a0
	cpl                                              ; $57cc: $2f
	ld c, b                                          ; $57cd: $48
	adc e                                            ; $57ce: $8b
	ld e, h                                          ; $57cf: $5c
	ld b, l                                          ; $57d0: $45
	and b                                            ; $57d1: $a0
	cpl                                              ; $57d2: $2f
	jr c, jr_099_5755                                ; $57d3: $38 $80

	ld d, d                                          ; $57d5: $52
	ld c, d                                          ; $57d6: $4a
	ld c, a                                          ; $57d7: $4f
	ld l, a                                          ; $57d8: $6f
	ld b, d                                          ; $57d9: $42
	ld b, b                                          ; $57da: $40
	ld a, e                                          ; $57db: $7b
	ld b, a                                          ; $57dc: $47
	jr c, jr_099_581e                                ; $57dd: $38 $3f

	ld c, b                                          ; $57df: $48
	and b                                            ; $57e0: $a0
	cpl                                              ; $57e1: $2f
	ld h, h                                          ; $57e2: $64
	ldh a, [$c8]                                     ; $57e3: $f0 $c8
	jr c, jr_099_582f                                ; $57e5: $38 $48

	and b                                            ; $57e7: $a0

jr_099_57e8:
	cpl                                              ; $57e8: $2f
	ld h, $43                                        ; $57e9: $26 $43
	ld b, b                                          ; $57eb: $40
	add hl, sp                                       ; $57ec: $39
	ld b, h                                          ; $57ed: $44
	dec sp                                           ; $57ee: $3b
	dec a                                            ; $57ef: $3d
	ld b, c                                          ; $57f0: $41
	ld b, h                                          ; $57f1: $44
	dec [hl]                                         ; $57f2: $35
	dec h                                            ; $57f3: $25
	add hl, bc                                       ; $57f4: $09
	cpl                                              ; $57f5: $2f
	db $ec                                           ; $57f6: $ec
	reti                                             ; $57f7: $d9


	inc [hl]                                         ; $57f8: $34
	ld l, a                                          ; $57f9: $6f
	ld e, e                                          ; $57fa: $5b
	ld d, [hl]                                       ; $57fb: $56
	xor $05                                          ; $57fc: $ee $05
	ld b, l                                          ; $57fe: $45
	ld c, h                                          ; $57ff: $4c
	and b                                            ; $5800: $a0
	cpl                                              ; $5801: $2f
	ld h, $43                                        ; $5802: $26 $43
	jr c, jr_099_583a                                ; $5804: $38 $34

	jr c, jr_099_5876                                ; $5806: $38 $6e

	and b                                            ; $5808: $a0
	cpl                                              ; $5809: $2f
	halt                                             ; $580a: $76
	ld c, d                                          ; $580b: $4a
	ld b, l                                          ; $580c: $45
	inc a                                            ; $580d: $3c
	dec sp                                           ; $580e: $3b
	dec a                                            ; $580f: $3d
	ld d, b                                          ; $5810: $50
	ld c, b                                          ; $5811: $48
	dec [hl]                                         ; $5812: $35
	dec h                                            ; $5813: $25
	add hl, bc                                       ; $5814: $09
	cpl                                              ; $5815: $2f
	ld c, b                                          ; $5816: $48
	sbc $a1                                          ; $5817: $de $a1
	cpl                                              ; $5819: $2f
	ldh a, [$29]                                     ; $581a: $f0 $29
	ld a, $38                                        ; $581c: $3e $38

jr_099_581e:
	ld c, b                                          ; $581e: $48
	and b                                            ; $581f: $a0
	cpl                                              ; $5820: $2f
	db $ec                                           ; $5821: $ec
	ld hl, sp+$34                                    ; $5822: $f8 $34
	add hl, bc                                       ; $5824: $09
	cpl                                              ; $5825: $2f
	adc b                                            ; $5826: $88
	sub c                                            ; $5827: $91
	ld b, d                                          ; $5828: $42
	db $ed                                           ; $5829: $ed
	ld e, l                                          ; $582a: $5d
	ld h, d                                          ; $582b: $62
	pop af                                           ; $582c: $f1
	inc b                                            ; $582d: $04
	ld d, a                                          ; $582e: $57

jr_099_582f:
	ldh a, [$e8]                                     ; $582f: $f0 $e8
	ld a, c                                          ; $5831: $79
	ld b, b                                          ; $5832: $40
	add hl, sp                                       ; $5833: $39
	and b                                            ; $5834: $a0
	cpl                                              ; $5835: $2f
	ld h, $43                                        ; $5836: $26 $43
	ld c, d                                          ; $5838: $4a
	ld c, a                                          ; $5839: $4f

jr_099_583a:
	inc [hl]                                         ; $583a: $34
	pop af                                           ; $583b: $f1
	ld l, a                                          ; $583c: $6f
	ld b, d                                          ; $583d: $42
	ldh a, [$ab]                                     ; $583e: $f0 $ab
	adc h                                            ; $5840: $8c
	inc a                                            ; $5841: $3c
	ld d, b                                          ; $5842: $50
	inc [hl]                                         ; $5843: $34
	add hl, bc                                       ; $5844: $09
	cpl                                              ; $5845: $2f
	ei                                               ; $5846: $fb
	ei                                               ; $5847: $fb
	ld d, d                                          ; $5848: $52
	ld c, l                                          ; $5849: $4d
	ld b, b                                          ; $584a: $40
	add hl, sp                                       ; $584b: $39
	ld b, h                                          ; $584c: $44
	ld c, h                                          ; $584d: $4c
	dec [hl]                                         ; $584e: $35
	dec h                                            ; $584f: $25
	add hl, bc                                       ; $5850: $09
	cpl                                              ; $5851: $2f
	add a                                            ; $5852: $87
	ldh a, [$5b]                                     ; $5853: $f0 $5b
	ldh a, [$5e]                                     ; $5855: $f0 $5e
	and b                                            ; $5857: $a0
	cpl                                              ; $5858: $2f
	ld l, a                                          ; $5859: $6f
	ld d, e                                          ; $585a: $53
	pop af                                           ; $585b: $f1
	jr c, jr_099_589f                                ; $585c: $38 $41

	ld b, h                                          ; $585e: $44
	add h                                            ; $585f: $84
	ld b, h                                          ; $5860: $44
	ld c, a                                          ; $5861: $4f
	ld b, d                                          ; $5862: $42
	inc [hl]                                         ; $5863: $34
	add hl, bc                                       ; $5864: $09
	cpl                                              ; $5865: $2f
	ldh a, [$98]                                     ; $5866: $f0 $98
	ld c, a                                          ; $5868: $4f
	ldh a, [rSCX]                                    ; $5869: $f0 $43
	db $f4                                           ; $586b: $f4
	add c                                            ; $586c: $81
	ld h, d                                          ; $586d: $62
	add d                                            ; $586e: $82
	add hl, sp                                       ; $586f: $39
	ld c, e                                          ; $5870: $4b
	sbc h                                            ; $5871: $9c
	ld d, e                                          ; $5872: $53
	ld a, [hl-]                                      ; $5873: $3a
	jr c, @+$65                                      ; $5874: $38 $63

jr_099_5876:
	and b                                            ; $5876: $a0
	cpl                                              ; $5877: $2f
	ld h, $43                                        ; $5878: $26 $43
	ld b, b                                          ; $587a: $40
	add hl, sp                                       ; $587b: $39
	ld b, h                                          ; $587c: $44
	ld c, c                                          ; $587d: $49
	jr c, jr_099_58b8                                ; $587e: $38 $38

	ld b, c                                          ; $5880: $41
	ld b, h                                          ; $5881: $44
	ld e, l                                          ; $5882: $5d
	ld e, d                                          ; $5883: $5a
	and b                                            ; $5884: $a0
	cpl                                              ; $5885: $2f
	ret                                              ; $5886: $c9


	db $ed                                           ; $5887: $ed
	ld h, h                                          ; $5888: $64
	ld c, b                                          ; $5889: $48
	dec [hl]                                         ; $588a: $35
	dec h                                            ; $588b: $25
	add hl, bc                                       ; $588c: $09
	add hl, bc                                       ; $588d: $09
	cpl                                              ; $588e: $2f
	ld h, $43                                        ; $588f: $26 $43
	ld b, [hl]                                       ; $5891: $46
	inc [hl]                                         ; $5892: $34
	db $eb                                           ; $5893: $eb
	ld a, [$3548]                                    ; $5894: $fa $48 $35
	dec h                                            ; $5897: $25
	add hl, bc                                       ; $5898: $09
	cpl                                              ; $5899: $2f
	ld d, h                                          ; $589a: $54
	ld b, c                                          ; $589b: $41
	ld a, [hl-]                                      ; $589c: $3a
	ld c, c                                          ; $589d: $49
	ld d, h                                          ; $589e: $54

jr_099_589f:
	ld b, a                                          ; $589f: $47
	pop af                                           ; $58a0: $f1
	ld bc, $4df0                                     ; $58a1: $01 $f0 $4d
	sub h                                            ; $58a4: $94
	ld d, c                                          ; $58a5: $51
	ld b, d                                          ; $58a6: $42
	add hl, bc                                       ; $58a7: $09
	cpl                                              ; $58a8: $2f
	ld l, e                                          ; $58a9: $6b
	ld b, h                                          ; $58aa: $44
	ld a, [hl-]                                      ; $58ab: $3a
	ld c, c                                          ; $58ac: $49
	ld [hl], a                                       ; $58ad: $77
	dec sp                                           ; $58ae: $3b
	dec a                                            ; $58af: $3d
	ld e, l                                          ; $58b0: $5d
	ld e, d                                          ; $58b1: $5a
	and b                                            ; $58b2: $a0
	cpl                                              ; $58b3: $2f
	db $ed                                           ; $58b4: $ed
	ld a, c                                          ; $58b5: $79
	ld d, c                                          ; $58b6: $51
	ld c, [hl]                                       ; $58b7: $4e

jr_099_58b8:
	sbc [hl]                                         ; $58b8: $9e
	ld b, a                                          ; $58b9: $47
	inc [hl]                                         ; $58ba: $34
	db $eb                                           ; $58bb: $eb
	db $f4                                           ; $58bc: $f4
	add hl, bc                                       ; $58bd: $09
	cpl                                              ; $58be: $2f
	add d                                            ; $58bf: $82
	jr c, jr_099_58ff                                ; $58c0: $38 $3d

	jr c, jr_099_5918                                ; $58c2: $38 $54

	ld c, c                                          ; $58c4: $49
	ld d, e                                          ; $58c5: $53
	ld b, [hl]                                       ; $58c6: $46
	ld c, [hl]                                       ; $58c7: $4e
	dec sp                                           ; $58c8: $3b
	ccf                                              ; $58c9: $3f
	jr c, jr_099_5905                                ; $58ca: $38 $39

	inc a                                            ; $58cc: $3c
	inc [hl]                                         ; $58cd: $34
	add hl, bc                                       ; $58ce: $09
	cpl                                              ; $58cf: $2f
	ld l, e                                          ; $58d0: $6b
	ccf                                              ; $58d1: $3f
	add d                                            ; $58d2: $82
	add hl, sp                                       ; $58d3: $39
	inc a                                            ; $58d4: $3c
	ld c, b                                          ; $58d5: $48
	and b                                            ; $58d6: $a0
	cpl                                              ; $58d7: $2f
	ld h, $43                                        ; $58d8: $26 $43
	add d                                            ; $58da: $82
	jr c, jr_099_591a                                ; $58db: $38 $3d

	jr c, @-$64                                      ; $58dd: $38 $9a

	dec sp                                           ; $58df: $3b
	ccf                                              ; $58e0: $3f
	ld l, e                                          ; $58e1: $6b
	ld [hl], $25                                     ; $58e2: $36 $25
	add hl, bc                                       ; $58e4: $09
	cpl                                              ; $58e5: $2f
	jr c, jr_099_593a                                ; $58e6: $38 $52

	ld d, d                                          ; $58e8: $52
	ld c, d                                          ; $58e9: $4a
	inc [hl]                                         ; $58ea: $34
	add hl, bc                                       ; $58eb: $09
	cpl                                              ; $58ec: $2f
	db $ed                                           ; $58ed: $ed
	ld a, e                                          ; $58ee: $7b
	ld b, d                                          ; $58ef: $42
	pop af                                           ; $58f0: $f1
	ld l, [hl]                                       ; $58f1: $6e
	ldh a, [$cf]                                     ; $58f2: $f0 $cf
	ld a, [hl-]                                      ; $58f4: $3a
	ldh a, [$30]                                     ; $58f5: $f0 $30
	ldh a, [$28]                                     ; $58f7: $f0 $28
	ld b, a                                          ; $58f9: $47
	ld h, a                                          ; $58fa: $67
	dec sp                                           ; $58fb: $3b
	ccf                                              ; $58fc: $3f
	inc [hl]                                         ; $58fd: $34
	add hl, bc                                       ; $58fe: $09

jr_099_58ff:
	cpl                                              ; $58ff: $2f
	ldh a, [$b2]                                     ; $5900: $f0 $b2
	ldh a, [$fe]                                     ; $5902: $f0 $fe
	ld b, d                                          ; $5904: $42

jr_099_5905:
	ld d, e                                          ; $5905: $53
	add hl, bc                                       ; $5906: $09
	cpl                                              ; $5907: $2f
	db $ed                                           ; $5908: $ed
	ld [hl], d                                       ; $5909: $72
	ld b, d                                          ; $590a: $42
	sub b                                            ; $590b: $90
	ld a, $6c                                        ; $590c: $3e $6c
	ld b, h                                          ; $590e: $44
	dec sp                                           ; $590f: $3b
	dec a                                            ; $5910: $3d
	ld e, l                                          ; $5911: $5d
	ld e, d                                          ; $5912: $5a
	ld c, b                                          ; $5913: $48
	and b                                            ; $5914: $a0
	cpl                                              ; $5915: $2f
	ld l, e                                          ; $5916: $6b
	ccf                                              ; $5917: $3f

jr_099_5918:
	add d                                            ; $5918: $82
	add hl, sp                                       ; $5919: $39

jr_099_591a:
	inc a                                            ; $591a: $3c
	inc [hl]                                         ; $591b: $34
	ldh a, [$5f]                                     ; $591c: $f0 $5f
	ldh a, [$9b]                                     ; $591e: $f0 $9b
	inc [hl]                                         ; $5920: $34
	ld b, b                                          ; $5921: $40
	ld c, l                                          ; $5922: $4d
	ld c, a                                          ; $5923: $4f
	add hl, bc                                       ; $5924: $09
	cpl                                              ; $5925: $2f
	ldh a, [c]                                       ; $5926: $f2
	ld a, [hl]                                       ; $5927: $7e
	ld e, h                                          ; $5928: $5c
	ld h, c                                          ; $5929: $61
	ld d, [hl]                                       ; $592a: $56
	dec sp                                           ; $592b: $3b
	dec a                                            ; $592c: $3d
	ld l, h                                          ; $592d: $6c
	dec a                                            ; $592e: $3d
	jr c, @+$3c                                      ; $592f: $38 $3a

	ldh a, [$78]                                     ; $5931: $f0 $78
	ld e, e                                          ; $5933: $5b
	and b                                            ; $5934: $a0
	cpl                                              ; $5935: $2f
	ld l, [hl]                                       ; $5936: $6e
	dec sp                                           ; $5937: $3b
	ldh a, [$36]                                     ; $5938: $f0 $36

jr_099_593a:
	ld c, b                                          ; $593a: $48
	inc [hl]                                         ; $593b: $34
	adc e                                            ; $593c: $8b
	ld e, h                                          ; $593d: $5c
	ld a, [hl-]                                      ; $593e: $3a
	add h                                            ; $593f: $84
	ld c, c                                          ; $5940: $49
	xor $06                                          ; $5941: $ee $06
	ld a, [hl-]                                      ; $5943: $3a
	ld d, b                                          ; $5944: $50
	add hl, bc                                       ; $5945: $09
	cpl                                              ; $5946: $2f
	ld l, e                                          ; $5947: $6b
	db $f4                                           ; $5948: $f4
	dec h                                            ; $5949: $25
	ld b, a                                          ; $594a: $47
	ld c, a                                          ; $594b: $4f
	ld h, a                                          ; $594c: $67
	inc a                                            ; $594d: $3c
	ld a, [hl-]                                      ; $594e: $3a
	ld d, l                                          ; $594f: $55
	ccf                                              ; $5950: $3f
	ld c, a                                          ; $5951: $4f
	add hl, bc                                       ; $5952: $09
	cpl                                              ; $5953: $2f
	sub b                                            ; $5954: $90
	ld a, $38                                        ; $5955: $3e $38
	ld c, c                                          ; $5957: $49
	ld [hl], a                                       ; $5958: $77
	add hl, sp                                       ; $5959: $39
	and b                                            ; $595a: $a0
	cpl                                              ; $595b: $2f
	ld d, h                                          ; $595c: $54
	add hl, sp                                       ; $595d: $39
	ld a, $3f                                        ; $595e: $3e $3f
	ld c, [hl]                                       ; $5960: $4e
	ld l, d                                          ; $5961: $6a
	ld c, a                                          ; $5962: $4f
	inc [hl]                                         ; $5963: $34
	ld b, b                                          ; $5964: $40
	add hl, sp                                       ; $5965: $39
	ld [hl], a                                       ; $5966: $77
	add hl, sp                                       ; $5967: $39
	and b                                            ; $5968: $a0
	cpl                                              ; $5969: $2f
	ld h, $43                                        ; $596a: $26 $43
	db $ec                                           ; $596c: $ec
	ldh a, [$34]                                     ; $596d: $f0 $34
	ldh a, [c]                                       ; $596f: $f2
	ld a, [hl]                                       ; $5970: $7e
	ld e, h                                          ; $5971: $5c
	ld h, c                                          ; $5972: $61
	ld d, [hl]                                       ; $5973: $56
	dec sp                                           ; $5974: $3b
	dec a                                            ; $5975: $3d

jr_099_5976:
	ld b, d                                          ; $5976: $42
	dec [hl]                                         ; $5977: $35
	dec h                                            ; $5978: $25
	add hl, bc                                       ; $5979: $09
	cpl                                              ; $597a: $2f
	ld c, a                                          ; $597b: $4f
	add hl, sp                                       ; $597c: $39
	inc [hl]                                         ; $597d: $34
	ldh a, [hDisp0_WX]                                     ; $597e: $f0 $89
	ldh a, [$03]                                     ; $5980: $f0 $03
	pop af                                           ; $5982: $f1
	or d                                             ; $5983: $b2
	pop af                                           ; $5984: $f1
	ld c, b                                          ; $5985: $48
	ld a, [hl-]                                      ; $5986: $3a
	ld b, c                                          ; $5987: $41
	ld b, h                                          ; $5988: $44
	inc a                                            ; $5989: $3c
	ld d, b                                          ; $598a: $50
	and d                                            ; $598b: $a2
	cpl                                              ; $598c: $2f
	ld l, a                                          ; $598d: $6f
	ld c, e                                          ; $598e: $4b

jr_099_598f:
	inc [hl]                                         ; $598f: $34
	ld b, [hl]                                       ; $5990: $46
	ld a, [hl-]                                      ; $5991: $3a
	dec a                                            ; $5992: $3d
	ld c, c                                          ; $5993: $49
	jr c, jr_099_59e4                                ; $5994: $38 $4e

	ld b, d                                          ; $5996: $42
	ld d, e                                          ; $5997: $53
	sub b                                            ; $5998: $90
	ld a, $38                                        ; $5999: $3e $38
	add hl, bc                                       ; $599b: $09
	cpl                                              ; $599c: $2f
	dec sp                                           ; $599d: $3b
	ccf                                              ; $599e: $3f
	add d                                            ; $599f: $82
	dec sp                                           ; $59a0: $3b
	ccf                                              ; $59a1: $3f
	ld c, [hl]                                       ; $59a2: $4e
	ld b, d                                          ; $59a3: $42
	and d                                            ; $59a4: $a2
	cpl                                              ; $59a5: $2f
	ld h, $43                                        ; $59a6: $26 $43
	ld b, b                                          ; $59a8: $40
	inc [hl]                                         ; $59a9: $34
	ld b, b                                          ; $59aa: $40
	ld c, l                                          ; $59ab: $4d
	dec sp                                           ; $59ac: $3b
	ccf                                              ; $59ad: $3f
	ld c, b                                          ; $59ae: $48
	dec [hl]                                         ; $59af: $35
	dec h                                            ; $59b0: $25
	add hl, bc                                       ; $59b1: $09
	cpl                                              ; $59b2: $2f
	pop af                                           ; $59b3: $f1
	ld d, d                                          ; $59b4: $52
	db $eb                                           ; $59b5: $eb
	ld c, a                                          ; $59b6: $4f
	ld e, l                                          ; $59b7: $5d
	ld e, d                                          ; $59b8: $5a
	ld c, b                                          ; $59b9: $48
	inc [hl]                                         ; $59ba: $34
	add hl, bc                                       ; $59bb: $09
	cpl                                              ; $59bc: $2f
	ld l, a                                          ; $59bd: $6f
	inc [hl]                                         ; $59be: $34
	ld b, [hl]                                       ; $59bf: $46
	ld a, [hl-]                                      ; $59c0: $3a
	dec a                                            ; $59c1: $3d
	ld b, d                                          ; $59c2: $42
	ld d, h                                          ; $59c3: $54
	ld c, c                                          ; $59c4: $49
	add hl, bc                                       ; $59c5: $09
	cpl                                              ; $59c6: $2f
	adc e                                            ; $59c7: $8b
	ld e, h                                          ; $59c8: $5c
	ld b, a                                          ; $59c9: $47
	ld a, [hl-]                                      ; $59ca: $3a
	dec sp                                           ; $59cb: $3b
	ld h, c                                          ; $59cc: $61
	ld d, [hl]                                       ; $59cd: $56
	dec sp                                           ; $59ce: $3b
	dec a                                            ; $59cf: $3d
	ld l, h                                          ; $59d0: $6c
	dec a                                            ; $59d1: $3d
	jr c, jr_099_5976                                ; $59d2: $38 $a2

	cpl                                              ; $59d4: $2f
	ld c, a                                          ; $59d5: $4f
	add hl, sp                                       ; $59d6: $39
	inc [hl]                                         ; $59d7: $34
	ld b, [hl]                                       ; $59d8: $46
	ld a, [hl-]                                      ; $59d9: $3a
	dec a                                            ; $59da: $3d
	ld b, h                                          ; $59db: $44
	ld e, l                                          ; $59dc: $5d
	jr c, jr_099_5a1e                                ; $59dd: $38 $3f

	ld d, l                                          ; $59df: $55
	ld c, l                                          ; $59e0: $4d
	dec a                                            ; $59e1: $3d
	ld d, b                                          ; $59e2: $50
	inc [hl]                                         ; $59e3: $34

jr_099_59e4:
	add hl, bc                                       ; $59e4: $09
	cpl                                              ; $59e5: $2f
	ld l, e                                          ; $59e6: $6b
	ld c, a                                          ; $59e7: $4f
	jr c, jr_099_5a3a                                ; $59e8: $38 $50

	ld a, [hl-]                                      ; $59ea: $3a
	jr c, jr_099_598f                                ; $59eb: $38 $a2

	cpl                                              ; $59ed: $2f
	db $ed                                           ; $59ee: $ed
	ld a, e                                          ; $59ef: $7b
	ld a, [hl-]                                      ; $59f0: $3a
	ld b, c                                          ; $59f1: $41
	ccf                                              ; $59f2: $3f
	inc [hl]                                         ; $59f3: $34
	ld e, d                                          ; $59f4: $5a
	add hl, sp                                       ; $59f5: $39
	ld c, d                                          ; $59f6: $4a
	ld c, a                                          ; $59f7: $4f
	jr c, jr_099_5a32                                ; $59f8: $38 $38

	and d                                            ; $59fa: $a2
	cpl                                              ; $59fb: $2f
	ld c, b                                          ; $59fc: $48
	db $ec                                           ; $59fd: $ec
	jr nz, jr_099_5a6f                               ; $59fe: $20 $6f

	ld c, c                                          ; $5a00: $49
	ldh a, [$9a]                                     ; $5a01: $f0 $9a
	ld e, h                                          ; $5a03: $5c
	ldh a, [rTMA]                                    ; $5a04: $f0 $06
	dec sp                                           ; $5a06: $3b
	ccf                                              ; $5a07: $3f
	scf                                              ; $5a08: $37
	and d                                            ; $5a09: $a2
	cpl                                              ; $5a0a: $2f
	ld h, $43                                        ; $5a0b: $26 $43
	ldh a, [$31]                                     ; $5a0d: $f0 $31
	ld c, e                                          ; $5a0f: $4b
	inc [hl]                                         ; $5a10: $34
	halt                                             ; $5a11: $76
	ld c, a                                          ; $5a12: $4f
	add hl, bc                                       ; $5a13: $09
	cpl                                              ; $5a14: $2f
	db $eb                                           ; $5a15: $eb
	ld a, [$9a42]                                    ; $5a16: $fa $42 $9a
	ld d, e                                          ; $5a19: $53
	ld c, b                                          ; $5a1a: $48
	dec [hl]                                         ; $5a1b: $35
	dec h                                            ; $5a1c: $25
	add hl, bc                                       ; $5a1d: $09

jr_099_5a1e:
	cpl                                              ; $5a1e: $2f
	pop af                                           ; $5a1f: $f1
	ld d, d                                          ; $5a20: $52
	ldh a, [$29]                                     ; $5a21: $f0 $29
	ld a, $38                                        ; $5a23: $3e $38
	and d                                            ; $5a25: $a2
	cpl                                              ; $5a26: $2f
	ld c, d                                          ; $5a27: $4a
	ld c, a                                          ; $5a28: $4f
	ld c, b                                          ; $5a29: $48
	inc [hl]                                         ; $5a2a: $34
	db $ec                                           ; $5a2b: $ec
	reti                                             ; $5a2c: $d9


	add hl, bc                                       ; $5a2d: $09
	cpl                                              ; $5a2e: $2f
	xor $06                                          ; $5a2f: $ee $06
	ld b, a                                          ; $5a31: $47

jr_099_5a32:
	jr c, jr_099_5a82                                ; $5a32: $38 $4e

	ld b, h                                          ; $5a34: $44
	ld e, l                                          ; $5a35: $5d
	ld b, l                                          ; $5a36: $45
	ld d, a                                          ; $5a37: $57
	ld c, a                                          ; $5a38: $4f
	ld c, b                                          ; $5a39: $48

jr_099_5a3a:
	inc [hl]                                         ; $5a3a: $34
	add hl, bc                                       ; $5a3b: $09
	cpl                                              ; $5a3c: $2f
	ld l, e                                          ; $5a3d: $6b
	db $f4                                           ; $5a3e: $f4
	dec h                                            ; $5a3f: $25
	inc a                                            ; $5a40: $3c
	ld b, a                                          ; $5a41: $47
	ldh a, [$b2]                                     ; $5a42: $f0 $b2
	ldh a, [rKEY1]                                   ; $5a44: $f0 $4d
	ld b, a                                          ; $5a46: $47
	ld h, a                                          ; $5a47: $67
	dec sp                                           ; $5a48: $3b
	dec a                                            ; $5a49: $3d
	ldh a, [$08]                                     ; $5a4a: $f0 $08
	add hl, sp                                       ; $5a4c: $39
	ld d, e                                          ; $5a4d: $53
	add hl, bc                                       ; $5a4e: $09
	cpl                                              ; $5a4f: $2f
	sub b                                            ; $5a50: $90
	ld a, $38                                        ; $5a51: $3e $38
	ld b, l                                          ; $5a53: $45
	ld c, h                                          ; $5a54: $4c
	and c                                            ; $5a55: $a1
	cpl                                              ; $5a56: $2f
	ld h, $43                                        ; $5a57: $26 $43
	rst JumpTable                                          ; $5a59: $c7
	ld b, h                                          ; $5a5a: $44
	ld c, h                                          ; $5a5b: $4c
	dec [hl]                                         ; $5a5c: $35
	dec h                                            ; $5a5d: $25
	add hl, bc                                       ; $5a5e: $09
	cpl                                              ; $5a5f: $2f
	db $ed                                           ; $5a60: $ed
	ld a, c                                          ; $5a61: $79
	ld a, $3d                                        ; $5a62: $3e $3d
	ld d, b                                          ; $5a64: $50
	ld e, b                                          ; $5a65: $58
	inc [hl]                                         ; $5a66: $34
	add hl, bc                                       ; $5a67: $09
	cpl                                              ; $5a68: $2f
	ld e, d                                          ; $5a69: $5a
	dec sp                                           ; $5a6a: $3b
	inc a                                            ; $5a6b: $3c
	pop af                                           ; $5a6c: $f1
	ld b, a                                          ; $5a6d: $47
	ld h, a                                          ; $5a6e: $67

jr_099_5a6f:
	ld b, a                                          ; $5a6f: $47
	call $2fa0                                       ; $5a70: $cd $a0 $2f
	ld h, $43                                        ; $5a73: $26 $43
	ld [$35c3], a                                    ; $5a75: $ea $c3 $35
	dec h                                            ; $5a78: $25
	add hl, bc                                       ; $5a79: $09
	cpl                                              ; $5a7a: $2f
	ld b, b                                          ; $5a7b: $40
	ld c, l                                          ; $5a7c: $4d
	ld e, e                                          ; $5a7d: $5b
	ld d, [hl]                                       ; $5a7e: $56
	inc [hl]                                         ; $5a7f: $34
	ld d, h                                          ; $5a80: $54
	ld c, l                                          ; $5a81: $4d

jr_099_5a82:
	inc a                                            ; $5a82: $3c
	ld d, b                                          ; $5a83: $50
	add hl, bc                                       ; $5a84: $09
	cpl                                              ; $5a85: $2f
	pop af                                           ; $5a86: $f1
	ld b, a                                          ; $5a87: $47
	ld h, a                                          ; $5a88: $67
	pop af                                           ; $5a89: $f1
	call Call_099_63f0                               ; $5a8a: $cd $f0 $63
	di                                               ; $5a8d: $f3
	cp l                                             ; $5a8e: $bd
	ld b, a                                          ; $5a8f: $47
	call $2fa0                                       ; $5a90: $cd $a0 $2f
	ldh a, [$08]                                     ; $5a93: $f0 $08
	ld d, b                                          ; $5a95: $50
	inc [hl]                                         ; $5a96: $34
	ldh a, [$0a]                                     ; $5a97: $f0 $0a
	ld d, l                                          ; $5a99: $55
	ldh a, [$0a]                                     ; $5a9a: $f0 $0a
	ld d, l                                          ; $5a9c: $55
	ldh a, [c]                                       ; $5a9d: $f2
	ld l, h                                          ; $5a9e: $6c
	and b                                            ; $5a9f: $a0
	cpl                                              ; $5aa0: $2f
	ld h, $32                                        ; $5aa1: $26 $32
	db $ed                                           ; $5aa3: $ed
	ld e, [hl]                                       ; $5aa4: $5e
	ldh a, [$5d]                                     ; $5aa5: $f0 $5d
	ld h, e                                          ; $5aa7: $63
	ld d, b                                          ; $5aa8: $50
	ld a, [hl-]                                      ; $5aa9: $3a
	jr c, jr_099_5b09                                ; $5aaa: $38 $5d

	ld e, d                                          ; $5aac: $5a
	ld c, b                                          ; $5aad: $48
	inc [hl]                                         ; $5aae: $34
	add hl, bc                                       ; $5aaf: $09
	cpl                                              ; $5ab0: $2f
	ld d, d                                          ; $5ab1: $52
	inc [hl]                                         ; $5ab2: $34
	jr c, @+$3a                                      ; $5ab3: $38 $38

	inc a                                            ; $5ab5: $3c
	dec [hl]                                         ; $5ab6: $35
	inc sp                                           ; $5ab7: $33
	dec h                                            ; $5ab8: $25
	add hl, bc                                       ; $5ab9: $09
	add hl, bc                                       ; $5aba: $09
	cpl                                              ; $5abb: $2f
	ld h, $43                                        ; $5abc: $26 $43
	ldh a, [$b5]                                     ; $5abe: $f0 $b5
	inc [hl]                                         ; $5ac0: $34
	db $eb                                           ; $5ac1: $eb
	db $fc                                           ; $5ac2: $fc
	ld c, b                                          ; $5ac3: $48
	dec [hl]                                         ; $5ac4: $35
	dec h                                            ; $5ac5: $25
	add hl, bc                                       ; $5ac6: $09
	cpl                                              ; $5ac7: $2f
	db $eb                                           ; $5ac8: $eb
	ccf                                              ; $5ac9: $3f
	and b                                            ; $5aca: $a0
	cpl                                              ; $5acb: $2f
	ld d, h                                          ; $5acc: $54
	ld b, c                                          ; $5acd: $41
	ld a, [hl-]                                      ; $5ace: $3a
	ldh a, [$28]                                     ; $5acf: $f0 $28
	ld b, a                                          ; $5ad1: $47
	add hl, bc                                       ; $5ad2: $09
	cpl                                              ; $5ad3: $2f
	pop af                                           ; $5ad4: $f1
	ld bc, $4df0                                     ; $5ad5: $01 $f0 $4d
	sub h                                            ; $5ad8: $94
	db $eb                                           ; $5ad9: $eb
	ld d, [hl]                                       ; $5ada: $56
	ld d, a                                          ; $5adb: $57
	ld a, $3f                                        ; $5adc: $3e $3f
	ld c, b                                          ; $5ade: $48
	and b                                            ; $5adf: $a0
	cpl                                              ; $5ae0: $2f
	ld h, $43                                        ; $5ae1: $26 $43
	jr c, jr_099_5b53                                ; $5ae3: $38 $6e

	inc [hl]                                         ; $5ae5: $34
	call nc, $3545                                   ; $5ae6: $d4 $45 $35
	dec h                                            ; $5ae9: $25
	add hl, bc                                       ; $5aea: $09
	cpl                                              ; $5aeb: $2f
	xor $1e                                          ; $5aec: $ee $1e
	ld c, h                                          ; $5aee: $4c
	and b                                            ; $5aef: $a0
	cpl                                              ; $5af0: $2f
	xor $27                                          ; $5af1: $ee $27
	ld c, h                                          ; $5af3: $4c
	and b                                            ; $5af4: $a0
	cpl                                              ; $5af5: $2f
	sbc h                                            ; $5af6: $9c
	dec sp                                           ; $5af7: $3b
	ld c, c                                          ; $5af8: $49
	ldh a, [$bc]                                     ; $5af9: $f0 $bc
	ldh a, [c]                                       ; $5afb: $f2
	inc bc                                           ; $5afc: $03
	ld c, c                                          ; $5afd: $49
	ldh a, [$cd]                                     ; $5afe: $f0 $cd
	ld e, e                                          ; $5b00: $5b
	adc c                                            ; $5b01: $89
	ldh a, [rAUD1HIGH]                               ; $5b02: $f0 $14
	ld b, a                                          ; $5b04: $47
	add hl, bc                                       ; $5b05: $09
	cpl                                              ; $5b06: $2f
	ld a, [hl-]                                      ; $5b07: $3a
	ld d, a                                          ; $5b08: $57

jr_099_5b09:
	dec a                                            ; $5b09: $3d
	inc a                                            ; $5b0a: $3c
	dec sp                                           ; $5b0b: $3b
	dec a                                            ; $5b0c: $3d
	ld b, c                                          ; $5b0d: $41
	ld c, d                                          ; $5b0e: $4a
	ld d, c                                          ; $5b0f: $51
	and b                                            ; $5b10: $a0
	cpl                                              ; $5b11: $2f
	ldh a, [$cd]                                     ; $5b12: $f0 $cd
	ld e, e                                          ; $5b14: $5b
	adc c                                            ; $5b15: $89
	ldh a, [rAUD1HIGH]                               ; $5b16: $f0 $14
	ld b, h                                          ; $5b18: $44
	dec sp                                           ; $5b19: $3b
	dec a                                            ; $5b1a: $3d
	ld d, b                                          ; $5b1b: $50
	inc [hl]                                         ; $5b1c: $34
	ldh a, [rAUD1ENV]                                ; $5b1d: $f0 $12
	sbc a                                            ; $5b1f: $9f
	ld c, a                                          ; $5b20: $4f
	add hl, bc                                       ; $5b21: $09
	cpl                                              ; $5b22: $2f
	ldh a, [$e5]                                     ; $5b23: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $5b25: $f0 $14
	ldh a, [$2a]                                     ; $5b27: $f0 $2a
	xor $06                                          ; $5b29: $ee $06
	ld b, a                                          ; $5b2b: $47
	jr c, @+$52                                      ; $5b2c: $38 $50

	ld c, l                                          ; $5b2e: $4d
	dec a                                            ; $5b2f: $3d
	ld a, $34                                        ; $5b30: $3e $34
	add hl, bc                                       ; $5b32: $09
	cpl                                              ; $5b33: $2f
	db $ec                                           ; $5b34: $ec
	call nz, Call_099_43ed                           ; $5b35: $c4 $ed $43
	add hl, bc                                       ; $5b38: $09
	cpl                                              ; $5b39: $2f
	xor $06                                          ; $5b3a: $ee $06
	ld b, a                                          ; $5b3c: $47
	ld h, a                                          ; $5b3d: $67
	ld e, l                                          ; $5b3e: $5d
	dec a                                            ; $5b3f: $3d
	ld b, d                                          ; $5b40: $42
	ld b, a                                          ; $5b41: $47
	ld c, b                                          ; $5b42: $48
	and b                                            ; $5b43: $a0
	cpl                                              ; $5b44: $2f
	db $ec                                           ; $5b45: $ec
	db $d3                                           ; $5b46: $d3
	inc [hl]                                         ; $5b47: $34
	add hl, bc                                       ; $5b48: $09
	cpl                                              ; $5b49: $2f
	db $eb                                           ; $5b4a: $eb
	pop af                                           ; $5b4b: $f1
	ld b, d                                          ; $5b4c: $42
	ldh a, [rTIMA]                                   ; $5b4d: $f0 $05
	ld d, d                                          ; $5b4f: $52
	ld c, l                                          ; $5b50: $4d
	ld c, [hl]                                       ; $5b51: $4e
	ld c, c                                          ; $5b52: $49

jr_099_5b53:
	ld e, h                                          ; $5b53: $5c
	ld b, a                                          ; $5b54: $47
	add hl, bc                                       ; $5b55: $09
	cpl                                              ; $5b56: $2f
	xor $27                                          ; $5b57: $ee $27
	ld d, e                                          ; $5b59: $53
	add hl, bc                                       ; $5b5a: $09
	cpl                                              ; $5b5b: $2f
	ldh a, [rTIMA]                                   ; $5b5c: $f0 $05
	ld d, d                                          ; $5b5e: $52
	ld c, l                                          ; $5b5f: $4d
	ld a, [hl-]                                      ; $5b60: $3a
	inc a                                            ; $5b61: $3c
	dec sp                                           ; $5b62: $3b
	dec a                                            ; $5b63: $3d
	ld b, d                                          ; $5b64: $42
	inc a                                            ; $5b65: $3c
	ld a, [hl-]                                      ; $5b66: $3a
	dec sp                                           ; $5b67: $3b
	ccf                                              ; $5b68: $3f
	ld c, b                                          ; $5b69: $48
	and b                                            ; $5b6a: $a0
	cpl                                              ; $5b6b: $2f
	db $ed                                           ; $5b6c: $ed
	ld h, c                                          ; $5b6d: $61
	ld c, a                                          ; $5b6e: $4f
	inc [hl]                                         ; $5b6f: $34
	ldh a, [c]                                       ; $5b70: $f2
	adc c                                            ; $5b71: $89
	jr c, jr_099_5bd5                                ; $5b72: $38 $61

	ld d, [hl]                                       ; $5b74: $56
	dec sp                                           ; $5b75: $3b
	dec a                                            ; $5b76: $3d
	and b                                            ; $5b77: $a0
	cpl                                              ; $5b78: $2f
	xor $27                                          ; $5b79: $ee $27
	ld c, h                                          ; $5b7b: $4c
	inc [hl]                                         ; $5b7c: $34
	ldh a, [$bc]                                     ; $5b7d: $f0 $bc
	ldh a, [c]                                       ; $5b7f: $f2
	inc bc                                           ; $5b80: $03
	ld b, d                                          ; $5b81: $42
	adc c                                            ; $5b82: $89
	ldh a, [rAUD1HIGH]                               ; $5b83: $f0 $14
	ld b, d                                          ; $5b85: $42
	add hl, bc                                       ; $5b86: $09
	cpl                                              ; $5b87: $2f
	ldh a, [rAUD2ENV]                                ; $5b88: $f0 $17
	ld b, d                                          ; $5b8a: $42
	add h                                            ; $5b8b: $84
	ld c, c                                          ; $5b8c: $49
	di                                               ; $5b8d: $f3
	rla                                              ; $5b8e: $17
	ldh a, [$8c]                                     ; $5b8f: $f0 $8c
	dec a                                            ; $5b91: $3d
	ld d, b                                          ; $5b92: $50
	inc [hl]                                         ; $5b93: $34
	add hl, bc                                       ; $5b94: $09
	cpl                                              ; $5b95: $2f
	db $ed                                           ; $5b96: $ed
	ld h, a                                          ; $5b97: $67
	dec sp                                           ; $5b98: $3b
	pop af                                           ; $5b99: $f1
	rla                                              ; $5b9a: $17
	ld d, l                                          ; $5b9b: $55
	ccf                                              ; $5b9c: $3f
	inc [hl]                                         ; $5b9d: $34
	add hl, bc                                       ; $5b9e: $09
	cpl                                              ; $5b9f: $2f
	ld h, e                                          ; $5ba0: $63
	ld d, e                                          ; $5ba1: $53
	ld d, d                                          ; $5ba2: $52
	ld d, d                                          ; $5ba3: $52
	ld b, h                                          ; $5ba4: $44
	ld c, c                                          ; $5ba5: $49
	ld [hl], a                                       ; $5ba6: $77
	add hl, sp                                       ; $5ba7: $39
	and b                                            ; $5ba8: $a0
	cpl                                              ; $5ba9: $2f
	ld c, d                                          ; $5baa: $4a
	ld c, a                                          ; $5bab: $4f
	inc [hl]                                         ; $5bac: $34
	db $ed                                           ; $5bad: $ed
	ld h, a                                          ; $5bae: $67
	dec sp                                           ; $5baf: $3b
	pop af                                           ; $5bb0: $f1
	rla                                              ; $5bb1: $17
	jr c, jr_099_5bf6                                ; $5bb2: $38 $42

	ld d, e                                          ; $5bb4: $53
	ldh a, [$64]                                     ; $5bb5: $f0 $64
	ld a, [hl-]                                      ; $5bb7: $3a
	ld d, b                                          ; $5bb8: $50
	inc [hl]                                         ; $5bb9: $34
	add hl, bc                                       ; $5bba: $09
	cpl                                              ; $5bbb: $2f
	ld c, a                                          ; $5bbc: $4f
	dec sp                                           ; $5bbd: $3b
	ld c, c                                          ; $5bbe: $49
	add a                                            ; $5bbf: $87
	add h                                            ; $5bc0: $84
	dec sp                                           ; $5bc1: $3b
	pop af                                           ; $5bc2: $f1
	rla                                              ; $5bc3: $17
	ld d, l                                          ; $5bc4: $55
	ld a, [hl-]                                      ; $5bc5: $3a
	ld c, [hl]                                       ; $5bc6: $4e
	ld b, l                                          ; $5bc7: $45
	add hl, sp                                       ; $5bc8: $39
	add hl, bc                                       ; $5bc9: $09
	cpl                                              ; $5bca: $2f
	pop af                                           ; $5bcb: $f1
	db $dd                                           ; $5bcc: $dd
	ldh a, [$7f]                                     ; $5bcd: $f0 $7f
	ld a, $52                                        ; $5bcf: $3e $52
	ld d, c                                          ; $5bd1: $51
	and b                                            ; $5bd2: $a0
	cpl                                              ; $5bd3: $2f
	ld h, e                                          ; $5bd4: $63

jr_099_5bd5:
	ld d, e                                          ; $5bd5: $53
	ld d, d                                          ; $5bd6: $52
	ld d, d                                          ; $5bd7: $52
	ld c, a                                          ; $5bd8: $4f
	ldh a, [hDisp1_WX]                                     ; $5bd9: $f0 $96
	ld a, $52                                        ; $5bdb: $3e $52
	ld d, c                                          ; $5bdd: $51
	and b                                            ; $5bde: $a0
	cpl                                              ; $5bdf: $2f
	db $ec                                           ; $5be0: $ec
	jr nz, @-$13                                     ; $5be1: $20 $eb

	pop af                                           ; $5be3: $f1
	ld b, d                                          ; $5be4: $42
	add hl, bc                                       ; $5be5: $09
	cpl                                              ; $5be6: $2f
	di                                               ; $5be7: $f3
	jp c, $3e49                                      ; $5be8: $da $49 $3e

	ccf                                              ; $5beb: $3f
	ld e, e                                          ; $5bec: $5b
	ld d, [hl]                                       ; $5bed: $56
	ld a, [hl-]                                      ; $5bee: $3a
	ld d, l                                          ; $5bef: $55
	ccf                                              ; $5bf0: $3f
	inc [hl]                                         ; $5bf1: $34
	add hl, bc                                       ; $5bf2: $09
	cpl                                              ; $5bf3: $2f
	xor $08                                          ; $5bf4: $ee $08

jr_099_5bf6:
	ld b, d                                          ; $5bf6: $42
	pop hl                                           ; $5bf7: $e1
	ld c, c                                          ; $5bf8: $49
	ld a, $3f                                        ; $5bf9: $3e $3f
	add hl, bc                                       ; $5bfb: $09
	cpl                                              ; $5bfc: $2f
	ldh a, [$9a]                                     ; $5bfd: $f0 $9a
	ld e, h                                          ; $5bff: $5c
	ldh a, [rTMA]                                    ; $5c00: $f0 $06
	dec sp                                           ; $5c02: $3b
	ccf                                              ; $5c03: $3f
	db $ec                                           ; $5c04: $ec
	rst FarCall                                          ; $5c05: $f7
	and b                                            ; $5c06: $a0
	cpl                                              ; $5c07: $2f
	db $ed                                           ; $5c08: $ed
	ld b, e                                          ; $5c09: $43
	inc [hl]                                         ; $5c0a: $34
	ldh a, [$bc]                                     ; $5c0b: $f0 $bc
	ldh a, [c]                                       ; $5c0d: $f2
	inc bc                                           ; $5c0e: $03
	ld d, e                                          ; $5c0f: $53
	ldh a, [$f6]                                     ; $5c10: $f0 $f6
	pop af                                           ; $5c12: $f1
	inc [hl]                                         ; $5c13: $34
	ldh a, [rAUD2HIGH]                               ; $5c14: $f0 $19
	ld b, d                                          ; $5c16: $42
	ldh a, [$98]                                     ; $5c17: $f0 $98
	ld b, l                                          ; $5c19: $45
	ld d, a                                          ; $5c1a: $57
	add hl, bc                                       ; $5c1b: $09
	cpl                                              ; $5c1c: $2f
	add a                                            ; $5c1d: $87
	adc e                                            ; $5c1e: $8b
	ld e, h                                          ; $5c1f: $5c
	ld c, d                                          ; $5c20: $4a
	inc [hl]                                         ; $5c21: $34
	add hl, bc                                       ; $5c22: $09
	cpl                                              ; $5c23: $2f
	add a                                            ; $5c24: $87
	adc e                                            ; $5c25: $8b
	ld e, h                                          ; $5c26: $5c
	ld c, d                                          ; $5c27: $4a
	ld a, $3c                                        ; $5c28: $3e $3c
	dec a                                            ; $5c2a: $3d
	ld d, e                                          ; $5c2b: $53
	ld a, [hl-]                                      ; $5c2c: $3a
	jr c, jr_099_5c6b                                ; $5c2d: $38 $3c

	ld d, b                                          ; $5c2f: $50
	ld c, b                                          ; $5c30: $48
	and b                                            ; $5c31: $a0
	cpl                                              ; $5c32: $2f
	ld h, $43                                        ; $5c33: $26 $43
	ldh a, [$31]                                     ; $5c35: $f0 $31
	ld c, e                                          ; $5c37: $4b
	ld c, h                                          ; $5c38: $4c
	and b                                            ; $5c39: $a0
	cpl                                              ; $5c3a: $2f
	halt                                             ; $5c3b: $76
	ld c, a                                          ; $5c3c: $4f
	inc [hl]                                         ; $5c3d: $34
	db $eb                                           ; $5c3e: $eb
	db $fc                                           ; $5c3f: $fc
	ld d, e                                          ; $5c40: $53
	ld c, b                                          ; $5c41: $48
	dec [hl]                                         ; $5c42: $35
	dec h                                            ; $5c43: $25
	add hl, bc                                       ; $5c44: $09
	cpl                                              ; $5c45: $2f
	db $ed                                           ; $5c46: $ed
	ld b, c                                          ; $5c47: $41
	ld c, d                                          ; $5c48: $4a
	ld d, c                                          ; $5c49: $51
	inc a                                            ; $5c4a: $3c
	and c                                            ; $5c4b: $a1
	cpl                                              ; $5c4c: $2f
	ldh a, [rAUD1HIGH]                               ; $5c4d: $f0 $14
	ldh a, [$a3]                                     ; $5c4f: $f0 $a3
	ld c, d                                          ; $5c51: $4a
	ld c, a                                          ; $5c52: $4f
	db $eb                                           ; $5c53: $eb
	add a                                            ; $5c54: $87
	inc a                                            ; $5c55: $3c
	and c                                            ; $5c56: $a1
	cpl                                              ; $5c57: $2f
	ld h, $43                                        ; $5c58: $26 $43
	sub c                                            ; $5c5a: $91
	ldh a, [$59]                                     ; $5c5b: $f0 $59
	ld b, h                                          ; $5c5d: $44
	ld b, l                                          ; $5c5e: $45
	and b                                            ; $5c5f: $a0
	cpl                                              ; $5c60: $2f
	adc e                                            ; $5c61: $8b
	ld e, h                                          ; $5c62: $5c
	ld b, h                                          ; $5c63: $44
	ld b, l                                          ; $5c64: $45
	inc [hl]                                         ; $5c65: $34
	db $eb                                           ; $5c66: $eb
	db $fc                                           ; $5c67: $fc
	dec [hl]                                         ; $5c68: $35
	dec h                                            ; $5c69: $25
	add hl, bc                                       ; $5c6a: $09

jr_099_5c6b:
	cpl                                              ; $5c6b: $2f
	ld b, b                                          ; $5c6c: $40
	ld c, l                                          ; $5c6d: $4d
	ld e, e                                          ; $5c6e: $5b
	ld d, [hl]                                       ; $5c6f: $56
	inc [hl]                                         ; $5c70: $34
	add hl, bc                                       ; $5c71: $09
	cpl                                              ; $5c72: $2f
	ldh a, [c]                                       ; $5c73: $f2
	ld h, l                                          ; $5c74: $65
	pop af                                           ; $5c75: $f1
	ld a, d                                          ; $5c76: $7a
	ld b, d                                          ; $5c77: $42
	ldh a, [c]                                       ; $5c78: $f2
	ld [hl], $f0                                     ; $5c79: $36 $f0
	add h                                            ; $5c7b: $84
	ldh a, [$6e]                                     ; $5c7c: $f0 $6e
	ldh a, [rDIV]                                    ; $5c7e: $f0 $04
	ld h, l                                          ; $5c80: $65
	ld h, d                                          ; $5c81: $62
	db $ec                                           ; $5c82: $ec
	rst FarCall                                          ; $5c83: $f7
	and b                                            ; $5c84: $a0
	cpl                                              ; $5c85: $2f
	ld h, $43                                        ; $5c86: $26 $43
	jr c, jr_099_5cc2                                ; $5c88: $38 $38

	ld b, l                                          ; $5c8a: $45
	dec [hl]                                         ; $5c8b: $35
	xor $2d                                          ; $5c8c: $ee $2d
	dec [hl]                                         ; $5c8e: $35
	dec h                                            ; $5c8f: $25
	add hl, bc                                       ; $5c90: $09
	cpl                                              ; $5c91: $2f
	ldh a, [$a0]                                     ; $5c92: $f0 $a0
	ld e, c                                          ; $5c94: $59
	ld a, l                                          ; $5c95: $7d
	and b                                            ; $5c96: $a0
	cpl                                              ; $5c97: $2f
	ld d, h                                          ; $5c98: $54
	ld c, l                                          ; $5c99: $4d
	ld h, d                                          ; $5c9a: $62
	ld h, h                                          ; $5c9b: $64
	ldh a, [c]                                       ; $5c9c: $f2
	dec c                                            ; $5c9d: $0d
	ld d, a                                          ; $5c9e: $57
	ld b, a                                          ; $5c9f: $47
	ld a, $3f                                        ; $5ca0: $3e $3f
	inc [hl]                                         ; $5ca2: $34
	add hl, bc                                       ; $5ca3: $09
	cpl                                              ; $5ca4: $2f
	ld b, [hl]                                       ; $5ca5: $46
	ld c, c                                          ; $5ca6: $49
	ld l, l                                          ; $5ca7: $6d
	ldh a, [rAUD1HIGH]                               ; $5ca8: $f0 $14
	db $ed                                           ; $5caa: $ed
	nop                                              ; $5cab: $00
	ld d, d                                          ; $5cac: $52
	ld d, c                                          ; $5cad: $51
	and b                                            ; $5cae: $a0
	cpl                                              ; $5caf: $2f
	db $ed                                           ; $5cb0: $ed
	ld a, c                                          ; $5cb1: $79
	ld a, $3f                                        ; $5cb2: $3e $3f
	inc a                                            ; $5cb4: $3c
	ld d, b                                          ; $5cb5: $50
	ld c, a                                          ; $5cb6: $4f
	inc [hl]                                         ; $5cb7: $34
	add hl, bc                                       ; $5cb8: $09
	cpl                                              ; $5cb9: $2f
	db $eb                                           ; $5cba: $eb
	pop af                                           ; $5cbb: $f1
	ld b, a                                          ; $5cbc: $47
	ld c, d                                          ; $5cbd: $4a
	ld a, [hl-]                                      ; $5cbe: $3a
	ld d, l                                          ; $5cbf: $55
	inc [hl]                                         ; $5cc0: $34
	add hl, bc                                       ; $5cc1: $09

jr_099_5cc2:
	cpl                                              ; $5cc2: $2f
	xor $27                                          ; $5cc3: $ee $27
	ld b, a                                          ; $5cc5: $47
	ldh a, [rHDMA3]                                  ; $5cc6: $f0 $53
	add hl, sp                                       ; $5cc8: $39
	dec a                                            ; $5cc9: $3d
	ld [hl], c                                       ; $5cca: $71
	ld b, a                                          ; $5ccb: $47
	add hl, bc                                       ; $5ccc: $09
	cpl                                              ; $5ccd: $2f
	ldh a, [rSVBK]                                   ; $5cce: $f0 $70
	ld b, a                                          ; $5cd0: $47
	ldh a, [$b2]                                     ; $5cd1: $f0 $b2
	ldh a, [rKEY1]                                   ; $5cd3: $f0 $4d
	ld b, a                                          ; $5cd5: $47
	ld a, b                                          ; $5cd6: $78
	ccf                                              ; $5cd7: $3f
	db $ec                                           ; $5cd8: $ec
	rst FarCall                                          ; $5cd9: $f7
	ld c, h                                          ; $5cda: $4c
	and b                                            ; $5cdb: $a0
	cpl                                              ; $5cdc: $2f
	ld b, b                                          ; $5cdd: $40
	add hl, sp                                       ; $5cde: $39
	db $ec                                           ; $5cdf: $ec
	ret c                                            ; $5ce0: $d8

	ld c, c                                          ; $5ce1: $49
	inc [hl]                                         ; $5ce2: $34
	add hl, bc                                       ; $5ce3: $09
	cpl                                              ; $5ce4: $2f
	xor $27                                          ; $5ce5: $ee $27
	inc [hl]                                         ; $5ce7: $34
	pop af                                           ; $5ce8: $f1
	xor b                                            ; $5ce9: $a8
	ld a, $55                                        ; $5cea: $3e $55
	ccf                                              ; $5cec: $3f
	add hl, bc                                       ; $5ced: $09
	cpl                                              ; $5cee: $2f
	ldh a, [c]                                       ; $5cef: $f2
	adc c                                            ; $5cf0: $89
	jr c, jr_099_5d54                                ; $5cf1: $38 $61

	ld d, [hl]                                       ; $5cf3: $56
	add hl, sp                                       ; $5cf4: $39
	inc a                                            ; $5cf5: $3c
	ld d, b                                          ; $5cf6: $50
	and b                                            ; $5cf7: $a0
	cpl                                              ; $5cf8: $2f
	ld h, $43                                        ; $5cf9: $26 $43
	xor $1f                                          ; $5cfb: $ee $1f
	and b                                            ; $5cfd: $a0
	cpl                                              ; $5cfe: $2f
	ldh a, [c]                                       ; $5cff: $f2
	ld b, b                                          ; $5d00: $40
	sbc h                                            ; $5d01: $9c
	ld h, a                                          ; $5d02: $67
	ld d, l                                          ; $5d03: $55
	ld b, l                                          ; $5d04: $45
	dec [hl]                                         ; $5d05: $35
	dec h                                            ; $5d06: $25
	add hl, bc                                       ; $5d07: $09
	cpl                                              ; $5d08: $2f
	add hl, sp                                       ; $5d09: $39
	ld c, l                                          ; $5d0a: $4d
	ld a, $38                                        ; $5d0b: $3e $38
	and b                                            ; $5d0d: $a0
	cpl                                              ; $5d0e: $2f
	add a                                            ; $5d0f: $87
	adc e                                            ; $5d10: $8b
	ld e, h                                          ; $5d11: $5c
	ld c, d                                          ; $5d12: $4a
	ld d, c                                          ; $5d13: $51
	and b                                            ; $5d14: $a0
	cpl                                              ; $5d15: $2f
	ldh a, [$bc]                                     ; $5d16: $f0 $bc
	ldh a, [c]                                       ; $5d18: $f2
	inc bc                                           ; $5d19: $03
	and b                                            ; $5d1a: $a0
	cpl                                              ; $5d1b: $2f
	ld h, $32                                        ; $5d1c: $26 $32
	ld c, d                                          ; $5d1e: $4a
	ld c, a                                          ; $5d1f: $4f
	inc [hl]                                         ; $5d20: $34
	ldh a, [$80]                                     ; $5d21: $f0 $80
	ld a, [$3e48]                                    ; $5d23: $fa $48 $3e
	dec a                                            ; $5d26: $3d
	ld d, b                                          ; $5d27: $50
	inc [hl]                                         ; $5d28: $34
	add hl, bc                                       ; $5d29: $09
	cpl                                              ; $5d2a: $2f
	adc e                                            ; $5d2b: $8b
	ldh a, [$72]                                     ; $5d2c: $f0 $72
	ld b, d                                          ; $5d2e: $42
	ld hl, sp+$3a                                    ; $5d2f: $f8 $3a
	ld b, a                                          ; $5d31: $47
	ld a, [hl-]                                      ; $5d32: $3a
	ld c, [hl]                                       ; $5d33: $4e
	ld b, d                                          ; $5d34: $42
	inc a                                            ; $5d35: $3c
	ld c, b                                          ; $5d36: $48
	dec [hl]                                         ; $5d37: $35
	inc sp                                           ; $5d38: $33
	dec h                                            ; $5d39: $25
	add hl, bc                                       ; $5d3a: $09
	add hl, bc                                       ; $5d3b: $09
	cpl                                              ; $5d3c: $2f
	ld h, $43                                        ; $5d3d: $26 $43
	jr c, jr_099_5d75                                ; $5d3f: $38 $34

	db $ec                                           ; $5d41: $ec
	and $48                                          ; $5d42: $e6 $48
	dec [hl]                                         ; $5d44: $35
	dec h                                            ; $5d45: $25
	add hl, bc                                       ; $5d46: $09
	cpl                                              ; $5d47: $2f
	ld [hl], b                                       ; $5d48: $70
	inc [hl]                                         ; $5d49: $34
	ld [hl], b                                       ; $5d4a: $70
	ld [hl], c                                       ; $5d4b: $71
	ld b, c                                          ; $5d4c: $41
	ld c, h                                          ; $5d4d: $4c
	and b                                            ; $5d4e: $a0
	cpl                                              ; $5d4f: $2f
	pop af                                           ; $5d50: $f1
	adc a                                            ; $5d51: $8f
	ld a, $38                                        ; $5d52: $3e $38

jr_099_5d54:
	ld b, d                                          ; $5d54: $42
	ld b, a                                          ; $5d55: $47
	inc [hl]                                         ; $5d56: $34
	ld d, h                                          ; $5d57: $54
	ld b, c                                          ; $5d58: $41
	ld a, [hl-]                                      ; $5d59: $3a
	ld c, c                                          ; $5d5a: $49
	ld d, h                                          ; $5d5b: $54
	ld b, a                                          ; $5d5c: $47
	add hl, bc                                       ; $5d5d: $09
	cpl                                              ; $5d5e: $2f
	pop af                                           ; $5d5f: $f1
	ld bc, $4df0                                     ; $5d60: $01 $f0 $4d
	sub h                                            ; $5d63: $94
	ld a, $3d                                        ; $5d64: $3e $3d
	ld d, a                                          ; $5d66: $57
	ld a, $3f                                        ; $5d67: $3e $3f
	and b                                            ; $5d69: $a0
	cpl                                              ; $5d6a: $2f
	ld h, $43                                        ; $5d6b: $26 $43
	jr c, jr_099_5da3                                ; $5d6d: $38 $34

	jr c, jr_099_5da9                                ; $5d6f: $38 $38

	ld b, l                                          ; $5d71: $45

jr_099_5d72:
	and b                                            ; $5d72: $a0
	cpl                                              ; $5d73: $2f
	pop af                                           ; $5d74: $f1

jr_099_5d75:
	adc a                                            ; $5d75: $8f
	ld a, $55                                        ; $5d76: $3e $55
	ld a, [hl-]                                      ; $5d78: $3a
	ld b, c                                          ; $5d79: $41
	inc a                                            ; $5d7a: $3c
	ld a, [hl-]                                      ; $5d7b: $3a
	inc a                                            ; $5d7c: $3c
	dec sp                                           ; $5d7d: $3b
	dec a                                            ; $5d7e: $3d
	inc a                                            ; $5d7f: $3c
	ld d, b                                          ; $5d80: $50
	dec [hl]                                         ; $5d81: $35
	dec h                                            ; $5d82: $25
	add hl, bc                                       ; $5d83: $09
	cpl                                              ; $5d84: $2f
	xor $1e                                          ; $5d85: $ee $1e
	ld c, h                                          ; $5d87: $4c
	ld hl, $10ee                                     ; $5d88: $21 $ee $10
	add hl, bc                                       ; $5d8b: $09
	cpl                                              ; $5d8c: $2f
	ld l, a                                          ; $5d8d: $6f
	ld b, d                                          ; $5d8e: $42
	ldh a, [rSVBK]                                   ; $5d8f: $f0 $70
	ld c, e                                          ; $5d91: $4b
	inc [hl]                                         ; $5d92: $34
	add hl, bc                                       ; $5d93: $09
	cpl                                              ; $5d94: $2f
	pop af                                           ; $5d95: $f1
	call $cff0                                       ; $5d96: $cd $f0 $cf
	di                                               ; $5d99: $f3
	db $e4                                           ; $5d9a: $e4
	di                                               ; $5d9b: $f3
	ld e, [hl]                                       ; $5d9c: $5e
	ldh a, [c]                                       ; $5d9d: $f2
	ld l, b                                          ; $5d9e: $68
	ld b, d                                          ; $5d9f: $42
	ldh a, [rSVBK]                                   ; $5da0: $f0 $70
	ldh a, [c]                                       ; $5da2: $f2

jr_099_5da3:
	ld e, $3a                                        ; $5da3: $1e $3a
	ld b, d                                          ; $5da5: $42
	and b                                            ; $5da6: $a0
	cpl                                              ; $5da7: $2f
	ldh a, [c]                                       ; $5da8: $f2

jr_099_5da9:
	ld h, c                                          ; $5da9: $61
	pop af                                           ; $5daa: $f1
	or e                                             ; $5dab: $b3
	ld a, [$6c0a]                                    ; $5dac: $fa $0a $6c
	ld b, c                                          ; $5daf: $41
	ld a, [hl-]                                      ; $5db0: $3a
	inc [hl]                                         ; $5db1: $34
	add hl, bc                                       ; $5db2: $09
	cpl                                              ; $5db3: $2f
	pop af                                           ; $5db4: $f1
	ld l, c                                          ; $5db5: $69
	ldh a, [hDisp1_OBP0]                                     ; $5db6: $f0 $93
	ld h, d                                          ; $5db8: $62
	ldh a, [c]                                       ; $5db9: $f2
	dec c                                            ; $5dba: $0d
	ld c, [hl]                                       ; $5dbb: $4e
	ldh a, [c]                                       ; $5dbc: $f2
	sbc c                                            ; $5dbd: $99
	sbc d                                            ; $5dbe: $9a
	ld b, a                                          ; $5dbf: $47
	add hl, bc                                       ; $5dc0: $09
	cpl                                              ; $5dc1: $2f
	add b                                            ; $5dc2: $80
	jr c, jr_099_5e04                                ; $5dc3: $38 $3f

	jr c, jr_099_5e15                                ; $5dc5: $38 $4e

	ld h, e                                          ; $5dc7: $63
	and b                                            ; $5dc8: $a0
	cpl                                              ; $5dc9: $2f
	db $ec                                           ; $5dca: $ec
	jr nz, jr_099_5e4c                               ; $5dcb: $20 $7f

	ld d, e                                          ; $5dcd: $53
	ldh a, [$9a]                                     ; $5dce: $f0 $9a
	jr c, jr_099_5e0f                                ; $5dd0: $38 $3d

	ld d, b                                          ; $5dd2: $50
	ld l, a                                          ; $5dd3: $6f
	ld c, a                                          ; $5dd4: $4f
	ld hl, $10ee                                     ; $5dd5: $21 $ee $10
	add hl, bc                                       ; $5dd8: $09
	cpl                                              ; $5dd9: $2f
	ld c, d                                          ; $5dda: $4a
	ld c, a                                          ; $5ddb: $4f
	inc [hl]                                         ; $5ddc: $34
	ld l, a                                          ; $5ddd: $6f
	ld c, b                                          ; $5dde: $48
	add hl, bc                                       ; $5ddf: $09
	cpl                                              ; $5de0: $2f
	ldh a, [$32]                                     ; $5de1: $f0 $32
	ldh a, [$7e]                                     ; $5de3: $f0 $7e
	ld c, d                                          ; $5de5: $4a
	inc [hl]                                         ; $5de6: $34
	pop af                                           ; $5de7: $f1
	ld h, e                                          ; $5de8: $63
	ld c, a                                          ; $5de9: $4f
	ldh a, [$5c]                                     ; $5dea: $f0 $5c
	ld d, l                                          ; $5dec: $55
	ccf                                              ; $5ded: $3f
	add hl, bc                                       ; $5dee: $09
	cpl                                              ; $5def: $2f
	jr c, jr_099_5d72                                ; $5df0: $38 $80

	ld c, a                                          ; $5df2: $4f
	ldh a, [rHDMA5]                                  ; $5df3: $f0 $55
	pop af                                           ; $5df5: $f1
	add b                                            ; $5df6: $80
	ld a, e                                          ; $5df7: $7b
	inc a                                            ; $5df8: $3c
	ld d, a                                          ; $5df9: $57
	ld a, $3f                                        ; $5dfa: $3e $3f
	ld hl, $10ee                                     ; $5dfc: $21 $ee $10
	add hl, bc                                       ; $5dff: $09
	cpl                                              ; $5e00: $2f
	jr c, @+$3a                                      ; $5e01: $38 $38

	pop af                                           ; $5e03: $f1

jr_099_5e04:
	cp $f2                                           ; $5e04: $fe $f2
	ccf                                              ; $5e06: $3f
	inc [hl]                                         ; $5e07: $34
	db $ed                                           ; $5e08: $ed
	ld e, l                                          ; $5e09: $5d
	ld d, e                                          ; $5e0a: $53
	ldh a, [$64]                                     ; $5e0b: $f0 $64
	ld b, a                                          ; $5e0d: $47
	ld a, [hl-]                                      ; $5e0e: $3a

jr_099_5e0f:
	dec sp                                           ; $5e0f: $3b
	dec a                                            ; $5e10: $3d
	ldh a, [rBGP]                                    ; $5e11: $f0 $47
	inc [hl]                                         ; $5e13: $34
	add hl, bc                                       ; $5e14: $09

jr_099_5e15:
	cpl                                              ; $5e15: $2f
	ld b, [hl]                                       ; $5e16: $46
	ld a, [hl-]                                      ; $5e17: $3a
	dec a                                            ; $5e18: $3d
	ld d, e                                          ; $5e19: $53
	ld l, a                                          ; $5e1a: $6f
	ld b, d                                          ; $5e1b: $42
	sbc [hl]                                         ; $5e1c: $9e
	ld b, a                                          ; $5e1d: $47
	pop af                                           ; $5e1e: $f1
	and [hl]                                         ; $5e1f: $a6
	ld c, l                                          ; $5e20: $4d
	dec a                                            ; $5e21: $3d
	and b                                            ; $5e22: $a0
	cpl                                              ; $5e23: $2f
	ld b, [hl]                                       ; $5e24: $46
	ld a, [hl-]                                      ; $5e25: $3a
	dec a                                            ; $5e26: $3d
	xor $2d                                          ; $5e27: $ee $2d
	add b                                            ; $5e29: $80
	ld c, a                                          ; $5e2a: $4f
	inc [hl]                                         ; $5e2b: $34
	ld e, b                                          ; $5e2c: $58
	ld d, a                                          ; $5e2d: $57
	ldh a, [rSB]                                     ; $5e2e: $f0 $01
	ld a, [hl-]                                      ; $5e30: $3a
	ld d, l                                          ; $5e31: $55
	ld l, a                                          ; $5e32: $6f
	ld h, d                                          ; $5e33: $62
	add hl, bc                                       ; $5e34: $09
	cpl                                              ; $5e35: $2f
	ldh a, [$8e]                                     ; $5e36: $f0 $8e
	ldh a, [c]                                       ; $5e38: $f2
	daa                                              ; $5e39: $27
	ldh a, [$1f]                                     ; $5e3a: $f0 $1f
	ld e, c                                          ; $5e3c: $59
	ld a, $3f                                        ; $5e3d: $3e $3f
	ld d, l                                          ; $5e3f: $55
	ld c, l                                          ; $5e40: $4d
	ccf                                              ; $5e41: $3f
	inc [hl]                                         ; $5e42: $34
	add hl, bc                                       ; $5e43: $09
	cpl                                              ; $5e44: $2f
	ld [hl], d                                       ; $5e45: $72
	ldh a, [c]                                       ; $5e46: $f2
	dec c                                            ; $5e47: $0d
	dec sp                                           ; $5e48: $3b
	ccf                                              ; $5e49: $3f
	jr c, @+$41                                      ; $5e4a: $38 $3f

jr_099_5e4c:
	ld d, l                                          ; $5e4c: $55
	ld c, l                                          ; $5e4d: $4d
	dec a                                            ; $5e4e: $3d
	and b                                            ; $5e4f: $a0
	cpl                                              ; $5e50: $2f
	ldh a, [rBGP]                                    ; $5e51: $f0 $47
	ld b, a                                          ; $5e53: $47
	ld c, e                                          ; $5e54: $4b
	inc [hl]                                         ; $5e55: $34
	add hl, bc                                       ; $5e56: $09
	cpl                                              ; $5e57: $2f
	db $f4                                           ; $5e58: $f4
	adc d                                            ; $5e59: $8a
	ld d, d                                          ; $5e5a: $52
	ld a, $3f                                        ; $5e5b: $3e $3f
	ld d, l                                          ; $5e5d: $55
	ld c, l                                          ; $5e5e: $4d
	dec a                                            ; $5e5f: $3d
	ld d, a                                          ; $5e60: $57
	ld c, a                                          ; $5e61: $4f
	ld a, $3d                                        ; $5e62: $3e $3d
	ld hl, $10ee                                     ; $5e64: $21 $ee $10
	and b                                            ; $5e67: $a0
	cpl                                              ; $5e68: $2f
	ld b, [hl]                                       ; $5e69: $46
	ld a, [hl-]                                      ; $5e6a: $3a
	dec a                                            ; $5e6b: $3d
	ld b, a                                          ; $5e6c: $47
	db $fc                                           ; $5e6d: $fc
	ld d, b                                          ; $5e6e: $50
	add hl, sp                                       ; $5e6f: $39
	ld d, d                                          ; $5e70: $52
	ld c, d                                          ; $5e71: $4a
	inc [hl]                                         ; $5e72: $34
	ld l, a                                          ; $5e73: $6f
	ld c, e                                          ; $5e74: $4b
	ld c, b                                          ; $5e75: $48
	inc [hl]                                         ; $5e76: $34
	add hl, bc                                       ; $5e77: $09
	cpl                                              ; $5e78: $2f
	db $ed                                           ; $5e79: $ed
	ld e, l                                          ; $5e7a: $5d
	ld b, a                                          ; $5e7b: $47
	di                                               ; $5e7c: $f3
	ld hl, sp+$79                                    ; $5e7d: $f8 $79
	ld d, b                                          ; $5e7f: $50
	ld c, l                                          ; $5e80: $4d
	dec a                                            ; $5e81: $3d
	pop af                                           ; $5e82: $f1
	dec h                                            ; $5e83: $25
	push af                                          ; $5e84: $f5
	sbc e                                            ; $5e85: $9b
	ld h, d                                          ; $5e86: $62
	add hl, bc                                       ; $5e87: $09
	cpl                                              ; $5e88: $2f
	di                                               ; $5e89: $f3
	add $67                                          ; $5e8a: $c6 $67
	ld d, c                                          ; $5e8c: $51
	ld c, [hl]                                       ; $5e8d: $4e
	ld d, h                                          ; $5e8e: $54
	ld c, c                                          ; $5e8f: $49
	ld b, h                                          ; $5e90: $44
	ld e, l                                          ; $5e91: $5d
	ld h, d                                          ; $5e92: $62
	add hl, bc                                       ; $5e93: $09
	cpl                                              ; $5e94: $2f
	ldh a, [$a4]                                     ; $5e95: $f0 $a4

jr_099_5e97:
	ld e, [hl]                                       ; $5e97: $5e
	ccf                                              ; $5e98: $3f
	ld e, h                                          ; $5e99: $5c
	dec a                                            ; $5e9a: $3d
	ld hl, $10ee                                     ; $5e9b: $21 $ee $10
	add hl, bc                                       ; $5e9e: $09
	cpl                                              ; $5e9f: $2f
	ld c, d                                          ; $5ea0: $4a
	ld c, a                                          ; $5ea1: $4f
	ld hl, $10ee                                     ; $5ea2: $21 $ee $10
	jr nz, jr_099_5e97                               ; $5ea5: $20 $f0

	ld e, a                                          ; $5ea7: $5f
	ldh a, [$9b]                                     ; $5ea8: $f0 $9b
	ld b, a                                          ; $5eaa: $47
	ld a, [hl-]                                      ; $5eab: $3a
	dec sp                                           ; $5eac: $3b
	ccf                                              ; $5ead: $3f
	inc [hl]                                         ; $5eae: $34
	add hl, bc                                       ; $5eaf: $09
	cpl                                              ; $5eb0: $2f
	ld b, [hl]                                       ; $5eb1: $46
	ld a, [hl-]                                      ; $5eb2: $3a
	dec a                                            ; $5eb3: $3d
	ld b, d                                          ; $5eb4: $42
	ld d, h                                          ; $5eb5: $54
	ld c, c                                          ; $5eb6: $49
	ld a, e                                          ; $5eb7: $7b
	inc a                                            ; $5eb8: $3c
	ld d, a                                          ; $5eb9: $57
	add hl, bc                                       ; $5eba: $09
	cpl                                              ; $5ebb: $2f
	ldh a, [$a4]                                     ; $5ebc: $f0 $a4
	ld e, [hl]                                       ; $5ebe: $5e
	ccf                                              ; $5ebf: $3f
	jr c, jr_099_5f10                                ; $5ec0: $38 $4e

	db $ed                                           ; $5ec2: $ed
	ld e, l                                          ; $5ec3: $5d
	ld b, a                                          ; $5ec4: $47
	add hl, bc                                       ; $5ec5: $09
	cpl                                              ; $5ec6: $2f
	ld a, a                                          ; $5ec7: $7f
	ld d, e                                          ; $5ec8: $53
	ldh a, [$9a]                                     ; $5ec9: $f0 $9a
	jr c, jr_099_5f0a                                ; $5ecb: $38 $3d

	ld b, d                                          ; $5ecd: $42
	and b                                            ; $5ece: $a0
	cpl                                              ; $5ecf: $2f
	ld l, a                                          ; $5ed0: $6f
	ld c, e                                          ; $5ed1: $4b
	ld hl, $10ee                                     ; $5ed2: $21 $ee $10
	jr nz, jr_099_5f1d                               ; $5ed5: $20 $46

	ld a, [hl-]                                      ; $5ed7: $3a
	dec a                                            ; $5ed8: $3d
	ld d, e                                          ; $5ed9: $53
	ld hl, $10ee                                     ; $5eda: $21 $ee $10
	add hl, bc                                       ; $5edd: $09
	cpl                                              ; $5ede: $2f
	ld a, [hl-]                                      ; $5edf: $3a
	ld b, d                                          ; $5ee0: $42
	ld b, a                                          ; $5ee1: $47
	ld hl, $10ee                                     ; $5ee2: $21 $ee $10
	add hl, bc                                       ; $5ee5: $09
	cpl                                              ; $5ee6: $2f
	ld c, a                                          ; $5ee7: $4f
	add hl, sp                                       ; $5ee8: $39
	db $ed                                           ; $5ee9: $ed
	ld a, c                                          ; $5eea: $79
	ld b, h                                          ; $5eeb: $44
	ld a, [hl-]                                      ; $5eec: $3a
	ld b, c                                          ; $5eed: $41
	ccf                                              ; $5eee: $3f
	ld hl, $10ee                                     ; $5eef: $21 $ee $10
	and b                                            ; $5ef2: $a0
	cpl                                              ; $5ef3: $2f
	db $ec                                           ; $5ef4: $ec
	ld hl, sp-$13                                    ; $5ef5: $f8 $ed
	ld e, l                                          ; $5ef7: $5d
	ld b, d                                          ; $5ef8: $42
	adc b                                            ; $5ef9: $88
	sub c                                            ; $5efa: $91
	ld b, d                                          ; $5efb: $42
	db $ed                                           ; $5efc: $ed
	ld l, a                                          ; $5efd: $6f
	ld h, c                                          ; $5efe: $61
	ld b, a                                          ; $5eff: $47
	add hl, bc                                       ; $5f00: $09
	cpl                                              ; $5f01: $2f
	ld a, a                                          ; $5f02: $7f
	ld d, e                                          ; $5f03: $53
	ldh a, [$9a]                                     ; $5f04: $f0 $9a
	jr c, jr_099_5f45                                ; $5f06: $38 $3d

	ld b, d                                          ; $5f08: $42
	ld b, a                                          ; $5f09: $47

jr_099_5f0a:
	inc [hl]                                         ; $5f0a: $34
	add hl, bc                                       ; $5f0b: $09
	cpl                                              ; $5f0c: $2f
	ld d, h                                          ; $5f0d: $54
	ld b, d                                          ; $5f0e: $42
	db $ed                                           ; $5f0f: $ed

jr_099_5f10:
	ld l, a                                          ; $5f10: $6f
	ld h, c                                          ; $5f11: $61
	ld h, d                                          ; $5f12: $62
	pop af                                           ; $5f13: $f1
	ld [hl], c                                       ; $5f14: $71
	ld e, [hl]                                       ; $5f15: $5e
	ld e, h                                          ; $5f16: $5c
	ld c, l                                          ; $5f17: $4d
	ld a, [hl-]                                      ; $5f18: $3a
	jr c, jr_099_5f6d                                ; $5f19: $38 $52

	ld d, d                                          ; $5f1b: $52
	add hl, bc                                       ; $5f1c: $09

jr_099_5f1d:
	cpl                                              ; $5f1d: $2f
	ldh a, [c]                                       ; $5f1e: $f2
	ld a, a                                          ; $5f1f: $7f
	ld c, l                                          ; $5f20: $4d
	ldh a, [c]                                       ; $5f21: $f2
	ld a, a                                          ; $5f22: $7f
	ld c, l                                          ; $5f23: $4d
	ld b, a                                          ; $5f24: $47
	ld a, [hl-]                                      ; $5f25: $3a
	ld c, [hl]                                       ; $5f26: $4e
	ld a, [hl-]                                      ; $5f27: $3a
	ld b, c                                          ; $5f28: $41
	ccf                                              ; $5f29: $3f
	ld a, l                                          ; $5f2a: $7d
	pop af                                           ; $5f2b: $f1
	db $e3                                           ; $5f2c: $e3
	ld c, d                                          ; $5f2d: $4a
	ld d, c                                          ; $5f2e: $51
	and b                                            ; $5f2f: $a0
	cpl                                              ; $5f30: $2f
	pop af                                           ; $5f31: $f1
	ld [hl], c                                       ; $5f32: $71
	pop af                                           ; $5f33: $f1
	dec c                                            ; $5f34: $0d
	ld h, d                                          ; $5f35: $62
	ldh a, [$9f]                                     ; $5f36: $f0 $9f
	ld e, e                                          ; $5f38: $5b
	ld c, [hl]                                       ; $5f39: $4e
	ld a, [hl-]                                      ; $5f3a: $3a
	ld b, c                                          ; $5f3b: $41
	ccf                                              ; $5f3c: $3f
	inc [hl]                                         ; $5f3d: $34
	add hl, bc                                       ; $5f3e: $09
	cpl                                              ; $5f3f: $2f
	ld l, a                                          ; $5f40: $6f
	ld b, a                                          ; $5f41: $47
	ld c, e                                          ; $5f42: $4b
	ldh a, [rPCM12]                                  ; $5f43: $f0 $76

jr_099_5f45:
	ldh a, [rTMA]                                    ; $5f45: $f0 $06
	ld h, e                                          ; $5f47: $63
	ld a, [hl-]                                      ; $5f48: $3a
	jr c, jr_099_5f94                                ; $5f49: $38 $49

	ld [hl], a                                       ; $5f4b: $77
	add hl, sp                                       ; $5f4c: $39
	ld c, b                                          ; $5f4d: $48
	add hl, bc                                       ; $5f4e: $09
	cpl                                              ; $5f4f: $2f
	ld c, d                                          ; $5f50: $4a
	ld c, a                                          ; $5f51: $4f
	inc [hl]                                         ; $5f52: $34
	ldh a, [c]                                       ; $5f53: $f2
	ld bc, $3a63                                     ; $5f54: $01 $63 $3a
	jr c, jr_099_5fa3                                ; $5f57: $38 $4a

	ldh a, [$0c]                                     ; $5f59: $f0 $0c
	jr c, jr_099_5f9c                                ; $5f5b: $38 $3f

	db $ec                                           ; $5f5d: $ec
	rst FarCall                                          ; $5f5e: $f7
	and b                                            ; $5f5f: $a0
	cpl                                              ; $5f60: $2f
	ld b, [hl]                                       ; $5f61: $46
	ld a, [hl-]                                      ; $5f62: $3a
	dec a                                            ; $5f63: $3d
	ld d, e                                          ; $5f64: $53
	ld hl, $10ee                                     ; $5f65: $21 $ee $10
	add hl, bc                                       ; $5f68: $09
	cpl                                              ; $5f69: $2f
	adc e                                            ; $5f6a: $8b
	ld e, h                                          ; $5f6b: $5c
	ld c, d                                          ; $5f6c: $4a

jr_099_5f6d:
	ld d, c                                          ; $5f6d: $51
	and b                                            ; $5f6e: $a0
	cpl                                              ; $5f6f: $2f
	ld l, a                                          ; $5f70: $6f
	ld l, h                                          ; $5f71: $6c
	dec a                                            ; $5f72: $3d
	jr c, @+$3c                                      ; $5f73: $38 $3a

	ldh a, [$32]                                     ; $5f75: $f0 $32
	ldh a, [$7e]                                     ; $5f77: $f0 $7e
	ld a, [hl-]                                      ; $5f79: $3a
	ldh a, [rAUD2ENV]                                ; $5f7a: $f0 $17
	ld b, a                                          ; $5f7c: $47
	adc e                                            ; $5f7d: $8b
	inc a                                            ; $5f7e: $3c
	ld c, l                                          ; $5f7f: $4d
	dec a                                            ; $5f80: $3d
	ld d, b                                          ; $5f81: $50
	add hl, bc                                       ; $5f82: $09
	cpl                                              ; $5f83: $2f
	pop af                                           ; $5f84: $f1
	or c                                             ; $5f85: $b1
	ldh a, [c]                                       ; $5f86: $f2
	ld [hl], l                                       ; $5f87: $75
	ld b, h                                          ; $5f88: $44
	ld c, c                                          ; $5f89: $49
	ld [hl], a                                       ; $5f8a: $77
	add hl, sp                                       ; $5f8b: $39
	ld e, l                                          ; $5f8c: $5d
	ld e, d                                          ; $5f8d: $5a
	ld hl, $10ee                                     ; $5f8e: $21 $ee $10
	add hl, bc                                       ; $5f91: $09
	cpl                                              ; $5f92: $2f
	ld b, [hl]                                       ; $5f93: $46

jr_099_5f94:
	ld a, [hl-]                                      ; $5f94: $3a
	dec a                                            ; $5f95: $3d
	ld b, d                                          ; $5f96: $42
	db $ed                                           ; $5f97: $ed
	ld l, a                                          ; $5f98: $6f
	ld h, c                                          ; $5f99: $61
	ld h, d                                          ; $5f9a: $62
	db $ec                                           ; $5f9b: $ec

jr_099_5f9c:
	ld b, b                                          ; $5f9c: $40
	and b                                            ; $5f9d: $a0
	cpl                                              ; $5f9e: $2f
	ld l, a                                          ; $5f9f: $6f
	inc [hl]                                         ; $5fa0: $34
	ld l, e                                          ; $5fa1: $6b
	ld h, d                                          ; $5fa2: $62

jr_099_5fa3:
	add d                                            ; $5fa3: $82
	ld h, e                                          ; $5fa4: $63
	ld c, l                                          ; $5fa5: $4d
	ccf                                              ; $5fa6: $3f
	ld c, a                                          ; $5fa7: $4f
	inc [hl]                                         ; $5fa8: $34
	add hl, bc                                       ; $5fa9: $09
	cpl                                              ; $5faa: $2f
	add a                                            ; $5fab: $87
	ldh a, [$5b]                                     ; $5fac: $f0 $5b
	ldh a, [$5e]                                     ; $5fae: $f0 $5e
	ld b, h                                          ; $5fb0: $44
	inc a                                            ; $5fb1: $3c
	ld d, b                                          ; $5fb2: $50
	ld hl, $10ee                                     ; $5fb3: $21 $ee $10
	add hl, bc                                       ; $5fb6: $09
	cpl                                              ; $5fb7: $2f
	ldh a, [$f1]                                     ; $5fb8: $f0 $f1
	ldh a, [$9d]                                     ; $5fba: $f0 $9d
	ld b, h                                          ; $5fbc: $44
	dec sp                                           ; $5fbd: $3b
	dec a                                            ; $5fbe: $3d
	ld d, b                                          ; $5fbf: $50
	inc [hl]                                         ; $5fc0: $34
	add hl, bc                                       ; $5fc1: $09
	cpl                                              ; $5fc2: $2f
	ld d, d                                          ; $5fc3: $52
	dec a                                            ; $5fc4: $3d
	pop af                                           ; $5fc5: $f1
	ld h, e                                          ; $5fc6: $63
	ld d, e                                          ; $5fc7: $53
	ldh a, [$5c]                                     ; $5fc8: $f0 $5c
	inc a                                            ; $5fca: $3c
	dec sp                                           ; $5fcb: $3b
	dec a                                            ; $5fcc: $3d
	dec sp                                           ; $5fcd: $3b
	ccf                                              ; $5fce: $3f
	ld hl, $10ee                                     ; $5fcf: $21 $ee $10
	add hl, bc                                       ; $5fd2: $09

jr_099_5fd3:
	cpl                                              ; $5fd3: $2f
	ld h, $43                                        ; $5fd4: $26 $43
	halt                                             ; $5fd6: $76
	ld c, a                                          ; $5fd7: $4f
	ldh a, [$80]                                     ; $5fd8: $f0 $80
	ldh a, [$c5]                                     ; $5fda: $f0 $c5
	pop af                                           ; $5fdc: $f1
	ld h, e                                          ; $5fdd: $63
	ld b, d                                          ; $5fde: $42
	ldh a, [$5c]                                     ; $5fdf: $f0 $5c
	jr c, jr_099_5fd3                                ; $5fe1: $38 $f0

	ld hl, sp+$44                                    ; $5fe3: $f8 $44
	ld e, l                                          ; $5fe5: $5d
	ld e, d                                          ; $5fe6: $5a
	xor $10                                          ; $5fe7: $ee $10
	add hl, bc                                       ; $5fe9: $09
	cpl                                              ; $5fea: $2f
	db $ed                                           ; $5feb: $ed
	ld d, a                                          ; $5fec: $57
	ldh a, [$f5]                                     ; $5fed: $f0 $f5
	add hl, sp                                       ; $5fef: $39
	ld l, h                                          ; $5ff0: $6c
	dec a                                            ; $5ff1: $3d
	jr c, jr_099_6038                                ; $5ff2: $38 $44

	ld c, h                                          ; $5ff4: $4c
	dec [hl]                                         ; $5ff5: $35
	dec h                                            ; $5ff6: $25
	add hl, bc                                       ; $5ff7: $09
	cpl                                              ; $5ff8: $2f
	ld e, [hl]                                       ; $5ff9: $5e
	ld hl, $10ee                                     ; $5ffa: $21 $ee $10
	add hl, bc                                       ; $5ffd: $09
	cpl                                              ; $5ffe: $2f
	ld h, $43                                        ; $5fff: $26 $43
	halt                                             ; $6001: $76
	ld c, a                                          ; $6002: $4f
	xor $10                                          ; $6003: $ee $10
	db $ec                                           ; $6005: $ec
	and $53                                          ; $6006: $e6 $53
	adc e                                            ; $6008: $8b
	ld e, h                                          ; $6009: $5c
	ld b, h                                          ; $600a: $44
	inc a                                            ; $600b: $3c
	ld d, b                                          ; $600c: $50
	dec [hl]                                         ; $600d: $35
	dec h                                            ; $600e: $25
	add hl, bc                                       ; $600f: $09
	cpl                                              ; $6010: $2f
	ldh a, [$08]                                     ; $6011: $f0 $08
	inc [hl]                                         ; $6013: $34
	adc b                                            ; $6014: $88
	sub c                                            ; $6015: $91
	and c                                            ; $6016: $a1
	cpl                                              ; $6017: $2f
	ld h, $43                                        ; $6018: $26 $43
	adc b                                            ; $601a: $88
	sub c                                            ; $601b: $91
	ld b, h                                          ; $601c: $44
	ld b, l                                          ; $601d: $45
	dec [hl]                                         ; $601e: $35
	dec h                                            ; $601f: $25
	add hl, bc                                       ; $6020: $09
	cpl                                              ; $6021: $2f
	ld b, [hl]                                       ; $6022: $46
	ld hl, $10ee                                     ; $6023: $21 $ee $10
	inc [hl]                                         ; $6026: $34
	jr nz, jr_099_608c                               ; $6027: $20 $63

	inc [hl]                                         ; $6029: $34
	ld l, a                                          ; $602a: $6f
	ld hl, $10ee                                     ; $602b: $21 $ee $10
	add hl, bc                                       ; $602e: $09
	cpl                                              ; $602f: $2f
	ld l, d                                          ; $6030: $6a
	ld d, d                                          ; $6031: $52
	ld c, d                                          ; $6032: $4a
	sbc h                                            ; $6033: $9c
	dec sp                                           ; $6034: $3b
	ld c, c                                          ; $6035: $49
	add hl, bc                                       ; $6036: $09
	cpl                                              ; $6037: $2f

jr_099_6038:
	pop af                                           ; $6038: $f1
	ld h, e                                          ; $6039: $63
	ld d, e                                          ; $603a: $53
	ldh a, [$5c]                                     ; $603b: $f0 $5c
	inc a                                            ; $603d: $3c
	dec sp                                           ; $603e: $3b
	dec a                                            ; $603f: $3d
	ld e, l                                          ; $6040: $5d
	ld e, d                                          ; $6041: $5a
	inc [hl]                                         ; $6042: $34
	add hl, bc                                       ; $6043: $09
	cpl                                              ; $6044: $2f
	db $ed                                           ; $6045: $ed
	ld d, a                                          ; $6046: $57
	db $ed                                           ; $6047: $ed
	ld h, b                                          ; $6048: $60
	ld b, a                                          ; $6049: $47
	db $ec                                           ; $604a: $ec
	cp c                                             ; $604b: $b9
	ld hl, $10ee                                     ; $604c: $21 $ee $10
	and b                                            ; $604f: $a0
	cpl                                              ; $6050: $2f
	ld l, d                                          ; $6051: $6a
	ld d, d                                          ; $6052: $52
	ld c, d                                          ; $6053: $4a
	inc [hl]                                         ; $6054: $34
	pop af                                           ; $6055: $f1
	ld h, e                                          ; $6056: $63
	ld d, e                                          ; $6057: $53
	ldh a, [$5c]                                     ; $6058: $f0 $5c
	inc a                                            ; $605a: $3c
	dec sp                                           ; $605b: $3b
	dec a                                            ; $605c: $3d
	ld b, d                                          ; $605d: $42
	ld c, e                                          ; $605e: $4b
	add hl, bc                                       ; $605f: $09
	cpl                                              ; $6060: $2f
	ld e, h                                          ; $6061: $5c
	dec sp                                           ; $6062: $3b
	ld c, c                                          ; $6063: $49
	inc [hl]                                         ; $6064: $34
	ld d, h                                          ; $6065: $54
	ld b, d                                          ; $6066: $42
	ld l, b                                          ; $6067: $68
	ld b, d                                          ; $6068: $42
	dec a                                            ; $6069: $3d
	ld [hl], c                                       ; $606a: $71
	ld b, a                                          ; $606b: $47
	inc [hl]                                         ; $606c: $34
	add hl, bc                                       ; $606d: $09
	cpl                                              ; $606e: $2f
	pop af                                           ; $606f: $f1
	ld h, e                                          ; $6070: $63
	ld h, d                                          ; $6071: $62
	pop af                                           ; $6072: $f1
	inc b                                            ; $6073: $04
	dec sp                                           ; $6074: $3b
	ccf                                              ; $6075: $3f
	ld h, h                                          ; $6076: $64
	db $ec                                           ; $6077: $ec
	ld l, $49                                        ; $6078: $2e $49
	ld c, b                                          ; $607a: $48
	inc [hl]                                         ; $607b: $34
	add hl, bc                                       ; $607c: $09
	cpl                                              ; $607d: $2f
	ld b, b                                          ; $607e: $40
	add hl, sp                                       ; $607f: $39
	ldh a, [$9f]                                     ; $6080: $f0 $9f
	ld e, e                                          ; $6082: $5b
	ld c, [hl]                                       ; $6083: $4e
	and b                                            ; $6084: $a0
	cpl                                              ; $6085: $2f
	ld l, a                                          ; $6086: $6f
	ld hl, $10ee                                     ; $6087: $21 $ee $10
	add hl, bc                                       ; $608a: $09
	cpl                                              ; $608b: $2f

jr_099_608c:
	db $ed                                           ; $608c: $ed
	ld h, b                                          ; $608d: $60
	ld b, a                                          ; $608e: $47
	inc [hl]                                         ; $608f: $34
	pop af                                           ; $6090: $f1
	and d                                            ; $6091: $a2
	ld a, c                                          ; $6092: $79
	ld b, l                                          ; $6093: $45
	and d                                            ; $6094: $a2
	cpl                                              ; $6095: $2f
	ld b, [hl]                                       ; $6096: $46
	ld a, [hl-]                                      ; $6097: $3a
	dec a                                            ; $6098: $3d
	ld b, a                                          ; $6099: $47
	sub h                                            ; $609a: $94
	ldh a, [rHDMA3]                                  ; $609b: $f0 $53
	ld e, [hl]                                       ; $609d: $5e
	ccf                                              ; $609e: $3f
	db $ec                                           ; $609f: $ec
	cp c                                             ; $60a0: $b9
	ld c, b                                          ; $60a1: $48
	and b                                            ; $60a2: $a0
	rst $38                                          ; $60a3: $ff
	rst $38                                          ; $60a4: $ff
	rst $38                                          ; $60a5: $ff
	rst $38                                          ; $60a6: $ff
	rst $38                                          ; $60a7: $ff
	rst $38                                          ; $60a8: $ff
	rst $38                                          ; $60a9: $ff
	rst $38                                          ; $60aa: $ff
	rst $38                                          ; $60ab: $ff
	rst $38                                          ; $60ac: $ff
	rst $38                                          ; $60ad: $ff
	rst $38                                          ; $60ae: $ff
	rst $38                                          ; $60af: $ff
	rst $38                                          ; $60b0: $ff
	rst $38                                          ; $60b1: $ff
	rst $38                                          ; $60b2: $ff
	rst $38                                          ; $60b3: $ff
	rst $38                                          ; $60b4: $ff
	rst $38                                          ; $60b5: $ff
	rst $38                                          ; $60b6: $ff
	rst $38                                          ; $60b7: $ff
	rst $38                                          ; $60b8: $ff
	rst $38                                          ; $60b9: $ff
	rst $38                                          ; $60ba: $ff
	rst $38                                          ; $60bb: $ff
	rst $38                                          ; $60bc: $ff
	rst $38                                          ; $60bd: $ff
	rst $38                                          ; $60be: $ff
	rst $38                                          ; $60bf: $ff
	rst $38                                          ; $60c0: $ff
	rst $38                                          ; $60c1: $ff
	rst $38                                          ; $60c2: $ff
	rst $38                                          ; $60c3: $ff
	rst $38                                          ; $60c4: $ff
	rst $38                                          ; $60c5: $ff
	rst $38                                          ; $60c6: $ff
	rst $38                                          ; $60c7: $ff
	rst $38                                          ; $60c8: $ff
	rst $38                                          ; $60c9: $ff
	rst $38                                          ; $60ca: $ff
	rst $38                                          ; $60cb: $ff
	rst $38                                          ; $60cc: $ff
	rst $38                                          ; $60cd: $ff
	rst $38                                          ; $60ce: $ff
	rst $38                                          ; $60cf: $ff
	rst $38                                          ; $60d0: $ff
	rst $38                                          ; $60d1: $ff
	rst $38                                          ; $60d2: $ff
	rst $38                                          ; $60d3: $ff
	rst $38                                          ; $60d4: $ff
	rst $38                                          ; $60d5: $ff
	rst $38                                          ; $60d6: $ff
	rst $38                                          ; $60d7: $ff
	rst $38                                          ; $60d8: $ff
	rst $38                                          ; $60d9: $ff
	rst $38                                          ; $60da: $ff
	rst $38                                          ; $60db: $ff
	rst $38                                          ; $60dc: $ff
	rst $38                                          ; $60dd: $ff
	rst $38                                          ; $60de: $ff
	rst $38                                          ; $60df: $ff
	rst $38                                          ; $60e0: $ff
	rst $38                                          ; $60e1: $ff
	rst $38                                          ; $60e2: $ff
	rst $38                                          ; $60e3: $ff
	rst $38                                          ; $60e4: $ff
	rst $38                                          ; $60e5: $ff
	rst $38                                          ; $60e6: $ff
	rst $38                                          ; $60e7: $ff
	rst $38                                          ; $60e8: $ff
	rst $38                                          ; $60e9: $ff
	rst $38                                          ; $60ea: $ff
	rst $38                                          ; $60eb: $ff
	rst $38                                          ; $60ec: $ff
	rst $38                                          ; $60ed: $ff
	rst $38                                          ; $60ee: $ff
	rst $38                                          ; $60ef: $ff
	rst $38                                          ; $60f0: $ff
	rst $38                                          ; $60f1: $ff
	rst $38                                          ; $60f2: $ff
	rst $38                                          ; $60f3: $ff
	rst $38                                          ; $60f4: $ff
	rst $38                                          ; $60f5: $ff
	rst $38                                          ; $60f6: $ff
	rst $38                                          ; $60f7: $ff
	rst $38                                          ; $60f8: $ff
	rst $38                                          ; $60f9: $ff
	rst $38                                          ; $60fa: $ff
	rst $38                                          ; $60fb: $ff
	rst $38                                          ; $60fc: $ff
	rst $38                                          ; $60fd: $ff
	rst $38                                          ; $60fe: $ff
	rst $38                                          ; $60ff: $ff
	rst $38                                          ; $6100: $ff
	rst $38                                          ; $6101: $ff
	rst $38                                          ; $6102: $ff
	rst $38                                          ; $6103: $ff
	rst $38                                          ; $6104: $ff
	rst $38                                          ; $6105: $ff
	rst $38                                          ; $6106: $ff
	rst $38                                          ; $6107: $ff
	rst $38                                          ; $6108: $ff
	rst $38                                          ; $6109: $ff
	rst $38                                          ; $610a: $ff
	rst $38                                          ; $610b: $ff
	rst $38                                          ; $610c: $ff
	rst $38                                          ; $610d: $ff
	rst $38                                          ; $610e: $ff
	rst $38                                          ; $610f: $ff
	rst $38                                          ; $6110: $ff
	rst $38                                          ; $6111: $ff
	rst $38                                          ; $6112: $ff
	rst $38                                          ; $6113: $ff
	rst $38                                          ; $6114: $ff
	rst $38                                          ; $6115: $ff
	rst $38                                          ; $6116: $ff
	rst $38                                          ; $6117: $ff
	rst $38                                          ; $6118: $ff
	rst $38                                          ; $6119: $ff
	rst $38                                          ; $611a: $ff
	rst $38                                          ; $611b: $ff
	rst $38                                          ; $611c: $ff
	rst $38                                          ; $611d: $ff
	rst $38                                          ; $611e: $ff
	rst $38                                          ; $611f: $ff
	rst $38                                          ; $6120: $ff
	rst $38                                          ; $6121: $ff
	rst $38                                          ; $6122: $ff
	rst $38                                          ; $6123: $ff
	rst $38                                          ; $6124: $ff
	rst $38                                          ; $6125: $ff
	rst $38                                          ; $6126: $ff
	rst $38                                          ; $6127: $ff
	rst $38                                          ; $6128: $ff
	rst $38                                          ; $6129: $ff
	rst $38                                          ; $612a: $ff
	rst $38                                          ; $612b: $ff
	rst $38                                          ; $612c: $ff
	rst $38                                          ; $612d: $ff
	rst $38                                          ; $612e: $ff
	rst $38                                          ; $612f: $ff
	rst $38                                          ; $6130: $ff
	rst $38                                          ; $6131: $ff
	rst $38                                          ; $6132: $ff
	rst $38                                          ; $6133: $ff
	rst $38                                          ; $6134: $ff
	rst $38                                          ; $6135: $ff
	rst $38                                          ; $6136: $ff
	rst $38                                          ; $6137: $ff
	rst $38                                          ; $6138: $ff
	rst $38                                          ; $6139: $ff
	rst $38                                          ; $613a: $ff
	rst $38                                          ; $613b: $ff
	rst $38                                          ; $613c: $ff
	rst $38                                          ; $613d: $ff
	rst $38                                          ; $613e: $ff
	rst $38                                          ; $613f: $ff
	rst $38                                          ; $6140: $ff
	rst $38                                          ; $6141: $ff
	rst $38                                          ; $6142: $ff
	rst $38                                          ; $6143: $ff
	rst $38                                          ; $6144: $ff
	rst $38                                          ; $6145: $ff
	rst $38                                          ; $6146: $ff
	rst $38                                          ; $6147: $ff
	rst $38                                          ; $6148: $ff
	rst $38                                          ; $6149: $ff
	rst $38                                          ; $614a: $ff
	rst $38                                          ; $614b: $ff
	rst $38                                          ; $614c: $ff
	rst $38                                          ; $614d: $ff
	rst $38                                          ; $614e: $ff
	rst $38                                          ; $614f: $ff
	rst $38                                          ; $6150: $ff
	rst $38                                          ; $6151: $ff
	rst $38                                          ; $6152: $ff
	rst $38                                          ; $6153: $ff
	rst $38                                          ; $6154: $ff
	rst $38                                          ; $6155: $ff
	rst $38                                          ; $6156: $ff
	rst $38                                          ; $6157: $ff
	rst $38                                          ; $6158: $ff
	rst $38                                          ; $6159: $ff
	rst $38                                          ; $615a: $ff
	rst $38                                          ; $615b: $ff
	rst $38                                          ; $615c: $ff
	rst $38                                          ; $615d: $ff
	rst $38                                          ; $615e: $ff
	rst $38                                          ; $615f: $ff
	rst $38                                          ; $6160: $ff
	rst $38                                          ; $6161: $ff
	rst $38                                          ; $6162: $ff
	rst $38                                          ; $6163: $ff
	rst $38                                          ; $6164: $ff
	rst $38                                          ; $6165: $ff
	rst $38                                          ; $6166: $ff
	rst $38                                          ; $6167: $ff
	rst $38                                          ; $6168: $ff
	rst $38                                          ; $6169: $ff
	rst $38                                          ; $616a: $ff
	rst $38                                          ; $616b: $ff
	rst $38                                          ; $616c: $ff
	rst $38                                          ; $616d: $ff
	rst $38                                          ; $616e: $ff
	rst $38                                          ; $616f: $ff
	rst $38                                          ; $6170: $ff
	rst $38                                          ; $6171: $ff
	rst $38                                          ; $6172: $ff
	rst $38                                          ; $6173: $ff
	rst $38                                          ; $6174: $ff
	rst $38                                          ; $6175: $ff
	rst $38                                          ; $6176: $ff
	rst $38                                          ; $6177: $ff
	rst $38                                          ; $6178: $ff
	rst $38                                          ; $6179: $ff
	rst $38                                          ; $617a: $ff
	rst $38                                          ; $617b: $ff
	rst $38                                          ; $617c: $ff
	rst $38                                          ; $617d: $ff
	rst $38                                          ; $617e: $ff
	rst $38                                          ; $617f: $ff
	rst $38                                          ; $6180: $ff
	rst $38                                          ; $6181: $ff
	rst $38                                          ; $6182: $ff
	rst $38                                          ; $6183: $ff
	rst $38                                          ; $6184: $ff
	rst $38                                          ; $6185: $ff
	rst $38                                          ; $6186: $ff
	rst $38                                          ; $6187: $ff
	rst $38                                          ; $6188: $ff
	rst $38                                          ; $6189: $ff
	rst $38                                          ; $618a: $ff
	rst $38                                          ; $618b: $ff
	rst $38                                          ; $618c: $ff
	rst $38                                          ; $618d: $ff
	rst $38                                          ; $618e: $ff
	rst $38                                          ; $618f: $ff
	rst $38                                          ; $6190: $ff
	rst $38                                          ; $6191: $ff
	rst $38                                          ; $6192: $ff
	rst $38                                          ; $6193: $ff
	rst $38                                          ; $6194: $ff
	rst $38                                          ; $6195: $ff
	rst $38                                          ; $6196: $ff
	rst $38                                          ; $6197: $ff
	rst $38                                          ; $6198: $ff
	rst $38                                          ; $6199: $ff
	rst $38                                          ; $619a: $ff
	rst $38                                          ; $619b: $ff
	rst $38                                          ; $619c: $ff
	rst $38                                          ; $619d: $ff
	rst $38                                          ; $619e: $ff
	rst $38                                          ; $619f: $ff
	rst $38                                          ; $61a0: $ff
	rst $38                                          ; $61a1: $ff
	rst $38                                          ; $61a2: $ff
	rst $38                                          ; $61a3: $ff
	rst $38                                          ; $61a4: $ff
	rst $38                                          ; $61a5: $ff
	rst $38                                          ; $61a6: $ff
	rst $38                                          ; $61a7: $ff
	rst $38                                          ; $61a8: $ff
	rst $38                                          ; $61a9: $ff
	rst $38                                          ; $61aa: $ff
	rst $38                                          ; $61ab: $ff
	rst $38                                          ; $61ac: $ff
	rst $38                                          ; $61ad: $ff
	rst $38                                          ; $61ae: $ff
	rst $38                                          ; $61af: $ff
	rst $38                                          ; $61b0: $ff
	rst $38                                          ; $61b1: $ff
	rst $38                                          ; $61b2: $ff
	rst $38                                          ; $61b3: $ff
	rst $38                                          ; $61b4: $ff
	rst $38                                          ; $61b5: $ff
	rst $38                                          ; $61b6: $ff
	rst $38                                          ; $61b7: $ff
	rst $38                                          ; $61b8: $ff
	rst $38                                          ; $61b9: $ff
	rst $38                                          ; $61ba: $ff
	rst $38                                          ; $61bb: $ff
	rst $38                                          ; $61bc: $ff
	rst $38                                          ; $61bd: $ff
	rst $38                                          ; $61be: $ff
	rst $38                                          ; $61bf: $ff
	rst $38                                          ; $61c0: $ff
	rst $38                                          ; $61c1: $ff
	rst $38                                          ; $61c2: $ff
	rst $38                                          ; $61c3: $ff
	rst $38                                          ; $61c4: $ff
	rst $38                                          ; $61c5: $ff
	rst $38                                          ; $61c6: $ff
	rst $38                                          ; $61c7: $ff
	rst $38                                          ; $61c8: $ff
	rst $38                                          ; $61c9: $ff
	rst $38                                          ; $61ca: $ff
	rst $38                                          ; $61cb: $ff
	rst $38                                          ; $61cc: $ff
	rst $38                                          ; $61cd: $ff
	rst $38                                          ; $61ce: $ff
	rst $38                                          ; $61cf: $ff
	rst $38                                          ; $61d0: $ff
	rst $38                                          ; $61d1: $ff
	rst $38                                          ; $61d2: $ff
	rst $38                                          ; $61d3: $ff
	rst $38                                          ; $61d4: $ff
	rst $38                                          ; $61d5: $ff
	rst $38                                          ; $61d6: $ff
	rst $38                                          ; $61d7: $ff
	rst $38                                          ; $61d8: $ff
	rst $38                                          ; $61d9: $ff
	rst $38                                          ; $61da: $ff
	rst $38                                          ; $61db: $ff
	rst $38                                          ; $61dc: $ff
	rst $38                                          ; $61dd: $ff
	rst $38                                          ; $61de: $ff
	rst $38                                          ; $61df: $ff
	rst $38                                          ; $61e0: $ff
	rst $38                                          ; $61e1: $ff
	rst $38                                          ; $61e2: $ff
	rst $38                                          ; $61e3: $ff
	rst $38                                          ; $61e4: $ff
	rst $38                                          ; $61e5: $ff
	rst $38                                          ; $61e6: $ff
	rst $38                                          ; $61e7: $ff
	rst $38                                          ; $61e8: $ff
	rst $38                                          ; $61e9: $ff
	rst $38                                          ; $61ea: $ff
	rst $38                                          ; $61eb: $ff
	rst $38                                          ; $61ec: $ff
	rst $38                                          ; $61ed: $ff
	rst $38                                          ; $61ee: $ff
	rst $38                                          ; $61ef: $ff
	rst $38                                          ; $61f0: $ff
	rst $38                                          ; $61f1: $ff
	rst $38                                          ; $61f2: $ff
	rst $38                                          ; $61f3: $ff
	rst $38                                          ; $61f4: $ff
	rst $38                                          ; $61f5: $ff
	rst $38                                          ; $61f6: $ff
	rst $38                                          ; $61f7: $ff
	rst $38                                          ; $61f8: $ff
	rst $38                                          ; $61f9: $ff
	rst $38                                          ; $61fa: $ff
	rst $38                                          ; $61fb: $ff
	rst $38                                          ; $61fc: $ff
	rst $38                                          ; $61fd: $ff
	rst $38                                          ; $61fe: $ff
	rst $38                                          ; $61ff: $ff
	rst $38                                          ; $6200: $ff
	rst $38                                          ; $6201: $ff
	rst $38                                          ; $6202: $ff
	rst $38                                          ; $6203: $ff
	rst $38                                          ; $6204: $ff
	rst $38                                          ; $6205: $ff
	rst $38                                          ; $6206: $ff
	rst $38                                          ; $6207: $ff
	rst $38                                          ; $6208: $ff
	rst $38                                          ; $6209: $ff
	rst $38                                          ; $620a: $ff
	rst $38                                          ; $620b: $ff
	rst $38                                          ; $620c: $ff
	rst $38                                          ; $620d: $ff
	rst $38                                          ; $620e: $ff
	rst $38                                          ; $620f: $ff
	rst $38                                          ; $6210: $ff
	rst $38                                          ; $6211: $ff
	rst $38                                          ; $6212: $ff
	rst $38                                          ; $6213: $ff
	rst $38                                          ; $6214: $ff
	rst $38                                          ; $6215: $ff
	rst $38                                          ; $6216: $ff
	rst $38                                          ; $6217: $ff
	rst $38                                          ; $6218: $ff
	rst $38                                          ; $6219: $ff
	rst $38                                          ; $621a: $ff
	rst $38                                          ; $621b: $ff
	rst $38                                          ; $621c: $ff
	rst $38                                          ; $621d: $ff
	rst $38                                          ; $621e: $ff
	rst $38                                          ; $621f: $ff
	rst $38                                          ; $6220: $ff
	rst $38                                          ; $6221: $ff
	rst $38                                          ; $6222: $ff
	rst $38                                          ; $6223: $ff
	rst $38                                          ; $6224: $ff
	rst $38                                          ; $6225: $ff
	rst $38                                          ; $6226: $ff
	rst $38                                          ; $6227: $ff
	rst $38                                          ; $6228: $ff
	rst $38                                          ; $6229: $ff
	rst $38                                          ; $622a: $ff
	rst $38                                          ; $622b: $ff
	rst $38                                          ; $622c: $ff
	rst $38                                          ; $622d: $ff
	rst $38                                          ; $622e: $ff
	rst $38                                          ; $622f: $ff
	rst $38                                          ; $6230: $ff
	rst $38                                          ; $6231: $ff
	rst $38                                          ; $6232: $ff
	rst $38                                          ; $6233: $ff
	rst $38                                          ; $6234: $ff
	rst $38                                          ; $6235: $ff
	rst $38                                          ; $6236: $ff
	rst $38                                          ; $6237: $ff
	rst $38                                          ; $6238: $ff
	rst $38                                          ; $6239: $ff
	rst $38                                          ; $623a: $ff
	rst $38                                          ; $623b: $ff
	rst $38                                          ; $623c: $ff
	rst $38                                          ; $623d: $ff
	rst $38                                          ; $623e: $ff
	rst $38                                          ; $623f: $ff
	rst $38                                          ; $6240: $ff
	rst $38                                          ; $6241: $ff
	rst $38                                          ; $6242: $ff
	rst $38                                          ; $6243: $ff
	rst $38                                          ; $6244: $ff
	rst $38                                          ; $6245: $ff
	rst $38                                          ; $6246: $ff
	rst $38                                          ; $6247: $ff
	rst $38                                          ; $6248: $ff
	rst $38                                          ; $6249: $ff
	rst $38                                          ; $624a: $ff
	rst $38                                          ; $624b: $ff
	rst $38                                          ; $624c: $ff
	rst $38                                          ; $624d: $ff
	rst $38                                          ; $624e: $ff
	rst $38                                          ; $624f: $ff
	rst $38                                          ; $6250: $ff
	rst $38                                          ; $6251: $ff
	rst $38                                          ; $6252: $ff
	rst $38                                          ; $6253: $ff
	rst $38                                          ; $6254: $ff
	rst $38                                          ; $6255: $ff
	rst $38                                          ; $6256: $ff
	rst $38                                          ; $6257: $ff
	rst $38                                          ; $6258: $ff
	rst $38                                          ; $6259: $ff
	rst $38                                          ; $625a: $ff
	rst $38                                          ; $625b: $ff
	rst $38                                          ; $625c: $ff
	rst $38                                          ; $625d: $ff
	rst $38                                          ; $625e: $ff
	rst $38                                          ; $625f: $ff
	rst $38                                          ; $6260: $ff
	rst $38                                          ; $6261: $ff
	rst $38                                          ; $6262: $ff
	rst $38                                          ; $6263: $ff
	rst $38                                          ; $6264: $ff
	rst $38                                          ; $6265: $ff
	rst $38                                          ; $6266: $ff
	rst $38                                          ; $6267: $ff
	rst $38                                          ; $6268: $ff
	rst $38                                          ; $6269: $ff
	rst $38                                          ; $626a: $ff
	rst $38                                          ; $626b: $ff
	rst $38                                          ; $626c: $ff
	rst $38                                          ; $626d: $ff
	rst $38                                          ; $626e: $ff
	rst $38                                          ; $626f: $ff
	rst $38                                          ; $6270: $ff
	rst $38                                          ; $6271: $ff
	rst $38                                          ; $6272: $ff
	rst $38                                          ; $6273: $ff
	rst $38                                          ; $6274: $ff
	rst $38                                          ; $6275: $ff
	rst $38                                          ; $6276: $ff
	rst $38                                          ; $6277: $ff
	rst $38                                          ; $6278: $ff
	rst $38                                          ; $6279: $ff
	rst $38                                          ; $627a: $ff
	rst $38                                          ; $627b: $ff
	rst $38                                          ; $627c: $ff
	rst $38                                          ; $627d: $ff
	rst $38                                          ; $627e: $ff
	rst $38                                          ; $627f: $ff
	rst $38                                          ; $6280: $ff
	rst $38                                          ; $6281: $ff
	rst $38                                          ; $6282: $ff
	rst $38                                          ; $6283: $ff
	rst $38                                          ; $6284: $ff
	rst $38                                          ; $6285: $ff
	rst $38                                          ; $6286: $ff
	rst $38                                          ; $6287: $ff
	rst $38                                          ; $6288: $ff
	rst $38                                          ; $6289: $ff
	rst $38                                          ; $628a: $ff
	rst $38                                          ; $628b: $ff
	rst $38                                          ; $628c: $ff
	rst $38                                          ; $628d: $ff
	rst $38                                          ; $628e: $ff
	rst $38                                          ; $628f: $ff
	rst $38                                          ; $6290: $ff
	rst $38                                          ; $6291: $ff
	rst $38                                          ; $6292: $ff
	rst $38                                          ; $6293: $ff
	rst $38                                          ; $6294: $ff
	rst $38                                          ; $6295: $ff
	rst $38                                          ; $6296: $ff
	rst $38                                          ; $6297: $ff
	rst $38                                          ; $6298: $ff
	rst $38                                          ; $6299: $ff
	rst $38                                          ; $629a: $ff
	rst $38                                          ; $629b: $ff
	rst $38                                          ; $629c: $ff
	rst $38                                          ; $629d: $ff
	rst $38                                          ; $629e: $ff
	rst $38                                          ; $629f: $ff
	rst $38                                          ; $62a0: $ff
	rst $38                                          ; $62a1: $ff
	rst $38                                          ; $62a2: $ff
	rst $38                                          ; $62a3: $ff
	rst $38                                          ; $62a4: $ff
	rst $38                                          ; $62a5: $ff
	rst $38                                          ; $62a6: $ff
	rst $38                                          ; $62a7: $ff
	rst $38                                          ; $62a8: $ff
	rst $38                                          ; $62a9: $ff
	rst $38                                          ; $62aa: $ff
	rst $38                                          ; $62ab: $ff
	rst $38                                          ; $62ac: $ff
	rst $38                                          ; $62ad: $ff
	rst $38                                          ; $62ae: $ff
	rst $38                                          ; $62af: $ff
	rst $38                                          ; $62b0: $ff
	rst $38                                          ; $62b1: $ff
	rst $38                                          ; $62b2: $ff
	rst $38                                          ; $62b3: $ff
	rst $38                                          ; $62b4: $ff
	rst $38                                          ; $62b5: $ff
	rst $38                                          ; $62b6: $ff
	rst $38                                          ; $62b7: $ff
	rst $38                                          ; $62b8: $ff
	rst $38                                          ; $62b9: $ff
	rst $38                                          ; $62ba: $ff
	rst $38                                          ; $62bb: $ff
	rst $38                                          ; $62bc: $ff
	rst $38                                          ; $62bd: $ff
	rst $38                                          ; $62be: $ff
	rst $38                                          ; $62bf: $ff
	rst $38                                          ; $62c0: $ff
	rst $38                                          ; $62c1: $ff
	rst $38                                          ; $62c2: $ff
	rst $38                                          ; $62c3: $ff
	rst $38                                          ; $62c4: $ff
	rst $38                                          ; $62c5: $ff
	rst $38                                          ; $62c6: $ff
	rst $38                                          ; $62c7: $ff
	rst $38                                          ; $62c8: $ff
	rst $38                                          ; $62c9: $ff
	rst $38                                          ; $62ca: $ff
	rst $38                                          ; $62cb: $ff
	rst $38                                          ; $62cc: $ff
	rst $38                                          ; $62cd: $ff
	rst $38                                          ; $62ce: $ff
	rst $38                                          ; $62cf: $ff
	rst $38                                          ; $62d0: $ff
	rst $38                                          ; $62d1: $ff
	rst $38                                          ; $62d2: $ff
	rst $38                                          ; $62d3: $ff
	rst $38                                          ; $62d4: $ff
	rst $38                                          ; $62d5: $ff
	rst $38                                          ; $62d6: $ff
	rst $38                                          ; $62d7: $ff
	rst $38                                          ; $62d8: $ff
	rst $38                                          ; $62d9: $ff
	rst $38                                          ; $62da: $ff
	rst $38                                          ; $62db: $ff
	rst $38                                          ; $62dc: $ff
	rst $38                                          ; $62dd: $ff
	rst $38                                          ; $62de: $ff
	rst $38                                          ; $62df: $ff
	rst $38                                          ; $62e0: $ff
	rst $38                                          ; $62e1: $ff
	rst $38                                          ; $62e2: $ff
	rst $38                                          ; $62e3: $ff
	rst $38                                          ; $62e4: $ff
	rst $38                                          ; $62e5: $ff
	rst $38                                          ; $62e6: $ff
	rst $38                                          ; $62e7: $ff
	rst $38                                          ; $62e8: $ff
	rst $38                                          ; $62e9: $ff
	rst $38                                          ; $62ea: $ff
	rst $38                                          ; $62eb: $ff
	rst $38                                          ; $62ec: $ff
	rst $38                                          ; $62ed: $ff
	rst $38                                          ; $62ee: $ff
	rst $38                                          ; $62ef: $ff
	rst $38                                          ; $62f0: $ff
	rst $38                                          ; $62f1: $ff
	rst $38                                          ; $62f2: $ff
	rst $38                                          ; $62f3: $ff
	rst $38                                          ; $62f4: $ff
	rst $38                                          ; $62f5: $ff
	rst $38                                          ; $62f6: $ff
	rst $38                                          ; $62f7: $ff
	rst $38                                          ; $62f8: $ff
	rst $38                                          ; $62f9: $ff
	rst $38                                          ; $62fa: $ff
	rst $38                                          ; $62fb: $ff
	rst $38                                          ; $62fc: $ff
	rst $38                                          ; $62fd: $ff
	rst $38                                          ; $62fe: $ff
	rst $38                                          ; $62ff: $ff
	rst $38                                          ; $6300: $ff
	rst $38                                          ; $6301: $ff
	rst $38                                          ; $6302: $ff
	rst $38                                          ; $6303: $ff
	rst $38                                          ; $6304: $ff
	rst $38                                          ; $6305: $ff
	rst $38                                          ; $6306: $ff
	rst $38                                          ; $6307: $ff
	rst $38                                          ; $6308: $ff
	rst $38                                          ; $6309: $ff
	rst $38                                          ; $630a: $ff
	rst $38                                          ; $630b: $ff
	rst $38                                          ; $630c: $ff
	rst $38                                          ; $630d: $ff
	rst $38                                          ; $630e: $ff
	rst $38                                          ; $630f: $ff
	rst $38                                          ; $6310: $ff
	rst $38                                          ; $6311: $ff
	rst $38                                          ; $6312: $ff
	rst $38                                          ; $6313: $ff
	rst $38                                          ; $6314: $ff
	rst $38                                          ; $6315: $ff
	rst $38                                          ; $6316: $ff
	rst $38                                          ; $6317: $ff
	rst $38                                          ; $6318: $ff
	rst $38                                          ; $6319: $ff
	rst $38                                          ; $631a: $ff
	rst $38                                          ; $631b: $ff
	rst $38                                          ; $631c: $ff
	rst $38                                          ; $631d: $ff
	rst $38                                          ; $631e: $ff
	rst $38                                          ; $631f: $ff
	rst $38                                          ; $6320: $ff
	rst $38                                          ; $6321: $ff
	rst $38                                          ; $6322: $ff
	rst $38                                          ; $6323: $ff
	rst $38                                          ; $6324: $ff
	rst $38                                          ; $6325: $ff
	rst $38                                          ; $6326: $ff
	rst $38                                          ; $6327: $ff
	rst $38                                          ; $6328: $ff
	rst $38                                          ; $6329: $ff
	rst $38                                          ; $632a: $ff
	rst $38                                          ; $632b: $ff
	rst $38                                          ; $632c: $ff
	rst $38                                          ; $632d: $ff
	rst $38                                          ; $632e: $ff
	rst $38                                          ; $632f: $ff
	rst $38                                          ; $6330: $ff
	rst $38                                          ; $6331: $ff
	rst $38                                          ; $6332: $ff
	rst $38                                          ; $6333: $ff
	rst $38                                          ; $6334: $ff
	rst $38                                          ; $6335: $ff
	rst $38                                          ; $6336: $ff
	rst $38                                          ; $6337: $ff
	rst $38                                          ; $6338: $ff
	rst $38                                          ; $6339: $ff
	rst $38                                          ; $633a: $ff
	rst $38                                          ; $633b: $ff
	rst $38                                          ; $633c: $ff
	rst $38                                          ; $633d: $ff
	rst $38                                          ; $633e: $ff
	rst $38                                          ; $633f: $ff
	rst $38                                          ; $6340: $ff
	rst $38                                          ; $6341: $ff
	rst $38                                          ; $6342: $ff
	rst $38                                          ; $6343: $ff
	rst $38                                          ; $6344: $ff
	rst $38                                          ; $6345: $ff
	rst $38                                          ; $6346: $ff
	rst $38                                          ; $6347: $ff
	rst $38                                          ; $6348: $ff
	rst $38                                          ; $6349: $ff
	rst $38                                          ; $634a: $ff
	rst $38                                          ; $634b: $ff
	rst $38                                          ; $634c: $ff
	rst $38                                          ; $634d: $ff
	rst $38                                          ; $634e: $ff
	rst $38                                          ; $634f: $ff
	rst $38                                          ; $6350: $ff
	rst $38                                          ; $6351: $ff
	rst $38                                          ; $6352: $ff
	rst $38                                          ; $6353: $ff
	rst $38                                          ; $6354: $ff
	rst $38                                          ; $6355: $ff
	rst $38                                          ; $6356: $ff
	rst $38                                          ; $6357: $ff
	rst $38                                          ; $6358: $ff
	rst $38                                          ; $6359: $ff
	rst $38                                          ; $635a: $ff
	rst $38                                          ; $635b: $ff
	rst $38                                          ; $635c: $ff
	rst $38                                          ; $635d: $ff
	rst $38                                          ; $635e: $ff
	rst $38                                          ; $635f: $ff
	rst $38                                          ; $6360: $ff
	rst $38                                          ; $6361: $ff
	rst $38                                          ; $6362: $ff
	rst $38                                          ; $6363: $ff
	rst $38                                          ; $6364: $ff
	rst $38                                          ; $6365: $ff
	rst $38                                          ; $6366: $ff
	rst $38                                          ; $6367: $ff
	rst $38                                          ; $6368: $ff
	rst $38                                          ; $6369: $ff
	rst $38                                          ; $636a: $ff
	rst $38                                          ; $636b: $ff
	rst $38                                          ; $636c: $ff
	rst $38                                          ; $636d: $ff
	rst $38                                          ; $636e: $ff
	rst $38                                          ; $636f: $ff
	rst $38                                          ; $6370: $ff
	rst $38                                          ; $6371: $ff
	rst $38                                          ; $6372: $ff
	rst $38                                          ; $6373: $ff
	rst $38                                          ; $6374: $ff
	rst $38                                          ; $6375: $ff
	rst $38                                          ; $6376: $ff
	rst $38                                          ; $6377: $ff
	rst $38                                          ; $6378: $ff
	rst $38                                          ; $6379: $ff
	rst $38                                          ; $637a: $ff
	rst $38                                          ; $637b: $ff
	rst $38                                          ; $637c: $ff
	rst $38                                          ; $637d: $ff
	rst $38                                          ; $637e: $ff
	rst $38                                          ; $637f: $ff
	rst $38                                          ; $6380: $ff
	rst $38                                          ; $6381: $ff
	rst $38                                          ; $6382: $ff
	rst $38                                          ; $6383: $ff
	rst $38                                          ; $6384: $ff
	rst $38                                          ; $6385: $ff
	rst $38                                          ; $6386: $ff
	rst $38                                          ; $6387: $ff
	rst $38                                          ; $6388: $ff
	rst $38                                          ; $6389: $ff
	rst $38                                          ; $638a: $ff
	rst $38                                          ; $638b: $ff
	rst $38                                          ; $638c: $ff
	rst $38                                          ; $638d: $ff
	rst $38                                          ; $638e: $ff
	rst $38                                          ; $638f: $ff
	rst $38                                          ; $6390: $ff
	rst $38                                          ; $6391: $ff
	rst $38                                          ; $6392: $ff
	rst $38                                          ; $6393: $ff
	rst $38                                          ; $6394: $ff
	rst $38                                          ; $6395: $ff
	rst $38                                          ; $6396: $ff
	rst $38                                          ; $6397: $ff
	rst $38                                          ; $6398: $ff
	rst $38                                          ; $6399: $ff
	rst $38                                          ; $639a: $ff
	rst $38                                          ; $639b: $ff
	rst $38                                          ; $639c: $ff
	rst $38                                          ; $639d: $ff
	rst $38                                          ; $639e: $ff
	rst $38                                          ; $639f: $ff
	rst $38                                          ; $63a0: $ff
	rst $38                                          ; $63a1: $ff
	rst $38                                          ; $63a2: $ff
	rst $38                                          ; $63a3: $ff
	rst $38                                          ; $63a4: $ff
	rst $38                                          ; $63a5: $ff
	rst $38                                          ; $63a6: $ff
	rst $38                                          ; $63a7: $ff
	rst $38                                          ; $63a8: $ff
	rst $38                                          ; $63a9: $ff
	rst $38                                          ; $63aa: $ff
	rst $38                                          ; $63ab: $ff
	rst $38                                          ; $63ac: $ff
	rst $38                                          ; $63ad: $ff
	rst $38                                          ; $63ae: $ff
	rst $38                                          ; $63af: $ff
	rst $38                                          ; $63b0: $ff
	rst $38                                          ; $63b1: $ff
	rst $38                                          ; $63b2: $ff
	rst $38                                          ; $63b3: $ff
	rst $38                                          ; $63b4: $ff
	rst $38                                          ; $63b5: $ff
	rst $38                                          ; $63b6: $ff
	rst $38                                          ; $63b7: $ff
	rst $38                                          ; $63b8: $ff
	rst $38                                          ; $63b9: $ff
	rst $38                                          ; $63ba: $ff
	rst $38                                          ; $63bb: $ff
	rst $38                                          ; $63bc: $ff
	rst $38                                          ; $63bd: $ff
	rst $38                                          ; $63be: $ff
	rst $38                                          ; $63bf: $ff
	rst $38                                          ; $63c0: $ff
	rst $38                                          ; $63c1: $ff
	rst $38                                          ; $63c2: $ff
	rst $38                                          ; $63c3: $ff
	rst $38                                          ; $63c4: $ff
	rst $38                                          ; $63c5: $ff
	rst $38                                          ; $63c6: $ff
	rst $38                                          ; $63c7: $ff
	rst $38                                          ; $63c8: $ff
	rst $38                                          ; $63c9: $ff
	rst $38                                          ; $63ca: $ff
	rst $38                                          ; $63cb: $ff
	rst $38                                          ; $63cc: $ff
	rst $38                                          ; $63cd: $ff
	rst $38                                          ; $63ce: $ff
	rst $38                                          ; $63cf: $ff
	rst $38                                          ; $63d0: $ff
	rst $38                                          ; $63d1: $ff
	rst $38                                          ; $63d2: $ff
	rst $38                                          ; $63d3: $ff
	rst $38                                          ; $63d4: $ff
	rst $38                                          ; $63d5: $ff
	rst $38                                          ; $63d6: $ff
	rst $38                                          ; $63d7: $ff
	rst $38                                          ; $63d8: $ff
	rst $38                                          ; $63d9: $ff
	rst $38                                          ; $63da: $ff
	rst $38                                          ; $63db: $ff
	rst $38                                          ; $63dc: $ff
	rst $38                                          ; $63dd: $ff
	rst $38                                          ; $63de: $ff
	rst $38                                          ; $63df: $ff
	rst $38                                          ; $63e0: $ff
	rst $38                                          ; $63e1: $ff
	rst $38                                          ; $63e2: $ff
	rst $38                                          ; $63e3: $ff
	rst $38                                          ; $63e4: $ff
	rst $38                                          ; $63e5: $ff
	rst $38                                          ; $63e6: $ff
	rst $38                                          ; $63e7: $ff
	rst $38                                          ; $63e8: $ff
	rst $38                                          ; $63e9: $ff
	rst $38                                          ; $63ea: $ff
	rst $38                                          ; $63eb: $ff
	rst $38                                          ; $63ec: $ff
	rst $38                                          ; $63ed: $ff
	rst $38                                          ; $63ee: $ff
	rst $38                                          ; $63ef: $ff

Call_099_63f0:
	rst $38                                          ; $63f0: $ff
	rst $38                                          ; $63f1: $ff
	rst $38                                          ; $63f2: $ff
	rst $38                                          ; $63f3: $ff
	rst $38                                          ; $63f4: $ff
	rst $38                                          ; $63f5: $ff
	rst $38                                          ; $63f6: $ff
	rst $38                                          ; $63f7: $ff
	rst $38                                          ; $63f8: $ff
	rst $38                                          ; $63f9: $ff
	rst $38                                          ; $63fa: $ff
	rst $38                                          ; $63fb: $ff
	rst $38                                          ; $63fc: $ff
	rst $38                                          ; $63fd: $ff
	rst $38                                          ; $63fe: $ff
	rst $38                                          ; $63ff: $ff
	rst $38                                          ; $6400: $ff
	rst $38                                          ; $6401: $ff
	rst $38                                          ; $6402: $ff
	rst $38                                          ; $6403: $ff
	rst $38                                          ; $6404: $ff
	rst $38                                          ; $6405: $ff
	rst $38                                          ; $6406: $ff
	rst $38                                          ; $6407: $ff
	rst $38                                          ; $6408: $ff
	rst $38                                          ; $6409: $ff
	rst $38                                          ; $640a: $ff
	rst $38                                          ; $640b: $ff
	rst $38                                          ; $640c: $ff
	rst $38                                          ; $640d: $ff
	rst $38                                          ; $640e: $ff
	rst $38                                          ; $640f: $ff
	rst $38                                          ; $6410: $ff
	rst $38                                          ; $6411: $ff
	rst $38                                          ; $6412: $ff
	rst $38                                          ; $6413: $ff
	rst $38                                          ; $6414: $ff
	rst $38                                          ; $6415: $ff
	rst $38                                          ; $6416: $ff
	rst $38                                          ; $6417: $ff
	rst $38                                          ; $6418: $ff
	rst $38                                          ; $6419: $ff
	rst $38                                          ; $641a: $ff
	rst $38                                          ; $641b: $ff
	rst $38                                          ; $641c: $ff
	rst $38                                          ; $641d: $ff
	rst $38                                          ; $641e: $ff
	rst $38                                          ; $641f: $ff
	rst $38                                          ; $6420: $ff
	rst $38                                          ; $6421: $ff
	rst $38                                          ; $6422: $ff
	rst $38                                          ; $6423: $ff
	rst $38                                          ; $6424: $ff
	rst $38                                          ; $6425: $ff
	rst $38                                          ; $6426: $ff
	rst $38                                          ; $6427: $ff
	rst $38                                          ; $6428: $ff
	rst $38                                          ; $6429: $ff
	rst $38                                          ; $642a: $ff
	rst $38                                          ; $642b: $ff
	rst $38                                          ; $642c: $ff
	rst $38                                          ; $642d: $ff
	rst $38                                          ; $642e: $ff
	rst $38                                          ; $642f: $ff
	rst $38                                          ; $6430: $ff
	rst $38                                          ; $6431: $ff
	rst $38                                          ; $6432: $ff
	rst $38                                          ; $6433: $ff
	rst $38                                          ; $6434: $ff
	rst $38                                          ; $6435: $ff
	rst $38                                          ; $6436: $ff
	rst $38                                          ; $6437: $ff
	rst $38                                          ; $6438: $ff
	rst $38                                          ; $6439: $ff
	rst $38                                          ; $643a: $ff
	rst $38                                          ; $643b: $ff
	rst $38                                          ; $643c: $ff
	rst $38                                          ; $643d: $ff
	rst $38                                          ; $643e: $ff
	rst $38                                          ; $643f: $ff
	rst $38                                          ; $6440: $ff
	rst $38                                          ; $6441: $ff
	rst $38                                          ; $6442: $ff
	rst $38                                          ; $6443: $ff
	rst $38                                          ; $6444: $ff
	rst $38                                          ; $6445: $ff
	rst $38                                          ; $6446: $ff
	rst $38                                          ; $6447: $ff
	rst $38                                          ; $6448: $ff
	rst $38                                          ; $6449: $ff
	rst $38                                          ; $644a: $ff
	rst $38                                          ; $644b: $ff
	rst $38                                          ; $644c: $ff
	rst $38                                          ; $644d: $ff
	rst $38                                          ; $644e: $ff
	rst $38                                          ; $644f: $ff
	rst $38                                          ; $6450: $ff
	rst $38                                          ; $6451: $ff
	rst $38                                          ; $6452: $ff
	rst $38                                          ; $6453: $ff
	rst $38                                          ; $6454: $ff
	rst $38                                          ; $6455: $ff
	rst $38                                          ; $6456: $ff
	rst $38                                          ; $6457: $ff
	rst $38                                          ; $6458: $ff
	rst $38                                          ; $6459: $ff
	rst $38                                          ; $645a: $ff
	rst $38                                          ; $645b: $ff
	rst $38                                          ; $645c: $ff
	rst $38                                          ; $645d: $ff
	rst $38                                          ; $645e: $ff
	rst $38                                          ; $645f: $ff
	rst $38                                          ; $6460: $ff
	rst $38                                          ; $6461: $ff
	rst $38                                          ; $6462: $ff
	rst $38                                          ; $6463: $ff
	rst $38                                          ; $6464: $ff
	rst $38                                          ; $6465: $ff
	rst $38                                          ; $6466: $ff
	rst $38                                          ; $6467: $ff
	rst $38                                          ; $6468: $ff
	rst $38                                          ; $6469: $ff
	rst $38                                          ; $646a: $ff
	rst $38                                          ; $646b: $ff
	rst $38                                          ; $646c: $ff
	rst $38                                          ; $646d: $ff
	rst $38                                          ; $646e: $ff
	rst $38                                          ; $646f: $ff
	rst $38                                          ; $6470: $ff
	rst $38                                          ; $6471: $ff
	rst $38                                          ; $6472: $ff
	rst $38                                          ; $6473: $ff
	rst $38                                          ; $6474: $ff
	rst $38                                          ; $6475: $ff
	rst $38                                          ; $6476: $ff
	rst $38                                          ; $6477: $ff
	rst $38                                          ; $6478: $ff
	rst $38                                          ; $6479: $ff
	rst $38                                          ; $647a: $ff
	rst $38                                          ; $647b: $ff
	rst $38                                          ; $647c: $ff
	rst $38                                          ; $647d: $ff
	rst $38                                          ; $647e: $ff
	rst $38                                          ; $647f: $ff
	rst $38                                          ; $6480: $ff
	rst $38                                          ; $6481: $ff
	rst $38                                          ; $6482: $ff
	rst $38                                          ; $6483: $ff
	rst $38                                          ; $6484: $ff
	rst $38                                          ; $6485: $ff
	rst $38                                          ; $6486: $ff
	rst $38                                          ; $6487: $ff
	rst $38                                          ; $6488: $ff
	rst $38                                          ; $6489: $ff
	rst $38                                          ; $648a: $ff
	rst $38                                          ; $648b: $ff
	rst $38                                          ; $648c: $ff
	rst $38                                          ; $648d: $ff
	rst $38                                          ; $648e: $ff
	rst $38                                          ; $648f: $ff
	rst $38                                          ; $6490: $ff
	rst $38                                          ; $6491: $ff
	rst $38                                          ; $6492: $ff
	rst $38                                          ; $6493: $ff
	rst $38                                          ; $6494: $ff
	rst $38                                          ; $6495: $ff
	rst $38                                          ; $6496: $ff
	rst $38                                          ; $6497: $ff
	rst $38                                          ; $6498: $ff
	rst $38                                          ; $6499: $ff
	rst $38                                          ; $649a: $ff
	rst $38                                          ; $649b: $ff
	rst $38                                          ; $649c: $ff
	rst $38                                          ; $649d: $ff
	rst $38                                          ; $649e: $ff
	rst $38                                          ; $649f: $ff
	rst $38                                          ; $64a0: $ff
	rst $38                                          ; $64a1: $ff
	rst $38                                          ; $64a2: $ff
	rst $38                                          ; $64a3: $ff
	rst $38                                          ; $64a4: $ff
	rst $38                                          ; $64a5: $ff
	rst $38                                          ; $64a6: $ff
	rst $38                                          ; $64a7: $ff
	rst $38                                          ; $64a8: $ff
	rst $38                                          ; $64a9: $ff
	rst $38                                          ; $64aa: $ff
	rst $38                                          ; $64ab: $ff
	rst $38                                          ; $64ac: $ff
	rst $38                                          ; $64ad: $ff
	rst $38                                          ; $64ae: $ff
	rst $38                                          ; $64af: $ff
	rst $38                                          ; $64b0: $ff
	rst $38                                          ; $64b1: $ff
	rst $38                                          ; $64b2: $ff
	rst $38                                          ; $64b3: $ff
	rst $38                                          ; $64b4: $ff
	rst $38                                          ; $64b5: $ff
	rst $38                                          ; $64b6: $ff
	rst $38                                          ; $64b7: $ff
	rst $38                                          ; $64b8: $ff
	rst $38                                          ; $64b9: $ff
	rst $38                                          ; $64ba: $ff
	rst $38                                          ; $64bb: $ff
	rst $38                                          ; $64bc: $ff
	rst $38                                          ; $64bd: $ff
	rst $38                                          ; $64be: $ff
	rst $38                                          ; $64bf: $ff
	rst $38                                          ; $64c0: $ff
	rst $38                                          ; $64c1: $ff
	rst $38                                          ; $64c2: $ff
	rst $38                                          ; $64c3: $ff
	rst $38                                          ; $64c4: $ff
	rst $38                                          ; $64c5: $ff
	rst $38                                          ; $64c6: $ff
	rst $38                                          ; $64c7: $ff
	rst $38                                          ; $64c8: $ff
	rst $38                                          ; $64c9: $ff
	rst $38                                          ; $64ca: $ff
	rst $38                                          ; $64cb: $ff
	rst $38                                          ; $64cc: $ff
	rst $38                                          ; $64cd: $ff
	rst $38                                          ; $64ce: $ff
	rst $38                                          ; $64cf: $ff
	rst $38                                          ; $64d0: $ff
	rst $38                                          ; $64d1: $ff
	rst $38                                          ; $64d2: $ff
	rst $38                                          ; $64d3: $ff
	rst $38                                          ; $64d4: $ff
	rst $38                                          ; $64d5: $ff
	rst $38                                          ; $64d6: $ff
	rst $38                                          ; $64d7: $ff
	rst $38                                          ; $64d8: $ff
	rst $38                                          ; $64d9: $ff
	rst $38                                          ; $64da: $ff
	rst $38                                          ; $64db: $ff
	rst $38                                          ; $64dc: $ff
	rst $38                                          ; $64dd: $ff
	rst $38                                          ; $64de: $ff
	rst $38                                          ; $64df: $ff
	rst $38                                          ; $64e0: $ff
	rst $38                                          ; $64e1: $ff
	rst $38                                          ; $64e2: $ff
	rst $38                                          ; $64e3: $ff
	rst $38                                          ; $64e4: $ff
	rst $38                                          ; $64e5: $ff
	rst $38                                          ; $64e6: $ff
	rst $38                                          ; $64e7: $ff
	rst $38                                          ; $64e8: $ff
	rst $38                                          ; $64e9: $ff
	rst $38                                          ; $64ea: $ff
	rst $38                                          ; $64eb: $ff
	rst $38                                          ; $64ec: $ff
	rst $38                                          ; $64ed: $ff
	rst $38                                          ; $64ee: $ff
	rst $38                                          ; $64ef: $ff
	rst $38                                          ; $64f0: $ff
	rst $38                                          ; $64f1: $ff
	rst $38                                          ; $64f2: $ff
	rst $38                                          ; $64f3: $ff
	rst $38                                          ; $64f4: $ff
	rst $38                                          ; $64f5: $ff
	rst $38                                          ; $64f6: $ff
	rst $38                                          ; $64f7: $ff
	rst $38                                          ; $64f8: $ff
	rst $38                                          ; $64f9: $ff
	rst $38                                          ; $64fa: $ff
	rst $38                                          ; $64fb: $ff
	rst $38                                          ; $64fc: $ff
	rst $38                                          ; $64fd: $ff
	rst $38                                          ; $64fe: $ff
	rst $38                                          ; $64ff: $ff
	rst $38                                          ; $6500: $ff
	rst $38                                          ; $6501: $ff
	rst $38                                          ; $6502: $ff
	rst $38                                          ; $6503: $ff
	rst $38                                          ; $6504: $ff
	rst $38                                          ; $6505: $ff
	rst $38                                          ; $6506: $ff
	rst $38                                          ; $6507: $ff
	rst $38                                          ; $6508: $ff
	rst $38                                          ; $6509: $ff
	rst $38                                          ; $650a: $ff
	rst $38                                          ; $650b: $ff
	rst $38                                          ; $650c: $ff
	rst $38                                          ; $650d: $ff
	rst $38                                          ; $650e: $ff
	rst $38                                          ; $650f: $ff
	rst $38                                          ; $6510: $ff
	rst $38                                          ; $6511: $ff
	rst $38                                          ; $6512: $ff
	rst $38                                          ; $6513: $ff
	rst $38                                          ; $6514: $ff
	rst $38                                          ; $6515: $ff
	rst $38                                          ; $6516: $ff
	rst $38                                          ; $6517: $ff
	rst $38                                          ; $6518: $ff
	rst $38                                          ; $6519: $ff
	rst $38                                          ; $651a: $ff
	rst $38                                          ; $651b: $ff
	rst $38                                          ; $651c: $ff
	rst $38                                          ; $651d: $ff
	rst $38                                          ; $651e: $ff
	rst $38                                          ; $651f: $ff
	rst $38                                          ; $6520: $ff
	rst $38                                          ; $6521: $ff
	rst $38                                          ; $6522: $ff
	rst $38                                          ; $6523: $ff
	rst $38                                          ; $6524: $ff
	rst $38                                          ; $6525: $ff
	rst $38                                          ; $6526: $ff
	rst $38                                          ; $6527: $ff
	rst $38                                          ; $6528: $ff
	rst $38                                          ; $6529: $ff
	rst $38                                          ; $652a: $ff
	rst $38                                          ; $652b: $ff
	rst $38                                          ; $652c: $ff
	rst $38                                          ; $652d: $ff
	rst $38                                          ; $652e: $ff
	rst $38                                          ; $652f: $ff
	rst $38                                          ; $6530: $ff
	rst $38                                          ; $6531: $ff
	rst $38                                          ; $6532: $ff
	rst $38                                          ; $6533: $ff
	rst $38                                          ; $6534: $ff
	rst $38                                          ; $6535: $ff
	rst $38                                          ; $6536: $ff
	rst $38                                          ; $6537: $ff
	rst $38                                          ; $6538: $ff
	rst $38                                          ; $6539: $ff
	rst $38                                          ; $653a: $ff
	rst $38                                          ; $653b: $ff
	rst $38                                          ; $653c: $ff
	rst $38                                          ; $653d: $ff
	rst $38                                          ; $653e: $ff
	rst $38                                          ; $653f: $ff
	rst $38                                          ; $6540: $ff
	rst $38                                          ; $6541: $ff
	rst $38                                          ; $6542: $ff
	rst $38                                          ; $6543: $ff
	rst $38                                          ; $6544: $ff
	rst $38                                          ; $6545: $ff
	rst $38                                          ; $6546: $ff
	rst $38                                          ; $6547: $ff
	rst $38                                          ; $6548: $ff
	rst $38                                          ; $6549: $ff
	rst $38                                          ; $654a: $ff
	rst $38                                          ; $654b: $ff
	rst $38                                          ; $654c: $ff
	rst $38                                          ; $654d: $ff
	rst $38                                          ; $654e: $ff
	rst $38                                          ; $654f: $ff
	rst $38                                          ; $6550: $ff
	rst $38                                          ; $6551: $ff
	rst $38                                          ; $6552: $ff
	rst $38                                          ; $6553: $ff
	rst $38                                          ; $6554: $ff
	rst $38                                          ; $6555: $ff
	rst $38                                          ; $6556: $ff
	rst $38                                          ; $6557: $ff
	rst $38                                          ; $6558: $ff
	rst $38                                          ; $6559: $ff
	rst $38                                          ; $655a: $ff
	rst $38                                          ; $655b: $ff
	rst $38                                          ; $655c: $ff
	rst $38                                          ; $655d: $ff
	rst $38                                          ; $655e: $ff
	rst $38                                          ; $655f: $ff
	rst $38                                          ; $6560: $ff
	rst $38                                          ; $6561: $ff
	rst $38                                          ; $6562: $ff
	rst $38                                          ; $6563: $ff
	rst $38                                          ; $6564: $ff
	rst $38                                          ; $6565: $ff
	rst $38                                          ; $6566: $ff
	rst $38                                          ; $6567: $ff
	rst $38                                          ; $6568: $ff
	rst $38                                          ; $6569: $ff
	rst $38                                          ; $656a: $ff
	rst $38                                          ; $656b: $ff
	rst $38                                          ; $656c: $ff
	rst $38                                          ; $656d: $ff
	rst $38                                          ; $656e: $ff
	rst $38                                          ; $656f: $ff
	rst $38                                          ; $6570: $ff
	rst $38                                          ; $6571: $ff
	rst $38                                          ; $6572: $ff
	rst $38                                          ; $6573: $ff
	rst $38                                          ; $6574: $ff
	rst $38                                          ; $6575: $ff
	rst $38                                          ; $6576: $ff
	rst $38                                          ; $6577: $ff
	rst $38                                          ; $6578: $ff
	rst $38                                          ; $6579: $ff
	rst $38                                          ; $657a: $ff
	rst $38                                          ; $657b: $ff
	rst $38                                          ; $657c: $ff
	rst $38                                          ; $657d: $ff
	rst $38                                          ; $657e: $ff
	rst $38                                          ; $657f: $ff
	rst $38                                          ; $6580: $ff
	rst $38                                          ; $6581: $ff
	rst $38                                          ; $6582: $ff
	rst $38                                          ; $6583: $ff
	rst $38                                          ; $6584: $ff
	rst $38                                          ; $6585: $ff
	rst $38                                          ; $6586: $ff
	rst $38                                          ; $6587: $ff
	rst $38                                          ; $6588: $ff
	rst $38                                          ; $6589: $ff
	rst $38                                          ; $658a: $ff
	rst $38                                          ; $658b: $ff
	rst $38                                          ; $658c: $ff
	rst $38                                          ; $658d: $ff
	rst $38                                          ; $658e: $ff
	rst $38                                          ; $658f: $ff
	rst $38                                          ; $6590: $ff
	rst $38                                          ; $6591: $ff
	rst $38                                          ; $6592: $ff
	rst $38                                          ; $6593: $ff
	rst $38                                          ; $6594: $ff
	rst $38                                          ; $6595: $ff
	rst $38                                          ; $6596: $ff
	rst $38                                          ; $6597: $ff
	rst $38                                          ; $6598: $ff
	rst $38                                          ; $6599: $ff
	rst $38                                          ; $659a: $ff
	rst $38                                          ; $659b: $ff
	rst $38                                          ; $659c: $ff
	rst $38                                          ; $659d: $ff
	rst $38                                          ; $659e: $ff
	rst $38                                          ; $659f: $ff
	rst $38                                          ; $65a0: $ff
	rst $38                                          ; $65a1: $ff
	rst $38                                          ; $65a2: $ff
	rst $38                                          ; $65a3: $ff
	rst $38                                          ; $65a4: $ff
	rst $38                                          ; $65a5: $ff
	rst $38                                          ; $65a6: $ff
	rst $38                                          ; $65a7: $ff
	rst $38                                          ; $65a8: $ff
	rst $38                                          ; $65a9: $ff
	rst $38                                          ; $65aa: $ff
	rst $38                                          ; $65ab: $ff
	rst $38                                          ; $65ac: $ff
	rst $38                                          ; $65ad: $ff
	rst $38                                          ; $65ae: $ff
	rst $38                                          ; $65af: $ff
	rst $38                                          ; $65b0: $ff
	rst $38                                          ; $65b1: $ff
	rst $38                                          ; $65b2: $ff
	rst $38                                          ; $65b3: $ff
	rst $38                                          ; $65b4: $ff
	rst $38                                          ; $65b5: $ff
	rst $38                                          ; $65b6: $ff
	rst $38                                          ; $65b7: $ff
	rst $38                                          ; $65b8: $ff
	rst $38                                          ; $65b9: $ff
	rst $38                                          ; $65ba: $ff
	rst $38                                          ; $65bb: $ff
	rst $38                                          ; $65bc: $ff
	rst $38                                          ; $65bd: $ff
	rst $38                                          ; $65be: $ff
	rst $38                                          ; $65bf: $ff
	rst $38                                          ; $65c0: $ff
	rst $38                                          ; $65c1: $ff
	rst $38                                          ; $65c2: $ff
	rst $38                                          ; $65c3: $ff
	rst $38                                          ; $65c4: $ff
	rst $38                                          ; $65c5: $ff
	rst $38                                          ; $65c6: $ff
	rst $38                                          ; $65c7: $ff
	rst $38                                          ; $65c8: $ff
	rst $38                                          ; $65c9: $ff
	rst $38                                          ; $65ca: $ff
	rst $38                                          ; $65cb: $ff
	rst $38                                          ; $65cc: $ff
	rst $38                                          ; $65cd: $ff
	rst $38                                          ; $65ce: $ff
	rst $38                                          ; $65cf: $ff
	rst $38                                          ; $65d0: $ff
	rst $38                                          ; $65d1: $ff
	rst $38                                          ; $65d2: $ff
	rst $38                                          ; $65d3: $ff
	rst $38                                          ; $65d4: $ff
	rst $38                                          ; $65d5: $ff
	rst $38                                          ; $65d6: $ff
	rst $38                                          ; $65d7: $ff
	rst $38                                          ; $65d8: $ff
	rst $38                                          ; $65d9: $ff
	rst $38                                          ; $65da: $ff
	rst $38                                          ; $65db: $ff
	rst $38                                          ; $65dc: $ff
	rst $38                                          ; $65dd: $ff
	rst $38                                          ; $65de: $ff
	rst $38                                          ; $65df: $ff
	rst $38                                          ; $65e0: $ff
	rst $38                                          ; $65e1: $ff
	rst $38                                          ; $65e2: $ff
	rst $38                                          ; $65e3: $ff
	rst $38                                          ; $65e4: $ff
	rst $38                                          ; $65e5: $ff
	rst $38                                          ; $65e6: $ff
	rst $38                                          ; $65e7: $ff
	rst $38                                          ; $65e8: $ff
	rst $38                                          ; $65e9: $ff
	rst $38                                          ; $65ea: $ff
	rst $38                                          ; $65eb: $ff
	rst $38                                          ; $65ec: $ff
	rst $38                                          ; $65ed: $ff
	rst $38                                          ; $65ee: $ff
	rst $38                                          ; $65ef: $ff
	rst $38                                          ; $65f0: $ff
	rst $38                                          ; $65f1: $ff
	rst $38                                          ; $65f2: $ff
	rst $38                                          ; $65f3: $ff
	rst $38                                          ; $65f4: $ff
	rst $38                                          ; $65f5: $ff
	rst $38                                          ; $65f6: $ff
	rst $38                                          ; $65f7: $ff
	rst $38                                          ; $65f8: $ff
	rst $38                                          ; $65f9: $ff
	rst $38                                          ; $65fa: $ff
	rst $38                                          ; $65fb: $ff
	rst $38                                          ; $65fc: $ff
	rst $38                                          ; $65fd: $ff
	rst $38                                          ; $65fe: $ff
	rst $38                                          ; $65ff: $ff
	rst $38                                          ; $6600: $ff
	rst $38                                          ; $6601: $ff
	rst $38                                          ; $6602: $ff
	rst $38                                          ; $6603: $ff
	rst $38                                          ; $6604: $ff
	rst $38                                          ; $6605: $ff
	rst $38                                          ; $6606: $ff
	rst $38                                          ; $6607: $ff
	rst $38                                          ; $6608: $ff
	rst $38                                          ; $6609: $ff
	rst $38                                          ; $660a: $ff
	rst $38                                          ; $660b: $ff
	rst $38                                          ; $660c: $ff
	rst $38                                          ; $660d: $ff
	rst $38                                          ; $660e: $ff
	rst $38                                          ; $660f: $ff
	rst $38                                          ; $6610: $ff
	rst $38                                          ; $6611: $ff
	rst $38                                          ; $6612: $ff
	rst $38                                          ; $6613: $ff
	rst $38                                          ; $6614: $ff
	rst $38                                          ; $6615: $ff
	rst $38                                          ; $6616: $ff
	rst $38                                          ; $6617: $ff
	rst $38                                          ; $6618: $ff
	rst $38                                          ; $6619: $ff
	rst $38                                          ; $661a: $ff
	rst $38                                          ; $661b: $ff
	rst $38                                          ; $661c: $ff
	rst $38                                          ; $661d: $ff
	rst $38                                          ; $661e: $ff
	rst $38                                          ; $661f: $ff
	rst $38                                          ; $6620: $ff
	rst $38                                          ; $6621: $ff
	rst $38                                          ; $6622: $ff
	rst $38                                          ; $6623: $ff
	rst $38                                          ; $6624: $ff
	rst $38                                          ; $6625: $ff
	rst $38                                          ; $6626: $ff
	rst $38                                          ; $6627: $ff
	rst $38                                          ; $6628: $ff
	rst $38                                          ; $6629: $ff
	rst $38                                          ; $662a: $ff
	rst $38                                          ; $662b: $ff
	rst $38                                          ; $662c: $ff
	rst $38                                          ; $662d: $ff
	rst $38                                          ; $662e: $ff
	rst $38                                          ; $662f: $ff
	rst $38                                          ; $6630: $ff
	rst $38                                          ; $6631: $ff
	rst $38                                          ; $6632: $ff
	rst $38                                          ; $6633: $ff
	rst $38                                          ; $6634: $ff
	rst $38                                          ; $6635: $ff
	rst $38                                          ; $6636: $ff
	rst $38                                          ; $6637: $ff
	rst $38                                          ; $6638: $ff
	rst $38                                          ; $6639: $ff
	rst $38                                          ; $663a: $ff
	rst $38                                          ; $663b: $ff
	rst $38                                          ; $663c: $ff
	rst $38                                          ; $663d: $ff
	rst $38                                          ; $663e: $ff
	rst $38                                          ; $663f: $ff
	rst $38                                          ; $6640: $ff
	rst $38                                          ; $6641: $ff
	rst $38                                          ; $6642: $ff
	rst $38                                          ; $6643: $ff
	rst $38                                          ; $6644: $ff
	rst $38                                          ; $6645: $ff
	rst $38                                          ; $6646: $ff
	rst $38                                          ; $6647: $ff
	rst $38                                          ; $6648: $ff
	rst $38                                          ; $6649: $ff
	rst $38                                          ; $664a: $ff
	rst $38                                          ; $664b: $ff
	rst $38                                          ; $664c: $ff
	rst $38                                          ; $664d: $ff
	rst $38                                          ; $664e: $ff
	rst $38                                          ; $664f: $ff
	rst $38                                          ; $6650: $ff
	rst $38                                          ; $6651: $ff
	rst $38                                          ; $6652: $ff
	rst $38                                          ; $6653: $ff
	rst $38                                          ; $6654: $ff
	rst $38                                          ; $6655: $ff
	rst $38                                          ; $6656: $ff
	rst $38                                          ; $6657: $ff
	rst $38                                          ; $6658: $ff
	rst $38                                          ; $6659: $ff
	rst $38                                          ; $665a: $ff
	rst $38                                          ; $665b: $ff
	rst $38                                          ; $665c: $ff
	rst $38                                          ; $665d: $ff
	rst $38                                          ; $665e: $ff
	rst $38                                          ; $665f: $ff
	rst $38                                          ; $6660: $ff
	rst $38                                          ; $6661: $ff
	rst $38                                          ; $6662: $ff
	rst $38                                          ; $6663: $ff
	rst $38                                          ; $6664: $ff
	rst $38                                          ; $6665: $ff
	rst $38                                          ; $6666: $ff
	rst $38                                          ; $6667: $ff
	rst $38                                          ; $6668: $ff
	rst $38                                          ; $6669: $ff
	rst $38                                          ; $666a: $ff
	rst $38                                          ; $666b: $ff
	rst $38                                          ; $666c: $ff
	rst $38                                          ; $666d: $ff
	rst $38                                          ; $666e: $ff
	rst $38                                          ; $666f: $ff
	rst $38                                          ; $6670: $ff
	rst $38                                          ; $6671: $ff
	rst $38                                          ; $6672: $ff
	rst $38                                          ; $6673: $ff
	rst $38                                          ; $6674: $ff
	rst $38                                          ; $6675: $ff
	rst $38                                          ; $6676: $ff
	rst $38                                          ; $6677: $ff
	rst $38                                          ; $6678: $ff
	rst $38                                          ; $6679: $ff
	rst $38                                          ; $667a: $ff
	rst $38                                          ; $667b: $ff
	rst $38                                          ; $667c: $ff
	rst $38                                          ; $667d: $ff
	rst $38                                          ; $667e: $ff
	rst $38                                          ; $667f: $ff
	rst $38                                          ; $6680: $ff
	rst $38                                          ; $6681: $ff
	rst $38                                          ; $6682: $ff
	rst $38                                          ; $6683: $ff
	rst $38                                          ; $6684: $ff
	rst $38                                          ; $6685: $ff
	rst $38                                          ; $6686: $ff
	rst $38                                          ; $6687: $ff
	rst $38                                          ; $6688: $ff
	rst $38                                          ; $6689: $ff
	rst $38                                          ; $668a: $ff
	rst $38                                          ; $668b: $ff
	rst $38                                          ; $668c: $ff
	rst $38                                          ; $668d: $ff
	rst $38                                          ; $668e: $ff
	rst $38                                          ; $668f: $ff
	rst $38                                          ; $6690: $ff
	rst $38                                          ; $6691: $ff
	rst $38                                          ; $6692: $ff
	rst $38                                          ; $6693: $ff
	rst $38                                          ; $6694: $ff
	rst $38                                          ; $6695: $ff
	rst $38                                          ; $6696: $ff
	rst $38                                          ; $6697: $ff
	rst $38                                          ; $6698: $ff
	rst $38                                          ; $6699: $ff
	rst $38                                          ; $669a: $ff
	rst $38                                          ; $669b: $ff
	rst $38                                          ; $669c: $ff
	rst $38                                          ; $669d: $ff
	rst $38                                          ; $669e: $ff
	rst $38                                          ; $669f: $ff
	rst $38                                          ; $66a0: $ff
	rst $38                                          ; $66a1: $ff
	rst $38                                          ; $66a2: $ff
	rst $38                                          ; $66a3: $ff
	rst $38                                          ; $66a4: $ff
	rst $38                                          ; $66a5: $ff
	rst $38                                          ; $66a6: $ff
	rst $38                                          ; $66a7: $ff
	rst $38                                          ; $66a8: $ff
	rst $38                                          ; $66a9: $ff
	rst $38                                          ; $66aa: $ff
	rst $38                                          ; $66ab: $ff
	rst $38                                          ; $66ac: $ff
	rst $38                                          ; $66ad: $ff
	rst $38                                          ; $66ae: $ff
	rst $38                                          ; $66af: $ff
	rst $38                                          ; $66b0: $ff
	rst $38                                          ; $66b1: $ff
	rst $38                                          ; $66b2: $ff
	rst $38                                          ; $66b3: $ff
	rst $38                                          ; $66b4: $ff
	rst $38                                          ; $66b5: $ff
	rst $38                                          ; $66b6: $ff
	rst $38                                          ; $66b7: $ff
	rst $38                                          ; $66b8: $ff
	rst $38                                          ; $66b9: $ff
	rst $38                                          ; $66ba: $ff
	rst $38                                          ; $66bb: $ff
	rst $38                                          ; $66bc: $ff
	rst $38                                          ; $66bd: $ff
	rst $38                                          ; $66be: $ff
	rst $38                                          ; $66bf: $ff
	rst $38                                          ; $66c0: $ff
	rst $38                                          ; $66c1: $ff
	rst $38                                          ; $66c2: $ff
	rst $38                                          ; $66c3: $ff
	rst $38                                          ; $66c4: $ff
	rst $38                                          ; $66c5: $ff
	rst $38                                          ; $66c6: $ff
	rst $38                                          ; $66c7: $ff
	rst $38                                          ; $66c8: $ff
	rst $38                                          ; $66c9: $ff
	rst $38                                          ; $66ca: $ff
	rst $38                                          ; $66cb: $ff
	rst $38                                          ; $66cc: $ff
	rst $38                                          ; $66cd: $ff
	rst $38                                          ; $66ce: $ff
	rst $38                                          ; $66cf: $ff
	rst $38                                          ; $66d0: $ff
	rst $38                                          ; $66d1: $ff
	rst $38                                          ; $66d2: $ff
	rst $38                                          ; $66d3: $ff
	rst $38                                          ; $66d4: $ff
	rst $38                                          ; $66d5: $ff
	rst $38                                          ; $66d6: $ff
	rst $38                                          ; $66d7: $ff
	rst $38                                          ; $66d8: $ff
	rst $38                                          ; $66d9: $ff
	rst $38                                          ; $66da: $ff
	rst $38                                          ; $66db: $ff
	rst $38                                          ; $66dc: $ff
	rst $38                                          ; $66dd: $ff
	rst $38                                          ; $66de: $ff
	rst $38                                          ; $66df: $ff
	rst $38                                          ; $66e0: $ff
	rst $38                                          ; $66e1: $ff
	rst $38                                          ; $66e2: $ff
	rst $38                                          ; $66e3: $ff
	rst $38                                          ; $66e4: $ff
	rst $38                                          ; $66e5: $ff
	rst $38                                          ; $66e6: $ff
	rst $38                                          ; $66e7: $ff
	rst $38                                          ; $66e8: $ff
	rst $38                                          ; $66e9: $ff
	rst $38                                          ; $66ea: $ff
	rst $38                                          ; $66eb: $ff
	rst $38                                          ; $66ec: $ff
	rst $38                                          ; $66ed: $ff
	rst $38                                          ; $66ee: $ff
	rst $38                                          ; $66ef: $ff
	rst $38                                          ; $66f0: $ff
	rst $38                                          ; $66f1: $ff
	rst $38                                          ; $66f2: $ff
	rst $38                                          ; $66f3: $ff
	rst $38                                          ; $66f4: $ff
	rst $38                                          ; $66f5: $ff
	rst $38                                          ; $66f6: $ff
	rst $38                                          ; $66f7: $ff
	rst $38                                          ; $66f8: $ff
	rst $38                                          ; $66f9: $ff
	rst $38                                          ; $66fa: $ff
	rst $38                                          ; $66fb: $ff
	rst $38                                          ; $66fc: $ff
	rst $38                                          ; $66fd: $ff
	rst $38                                          ; $66fe: $ff
	rst $38                                          ; $66ff: $ff
	rst $38                                          ; $6700: $ff
	rst $38                                          ; $6701: $ff
	rst $38                                          ; $6702: $ff
	rst $38                                          ; $6703: $ff
	rst $38                                          ; $6704: $ff
	rst $38                                          ; $6705: $ff
	rst $38                                          ; $6706: $ff
	rst $38                                          ; $6707: $ff
	rst $38                                          ; $6708: $ff
	rst $38                                          ; $6709: $ff
	rst $38                                          ; $670a: $ff
	rst $38                                          ; $670b: $ff
	rst $38                                          ; $670c: $ff
	rst $38                                          ; $670d: $ff
	rst $38                                          ; $670e: $ff
	rst $38                                          ; $670f: $ff
	rst $38                                          ; $6710: $ff
	rst $38                                          ; $6711: $ff
	rst $38                                          ; $6712: $ff
	rst $38                                          ; $6713: $ff
	rst $38                                          ; $6714: $ff
	rst $38                                          ; $6715: $ff
	rst $38                                          ; $6716: $ff
	rst $38                                          ; $6717: $ff
	rst $38                                          ; $6718: $ff
	rst $38                                          ; $6719: $ff
	rst $38                                          ; $671a: $ff
	rst $38                                          ; $671b: $ff
	rst $38                                          ; $671c: $ff
	rst $38                                          ; $671d: $ff
	rst $38                                          ; $671e: $ff
	rst $38                                          ; $671f: $ff
	rst $38                                          ; $6720: $ff
	rst $38                                          ; $6721: $ff
	rst $38                                          ; $6722: $ff
	rst $38                                          ; $6723: $ff
	rst $38                                          ; $6724: $ff
	rst $38                                          ; $6725: $ff
	rst $38                                          ; $6726: $ff
	rst $38                                          ; $6727: $ff
	rst $38                                          ; $6728: $ff
	rst $38                                          ; $6729: $ff
	rst $38                                          ; $672a: $ff
	rst $38                                          ; $672b: $ff
	rst $38                                          ; $672c: $ff
	rst $38                                          ; $672d: $ff
	rst $38                                          ; $672e: $ff
	rst $38                                          ; $672f: $ff
	rst $38                                          ; $6730: $ff
	rst $38                                          ; $6731: $ff
	rst $38                                          ; $6732: $ff
	rst $38                                          ; $6733: $ff
	rst $38                                          ; $6734: $ff
	rst $38                                          ; $6735: $ff
	rst $38                                          ; $6736: $ff
	rst $38                                          ; $6737: $ff
	rst $38                                          ; $6738: $ff
	rst $38                                          ; $6739: $ff
	rst $38                                          ; $673a: $ff
	rst $38                                          ; $673b: $ff
	rst $38                                          ; $673c: $ff
	rst $38                                          ; $673d: $ff
	rst $38                                          ; $673e: $ff
	rst $38                                          ; $673f: $ff
	rst $38                                          ; $6740: $ff
	rst $38                                          ; $6741: $ff
	rst $38                                          ; $6742: $ff
	rst $38                                          ; $6743: $ff
	rst $38                                          ; $6744: $ff
	rst $38                                          ; $6745: $ff
	rst $38                                          ; $6746: $ff
	rst $38                                          ; $6747: $ff
	rst $38                                          ; $6748: $ff
	rst $38                                          ; $6749: $ff
	rst $38                                          ; $674a: $ff
	rst $38                                          ; $674b: $ff
	rst $38                                          ; $674c: $ff
	rst $38                                          ; $674d: $ff
	rst $38                                          ; $674e: $ff
	rst $38                                          ; $674f: $ff
	rst $38                                          ; $6750: $ff
	rst $38                                          ; $6751: $ff
	rst $38                                          ; $6752: $ff
	rst $38                                          ; $6753: $ff
	rst $38                                          ; $6754: $ff
	rst $38                                          ; $6755: $ff
	rst $38                                          ; $6756: $ff
	rst $38                                          ; $6757: $ff
	rst $38                                          ; $6758: $ff
	rst $38                                          ; $6759: $ff
	rst $38                                          ; $675a: $ff
	rst $38                                          ; $675b: $ff
	rst $38                                          ; $675c: $ff
	rst $38                                          ; $675d: $ff
	rst $38                                          ; $675e: $ff
	rst $38                                          ; $675f: $ff
	rst $38                                          ; $6760: $ff
	rst $38                                          ; $6761: $ff
	rst $38                                          ; $6762: $ff
	rst $38                                          ; $6763: $ff
	rst $38                                          ; $6764: $ff
	rst $38                                          ; $6765: $ff
	rst $38                                          ; $6766: $ff
	rst $38                                          ; $6767: $ff
	rst $38                                          ; $6768: $ff
	rst $38                                          ; $6769: $ff
	rst $38                                          ; $676a: $ff
	rst $38                                          ; $676b: $ff
	rst $38                                          ; $676c: $ff
	rst $38                                          ; $676d: $ff
	rst $38                                          ; $676e: $ff
	rst $38                                          ; $676f: $ff
	rst $38                                          ; $6770: $ff
	rst $38                                          ; $6771: $ff
	rst $38                                          ; $6772: $ff
	rst $38                                          ; $6773: $ff
	rst $38                                          ; $6774: $ff
	rst $38                                          ; $6775: $ff
	rst $38                                          ; $6776: $ff
	rst $38                                          ; $6777: $ff
	rst $38                                          ; $6778: $ff
	rst $38                                          ; $6779: $ff
	rst $38                                          ; $677a: $ff
	rst $38                                          ; $677b: $ff
	rst $38                                          ; $677c: $ff
	rst $38                                          ; $677d: $ff
	rst $38                                          ; $677e: $ff
	rst $38                                          ; $677f: $ff
	rst $38                                          ; $6780: $ff
	rst $38                                          ; $6781: $ff
	rst $38                                          ; $6782: $ff
	rst $38                                          ; $6783: $ff
	rst $38                                          ; $6784: $ff
	rst $38                                          ; $6785: $ff
	rst $38                                          ; $6786: $ff
	rst $38                                          ; $6787: $ff
	rst $38                                          ; $6788: $ff
	rst $38                                          ; $6789: $ff
	rst $38                                          ; $678a: $ff
	rst $38                                          ; $678b: $ff
	rst $38                                          ; $678c: $ff
	rst $38                                          ; $678d: $ff
	rst $38                                          ; $678e: $ff
	rst $38                                          ; $678f: $ff
	rst $38                                          ; $6790: $ff
	rst $38                                          ; $6791: $ff
	rst $38                                          ; $6792: $ff
	rst $38                                          ; $6793: $ff
	rst $38                                          ; $6794: $ff
	rst $38                                          ; $6795: $ff
	rst $38                                          ; $6796: $ff
	rst $38                                          ; $6797: $ff
	rst $38                                          ; $6798: $ff
	rst $38                                          ; $6799: $ff
	rst $38                                          ; $679a: $ff
	rst $38                                          ; $679b: $ff
	rst $38                                          ; $679c: $ff
	rst $38                                          ; $679d: $ff
	rst $38                                          ; $679e: $ff
	rst $38                                          ; $679f: $ff
	rst $38                                          ; $67a0: $ff
	rst $38                                          ; $67a1: $ff
	rst $38                                          ; $67a2: $ff
	rst $38                                          ; $67a3: $ff
	rst $38                                          ; $67a4: $ff
	rst $38                                          ; $67a5: $ff
	rst $38                                          ; $67a6: $ff
	rst $38                                          ; $67a7: $ff
	rst $38                                          ; $67a8: $ff
	rst $38                                          ; $67a9: $ff
	rst $38                                          ; $67aa: $ff
	rst $38                                          ; $67ab: $ff
	rst $38                                          ; $67ac: $ff
	rst $38                                          ; $67ad: $ff
	rst $38                                          ; $67ae: $ff
	rst $38                                          ; $67af: $ff
	rst $38                                          ; $67b0: $ff
	rst $38                                          ; $67b1: $ff
	rst $38                                          ; $67b2: $ff
	rst $38                                          ; $67b3: $ff
	rst $38                                          ; $67b4: $ff
	rst $38                                          ; $67b5: $ff
	rst $38                                          ; $67b6: $ff
	rst $38                                          ; $67b7: $ff
	rst $38                                          ; $67b8: $ff
	rst $38                                          ; $67b9: $ff
	rst $38                                          ; $67ba: $ff
	rst $38                                          ; $67bb: $ff
	rst $38                                          ; $67bc: $ff
	rst $38                                          ; $67bd: $ff
	rst $38                                          ; $67be: $ff
	rst $38                                          ; $67bf: $ff
	rst $38                                          ; $67c0: $ff
	rst $38                                          ; $67c1: $ff
	rst $38                                          ; $67c2: $ff
	rst $38                                          ; $67c3: $ff
	rst $38                                          ; $67c4: $ff
	rst $38                                          ; $67c5: $ff
	rst $38                                          ; $67c6: $ff
	rst $38                                          ; $67c7: $ff
	rst $38                                          ; $67c8: $ff
	rst $38                                          ; $67c9: $ff
	rst $38                                          ; $67ca: $ff
	rst $38                                          ; $67cb: $ff
	rst $38                                          ; $67cc: $ff
	rst $38                                          ; $67cd: $ff
	rst $38                                          ; $67ce: $ff
	rst $38                                          ; $67cf: $ff
	rst $38                                          ; $67d0: $ff
	rst $38                                          ; $67d1: $ff
	rst $38                                          ; $67d2: $ff
	rst $38                                          ; $67d3: $ff
	rst $38                                          ; $67d4: $ff
	rst $38                                          ; $67d5: $ff
	rst $38                                          ; $67d6: $ff
	rst $38                                          ; $67d7: $ff
	rst $38                                          ; $67d8: $ff
	rst $38                                          ; $67d9: $ff
	rst $38                                          ; $67da: $ff
	rst $38                                          ; $67db: $ff
	rst $38                                          ; $67dc: $ff
	rst $38                                          ; $67dd: $ff
	rst $38                                          ; $67de: $ff
	rst $38                                          ; $67df: $ff
	rst $38                                          ; $67e0: $ff
	rst $38                                          ; $67e1: $ff
	rst $38                                          ; $67e2: $ff
	rst $38                                          ; $67e3: $ff
	rst $38                                          ; $67e4: $ff
	rst $38                                          ; $67e5: $ff
	rst $38                                          ; $67e6: $ff
	rst $38                                          ; $67e7: $ff
	rst $38                                          ; $67e8: $ff
	rst $38                                          ; $67e9: $ff
	rst $38                                          ; $67ea: $ff
	rst $38                                          ; $67eb: $ff
	rst $38                                          ; $67ec: $ff
	rst $38                                          ; $67ed: $ff
	rst $38                                          ; $67ee: $ff
	rst $38                                          ; $67ef: $ff
	rst $38                                          ; $67f0: $ff
	rst $38                                          ; $67f1: $ff
	rst $38                                          ; $67f2: $ff
	rst $38                                          ; $67f3: $ff
	rst $38                                          ; $67f4: $ff
	rst $38                                          ; $67f5: $ff
	rst $38                                          ; $67f6: $ff
	rst $38                                          ; $67f7: $ff
	rst $38                                          ; $67f8: $ff
	rst $38                                          ; $67f9: $ff
	rst $38                                          ; $67fa: $ff
	rst $38                                          ; $67fb: $ff
	rst $38                                          ; $67fc: $ff
	rst $38                                          ; $67fd: $ff
	rst $38                                          ; $67fe: $ff
	rst $38                                          ; $67ff: $ff
	rst $38                                          ; $6800: $ff
	rst $38                                          ; $6801: $ff
	rst $38                                          ; $6802: $ff
	rst $38                                          ; $6803: $ff
	rst $38                                          ; $6804: $ff
	rst $38                                          ; $6805: $ff
	rst $38                                          ; $6806: $ff
	rst $38                                          ; $6807: $ff
	rst $38                                          ; $6808: $ff
	rst $38                                          ; $6809: $ff
	rst $38                                          ; $680a: $ff
	rst $38                                          ; $680b: $ff
	rst $38                                          ; $680c: $ff
	rst $38                                          ; $680d: $ff
	rst $38                                          ; $680e: $ff
	rst $38                                          ; $680f: $ff
	rst $38                                          ; $6810: $ff
	rst $38                                          ; $6811: $ff
	rst $38                                          ; $6812: $ff
	rst $38                                          ; $6813: $ff
	rst $38                                          ; $6814: $ff
	rst $38                                          ; $6815: $ff
	rst $38                                          ; $6816: $ff
	rst $38                                          ; $6817: $ff
	rst $38                                          ; $6818: $ff
	rst $38                                          ; $6819: $ff
	rst $38                                          ; $681a: $ff
	rst $38                                          ; $681b: $ff
	rst $38                                          ; $681c: $ff
	rst $38                                          ; $681d: $ff
	rst $38                                          ; $681e: $ff
	rst $38                                          ; $681f: $ff
	rst $38                                          ; $6820: $ff
	rst $38                                          ; $6821: $ff
	rst $38                                          ; $6822: $ff
	rst $38                                          ; $6823: $ff
	rst $38                                          ; $6824: $ff
	rst $38                                          ; $6825: $ff
	rst $38                                          ; $6826: $ff
	rst $38                                          ; $6827: $ff
	rst $38                                          ; $6828: $ff
	rst $38                                          ; $6829: $ff
	rst $38                                          ; $682a: $ff
	rst $38                                          ; $682b: $ff
	rst $38                                          ; $682c: $ff
	rst $38                                          ; $682d: $ff
	rst $38                                          ; $682e: $ff
	rst $38                                          ; $682f: $ff
	rst $38                                          ; $6830: $ff
	rst $38                                          ; $6831: $ff
	rst $38                                          ; $6832: $ff
	rst $38                                          ; $6833: $ff
	rst $38                                          ; $6834: $ff
	rst $38                                          ; $6835: $ff
	rst $38                                          ; $6836: $ff
	rst $38                                          ; $6837: $ff
	rst $38                                          ; $6838: $ff
	rst $38                                          ; $6839: $ff
	rst $38                                          ; $683a: $ff
	rst $38                                          ; $683b: $ff
	rst $38                                          ; $683c: $ff
	rst $38                                          ; $683d: $ff
	rst $38                                          ; $683e: $ff
	rst $38                                          ; $683f: $ff
	rst $38                                          ; $6840: $ff
	rst $38                                          ; $6841: $ff
	rst $38                                          ; $6842: $ff
	rst $38                                          ; $6843: $ff
	rst $38                                          ; $6844: $ff
	rst $38                                          ; $6845: $ff
	rst $38                                          ; $6846: $ff
	rst $38                                          ; $6847: $ff
	rst $38                                          ; $6848: $ff
	rst $38                                          ; $6849: $ff
	rst $38                                          ; $684a: $ff
	rst $38                                          ; $684b: $ff
	rst $38                                          ; $684c: $ff
	rst $38                                          ; $684d: $ff
	rst $38                                          ; $684e: $ff
	rst $38                                          ; $684f: $ff
	rst $38                                          ; $6850: $ff
	rst $38                                          ; $6851: $ff
	rst $38                                          ; $6852: $ff
	rst $38                                          ; $6853: $ff
	rst $38                                          ; $6854: $ff
	rst $38                                          ; $6855: $ff
	rst $38                                          ; $6856: $ff
	rst $38                                          ; $6857: $ff
	rst $38                                          ; $6858: $ff
	rst $38                                          ; $6859: $ff
	rst $38                                          ; $685a: $ff
	rst $38                                          ; $685b: $ff
	rst $38                                          ; $685c: $ff
	rst $38                                          ; $685d: $ff
	rst $38                                          ; $685e: $ff
	rst $38                                          ; $685f: $ff
	rst $38                                          ; $6860: $ff
	rst $38                                          ; $6861: $ff
	rst $38                                          ; $6862: $ff
	rst $38                                          ; $6863: $ff
	rst $38                                          ; $6864: $ff
	rst $38                                          ; $6865: $ff
	rst $38                                          ; $6866: $ff
	rst $38                                          ; $6867: $ff
	rst $38                                          ; $6868: $ff
	rst $38                                          ; $6869: $ff
	rst $38                                          ; $686a: $ff
	rst $38                                          ; $686b: $ff
	rst $38                                          ; $686c: $ff
	rst $38                                          ; $686d: $ff
	rst $38                                          ; $686e: $ff
	rst $38                                          ; $686f: $ff
	rst $38                                          ; $6870: $ff
	rst $38                                          ; $6871: $ff
	rst $38                                          ; $6872: $ff
	rst $38                                          ; $6873: $ff
	rst $38                                          ; $6874: $ff
	rst $38                                          ; $6875: $ff
	rst $38                                          ; $6876: $ff
	rst $38                                          ; $6877: $ff
	rst $38                                          ; $6878: $ff
	rst $38                                          ; $6879: $ff
	rst $38                                          ; $687a: $ff
	rst $38                                          ; $687b: $ff
	rst $38                                          ; $687c: $ff
	rst $38                                          ; $687d: $ff
	rst $38                                          ; $687e: $ff
	rst $38                                          ; $687f: $ff
	rst $38                                          ; $6880: $ff
	rst $38                                          ; $6881: $ff
	rst $38                                          ; $6882: $ff
	rst $38                                          ; $6883: $ff
	rst $38                                          ; $6884: $ff
	rst $38                                          ; $6885: $ff
	rst $38                                          ; $6886: $ff
	rst $38                                          ; $6887: $ff
	rst $38                                          ; $6888: $ff
	rst $38                                          ; $6889: $ff
	rst $38                                          ; $688a: $ff
	rst $38                                          ; $688b: $ff
	rst $38                                          ; $688c: $ff
	rst $38                                          ; $688d: $ff
	rst $38                                          ; $688e: $ff
	rst $38                                          ; $688f: $ff
	rst $38                                          ; $6890: $ff
	rst $38                                          ; $6891: $ff
	rst $38                                          ; $6892: $ff
	rst $38                                          ; $6893: $ff
	rst $38                                          ; $6894: $ff
	rst $38                                          ; $6895: $ff
	rst $38                                          ; $6896: $ff
	rst $38                                          ; $6897: $ff
	rst $38                                          ; $6898: $ff
	rst $38                                          ; $6899: $ff
	rst $38                                          ; $689a: $ff
	rst $38                                          ; $689b: $ff
	rst $38                                          ; $689c: $ff
	rst $38                                          ; $689d: $ff
	rst $38                                          ; $689e: $ff
	rst $38                                          ; $689f: $ff
	rst $38                                          ; $68a0: $ff
	rst $38                                          ; $68a1: $ff
	rst $38                                          ; $68a2: $ff
	rst $38                                          ; $68a3: $ff
	rst $38                                          ; $68a4: $ff
	rst $38                                          ; $68a5: $ff
	rst $38                                          ; $68a6: $ff
	rst $38                                          ; $68a7: $ff
	rst $38                                          ; $68a8: $ff
	rst $38                                          ; $68a9: $ff
	rst $38                                          ; $68aa: $ff
	rst $38                                          ; $68ab: $ff
	rst $38                                          ; $68ac: $ff
	rst $38                                          ; $68ad: $ff
	rst $38                                          ; $68ae: $ff
	rst $38                                          ; $68af: $ff
	rst $38                                          ; $68b0: $ff
	rst $38                                          ; $68b1: $ff
	rst $38                                          ; $68b2: $ff
	rst $38                                          ; $68b3: $ff
	rst $38                                          ; $68b4: $ff
	rst $38                                          ; $68b5: $ff
	rst $38                                          ; $68b6: $ff
	rst $38                                          ; $68b7: $ff
	rst $38                                          ; $68b8: $ff
	rst $38                                          ; $68b9: $ff
	rst $38                                          ; $68ba: $ff
	rst $38                                          ; $68bb: $ff
	rst $38                                          ; $68bc: $ff
	rst $38                                          ; $68bd: $ff
	rst $38                                          ; $68be: $ff
	rst $38                                          ; $68bf: $ff
	rst $38                                          ; $68c0: $ff
	rst $38                                          ; $68c1: $ff
	rst $38                                          ; $68c2: $ff
	rst $38                                          ; $68c3: $ff
	rst $38                                          ; $68c4: $ff
	rst $38                                          ; $68c5: $ff
	rst $38                                          ; $68c6: $ff
	rst $38                                          ; $68c7: $ff
	rst $38                                          ; $68c8: $ff
	rst $38                                          ; $68c9: $ff
	rst $38                                          ; $68ca: $ff
	rst $38                                          ; $68cb: $ff
	rst $38                                          ; $68cc: $ff
	rst $38                                          ; $68cd: $ff
	rst $38                                          ; $68ce: $ff
	rst $38                                          ; $68cf: $ff
	rst $38                                          ; $68d0: $ff
	rst $38                                          ; $68d1: $ff
	rst $38                                          ; $68d2: $ff
	rst $38                                          ; $68d3: $ff
	rst $38                                          ; $68d4: $ff
	rst $38                                          ; $68d5: $ff
	rst $38                                          ; $68d6: $ff
	rst $38                                          ; $68d7: $ff
	rst $38                                          ; $68d8: $ff
	rst $38                                          ; $68d9: $ff
	rst $38                                          ; $68da: $ff
	rst $38                                          ; $68db: $ff
	rst $38                                          ; $68dc: $ff
	rst $38                                          ; $68dd: $ff
	rst $38                                          ; $68de: $ff
	rst $38                                          ; $68df: $ff
	rst $38                                          ; $68e0: $ff
	rst $38                                          ; $68e1: $ff
	rst $38                                          ; $68e2: $ff
	rst $38                                          ; $68e3: $ff
	rst $38                                          ; $68e4: $ff
	rst $38                                          ; $68e5: $ff
	rst $38                                          ; $68e6: $ff
	rst $38                                          ; $68e7: $ff
	rst $38                                          ; $68e8: $ff
	rst $38                                          ; $68e9: $ff
	rst $38                                          ; $68ea: $ff
	rst $38                                          ; $68eb: $ff
	rst $38                                          ; $68ec: $ff
	rst $38                                          ; $68ed: $ff
	rst $38                                          ; $68ee: $ff
	rst $38                                          ; $68ef: $ff
	rst $38                                          ; $68f0: $ff
	rst $38                                          ; $68f1: $ff
	rst $38                                          ; $68f2: $ff
	rst $38                                          ; $68f3: $ff
	rst $38                                          ; $68f4: $ff
	rst $38                                          ; $68f5: $ff
	rst $38                                          ; $68f6: $ff
	rst $38                                          ; $68f7: $ff
	rst $38                                          ; $68f8: $ff
	rst $38                                          ; $68f9: $ff
	rst $38                                          ; $68fa: $ff
	rst $38                                          ; $68fb: $ff
	rst $38                                          ; $68fc: $ff
	rst $38                                          ; $68fd: $ff
	rst $38                                          ; $68fe: $ff
	rst $38                                          ; $68ff: $ff
	rst $38                                          ; $6900: $ff
	rst $38                                          ; $6901: $ff
	rst $38                                          ; $6902: $ff
	rst $38                                          ; $6903: $ff
	rst $38                                          ; $6904: $ff
	rst $38                                          ; $6905: $ff
	rst $38                                          ; $6906: $ff
	rst $38                                          ; $6907: $ff
	rst $38                                          ; $6908: $ff
	rst $38                                          ; $6909: $ff
	rst $38                                          ; $690a: $ff
	rst $38                                          ; $690b: $ff
	rst $38                                          ; $690c: $ff
	rst $38                                          ; $690d: $ff
	rst $38                                          ; $690e: $ff
	rst $38                                          ; $690f: $ff
	rst $38                                          ; $6910: $ff
	rst $38                                          ; $6911: $ff
	rst $38                                          ; $6912: $ff
	rst $38                                          ; $6913: $ff
	rst $38                                          ; $6914: $ff
	rst $38                                          ; $6915: $ff
	rst $38                                          ; $6916: $ff
	rst $38                                          ; $6917: $ff
	rst $38                                          ; $6918: $ff
	rst $38                                          ; $6919: $ff
	rst $38                                          ; $691a: $ff
	rst $38                                          ; $691b: $ff
	rst $38                                          ; $691c: $ff
	rst $38                                          ; $691d: $ff
	rst $38                                          ; $691e: $ff
	rst $38                                          ; $691f: $ff
	rst $38                                          ; $6920: $ff
	rst $38                                          ; $6921: $ff
	rst $38                                          ; $6922: $ff
	rst $38                                          ; $6923: $ff
	rst $38                                          ; $6924: $ff
	rst $38                                          ; $6925: $ff
	rst $38                                          ; $6926: $ff
	rst $38                                          ; $6927: $ff
	rst $38                                          ; $6928: $ff
	rst $38                                          ; $6929: $ff
	rst $38                                          ; $692a: $ff
	rst $38                                          ; $692b: $ff
	rst $38                                          ; $692c: $ff
	rst $38                                          ; $692d: $ff
	rst $38                                          ; $692e: $ff
	rst $38                                          ; $692f: $ff
	rst $38                                          ; $6930: $ff
	rst $38                                          ; $6931: $ff
	rst $38                                          ; $6932: $ff
	rst $38                                          ; $6933: $ff
	rst $38                                          ; $6934: $ff
	rst $38                                          ; $6935: $ff
	rst $38                                          ; $6936: $ff
	rst $38                                          ; $6937: $ff
	rst $38                                          ; $6938: $ff
	rst $38                                          ; $6939: $ff
	rst $38                                          ; $693a: $ff
	rst $38                                          ; $693b: $ff
	rst $38                                          ; $693c: $ff
	rst $38                                          ; $693d: $ff
	rst $38                                          ; $693e: $ff
	rst $38                                          ; $693f: $ff
	rst $38                                          ; $6940: $ff
	rst $38                                          ; $6941: $ff
	rst $38                                          ; $6942: $ff
	rst $38                                          ; $6943: $ff
	rst $38                                          ; $6944: $ff
	rst $38                                          ; $6945: $ff
	rst $38                                          ; $6946: $ff
	rst $38                                          ; $6947: $ff
	rst $38                                          ; $6948: $ff
	rst $38                                          ; $6949: $ff
	rst $38                                          ; $694a: $ff
	rst $38                                          ; $694b: $ff
	rst $38                                          ; $694c: $ff
	rst $38                                          ; $694d: $ff
	rst $38                                          ; $694e: $ff
	rst $38                                          ; $694f: $ff
	rst $38                                          ; $6950: $ff
	rst $38                                          ; $6951: $ff
	rst $38                                          ; $6952: $ff
	rst $38                                          ; $6953: $ff
	rst $38                                          ; $6954: $ff
	rst $38                                          ; $6955: $ff
	rst $38                                          ; $6956: $ff
	rst $38                                          ; $6957: $ff
	rst $38                                          ; $6958: $ff
	rst $38                                          ; $6959: $ff
	rst $38                                          ; $695a: $ff
	rst $38                                          ; $695b: $ff
	rst $38                                          ; $695c: $ff
	rst $38                                          ; $695d: $ff
	rst $38                                          ; $695e: $ff
	rst $38                                          ; $695f: $ff
	rst $38                                          ; $6960: $ff
	rst $38                                          ; $6961: $ff
	rst $38                                          ; $6962: $ff
	rst $38                                          ; $6963: $ff
	rst $38                                          ; $6964: $ff
	rst $38                                          ; $6965: $ff
	rst $38                                          ; $6966: $ff
	rst $38                                          ; $6967: $ff
	rst $38                                          ; $6968: $ff
	rst $38                                          ; $6969: $ff
	rst $38                                          ; $696a: $ff
	rst $38                                          ; $696b: $ff
	rst $38                                          ; $696c: $ff
	rst $38                                          ; $696d: $ff
	rst $38                                          ; $696e: $ff
	rst $38                                          ; $696f: $ff
	rst $38                                          ; $6970: $ff
	rst $38                                          ; $6971: $ff
	rst $38                                          ; $6972: $ff
	rst $38                                          ; $6973: $ff
	rst $38                                          ; $6974: $ff
	rst $38                                          ; $6975: $ff
	rst $38                                          ; $6976: $ff
	rst $38                                          ; $6977: $ff
	rst $38                                          ; $6978: $ff
	rst $38                                          ; $6979: $ff
	rst $38                                          ; $697a: $ff
	rst $38                                          ; $697b: $ff
	rst $38                                          ; $697c: $ff
	rst $38                                          ; $697d: $ff
	rst $38                                          ; $697e: $ff
	rst $38                                          ; $697f: $ff
	rst $38                                          ; $6980: $ff
	rst $38                                          ; $6981: $ff
	rst $38                                          ; $6982: $ff
	rst $38                                          ; $6983: $ff
	rst $38                                          ; $6984: $ff
	rst $38                                          ; $6985: $ff
	rst $38                                          ; $6986: $ff
	rst $38                                          ; $6987: $ff
	rst $38                                          ; $6988: $ff
	rst $38                                          ; $6989: $ff
	rst $38                                          ; $698a: $ff
	rst $38                                          ; $698b: $ff
	rst $38                                          ; $698c: $ff
	rst $38                                          ; $698d: $ff
	rst $38                                          ; $698e: $ff
	rst $38                                          ; $698f: $ff
	rst $38                                          ; $6990: $ff
	rst $38                                          ; $6991: $ff
	rst $38                                          ; $6992: $ff
	rst $38                                          ; $6993: $ff
	rst $38                                          ; $6994: $ff
	rst $38                                          ; $6995: $ff
	rst $38                                          ; $6996: $ff
	rst $38                                          ; $6997: $ff
	rst $38                                          ; $6998: $ff
	rst $38                                          ; $6999: $ff
	rst $38                                          ; $699a: $ff
	rst $38                                          ; $699b: $ff
	rst $38                                          ; $699c: $ff
	rst $38                                          ; $699d: $ff
	rst $38                                          ; $699e: $ff
	rst $38                                          ; $699f: $ff
	rst $38                                          ; $69a0: $ff
	rst $38                                          ; $69a1: $ff
	rst $38                                          ; $69a2: $ff
	rst $38                                          ; $69a3: $ff
	rst $38                                          ; $69a4: $ff
	rst $38                                          ; $69a5: $ff
	rst $38                                          ; $69a6: $ff
	rst $38                                          ; $69a7: $ff
	rst $38                                          ; $69a8: $ff
	rst $38                                          ; $69a9: $ff
	rst $38                                          ; $69aa: $ff
	rst $38                                          ; $69ab: $ff
	rst $38                                          ; $69ac: $ff
	rst $38                                          ; $69ad: $ff
	rst $38                                          ; $69ae: $ff
	rst $38                                          ; $69af: $ff
	rst $38                                          ; $69b0: $ff
	rst $38                                          ; $69b1: $ff
	rst $38                                          ; $69b2: $ff
	rst $38                                          ; $69b3: $ff
	rst $38                                          ; $69b4: $ff
	rst $38                                          ; $69b5: $ff
	rst $38                                          ; $69b6: $ff
	rst $38                                          ; $69b7: $ff
	rst $38                                          ; $69b8: $ff
	rst $38                                          ; $69b9: $ff
	rst $38                                          ; $69ba: $ff
	rst $38                                          ; $69bb: $ff
	rst $38                                          ; $69bc: $ff
	rst $38                                          ; $69bd: $ff
	rst $38                                          ; $69be: $ff
	rst $38                                          ; $69bf: $ff
	rst $38                                          ; $69c0: $ff
	rst $38                                          ; $69c1: $ff
	rst $38                                          ; $69c2: $ff
	rst $38                                          ; $69c3: $ff
	rst $38                                          ; $69c4: $ff
	rst $38                                          ; $69c5: $ff
	rst $38                                          ; $69c6: $ff
	rst $38                                          ; $69c7: $ff
	rst $38                                          ; $69c8: $ff
	rst $38                                          ; $69c9: $ff
	rst $38                                          ; $69ca: $ff
	rst $38                                          ; $69cb: $ff
	rst $38                                          ; $69cc: $ff
	rst $38                                          ; $69cd: $ff
	rst $38                                          ; $69ce: $ff
	rst $38                                          ; $69cf: $ff
	rst $38                                          ; $69d0: $ff
	rst $38                                          ; $69d1: $ff
	rst $38                                          ; $69d2: $ff
	rst $38                                          ; $69d3: $ff
	rst $38                                          ; $69d4: $ff
	rst $38                                          ; $69d5: $ff
	rst $38                                          ; $69d6: $ff
	rst $38                                          ; $69d7: $ff
	rst $38                                          ; $69d8: $ff
	rst $38                                          ; $69d9: $ff
	rst $38                                          ; $69da: $ff
	rst $38                                          ; $69db: $ff
	rst $38                                          ; $69dc: $ff
	rst $38                                          ; $69dd: $ff
	rst $38                                          ; $69de: $ff
	rst $38                                          ; $69df: $ff
	rst $38                                          ; $69e0: $ff
	rst $38                                          ; $69e1: $ff
	rst $38                                          ; $69e2: $ff
	rst $38                                          ; $69e3: $ff
	rst $38                                          ; $69e4: $ff
	rst $38                                          ; $69e5: $ff
	rst $38                                          ; $69e6: $ff
	rst $38                                          ; $69e7: $ff
	rst $38                                          ; $69e8: $ff
	rst $38                                          ; $69e9: $ff
	rst $38                                          ; $69ea: $ff
	rst $38                                          ; $69eb: $ff
	rst $38                                          ; $69ec: $ff
	rst $38                                          ; $69ed: $ff
	rst $38                                          ; $69ee: $ff
	rst $38                                          ; $69ef: $ff
	rst $38                                          ; $69f0: $ff
	rst $38                                          ; $69f1: $ff
	rst $38                                          ; $69f2: $ff
	rst $38                                          ; $69f3: $ff
	rst $38                                          ; $69f4: $ff
	rst $38                                          ; $69f5: $ff
	rst $38                                          ; $69f6: $ff
	rst $38                                          ; $69f7: $ff
	rst $38                                          ; $69f8: $ff
	rst $38                                          ; $69f9: $ff
	rst $38                                          ; $69fa: $ff
	rst $38                                          ; $69fb: $ff
	rst $38                                          ; $69fc: $ff
	rst $38                                          ; $69fd: $ff
	rst $38                                          ; $69fe: $ff
	rst $38                                          ; $69ff: $ff
	rst $38                                          ; $6a00: $ff
	rst $38                                          ; $6a01: $ff
	rst $38                                          ; $6a02: $ff
	rst $38                                          ; $6a03: $ff
	rst $38                                          ; $6a04: $ff
	rst $38                                          ; $6a05: $ff
	rst $38                                          ; $6a06: $ff
	rst $38                                          ; $6a07: $ff
	rst $38                                          ; $6a08: $ff
	rst $38                                          ; $6a09: $ff
	rst $38                                          ; $6a0a: $ff
	rst $38                                          ; $6a0b: $ff
	rst $38                                          ; $6a0c: $ff
	rst $38                                          ; $6a0d: $ff
	rst $38                                          ; $6a0e: $ff
	rst $38                                          ; $6a0f: $ff
	rst $38                                          ; $6a10: $ff
	rst $38                                          ; $6a11: $ff
	rst $38                                          ; $6a12: $ff
	rst $38                                          ; $6a13: $ff
	rst $38                                          ; $6a14: $ff
	rst $38                                          ; $6a15: $ff
	rst $38                                          ; $6a16: $ff
	rst $38                                          ; $6a17: $ff
	rst $38                                          ; $6a18: $ff
	rst $38                                          ; $6a19: $ff
	rst $38                                          ; $6a1a: $ff
	rst $38                                          ; $6a1b: $ff
	rst $38                                          ; $6a1c: $ff
	rst $38                                          ; $6a1d: $ff
	rst $38                                          ; $6a1e: $ff
	rst $38                                          ; $6a1f: $ff
	rst $38                                          ; $6a20: $ff
	rst $38                                          ; $6a21: $ff
	rst $38                                          ; $6a22: $ff
	rst $38                                          ; $6a23: $ff
	rst $38                                          ; $6a24: $ff
	rst $38                                          ; $6a25: $ff
	rst $38                                          ; $6a26: $ff
	rst $38                                          ; $6a27: $ff
	rst $38                                          ; $6a28: $ff
	rst $38                                          ; $6a29: $ff
	rst $38                                          ; $6a2a: $ff
	rst $38                                          ; $6a2b: $ff
	rst $38                                          ; $6a2c: $ff
	rst $38                                          ; $6a2d: $ff
	rst $38                                          ; $6a2e: $ff
	rst $38                                          ; $6a2f: $ff
	rst $38                                          ; $6a30: $ff
	rst $38                                          ; $6a31: $ff
	rst $38                                          ; $6a32: $ff
	rst $38                                          ; $6a33: $ff
	rst $38                                          ; $6a34: $ff
	rst $38                                          ; $6a35: $ff
	rst $38                                          ; $6a36: $ff
	rst $38                                          ; $6a37: $ff
	rst $38                                          ; $6a38: $ff
	rst $38                                          ; $6a39: $ff
	rst $38                                          ; $6a3a: $ff
	rst $38                                          ; $6a3b: $ff
	rst $38                                          ; $6a3c: $ff
	rst $38                                          ; $6a3d: $ff
	rst $38                                          ; $6a3e: $ff
	rst $38                                          ; $6a3f: $ff
	rst $38                                          ; $6a40: $ff
	rst $38                                          ; $6a41: $ff
	rst $38                                          ; $6a42: $ff
	rst $38                                          ; $6a43: $ff
	rst $38                                          ; $6a44: $ff
	rst $38                                          ; $6a45: $ff
	rst $38                                          ; $6a46: $ff
	rst $38                                          ; $6a47: $ff
	rst $38                                          ; $6a48: $ff
	rst $38                                          ; $6a49: $ff
	rst $38                                          ; $6a4a: $ff
	rst $38                                          ; $6a4b: $ff
	rst $38                                          ; $6a4c: $ff
	rst $38                                          ; $6a4d: $ff
	rst $38                                          ; $6a4e: $ff
	rst $38                                          ; $6a4f: $ff
	rst $38                                          ; $6a50: $ff
	rst $38                                          ; $6a51: $ff
	rst $38                                          ; $6a52: $ff
	rst $38                                          ; $6a53: $ff
	rst $38                                          ; $6a54: $ff
	rst $38                                          ; $6a55: $ff
	rst $38                                          ; $6a56: $ff
	rst $38                                          ; $6a57: $ff
	rst $38                                          ; $6a58: $ff
	rst $38                                          ; $6a59: $ff
	rst $38                                          ; $6a5a: $ff
	rst $38                                          ; $6a5b: $ff
	rst $38                                          ; $6a5c: $ff
	rst $38                                          ; $6a5d: $ff
	rst $38                                          ; $6a5e: $ff
	rst $38                                          ; $6a5f: $ff
	rst $38                                          ; $6a60: $ff
	rst $38                                          ; $6a61: $ff
	rst $38                                          ; $6a62: $ff
	rst $38                                          ; $6a63: $ff
	rst $38                                          ; $6a64: $ff
	rst $38                                          ; $6a65: $ff
	rst $38                                          ; $6a66: $ff
	rst $38                                          ; $6a67: $ff
	rst $38                                          ; $6a68: $ff
	rst $38                                          ; $6a69: $ff
	rst $38                                          ; $6a6a: $ff
	rst $38                                          ; $6a6b: $ff
	rst $38                                          ; $6a6c: $ff
	rst $38                                          ; $6a6d: $ff
	rst $38                                          ; $6a6e: $ff
	rst $38                                          ; $6a6f: $ff
	rst $38                                          ; $6a70: $ff
	rst $38                                          ; $6a71: $ff
	rst $38                                          ; $6a72: $ff
	rst $38                                          ; $6a73: $ff
	rst $38                                          ; $6a74: $ff
	rst $38                                          ; $6a75: $ff
	rst $38                                          ; $6a76: $ff
	rst $38                                          ; $6a77: $ff
	rst $38                                          ; $6a78: $ff
	rst $38                                          ; $6a79: $ff
	rst $38                                          ; $6a7a: $ff
	rst $38                                          ; $6a7b: $ff
	rst $38                                          ; $6a7c: $ff
	rst $38                                          ; $6a7d: $ff
	rst $38                                          ; $6a7e: $ff
	rst $38                                          ; $6a7f: $ff
	rst $38                                          ; $6a80: $ff
	rst $38                                          ; $6a81: $ff
	rst $38                                          ; $6a82: $ff
	rst $38                                          ; $6a83: $ff
	rst $38                                          ; $6a84: $ff
	rst $38                                          ; $6a85: $ff
	rst $38                                          ; $6a86: $ff
	rst $38                                          ; $6a87: $ff
	rst $38                                          ; $6a88: $ff
	rst $38                                          ; $6a89: $ff
	rst $38                                          ; $6a8a: $ff
	rst $38                                          ; $6a8b: $ff
	rst $38                                          ; $6a8c: $ff
	rst $38                                          ; $6a8d: $ff
	rst $38                                          ; $6a8e: $ff
	rst $38                                          ; $6a8f: $ff
	rst $38                                          ; $6a90: $ff
	rst $38                                          ; $6a91: $ff
	rst $38                                          ; $6a92: $ff
	rst $38                                          ; $6a93: $ff
	rst $38                                          ; $6a94: $ff
	rst $38                                          ; $6a95: $ff
	rst $38                                          ; $6a96: $ff
	rst $38                                          ; $6a97: $ff
	rst $38                                          ; $6a98: $ff
	rst $38                                          ; $6a99: $ff
	rst $38                                          ; $6a9a: $ff
	rst $38                                          ; $6a9b: $ff
	rst $38                                          ; $6a9c: $ff
	rst $38                                          ; $6a9d: $ff
	rst $38                                          ; $6a9e: $ff
	rst $38                                          ; $6a9f: $ff
	rst $38                                          ; $6aa0: $ff
	rst $38                                          ; $6aa1: $ff
	rst $38                                          ; $6aa2: $ff
	rst $38                                          ; $6aa3: $ff
	rst $38                                          ; $6aa4: $ff
	rst $38                                          ; $6aa5: $ff
	rst $38                                          ; $6aa6: $ff
	rst $38                                          ; $6aa7: $ff
	rst $38                                          ; $6aa8: $ff
	rst $38                                          ; $6aa9: $ff
	rst $38                                          ; $6aaa: $ff
	rst $38                                          ; $6aab: $ff
	rst $38                                          ; $6aac: $ff
	rst $38                                          ; $6aad: $ff
	rst $38                                          ; $6aae: $ff
	rst $38                                          ; $6aaf: $ff
	rst $38                                          ; $6ab0: $ff
	rst $38                                          ; $6ab1: $ff
	rst $38                                          ; $6ab2: $ff
	rst $38                                          ; $6ab3: $ff
	rst $38                                          ; $6ab4: $ff
	rst $38                                          ; $6ab5: $ff
	rst $38                                          ; $6ab6: $ff
	rst $38                                          ; $6ab7: $ff
	rst $38                                          ; $6ab8: $ff
	rst $38                                          ; $6ab9: $ff
	rst $38                                          ; $6aba: $ff
	rst $38                                          ; $6abb: $ff
	rst $38                                          ; $6abc: $ff
	rst $38                                          ; $6abd: $ff
	rst $38                                          ; $6abe: $ff
	rst $38                                          ; $6abf: $ff
	rst $38                                          ; $6ac0: $ff
	rst $38                                          ; $6ac1: $ff
	rst $38                                          ; $6ac2: $ff
	rst $38                                          ; $6ac3: $ff
	rst $38                                          ; $6ac4: $ff
	rst $38                                          ; $6ac5: $ff
	rst $38                                          ; $6ac6: $ff
	rst $38                                          ; $6ac7: $ff
	rst $38                                          ; $6ac8: $ff
	rst $38                                          ; $6ac9: $ff
	rst $38                                          ; $6aca: $ff
	rst $38                                          ; $6acb: $ff
	rst $38                                          ; $6acc: $ff
	rst $38                                          ; $6acd: $ff
	rst $38                                          ; $6ace: $ff
	rst $38                                          ; $6acf: $ff
	rst $38                                          ; $6ad0: $ff
	rst $38                                          ; $6ad1: $ff
	rst $38                                          ; $6ad2: $ff
	rst $38                                          ; $6ad3: $ff
	rst $38                                          ; $6ad4: $ff
	rst $38                                          ; $6ad5: $ff
	rst $38                                          ; $6ad6: $ff
	rst $38                                          ; $6ad7: $ff
	rst $38                                          ; $6ad8: $ff
	rst $38                                          ; $6ad9: $ff
	rst $38                                          ; $6ada: $ff
	rst $38                                          ; $6adb: $ff
	rst $38                                          ; $6adc: $ff
	rst $38                                          ; $6add: $ff
	rst $38                                          ; $6ade: $ff
	rst $38                                          ; $6adf: $ff
	rst $38                                          ; $6ae0: $ff
	rst $38                                          ; $6ae1: $ff
	rst $38                                          ; $6ae2: $ff
	rst $38                                          ; $6ae3: $ff
	rst $38                                          ; $6ae4: $ff
	rst $38                                          ; $6ae5: $ff
	rst $38                                          ; $6ae6: $ff
	rst $38                                          ; $6ae7: $ff
	rst $38                                          ; $6ae8: $ff
	rst $38                                          ; $6ae9: $ff
	rst $38                                          ; $6aea: $ff
	rst $38                                          ; $6aeb: $ff
	rst $38                                          ; $6aec: $ff
	rst $38                                          ; $6aed: $ff
	rst $38                                          ; $6aee: $ff
	rst $38                                          ; $6aef: $ff
	rst $38                                          ; $6af0: $ff
	rst $38                                          ; $6af1: $ff
	rst $38                                          ; $6af2: $ff
	rst $38                                          ; $6af3: $ff
	rst $38                                          ; $6af4: $ff
	rst $38                                          ; $6af5: $ff
	rst $38                                          ; $6af6: $ff
	rst $38                                          ; $6af7: $ff
	rst $38                                          ; $6af8: $ff
	rst $38                                          ; $6af9: $ff
	rst $38                                          ; $6afa: $ff
	rst $38                                          ; $6afb: $ff
	rst $38                                          ; $6afc: $ff
	rst $38                                          ; $6afd: $ff
	rst $38                                          ; $6afe: $ff
	rst $38                                          ; $6aff: $ff
	rst $38                                          ; $6b00: $ff
	rst $38                                          ; $6b01: $ff
	rst $38                                          ; $6b02: $ff
	rst $38                                          ; $6b03: $ff
	rst $38                                          ; $6b04: $ff
	rst $38                                          ; $6b05: $ff
	rst $38                                          ; $6b06: $ff
	rst $38                                          ; $6b07: $ff
	rst $38                                          ; $6b08: $ff
	rst $38                                          ; $6b09: $ff
	rst $38                                          ; $6b0a: $ff
	rst $38                                          ; $6b0b: $ff
	rst $38                                          ; $6b0c: $ff
	rst $38                                          ; $6b0d: $ff
	rst $38                                          ; $6b0e: $ff
	rst $38                                          ; $6b0f: $ff
	rst $38                                          ; $6b10: $ff
	rst $38                                          ; $6b11: $ff
	rst $38                                          ; $6b12: $ff
	rst $38                                          ; $6b13: $ff
	rst $38                                          ; $6b14: $ff
	rst $38                                          ; $6b15: $ff
	rst $38                                          ; $6b16: $ff
	rst $38                                          ; $6b17: $ff
	rst $38                                          ; $6b18: $ff
	rst $38                                          ; $6b19: $ff
	rst $38                                          ; $6b1a: $ff
	rst $38                                          ; $6b1b: $ff
	rst $38                                          ; $6b1c: $ff
	rst $38                                          ; $6b1d: $ff
	rst $38                                          ; $6b1e: $ff
	rst $38                                          ; $6b1f: $ff
	rst $38                                          ; $6b20: $ff
	rst $38                                          ; $6b21: $ff
	rst $38                                          ; $6b22: $ff
	rst $38                                          ; $6b23: $ff
	rst $38                                          ; $6b24: $ff
	rst $38                                          ; $6b25: $ff
	rst $38                                          ; $6b26: $ff
	rst $38                                          ; $6b27: $ff
	rst $38                                          ; $6b28: $ff
	rst $38                                          ; $6b29: $ff
	rst $38                                          ; $6b2a: $ff
	rst $38                                          ; $6b2b: $ff
	rst $38                                          ; $6b2c: $ff
	rst $38                                          ; $6b2d: $ff
	rst $38                                          ; $6b2e: $ff
	rst $38                                          ; $6b2f: $ff
	rst $38                                          ; $6b30: $ff
	rst $38                                          ; $6b31: $ff
	rst $38                                          ; $6b32: $ff
	rst $38                                          ; $6b33: $ff
	rst $38                                          ; $6b34: $ff
	rst $38                                          ; $6b35: $ff
	rst $38                                          ; $6b36: $ff
	rst $38                                          ; $6b37: $ff
	rst $38                                          ; $6b38: $ff
	rst $38                                          ; $6b39: $ff
	rst $38                                          ; $6b3a: $ff
	rst $38                                          ; $6b3b: $ff
	rst $38                                          ; $6b3c: $ff
	rst $38                                          ; $6b3d: $ff
	rst $38                                          ; $6b3e: $ff
	rst $38                                          ; $6b3f: $ff
	rst $38                                          ; $6b40: $ff
	rst $38                                          ; $6b41: $ff
	rst $38                                          ; $6b42: $ff
	rst $38                                          ; $6b43: $ff
	rst $38                                          ; $6b44: $ff
	rst $38                                          ; $6b45: $ff
	rst $38                                          ; $6b46: $ff
	rst $38                                          ; $6b47: $ff
	rst $38                                          ; $6b48: $ff
	rst $38                                          ; $6b49: $ff
	rst $38                                          ; $6b4a: $ff
	rst $38                                          ; $6b4b: $ff
	rst $38                                          ; $6b4c: $ff
	rst $38                                          ; $6b4d: $ff
	rst $38                                          ; $6b4e: $ff
	rst $38                                          ; $6b4f: $ff
	rst $38                                          ; $6b50: $ff
	rst $38                                          ; $6b51: $ff
	rst $38                                          ; $6b52: $ff
	rst $38                                          ; $6b53: $ff
	rst $38                                          ; $6b54: $ff
	rst $38                                          ; $6b55: $ff
	rst $38                                          ; $6b56: $ff
	rst $38                                          ; $6b57: $ff
	rst $38                                          ; $6b58: $ff
	rst $38                                          ; $6b59: $ff
	rst $38                                          ; $6b5a: $ff
	rst $38                                          ; $6b5b: $ff
	rst $38                                          ; $6b5c: $ff
	rst $38                                          ; $6b5d: $ff
	rst $38                                          ; $6b5e: $ff
	rst $38                                          ; $6b5f: $ff
	rst $38                                          ; $6b60: $ff
	rst $38                                          ; $6b61: $ff
	rst $38                                          ; $6b62: $ff
	rst $38                                          ; $6b63: $ff
	rst $38                                          ; $6b64: $ff
	rst $38                                          ; $6b65: $ff
	rst $38                                          ; $6b66: $ff
	rst $38                                          ; $6b67: $ff
	rst $38                                          ; $6b68: $ff
	rst $38                                          ; $6b69: $ff
	rst $38                                          ; $6b6a: $ff
	rst $38                                          ; $6b6b: $ff
	rst $38                                          ; $6b6c: $ff
	rst $38                                          ; $6b6d: $ff
	rst $38                                          ; $6b6e: $ff
	rst $38                                          ; $6b6f: $ff
	rst $38                                          ; $6b70: $ff
	rst $38                                          ; $6b71: $ff
	rst $38                                          ; $6b72: $ff
	rst $38                                          ; $6b73: $ff
	rst $38                                          ; $6b74: $ff
	rst $38                                          ; $6b75: $ff
	rst $38                                          ; $6b76: $ff
	rst $38                                          ; $6b77: $ff
	rst $38                                          ; $6b78: $ff
	rst $38                                          ; $6b79: $ff
	rst $38                                          ; $6b7a: $ff
	rst $38                                          ; $6b7b: $ff
	rst $38                                          ; $6b7c: $ff
	rst $38                                          ; $6b7d: $ff
	rst $38                                          ; $6b7e: $ff
	rst $38                                          ; $6b7f: $ff
	rst $38                                          ; $6b80: $ff
	rst $38                                          ; $6b81: $ff
	rst $38                                          ; $6b82: $ff
	rst $38                                          ; $6b83: $ff
	rst $38                                          ; $6b84: $ff
	rst $38                                          ; $6b85: $ff
	rst $38                                          ; $6b86: $ff
	rst $38                                          ; $6b87: $ff
	rst $38                                          ; $6b88: $ff
	rst $38                                          ; $6b89: $ff
	rst $38                                          ; $6b8a: $ff
	rst $38                                          ; $6b8b: $ff
	rst $38                                          ; $6b8c: $ff
	rst $38                                          ; $6b8d: $ff
	rst $38                                          ; $6b8e: $ff
	rst $38                                          ; $6b8f: $ff
	rst $38                                          ; $6b90: $ff
	rst $38                                          ; $6b91: $ff
	rst $38                                          ; $6b92: $ff
	rst $38                                          ; $6b93: $ff
	rst $38                                          ; $6b94: $ff
	rst $38                                          ; $6b95: $ff
	rst $38                                          ; $6b96: $ff
	rst $38                                          ; $6b97: $ff
	rst $38                                          ; $6b98: $ff
	rst $38                                          ; $6b99: $ff
	rst $38                                          ; $6b9a: $ff
	rst $38                                          ; $6b9b: $ff
	rst $38                                          ; $6b9c: $ff
	rst $38                                          ; $6b9d: $ff
	rst $38                                          ; $6b9e: $ff
	rst $38                                          ; $6b9f: $ff
	rst $38                                          ; $6ba0: $ff
	rst $38                                          ; $6ba1: $ff
	rst $38                                          ; $6ba2: $ff
	rst $38                                          ; $6ba3: $ff
	rst $38                                          ; $6ba4: $ff
	rst $38                                          ; $6ba5: $ff
	rst $38                                          ; $6ba6: $ff
	rst $38                                          ; $6ba7: $ff
	rst $38                                          ; $6ba8: $ff
	rst $38                                          ; $6ba9: $ff
	rst $38                                          ; $6baa: $ff
	rst $38                                          ; $6bab: $ff
	rst $38                                          ; $6bac: $ff
	rst $38                                          ; $6bad: $ff
	rst $38                                          ; $6bae: $ff
	rst $38                                          ; $6baf: $ff
	rst $38                                          ; $6bb0: $ff
	rst $38                                          ; $6bb1: $ff
	rst $38                                          ; $6bb2: $ff
	rst $38                                          ; $6bb3: $ff
	rst $38                                          ; $6bb4: $ff
	rst $38                                          ; $6bb5: $ff
	rst $38                                          ; $6bb6: $ff
	rst $38                                          ; $6bb7: $ff
	rst $38                                          ; $6bb8: $ff
	rst $38                                          ; $6bb9: $ff
	rst $38                                          ; $6bba: $ff
	rst $38                                          ; $6bbb: $ff
	rst $38                                          ; $6bbc: $ff
	rst $38                                          ; $6bbd: $ff
	rst $38                                          ; $6bbe: $ff
	rst $38                                          ; $6bbf: $ff
	rst $38                                          ; $6bc0: $ff
	rst $38                                          ; $6bc1: $ff
	rst $38                                          ; $6bc2: $ff
	rst $38                                          ; $6bc3: $ff
	rst $38                                          ; $6bc4: $ff
	rst $38                                          ; $6bc5: $ff
	rst $38                                          ; $6bc6: $ff
	rst $38                                          ; $6bc7: $ff
	rst $38                                          ; $6bc8: $ff
	rst $38                                          ; $6bc9: $ff
	rst $38                                          ; $6bca: $ff
	rst $38                                          ; $6bcb: $ff
	rst $38                                          ; $6bcc: $ff
	rst $38                                          ; $6bcd: $ff
	rst $38                                          ; $6bce: $ff
	rst $38                                          ; $6bcf: $ff
	rst $38                                          ; $6bd0: $ff
	rst $38                                          ; $6bd1: $ff
	rst $38                                          ; $6bd2: $ff
	rst $38                                          ; $6bd3: $ff
	rst $38                                          ; $6bd4: $ff
	rst $38                                          ; $6bd5: $ff
	rst $38                                          ; $6bd6: $ff
	rst $38                                          ; $6bd7: $ff
	rst $38                                          ; $6bd8: $ff
	rst $38                                          ; $6bd9: $ff
	rst $38                                          ; $6bda: $ff
	rst $38                                          ; $6bdb: $ff
	rst $38                                          ; $6bdc: $ff
	rst $38                                          ; $6bdd: $ff
	rst $38                                          ; $6bde: $ff
	rst $38                                          ; $6bdf: $ff
	rst $38                                          ; $6be0: $ff
	rst $38                                          ; $6be1: $ff
	rst $38                                          ; $6be2: $ff
	rst $38                                          ; $6be3: $ff
	rst $38                                          ; $6be4: $ff
	rst $38                                          ; $6be5: $ff
	rst $38                                          ; $6be6: $ff
	rst $38                                          ; $6be7: $ff
	rst $38                                          ; $6be8: $ff
	rst $38                                          ; $6be9: $ff
	rst $38                                          ; $6bea: $ff
	rst $38                                          ; $6beb: $ff
	rst $38                                          ; $6bec: $ff
	rst $38                                          ; $6bed: $ff
	rst $38                                          ; $6bee: $ff
	rst $38                                          ; $6bef: $ff
	rst $38                                          ; $6bf0: $ff
	rst $38                                          ; $6bf1: $ff
	rst $38                                          ; $6bf2: $ff
	rst $38                                          ; $6bf3: $ff
	rst $38                                          ; $6bf4: $ff
	rst $38                                          ; $6bf5: $ff
	rst $38                                          ; $6bf6: $ff
	rst $38                                          ; $6bf7: $ff
	rst $38                                          ; $6bf8: $ff
	rst $38                                          ; $6bf9: $ff
	rst $38                                          ; $6bfa: $ff
	rst $38                                          ; $6bfb: $ff
	rst $38                                          ; $6bfc: $ff
	rst $38                                          ; $6bfd: $ff
	rst $38                                          ; $6bfe: $ff
	rst $38                                          ; $6bff: $ff
	rst $38                                          ; $6c00: $ff
	rst $38                                          ; $6c01: $ff
	rst $38                                          ; $6c02: $ff
	rst $38                                          ; $6c03: $ff
	rst $38                                          ; $6c04: $ff
	rst $38                                          ; $6c05: $ff
	rst $38                                          ; $6c06: $ff
	rst $38                                          ; $6c07: $ff
	rst $38                                          ; $6c08: $ff
	rst $38                                          ; $6c09: $ff
	rst $38                                          ; $6c0a: $ff
	rst $38                                          ; $6c0b: $ff
	rst $38                                          ; $6c0c: $ff
	rst $38                                          ; $6c0d: $ff
	rst $38                                          ; $6c0e: $ff
	rst $38                                          ; $6c0f: $ff
	rst $38                                          ; $6c10: $ff
	rst $38                                          ; $6c11: $ff
	rst $38                                          ; $6c12: $ff
	rst $38                                          ; $6c13: $ff
	rst $38                                          ; $6c14: $ff
	rst $38                                          ; $6c15: $ff
	rst $38                                          ; $6c16: $ff
	rst $38                                          ; $6c17: $ff
	rst $38                                          ; $6c18: $ff
	rst $38                                          ; $6c19: $ff
	rst $38                                          ; $6c1a: $ff
	rst $38                                          ; $6c1b: $ff
	rst $38                                          ; $6c1c: $ff
	rst $38                                          ; $6c1d: $ff
	rst $38                                          ; $6c1e: $ff
	rst $38                                          ; $6c1f: $ff
	rst $38                                          ; $6c20: $ff
	rst $38                                          ; $6c21: $ff
	rst $38                                          ; $6c22: $ff
	rst $38                                          ; $6c23: $ff
	rst $38                                          ; $6c24: $ff
	rst $38                                          ; $6c25: $ff
	rst $38                                          ; $6c26: $ff
	rst $38                                          ; $6c27: $ff
	rst $38                                          ; $6c28: $ff
	rst $38                                          ; $6c29: $ff
	rst $38                                          ; $6c2a: $ff
	rst $38                                          ; $6c2b: $ff
	rst $38                                          ; $6c2c: $ff
	rst $38                                          ; $6c2d: $ff
	rst $38                                          ; $6c2e: $ff
	rst $38                                          ; $6c2f: $ff
	rst $38                                          ; $6c30: $ff
	rst $38                                          ; $6c31: $ff
	rst $38                                          ; $6c32: $ff
	rst $38                                          ; $6c33: $ff
	rst $38                                          ; $6c34: $ff
	rst $38                                          ; $6c35: $ff
	rst $38                                          ; $6c36: $ff
	rst $38                                          ; $6c37: $ff
	rst $38                                          ; $6c38: $ff
	rst $38                                          ; $6c39: $ff
	rst $38                                          ; $6c3a: $ff
	rst $38                                          ; $6c3b: $ff
	rst $38                                          ; $6c3c: $ff
	rst $38                                          ; $6c3d: $ff
	rst $38                                          ; $6c3e: $ff
	rst $38                                          ; $6c3f: $ff
	rst $38                                          ; $6c40: $ff
	rst $38                                          ; $6c41: $ff
	rst $38                                          ; $6c42: $ff
	rst $38                                          ; $6c43: $ff
	rst $38                                          ; $6c44: $ff
	rst $38                                          ; $6c45: $ff
	rst $38                                          ; $6c46: $ff
	rst $38                                          ; $6c47: $ff
	rst $38                                          ; $6c48: $ff
	rst $38                                          ; $6c49: $ff
	rst $38                                          ; $6c4a: $ff
	rst $38                                          ; $6c4b: $ff
	rst $38                                          ; $6c4c: $ff
	rst $38                                          ; $6c4d: $ff
	rst $38                                          ; $6c4e: $ff
	rst $38                                          ; $6c4f: $ff
	rst $38                                          ; $6c50: $ff
	rst $38                                          ; $6c51: $ff
	rst $38                                          ; $6c52: $ff
	rst $38                                          ; $6c53: $ff
	rst $38                                          ; $6c54: $ff
	rst $38                                          ; $6c55: $ff
	rst $38                                          ; $6c56: $ff
	rst $38                                          ; $6c57: $ff
	rst $38                                          ; $6c58: $ff
	rst $38                                          ; $6c59: $ff
	rst $38                                          ; $6c5a: $ff
	rst $38                                          ; $6c5b: $ff
	rst $38                                          ; $6c5c: $ff
	rst $38                                          ; $6c5d: $ff
	rst $38                                          ; $6c5e: $ff
	rst $38                                          ; $6c5f: $ff
	rst $38                                          ; $6c60: $ff
	rst $38                                          ; $6c61: $ff
	rst $38                                          ; $6c62: $ff
	rst $38                                          ; $6c63: $ff
	rst $38                                          ; $6c64: $ff
	rst $38                                          ; $6c65: $ff
	rst $38                                          ; $6c66: $ff
	rst $38                                          ; $6c67: $ff
	rst $38                                          ; $6c68: $ff
	rst $38                                          ; $6c69: $ff
	rst $38                                          ; $6c6a: $ff
	rst $38                                          ; $6c6b: $ff
	rst $38                                          ; $6c6c: $ff
	rst $38                                          ; $6c6d: $ff
	rst $38                                          ; $6c6e: $ff
	rst $38                                          ; $6c6f: $ff
	rst $38                                          ; $6c70: $ff
	rst $38                                          ; $6c71: $ff
	rst $38                                          ; $6c72: $ff
	rst $38                                          ; $6c73: $ff
	rst $38                                          ; $6c74: $ff
	rst $38                                          ; $6c75: $ff
	rst $38                                          ; $6c76: $ff
	rst $38                                          ; $6c77: $ff
	rst $38                                          ; $6c78: $ff
	rst $38                                          ; $6c79: $ff
	rst $38                                          ; $6c7a: $ff
	rst $38                                          ; $6c7b: $ff
	rst $38                                          ; $6c7c: $ff
	rst $38                                          ; $6c7d: $ff
	rst $38                                          ; $6c7e: $ff
	rst $38                                          ; $6c7f: $ff
	rst $38                                          ; $6c80: $ff
	rst $38                                          ; $6c81: $ff
	rst $38                                          ; $6c82: $ff
	rst $38                                          ; $6c83: $ff
	rst $38                                          ; $6c84: $ff
	rst $38                                          ; $6c85: $ff
	rst $38                                          ; $6c86: $ff
	rst $38                                          ; $6c87: $ff
	rst $38                                          ; $6c88: $ff
	rst $38                                          ; $6c89: $ff
	rst $38                                          ; $6c8a: $ff
	rst $38                                          ; $6c8b: $ff
	rst $38                                          ; $6c8c: $ff
	rst $38                                          ; $6c8d: $ff
	rst $38                                          ; $6c8e: $ff
	rst $38                                          ; $6c8f: $ff
	rst $38                                          ; $6c90: $ff
	rst $38                                          ; $6c91: $ff
	rst $38                                          ; $6c92: $ff
	rst $38                                          ; $6c93: $ff
	rst $38                                          ; $6c94: $ff
	rst $38                                          ; $6c95: $ff
	rst $38                                          ; $6c96: $ff
	rst $38                                          ; $6c97: $ff
	rst $38                                          ; $6c98: $ff
	rst $38                                          ; $6c99: $ff
	rst $38                                          ; $6c9a: $ff
	rst $38                                          ; $6c9b: $ff
	rst $38                                          ; $6c9c: $ff
	rst $38                                          ; $6c9d: $ff
	rst $38                                          ; $6c9e: $ff
	rst $38                                          ; $6c9f: $ff
	rst $38                                          ; $6ca0: $ff
	rst $38                                          ; $6ca1: $ff
	rst $38                                          ; $6ca2: $ff
	rst $38                                          ; $6ca3: $ff
	rst $38                                          ; $6ca4: $ff
	rst $38                                          ; $6ca5: $ff
	rst $38                                          ; $6ca6: $ff
	rst $38                                          ; $6ca7: $ff
	rst $38                                          ; $6ca8: $ff
	rst $38                                          ; $6ca9: $ff
	rst $38                                          ; $6caa: $ff
	rst $38                                          ; $6cab: $ff
	rst $38                                          ; $6cac: $ff
	rst $38                                          ; $6cad: $ff
	rst $38                                          ; $6cae: $ff
	rst $38                                          ; $6caf: $ff
	rst $38                                          ; $6cb0: $ff
	rst $38                                          ; $6cb1: $ff
	rst $38                                          ; $6cb2: $ff
	rst $38                                          ; $6cb3: $ff
	rst $38                                          ; $6cb4: $ff
	rst $38                                          ; $6cb5: $ff
	rst $38                                          ; $6cb6: $ff
	rst $38                                          ; $6cb7: $ff
	rst $38                                          ; $6cb8: $ff
	rst $38                                          ; $6cb9: $ff
	rst $38                                          ; $6cba: $ff
	rst $38                                          ; $6cbb: $ff
	rst $38                                          ; $6cbc: $ff
	rst $38                                          ; $6cbd: $ff
	rst $38                                          ; $6cbe: $ff
	rst $38                                          ; $6cbf: $ff
	rst $38                                          ; $6cc0: $ff
	rst $38                                          ; $6cc1: $ff
	rst $38                                          ; $6cc2: $ff
	rst $38                                          ; $6cc3: $ff
	rst $38                                          ; $6cc4: $ff
	rst $38                                          ; $6cc5: $ff
	rst $38                                          ; $6cc6: $ff
	rst $38                                          ; $6cc7: $ff
	rst $38                                          ; $6cc8: $ff
	rst $38                                          ; $6cc9: $ff
	rst $38                                          ; $6cca: $ff
	rst $38                                          ; $6ccb: $ff
	rst $38                                          ; $6ccc: $ff
	rst $38                                          ; $6ccd: $ff
	rst $38                                          ; $6cce: $ff
	rst $38                                          ; $6ccf: $ff
	rst $38                                          ; $6cd0: $ff
	rst $38                                          ; $6cd1: $ff
	rst $38                                          ; $6cd2: $ff
	rst $38                                          ; $6cd3: $ff
	rst $38                                          ; $6cd4: $ff
	rst $38                                          ; $6cd5: $ff
	rst $38                                          ; $6cd6: $ff
	rst $38                                          ; $6cd7: $ff
	rst $38                                          ; $6cd8: $ff
	rst $38                                          ; $6cd9: $ff
	rst $38                                          ; $6cda: $ff
	rst $38                                          ; $6cdb: $ff
	rst $38                                          ; $6cdc: $ff
	rst $38                                          ; $6cdd: $ff
	rst $38                                          ; $6cde: $ff
	rst $38                                          ; $6cdf: $ff
	rst $38                                          ; $6ce0: $ff
	rst $38                                          ; $6ce1: $ff
	rst $38                                          ; $6ce2: $ff
	rst $38                                          ; $6ce3: $ff
	rst $38                                          ; $6ce4: $ff
	rst $38                                          ; $6ce5: $ff
	rst $38                                          ; $6ce6: $ff
	rst $38                                          ; $6ce7: $ff
	rst $38                                          ; $6ce8: $ff
	rst $38                                          ; $6ce9: $ff
	rst $38                                          ; $6cea: $ff
	rst $38                                          ; $6ceb: $ff
	rst $38                                          ; $6cec: $ff
	rst $38                                          ; $6ced: $ff
	rst $38                                          ; $6cee: $ff
	rst $38                                          ; $6cef: $ff
	rst $38                                          ; $6cf0: $ff
	rst $38                                          ; $6cf1: $ff
	rst $38                                          ; $6cf2: $ff
	rst $38                                          ; $6cf3: $ff
	rst $38                                          ; $6cf4: $ff
	rst $38                                          ; $6cf5: $ff
	rst $38                                          ; $6cf6: $ff
	rst $38                                          ; $6cf7: $ff
	rst $38                                          ; $6cf8: $ff
	rst $38                                          ; $6cf9: $ff
	rst $38                                          ; $6cfa: $ff
	rst $38                                          ; $6cfb: $ff
	rst $38                                          ; $6cfc: $ff
	rst $38                                          ; $6cfd: $ff
	rst $38                                          ; $6cfe: $ff
	rst $38                                          ; $6cff: $ff
	rst $38                                          ; $6d00: $ff
	rst $38                                          ; $6d01: $ff
	rst $38                                          ; $6d02: $ff
	rst $38                                          ; $6d03: $ff
	rst $38                                          ; $6d04: $ff
	rst $38                                          ; $6d05: $ff
	rst $38                                          ; $6d06: $ff
	rst $38                                          ; $6d07: $ff
	rst $38                                          ; $6d08: $ff
	rst $38                                          ; $6d09: $ff
	rst $38                                          ; $6d0a: $ff
	rst $38                                          ; $6d0b: $ff
	rst $38                                          ; $6d0c: $ff
	rst $38                                          ; $6d0d: $ff
	rst $38                                          ; $6d0e: $ff
	rst $38                                          ; $6d0f: $ff
	rst $38                                          ; $6d10: $ff
	rst $38                                          ; $6d11: $ff
	rst $38                                          ; $6d12: $ff
	rst $38                                          ; $6d13: $ff
	rst $38                                          ; $6d14: $ff
	rst $38                                          ; $6d15: $ff
	rst $38                                          ; $6d16: $ff
	rst $38                                          ; $6d17: $ff
	rst $38                                          ; $6d18: $ff
	rst $38                                          ; $6d19: $ff
	rst $38                                          ; $6d1a: $ff
	rst $38                                          ; $6d1b: $ff
	rst $38                                          ; $6d1c: $ff
	rst $38                                          ; $6d1d: $ff
	rst $38                                          ; $6d1e: $ff
	rst $38                                          ; $6d1f: $ff
	rst $38                                          ; $6d20: $ff
	rst $38                                          ; $6d21: $ff
	rst $38                                          ; $6d22: $ff
	rst $38                                          ; $6d23: $ff
	rst $38                                          ; $6d24: $ff
	rst $38                                          ; $6d25: $ff
	rst $38                                          ; $6d26: $ff
	rst $38                                          ; $6d27: $ff
	rst $38                                          ; $6d28: $ff
	rst $38                                          ; $6d29: $ff
	rst $38                                          ; $6d2a: $ff
	rst $38                                          ; $6d2b: $ff
	rst $38                                          ; $6d2c: $ff
	rst $38                                          ; $6d2d: $ff
	rst $38                                          ; $6d2e: $ff
	rst $38                                          ; $6d2f: $ff
	rst $38                                          ; $6d30: $ff
	rst $38                                          ; $6d31: $ff
	rst $38                                          ; $6d32: $ff
	rst $38                                          ; $6d33: $ff
	rst $38                                          ; $6d34: $ff
	rst $38                                          ; $6d35: $ff
	rst $38                                          ; $6d36: $ff
	rst $38                                          ; $6d37: $ff
	rst $38                                          ; $6d38: $ff
	rst $38                                          ; $6d39: $ff
	rst $38                                          ; $6d3a: $ff
	rst $38                                          ; $6d3b: $ff
	rst $38                                          ; $6d3c: $ff
	rst $38                                          ; $6d3d: $ff
	rst $38                                          ; $6d3e: $ff
	rst $38                                          ; $6d3f: $ff
	rst $38                                          ; $6d40: $ff
	rst $38                                          ; $6d41: $ff
	rst $38                                          ; $6d42: $ff
	rst $38                                          ; $6d43: $ff
	rst $38                                          ; $6d44: $ff
	rst $38                                          ; $6d45: $ff
	rst $38                                          ; $6d46: $ff
	rst $38                                          ; $6d47: $ff
	rst $38                                          ; $6d48: $ff
	rst $38                                          ; $6d49: $ff
	rst $38                                          ; $6d4a: $ff
	rst $38                                          ; $6d4b: $ff
	rst $38                                          ; $6d4c: $ff
	rst $38                                          ; $6d4d: $ff
	rst $38                                          ; $6d4e: $ff
	rst $38                                          ; $6d4f: $ff
	rst $38                                          ; $6d50: $ff
	rst $38                                          ; $6d51: $ff
	rst $38                                          ; $6d52: $ff
	rst $38                                          ; $6d53: $ff
	rst $38                                          ; $6d54: $ff
	rst $38                                          ; $6d55: $ff
	rst $38                                          ; $6d56: $ff
	rst $38                                          ; $6d57: $ff
	rst $38                                          ; $6d58: $ff
	rst $38                                          ; $6d59: $ff
	rst $38                                          ; $6d5a: $ff
	rst $38                                          ; $6d5b: $ff
	rst $38                                          ; $6d5c: $ff
	rst $38                                          ; $6d5d: $ff
	rst $38                                          ; $6d5e: $ff
	rst $38                                          ; $6d5f: $ff
	rst $38                                          ; $6d60: $ff
	rst $38                                          ; $6d61: $ff
	rst $38                                          ; $6d62: $ff
	rst $38                                          ; $6d63: $ff
	rst $38                                          ; $6d64: $ff
	rst $38                                          ; $6d65: $ff
	rst $38                                          ; $6d66: $ff
	rst $38                                          ; $6d67: $ff
	rst $38                                          ; $6d68: $ff
	rst $38                                          ; $6d69: $ff
	rst $38                                          ; $6d6a: $ff
	rst $38                                          ; $6d6b: $ff
	rst $38                                          ; $6d6c: $ff
	rst $38                                          ; $6d6d: $ff
	rst $38                                          ; $6d6e: $ff
	rst $38                                          ; $6d6f: $ff
	rst $38                                          ; $6d70: $ff
	rst $38                                          ; $6d71: $ff
	rst $38                                          ; $6d72: $ff
	rst $38                                          ; $6d73: $ff
	rst $38                                          ; $6d74: $ff
	rst $38                                          ; $6d75: $ff
	rst $38                                          ; $6d76: $ff
	rst $38                                          ; $6d77: $ff
	rst $38                                          ; $6d78: $ff
	rst $38                                          ; $6d79: $ff
	rst $38                                          ; $6d7a: $ff
	rst $38                                          ; $6d7b: $ff
	rst $38                                          ; $6d7c: $ff
	rst $38                                          ; $6d7d: $ff
	rst $38                                          ; $6d7e: $ff
	rst $38                                          ; $6d7f: $ff
	rst $38                                          ; $6d80: $ff
	rst $38                                          ; $6d81: $ff
	rst $38                                          ; $6d82: $ff
	rst $38                                          ; $6d83: $ff
	rst $38                                          ; $6d84: $ff
	rst $38                                          ; $6d85: $ff
	rst $38                                          ; $6d86: $ff
	rst $38                                          ; $6d87: $ff
	rst $38                                          ; $6d88: $ff
	rst $38                                          ; $6d89: $ff
	rst $38                                          ; $6d8a: $ff
	rst $38                                          ; $6d8b: $ff
	rst $38                                          ; $6d8c: $ff
	rst $38                                          ; $6d8d: $ff
	rst $38                                          ; $6d8e: $ff
	rst $38                                          ; $6d8f: $ff
	rst $38                                          ; $6d90: $ff
	rst $38                                          ; $6d91: $ff
	rst $38                                          ; $6d92: $ff
	rst $38                                          ; $6d93: $ff
	rst $38                                          ; $6d94: $ff
	rst $38                                          ; $6d95: $ff
	rst $38                                          ; $6d96: $ff
	rst $38                                          ; $6d97: $ff
	rst $38                                          ; $6d98: $ff
	rst $38                                          ; $6d99: $ff
	rst $38                                          ; $6d9a: $ff
	rst $38                                          ; $6d9b: $ff
	rst $38                                          ; $6d9c: $ff
	rst $38                                          ; $6d9d: $ff
	rst $38                                          ; $6d9e: $ff
	rst $38                                          ; $6d9f: $ff
	rst $38                                          ; $6da0: $ff
	rst $38                                          ; $6da1: $ff
	rst $38                                          ; $6da2: $ff
	rst $38                                          ; $6da3: $ff
	rst $38                                          ; $6da4: $ff
	rst $38                                          ; $6da5: $ff
	rst $38                                          ; $6da6: $ff
	rst $38                                          ; $6da7: $ff
	rst $38                                          ; $6da8: $ff
	rst $38                                          ; $6da9: $ff
	rst $38                                          ; $6daa: $ff
	rst $38                                          ; $6dab: $ff
	rst $38                                          ; $6dac: $ff
	rst $38                                          ; $6dad: $ff
	rst $38                                          ; $6dae: $ff
	rst $38                                          ; $6daf: $ff
	rst $38                                          ; $6db0: $ff
	rst $38                                          ; $6db1: $ff
	rst $38                                          ; $6db2: $ff
	rst $38                                          ; $6db3: $ff
	rst $38                                          ; $6db4: $ff
	rst $38                                          ; $6db5: $ff
	rst $38                                          ; $6db6: $ff
	rst $38                                          ; $6db7: $ff
	rst $38                                          ; $6db8: $ff
	rst $38                                          ; $6db9: $ff
	rst $38                                          ; $6dba: $ff
	rst $38                                          ; $6dbb: $ff
	rst $38                                          ; $6dbc: $ff
	rst $38                                          ; $6dbd: $ff
	rst $38                                          ; $6dbe: $ff
	rst $38                                          ; $6dbf: $ff
	rst $38                                          ; $6dc0: $ff
	rst $38                                          ; $6dc1: $ff
	rst $38                                          ; $6dc2: $ff
	rst $38                                          ; $6dc3: $ff
	rst $38                                          ; $6dc4: $ff
	rst $38                                          ; $6dc5: $ff
	rst $38                                          ; $6dc6: $ff
	rst $38                                          ; $6dc7: $ff
	rst $38                                          ; $6dc8: $ff
	rst $38                                          ; $6dc9: $ff
	rst $38                                          ; $6dca: $ff
	rst $38                                          ; $6dcb: $ff
	rst $38                                          ; $6dcc: $ff
	rst $38                                          ; $6dcd: $ff
	rst $38                                          ; $6dce: $ff
	rst $38                                          ; $6dcf: $ff
	rst $38                                          ; $6dd0: $ff
	rst $38                                          ; $6dd1: $ff
	rst $38                                          ; $6dd2: $ff
	rst $38                                          ; $6dd3: $ff
	rst $38                                          ; $6dd4: $ff
	rst $38                                          ; $6dd5: $ff
	rst $38                                          ; $6dd6: $ff
	rst $38                                          ; $6dd7: $ff
	rst $38                                          ; $6dd8: $ff
	rst $38                                          ; $6dd9: $ff
	rst $38                                          ; $6dda: $ff
	rst $38                                          ; $6ddb: $ff
	rst $38                                          ; $6ddc: $ff
	rst $38                                          ; $6ddd: $ff
	rst $38                                          ; $6dde: $ff
	rst $38                                          ; $6ddf: $ff
	rst $38                                          ; $6de0: $ff
	rst $38                                          ; $6de1: $ff
	rst $38                                          ; $6de2: $ff
	rst $38                                          ; $6de3: $ff
	rst $38                                          ; $6de4: $ff
	rst $38                                          ; $6de5: $ff
	rst $38                                          ; $6de6: $ff
	rst $38                                          ; $6de7: $ff
	rst $38                                          ; $6de8: $ff
	rst $38                                          ; $6de9: $ff
	rst $38                                          ; $6dea: $ff
	rst $38                                          ; $6deb: $ff
	rst $38                                          ; $6dec: $ff
	rst $38                                          ; $6ded: $ff
	rst $38                                          ; $6dee: $ff
	rst $38                                          ; $6def: $ff
	rst $38                                          ; $6df0: $ff
	rst $38                                          ; $6df1: $ff
	rst $38                                          ; $6df2: $ff
	rst $38                                          ; $6df3: $ff
	rst $38                                          ; $6df4: $ff
	rst $38                                          ; $6df5: $ff
	rst $38                                          ; $6df6: $ff
	rst $38                                          ; $6df7: $ff
	rst $38                                          ; $6df8: $ff
	rst $38                                          ; $6df9: $ff
	rst $38                                          ; $6dfa: $ff
	rst $38                                          ; $6dfb: $ff
	rst $38                                          ; $6dfc: $ff
	rst $38                                          ; $6dfd: $ff
	rst $38                                          ; $6dfe: $ff
	rst $38                                          ; $6dff: $ff
	rst $38                                          ; $6e00: $ff
	rst $38                                          ; $6e01: $ff
	rst $38                                          ; $6e02: $ff
	rst $38                                          ; $6e03: $ff
	rst $38                                          ; $6e04: $ff
	rst $38                                          ; $6e05: $ff
	rst $38                                          ; $6e06: $ff
	rst $38                                          ; $6e07: $ff
	rst $38                                          ; $6e08: $ff
	rst $38                                          ; $6e09: $ff
	rst $38                                          ; $6e0a: $ff
	rst $38                                          ; $6e0b: $ff
	rst $38                                          ; $6e0c: $ff
	rst $38                                          ; $6e0d: $ff
	rst $38                                          ; $6e0e: $ff
	rst $38                                          ; $6e0f: $ff
	rst $38                                          ; $6e10: $ff
	rst $38                                          ; $6e11: $ff
	rst $38                                          ; $6e12: $ff
	rst $38                                          ; $6e13: $ff
	rst $38                                          ; $6e14: $ff
	rst $38                                          ; $6e15: $ff
	rst $38                                          ; $6e16: $ff
	rst $38                                          ; $6e17: $ff
	rst $38                                          ; $6e18: $ff
	rst $38                                          ; $6e19: $ff
	rst $38                                          ; $6e1a: $ff
	rst $38                                          ; $6e1b: $ff
	rst $38                                          ; $6e1c: $ff
	rst $38                                          ; $6e1d: $ff
	rst $38                                          ; $6e1e: $ff
	rst $38                                          ; $6e1f: $ff
	rst $38                                          ; $6e20: $ff
	rst $38                                          ; $6e21: $ff
	rst $38                                          ; $6e22: $ff
	rst $38                                          ; $6e23: $ff
	rst $38                                          ; $6e24: $ff
	rst $38                                          ; $6e25: $ff
	rst $38                                          ; $6e26: $ff
	rst $38                                          ; $6e27: $ff
	rst $38                                          ; $6e28: $ff
	rst $38                                          ; $6e29: $ff
	rst $38                                          ; $6e2a: $ff
	rst $38                                          ; $6e2b: $ff
	rst $38                                          ; $6e2c: $ff
	rst $38                                          ; $6e2d: $ff
	rst $38                                          ; $6e2e: $ff
	rst $38                                          ; $6e2f: $ff
	rst $38                                          ; $6e30: $ff
	rst $38                                          ; $6e31: $ff
	rst $38                                          ; $6e32: $ff
	rst $38                                          ; $6e33: $ff
	rst $38                                          ; $6e34: $ff
	rst $38                                          ; $6e35: $ff
	rst $38                                          ; $6e36: $ff
	rst $38                                          ; $6e37: $ff
	rst $38                                          ; $6e38: $ff
	rst $38                                          ; $6e39: $ff
	rst $38                                          ; $6e3a: $ff
	rst $38                                          ; $6e3b: $ff
	rst $38                                          ; $6e3c: $ff
	rst $38                                          ; $6e3d: $ff
	rst $38                                          ; $6e3e: $ff
	rst $38                                          ; $6e3f: $ff
	rst $38                                          ; $6e40: $ff
	rst $38                                          ; $6e41: $ff
	rst $38                                          ; $6e42: $ff
	rst $38                                          ; $6e43: $ff
	rst $38                                          ; $6e44: $ff
	rst $38                                          ; $6e45: $ff
	rst $38                                          ; $6e46: $ff
	rst $38                                          ; $6e47: $ff
	rst $38                                          ; $6e48: $ff
	rst $38                                          ; $6e49: $ff
	rst $38                                          ; $6e4a: $ff
	rst $38                                          ; $6e4b: $ff
	rst $38                                          ; $6e4c: $ff
	rst $38                                          ; $6e4d: $ff
	rst $38                                          ; $6e4e: $ff
	rst $38                                          ; $6e4f: $ff
	rst $38                                          ; $6e50: $ff
	rst $38                                          ; $6e51: $ff
	rst $38                                          ; $6e52: $ff
	rst $38                                          ; $6e53: $ff
	rst $38                                          ; $6e54: $ff
	rst $38                                          ; $6e55: $ff
	rst $38                                          ; $6e56: $ff
	rst $38                                          ; $6e57: $ff
	rst $38                                          ; $6e58: $ff
	rst $38                                          ; $6e59: $ff
	rst $38                                          ; $6e5a: $ff
	rst $38                                          ; $6e5b: $ff
	rst $38                                          ; $6e5c: $ff
	rst $38                                          ; $6e5d: $ff
	rst $38                                          ; $6e5e: $ff
	rst $38                                          ; $6e5f: $ff
	rst $38                                          ; $6e60: $ff
	rst $38                                          ; $6e61: $ff
	rst $38                                          ; $6e62: $ff
	rst $38                                          ; $6e63: $ff
	rst $38                                          ; $6e64: $ff
	rst $38                                          ; $6e65: $ff
	rst $38                                          ; $6e66: $ff
	rst $38                                          ; $6e67: $ff
	rst $38                                          ; $6e68: $ff
	rst $38                                          ; $6e69: $ff
	rst $38                                          ; $6e6a: $ff
	rst $38                                          ; $6e6b: $ff
	rst $38                                          ; $6e6c: $ff
	rst $38                                          ; $6e6d: $ff
	rst $38                                          ; $6e6e: $ff
	rst $38                                          ; $6e6f: $ff
	rst $38                                          ; $6e70: $ff
	rst $38                                          ; $6e71: $ff
	rst $38                                          ; $6e72: $ff
	rst $38                                          ; $6e73: $ff
	rst $38                                          ; $6e74: $ff
	rst $38                                          ; $6e75: $ff
	rst $38                                          ; $6e76: $ff
	rst $38                                          ; $6e77: $ff
	rst $38                                          ; $6e78: $ff
	rst $38                                          ; $6e79: $ff
	rst $38                                          ; $6e7a: $ff
	rst $38                                          ; $6e7b: $ff
	rst $38                                          ; $6e7c: $ff
	rst $38                                          ; $6e7d: $ff
	rst $38                                          ; $6e7e: $ff
	rst $38                                          ; $6e7f: $ff
	rst $38                                          ; $6e80: $ff
	rst $38                                          ; $6e81: $ff
	rst $38                                          ; $6e82: $ff
	rst $38                                          ; $6e83: $ff
	rst $38                                          ; $6e84: $ff
	rst $38                                          ; $6e85: $ff
	rst $38                                          ; $6e86: $ff
	rst $38                                          ; $6e87: $ff
	rst $38                                          ; $6e88: $ff
	rst $38                                          ; $6e89: $ff
	rst $38                                          ; $6e8a: $ff
	rst $38                                          ; $6e8b: $ff
	rst $38                                          ; $6e8c: $ff
	rst $38                                          ; $6e8d: $ff
	rst $38                                          ; $6e8e: $ff
	rst $38                                          ; $6e8f: $ff
	rst $38                                          ; $6e90: $ff
	rst $38                                          ; $6e91: $ff
	rst $38                                          ; $6e92: $ff
	rst $38                                          ; $6e93: $ff
	rst $38                                          ; $6e94: $ff
	rst $38                                          ; $6e95: $ff
	rst $38                                          ; $6e96: $ff
	rst $38                                          ; $6e97: $ff
	rst $38                                          ; $6e98: $ff
	rst $38                                          ; $6e99: $ff
	rst $38                                          ; $6e9a: $ff
	rst $38                                          ; $6e9b: $ff
	rst $38                                          ; $6e9c: $ff
	rst $38                                          ; $6e9d: $ff
	rst $38                                          ; $6e9e: $ff
	rst $38                                          ; $6e9f: $ff
	rst $38                                          ; $6ea0: $ff
	rst $38                                          ; $6ea1: $ff
	rst $38                                          ; $6ea2: $ff
	rst $38                                          ; $6ea3: $ff
	rst $38                                          ; $6ea4: $ff
	rst $38                                          ; $6ea5: $ff
	rst $38                                          ; $6ea6: $ff
	rst $38                                          ; $6ea7: $ff
	rst $38                                          ; $6ea8: $ff
	rst $38                                          ; $6ea9: $ff
	rst $38                                          ; $6eaa: $ff
	rst $38                                          ; $6eab: $ff
	rst $38                                          ; $6eac: $ff
	rst $38                                          ; $6ead: $ff
	rst $38                                          ; $6eae: $ff
	rst $38                                          ; $6eaf: $ff
	rst $38                                          ; $6eb0: $ff
	rst $38                                          ; $6eb1: $ff
	rst $38                                          ; $6eb2: $ff
	rst $38                                          ; $6eb3: $ff
	rst $38                                          ; $6eb4: $ff
	rst $38                                          ; $6eb5: $ff
	rst $38                                          ; $6eb6: $ff
	rst $38                                          ; $6eb7: $ff
	rst $38                                          ; $6eb8: $ff
	rst $38                                          ; $6eb9: $ff
	rst $38                                          ; $6eba: $ff
	rst $38                                          ; $6ebb: $ff
	rst $38                                          ; $6ebc: $ff
	rst $38                                          ; $6ebd: $ff
	rst $38                                          ; $6ebe: $ff
	rst $38                                          ; $6ebf: $ff
	rst $38                                          ; $6ec0: $ff
	rst $38                                          ; $6ec1: $ff
	rst $38                                          ; $6ec2: $ff
	rst $38                                          ; $6ec3: $ff
	rst $38                                          ; $6ec4: $ff
	rst $38                                          ; $6ec5: $ff
	rst $38                                          ; $6ec6: $ff
	rst $38                                          ; $6ec7: $ff
	rst $38                                          ; $6ec8: $ff
	rst $38                                          ; $6ec9: $ff
	rst $38                                          ; $6eca: $ff
	rst $38                                          ; $6ecb: $ff
	rst $38                                          ; $6ecc: $ff
	rst $38                                          ; $6ecd: $ff
	rst $38                                          ; $6ece: $ff
	rst $38                                          ; $6ecf: $ff
	rst $38                                          ; $6ed0: $ff
	rst $38                                          ; $6ed1: $ff
	rst $38                                          ; $6ed2: $ff
	rst $38                                          ; $6ed3: $ff
	rst $38                                          ; $6ed4: $ff
	rst $38                                          ; $6ed5: $ff
	rst $38                                          ; $6ed6: $ff
	rst $38                                          ; $6ed7: $ff
	rst $38                                          ; $6ed8: $ff
	rst $38                                          ; $6ed9: $ff
	rst $38                                          ; $6eda: $ff
	rst $38                                          ; $6edb: $ff
	rst $38                                          ; $6edc: $ff
	rst $38                                          ; $6edd: $ff
	rst $38                                          ; $6ede: $ff
	rst $38                                          ; $6edf: $ff
	rst $38                                          ; $6ee0: $ff
	rst $38                                          ; $6ee1: $ff
	rst $38                                          ; $6ee2: $ff
	rst $38                                          ; $6ee3: $ff
	rst $38                                          ; $6ee4: $ff
	rst $38                                          ; $6ee5: $ff
	rst $38                                          ; $6ee6: $ff
	rst $38                                          ; $6ee7: $ff
	rst $38                                          ; $6ee8: $ff
	rst $38                                          ; $6ee9: $ff
	rst $38                                          ; $6eea: $ff
	rst $38                                          ; $6eeb: $ff
	rst $38                                          ; $6eec: $ff
	rst $38                                          ; $6eed: $ff
	rst $38                                          ; $6eee: $ff
	rst $38                                          ; $6eef: $ff
	rst $38                                          ; $6ef0: $ff
	rst $38                                          ; $6ef1: $ff
	rst $38                                          ; $6ef2: $ff
	rst $38                                          ; $6ef3: $ff
	rst $38                                          ; $6ef4: $ff
	rst $38                                          ; $6ef5: $ff
	rst $38                                          ; $6ef6: $ff
	rst $38                                          ; $6ef7: $ff
	rst $38                                          ; $6ef8: $ff
	rst $38                                          ; $6ef9: $ff
	rst $38                                          ; $6efa: $ff
	rst $38                                          ; $6efb: $ff
	rst $38                                          ; $6efc: $ff
	rst $38                                          ; $6efd: $ff
	rst $38                                          ; $6efe: $ff
	rst $38                                          ; $6eff: $ff
	rst $38                                          ; $6f00: $ff
	rst $38                                          ; $6f01: $ff
	rst $38                                          ; $6f02: $ff
	rst $38                                          ; $6f03: $ff
	rst $38                                          ; $6f04: $ff
	rst $38                                          ; $6f05: $ff
	rst $38                                          ; $6f06: $ff
	rst $38                                          ; $6f07: $ff
	rst $38                                          ; $6f08: $ff
	rst $38                                          ; $6f09: $ff
	rst $38                                          ; $6f0a: $ff
	rst $38                                          ; $6f0b: $ff
	rst $38                                          ; $6f0c: $ff
	rst $38                                          ; $6f0d: $ff
	rst $38                                          ; $6f0e: $ff
	rst $38                                          ; $6f0f: $ff
	rst $38                                          ; $6f10: $ff
	rst $38                                          ; $6f11: $ff
	rst $38                                          ; $6f12: $ff
	rst $38                                          ; $6f13: $ff
	rst $38                                          ; $6f14: $ff
	rst $38                                          ; $6f15: $ff
	rst $38                                          ; $6f16: $ff
	rst $38                                          ; $6f17: $ff
	rst $38                                          ; $6f18: $ff
	rst $38                                          ; $6f19: $ff
	rst $38                                          ; $6f1a: $ff
	rst $38                                          ; $6f1b: $ff
	rst $38                                          ; $6f1c: $ff
	rst $38                                          ; $6f1d: $ff
	rst $38                                          ; $6f1e: $ff
	rst $38                                          ; $6f1f: $ff
	rst $38                                          ; $6f20: $ff
	rst $38                                          ; $6f21: $ff
	rst $38                                          ; $6f22: $ff
	rst $38                                          ; $6f23: $ff
	rst $38                                          ; $6f24: $ff
	rst $38                                          ; $6f25: $ff
	rst $38                                          ; $6f26: $ff
	rst $38                                          ; $6f27: $ff
	rst $38                                          ; $6f28: $ff
	rst $38                                          ; $6f29: $ff
	rst $38                                          ; $6f2a: $ff
	rst $38                                          ; $6f2b: $ff
	rst $38                                          ; $6f2c: $ff
	rst $38                                          ; $6f2d: $ff
	rst $38                                          ; $6f2e: $ff
	rst $38                                          ; $6f2f: $ff
	rst $38                                          ; $6f30: $ff
	rst $38                                          ; $6f31: $ff
	rst $38                                          ; $6f32: $ff
	rst $38                                          ; $6f33: $ff
	rst $38                                          ; $6f34: $ff
	rst $38                                          ; $6f35: $ff
	rst $38                                          ; $6f36: $ff
	rst $38                                          ; $6f37: $ff
	rst $38                                          ; $6f38: $ff
	rst $38                                          ; $6f39: $ff
	rst $38                                          ; $6f3a: $ff
	rst $38                                          ; $6f3b: $ff
	rst $38                                          ; $6f3c: $ff
	rst $38                                          ; $6f3d: $ff
	rst $38                                          ; $6f3e: $ff
	rst $38                                          ; $6f3f: $ff
	rst $38                                          ; $6f40: $ff
	rst $38                                          ; $6f41: $ff
	rst $38                                          ; $6f42: $ff
	rst $38                                          ; $6f43: $ff
	rst $38                                          ; $6f44: $ff
	rst $38                                          ; $6f45: $ff
	rst $38                                          ; $6f46: $ff
	rst $38                                          ; $6f47: $ff
	rst $38                                          ; $6f48: $ff
	rst $38                                          ; $6f49: $ff
	rst $38                                          ; $6f4a: $ff
	rst $38                                          ; $6f4b: $ff
	rst $38                                          ; $6f4c: $ff
	rst $38                                          ; $6f4d: $ff
	rst $38                                          ; $6f4e: $ff
	rst $38                                          ; $6f4f: $ff
	rst $38                                          ; $6f50: $ff
	rst $38                                          ; $6f51: $ff
	rst $38                                          ; $6f52: $ff
	rst $38                                          ; $6f53: $ff
	rst $38                                          ; $6f54: $ff
	rst $38                                          ; $6f55: $ff
	rst $38                                          ; $6f56: $ff
	rst $38                                          ; $6f57: $ff
	rst $38                                          ; $6f58: $ff
	rst $38                                          ; $6f59: $ff
	rst $38                                          ; $6f5a: $ff
	rst $38                                          ; $6f5b: $ff
	rst $38                                          ; $6f5c: $ff
	rst $38                                          ; $6f5d: $ff
	rst $38                                          ; $6f5e: $ff
	rst $38                                          ; $6f5f: $ff
	rst $38                                          ; $6f60: $ff
	rst $38                                          ; $6f61: $ff
	rst $38                                          ; $6f62: $ff
	rst $38                                          ; $6f63: $ff
	rst $38                                          ; $6f64: $ff
	rst $38                                          ; $6f65: $ff
	rst $38                                          ; $6f66: $ff
	rst $38                                          ; $6f67: $ff
	rst $38                                          ; $6f68: $ff
	rst $38                                          ; $6f69: $ff
	rst $38                                          ; $6f6a: $ff
	rst $38                                          ; $6f6b: $ff
	rst $38                                          ; $6f6c: $ff
	rst $38                                          ; $6f6d: $ff
	rst $38                                          ; $6f6e: $ff
	rst $38                                          ; $6f6f: $ff
	rst $38                                          ; $6f70: $ff
	rst $38                                          ; $6f71: $ff
	rst $38                                          ; $6f72: $ff
	rst $38                                          ; $6f73: $ff
	rst $38                                          ; $6f74: $ff
	rst $38                                          ; $6f75: $ff
	rst $38                                          ; $6f76: $ff
	rst $38                                          ; $6f77: $ff
	rst $38                                          ; $6f78: $ff
	rst $38                                          ; $6f79: $ff
	rst $38                                          ; $6f7a: $ff
	rst $38                                          ; $6f7b: $ff
	rst $38                                          ; $6f7c: $ff
	rst $38                                          ; $6f7d: $ff
	rst $38                                          ; $6f7e: $ff
	rst $38                                          ; $6f7f: $ff
	rst $38                                          ; $6f80: $ff
	rst $38                                          ; $6f81: $ff
	rst $38                                          ; $6f82: $ff
	rst $38                                          ; $6f83: $ff
	rst $38                                          ; $6f84: $ff
	rst $38                                          ; $6f85: $ff
	rst $38                                          ; $6f86: $ff
	rst $38                                          ; $6f87: $ff
	rst $38                                          ; $6f88: $ff
	rst $38                                          ; $6f89: $ff
	rst $38                                          ; $6f8a: $ff
	rst $38                                          ; $6f8b: $ff
	rst $38                                          ; $6f8c: $ff
	rst $38                                          ; $6f8d: $ff
	rst $38                                          ; $6f8e: $ff
	rst $38                                          ; $6f8f: $ff
	rst $38                                          ; $6f90: $ff
	rst $38                                          ; $6f91: $ff
	rst $38                                          ; $6f92: $ff
	rst $38                                          ; $6f93: $ff
	rst $38                                          ; $6f94: $ff
	rst $38                                          ; $6f95: $ff
	rst $38                                          ; $6f96: $ff
	rst $38                                          ; $6f97: $ff
	rst $38                                          ; $6f98: $ff
	rst $38                                          ; $6f99: $ff
	rst $38                                          ; $6f9a: $ff
	rst $38                                          ; $6f9b: $ff
	rst $38                                          ; $6f9c: $ff
	rst $38                                          ; $6f9d: $ff
	rst $38                                          ; $6f9e: $ff
	rst $38                                          ; $6f9f: $ff
	rst $38                                          ; $6fa0: $ff
	rst $38                                          ; $6fa1: $ff
	rst $38                                          ; $6fa2: $ff
	rst $38                                          ; $6fa3: $ff
	rst $38                                          ; $6fa4: $ff
	rst $38                                          ; $6fa5: $ff
	rst $38                                          ; $6fa6: $ff
	rst $38                                          ; $6fa7: $ff
	rst $38                                          ; $6fa8: $ff
	rst $38                                          ; $6fa9: $ff
	rst $38                                          ; $6faa: $ff
	rst $38                                          ; $6fab: $ff
	rst $38                                          ; $6fac: $ff
	rst $38                                          ; $6fad: $ff
	rst $38                                          ; $6fae: $ff
	rst $38                                          ; $6faf: $ff
	rst $38                                          ; $6fb0: $ff
	rst $38                                          ; $6fb1: $ff
	rst $38                                          ; $6fb2: $ff
	rst $38                                          ; $6fb3: $ff
	rst $38                                          ; $6fb4: $ff
	rst $38                                          ; $6fb5: $ff
	rst $38                                          ; $6fb6: $ff
	rst $38                                          ; $6fb7: $ff
	rst $38                                          ; $6fb8: $ff
	rst $38                                          ; $6fb9: $ff
	rst $38                                          ; $6fba: $ff
	rst $38                                          ; $6fbb: $ff
	rst $38                                          ; $6fbc: $ff
	rst $38                                          ; $6fbd: $ff
	rst $38                                          ; $6fbe: $ff
	rst $38                                          ; $6fbf: $ff
	rst $38                                          ; $6fc0: $ff
	rst $38                                          ; $6fc1: $ff
	rst $38                                          ; $6fc2: $ff
	rst $38                                          ; $6fc3: $ff
	rst $38                                          ; $6fc4: $ff
	rst $38                                          ; $6fc5: $ff
	rst $38                                          ; $6fc6: $ff
	rst $38                                          ; $6fc7: $ff
	rst $38                                          ; $6fc8: $ff
	rst $38                                          ; $6fc9: $ff
	rst $38                                          ; $6fca: $ff
	rst $38                                          ; $6fcb: $ff
	rst $38                                          ; $6fcc: $ff
	rst $38                                          ; $6fcd: $ff
	rst $38                                          ; $6fce: $ff
	rst $38                                          ; $6fcf: $ff
	rst $38                                          ; $6fd0: $ff
	rst $38                                          ; $6fd1: $ff
	rst $38                                          ; $6fd2: $ff
	rst $38                                          ; $6fd3: $ff
	rst $38                                          ; $6fd4: $ff
	rst $38                                          ; $6fd5: $ff
	rst $38                                          ; $6fd6: $ff
	rst $38                                          ; $6fd7: $ff
	rst $38                                          ; $6fd8: $ff
	rst $38                                          ; $6fd9: $ff
	rst $38                                          ; $6fda: $ff
	rst $38                                          ; $6fdb: $ff
	rst $38                                          ; $6fdc: $ff
	rst $38                                          ; $6fdd: $ff
	rst $38                                          ; $6fde: $ff
	rst $38                                          ; $6fdf: $ff
	rst $38                                          ; $6fe0: $ff
	rst $38                                          ; $6fe1: $ff
	rst $38                                          ; $6fe2: $ff
	rst $38                                          ; $6fe3: $ff
	rst $38                                          ; $6fe4: $ff
	rst $38                                          ; $6fe5: $ff
	rst $38                                          ; $6fe6: $ff
	rst $38                                          ; $6fe7: $ff
	rst $38                                          ; $6fe8: $ff
	rst $38                                          ; $6fe9: $ff
	rst $38                                          ; $6fea: $ff
	rst $38                                          ; $6feb: $ff
	rst $38                                          ; $6fec: $ff
	rst $38                                          ; $6fed: $ff
	rst $38                                          ; $6fee: $ff
	rst $38                                          ; $6fef: $ff
	rst $38                                          ; $6ff0: $ff
	rst $38                                          ; $6ff1: $ff
	rst $38                                          ; $6ff2: $ff
	rst $38                                          ; $6ff3: $ff
	rst $38                                          ; $6ff4: $ff
	rst $38                                          ; $6ff5: $ff
	rst $38                                          ; $6ff6: $ff
	rst $38                                          ; $6ff7: $ff
	rst $38                                          ; $6ff8: $ff
	rst $38                                          ; $6ff9: $ff
	rst $38                                          ; $6ffa: $ff
	rst $38                                          ; $6ffb: $ff
	rst $38                                          ; $6ffc: $ff
	rst $38                                          ; $6ffd: $ff
	rst $38                                          ; $6ffe: $ff
	rst $38                                          ; $6fff: $ff
	rst $38                                          ; $7000: $ff
	rst $38                                          ; $7001: $ff
	rst $38                                          ; $7002: $ff
	rst $38                                          ; $7003: $ff
	rst $38                                          ; $7004: $ff
	rst $38                                          ; $7005: $ff
	rst $38                                          ; $7006: $ff
	rst $38                                          ; $7007: $ff
	rst $38                                          ; $7008: $ff
	rst $38                                          ; $7009: $ff
	rst $38                                          ; $700a: $ff
	rst $38                                          ; $700b: $ff
	rst $38                                          ; $700c: $ff
	rst $38                                          ; $700d: $ff
	rst $38                                          ; $700e: $ff
	rst $38                                          ; $700f: $ff
	rst $38                                          ; $7010: $ff
	rst $38                                          ; $7011: $ff
	rst $38                                          ; $7012: $ff
	rst $38                                          ; $7013: $ff
	rst $38                                          ; $7014: $ff
	rst $38                                          ; $7015: $ff
	rst $38                                          ; $7016: $ff
	rst $38                                          ; $7017: $ff
	rst $38                                          ; $7018: $ff
	rst $38                                          ; $7019: $ff
	rst $38                                          ; $701a: $ff
	rst $38                                          ; $701b: $ff
	rst $38                                          ; $701c: $ff
	rst $38                                          ; $701d: $ff
	rst $38                                          ; $701e: $ff
	rst $38                                          ; $701f: $ff
	rst $38                                          ; $7020: $ff
	rst $38                                          ; $7021: $ff
	rst $38                                          ; $7022: $ff
	rst $38                                          ; $7023: $ff
	rst $38                                          ; $7024: $ff
	rst $38                                          ; $7025: $ff
	rst $38                                          ; $7026: $ff
	rst $38                                          ; $7027: $ff
	rst $38                                          ; $7028: $ff
	rst $38                                          ; $7029: $ff
	rst $38                                          ; $702a: $ff
	rst $38                                          ; $702b: $ff
	rst $38                                          ; $702c: $ff
	rst $38                                          ; $702d: $ff
	rst $38                                          ; $702e: $ff
	rst $38                                          ; $702f: $ff
	rst $38                                          ; $7030: $ff
	rst $38                                          ; $7031: $ff
	rst $38                                          ; $7032: $ff
	rst $38                                          ; $7033: $ff
	rst $38                                          ; $7034: $ff
	rst $38                                          ; $7035: $ff
	rst $38                                          ; $7036: $ff
	rst $38                                          ; $7037: $ff
	rst $38                                          ; $7038: $ff
	rst $38                                          ; $7039: $ff
	rst $38                                          ; $703a: $ff
	rst $38                                          ; $703b: $ff
	rst $38                                          ; $703c: $ff
	rst $38                                          ; $703d: $ff
	rst $38                                          ; $703e: $ff
	rst $38                                          ; $703f: $ff
	rst $38                                          ; $7040: $ff
	rst $38                                          ; $7041: $ff
	rst $38                                          ; $7042: $ff
	rst $38                                          ; $7043: $ff
	rst $38                                          ; $7044: $ff
	rst $38                                          ; $7045: $ff
	rst $38                                          ; $7046: $ff
	rst $38                                          ; $7047: $ff
	rst $38                                          ; $7048: $ff
	rst $38                                          ; $7049: $ff
	rst $38                                          ; $704a: $ff
	rst $38                                          ; $704b: $ff
	rst $38                                          ; $704c: $ff
	rst $38                                          ; $704d: $ff
	rst $38                                          ; $704e: $ff
	rst $38                                          ; $704f: $ff
	rst $38                                          ; $7050: $ff
	rst $38                                          ; $7051: $ff
	rst $38                                          ; $7052: $ff
	rst $38                                          ; $7053: $ff
	rst $38                                          ; $7054: $ff
	rst $38                                          ; $7055: $ff
	rst $38                                          ; $7056: $ff
	rst $38                                          ; $7057: $ff
	rst $38                                          ; $7058: $ff
	rst $38                                          ; $7059: $ff
	rst $38                                          ; $705a: $ff
	rst $38                                          ; $705b: $ff
	rst $38                                          ; $705c: $ff
	rst $38                                          ; $705d: $ff
	rst $38                                          ; $705e: $ff
	rst $38                                          ; $705f: $ff
	rst $38                                          ; $7060: $ff
	rst $38                                          ; $7061: $ff
	rst $38                                          ; $7062: $ff
	rst $38                                          ; $7063: $ff
	rst $38                                          ; $7064: $ff
	rst $38                                          ; $7065: $ff
	rst $38                                          ; $7066: $ff
	rst $38                                          ; $7067: $ff
	rst $38                                          ; $7068: $ff
	rst $38                                          ; $7069: $ff
	rst $38                                          ; $706a: $ff
	rst $38                                          ; $706b: $ff
	rst $38                                          ; $706c: $ff
	rst $38                                          ; $706d: $ff
	rst $38                                          ; $706e: $ff
	rst $38                                          ; $706f: $ff
	rst $38                                          ; $7070: $ff
	rst $38                                          ; $7071: $ff
	rst $38                                          ; $7072: $ff
	rst $38                                          ; $7073: $ff
	rst $38                                          ; $7074: $ff
	rst $38                                          ; $7075: $ff
	rst $38                                          ; $7076: $ff
	rst $38                                          ; $7077: $ff
	rst $38                                          ; $7078: $ff
	rst $38                                          ; $7079: $ff
	rst $38                                          ; $707a: $ff
	rst $38                                          ; $707b: $ff
	rst $38                                          ; $707c: $ff
	rst $38                                          ; $707d: $ff
	rst $38                                          ; $707e: $ff
	rst $38                                          ; $707f: $ff
	rst $38                                          ; $7080: $ff
	rst $38                                          ; $7081: $ff
	rst $38                                          ; $7082: $ff
	rst $38                                          ; $7083: $ff
	rst $38                                          ; $7084: $ff
	rst $38                                          ; $7085: $ff
	rst $38                                          ; $7086: $ff
	rst $38                                          ; $7087: $ff
	rst $38                                          ; $7088: $ff
	rst $38                                          ; $7089: $ff
	rst $38                                          ; $708a: $ff
	rst $38                                          ; $708b: $ff
	rst $38                                          ; $708c: $ff
	rst $38                                          ; $708d: $ff
	rst $38                                          ; $708e: $ff
	rst $38                                          ; $708f: $ff
	rst $38                                          ; $7090: $ff
	rst $38                                          ; $7091: $ff
	rst $38                                          ; $7092: $ff
	rst $38                                          ; $7093: $ff
	rst $38                                          ; $7094: $ff
	rst $38                                          ; $7095: $ff
	rst $38                                          ; $7096: $ff
	rst $38                                          ; $7097: $ff
	rst $38                                          ; $7098: $ff
	rst $38                                          ; $7099: $ff
	rst $38                                          ; $709a: $ff
	rst $38                                          ; $709b: $ff
	rst $38                                          ; $709c: $ff
	rst $38                                          ; $709d: $ff
	rst $38                                          ; $709e: $ff
	rst $38                                          ; $709f: $ff
	rst $38                                          ; $70a0: $ff
	rst $38                                          ; $70a1: $ff
	rst $38                                          ; $70a2: $ff
	rst $38                                          ; $70a3: $ff
	rst $38                                          ; $70a4: $ff
	rst $38                                          ; $70a5: $ff
	rst $38                                          ; $70a6: $ff
	rst $38                                          ; $70a7: $ff
	rst $38                                          ; $70a8: $ff
	rst $38                                          ; $70a9: $ff
	rst $38                                          ; $70aa: $ff
	rst $38                                          ; $70ab: $ff
	rst $38                                          ; $70ac: $ff
	rst $38                                          ; $70ad: $ff
	rst $38                                          ; $70ae: $ff
	rst $38                                          ; $70af: $ff
	rst $38                                          ; $70b0: $ff
	rst $38                                          ; $70b1: $ff
	rst $38                                          ; $70b2: $ff
	rst $38                                          ; $70b3: $ff
	rst $38                                          ; $70b4: $ff
	rst $38                                          ; $70b5: $ff
	rst $38                                          ; $70b6: $ff
	rst $38                                          ; $70b7: $ff
	rst $38                                          ; $70b8: $ff
	rst $38                                          ; $70b9: $ff
	rst $38                                          ; $70ba: $ff
	rst $38                                          ; $70bb: $ff
	rst $38                                          ; $70bc: $ff
	rst $38                                          ; $70bd: $ff
	rst $38                                          ; $70be: $ff
	rst $38                                          ; $70bf: $ff
	rst $38                                          ; $70c0: $ff
	rst $38                                          ; $70c1: $ff
	rst $38                                          ; $70c2: $ff
	rst $38                                          ; $70c3: $ff
	rst $38                                          ; $70c4: $ff
	rst $38                                          ; $70c5: $ff
	rst $38                                          ; $70c6: $ff
	rst $38                                          ; $70c7: $ff
	rst $38                                          ; $70c8: $ff
	rst $38                                          ; $70c9: $ff
	rst $38                                          ; $70ca: $ff
	rst $38                                          ; $70cb: $ff
	rst $38                                          ; $70cc: $ff
	rst $38                                          ; $70cd: $ff
	rst $38                                          ; $70ce: $ff
	rst $38                                          ; $70cf: $ff
	rst $38                                          ; $70d0: $ff
	rst $38                                          ; $70d1: $ff
	rst $38                                          ; $70d2: $ff
	rst $38                                          ; $70d3: $ff
	rst $38                                          ; $70d4: $ff
	rst $38                                          ; $70d5: $ff
	rst $38                                          ; $70d6: $ff
	rst $38                                          ; $70d7: $ff
	rst $38                                          ; $70d8: $ff
	rst $38                                          ; $70d9: $ff
	rst $38                                          ; $70da: $ff
	rst $38                                          ; $70db: $ff
	rst $38                                          ; $70dc: $ff
	rst $38                                          ; $70dd: $ff
	rst $38                                          ; $70de: $ff
	rst $38                                          ; $70df: $ff
	rst $38                                          ; $70e0: $ff
	rst $38                                          ; $70e1: $ff
	rst $38                                          ; $70e2: $ff
	rst $38                                          ; $70e3: $ff
	rst $38                                          ; $70e4: $ff
	rst $38                                          ; $70e5: $ff
	rst $38                                          ; $70e6: $ff
	rst $38                                          ; $70e7: $ff
	rst $38                                          ; $70e8: $ff
	rst $38                                          ; $70e9: $ff
	rst $38                                          ; $70ea: $ff
	rst $38                                          ; $70eb: $ff
	rst $38                                          ; $70ec: $ff
	rst $38                                          ; $70ed: $ff
	rst $38                                          ; $70ee: $ff
	rst $38                                          ; $70ef: $ff
	rst $38                                          ; $70f0: $ff
	rst $38                                          ; $70f1: $ff
	rst $38                                          ; $70f2: $ff
	rst $38                                          ; $70f3: $ff
	rst $38                                          ; $70f4: $ff
	rst $38                                          ; $70f5: $ff
	rst $38                                          ; $70f6: $ff
	rst $38                                          ; $70f7: $ff
	rst $38                                          ; $70f8: $ff
	rst $38                                          ; $70f9: $ff
	rst $38                                          ; $70fa: $ff
	rst $38                                          ; $70fb: $ff
	rst $38                                          ; $70fc: $ff
	rst $38                                          ; $70fd: $ff
	rst $38                                          ; $70fe: $ff
	rst $38                                          ; $70ff: $ff
	rst $38                                          ; $7100: $ff
	rst $38                                          ; $7101: $ff
	rst $38                                          ; $7102: $ff
	rst $38                                          ; $7103: $ff
	rst $38                                          ; $7104: $ff
	rst $38                                          ; $7105: $ff
	rst $38                                          ; $7106: $ff
	rst $38                                          ; $7107: $ff
	rst $38                                          ; $7108: $ff
	rst $38                                          ; $7109: $ff
	rst $38                                          ; $710a: $ff
	rst $38                                          ; $710b: $ff
	rst $38                                          ; $710c: $ff
	rst $38                                          ; $710d: $ff
	rst $38                                          ; $710e: $ff
	rst $38                                          ; $710f: $ff
	rst $38                                          ; $7110: $ff
	rst $38                                          ; $7111: $ff
	rst $38                                          ; $7112: $ff
	rst $38                                          ; $7113: $ff
	rst $38                                          ; $7114: $ff
	rst $38                                          ; $7115: $ff
	rst $38                                          ; $7116: $ff
	rst $38                                          ; $7117: $ff
	rst $38                                          ; $7118: $ff
	rst $38                                          ; $7119: $ff
	rst $38                                          ; $711a: $ff
	rst $38                                          ; $711b: $ff
	rst $38                                          ; $711c: $ff
	rst $38                                          ; $711d: $ff
	rst $38                                          ; $711e: $ff
	rst $38                                          ; $711f: $ff
	rst $38                                          ; $7120: $ff
	rst $38                                          ; $7121: $ff
	rst $38                                          ; $7122: $ff
	rst $38                                          ; $7123: $ff
	rst $38                                          ; $7124: $ff
	rst $38                                          ; $7125: $ff
	rst $38                                          ; $7126: $ff
	rst $38                                          ; $7127: $ff
	rst $38                                          ; $7128: $ff
	rst $38                                          ; $7129: $ff
	rst $38                                          ; $712a: $ff
	rst $38                                          ; $712b: $ff
	rst $38                                          ; $712c: $ff
	rst $38                                          ; $712d: $ff
	rst $38                                          ; $712e: $ff
	rst $38                                          ; $712f: $ff
	rst $38                                          ; $7130: $ff
	rst $38                                          ; $7131: $ff
	rst $38                                          ; $7132: $ff
	rst $38                                          ; $7133: $ff
	rst $38                                          ; $7134: $ff
	rst $38                                          ; $7135: $ff
	rst $38                                          ; $7136: $ff
	rst $38                                          ; $7137: $ff
	rst $38                                          ; $7138: $ff
	rst $38                                          ; $7139: $ff
	rst $38                                          ; $713a: $ff
	rst $38                                          ; $713b: $ff
	rst $38                                          ; $713c: $ff
	rst $38                                          ; $713d: $ff
	rst $38                                          ; $713e: $ff
	rst $38                                          ; $713f: $ff
	rst $38                                          ; $7140: $ff
	rst $38                                          ; $7141: $ff
	rst $38                                          ; $7142: $ff
	rst $38                                          ; $7143: $ff
	rst $38                                          ; $7144: $ff
	rst $38                                          ; $7145: $ff
	rst $38                                          ; $7146: $ff
	rst $38                                          ; $7147: $ff
	rst $38                                          ; $7148: $ff
	rst $38                                          ; $7149: $ff
	rst $38                                          ; $714a: $ff
	rst $38                                          ; $714b: $ff
	rst $38                                          ; $714c: $ff
	rst $38                                          ; $714d: $ff
	rst $38                                          ; $714e: $ff
	rst $38                                          ; $714f: $ff
	rst $38                                          ; $7150: $ff
	rst $38                                          ; $7151: $ff
	rst $38                                          ; $7152: $ff
	rst $38                                          ; $7153: $ff
	rst $38                                          ; $7154: $ff
	rst $38                                          ; $7155: $ff
	rst $38                                          ; $7156: $ff
	rst $38                                          ; $7157: $ff
	rst $38                                          ; $7158: $ff
	rst $38                                          ; $7159: $ff
	rst $38                                          ; $715a: $ff
	rst $38                                          ; $715b: $ff
	rst $38                                          ; $715c: $ff
	rst $38                                          ; $715d: $ff
	rst $38                                          ; $715e: $ff
	rst $38                                          ; $715f: $ff
	rst $38                                          ; $7160: $ff
	rst $38                                          ; $7161: $ff
	rst $38                                          ; $7162: $ff
	rst $38                                          ; $7163: $ff
	rst $38                                          ; $7164: $ff
	rst $38                                          ; $7165: $ff
	rst $38                                          ; $7166: $ff
	rst $38                                          ; $7167: $ff
	rst $38                                          ; $7168: $ff
	rst $38                                          ; $7169: $ff
	rst $38                                          ; $716a: $ff
	rst $38                                          ; $716b: $ff
	rst $38                                          ; $716c: $ff
	rst $38                                          ; $716d: $ff
	rst $38                                          ; $716e: $ff
	rst $38                                          ; $716f: $ff
	rst $38                                          ; $7170: $ff
	rst $38                                          ; $7171: $ff
	rst $38                                          ; $7172: $ff
	rst $38                                          ; $7173: $ff
	rst $38                                          ; $7174: $ff
	rst $38                                          ; $7175: $ff
	rst $38                                          ; $7176: $ff
	rst $38                                          ; $7177: $ff
	rst $38                                          ; $7178: $ff
	rst $38                                          ; $7179: $ff
	rst $38                                          ; $717a: $ff
	rst $38                                          ; $717b: $ff
	rst $38                                          ; $717c: $ff
	rst $38                                          ; $717d: $ff
	rst $38                                          ; $717e: $ff
	rst $38                                          ; $717f: $ff
	rst $38                                          ; $7180: $ff
	rst $38                                          ; $7181: $ff
	rst $38                                          ; $7182: $ff
	rst $38                                          ; $7183: $ff
	rst $38                                          ; $7184: $ff
	rst $38                                          ; $7185: $ff
	rst $38                                          ; $7186: $ff
	rst $38                                          ; $7187: $ff
	rst $38                                          ; $7188: $ff
	rst $38                                          ; $7189: $ff
	rst $38                                          ; $718a: $ff
	rst $38                                          ; $718b: $ff
	rst $38                                          ; $718c: $ff
	rst $38                                          ; $718d: $ff
	rst $38                                          ; $718e: $ff
	rst $38                                          ; $718f: $ff
	rst $38                                          ; $7190: $ff
	rst $38                                          ; $7191: $ff
	rst $38                                          ; $7192: $ff
	rst $38                                          ; $7193: $ff
	rst $38                                          ; $7194: $ff
	rst $38                                          ; $7195: $ff
	rst $38                                          ; $7196: $ff
	rst $38                                          ; $7197: $ff
	rst $38                                          ; $7198: $ff
	rst $38                                          ; $7199: $ff
	rst $38                                          ; $719a: $ff
	rst $38                                          ; $719b: $ff
	rst $38                                          ; $719c: $ff
	rst $38                                          ; $719d: $ff
	rst $38                                          ; $719e: $ff
	rst $38                                          ; $719f: $ff
	rst $38                                          ; $71a0: $ff
	rst $38                                          ; $71a1: $ff
	rst $38                                          ; $71a2: $ff
	rst $38                                          ; $71a3: $ff
	rst $38                                          ; $71a4: $ff
	rst $38                                          ; $71a5: $ff
	rst $38                                          ; $71a6: $ff
	rst $38                                          ; $71a7: $ff
	rst $38                                          ; $71a8: $ff
	rst $38                                          ; $71a9: $ff
	rst $38                                          ; $71aa: $ff
	rst $38                                          ; $71ab: $ff
	rst $38                                          ; $71ac: $ff
	rst $38                                          ; $71ad: $ff
	rst $38                                          ; $71ae: $ff
	rst $38                                          ; $71af: $ff
	rst $38                                          ; $71b0: $ff
	rst $38                                          ; $71b1: $ff
	rst $38                                          ; $71b2: $ff
	rst $38                                          ; $71b3: $ff
	rst $38                                          ; $71b4: $ff
	rst $38                                          ; $71b5: $ff
	rst $38                                          ; $71b6: $ff
	rst $38                                          ; $71b7: $ff
	rst $38                                          ; $71b8: $ff
	rst $38                                          ; $71b9: $ff
	rst $38                                          ; $71ba: $ff
	rst $38                                          ; $71bb: $ff
	rst $38                                          ; $71bc: $ff
	rst $38                                          ; $71bd: $ff
	rst $38                                          ; $71be: $ff
	rst $38                                          ; $71bf: $ff
	rst $38                                          ; $71c0: $ff
	rst $38                                          ; $71c1: $ff
	rst $38                                          ; $71c2: $ff
	rst $38                                          ; $71c3: $ff
	rst $38                                          ; $71c4: $ff
	rst $38                                          ; $71c5: $ff
	rst $38                                          ; $71c6: $ff
	rst $38                                          ; $71c7: $ff
	rst $38                                          ; $71c8: $ff
	rst $38                                          ; $71c9: $ff
	rst $38                                          ; $71ca: $ff
	rst $38                                          ; $71cb: $ff
	rst $38                                          ; $71cc: $ff
	rst $38                                          ; $71cd: $ff
	rst $38                                          ; $71ce: $ff
	rst $38                                          ; $71cf: $ff
	rst $38                                          ; $71d0: $ff
	rst $38                                          ; $71d1: $ff
	rst $38                                          ; $71d2: $ff
	rst $38                                          ; $71d3: $ff
	rst $38                                          ; $71d4: $ff
	rst $38                                          ; $71d5: $ff
	rst $38                                          ; $71d6: $ff
	rst $38                                          ; $71d7: $ff
	rst $38                                          ; $71d8: $ff
	rst $38                                          ; $71d9: $ff
	rst $38                                          ; $71da: $ff
	rst $38                                          ; $71db: $ff
	rst $38                                          ; $71dc: $ff
	rst $38                                          ; $71dd: $ff
	rst $38                                          ; $71de: $ff
	rst $38                                          ; $71df: $ff
	rst $38                                          ; $71e0: $ff
	rst $38                                          ; $71e1: $ff
	rst $38                                          ; $71e2: $ff
	rst $38                                          ; $71e3: $ff
	rst $38                                          ; $71e4: $ff
	rst $38                                          ; $71e5: $ff
	rst $38                                          ; $71e6: $ff
	rst $38                                          ; $71e7: $ff
	rst $38                                          ; $71e8: $ff
	rst $38                                          ; $71e9: $ff
	rst $38                                          ; $71ea: $ff
	rst $38                                          ; $71eb: $ff
	rst $38                                          ; $71ec: $ff
	rst $38                                          ; $71ed: $ff
	rst $38                                          ; $71ee: $ff
	rst $38                                          ; $71ef: $ff
	rst $38                                          ; $71f0: $ff
	rst $38                                          ; $71f1: $ff
	rst $38                                          ; $71f2: $ff
	rst $38                                          ; $71f3: $ff
	rst $38                                          ; $71f4: $ff
	rst $38                                          ; $71f5: $ff
	rst $38                                          ; $71f6: $ff
	rst $38                                          ; $71f7: $ff
	rst $38                                          ; $71f8: $ff
	rst $38                                          ; $71f9: $ff
	rst $38                                          ; $71fa: $ff
	rst $38                                          ; $71fb: $ff
	rst $38                                          ; $71fc: $ff
	rst $38                                          ; $71fd: $ff
	rst $38                                          ; $71fe: $ff
	rst $38                                          ; $71ff: $ff
	rst $38                                          ; $7200: $ff
	rst $38                                          ; $7201: $ff
	rst $38                                          ; $7202: $ff
	rst $38                                          ; $7203: $ff
	rst $38                                          ; $7204: $ff
	rst $38                                          ; $7205: $ff
	rst $38                                          ; $7206: $ff
	rst $38                                          ; $7207: $ff
	rst $38                                          ; $7208: $ff
	rst $38                                          ; $7209: $ff
	rst $38                                          ; $720a: $ff
	rst $38                                          ; $720b: $ff
	rst $38                                          ; $720c: $ff
	rst $38                                          ; $720d: $ff
	rst $38                                          ; $720e: $ff
	rst $38                                          ; $720f: $ff
	rst $38                                          ; $7210: $ff
	rst $38                                          ; $7211: $ff
	rst $38                                          ; $7212: $ff
	rst $38                                          ; $7213: $ff
	rst $38                                          ; $7214: $ff
	rst $38                                          ; $7215: $ff
	rst $38                                          ; $7216: $ff
	rst $38                                          ; $7217: $ff
	rst $38                                          ; $7218: $ff
	rst $38                                          ; $7219: $ff
	rst $38                                          ; $721a: $ff
	rst $38                                          ; $721b: $ff
	rst $38                                          ; $721c: $ff
	rst $38                                          ; $721d: $ff
	rst $38                                          ; $721e: $ff
	rst $38                                          ; $721f: $ff
	rst $38                                          ; $7220: $ff
	rst $38                                          ; $7221: $ff
	rst $38                                          ; $7222: $ff
	rst $38                                          ; $7223: $ff
	rst $38                                          ; $7224: $ff
	rst $38                                          ; $7225: $ff
	rst $38                                          ; $7226: $ff
	rst $38                                          ; $7227: $ff
	rst $38                                          ; $7228: $ff
	rst $38                                          ; $7229: $ff
	rst $38                                          ; $722a: $ff
	rst $38                                          ; $722b: $ff
	rst $38                                          ; $722c: $ff
	rst $38                                          ; $722d: $ff
	rst $38                                          ; $722e: $ff
	rst $38                                          ; $722f: $ff
	rst $38                                          ; $7230: $ff
	rst $38                                          ; $7231: $ff
	rst $38                                          ; $7232: $ff
	rst $38                                          ; $7233: $ff
	rst $38                                          ; $7234: $ff
	rst $38                                          ; $7235: $ff
	rst $38                                          ; $7236: $ff
	rst $38                                          ; $7237: $ff
	rst $38                                          ; $7238: $ff
	rst $38                                          ; $7239: $ff
	rst $38                                          ; $723a: $ff
	rst $38                                          ; $723b: $ff
	rst $38                                          ; $723c: $ff
	rst $38                                          ; $723d: $ff
	rst $38                                          ; $723e: $ff
	rst $38                                          ; $723f: $ff
	rst $38                                          ; $7240: $ff
	rst $38                                          ; $7241: $ff
	rst $38                                          ; $7242: $ff
	rst $38                                          ; $7243: $ff
	rst $38                                          ; $7244: $ff
	rst $38                                          ; $7245: $ff
	rst $38                                          ; $7246: $ff
	rst $38                                          ; $7247: $ff
	rst $38                                          ; $7248: $ff
	rst $38                                          ; $7249: $ff
	rst $38                                          ; $724a: $ff
	rst $38                                          ; $724b: $ff
	rst $38                                          ; $724c: $ff
	rst $38                                          ; $724d: $ff
	rst $38                                          ; $724e: $ff
	rst $38                                          ; $724f: $ff
	rst $38                                          ; $7250: $ff
	rst $38                                          ; $7251: $ff
	rst $38                                          ; $7252: $ff
	rst $38                                          ; $7253: $ff
	rst $38                                          ; $7254: $ff
	rst $38                                          ; $7255: $ff
	rst $38                                          ; $7256: $ff
	rst $38                                          ; $7257: $ff
	rst $38                                          ; $7258: $ff
	rst $38                                          ; $7259: $ff
	rst $38                                          ; $725a: $ff
	rst $38                                          ; $725b: $ff
	rst $38                                          ; $725c: $ff
	rst $38                                          ; $725d: $ff
	rst $38                                          ; $725e: $ff
	rst $38                                          ; $725f: $ff
	rst $38                                          ; $7260: $ff
	rst $38                                          ; $7261: $ff
	rst $38                                          ; $7262: $ff
	rst $38                                          ; $7263: $ff
	rst $38                                          ; $7264: $ff
	rst $38                                          ; $7265: $ff
	rst $38                                          ; $7266: $ff
	rst $38                                          ; $7267: $ff
	rst $38                                          ; $7268: $ff
	rst $38                                          ; $7269: $ff
	rst $38                                          ; $726a: $ff
	rst $38                                          ; $726b: $ff
	rst $38                                          ; $726c: $ff
	rst $38                                          ; $726d: $ff
	rst $38                                          ; $726e: $ff
	rst $38                                          ; $726f: $ff
	rst $38                                          ; $7270: $ff
	rst $38                                          ; $7271: $ff
	rst $38                                          ; $7272: $ff
	rst $38                                          ; $7273: $ff
	rst $38                                          ; $7274: $ff
	rst $38                                          ; $7275: $ff
	rst $38                                          ; $7276: $ff
	rst $38                                          ; $7277: $ff
	rst $38                                          ; $7278: $ff
	rst $38                                          ; $7279: $ff
	rst $38                                          ; $727a: $ff
	rst $38                                          ; $727b: $ff
	rst $38                                          ; $727c: $ff
	rst $38                                          ; $727d: $ff
	rst $38                                          ; $727e: $ff
	rst $38                                          ; $727f: $ff
	rst $38                                          ; $7280: $ff
	rst $38                                          ; $7281: $ff
	rst $38                                          ; $7282: $ff
	rst $38                                          ; $7283: $ff
	rst $38                                          ; $7284: $ff
	rst $38                                          ; $7285: $ff
	rst $38                                          ; $7286: $ff
	rst $38                                          ; $7287: $ff
	rst $38                                          ; $7288: $ff
	rst $38                                          ; $7289: $ff
	rst $38                                          ; $728a: $ff
	rst $38                                          ; $728b: $ff
	rst $38                                          ; $728c: $ff
	rst $38                                          ; $728d: $ff
	rst $38                                          ; $728e: $ff
	rst $38                                          ; $728f: $ff
	rst $38                                          ; $7290: $ff
	rst $38                                          ; $7291: $ff
	rst $38                                          ; $7292: $ff
	rst $38                                          ; $7293: $ff
	rst $38                                          ; $7294: $ff
	rst $38                                          ; $7295: $ff
	rst $38                                          ; $7296: $ff
	rst $38                                          ; $7297: $ff
	rst $38                                          ; $7298: $ff
	rst $38                                          ; $7299: $ff
	rst $38                                          ; $729a: $ff
	rst $38                                          ; $729b: $ff
	rst $38                                          ; $729c: $ff
	rst $38                                          ; $729d: $ff
	rst $38                                          ; $729e: $ff
	rst $38                                          ; $729f: $ff
	rst $38                                          ; $72a0: $ff
	rst $38                                          ; $72a1: $ff
	rst $38                                          ; $72a2: $ff
	rst $38                                          ; $72a3: $ff
	rst $38                                          ; $72a4: $ff
	rst $38                                          ; $72a5: $ff
	rst $38                                          ; $72a6: $ff
	rst $38                                          ; $72a7: $ff
	rst $38                                          ; $72a8: $ff
	rst $38                                          ; $72a9: $ff
	rst $38                                          ; $72aa: $ff
	rst $38                                          ; $72ab: $ff
	rst $38                                          ; $72ac: $ff
	rst $38                                          ; $72ad: $ff
	rst $38                                          ; $72ae: $ff
	rst $38                                          ; $72af: $ff
	rst $38                                          ; $72b0: $ff
	rst $38                                          ; $72b1: $ff
	rst $38                                          ; $72b2: $ff
	rst $38                                          ; $72b3: $ff
	rst $38                                          ; $72b4: $ff
	rst $38                                          ; $72b5: $ff
	rst $38                                          ; $72b6: $ff
	rst $38                                          ; $72b7: $ff
	rst $38                                          ; $72b8: $ff
	rst $38                                          ; $72b9: $ff
	rst $38                                          ; $72ba: $ff
	rst $38                                          ; $72bb: $ff
	rst $38                                          ; $72bc: $ff
	rst $38                                          ; $72bd: $ff
	rst $38                                          ; $72be: $ff
	rst $38                                          ; $72bf: $ff
	rst $38                                          ; $72c0: $ff
	rst $38                                          ; $72c1: $ff
	rst $38                                          ; $72c2: $ff
	rst $38                                          ; $72c3: $ff
	rst $38                                          ; $72c4: $ff
	rst $38                                          ; $72c5: $ff
	rst $38                                          ; $72c6: $ff
	rst $38                                          ; $72c7: $ff
	rst $38                                          ; $72c8: $ff
	rst $38                                          ; $72c9: $ff
	rst $38                                          ; $72ca: $ff
	rst $38                                          ; $72cb: $ff
	rst $38                                          ; $72cc: $ff
	rst $38                                          ; $72cd: $ff
	rst $38                                          ; $72ce: $ff
	rst $38                                          ; $72cf: $ff
	rst $38                                          ; $72d0: $ff
	rst $38                                          ; $72d1: $ff
	rst $38                                          ; $72d2: $ff
	rst $38                                          ; $72d3: $ff
	rst $38                                          ; $72d4: $ff
	rst $38                                          ; $72d5: $ff
	rst $38                                          ; $72d6: $ff
	rst $38                                          ; $72d7: $ff
	rst $38                                          ; $72d8: $ff
	rst $38                                          ; $72d9: $ff
	rst $38                                          ; $72da: $ff
	rst $38                                          ; $72db: $ff
	rst $38                                          ; $72dc: $ff
	rst $38                                          ; $72dd: $ff
	rst $38                                          ; $72de: $ff
	rst $38                                          ; $72df: $ff
	rst $38                                          ; $72e0: $ff
	rst $38                                          ; $72e1: $ff
	rst $38                                          ; $72e2: $ff
	rst $38                                          ; $72e3: $ff
	rst $38                                          ; $72e4: $ff
	rst $38                                          ; $72e5: $ff
	rst $38                                          ; $72e6: $ff
	rst $38                                          ; $72e7: $ff
	rst $38                                          ; $72e8: $ff
	rst $38                                          ; $72e9: $ff
	rst $38                                          ; $72ea: $ff
	rst $38                                          ; $72eb: $ff
	rst $38                                          ; $72ec: $ff
	rst $38                                          ; $72ed: $ff
	rst $38                                          ; $72ee: $ff
	rst $38                                          ; $72ef: $ff
	rst $38                                          ; $72f0: $ff
	rst $38                                          ; $72f1: $ff
	rst $38                                          ; $72f2: $ff
	rst $38                                          ; $72f3: $ff
	rst $38                                          ; $72f4: $ff
	rst $38                                          ; $72f5: $ff
	rst $38                                          ; $72f6: $ff
	rst $38                                          ; $72f7: $ff
	rst $38                                          ; $72f8: $ff
	rst $38                                          ; $72f9: $ff
	rst $38                                          ; $72fa: $ff
	rst $38                                          ; $72fb: $ff
	rst $38                                          ; $72fc: $ff
	rst $38                                          ; $72fd: $ff
	rst $38                                          ; $72fe: $ff
	rst $38                                          ; $72ff: $ff
	rst $38                                          ; $7300: $ff
	rst $38                                          ; $7301: $ff
	rst $38                                          ; $7302: $ff
	rst $38                                          ; $7303: $ff
	rst $38                                          ; $7304: $ff
	rst $38                                          ; $7305: $ff
	rst $38                                          ; $7306: $ff
	rst $38                                          ; $7307: $ff
	rst $38                                          ; $7308: $ff
	rst $38                                          ; $7309: $ff
	rst $38                                          ; $730a: $ff
	rst $38                                          ; $730b: $ff
	rst $38                                          ; $730c: $ff
	rst $38                                          ; $730d: $ff
	rst $38                                          ; $730e: $ff
	rst $38                                          ; $730f: $ff
	rst $38                                          ; $7310: $ff
	rst $38                                          ; $7311: $ff
	rst $38                                          ; $7312: $ff
	rst $38                                          ; $7313: $ff
	rst $38                                          ; $7314: $ff
	rst $38                                          ; $7315: $ff
	rst $38                                          ; $7316: $ff
	rst $38                                          ; $7317: $ff
	rst $38                                          ; $7318: $ff
	rst $38                                          ; $7319: $ff
	rst $38                                          ; $731a: $ff
	rst $38                                          ; $731b: $ff
	rst $38                                          ; $731c: $ff
	rst $38                                          ; $731d: $ff
	rst $38                                          ; $731e: $ff
	rst $38                                          ; $731f: $ff
	rst $38                                          ; $7320: $ff
	rst $38                                          ; $7321: $ff
	rst $38                                          ; $7322: $ff
	rst $38                                          ; $7323: $ff
	rst $38                                          ; $7324: $ff
	rst $38                                          ; $7325: $ff
	rst $38                                          ; $7326: $ff
	rst $38                                          ; $7327: $ff
	rst $38                                          ; $7328: $ff
	rst $38                                          ; $7329: $ff
	rst $38                                          ; $732a: $ff
	rst $38                                          ; $732b: $ff
	rst $38                                          ; $732c: $ff
	rst $38                                          ; $732d: $ff
	rst $38                                          ; $732e: $ff
	rst $38                                          ; $732f: $ff
	rst $38                                          ; $7330: $ff
	rst $38                                          ; $7331: $ff
	rst $38                                          ; $7332: $ff
	rst $38                                          ; $7333: $ff
	rst $38                                          ; $7334: $ff
	rst $38                                          ; $7335: $ff
	rst $38                                          ; $7336: $ff
	rst $38                                          ; $7337: $ff
	rst $38                                          ; $7338: $ff
	rst $38                                          ; $7339: $ff
	rst $38                                          ; $733a: $ff
	rst $38                                          ; $733b: $ff
	rst $38                                          ; $733c: $ff
	rst $38                                          ; $733d: $ff
	rst $38                                          ; $733e: $ff
	rst $38                                          ; $733f: $ff
	rst $38                                          ; $7340: $ff
	rst $38                                          ; $7341: $ff
	rst $38                                          ; $7342: $ff
	rst $38                                          ; $7343: $ff
	rst $38                                          ; $7344: $ff
	rst $38                                          ; $7345: $ff
	rst $38                                          ; $7346: $ff
	rst $38                                          ; $7347: $ff
	rst $38                                          ; $7348: $ff
	rst $38                                          ; $7349: $ff
	rst $38                                          ; $734a: $ff
	rst $38                                          ; $734b: $ff
	rst $38                                          ; $734c: $ff
	rst $38                                          ; $734d: $ff
	rst $38                                          ; $734e: $ff
	rst $38                                          ; $734f: $ff
	rst $38                                          ; $7350: $ff
	rst $38                                          ; $7351: $ff
	rst $38                                          ; $7352: $ff
	rst $38                                          ; $7353: $ff
	rst $38                                          ; $7354: $ff
	rst $38                                          ; $7355: $ff
	rst $38                                          ; $7356: $ff
	rst $38                                          ; $7357: $ff
	rst $38                                          ; $7358: $ff
	rst $38                                          ; $7359: $ff
	rst $38                                          ; $735a: $ff
	rst $38                                          ; $735b: $ff
	rst $38                                          ; $735c: $ff
	rst $38                                          ; $735d: $ff
	rst $38                                          ; $735e: $ff
	rst $38                                          ; $735f: $ff
	rst $38                                          ; $7360: $ff
	rst $38                                          ; $7361: $ff
	rst $38                                          ; $7362: $ff
	rst $38                                          ; $7363: $ff
	rst $38                                          ; $7364: $ff
	rst $38                                          ; $7365: $ff
	rst $38                                          ; $7366: $ff
	rst $38                                          ; $7367: $ff
	rst $38                                          ; $7368: $ff
	rst $38                                          ; $7369: $ff
	rst $38                                          ; $736a: $ff
	rst $38                                          ; $736b: $ff
	rst $38                                          ; $736c: $ff
	rst $38                                          ; $736d: $ff
	rst $38                                          ; $736e: $ff
	rst $38                                          ; $736f: $ff
	rst $38                                          ; $7370: $ff
	rst $38                                          ; $7371: $ff
	rst $38                                          ; $7372: $ff
	rst $38                                          ; $7373: $ff
	rst $38                                          ; $7374: $ff
	rst $38                                          ; $7375: $ff
	rst $38                                          ; $7376: $ff
	rst $38                                          ; $7377: $ff
	rst $38                                          ; $7378: $ff
	rst $38                                          ; $7379: $ff
	rst $38                                          ; $737a: $ff
	rst $38                                          ; $737b: $ff
	rst $38                                          ; $737c: $ff
	rst $38                                          ; $737d: $ff
	rst $38                                          ; $737e: $ff
	rst $38                                          ; $737f: $ff
	rst $38                                          ; $7380: $ff
	rst $38                                          ; $7381: $ff
	rst $38                                          ; $7382: $ff
	rst $38                                          ; $7383: $ff
	rst $38                                          ; $7384: $ff
	rst $38                                          ; $7385: $ff
	rst $38                                          ; $7386: $ff
	rst $38                                          ; $7387: $ff
	rst $38                                          ; $7388: $ff
	rst $38                                          ; $7389: $ff
	rst $38                                          ; $738a: $ff
	rst $38                                          ; $738b: $ff
	rst $38                                          ; $738c: $ff
	rst $38                                          ; $738d: $ff
	rst $38                                          ; $738e: $ff
	rst $38                                          ; $738f: $ff
	rst $38                                          ; $7390: $ff
	rst $38                                          ; $7391: $ff
	rst $38                                          ; $7392: $ff
	rst $38                                          ; $7393: $ff
	rst $38                                          ; $7394: $ff
	rst $38                                          ; $7395: $ff
	rst $38                                          ; $7396: $ff
	rst $38                                          ; $7397: $ff
	rst $38                                          ; $7398: $ff
	rst $38                                          ; $7399: $ff
	rst $38                                          ; $739a: $ff
	rst $38                                          ; $739b: $ff
	rst $38                                          ; $739c: $ff
	rst $38                                          ; $739d: $ff
	rst $38                                          ; $739e: $ff
	rst $38                                          ; $739f: $ff
	rst $38                                          ; $73a0: $ff
	rst $38                                          ; $73a1: $ff
	rst $38                                          ; $73a2: $ff
	rst $38                                          ; $73a3: $ff
	rst $38                                          ; $73a4: $ff
	rst $38                                          ; $73a5: $ff
	rst $38                                          ; $73a6: $ff
	rst $38                                          ; $73a7: $ff
	rst $38                                          ; $73a8: $ff
	rst $38                                          ; $73a9: $ff
	rst $38                                          ; $73aa: $ff
	rst $38                                          ; $73ab: $ff
	rst $38                                          ; $73ac: $ff
	rst $38                                          ; $73ad: $ff
	rst $38                                          ; $73ae: $ff
	rst $38                                          ; $73af: $ff
	rst $38                                          ; $73b0: $ff
	rst $38                                          ; $73b1: $ff
	rst $38                                          ; $73b2: $ff
	rst $38                                          ; $73b3: $ff
	rst $38                                          ; $73b4: $ff
	rst $38                                          ; $73b5: $ff
	rst $38                                          ; $73b6: $ff
	rst $38                                          ; $73b7: $ff
	rst $38                                          ; $73b8: $ff
	rst $38                                          ; $73b9: $ff
	rst $38                                          ; $73ba: $ff
	rst $38                                          ; $73bb: $ff
	rst $38                                          ; $73bc: $ff
	rst $38                                          ; $73bd: $ff
	rst $38                                          ; $73be: $ff
	rst $38                                          ; $73bf: $ff
	rst $38                                          ; $73c0: $ff
	rst $38                                          ; $73c1: $ff
	rst $38                                          ; $73c2: $ff
	rst $38                                          ; $73c3: $ff
	rst $38                                          ; $73c4: $ff
	rst $38                                          ; $73c5: $ff
	rst $38                                          ; $73c6: $ff
	rst $38                                          ; $73c7: $ff
	rst $38                                          ; $73c8: $ff
	rst $38                                          ; $73c9: $ff
	rst $38                                          ; $73ca: $ff
	rst $38                                          ; $73cb: $ff
	rst $38                                          ; $73cc: $ff
	rst $38                                          ; $73cd: $ff
	rst $38                                          ; $73ce: $ff
	rst $38                                          ; $73cf: $ff
	rst $38                                          ; $73d0: $ff
	rst $38                                          ; $73d1: $ff
	rst $38                                          ; $73d2: $ff
	rst $38                                          ; $73d3: $ff
	rst $38                                          ; $73d4: $ff
	rst $38                                          ; $73d5: $ff
	rst $38                                          ; $73d6: $ff
	rst $38                                          ; $73d7: $ff
	rst $38                                          ; $73d8: $ff
	rst $38                                          ; $73d9: $ff
	rst $38                                          ; $73da: $ff
	rst $38                                          ; $73db: $ff
	rst $38                                          ; $73dc: $ff
	rst $38                                          ; $73dd: $ff
	rst $38                                          ; $73de: $ff
	rst $38                                          ; $73df: $ff
	rst $38                                          ; $73e0: $ff
	rst $38                                          ; $73e1: $ff
	rst $38                                          ; $73e2: $ff
	rst $38                                          ; $73e3: $ff
	rst $38                                          ; $73e4: $ff
	rst $38                                          ; $73e5: $ff
	rst $38                                          ; $73e6: $ff
	rst $38                                          ; $73e7: $ff
	rst $38                                          ; $73e8: $ff
	rst $38                                          ; $73e9: $ff
	rst $38                                          ; $73ea: $ff
	rst $38                                          ; $73eb: $ff
	rst $38                                          ; $73ec: $ff
	rst $38                                          ; $73ed: $ff
	rst $38                                          ; $73ee: $ff
	rst $38                                          ; $73ef: $ff
	rst $38                                          ; $73f0: $ff
	rst $38                                          ; $73f1: $ff
	rst $38                                          ; $73f2: $ff
	rst $38                                          ; $73f3: $ff
	rst $38                                          ; $73f4: $ff
	rst $38                                          ; $73f5: $ff
	rst $38                                          ; $73f6: $ff
	rst $38                                          ; $73f7: $ff
	rst $38                                          ; $73f8: $ff
	rst $38                                          ; $73f9: $ff
	rst $38                                          ; $73fa: $ff
	rst $38                                          ; $73fb: $ff
	rst $38                                          ; $73fc: $ff
	rst $38                                          ; $73fd: $ff
	rst $38                                          ; $73fe: $ff
	rst $38                                          ; $73ff: $ff
	rst $38                                          ; $7400: $ff
	rst $38                                          ; $7401: $ff
	rst $38                                          ; $7402: $ff
	rst $38                                          ; $7403: $ff
	rst $38                                          ; $7404: $ff
	rst $38                                          ; $7405: $ff
	rst $38                                          ; $7406: $ff
	rst $38                                          ; $7407: $ff
	rst $38                                          ; $7408: $ff
	rst $38                                          ; $7409: $ff
	rst $38                                          ; $740a: $ff
	rst $38                                          ; $740b: $ff
	rst $38                                          ; $740c: $ff
	rst $38                                          ; $740d: $ff
	rst $38                                          ; $740e: $ff
	rst $38                                          ; $740f: $ff
	rst $38                                          ; $7410: $ff
	rst $38                                          ; $7411: $ff
	rst $38                                          ; $7412: $ff
	rst $38                                          ; $7413: $ff
	rst $38                                          ; $7414: $ff
	rst $38                                          ; $7415: $ff
	rst $38                                          ; $7416: $ff
	rst $38                                          ; $7417: $ff
	rst $38                                          ; $7418: $ff
	rst $38                                          ; $7419: $ff
	rst $38                                          ; $741a: $ff
	rst $38                                          ; $741b: $ff
	rst $38                                          ; $741c: $ff
	rst $38                                          ; $741d: $ff
	rst $38                                          ; $741e: $ff
	rst $38                                          ; $741f: $ff
	rst $38                                          ; $7420: $ff
	rst $38                                          ; $7421: $ff
	rst $38                                          ; $7422: $ff
	rst $38                                          ; $7423: $ff
	rst $38                                          ; $7424: $ff
	rst $38                                          ; $7425: $ff
	rst $38                                          ; $7426: $ff
	rst $38                                          ; $7427: $ff
	rst $38                                          ; $7428: $ff
	rst $38                                          ; $7429: $ff
	rst $38                                          ; $742a: $ff
	rst $38                                          ; $742b: $ff
	rst $38                                          ; $742c: $ff
	rst $38                                          ; $742d: $ff
	rst $38                                          ; $742e: $ff
	rst $38                                          ; $742f: $ff
	rst $38                                          ; $7430: $ff
	rst $38                                          ; $7431: $ff
	rst $38                                          ; $7432: $ff
	rst $38                                          ; $7433: $ff
	rst $38                                          ; $7434: $ff
	rst $38                                          ; $7435: $ff
	rst $38                                          ; $7436: $ff
	rst $38                                          ; $7437: $ff
	rst $38                                          ; $7438: $ff
	rst $38                                          ; $7439: $ff
	rst $38                                          ; $743a: $ff
	rst $38                                          ; $743b: $ff
	rst $38                                          ; $743c: $ff
	rst $38                                          ; $743d: $ff
	rst $38                                          ; $743e: $ff
	rst $38                                          ; $743f: $ff
	rst $38                                          ; $7440: $ff
	rst $38                                          ; $7441: $ff
	rst $38                                          ; $7442: $ff
	rst $38                                          ; $7443: $ff
	rst $38                                          ; $7444: $ff
	rst $38                                          ; $7445: $ff
	rst $38                                          ; $7446: $ff
	rst $38                                          ; $7447: $ff
	rst $38                                          ; $7448: $ff
	rst $38                                          ; $7449: $ff
	rst $38                                          ; $744a: $ff
	rst $38                                          ; $744b: $ff
	rst $38                                          ; $744c: $ff
	rst $38                                          ; $744d: $ff
	rst $38                                          ; $744e: $ff
	rst $38                                          ; $744f: $ff
	rst $38                                          ; $7450: $ff
	rst $38                                          ; $7451: $ff
	rst $38                                          ; $7452: $ff
	rst $38                                          ; $7453: $ff
	rst $38                                          ; $7454: $ff
	rst $38                                          ; $7455: $ff
	rst $38                                          ; $7456: $ff
	rst $38                                          ; $7457: $ff
	rst $38                                          ; $7458: $ff
	rst $38                                          ; $7459: $ff
	rst $38                                          ; $745a: $ff
	rst $38                                          ; $745b: $ff
	rst $38                                          ; $745c: $ff
	rst $38                                          ; $745d: $ff
	rst $38                                          ; $745e: $ff
	rst $38                                          ; $745f: $ff
	rst $38                                          ; $7460: $ff
	rst $38                                          ; $7461: $ff
	rst $38                                          ; $7462: $ff
	rst $38                                          ; $7463: $ff
	rst $38                                          ; $7464: $ff
	rst $38                                          ; $7465: $ff
	rst $38                                          ; $7466: $ff
	rst $38                                          ; $7467: $ff
	rst $38                                          ; $7468: $ff
	rst $38                                          ; $7469: $ff
	rst $38                                          ; $746a: $ff
	rst $38                                          ; $746b: $ff
	rst $38                                          ; $746c: $ff
	rst $38                                          ; $746d: $ff
	rst $38                                          ; $746e: $ff
	rst $38                                          ; $746f: $ff
	rst $38                                          ; $7470: $ff
	rst $38                                          ; $7471: $ff
	rst $38                                          ; $7472: $ff
	rst $38                                          ; $7473: $ff
	rst $38                                          ; $7474: $ff
	rst $38                                          ; $7475: $ff
	rst $38                                          ; $7476: $ff
	rst $38                                          ; $7477: $ff
	rst $38                                          ; $7478: $ff
	rst $38                                          ; $7479: $ff
	rst $38                                          ; $747a: $ff
	rst $38                                          ; $747b: $ff
	rst $38                                          ; $747c: $ff
	rst $38                                          ; $747d: $ff
	rst $38                                          ; $747e: $ff
	rst $38                                          ; $747f: $ff
	rst $38                                          ; $7480: $ff
	rst $38                                          ; $7481: $ff
	rst $38                                          ; $7482: $ff
	rst $38                                          ; $7483: $ff
	rst $38                                          ; $7484: $ff
	rst $38                                          ; $7485: $ff
	rst $38                                          ; $7486: $ff
	rst $38                                          ; $7487: $ff
	rst $38                                          ; $7488: $ff
	rst $38                                          ; $7489: $ff
	rst $38                                          ; $748a: $ff
	rst $38                                          ; $748b: $ff
	rst $38                                          ; $748c: $ff
	rst $38                                          ; $748d: $ff
	rst $38                                          ; $748e: $ff
	rst $38                                          ; $748f: $ff
	rst $38                                          ; $7490: $ff
	rst $38                                          ; $7491: $ff
	rst $38                                          ; $7492: $ff
	rst $38                                          ; $7493: $ff
	rst $38                                          ; $7494: $ff
	rst $38                                          ; $7495: $ff
	rst $38                                          ; $7496: $ff
	rst $38                                          ; $7497: $ff
	rst $38                                          ; $7498: $ff
	rst $38                                          ; $7499: $ff
	rst $38                                          ; $749a: $ff
	rst $38                                          ; $749b: $ff
	rst $38                                          ; $749c: $ff
	rst $38                                          ; $749d: $ff
	rst $38                                          ; $749e: $ff
	rst $38                                          ; $749f: $ff
	rst $38                                          ; $74a0: $ff
	rst $38                                          ; $74a1: $ff
	rst $38                                          ; $74a2: $ff
	rst $38                                          ; $74a3: $ff
	rst $38                                          ; $74a4: $ff
	rst $38                                          ; $74a5: $ff
	rst $38                                          ; $74a6: $ff
	rst $38                                          ; $74a7: $ff
	rst $38                                          ; $74a8: $ff
	rst $38                                          ; $74a9: $ff
	rst $38                                          ; $74aa: $ff
	rst $38                                          ; $74ab: $ff
	rst $38                                          ; $74ac: $ff
	rst $38                                          ; $74ad: $ff
	rst $38                                          ; $74ae: $ff
	rst $38                                          ; $74af: $ff
	rst $38                                          ; $74b0: $ff
	rst $38                                          ; $74b1: $ff
	rst $38                                          ; $74b2: $ff
	rst $38                                          ; $74b3: $ff
	rst $38                                          ; $74b4: $ff
	rst $38                                          ; $74b5: $ff
	rst $38                                          ; $74b6: $ff
	rst $38                                          ; $74b7: $ff
	rst $38                                          ; $74b8: $ff
	rst $38                                          ; $74b9: $ff
	rst $38                                          ; $74ba: $ff
	rst $38                                          ; $74bb: $ff
	rst $38                                          ; $74bc: $ff
	rst $38                                          ; $74bd: $ff
	rst $38                                          ; $74be: $ff
	rst $38                                          ; $74bf: $ff
	rst $38                                          ; $74c0: $ff
	rst $38                                          ; $74c1: $ff
	rst $38                                          ; $74c2: $ff
	rst $38                                          ; $74c3: $ff
	rst $38                                          ; $74c4: $ff
	rst $38                                          ; $74c5: $ff
	rst $38                                          ; $74c6: $ff
	rst $38                                          ; $74c7: $ff
	rst $38                                          ; $74c8: $ff
	rst $38                                          ; $74c9: $ff
	rst $38                                          ; $74ca: $ff
	rst $38                                          ; $74cb: $ff
	rst $38                                          ; $74cc: $ff
	rst $38                                          ; $74cd: $ff
	rst $38                                          ; $74ce: $ff
	rst $38                                          ; $74cf: $ff
	rst $38                                          ; $74d0: $ff
	rst $38                                          ; $74d1: $ff
	rst $38                                          ; $74d2: $ff
	rst $38                                          ; $74d3: $ff
	rst $38                                          ; $74d4: $ff
	rst $38                                          ; $74d5: $ff
	rst $38                                          ; $74d6: $ff
	rst $38                                          ; $74d7: $ff
	rst $38                                          ; $74d8: $ff
	rst $38                                          ; $74d9: $ff
	rst $38                                          ; $74da: $ff
	rst $38                                          ; $74db: $ff
	rst $38                                          ; $74dc: $ff
	rst $38                                          ; $74dd: $ff
	rst $38                                          ; $74de: $ff
	rst $38                                          ; $74df: $ff
	rst $38                                          ; $74e0: $ff
	rst $38                                          ; $74e1: $ff
	rst $38                                          ; $74e2: $ff
	rst $38                                          ; $74e3: $ff
	rst $38                                          ; $74e4: $ff
	rst $38                                          ; $74e5: $ff
	rst $38                                          ; $74e6: $ff
	rst $38                                          ; $74e7: $ff
	rst $38                                          ; $74e8: $ff
	rst $38                                          ; $74e9: $ff
	rst $38                                          ; $74ea: $ff
	rst $38                                          ; $74eb: $ff
	rst $38                                          ; $74ec: $ff
	rst $38                                          ; $74ed: $ff
	rst $38                                          ; $74ee: $ff
	rst $38                                          ; $74ef: $ff
	rst $38                                          ; $74f0: $ff
	rst $38                                          ; $74f1: $ff
	rst $38                                          ; $74f2: $ff
	rst $38                                          ; $74f3: $ff
	rst $38                                          ; $74f4: $ff
	rst $38                                          ; $74f5: $ff
	rst $38                                          ; $74f6: $ff
	rst $38                                          ; $74f7: $ff
	rst $38                                          ; $74f8: $ff
	rst $38                                          ; $74f9: $ff
	rst $38                                          ; $74fa: $ff
	rst $38                                          ; $74fb: $ff
	rst $38                                          ; $74fc: $ff
	rst $38                                          ; $74fd: $ff
	rst $38                                          ; $74fe: $ff
	rst $38                                          ; $74ff: $ff
	rst $38                                          ; $7500: $ff
	rst $38                                          ; $7501: $ff
	rst $38                                          ; $7502: $ff
	rst $38                                          ; $7503: $ff
	rst $38                                          ; $7504: $ff
	rst $38                                          ; $7505: $ff
	rst $38                                          ; $7506: $ff
	rst $38                                          ; $7507: $ff
	rst $38                                          ; $7508: $ff
	rst $38                                          ; $7509: $ff
	rst $38                                          ; $750a: $ff
	rst $38                                          ; $750b: $ff
	rst $38                                          ; $750c: $ff
	rst $38                                          ; $750d: $ff
	rst $38                                          ; $750e: $ff
	rst $38                                          ; $750f: $ff
	rst $38                                          ; $7510: $ff
	rst $38                                          ; $7511: $ff
	rst $38                                          ; $7512: $ff
	rst $38                                          ; $7513: $ff
	rst $38                                          ; $7514: $ff
	rst $38                                          ; $7515: $ff
	rst $38                                          ; $7516: $ff
	rst $38                                          ; $7517: $ff
	rst $38                                          ; $7518: $ff
	rst $38                                          ; $7519: $ff
	rst $38                                          ; $751a: $ff
	rst $38                                          ; $751b: $ff
	rst $38                                          ; $751c: $ff
	rst $38                                          ; $751d: $ff
	rst $38                                          ; $751e: $ff
	rst $38                                          ; $751f: $ff
	rst $38                                          ; $7520: $ff
	rst $38                                          ; $7521: $ff
	rst $38                                          ; $7522: $ff
	rst $38                                          ; $7523: $ff
	rst $38                                          ; $7524: $ff
	rst $38                                          ; $7525: $ff
	rst $38                                          ; $7526: $ff
	rst $38                                          ; $7527: $ff
	rst $38                                          ; $7528: $ff
	rst $38                                          ; $7529: $ff
	rst $38                                          ; $752a: $ff
	rst $38                                          ; $752b: $ff
	rst $38                                          ; $752c: $ff
	rst $38                                          ; $752d: $ff
	rst $38                                          ; $752e: $ff
	rst $38                                          ; $752f: $ff
	rst $38                                          ; $7530: $ff
	rst $38                                          ; $7531: $ff
	rst $38                                          ; $7532: $ff
	rst $38                                          ; $7533: $ff
	rst $38                                          ; $7534: $ff
	rst $38                                          ; $7535: $ff
	rst $38                                          ; $7536: $ff
	rst $38                                          ; $7537: $ff
	rst $38                                          ; $7538: $ff
	rst $38                                          ; $7539: $ff
	rst $38                                          ; $753a: $ff
	rst $38                                          ; $753b: $ff
	rst $38                                          ; $753c: $ff
	rst $38                                          ; $753d: $ff
	rst $38                                          ; $753e: $ff
	rst $38                                          ; $753f: $ff
	rst $38                                          ; $7540: $ff
	rst $38                                          ; $7541: $ff
	rst $38                                          ; $7542: $ff
	rst $38                                          ; $7543: $ff
	rst $38                                          ; $7544: $ff
	rst $38                                          ; $7545: $ff
	rst $38                                          ; $7546: $ff
	rst $38                                          ; $7547: $ff
	rst $38                                          ; $7548: $ff
	rst $38                                          ; $7549: $ff
	rst $38                                          ; $754a: $ff
	rst $38                                          ; $754b: $ff
	rst $38                                          ; $754c: $ff
	rst $38                                          ; $754d: $ff
	rst $38                                          ; $754e: $ff
	rst $38                                          ; $754f: $ff
	rst $38                                          ; $7550: $ff
	rst $38                                          ; $7551: $ff
	rst $38                                          ; $7552: $ff
	rst $38                                          ; $7553: $ff
	rst $38                                          ; $7554: $ff
	rst $38                                          ; $7555: $ff
	rst $38                                          ; $7556: $ff
	rst $38                                          ; $7557: $ff
	rst $38                                          ; $7558: $ff
	rst $38                                          ; $7559: $ff
	rst $38                                          ; $755a: $ff
	rst $38                                          ; $755b: $ff
	rst $38                                          ; $755c: $ff
	rst $38                                          ; $755d: $ff
	rst $38                                          ; $755e: $ff
	rst $38                                          ; $755f: $ff
	rst $38                                          ; $7560: $ff
	rst $38                                          ; $7561: $ff
	rst $38                                          ; $7562: $ff
	rst $38                                          ; $7563: $ff
	rst $38                                          ; $7564: $ff
	rst $38                                          ; $7565: $ff
	rst $38                                          ; $7566: $ff
	rst $38                                          ; $7567: $ff
	rst $38                                          ; $7568: $ff
	rst $38                                          ; $7569: $ff
	rst $38                                          ; $756a: $ff
	rst $38                                          ; $756b: $ff
	rst $38                                          ; $756c: $ff
	rst $38                                          ; $756d: $ff
	rst $38                                          ; $756e: $ff
	rst $38                                          ; $756f: $ff
	rst $38                                          ; $7570: $ff
	rst $38                                          ; $7571: $ff
	rst $38                                          ; $7572: $ff
	rst $38                                          ; $7573: $ff
	rst $38                                          ; $7574: $ff
	rst $38                                          ; $7575: $ff
	rst $38                                          ; $7576: $ff
	rst $38                                          ; $7577: $ff
	rst $38                                          ; $7578: $ff
	rst $38                                          ; $7579: $ff
	rst $38                                          ; $757a: $ff
	rst $38                                          ; $757b: $ff
	rst $38                                          ; $757c: $ff
	rst $38                                          ; $757d: $ff
	rst $38                                          ; $757e: $ff
	rst $38                                          ; $757f: $ff
	rst $38                                          ; $7580: $ff
	rst $38                                          ; $7581: $ff
	rst $38                                          ; $7582: $ff
	rst $38                                          ; $7583: $ff
	rst $38                                          ; $7584: $ff
	rst $38                                          ; $7585: $ff
	rst $38                                          ; $7586: $ff
	rst $38                                          ; $7587: $ff
	rst $38                                          ; $7588: $ff
	rst $38                                          ; $7589: $ff
	rst $38                                          ; $758a: $ff
	rst $38                                          ; $758b: $ff
	rst $38                                          ; $758c: $ff
	rst $38                                          ; $758d: $ff
	rst $38                                          ; $758e: $ff
	rst $38                                          ; $758f: $ff
	rst $38                                          ; $7590: $ff
	rst $38                                          ; $7591: $ff
	rst $38                                          ; $7592: $ff
	rst $38                                          ; $7593: $ff
	rst $38                                          ; $7594: $ff
	rst $38                                          ; $7595: $ff
	rst $38                                          ; $7596: $ff
	rst $38                                          ; $7597: $ff
	rst $38                                          ; $7598: $ff
	rst $38                                          ; $7599: $ff
	rst $38                                          ; $759a: $ff
	rst $38                                          ; $759b: $ff
	rst $38                                          ; $759c: $ff
	rst $38                                          ; $759d: $ff
	rst $38                                          ; $759e: $ff
	rst $38                                          ; $759f: $ff
	rst $38                                          ; $75a0: $ff
	rst $38                                          ; $75a1: $ff
	rst $38                                          ; $75a2: $ff
	rst $38                                          ; $75a3: $ff
	rst $38                                          ; $75a4: $ff
	rst $38                                          ; $75a5: $ff
	rst $38                                          ; $75a6: $ff
	rst $38                                          ; $75a7: $ff
	rst $38                                          ; $75a8: $ff
	rst $38                                          ; $75a9: $ff
	rst $38                                          ; $75aa: $ff
	rst $38                                          ; $75ab: $ff
	rst $38                                          ; $75ac: $ff
	rst $38                                          ; $75ad: $ff
	rst $38                                          ; $75ae: $ff
	rst $38                                          ; $75af: $ff
	rst $38                                          ; $75b0: $ff
	rst $38                                          ; $75b1: $ff
	rst $38                                          ; $75b2: $ff
	rst $38                                          ; $75b3: $ff
	rst $38                                          ; $75b4: $ff
	rst $38                                          ; $75b5: $ff
	rst $38                                          ; $75b6: $ff
	rst $38                                          ; $75b7: $ff
	rst $38                                          ; $75b8: $ff
	rst $38                                          ; $75b9: $ff
	rst $38                                          ; $75ba: $ff
	rst $38                                          ; $75bb: $ff
	rst $38                                          ; $75bc: $ff
	rst $38                                          ; $75bd: $ff
	rst $38                                          ; $75be: $ff
	rst $38                                          ; $75bf: $ff
	rst $38                                          ; $75c0: $ff
	rst $38                                          ; $75c1: $ff
	rst $38                                          ; $75c2: $ff
	rst $38                                          ; $75c3: $ff
	rst $38                                          ; $75c4: $ff
	rst $38                                          ; $75c5: $ff
	rst $38                                          ; $75c6: $ff
	rst $38                                          ; $75c7: $ff
	rst $38                                          ; $75c8: $ff
	rst $38                                          ; $75c9: $ff
	rst $38                                          ; $75ca: $ff
	rst $38                                          ; $75cb: $ff
	rst $38                                          ; $75cc: $ff
	rst $38                                          ; $75cd: $ff
	rst $38                                          ; $75ce: $ff
	rst $38                                          ; $75cf: $ff
	rst $38                                          ; $75d0: $ff
	rst $38                                          ; $75d1: $ff
	rst $38                                          ; $75d2: $ff
	rst $38                                          ; $75d3: $ff
	rst $38                                          ; $75d4: $ff
	rst $38                                          ; $75d5: $ff
	rst $38                                          ; $75d6: $ff
	rst $38                                          ; $75d7: $ff
	rst $38                                          ; $75d8: $ff
	rst $38                                          ; $75d9: $ff
	rst $38                                          ; $75da: $ff
	rst $38                                          ; $75db: $ff
	rst $38                                          ; $75dc: $ff
	rst $38                                          ; $75dd: $ff
	rst $38                                          ; $75de: $ff
	rst $38                                          ; $75df: $ff
	rst $38                                          ; $75e0: $ff
	rst $38                                          ; $75e1: $ff
	rst $38                                          ; $75e2: $ff
	rst $38                                          ; $75e3: $ff
	rst $38                                          ; $75e4: $ff
	rst $38                                          ; $75e5: $ff
	rst $38                                          ; $75e6: $ff
	rst $38                                          ; $75e7: $ff
	rst $38                                          ; $75e8: $ff
	rst $38                                          ; $75e9: $ff
	rst $38                                          ; $75ea: $ff
	rst $38                                          ; $75eb: $ff
	rst $38                                          ; $75ec: $ff
	rst $38                                          ; $75ed: $ff
	rst $38                                          ; $75ee: $ff
	rst $38                                          ; $75ef: $ff
	rst $38                                          ; $75f0: $ff
	rst $38                                          ; $75f1: $ff
	rst $38                                          ; $75f2: $ff
	rst $38                                          ; $75f3: $ff
	rst $38                                          ; $75f4: $ff
	rst $38                                          ; $75f5: $ff
	rst $38                                          ; $75f6: $ff
	rst $38                                          ; $75f7: $ff
	rst $38                                          ; $75f8: $ff
	rst $38                                          ; $75f9: $ff
	rst $38                                          ; $75fa: $ff
	rst $38                                          ; $75fb: $ff
	rst $38                                          ; $75fc: $ff
	rst $38                                          ; $75fd: $ff
	rst $38                                          ; $75fe: $ff
	rst $38                                          ; $75ff: $ff
	rst $38                                          ; $7600: $ff
	rst $38                                          ; $7601: $ff
	rst $38                                          ; $7602: $ff
	rst $38                                          ; $7603: $ff
	rst $38                                          ; $7604: $ff
	rst $38                                          ; $7605: $ff
	rst $38                                          ; $7606: $ff
	rst $38                                          ; $7607: $ff
	rst $38                                          ; $7608: $ff
	rst $38                                          ; $7609: $ff
	rst $38                                          ; $760a: $ff
	rst $38                                          ; $760b: $ff
	rst $38                                          ; $760c: $ff
	rst $38                                          ; $760d: $ff
	rst $38                                          ; $760e: $ff
	rst $38                                          ; $760f: $ff
	rst $38                                          ; $7610: $ff
	rst $38                                          ; $7611: $ff
	rst $38                                          ; $7612: $ff
	rst $38                                          ; $7613: $ff
	rst $38                                          ; $7614: $ff
	rst $38                                          ; $7615: $ff
	rst $38                                          ; $7616: $ff
	rst $38                                          ; $7617: $ff
	rst $38                                          ; $7618: $ff
	rst $38                                          ; $7619: $ff
	rst $38                                          ; $761a: $ff
	rst $38                                          ; $761b: $ff
	rst $38                                          ; $761c: $ff
	rst $38                                          ; $761d: $ff
	rst $38                                          ; $761e: $ff
	rst $38                                          ; $761f: $ff
	rst $38                                          ; $7620: $ff
	rst $38                                          ; $7621: $ff
	rst $38                                          ; $7622: $ff
	rst $38                                          ; $7623: $ff
	rst $38                                          ; $7624: $ff
	rst $38                                          ; $7625: $ff
	rst $38                                          ; $7626: $ff
	rst $38                                          ; $7627: $ff
	rst $38                                          ; $7628: $ff
	rst $38                                          ; $7629: $ff
	rst $38                                          ; $762a: $ff
	rst $38                                          ; $762b: $ff
	rst $38                                          ; $762c: $ff
	rst $38                                          ; $762d: $ff
	rst $38                                          ; $762e: $ff
	rst $38                                          ; $762f: $ff
	rst $38                                          ; $7630: $ff
	rst $38                                          ; $7631: $ff
	rst $38                                          ; $7632: $ff
	rst $38                                          ; $7633: $ff
	rst $38                                          ; $7634: $ff
	rst $38                                          ; $7635: $ff
	rst $38                                          ; $7636: $ff
	rst $38                                          ; $7637: $ff
	rst $38                                          ; $7638: $ff
	rst $38                                          ; $7639: $ff
	rst $38                                          ; $763a: $ff
	rst $38                                          ; $763b: $ff
	rst $38                                          ; $763c: $ff
	rst $38                                          ; $763d: $ff
	rst $38                                          ; $763e: $ff
	rst $38                                          ; $763f: $ff
	rst $38                                          ; $7640: $ff
	rst $38                                          ; $7641: $ff
	rst $38                                          ; $7642: $ff
	rst $38                                          ; $7643: $ff
	rst $38                                          ; $7644: $ff
	rst $38                                          ; $7645: $ff
	rst $38                                          ; $7646: $ff
	rst $38                                          ; $7647: $ff
	rst $38                                          ; $7648: $ff
	rst $38                                          ; $7649: $ff
	rst $38                                          ; $764a: $ff
	rst $38                                          ; $764b: $ff
	rst $38                                          ; $764c: $ff
	rst $38                                          ; $764d: $ff
	rst $38                                          ; $764e: $ff
	rst $38                                          ; $764f: $ff
	rst $38                                          ; $7650: $ff
	rst $38                                          ; $7651: $ff
	rst $38                                          ; $7652: $ff
	rst $38                                          ; $7653: $ff
	rst $38                                          ; $7654: $ff
	rst $38                                          ; $7655: $ff
	rst $38                                          ; $7656: $ff
	rst $38                                          ; $7657: $ff
	rst $38                                          ; $7658: $ff
	rst $38                                          ; $7659: $ff
	rst $38                                          ; $765a: $ff
	rst $38                                          ; $765b: $ff
	rst $38                                          ; $765c: $ff
	rst $38                                          ; $765d: $ff
	rst $38                                          ; $765e: $ff
	rst $38                                          ; $765f: $ff
	rst $38                                          ; $7660: $ff
	rst $38                                          ; $7661: $ff
	rst $38                                          ; $7662: $ff
	rst $38                                          ; $7663: $ff
	rst $38                                          ; $7664: $ff
	rst $38                                          ; $7665: $ff
	rst $38                                          ; $7666: $ff
	rst $38                                          ; $7667: $ff
	rst $38                                          ; $7668: $ff
	rst $38                                          ; $7669: $ff
	rst $38                                          ; $766a: $ff
	rst $38                                          ; $766b: $ff
	rst $38                                          ; $766c: $ff
	rst $38                                          ; $766d: $ff
	rst $38                                          ; $766e: $ff
	rst $38                                          ; $766f: $ff
	rst $38                                          ; $7670: $ff
	rst $38                                          ; $7671: $ff
	rst $38                                          ; $7672: $ff
	rst $38                                          ; $7673: $ff
	rst $38                                          ; $7674: $ff
	rst $38                                          ; $7675: $ff
	rst $38                                          ; $7676: $ff
	rst $38                                          ; $7677: $ff
	rst $38                                          ; $7678: $ff
	rst $38                                          ; $7679: $ff
	rst $38                                          ; $767a: $ff
	rst $38                                          ; $767b: $ff
	rst $38                                          ; $767c: $ff
	rst $38                                          ; $767d: $ff
	rst $38                                          ; $767e: $ff
	rst $38                                          ; $767f: $ff
	rst $38                                          ; $7680: $ff
	rst $38                                          ; $7681: $ff
	rst $38                                          ; $7682: $ff
	rst $38                                          ; $7683: $ff
	rst $38                                          ; $7684: $ff
	rst $38                                          ; $7685: $ff
	rst $38                                          ; $7686: $ff
	rst $38                                          ; $7687: $ff
	rst $38                                          ; $7688: $ff
	rst $38                                          ; $7689: $ff
	rst $38                                          ; $768a: $ff
	rst $38                                          ; $768b: $ff
	rst $38                                          ; $768c: $ff
	rst $38                                          ; $768d: $ff
	rst $38                                          ; $768e: $ff
	rst $38                                          ; $768f: $ff
	rst $38                                          ; $7690: $ff
	rst $38                                          ; $7691: $ff
	rst $38                                          ; $7692: $ff
	rst $38                                          ; $7693: $ff
	rst $38                                          ; $7694: $ff
	rst $38                                          ; $7695: $ff
	rst $38                                          ; $7696: $ff
	rst $38                                          ; $7697: $ff
	rst $38                                          ; $7698: $ff
	rst $38                                          ; $7699: $ff
	rst $38                                          ; $769a: $ff
	rst $38                                          ; $769b: $ff
	rst $38                                          ; $769c: $ff
	rst $38                                          ; $769d: $ff
	rst $38                                          ; $769e: $ff
	rst $38                                          ; $769f: $ff
	rst $38                                          ; $76a0: $ff
	rst $38                                          ; $76a1: $ff
	rst $38                                          ; $76a2: $ff
	rst $38                                          ; $76a3: $ff
	rst $38                                          ; $76a4: $ff
	rst $38                                          ; $76a5: $ff
	rst $38                                          ; $76a6: $ff
	rst $38                                          ; $76a7: $ff
	rst $38                                          ; $76a8: $ff
	rst $38                                          ; $76a9: $ff
	rst $38                                          ; $76aa: $ff
	rst $38                                          ; $76ab: $ff
	rst $38                                          ; $76ac: $ff
	rst $38                                          ; $76ad: $ff
	rst $38                                          ; $76ae: $ff
	rst $38                                          ; $76af: $ff
	rst $38                                          ; $76b0: $ff
	rst $38                                          ; $76b1: $ff
	rst $38                                          ; $76b2: $ff
	rst $38                                          ; $76b3: $ff
	rst $38                                          ; $76b4: $ff
	rst $38                                          ; $76b5: $ff
	rst $38                                          ; $76b6: $ff
	rst $38                                          ; $76b7: $ff
	rst $38                                          ; $76b8: $ff
	rst $38                                          ; $76b9: $ff
	rst $38                                          ; $76ba: $ff
	rst $38                                          ; $76bb: $ff
	rst $38                                          ; $76bc: $ff
	rst $38                                          ; $76bd: $ff
	rst $38                                          ; $76be: $ff
	rst $38                                          ; $76bf: $ff
	rst $38                                          ; $76c0: $ff
	rst $38                                          ; $76c1: $ff
	rst $38                                          ; $76c2: $ff
	rst $38                                          ; $76c3: $ff
	rst $38                                          ; $76c4: $ff
	rst $38                                          ; $76c5: $ff
	rst $38                                          ; $76c6: $ff
	rst $38                                          ; $76c7: $ff
	rst $38                                          ; $76c8: $ff
	rst $38                                          ; $76c9: $ff
	rst $38                                          ; $76ca: $ff
	rst $38                                          ; $76cb: $ff
	rst $38                                          ; $76cc: $ff
	rst $38                                          ; $76cd: $ff
	rst $38                                          ; $76ce: $ff
	rst $38                                          ; $76cf: $ff
	rst $38                                          ; $76d0: $ff
	rst $38                                          ; $76d1: $ff
	rst $38                                          ; $76d2: $ff
	rst $38                                          ; $76d3: $ff
	rst $38                                          ; $76d4: $ff
	rst $38                                          ; $76d5: $ff
	rst $38                                          ; $76d6: $ff
	rst $38                                          ; $76d7: $ff
	rst $38                                          ; $76d8: $ff
	rst $38                                          ; $76d9: $ff
	rst $38                                          ; $76da: $ff
	rst $38                                          ; $76db: $ff
	rst $38                                          ; $76dc: $ff
	rst $38                                          ; $76dd: $ff
	rst $38                                          ; $76de: $ff
	rst $38                                          ; $76df: $ff
	rst $38                                          ; $76e0: $ff
	rst $38                                          ; $76e1: $ff
	rst $38                                          ; $76e2: $ff
	rst $38                                          ; $76e3: $ff
	rst $38                                          ; $76e4: $ff
	rst $38                                          ; $76e5: $ff
	rst $38                                          ; $76e6: $ff
	rst $38                                          ; $76e7: $ff
	rst $38                                          ; $76e8: $ff
	rst $38                                          ; $76e9: $ff
	rst $38                                          ; $76ea: $ff
	rst $38                                          ; $76eb: $ff
	rst $38                                          ; $76ec: $ff
	rst $38                                          ; $76ed: $ff
	rst $38                                          ; $76ee: $ff
	rst $38                                          ; $76ef: $ff
	rst $38                                          ; $76f0: $ff
	rst $38                                          ; $76f1: $ff
	rst $38                                          ; $76f2: $ff
	rst $38                                          ; $76f3: $ff
	rst $38                                          ; $76f4: $ff
	rst $38                                          ; $76f5: $ff
	rst $38                                          ; $76f6: $ff
	rst $38                                          ; $76f7: $ff
	rst $38                                          ; $76f8: $ff
	rst $38                                          ; $76f9: $ff
	rst $38                                          ; $76fa: $ff
	rst $38                                          ; $76fb: $ff
	rst $38                                          ; $76fc: $ff
	rst $38                                          ; $76fd: $ff
	rst $38                                          ; $76fe: $ff
	rst $38                                          ; $76ff: $ff
	rst $38                                          ; $7700: $ff
	rst $38                                          ; $7701: $ff
	rst $38                                          ; $7702: $ff
	rst $38                                          ; $7703: $ff
	rst $38                                          ; $7704: $ff
	rst $38                                          ; $7705: $ff
	rst $38                                          ; $7706: $ff
	rst $38                                          ; $7707: $ff
	rst $38                                          ; $7708: $ff
	rst $38                                          ; $7709: $ff
	rst $38                                          ; $770a: $ff
	rst $38                                          ; $770b: $ff
	rst $38                                          ; $770c: $ff
	rst $38                                          ; $770d: $ff
	rst $38                                          ; $770e: $ff
	rst $38                                          ; $770f: $ff
	rst $38                                          ; $7710: $ff
	rst $38                                          ; $7711: $ff
	rst $38                                          ; $7712: $ff
	rst $38                                          ; $7713: $ff
	rst $38                                          ; $7714: $ff
	rst $38                                          ; $7715: $ff
	rst $38                                          ; $7716: $ff
	rst $38                                          ; $7717: $ff
	rst $38                                          ; $7718: $ff
	rst $38                                          ; $7719: $ff
	rst $38                                          ; $771a: $ff
	rst $38                                          ; $771b: $ff
	rst $38                                          ; $771c: $ff
	rst $38                                          ; $771d: $ff
	rst $38                                          ; $771e: $ff
	rst $38                                          ; $771f: $ff
	rst $38                                          ; $7720: $ff
	rst $38                                          ; $7721: $ff
	rst $38                                          ; $7722: $ff
	rst $38                                          ; $7723: $ff
	rst $38                                          ; $7724: $ff
	rst $38                                          ; $7725: $ff
	rst $38                                          ; $7726: $ff
	rst $38                                          ; $7727: $ff
	rst $38                                          ; $7728: $ff
	rst $38                                          ; $7729: $ff
	rst $38                                          ; $772a: $ff
	rst $38                                          ; $772b: $ff
	rst $38                                          ; $772c: $ff
	rst $38                                          ; $772d: $ff
	rst $38                                          ; $772e: $ff
	rst $38                                          ; $772f: $ff
	rst $38                                          ; $7730: $ff
	rst $38                                          ; $7731: $ff
	rst $38                                          ; $7732: $ff
	rst $38                                          ; $7733: $ff
	rst $38                                          ; $7734: $ff
	rst $38                                          ; $7735: $ff
	rst $38                                          ; $7736: $ff
	rst $38                                          ; $7737: $ff
	rst $38                                          ; $7738: $ff
	rst $38                                          ; $7739: $ff
	rst $38                                          ; $773a: $ff
	rst $38                                          ; $773b: $ff
	rst $38                                          ; $773c: $ff
	rst $38                                          ; $773d: $ff
	rst $38                                          ; $773e: $ff
	rst $38                                          ; $773f: $ff
	rst $38                                          ; $7740: $ff
	rst $38                                          ; $7741: $ff
	rst $38                                          ; $7742: $ff
	rst $38                                          ; $7743: $ff
	rst $38                                          ; $7744: $ff
	rst $38                                          ; $7745: $ff
	rst $38                                          ; $7746: $ff
	rst $38                                          ; $7747: $ff
	rst $38                                          ; $7748: $ff
	rst $38                                          ; $7749: $ff
	rst $38                                          ; $774a: $ff
	rst $38                                          ; $774b: $ff
	rst $38                                          ; $774c: $ff
	rst $38                                          ; $774d: $ff
	rst $38                                          ; $774e: $ff
	rst $38                                          ; $774f: $ff
	rst $38                                          ; $7750: $ff
	rst $38                                          ; $7751: $ff
	rst $38                                          ; $7752: $ff
	rst $38                                          ; $7753: $ff
	rst $38                                          ; $7754: $ff
	rst $38                                          ; $7755: $ff
	rst $38                                          ; $7756: $ff
	rst $38                                          ; $7757: $ff
	rst $38                                          ; $7758: $ff
	rst $38                                          ; $7759: $ff
	rst $38                                          ; $775a: $ff
	rst $38                                          ; $775b: $ff
	rst $38                                          ; $775c: $ff
	rst $38                                          ; $775d: $ff
	rst $38                                          ; $775e: $ff
	rst $38                                          ; $775f: $ff
	rst $38                                          ; $7760: $ff
	rst $38                                          ; $7761: $ff
	rst $38                                          ; $7762: $ff
	rst $38                                          ; $7763: $ff
	rst $38                                          ; $7764: $ff
	rst $38                                          ; $7765: $ff
	rst $38                                          ; $7766: $ff
	rst $38                                          ; $7767: $ff
	rst $38                                          ; $7768: $ff
	rst $38                                          ; $7769: $ff
	rst $38                                          ; $776a: $ff
	rst $38                                          ; $776b: $ff
	rst $38                                          ; $776c: $ff
	rst $38                                          ; $776d: $ff
	rst $38                                          ; $776e: $ff
	rst $38                                          ; $776f: $ff
	rst $38                                          ; $7770: $ff
	rst $38                                          ; $7771: $ff
	rst $38                                          ; $7772: $ff
	rst $38                                          ; $7773: $ff
	rst $38                                          ; $7774: $ff
	rst $38                                          ; $7775: $ff
	rst $38                                          ; $7776: $ff
	rst $38                                          ; $7777: $ff
	rst $38                                          ; $7778: $ff
	rst $38                                          ; $7779: $ff
	rst $38                                          ; $777a: $ff
	rst $38                                          ; $777b: $ff
	rst $38                                          ; $777c: $ff
	rst $38                                          ; $777d: $ff
	rst $38                                          ; $777e: $ff
	rst $38                                          ; $777f: $ff
	rst $38                                          ; $7780: $ff
	rst $38                                          ; $7781: $ff
	rst $38                                          ; $7782: $ff
	rst $38                                          ; $7783: $ff
	rst $38                                          ; $7784: $ff
	rst $38                                          ; $7785: $ff
	rst $38                                          ; $7786: $ff
	rst $38                                          ; $7787: $ff
	rst $38                                          ; $7788: $ff
	rst $38                                          ; $7789: $ff
	rst $38                                          ; $778a: $ff
	rst $38                                          ; $778b: $ff
	rst $38                                          ; $778c: $ff
	rst $38                                          ; $778d: $ff
	rst $38                                          ; $778e: $ff
	rst $38                                          ; $778f: $ff
	rst $38                                          ; $7790: $ff
	rst $38                                          ; $7791: $ff
	rst $38                                          ; $7792: $ff
	rst $38                                          ; $7793: $ff
	rst $38                                          ; $7794: $ff
	rst $38                                          ; $7795: $ff
	rst $38                                          ; $7796: $ff
	rst $38                                          ; $7797: $ff
	rst $38                                          ; $7798: $ff
	rst $38                                          ; $7799: $ff
	rst $38                                          ; $779a: $ff
	rst $38                                          ; $779b: $ff
	rst $38                                          ; $779c: $ff
	rst $38                                          ; $779d: $ff
	rst $38                                          ; $779e: $ff
	rst $38                                          ; $779f: $ff
	rst $38                                          ; $77a0: $ff
	rst $38                                          ; $77a1: $ff
	rst $38                                          ; $77a2: $ff
	rst $38                                          ; $77a3: $ff
	rst $38                                          ; $77a4: $ff
	rst $38                                          ; $77a5: $ff
	rst $38                                          ; $77a6: $ff
	rst $38                                          ; $77a7: $ff
	rst $38                                          ; $77a8: $ff
	rst $38                                          ; $77a9: $ff
	rst $38                                          ; $77aa: $ff
	rst $38                                          ; $77ab: $ff
	rst $38                                          ; $77ac: $ff
	rst $38                                          ; $77ad: $ff
	rst $38                                          ; $77ae: $ff
	rst $38                                          ; $77af: $ff
	rst $38                                          ; $77b0: $ff
	rst $38                                          ; $77b1: $ff
	rst $38                                          ; $77b2: $ff
	rst $38                                          ; $77b3: $ff
	rst $38                                          ; $77b4: $ff
	rst $38                                          ; $77b5: $ff
	rst $38                                          ; $77b6: $ff
	rst $38                                          ; $77b7: $ff
	rst $38                                          ; $77b8: $ff
	rst $38                                          ; $77b9: $ff
	rst $38                                          ; $77ba: $ff
	rst $38                                          ; $77bb: $ff
	rst $38                                          ; $77bc: $ff
	rst $38                                          ; $77bd: $ff
	rst $38                                          ; $77be: $ff
	rst $38                                          ; $77bf: $ff
	rst $38                                          ; $77c0: $ff
	rst $38                                          ; $77c1: $ff
	rst $38                                          ; $77c2: $ff
	rst $38                                          ; $77c3: $ff
	rst $38                                          ; $77c4: $ff
	rst $38                                          ; $77c5: $ff
	rst $38                                          ; $77c6: $ff
	rst $38                                          ; $77c7: $ff
	rst $38                                          ; $77c8: $ff
	rst $38                                          ; $77c9: $ff
	rst $38                                          ; $77ca: $ff
	rst $38                                          ; $77cb: $ff
	rst $38                                          ; $77cc: $ff
	rst $38                                          ; $77cd: $ff
	rst $38                                          ; $77ce: $ff
	rst $38                                          ; $77cf: $ff
	rst $38                                          ; $77d0: $ff
	rst $38                                          ; $77d1: $ff
	rst $38                                          ; $77d2: $ff
	rst $38                                          ; $77d3: $ff
	rst $38                                          ; $77d4: $ff
	rst $38                                          ; $77d5: $ff
	rst $38                                          ; $77d6: $ff
	rst $38                                          ; $77d7: $ff
	rst $38                                          ; $77d8: $ff
	rst $38                                          ; $77d9: $ff
	rst $38                                          ; $77da: $ff
	rst $38                                          ; $77db: $ff
	rst $38                                          ; $77dc: $ff
	rst $38                                          ; $77dd: $ff
	rst $38                                          ; $77de: $ff
	rst $38                                          ; $77df: $ff
	rst $38                                          ; $77e0: $ff
	rst $38                                          ; $77e1: $ff
	rst $38                                          ; $77e2: $ff
	rst $38                                          ; $77e3: $ff
	rst $38                                          ; $77e4: $ff
	rst $38                                          ; $77e5: $ff
	rst $38                                          ; $77e6: $ff
	rst $38                                          ; $77e7: $ff
	rst $38                                          ; $77e8: $ff
	rst $38                                          ; $77e9: $ff
	rst $38                                          ; $77ea: $ff
	rst $38                                          ; $77eb: $ff
	rst $38                                          ; $77ec: $ff
	rst $38                                          ; $77ed: $ff
	rst $38                                          ; $77ee: $ff
	rst $38                                          ; $77ef: $ff
	rst $38                                          ; $77f0: $ff
	rst $38                                          ; $77f1: $ff
	rst $38                                          ; $77f2: $ff
	rst $38                                          ; $77f3: $ff
	rst $38                                          ; $77f4: $ff
	rst $38                                          ; $77f5: $ff
	rst $38                                          ; $77f6: $ff
	rst $38                                          ; $77f7: $ff
	rst $38                                          ; $77f8: $ff
	rst $38                                          ; $77f9: $ff
	rst $38                                          ; $77fa: $ff
	rst $38                                          ; $77fb: $ff
	rst $38                                          ; $77fc: $ff
	rst $38                                          ; $77fd: $ff
	rst $38                                          ; $77fe: $ff
	rst $38                                          ; $77ff: $ff
	rst $38                                          ; $7800: $ff
	rst $38                                          ; $7801: $ff
	rst $38                                          ; $7802: $ff
	rst $38                                          ; $7803: $ff
	rst $38                                          ; $7804: $ff
	rst $38                                          ; $7805: $ff
	rst $38                                          ; $7806: $ff
	rst $38                                          ; $7807: $ff
	rst $38                                          ; $7808: $ff
	rst $38                                          ; $7809: $ff
	rst $38                                          ; $780a: $ff
	rst $38                                          ; $780b: $ff
	rst $38                                          ; $780c: $ff
	rst $38                                          ; $780d: $ff
	rst $38                                          ; $780e: $ff
	rst $38                                          ; $780f: $ff
	rst $38                                          ; $7810: $ff
	rst $38                                          ; $7811: $ff
	rst $38                                          ; $7812: $ff
	rst $38                                          ; $7813: $ff
	rst $38                                          ; $7814: $ff
	rst $38                                          ; $7815: $ff
	rst $38                                          ; $7816: $ff
	rst $38                                          ; $7817: $ff
	rst $38                                          ; $7818: $ff
	rst $38                                          ; $7819: $ff
	rst $38                                          ; $781a: $ff
	rst $38                                          ; $781b: $ff
	rst $38                                          ; $781c: $ff
	rst $38                                          ; $781d: $ff
	rst $38                                          ; $781e: $ff
	rst $38                                          ; $781f: $ff
	rst $38                                          ; $7820: $ff
	rst $38                                          ; $7821: $ff
	rst $38                                          ; $7822: $ff
	rst $38                                          ; $7823: $ff
	rst $38                                          ; $7824: $ff
	rst $38                                          ; $7825: $ff
	rst $38                                          ; $7826: $ff
	rst $38                                          ; $7827: $ff
	rst $38                                          ; $7828: $ff
	rst $38                                          ; $7829: $ff
	rst $38                                          ; $782a: $ff
	rst $38                                          ; $782b: $ff
	rst $38                                          ; $782c: $ff
	rst $38                                          ; $782d: $ff
	rst $38                                          ; $782e: $ff
	rst $38                                          ; $782f: $ff
	rst $38                                          ; $7830: $ff
	rst $38                                          ; $7831: $ff
	rst $38                                          ; $7832: $ff
	rst $38                                          ; $7833: $ff
	rst $38                                          ; $7834: $ff
	rst $38                                          ; $7835: $ff
	rst $38                                          ; $7836: $ff
	rst $38                                          ; $7837: $ff
	rst $38                                          ; $7838: $ff
	rst $38                                          ; $7839: $ff
	rst $38                                          ; $783a: $ff
	rst $38                                          ; $783b: $ff
	rst $38                                          ; $783c: $ff
	rst $38                                          ; $783d: $ff
	rst $38                                          ; $783e: $ff
	rst $38                                          ; $783f: $ff
	rst $38                                          ; $7840: $ff
	rst $38                                          ; $7841: $ff
	rst $38                                          ; $7842: $ff
	rst $38                                          ; $7843: $ff
	rst $38                                          ; $7844: $ff
	rst $38                                          ; $7845: $ff
	rst $38                                          ; $7846: $ff
	rst $38                                          ; $7847: $ff
	rst $38                                          ; $7848: $ff
	rst $38                                          ; $7849: $ff
	rst $38                                          ; $784a: $ff
	rst $38                                          ; $784b: $ff
	rst $38                                          ; $784c: $ff
	rst $38                                          ; $784d: $ff
	rst $38                                          ; $784e: $ff
	rst $38                                          ; $784f: $ff
	rst $38                                          ; $7850: $ff
	rst $38                                          ; $7851: $ff
	rst $38                                          ; $7852: $ff
	rst $38                                          ; $7853: $ff
	rst $38                                          ; $7854: $ff
	rst $38                                          ; $7855: $ff
	rst $38                                          ; $7856: $ff
	rst $38                                          ; $7857: $ff
	rst $38                                          ; $7858: $ff
	rst $38                                          ; $7859: $ff
	rst $38                                          ; $785a: $ff
	rst $38                                          ; $785b: $ff
	rst $38                                          ; $785c: $ff
	rst $38                                          ; $785d: $ff
	rst $38                                          ; $785e: $ff
	rst $38                                          ; $785f: $ff
	rst $38                                          ; $7860: $ff
	rst $38                                          ; $7861: $ff
	rst $38                                          ; $7862: $ff
	rst $38                                          ; $7863: $ff
	rst $38                                          ; $7864: $ff
	rst $38                                          ; $7865: $ff
	rst $38                                          ; $7866: $ff
	rst $38                                          ; $7867: $ff
	rst $38                                          ; $7868: $ff
	rst $38                                          ; $7869: $ff
	rst $38                                          ; $786a: $ff
	rst $38                                          ; $786b: $ff
	rst $38                                          ; $786c: $ff
	rst $38                                          ; $786d: $ff
	rst $38                                          ; $786e: $ff
	rst $38                                          ; $786f: $ff
	rst $38                                          ; $7870: $ff
	rst $38                                          ; $7871: $ff
	rst $38                                          ; $7872: $ff
	rst $38                                          ; $7873: $ff
	rst $38                                          ; $7874: $ff
	rst $38                                          ; $7875: $ff
	rst $38                                          ; $7876: $ff
	rst $38                                          ; $7877: $ff
	rst $38                                          ; $7878: $ff
	rst $38                                          ; $7879: $ff
	rst $38                                          ; $787a: $ff
	rst $38                                          ; $787b: $ff
	rst $38                                          ; $787c: $ff
	rst $38                                          ; $787d: $ff
	rst $38                                          ; $787e: $ff
	rst $38                                          ; $787f: $ff
	rst $38                                          ; $7880: $ff
	rst $38                                          ; $7881: $ff
	rst $38                                          ; $7882: $ff
	rst $38                                          ; $7883: $ff
	rst $38                                          ; $7884: $ff
	rst $38                                          ; $7885: $ff
	rst $38                                          ; $7886: $ff
	rst $38                                          ; $7887: $ff
	rst $38                                          ; $7888: $ff
	rst $38                                          ; $7889: $ff
	rst $38                                          ; $788a: $ff
	rst $38                                          ; $788b: $ff
	rst $38                                          ; $788c: $ff
	rst $38                                          ; $788d: $ff
	rst $38                                          ; $788e: $ff
	rst $38                                          ; $788f: $ff
	rst $38                                          ; $7890: $ff
	rst $38                                          ; $7891: $ff
	rst $38                                          ; $7892: $ff
	rst $38                                          ; $7893: $ff
	rst $38                                          ; $7894: $ff
	rst $38                                          ; $7895: $ff
	rst $38                                          ; $7896: $ff
	rst $38                                          ; $7897: $ff
	rst $38                                          ; $7898: $ff
	rst $38                                          ; $7899: $ff
	rst $38                                          ; $789a: $ff
	rst $38                                          ; $789b: $ff
	rst $38                                          ; $789c: $ff
	rst $38                                          ; $789d: $ff
	rst $38                                          ; $789e: $ff
	rst $38                                          ; $789f: $ff
	rst $38                                          ; $78a0: $ff
	rst $38                                          ; $78a1: $ff
	rst $38                                          ; $78a2: $ff
	rst $38                                          ; $78a3: $ff
	rst $38                                          ; $78a4: $ff
	rst $38                                          ; $78a5: $ff
	rst $38                                          ; $78a6: $ff
	rst $38                                          ; $78a7: $ff
	rst $38                                          ; $78a8: $ff
	rst $38                                          ; $78a9: $ff
	rst $38                                          ; $78aa: $ff
	rst $38                                          ; $78ab: $ff
	rst $38                                          ; $78ac: $ff
	rst $38                                          ; $78ad: $ff
	rst $38                                          ; $78ae: $ff
	rst $38                                          ; $78af: $ff
	rst $38                                          ; $78b0: $ff
	rst $38                                          ; $78b1: $ff
	rst $38                                          ; $78b2: $ff
	rst $38                                          ; $78b3: $ff
	rst $38                                          ; $78b4: $ff
	rst $38                                          ; $78b5: $ff
	rst $38                                          ; $78b6: $ff
	rst $38                                          ; $78b7: $ff
	rst $38                                          ; $78b8: $ff
	rst $38                                          ; $78b9: $ff
	rst $38                                          ; $78ba: $ff
	rst $38                                          ; $78bb: $ff
	rst $38                                          ; $78bc: $ff
	rst $38                                          ; $78bd: $ff
	rst $38                                          ; $78be: $ff
	rst $38                                          ; $78bf: $ff
	rst $38                                          ; $78c0: $ff
	rst $38                                          ; $78c1: $ff
	rst $38                                          ; $78c2: $ff
	rst $38                                          ; $78c3: $ff
	rst $38                                          ; $78c4: $ff
	rst $38                                          ; $78c5: $ff
	rst $38                                          ; $78c6: $ff
	rst $38                                          ; $78c7: $ff
	rst $38                                          ; $78c8: $ff
	rst $38                                          ; $78c9: $ff
	rst $38                                          ; $78ca: $ff
	rst $38                                          ; $78cb: $ff
	rst $38                                          ; $78cc: $ff
	rst $38                                          ; $78cd: $ff
	rst $38                                          ; $78ce: $ff
	rst $38                                          ; $78cf: $ff
	rst $38                                          ; $78d0: $ff
	rst $38                                          ; $78d1: $ff
	rst $38                                          ; $78d2: $ff
	rst $38                                          ; $78d3: $ff
	rst $38                                          ; $78d4: $ff
	rst $38                                          ; $78d5: $ff
	rst $38                                          ; $78d6: $ff
	rst $38                                          ; $78d7: $ff
	rst $38                                          ; $78d8: $ff
	rst $38                                          ; $78d9: $ff
	rst $38                                          ; $78da: $ff
	rst $38                                          ; $78db: $ff
	rst $38                                          ; $78dc: $ff
	rst $38                                          ; $78dd: $ff
	rst $38                                          ; $78de: $ff
	rst $38                                          ; $78df: $ff
	rst $38                                          ; $78e0: $ff
	rst $38                                          ; $78e1: $ff
	rst $38                                          ; $78e2: $ff
	rst $38                                          ; $78e3: $ff
	rst $38                                          ; $78e4: $ff
	rst $38                                          ; $78e5: $ff
	rst $38                                          ; $78e6: $ff
	rst $38                                          ; $78e7: $ff
	rst $38                                          ; $78e8: $ff
	rst $38                                          ; $78e9: $ff
	rst $38                                          ; $78ea: $ff
	rst $38                                          ; $78eb: $ff
	rst $38                                          ; $78ec: $ff
	rst $38                                          ; $78ed: $ff
	rst $38                                          ; $78ee: $ff
	rst $38                                          ; $78ef: $ff
	rst $38                                          ; $78f0: $ff
	rst $38                                          ; $78f1: $ff
	rst $38                                          ; $78f2: $ff
	rst $38                                          ; $78f3: $ff
	rst $38                                          ; $78f4: $ff
	rst $38                                          ; $78f5: $ff
	rst $38                                          ; $78f6: $ff
	rst $38                                          ; $78f7: $ff
	rst $38                                          ; $78f8: $ff
	rst $38                                          ; $78f9: $ff
	rst $38                                          ; $78fa: $ff
	rst $38                                          ; $78fb: $ff
	rst $38                                          ; $78fc: $ff
	rst $38                                          ; $78fd: $ff
	rst $38                                          ; $78fe: $ff
	rst $38                                          ; $78ff: $ff
	rst $38                                          ; $7900: $ff
	rst $38                                          ; $7901: $ff
	rst $38                                          ; $7902: $ff
	rst $38                                          ; $7903: $ff
	rst $38                                          ; $7904: $ff
	rst $38                                          ; $7905: $ff
	rst $38                                          ; $7906: $ff
	rst $38                                          ; $7907: $ff
	rst $38                                          ; $7908: $ff
	rst $38                                          ; $7909: $ff
	rst $38                                          ; $790a: $ff
	rst $38                                          ; $790b: $ff
	rst $38                                          ; $790c: $ff
	rst $38                                          ; $790d: $ff
	rst $38                                          ; $790e: $ff
	rst $38                                          ; $790f: $ff
	rst $38                                          ; $7910: $ff
	rst $38                                          ; $7911: $ff
	rst $38                                          ; $7912: $ff
	rst $38                                          ; $7913: $ff
	rst $38                                          ; $7914: $ff
	rst $38                                          ; $7915: $ff
	rst $38                                          ; $7916: $ff
	rst $38                                          ; $7917: $ff
	rst $38                                          ; $7918: $ff
	rst $38                                          ; $7919: $ff
	rst $38                                          ; $791a: $ff
	rst $38                                          ; $791b: $ff
	rst $38                                          ; $791c: $ff
	rst $38                                          ; $791d: $ff
	rst $38                                          ; $791e: $ff
	rst $38                                          ; $791f: $ff
	rst $38                                          ; $7920: $ff
	rst $38                                          ; $7921: $ff
	rst $38                                          ; $7922: $ff
	rst $38                                          ; $7923: $ff
	rst $38                                          ; $7924: $ff
	rst $38                                          ; $7925: $ff
	rst $38                                          ; $7926: $ff
	rst $38                                          ; $7927: $ff
	rst $38                                          ; $7928: $ff
	rst $38                                          ; $7929: $ff
	rst $38                                          ; $792a: $ff
	rst $38                                          ; $792b: $ff
	rst $38                                          ; $792c: $ff
	rst $38                                          ; $792d: $ff
	rst $38                                          ; $792e: $ff
	rst $38                                          ; $792f: $ff
	rst $38                                          ; $7930: $ff
	rst $38                                          ; $7931: $ff
	rst $38                                          ; $7932: $ff
	rst $38                                          ; $7933: $ff
	rst $38                                          ; $7934: $ff
	rst $38                                          ; $7935: $ff
	rst $38                                          ; $7936: $ff
	rst $38                                          ; $7937: $ff
	rst $38                                          ; $7938: $ff
	rst $38                                          ; $7939: $ff
	rst $38                                          ; $793a: $ff
	rst $38                                          ; $793b: $ff
	rst $38                                          ; $793c: $ff
	rst $38                                          ; $793d: $ff
	rst $38                                          ; $793e: $ff
	rst $38                                          ; $793f: $ff
	rst $38                                          ; $7940: $ff
	rst $38                                          ; $7941: $ff
	rst $38                                          ; $7942: $ff
	rst $38                                          ; $7943: $ff
	rst $38                                          ; $7944: $ff
	rst $38                                          ; $7945: $ff
	rst $38                                          ; $7946: $ff
	rst $38                                          ; $7947: $ff
	rst $38                                          ; $7948: $ff
	rst $38                                          ; $7949: $ff
	rst $38                                          ; $794a: $ff
	rst $38                                          ; $794b: $ff
	rst $38                                          ; $794c: $ff
	rst $38                                          ; $794d: $ff
	rst $38                                          ; $794e: $ff
	rst $38                                          ; $794f: $ff
	rst $38                                          ; $7950: $ff
	rst $38                                          ; $7951: $ff
	rst $38                                          ; $7952: $ff
	rst $38                                          ; $7953: $ff
	rst $38                                          ; $7954: $ff
	rst $38                                          ; $7955: $ff
	rst $38                                          ; $7956: $ff
	rst $38                                          ; $7957: $ff
	rst $38                                          ; $7958: $ff
	rst $38                                          ; $7959: $ff
	rst $38                                          ; $795a: $ff
	rst $38                                          ; $795b: $ff
	rst $38                                          ; $795c: $ff
	rst $38                                          ; $795d: $ff
	rst $38                                          ; $795e: $ff
	rst $38                                          ; $795f: $ff
	rst $38                                          ; $7960: $ff
	rst $38                                          ; $7961: $ff
	rst $38                                          ; $7962: $ff
	rst $38                                          ; $7963: $ff
	rst $38                                          ; $7964: $ff
	rst $38                                          ; $7965: $ff
	rst $38                                          ; $7966: $ff
	rst $38                                          ; $7967: $ff
	rst $38                                          ; $7968: $ff
	rst $38                                          ; $7969: $ff
	rst $38                                          ; $796a: $ff
	rst $38                                          ; $796b: $ff
	rst $38                                          ; $796c: $ff
	rst $38                                          ; $796d: $ff
	rst $38                                          ; $796e: $ff
	rst $38                                          ; $796f: $ff
	rst $38                                          ; $7970: $ff
	rst $38                                          ; $7971: $ff
	rst $38                                          ; $7972: $ff
	rst $38                                          ; $7973: $ff
	rst $38                                          ; $7974: $ff
	rst $38                                          ; $7975: $ff
	rst $38                                          ; $7976: $ff
	rst $38                                          ; $7977: $ff
	rst $38                                          ; $7978: $ff
	rst $38                                          ; $7979: $ff
	rst $38                                          ; $797a: $ff
	rst $38                                          ; $797b: $ff
	rst $38                                          ; $797c: $ff
	rst $38                                          ; $797d: $ff
	rst $38                                          ; $797e: $ff
	rst $38                                          ; $797f: $ff
	rst $38                                          ; $7980: $ff
	rst $38                                          ; $7981: $ff
	rst $38                                          ; $7982: $ff
	rst $38                                          ; $7983: $ff
	rst $38                                          ; $7984: $ff
	rst $38                                          ; $7985: $ff
	rst $38                                          ; $7986: $ff
	rst $38                                          ; $7987: $ff
	rst $38                                          ; $7988: $ff
	rst $38                                          ; $7989: $ff
	rst $38                                          ; $798a: $ff
	rst $38                                          ; $798b: $ff
	rst $38                                          ; $798c: $ff
	rst $38                                          ; $798d: $ff
	rst $38                                          ; $798e: $ff
	rst $38                                          ; $798f: $ff
	rst $38                                          ; $7990: $ff
	rst $38                                          ; $7991: $ff
	rst $38                                          ; $7992: $ff
	rst $38                                          ; $7993: $ff
	rst $38                                          ; $7994: $ff
	rst $38                                          ; $7995: $ff
	rst $38                                          ; $7996: $ff
	rst $38                                          ; $7997: $ff
	rst $38                                          ; $7998: $ff
	rst $38                                          ; $7999: $ff
	rst $38                                          ; $799a: $ff
	rst $38                                          ; $799b: $ff
	rst $38                                          ; $799c: $ff
	rst $38                                          ; $799d: $ff
	rst $38                                          ; $799e: $ff
	rst $38                                          ; $799f: $ff
	rst $38                                          ; $79a0: $ff
	rst $38                                          ; $79a1: $ff
	rst $38                                          ; $79a2: $ff
	rst $38                                          ; $79a3: $ff
	rst $38                                          ; $79a4: $ff
	rst $38                                          ; $79a5: $ff
	rst $38                                          ; $79a6: $ff
	rst $38                                          ; $79a7: $ff
	rst $38                                          ; $79a8: $ff
	rst $38                                          ; $79a9: $ff
	rst $38                                          ; $79aa: $ff
	rst $38                                          ; $79ab: $ff
	rst $38                                          ; $79ac: $ff
	rst $38                                          ; $79ad: $ff
	rst $38                                          ; $79ae: $ff
	rst $38                                          ; $79af: $ff
	rst $38                                          ; $79b0: $ff
	rst $38                                          ; $79b1: $ff
	rst $38                                          ; $79b2: $ff
	rst $38                                          ; $79b3: $ff
	rst $38                                          ; $79b4: $ff
	rst $38                                          ; $79b5: $ff
	rst $38                                          ; $79b6: $ff
	rst $38                                          ; $79b7: $ff
	rst $38                                          ; $79b8: $ff
	rst $38                                          ; $79b9: $ff
	rst $38                                          ; $79ba: $ff
	rst $38                                          ; $79bb: $ff
	rst $38                                          ; $79bc: $ff
	rst $38                                          ; $79bd: $ff
	rst $38                                          ; $79be: $ff
	rst $38                                          ; $79bf: $ff
	rst $38                                          ; $79c0: $ff
	rst $38                                          ; $79c1: $ff
	rst $38                                          ; $79c2: $ff
	rst $38                                          ; $79c3: $ff
	rst $38                                          ; $79c4: $ff
	rst $38                                          ; $79c5: $ff
	rst $38                                          ; $79c6: $ff
	rst $38                                          ; $79c7: $ff
	rst $38                                          ; $79c8: $ff
	rst $38                                          ; $79c9: $ff
	rst $38                                          ; $79ca: $ff
	rst $38                                          ; $79cb: $ff
	rst $38                                          ; $79cc: $ff
	rst $38                                          ; $79cd: $ff
	rst $38                                          ; $79ce: $ff
	rst $38                                          ; $79cf: $ff
	rst $38                                          ; $79d0: $ff
	rst $38                                          ; $79d1: $ff
	rst $38                                          ; $79d2: $ff
	rst $38                                          ; $79d3: $ff
	rst $38                                          ; $79d4: $ff
	rst $38                                          ; $79d5: $ff
	rst $38                                          ; $79d6: $ff
	rst $38                                          ; $79d7: $ff
	rst $38                                          ; $79d8: $ff
	rst $38                                          ; $79d9: $ff
	rst $38                                          ; $79da: $ff
	rst $38                                          ; $79db: $ff
	rst $38                                          ; $79dc: $ff
	rst $38                                          ; $79dd: $ff
	rst $38                                          ; $79de: $ff
	rst $38                                          ; $79df: $ff
	rst $38                                          ; $79e0: $ff
	rst $38                                          ; $79e1: $ff
	rst $38                                          ; $79e2: $ff
	rst $38                                          ; $79e3: $ff
	rst $38                                          ; $79e4: $ff
	rst $38                                          ; $79e5: $ff
	rst $38                                          ; $79e6: $ff
	rst $38                                          ; $79e7: $ff
	rst $38                                          ; $79e8: $ff
	rst $38                                          ; $79e9: $ff
	rst $38                                          ; $79ea: $ff
	rst $38                                          ; $79eb: $ff
	rst $38                                          ; $79ec: $ff
	rst $38                                          ; $79ed: $ff
	rst $38                                          ; $79ee: $ff
	rst $38                                          ; $79ef: $ff
	rst $38                                          ; $79f0: $ff
	rst $38                                          ; $79f1: $ff
	rst $38                                          ; $79f2: $ff
	rst $38                                          ; $79f3: $ff
	rst $38                                          ; $79f4: $ff
	rst $38                                          ; $79f5: $ff
	rst $38                                          ; $79f6: $ff
	rst $38                                          ; $79f7: $ff
	rst $38                                          ; $79f8: $ff
	rst $38                                          ; $79f9: $ff
	rst $38                                          ; $79fa: $ff
	rst $38                                          ; $79fb: $ff
	rst $38                                          ; $79fc: $ff
	rst $38                                          ; $79fd: $ff
	rst $38                                          ; $79fe: $ff
	rst $38                                          ; $79ff: $ff
	rst $38                                          ; $7a00: $ff
	rst $38                                          ; $7a01: $ff
	rst $38                                          ; $7a02: $ff
	rst $38                                          ; $7a03: $ff
	rst $38                                          ; $7a04: $ff
	rst $38                                          ; $7a05: $ff
	rst $38                                          ; $7a06: $ff
	rst $38                                          ; $7a07: $ff
	rst $38                                          ; $7a08: $ff
	rst $38                                          ; $7a09: $ff
	rst $38                                          ; $7a0a: $ff
	rst $38                                          ; $7a0b: $ff
	rst $38                                          ; $7a0c: $ff
	rst $38                                          ; $7a0d: $ff
	rst $38                                          ; $7a0e: $ff
	rst $38                                          ; $7a0f: $ff
	rst $38                                          ; $7a10: $ff
	rst $38                                          ; $7a11: $ff
	rst $38                                          ; $7a12: $ff
	rst $38                                          ; $7a13: $ff
	rst $38                                          ; $7a14: $ff
	rst $38                                          ; $7a15: $ff
	rst $38                                          ; $7a16: $ff
	rst $38                                          ; $7a17: $ff
	rst $38                                          ; $7a18: $ff
	rst $38                                          ; $7a19: $ff
	rst $38                                          ; $7a1a: $ff
	rst $38                                          ; $7a1b: $ff
	rst $38                                          ; $7a1c: $ff
	rst $38                                          ; $7a1d: $ff
	rst $38                                          ; $7a1e: $ff
	rst $38                                          ; $7a1f: $ff
	rst $38                                          ; $7a20: $ff
	rst $38                                          ; $7a21: $ff
	rst $38                                          ; $7a22: $ff
	rst $38                                          ; $7a23: $ff
	rst $38                                          ; $7a24: $ff
	rst $38                                          ; $7a25: $ff
	rst $38                                          ; $7a26: $ff
	rst $38                                          ; $7a27: $ff
	rst $38                                          ; $7a28: $ff
	rst $38                                          ; $7a29: $ff
	rst $38                                          ; $7a2a: $ff
	rst $38                                          ; $7a2b: $ff
	rst $38                                          ; $7a2c: $ff
	rst $38                                          ; $7a2d: $ff
	rst $38                                          ; $7a2e: $ff
	rst $38                                          ; $7a2f: $ff
	rst $38                                          ; $7a30: $ff
	rst $38                                          ; $7a31: $ff
	rst $38                                          ; $7a32: $ff
	rst $38                                          ; $7a33: $ff
	rst $38                                          ; $7a34: $ff
	rst $38                                          ; $7a35: $ff
	rst $38                                          ; $7a36: $ff
	rst $38                                          ; $7a37: $ff
	rst $38                                          ; $7a38: $ff
	rst $38                                          ; $7a39: $ff
	rst $38                                          ; $7a3a: $ff
	rst $38                                          ; $7a3b: $ff
	rst $38                                          ; $7a3c: $ff
	rst $38                                          ; $7a3d: $ff
	rst $38                                          ; $7a3e: $ff
	rst $38                                          ; $7a3f: $ff
	rst $38                                          ; $7a40: $ff
	rst $38                                          ; $7a41: $ff
	rst $38                                          ; $7a42: $ff
	rst $38                                          ; $7a43: $ff
	rst $38                                          ; $7a44: $ff
	rst $38                                          ; $7a45: $ff
	rst $38                                          ; $7a46: $ff
	rst $38                                          ; $7a47: $ff
	rst $38                                          ; $7a48: $ff
	rst $38                                          ; $7a49: $ff
	rst $38                                          ; $7a4a: $ff
	rst $38                                          ; $7a4b: $ff
	rst $38                                          ; $7a4c: $ff
	rst $38                                          ; $7a4d: $ff
	rst $38                                          ; $7a4e: $ff
	rst $38                                          ; $7a4f: $ff
	rst $38                                          ; $7a50: $ff
	rst $38                                          ; $7a51: $ff
	rst $38                                          ; $7a52: $ff
	rst $38                                          ; $7a53: $ff
	rst $38                                          ; $7a54: $ff
	rst $38                                          ; $7a55: $ff
	rst $38                                          ; $7a56: $ff
	rst $38                                          ; $7a57: $ff
	rst $38                                          ; $7a58: $ff
	rst $38                                          ; $7a59: $ff
	rst $38                                          ; $7a5a: $ff
	rst $38                                          ; $7a5b: $ff
	rst $38                                          ; $7a5c: $ff
	rst $38                                          ; $7a5d: $ff
	rst $38                                          ; $7a5e: $ff
	rst $38                                          ; $7a5f: $ff
	rst $38                                          ; $7a60: $ff
	rst $38                                          ; $7a61: $ff
	rst $38                                          ; $7a62: $ff
	rst $38                                          ; $7a63: $ff
	rst $38                                          ; $7a64: $ff
	rst $38                                          ; $7a65: $ff
	rst $38                                          ; $7a66: $ff
	rst $38                                          ; $7a67: $ff
	rst $38                                          ; $7a68: $ff
	rst $38                                          ; $7a69: $ff
	rst $38                                          ; $7a6a: $ff
	rst $38                                          ; $7a6b: $ff
	rst $38                                          ; $7a6c: $ff
	rst $38                                          ; $7a6d: $ff
	rst $38                                          ; $7a6e: $ff
	rst $38                                          ; $7a6f: $ff
	rst $38                                          ; $7a70: $ff
	rst $38                                          ; $7a71: $ff
	rst $38                                          ; $7a72: $ff
	rst $38                                          ; $7a73: $ff
	rst $38                                          ; $7a74: $ff
	rst $38                                          ; $7a75: $ff
	rst $38                                          ; $7a76: $ff
	rst $38                                          ; $7a77: $ff
	rst $38                                          ; $7a78: $ff
	rst $38                                          ; $7a79: $ff
	rst $38                                          ; $7a7a: $ff
	rst $38                                          ; $7a7b: $ff
	rst $38                                          ; $7a7c: $ff
	rst $38                                          ; $7a7d: $ff
	rst $38                                          ; $7a7e: $ff
	rst $38                                          ; $7a7f: $ff
	rst $38                                          ; $7a80: $ff
	rst $38                                          ; $7a81: $ff
	rst $38                                          ; $7a82: $ff
	rst $38                                          ; $7a83: $ff
	rst $38                                          ; $7a84: $ff
	rst $38                                          ; $7a85: $ff
	rst $38                                          ; $7a86: $ff
	rst $38                                          ; $7a87: $ff
	rst $38                                          ; $7a88: $ff
	rst $38                                          ; $7a89: $ff
	rst $38                                          ; $7a8a: $ff
	rst $38                                          ; $7a8b: $ff
	rst $38                                          ; $7a8c: $ff
	rst $38                                          ; $7a8d: $ff
	rst $38                                          ; $7a8e: $ff
	rst $38                                          ; $7a8f: $ff
	rst $38                                          ; $7a90: $ff
	rst $38                                          ; $7a91: $ff
	rst $38                                          ; $7a92: $ff
	rst $38                                          ; $7a93: $ff
	rst $38                                          ; $7a94: $ff
	rst $38                                          ; $7a95: $ff
	rst $38                                          ; $7a96: $ff
	rst $38                                          ; $7a97: $ff
	rst $38                                          ; $7a98: $ff
	rst $38                                          ; $7a99: $ff
	rst $38                                          ; $7a9a: $ff
	rst $38                                          ; $7a9b: $ff
	rst $38                                          ; $7a9c: $ff
	rst $38                                          ; $7a9d: $ff
	rst $38                                          ; $7a9e: $ff
	rst $38                                          ; $7a9f: $ff
	rst $38                                          ; $7aa0: $ff
	rst $38                                          ; $7aa1: $ff
	rst $38                                          ; $7aa2: $ff
	rst $38                                          ; $7aa3: $ff
	rst $38                                          ; $7aa4: $ff
	rst $38                                          ; $7aa5: $ff
	rst $38                                          ; $7aa6: $ff
	rst $38                                          ; $7aa7: $ff
	rst $38                                          ; $7aa8: $ff
	rst $38                                          ; $7aa9: $ff
	rst $38                                          ; $7aaa: $ff
	rst $38                                          ; $7aab: $ff
	rst $38                                          ; $7aac: $ff
	rst $38                                          ; $7aad: $ff
	rst $38                                          ; $7aae: $ff
	rst $38                                          ; $7aaf: $ff
	rst $38                                          ; $7ab0: $ff
	rst $38                                          ; $7ab1: $ff
	rst $38                                          ; $7ab2: $ff
	rst $38                                          ; $7ab3: $ff
	rst $38                                          ; $7ab4: $ff
	rst $38                                          ; $7ab5: $ff
	rst $38                                          ; $7ab6: $ff
	rst $38                                          ; $7ab7: $ff
	rst $38                                          ; $7ab8: $ff
	rst $38                                          ; $7ab9: $ff
	rst $38                                          ; $7aba: $ff
	rst $38                                          ; $7abb: $ff
	rst $38                                          ; $7abc: $ff
	rst $38                                          ; $7abd: $ff
	rst $38                                          ; $7abe: $ff
	rst $38                                          ; $7abf: $ff
	rst $38                                          ; $7ac0: $ff
	rst $38                                          ; $7ac1: $ff
	rst $38                                          ; $7ac2: $ff
	rst $38                                          ; $7ac3: $ff
	rst $38                                          ; $7ac4: $ff
	rst $38                                          ; $7ac5: $ff
	rst $38                                          ; $7ac6: $ff
	rst $38                                          ; $7ac7: $ff
	rst $38                                          ; $7ac8: $ff
	rst $38                                          ; $7ac9: $ff
	rst $38                                          ; $7aca: $ff
	rst $38                                          ; $7acb: $ff
	rst $38                                          ; $7acc: $ff
	rst $38                                          ; $7acd: $ff
	rst $38                                          ; $7ace: $ff
	rst $38                                          ; $7acf: $ff
	rst $38                                          ; $7ad0: $ff
	rst $38                                          ; $7ad1: $ff
	rst $38                                          ; $7ad2: $ff
	rst $38                                          ; $7ad3: $ff
	rst $38                                          ; $7ad4: $ff
	rst $38                                          ; $7ad5: $ff
	rst $38                                          ; $7ad6: $ff
	rst $38                                          ; $7ad7: $ff
	rst $38                                          ; $7ad8: $ff
	rst $38                                          ; $7ad9: $ff
	rst $38                                          ; $7ada: $ff
	rst $38                                          ; $7adb: $ff
	rst $38                                          ; $7adc: $ff
	rst $38                                          ; $7add: $ff
	rst $38                                          ; $7ade: $ff
	rst $38                                          ; $7adf: $ff
	rst $38                                          ; $7ae0: $ff
	rst $38                                          ; $7ae1: $ff
	rst $38                                          ; $7ae2: $ff
	rst $38                                          ; $7ae3: $ff
	rst $38                                          ; $7ae4: $ff
	rst $38                                          ; $7ae5: $ff
	rst $38                                          ; $7ae6: $ff
	rst $38                                          ; $7ae7: $ff
	rst $38                                          ; $7ae8: $ff
	rst $38                                          ; $7ae9: $ff
	rst $38                                          ; $7aea: $ff
	rst $38                                          ; $7aeb: $ff
	rst $38                                          ; $7aec: $ff
	rst $38                                          ; $7aed: $ff
	rst $38                                          ; $7aee: $ff
	rst $38                                          ; $7aef: $ff
	rst $38                                          ; $7af0: $ff
	rst $38                                          ; $7af1: $ff
	rst $38                                          ; $7af2: $ff
	rst $38                                          ; $7af3: $ff
	rst $38                                          ; $7af4: $ff
	rst $38                                          ; $7af5: $ff
	rst $38                                          ; $7af6: $ff
	rst $38                                          ; $7af7: $ff
	rst $38                                          ; $7af8: $ff
	rst $38                                          ; $7af9: $ff
	rst $38                                          ; $7afa: $ff
	rst $38                                          ; $7afb: $ff
	rst $38                                          ; $7afc: $ff
	rst $38                                          ; $7afd: $ff
	rst $38                                          ; $7afe: $ff
	rst $38                                          ; $7aff: $ff
	rst $38                                          ; $7b00: $ff
	rst $38                                          ; $7b01: $ff
	rst $38                                          ; $7b02: $ff
	rst $38                                          ; $7b03: $ff
	rst $38                                          ; $7b04: $ff
	rst $38                                          ; $7b05: $ff
	rst $38                                          ; $7b06: $ff
	rst $38                                          ; $7b07: $ff
	rst $38                                          ; $7b08: $ff
	rst $38                                          ; $7b09: $ff
	rst $38                                          ; $7b0a: $ff
	rst $38                                          ; $7b0b: $ff
	rst $38                                          ; $7b0c: $ff
	rst $38                                          ; $7b0d: $ff
	rst $38                                          ; $7b0e: $ff
	rst $38                                          ; $7b0f: $ff
	rst $38                                          ; $7b10: $ff
	rst $38                                          ; $7b11: $ff
	rst $38                                          ; $7b12: $ff
	rst $38                                          ; $7b13: $ff
	rst $38                                          ; $7b14: $ff
	rst $38                                          ; $7b15: $ff
	rst $38                                          ; $7b16: $ff
	rst $38                                          ; $7b17: $ff
	rst $38                                          ; $7b18: $ff
	rst $38                                          ; $7b19: $ff
	rst $38                                          ; $7b1a: $ff
	rst $38                                          ; $7b1b: $ff
	rst $38                                          ; $7b1c: $ff
	rst $38                                          ; $7b1d: $ff
	rst $38                                          ; $7b1e: $ff
	rst $38                                          ; $7b1f: $ff
	rst $38                                          ; $7b20: $ff
	rst $38                                          ; $7b21: $ff
	rst $38                                          ; $7b22: $ff
	rst $38                                          ; $7b23: $ff
	rst $38                                          ; $7b24: $ff
	rst $38                                          ; $7b25: $ff
	rst $38                                          ; $7b26: $ff
	rst $38                                          ; $7b27: $ff
	rst $38                                          ; $7b28: $ff
	rst $38                                          ; $7b29: $ff
	rst $38                                          ; $7b2a: $ff
	rst $38                                          ; $7b2b: $ff
	rst $38                                          ; $7b2c: $ff
	rst $38                                          ; $7b2d: $ff
	rst $38                                          ; $7b2e: $ff
	rst $38                                          ; $7b2f: $ff
	rst $38                                          ; $7b30: $ff
	rst $38                                          ; $7b31: $ff
	rst $38                                          ; $7b32: $ff
	rst $38                                          ; $7b33: $ff
	rst $38                                          ; $7b34: $ff
	rst $38                                          ; $7b35: $ff
	rst $38                                          ; $7b36: $ff
	rst $38                                          ; $7b37: $ff
	rst $38                                          ; $7b38: $ff
	rst $38                                          ; $7b39: $ff
	rst $38                                          ; $7b3a: $ff
	rst $38                                          ; $7b3b: $ff
	rst $38                                          ; $7b3c: $ff
	rst $38                                          ; $7b3d: $ff
	rst $38                                          ; $7b3e: $ff
	rst $38                                          ; $7b3f: $ff
	rst $38                                          ; $7b40: $ff
	rst $38                                          ; $7b41: $ff
	rst $38                                          ; $7b42: $ff
	rst $38                                          ; $7b43: $ff
	rst $38                                          ; $7b44: $ff
	rst $38                                          ; $7b45: $ff
	rst $38                                          ; $7b46: $ff
	rst $38                                          ; $7b47: $ff
	rst $38                                          ; $7b48: $ff
	rst $38                                          ; $7b49: $ff
	rst $38                                          ; $7b4a: $ff
	rst $38                                          ; $7b4b: $ff
	rst $38                                          ; $7b4c: $ff
	rst $38                                          ; $7b4d: $ff
	rst $38                                          ; $7b4e: $ff
	rst $38                                          ; $7b4f: $ff
	rst $38                                          ; $7b50: $ff
	rst $38                                          ; $7b51: $ff
	rst $38                                          ; $7b52: $ff
	rst $38                                          ; $7b53: $ff
	rst $38                                          ; $7b54: $ff
	rst $38                                          ; $7b55: $ff
	rst $38                                          ; $7b56: $ff
	rst $38                                          ; $7b57: $ff
	rst $38                                          ; $7b58: $ff
	rst $38                                          ; $7b59: $ff
	rst $38                                          ; $7b5a: $ff
	rst $38                                          ; $7b5b: $ff
	rst $38                                          ; $7b5c: $ff
	rst $38                                          ; $7b5d: $ff
	rst $38                                          ; $7b5e: $ff
	rst $38                                          ; $7b5f: $ff
	rst $38                                          ; $7b60: $ff
	rst $38                                          ; $7b61: $ff
	rst $38                                          ; $7b62: $ff
	rst $38                                          ; $7b63: $ff
	rst $38                                          ; $7b64: $ff
	rst $38                                          ; $7b65: $ff
	rst $38                                          ; $7b66: $ff
	rst $38                                          ; $7b67: $ff
	rst $38                                          ; $7b68: $ff
	rst $38                                          ; $7b69: $ff
	rst $38                                          ; $7b6a: $ff
	rst $38                                          ; $7b6b: $ff
	rst $38                                          ; $7b6c: $ff
	rst $38                                          ; $7b6d: $ff
	rst $38                                          ; $7b6e: $ff
	rst $38                                          ; $7b6f: $ff
	rst $38                                          ; $7b70: $ff
	rst $38                                          ; $7b71: $ff
	rst $38                                          ; $7b72: $ff
	rst $38                                          ; $7b73: $ff
	rst $38                                          ; $7b74: $ff
	rst $38                                          ; $7b75: $ff
	rst $38                                          ; $7b76: $ff
	rst $38                                          ; $7b77: $ff
	rst $38                                          ; $7b78: $ff
	rst $38                                          ; $7b79: $ff
	rst $38                                          ; $7b7a: $ff
	rst $38                                          ; $7b7b: $ff
	rst $38                                          ; $7b7c: $ff
	rst $38                                          ; $7b7d: $ff
	rst $38                                          ; $7b7e: $ff
	rst $38                                          ; $7b7f: $ff
	rst $38                                          ; $7b80: $ff
	rst $38                                          ; $7b81: $ff
	rst $38                                          ; $7b82: $ff
	rst $38                                          ; $7b83: $ff
	rst $38                                          ; $7b84: $ff
	rst $38                                          ; $7b85: $ff
	rst $38                                          ; $7b86: $ff
	rst $38                                          ; $7b87: $ff
	rst $38                                          ; $7b88: $ff
	rst $38                                          ; $7b89: $ff
	rst $38                                          ; $7b8a: $ff
	rst $38                                          ; $7b8b: $ff
	rst $38                                          ; $7b8c: $ff
	rst $38                                          ; $7b8d: $ff
	rst $38                                          ; $7b8e: $ff
	rst $38                                          ; $7b8f: $ff
	rst $38                                          ; $7b90: $ff
	rst $38                                          ; $7b91: $ff
	rst $38                                          ; $7b92: $ff
	rst $38                                          ; $7b93: $ff
	rst $38                                          ; $7b94: $ff
	rst $38                                          ; $7b95: $ff
	rst $38                                          ; $7b96: $ff
	rst $38                                          ; $7b97: $ff
	rst $38                                          ; $7b98: $ff
	rst $38                                          ; $7b99: $ff
	rst $38                                          ; $7b9a: $ff
	rst $38                                          ; $7b9b: $ff
	rst $38                                          ; $7b9c: $ff
	rst $38                                          ; $7b9d: $ff
	rst $38                                          ; $7b9e: $ff
	rst $38                                          ; $7b9f: $ff
	rst $38                                          ; $7ba0: $ff
	rst $38                                          ; $7ba1: $ff
	rst $38                                          ; $7ba2: $ff
	rst $38                                          ; $7ba3: $ff
	rst $38                                          ; $7ba4: $ff
	rst $38                                          ; $7ba5: $ff
	rst $38                                          ; $7ba6: $ff
	rst $38                                          ; $7ba7: $ff
	rst $38                                          ; $7ba8: $ff
	rst $38                                          ; $7ba9: $ff
	rst $38                                          ; $7baa: $ff
	rst $38                                          ; $7bab: $ff
	rst $38                                          ; $7bac: $ff
	rst $38                                          ; $7bad: $ff
	rst $38                                          ; $7bae: $ff
	rst $38                                          ; $7baf: $ff
	rst $38                                          ; $7bb0: $ff
	rst $38                                          ; $7bb1: $ff
	rst $38                                          ; $7bb2: $ff
	rst $38                                          ; $7bb3: $ff
	rst $38                                          ; $7bb4: $ff
	rst $38                                          ; $7bb5: $ff
	rst $38                                          ; $7bb6: $ff
	rst $38                                          ; $7bb7: $ff
	rst $38                                          ; $7bb8: $ff
	rst $38                                          ; $7bb9: $ff
	rst $38                                          ; $7bba: $ff
	rst $38                                          ; $7bbb: $ff
	rst $38                                          ; $7bbc: $ff
	rst $38                                          ; $7bbd: $ff
	rst $38                                          ; $7bbe: $ff
	rst $38                                          ; $7bbf: $ff
	rst $38                                          ; $7bc0: $ff
	rst $38                                          ; $7bc1: $ff
	rst $38                                          ; $7bc2: $ff
	rst $38                                          ; $7bc3: $ff
	rst $38                                          ; $7bc4: $ff
	rst $38                                          ; $7bc5: $ff
	rst $38                                          ; $7bc6: $ff
	rst $38                                          ; $7bc7: $ff
	rst $38                                          ; $7bc8: $ff
	rst $38                                          ; $7bc9: $ff
	rst $38                                          ; $7bca: $ff
	rst $38                                          ; $7bcb: $ff
	rst $38                                          ; $7bcc: $ff
	rst $38                                          ; $7bcd: $ff
	rst $38                                          ; $7bce: $ff
	rst $38                                          ; $7bcf: $ff
	rst $38                                          ; $7bd0: $ff
	rst $38                                          ; $7bd1: $ff
	rst $38                                          ; $7bd2: $ff
	rst $38                                          ; $7bd3: $ff
	rst $38                                          ; $7bd4: $ff
	rst $38                                          ; $7bd5: $ff
	rst $38                                          ; $7bd6: $ff
	rst $38                                          ; $7bd7: $ff
	rst $38                                          ; $7bd8: $ff
	rst $38                                          ; $7bd9: $ff
	rst $38                                          ; $7bda: $ff
	rst $38                                          ; $7bdb: $ff
	rst $38                                          ; $7bdc: $ff
	rst $38                                          ; $7bdd: $ff
	rst $38                                          ; $7bde: $ff
	rst $38                                          ; $7bdf: $ff
	rst $38                                          ; $7be0: $ff
	rst $38                                          ; $7be1: $ff
	rst $38                                          ; $7be2: $ff
	rst $38                                          ; $7be3: $ff
	rst $38                                          ; $7be4: $ff
	rst $38                                          ; $7be5: $ff
	rst $38                                          ; $7be6: $ff
	rst $38                                          ; $7be7: $ff
	rst $38                                          ; $7be8: $ff
	rst $38                                          ; $7be9: $ff
	rst $38                                          ; $7bea: $ff
	rst $38                                          ; $7beb: $ff
	rst $38                                          ; $7bec: $ff
	rst $38                                          ; $7bed: $ff
	rst $38                                          ; $7bee: $ff
	rst $38                                          ; $7bef: $ff
	rst $38                                          ; $7bf0: $ff
	rst $38                                          ; $7bf1: $ff
	rst $38                                          ; $7bf2: $ff
	rst $38                                          ; $7bf3: $ff
	rst $38                                          ; $7bf4: $ff
	rst $38                                          ; $7bf5: $ff
	rst $38                                          ; $7bf6: $ff
	rst $38                                          ; $7bf7: $ff
	rst $38                                          ; $7bf8: $ff
	rst $38                                          ; $7bf9: $ff
	rst $38                                          ; $7bfa: $ff
	rst $38                                          ; $7bfb: $ff
	rst $38                                          ; $7bfc: $ff
	rst $38                                          ; $7bfd: $ff
	rst $38                                          ; $7bfe: $ff
	rst $38                                          ; $7bff: $ff
	rst $38                                          ; $7c00: $ff
	rst $38                                          ; $7c01: $ff
	rst $38                                          ; $7c02: $ff
	rst $38                                          ; $7c03: $ff
	rst $38                                          ; $7c04: $ff
	rst $38                                          ; $7c05: $ff
	rst $38                                          ; $7c06: $ff
	rst $38                                          ; $7c07: $ff
	rst $38                                          ; $7c08: $ff
	rst $38                                          ; $7c09: $ff
	rst $38                                          ; $7c0a: $ff
	rst $38                                          ; $7c0b: $ff
	rst $38                                          ; $7c0c: $ff
	rst $38                                          ; $7c0d: $ff
	rst $38                                          ; $7c0e: $ff
	rst $38                                          ; $7c0f: $ff
	rst $38                                          ; $7c10: $ff
	rst $38                                          ; $7c11: $ff
	rst $38                                          ; $7c12: $ff
	rst $38                                          ; $7c13: $ff
	rst $38                                          ; $7c14: $ff
	rst $38                                          ; $7c15: $ff
	rst $38                                          ; $7c16: $ff
	rst $38                                          ; $7c17: $ff
	rst $38                                          ; $7c18: $ff
	rst $38                                          ; $7c19: $ff
	rst $38                                          ; $7c1a: $ff
	rst $38                                          ; $7c1b: $ff
	rst $38                                          ; $7c1c: $ff
	rst $38                                          ; $7c1d: $ff
	rst $38                                          ; $7c1e: $ff
	rst $38                                          ; $7c1f: $ff
	rst $38                                          ; $7c20: $ff
	rst $38                                          ; $7c21: $ff
	rst $38                                          ; $7c22: $ff
	rst $38                                          ; $7c23: $ff
	rst $38                                          ; $7c24: $ff
	rst $38                                          ; $7c25: $ff
	rst $38                                          ; $7c26: $ff
	rst $38                                          ; $7c27: $ff
	rst $38                                          ; $7c28: $ff
	rst $38                                          ; $7c29: $ff
	rst $38                                          ; $7c2a: $ff
	rst $38                                          ; $7c2b: $ff
	rst $38                                          ; $7c2c: $ff
	rst $38                                          ; $7c2d: $ff
	rst $38                                          ; $7c2e: $ff
	rst $38                                          ; $7c2f: $ff
	rst $38                                          ; $7c30: $ff
	rst $38                                          ; $7c31: $ff
	rst $38                                          ; $7c32: $ff
	rst $38                                          ; $7c33: $ff
	rst $38                                          ; $7c34: $ff
	rst $38                                          ; $7c35: $ff
	rst $38                                          ; $7c36: $ff
	rst $38                                          ; $7c37: $ff
	rst $38                                          ; $7c38: $ff
	rst $38                                          ; $7c39: $ff
	rst $38                                          ; $7c3a: $ff
	rst $38                                          ; $7c3b: $ff
	rst $38                                          ; $7c3c: $ff
	rst $38                                          ; $7c3d: $ff
	rst $38                                          ; $7c3e: $ff
	rst $38                                          ; $7c3f: $ff
	rst $38                                          ; $7c40: $ff
	rst $38                                          ; $7c41: $ff
	rst $38                                          ; $7c42: $ff
	rst $38                                          ; $7c43: $ff
	rst $38                                          ; $7c44: $ff
	rst $38                                          ; $7c45: $ff
	rst $38                                          ; $7c46: $ff
	rst $38                                          ; $7c47: $ff
	rst $38                                          ; $7c48: $ff
	rst $38                                          ; $7c49: $ff
	rst $38                                          ; $7c4a: $ff
	rst $38                                          ; $7c4b: $ff
	rst $38                                          ; $7c4c: $ff
	rst $38                                          ; $7c4d: $ff
	rst $38                                          ; $7c4e: $ff
	rst $38                                          ; $7c4f: $ff
	rst $38                                          ; $7c50: $ff
	rst $38                                          ; $7c51: $ff
	rst $38                                          ; $7c52: $ff
	rst $38                                          ; $7c53: $ff
	rst $38                                          ; $7c54: $ff
	rst $38                                          ; $7c55: $ff
	rst $38                                          ; $7c56: $ff
	rst $38                                          ; $7c57: $ff
	rst $38                                          ; $7c58: $ff
	rst $38                                          ; $7c59: $ff
	rst $38                                          ; $7c5a: $ff
	rst $38                                          ; $7c5b: $ff
	rst $38                                          ; $7c5c: $ff
	rst $38                                          ; $7c5d: $ff
	rst $38                                          ; $7c5e: $ff
	rst $38                                          ; $7c5f: $ff
	rst $38                                          ; $7c60: $ff
	rst $38                                          ; $7c61: $ff
	rst $38                                          ; $7c62: $ff
	rst $38                                          ; $7c63: $ff
	rst $38                                          ; $7c64: $ff
	rst $38                                          ; $7c65: $ff
	rst $38                                          ; $7c66: $ff
	rst $38                                          ; $7c67: $ff
	rst $38                                          ; $7c68: $ff
	rst $38                                          ; $7c69: $ff
	rst $38                                          ; $7c6a: $ff
	rst $38                                          ; $7c6b: $ff
	rst $38                                          ; $7c6c: $ff
	rst $38                                          ; $7c6d: $ff
	rst $38                                          ; $7c6e: $ff
	rst $38                                          ; $7c6f: $ff
	rst $38                                          ; $7c70: $ff
	rst $38                                          ; $7c71: $ff
	rst $38                                          ; $7c72: $ff
	rst $38                                          ; $7c73: $ff
	rst $38                                          ; $7c74: $ff
	rst $38                                          ; $7c75: $ff
	rst $38                                          ; $7c76: $ff
	rst $38                                          ; $7c77: $ff
	rst $38                                          ; $7c78: $ff
	rst $38                                          ; $7c79: $ff
	rst $38                                          ; $7c7a: $ff
	rst $38                                          ; $7c7b: $ff
	rst $38                                          ; $7c7c: $ff
	rst $38                                          ; $7c7d: $ff
	rst $38                                          ; $7c7e: $ff
	rst $38                                          ; $7c7f: $ff
	rst $38                                          ; $7c80: $ff
	rst $38                                          ; $7c81: $ff
	rst $38                                          ; $7c82: $ff
	rst $38                                          ; $7c83: $ff
	rst $38                                          ; $7c84: $ff
	rst $38                                          ; $7c85: $ff
	rst $38                                          ; $7c86: $ff
	rst $38                                          ; $7c87: $ff
	rst $38                                          ; $7c88: $ff
	rst $38                                          ; $7c89: $ff
	rst $38                                          ; $7c8a: $ff
	rst $38                                          ; $7c8b: $ff
	rst $38                                          ; $7c8c: $ff
	rst $38                                          ; $7c8d: $ff
	rst $38                                          ; $7c8e: $ff
	rst $38                                          ; $7c8f: $ff
	rst $38                                          ; $7c90: $ff
	rst $38                                          ; $7c91: $ff
	rst $38                                          ; $7c92: $ff
	rst $38                                          ; $7c93: $ff
	rst $38                                          ; $7c94: $ff
	rst $38                                          ; $7c95: $ff
	rst $38                                          ; $7c96: $ff
	rst $38                                          ; $7c97: $ff
	rst $38                                          ; $7c98: $ff
	rst $38                                          ; $7c99: $ff
	rst $38                                          ; $7c9a: $ff
	rst $38                                          ; $7c9b: $ff
	rst $38                                          ; $7c9c: $ff
	rst $38                                          ; $7c9d: $ff
	rst $38                                          ; $7c9e: $ff
	rst $38                                          ; $7c9f: $ff
	rst $38                                          ; $7ca0: $ff
	rst $38                                          ; $7ca1: $ff
	rst $38                                          ; $7ca2: $ff
	rst $38                                          ; $7ca3: $ff
	rst $38                                          ; $7ca4: $ff
	rst $38                                          ; $7ca5: $ff
	rst $38                                          ; $7ca6: $ff
	rst $38                                          ; $7ca7: $ff
	rst $38                                          ; $7ca8: $ff
	rst $38                                          ; $7ca9: $ff
	rst $38                                          ; $7caa: $ff
	rst $38                                          ; $7cab: $ff
	rst $38                                          ; $7cac: $ff
	rst $38                                          ; $7cad: $ff
	rst $38                                          ; $7cae: $ff
	rst $38                                          ; $7caf: $ff
	rst $38                                          ; $7cb0: $ff
	rst $38                                          ; $7cb1: $ff
	rst $38                                          ; $7cb2: $ff
	rst $38                                          ; $7cb3: $ff
	rst $38                                          ; $7cb4: $ff
	rst $38                                          ; $7cb5: $ff
	rst $38                                          ; $7cb6: $ff
	rst $38                                          ; $7cb7: $ff
	rst $38                                          ; $7cb8: $ff
	rst $38                                          ; $7cb9: $ff
	rst $38                                          ; $7cba: $ff
	rst $38                                          ; $7cbb: $ff
	rst $38                                          ; $7cbc: $ff
	rst $38                                          ; $7cbd: $ff
	rst $38                                          ; $7cbe: $ff
	rst $38                                          ; $7cbf: $ff
	rst $38                                          ; $7cc0: $ff
	rst $38                                          ; $7cc1: $ff
	rst $38                                          ; $7cc2: $ff
	rst $38                                          ; $7cc3: $ff
	rst $38                                          ; $7cc4: $ff
	rst $38                                          ; $7cc5: $ff
	rst $38                                          ; $7cc6: $ff
	rst $38                                          ; $7cc7: $ff
	rst $38                                          ; $7cc8: $ff
	rst $38                                          ; $7cc9: $ff
	rst $38                                          ; $7cca: $ff
	rst $38                                          ; $7ccb: $ff
	rst $38                                          ; $7ccc: $ff
	rst $38                                          ; $7ccd: $ff
	rst $38                                          ; $7cce: $ff
	rst $38                                          ; $7ccf: $ff
	rst $38                                          ; $7cd0: $ff
	rst $38                                          ; $7cd1: $ff
	rst $38                                          ; $7cd2: $ff
	rst $38                                          ; $7cd3: $ff
	rst $38                                          ; $7cd4: $ff
	rst $38                                          ; $7cd5: $ff
	rst $38                                          ; $7cd6: $ff
	rst $38                                          ; $7cd7: $ff
	rst $38                                          ; $7cd8: $ff
	rst $38                                          ; $7cd9: $ff
	rst $38                                          ; $7cda: $ff
	rst $38                                          ; $7cdb: $ff
	rst $38                                          ; $7cdc: $ff
	rst $38                                          ; $7cdd: $ff
	rst $38                                          ; $7cde: $ff
	rst $38                                          ; $7cdf: $ff
	rst $38                                          ; $7ce0: $ff
	rst $38                                          ; $7ce1: $ff
	rst $38                                          ; $7ce2: $ff
	rst $38                                          ; $7ce3: $ff
	rst $38                                          ; $7ce4: $ff
	rst $38                                          ; $7ce5: $ff
	rst $38                                          ; $7ce6: $ff
	rst $38                                          ; $7ce7: $ff
	rst $38                                          ; $7ce8: $ff
	rst $38                                          ; $7ce9: $ff
	rst $38                                          ; $7cea: $ff
	rst $38                                          ; $7ceb: $ff
	rst $38                                          ; $7cec: $ff
	rst $38                                          ; $7ced: $ff
	rst $38                                          ; $7cee: $ff
	rst $38                                          ; $7cef: $ff
	rst $38                                          ; $7cf0: $ff
	rst $38                                          ; $7cf1: $ff
	rst $38                                          ; $7cf2: $ff
	rst $38                                          ; $7cf3: $ff
	rst $38                                          ; $7cf4: $ff
	rst $38                                          ; $7cf5: $ff
	rst $38                                          ; $7cf6: $ff
	rst $38                                          ; $7cf7: $ff
	rst $38                                          ; $7cf8: $ff
	rst $38                                          ; $7cf9: $ff
	rst $38                                          ; $7cfa: $ff
	rst $38                                          ; $7cfb: $ff
	rst $38                                          ; $7cfc: $ff
	rst $38                                          ; $7cfd: $ff
	rst $38                                          ; $7cfe: $ff
	rst $38                                          ; $7cff: $ff
	rst $38                                          ; $7d00: $ff
	rst $38                                          ; $7d01: $ff
	rst $38                                          ; $7d02: $ff
	rst $38                                          ; $7d03: $ff
	rst $38                                          ; $7d04: $ff
	rst $38                                          ; $7d05: $ff
	rst $38                                          ; $7d06: $ff
	rst $38                                          ; $7d07: $ff
	rst $38                                          ; $7d08: $ff
	rst $38                                          ; $7d09: $ff
	rst $38                                          ; $7d0a: $ff
	rst $38                                          ; $7d0b: $ff
	rst $38                                          ; $7d0c: $ff
	rst $38                                          ; $7d0d: $ff
	rst $38                                          ; $7d0e: $ff
	rst $38                                          ; $7d0f: $ff
	rst $38                                          ; $7d10: $ff
	rst $38                                          ; $7d11: $ff
	rst $38                                          ; $7d12: $ff
	rst $38                                          ; $7d13: $ff
	rst $38                                          ; $7d14: $ff
	rst $38                                          ; $7d15: $ff
	rst $38                                          ; $7d16: $ff
	rst $38                                          ; $7d17: $ff
	rst $38                                          ; $7d18: $ff
	rst $38                                          ; $7d19: $ff
	rst $38                                          ; $7d1a: $ff
	rst $38                                          ; $7d1b: $ff
	rst $38                                          ; $7d1c: $ff
	rst $38                                          ; $7d1d: $ff
	rst $38                                          ; $7d1e: $ff
	rst $38                                          ; $7d1f: $ff
	rst $38                                          ; $7d20: $ff
	rst $38                                          ; $7d21: $ff
	rst $38                                          ; $7d22: $ff
	rst $38                                          ; $7d23: $ff
	rst $38                                          ; $7d24: $ff
	rst $38                                          ; $7d25: $ff
	rst $38                                          ; $7d26: $ff
	rst $38                                          ; $7d27: $ff
	rst $38                                          ; $7d28: $ff
	rst $38                                          ; $7d29: $ff
	rst $38                                          ; $7d2a: $ff
	rst $38                                          ; $7d2b: $ff
	rst $38                                          ; $7d2c: $ff
	rst $38                                          ; $7d2d: $ff
	rst $38                                          ; $7d2e: $ff
	rst $38                                          ; $7d2f: $ff
	rst $38                                          ; $7d30: $ff
	rst $38                                          ; $7d31: $ff
	rst $38                                          ; $7d32: $ff
	rst $38                                          ; $7d33: $ff
	rst $38                                          ; $7d34: $ff
	rst $38                                          ; $7d35: $ff
	rst $38                                          ; $7d36: $ff
	rst $38                                          ; $7d37: $ff
	rst $38                                          ; $7d38: $ff
	rst $38                                          ; $7d39: $ff
	rst $38                                          ; $7d3a: $ff
	rst $38                                          ; $7d3b: $ff
	rst $38                                          ; $7d3c: $ff
	rst $38                                          ; $7d3d: $ff
	rst $38                                          ; $7d3e: $ff
	rst $38                                          ; $7d3f: $ff
	rst $38                                          ; $7d40: $ff
	rst $38                                          ; $7d41: $ff
	rst $38                                          ; $7d42: $ff
	rst $38                                          ; $7d43: $ff
	rst $38                                          ; $7d44: $ff
	rst $38                                          ; $7d45: $ff
	rst $38                                          ; $7d46: $ff
	rst $38                                          ; $7d47: $ff
	rst $38                                          ; $7d48: $ff
	rst $38                                          ; $7d49: $ff
	rst $38                                          ; $7d4a: $ff
	rst $38                                          ; $7d4b: $ff
	rst $38                                          ; $7d4c: $ff
	rst $38                                          ; $7d4d: $ff
	rst $38                                          ; $7d4e: $ff
	rst $38                                          ; $7d4f: $ff
	rst $38                                          ; $7d50: $ff
	rst $38                                          ; $7d51: $ff
	rst $38                                          ; $7d52: $ff
	rst $38                                          ; $7d53: $ff
	rst $38                                          ; $7d54: $ff
	rst $38                                          ; $7d55: $ff
	rst $38                                          ; $7d56: $ff
	rst $38                                          ; $7d57: $ff
	rst $38                                          ; $7d58: $ff
	rst $38                                          ; $7d59: $ff
	rst $38                                          ; $7d5a: $ff
	rst $38                                          ; $7d5b: $ff
	rst $38                                          ; $7d5c: $ff
	rst $38                                          ; $7d5d: $ff
	rst $38                                          ; $7d5e: $ff
	rst $38                                          ; $7d5f: $ff
	rst $38                                          ; $7d60: $ff
	rst $38                                          ; $7d61: $ff
	rst $38                                          ; $7d62: $ff
	rst $38                                          ; $7d63: $ff
	rst $38                                          ; $7d64: $ff
	rst $38                                          ; $7d65: $ff
	rst $38                                          ; $7d66: $ff
	rst $38                                          ; $7d67: $ff
	rst $38                                          ; $7d68: $ff
	rst $38                                          ; $7d69: $ff
	rst $38                                          ; $7d6a: $ff
	rst $38                                          ; $7d6b: $ff
	rst $38                                          ; $7d6c: $ff
	rst $38                                          ; $7d6d: $ff
	rst $38                                          ; $7d6e: $ff
	rst $38                                          ; $7d6f: $ff
	rst $38                                          ; $7d70: $ff
	rst $38                                          ; $7d71: $ff
	rst $38                                          ; $7d72: $ff
	rst $38                                          ; $7d73: $ff
	rst $38                                          ; $7d74: $ff
	rst $38                                          ; $7d75: $ff
	rst $38                                          ; $7d76: $ff
	rst $38                                          ; $7d77: $ff
	rst $38                                          ; $7d78: $ff
	rst $38                                          ; $7d79: $ff
	rst $38                                          ; $7d7a: $ff
	rst $38                                          ; $7d7b: $ff
	rst $38                                          ; $7d7c: $ff
	rst $38                                          ; $7d7d: $ff
	rst $38                                          ; $7d7e: $ff
	rst $38                                          ; $7d7f: $ff
	rst $38                                          ; $7d80: $ff
	rst $38                                          ; $7d81: $ff
	rst $38                                          ; $7d82: $ff
	rst $38                                          ; $7d83: $ff
	rst $38                                          ; $7d84: $ff
	rst $38                                          ; $7d85: $ff
	rst $38                                          ; $7d86: $ff
	rst $38                                          ; $7d87: $ff
	rst $38                                          ; $7d88: $ff
	rst $38                                          ; $7d89: $ff
	rst $38                                          ; $7d8a: $ff
	rst $38                                          ; $7d8b: $ff
	rst $38                                          ; $7d8c: $ff
	rst $38                                          ; $7d8d: $ff
	rst $38                                          ; $7d8e: $ff
	rst $38                                          ; $7d8f: $ff
	rst $38                                          ; $7d90: $ff
	rst $38                                          ; $7d91: $ff
	rst $38                                          ; $7d92: $ff
	rst $38                                          ; $7d93: $ff
	rst $38                                          ; $7d94: $ff
	rst $38                                          ; $7d95: $ff
	rst $38                                          ; $7d96: $ff
	rst $38                                          ; $7d97: $ff
	rst $38                                          ; $7d98: $ff
	rst $38                                          ; $7d99: $ff
	rst $38                                          ; $7d9a: $ff
	rst $38                                          ; $7d9b: $ff
	rst $38                                          ; $7d9c: $ff
	rst $38                                          ; $7d9d: $ff
	rst $38                                          ; $7d9e: $ff
	rst $38                                          ; $7d9f: $ff
	rst $38                                          ; $7da0: $ff
	rst $38                                          ; $7da1: $ff
	rst $38                                          ; $7da2: $ff
	rst $38                                          ; $7da3: $ff
	rst $38                                          ; $7da4: $ff
	rst $38                                          ; $7da5: $ff
	rst $38                                          ; $7da6: $ff
	rst $38                                          ; $7da7: $ff
	rst $38                                          ; $7da8: $ff
	rst $38                                          ; $7da9: $ff
	rst $38                                          ; $7daa: $ff
	rst $38                                          ; $7dab: $ff
	rst $38                                          ; $7dac: $ff
	rst $38                                          ; $7dad: $ff
	rst $38                                          ; $7dae: $ff
	rst $38                                          ; $7daf: $ff
	rst $38                                          ; $7db0: $ff
	rst $38                                          ; $7db1: $ff
	rst $38                                          ; $7db2: $ff
	rst $38                                          ; $7db3: $ff
	rst $38                                          ; $7db4: $ff
	rst $38                                          ; $7db5: $ff
	rst $38                                          ; $7db6: $ff
	rst $38                                          ; $7db7: $ff
	rst $38                                          ; $7db8: $ff
	rst $38                                          ; $7db9: $ff
	rst $38                                          ; $7dba: $ff
	rst $38                                          ; $7dbb: $ff
	rst $38                                          ; $7dbc: $ff
	rst $38                                          ; $7dbd: $ff
	rst $38                                          ; $7dbe: $ff
	rst $38                                          ; $7dbf: $ff
	rst $38                                          ; $7dc0: $ff
	rst $38                                          ; $7dc1: $ff
	rst $38                                          ; $7dc2: $ff
	rst $38                                          ; $7dc3: $ff
	rst $38                                          ; $7dc4: $ff
	rst $38                                          ; $7dc5: $ff
	rst $38                                          ; $7dc6: $ff
	rst $38                                          ; $7dc7: $ff
	rst $38                                          ; $7dc8: $ff
	rst $38                                          ; $7dc9: $ff
	rst $38                                          ; $7dca: $ff
	rst $38                                          ; $7dcb: $ff
	rst $38                                          ; $7dcc: $ff
	rst $38                                          ; $7dcd: $ff
	rst $38                                          ; $7dce: $ff
	rst $38                                          ; $7dcf: $ff
	rst $38                                          ; $7dd0: $ff
	rst $38                                          ; $7dd1: $ff
	rst $38                                          ; $7dd2: $ff
	rst $38                                          ; $7dd3: $ff
	rst $38                                          ; $7dd4: $ff
	rst $38                                          ; $7dd5: $ff
	rst $38                                          ; $7dd6: $ff
	rst $38                                          ; $7dd7: $ff
	rst $38                                          ; $7dd8: $ff
	rst $38                                          ; $7dd9: $ff
	rst $38                                          ; $7dda: $ff
	rst $38                                          ; $7ddb: $ff
	rst $38                                          ; $7ddc: $ff
	rst $38                                          ; $7ddd: $ff
	rst $38                                          ; $7dde: $ff
	rst $38                                          ; $7ddf: $ff
	rst $38                                          ; $7de0: $ff
	rst $38                                          ; $7de1: $ff
	rst $38                                          ; $7de2: $ff
	rst $38                                          ; $7de3: $ff
	rst $38                                          ; $7de4: $ff
	rst $38                                          ; $7de5: $ff
	rst $38                                          ; $7de6: $ff
	rst $38                                          ; $7de7: $ff
	rst $38                                          ; $7de8: $ff
	rst $38                                          ; $7de9: $ff
	rst $38                                          ; $7dea: $ff
	rst $38                                          ; $7deb: $ff
	rst $38                                          ; $7dec: $ff
	rst $38                                          ; $7ded: $ff
	rst $38                                          ; $7dee: $ff
	rst $38                                          ; $7def: $ff
	rst $38                                          ; $7df0: $ff
	rst $38                                          ; $7df1: $ff
	rst $38                                          ; $7df2: $ff
	rst $38                                          ; $7df3: $ff
	rst $38                                          ; $7df4: $ff
	rst $38                                          ; $7df5: $ff
	rst $38                                          ; $7df6: $ff
	rst $38                                          ; $7df7: $ff
	rst $38                                          ; $7df8: $ff
	rst $38                                          ; $7df9: $ff
	rst $38                                          ; $7dfa: $ff
	rst $38                                          ; $7dfb: $ff
	rst $38                                          ; $7dfc: $ff
	rst $38                                          ; $7dfd: $ff
	rst $38                                          ; $7dfe: $ff
	rst $38                                          ; $7dff: $ff
	rst $38                                          ; $7e00: $ff
	rst $38                                          ; $7e01: $ff
	rst $38                                          ; $7e02: $ff
	rst $38                                          ; $7e03: $ff
	rst $38                                          ; $7e04: $ff
	rst $38                                          ; $7e05: $ff
	rst $38                                          ; $7e06: $ff
	rst $38                                          ; $7e07: $ff
	rst $38                                          ; $7e08: $ff
	rst $38                                          ; $7e09: $ff
	rst $38                                          ; $7e0a: $ff
	rst $38                                          ; $7e0b: $ff
	rst $38                                          ; $7e0c: $ff
	rst $38                                          ; $7e0d: $ff
	rst $38                                          ; $7e0e: $ff
	rst $38                                          ; $7e0f: $ff
	rst $38                                          ; $7e10: $ff
	rst $38                                          ; $7e11: $ff
	rst $38                                          ; $7e12: $ff
	rst $38                                          ; $7e13: $ff
	rst $38                                          ; $7e14: $ff
	rst $38                                          ; $7e15: $ff
	rst $38                                          ; $7e16: $ff
	rst $38                                          ; $7e17: $ff
	rst $38                                          ; $7e18: $ff
	rst $38                                          ; $7e19: $ff
	rst $38                                          ; $7e1a: $ff
	rst $38                                          ; $7e1b: $ff
	rst $38                                          ; $7e1c: $ff
	rst $38                                          ; $7e1d: $ff
	rst $38                                          ; $7e1e: $ff
	rst $38                                          ; $7e1f: $ff
	rst $38                                          ; $7e20: $ff
	rst $38                                          ; $7e21: $ff
	rst $38                                          ; $7e22: $ff
	rst $38                                          ; $7e23: $ff
	rst $38                                          ; $7e24: $ff
	rst $38                                          ; $7e25: $ff
	rst $38                                          ; $7e26: $ff
	rst $38                                          ; $7e27: $ff
	rst $38                                          ; $7e28: $ff
	rst $38                                          ; $7e29: $ff
	rst $38                                          ; $7e2a: $ff
	rst $38                                          ; $7e2b: $ff
	rst $38                                          ; $7e2c: $ff
	rst $38                                          ; $7e2d: $ff
	rst $38                                          ; $7e2e: $ff
	rst $38                                          ; $7e2f: $ff
	rst $38                                          ; $7e30: $ff
	rst $38                                          ; $7e31: $ff
	rst $38                                          ; $7e32: $ff
	rst $38                                          ; $7e33: $ff
	rst $38                                          ; $7e34: $ff
	rst $38                                          ; $7e35: $ff
	rst $38                                          ; $7e36: $ff
	rst $38                                          ; $7e37: $ff
	rst $38                                          ; $7e38: $ff
	rst $38                                          ; $7e39: $ff
	rst $38                                          ; $7e3a: $ff
	rst $38                                          ; $7e3b: $ff
	rst $38                                          ; $7e3c: $ff
	rst $38                                          ; $7e3d: $ff
	rst $38                                          ; $7e3e: $ff
	rst $38                                          ; $7e3f: $ff
	rst $38                                          ; $7e40: $ff
	rst $38                                          ; $7e41: $ff
	rst $38                                          ; $7e42: $ff
	rst $38                                          ; $7e43: $ff
	rst $38                                          ; $7e44: $ff
	rst $38                                          ; $7e45: $ff
	rst $38                                          ; $7e46: $ff
	rst $38                                          ; $7e47: $ff
	rst $38                                          ; $7e48: $ff
	rst $38                                          ; $7e49: $ff
	rst $38                                          ; $7e4a: $ff
	rst $38                                          ; $7e4b: $ff
	rst $38                                          ; $7e4c: $ff
	rst $38                                          ; $7e4d: $ff
	rst $38                                          ; $7e4e: $ff
	rst $38                                          ; $7e4f: $ff
	rst $38                                          ; $7e50: $ff
	rst $38                                          ; $7e51: $ff
	rst $38                                          ; $7e52: $ff
	rst $38                                          ; $7e53: $ff
	rst $38                                          ; $7e54: $ff
	rst $38                                          ; $7e55: $ff
	rst $38                                          ; $7e56: $ff
	rst $38                                          ; $7e57: $ff
	rst $38                                          ; $7e58: $ff
	rst $38                                          ; $7e59: $ff
	rst $38                                          ; $7e5a: $ff
	rst $38                                          ; $7e5b: $ff
	rst $38                                          ; $7e5c: $ff
	rst $38                                          ; $7e5d: $ff
	rst $38                                          ; $7e5e: $ff
	rst $38                                          ; $7e5f: $ff
	rst $38                                          ; $7e60: $ff
	rst $38                                          ; $7e61: $ff
	rst $38                                          ; $7e62: $ff
	rst $38                                          ; $7e63: $ff
	rst $38                                          ; $7e64: $ff
	rst $38                                          ; $7e65: $ff
	rst $38                                          ; $7e66: $ff
	rst $38                                          ; $7e67: $ff
	rst $38                                          ; $7e68: $ff
	rst $38                                          ; $7e69: $ff
	rst $38                                          ; $7e6a: $ff
	rst $38                                          ; $7e6b: $ff
	rst $38                                          ; $7e6c: $ff
	rst $38                                          ; $7e6d: $ff
	rst $38                                          ; $7e6e: $ff
	rst $38                                          ; $7e6f: $ff
	rst $38                                          ; $7e70: $ff
	rst $38                                          ; $7e71: $ff
	rst $38                                          ; $7e72: $ff
	rst $38                                          ; $7e73: $ff
	rst $38                                          ; $7e74: $ff
	rst $38                                          ; $7e75: $ff
	rst $38                                          ; $7e76: $ff
	rst $38                                          ; $7e77: $ff
	rst $38                                          ; $7e78: $ff
	rst $38                                          ; $7e79: $ff
	rst $38                                          ; $7e7a: $ff
	rst $38                                          ; $7e7b: $ff
	rst $38                                          ; $7e7c: $ff
	rst $38                                          ; $7e7d: $ff
	rst $38                                          ; $7e7e: $ff
	rst $38                                          ; $7e7f: $ff
	rst $38                                          ; $7e80: $ff
	rst $38                                          ; $7e81: $ff
	rst $38                                          ; $7e82: $ff
	rst $38                                          ; $7e83: $ff
	rst $38                                          ; $7e84: $ff
	rst $38                                          ; $7e85: $ff
	rst $38                                          ; $7e86: $ff
	rst $38                                          ; $7e87: $ff
	rst $38                                          ; $7e88: $ff
	rst $38                                          ; $7e89: $ff
	rst $38                                          ; $7e8a: $ff
	rst $38                                          ; $7e8b: $ff
	rst $38                                          ; $7e8c: $ff
	rst $38                                          ; $7e8d: $ff
	rst $38                                          ; $7e8e: $ff
	rst $38                                          ; $7e8f: $ff
	rst $38                                          ; $7e90: $ff
	rst $38                                          ; $7e91: $ff
	rst $38                                          ; $7e92: $ff
	rst $38                                          ; $7e93: $ff
	rst $38                                          ; $7e94: $ff
	rst $38                                          ; $7e95: $ff
	rst $38                                          ; $7e96: $ff
	rst $38                                          ; $7e97: $ff
	rst $38                                          ; $7e98: $ff
	rst $38                                          ; $7e99: $ff
	rst $38                                          ; $7e9a: $ff
	rst $38                                          ; $7e9b: $ff
	rst $38                                          ; $7e9c: $ff
	rst $38                                          ; $7e9d: $ff
	rst $38                                          ; $7e9e: $ff
	rst $38                                          ; $7e9f: $ff
	rst $38                                          ; $7ea0: $ff
	rst $38                                          ; $7ea1: $ff
	rst $38                                          ; $7ea2: $ff
	rst $38                                          ; $7ea3: $ff
	rst $38                                          ; $7ea4: $ff
	rst $38                                          ; $7ea5: $ff
	rst $38                                          ; $7ea6: $ff
	rst $38                                          ; $7ea7: $ff
	rst $38                                          ; $7ea8: $ff
	rst $38                                          ; $7ea9: $ff
	rst $38                                          ; $7eaa: $ff
	rst $38                                          ; $7eab: $ff
	rst $38                                          ; $7eac: $ff
	rst $38                                          ; $7ead: $ff
	rst $38                                          ; $7eae: $ff
	rst $38                                          ; $7eaf: $ff
	rst $38                                          ; $7eb0: $ff
	rst $38                                          ; $7eb1: $ff
	rst $38                                          ; $7eb2: $ff
	rst $38                                          ; $7eb3: $ff
	rst $38                                          ; $7eb4: $ff
	rst $38                                          ; $7eb5: $ff
	rst $38                                          ; $7eb6: $ff
	rst $38                                          ; $7eb7: $ff
	rst $38                                          ; $7eb8: $ff
	rst $38                                          ; $7eb9: $ff
	rst $38                                          ; $7eba: $ff
	rst $38                                          ; $7ebb: $ff
	rst $38                                          ; $7ebc: $ff
	rst $38                                          ; $7ebd: $ff
	rst $38                                          ; $7ebe: $ff
	rst $38                                          ; $7ebf: $ff
	rst $38                                          ; $7ec0: $ff
	rst $38                                          ; $7ec1: $ff
	rst $38                                          ; $7ec2: $ff
	rst $38                                          ; $7ec3: $ff
	rst $38                                          ; $7ec4: $ff
	rst $38                                          ; $7ec5: $ff
	rst $38                                          ; $7ec6: $ff
	rst $38                                          ; $7ec7: $ff
	rst $38                                          ; $7ec8: $ff
	rst $38                                          ; $7ec9: $ff
	rst $38                                          ; $7eca: $ff
	rst $38                                          ; $7ecb: $ff
	rst $38                                          ; $7ecc: $ff
	rst $38                                          ; $7ecd: $ff
	rst $38                                          ; $7ece: $ff
	rst $38                                          ; $7ecf: $ff
	rst $38                                          ; $7ed0: $ff
	rst $38                                          ; $7ed1: $ff
	rst $38                                          ; $7ed2: $ff
	rst $38                                          ; $7ed3: $ff
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
