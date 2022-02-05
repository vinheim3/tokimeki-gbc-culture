; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08a", ROMX[$4000], BANK[$8a]

	inc h                                            ; $4000: $24
	ldh a, [rAUD3HIGH]                               ; $4001: $f0 $1e
	inc h                                            ; $4003: $24
	ldh a, [rAUD3HIGH]                               ; $4004: $f0 $1e
	inc h                                            ; $4006: $24
	ldh a, [rAUD3HIGH]                               ; $4007: $f0 $1e
	add hl, bc                                       ; $4009: $09
	xor $1f                                          ; $400a: $ee $1f
	inc [hl]                                         ; $400c: $34
	sub b                                            ; $400d: $90
	ld a, $6c                                        ; $400e: $3e $6c
	ld b, a                                          ; $4010: $47
	ld a, $3f                                        ; $4011: $3e $3f
	ld c, [hl]                                       ; $4013: $4e
	ld c, h                                          ; $4014: $4c
	and b                                            ; $4015: $a0
	ret                                              ; $4016: $c9


	ld d, d                                          ; $4017: $52
	dec sp                                           ; $4018: $3b
	ccf                                              ; $4019: $3f
	ld c, h                                          ; $401a: $4c
	inc h                                            ; $401b: $24
	ldh a, [rAUD3HIGH]                               ; $401c: $f0 $1e
	inc h                                            ; $401e: $24
	ldh a, [rAUD3HIGH]                               ; $401f: $f0 $1e
	inc h                                            ; $4021: $24
	ldh a, [rAUD3HIGH]                               ; $4022: $f0 $1e
	add hl, bc                                       ; $4024: $09
	ld [hl], b                                       ; $4025: $70
	ld [hl], c                                       ; $4026: $71
	ld b, c                                          ; $4027: $41
	ld c, h                                          ; $4028: $4c
	xor l                                            ; $4029: $ad
	ld b, b                                          ; $402a: $40
	ld b, d                                          ; $402b: $42
	ld l, b                                          ; $402c: $68
	ld c, e                                          ; $402d: $4b
	inc [hl]                                         ; $402e: $34
	ret                                              ; $402f: $c9


	ld c, b                                          ; $4030: $48
	and b                                            ; $4031: $a0
	db $ec                                           ; $4032: $ec
	add hl, bc                                       ; $4033: $09
	ldh a, [$3b]                                     ; $4034: $f0 $3b
	dec sp                                           ; $4036: $3b
	ccf                                              ; $4037: $3f
	ld d, l                                          ; $4038: $55
	ld c, l                                          ; $4039: $4d
	dec a                                            ; $403a: $3d
	ld b, d                                          ; $403b: $42
	ld b, a                                          ; $403c: $47
	inc de                                           ; $403d: $13
	ld [hl], b                                       ; $403e: $70
	ld [hl], c                                       ; $403f: $71
	ld b, c                                          ; $4040: $41
	ld c, h                                          ; $4041: $4c
	ld c, b                                          ; $4042: $48
	and b                                            ; $4043: $a0
	cpl                                              ; $4044: $2f
	ld b, e                                          ; $4045: $43
	push af                                          ; $4046: $f5
	add b                                            ; $4047: $80
	inc [hl]                                         ; $4048: $34
	ld l, b                                          ; $4049: $68
	ld h, d                                          ; $404a: $62
	ldh a, [c]                                       ; $404b: $f2
	xor b                                            ; $404c: $a8
	ld [hl], c                                       ; $404d: $71
	ccf                                              ; $404e: $3f
	ldh a, [$3b]                                     ; $404f: $f0 $3b
	add hl, sp                                       ; $4051: $39
	inc de                                           ; $4052: $13
	inc a                                            ; $4053: $3c
	ld d, b                                          ; $4054: $50
	dec [hl]                                         ; $4055: $35
	db $ec                                           ; $4056: $ec
	xor $54                                          ; $4057: $ee $54
	ld b, b                                          ; $4059: $40
	inc [hl]                                         ; $405a: $34
	ld [hl], b                                       ; $405b: $70
	ld [hl], c                                       ; $405c: $71
	ld b, c                                          ; $405d: $41
	ld c, h                                          ; $405e: $4c
	and b                                            ; $405f: $a0
	ld b, [hl]                                       ; $4060: $46
	xor e                                            ; $4061: $ab
	ld b, b                                          ; $4062: $40
	ld b, d                                          ; $4063: $42
	ld l, b                                          ; $4064: $68
	ld c, e                                          ; $4065: $4b
	inc [hl]                                         ; $4066: $34
	ret                                              ; $4067: $c9


	ld c, b                                          ; $4068: $48
	and b                                            ; $4069: $a0
	ld [hl], b                                       ; $406a: $70
	ld [hl], c                                       ; $406b: $71
	ld b, c                                          ; $406c: $41
	ld c, h                                          ; $406d: $4c
	ld c, b                                          ; $406e: $48
	and b                                            ; $406f: $a0
	ld b, b                                          ; $4070: $40
	ld b, d                                          ; $4071: $42
	ld l, b                                          ; $4072: $68
	ld c, e                                          ; $4073: $4b
	inc [hl]                                         ; $4074: $34
	xor $07                                          ; $4075: $ee $07
	ld d, e                                          ; $4077: $53
	ld b, [hl]                                       ; $4078: $46
	ld c, [hl]                                       ; $4079: $4e
	ld b, d                                          ; $407a: $42
	and b                                            ; $407b: $a0
	ld b, b                                          ; $407c: $40
	add hl, sp                                       ; $407d: $39
	ld a, $3f                                        ; $407e: $3e $3f
	ld d, l                                          ; $4080: $55
	ld c, l                                          ; $4081: $4d
	ld c, [hl]                                       ; $4082: $4e
	ld c, c                                          ; $4083: $49
	pop af                                           ; $4084: $f1
	jp hl                                            ; $4085: $e9


	inc a                                            ; $4086: $3c
	ld c, [hl]                                       ; $4087: $4e
	ld h, e                                          ; $4088: $63
	xor b                                            ; $4089: $a8
	ld e, e                                          ; $408a: $5b
	ld d, [hl]                                       ; $408b: $56
	ld [hl], h                                       ; $408c: $74
	inc [hl]                                         ; $408d: $34
	ld d, d                                          ; $408e: $52
	dec a                                            ; $408f: $3d
	ld l, d                                          ; $4090: $6a
	ldh a, [$0d]                                     ; $4091: $f0 $0d
	and b                                            ; $4093: $a0
	inc hl                                           ; $4094: $23
	xor $10                                          ; $4095: $ee $10
	xor $10                                          ; $4097: $ee $10
	dec [hl]                                         ; $4099: $35
	ld [hl+], a                                      ; $409a: $22
	inc de                                           ; $409b: $13
	ld l, e                                          ; $409c: $6b
	inc a                                            ; $409d: $3c
	ldh a, [rAUD2LEN]                                ; $409e: $f0 $16
	and b                                            ; $40a0: $a0
	cpl                                              ; $40a1: $2f
	ld [hl-], a                                      ; $40a2: $32
	add hl, sp                                       ; $40a3: $39
	dec sp                                           ; $40a4: $3b
	inc [hl]                                         ; $40a5: $34
	db $ec                                           ; $40a6: $ec
	and $a8                                          ; $40a7: $e6 $a8
	add sp, $7b                                      ; $40a9: $e8 $7b
	and e                                            ; $40ab: $a3
	ld l, e                                          ; $40ac: $6b
	ld b, d                                          ; $40ad: $42
	ldh a, [rAUD2LEN]                                ; $40ae: $f0 $16
	ld a, [hl-]                                      ; $40b0: $3a
	ld b, d                                          ; $40b1: $42
	scf                                              ; $40b2: $37
	and c                                            ; $40b3: $a1
	cpl                                              ; $40b4: $2f
	ld b, e                                          ; $40b5: $43
	ld b, [hl]                                       ; $40b6: $46
	dec sp                                           ; $40b7: $3b
	inc [hl]                                         ; $40b8: $34
	xor $1e                                          ; $40b9: $ee $1e
	ld c, h                                          ; $40bb: $4c
	ld c, b                                          ; $40bc: $48
	and b                                            ; $40bd: $a0
	cpl                                              ; $40be: $2f
	jp hl                                            ; $40bf: $e9


	daa                                              ; $40c0: $27
	xor h                                            ; $40c1: $ac
	db $ec                                           ; $40c2: $ec
	and $42                                          ; $40c3: $e6 $42
	ldh a, [$c6]                                     ; $40c5: $f0 $c6
	ldh a, [$64]                                     ; $40c7: $f0 $64
	ld h, d                                          ; $40c9: $62
	inc de                                           ; $40ca: $13
	ld [$a32d], a                                    ; $40cb: $ea $2d $a3
	ldh a, [rSCY]                                    ; $40ce: $f0 $42
	add hl, sp                                       ; $40d0: $39
	ld c, b                                          ; $40d1: $48
	inc [hl]                                         ; $40d2: $34
	ldh a, [rTAC]                                    ; $40d3: $f0 $07
	inc a                                            ; $40d5: $3c
	dec sp                                           ; $40d6: $3b
	dec a                                            ; $40d7: $3d
	ld h, e                                          ; $40d8: $63
	xor b                                            ; $40d9: $a8
	ld e, e                                          ; $40da: $5b
	ld d, [hl]                                       ; $40db: $56
	ld [hl], h                                       ; $40dc: $74
	inc [hl]                                         ; $40dd: $34
	ld d, d                                          ; $40de: $52
	dec a                                            ; $40df: $3d
	and b                                            ; $40e0: $a0
	cpl                                              ; $40e1: $2f
	db $eb                                           ; $40e2: $eb
	ld [hl], a                                       ; $40e3: $77
	xor b                                            ; $40e4: $a8
	ld l, e                                          ; $40e5: $6b
	ld c, c                                          ; $40e6: $49
	inc a                                            ; $40e7: $3c
	inc [hl]                                         ; $40e8: $34
	db $ec                                           ; $40e9: $ec
	and $42                                          ; $40ea: $e6 $42
	ldh a, [$c6]                                     ; $40ec: $f0 $c6
	ldh a, [$64]                                     ; $40ee: $f0 $64
	ld c, a                                          ; $40f0: $4f
	inc de                                           ; $40f1: $13
	ldh a, [hDisp1_WX]                                     ; $40f2: $f0 $96
	dec sp                                           ; $40f4: $3b
	dec a                                            ; $40f5: $3d
	db $eb                                           ; $40f6: $eb
	sbc l                                            ; $40f7: $9d
	and e                                            ; $40f8: $a3
	db $ec                                           ; $40f9: $ec
	di                                               ; $40fa: $f3
	ld b, h                                          ; $40fb: $44
	ld d, e                                          ; $40fc: $53
	and b                                            ; $40fd: $a0
	ld l, e                                          ; $40fe: $6b
	ld b, h                                          ; $40ff: $44
	ldh a, [rRP]                                     ; $4100: $f0 $56
	inc a                                            ; $4102: $3c
	xor h                                            ; $4103: $ac
	ld l, e                                          ; $4104: $6b
	ld b, d                                          ; $4105: $42
	ldh a, [rAUD2LEN]                                ; $4106: $f0 $16
	ld b, h                                          ; $4108: $44
	ld c, h                                          ; $4109: $4c
	and b                                            ; $410a: $a0
	ld [$ac85], a                                    ; $410b: $ea $85 $ac
	ld l, e                                          ; $410e: $6b
	ld b, d                                          ; $410f: $42
	ldh a, [rAUD2LEN]                                ; $4110: $f0 $16
	ld b, h                                          ; $4112: $44
	ld c, h                                          ; $4113: $4c
	and c                                            ; $4114: $a1
	cpl                                              ; $4115: $2f
	ld b, e                                          ; $4116: $43
	jr c, @+$70                                      ; $4117: $38 $6e

	inc [hl]                                         ; $4119: $34
	ldh a, [$34]                                     ; $411a: $f0 $34
	ld b, a                                          ; $411c: $47
	ldh a, [rAUD2LEN]                                ; $411d: $f0 $16
	ld c, e                                          ; $411f: $4b
	inc de                                           ; $4120: $13
	ld a, [hl-]                                      ; $4121: $3a
	jr c, @+$43                                      ; $4122: $38 $41

	ld b, h                                          ; $4124: $44
	ld e, l                                          ; $4125: $5d
	ld e, d                                          ; $4126: $5a
	dec [hl]                                         ; $4127: $35
	db $ec                                           ; $4128: $ec
	db $ec                                           ; $4129: $ec
	ld a, [hl-]                                      ; $412a: $3a
	ld d, l                                          ; $412b: $55
	ld c, h                                          ; $412c: $4c
	and b                                            ; $412d: $a0
	ld b, [hl]                                       ; $412e: $46
	jr c, @+$49                                      ; $412f: $38 $47

	ld d, l                                          ; $4131: $55
	pop af                                           ; $4132: $f1
	or [hl]                                          ; $4133: $b6
	ld c, e                                          ; $4134: $4b
	xor h                                            ; $4135: $ac
	ldh a, [rRP]                                     ; $4136: $f0 $56
	ld b, d                                          ; $4138: $42
	ld b, l                                          ; $4139: $45
	add hl, sp                                       ; $413a: $39
	ld a, [hl-]                                      ; $413b: $3a
	ldh a, [$ea]                                     ; $413c: $f0 $ea
	add h                                            ; $413e: $84
	db $ec                                           ; $413f: $ec
	ret c                                            ; $4140: $d8

	ld b, c                                          ; $4141: $41
	ld b, h                                          ; $4142: $44
	xor b                                            ; $4143: $a8
	or h                                             ; $4144: $b4
	inc [hl]                                         ; $4145: $34
	ldh a, [rHDMA5]                                  ; $4146: $f0 $55
	ldh a, [rBCPS]                                   ; $4148: $f0 $68
	ld d, c                                          ; $414a: $51
	ld c, [hl]                                       ; $414b: $4e
	ld b, l                                          ; $414c: $45
	and b                                            ; $414d: $a0
	cpl                                              ; $414e: $2f
	ld b, e                                          ; $414f: $43
	ldh a, [$e9]                                     ; $4150: $f0 $e9
	ldh a, [$5d]                                     ; $4152: $f0 $5d
	ld h, e                                          ; $4154: $63
	ld d, b                                          ; $4155: $50
	sbc h                                            ; $4156: $9c
	xor h                                            ; $4157: $ac

Call_08a_4158:
	db $f4                                           ; $4158: $f4
	jr jr_08a_4198                                   ; $4159: $18 $3d

	ld d, b                                          ; $415b: $50
	ld a, $38                                        ; $415c: $3e $38
	ldh a, [$f8]                                     ; $415e: $f0 $f8
	and b                                            ; $4160: $a0
	ld [$a985], a                                    ; $4161: $ea $85 $a9
	ldh a, [$e9]                                     ; $4164: $f0 $e9
	ldh a, [$5d]                                     ; $4166: $f0 $5d
	ld h, e                                          ; $4168: $63
	ld d, b                                          ; $4169: $50
	sbc h                                            ; $416a: $9c
	ldh a, [$ea]                                     ; $416b: $f0 $ea
	ld a, [hl-]                                      ; $416d: $3a
	ld b, l                                          ; $416e: $45
	add hl, sp                                       ; $416f: $39
	ld b, h                                          ; $4170: $44
	ld c, h                                          ; $4171: $4c
	and b                                            ; $4172: $a0
	cpl                                              ; $4173: $2f
	ld b, e                                          ; $4174: $43
	xor $10                                          ; $4175: $ee $10
	xor $10                                          ; $4177: $ee $10
	and b                                            ; $4179: $a0
	pop af                                           ; $417a: $f1
	or [hl]                                          ; $417b: $b6
	ld c, e                                          ; $417c: $4b
	inc [hl]                                         ; $417d: $34
	ldh a, [rRP]                                     ; $417e: $f0 $56
	ld h, d                                          ; $4180: $62
	inc a                                            ; $4181: $3c
	ld d, d                                          ; $4182: $52
	dec sp                                           ; $4183: $3b
	ccf                                              ; $4184: $3f
	inc de                                           ; $4185: $13
	jr c, jr_08a_41d6                                ; $4186: $38 $4e

	ldh a, [$08]                                     ; $4188: $f0 $08
	ld e, d                                          ; $418a: $5a
	ldh a, [$ea]                                     ; $418b: $f0 $ea
	db $ec                                           ; $418d: $ec
	ret c                                            ; $418e: $d8

	ld b, c                                          ; $418f: $41
	ld b, h                                          ; $4190: $44
	ld d, e                                          ; $4191: $53
	ld c, h                                          ; $4192: $4c
	xor b                                            ; $4193: $a8
	ldh a, [rHDMA4]                                  ; $4194: $f0 $54
	ld a, $7b                                        ; $4196: $3e $7b

jr_08a_4198:
	inc a                                            ; $4198: $3c
	ld d, a                                          ; $4199: $57
	inc [hl]                                         ; $419a: $34
	ldh a, [rBGP]                                    ; $419b: $f0 $47
	ldh a, [$2a]                                     ; $419d: $f0 $2a
	ld h, d                                          ; $419f: $62
	db $f4                                           ; $41a0: $f4
	add hl, de                                       ; $41a1: $19
	jr c, jr_08a_41e3                                ; $41a2: $38 $3f

	inc de                                           ; $41a4: $13
	ld b, [hl]                                       ; $41a5: $46
	ldh a, [rSB]                                     ; $41a6: $f0 $01
	ld b, l                                          ; $41a8: $45
	add hl, sp                                       ; $41a9: $39
	and b                                            ; $41aa: $a0
	cpl                                              ; $41ab: $2f
	ld b, e                                          ; $41ac: $43
	ldh a, [rHDMA4]                                  ; $41ad: $f0 $54
	ld a, $3b                                        ; $41af: $3e $3b
	ccf                                              ; $41b1: $3f
	xor h                                            ; $41b2: $ac
	ld e, d                                          ; $41b3: $5a
	ld c, l                                          ; $41b4: $4d
	sbc l                                            ; $41b5: $9d
	ld d, b                                          ; $41b6: $50
	jr c, jr_08a_41fd                                ; $41b7: $38 $44

	ld b, l                                          ; $41b9: $45
	and c                                            ; $41ba: $a1
	pop af                                           ; $41bb: $f1
	inc l                                            ; $41bc: $2c
	db $f4                                           ; $41bd: $f4
	sbc b                                            ; $41be: $98
	ld b, h                                          ; $41bf: $44
	dec [hl]                                         ; $41c0: $35
	inc hl                                           ; $41c1: $23
	inc de                                           ; $41c2: $13
	ld h, h                                          ; $41c3: $64
	dec sp                                           ; $41c4: $3b
	ld c, c                                          ; $41c5: $49
	inc [hl]                                         ; $41c6: $34
	ld c, a                                          ; $41c7: $4f
	add hl, sp                                       ; $41c8: $39
	pop af                                           ; $41c9: $f1
	inc l                                            ; $41ca: $2c
	db $f4                                           ; $41cb: $f4
	sbc b                                            ; $41cc: $98
	inc de                                           ; $41cd: $13
	ldh a, [c]                                       ; $41ce: $f2
	inc hl                                           ; $41cf: $23
	dec sp                                           ; $41d0: $3b
	ccf                                              ; $41d1: $3f
	db $ec                                           ; $41d2: $ec
	push de                                          ; $41d3: $d5
	ld b, l                                          ; $41d4: $45
	xor b                                            ; $41d5: $a8

jr_08a_41d6:
	ld c, d                                          ; $41d6: $4a
	ld c, e                                          ; $41d7: $4b
	inc [hl]                                         ; $41d8: $34
	ldh a, [rHDMA5]                                  ; $41d9: $f0 $55
	ldh a, [rBCPS]                                   ; $41db: $f0 $68
	ld d, c                                          ; $41dd: $51
	ld c, [hl]                                       ; $41de: $4e
	ld b, l                                          ; $41df: $45
	and b                                            ; $41e0: $a0
	ld d, d                                          ; $41e1: $52
	ld b, [hl]                                       ; $41e2: $46

jr_08a_41e3:
	inc [hl]                                         ; $41e3: $34
	di                                               ; $41e4: $f3
	inc c                                            ; $41e5: $0c
	db $f4                                           ; $41e6: $f4
	rla                                              ; $41e7: $17
	add h                                            ; $41e8: $84
	ld d, e                                          ; $41e9: $53
	inc de                                           ; $41ea: $13
	ld a, [hl-]                                      ; $41eb: $3a
	ld e, l                                          ; $41ec: $5d
	ld a, [hl-]                                      ; $41ed: $3a
	ld a, $42                                        ; $41ee: $3e $42
	ld h, h                                          ; $41f0: $64
	pop af                                           ; $41f1: $f1
	add [hl]                                         ; $41f2: $86
	ld c, d                                          ; $41f3: $4a
	xor h                                            ; $41f4: $ac
	db $ed                                           ; $41f5: $ed
	halt                                             ; $41f6: $76
	ld a, $3f                                        ; $41f7: $3e $3f
	ld d, l                                          ; $41f9: $55
	ld c, l                                          ; $41fa: $4d
	dec a                                            ; $41fb: $3d
	ld b, c                                          ; $41fc: $41

jr_08a_41fd:
	ld b, h                                          ; $41fd: $44
	dec [hl]                                         ; $41fe: $35
	rla                                              ; $41ff: $17
	ldh a, [rAUDVOL]                                 ; $4200: $f0 $24
	ld b, d                                          ; $4202: $42
	ld l, l                                          ; $4203: $6d
	add b                                            ; $4204: $80
	ld c, d                                          ; $4205: $4a
	ld c, a                                          ; $4206: $4f
	ld a, $3f                                        ; $4207: $3e $3f
	ld l, [hl]                                       ; $4209: $6e
	ld e, a                                          ; $420a: $5f
	add hl, sp                                       ; $420b: $39
	ld e, e                                          ; $420c: $5b
	ld d, [hl]                                       ; $420d: $56
	ld b, [hl]                                       ; $420e: $46
	inc de                                           ; $420f: $13
	ld a, [hl-]                                      ; $4210: $3a
	jr c, jr_08a_424f                                ; $4211: $38 $3c

	and b                                            ; $4213: $a0
	cpl                                              ; $4214: $2f
	ld b, e                                          ; $4215: $43
	ld l, e                                          ; $4216: $6b
	ld b, d                                          ; $4217: $42
	ldh a, [rAUDVOL]                                 ; $4218: $f0 $24
	ld b, h                                          ; $421a: $44
	ld b, l                                          ; $421b: $45
	and b                                            ; $421c: $a0
	pop af                                           ; $421d: $f1
	or [hl]                                          ; $421e: $b6
	ld b, d                                          ; $421f: $42
	ldh a, [$67]                                     ; $4220: $f0 $67
	ldh a, [c]                                       ; $4222: $f2
	dec h                                            ; $4223: $25
	ldh a, [rAUDVOL]                                 ; $4224: $f0 $24
	ld h, d                                          ; $4226: $62
	ld a, $3f                                        ; $4227: $3e $3f
	inc de                                           ; $4229: $13
	ld l, [hl]                                       ; $422a: $6e
	ld e, a                                          ; $422b: $5f
	add hl, sp                                       ; $422c: $39
	and b                                            ; $422d: $a0
	cpl                                              ; $422e: $2f
	ld b, e                                          ; $422f: $43
	jr c, jr_08a_426a                                ; $4230: $38 $38

	xor l                                            ; $4232: $ad
	pop af                                           ; $4233: $f1
	ld b, $f1                                        ; $4234: $06 $f1
	ld a, $3e                                        ; $4236: $3e $3e
	ccf                                              ; $4238: $3f
	ld h, h                                          ; $4239: $64
	ld d, l                                          ; $423a: $55
	ld c, b                                          ; $423b: $48
	and b                                            ; $423c: $a0
	ld d, d                                          ; $423d: $52
	ld b, [hl]                                       ; $423e: $46
	xor h                                            ; $423f: $ac
	ld b, b                                          ; $4240: $40
	add hl, sp                                       ; $4241: $39
	pop af                                           ; $4242: $f1
	ld b, $f1                                        ; $4243: $06 $f1
	ld a, $51                                        ; $4245: $3e $51
	ld c, [hl]                                       ; $4247: $4e
	ld a, [hl-]                                      ; $4248: $3a
	ld b, l                                          ; $4249: $45
	xor b                                            ; $424a: $a8
	pop af                                           ; $424b: $f1
	or [hl]                                          ; $424c: $b6
	ld b, d                                          ; $424d: $42
	db $f4                                           ; $424e: $f4

jr_08a_424f:
	ld d, $f4                                        ; $424f: $16 $f4
	or d                                             ; $4251: $b2
	ld a, [hl-]                                      ; $4252: $3a
	add h                                            ; $4253: $84
	ldh a, [rTIMA]                                   ; $4254: $f0 $05
	ld h, d                                          ; $4256: $62
	inc [hl]                                         ; $4257: $34
	ldh a, [rRP]                                     ; $4258: $f0 $56
	ld b, a                                          ; $425a: $47
	inc de                                           ; $425b: $13
	pop af                                           ; $425c: $f1
	xor $3b                                          ; $425d: $ee $3b
	ccf                                              ; $425f: $3f
	ld b, [hl]                                       ; $4260: $46
	ldh a, [rSB]                                     ; $4261: $f0 $01
	ld b, l                                          ; $4263: $45
	add hl, sp                                       ; $4264: $39
	db $ec                                           ; $4265: $ec
	ret c                                            ; $4266: $d8

	inc a                                            ; $4267: $3c
	and b                                            ; $4268: $a0
	cpl                                              ; $4269: $2f

jr_08a_426a:
	ld b, e                                          ; $426a: $43
	ld b, [hl]                                       ; $426b: $46
	inc [hl]                                         ; $426c: $34
	ldh a, [$2f]                                     ; $426d: $f0 $2f
	ldh a, [$7c]                                     ; $426f: $f0 $7c
	ld [hl], e                                       ; $4271: $73
	ldh a, [$2b]                                     ; $4272: $f0 $2b
	ldh a, [rOCPD]                                   ; $4274: $f0 $6b
	ld h, l                                          ; $4276: $65
	ld b, h                                          ; $4277: $44
	xor b                                            ; $4278: $a8
	ld d, d                                          ; $4279: $52
	dec a                                            ; $427a: $3d
	ld a, [hl-]                                      ; $427b: $3a
	inc [hl]                                         ; $427c: $34
	db $ec                                           ; $427d: $ec
	di                                               ; $427e: $f3
	and b                                            ; $427f: $a0
	ld h, h                                          ; $4280: $64
	jr c, jr_08a_42b7                                ; $4281: $38 $34

	sbc c                                            ; $4283: $99

Jump_08a_4284:
	ld h, c                                          ; $4284: $61
	dec a                                            ; $4285: $3d
	ld d, d                                          ; $4286: $52
	ld e, [hl]                                       ; $4287: $5e
	and b                                            ; $4288: $a0
	cpl                                              ; $4289: $2f
	ld b, e                                          ; $428a: $43
	ld b, [hl]                                       ; $428b: $46
	ld e, c                                          ; $428c: $59
	inc [hl]                                         ; $428d: $34
	db $eb                                           ; $428e: $eb
	add l                                            ; $428f: $85
	and b                                            ; $4290: $a0
	ld b, b                                          ; $4291: $40
	ld c, l                                          ; $4292: $4d
	ld e, e                                          ; $4293: $5b
	ld d, [hl]                                       ; $4294: $56
	xor h                                            ; $4295: $ac
	pop af                                           ; $4296: $f1
	add [hl]                                         ; $4297: $86
	ld b, d                                          ; $4298: $42
	pop af                                           ; $4299: $f1
	dec e                                            ; $429a: $1d
	ld [hl], e                                       ; $429b: $73
	ldh a, [$32]                                     ; $429c: $f0 $32
	ld b, d                                          ; $429e: $42
	ldh a, [rAUDVOL]                                 ; $429f: $f0 $24
	ld c, d                                          ; $42a1: $4a
	ld c, a                                          ; $42a2: $4f
	ld a, $3f                                        ; $42a3: $3e $3f
	ld l, [hl]                                       ; $42a5: $6e
	ld e, a                                          ; $42a6: $5f
	add hl, sp                                       ; $42a7: $39
	and b                                            ; $42a8: $a0
	ld b, b                                          ; $42a9: $40
	ld c, l                                          ; $42aa: $4d
	ld e, e                                          ; $42ab: $5b
	ld d, [hl]                                       ; $42ac: $56
	xor h                                            ; $42ad: $ac
	add c                                            ; $42ae: $81
	ldh a, [rSC]                                     ; $42af: $f0 $02
	ldh a, [$2b]                                     ; $42b1: $f0 $2b
	ldh a, [$ba]                                     ; $42b3: $f0 $ba
	ld b, d                                          ; $42b5: $42
	di                                               ; $42b6: $f3

jr_08a_42b7:
	push bc                                          ; $42b7: $c5
	ld b, d                                          ; $42b8: $42
	ldh a, [rAUDVOL]                                 ; $42b9: $f0 $24
	ld c, d                                          ; $42bb: $4a
	ld c, a                                          ; $42bc: $4f
	ld c, b                                          ; $42bd: $48
	and b                                            ; $42be: $a0
	ld b, b                                          ; $42bf: $40
	ld c, l                                          ; $42c0: $4d
	ld e, e                                          ; $42c1: $5b
	ld d, [hl]                                       ; $42c2: $56
	inc [hl]                                         ; $42c3: $34
	ldh a, [$f1]                                     ; $42c4: $f0 $f1
	ld a, l                                          ; $42c6: $7d
	pop af                                           ; $42c7: $f1
	db $e3                                           ; $42c8: $e3
	pop af                                           ; $42c9: $f1
	dec b                                            ; $42ca: $05
	ld h, l                                          ; $42cb: $65
	ldh a, [$32]                                     ; $42cc: $f0 $32
	ld b, d                                          ; $42ce: $42
	inc de                                           ; $42cf: $13
	di                                               ; $42d0: $f3
	add l                                            ; $42d1: $85
	ldh a, [$2c]                                     ; $42d2: $f0 $2c
	ldh a, [c]                                       ; $42d4: $f2
	adc l                                            ; $42d5: $8d
	ld b, d                                          ; $42d6: $42
	ldh a, [rAUDVOL]                                 ; $42d7: $f0 $24
	ld c, d                                          ; $42d9: $4a
	ld c, a                                          ; $42da: $4f
	ld c, b                                          ; $42db: $48
	and b                                            ; $42dc: $a0
	ld b, b                                          ; $42dd: $40
	ld c, l                                          ; $42de: $4d
	ld e, e                                          ; $42df: $5b
	ld d, [hl]                                       ; $42e0: $56
	inc [hl]                                         ; $42e1: $34
	db $ec                                           ; $42e2: $ec
	ld e, [hl]                                       ; $42e3: $5e
	ld b, d                                          ; $42e4: $42
	inc de                                           ; $42e5: $13
	pop af                                           ; $42e6: $f1
	ld d, d                                          ; $42e7: $52
	ldh a, [rAUD1ENV]                                ; $42e8: $f0 $12
	pop af                                           ; $42ea: $f1
	ret nz                                           ; $42eb: $c0

	ldh a, [rP1]                                     ; $42ec: $f0 $00
	ldh a, [$27]                                     ; $42ee: $f0 $27
	ldh a, [$7e]                                     ; $42f0: $f0 $7e
	ld h, l                                          ; $42f2: $65
	ld b, d                                          ; $42f3: $42
	add e                                            ; $42f4: $83
	ldh a, [c]                                       ; $42f5: $f2
	ld b, h                                          ; $42f6: $44
	ld [hl], e                                       ; $42f7: $73
	sub e                                            ; $42f8: $93
	ld h, d                                          ; $42f9: $62
	ld c, b                                          ; $42fa: $48
	add hl, bc                                       ; $42fb: $09
	ld b, b                                          ; $42fc: $40
	ld c, l                                          ; $42fd: $4d
	ld e, e                                          ; $42fe: $5b
	ld d, [hl]                                       ; $42ff: $56
	inc [hl]                                         ; $4300: $34
	db $ec                                           ; $4301: $ec
	ld e, [hl]                                       ; $4302: $5e
	ld b, d                                          ; $4303: $42
	inc de                                           ; $4304: $13
	pop af                                           ; $4305: $f1
	ld d, d                                          ; $4306: $52
	db $ed                                           ; $4307: $ed
	ld c, b                                          ; $4308: $48
	pop af                                           ; $4309: $f1
	sub a                                            ; $430a: $97
	ldh a, [rP1]                                     ; $430b: $f0 $00
	ld b, d                                          ; $430d: $42
	pop af                                           ; $430e: $f1
	ld a, [bc]                                       ; $430f: $0a
	pop af                                           ; $4310: $f1
	ld [hl], d                                       ; $4311: $72
	ld h, d                                          ; $4312: $62
	ld c, b                                          ; $4313: $48
	and b                                            ; $4314: $a0
	cpl                                              ; $4315: $2f
	ld b, e                                          ; $4316: $43
	jr c, jr_08a_434d                                ; $4317: $38 $34

	jr c, jr_08a_4389                                ; $4319: $38 $6e

	inc [hl]                                         ; $431b: $34
	jr c, jr_08a_4356                                ; $431c: $38 $38

	ld b, l                                          ; $431e: $45
	xor b                                            ; $431f: $a8
	db $ec                                           ; $4320: $ec
	ld sp, $2fa0                                     ; $4321: $31 $a0 $2f
	ld b, e                                          ; $4324: $43
	ld b, [hl]                                       ; $4325: $46

jr_08a_4326:
	pop af                                           ; $4326: $f1
	dec [hl]                                         ; $4327: $35
	ld b, [hl]                                       ; $4328: $46
	inc [hl]                                         ; $4329: $34
	xor $1b                                          ; $432a: $ee $1b
	ld l, h                                          ; $432c: $6c
	dec a                                            ; $432d: $3d
	jr c, jr_08a_4343                                ; $432e: $38 $13

	ld b, h                                          ; $4330: $44
	ld a, [hl-]                                      ; $4331: $3a
	dec [hl]                                         ; $4332: $35
	db $ed                                           ; $4333: $ed
	ld d, a                                          ; $4334: $57
	ld b, [hl]                                       ; $4335: $46
	ld e, h                                          ; $4336: $5c
	ld d, b                                          ; $4337: $50
	ld [hl], c                                       ; $4338: $71
	ld c, [hl]                                       ; $4339: $4e
	inc a                                            ; $433a: $3c
	ld c, b                                          ; $433b: $48
	and b                                            ; $433c: $a0
	db $ed                                           ; $433d: $ed
	ld d, a                                          ; $433e: $57
	inc [hl]                                         ; $433f: $34
	db $ec                                           ; $4340: $ec
	db $d3                                           ; $4341: $d3
	inc de                                           ; $4342: $13

jr_08a_4343:
	ld a, b                                          ; $4343: $78
	ccf                                              ; $4344: $3f
	ld d, l                                          ; $4345: $55
	ld c, l                                          ; $4346: $4d
	ld a, [hl-]                                      ; $4347: $3a
	inc a                                            ; $4348: $3c
	dec sp                                           ; $4349: $3b
	dec a                                            ; $434a: $3d
	ld b, d                                          ; $434b: $42
	xor c                                            ; $434c: $a9

jr_08a_434d:
	sbc h                                            ; $434d: $9c
	dec sp                                           ; $434e: $3b
	ld c, c                                          ; $434f: $49
	db $ec                                           ; $4350: $ec
	db $dd                                           ; $4351: $dd
	ld b, d                                          ; $4352: $42
	ld b, a                                          ; $4353: $47
	ld c, b                                          ; $4354: $48
	and b                                            ; $4355: $a0

jr_08a_4356:
	db $ed                                           ; $4356: $ed
	ld d, a                                          ; $4357: $57
	inc [hl]                                         ; $4358: $34
	db $ec                                           ; $4359: $ec
	db $d3                                           ; $435a: $d3
	inc de                                           ; $435b: $13
	ld a, b                                          ; $435c: $78
	ld a, [hl-]                                      ; $435d: $3a
	inc a                                            ; $435e: $3c
	dec sp                                           ; $435f: $3b
	dec a                                            ; $4360: $3d
	ld b, d                                          ; $4361: $42
	xor b                                            ; $4362: $a8
	sbc h                                            ; $4363: $9c
	dec sp                                           ; $4364: $3b
	ld c, c                                          ; $4365: $49
	db $ec                                           ; $4366: $ec
	db $dd                                           ; $4367: $dd
	ld b, d                                          ; $4368: $42
	ld b, l                                          ; $4369: $45
	xor b                                            ; $436a: $a8
	xor $1d                                          ; $436b: $ee $1d
	ld h, d                                          ; $436d: $62
	ld d, c                                          ; $436e: $51
	dec sp                                           ; $436f: $3b
	pop af                                           ; $4370: $f1
	rla                                              ; $4371: $17
	inc a                                            ; $4372: $3c
	ld d, c                                          ; $4373: $51
	ld a, [hl-]                                      ; $4374: $3a
	ld b, c                                          ; $4375: $41
	ccf                                              ; $4376: $3f
	inc de                                           ; $4377: $13
	ldh a, [$5f]                                     ; $4378: $f0 $5f
	di                                               ; $437a: $f3
	dec de                                           ; $437b: $1b
	ld b, l                                          ; $437c: $45
	and b                                            ; $437d: $a0

jr_08a_437e:
	sbc h                                            ; $437e: $9c
	dec sp                                           ; $437f: $3b
	ld c, c                                          ; $4380: $49
	inc [hl]                                         ; $4381: $34
	db $ec                                           ; $4382: $ec
	db $dd                                           ; $4383: $dd
	ld b, d                                          ; $4384: $42
	ld b, a                                          ; $4385: $47
	xor h                                            ; $4386: $ac
	ldh a, [$d8]                                     ; $4387: $f0 $d8

jr_08a_4389:
	ld e, d                                          ; $4389: $5a
	jr c, jr_08a_4326                                ; $438a: $38 $9a

	ld d, c                                          ; $438c: $51
	ld c, [hl]                                       ; $438d: $4e
	ld b, d                                          ; $438e: $42
	ld c, h                                          ; $438f: $4c
	xor b                                            ; $4390: $a8
	db $eb                                           ; $4391: $eb
	di                                               ; $4392: $f3
	db $ed                                           ; $4393: $ed
	ld l, a                                          ; $4394: $6f
	ld h, c                                          ; $4395: $61
	ld d, e                                          ; $4396: $53
	inc de                                           ; $4397: $13
	ld b, l                                          ; $4398: $45
	ld d, l                                          ; $4399: $55
	ldh a, [rTAC]                                    ; $439a: $f0 $07
	inc a                                            ; $439c: $3c
	dec sp                                           ; $439d: $3b
	dec a                                            ; $439e: $3d
	ld h, e                                          ; $439f: $63
	and b                                            ; $43a0: $a0
	ld h, h                                          ; $43a1: $64
	sbc [hl]                                         ; $43a2: $9e
	dec sp                                           ; $43a3: $3b
	ccf                                              ; $43a4: $3f
	xor h                                            ; $43a5: $ac
	db $ed                                           ; $43a6: $ed
	xor c                                            ; $43a7: $a9
	ld h, c                                          ; $43a8: $61
	ld d, [hl]                                       ; $43a9: $56
	ld b, c                                          ; $43aa: $41
	ld b, a                                          ; $43ab: $47
	inc de                                           ; $43ac: $13
	ld [$a0bb], a                                    ; $43ad: $ea $bb $a0
	db $ec                                           ; $43b0: $ec
	db $d3                                           ; $43b1: $d3
	xor l                                            ; $43b2: $ad
	db $ec                                           ; $43b3: $ec
	db $d3                                           ; $43b4: $d3
	xor h                                            ; $43b5: $ac
	ld a, b                                          ; $43b6: $78
	ccf                                              ; $43b7: $3f
	ld d, l                                          ; $43b8: $55
	ld c, l                                          ; $43b9: $4d
	ld a, [hl-]                                      ; $43ba: $3a
	inc a                                            ; $43bb: $3c
	dec sp                                           ; $43bc: $3b
	dec a                                            ; $43bd: $3d
	ld b, c                                          ; $43be: $41
	ld c, d                                          ; $43bf: $4a
	ld d, c                                          ; $43c0: $51
	inc a                                            ; $43c1: $3c
	xor c                                            ; $43c2: $a9
	ldh a, [$d8]                                     ; $43c3: $f0 $d8
	ld e, d                                          ; $43c5: $5a
	ld d, c                                          ; $43c6: $51
	ldh a, [$cb]                                     ; $43c7: $f0 $cb
	ld d, d                                          ; $43c9: $52
	ld d, c                                          ; $43ca: $51
	ld c, b                                          ; $43cb: $48
	and b                                            ; $43cc: $a0
	db $ed                                           ; $43cd: $ed
	ld d, a                                          ; $43ce: $57
	inc [hl]                                         ; $43cf: $34
	db $ec                                           ; $43d0: $ec
	db $d3                                           ; $43d1: $d3
	inc de                                           ; $43d2: $13
	ld a, b                                          ; $43d3: $78
	ld a, [hl-]                                      ; $43d4: $3a
	inc a                                            ; $43d5: $3c
	dec sp                                           ; $43d6: $3b
	dec a                                            ; $43d7: $3d
	ld b, c                                          ; $43d8: $41
	ld c, d                                          ; $43d9: $4a
	ld d, c                                          ; $43da: $51
	inc a                                            ; $43db: $3c
	xor c                                            ; $43dc: $a9
	pop af                                           ; $43dd: $f1
	ld de, $65f0                                     ; $43de: $11 $f0 $65
	ld b, a                                          ; $43e1: $47
	ldh a, [rAUD1LOW]                                ; $43e2: $f0 $13
	ldh a, [$63]                                     ; $43e4: $f0 $63
	ld h, d                                          ; $43e6: $62
	ld e, b                                          ; $43e7: $58
	ld a, c                                          ; $43e8: $79
	ccf                                              ; $43e9: $3f
	xor h                                            ; $43ea: $ac
	db $ec                                           ; $43eb: $ec
	db $dd                                           ; $43ec: $dd
	ld b, d                                          ; $43ed: $42
	ld b, a                                          ; $43ee: $47
	ld c, b                                          ; $43ef: $48
	and b                                            ; $43f0: $a0
	xor $1d                                          ; $43f1: $ee $1d
	ld h, d                                          ; $43f3: $62
	ldh a, [c]                                       ; $43f4: $f2
	dec c                                            ; $43f5: $0d
	ld c, l                                          ; $43f6: $4d
	ld a, [hl-]                                      ; $43f7: $3a
	jr c, jr_08a_437e                                ; $43f8: $38 $84

	ld c, e                                          ; $43fa: $4b
	inc de                                           ; $43fb: $13
	ldh a, [$64]                                     ; $43fc: $f0 $64
	jr c, jr_08a_444a                                ; $43fe: $38 $4a

	ld d, c                                          ; $4400: $51
	and b                                            ; $4401: $a0
	ld h, h                                          ; $4402: $64
	sbc [hl]                                         ; $4403: $9e
	dec sp                                           ; $4404: $3b
	ccf                                              ; $4405: $3f
	xor h                                            ; $4406: $ac
	db $ec                                           ; $4407: $ec
	rst SubAFromDE                                          ; $4408: $df
	ld b, a                                          ; $4409: $47
	ld [$a0bb], a                                    ; $440a: $ea $bb $a0
	ld l, a                                          ; $440d: $6f
	ld c, c                                          ; $440e: $49
	ld b, d                                          ; $440f: $42
	xor $1d                                          ; $4410: $ee $1d
	ld h, d                                          ; $4412: $62
	ldh a, [c]                                       ; $4413: $f2
	ld hl, $3d3b                                     ; $4414: $21 $3b $3d
	inc de                                           ; $4417: $13
	ld h, e                                          ; $4418: $63
	ld c, h                                          ; $4419: $4c
	dec [hl]                                         ; $441a: $35
	ldh a, [$f4]                                     ; $441b: $f0 $f4
	di                                               ; $441d: $f3
	ld c, l                                          ; $441e: $4d
	ld a, $3a                                        ; $441f: $3e $3a
	ld e, b                                          ; $4421: $58
	jr c, @-$5e                                      ; $4422: $38 $a0

	ld l, a                                          ; $4424: $6f
	ld c, c                                          ; $4425: $49
	ld b, d                                          ; $4426: $42
	xor $1d                                          ; $4427: $ee $1d
	ld h, d                                          ; $4429: $62
	ldh a, [c]                                       ; $442a: $f2
	ld hl, $134e                                     ; $442b: $21 $4e $13
	ld a, [hl-]                                      ; $442e: $3a
	ld b, c                                          ; $442f: $41
	ccf                                              ; $4430: $3f
	inc [hl]                                         ; $4431: $34
	ldh a, [$0d]                                     ; $4432: $f0 $0d
	di                                               ; $4434: $f3
	ld l, l                                          ; $4435: $6d
	ld d, e                                          ; $4436: $53
	ld b, [hl]                                       ; $4437: $46
	ld c, [hl]                                       ; $4438: $4e
	db $ec                                           ; $4439: $ec
	ret c                                            ; $443a: $d8

	ld b, d                                          ; $443b: $42
	xor b                                            ; $443c: $a8
	db $f4                                           ; $443d: $f4
	or c                                             ; $443e: $b1
	ldh a, [c]                                       ; $443f: $f2
	xor b                                            ; $4440: $a8
	di                                               ; $4441: $f3
	ld a, [de]                                       ; $4442: $1a
	ld c, d                                          ; $4443: $4a
	ld c, a                                          ; $4444: $4f
	db $ec                                           ; $4445: $ec
	inc c                                            ; $4446: $0c
	ld a, $50                                        ; $4447: $3e $50
	and b                                            ; $4449: $a0

jr_08a_444a:
	db $eb                                           ; $444a: $eb
	di                                               ; $444b: $f3
	inc [hl]                                         ; $444c: $34
	push af                                          ; $444d: $f5
	ld a, [hl]                                       ; $444e: $7e
	push af                                          ; $444f: $f5
	ld a, a                                          ; $4450: $7f
	ld b, l                                          ; $4451: $45
	xor b                                            ; $4452: $a8
	ld b, [hl]                                       ; $4453: $46
	ld [hl], h                                       ; $4454: $74
	inc [hl]                                         ; $4455: $34
	ld l, d                                          ; $4456: $6a
	ldh a, [$0d]                                     ; $4457: $f0 $0d
	ld b, d                                          ; $4459: $42
	db $ec                                           ; $445a: $ec
	add d                                            ; $445b: $82
	ld d, e                                          ; $445c: $53
	inc de                                           ; $445d: $13
	sub b                                            ; $445e: $90
	ld a, $6c                                        ; $445f: $3e $6c
	ld c, h                                          ; $4461: $4c
	add l                                            ; $4462: $85
	ld c, b                                          ; $4463: $48
	and b                                            ; $4464: $a0
	ld h, h                                          ; $4465: $64
	sbc [hl]                                         ; $4466: $9e
	dec sp                                           ; $4467: $3b
	ccf                                              ; $4468: $3f
	xor h                                            ; $4469: $ac
	db $ec                                           ; $446a: $ec
	ldh [rBGP], a                                    ; $446b: $e0 $47
	ld [$a0bb], a                                    ; $446d: $ea $bb $a0
	add sp, -$5c                                     ; $4470: $e8 $a4
	xor c                                            ; $4472: $a9
	xor $1d                                          ; $4473: $ee $1d
	ld a, $3f                                        ; $4475: $3e $3f
	dec a                                            ; $4477: $3d
	db $ec                                           ; $4478: $ec
	ret c                                            ; $4479: $d8

	xor b                                            ; $447a: $a8
	ldh a, [rSC]                                     ; $447b: $f0 $02
	ld a, l                                          ; $447d: $7d
	pop af                                           ; $447e: $f1
	db $e3                                           ; $447f: $e3
	ld e, c                                          ; $4480: $59
	inc [hl]                                         ; $4481: $34
	pop af                                           ; $4482: $f1
	ld a, [hl]                                       ; $4483: $7e
	add b                                            ; $4484: $80
	ld e, h                                          ; $4485: $5c
	and b                                            ; $4486: $a0
	jp hl                                            ; $4487: $e9


	db $e4                                           ; $4488: $e4
	xor b                                            ; $4489: $a8
	xor $1d                                          ; $448a: $ee $1d
	ld h, d                                          ; $448c: $62
	ldh a, [c]                                       ; $448d: $f2
	ld hl, $3a4e                                     ; $448e: $21 $4e $3a
	ld b, c                                          ; $4491: $41
	ccf                                              ; $4492: $3f
	inc de                                           ; $4493: $13
	db $eb                                           ; $4494: $eb
	ld a, d                                          ; $4495: $7a
	jr c, @+$65                                      ; $4496: $38 $63

	and b                                            ; $4498: $a0
	xor $1d                                          ; $4499: $ee $1d
	ld h, d                                          ; $449b: $62
	ldh a, [c]                                       ; $449c: $f2
	ld hl, $3a4e                                     ; $449d: $21 $4e $3a
	ld b, c                                          ; $44a0: $41
	ccf                                              ; $44a1: $3f
	inc de                                           ; $44a2: $13
	ldh a, [$5f]                                     ; $44a3: $f0 $5f
	di                                               ; $44a5: $f3
	dec de                                           ; $44a6: $1b
	ld b, l                                          ; $44a7: $45
	dec [hl]                                         ; $44a8: $35
	pop af                                           ; $44a9: $f1
	ld c, c                                          ; $44aa: $49
	ld e, c                                          ; $44ab: $59
	ld l, c                                          ; $44ac: $69
	di                                               ; $44ad: $f3
	ld h, [hl]                                       ; $44ae: $66
	pop af                                           ; $44af: $f1
	sub a                                            ; $44b0: $97
	ldh a, [$03]                                     ; $44b1: $f0 $03
	and b                                            ; $44b3: $a0
	ld h, h                                          ; $44b4: $64
	sbc [hl]                                         ; $44b5: $9e
	dec sp                                           ; $44b6: $3b
	ccf                                              ; $44b7: $3f
	xor h                                            ; $44b8: $ac
	db $ec                                           ; $44b9: $ec
	pop hl                                           ; $44ba: $e1
	ld b, a                                          ; $44bb: $47
	ld [$a0bb], a                                    ; $44bc: $ea $bb $a0
	ldh a, [$a7]                                     ; $44bf: $f0 $a7
	pop af                                           ; $44c1: $f1
	dec de                                           ; $44c2: $1b
	ld c, a                                          ; $44c3: $4f
	ld a, [hl-]                                      ; $44c4: $3a
	ld a, $4a                                        ; $44c5: $3e $4a
	xor h                                            ; $44c7: $ac
	ld d, c                                          ; $44c8: $51
	dec sp                                           ; $44c9: $3b
	pop af                                           ; $44ca: $f1
	rla                                              ; $44cb: $17
	inc a                                            ; $44cc: $3c
	ld d, c                                          ; $44cd: $51

jr_08a_44ce:
	ld a, [hl-]                                      ; $44ce: $3a
	ld b, c                                          ; $44cf: $41
	ccf                                              ; $44d0: $3f
	xor h                                            ; $44d1: $ac
	ldh a, [$ab]                                     ; $44d2: $f0 $ab
	ld c, c                                          ; $44d4: $49
	ld a, $3f                                        ; $44d5: $3e $3f
	ldh a, [$5f]                                     ; $44d7: $f0 $5f
	di                                               ; $44d9: $f3
	dec de                                           ; $44da: $1b
	ld c, h                                          ; $44db: $4c
	and b                                            ; $44dc: $a0
	ld h, e                                          ; $44dd: $63
	ldh a, [rAUD1SWEEP]                              ; $44de: $f0 $10
	ld h, e                                          ; $44e0: $63
	ldh a, [rAUD1SWEEP]                              ; $44e1: $f0 $10
	ldh a, [$cc]                                     ; $44e3: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $44e5: $f0 $88
	ld h, d                                          ; $44e7: $62
	inc de                                           ; $44e8: $13
	ldh a, [$c9]                                     ; $44e9: $f0 $c9
	ld e, l                                          ; $44eb: $5d
	ccf                                              ; $44ec: $3f
	ld b, [hl]                                       ; $44ed: $46
	ldh a, [rSB]                                     ; $44ee: $f0 $01
	dec a                                            ; $44f0: $3d
	ld b, d                                          ; $44f1: $42
	ld b, a                                          ; $44f2: $47
	xor h                                            ; $44f3: $ac
	ldh a, [rSCY]                                    ; $44f4: $f0 $42
	ldh a, [rAUD1SWEEP]                              ; $44f6: $f0 $10
	ld e, l                                          ; $44f8: $5d
	ld a, [hl-]                                      ; $44f9: $3a
	jr c, jr_08a_4546                                ; $44fa: $38 $4a

	ld b, l                                          ; $44fc: $45
	and b                                            ; $44fd: $a0
	ld l, a                                          ; $44fe: $6f
	ld h, d                                          ; $44ff: $62
	sbc c                                            ; $4500: $99
	dec a                                            ; $4501: $3d
	ld a, c                                          ; $4502: $79
	ld b, l                                          ; $4503: $45
	add hl, sp                                       ; $4504: $39
	ld a, [hl-]                                      ; $4505: $3a
	ld b, c                                          ; $4506: $41
	ccf                                              ; $4507: $3f
	xor h                                            ; $4508: $ac
	di                                               ; $4509: $f3
	ld c, h                                          ; $450a: $4c
	ldh a, [rAUD1HIGH]                               ; $450b: $f0 $14
	ldh a, [$0a]                                     ; $450d: $f0 $0a
	jr c, jr_08a_4574                                ; $450f: $38 $63

	ld b, l                                          ; $4511: $45
	and b                                            ; $4512: $a0
	ld h, h                                          ; $4513: $64
	sbc [hl]                                         ; $4514: $9e
	dec sp                                           ; $4515: $3b
	ccf                                              ; $4516: $3f
	xor h                                            ; $4517: $ac
	db $ed                                           ; $4518: $ed
	ld d, e                                          ; $4519: $53
	ld b, a                                          ; $451a: $47
	ld [$a0bb], a                                    ; $451b: $ea $bb $a0
	ldh a, [$9f]                                     ; $451e: $f0 $9f
	ld e, e                                          ; $4520: $5b
	ld d, b                                          ; $4521: $50
	ld b, c                                          ; $4522: $41
	ld a, [hl-]                                      ; $4523: $3a
	jr c, jr_08a_44ce                                ; $4524: $38 $a8

	ldh a, [$a7]                                     ; $4526: $f0 $a7
	pop af                                           ; $4528: $f1
	dec de                                           ; $4529: $1b
	sbc l                                            ; $452a: $9d
	ld d, b                                          ; $452b: $50
	jr c, jr_08a_456c                                ; $452c: $38 $3e

	ccf                                              ; $452e: $3f
	ld b, l                                          ; $452f: $45
	ld c, h                                          ; $4530: $4c
	and b                                            ; $4531: $a0
	ld h, c                                          ; $4532: $61
	ld h, [hl]                                       ; $4533: $66
	ldh a, [$be]                                     ; $4534: $f0 $be
	inc a                                            ; $4536: $3c
	ld e, c                                          ; $4537: $59
	dec sp                                           ; $4538: $3b
	xor b                                            ; $4539: $a8
	ld d, c                                          ; $453a: $51
	dec sp                                           ; $453b: $3b
	pop af                                           ; $453c: $f1
	rla                                              ; $453d: $17
	inc a                                            ; $453e: $3c
	ld d, c                                          ; $453f: $51
	ld a, [hl-]                                      ; $4540: $3a
	ld b, c                                          ; $4541: $41
	ccf                                              ; $4542: $3f
	xor h                                            ; $4543: $ac
	ldh a, [rSCY]                                    ; $4544: $f0 $42

jr_08a_4546:
	ldh a, [rAUD1SWEEP]                              ; $4546: $f0 $10
	ld e, l                                          ; $4548: $5d
	ld e, a                                          ; $4549: $5f
	and d                                            ; $454a: $a2
	ldh a, [rSCY]                                    ; $454b: $f0 $42
	ldh a, [rAUD1SWEEP]                              ; $454d: $f0 $10
	ld e, l                                          ; $454f: $5d
	ld e, a                                          ; $4550: $5f
	ld b, l                                          ; $4551: $45
	and d                                            ; $4552: $a2
	ld h, h                                          ; $4553: $64
	sbc [hl]                                         ; $4554: $9e
	dec sp                                           ; $4555: $3b
	ccf                                              ; $4556: $3f

jr_08a_4557:
	xor h                                            ; $4557: $ac
	db $ed                                           ; $4558: $ed
	ld d, c                                          ; $4559: $51
	ld b, a                                          ; $455a: $47
	ld [$a0bb], a                                    ; $455b: $ea $bb $a0
	db $ec                                           ; $455e: $ec
	call nc, $edac                                   ; $455f: $d4 $ac $ed
	ld d, d                                          ; $4562: $52
	ld c, d                                          ; $4563: $4a
	ld d, c                                          ; $4564: $51
	ld e, l                                          ; $4565: $5d
	ld e, d                                          ; $4566: $5a
	and b                                            ; $4567: $a0
	cpl                                              ; $4568: $2f
	ld b, e                                          ; $4569: $43
	ld a, [hl-]                                      ; $456a: $3a
	ld b, c                                          ; $456b: $41

jr_08a_456c:
	ld b, h                                          ; $456c: $44
	xor b                                            ; $456d: $a8
	adc e                                            ; $456e: $8b
	ldh a, [$72]                                     ; $456f: $f0 $72
	inc a                                            ; $4571: $3c
	ld c, b                                          ; $4572: $48
	and b                                            ; $4573: $a0

jr_08a_4574:
	ld h, h                                          ; $4574: $64
	sbc [hl]                                         ; $4575: $9e
	inc [hl]                                         ; $4576: $34
	ldh a, [hDisp0_WX]                                     ; $4577: $f0 $89
	ldh a, [$2b]                                     ; $4579: $f0 $2b
	ld b, d                                          ; $457b: $42
	xor $27                                          ; $457c: $ee $27
	ld b, a                                          ; $457e: $47
	inc de                                           ; $457f: $13
	ld a, [hl-]                                      ; $4580: $3a
	ld b, c                                          ; $4581: $41
	inc a                                            ; $4582: $3c
	ld a, $3d                                        ; $4583: $3e $3d
	ld b, d                                          ; $4585: $42
	inc a                                            ; $4586: $3c
	and c                                            ; $4587: $a1
	cpl                                              ; $4588: $2f
	ld b, e                                          ; $4589: $43
	ld e, [hl]                                       ; $458a: $5e
	dec sp                                           ; $458b: $3b
	and c                                            ; $458c: $a1
	ld h, h                                          ; $458d: $64
	sbc [hl]                                         ; $458e: $9e
	xor h                                            ; $458f: $ac
	xor $27                                          ; $4590: $ee $27
	ld b, a                                          ; $4592: $47
	ld [$a0bb], a                                    ; $4593: $ea $bb $a0
	ldh a, [rVBK]                                    ; $4596: $f0 $4f
	sub c                                            ; $4598: $91
	dec a                                            ; $4599: $3d
	ld d, a                                          ; $459a: $57
	ld d, e                                          ; $459b: $53
	pop af                                           ; $459c: $f1
	adc d                                            ; $459d: $8a
	ld c, [hl]                                       ; $459e: $4e
	ld a, [hl-]                                      ; $459f: $3a
	ld d, b                                          ; $45a0: $50
	xor h                                            ; $45a1: $ac
	ld l, e                                          ; $45a2: $6b
	ld c, c                                          ; $45a3: $49
	inc a                                            ; $45a4: $3c
	ld a, $5f                                        ; $45a5: $3e $5f
	ld b, l                                          ; $45a7: $45
	xor b                                            ; $45a8: $a8
	db $ec                                           ; $45a9: $ec
	ld sp, $eba0                                     ; $45aa: $31 $a0 $eb
	rst FarCall                                          ; $45ad: $f7
	db $ed                                           ; $45ae: $ed
	ld d, a                                          ; $45af: $57
	xor l                                            ; $45b0: $ad
	inc hl                                           ; $45b1: $23
	db $ec                                           ; $45b2: $ec
	db $dd                                           ; $45b3: $dd
	ld b, c                                          ; $45b4: $41
	ld b, h                                          ; $45b5: $44
	ld b, l                                          ; $45b6: $45
	ld c, b                                          ; $45b7: $48
	and b                                            ; $45b8: $a0
	xor $1d                                          ; $45b9: $ee $1d
	ld a, $3d                                        ; $45bb: $3e $3d
	ld b, d                                          ; $45bd: $42
	ld b, a                                          ; $45be: $47
	ld c, b                                          ; $45bf: $48
	dec [hl]                                         ; $45c0: $35
	inc hl                                           ; $45c1: $23
	inc de                                           ; $45c2: $13
	ldh a, [$d8]                                     ; $45c3: $f0 $d8
	ld e, d                                          ; $45c5: $5a
	jr c, jr_08a_462b                                ; $45c6: $38 $63

	ld c, b                                          ; $45c8: $48
	and b                                            ; $45c9: $a0
	xor $1d                                          ; $45ca: $ee $1d
	ld h, d                                          ; $45cc: $62
	ldh a, [c]                                       ; $45cd: $f2
	dec c                                            ; $45ce: $0d
	ld c, l                                          ; $45cf: $4d
	ld a, [hl-]                                      ; $45d0: $3a
	jr c, jr_08a_4557                                ; $45d1: $38 $84

	ld c, e                                          ; $45d3: $4b
	inc de                                           ; $45d4: $13
	add a                                            ; $45d5: $87
	ldh a, [$64]                                     ; $45d6: $f0 $64
	jr c, jr_08a_4624                                ; $45d8: $38 $4a

	ld d, c                                          ; $45da: $51
	ld c, b                                          ; $45db: $48
	and b                                            ; $45dc: $a0
	ld h, h                                          ; $45dd: $64
	sbc [hl]                                         ; $45de: $9e
	dec sp                                           ; $45df: $3b
	ccf                                              ; $45e0: $3f
	xor h                                            ; $45e1: $ac
	db $ec                                           ; $45e2: $ec
	and $47                                          ; $45e3: $e6 $47
	ld [$a0bb], a                                    ; $45e5: $ea $bb $a0
	cpl                                              ; $45e8: $2f
	ld [$37bc], a                                    ; $45e9: $ea $bc $37
	inc de                                           ; $45ec: $13
	ldh a, [rWY]                                     ; $45ed: $f0 $4a
	ld e, c                                          ; $45ef: $59
	ld l, c                                          ; $45f0: $69
	ld b, d                                          ; $45f1: $42
	ldh a, [$30]                                     ; $45f2: $f0 $30
	ldh a, [$28]                                     ; $45f4: $f0 $28
	ld h, d                                          ; $45f6: $62
	ldh a, [$2a]                                     ; $45f7: $f0 $2a
	ldh a, [$f5]                                     ; $45f9: $f0 $f5
	ld e, [hl]                                       ; $45fb: $5e
	dec a                                            ; $45fc: $3d
	ld b, d                                          ; $45fd: $42
	inc a                                            ; $45fe: $3c
	scf                                              ; $45ff: $37
	inc de                                           ; $4600: $13
	halt                                             ; $4601: $76
	ld c, e                                          ; $4602: $4b
	inc [hl]                                         ; $4603: $34
	db $ec                                           ; $4604: $ec
	db $ec                                           ; $4605: $ec
	jr c, jr_08a_4641                                ; $4606: $38 $39

	ldh a, [$6e]                                     ; $4608: $f0 $6e
	ldh a, [$c2]                                     ; $460a: $f0 $c2
	ld h, d                                          ; $460c: $62
	inc de                                           ; $460d: $13
	inc a                                            ; $460e: $3c
	ld d, d                                          ; $460f: $52
	ld a, $3f                                        ; $4610: $3e $3f
	db $ec                                           ; $4612: $ec
	push de                                          ; $4613: $d5
	ld b, c                                          ; $4614: $41
	ld b, h                                          ; $4615: $44
	ld e, c                                          ; $4616: $59
	and e                                            ; $4617: $a3
	cpl                                              ; $4618: $2f
	ld [$37bc], a                                    ; $4619: $ea $bc $37
	inc de                                           ; $461c: $13
	db $ed                                           ; $461d: $ed
	ld d, a                                          ; $461e: $57
	inc [hl]                                         ; $461f: $34
	add sp, $04                                      ; $4620: $e8 $04
	ld c, c                                          ; $4622: $49
	inc de                                           ; $4623: $13

jr_08a_4624:
	add sp, $4e                                      ; $4624: $e8 $4e
	and e                                            ; $4626: $a3
	cpl                                              ; $4627: $2f
	ld [hl-], a                                      ; $4628: $32
	jp hl                                            ; $4629: $e9


	xor h                                            ; $462a: $ac

jr_08a_462b:
	xor h                                            ; $462b: $ac
	jp hl                                            ; $462c: $e9


	jr z, @-$5b                                      ; $462d: $28 $a3

	ld l, e                                          ; $462f: $6b
	ld b, h                                          ; $4630: $44
	inc [hl]                                         ; $4631: $34
	pop af                                           ; $4632: $f1
	rra                                              ; $4633: $1f
	ld a, a                                          ; $4634: $7f
	ld a, [hl-]                                      ; $4635: $3a
	jr c, jr_08a_4672                                ; $4636: $38 $3a

	ld c, b                                          ; $4638: $48
	and b                                            ; $4639: $a0
	cpl                                              ; $463a: $2f
	ld b, e                                          ; $463b: $43
	jr c, jr_08a_46ac                                ; $463c: $38 $6e

	inc [hl]                                         ; $463e: $34
	ret                                              ; $463f: $c9


	ld a, [hl-]                                      ; $4640: $3a

jr_08a_4641:
	and b                                            ; $4641: $a0
	ld e, b                                          ; $4642: $58
	dec sp                                           ; $4643: $3b
	ld e, h                                          ; $4644: $5c
	xor h                                            ; $4645: $ac
	pop af                                           ; $4646: $f1
	add hl, de                                       ; $4647: $19
	ldh a, [c]                                       ; $4648: $f2
	ld h, $47                                        ; $4649: $26 $47
	di                                               ; $464b: $f3
	ret c                                            ; $464c: $d8

	ld b, c                                          ; $464d: $41
	ld b, h                                          ; $464e: $44
	ld b, c                                          ; $464f: $41
	ld b, h                                          ; $4650: $44
	ld e, l                                          ; $4651: $5d
	ld e, d                                          ; $4652: $5a
	ld c, b                                          ; $4653: $48
	and b                                            ; $4654: $a0
	ldh a, [$0a]                                     ; $4655: $f0 $0a
	ld d, l                                          ; $4657: $55
	inc [hl]                                         ; $4658: $34
	ld l, e                                          ; $4659: $6b
	ld c, c                                          ; $465a: $49
	inc a                                            ; $465b: $3c
	ld a, $3d                                        ; $465c: $3e $3d
	ldh a, [$08]                                     ; $465e: $f0 $08
	add hl, sp                                       ; $4660: $39
	ld d, e                                          ; $4661: $53
	inc de                                           ; $4662: $13
	jr c, jr_08a_469d                                ; $4663: $38 $38

	adc l                                            ; $4665: $8d
	dec [hl]                                         ; $4666: $35
	db $ec                                           ; $4667: $ec
	ld sp, $f0a0                                     ; $4668: $31 $a0 $f0
	jp $89f0                                         ; $466b: $c3 $f0 $89


	inc [hl]                                         ; $466e: $34
	halt                                             ; $466f: $76
	ld b, h                                          ; $4670: $44
	xor b                                            ; $4671: $a8

jr_08a_4672:
	pop af                                           ; $4672: $f1
	add h                                            ; $4673: $84
	ld b, h                                          ; $4674: $44
	and b                                            ; $4675: $a0
	cpl                                              ; $4676: $2f
	ld b, e                                          ; $4677: $43
	ldh a, [$98]                                     ; $4678: $f0 $98
	ld b, h                                          ; $467a: $44
	and c                                            ; $467b: $a1
	ld l, d                                          ; $467c: $6a
	ldh a, [rAUD1HIGH]                               ; $467d: $f0 $14
	ld b, d                                          ; $467f: $42
	db $ed                                           ; $4680: $ed
	adc l                                            ; $4681: $8d
	add a                                            ; $4682: $87
	ldh a, [rHDMA3]                                  ; $4683: $f0 $53
	ld c, e                                          ; $4685: $4b
	inc de                                           ; $4686: $13
	halt                                             ; $4687: $76
	ld b, d                                          ; $4688: $42
	ldh a, [c]                                       ; $4689: $f2
	sbc d                                            ; $468a: $9a
	ld d, a                                          ; $468b: $57
	ldh a, [c]                                       ; $468c: $f2
	or d                                             ; $468d: $b2
	ldh a, [c]                                       ; $468e: $f2
	ld d, [hl]                                       ; $468f: $56
	ld c, l                                          ; $4690: $4d
	ldh a, [c]                                       ; $4691: $f2
	adc b                                            ; $4692: $88
	ldh a, [$5d]                                     ; $4693: $f0 $5d
	pop af                                           ; $4695: $f1
	jr nz, jr_08a_46fa                               ; $4696: $20 $62

	inc de                                           ; $4698: $13
	sub b                                            ; $4699: $90
	ld a, $6c                                        ; $469a: $3e $6c
	ld b, a                                          ; $469c: $47

jr_08a_469d:
	ld a, $3f                                        ; $469d: $3e $3f
	ccf                                              ; $469f: $3f
	ld d, l                                          ; $46a0: $55
	ld b, c                                          ; $46a1: $41
	ld a, [hl-]                                      ; $46a2: $3a
	and b                                            ; $46a3: $a0
	cpl                                              ; $46a4: $2f
	ld b, e                                          ; $46a5: $43
	ld l, l                                          ; $46a6: $6d
	ldh a, [$65]                                     ; $46a7: $f0 $65
	inc [hl]                                         ; $46a9: $34
	ld l, e                                          ; $46aa: $6b
	ld b, d                                          ; $46ab: $42

jr_08a_46ac:
	sbc d                                            ; $46ac: $9a
	ld b, h                                          ; $46ad: $44
	ld b, l                                          ; $46ae: $45
	and b                                            ; $46af: $a0
	cpl                                              ; $46b0: $2f
	ld b, e                                          ; $46b1: $43
	db $eb                                           ; $46b2: $eb
	inc a                                            ; $46b3: $3c
	xor h                                            ; $46b4: $ac
	add sp, -$38                                     ; $46b5: $e8 $c8
	and b                                            ; $46b7: $a0
	cpl                                              ; $46b8: $2f
	ld [$ac10], a                                    ; $46b9: $ea $10 $ac
	jp hl                                            ; $46bc: $e9


	add l                                            ; $46bd: $85
	add hl, bc                                       ; $46be: $09
	cpl                                              ; $46bf: $2f
	ld [$0912], a                                    ; $46c0: $ea $12 $09
	cpl                                              ; $46c3: $2f
	jp hl                                            ; $46c4: $e9


	add [hl]                                         ; $46c5: $86
	add hl, bc                                       ; $46c6: $09
	cpl                                              ; $46c7: $2f
	ld b, e                                          ; $46c8: $43
	db $eb                                           ; $46c9: $eb
	dec a                                            ; $46ca: $3d
	inc de                                           ; $46cb: $13
	ld [$a011], a                                    ; $46cc: $ea $11 $a0
	ld [$ac13], a                                    ; $46cf: $ea $13 $ac
	ld c, c                                          ; $46d2: $49
	ccf                                              ; $46d3: $3f
	ld c, a                                          ; $46d4: $4f
	ldh a, [$57]                                     ; $46d5: $f0 $57
	ldh a, [$ae]                                     ; $46d7: $f0 $ae
	ld b, h                                          ; $46d9: $44
	dec sp                                           ; $46da: $3b
	dec a                                            ; $46db: $3d
	ld h, e                                          ; $46dc: $63
	xor b                                            ; $46dd: $a8
	ld b, [hl]                                       ; $46de: $46
	ld d, a                                          ; $46df: $57
	ld d, e                                          ; $46e0: $53
	ld c, c                                          ; $46e1: $49
	add hl, sp                                       ; $46e2: $39
	and b                                            ; $46e3: $a0
	ld [$ac13], a                                    ; $46e4: $ea $13 $ac
	ld c, c                                          ; $46e7: $49
	ccf                                              ; $46e8: $3f
	ld c, a                                          ; $46e9: $4f
	cp e                                             ; $46ea: $bb
	ld h, e                                          ; $46eb: $63
	xor b                                            ; $46ec: $a8
	ld b, [hl]                                       ; $46ed: $46
	ld d, a                                          ; $46ee: $57
	ld d, e                                          ; $46ef: $53
	ld c, c                                          ; $46f0: $49
	add hl, sp                                       ; $46f1: $39
	and b                                            ; $46f2: $a0
	ld [$ac13], a                                    ; $46f3: $ea $13 $ac
	ld b, l                                          ; $46f6: $45
	inc a                                            ; $46f7: $3c
	dec sp                                           ; $46f8: $3b
	dec a                                            ; $46f9: $3d

jr_08a_46fa:
	ld h, e                                          ; $46fa: $63
	xor b                                            ; $46fb: $a8
	ld b, [hl]                                       ; $46fc: $46
	ld d, a                                          ; $46fd: $57
	ld d, e                                          ; $46fe: $53
	ld c, c                                          ; $46ff: $49
	add hl, sp                                       ; $4700: $39
	and b                                            ; $4701: $a0
	ld [$ac14], a                                    ; $4702: $ea $14 $ac
	ld d, c                                          ; $4705: $51
	ld [hl], b                                       ; $4706: $70
	ld d, l                                          ; $4707: $55
	ld b, l                                          ; $4708: $45
	inc a                                            ; $4709: $3c
	dec sp                                           ; $470a: $3b
	dec a                                            ; $470b: $3d
	ld h, e                                          ; $470c: $63
	xor b                                            ; $470d: $a8
	ld b, [hl]                                       ; $470e: $46
	ld d, a                                          ; $470f: $57
	ld d, e                                          ; $4710: $53
	ld c, c                                          ; $4711: $49
	add hl, sp                                       ; $4712: $39
	and b                                            ; $4713: $a0
	ld [$ac14], a                                    ; $4714: $ea $14 $ac
	ld c, c                                          ; $4717: $49
	ccf                                              ; $4718: $3f
	ld c, a                                          ; $4719: $4f
	cp e                                             ; $471a: $bb
	ld h, e                                          ; $471b: $63
	xor b                                            ; $471c: $a8
	ld b, [hl]                                       ; $471d: $46
	ld d, a                                          ; $471e: $57
	ld d, e                                          ; $471f: $53
	ld c, c                                          ; $4720: $49
	add hl, sp                                       ; $4721: $39
	and b                                            ; $4722: $a0
	ld [$ac14], a                                    ; $4723: $ea $14 $ac
	ldh a, [$fa]                                     ; $4726: $f0 $fa
	ld l, h                                          ; $4728: $6c
	ldh a, [$a9]                                     ; $4729: $f0 $a9
	ld e, [hl]                                       ; $472b: $5e
	ld d, e                                          ; $472c: $53
	ld b, [hl]                                       ; $472d: $46
	dec sp                                           ; $472e: $3b
	dec a                                            ; $472f: $3d
	ld h, e                                          ; $4730: $63
	xor b                                            ; $4731: $a8
	ld b, [hl]                                       ; $4732: $46
	ld d, a                                          ; $4733: $57
	ld d, e                                          ; $4734: $53
	ld c, c                                          ; $4735: $49
	add hl, sp                                       ; $4736: $39
	and b                                            ; $4737: $a0
	ld b, [hl]                                       ; $4738: $46
	dec sp                                           ; $4739: $3b
	xor h                                            ; $473a: $ac
	db $ed                                           ; $473b: $ed
	add d                                            ; $473c: $82
	ld [$a0ae], a                                    ; $473d: $ea $ae $a0
	db $ec                                           ; $4740: $ec
	ld c, l                                          ; $4741: $4d
	jr c, jr_08a_4781                                ; $4742: $38 $3d

	ld b, h                                          ; $4744: $44
	jr c, jr_08a_4784                                ; $4745: $38 $3d

	inc de                                           ; $4747: $13
	db $ed                                           ; $4748: $ed
	add l                                            ; $4749: $85
	inc [hl]                                         ; $474a: $34
	ld c, c                                          ; $474b: $49
	ccf                                              ; $474c: $3f
	ld c, a                                          ; $474d: $4f
	ldh a, [$57]                                     ; $474e: $f0 $57
	ldh a, [$ae]                                     ; $4750: $f0 $ae
	ld c, d                                          ; $4752: $4a
	ld a, $3d                                        ; $4753: $3e $3d
	xor b                                            ; $4755: $a8
	jp hl                                            ; $4756: $e9


	inc d                                            ; $4757: $14
	and b                                            ; $4758: $a0
	pop af                                           ; $4759: $f1
	ld sp, $4b68                                     ; $475a: $31 $68 $4b
	db $ed                                           ; $475d: $ed
	add l                                            ; $475e: $85
	ld h, d                                          ; $475f: $62
	inc de                                           ; $4760: $13
	add sp, -$80                                     ; $4761: $e8 $80
	and b                                            ; $4763: $a0
	ld [$ac14], a                                    ; $4764: $ea $14 $ac
	ld c, c                                          ; $4767: $49
	ccf                                              ; $4768: $3f
	ld c, a                                          ; $4769: $4f
	cp e                                             ; $476a: $bb
	ld c, d                                          ; $476b: $4a
	ld d, c                                          ; $476c: $51
	xor b                                            ; $476d: $a8
	add sp, -$80                                     ; $476e: $e8 $80
	and b                                            ; $4770: $a0
	db $eb                                           ; $4771: $eb
	dec e                                            ; $4772: $1d
	inc de                                           ; $4773: $13
	add sp, -$80                                     ; $4774: $e8 $80
	and b                                            ; $4776: $a0
	db $ec                                           ; $4777: $ec
	call nc, $ed34                                   ; $4778: $d4 $34 $ed
	or d                                             ; $477b: $b2
	ld b, l                                          ; $477c: $45
	and b                                            ; $477d: $a0
	ld [$ac13], a                                    ; $477e: $ea $13 $ac

jr_08a_4781:
	db $ec                                           ; $4781: $ec
	sub $44                                          ; $4782: $d6 $44

jr_08a_4784:
	dec sp                                           ; $4784: $3b
	dec a                                            ; $4785: $3d
	ld h, e                                          ; $4786: $63
	and b                                            ; $4787: $a0
	ld [$ac13], a                                    ; $4788: $ea $13 $ac
	db $ec                                           ; $478b: $ec
	reti                                             ; $478c: $d9


	inc de                                           ; $478d: $13
	add b                                            ; $478e: $80
	ld d, d                                          ; $478f: $52
	ld d, b                                          ; $4790: $50
	ld a, [hl-]                                      ; $4791: $3a
	inc a                                            ; $4792: $3c
	dec sp                                           ; $4793: $3b
	dec a                                            ; $4794: $3d
	ld h, e                                          ; $4795: $63
	and b                                            ; $4796: $a0
	ld [$ac13], a                                    ; $4797: $ea $13 $ac
	add b                                            ; $479a: $80
	ld d, d                                          ; $479b: $52
	ld d, b                                          ; $479c: $50
	ld a, [hl-]                                      ; $479d: $3a
	inc a                                            ; $479e: $3c
	dec sp                                           ; $479f: $3b
	dec a                                            ; $47a0: $3d
	ld h, e                                          ; $47a1: $63
	and b                                            ; $47a2: $a0
	ld [$ac14], a                                    ; $47a3: $ea $14 $ac
	db $ec                                           ; $47a6: $ec
	sub $44                                          ; $47a7: $d6 $44
	dec sp                                           ; $47a9: $3b
	dec a                                            ; $47aa: $3d
	ld h, e                                          ; $47ab: $63
	and b                                            ; $47ac: $a0
	ld [$ac14], a                                    ; $47ad: $ea $14 $ac
	db $ec                                           ; $47b0: $ec
	reti                                             ; $47b1: $d9


	inc de                                           ; $47b2: $13
	add b                                            ; $47b3: $80
	ld d, d                                          ; $47b4: $52
	ld d, b                                          ; $47b5: $50
	ld a, [hl-]                                      ; $47b6: $3a
	inc a                                            ; $47b7: $3c
	dec sp                                           ; $47b8: $3b
	dec a                                            ; $47b9: $3d
	ld h, e                                          ; $47ba: $63
	and b                                            ; $47bb: $a0
	ld [$ac14], a                                    ; $47bc: $ea $14 $ac
	add b                                            ; $47bf: $80
	ld d, d                                          ; $47c0: $52
	ld d, b                                          ; $47c1: $50
	ld a, [hl-]                                      ; $47c2: $3a
	inc a                                            ; $47c3: $3c
	dec sp                                           ; $47c4: $3b
	dec a                                            ; $47c5: $3d
	ld h, e                                          ; $47c6: $63
	and b                                            ; $47c7: $a0
	db $ec                                           ; $47c8: $ec
	call nc, $ed34                                   ; $47c9: $d4 $34 $ed
	cp l                                             ; $47cc: $bd
	ld c, d                                          ; $47cd: $4a
	ld d, c                                          ; $47ce: $51
	and b                                            ; $47cf: $a0
	pop af                                           ; $47d0: $f1
	ld sp, $4f68                                     ; $47d1: $31 $68 $4f
	ld d, b                                          ; $47d4: $50
	dec sp                                           ; $47d5: $3b
	dec a                                            ; $47d6: $3d
	inc de                                           ; $47d7: $13
	db $ed                                           ; $47d8: $ed
	add l                                            ; $47d9: $85
	ld b, l                                          ; $47da: $45
	inc a                                            ; $47db: $3c
	dec sp                                           ; $47dc: $3b
	dec a                                            ; $47dd: $3d
	ld h, e                                          ; $47de: $63
	ld b, l                                          ; $47df: $45
	xor b                                            ; $47e0: $a8
	db $eb                                           ; $47e1: $eb
	ld e, l                                          ; $47e2: $5d
	inc [hl]                                         ; $47e3: $34
	ld b, [hl]                                       ; $47e4: $46
	ld d, a                                          ; $47e5: $57
	ld d, e                                          ; $47e6: $53
	ld c, c                                          ; $47e7: $49
	add hl, sp                                       ; $47e8: $39
	and b                                            ; $47e9: $a0
	ld [$ac13], a                                    ; $47ea: $ea $13 $ac
	db $ec                                           ; $47ed: $ec
	dec [hl]                                         ; $47ee: $35
	inc a                                            ; $47ef: $3c
	dec sp                                           ; $47f0: $3b
	dec a                                            ; $47f1: $3d
	ld h, e                                          ; $47f2: $63
	and b                                            ; $47f3: $a0
	ld [$ac13], a                                    ; $47f4: $ea $13 $ac
	db $ec                                           ; $47f7: $ec
	reti                                             ; $47f8: $d9


	xor h                                            ; $47f9: $ac
	db $eb                                           ; $47fa: $eb
	ld c, a                                          ; $47fb: $4f
	ld h, e                                          ; $47fc: $63
	ld c, h                                          ; $47fd: $4c
	and b                                            ; $47fe: $a0
	ld [$ac14], a                                    ; $47ff: $ea $14 $ac
	ld d, c                                          ; $4802: $51
	ld [hl], b                                       ; $4803: $70
	ld d, l                                          ; $4804: $55
	ld b, l                                          ; $4805: $45
	inc a                                            ; $4806: $3c
	dec sp                                           ; $4807: $3b
	dec a                                            ; $4808: $3d
	ld h, e                                          ; $4809: $63
	ld b, l                                          ; $480a: $45
	xor b                                            ; $480b: $a8
	db $eb                                           ; $480c: $eb
	ld e, l                                          ; $480d: $5d
	inc [hl]                                         ; $480e: $34
	ld b, [hl]                                       ; $480f: $46
	ld d, a                                          ; $4810: $57
	ld d, e                                          ; $4811: $53
	ld c, c                                          ; $4812: $49
	add hl, sp                                       ; $4813: $39
	and b                                            ; $4814: $a0
	db $ec                                           ; $4815: $ec
	call nc, $f034                                   ; $4816: $d4 $34 $f0
	or e                                             ; $4819: $b3
	ld c, d                                          ; $481a: $4a
	ld d, c                                          ; $481b: $51
	ld e, l                                          ; $481c: $5d
	ld e, d                                          ; $481d: $5a
	and b                                            ; $481e: $a0
	ld [$ac13], a                                    ; $481f: $ea $13 $ac
	ld h, e                                          ; $4822: $63
	ld d, a                                          ; $4823: $57
	ld c, c                                          ; $4824: $49
	ldh a, [$fa]                                     ; $4825: $f0 $fa
	ld [hl], c                                       ; $4827: $71
	dec a                                            ; $4828: $3d
	ld h, e                                          ; $4829: $63
	and b                                            ; $482a: $a0
	ld [$ac13], a                                    ; $482b: $ea $13 $ac
	db $ec                                           ; $482e: $ec
	sub $4c                                          ; $482f: $d6 $4c
	and b                                            ; $4831: $a0
	ld [$ac13], a                                    ; $4832: $ea $13 $ac
	ld c, c                                          ; $4835: $49
	ld d, a                                          ; $4836: $57
	ld b, [hl]                                       ; $4837: $46
	ld e, [hl]                                       ; $4838: $5e
	sbc h                                            ; $4839: $9c
	ldh a, [rBCPS]                                   ; $483a: $f0 $68
	ld h, d                                          ; $483c: $62
	add d                                            ; $483d: $82
	add hl, sp                                       ; $483e: $39
	ld h, e                                          ; $483f: $63
	and b                                            ; $4840: $a0
	ld [$ac14], a                                    ; $4841: $ea $14 $ac
	db $ec                                           ; $4844: $ec
	sub $4c                                          ; $4845: $d6 $4c
	and b                                            ; $4847: $a0
	ld [$ac14], a                                    ; $4848: $ea $14 $ac
	ldh a, [rAUD3LEVEL]                              ; $484b: $f0 $1c
	ld h, d                                          ; $484d: $62
	ldh a, [rOCPS]                                   ; $484e: $f0 $6a
	ld a, $3f                                        ; $4850: $3e $3f
	ld c, e                                          ; $4852: $4b
	ld l, h                                          ; $4853: $6c
	dec a                                            ; $4854: $3d
	ld h, e                                          ; $4855: $63
	and b                                            ; $4856: $a0
	ld [$ac14], a                                    ; $4857: $ea $14 $ac
	ld c, c                                          ; $485a: $49
	ld d, a                                          ; $485b: $57
	ld b, [hl]                                       ; $485c: $46
	ld e, [hl]                                       ; $485d: $5e
	sbc h                                            ; $485e: $9c
	ldh a, [rBCPS]                                   ; $485f: $f0 $68
	ld h, d                                          ; $4861: $62
	add d                                            ; $4862: $82
	add hl, sp                                       ; $4863: $39
	ld h, e                                          ; $4864: $63
	and b                                            ; $4865: $a0
	db $ec                                           ; $4866: $ec
	call nc, $edac                                   ; $4867: $d4 $ac $ed
	ld d, c                                          ; $486a: $51
	ld c, d                                          ; $486b: $4a
	ld d, c                                          ; $486c: $51
	ld e, l                                          ; $486d: $5d
	ld e, d                                          ; $486e: $5a
	and b                                            ; $486f: $a0
	ld [$ac13], a                                    ; $4870: $ea $13 $ac
	ld [$a88d], a                                    ; $4873: $ea $8d $a8
	ld b, [hl]                                       ; $4876: $46
	ld d, a                                          ; $4877: $57
	ld d, e                                          ; $4878: $53
	ld c, c                                          ; $4879: $49
	add hl, sp                                       ; $487a: $39
	and b                                            ; $487b: $a0
	ld [$ac13], a                                    ; $487c: $ea $13 $ac
	ld l, a                                          ; $487f: $6f
	ld b, a                                          ; $4880: $47
	ld c, e                                          ; $4881: $4b
	xor $05                                          ; $4882: $ee $05
	ld b, h                                          ; $4884: $44
	dec sp                                           ; $4885: $3b
	dec a                                            ; $4886: $3d
	ld b, l                                          ; $4887: $45
	and b                                            ; $4888: $a0
	ld [$ac13], a                                    ; $4889: $ea $13 $ac
	db $ed                                           ; $488c: $ed
	ld e, [hl]                                       ; $488d: $5e
	ldh a, [$fa]                                     ; $488e: $f0 $fa
	ld [hl], c                                       ; $4890: $71
	ld a, [hl-]                                      ; $4891: $3a
	inc a                                            ; $4892: $3c
	dec sp                                           ; $4893: $3b
	dec a                                            ; $4894: $3d
	ld b, l                                          ; $4895: $45
	and b                                            ; $4896: $a0
	ld [$ac14], a                                    ; $4897: $ea $14 $ac
	ld [$a88d], a                                    ; $489a: $ea $8d $a8
	ld b, [hl]                                       ; $489d: $46
	ld d, a                                          ; $489e: $57
	ld d, e                                          ; $489f: $53
	ld c, c                                          ; $48a0: $49
	add hl, sp                                       ; $48a1: $39
	and b                                            ; $48a2: $a0
	ld [$ac14], a                                    ; $48a3: $ea $14 $ac
	ld l, a                                          ; $48a6: $6f
	ld b, a                                          ; $48a7: $47
	ld c, e                                          ; $48a8: $4b
	xor $05                                          ; $48a9: $ee $05
	ld b, h                                          ; $48ab: $44
	dec sp                                           ; $48ac: $3b
	dec a                                            ; $48ad: $3d
	ld b, l                                          ; $48ae: $45
	and b                                            ; $48af: $a0
	ld [$ac14], a                                    ; $48b0: $ea $14 $ac
	db $ed                                           ; $48b3: $ed
	ld e, [hl]                                       ; $48b4: $5e
	ldh a, [$fa]                                     ; $48b5: $f0 $fa
	ld [hl], c                                       ; $48b7: $71
	ld a, [hl-]                                      ; $48b8: $3a
	inc a                                            ; $48b9: $3c
	dec sp                                           ; $48ba: $3b
	dec a                                            ; $48bb: $3d
	ld b, l                                          ; $48bc: $45
	and b                                            ; $48bd: $a0
	db $ec                                           ; $48be: $ec
	call nc, $ed34                                   ; $48bf: $d4 $34 $ed
	ld d, d                                          ; $48c2: $52
	ld c, d                                          ; $48c3: $4a
	ld d, c                                          ; $48c4: $51
	and b                                            ; $48c5: $a0
	ld [$ac14], a                                    ; $48c6: $ea $14 $ac
	db $ec                                           ; $48c9: $ec
	reti                                             ; $48ca: $d9


	inc de                                           ; $48cb: $13
	ldh a, [$fa]                                     ; $48cc: $f0 $fa
	ld [hl], c                                       ; $48ce: $71
	ld d, d                                          ; $48cf: $52
	ld a, c                                          ; $48d0: $79
	ld b, c                                          ; $48d1: $41
	ld c, d                                          ; $48d2: $4a
	ld a, $3d                                        ; $48d3: $3e $3d
	and b                                            ; $48d5: $a0
	ld [$ac14], a                                    ; $48d6: $ea $14 $ac
	db $ec                                           ; $48d9: $ec
	reti                                             ; $48da: $d9


	pop af                                           ; $48db: $f1
	ld a, [$383e]                                    ; $48dc: $fa $3e $38
	ld c, h                                          ; $48df: $4c
	and b                                            ; $48e0: $a0
	db $ec                                           ; $48e1: $ec
	call nc, $ee34                                   ; $48e2: $d4 $34 $ee
	add hl, bc                                       ; $48e5: $09
	ld c, d                                          ; $48e6: $4a
	ld d, c                                          ; $48e7: $51
	and b                                            ; $48e8: $a0
	db $ec                                           ; $48e9: $ec
	ld c, l                                          ; $48ea: $4d
	ld c, a                                          ; $48eb: $4f
	ld d, b                                          ; $48ec: $50
	dec sp                                           ; $48ed: $3b
	dec a                                            ; $48ee: $3d
	inc de                                           ; $48ef: $13
	db $ed                                           ; $48f0: $ed
	add l                                            ; $48f1: $85
	inc [hl]                                         ; $48f2: $34
	ld d, c                                          ; $48f3: $51
	ld [hl], b                                       ; $48f4: $70
	ld d, l                                          ; $48f5: $55
	ld b, l                                          ; $48f6: $45
	inc a                                            ; $48f7: $3c
	dec sp                                           ; $48f8: $3b
	dec a                                            ; $48f9: $3d
	ld b, l                                          ; $48fa: $45
	xor b                                            ; $48fb: $a8
	ld b, [hl]                                       ; $48fc: $46
	ld d, a                                          ; $48fd: $57
	ld d, e                                          ; $48fe: $53
	ld c, c                                          ; $48ff: $49
	add hl, sp                                       ; $4900: $39
	and b                                            ; $4901: $a0
	pop af                                           ; $4902: $f1
	ld sp, $4b68                                     ; $4903: $31 $68 $4b
	db $ed                                           ; $4906: $ed
	add l                                            ; $4907: $85
	ld h, d                                          ; $4908: $62
	inc de                                           ; $4909: $13
	ld b, [hl]                                       ; $490a: $46
	ld d, a                                          ; $490b: $57
	ld d, e                                          ; $490c: $53
	ld c, c                                          ; $490d: $49
	add hl, sp                                       ; $490e: $39
	and b                                            ; $490f: $a0
	ld [$ac14], a                                    ; $4910: $ea $14 $ac
	pop de                                           ; $4913: $d1
	ldh a, [rAUD4ENV]                                ; $4914: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4916: $f0 $23
	jr c, jr_08a_4966                                ; $4918: $38 $4c

	xor b                                            ; $491a: $a8
	ld b, [hl]                                       ; $491b: $46
	ld d, a                                          ; $491c: $57
	ld d, e                                          ; $491d: $53
	ld c, c                                          ; $491e: $49
	add hl, sp                                       ; $491f: $39
	and b                                            ; $4920: $a0
	db $eb                                           ; $4921: $eb
	dec e                                            ; $4922: $1d
	inc de                                           ; $4923: $13
	ld b, [hl]                                       ; $4924: $46
	ld d, a                                          ; $4925: $57
	ld d, e                                          ; $4926: $53
	ld c, c                                          ; $4927: $49
	add hl, sp                                       ; $4928: $39
	and b                                            ; $4929: $a0
	cpl                                              ; $492a: $2f
	ld [hl-], a                                      ; $492b: $32
	ldh a, [$66]                                     ; $492c: $f0 $66
	ld b, c                                          ; $492e: $41
	ld c, d                                          ; $492f: $4a
	ld c, a                                          ; $4930: $4f
	ld d, b                                          ; $4931: $50
	ld e, [hl]                                       ; $4932: $5e
	dec a                                            ; $4933: $3d
	inc a                                            ; $4934: $3c
	ld a, [hl-]                                      ; $4935: $3a
	and e                                            ; $4936: $a3
	cpl                                              ; $4937: $2f
	ld [hl-], a                                      ; $4938: $32
	ld b, b                                          ; $4939: $40
	ld c, l                                          ; $493a: $4d
	ld a, [hl-]                                      ; $493b: $3a
	ld d, a                                          ; $493c: $57
	ld b, a                                          ; $493d: $47
	xor h                                            ; $493e: $ac
	ldh a, [$66]                                     ; $493f: $f0 $66
	ld b, c                                          ; $4941: $41
	ld c, d                                          ; $4942: $4a
	ld c, a                                          ; $4943: $4f
	ld d, b                                          ; $4944: $50
	ld e, [hl]                                       ; $4945: $5e
	dec a                                            ; $4946: $3d
	ld b, d                                          ; $4947: $42
	inc a                                            ; $4948: $3c
	ld a, [hl-]                                      ; $4949: $3a
	and e                                            ; $494a: $a3
	cpl                                              ; $494b: $2f
	ld [hl-], a                                      ; $494c: $32
	db $ec                                           ; $494d: $ec
	sub $3c                                          ; $494e: $d6 $3c
	ld a, [hl-]                                      ; $4950: $3a
	and e                                            ; $4951: $a3
	cpl                                              ; $4952: $2f
	ld b, e                                          ; $4953: $43
	db $eb                                           ; $4954: $eb
	inc a                                            ; $4955: $3c
	xor h                                            ; $4956: $ac
	db $ed                                           ; $4957: $ed
	ld d, e                                          ; $4958: $53
	db $ec                                           ; $4959: $ec
	inc h                                            ; $495a: $24
	inc de                                           ; $495b: $13
	db $ec                                           ; $495c: $ec
	ret c                                            ; $495d: $d8

	inc a                                            ; $495e: $3c
	and b                                            ; $495f: $a0
	cpl                                              ; $4960: $2f
	ld b, e                                          ; $4961: $43
	db $eb                                           ; $4962: $eb
	inc a                                            ; $4963: $3c
	xor h                                            ; $4964: $ac
	db $eb                                           ; $4965: $eb

jr_08a_4966:
	ld a, [$24ec]                                    ; $4966: $fa $ec $24
	inc de                                           ; $4969: $13
	db $ec                                           ; $496a: $ec
	ret c                                            ; $496b: $d8

	inc a                                            ; $496c: $3c
	and b                                            ; $496d: $a0
	cpl                                              ; $496e: $2f
	ld b, e                                          ; $496f: $43
	db $eb                                           ; $4970: $eb
	inc a                                            ; $4971: $3c
	xor h                                            ; $4972: $ac
	db $eb                                           ; $4973: $eb
	db $fc                                           ; $4974: $fc
	db $ec                                           ; $4975: $ec
	inc h                                            ; $4976: $24
	inc de                                           ; $4977: $13
	db $ec                                           ; $4978: $ec
	ret c                                            ; $4979: $d8

	inc a                                            ; $497a: $3c
	and b                                            ; $497b: $a0
	cpl                                              ; $497c: $2f
	daa                                              ; $497d: $27
	pop af                                           ; $497e: $f1
	ld [$257f], a                                    ; $497f: $ea $7f $25
	ld b, a                                          ; $4982: $47
	ld a, [hl-]                                      ; $4983: $3a
	dec sp                                           ; $4984: $3b
	ccf                                              ; $4985: $3f
	db $ec                                           ; $4986: $ec
	push de                                          ; $4987: $d5
	and d                                            ; $4988: $a2
	cpl                                              ; $4989: $2f
	daa                                              ; $498a: $27
	pop af                                           ; $498b: $f1
	inc hl                                           ; $498c: $23
	ld a, l                                          ; $498d: $7d
	ldh a, [$1f]                                     ; $498e: $f0 $1f
	ld e, c                                          ; $4990: $59
	sub l                                            ; $4991: $95
	dec h                                            ; $4992: $25
	ld b, a                                          ; $4993: $47
	ld a, [hl-]                                      ; $4994: $3a
	dec sp                                           ; $4995: $3b
	ccf                                              ; $4996: $3f
	db $ec                                           ; $4997: $ec
	push de                                          ; $4998: $d5
	and d                                            ; $4999: $a2
	cpl                                              ; $499a: $2f
	daa                                              ; $499b: $27
	ldh a, [$c2]                                     ; $499c: $f0 $c2
	ldh a, [$a6]                                     ; $499e: $f0 $a6
	dec h                                            ; $49a0: $25
	ld h, d                                          ; $49a1: $62
	ld a, $3f                                        ; $49a2: $3e $3f
	db $ec                                           ; $49a4: $ec
	push de                                          ; $49a5: $d5
	and d                                            ; $49a6: $a2
	cpl                                              ; $49a7: $2f
	ld h, $f1                                        ; $49a8: $26 $f1
	inc hl                                           ; $49aa: $23
	ld a, l                                          ; $49ab: $7d
	ldh a, [$1f]                                     ; $49ac: $f0 $1f
	ld e, c                                          ; $49ae: $59
	sub l                                            ; $49af: $95
	dec h                                            ; $49b0: $25
	ld d, e                                          ; $49b1: $53
	ldh a, [c]                                       ; $49b2: $f2
	cp d                                             ; $49b3: $ba
	dec sp                                           ; $49b4: $3b
	dec a                                            ; $49b5: $3d
	and d                                            ; $49b6: $a2
	cpl                                              ; $49b7: $2f
	ld h, $f0                                        ; $49b8: $26 $f0
	jp nz, $a6f0                                     ; $49ba: $c2 $f0 $a6

	dec h                                            ; $49bd: $25
	ld d, e                                          ; $49be: $53
	ldh a, [c]                                       ; $49bf: $f2
	cp d                                             ; $49c0: $ba
	dec sp                                           ; $49c1: $3b
	dec a                                            ; $49c2: $3d
	and d                                            ; $49c3: $a2
	db $ec                                           ; $49c4: $ec
	call nc, $ee34                                   ; $49c5: $d4 $34 $ee
	jr z, jr_08a_4a14                                ; $49c8: $28 $4a

	ld d, c                                          ; $49ca: $51
	and b                                            ; $49cb: $a0
	cpl                                              ; $49cc: $2f
	ld b, e                                          ; $49cd: $43
	ld b, [hl]                                       ; $49ce: $46
	ld b, c                                          ; $49cf: $41
	dec a                                            ; $49d0: $3d
	inc [hl]                                         ; $49d1: $34
	ldh a, [$98]                                     ; $49d2: $f0 $98
	ld a, [hl-]                                      ; $49d4: $3a
	ld b, d                                          ; $49d5: $42
	and c                                            ; $49d6: $a1
	ld c, a                                          ; $49d7: $4f
	add hl, sp                                       ; $49d8: $39
	inc [hl]                                         ; $49d9: $34
	ldh a, [rAUDVOL]                                 ; $49da: $f0 $24
	ld d, c                                          ; $49dc: $51
	ld d, h                                          ; $49dd: $54
	ld c, c                                          ; $49de: $49
	inc de                                           ; $49df: $13
	ld a, [hl-]                                      ; $49e0: $3a
	ld d, l                                          ; $49e1: $55
	ld a, [hl-]                                      ; $49e2: $3a
	dec sp                                           ; $49e3: $3b
	ccf                                              ; $49e4: $3f
	ld e, h                                          ; $49e5: $5c
	ld h, c                                          ; $49e6: $61
	ld d, [hl]                                       ; $49e7: $56
	dec sp                                           ; $49e8: $3b
	dec a                                            ; $49e9: $3d
	and b                                            ; $49ea: $a0
	cpl                                              ; $49eb: $2f
	ld b, e                                          ; $49ec: $43
	ld b, h                                          ; $49ed: $44
	dec sp                                           ; $49ee: $3b
	dec a                                            ; $49ef: $3d
	ld d, b                                          ; $49f0: $50
	xor h                                            ; $49f1: $ac
	inc a                                            ; $49f2: $3c
	ld e, l                                          ; $49f3: $5d
	ccf                                              ; $49f4: $3f
	ld d, l                                          ; $49f5: $55
	ld c, [hl]                                       ; $49f6: $4e
	ld a, [hl-]                                      ; $49f7: $3a
	ld b, l                                          ; $49f8: $45
	and b                                            ; $49f9: $a0
	cpl                                              ; $49fa: $2f
	ld b, e                                          ; $49fb: $43
	ld c, a                                          ; $49fc: $4f
	add hl, sp                                       ; $49fd: $39
	inc [hl]                                         ; $49fe: $34
	ld e, d                                          ; $49ff: $5a
	add hl, sp                                       ; $4a00: $39
	ld b, a                                          ; $4a01: $47
	ld c, d                                          ; $4a02: $4a
	ld c, a                                          ; $4a03: $4f
	ld a, $3f                                        ; $4a04: $3e $3f
	and b                                            ; $4a06: $a0
	xor $1e                                          ; $4a07: $ee $1e
	ld c, h                                          ; $4a09: $4c
	inc [hl]                                         ; $4a0a: $34
	ld l, a                                          ; $4a0b: $6f
	inc [hl]                                         ; $4a0c: $34

jr_08a_4a0d:
	db $ed                                           ; $4a0d: $ed
	ld a, c                                          ; $4a0e: $79
	ldh a, [$39]                                     ; $4a0f: $f0 $39
	ld b, d                                          ; $4a11: $42
	inc de                                           ; $4a12: $13
	ld l, b                                          ; $4a13: $68

jr_08a_4a14:
	ld b, a                                          ; $4a14: $47
	inc [hl]                                         ; $4a15: $34
	ldh a, [c]                                       ; $4a16: $f2
	ld l, e                                          ; $4a17: $6b
	ldh a, [rAUD4GO]                                 ; $4a18: $f0 $23
	ld a, $45                                        ; $4a1a: $3e $45
	add hl, sp                                       ; $4a1c: $39
	ld c, c                                          ; $4a1d: $49
	ld [hl], a                                       ; $4a1e: $77
	add hl, sp                                       ; $4a1f: $39
	ld b, d                                          ; $4a20: $42
	and b                                            ; $4a21: $a0
	cpl                                              ; $4a22: $2f
	ld b, e                                          ; $4a23: $43
	ld b, b                                          ; $4a24: $40
	ld c, l                                          ; $4a25: $4d
	ld c, e                                          ; $4a26: $4b
	inc [hl]                                         ; $4a27: $34
	db $ec                                           ; $4a28: $ec
	cp c                                             ; $4a29: $b9
	xor b                                            ; $4a2a: $a8
	ld c, d                                          ; $4a2b: $4a
	ld c, a                                          ; $4a2c: $4f
	inc [hl]                                         ; $4a2d: $34
	ldh a, [$98]                                     ; $4a2e: $f0 $98
	ld b, a                                          ; $4a30: $47
	and c                                            ; $4a31: $a1
	ldh a, [$5f]                                     ; $4a32: $f0 $5f
	ldh a, [$9b]                                     ; $4a34: $f0 $9b
	inc [hl]                                         ; $4a36: $34
	db $ec                                           ; $4a37: $ec
	ld a, [$1353]                                    ; $4a38: $fa $53 $13
	ldh a, [rSVBK]                                   ; $4a3b: $f0 $70
	ld b, d                                          ; $4a3d: $42
	ldh a, [$9b]                                     ; $4a3e: $f0 $9b
	ld d, l                                          ; $4a40: $55
	ld b, a                                          ; $4a41: $47
	push af                                          ; $4a42: $f5
	ld a, l                                          ; $4a43: $7d
	ld l, h                                          ; $4a44: $6c
	ldh a, [$ac]                                     ; $4a45: $f0 $ac
	db $ec                                           ; $4a47: $ec
	ld l, $a8                                        ; $4a48: $2e $a8
	ldh a, [rAUD3LEVEL]                              ; $4a4a: $f0 $1c
	add b                                            ; $4a4c: $80
	ld e, h                                          ; $4a4d: $5c
	ld d, e                                          ; $4a4e: $53
	ldh a, [$5c]                                     ; $4a4f: $f0 $5c
	jr c, jr_08a_4a95                                ; $4a51: $38 $42

	and b                                            ; $4a53: $a0
	cpl                                              ; $4a54: $2f
	ld b, e                                          ; $4a55: $43
	ld b, h                                          ; $4a56: $44
	inc a                                            ; $4a57: $3c
	ld d, b                                          ; $4a58: $50
	and c                                            ; $4a59: $a1
	cpl                                              ; $4a5a: $2f
	ld b, e                                          ; $4a5b: $43
	ld h, h                                          ; $4a5c: $64
	jr c, @+$66                                      ; $4a5d: $38 $64

	jr c, jr_08a_4a0d                                ; $4a5f: $38 $ac

	jr c, jr_08a_4a9b                                ; $4a61: $38 $38

	pop af                                           ; $4a63: $f1
	cp $f2                                           ; $4a64: $fe $f2
	ccf                                              ; $4a66: $3f
	ld b, a                                          ; $4a67: $47
	ld a, $5f                                        ; $4a68: $3e $5f
	ld b, l                                          ; $4a6a: $45
	ld c, b                                          ; $4a6b: $48
	and b                                            ; $4a6c: $a0
	adc c                                            ; $4a6d: $89
	sbc a                                            ; $4a6e: $9f
	ld c, d                                          ; $4a6f: $4a
	inc [hl]                                         ; $4a70: $34
	pop af                                           ; $4a71: $f1
	ld d, $38                                        ; $4a72: $16 $38
	ld c, d                                          ; $4a74: $4a
	ld c, [hl]                                       ; $4a75: $4e
	inc de                                           ; $4a76: $13
	ldh a, [rSCY]                                    ; $4a77: $f0 $42
	ld d, a                                          ; $4a79: $57
	ld a, $3f                                        ; $4a7a: $3e $3f
	inc [hl]                                         ; $4a7c: $34
	ld a, a                                          ; $4a7d: $7f
	ld b, a                                          ; $4a7e: $47
	ld a, [hl-]                                      ; $4a7f: $3a
	ld c, [hl]                                       ; $4a80: $4e
	ldh a, [$ab]                                     ; $4a81: $f0 $ab
	ld b, d                                          ; $4a83: $42
	adc h                                            ; $4a84: $8c
	ld b, a                                          ; $4a85: $47
	inc de                                           ; $4a86: $13
	ld h, e                                          ; $4a87: $63
	ldh a, [rAUD1SWEEP]                              ; $4a88: $f0 $10
	ld c, c                                          ; $4a8a: $49
	inc [hl]                                         ; $4a8b: $34
	ldh a, [$fe]                                     ; $4a8c: $f0 $fe
	add b                                            ; $4a8e: $80
	inc a                                            ; $4a8f: $3c
	ld c, [hl]                                       ; $4a90: $4e
	ld b, c                                          ; $4a91: $41
	ld b, h                                          ; $4a92: $44
	and b                                            ; $4a93: $a0
	cpl                                              ; $4a94: $2f

jr_08a_4a95:
	ld b, e                                          ; $4a95: $43
	ld l, e                                          ; $4a96: $6b
	ld c, d                                          ; $4a97: $4a
	ld b, b                                          ; $4a98: $40
	ld b, c                                          ; $4a99: $41
	ld a, [hl-]                                      ; $4a9a: $3a

jr_08a_4a9b:
	sbc d                                            ; $4a9b: $9a
	ld h, d                                          ; $4a9c: $62
	ld c, b                                          ; $4a9d: $48
	and b                                            ; $4a9e: $a0
	cpl                                              ; $4a9f: $2f
	ld b, e                                          ; $4aa0: $43
	ld e, [hl]                                       ; $4aa1: $5e
	dec sp                                           ; $4aa2: $3b
	xor c                                            ; $4aa3: $a9
	db $ec                                           ; $4aa4: $ec
	rst AddAOntoHL                                          ; $4aa5: $ef
	ld c, a                                          ; $4aa6: $4f
	sub [hl]                                         ; $4aa7: $96
	dec sp                                           ; $4aa8: $3b
	ccf                                              ; $4aa9: $3f
	dec a                                            ; $4aaa: $3d
	sub a                                            ; $4aab: $97
	and b                                            ; $4aac: $a0
	db $ec                                           ; $4aad: $ec
	ld sp, hl                                        ; $4aae: $f9
	inc [hl]                                         ; $4aaf: $34
	ldh a, [$57]                                     ; $4ab0: $f0 $57
	ldh a, [$ae]                                     ; $4ab2: $f0 $ae
	ld a, [hl-]                                      ; $4ab4: $3a
	ldh a, [$ab]                                     ; $4ab5: $f0 $ab
	ld b, d                                          ; $4ab7: $42
	adc h                                            ; $4ab8: $8c
	inc de                                           ; $4ab9: $13
	ld [hl], d                                       ; $4aba: $72
	add b                                            ; $4abb: $80
	ld e, l                                          ; $4abc: $5d
	ld h, c                                          ; $4abd: $61
	ld d, [hl]                                       ; $4abe: $56
	dec sp                                           ; $4abf: $3b
	dec a                                            ; $4ac0: $3d
	xor b                                            ; $4ac1: $a8
	jr c, jr_08a_4b16                                ; $4ac2: $38 $52

	inc [hl]                                         ; $4ac4: $34
	ldh a, [c]                                       ; $4ac5: $f2
	ld sp, hl                                        ; $4ac6: $f9
	ldh a, [c]                                       ; $4ac7: $f2
	ret c                                            ; $4ac8: $d8

	ldh a, [rAUD2HIGH]                               ; $4ac9: $f0 $19
	ld a, [hl-]                                      ; $4acb: $3a
	ld b, d                                          ; $4acc: $42
	and b                                            ; $4acd: $a0
	cpl                                              ; $4ace: $2f
	ld b, e                                          ; $4acf: $43
	ld l, e                                          ; $4ad0: $6b
	inc a                                            ; $4ad1: $3c
	inc [hl]                                         ; $4ad2: $34
	add e                                            ; $4ad3: $83
	ldh a, [rIF]                                     ; $4ad4: $f0 $0f
	ld a, l                                          ; $4ad6: $7d
	ld l, h                                          ; $4ad7: $6c
	dec a                                            ; $4ad8: $3d
	jr c, @-$5e                                      ; $4ad9: $38 $a0

	cpl                                              ; $4adb: $2f
	ld b, e                                          ; $4adc: $43
	ld l, e                                          ; $4add: $6b
	ldh a, [$d3]                                     ; $4ade: $f0 $d3
	ldh a, [$2a]                                     ; $4ae0: $f0 $2a
	ldh a, [$f5]                                     ; $4ae2: $f0 $f5
	ld e, [hl]                                       ; $4ae4: $5e
	ld c, l                                          ; $4ae5: $4d
	ld a, e                                          ; $4ae6: $7b
	xor h                                            ; $4ae7: $ac
	ld a, a                                          ; $4ae8: $7f
	ld d, e                                          ; $4ae9: $53
	ld d, c                                          ; $4aea: $51
	ldh a, [$be]                                     ; $4aeb: $f0 $be
	ld b, c                                          ; $4aed: $41
	ld b, h                                          ; $4aee: $44
	ld e, a                                          ; $4aef: $5f
	add hl, sp                                       ; $4af0: $39
	ld c, b                                          ; $4af1: $48
	and b                                            ; $4af2: $a0
	db $ec                                           ; $4af3: $ec
	ld sp, hl                                        ; $4af4: $f9
	inc [hl]                                         ; $4af5: $34
	add a                                            ; $4af6: $87
	ldh a, [rOCPS]                                   ; $4af7: $f0 $6a
	ld d, a                                          ; $4af9: $57
	ld b, d                                          ; $4afa: $42
	inc de                                           ; $4afb: $13
	db $f4                                           ; $4afc: $f4
	ld c, c                                          ; $4afd: $49
	ld c, d                                          ; $4afe: $4a
	inc [hl]                                         ; $4aff: $34
	db $ec                                           ; $4b00: $ec
	dec de                                           ; $4b01: $1b
	ldh a, [$c2]                                     ; $4b02: $f0 $c2
	ld e, c                                          ; $4b04: $59
	ldh a, [$2f]                                     ; $4b05: $f0 $2f
	pop af                                           ; $4b07: $f1
	ld b, h                                          ; $4b08: $44
	ld e, b                                          ; $4b09: $58
	ld b, c                                          ; $4b0a: $41
	inc de                                           ; $4b0b: $13
	ld [hl], d                                       ; $4b0c: $72
	add b                                            ; $4b0d: $80
	ld e, l                                          ; $4b0e: $5d
	dec a                                            ; $4b0f: $3d
	ld b, c                                          ; $4b10: $41
	ld b, h                                          ; $4b11: $44
	dec [hl]                                         ; $4b12: $35
	inc hl                                           ; $4b13: $23
	inc de                                           ; $4b14: $13
	ld l, d                                          ; $4b15: $6a

jr_08a_4b16:
	ldh a, [$0d]                                     ; $4b16: $f0 $0d
	ldh a, [$b7]                                     ; $4b18: $f0 $b7
	ldh a, [$8c]                                     ; $4b1a: $f0 $8c
	ld b, a                                          ; $4b1c: $47
	call $2fa0                                       ; $4b1d: $cd $a0 $2f
	ld b, e                                          ; $4b20: $43
	ld l, l                                          ; $4b21: $6d
	ldh a, [$65]                                     ; $4b22: $f0 $65
	xor h                                            ; $4b24: $ac
	ldh a, [$98]                                     ; $4b25: $f0 $98
	ld b, a                                          ; $4b27: $47
	inc a                                            ; $4b28: $3c
	ld e, l                                          ; $4b29: $5d
	ccf                                              ; $4b2a: $3f
	ld c, [hl]                                       ; $4b2b: $4e
	ld b, c                                          ; $4b2c: $41
	ld b, h                                          ; $4b2d: $44
	and c                                            ; $4b2e: $a1
	cpl                                              ; $4b2f: $2f

jr_08a_4b30:
	ld b, e                                          ; $4b30: $43
	ld c, e                                          ; $4b31: $4b

jr_08a_4b32:
	ld [hl], h                                       ; $4b32: $74
	inc [hl]                                         ; $4b33: $34
	ld d, d                                          ; $4b34: $52
	dec a                                            ; $4b35: $3d
	inc a                                            ; $4b36: $3c
	ld c, b                                          ; $4b37: $48
	and b                                            ; $4b38: $a0
	db $ec                                           ; $4b39: $ec
	di                                               ; $4b3a: $f3
	ld e, b                                          ; $4b3b: $58
	ld b, c                                          ; $4b3c: $41
	ld b, d                                          ; $4b3d: $42
	ldh a, [rSVBK]                                   ; $4b3e: $f0 $70
	dec sp                                           ; $4b40: $3b
	ccf                                              ; $4b41: $3f
	xor h                                            ; $4b42: $ac
	add a                                            ; $4b43: $87
	ld e, h                                          ; $4b44: $5c
	jr c, jr_08a_4b89                                ; $4b45: $38 $42

	ld c, h                                          ; $4b47: $4c
	xor b                                            ; $4b48: $a8
	ldh a, [hDisp1_OBP1]                                     ; $4b49: $f0 $94
	ld [hl], c                                       ; $4b4b: $71
	ccf                                              ; $4b4c: $3f
	ld [hl], d                                       ; $4b4d: $72
	ld h, c                                          ; $4b4e: $61
	ld d, [hl]                                       ; $4b4f: $56
	dec sp                                           ; $4b50: $3b
	dec a                                            ; $4b51: $3d
	and b                                            ; $4b52: $a0
	cpl                                              ; $4b53: $2f
	ld b, e                                          ; $4b54: $43
	ld b, [hl]                                       ; $4b55: $46
	ld b, c                                          ; $4b56: $41
	ld a, [hl-]                                      ; $4b57: $3a
	ldh a, [$f8]                                     ; $4b58: $f0 $f8
	xor h                                            ; $4b5a: $ac
	ld e, d                                          ; $4b5b: $5a
	add hl, sp                                       ; $4b5c: $39
	ld c, d                                          ; $4b5d: $4a
	ld c, a                                          ; $4b5e: $4f
	jr c, jr_08a_4b99                                ; $4b5f: $38 $38

	dec sp                                           ; $4b61: $3b
	ccf                                              ; $4b62: $3f
	ld c, b                                          ; $4b63: $48
	and b                                            ; $4b64: $a0
	cpl                                              ; $4b65: $2f
	ld b, e                                          ; $4b66: $43
	ld e, [hl]                                       ; $4b67: $5e
	dec sp                                           ; $4b68: $3b
	xor c                                            ; $4b69: $a9
	sbc [hl]                                         ; $4b6a: $9e
	ld b, a                                          ; $4b6b: $47

jr_08a_4b6c:
	ld c, a                                          ; $4b6c: $4f
	ld b, [hl]                                       ; $4b6d: $46
	dec sp                                           ; $4b6e: $3b
	dec a                                            ; $4b6f: $3d
	ld a, [hl-]                                      ; $4b70: $3a
	and b                                            ; $4b71: $a0
	ldh a, [$79]                                     ; $4b72: $f0 $79
	ld l, b                                          ; $4b74: $68
	ld d, d                                          ; $4b75: $52
	ld c, d                                          ; $4b76: $4a
	ld b, d                                          ; $4b77: $42
	di                                               ; $4b78: $f3
	jr z, jr_08a_4b6c                                ; $4b79: $28 $f1

	jp $ed13                                         ; $4b7b: $c3 $13 $ed


	ld d, l                                          ; $4b7e: $55
	xor c                                            ; $4b7f: $a9
	sub h                                            ; $4b80: $94
	ld a, b                                          ; $4b81: $78
	ccf                                              ; $4b82: $3f
	dec a                                            ; $4b83: $3d
	ld d, b                                          ; $4b84: $50
	inc [hl]                                         ; $4b85: $34
	ldh a, [$a7]                                     ; $4b86: $f0 $a7
	pop af                                           ; $4b88: $f1

jr_08a_4b89:
	dec de                                           ; $4b89: $1b
	ld h, c                                          ; $4b8a: $61
	ld h, [hl]                                       ; $4b8b: $66
	add hl, sp                                       ; $4b8c: $39
	ld b, h                                          ; $4b8d: $44
	jr c, jr_08a_4b30                                ; $4b8e: $38 $a0

	cpl                                              ; $4b90: $2f
	ld b, e                                          ; $4b91: $43
	halt                                             ; $4b92: $76
	ld c, e                                          ; $4b93: $4b
	inc [hl]                                         ; $4b94: $34
	sub h                                            ; $4b95: $94
	ld a, b                                          ; $4b96: $78
	ccf                                              ; $4b97: $3f
	ld a, [hl-]                                      ; $4b98: $3a

jr_08a_4b99:
	jr c, jr_08a_4b32                                ; $4b99: $38 $97

	and b                                            ; $4b9b: $a0
	cpl                                              ; $4b9c: $2f
	ld b, e                                          ; $4b9d: $43
	ld e, [hl]                                       ; $4b9e: $5e
	dec sp                                           ; $4b9f: $3b
	xor c                                            ; $4ba0: $a9
	ldh a, [$98]                                     ; $4ba1: $f0 $98
	ld b, h                                          ; $4ba3: $44
	and c                                            ; $4ba4: $a1
	ld l, d                                          ; $4ba5: $6a
	ldh a, [$0d]                                     ; $4ba6: $f0 $0d
	ld b, d                                          ; $4ba8: $42
	ld l, b                                          ; $4ba9: $68
	pop af                                           ; $4baa: $f1
	sbc h                                            ; $4bab: $9c
	ld l, b                                          ; $4bac: $68
	ld b, a                                          ; $4bad: $47
	ld c, b                                          ; $4bae: $48
	xor h                                            ; $4baf: $ac
	ld b, [hl]                                       ; $4bb0: $46
	dec sp                                           ; $4bb1: $3b
	inc [hl]                                         ; $4bb2: $34
	ld d, d                                          ; $4bb3: $52
	dec a                                            ; $4bb4: $3d
	ldh a, [$d7]                                     ; $4bb5: $f0 $d7
	ld c, d                                          ; $4bb7: $4a
	db $ed                                           ; $4bb8: $ed
	halt                                             ; $4bb9: $76
	ld d, c                                          ; $4bba: $51
	ld c, [hl]                                       ; $4bbb: $4e
	ld c, h                                          ; $4bbc: $4c
	and b                                            ; $4bbd: $a0
	cpl                                              ; $4bbe: $2f
	ld b, e                                          ; $4bbf: $43
	ld a, [hl-]                                      ; $4bc0: $3a
	ld b, c                                          ; $4bc1: $41
	ld b, h                                          ; $4bc2: $44
	inc [hl]                                         ; $4bc3: $34
	ld d, h                                          ; $4bc4: $54
	ld b, d                                          ; $4bc5: $42
	db $ed                                           ; $4bc6: $ed
	halt                                             ; $4bc7: $76
	ld c, e                                          ; $4bc8: $4b
	and c                                            ; $4bc9: $a1
	cpl                                              ; $4bca: $2f
	ld b, e                                          ; $4bcb: $43
	ld h, h                                          ; $4bcc: $64
	ld l, [hl]                                       ; $4bcd: $6e
	ld [hl], $23                                     ; $4bce: $36 $23
	xor $1b                                          ; $4bd0: $ee $1b
	ldh a, [rDMA]                                    ; $4bd2: $f0 $46
	db $ed                                           ; $4bd4: $ed
	halt                                             ; $4bd5: $76
	ld b, a                                          ; $4bd6: $47
	xor h                                            ; $4bd7: $ac
	ldh a, [$9d]                                     ; $4bd8: $f0 $9d
	ld [hl], e                                       ; $4bda: $73
	ldh a, [$7b]                                     ; $4bdb: $f0 $7b
	ld e, c                                          ; $4bdd: $59
	ldh a, [$7e]                                     ; $4bde: $f0 $7e
	ld d, e                                          ; $4be0: $53
	sub [hl]                                         ; $4be1: $96
	dec sp                                           ; $4be2: $3b
	ccf                                              ; $4be3: $3f
	jr c, jr_08a_4c34                                ; $4be4: $38 $4e

	sub a                                            ; $4be6: $97
	and b                                            ; $4be7: $a0
	cpl                                              ; $4be8: $2f
	ld h, $ed                                        ; $4be9: $26 $ed
	ld e, h                                          ; $4beb: $5c
	dec h                                            ; $4bec: $25
	add hl, bc                                       ; $4bed: $09
	cpl                                              ; $4bee: $2f
	ld b, e                                          ; $4bef: $43

jr_08a_4bf0:
	xor $2d                                          ; $4bf0: $ee $2d
	inc [hl]                                         ; $4bf2: $34
	ld de, $4a13                                     ; $4bf3: $11 $13 $4a
	ld d, c                                          ; $4bf6: $51
	ld e, l                                          ; $4bf7: $5d
	ld e, d                                          ; $4bf8: $5a
	and b                                            ; $4bf9: $a0
	ld b, [hl]                                       ; $4bfa: $46
	dec sp                                           ; $4bfb: $3b
	inc [hl]                                         ; $4bfc: $34
	ld l, a                                          ; $4bfd: $6f
	xor h                                            ; $4bfe: $ac
	db $ed                                           ; $4bff: $ed
	xor b                                            ; $4c00: $a8
	ld c, c                                          ; $4c01: $49
	pop af                                           ; $4c02: $f1
	ld d, [hl]                                       ; $4c03: $56
	ld a, $52                                        ; $4c04: $3e $52
	ld d, c                                          ; $4c06: $51
	ld d, e                                          ; $4c07: $53
	and b                                            ; $4c08: $a0
	cpl                                              ; $4c09: $2f
	ld b, e                                          ; $4c0a: $43
	ld b, [hl]                                       ; $4c0b: $46
	inc [hl]                                         ; $4c0c: $34
	db $ed                                           ; $4c0d: $ed
	xor c                                            ; $4c0e: $a9
	xor c                                            ; $4c0f: $a9
	ld e, d                                          ; $4c10: $5a
	add hl, sp                                       ; $4c11: $39
	inc a                                            ; $4c12: $3c
	ld a, $3d                                        ; $4c13: $3e $3d
	ld b, d                                          ; $4c15: $42
	and c                                            ; $4c16: $a1
	ld b, [hl]                                       ; $4c17: $46

jr_08a_4c18:
	dec sp                                           ; $4c18: $3b
	inc [hl]                                         ; $4c19: $34
	dec d                                            ; $4c1a: $15
	xor b                                            ; $4c1b: $a8
	ld c, h                                          ; $4c1c: $4c
	add l                                            ; $4c1d: $85
	inc [hl]                                         ; $4c1e: $34
	ld l, d                                          ; $4c1f: $6a
	inc [hl]                                         ; $4c20: $34
	ldh a, [$c9]                                     ; $4c21: $f0 $c9
	jr c, @+$41                                      ; $4c23: $38 $3f

	jr c, jr_08a_4c75                                ; $4c25: $38 $4e

	inc a                                            ; $4c27: $3c
	ld a, [hl-]                                      ; $4c28: $3a
	and c                                            ; $4c29: $a1
	cpl                                              ; $4c2a: $2f
	ld b, e                                          ; $4c2b: $43
	ld e, [hl]                                       ; $4c2c: $5e
	xor c                                            ; $4c2d: $a9
	ld c, b                                          ; $4c2e: $48
	inc h                                            ; $4c2f: $24
	ldh a, [$c9]                                     ; $4c30: $f0 $c9
	jr c, jr_08a_4c73                                ; $4c32: $38 $3f

jr_08a_4c34:
	jr c, jr_08a_4c84                                ; $4c34: $38 $4e

	ld e, l                                          ; $4c36: $5d
	ld e, d                                          ; $4c37: $5a
	and b                                            ; $4c38: $a0
	adc b                                            ; $4c39: $88
	sub c                                            ; $4c3a: $91
	ld [hl], $b4                                     ; $4c3b: $36 $b4
	xor h                                            ; $4c3d: $ac
	xor $06                                          ; $4c3e: $ee $06
	ld b, a                                          ; $4c40: $47
	ldh a, [hDisp0_SCY]                                     ; $4c41: $f0 $83
	ldh a, [rTIMA]                                   ; $4c43: $f0 $05
	ld l, b                                          ; $4c45: $68
	ld b, d                                          ; $4c46: $42
	ld h, h                                          ; $4c47: $64
	di                                               ; $4c48: $f3
	add h                                            ; $4c49: $84
	jr c, jr_08a_4c8a                                ; $4c4a: $38 $3e

	ld a, [hl-]                                      ; $4c4c: $3a
	jr c, jr_08a_4bf0                                ; $4c4d: $38 $a1

	cpl                                              ; $4c4f: $2f
	ld b, e                                          ; $4c50: $43
	xor $1f                                          ; $4c51: $ee $1f
	inc [hl]                                         ; $4c53: $34
	jr c, jr_08a_4c8e                                ; $4c54: $38 $38

	ld b, l                                          ; $4c56: $45
	and b                                            ; $4c57: $a0
	db $ec                                           ; $4c58: $ec
	cp c                                             ; $4c59: $b9
	xor l                                            ; $4c5a: $ad
	ldh a, [$c2]                                     ; $4c5b: $f0 $c2
	ld e, c                                          ; $4c5d: $59
	ldh a, [$2f]                                     ; $4c5e: $f0 $2f
	ld h, d                                          ; $4c60: $62
	ldh a, [rAUD2LEN]                                ; $4c61: $f0 $16
	ldh a, [$c0]                                     ; $4c63: $f0 $c0
	ld a, $3f                                        ; $4c65: $3e $3f
	ld b, [hl]                                       ; $4c67: $46
	ld c, [hl]                                       ; $4c68: $4e
	ld b, d                                          ; $4c69: $42
	xor b                                            ; $4c6a: $a8
	ld l, a                                          ; $4c6b: $6f
	ld b, d                                          ; $4c6c: $42
	adc a                                            ; $4c6d: $8f
	pop af                                           ; $4c6e: $f1
	ld b, h                                          ; $4c6f: $44
	ld b, a                                          ; $4c70: $47
	ld c, b                                          ; $4c71: $48
	inc hl                                           ; $4c72: $23

jr_08a_4c73:
	ld a, b                                          ; $4c73: $78
	ld a, [hl-]                                      ; $4c74: $3a

jr_08a_4c75:
	jr c, jr_08a_4c18                                ; $4c75: $38 $a1

	cpl                                              ; $4c77: $2f
	ld b, e                                          ; $4c78: $43
	ldh a, [rTAC]                                    ; $4c79: $f0 $07
	inc a                                            ; $4c7b: $3c
	dec sp                                           ; $4c7c: $3b
	dec a                                            ; $4c7d: $3d
	and b                                            ; $4c7e: $a0
	cpl                                              ; $4c7f: $2f
	ld b, e                                          ; $4c80: $43
	ld b, b                                          ; $4c81: $40
	add hl, sp                                       ; $4c82: $39
	inc a                                            ; $4c83: $3c

jr_08a_4c84:
	ld c, b                                          ; $4c84: $48
	ldh a, [hDisp0_SCY]                                     ; $4c85: $f0 $83
	ldh a, [rTIMA]                                   ; $4c87: $f0 $05
	ld l, b                                          ; $4c89: $68

jr_08a_4c8a:
	inc a                                            ; $4c8a: $3c
	ld c, b                                          ; $4c8b: $48
	and b                                            ; $4c8c: $a0
	cpl                                              ; $4c8d: $2f

jr_08a_4c8e:
	ld b, e                                          ; $4c8e: $43
	db $ed                                           ; $4c8f: $ed
	xor c                                            ; $4c90: $a9
	ld e, c                                          ; $4c91: $59
	inc [hl]                                         ; $4c92: $34
	sub [hl]                                         ; $4c93: $96
	ld c, [hl]                                       ; $4c94: $4e
	sub a                                            ; $4c95: $97
	ld e, c                                          ; $4c96: $59
	and b                                            ; $4c97: $a0
	ldh a, [hDisp0_SCY]                                     ; $4c98: $f0 $83
	ldh a, [rTIMA]                                   ; $4c9a: $f0 $05
	ld l, b                                          ; $4c9c: $68
	db $eb                                           ; $4c9d: $eb
	ld e, [hl]                                       ; $4c9e: $5e
	xor b                                            ; $4c9f: $a8
	dec d                                            ; $4ca0: $15
	and b                                            ; $4ca1: $a0
	cpl                                              ; $4ca2: $2f
	ld b, e                                          ; $4ca3: $43
	ld b, [hl]                                       ; $4ca4: $46
	inc [hl]                                         ; $4ca5: $34
	ld b, [hl]                                       ; $4ca6: $46
	xor $20                                          ; $4ca7: $ee $20
	db $eb                                           ; $4ca9: $eb
	ld e, [hl]                                       ; $4caa: $5e
	xor b                                            ; $4cab: $a8
	db $ed                                           ; $4cac: $ed
	xor c                                            ; $4cad: $a9
	xor b                                            ; $4cae: $a8
	ld [hl-], a                                      ; $4caf: $32
	db $ed                                           ; $4cb0: $ed
	xor c                                            ; $4cb1: $a9
	ld b, d                                          ; $4cb2: $42
	adc a                                            ; $4cb3: $8f
	pop af                                           ; $4cb4: $f1
	ld b, h                                          ; $4cb5: $44
	ld b, a                                          ; $4cb6: $47
	sub [hl]                                         ; $4cb7: $96
	ld c, [hl]                                       ; $4cb8: $4e
	ld a, [hl-]                                      ; $4cb9: $3a
	ld b, c                                          ; $4cba: $41
	ccf                                              ; $4cbb: $3f
	xor h                                            ; $4cbc: $ac
	ld l, e                                          ; $4cbd: $6b
	ldh a, [rAUD1HIGH]                               ; $4cbe: $f0 $14
	ldh a, [$fe]                                     ; $4cc0: $f0 $fe
	ld d, a                                          ; $4cc2: $57
	ld b, h                                          ; $4cc3: $44
	ld e, a                                          ; $4cc4: $5f
	add hl, sp                                       ; $4cc5: $39
	ld [hl], $33                                     ; $4cc6: $36 $33
	add hl, bc                                       ; $4cc8: $09
	db $eb                                           ; $4cc9: $eb
	rst FarCall                                          ; $4cca: $f7
	and c                                            ; $4ccb: $a1
	cpl                                              ; $4ccc: $2f
	ld b, e                                          ; $4ccd: $43
	jr c, jr_08a_4d04                                ; $4cce: $38 $34

	jr c, jr_08a_4d40                                ; $4cd0: $38 $6e

	xor l                                            ; $4cd2: $ad
	ld b, [hl]                                       ; $4cd3: $46
	dec sp                                           ; $4cd4: $3b
	inc [hl]                                         ; $4cd5: $34
	db $ed                                           ; $4cd6: $ed
	xor c                                            ; $4cd7: $a9
	xor b                                            ; $4cd8: $a8
	ld d, h                                          ; $4cd9: $54
	ld c, l                                          ; $4cda: $4d
	inc [hl]                                         ; $4cdb: $34
	db $eb                                           ; $4cdc: $eb
	ld h, b                                          ; $4cdd: $60
	and b                                            ; $4cde: $a0
	ld d, h                                          ; $4cdf: $54
	ld c, l                                          ; $4ce0: $4d
	ld c, e                                          ; $4ce1: $4b
	inc [hl]                                         ; $4ce2: $34
	ld l, a                                          ; $4ce3: $6f
	inc a                                            ; $4ce4: $3c
	ld d, b                                          ; $4ce5: $50
	and b                                            ; $4ce6: $a0
	cpl                                              ; $4ce7: $2f
	ld b, e                                          ; $4ce8: $43
	ld b, [hl]                                       ; $4ce9: $46
	ld d, a                                          ; $4cea: $57
	ld d, e                                          ; $4ceb: $53
	ld c, c                                          ; $4cec: $49
	add hl, sp                                       ; $4ced: $39
	xor b                                            ; $4cee: $a8
	add a                                            ; $4cef: $87
	sbc d                                            ; $4cf0: $9a
	ld b, a                                          ; $4cf1: $47
	ld d, c                                          ; $4cf2: $51
	ld c, [hl]                                       ; $4cf3: $4e
	ld b, l                                          ; $4cf4: $45
	and b                                            ; $4cf5: $a0
	sbc [hl]                                         ; $4cf6: $9e
	ld c, e                                          ; $4cf7: $4b
	inc [hl]                                         ; $4cf8: $34
	ld b, l                                          ; $4cf9: $45
	ld d, l                                          ; $4cfa: $55
	ld d, h                                          ; $4cfb: $54
	add hl, sp                                       ; $4cfc: $39
	ld l, [hl]                                       ; $4cfd: $6e
	dec sp                                           ; $4cfe: $3b
	ccf                                              ; $4cff: $3f
	inc de                                           ; $4d00: $13
	xor $06                                          ; $4d01: $ee $06
	ld b, a                                          ; $4d03: $47

jr_08a_4d04:
	ld h, h                                          ; $4d04: $64
	di                                               ; $4d05: $f3
	add h                                            ; $4d06: $84
	jr c, jr_08a_4d47                                ; $4d07: $38 $3e

	dec a                                            ; $4d09: $3d
	ld b, d                                          ; $4d0a: $42
	ld b, a                                          ; $4d0b: $47
	ld c, h                                          ; $4d0c: $4c
	xor b                                            ; $4d0d: $a8
	ldh a, [hDisp0_SCY]                                     ; $4d0e: $f0 $83
	ldh a, [rTIMA]                                   ; $4d10: $f0 $05
	ld l, b                                          ; $4d12: $68
	ld c, a                                          ; $4d13: $4f
	xor $06                                          ; $4d14: $ee $06
	ld b, h                                          ; $4d16: $44
	inc a                                            ; $4d17: $3c
	ld d, b                                          ; $4d18: $50
	xor h                                            ; $4d19: $ac
	ld d, d                                          ; $4d1a: $52
	ld c, [hl]                                       ; $4d1b: $4e
	ld c, d                                          ; $4d1c: $4a
	db $f4                                           ; $4d1d: $f4
	dec d                                            ; $4d1e: $15
	adc h                                            ; $4d1f: $8c
	ld l, h                                          ; $4d20: $6c
	dec a                                            ; $4d21: $3d
	jr c, jr_08a_4d6b                                ; $4d22: $38 $47

	ld a, $3f                                        ; $4d24: $3e $3f
	ld c, b                                          ; $4d26: $48
	add hl, bc                                       ; $4d27: $09
	cpl                                              ; $4d28: $2f
	ld b, e                                          ; $4d29: $43
	xor $1f                                          ; $4d2a: $ee $1f
	inc [hl]                                         ; $4d2c: $34
	ld b, b                                          ; $4d2d: $40
	add hl, sp                                       ; $4d2e: $39
	ld b, h                                          ; $4d2f: $44
	ld c, h                                          ; $4d30: $4c
	and b                                            ; $4d31: $a0
	ld b, [hl]                                       ; $4d32: $46
	dec sp                                           ; $4d33: $3b
	inc [hl]                                         ; $4d34: $34
	inc h                                            ; $4d35: $24
	ld b, b                                          ; $4d36: $40
	add hl, sp                                       ; $4d37: $39
	ld b, h                                          ; $4d38: $44
	and b                                            ; $4d39: $a0
	ld c, h                                          ; $4d3a: $4c
	inc [hl]                                         ; $4d3b: $34
	ld d, h                                          ; $4d3c: $54
	ld c, l                                          ; $4d3d: $4d
	xor e                                            ; $4d3e: $ab
	ld l, e                                          ; $4d3f: $6b

jr_08a_4d40:
	ld b, h                                          ; $4d40: $44
	inc a                                            ; $4d41: $3c
	ld h, e                                          ; $4d42: $63
	inc a                                            ; $4d43: $3c
	ld c, [hl]                                       ; $4d44: $4e
	and c                                            ; $4d45: $a1
	cpl                                              ; $4d46: $2f

jr_08a_4d47:
	ld [hl-], a                                      ; $4d47: $32
	ld a, [hl-]                                      ; $4d48: $3a
	ld b, c                                          ; $4d49: $41
	ld b, h                                          ; $4d4a: $44
	ld e, a                                          ; $4d4b: $5f
	add hl, sp                                       ; $4d4c: $39
	xor e                                            ; $4d4d: $ab
	ldh a, [$c3]                                     ; $4d4e: $f0 $c3
	pop af                                           ; $4d50: $f1
	dec b                                            ; $4d51: $05
	ldh a, [$2b]                                     ; $4d52: $f0 $2b
	ldh a, [$7c]                                     ; $4d54: $f0 $7c
	ld b, d                                          ; $4d56: $42
	db $ed                                           ; $4d57: $ed
	rst SubAFromBC                                          ; $4d58: $e7
	ld b, h                                          ; $4d59: $44
	ld b, l                                          ; $4d5a: $45
	ld a, [hl-]                                      ; $4d5b: $3a
	ld c, b                                          ; $4d5c: $48
	inc sp                                           ; $4d5d: $33
	add hl, bc                                       ; $4d5e: $09
	ld b, [hl]                                       ; $4d5f: $46
	ld a, [hl-]                                      ; $4d60: $3a
	dec a                                            ; $4d61: $3d
	ld b, d                                          ; $4d62: $42
	db $eb                                           ; $4d63: $eb
	ld h, b                                          ; $4d64: $60
	ld b, l                                          ; $4d65: $45
	xor b                                            ; $4d66: $a8
	ldh a, [c]                                       ; $4d67: $f2
	ld l, a                                          ; $4d68: $6f
	ldh a, [rAUD1HIGH]                               ; $4d69: $f0 $14

jr_08a_4d6b:
	sbc [hl]                                         ; $4d6b: $9e
	ld b, d                                          ; $4d6c: $42
	and b                                            ; $4d6d: $a0
	cpl                                              ; $4d6e: $2f
	ld b, e                                          ; $4d6f: $43
	ldh a, [c]                                       ; $4d70: $f2
	ld l, a                                          ; $4d71: $6f
	ldh a, [rAUD1HIGH]                               ; $4d72: $f0 $14
	sbc [hl]                                         ; $4d74: $9e
	and c                                            ; $4d75: $a1
	ld c, a                                          ; $4d76: $4f
	add hl, sp                                       ; $4d77: $39
	inc [hl]                                         ; $4d78: $34
	pop af                                           ; $4d79: $f1
	add hl, de                                       ; $4d7a: $19
	ld e, b                                          ; $4d7b: $58
	ld d, l                                          ; $4d7c: $55
	ccf                                              ; $4d7d: $3f
	sub [hl]                                         ; $4d7e: $96
	ld d, b                                          ; $4d7f: $50
	ld a, [hl-]                                      ; $4d80: $3a
	ld d, l                                          ; $4d81: $55
	inc de                                           ; $4d82: $13
	ld a, [hl-]                                      ; $4d83: $3a
	dec sp                                           ; $4d84: $3b
	ld h, c                                          ; $4d85: $61
	ld d, [hl]                                       ; $4d86: $56
	dec sp                                           ; $4d87: $3b
	dec a                                            ; $4d88: $3d
	ld e, l                                          ; $4d89: $5d
	ld e, d                                          ; $4d8a: $5a
	ld c, h                                          ; $4d8b: $4c
	xor b                                            ; $4d8c: $a8
	ld c, b                                          ; $4d8d: $48
	inc hl                                           ; $4d8e: $23
	ldh a, [c]                                       ; $4d8f: $f2
	ldh [$f0], a                                     ; $4d90: $e0 $f0
	inc l                                            ; $4d92: $2c
	ld a, [hl-]                                      ; $4d93: $3a
	ld b, d                                          ; $4d94: $42
	ld c, b                                          ; $4d95: $48
	and b                                            ; $4d96: $a0
	cpl                                              ; $4d97: $2f
	ld b, e                                          ; $4d98: $43
	rst JumpTable                                          ; $4d99: $c7
	ld c, b                                          ; $4d9a: $48
	and b                                            ; $4d9b: $a0
	xor $1e                                          ; $4d9c: $ee $1e
	ld c, c                                          ; $4d9e: $49
	ld e, h                                          ; $4d9f: $5c
	ld c, b                                          ; $4da0: $48
	inc [hl]                                         ; $4da1: $34
	inc hl                                           ; $4da2: $23
	inc de                                           ; $4da3: $13
	ld l, e                                          ; $4da4: $6b
	ccf                                              ; $4da5: $3f
	add d                                            ; $4da6: $82
	dec sp                                           ; $4da7: $3b
	dec a                                            ; $4da8: $3d
	inc a                                            ; $4da9: $3c
	ldh a, [$f4]                                     ; $4daa: $f0 $f4
	ld e, [hl]                                       ; $4dac: $5e
	ccf                                              ; $4dad: $3f
	ld c, [hl]                                       ; $4dae: $4e
	and c                                            ; $4daf: $a1
	cpl                                              ; $4db0: $2f
	ld b, e                                          ; $4db1: $43
	ld e, [hl]                                       ; $4db2: $5e
	dec sp                                           ; $4db3: $3b
	xor c                                            ; $4db4: $a9
	halt                                             ; $4db5: $76
	inc [hl]                                         ; $4db6: $34
	ld l, e                                          ; $4db7: $6b
	inc a                                            ; $4db8: $3c

jr_08a_4db9:
	add d                                            ; $4db9: $82
	dec sp                                           ; $4dba: $3b
	dec a                                            ; $4dbb: $3d
	ld b, d                                          ; $4dbc: $42
	and c                                            ; $4dbd: $a1
	dec d                                            ; $4dbe: $15
	xor b                                            ; $4dbf: $a8
	ld c, a                                          ; $4dc0: $4f
	add hl, sp                                       ; $4dc1: $39
	pop af                                           ; $4dc2: $f1
	dec d                                            ; $4dc3: $15
	ld c, l                                          ; $4dc4: $4d
	ld h, c                                          ; $4dc5: $61
	ld d, [hl]                                       ; $4dc6: $56
	dec sp                                           ; $4dc7: $3b
	dec a                                            ; $4dc8: $3d
	ld b, d                                          ; $4dc9: $42
	inc a                                            ; $4dca: $3c
	ld a, $50                                        ; $4dcb: $3e $50
	inc de                                           ; $4dcd: $13
	xor $1e                                          ; $4dce: $ee $1e
	ldh a, [rBGP]                                    ; $4dd0: $f0 $47
	ld b, d                                          ; $4dd2: $42
	db $ed                                           ; $4dd3: $ed
	ld l, a                                          ; $4dd4: $6f
	ld h, c                                          ; $4dd5: $61
	ld d, d                                          ; $4dd6: $52
	ld c, d                                          ; $4dd7: $4a
	ld c, b                                          ; $4dd8: $48
	and b                                            ; $4dd9: $a0
	cpl                                              ; $4dda: $2f
	ld b, e                                          ; $4ddb: $43
	ld e, [hl]                                       ; $4ddc: $5e
	ld c, b                                          ; $4ddd: $48
	and c                                            ; $4dde: $a1
	add hl, sp                                       ; $4ddf: $39
	xor $1f                                          ; $4de0: $ee $1f
	ld c, b                                          ; $4de2: $48
	xor h                                            ; $4de3: $ac
	ld l, e                                          ; $4de4: $6b
	ld c, d                                          ; $4de5: $4a
	ld c, a                                          ; $4de6: $4f
	ld a, [hl-]                                      ; $4de7: $3a
	jr c, jr_08a_4e2c                                ; $4de8: $38 $42

	ld c, b                                          ; $4dea: $48
	and b                                            ; $4deb: $a0
	db $ed                                           ; $4dec: $ed
	ld d, a                                          ; $4ded: $57
	ld b, [hl]                                       ; $4dee: $46
	ld d, a                                          ; $4def: $57
	ld d, e                                          ; $4df0: $53
	ld c, c                                          ; $4df1: $49
	add hl, sp                                       ; $4df2: $39
	xor l                                            ; $4df3: $ad
	ld d, c                                          ; $4df4: $51
	ld [hl], b                                       ; $4df5: $70
	ld d, l                                          ; $4df6: $55
	ldh a, [$57]                                     ; $4df7: $f0 $57
	ldh a, [$ae]                                     ; $4df9: $f0 $ae
	ld a, [hl-]                                      ; $4dfb: $3a
	ldh a, [hDisp0_SCY]                                     ; $4dfc: $f0 $83
	ldh a, [rTIMA]                                   ; $4dfe: $f0 $05
	ld l, b                                          ; $4e00: $68
	ld b, h                                          ; $4e01: $44
	dec sp                                           ; $4e02: $3b
	dec a                                            ; $4e03: $3d
	and b                                            ; $4e04: $a0
	cpl                                              ; $4e05: $2f
	ld b, e                                          ; $4e06: $43
	ld e, e                                          ; $4e07: $5b
	ld d, [hl]                                       ; $4e08: $56
	ld b, [hl]                                       ; $4e09: $46
	inc [hl]                                         ; $4e0a: $34
	ld d, d                                          ; $4e0b: $52
	dec a                                            ; $4e0c: $3d
	and b                                            ; $4e0d: $a0
	xor $1f                                          ; $4e0e: $ee $1f
	inc [hl]                                         ; $4e10: $34
	ld h, h                                          ; $4e11: $64
	ld l, [hl]                                       ; $4e12: $6e
	ld d, c                                          ; $4e13: $51
	ld l, h                                          ; $4e14: $6c
	ld a, [hl-]                                      ; $4e15: $3a
	ld e, b                                          ; $4e16: $58
	jr c, jr_08a_4db9                                ; $4e17: $38 $a0

	xor $1e                                          ; $4e19: $ee $1e
	ld c, h                                          ; $4e1b: $4c
	xor e                                            ; $4e1c: $ab
	ld h, h                                          ; $4e1d: $64
	ldh a, [$c8]                                     ; $4e1e: $f0 $c8
	jr c, jr_08a_4e75                                ; $4e20: $38 $53

	ld b, [hl]                                       ; $4e22: $46
	ld c, [hl]                                       ; $4e23: $4e
	ld b, c                                          ; $4e24: $41
	ld b, h                                          ; $4e25: $44
	xor b                                            ; $4e26: $a8
	ldh a, [$ea]                                     ; $4e27: $f0 $ea
	ld b, h                                          ; $4e29: $44
	dec sp                                           ; $4e2a: $3b
	dec a                                            ; $4e2b: $3d

jr_08a_4e2c:
	ld d, b                                          ; $4e2c: $50
	ld c, d                                          ; $4e2d: $4a
	jr c, jr_08a_4e68                                ; $4e2e: $38 $38

	ld b, c                                          ; $4e30: $41
	ld b, h                                          ; $4e31: $44
	ld e, l                                          ; $4e32: $5d
	ld e, d                                          ; $4e33: $5a
	xor l                                            ; $4e34: $ad
	db $ec                                           ; $4e35: $ec
	jp nc, Jump_08a_7847                             ; $4e36: $d2 $47 $78

	ccf                                              ; $4e39: $3f
	ld d, l                                          ; $4e3a: $55
	ld c, l                                          ; $4e3b: $4d
	ld a, [hl-]                                      ; $4e3c: $3a
	jr c, jr_08a_4e7b                                ; $4e3d: $38 $3c

	ld a, [hl-]                                      ; $4e3f: $3a
	and b                                            ; $4e40: $a0
	ld h, h                                          ; $4e41: $64
	ldh a, [$c8]                                     ; $4e42: $f0 $c8
	jr c, jr_08a_4e7a                                ; $4e44: $38 $34

	ld a, b                                          ; $4e46: $78
	ccf                                              ; $4e47: $3f
	ld c, h                                          ; $4e48: $4c
	dec sp                                           ; $4e49: $3b
	and d                                            ; $4e4a: $a2
	cpl                                              ; $4e4b: $2f
	ld b, e                                          ; $4e4c: $43
	db $ec                                           ; $4e4d: $ec
	rra                                              ; $4e4e: $1f
	inc [hl]                                         ; $4e4f: $34
	ret                                              ; $4e50: $c9


	ld c, b                                          ; $4e51: $48
	and b                                            ; $4e52: $a0
	cpl                                              ; $4e53: $2f
	ld b, e                                          ; $4e54: $43
	pop af                                           ; $4e55: $f1
	inc d                                            ; $4e56: $14
	ld c, l                                          ; $4e57: $4d
	ld h, c                                          ; $4e58: $61
	ld d, [hl]                                       ; $4e59: $56
	dec sp                                           ; $4e5a: $3b
	dec a                                            ; $4e5b: $3d
	ld b, l                                          ; $4e5c: $45
	dec [hl]                                         ; $4e5d: $35
	rla                                              ; $4e5e: $17
	ld c, b                                          ; $4e5f: $48
	ld a, a                                          ; $4e60: $7f
	ld b, a                                          ; $4e61: $47
	ld a, [hl-]                                      ; $4e62: $3a
	ld c, [hl]                                       ; $4e63: $4e
	ld a, [hl-]                                      ; $4e64: $3a
	xor b                                            ; $4e65: $a8
	ld h, a                                          ; $4e66: $67
	dec sp                                           ; $4e67: $3b

jr_08a_4e68:
	ccf                                              ; $4e68: $3f
	ld l, h                                          ; $4e69: $6c
	ld b, l                                          ; $4e6a: $45
	add hl, sp                                       ; $4e6b: $39
	and b                                            ; $4e6c: $a0
	cpl                                              ; $4e6d: $2f
	ld b, e                                          ; $4e6e: $43
	xor $28                                          ; $4e6f: $ee $28
	dec sp                                           ; $4e71: $3b
	ccf                                              ; $4e72: $3f
	add d                                            ; $4e73: $82
	dec sp                                           ; $4e74: $3b

jr_08a_4e75:
	ccf                                              ; $4e75: $3f
	dec a                                            ; $4e76: $3d
	inc de                                           ; $4e77: $13
	ld b, l                                          ; $4e78: $45
	ld a, [hl-]                                      ; $4e79: $3a

jr_08a_4e7a:
	ld c, b                                          ; $4e7a: $48

jr_08a_4e7b:
	dec [hl]                                         ; $4e7b: $35
	ldh a, [$98]                                     ; $4e7c: $f0 $98
	ld b, h                                          ; $4e7e: $44
	ld e, a                                          ; $4e7f: $5f
	add hl, sp                                       ; $4e80: $39
	and c                                            ; $4e81: $a1
	cpl                                              ; $4e82: $2f
	ld h, $f0                                        ; $4e83: $26 $f0
	ld [hl-], a                                      ; $4e85: $32
	ld h, l                                          ; $4e86: $65
	ld [hl], e                                       ; $4e87: $73
	dec h                                            ; $4e88: $25
	add hl, bc                                       ; $4e89: $09
	ld d, d                                          ; $4e8a: $52
	dec a                                            ; $4e8b: $3d
	inc [hl]                                         ; $4e8c: $34
	ldh a, [$fe]                                     ; $4e8d: $f0 $fe
	add b                                            ; $4e8f: $80
	inc a                                            ; $4e90: $3c
	dec sp                                           ; $4e91: $3b
	ld h, c                                          ; $4e92: $61
	ld d, [hl]                                       ; $4e93: $56
	dec sp                                           ; $4e94: $3b
	dec a                                            ; $4e95: $3d
	and b                                            ; $4e96: $a0
	cpl                                              ; $4e97: $2f
	ld b, e                                          ; $4e98: $43
	ld b, [hl]                                       ; $4e99: $46
	dec sp                                           ; $4e9a: $3b
	inc [hl]                                         ; $4e9b: $34
	ldh a, [rRP]                                     ; $4e9c: $f0 $56
	ld c, e                                          ; $4e9e: $4b
	ld c, b                                          ; $4e9f: $48
	and b                                            ; $4ea0: $a0
	inc h                                            ; $4ea1: $24
	ld c, b                                          ; $4ea2: $48
	ld a, [hl-]                                      ; $4ea3: $3a
	ld b, c                                          ; $4ea4: $41
	ccf                                              ; $4ea5: $3f
	xor b                                            ; $4ea6: $a8
	adc b                                            ; $4ea7: $88
	sub c                                            ; $4ea8: $91
	ld c, e                                          ; $4ea9: $4b
	inc [hl]                                         ; $4eaa: $34
	ldh a, [c]                                       ; $4eab: $f2
	and [hl]                                         ; $4eac: $a6

jr_08a_4ead:
	ldh a, [$59]                                     ; $4ead: $f0 $59
	ld a, [hl-]                                      ; $4eaf: $3a
	ld b, c                                          ; $4eb0: $41
	inc a                                            ; $4eb1: $3c
	db $ec                                           ; $4eb2: $ec
	ret c                                            ; $4eb3: $d8

	ld b, d                                          ; $4eb4: $42
	and b                                            ; $4eb5: $a0
	cpl                                              ; $4eb6: $2f
	ld b, e                                          ; $4eb7: $43
	ld b, b                                          ; $4eb8: $40
	ld c, l                                          ; $4eb9: $4d
	ld c, e                                          ; $4eba: $4b
	inc [hl]                                         ; $4ebb: $34
	db $eb                                           ; $4ebc: $eb
	sbc [hl]                                         ; $4ebd: $9e
	ld e, l                                          ; $4ebe: $5d
	ld e, d                                          ; $4ebf: $5a
	and b                                            ; $4ec0: $a0
	db $ec                                           ; $4ec1: $ec
	reti                                             ; $4ec2: $d9


	xor h                                            ; $4ec3: $ac
	ld h, e                                          ; $4ec4: $63
	inc a                                            ; $4ec5: $3c
	dec sp                                           ; $4ec6: $3b
	ld h, c                                          ; $4ec7: $61
	ld d, [hl]                                       ; $4ec8: $56
	dec sp                                           ; $4ec9: $3b
	dec a                                            ; $4eca: $3d
	xor c                                            ; $4ecb: $a9
	ld l, a                                          ; $4ecc: $6f
	inc [hl]                                         ; $4ecd: $34
	db $ec                                           ; $4ece: $ec
	sbc $3b                                          ; $4ecf: $de $3b
	ccf                                              ; $4ed1: $3f
	add d                                            ; $4ed2: $82
	jr c, jr_08a_4f27                                ; $4ed3: $38 $52

	ld d, c                                          ; $4ed5: $51
	dec [hl]                                         ; $4ed6: $35
	rla                                              ; $4ed7: $17
	db $ed                                           ; $4ed8: $ed
	ld h, c                                          ; $4ed9: $61
	ld c, a                                          ; $4eda: $4f
	ldh a, [$fe]                                     ; $4edb: $f0 $fe
	add b                                            ; $4edd: $80
	inc a                                            ; $4ede: $3c
	dec sp                                           ; $4edf: $3b
	dec a                                            ; $4ee0: $3d
	ld d, a                                          ; $4ee1: $57
	ld a, $3f                                        ; $4ee2: $3e $3f
	xor h                                            ; $4ee4: $ac
	db $eb                                           ; $4ee5: $eb
	ccf                                              ; $4ee6: $3f
	and b                                            ; $4ee7: $a0
	cpl                                              ; $4ee8: $2f
	ld b, e                                          ; $4ee9: $43
	jr c, jr_08a_4f5a                                ; $4eea: $38 $6e

	inc [hl]                                         ; $4eec: $34
	ldh a, [$34]                                     ; $4eed: $f0 $34
	ld b, a                                          ; $4eef: $47
	db $ec                                           ; $4ef0: $ec
	ld [$eea0], sp                                   ; $4ef1: $08 $a0 $ee
	db $10                                           ; $4ef4: $10
	and b                                            ; $4ef5: $a0
	cpl                                              ; $4ef6: $2f
	ld b, e                                          ; $4ef7: $43
	db $eb                                           ; $4ef8: $eb
	rst FarCall                                          ; $4ef9: $f7
	and b                                            ; $4efa: $a0
	add hl, sp                                       ; $4efb: $39
	xor $1f                                          ; $4efc: $ee $1f
	inc [hl]                                         ; $4efe: $34
	ld l, e                                          ; $4eff: $6b
	ld c, d                                          ; $4f00: $4a
	ld c, a                                          ; $4f01: $4f
	ld a, [hl-]                                      ; $4f02: $3a
	jr c, jr_08a_4ead                                ; $4f03: $38 $a8

	ld b, b                                          ; $4f05: $40
	ld c, l                                          ; $4f06: $4d
	ld b, l                                          ; $4f07: $45
	ld d, a                                          ; $4f08: $57
	inc [hl]                                         ; $4f09: $34
	pop af                                           ; $4f0a: $f1
	db $ed                                           ; $4f0b: $ed
	pop af                                           ; $4f0c: $f1
	ld h, $4a                                        ; $4f0d: $26 $4a
	ld c, a                                          ; $4f0f: $4f
	ld a, $45                                        ; $4f10: $3e $45
	add hl, sp                                       ; $4f12: $39
	ld b, l                                          ; $4f13: $45
	and b                                            ; $4f14: $a0
	cpl                                              ; $4f15: $2f
	ld b, e                                          ; $4f16: $43
	ld e, e                                          ; $4f17: $5b
	ld d, [hl]                                       ; $4f18: $56
	ld b, [hl]                                       ; $4f19: $46
	xor h                                            ; $4f1a: $ac
	ld [$67ca], a                                    ; $4f1b: $ea $ca $67
	ld d, h                                          ; $4f1e: $54
	add hl, sp                                       ; $4f1f: $39
	and b                                            ; $4f20: $a0
	ld l, a                                          ; $4f21: $6f
	inc [hl]                                         ; $4f22: $34
	ld d, h                                          ; $4f23: $54
	ld b, d                                          ; $4f24: $42
	ldh a, [$ee]                                     ; $4f25: $f0 $ee

jr_08a_4f27:
	ld h, d                                          ; $4f27: $62
	ld b, [hl]                                       ; $4f28: $46
	ld a, [hl-]                                      ; $4f29: $3a
	dec a                                            ; $4f2a: $3d
	ld c, c                                          ; $4f2b: $49
	inc de                                           ; $4f2c: $13
	pop af                                           ; $4f2d: $f1
	ld h, $55                                        ; $4f2e: $26 $55
	ld b, d                                          ; $4f30: $42
	ld d, e                                          ; $4f31: $53
	pop af                                           ; $4f32: $f1
	add sp, $44                                      ; $4f33: $e8 $44
	dec sp                                           ; $4f35: $3b
	dec a                                            ; $4f36: $3d
	ld b, d                                          ; $4f37: $42
	ld c, b                                          ; $4f38: $48
	add hl, bc                                       ; $4f39: $09
	cpl                                              ; $4f3a: $2f
	ld b, e                                          ; $4f3b: $43
	rst JumpTable                                          ; $4f3c: $c7
	and b                                            ; $4f3d: $a0
	cpl                                              ; $4f3e: $2f

jr_08a_4f3f:
	ld h, $69                                        ; $4f3f: $26 $69
	ld h, l                                          ; $4f41: $65
	dec h                                            ; $4f42: $25
	add hl, bc                                       ; $4f43: $09
	cpl                                              ; $4f44: $2f
	ld [hl-], a                                      ; $4f45: $32
	ld e, [hl]                                       ; $4f46: $5e
	dec sp                                           ; $4f47: $3b
	ld [hl], $33                                     ; $4f48: $36 $33

Jump_08a_4f4a:
	add hl, bc                                       ; $4f4a: $09
	ldh a, [rHDMA4]                                  ; $4f4b: $f0 $54
	ld a, $44                                        ; $4f4d: $3e $44
	ld e, l                                          ; $4f4f: $5d
	ld c, b                                          ; $4f50: $48
	xor h                                            ; $4f51: $ac
	ld d, h                                          ; $4f52: $54
	ld b, d                                          ; $4f53: $42
	ld d, d                                          ; $4f54: $52
	ld d, d                                          ; $4f55: $52
	ld c, d                                          ; $4f56: $4a
	ld c, b                                          ; $4f57: $48
	and b                                            ; $4f58: $a0
	db $ed                                           ; $4f59: $ed

jr_08a_4f5a:
	ld d, a                                          ; $4f5a: $57
	inc [hl]                                         ; $4f5b: $34
	ld a, b                                          ; $4f5c: $78
	ccf                                              ; $4f5d: $3f
	ld d, l                                          ; $4f5e: $55
	ld c, l                                          ; $4f5f: $4d
	ccf                                              ; $4f60: $3f
	inc de                                           ; $4f61: $13
	sbc $46                                          ; $4f62: $de $46
	ld d, a                                          ; $4f64: $57
	ld d, e                                          ; $4f65: $53
	ld c, c                                          ; $4f66: $49
	add hl, sp                                       ; $4f67: $39
	and b                                            ; $4f68: $a0
	cpl                                              ; $4f69: $2f
	ld b, e                                          ; $4f6a: $43
	jr c, jr_08a_4fdb                                ; $4f6b: $38 $6e

	inc [hl]                                         ; $4f6d: $34
	db $eb                                           ; $4f6e: $eb
	ld h, e                                          ; $4f6f: $63
	ld b, l                                          ; $4f70: $45
	and b                                            ; $4f71: $a0
	ldh a, [$4e]                                     ; $4f72: $f0 $4e
	ld a, $38                                        ; $4f74: $3e $38
	ld b, c                                          ; $4f76: $41
	ld b, h                                          ; $4f77: $44
	ld c, b                                          ; $4f78: $48
	and b                                            ; $4f79: $a0
	cpl                                              ; $4f7a: $2f
	ld b, e                                          ; $4f7b: $43
	rst JumpTable                                          ; $4f7c: $c7
	and c                                            ; $4f7d: $a1
	ld c, a                                          ; $4f7e: $4f
	dec sp                                           ; $4f7f: $3b
	ld c, c                                          ; $4f80: $49
	ld c, b                                          ; $4f81: $48
	add hl, bc                                       ; $4f82: $09
	ld c, a                                          ; $4f83: $4f
	dec sp                                           ; $4f84: $3b
	ld c, c                                          ; $4f85: $49
	ldh a, [$0a]                                     ; $4f86: $f0 $0a
	ld d, l                                          ; $4f88: $55
	ldh a, [c]                                       ; $4f89: $f2
	sub h                                            ; $4f8a: $94
	ld a, a                                          ; $4f8b: $7f
	ld h, d                                          ; $4f8c: $62
	inc de                                           ; $4f8d: $13
	sub h                                            ; $4f8e: $94
	ld a, $3f                                        ; $4f8f: $3e $3f
	ld c, l                                          ; $4f91: $4d
	ld a, e                                          ; $4f92: $7b
	db $eb                                           ; $4f93: $eb
	adc [hl]                                         ; $4f94: $8e
	xor b                                            ; $4f95: $a8
	ld b, b                                          ; $4f96: $40
	add hl, sp                                       ; $4f97: $39
	ld a, $3d                                        ; $4f98: $3e $3d
	ld d, b                                          ; $4f9a: $50
	inc [hl]                                         ; $4f9b: $34
	ld c, a                                          ; $4f9c: $4f
	ld a, $3c                                        ; $4f9d: $3e $3c
	ld a, $3f                                        ; $4f9f: $3e $3f
	ld c, b                                          ; $4fa1: $48
	and b                                            ; $4fa2: $a0
	ldh a, [$57]                                     ; $4fa3: $f0 $57
	ldh a, [$ae]                                     ; $4fa5: $f0 $ae
	ld a, [hl-]                                      ; $4fa7: $3a
	ld [hl], a                                       ; $4fa8: $77
	jr c, jr_08a_4f3f                                ; $4fa9: $38 $94

jr_08a_4fab:
	inc de                                           ; $4fab: $13
	ld b, [hl]                                       ; $4fac: $46
	ld d, a                                          ; $4fad: $57
	ld d, e                                          ; $4fae: $53
	ld c, c                                          ; $4faf: $49
	add hl, sp                                       ; $4fb0: $39
	and b                                            ; $4fb1: $a0
	ld l, a                                          ; $4fb2: $6f
	inc [hl]                                         ; $4fb3: $34
	ld b, [hl]                                       ; $4fb4: $46
	ld a, [hl-]                                      ; $4fb5: $3a
	dec a                                            ; $4fb6: $3d
	ld d, e                                          ; $4fb7: $53
	xor $10                                          ; $4fb8: $ee $10
	inc [hl]                                         ; $4fba: $34
	add hl, bc                                       ; $4fbb: $09
	ld b, [hl]                                       ; $4fbc: $46
	ld a, [hl-]                                      ; $4fbd: $3a
	dec a                                            ; $4fbe: $3d
	ld d, e                                          ; $4fbf: $53
	xor $10                                          ; $4fc0: $ee $10
	and b                                            ; $4fc2: $a0
	ld e, b                                          ; $4fc3: $58
	ld b, l                                          ; $4fc4: $45
	ld a, [hl-]                                      ; $4fc5: $3a
	ld d, b                                          ; $4fc6: $50
	dec sp                                           ; $4fc7: $3b
	and d                                            ; $4fc8: $a2
	cpl                                              ; $4fc9: $2f
	ld [hl-], a                                      ; $4fca: $32
	ld c, b                                          ; $4fcb: $48
	xor $28                                          ; $4fcc: $ee $28
	ld e, b                                          ; $4fce: $58
	ld b, c                                          ; $4fcf: $41
	inc [hl]                                         ; $4fd0: $34
	inc a                                            ; $4fd1: $3c
	xor l                                            ; $4fd2: $ad
	ld c, b                                          ; $4fd3: $48
	ld a, d                                          ; $4fd4: $7a
	ld e, a                                          ; $4fd5: $5f
	add hl, sp                                       ; $4fd6: $39
	and e                                            ; $4fd7: $a3
	cpl                                              ; $4fd8: $2f
	db $ed                                           ; $4fd9: $ed
	ld l, [hl]                                       ; $4fda: $6e

jr_08a_4fdb:
	ld l, b                                          ; $4fdb: $68
	ld c, e                                          ; $4fdc: $4b
	pop af                                           ; $4fdd: $f1
	or $38                                           ; $4fde: $f6 $38
	ld a, [hl-]                                      ; $4fe0: $3a
	xor b                                            ; $4fe1: $a8
	ld b, [hl]                                       ; $4fe2: $46
	dec sp                                           ; $4fe3: $3b
	inc [hl]                                         ; $4fe4: $34
	ldh a, [c]                                       ; $4fe5: $f2
	ld b, e                                          ; $4fe6: $43
	ld d, e                                          ; $4fe7: $53
	di                                               ; $4fe8: $f3
	ld l, h                                          ; $4fe9: $6c
	ld c, a                                          ; $4fea: $4f
	dec sp                                           ; $4feb: $3b
	ccf                                              ; $4fec: $3f
	ld c, [hl]                                       ; $4fed: $4e
	sub a                                            ; $4fee: $97
	and e                                            ; $4fef: $a3
	cpl                                              ; $4ff0: $2f
	ld h, $ed                                        ; $4ff1: $26 $ed
	rst JumpTable                                          ; $4ff3: $c7
	pop af                                           ; $4ff4: $f1
	ld [de], a                                       ; $4ff5: $12
	ld e, c                                          ; $4ff6: $59
	ld h, l                                          ; $4ff7: $65
	dec h                                            ; $4ff8: $25
	add hl, bc                                       ; $4ff9: $09
	cpl                                              ; $4ffa: $2f
	ld b, e                                          ; $4ffb: $43
	ld b, [hl]                                       ; $4ffc: $46
	ld c, l                                          ; $4ffd: $4d
	inc [hl]                                         ; $4ffe: $34
	ld h, h                                          ; $4fff: $64
	pop af                                           ; $5000: $f1
	call c, Call_08a_4158                            ; $5001: $dc $58 $41
	inc a                                            ; $5004: $3c
	ld a, [hl-]                                      ; $5005: $3a
	xor c                                            ; $5006: $a9
	ld c, e                                          ; $5007: $4b
	ld e, c                                          ; $5008: $59
	jr c, jr_08a_4fab                                ; $5009: $38 $a0

	db $eb                                           ; $500b: $eb
	ld h, h                                          ; $500c: $64
	xor b                                            ; $500d: $a8
	ld de, $4158                                     ; $500e: $11 $58 $41
	and b                                            ; $5011: $a0
	cpl                                              ; $5012: $2f
	ld b, e                                          ; $5013: $43
	ld b, [hl]                                       ; $5014: $46
	ld c, l                                          ; $5015: $4d
	inc [hl]                                         ; $5016: $34
	db $eb                                           ; $5017: $eb
	db $fc                                           ; $5018: $fc
	xor b                                            ; $5019: $a8
	db $eb                                           ; $501a: $eb
	rst FarCall                                          ; $501b: $f7
	and c                                            ; $501c: $a1
	db $ec                                           ; $501d: $ec
	rst SubAFromHL                                          ; $501e: $d7
	ldh a, [c]                                       ; $501f: $f2
	ld b, e                                          ; $5020: $43
	ld d, e                                          ; $5021: $53
	di                                               ; $5022: $f3
	ld l, h                                          ; $5023: $6c
	ld c, a                                          ; $5024: $4f
	dec sp                                           ; $5025: $3b
	ccf                                              ; $5026: $3f
	inc de                                           ; $5027: $13
	ld c, [hl]                                       ; $5028: $4e
	ld b, c                                          ; $5029: $41
	ld c, d                                          ; $502a: $4a
	ld d, c                                          ; $502b: $51
	dec [hl]                                         ; $502c: $35
	db $ed                                           ; $502d: $ed
	ld d, [hl]                                       ; $502e: $56
	ld a, $52                                        ; $502f: $3e $52
	ld a, $66                                        ; $5031: $3e $66
	add hl, sp                                       ; $5033: $39
	and b                                            ; $5034: $a0
	cpl                                              ; $5035: $2f
	ld b, e                                          ; $5036: $43
	db $ed                                           ; $5037: $ed
	ld d, [hl]                                       ; $5038: $56
	and c                                            ; $5039: $a1
	ldh a, [$0a]                                     ; $503a: $f0 $0a
	ld d, l                                          ; $503c: $55
	inc [hl]                                         ; $503d: $34
	ldh a, [$0a]                                     ; $503e: $f0 $0a
	ld d, l                                          ; $5040: $55
	and b                                            ; $5041: $a0
	cpl                                              ; $5042: $2f
	ld b, e                                          ; $5043: $43
	ld b, [hl]                                       ; $5044: $46
	dec sp                                           ; $5045: $3b
	inc [hl]                                         ; $5046: $34
	db $eb                                           ; $5047: $eb
	db $fc                                           ; $5048: $fc
	xor b                                            ; $5049: $a8
	pop af                                           ; $504a: $f1
	ld e, a                                          ; $504b: $5f
	dec sp                                           ; $504c: $3b
	adc [hl]                                         ; $504d: $8e
	ld d, b                                          ; $504e: $50
	ld a, [hl-]                                      ; $504f: $3a
	jr c, jr_08a_509c                                ; $5050: $38 $4a

	and b                                            ; $5052: $a0
	cpl                                              ; $5053: $2f
	ld [hl-], a                                      ; $5054: $32
	add hl, sp                                       ; $5055: $39
	ld e, c                                          ; $5056: $59
	inc [hl]                                         ; $5057: $34
	ld d, c                                          ; $5058: $51
	ld [hl], b                                       ; $5059: $70
	ld d, l                                          ; $505a: $55
	pop af                                           ; $505b: $f1
	or $38                                           ; $505c: $f6 $38
	sub a                                            ; $505e: $97
	inc sp                                           ; $505f: $33
	add hl, bc                                       ; $5060: $09
	cpl                                              ; $5061: $2f
	ld h, $f0                                        ; $5062: $26 $f0
	ld l, [hl]                                       ; $5064: $6e
	ldh a, [$35]                                     ; $5065: $f0 $35
	ld [hl], e                                       ; $5067: $73
	dec h                                            ; $5068: $25
	add hl, bc                                       ; $5069: $09
	cpl                                              ; $506a: $2f
	ld b, e                                          ; $506b: $43
	add hl, sp                                       ; $506c: $39
	ld h, e                                          ; $506d: $63
	dec sp                                           ; $506e: $3b
	scf                                              ; $506f: $37
	and c                                            ; $5070: $a1
	ld b, [hl]                                       ; $5071: $46
	ld c, e                                          ; $5072: $4b
	ld c, e                                          ; $5073: $4b
	ld c, e                                          ; $5074: $4b
	ld c, e                                          ; $5075: $4b
	xor h                                            ; $5076: $ac
	db $ed                                           ; $5077: $ed
	ld d, l                                          ; $5078: $55
	inc [hl]                                         ; $5079: $34
	db $ed                                           ; $507a: $ed
	ld d, l                                          ; $507b: $55
	and d                                            ; $507c: $a2
	cpl                                              ; $507d: $2f
	ld b, e                                          ; $507e: $43
	ld l, [hl]                                       ; $507f: $6e
	inc [hl]                                         ; $5080: $34
	db $ed                                           ; $5081: $ed
	ld d, l                                          ; $5082: $55
	ld a, [hl-]                                      ; $5083: $3a
	pop af                                           ; $5084: $f1
	dec [hl]                                         ; $5085: $35
	and d                                            ; $5086: $a2
	xor $27                                          ; $5087: $ee $27
	inc [hl]                                         ; $5089: $34
	ldh a, [c]                                       ; $508a: $f2
	ld a, c                                          ; $508b: $79
	inc a                                            ; $508c: $3c
	ld d, b                                          ; $508d: $50
	inc de                                           ; $508e: $13
	db $ed                                           ; $508f: $ed
	ld d, [hl]                                       ; $5090: $56
	ld c, e                                          ; $5091: $4b
	pop af                                           ; $5092: $f1
	ld l, e                                          ; $5093: $6b
	ldh a, [$c0]                                     ; $5094: $f0 $c0
	ld b, h                                          ; $5096: $44
	dec sp                                           ; $5097: $3b
	dec a                                            ; $5098: $3d
	ld b, c                                          ; $5099: $41
	ld c, d                                          ; $509a: $4a
	ld d, c                                          ; $509b: $51

jr_08a_509c:
	and b                                            ; $509c: $a0
	cpl                                              ; $509d: $2f
	ld b, e                                          ; $509e: $43
	halt                                             ; $509f: $76
	db $ed                                           ; $50a0: $ed
	ld b, e                                          ; $50a1: $43
	ldh a, [$67]                                     ; $50a2: $f0 $67
	ldh a, [$9f]                                     ; $50a4: $f0 $9f
	ld c, e                                          ; $50a6: $4b
	inc de                                           ; $50a7: $13
	ld b, [hl]                                       ; $50a8: $46
	ld c, [hl]                                       ; $50a9: $4e
	ld b, c                                          ; $50aa: $41
	ld b, h                                          ; $50ab: $44
	dec [hl]                                         ; $50ac: $35
	ldh a, [$e4]                                     ; $50ad: $f0 $e4
	ld e, l                                          ; $50af: $5d
	ld a, [hl-]                                      ; $50b0: $3a
	jr c, jr_08a_50f8                                ; $50b1: $38 $45

	and b                                            ; $50b3: $a0
	xor $27                                          ; $50b4: $ee $27
	ld c, a                                          ; $50b6: $4f
	xor h                                            ; $50b7: $ac
	ldh a, [$0b]                                     ; $50b8: $f0 $0b
	pop af                                           ; $50ba: $f1
	cp $f2                                           ; $50bb: $fe $f2
	ccf                                              ; $50bd: $3f
	ld c, e                                          ; $50be: $4b
	ld a, $52                                        ; $50bf: $3e $52
	ld a, c                                          ; $50c1: $79
	ld b, c                                          ; $50c2: $41
	ld b, l                                          ; $50c3: $45
	and b                                            ; $50c4: $a0
	cpl                                              ; $50c5: $2f
	ld b, e                                          ; $50c6: $43
	db $dd                                           ; $50c7: $dd
	ld h, a                                          ; $50c8: $67
	ld d, l                                          ; $50c9: $55
	sub a                                            ; $50ca: $97
	and d                                            ; $50cb: $a2
	cpl                                              ; $50cc: $2f
	ld [hl-], a                                      ; $50cd: $32
	halt                                             ; $50ce: $76
	ld c, e                                          ; $50cf: $4b
	inc [hl]                                         ; $50d0: $34
	db $eb                                           ; $50d1: $eb
	db $fc                                           ; $50d2: $fc
	ld c, c                                          ; $50d3: $49
	xor h                                            ; $50d4: $ac
	sub b                                            ; $50d5: $90
	ld a, $55                                        ; $50d6: $3e $55
	db $ed                                           ; $50d8: $ed
	ld d, [hl]                                       ; $50d9: $56
	ld a, $3d                                        ; $50da: $3e $3d
	and e                                            ; $50dc: $a3
	db $ec                                           ; $50dd: $ec
	rst SubAFromHL                                          ; $50de: $d7
	ld [$a827], a                                    ; $50df: $ea $27 $a8
	ld d, d                                          ; $50e2: $52
	dec a                                            ; $50e3: $3d
	ld l, [hl]                                       ; $50e4: $6e
	ld d, a                                          ; $50e5: $57
	ld d, d                                          ; $50e6: $52
	ld a, $66                                        ; $50e7: $3e $66
	add hl, sp                                       ; $50e9: $39
	ld c, h                                          ; $50ea: $4c
	and b                                            ; $50eb: $a0
	cpl                                              ; $50ec: $2f
	ld b, e                                          ; $50ed: $43
	ld b, b                                          ; $50ee: $40
	add hl, sp                                       ; $50ef: $39
	ld b, h                                          ; $50f0: $44
	ld c, h                                          ; $50f1: $4c
	and b                                            ; $50f2: $a0
	ld b, b                                          ; $50f3: $40
	ld c, l                                          ; $50f4: $4d
	ld e, e                                          ; $50f5: $5b
	ld d, [hl]                                       ; $50f6: $56
	inc [hl]                                         ; $50f7: $34

jr_08a_50f8:
	db $eb                                           ; $50f8: $eb
	xor b                                            ; $50f9: $a8
	and b                                            ; $50fa: $a0
	cpl                                              ; $50fb: $2f
	ldh a, [$7b]                                     ; $50fc: $f0 $7b
	ld e, c                                          ; $50fe: $59
	ldh a, [rBCPD]                                   ; $50ff: $f0 $69
	ldh a, [rWY]                                     ; $5101: $f0 $4a
	ld e, c                                          ; $5103: $59
	ldh a, [rDIV]                                    ; $5104: $f0 $04
	ld d, e                                          ; $5106: $53
	ldh a, [rAUD1LOW]                                ; $5107: $f0 $13
	inc a                                            ; $5109: $3c
	dec sp                                           ; $510a: $3b
	dec a                                            ; $510b: $3d
	dec a                                            ; $510c: $3d
	ld [hl], c                                       ; $510d: $71
	xor h                                            ; $510e: $ac
	ldh a, [$5f]                                     ; $510f: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $5111: $f0 $94
	inc a                                            ; $5113: $3c
	ld d, b                                          ; $5114: $50
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5115: $f0 $81
	ldh a, [$bb]                                     ; $5117: $f0 $bb
	ld a, $52                                        ; $5119: $3e $52
	ld d, c                                          ; $511b: $51
	and b                                            ; $511c: $a0
	cpl                                              ; $511d: $2f
	ldh a, [rWY]                                     ; $511e: $f0 $4a
	ld e, c                                          ; $5120: $59
	ldh a, [rDIV]                                    ; $5121: $f0 $04
	ld d, e                                          ; $5123: $53
	ldh a, [c]                                       ; $5124: $f2
	inc sp                                           ; $5125: $33
	ld c, l                                          ; $5126: $4d
	ccf                                              ; $5127: $3f
	jr c, @+$3f                                      ; $5128: $38 $3d

	dec a                                            ; $512a: $3d
	ld [hl], c                                       ; $512b: $71
	xor h                                            ; $512c: $ac
	ldh a, [c]                                       ; $512d: $f2
	adc d                                            ; $512e: $8a
	ldh a, [c]                                       ; $512f: $f2
	ld l, [hl]                                       ; $5130: $6e
	ld a, $52                                        ; $5131: $3e $52
	ld a, $3d                                        ; $5133: $3e $3d
	xor b                                            ; $5135: $a8
	ldh a, [$5f]                                     ; $5136: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $5138: $f0 $94
	inc a                                            ; $513a: $3c
	ld d, b                                          ; $513b: $50
	ldh a, [hLCDCIntHandlerIdx]                                     ; $513c: $f0 $81
	ldh a, [$bb]                                     ; $513e: $f0 $bb
	ld a, $52                                        ; $5140: $3e $52
	ld d, c                                          ; $5142: $51
	and b                                            ; $5143: $a0

;
	cpl                                              ; $5144: $2f
	inc d                                            ; $5145: $14
	add hl, bc                                       ; $5146: $09
	cpl                                              ; $5147: $2f
	add sp, $47                                      ; $5148: $e8 $47
	and b                                            ; $514a: $a0
	cpl                                              ; $514b: $2f
	xor $2d                                          ; $514c: $ee $2d
	add hl, bc                                       ; $514e: $09
	cpl                                              ; $514f: $2f
	db $ed                                           ; $5150: $ed
	ld e, c                                          ; $5151: $59
	add hl, bc                                       ; $5152: $09
	cpl                                              ; $5153: $2f
	ldh a, [$8e]                                     ; $5154: $f0 $8e
	pop af                                           ; $5156: $f1
	ld c, l                                          ; $5157: $4d
	ld a, l                                          ; $5158: $7d
	ldh a, [$03]                                     ; $5159: $f0 $03
	ld h, d                                          ; $515b: $62
	ldh a, [c]                                       ; $515c: $f2
	adc d                                            ; $515d: $8a
	ld d, c                                          ; $515e: $51
	add hl, bc                                       ; $515f: $09
	cpl                                              ; $5160: $2f
	ldh a, [hDisp1_OBP1]                                     ; $5161: $f0 $94
	pop af                                           ; $5163: $f1
	rst SubAFromBC                                          ; $5164: $e7
	pop af                                           ; $5165: $f1
	jr nz, jr_08a_5171                               ; $5166: $20 $09

	cpl                                              ; $5168: $2f
	ldh a, [rOBP1]                                   ; $5169: $f0 $49
	ccf                                              ; $516b: $3f
	ld b, d                                          ; $516c: $42
	ldh a, [$8e]                                     ; $516d: $f0 $8e
	pop af                                           ; $516f: $f1
	ld c, l                                          ; $5170: $4d

jr_08a_5171:
	ld a, l                                          ; $5171: $7d
	ldh a, [$03]                                     ; $5172: $f0 $03
	ld h, d                                          ; $5174: $62
	ldh a, [c]                                       ; $5175: $f2
	adc d                                            ; $5176: $8a
	ldh a, [c]                                       ; $5177: $f2
	ld l, [hl]                                       ; $5178: $6e
	ld a, $ac                                        ; $5179: $3e $ac
	ldh a, [hDisp1_OBP1]                                     ; $517b: $f0 $94
	pop af                                           ; $517d: $f1
	rst SubAFromBC                                          ; $517e: $e7
	pop af                                           ; $517f: $f1
	jr nz, @+$64                                     ; $5180: $20 $62

	ld h, a                                          ; $5182: $67
	jr c, jr_08a_51d7                                ; $5183: $38 $52

	ld d, c                                          ; $5185: $51
	and b                                            ; $5186: $a0
	cpl                                              ; $5187: $2f
	sub e                                            ; $5188: $93
	ldh a, [rP1]                                     ; $5189: $f0 $00
	ldh a, [$3d]                                     ; $518b: $f0 $3d
	ldh a, [rWY]                                     ; $518d: $f0 $4a
	ld e, c                                          ; $518f: $59
	ldh a, [rDIV]                                    ; $5190: $f0 $04
	ld c, a                                          ; $5192: $4f
	ldh a, [rOBP1]                                   ; $5193: $f0 $49
	ccf                                              ; $5195: $3f
	ldh a, [c]                                       ; $5196: $f2
	adc d                                            ; $5197: $8a
	ldh a, [c]                                       ; $5198: $f2
	ld l, [hl]                                       ; $5199: $6e
	ld e, b                                          ; $519a: $58
	ld c, l                                          ; $519b: $4d
	ld d, d                                          ; $519c: $52
	ld d, c                                          ; $519d: $51
	xor b                                            ; $519e: $a8
	db $ec                                           ; $519f: $ec
	ld e, $4a                                        ; $51a0: $1e $4a
	ld d, c                                          ; $51a2: $51
	inc a                                            ; $51a3: $3c
	and c                                            ; $51a4: $a1
	cpl                                              ; $51a5: $2f
	ld d, h                                          ; $51a6: $54
	ld b, d                                          ; $51a7: $42
	ldh a, [$8e]                                     ; $51a8: $f0 $8e
	pop af                                           ; $51aa: $f1
	ld c, l                                          ; $51ab: $4d
	ld a, l                                          ; $51ac: $7d
	ldh a, [$03]                                     ; $51ad: $f0 $03
	ld h, d                                          ; $51af: $62
	ldh a, [c]                                       ; $51b0: $f2
	adc d                                            ; $51b1: $8a
	ldh a, [c]                                       ; $51b2: $f2
	ld l, [hl]                                       ; $51b3: $6e
	ld a, $52                                        ; $51b4: $3e $52
	ld d, c                                          ; $51b6: $51
	and b                                            ; $51b7: $a0
	cpl                                              ; $51b8: $2f
	ld d, h                                          ; $51b9: $54
	ld b, d                                          ; $51ba: $42
	ldh a, [$8e]                                     ; $51bb: $f0 $8e
	pop af                                           ; $51bd: $f1
	ld c, l                                          ; $51be: $4d
	ld a, l                                          ; $51bf: $7d
	ldh a, [$03]                                     ; $51c0: $f0 $03
	ld b, a                                          ; $51c2: $47
	ldh a, [rAUD1LEN]                                ; $51c3: $f0 $11
	ldh a, [$fd]                                     ; $51c5: $f0 $fd
	ld e, c                                          ; $51c7: $59
	ld a, $52                                        ; $51c8: $3e $52
	ld d, c                                          ; $51ca: $51
	inc a                                            ; $51cb: $3c
	and c                                            ; $51cc: $a1
	cpl                                              ; $51cd: $2f
	ldh a, [rAUD1LEN]                                ; $51ce: $f0 $11
	ldh a, [$fd]                                     ; $51d0: $f0 $fd
	ld e, c                                          ; $51d2: $59
	ld a, $52                                        ; $51d3: $3e $52
	ld a, $3d                                        ; $51d5: $3e $3d

jr_08a_51d7:
	and b                                            ; $51d7: $a0
	cpl                                              ; $51d8: $2f
	ldh a, [rAUD1LEN]                                ; $51d9: $f0 $11
	ldh a, [$fd]                                     ; $51db: $f0 $fd
	ld e, c                                          ; $51dd: $59
	ldh a, [rAUD2HIGH]                               ; $51de: $f0 $19
	add sp, -$34                                     ; $51e0: $e8 $cc
	xor b                                            ; $51e2: $a8
	ldh a, [rAUD1LEN]                                ; $51e3: $f0 $11
	ldh a, [$fd]                                     ; $51e5: $f0 $fd
	ld e, c                                          ; $51e7: $59
	ld [$a0a4], a                                    ; $51e8: $ea $a4 $a0
	cpl                                              ; $51eb: $2f
	ldh a, [rAUD1LEN]                                ; $51ec: $f0 $11
	ldh a, [$fd]                                     ; $51ee: $f0 $fd
	ld e, c                                          ; $51f0: $59
	ldh a, [$bc]                                     ; $51f1: $f0 $bc
	ld b, d                                          ; $51f3: $42
	ldh a, [$8e]                                     ; $51f4: $f0 $8e
	pop af                                           ; $51f6: $f1
	ld c, l                                          ; $51f7: $4d
	ld a, l                                          ; $51f8: $7d
	ldh a, [$03]                                     ; $51f9: $f0 $03
	ld b, a                                          ; $51fb: $47
	ld c, e                                          ; $51fc: $4b
	inc de                                           ; $51fd: $13
	ldh a, [rWY]                                     ; $51fe: $f0 $4a
	ld e, c                                          ; $5200: $59
	ldh a, [rDIV]                                    ; $5201: $f0 $04
	ld d, e                                          ; $5203: $53
	ldh a, [$7b]                                     ; $5204: $f0 $7b
	ld e, c                                          ; $5206: $59
	ldh a, [rBCPD]                                   ; $5207: $f0 $69
	ld e, b                                          ; $5209: $58
	ld c, l                                          ; $520a: $4d
	ccf                                              ; $520b: $3f
	jr c, jr_08a_5260                                ; $520c: $38 $52

	ld d, c                                          ; $520e: $51
	and b                                            ; $520f: $a0
	cpl                                              ; $5210: $2f
	ldh a, [rAUD1LEN]                                ; $5211: $f0 $11
	ldh a, [$fd]                                     ; $5213: $f0 $fd
	ld e, c                                          ; $5215: $59
	ld d, c                                          ; $5216: $51
	ld c, [hl]                                       ; $5217: $4e
	ld c, c                                          ; $5218: $49
	pop af                                           ; $5219: $f1
	ld c, e                                          ; $521a: $4b
	sbc [hl]                                         ; $521b: $9e
	ld b, d                                          ; $521c: $42
	ldh a, [rWY]                                     ; $521d: $f0 $4a
	ld e, c                                          ; $521f: $59
	ldh a, [rDIV]                                    ; $5220: $f0 $04
	ld c, e                                          ; $5222: $4b
	inc de                                           ; $5223: $13
	ldh a, [c]                                       ; $5224: $f2
	adc d                                            ; $5225: $8a
	ldh a, [c]                                       ; $5226: $f2
	ld l, [hl]                                       ; $5227: $6e
	ld e, b                                          ; $5228: $58
	ld c, l                                          ; $5229: $4d
	ld d, d                                          ; $522a: $52
	ld d, c                                          ; $522b: $51
	and b                                            ; $522c: $a0
	cpl                                              ; $522d: $2f
	ldh a, [rIF]                                     ; $522e: $f0 $0f
	ldh a, [rSC]                                     ; $5230: $f0 $02
	ldh a, [$9d]                                     ; $5232: $f0 $9d
	ld e, c                                          ; $5234: $59
	ldh a, [rDIV]                                    ; $5235: $f0 $04
	pop af                                           ; $5237: $f1
	dec c                                            ; $5238: $0d
	ldh a, [$79]                                     ; $5239: $f0 $79
	add hl, bc                                       ; $523b: $09
	cpl                                              ; $523c: $2f
	ldh a, [$99]                                     ; $523d: $f0 $99
	pop af                                           ; $523f: $f1
	dec l                                            ; $5240: $2d
	sub h                                            ; $5241: $94
	ldh a, [$7f]                                     ; $5242: $f0 $7f
	ld b, d                                          ; $5244: $42
	ldh a, [c]                                       ; $5245: $f2
	dec b                                            ; $5246: $05
	ldh a, [hDisp0_WY]                                     ; $5247: $f0 $88
	add hl, bc                                       ; $5249: $09
	cpl                                              ; $524a: $2f
	ldh a, [$d6]                                     ; $524b: $f0 $d6
	ld b, d                                          ; $524d: $42
	ldh a, [$9d]                                     ; $524e: $f0 $9d
	pop af                                           ; $5250: $f1
	ld [bc], a                                       ; $5251: $02
	ldh a, [$a1]                                     ; $5252: $f0 $a1
	ld e, c                                          ; $5254: $59
	add hl, bc                                       ; $5255: $09
	cpl                                              ; $5256: $2f
	ldh a, [$6d]                                     ; $5257: $f0 $6d
	ld e, c                                          ; $5259: $59
	ldh a, [$27]                                     ; $525a: $f0 $27
	pop af                                           ; $525c: $f1
	jr @-$0e                                         ; $525d: $18 $f0

	dec c                                            ; $525f: $0d

jr_08a_5260:
	ld b, d                                          ; $5260: $42
	ldh a, [c]                                       ; $5261: $f2
	dec b                                            ; $5262: $05
	ldh a, [hDisp0_WY]                                     ; $5263: $f0 $88
	add hl, bc                                       ; $5265: $09
	cpl                                              ; $5266: $2f
	ldh a, [$2f]                                     ; $5267: $f0 $2f
	ldh a, [$7c]                                     ; $5269: $f0 $7c
	ld h, l                                          ; $526b: $65
	ldh a, [$7b]                                     ; $526c: $f0 $7b
	ldh a, [$03]                                     ; $526e: $f0 $03
	add hl, bc                                       ; $5270: $09
	cpl                                              ; $5271: $2f
	ldh a, [$65]                                     ; $5272: $f0 $65
	ldh a, [$75]                                     ; $5274: $f0 $75
	add [hl]                                         ; $5276: $86
	add [hl]                                         ; $5277: $86
	add [hl]                                         ; $5278: $86
	ldh a, [rSCX]                                    ; $5279: $f0 $43
	ldh a, [c]                                       ; $527b: $f2
	ld e, $86                                        ; $527c: $1e $86
	add [hl]                                         ; $527e: $86
	add [hl]                                         ; $527f: $86
	ldh a, [$63]                                     ; $5280: $f0 $63
	ldh a, [c]                                       ; $5282: $f2
	ld e, $13                                        ; $5283: $1e $13
	db $ed                                           ; $5285: $ed
	ld e, a                                          ; $5286: $5f
	add [hl]                                         ; $5287: $86
	add [hl]                                         ; $5288: $86
	add [hl]                                         ; $5289: $86
	db $ed                                           ; $528a: $ed
	add [hl]                                         ; $528b: $86
	add [hl]                                         ; $528c: $86
	add [hl]                                         ; $528d: $86
	add [hl]                                         ; $528e: $86
	di                                               ; $528f: $f3
	add e                                            ; $5290: $83
	adc c                                            ; $5291: $89
	inc de                                           ; $5292: $13
	db $f4                                           ; $5293: $f4
	sbc d                                            ; $5294: $9a
	di                                               ; $5295: $f3
	add hl, de                                       ; $5296: $19
	add [hl]                                         ; $5297: $86
	add [hl]                                         ; $5298: $86
	add [hl]                                         ; $5299: $86
	pop af                                           ; $529a: $f1
	sub e                                            ; $529b: $93
	pop af                                           ; $529c: $f1
	ld a, [bc]                                       ; $529d: $0a
	add [hl]                                         ; $529e: $86
	add [hl]                                         ; $529f: $86
	add [hl]                                         ; $52a0: $86
	add e                                            ; $52a1: $83
	ld l, c                                          ; $52a2: $69
	ld [hl], l                                       ; $52a3: $75
	add e                                            ; $52a4: $83
	add hl, bc                                       ; $52a5: $09
	cpl                                              ; $52a6: $2f
	ldh a, [$99]                                     ; $52a7: $f0 $99
	pop af                                           ; $52a9: $f1
	dec l                                            ; $52aa: $2d
	pop af                                           ; $52ab: $f1
	adc d                                            ; $52ac: $8a
	ld d, a                                          ; $52ad: $57
	add hl, bc                                       ; $52ae: $09
	cpl                                              ; $52af: $2f
	ldh a, [$99]                                     ; $52b0: $f0 $99
	pop af                                           ; $52b2: $f1
	dec l                                            ; $52b3: $2d
	sub h                                            ; $52b4: $94
	ldh a, [$7f]                                     ; $52b5: $f0 $7f
	ld h, d                                          ; $52b7: $62
	ld h, $f1                                        ; $52b8: $26 $f1
	adc d                                            ; $52ba: $8a
	ld d, a                                          ; $52bb: $57
	dec h                                            ; $52bc: $25
	ld b, a                                          ; $52bd: $47
	ld a, $52                                        ; $52be: $3e $52
	ld a, $3d                                        ; $52c0: $3e $3d
	and b                                            ; $52c2: $a0
	cpl                                              ; $52c3: $2f
	ldh a, [$99]                                     ; $52c4: $f0 $99
	pop af                                           ; $52c6: $f1
	dec l                                            ; $52c7: $2d
	ldh a, [rAUD1LOW]                                ; $52c8: $f0 $13
	ld a, $09                                        ; $52ca: $3e $09
	cpl                                              ; $52cc: $2f
	ldh a, [$99]                                     ; $52cd: $f0 $99
	pop af                                           ; $52cf: $f1
	dec l                                            ; $52d0: $2d
	sub h                                            ; $52d1: $94
	ldh a, [$7f]                                     ; $52d2: $f0 $7f
	ld h, d                                          ; $52d4: $62
	ld h, $f0                                        ; $52d5: $26 $f0
	inc de                                           ; $52d7: $13
	ld a, $25                                        ; $52d8: $3e $25
	ld b, a                                          ; $52da: $47
	ld a, $52                                        ; $52db: $3e $52
	ld a, $3d                                        ; $52dd: $3e $3d
	and b                                            ; $52df: $a0
	cpl                                              ; $52e0: $2f
	ldh a, [rOCPS]                                   ; $52e1: $f0 $6a
	ldh a, [c]                                       ; $52e3: $f2

jr_08a_52e4:
	add hl, hl                                       ; $52e4: $29
	pop af                                           ; $52e5: $f1
	dec b                                            ; $52e6: $05
	ld e, c                                          ; $52e7: $59
	ldh a, [$32]                                     ; $52e8: $f0 $32
	add hl, bc                                       ; $52ea: $09
	cpl                                              ; $52eb: $2f
	ldh a, [$6d]                                     ; $52ec: $f0 $6d
	ld e, c                                          ; $52ee: $59
	ldh a, [$27]                                     ; $52ef: $f0 $27
	pop af                                           ; $52f1: $f1
	jr jr_08a_52e4                                   ; $52f2: $18 $f0

	dec c                                            ; $52f4: $0d
	ld h, d                                          ; $52f5: $62
	ld h, $f0                                        ; $52f6: $26 $f0
	ld l, d                                          ; $52f8: $6a
	ldh a, [c]                                       ; $52f9: $f2
	add hl, hl                                       ; $52fa: $29
	pop af                                           ; $52fb: $f1
	dec b                                            ; $52fc: $05
	ld e, c                                          ; $52fd: $59
	ldh a, [$32]                                     ; $52fe: $f0 $32
	dec h                                            ; $5300: $25
	ld b, a                                          ; $5301: $47
	inc de                                           ; $5302: $13

jr_08a_5303:
	ldh a, [c]                                       ; $5303: $f2
	dec b                                            ; $5304: $05
	ldh a, [hDisp0_WY]                                     ; $5305: $f0 $88
	ld a, $52                                        ; $5307: $3e $52
	ld a, $3d                                        ; $5309: $3e $3d
	and b                                            ; $530b: $a0
	cpl                                              ; $530c: $2f
	ldh a, [rAUD1ENV]                                ; $530d: $f0 $12
	pop af                                           ; $530f: $f1

jr_08a_5310:
	jr jr_08a_5303                                   ; $5310: $18 $f1

	dec b                                            ; $5312: $05
	ld e, c                                          ; $5313: $59
	ldh a, [$32]                                     ; $5314: $f0 $32
	add hl, bc                                       ; $5316: $09
	cpl                                              ; $5317: $2f
	ldh a, [$6d]                                     ; $5318: $f0 $6d
	ld e, c                                          ; $531a: $59
	ldh a, [$27]                                     ; $531b: $f0 $27
	pop af                                           ; $531d: $f1
	jr jr_08a_5310                                   ; $531e: $18 $f0

	dec c                                            ; $5320: $0d
	ld h, d                                          ; $5321: $62
	ld h, $f0                                        ; $5322: $26 $f0
	ld [de], a                                       ; $5324: $12
	pop af                                           ; $5325: $f1
	jr @-$0d                                         ; $5326: $18 $f1

	dec b                                            ; $5328: $05
	ld e, c                                          ; $5329: $59
	ldh a, [$32]                                     ; $532a: $f0 $32
	dec h                                            ; $532c: $25
	ld b, a                                          ; $532d: $47
	inc de                                           ; $532e: $13
	ldh a, [c]                                       ; $532f: $f2
	dec b                                            ; $5330: $05
	ldh a, [hDisp0_WY]                                     ; $5331: $f0 $88
	ld a, $52                                        ; $5333: $3e $52
	ld a, $3d                                        ; $5335: $3e $3d
	and b                                            ; $5337: $a0
	add hl, bc                                       ; $5338: $09
	cpl                                              ; $5339: $2f
	ld [hl-], a                                      ; $533a: $32
	ldh a, [$5f]                                     ; $533b: $f0 $5f
	ldh a, [$9b]                                     ; $533d: $f0 $9b
	xor h                                            ; $533f: $ac
	ldh a, [rAUD2ENV]                                ; $5340: $f0 $17
	ldh a, [rTIMA]                                   ; $5342: $f0 $05
	pop af                                           ; $5344: $f1
	ldh a, [c]                                       ; $5345: $f2
	ld b, d                                          ; $5346: $42
	ldh a, [$2a]                                     ; $5347: $f0 $2a
	ld c, d                                          ; $5349: $4a
	inc [hl]                                         ; $534a: $34
	halt                                             ; $534b: $76
	ld b, d                                          ; $534c: $42
	ldh a, [c]                                       ; $534d: $f2
	sbc e                                            ; $534e: $9b
	di                                               ; $534f: $f3
	ld c, e                                          ; $5350: $4b
	ld d, e                                          ; $5351: $53
	inc de                                           ; $5352: $13
	ldh a, [$5c]                                     ; $5353: $f0 $5c
	ld d, l                                          ; $5355: $55
	ld a, [hl-]                                      ; $5356: $3a
	dec sp                                           ; $5357: $3b
	ccf                                              ; $5358: $3f
	jr c, jr_08a_53a9                                ; $5359: $38 $4e

	ld c, c                                          ; $535b: $49
	adc e                                            ; $535c: $8b
	ldh a, [$72]                                     ; $535d: $f0 $72
	ld d, e                                          ; $535f: $53
	inc de                                           ; $5360: $13
	add d                                            ; $5361: $82
	dec sp                                           ; $5362: $3b
	ccf                                              ; $5363: $3f
	jr c, jr_08a_53a3                                ; $5364: $38 $3d

	ld a, [hl-]                                      ; $5366: $3a
	and e                                            ; $5367: $a3
	cpl                                              ; $5368: $2f
	ld [hl-], a                                      ; $5369: $32
	ldh a, [$5f]                                     ; $536a: $f0 $5f
	ldh a, [$9b]                                     ; $536c: $f0 $9b
	xor h                                            ; $536e: $ac
	ldh a, [rAUD2ENV]                                ; $536f: $f0 $17
	ldh a, [rTIMA]                                   ; $5371: $f0 $05
	pop af                                           ; $5373: $f1
	ldh a, [c]                                       ; $5374: $f2
	ld b, d                                          ; $5375: $42
	ldh a, [$2a]                                     ; $5376: $f0 $2a
	ld c, d                                          ; $5378: $4a
	inc [hl]                                         ; $5379: $34
	ldh a, [$5d]                                     ; $537a: $f0 $5d
	ld a, [hl-]                                      ; $537c: $3a
	pop af                                           ; $537d: $f1
	adc e                                            ; $537e: $8b
	ld d, e                                          ; $537f: $53
	inc de                                           ; $5380: $13
	ldh a, [hDisp0_BGP]                                     ; $5381: $f0 $85
	ld c, l                                          ; $5383: $4d
	ccf                                              ; $5384: $3f
	jr c, @+$50                                      ; $5385: $38 $4e

	ld c, c                                          ; $5387: $49
	inc [hl]                                         ; $5388: $34
	adc e                                            ; $5389: $8b
	ldh a, [$72]                                     ; $538a: $f0 $72
	ld d, e                                          ; $538c: $53
	inc de                                           ; $538d: $13
	add d                                            ; $538e: $82
	dec sp                                           ; $538f: $3b
	ccf                                              ; $5390: $3f
	jr c, @+$3f                                      ; $5391: $38 $3d

	ld a, [hl-]                                      ; $5393: $3a
	and e                                            ; $5394: $a3
	cpl                                              ; $5395: $2f
	ld b, e                                          ; $5396: $43
	ldh a, [$79]                                     ; $5397: $f0 $79
	ld l, b                                          ; $5399: $68
	inc a                                            ; $539a: $3c
	ld d, b                                          ; $539b: $50
	inc de                                           ; $539c: $13
	ld l, e                                          ; $539d: $6b
	ld h, d                                          ; $539e: $62
	db $ec                                           ; $539f: $ec
	inc c                                            ; $53a0: $0c
	ld a, [hl-]                                      ; $53a1: $3a
	xor l                                            ; $53a2: $ad

jr_08a_53a3:
	db $ed                                           ; $53a3: $ed
	ld [$4a47], sp                                   ; $53a4: $08 $47 $4a
	ld c, a                                          ; $53a7: $4f
	ld h, a                                          ; $53a8: $67

jr_08a_53a9:
	dec sp                                           ; $53a9: $3b
	ccf                                              ; $53aa: $3f
	ld l, h                                          ; $53ab: $6c
	ld c, [hl]                                       ; $53ac: $4e
	inc a                                            ; $53ad: $3c
	and b                                            ; $53ae: $a0
	cpl                                              ; $53af: $2f
	ldh a, [$79]                                     ; $53b0: $f0 $79
	ld l, b                                          ; $53b2: $68
	inc a                                            ; $53b3: $3c
	ld d, b                                          ; $53b4: $50
	pop af                                           ; $53b5: $f1
	rst SubAFromBC                                          ; $53b6: $e7
	pop af                                           ; $53b7: $f1
	sub [hl]                                         ; $53b8: $96
	xor $2c                                          ; $53b9: $ee $2c
	ld b, h                                          ; $53bb: $44
	and b                                            ; $53bc: $a0
	cpl                                              ; $53bd: $2f
	ldh a, [$79]                                     ; $53be: $f0 $79
	ld l, b                                          ; $53c0: $68
	inc a                                            ; $53c1: $3c
	ld d, b                                          ; $53c2: $50
	db $ec                                           ; $53c3: $ec
	call nz, $a044                                   ; $53c4: $c4 $44 $a0
	cpl                                              ; $53c7: $2f
	ldh a, [$79]                                     ; $53c8: $f0 $79
	ld l, b                                          ; $53ca: $68
	inc a                                            ; $53cb: $3c
	ld d, b                                          ; $53cc: $50
	jr c, @+$47                                      ; $53cd: $38 $45

	jr c, jr_08a_5416                                ; $53cf: $38 $45

	inc de                                           ; $53d1: $13
	ldh a, [rOBP1]                                   ; $53d2: $f0 $49
	ldh a, [$ca]                                     ; $53d4: $f0 $ca
	ldh a, [rAUD1ENV]                                ; $53d6: $f0 $12
	sbc a                                            ; $53d8: $9f
	ldh a, [rAUD2LOW]                                ; $53d9: $f0 $18
	ldh a, [$dc]                                     ; $53db: $f0 $dc
	add a                                            ; $53dd: $87
	ldh a, [rHDMA3]                                  ; $53de: $f0 $53
	ld b, h                                          ; $53e0: $44
	and b                                            ; $53e1: $a0
	cpl                                              ; $53e2: $2f
	ldh a, [$79]                                     ; $53e3: $f0 $79
	ld l, b                                          ; $53e5: $68
	inc a                                            ; $53e6: $3c
	ld d, b                                          ; $53e7: $50
	pop af                                           ; $53e8: $f1
	jp nc, $faed                                     ; $53e9: $d2 $ed $fa

	ld b, h                                          ; $53ec: $44
	and b                                            ; $53ed: $a0
	cpl                                              ; $53ee: $2f
	ldh a, [$79]                                     ; $53ef: $f0 $79
	ld l, b                                          ; $53f1: $68
	inc a                                            ; $53f2: $3c
	ld d, b                                          ; $53f3: $50
	db $ed                                           ; $53f4: $ed
	db $10                                           ; $53f5: $10
	ld b, d                                          ; $53f6: $42
	pop af                                           ; $53f7: $f1
	ld a, c                                          ; $53f8: $79
	pop af                                           ; $53f9: $f1
	ld h, d                                          ; $53fa: $62
	ld b, h                                          ; $53fb: $44
	and b                                            ; $53fc: $a0
	cpl                                              ; $53fd: $2f
	ld b, e                                          ; $53fe: $43
	ldh a, [$79]                                     ; $53ff: $f0 $79
	ld l, b                                          ; $5401: $68
	inc a                                            ; $5402: $3c
	ld d, b                                          ; $5403: $50
	inc de                                           ; $5404: $13
	ld l, e                                          ; $5405: $6b
	ld h, d                                          ; $5406: $62
	db $ec                                           ; $5407: $ec
	inc c                                            ; $5408: $0c
	ld a, [hl-]                                      ; $5409: $3a
	and b                                            ; $540a: $a0
	cpl                                              ; $540b: $2f
	ld d, h                                          ; $540c: $54
	ld b, d                                          ; $540d: $42
	ldh a, [$8e]                                     ; $540e: $f0 $8e
	pop af                                           ; $5410: $f1
	ld c, l                                          ; $5411: $4d
	ld a, l                                          ; $5412: $7d
	ldh a, [$03]                                     ; $5413: $f0 $03
	ld b, a                                          ; $5415: $47

jr_08a_5416:
	ldh a, [$7b]                                     ; $5416: $f0 $7b
	ld e, c                                          ; $5418: $59
	ldh a, [rBCPD]                                   ; $5419: $f0 $69
	ld a, $52                                        ; $541b: $3e $52
	ld d, c                                          ; $541d: $51
	and b                                            ; $541e: $a0
	cpl                                              ; $541f: $2f
	xor $2d                                          ; $5420: $ee $2d
	add hl, bc                                       ; $5422: $09
	cpl                                              ; $5423: $2f
	ld d, h                                          ; $5424: $54
	ld b, d                                          ; $5425: $42
	ldh a, [$8e]                                     ; $5426: $f0 $8e
	pop af                                           ; $5428: $f1
	ld c, l                                          ; $5429: $4d
	ld a, l                                          ; $542a: $7d
	ldh a, [$03]                                     ; $542b: $f0 $03
	ld b, a                                          ; $542d: $47
	ld c, e                                          ; $542e: $4b
	push af                                          ; $542f: $f5
	ld a, h                                          ; $5430: $7c
	ld b, a                                          ; $5431: $47
	inc de                                           ; $5432: $13
	ldh a, [rWY]                                     ; $5433: $f0 $4a
	ld e, c                                          ; $5435: $59
	ldh a, [rDIV]                                    ; $5436: $f0 $04
	ld d, e                                          ; $5438: $53
	ldh a, [$7b]                                     ; $5439: $f0 $7b
	ld e, c                                          ; $543b: $59
	ldh a, [rBCPD]                                   ; $543c: $f0 $69
	ld e, b                                          ; $543e: $58
	ld c, l                                          ; $543f: $4d
	ccf                                              ; $5440: $3f
	jr c, jr_08a_5495                                ; $5441: $38 $52

	ld d, c                                          ; $5443: $51
	and b                                            ; $5444: $a0
	cpl                                              ; $5445: $2f
	ldh a, [$7b]                                     ; $5446: $f0 $7b
	ld e, c                                          ; $5448: $59
	ldh a, [rBCPD]                                   ; $5449: $f0 $69
	ld d, c                                          ; $544b: $51
	ld c, [hl]                                       ; $544c: $4e
	ld c, c                                          ; $544d: $49
	pop af                                           ; $544e: $f1
	ld c, e                                          ; $544f: $4b
	sbc [hl]                                         ; $5450: $9e
	ld b, d                                          ; $5451: $42
	ldh a, [rWY]                                     ; $5452: $f0 $4a
	ld e, c                                          ; $5454: $59
	ldh a, [rDIV]                                    ; $5455: $f0 $04
	ld c, e                                          ; $5457: $4b
	inc de                                           ; $5458: $13
	ldh a, [c]                                       ; $5459: $f2
	adc d                                            ; $545a: $8a
	ldh a, [c]                                       ; $545b: $f2
	ld l, [hl]                                       ; $545c: $6e
	ld e, b                                          ; $545d: $58
	ld c, l                                          ; $545e: $4d
	ld d, d                                          ; $545f: $52
	ld d, c                                          ; $5460: $51
	and b                                            ; $5461: $a0
	cpl                                              ; $5462: $2f
	ld d, h                                          ; $5463: $54
	ld b, d                                          ; $5464: $42
	ldh a, [$8e]                                     ; $5465: $f0 $8e
	pop af                                           ; $5467: $f1
	ld c, l                                          ; $5468: $4d
	ld a, l                                          ; $5469: $7d
	ldh a, [$03]                                     ; $546a: $f0 $03
	ld b, a                                          ; $546c: $47
	ldh a, [$7b]                                     ; $546d: $f0 $7b
	ld e, c                                          ; $546f: $59
	ldh a, [rBCPD]                                   ; $5470: $f0 $69
	ld a, $52                                        ; $5472: $3e $52
	ld d, c                                          ; $5474: $51
	inc a                                            ; $5475: $3c
	and c                                            ; $5476: $a1
	cpl                                              ; $5477: $2f
	db $ed                                           ; $5478: $ed
	ld e, c                                          ; $5479: $59
	add hl, bc                                       ; $547a: $09
	cpl                                              ; $547b: $2f
	jp hl                                            ; $547c: $e9


	rra                                              ; $547d: $1f
	and b                                            ; $547e: $a0
	cpl                                              ; $547f: $2f
	ldh a, [$7b]                                     ; $5480: $f0 $7b
	ld e, c                                          ; $5482: $59
	ldh a, [rBCPD]                                   ; $5483: $f0 $69
	ldh a, [rBGP]                                    ; $5485: $f0 $47
	add sp, -$34                                     ; $5487: $e8 $cc
	xor b                                            ; $5489: $a8
	ldh a, [$7b]                                     ; $548a: $f0 $7b
	ld e, c                                          ; $548c: $59
	ldh a, [rBCPD]                                   ; $548d: $f0 $69
	ld [$a0a4], a                                    ; $548f: $ea $a4 $a0
	cpl                                              ; $5492: $2f
	add sp, $47                                      ; $5493: $e8 $47

jr_08a_5495:
	and b                                            ; $5495: $a0
	cpl                                              ; $5496: $2f
	ldh a, [$1f]                                     ; $5497: $f0 $1f
	ld e, c                                          ; $5499: $59
	ldh a, [$32]                                     ; $549a: $f0 $32
	ldh a, [rBGP]                                    ; $549c: $f0 $47
	add sp, -$34                                     ; $549e: $e8 $cc
	xor b                                            ; $54a0: $a8
	ldh a, [$6d]                                     ; $54a1: $f0 $6d
	ld e, c                                          ; $54a3: $59
	ldh a, [$27]                                     ; $54a4: $f0 $27
	ld h, d                                          ; $54a6: $62
	ldh a, [$ce]                                     ; $54a7: $f0 $ce
	ldh a, [c]                                       ; $54a9: $f2
	ld e, b                                          ; $54aa: $58
	ld a, $52                                        ; $54ab: $3e $52
	ld d, c                                          ; $54ad: $51
	and b                                            ; $54ae: $a0
	cpl                                              ; $54af: $2f
	jp hl                                            ; $54b0: $e9


	ld e, $a0                                        ; $54b1: $1e $a0
	cpl                                              ; $54b3: $2f
	ldh a, [$79]                                     ; $54b4: $f0 $79
	ld l, b                                          ; $54b6: $68
	inc a                                            ; $54b7: $3c
	ld d, b                                          ; $54b8: $50
	pop af                                           ; $54b9: $f1
	jp nc, $8ff0                                     ; $54ba: $d2 $f0 $8f

	ld l, h                                          ; $54bd: $6c
	ld b, h                                          ; $54be: $44
	and b                                            ; $54bf: $a0
	cpl                                              ; $54c0: $2f
	ldh a, [$79]                                     ; $54c1: $f0 $79
	ld l, b                                          ; $54c3: $68
	inc a                                            ; $54c4: $3c
	ld d, b                                          ; $54c5: $50
	ldh a, [c]                                       ; $54c6: $f2
	dec sp                                           ; $54c7: $3b
	ldh a, [hDisp1_LCDC]                                     ; $54c8: $f0 $8f
	ld l, h                                          ; $54ca: $6c
	ld b, h                                          ; $54cb: $44
	and b                                            ; $54cc: $a0
	cpl                                              ; $54cd: $2f
	ldh a, [$79]                                     ; $54ce: $f0 $79
	ld l, b                                          ; $54d0: $68
	inc a                                            ; $54d1: $3c
	ld d, b                                          ; $54d2: $50
	pop af                                           ; $54d3: $f1
	sbc d                                            ; $54d4: $9a
	ldh a, [hDisp1_LCDC]                                     ; $54d5: $f0 $8f
	ld l, h                                          ; $54d7: $6c
	ld b, h                                          ; $54d8: $44
	and b                                            ; $54d9: $a0
	cpl                                              ; $54da: $2f
	ldh a, [$79]                                     ; $54db: $f0 $79
	ld l, b                                          ; $54dd: $68
	inc a                                            ; $54de: $3c
	ld d, b                                          ; $54df: $50
	pop af                                           ; $54e0: $f1
	ld e, h                                          ; $54e1: $5c
	adc c                                            ; $54e2: $89
	ldh a, [rAUD1HIGH]                               ; $54e3: $f0 $14
	ld b, h                                          ; $54e5: $44
	and b                                            ; $54e6: $a0
	cpl                                              ; $54e7: $2f
	ldh a, [$79]                                     ; $54e8: $f0 $79
	ld l, b                                          ; $54ea: $68
	inc a                                            ; $54eb: $3c
	ld d, b                                          ; $54ec: $50
	ldh a, [$58]                                     ; $54ed: $f0 $58
	adc c                                            ; $54ef: $89
	pop af                                           ; $54f0: $f1
	rst SubAFromBC                                          ; $54f1: $e7
	ld b, h                                          ; $54f2: $44
	and b                                            ; $54f3: $a0
	cpl                                              ; $54f4: $2f
	ldh a, [$79]                                     ; $54f5: $f0 $79
	ld l, b                                          ; $54f7: $68
	inc a                                            ; $54f8: $3c
	ld d, b                                          ; $54f9: $50
	ldh a, [$e5]                                     ; $54fa: $f0 $e5
	adc c                                            ; $54fc: $89
	pop af                                           ; $54fd: $f1
	rst SubAFromBC                                          ; $54fe: $e7
	ld b, h                                          ; $54ff: $44
	and b                                            ; $5500: $a0
	cpl                                              ; $5501: $2f
	ld [hl-], a                                      ; $5502: $32
	ld b, [hl]                                       ; $5503: $46
	dec sp                                           ; $5504: $3b
	xor h                                            ; $5505: $ac
	pop af                                           ; $5506: $f1
	nop                                              ; $5507: $00
	pop af                                           ; $5508: $f1
	ld l, b                                          ; $5509: $68
	ld b, a                                          ; $550a: $47
	pop af                                           ; $550b: $f1
	dec d                                            ; $550c: $15
	ld c, l                                          ; $550d: $4d
	ldh a, [$2c]                                     ; $550e: $f0 $2c
	db $eb                                           ; $5510: $eb
	ld d, [hl]                                       ; $5511: $56
	ld b, l                                          ; $5512: $45
	xor b                                            ; $5513: $a8
	db $eb                                           ; $5514: $eb
	inc [hl]                                         ; $5515: $34
	inc [hl]                                         ; $5516: $34
	ldh a, [$e8]                                     ; $5517: $f0 $e8
	ld c, [hl]                                       ; $5519: $4e
	inc a                                            ; $551a: $3c
	and e                                            ; $551b: $a3
	cpl                                              ; $551c: $2f
	ld h, $f0                                        ; $551d: $26 $f0
	and [hl]                                         ; $551f: $a6
	ldh a, [rSC]                                     ; $5520: $f0 $02
	ld [hl], e                                       ; $5522: $73
	dec h                                            ; $5523: $25
	add hl, bc                                       ; $5524: $09
	ld h, b                                          ; $5525: $60
	ld [hl+], a                                      ; $5526: $22
	ld [hl+], a                                      ; $5527: $22
	ld [hl+], a                                      ; $5528: $22
	ld h, b                                          ; $5529: $60
	ld [hl+], a                                      ; $552a: $22
	ld [hl+], a                                      ; $552b: $22
	ld [hl+], a                                      ; $552c: $22
	ld h, b                                          ; $552d: $60
	ld [hl+], a                                      ; $552e: $22
	ld [hl+], a                                      ; $552f: $22
	ld [hl+], a                                      ; $5530: $22

jr_08a_5531:
	ld h, b                                          ; $5531: $60
	ld [hl+], a                                      ; $5532: $22
	ld [hl+], a                                      ; $5533: $22
	ld [hl+], a                                      ; $5534: $22
	ld h, b                                          ; $5535: $60
	ld [hl+], a                                      ; $5536: $22
	ld [hl+], a                                      ; $5537: $22
	ld [hl+], a                                      ; $5538: $22
	ld h, b                                          ; $5539: $60
	and b                                            ; $553a: $a0
	cpl                                              ; $553b: $2f
	ld b, e                                          ; $553c: $43
	ld l, [hl]                                       ; $553d: $6e
	inc [hl]                                         ; $553e: $34
	ld l, [hl]                                       ; $553f: $6e
	ld a, e                                          ; $5540: $7b
	jr c, jr_08a_5531                                ; $5541: $38 $ee

	db $10                                           ; $5543: $10
	and b                                            ; $5544: $a0
	ld e, h                                          ; $5545: $5c
	ld d, [hl]                                       ; $5546: $56
	ld b, [hl]                                       ; $5547: $46
	ld [hl], h                                       ; $5548: $74
	ld [hl], h                                       ; $5549: $74
	pop af                                           ; $554a: $f1
	dec [hl]                                         ; $554b: $35
	scf                                              ; $554c: $37
	inc de                                           ; $554d: $13
	ld b, d                                          ; $554e: $42
	sub a                                            ; $554f: $97
	ld e, h                                          ; $5550: $5c
	ld b, l                                          ; $5551: $45
	pop af                                           ; $5552: $f1
	dec [hl]                                         ; $5553: $35
	scf                                              ; $5554: $37
	and d                                            ; $5555: $a2
	cpl                                              ; $5556: $2f
	ld b, e                                          ; $5557: $43
	ld b, a                                          ; $5558: $47
	inc [hl]                                         ; $5559: $34
	ldh a, [$e1]                                     ; $555a: $f0 $e1
	ldh a, [rSB]                                     ; $555c: $f0 $01
	ld e, a                                          ; $555e: $5f
	pop af                                           ; $555f: $f1
	dec [hl]                                         ; $5560: $35
	and d                                            ; $5561: $a2
	cpl                                              ; $5562: $2f
	ld b, e                                          ; $5563: $43
	ld b, [hl]                                       ; $5564: $46
	xor l                                            ; $5565: $ad
	db $ec                                           ; $5566: $ec
	ldh [rOBP0], a                                   ; $5567: $e0 $48
	and b                                            ; $5569: $a0
	ldh a, [$aa]                                     ; $556a: $f0 $aa
	adc c                                            ; $556c: $89
	adc a                                            ; $556d: $8f
	ld h, d                                          ; $556e: $62
	ldh a, [c]                                       ; $556f: $f2
	and $71                                          ; $5570: $e6 $71
	ld c, [hl]                                       ; $5572: $4e
	ld a, [hl-]                                      ; $5573: $3a
	ld b, c                                          ; $5574: $41
	ccf                                              ; $5575: $3f
	xor $10                                          ; $5576: $ee $10
	inc de                                           ; $5578: $13
	ld e, d                                          ; $5579: $5a
	add hl, sp                                       ; $557a: $39
	jr c, jr_08a_55b6                                ; $557b: $38 $39

	add b                                            ; $557d: $80
	ld c, a                                          ; $557e: $4f
	ld d, a                                          ; $557f: $57
	and c                                            ; $5580: $a1
	cpl                                              ; $5581: $2f
	ld b, e                                          ; $5582: $43
	jr c, jr_08a_55b9                                ; $5583: $38 $34

	jr c, jr_08a_55f5                                ; $5585: $38 $6e

	xor $10                                          ; $5587: $ee $10
	inc de                                           ; $5589: $13
	ld b, b                                          ; $558a: $40
	ld c, l                                          ; $558b: $4d
	ld c, e                                          ; $558c: $4b
	xor $10                                          ; $558d: $ee $10
	and b                                            ; $558f: $a0
	ld b, [hl]                                       ; $5590: $46
	ld a, [hl-]                                      ; $5591: $3a
	dec a                                            ; $5592: $3d
	ld l, l                                          ; $5593: $6d
	ldh a, [$65]                                     ; $5594: $f0 $65
	xor h                                            ; $5596: $ac
	ldh a, [$aa]                                     ; $5597: $f0 $aa
	adc c                                            ; $5599: $89
	adc a                                            ; $559a: $8f
	ld b, a                                          ; $559b: $47
	ld l, e                                          ; $559c: $6b
	ld a, $47                                        ; $559d: $3e $47
	ld a, b                                          ; $559f: $78
	dec a                                            ; $55a0: $3d
	ld b, d                                          ; $55a1: $42
	and c                                            ; $55a2: $a1
	cpl                                              ; $55a3: $2f
	ld b, e                                          ; $55a4: $43
	ld c, d                                          ; $55a5: $4a
	inc [hl]                                         ; $55a6: $34
	ld c, d                                          ; $55a7: $4a
	ld c, a                                          ; $55a8: $4f
	ld c, b                                          ; $55a9: $48
	and b                                            ; $55aa: $a0
	cpl                                              ; $55ab: $2f
	ld b, e                                          ; $55ac: $43
	db $ec                                           ; $55ad: $ec
	ldh [rHDMA3], a                                  ; $55ae: $e0 $53
	ldh a, [$6f]                                     ; $55b0: $f0 $6f
	ldh a, [$0b]                                     ; $55b2: $f0 $0b
	ld b, a                                          ; $55b4: $47

jr_08a_55b5:
	inc de                                           ; $55b5: $13

jr_08a_55b6:
	xor $1a                                          ; $55b6: $ee $1a
	ld e, b                                          ; $55b8: $58

jr_08a_55b9:
	ld a, c                                          ; $55b9: $79
	dec a                                            ; $55ba: $3d
	ld b, c                                          ; $55bb: $41
	ld e, e                                          ; $55bc: $5b
	ld d, [hl]                                       ; $55bd: $56
	ld [hl], h                                       ; $55be: $74
	ld c, b                                          ; $55bf: $48
	and b                                            ; $55c0: $a0
	add d                                            ; $55c1: $82
	jr c, jr_08a_55b5                                ; $55c2: $38 $f1

	dec bc                                           ; $55c4: $0b
	ld c, e                                          ; $55c5: $4b
	inc de                                           ; $55c6: $13
	ldh a, [$0c]                                     ; $55c7: $f0 $0c
	ld e, h                                          ; $55c9: $5c
	dec a                                            ; $55ca: $3d
	ld d, l                                          ; $55cb: $55
	ld a, [hl-]                                      ; $55cc: $3a
	jr c, jr_08a_5632                                ; $55cd: $38 $63

	xor b                                            ; $55cf: $a8
	ld b, [hl]                                       ; $55d0: $46
	ld a, [hl-]                                      ; $55d1: $3a
	dec a                                            ; $55d2: $3d
	ld c, e                                          ; $55d3: $4b
	ldh a, [$aa]                                     ; $55d4: $f0 $aa
	adc c                                            ; $55d6: $89
	ld h, d                                          ; $55d7: $62
	push af                                          ; $55d8: $f5
	ld a, d                                          ; $55d9: $7a
	push af                                          ; $55da: $f5
	ld a, e                                          ; $55db: $7b
	ld a, $3d                                        ; $55dc: $3e $3d
	ld b, d                                          ; $55de: $42
	ld b, l                                          ; $55df: $45
	and b                                            ; $55e0: $a0
	cpl                                              ; $55e1: $2f
	ld b, e                                          ; $55e2: $43
	ld b, b                                          ; $55e3: $40
	inc [hl]                                         ; $55e4: $34
	ld b, b                                          ; $55e5: $40
	ld b, c                                          ; $55e6: $41
	ld a, [hl-]                                      ; $55e7: $3a
	add b                                            ; $55e8: $80
	ld c, a                                          ; $55e9: $4f
	ld d, a                                          ; $55ea: $57
	ld c, e                                          ; $55eb: $4b
	ld c, b                                          ; $55ec: $48
	and b                                            ; $55ed: $a0
	ldh a, [$aa]                                     ; $55ee: $f0 $aa
	adc c                                            ; $55f0: $89
	ld h, d                                          ; $55f1: $62
	di                                               ; $55f2: $f3
	ld c, d                                          ; $55f3: $4a
	ld d, l                                          ; $55f4: $55

jr_08a_55f5:
	ld [hl], d                                       ; $55f5: $72
	dec a                                            ; $55f6: $3d
	pop af                                           ; $55f7: $f1
	ld b, d                                          ; $55f8: $42
	ld b, d                                          ; $55f9: $42
	inc de                                           ; $55fa: $13
	pop af                                           ; $55fb: $f1
	sub [hl]                                         ; $55fc: $96
	pop af                                           ; $55fd: $f1
	db $ec                                           ; $55fe: $ec
	ld c, e                                          ; $55ff: $4b
	xor $10                                          ; $5600: $ee $10
	xor b                                            ; $5602: $a8
	ldh a, [rSCY]                                    ; $5603: $f0 $42
	ldh a, [rSCY]                                    ; $5605: $f0 $42
	ldh a, [rSCY]                                    ; $5607: $f0 $42
	ldh a, [rSCY]                                    ; $5609: $f0 $42
	xor $10                                          ; $560b: $ee $10
	add hl, bc                                       ; $560d: $09
	cpl                                              ; $560e: $2f
	ld b, e                                          ; $560f: $43
	xor $10                                          ; $5610: $ee $10
	and b                                            ; $5612: $a0
	cpl                                              ; $5613: $2f
	ld b, e                                          ; $5614: $43
	ld b, [hl]                                       ; $5615: $46
	inc [hl]                                         ; $5616: $34
	db $ec                                           ; $5617: $ec
	and $a0                                          ; $5618: $e6 $a0
	pop af                                           ; $561a: $f1
	ld sp, $4b68                                     ; $561b: $31 $68 $4b
	ld [hl], b                                       ; $561e: $70
	ld [hl], c                                       ; $561f: $71
	ld b, c                                          ; $5620: $41
	ld c, h                                          ; $5621: $4c
	xor b                                            ; $5622: $a8
	ldh a, [c]                                       ; $5623: $f2
	inc c                                            ; $5624: $0c
	dec sp                                           ; $5625: $3b
	ccf                                              ; $5626: $3f
	ldh a, [c]                                       ; $5627: $f2
	db $db                                           ; $5628: $db
	ldh a, [$be]                                     ; $5629: $f0 $be
	ld c, c                                          ; $562b: $49
	ld c, e                                          ; $562c: $4b
	inc de                                           ; $562d: $13
	ld [hl], a                                       ; $562e: $77
	dec sp                                           ; $562f: $3b
	ccf                                              ; $5630: $3f
	ld a, [hl-]                                      ; $5631: $3a

jr_08a_5632:
	jr c, jr_08a_5691                                ; $5632: $38 $5d

	ld e, d                                          ; $5634: $5a
	ld c, b                                          ; $5635: $48
	and b                                            ; $5636: $a0
	cpl                                              ; $5637: $2f
	ld b, e                                          ; $5638: $43
	db $ed                                           ; $5639: $ed
	ld e, [hl]                                       ; $563a: $5e
	inc [hl]                                         ; $563b: $34
	ld a, a                                          ; $563c: $7f
	ld b, a                                          ; $563d: $47
	ld a, $3f                                        ; $563e: $3e $3f
	ld a, [hl-]                                      ; $5640: $3a
	jr c, @+$47                                      ; $5641: $38 $45

	and b                                            ; $5643: $a0
	db $ed                                           ; $5644: $ed
	ld b, c                                          ; $5645: $41
	ld c, b                                          ; $5646: $48
	and c                                            ; $5647: $a1
	cpl                                              ; $5648: $2f
	ld b, e                                          ; $5649: $43
	db $ed                                           ; $564a: $ed
	ld b, c                                          ; $564b: $41
	inc [hl]                                         ; $564c: $34
	db $ed                                           ; $564d: $ed
	ld b, c                                          ; $564e: $41
	xor b                                            ; $564f: $a8
	ld l, e                                          ; $5650: $6b
	ld d, e                                          ; $5651: $53
	ldh a, [c]                                       ; $5652: $f2
	rlca                                             ; $5653: $07
	ld d, h                                          ; $5654: $54
	dec sp                                           ; $5655: $3b
	dec a                                            ; $5656: $3d
	inc a                                            ; $5657: $3c
	ld c, a                                          ; $5658: $4f
	pop af                                           ; $5659: $f1
	dec d                                            ; $565a: $15
	ld c, l                                          ; $565b: $4d
	dec a                                            ; $565c: $3d
	ld a, [hl-]                                      ; $565d: $3a
	ld e, c                                          ; $565e: $59
	and b                                            ; $565f: $a0
	ld b, [hl]                                       ; $5660: $46
	ld d, a                                          ; $5661: $57
	ld d, e                                          ; $5662: $53
	ld c, c                                          ; $5663: $49
	add hl, sp                                       ; $5664: $39
	ld c, b                                          ; $5665: $48
	dec [hl]                                         ; $5666: $35
	ld [hl], b                                       ; $5667: $70
	ld [hl], c                                       ; $5668: $71
	ld b, c                                          ; $5669: $41
	ld c, h                                          ; $566a: $4c
	add hl, bc                                       ; $566b: $09
	cpl                                              ; $566c: $2f
	ld b, e                                          ; $566d: $43
	jr c, jr_08a_56a8                                ; $566e: $38 $38

	dec sp                                           ; $5670: $3b
	ccf                                              ; $5671: $3f
	xor e                                            ; $5672: $ab
	ld b, b                                          ; $5673: $40
	ld c, l                                          ; $5674: $4d
	ld b, l                                          ; $5675: $45
	ld d, a                                          ; $5676: $57
	inc [hl]                                         ; $5677: $34
	ld d, d                                          ; $5678: $52
	dec a                                            ; $5679: $3d
	ld l, d                                          ; $567a: $6a
	ldh a, [$0d]                                     ; $567b: $f0 $0d
	inc de                                           ; $567d: $13
	ldh a, [rWY]                                     ; $567e: $f0 $4a
	ld e, c                                          ; $5680: $59
	ld l, c                                          ; $5681: $69
	ld b, d                                          ; $5682: $42
	pop af                                           ; $5683: $f1
	ld h, c                                          ; $5684: $61
	ld e, h                                          ; $5685: $5c
	ld h, d                                          ; $5686: $62
	ld a, $3f                                        ; $5687: $3e $3f
	ld d, l                                          ; $5689: $55
	ld c, l                                          ; $568a: $4d
	ld c, [hl]                                       ; $568b: $4e
	and c                                            ; $568c: $a1
	xor $1f                                          ; $568d: $ee $1f
	and b                                            ; $568f: $a0
	cpl                                              ; $5690: $2f

jr_08a_5691:
	ld b, e                                          ; $5691: $43
	ld e, e                                          ; $5692: $5b
	ld d, [hl]                                       ; $5693: $56
	inc [hl]                                         ; $5694: $34
	ld d, d                                          ; $5695: $52
	dec a                                            ; $5696: $3d
	db $ec                                           ; $5697: $ec
	inc l                                            ; $5698: $2c
	ld b, l                                          ; $5699: $45
	and b                                            ; $569a: $a0
	ld b, [hl]                                       ; $569b: $46
	inc [hl]                                         ; $569c: $34
	ld d, $a0                                        ; $569d: $16 $a0
	cpl                                              ; $569f: $2f
	ld b, e                                          ; $56a0: $43
	ld b, b                                          ; $56a1: $40
	inc [hl]                                         ; $56a2: $34
	ld b, b                                          ; $56a3: $40
	ld b, d                                          ; $56a4: $42
	ldh a, [$d2]                                     ; $56a5: $f0 $d2
	ld c, b                                          ; $56a7: $48

jr_08a_56a8:
	db $eb                                           ; $56a8: $eb
	rst FarCall                                          ; $56a9: $f7
	scf                                              ; $56aa: $37
	inc de                                           ; $56ab: $13
	ldh a, [$c2]                                     ; $56ac: $f0 $c2
	ldh a, [$a6]                                     ; $56ae: $f0 $a6
	ld a, $3d                                        ; $56b0: $3e $3d
	ld b, d                                          ; $56b2: $42
	and c                                            ; $56b3: $a1
	xor $1f                                          ; $56b4: $ee $1f
	ld c, b                                          ; $56b6: $48
	inc [hl]                                         ; $56b7: $34
	ret                                              ; $56b8: $c9


	ldh a, [rAUD4LEN]                                ; $56b9: $f0 $20
	ld a, l                                          ; $56bb: $7d
	ld l, c                                          ; $56bc: $69
	ldh a, [rAUD2HIGH]                               ; $56bd: $f0 $19
	inc de                                           ; $56bf: $13
	ld b, a                                          ; $56c0: $47
	ld l, c                                          ; $56c1: $69
	ldh a, [rSC]                                     ; $56c2: $f0 $02
	ldh a, [rBCPD]                                   ; $56c4: $f0 $69
	ldh a, [$03]                                     ; $56c6: $f0 $03
	ld d, e                                          ; $56c8: $53
	ld b, [hl]                                       ; $56c9: $46
	dec sp                                           ; $56ca: $3b
	ccf                                              ; $56cb: $3f
	ld c, h                                          ; $56cc: $4c
	ld c, b                                          ; $56cd: $48
	and b                                            ; $56ce: $a0
	cpl                                              ; $56cf: $2f
	ld b, e                                          ; $56d0: $43
	ret nz                                           ; $56d1: $c0

	xor b                                            ; $56d2: $a8

jr_08a_56d3:
	add a                                            ; $56d3: $87
	ldh a, [$5b]                                     ; $56d4: $f0 $5b
	ldh a, [$5e]                                     ; $56d6: $f0 $5e
	and c                                            ; $56d8: $a1
	xor $1f                                          ; $56d9: $ee $1f
	xor h                                            ; $56db: $ac
	ld d, h                                          ; $56dc: $54
	ld c, l                                          ; $56dd: $4d
	sbc l                                            ; $56de: $9d
	ld d, b                                          ; $56df: $50
	jr c, jr_08a_56d3                                ; $56e0: $38 $f1

	ld l, c                                          ; $56e2: $69
	ld a, a                                          ; $56e3: $7f
	ld b, l                                          ; $56e4: $45
	and b                                            ; $56e5: $a0
	cpl                                              ; $56e6: $2f
	ld b, e                                          ; $56e7: $43
	ld b, l                                          ; $56e8: $45
	inc a                                            ; $56e9: $3c
	dec sp                                           ; $56ea: $3b
	dec a                                            ; $56eb: $3d
	ld c, b                                          ; $56ec: $48
	and b                                            ; $56ed: $a0
	ld [$4c44], a                                    ; $56ee: $ea $44 $4c
	and b                                            ; $56f1: $a0
	ld b, [hl]                                       ; $56f2: $46
	dec sp                                           ; $56f3: $3b
	inc [hl]                                         ; $56f4: $34
	db $ec                                           ; $56f5: $ec
	cp a                                             ; $56f6: $bf
	and d                                            ; $56f7: $a2
	ld b, [hl]                                       ; $56f8: $46
	dec sp                                           ; $56f9: $3b
	inc [hl]                                         ; $56fa: $34
	db $ec                                           ; $56fb: $ec
	ret nz                                           ; $56fc: $c0

	and d                                            ; $56fd: $a2
	ld b, [hl]                                       ; $56fe: $46
	dec sp                                           ; $56ff: $3b
	inc [hl]                                         ; $5700: $34
	db $ec                                           ; $5701: $ec
	pop bc                                           ; $5702: $c1
	and d                                            ; $5703: $a2
	ld b, [hl]                                       ; $5704: $46
	dec sp                                           ; $5705: $3b
	inc [hl]                                         ; $5706: $34
	db $eb                                           ; $5707: $eb
	add sp, -$5e                                     ; $5708: $e8 $a2
	cpl                                              ; $570a: $2f
	ld b, e                                          ; $570b: $43
	ld b, [hl]                                       ; $570c: $46
	dec sp                                           ; $570d: $3b
	inc [hl]                                         ; $570e: $34
	ld a, $34                                        ; $570f: $3e $34
	db $ed                                           ; $5711: $ed
	xor c                                            ; $5712: $a9
	xor b                                            ; $5713: $a8
	ld l, [hl]                                       ; $5714: $6e
	ld [hl], c                                       ; $5715: $71
	ccf                                              ; $5716: $3f
	ld d, l                                          ; $5717: $55
	ld c, l                                          ; $5718: $4d
	ld b, l                                          ; $5719: $45
	inc [hl]                                         ; $571a: $34
	ld b, b                                          ; $571b: $40
	ld b, d                                          ; $571c: $42
	pop af                                           ; $571d: $f1
	ld bc, $4df0                                     ; $571e: $01 $f0 $4d
	ldh a, [$38]                                     ; $5721: $f0 $38
	and b                                            ; $5723: $a0
	add hl, sp                                       ; $5724: $39
	ldh a, [rSCY]                                    ; $5725: $f0 $42
	ldh a, [rSCY]                                    ; $5727: $f0 $42
	ld c, b                                          ; $5729: $48
	inc [hl]                                         ; $572a: $34
	adc c                                            ; $572b: $89
	sbc a                                            ; $572c: $9f
	ldh a, [rAUD2HIGH]                               ; $572d: $f0 $19
	inc de                                           ; $572f: $13
	ld b, b                                          ; $5730: $40
	ld b, d                                          ; $5731: $42
	ldh a, [rAUDVOL]                                 ; $5732: $f0 $24
	pop af                                           ; $5734: $f1
	jp Jump_08a_4f4a                                 ; $5735: $c3 $4a $4f


	ld h, c                                          ; $5738: $61
	ld e, h                                          ; $5739: $5c
	ld d, a                                          ; $573a: $57
	ld b, l                                          ; $573b: $45
	and b                                            ; $573c: $a0
	cpl                                              ; $573d: $2f
	ld b, e                                          ; $573e: $43
	rst JumpTable                                          ; $573f: $c7
	ld a, [hl-]                                      ; $5740: $3a
	ld b, d                                          ; $5741: $42
	ld c, b                                          ; $5742: $48
	and c                                            ; $5743: $a1
	db $ec                                           ; $5744: $ec
	dec b                                            ; $5745: $05
	add hl, sp                                       ; $5746: $39
	ld h, c                                          ; $5747: $61
	ld b, a                                          ; $5748: $47
	xor e                                            ; $5749: $ab
	dec a                                            ; $574a: $3d
	ld d, l                                          ; $574b: $55
	ld d, d                                          ; $574c: $52
	ld a, $55                                        ; $574d: $3e $55
	ld a, [hl-]                                      ; $574f: $3a
	dec sp                                           ; $5750: $3b
	ccf                                              ; $5751: $3f
	jr c, jr_08a_57a9                                ; $5752: $38 $55

	ld b, d                                          ; $5754: $42
	ld c, h                                          ; $5755: $4c
	and b                                            ; $5756: $a0
	db $ec                                           ; $5757: $ec
	cp a                                             ; $5758: $bf
	ld e, b                                          ; $5759: $58
	ld b, c                                          ; $575a: $41
	and b                                            ; $575b: $a0
	db $ec                                           ; $575c: $ec
	ret nz                                           ; $575d: $c0

	ld e, b                                          ; $575e: $58
	ld b, c                                          ; $575f: $41
	and b                                            ; $5760: $a0
	db $ec                                           ; $5761: $ec
	pop bc                                           ; $5762: $c1
	ld e, b                                          ; $5763: $58
	ld b, c                                          ; $5764: $41
	and b                                            ; $5765: $a0
	db $eb                                           ; $5766: $eb
	add sp, $58                                      ; $5767: $e8 $58
	ld b, c                                          ; $5769: $41
	and b                                            ; $576a: $a0
	cpl                                              ; $576b: $2f
	ld b, e                                          ; $576c: $43
	ld b, [hl]                                       ; $576d: $46
	dec sp                                           ; $576e: $3b
	inc [hl]                                         ; $576f: $34
	ld e, h                                          ; $5770: $5c
	inc [hl]                                         ; $5771: $34
	db $ec                                           ; $5772: $ec
	rst SubAFromDE                                          ; $5773: $df
	and b                                            ; $5774: $a0
	add hl, sp                                       ; $5775: $39
	ldh a, [rSCY]                                    ; $5776: $f0 $42
	ldh a, [rSCY]                                    ; $5778: $f0 $42
	inc [hl]                                         ; $577a: $34
	adc c                                            ; $577b: $89
	sbc a                                            ; $577c: $9f
	ldh a, [rAUD2HIGH]                               ; $577d: $f0 $19
	inc de                                           ; $577f: $13
	ld b, b                                          ; $5780: $40
	ld b, d                                          ; $5781: $42
	ldh a, [rAUDVOL]                                 ; $5782: $f0 $24
	pop af                                           ; $5784: $f1
	jp Jump_08a_4f4a                                 ; $5785: $c3 $4a $4f


	ld h, c                                          ; $5788: $61
	ld e, h                                          ; $5789: $5c
	ld d, a                                          ; $578a: $57
	ld c, d                                          ; $578b: $4a
	ld d, c                                          ; $578c: $51
	ld b, l                                          ; $578d: $45
	and b                                            ; $578e: $a0
	ld d, c                                          ; $578f: $51
	ld [hl], b                                       ; $5790: $70
	jr c, jr_08a_57dd                                ; $5791: $38 $4a

	ld d, c                                          ; $5793: $51
	ld c, h                                          ; $5794: $4c
	xor b                                            ; $5795: $a8
	ld l, a                                          ; $5796: $6f
	ld c, a                                          ; $5797: $4f
	ldh a, [$5b]                                     ; $5798: $f0 $5b
	ldh a, [$5e]                                     ; $579a: $f0 $5e
	ld a, [hl-]                                      ; $579c: $3a
	ldh a, [$65]                                     ; $579d: $f0 $65
	ld d, e                                          ; $579f: $53
	db $ec                                           ; $57a0: $ec
	push af                                          ; $57a1: $f5
	ld c, d                                          ; $57a2: $4a
	ld d, c                                          ; $57a3: $51
	and b                                            ; $57a4: $a0
	xor $14                                          ; $57a5: $ee $14
	xor h                                            ; $57a7: $ac
	db $ec                                           ; $57a8: $ec

jr_08a_57a9:
	cp a                                             ; $57a9: $bf
	db $ec                                           ; $57aa: $ec
	ret c                                            ; $57ab: $d8

	and b                                            ; $57ac: $a0
	xor $14                                          ; $57ad: $ee $14
	xor h                                            ; $57af: $ac
	db $ec                                           ; $57b0: $ec
	ret nz                                           ; $57b1: $c0

	db $ec                                           ; $57b2: $ec
	ret c                                            ; $57b3: $d8

	and b                                            ; $57b4: $a0
	xor $14                                          ; $57b5: $ee $14
	xor h                                            ; $57b7: $ac
	db $ec                                           ; $57b8: $ec
	pop bc                                           ; $57b9: $c1
	db $ec                                           ; $57ba: $ec
	ret c                                            ; $57bb: $d8

	and b                                            ; $57bc: $a0
	xor $14                                          ; $57bd: $ee $14
	xor h                                            ; $57bf: $ac
	db $eb                                           ; $57c0: $eb
	add sp, -$14                                     ; $57c1: $e8 $ec
	ret c                                            ; $57c3: $d8

	and b                                            ; $57c4: $a0
	cpl                                              ; $57c5: $2f
	ld b, e                                          ; $57c6: $43
	ld b, [hl]                                       ; $57c7: $46
	dec sp                                           ; $57c8: $3b
	inc [hl]                                         ; $57c9: $34
	ldh a, [$d8]                                     ; $57ca: $f0 $d8
	inc [hl]                                         ; $57cc: $34
	db $ec                                           ; $57cd: $ec
	ldh [$a0], a                                     ; $57ce: $e0 $a0
	pop de                                           ; $57d0: $d1
	inc [hl]                                         ; $57d1: $34
	ld l, [hl]                                       ; $57d2: $6e
	ld c, [hl]                                       ; $57d3: $4e
	ld h, e                                          ; $57d4: $63
	ld c, h                                          ; $57d5: $4c
	dec [hl]                                         ; $57d6: $35
	rla                                              ; $57d7: $17
	xor $1e                                          ; $57d8: $ee $1e
	xor $12                                          ; $57da: $ee $12
	ld h, d                                          ; $57dc: $62

jr_08a_57dd:
	inc de                                           ; $57dd: $13
	ldh a, [c]                                       ; $57de: $f2
	ld [de], a                                       ; $57df: $12
	ld a, $3d                                        ; $57e0: $3e $3d
	ld c, c                                          ; $57e2: $49
	jr c, jr_08a_581e                                ; $57e3: $38 $39

	ld d, h                                          ; $57e5: $54
	ld c, c                                          ; $57e6: $49
	ld c, e                                          ; $57e7: $4b
	ld c, b                                          ; $57e8: $48
	and b                                            ; $57e9: $a0
	cpl                                              ; $57ea: $2f
	ld b, e                                          ; $57eb: $43
	ld c, c                                          ; $57ec: $49
	jr c, jr_08a_5828                                ; $57ed: $38 $39

	ld d, h                                          ; $57ef: $54
	ld c, c                                          ; $57f0: $49
	ld c, e                                          ; $57f1: $4b
	and c                                            ; $57f2: $a1
	ld b, [hl]                                       ; $57f3: $46
	ld a, [hl-]                                      ; $57f4: $3a
	dec a                                            ; $57f5: $3d
	ld h, d                                          ; $57f6: $62
	ldh a, [c]                                       ; $57f7: $f2
	ld [de], a                                       ; $57f8: $12
	ld a, c                                          ; $57f9: $79
	ld a, e                                          ; $57fa: $7b
	ld c, b                                          ; $57fb: $48
	rla                                              ; $57fc: $17
	ld d, h                                          ; $57fd: $54
	ld b, d                                          ; $57fe: $42
	ld l, a                                          ; $57ff: $6f
	ld d, e                                          ; $5800: $53
	ldh a, [$f6]                                     ; $5801: $f0 $f6
	pop af                                           ; $5803: $f1
	inc [hl]                                         ; $5804: $34
	ld b, a                                          ; $5805: $47
	ldh a, [rRP]                                     ; $5806: $f0 $56
	db $f4                                           ; $5808: $f4
	inc d                                            ; $5809: $14
	ld c, d                                          ; $580a: $4a
	ld e, h                                          ; $580b: $5c
	ld c, [hl]                                       ; $580c: $4e
	inc de                                           ; $580d: $13
	ld c, c                                          ; $580e: $49
	jr c, jr_08a_584a                                ; $580f: $38 $39

	ld d, h                                          ; $5811: $54
	ld c, c                                          ; $5812: $49
	ld c, h                                          ; $5813: $4c
	and b                                            ; $5814: $a0
	ldh a, [rSCY]                                    ; $5815: $f0 $42
	ldh a, [rSCY]                                    ; $5817: $f0 $42
	ldh a, [rSCY]                                    ; $5819: $f0 $42
	ldh a, [rSCY]                                    ; $581b: $f0 $42
	xor l                                            ; $581d: $ad

jr_08a_581e:
	ldh a, [$f4]                                     ; $581e: $f0 $f4
	di                                               ; $5820: $f3
	ld c, l                                          ; $5821: $4d
	ld a, $3f                                        ; $5822: $3e $3f
	ld h, h                                          ; $5824: $64
	ld e, h                                          ; $5825: $5c
	ld a, [hl-]                                      ; $5826: $3a
	ld e, b                                          ; $5827: $58

jr_08a_5828:
	jr c, jr_08a_5833                                ; $5828: $38 $09

	db $ed                                           ; $582a: $ed
	ld b, [hl]                                       ; $582b: $46
	xor h                                            ; $582c: $ac
	db $ec                                           ; $582d: $ec
	cp a                                             ; $582e: $bf
	ld e, b                                          ; $582f: $58
	ld b, c                                          ; $5830: $41
	and b                                            ; $5831: $a0
	db $ed                                           ; $5832: $ed

jr_08a_5833:
	ld b, [hl]                                       ; $5833: $46
	xor h                                            ; $5834: $ac
	db $ec                                           ; $5835: $ec
	ret nz                                           ; $5836: $c0

	ld e, b                                          ; $5837: $58
	ld b, c                                          ; $5838: $41
	and b                                            ; $5839: $a0
	db $ed                                           ; $583a: $ed
	ld b, [hl]                                       ; $583b: $46
	xor h                                            ; $583c: $ac
	db $ec                                           ; $583d: $ec
	pop bc                                           ; $583e: $c1
	ld e, b                                          ; $583f: $58
	ld b, c                                          ; $5840: $41
	and b                                            ; $5841: $a0
	db $ed                                           ; $5842: $ed
	ld b, [hl]                                       ; $5843: $46
	xor h                                            ; $5844: $ac
	db $eb                                           ; $5845: $eb
	add sp, $58                                      ; $5846: $e8 $58
	ld b, c                                          ; $5848: $41
	and b                                            ; $5849: $a0

jr_08a_584a:
	cpl                                              ; $584a: $2f
	ld b, e                                          ; $584b: $43
	ld b, [hl]                                       ; $584c: $46
	dec sp                                           ; $584d: $3b
	inc [hl]                                         ; $584e: $34
	inc a                                            ; $584f: $3c
	inc [hl]                                         ; $5850: $34
	db $ec                                           ; $5851: $ec
	pop hl                                           ; $5852: $e1
	xor b                                            ; $5853: $a8
	ld l, [hl]                                       ; $5854: $6e
	ld [hl], c                                       ; $5855: $71
	ccf                                              ; $5856: $3f
	ld b, l                                          ; $5857: $45
	inc [hl]                                         ; $5858: $34
	ld b, b                                          ; $5859: $40
	ld b, d                                          ; $585a: $42
	pop af                                           ; $585b: $f1
	ld bc, $4df0                                     ; $585c: $01 $f0 $4d
	ldh a, [$38]                                     ; $585f: $f0 $38
	and b                                            ; $5861: $a0
	db $ec                                           ; $5862: $ec
	db $d3                                           ; $5863: $d3
	xor c                                            ; $5864: $a9
	db $ec                                           ; $5865: $ec
	ld d, b                                          ; $5866: $50
	db $ec                                           ; $5867: $ec
	ld [hl], a                                       ; $5868: $77
	db $ec                                           ; $5869: $ec
	ret c                                            ; $586a: $d8

	and b                                            ; $586b: $a0
	cpl                                              ; $586c: $2f
	ld b, e                                          ; $586d: $43
	ld [$48af], a                                    ; $586e: $ea $af $48
	and c                                            ; $5871: $a1
	ld d, c                                          ; $5872: $51
	ld [hl], b                                       ; $5873: $70
	jr c, jr_08a_58d9                                ; $5874: $38 $63

	ld c, h                                          ; $5876: $4c
	add l                                            ; $5877: $85
	xor b                                            ; $5878: $a8
	adc c                                            ; $5879: $89
	sbc a                                            ; $587a: $9f
	ldh a, [rAUD2HIGH]                               ; $587b: $f0 $19
	ld b, d                                          ; $587d: $42
	ldh a, [rAUDVOL]                                 ; $587e: $f0 $24
	pop af                                           ; $5880: $f1
	jp $f362                                         ; $5881: $c3 $62 $f3


	rst SubAFromBC                                          ; $5884: $e7
	di                                               ; $5885: $f3
	ld l, e                                          ; $5886: $6b
	ld b, l                                          ; $5887: $45
	and b                                            ; $5888: $a0
	xor $14                                          ; $5889: $ee $14
	inc [hl]                                         ; $588b: $34
	db $ec                                           ; $588c: $ec
	cp a                                             ; $588d: $bf
	ld e, b                                          ; $588e: $58
	ld b, c                                          ; $588f: $41
	and b                                            ; $5890: $a0
	xor $14                                          ; $5891: $ee $14
	inc [hl]                                         ; $5893: $34
	db $ec                                           ; $5894: $ec
	ret nz                                           ; $5895: $c0

	ld e, b                                          ; $5896: $58
	ld b, c                                          ; $5897: $41
	and b                                            ; $5898: $a0
	xor $14                                          ; $5899: $ee $14
	inc [hl]                                         ; $589b: $34
	db $ec                                           ; $589c: $ec
	pop bc                                           ; $589d: $c1
	ld e, b                                          ; $589e: $58
	ld b, c                                          ; $589f: $41
	and b                                            ; $58a0: $a0
	xor $14                                          ; $58a1: $ee $14
	xor h                                            ; $58a3: $ac
	db $eb                                           ; $58a4: $eb
	add sp, $58                                      ; $58a5: $e8 $58
	ld b, c                                          ; $58a7: $41
	and b                                            ; $58a8: $a0
	cpl                                              ; $58a9: $2f
	ld b, e                                          ; $58aa: $43
	inc a                                            ; $58ab: $3c
	inc [hl]                                         ; $58ac: $34
	db $ed                                           ; $58ad: $ed
	ld d, e                                          ; $58ae: $53
	xor b                                            ; $58af: $a8
	ld b, b                                          ; $58b0: $40
	ld b, d                                          ; $58b1: $42
	pop af                                           ; $58b2: $f1
	ld bc, $4df0                                     ; $58b3: $01 $f0 $4d
	ldh a, [$38]                                     ; $58b6: $f0 $38
	ld c, e                                          ; $58b8: $4b
	ld c, b                                          ; $58b9: $48
	and b                                            ; $58ba: $a0
	xor $14                                          ; $58bb: $ee $14
	inc [hl]                                         ; $58bd: $34
	pop af                                           ; $58be: $f1
	sbc c                                            ; $58bf: $99
	ld c, l                                          ; $58c0: $4d
	ld c, [hl]                                       ; $58c1: $4e
	ld d, h                                          ; $58c2: $54
	ld c, c                                          ; $58c3: $49
	inc de                                           ; $58c4: $13
	ld a, [hl-]                                      ; $58c5: $3a
	jr c, @-$12                                      ; $58c6: $38 $ec

	ret c                                            ; $58c8: $d8

	and b                                            ; $58c9: $a0
	cpl                                              ; $58ca: $2f
	ld b, e                                          ; $58cb: $43
	jr c, jr_08a_593c                                ; $58cc: $38 $6e

	inc [hl]                                         ; $58ce: $34
	pop af                                           ; $58cf: $f1
	sbc c                                            ; $58d0: $99
	ld c, l                                          ; $58d1: $4d
	ccf                                              ; $58d2: $3f
	ld c, e                                          ; $58d3: $4b
	inc de                                           ; $58d4: $13
	jr c, @+$3c                                      ; $58d5: $38 $3a

	jr c, jr_08a_591a                                ; $58d7: $38 $41

jr_08a_58d9:
	ld b, h                                          ; $58d9: $44
	ld e, l                                          ; $58da: $5d
	ld e, d                                          ; $58db: $5a
	ld c, b                                          ; $58dc: $48
	add hl, bc                                       ; $58dd: $09
	ld l, a                                          ; $58de: $6f
	ld b, d                                          ; $58df: $42
	ldh a, [$6e]                                     ; $58e0: $f0 $6e
	ldh a, [rWY]                                     ; $58e2: $f0 $4a
	ldh a, [$c4]                                     ; $58e4: $f0 $c4
	ldh a, [$a6]                                     ; $58e6: $f0 $a6
	ld e, c                                          ; $58e8: $59
	ldh a, [$32]                                     ; $58e9: $f0 $32
	ld b, a                                          ; $58eb: $47
	ld a, $3f                                        ; $58ec: $3e $3f
	inc de                                           ; $58ee: $13
	ld b, [hl]                                       ; $58ef: $46
	ldh a, [rSB]                                     ; $58f0: $f0 $01
	ccf                                              ; $58f2: $3f
	ld c, a                                          ; $58f3: $4f
	ld b, l                                          ; $58f4: $45
	ld d, l                                          ; $58f5: $55
	ccf                                              ; $58f6: $3f
	ld b, l                                          ; $58f7: $45
	ld c, b                                          ; $58f8: $48
	dec [hl]                                         ; $58f9: $35
	ldh a, [$08]                                     ; $58fa: $f0 $08
	ld e, c                                          ; $58fc: $59
	ldh a, [$08]                                     ; $58fd: $f0 $08
	ldh a, [$08]                                     ; $58ff: $f0 $08
	ldh a, [$08]                                     ; $5901: $f0 $08
	ldh a, [$08]                                     ; $5903: $f0 $08
	and b                                            ; $5905: $a0
	db $ec                                           ; $5906: $ec
	jp nz, $ecac                                     ; $5907: $c2 $ac $ec

	cp a                                             ; $590a: $bf
	ld e, b                                          ; $590b: $58
	ld b, c                                          ; $590c: $41
	and d                                            ; $590d: $a2
	db $ec                                           ; $590e: $ec
	jp nz, $ecac                                     ; $590f: $c2 $ac $ec

	ret nz                                           ; $5912: $c0

	ld e, b                                          ; $5913: $58
	ld b, c                                          ; $5914: $41
	and d                                            ; $5915: $a2
	db $ec                                           ; $5916: $ec
	jp nz, $ecac                                     ; $5917: $c2 $ac $ec

jr_08a_591a:
	pop bc                                           ; $591a: $c1
	ld e, b                                          ; $591b: $58
	ld b, c                                          ; $591c: $41
	and d                                            ; $591d: $a2
	db $ec                                           ; $591e: $ec
	jp nz, $ebac                                     ; $591f: $c2 $ac $eb

	add sp, $58                                      ; $5922: $e8 $58
	ld b, c                                          ; $5924: $41
	and d                                            ; $5925: $a2
	cpl                                              ; $5926: $2f
	ld b, e                                          ; $5927: $43
	ld b, [hl]                                       ; $5928: $46
	inc [hl]                                         ; $5929: $34
	db $eb                                           ; $592a: $eb
	ld a, [$6ea8]                                    ; $592b: $fa $a8 $6e
	ld [hl], c                                       ; $592e: $71
	ccf                                              ; $592f: $3f
	ld d, l                                          ; $5930: $55
	ld c, l                                          ; $5931: $4d
	ld b, l                                          ; $5932: $45
	inc [hl]                                         ; $5933: $34
	ld b, b                                          ; $5934: $40
	ld b, d                                          ; $5935: $42
	pop af                                           ; $5936: $f1
	ld bc, $4df0                                     ; $5937: $01 $f0 $4d
	ldh a, [$38]                                     ; $593a: $f0 $38

jr_08a_593c:
	ld c, e                                          ; $593c: $4b
	ld c, b                                          ; $593d: $48
	and b                                            ; $593e: $a0
	db $ec                                           ; $593f: $ec
	db $d3                                           ; $5940: $d3
	xor c                                            ; $5941: $a9
	pop af                                           ; $5942: $f1
	ld d, d                                          ; $5943: $52
	ldh a, [$35]                                     ; $5944: $f0 $35
	ld [hl], e                                       ; $5946: $73
	ldh a, [rAUD1LEN]                                ; $5947: $f0 $11
	jr c, jr_08a_5983                                ; $5949: $38 $38

	db $ec                                           ; $594b: $ec
	ret c                                            ; $594c: $d8

	and b                                            ; $594d: $a0
	adc c                                            ; $594e: $89
	sbc a                                            ; $594f: $9f
	ldh a, [rAUD2HIGH]                               ; $5950: $f0 $19
	ld b, d                                          ; $5952: $42
	inc de                                           ; $5953: $13
	ldh a, [rAUDVOL]                                 ; $5954: $f0 $24
	pop af                                           ; $5956: $f1
	jp $e7f3                                         ; $5957: $c3 $f3 $e7


	di                                               ; $595a: $f3
	ld l, e                                          ; $595b: $6b
	ld b, h                                          ; $595c: $44
	ld c, h                                          ; $595d: $4c
	dec [hl]                                         ; $595e: $35
	ld d, h                                          ; $595f: $54
	ld b, d                                          ; $5960: $42
	pop af                                           ; $5961: $f1
	adc d                                            ; $5962: $8a
	ldh a, [$fb]                                     ; $5963: $f0 $fb
	add h                                            ; $5965: $84
	and d                                            ; $5966: $a2
	cpl                                              ; $5967: $2f
	ld b, e                                          ; $5968: $43
	ld b, [hl]                                       ; $5969: $46
	inc [hl]                                         ; $596a: $34
	db $eb                                           ; $596b: $eb
	db $fc                                           ; $596c: $fc
	and b                                            ; $596d: $a0
	db $eb                                           ; $596e: $eb
	add hl, sp                                       ; $596f: $39
	xor h                                            ; $5970: $ac
	db $ec                                           ; $5971: $ec
	cp a                                             ; $5972: $bf
	ld b, a                                          ; $5973: $47
	ld a, [hl-]                                      ; $5974: $3a
	dec sp                                           ; $5975: $3b
	dec a                                            ; $5976: $3d
	or [hl]                                          ; $5977: $b6
	and b                                            ; $5978: $a0
	db $eb                                           ; $5979: $eb
	add hl, sp                                       ; $597a: $39
	xor h                                            ; $597b: $ac
	db $ec                                           ; $597c: $ec
	ret nz                                           ; $597d: $c0

	ld b, a                                          ; $597e: $47
	ld a, [hl-]                                      ; $597f: $3a
	dec sp                                           ; $5980: $3b
	dec a                                            ; $5981: $3d
	or [hl]                                          ; $5982: $b6

jr_08a_5983:
	and b                                            ; $5983: $a0
	db $eb                                           ; $5984: $eb
	add hl, sp                                       ; $5985: $39
	xor h                                            ; $5986: $ac
	db $ec                                           ; $5987: $ec
	pop bc                                           ; $5988: $c1
	ld b, a                                          ; $5989: $47
	ld a, [hl-]                                      ; $598a: $3a
	dec sp                                           ; $598b: $3b
	dec a                                            ; $598c: $3d
	or [hl]                                          ; $598d: $b6
	and b                                            ; $598e: $a0
	db $eb                                           ; $598f: $eb
	add hl, sp                                       ; $5990: $39
	xor h                                            ; $5991: $ac
	db $eb                                           ; $5992: $eb
	add sp, $47                                      ; $5993: $e8 $47
	ld a, [hl-]                                      ; $5995: $3a
	dec sp                                           ; $5996: $3b
	dec a                                            ; $5997: $3d
	or [hl]                                          ; $5998: $b6
	and b                                            ; $5999: $a0
	cpl                                              ; $599a: $2f
	ld b, e                                          ; $599b: $43
	ld a, [hl-]                                      ; $599c: $3a
	inc [hl]                                         ; $599d: $34
	db $ed                                           ; $599e: $ed
	sbc a                                            ; $599f: $9f
	ld b, b                                          ; $59a0: $40
	ld c, l                                          ; $59a1: $4d
	ld h, d                                          ; $59a2: $62
	ld c, b                                          ; $59a3: $48
	add hl, bc                                       ; $59a4: $09
	ld d, c                                          ; $59a5: $51
	ld [hl], b                                       ; $59a6: $70
	jr c, jr_08a_59ea                                ; $59a7: $38 $41

	ld b, h                                          ; $59a9: $44
	ld e, c                                          ; $59aa: $59
	xor b                                            ; $59ab: $a8
	xor $27                                          ; $59ac: $ee $27
	ld h, d                                          ; $59ae: $62
	ldh a, [$0b]                                     ; $59af: $f0 $0b
	ldh a, [$a3]                                     ; $59b1: $f0 $a3
	ld b, a                                          ; $59b3: $47
	ld a, $3f                                        ; $59b4: $3e $3f
	ld d, l                                          ; $59b6: $55
	ld b, h                                          ; $59b7: $44
	ld e, b                                          ; $59b8: $58
	jr c, @+$4e                                      ; $59b9: $38 $4c

	and b                                            ; $59bb: $a0
	cpl                                              ; $59bc: $2f
	ld b, e                                          ; $59bd: $43
	jr c, jr_08a_59f4                                ; $59be: $38 $34

	jr c, jr_08a_5a30                                ; $59c0: $38 $6e

	ld c, b                                          ; $59c2: $48
	inc [hl]                                         ; $59c3: $34
	xor $1e                                          ; $59c4: $ee $1e
	ld c, h                                          ; $59c6: $4c
	ld c, b                                          ; $59c7: $48
	and b                                            ; $59c8: $a0
	xor $27                                          ; $59c9: $ee $27
	inc [hl]                                         ; $59cb: $34
	db $ed                                           ; $59cc: $ed
	ld h, d                                          ; $59cd: $62
	ld b, a                                          ; $59ce: $47
	inc de                                           ; $59cf: $13
	ldh a, [$67]                                     ; $59d0: $f0 $67
	ldh a, [c]                                       ; $59d2: $f2
	dec h                                            ; $59d3: $25
	ld a, $3f                                        ; $59d4: $3e $3f
	ld d, l                                          ; $59d6: $55
	ld c, [hl]                                       ; $59d7: $4e
	and b                                            ; $59d8: $a0
	ld b, [hl]                                       ; $59d9: $46
	inc [hl]                                         ; $59da: $34
	db $ec                                           ; $59db: $ec
	cp a                                             ; $59dc: $bf
	inc de                                           ; $59dd: $13
	db $eb                                           ; $59de: $eb
	jp hl                                            ; $59df: $e9


	and b                                            ; $59e0: $a0
	ld b, [hl]                                       ; $59e1: $46
	inc [hl]                                         ; $59e2: $34
	db $ec                                           ; $59e3: $ec
	ret nz                                           ; $59e4: $c0

	inc de                                           ; $59e5: $13
	db $eb                                           ; $59e6: $eb
	jp hl                                            ; $59e7: $e9


	and b                                            ; $59e8: $a0
	ld b, [hl]                                       ; $59e9: $46

jr_08a_59ea:
	inc [hl]                                         ; $59ea: $34
	db $ec                                           ; $59eb: $ec
	pop bc                                           ; $59ec: $c1
	inc de                                           ; $59ed: $13
	db $eb                                           ; $59ee: $eb
	jp hl                                            ; $59ef: $e9


	and b                                            ; $59f0: $a0
	ld b, [hl]                                       ; $59f1: $46
	inc [hl]                                         ; $59f2: $34
	db $eb                                           ; $59f3: $eb

jr_08a_59f4:
	add sp, $13                                      ; $59f4: $e8 $13
	db $eb                                           ; $59f6: $eb
	jp hl                                            ; $59f7: $e9


	and b                                            ; $59f8: $a0
	cpl                                              ; $59f9: $2f
	ld b, e                                          ; $59fa: $43
	jr c, @+$36                                      ; $59fb: $38 $34

	db $ec                                           ; $59fd: $ec
	and $ab                                          ; $59fe: $e6 $ab
	ld l, [hl]                                       ; $5a00: $6e
	ld [hl], c                                       ; $5a01: $71
	ccf                                              ; $5a02: $3f
	ld d, l                                          ; $5a03: $55
	ld c, l                                          ; $5a04: $4d
	ld a, [hl-]                                      ; $5a05: $3a
	jr c, jr_08a_5a3c                                ; $5a06: $38 $34

	ld b, b                                          ; $5a08: $40
	ld b, d                                          ; $5a09: $42
	pop af                                           ; $5a0a: $f1
	ld bc, $4df0                                     ; $5a0b: $01 $f0 $4d
	ldh a, [$38]                                     ; $5a0e: $f0 $38
	ld c, b                                          ; $5a10: $48
	add hl, bc                                       ; $5a11: $09
	ldh a, [$7d]                                     ; $5a12: $f0 $7d
	inc a                                            ; $5a14: $3c
	ld d, b                                          ; $5a15: $50
	adc c                                            ; $5a16: $89
	sbc a                                            ; $5a17: $9f
	ldh a, [rAUD2HIGH]                               ; $5a18: $f0 $19
	xor h                                            ; $5a1a: $ac
	ld b, b                                          ; $5a1b: $40
	ld b, d                                          ; $5a1c: $42
	ldh a, [rAUDVOL]                                 ; $5a1d: $f0 $24
	pop af                                           ; $5a1f: $f1
	jp Jump_08a_4f4a                                 ; $5a20: $c3 $4a $4f


	ld h, c                                          ; $5a23: $61
	ld e, h                                          ; $5a24: $5c
	ld d, a                                          ; $5a25: $57
	ld b, h                                          ; $5a26: $44
	ld b, l                                          ; $5a27: $45
	and b                                            ; $5a28: $a0
	cpl                                              ; $5a29: $2f
	ld b, e                                          ; $5a2a: $43
	rst JumpTable                                          ; $5a2b: $c7
	ld a, [hl-]                                      ; $5a2c: $3a
	ld b, d                                          ; $5a2d: $42
	ld c, b                                          ; $5a2e: $48
	and b                                            ; $5a2f: $a0

jr_08a_5a30:
	xor $12                                          ; $5a30: $ee $12
	dec sp                                           ; $5a32: $3b

jr_08a_5a33:
	ccf                                              ; $5a33: $3f
	ld b, d                                          ; $5a34: $42
	ld c, e                                          ; $5a35: $4b
	inc de                                           ; $5a36: $13
	ldh a, [$5c]                                     ; $5a37: $f0 $5c
	ld b, b                                          ; $5a39: $40
	add hl, sp                                       ; $5a3a: $39
	ld b, h                                          ; $5a3b: $44

jr_08a_5a3c:
	ld e, l                                          ; $5a3c: $5d
	ld e, d                                          ; $5a3d: $5a
	inc [hl]                                         ; $5a3e: $34
	ld b, [hl]                                       ; $5a3f: $46
	ld a, [hl-]                                      ; $5a40: $3a
	dec a                                            ; $5a41: $3d
	ld a, [hl-]                                      ; $5a42: $3a
	ld d, b                                          ; $5a43: $50
	ldh a, [c]                                       ; $5a44: $f2
	ld a, b                                          ; $5a45: $78
	ld d, c                                          ; $5a46: $51
	and b                                            ; $5a47: $a0
	cpl                                              ; $5a48: $2f
	ld h, $f0                                        ; $5a49: $26 $f0
	ld [hl-], a                                      ; $5a4b: $32
	ld h, l                                          ; $5a4c: $65
	ld [hl], e                                       ; $5a4d: $73
	dec h                                            ; $5a4e: $25
	add hl, bc                                       ; $5a4f: $09
	ld b, [hl]                                       ; $5a50: $46
	dec sp                                           ; $5a51: $3b
	inc [hl]                                         ; $5a52: $34
	db $eb                                           ; $5a53: $eb
	ccf                                              ; $5a54: $3f
	and b                                            ; $5a55: $a0
	cpl                                              ; $5a56: $2f
	ld b, e                                          ; $5a57: $43
	ld b, [hl]                                       ; $5a58: $46
	dec sp                                           ; $5a59: $3b
	inc [hl]                                         ; $5a5a: $34
	ldh a, [rRP]                                     ; $5a5b: $f0 $56
	ld c, e                                          ; $5a5d: $4b
	ld c, b                                          ; $5a5e: $48
	add hl, bc                                       ; $5a5f: $09
	ld b, [hl]                                       ; $5a60: $46
	inc [hl]                                         ; $5a61: $34
	db $ec                                           ; $5a62: $ec
	cp a                                             ; $5a63: $bf
	and b                                            ; $5a64: $a0
	ld b, [hl]                                       ; $5a65: $46
	inc [hl]                                         ; $5a66: $34
	db $ec                                           ; $5a67: $ec
	ret nz                                           ; $5a68: $c0

	and b                                            ; $5a69: $a0
	ld b, [hl]                                       ; $5a6a: $46
	inc [hl]                                         ; $5a6b: $34
	db $ec                                           ; $5a6c: $ec
	pop bc                                           ; $5a6d: $c1
	and b                                            ; $5a6e: $a0
	ld b, [hl]                                       ; $5a6f: $46
	inc [hl]                                         ; $5a70: $34
	db $eb                                           ; $5a71: $eb
	add sp, -$60                                     ; $5a72: $e8 $a0
	cpl                                              ; $5a74: $2f
	ld b, e                                          ; $5a75: $43
	ld e, [hl]                                       ; $5a76: $5e
	dec sp                                           ; $5a77: $3b
	and c                                            ; $5a78: $a1
	sbc $34                                          ; $5a79: $de $34
	db $eb                                           ; $5a7b: $eb
	ccf                                              ; $5a7c: $3f
	xor b                                            ; $5a7d: $a8
	ld b, b                                          ; $5a7e: $40
	ld c, l                                          ; $5a7f: $4d
	ld e, e                                          ; $5a80: $5b
	ld d, [hl]                                       ; $5a81: $56
	ld c, b                                          ; $5a82: $48
	add hl, bc                                       ; $5a83: $09
	cpl                                              ; $5a84: $2f
	ld b, e                                          ; $5a85: $43
	ld h, h                                          ; $5a86: $64
	pop af                                           ; $5a87: $f1
	dec [hl]                                         ; $5a88: $35
	jr c, jr_08a_5a33                                ; $5a89: $38 $a8

	ld [hl-], a                                      ; $5a8b: $32
	ldh a, [$71]                                     ; $5a8c: $f0 $71
	ld d, e                                          ; $5a8e: $53
	ld d, b                                          ; $5a8f: $50
	ld c, l                                          ; $5a90: $4d
	ccf                                              ; $5a91: $3f
	jr c, @+$50                                      ; $5a92: $38 $4e

	ld b, d                                          ; $5a94: $42
	inc a                                            ; $5a95: $3c
	ld a, [hl-]                                      ; $5a96: $3a
	ld c, b                                          ; $5a97: $48
	inc sp                                           ; $5a98: $33
	add hl, bc                                       ; $5a99: $09
	ld l, [hl]                                       ; $5a9a: $6e
	ld [hl], h                                       ; $5a9b: $74
	and b                                            ; $5a9c: $a0
	cpl                                              ; $5a9d: $2f
	ld b, e                                          ; $5a9e: $43
	ldh a, [rSB]                                     ; $5a9f: $f0 $01
	inc [hl]                                         ; $5aa1: $34
	db $ec                                           ; $5aa2: $ec
	di                                               ; $5aa3: $f3
	xor b                                            ; $5aa4: $a8
	ld l, e                                          ; $5aa5: $6b
	ld b, d                                          ; $5aa6: $42
	ldh a, [rAUD2LEN]                                ; $5aa7: $f0 $16
	ld b, h                                          ; $5aa9: $44
	and c                                            ; $5aaa: $a1
	jr c, jr_08a_5b1b                                ; $5aab: $38 $6e

	inc [hl]                                         ; $5aad: $34
	ldh a, [rRP]                                     ; $5aae: $f0 $56
	ld d, e                                          ; $5ab0: $53
	db $ec                                           ; $5ab1: $ec
	cp a                                             ; $5ab2: $bf
	ld b, a                                          ; $5ab3: $47
	inc de                                           ; $5ab4: $13
	ld a, [hl-]                                      ; $5ab5: $3a
	dec sp                                           ; $5ab6: $3b
	dec a                                            ; $5ab7: $3d
	ld c, c                                          ; $5ab8: $49
	ldh a, [$0c]                                     ; $5ab9: $f0 $0c
	jr c, jr_08a_5afc                                ; $5abb: $38 $3f

	ld c, h                                          ; $5abd: $4c
	and b                                            ; $5abe: $a0
	jr c, jr_08a_5b2f                                ; $5abf: $38 $6e

	inc [hl]                                         ; $5ac1: $34
	ldh a, [rRP]                                     ; $5ac2: $f0 $56
	ld d, e                                          ; $5ac4: $53
	db $ec                                           ; $5ac5: $ec
	ret nz                                           ; $5ac6: $c0

	ld b, a                                          ; $5ac7: $47
	inc de                                           ; $5ac8: $13
	ld a, [hl-]                                      ; $5ac9: $3a
	dec sp                                           ; $5aca: $3b
	dec a                                            ; $5acb: $3d
	ld c, c                                          ; $5acc: $49
	ldh a, [$0c]                                     ; $5acd: $f0 $0c
	jr c, jr_08a_5b10                                ; $5acf: $38 $3f

	ld c, h                                          ; $5ad1: $4c
	and b                                            ; $5ad2: $a0
	jr c, jr_08a_5b43                                ; $5ad3: $38 $6e

	inc [hl]                                         ; $5ad5: $34
	ldh a, [rRP]                                     ; $5ad6: $f0 $56
	ld d, e                                          ; $5ad8: $53
	db $ec                                           ; $5ad9: $ec
	pop bc                                           ; $5ada: $c1
	ld b, a                                          ; $5adb: $47
	inc de                                           ; $5adc: $13
	ld a, [hl-]                                      ; $5add: $3a
	dec sp                                           ; $5ade: $3b
	dec a                                            ; $5adf: $3d
	ld c, c                                          ; $5ae0: $49
	ldh a, [$0c]                                     ; $5ae1: $f0 $0c
	jr c, jr_08a_5b24                                ; $5ae3: $38 $3f

	ld c, h                                          ; $5ae5: $4c
	and b                                            ; $5ae6: $a0
	jr c, jr_08a_5b57                                ; $5ae7: $38 $6e

	xor h                                            ; $5ae9: $ac
	ldh a, [rRP]                                     ; $5aea: $f0 $56
	ld d, e                                          ; $5aec: $53
	db $eb                                           ; $5aed: $eb
	add sp, $47                                      ; $5aee: $e8 $47
	ld a, [hl-]                                      ; $5af0: $3a
	dec sp                                           ; $5af1: $3b
	dec a                                            ; $5af2: $3d
	ld c, c                                          ; $5af3: $49
	inc de                                           ; $5af4: $13
	ldh a, [$0c]                                     ; $5af5: $f0 $0c
	jr c, jr_08a_5b38                                ; $5af7: $38 $3f

	ld c, h                                          ; $5af9: $4c
	and b                                            ; $5afa: $a0
	cpl                                              ; $5afb: $2f

jr_08a_5afc:
	ld b, e                                          ; $5afc: $43
	ld a, [hl-]                                      ; $5afd: $3a
	inc [hl]                                         ; $5afe: $34
	db $ed                                           ; $5aff: $ed
	sbc a                                            ; $5b00: $9f
	ld b, b                                          ; $5b01: $40
	ld c, l                                          ; $5b02: $4d
	ld h, d                                          ; $5b03: $62
	ld c, b                                          ; $5b04: $48
	and b                                            ; $5b05: $a0
	xor $12                                          ; $5b06: $ee $12
	inc a                                            ; $5b08: $3c
	ld c, b                                          ; $5b09: $48
	xor h                                            ; $5b0a: $ac
	ldh a, [rRP]                                     ; $5b0b: $f0 $56
	ld b, a                                          ; $5b0d: $47
	ld c, e                                          ; $5b0e: $4b
	db $ec                                           ; $5b0f: $ec

jr_08a_5b10:
	db $10                                           ; $5b10: $10
	jr c, jr_08a_5b4b                                ; $5b11: $38 $38

	di                                               ; $5b13: $f3
	ld l, a                                          ; $5b14: $6f
	ldh a, [c]                                       ; $5b15: $f2
	ld [hl], h                                       ; $5b16: $74
	ld b, h                                          ; $5b17: $44
	and b                                            ; $5b18: $a0
	cpl                                              ; $5b19: $2f
	ld b, e                                          ; $5b1a: $43

jr_08a_5b1b:
	ld b, [hl]                                       ; $5b1b: $46
	inc [hl]                                         ; $5b1c: $34
	ld b, b                                          ; $5b1d: $40
	add hl, sp                                       ; $5b1e: $39
	xor b                                            ; $5b1f: $a8
	ld e, e                                          ; $5b20: $5b
	ld d, [hl]                                       ; $5b21: $56
	inc [hl]                                         ; $5b22: $34
	ld d, d                                          ; $5b23: $52

jr_08a_5b24:
	dec a                                            ; $5b24: $3d
	ld a, [hl-]                                      ; $5b25: $3a
	and b                                            ; $5b26: $a0
	ld b, [hl]                                       ; $5b27: $46
	dec sp                                           ; $5b28: $3b
	inc [hl]                                         ; $5b29: $34
	sbc c                                            ; $5b2a: $99
	ld h, c                                          ; $5b2b: $61
	dec a                                            ; $5b2c: $3d
	ld d, d                                          ; $5b2d: $52
	ld e, [hl]                                       ; $5b2e: $5e

jr_08a_5b2f:
	and d                                            ; $5b2f: $a2
	ld b, l                                          ; $5b30: $45
	add hl, sp                                       ; $5b31: $39
	inc [hl]                                         ; $5b32: $34
	db $ec                                           ; $5b33: $ec
	cp a                                             ; $5b34: $bf
	and d                                            ; $5b35: $a2
	ld b, l                                          ; $5b36: $45
	add hl, sp                                       ; $5b37: $39

jr_08a_5b38:
	inc [hl]                                         ; $5b38: $34
	db $ec                                           ; $5b39: $ec

Jump_08a_5b3a:
	ret nz                                           ; $5b3a: $c0

	and d                                            ; $5b3b: $a2
	ld b, l                                          ; $5b3c: $45
	add hl, sp                                       ; $5b3d: $39
	inc [hl]                                         ; $5b3e: $34
	db $ec                                           ; $5b3f: $ec
	pop bc                                           ; $5b40: $c1
	and d                                            ; $5b41: $a2
	ld b, l                                          ; $5b42: $45

jr_08a_5b43:
	add hl, sp                                       ; $5b43: $39
	inc [hl]                                         ; $5b44: $34
	db $eb                                           ; $5b45: $eb
	add sp, -$5e                                     ; $5b46: $e8 $a2
	cpl                                              ; $5b48: $2f
	ld b, e                                          ; $5b49: $43
	ld b, l                                          ; $5b4a: $45

jr_08a_5b4b:
	inc [hl]                                         ; $5b4b: $34
	adc e                                            ; $5b4c: $8b
	ldh a, [$72]                                     ; $5b4d: $f0 $72
	ld c, b                                          ; $5b4f: $48
	add hl, bc                                       ; $5b50: $09
	ldh a, [$0c]                                     ; $5b51: $f0 $0c
	jr c, @+$3f                                      ; $5b53: $38 $3d

	adc l                                            ; $5b55: $8d
	inc [hl]                                         ; $5b56: $34

jr_08a_5b57:
	ldh a, [$0c]                                     ; $5b57: $f0 $0c
	jr c, jr_08a_5b98                                ; $5b59: $38 $3d

	adc l                                            ; $5b5b: $8d
	xor b                                            ; $5b5c: $a8
	xor $12                                          ; $5b5d: $ee $12
	ld h, d                                          ; $5b5f: $62
	ldh a, [c]                                       ; $5b60: $f2
	ld [de], a                                       ; $5b61: $12
	ld a, $3d                                        ; $5b62: $3e $3d
	ld b, c                                          ; $5b64: $41
	db $ed                                           ; $5b65: $ed
	ld b, e                                          ; $5b66: $43
	ld a, [hl-]                                      ; $5b67: $3a
	and b                                            ; $5b68: $a0
	adc c                                            ; $5b69: $89
	sbc a                                            ; $5b6a: $9f
	ldh a, [rAUD2HIGH]                               ; $5b6b: $f0 $19
	ld b, b                                          ; $5b6d: $40
	ld b, d                                          ; $5b6e: $42
	ldh a, [rAUDVOL]                                 ; $5b6f: $f0 $24
	pop af                                           ; $5b71: $f1
	jp $134a                                         ; $5b72: $c3 $4a $13


	ldh a, [rHDMA1]                                  ; $5b75: $f0 $51
	ld h, c                                          ; $5b77: $61
	ld e, h                                          ; $5b78: $5c
	ld d, a                                          ; $5b79: $57
	ld b, h                                          ; $5b7a: $44
	sub a                                            ; $5b7b: $97
	dec [hl]                                         ; $5b7c: $35
	ld d, h                                          ; $5b7d: $54
	ld b, d                                          ; $5b7e: $42
	pop af                                           ; $5b7f: $f1
	adc d                                            ; $5b80: $8a
	ldh a, [$fb]                                     ; $5b81: $f0 $fb
	add h                                            ; $5b83: $84
	and d                                            ; $5b84: $a2
	cpl                                              ; $5b85: $2f
	ld b, e                                          ; $5b86: $43
	xor $10                                          ; $5b87: $ee $10
	xor b                                            ; $5b89: $a8
	ld [hl-], a                                      ; $5b8a: $32
	ld b, l                                          ; $5b8b: $45
	inc [hl]                                         ; $5b8c: $34
	ldh a, [$66]                                     ; $5b8d: $f0 $66
	ld b, c                                          ; $5b8f: $41
	ld c, d                                          ; $5b90: $4a
	jr c, jr_08a_5bcb                                ; $5b91: $38 $38

	ld b, d                                          ; $5b93: $42
	inc a                                            ; $5b94: $3c
	ld c, b                                          ; $5b95: $48
	and e                                            ; $5b96: $a3
	cpl                                              ; $5b97: $2f

jr_08a_5b98:
	ld [hl-], a                                      ; $5b98: $32
	db $ec                                           ; $5b99: $ec
	ld a, [de]                                       ; $5b9a: $1a
	inc de                                           ; $5b9b: $13
	ldh a, [$0a]                                     ; $5b9c: $f0 $0a
	ldh a, [c]                                       ; $5b9e: $f2
	rlca                                             ; $5b9f: $07
	ld e, h                                          ; $5ba0: $5c
	ld c, a                                          ; $5ba1: $4f
	jr c, jr_08a_5bdc                                ; $5ba2: $38 $38

	ld a, [hl-]                                      ; $5ba4: $3a
	ld [hl], h                                       ; $5ba5: $74
	and e                                            ; $5ba6: $a3
	ld b, [hl]                                       ; $5ba7: $46
	dec sp                                           ; $5ba8: $3b
	inc [hl]                                         ; $5ba9: $34
	ld d, $a8                                        ; $5baa: $16 $a8
	ld h, h                                          ; $5bac: $64
	ld c, e                                          ; $5bad: $4b
	ld b, l                                          ; $5bae: $45
	add hl, sp                                       ; $5baf: $39
	xor b                                            ; $5bb0: $a8
	ldh a, [$0a]                                     ; $5bb1: $f0 $0a
	jr c, jr_08a_5c01                                ; $5bb3: $38 $4c

	inc [hl]                                         ; $5bb5: $34
	db $ed                                           ; $5bb6: $ed
	ld d, a                                          ; $5bb7: $57
	and b                                            ; $5bb8: $a0
	cpl                                              ; $5bb9: $2f
	ld b, e                                          ; $5bba: $43
	ld h, h                                          ; $5bbb: $64
	ld c, e                                          ; $5bbc: $4b
	ld b, l                                          ; $5bbd: $45
	add hl, sp                                       ; $5bbe: $39
	inc [hl]                                         ; $5bbf: $34
	db $ed                                           ; $5bc0: $ed
	xor c                                            ; $5bc1: $a9
	dec [hl]                                         ; $5bc2: $35
	rla                                              ; $5bc3: $17
	db $ec                                           ; $5bc4: $ec
	ld a, [de]                                       ; $5bc5: $1a
	xor h                                            ; $5bc6: $ac
	ldh a, [$0a]                                     ; $5bc7: $f0 $0a
	ldh a, [c]                                       ; $5bc9: $f2
	rlca                                             ; $5bca: $07

jr_08a_5bcb:
	ld e, h                                          ; $5bcb: $5c
	ld b, d                                          ; $5bcc: $42
	ld l, b                                          ; $5bcd: $68
	ld c, a                                          ; $5bce: $4f
	ld b, [hl]                                       ; $5bcf: $46
	ld c, [hl]                                       ; $5bd0: $4e
	ld b, l                                          ; $5bd1: $45
	and b                                            ; $5bd2: $a0
	cpl                                              ; $5bd3: $2f
	db $ed                                           ; $5bd4: $ed
	ld l, [hl]                                       ; $5bd5: $6e
	ld l, b                                          ; $5bd6: $68
	ld c, e                                          ; $5bd7: $4b
	sub b                                            ; $5bd8: $90
	ld a, $55                                        ; $5bd9: $3e $55
	di                                               ; $5bdb: $f3

jr_08a_5bdc:
	sub l                                            ; $5bdc: $95
	sbc a                                            ; $5bdd: $9f
	inc de                                           ; $5bde: $13
	sub h                                            ; $5bdf: $94
	ld a, b                                          ; $5be0: $78
	dec a                                            ; $5be1: $3d
	xor b                                            ; $5be2: $a8
	ldh a, [$0a]                                     ; $5be3: $f0 $0a
	ldh a, [c]                                       ; $5be5: $f2
	rlca                                             ; $5be6: $07
	ld e, h                                          ; $5be7: $5c
	ld c, e                                          ; $5be8: $4b
	pop af                                           ; $5be9: $f1
	ld [hl], e                                       ; $5bea: $73
	ldh a, [rSCX]                                    ; $5beb: $f0 $43
	ld b, d                                          ; $5bed: $42
	pop af                                           ; $5bee: $f1
	ld l, e                                          ; $5bef: $6b
	ld c, c                                          ; $5bf0: $49
	ld c, e                                          ; $5bf1: $4b
	xor h                                            ; $5bf2: $ac
	ld a, [hl]                                       ; $5bf3: $7e
	ld d, l                                          ; $5bf4: $55
	add d                                            ; $5bf5: $82
	dec sp                                           ; $5bf6: $3b
	dec a                                            ; $5bf7: $3d
	ld c, a                                          ; $5bf8: $4f
	ld b, c                                          ; $5bf9: $41
	ld b, h                                          ; $5bfa: $44
	adc l                                            ; $5bfb: $8d
	and e                                            ; $5bfc: $a3
	cpl                                              ; $5bfd: $2f
	ld b, e                                          ; $5bfe: $43
	ld b, [hl]                                       ; $5bff: $46
	inc [hl]                                         ; $5c00: $34

jr_08a_5c01:
	db $ed                                           ; $5c01: $ed
	ld d, e                                          ; $5c02: $53
	and b                                            ; $5c03: $a0
	db $ec                                           ; $5c04: $ec
	ld sp, hl                                        ; $5c05: $f9
	ld c, e                                          ; $5c06: $4b
	pop af                                           ; $5c07: $f1
	jp hl                                            ; $5c08: $e9


	inc a                                            ; $5c09: $3c
	dec sp                                           ; $5c0a: $3b
	dec a                                            ; $5c0b: $3d
	ld h, e                                          ; $5c0c: $63
	xor b                                            ; $5c0d: $a8
	db $eb                                           ; $5c0e: $eb
	jp $3ef0                                         ; $5c0f: $c3 $f0 $3e


	ldh a, [$ac]                                     ; $5c12: $f0 $ac
	and b                                            ; $5c14: $a0
	cpl                                              ; $5c15: $2f
	ld b, e                                          ; $5c16: $43
	db $ed                                           ; $5c17: $ed
	ld d, e                                          ; $5c18: $53
	ld b, d                                          ; $5c19: $42
	dec a                                            ; $5c1a: $3d
	ld [hl], c                                       ; $5c1b: $71
	ld a, [hl-]                                      ; $5c1c: $3a
	ld d, b                                          ; $5c1d: $50
	xor h                                            ; $5c1e: $ac
	ld e, d                                          ; $5c1f: $5a
	add hl, sp                                       ; $5c20: $39
	dec sp                                           ; $5c21: $3b
	ccf                                              ; $5c22: $3f
	ld d, h                                          ; $5c23: $54
	ld c, c                                          ; $5c24: $49
	ld a, [hl-]                                      ; $5c25: $3a
	jr c, jr_08a_5c6d                                ; $5c26: $38 $45

	and b                                            ; $5c28: $a0
	sub c                                            ; $5c29: $91
	ldh a, [$59]                                     ; $5c2a: $f0 $59
	ld c, h                                          ; $5c2c: $4c
	xor b                                            ; $5c2d: $a8
	jp z, $f034                                      ; $5c2e: $ca $34 $f0

	ld d, l                                          ; $5c31: $55
	ldh a, [rBCPS]                                   ; $5c32: $f0 $68
	ld d, c                                          ; $5c34: $51
	ld c, [hl]                                       ; $5c35: $4e
	ld h, e                                          ; $5c36: $63
	and b                                            ; $5c37: $a0
	cpl                                              ; $5c38: $2f
	ld [hl-], a                                      ; $5c39: $32
	ldh a, [$08]                                     ; $5c3a: $f0 $08
	ld d, h                                          ; $5c3c: $54
	ld e, a                                          ; $5c3d: $5f
	ldh a, [rKEY1]                                   ; $5c3e: $f0 $4d
	ld d, e                                          ; $5c40: $53
	push af                                          ; $5c41: $f5
	ld a, c                                          ; $5c42: $79
	dec sp                                           ; $5c43: $3b
	ccf                                              ; $5c44: $3f
	ld b, [hl]                                       ; $5c45: $46
	ld c, [hl]                                       ; $5c46: $4e
	xor b                                            ; $5c47: $a8
	ldh a, [c]                                       ; $5c48: $f2
	sub e                                            ; $5c49: $93
	ldh a, [$f0]                                     ; $5c4a: $f0 $f0
	inc [hl]                                         ; $5c4c: $34
	ldh a, [rSVBK]                                   ; $5c4d: $f0 $70
	di                                               ; $5c4f: $f3
	ld e, l                                          ; $5c50: $5d
	pop af                                           ; $5c51: $f1
	inc bc                                           ; $5c52: $03
	ld a, [hl-]                                      ; $5c53: $3a
	ld b, c                                          ; $5c54: $41
	ld b, h                                          ; $5c55: $44
	ld a, [hl-]                                      ; $5c56: $3a
	and e                                            ; $5c57: $a3
	cpl                                              ; $5c58: $2f
	add [hl]                                         ; $5c59: $86
	add hl, bc                                       ; $5c5a: $09
	cpl                                              ; $5c5b: $2f
	ld b, e                                          ; $5c5c: $43
	db $ed                                           ; $5c5d: $ed
	ld d, a                                          ; $5c5e: $57
	xor h                                            ; $5c5f: $ac
	pop af                                           ; $5c60: $f1
	xor $89                                          ; $5c61: $ee $89
	db $eb                                           ; $5c63: $eb
	or c                                             ; $5c64: $b1
	dec [hl]                                         ; $5c65: $35
	inc hl                                           ; $5c66: $23
	add hl, bc                                       ; $5c67: $09
	cpl                                              ; $5c68: $2f
	ld b, e                                          ; $5c69: $43
	db $ed                                           ; $5c6a: $ed
	ld d, a                                          ; $5c6b: $57
	xor h                                            ; $5c6c: $ac

jr_08a_5c6d:
	db $f4                                           ; $5c6d: $f4
	sub a                                            ; $5c6e: $97
	adc c                                            ; $5c6f: $89
	db $eb                                           ; $5c70: $eb
	or c                                             ; $5c71: $b1
	dec [hl]                                         ; $5c72: $35
	inc hl                                           ; $5c73: $23
	add hl, bc                                       ; $5c74: $09
	cpl                                              ; $5c75: $2f
	ld b, e                                          ; $5c76: $43
	db $ed                                           ; $5c77: $ed
	ld d, a                                          ; $5c78: $57
	xor h                                            ; $5c79: $ac
	ldh a, [$63]                                     ; $5c7a: $f0 $63
	ldh a, [$aa]                                     ; $5c7c: $f0 $aa
	db $eb                                           ; $5c7e: $eb
	or c                                             ; $5c7f: $b1
	dec [hl]                                         ; $5c80: $35
	inc hl                                           ; $5c81: $23
	add hl, bc                                       ; $5c82: $09
	cpl                                              ; $5c83: $2f
	ld b, e                                          ; $5c84: $43
	db $ed                                           ; $5c85: $ed
	ld d, a                                          ; $5c86: $57
	xor h                                            ; $5c87: $ac
	pop af                                           ; $5c88: $f1
	ld a, [hl+]                                      ; $5c89: $2a
	ldh a, [rHDMA3]                                  ; $5c8a: $f0 $53
	db $eb                                           ; $5c8c: $eb
	or c                                             ; $5c8d: $b1
	dec [hl]                                         ; $5c8e: $35
	inc hl                                           ; $5c8f: $23
	add hl, bc                                       ; $5c90: $09
	cpl                                              ; $5c91: $2f
	ld b, e                                          ; $5c92: $43
	db $ed                                           ; $5c93: $ed
	ld d, a                                          ; $5c94: $57
	xor h                                            ; $5c95: $ac
	db $ed                                           ; $5c96: $ed
	ld e, a                                          ; $5c97: $5f
	db $eb                                           ; $5c98: $eb
	or c                                             ; $5c99: $b1
	dec [hl]                                         ; $5c9a: $35
	inc hl                                           ; $5c9b: $23
	add hl, bc                                       ; $5c9c: $09
	cpl                                              ; $5c9d: $2f
	ld b, e                                          ; $5c9e: $43
	db $ed                                           ; $5c9f: $ed
	ld d, a                                          ; $5ca0: $57
	xor h                                            ; $5ca1: $ac
	db $ed                                           ; $5ca2: $ed
	pop hl                                           ; $5ca3: $e1
	pop af                                           ; $5ca4: $f1
	xor l                                            ; $5ca5: $ad
	pop af                                           ; $5ca6: $f1
	and l                                            ; $5ca7: $a5
	ld b, d                                          ; $5ca8: $42
	ld l, b                                          ; $5ca9: $68
	ld b, h                                          ; $5caa: $44
	and b                                            ; $5cab: $a0
	cpl                                              ; $5cac: $2f
	ld b, e                                          ; $5cad: $43
	db $ed                                           ; $5cae: $ed
	ld d, l                                          ; $5caf: $55
	ld e, c                                          ; $5cb0: $59
	inc [hl]                                         ; $5cb1: $34
	pop af                                           ; $5cb2: $f1
	inc l                                            ; $5cb3: $2c
	ldh a, [rDMA]                                    ; $5cb4: $f0 $46
	ld b, h                                          ; $5cb6: $44
	xor b                                            ; $5cb7: $a8
	ld d, h                                          ; $5cb8: $54
	ld c, l                                          ; $5cb9: $4d
	ld c, d                                          ; $5cba: $4a
	halt                                             ; $5cbb: $76
	ld c, a                                          ; $5cbc: $4f
	xor $2c                                          ; $5cbd: $ee $2c
	ld b, d                                          ; $5cbf: $42
	db $f4                                           ; $5cc0: $f4
	sub [hl]                                         ; $5cc1: $96
	di                                               ; $5cc2: $f3
	dec b                                            ; $5cc3: $05
	ld b, h                                          ; $5cc4: $44
	ld a, [hl-]                                      ; $5cc5: $3a
	and b                                            ; $5cc6: $a0
	cpl                                              ; $5cc7: $2f
	ld b, e                                          ; $5cc8: $43
	ld d, h                                          ; $5cc9: $54
	add hl, sp                                       ; $5cca: $39
	ld a, $3f                                        ; $5ccb: $3e $3f
	xor $2c                                          ; $5ccd: $ee $2c
	ld c, e                                          ; $5ccf: $4b
	inc de                                           ; $5cd0: $13
	ldh a, [$ce]                                     ; $5cd1: $f0 $ce
	ldh a, [c]                                       ; $5cd3: $f2
	ld e, b                                          ; $5cd4: $58
	ld a, $3d                                        ; $5cd5: $3e $3d
	and b                                            ; $5cd7: $a0
	cpl                                              ; $5cd8: $2f
	ld b, e                                          ; $5cd9: $43
	di                                               ; $5cda: $f3
	add hl, bc                                       ; $5cdb: $09
	di                                               ; $5cdc: $f3
	sub h                                            ; $5cdd: $94
	ld h, d                                          ; $5cde: $62
	ldh a, [$e5]                                     ; $5cdf: $f0 $e5
	pop af                                           ; $5ce1: $f1
	nop                                              ; $5ce2: $00
	ldh a, [$aa]                                     ; $5ce3: $f0 $aa
	pop af                                           ; $5ce5: $f1
	ld c, e                                          ; $5ce6: $4b
	ldh a, [$3e]                                     ; $5ce7: $f0 $3e
	inc de                                           ; $5ce9: $13
	ld c, c                                          ; $5cea: $49
	dec sp                                           ; $5ceb: $3b
	ccf                                              ; $5cec: $3f
	db $ec                                           ; $5ced: $ec
	push de                                          ; $5cee: $d5
	xor l                                            ; $5cef: $ad
	ld d, h                                          ; $5cf0: $54
	ld c, l                                          ; $5cf1: $4d
	inc a                                            ; $5cf2: $3c
	ld d, b                                          ; $5cf3: $50
	pop af                                           ; $5cf4: $f1
	inc l                                            ; $5cf5: $2c
	pop af                                           ; $5cf6: $f1
	ld l, h                                          ; $5cf7: $6c
	ldh a, [$2a]                                     ; $5cf8: $f0 $2a
	inc [hl]                                         ; $5cfa: $34
	db $f4                                           ; $5cfb: $f4
	ld e, $f0                                        ; $5cfc: $1e $f0
	dec d                                            ; $5cfe: $15
	ld b, h                                          ; $5cff: $44
	and b                                            ; $5d00: $a0
	cpl                                              ; $5d01: $2f
	ld b, e                                          ; $5d02: $43
	db $ec                                           ; $5d03: $ec
	reti                                             ; $5d04: $d9


	inc [hl]                                         ; $5d05: $34
	pop af                                           ; $5d06: $f1
	ld [$4a7f], a                                    ; $5d07: $ea $7f $4a
	xor h                                            ; $5d0a: $ac
	ldh a, [$75]                                     ; $5d0b: $f0 $75
	adc h                                            ; $5d0d: $8c
	ld d, e                                          ; $5d0e: $53
	ldh a, [$5c]                                     ; $5d0f: $f0 $5c
	inc a                                            ; $5d11: $3c
	dec sp                                           ; $5d12: $3b
	dec a                                            ; $5d13: $3d
	ld b, d                                          ; $5d14: $42
	inc a                                            ; $5d15: $3c
	ld a, [hl-]                                      ; $5d16: $3a
	ld [hl], h                                       ; $5d17: $74
	ld c, b                                          ; $5d18: $48
	and b                                            ; $5d19: $a0
	cpl                                              ; $5d1a: $2f
	ld b, e                                          ; $5d1b: $43
	db $ec                                           ; $5d1c: $ec
	reti                                             ; $5d1d: $d9


	inc [hl]                                         ; $5d1e: $34
	pop af                                           ; $5d1f: $f1
	inc hl                                           ; $5d20: $23
	ld a, l                                          ; $5d21: $7d
	ldh a, [$1f]                                     ; $5d22: $f0 $1f
	ld e, c                                          ; $5d24: $59
	sub l                                            ; $5d25: $95
	ld c, d                                          ; $5d26: $4a
	inc de                                           ; $5d27: $13
	ldh a, [$75]                                     ; $5d28: $f0 $75
	adc h                                            ; $5d2a: $8c
	ld d, e                                          ; $5d2b: $53
	ldh a, [$5c]                                     ; $5d2c: $f0 $5c
	inc a                                            ; $5d2e: $3c
	dec sp                                           ; $5d2f: $3b
	dec a                                            ; $5d30: $3d
	ld b, d                                          ; $5d31: $42
	inc a                                            ; $5d32: $3c
	ld a, [hl-]                                      ; $5d33: $3a
	ld [hl], h                                       ; $5d34: $74
	ld c, b                                          ; $5d35: $48
	and b                                            ; $5d36: $a0
	cpl                                              ; $5d37: $2f
	ld b, e                                          ; $5d38: $43
	db $ec                                           ; $5d39: $ec
	sbc c                                            ; $5d3a: $99
	ld b, h                                          ; $5d3b: $44
	scf                                              ; $5d3c: $37
	and d                                            ; $5d3d: $a2
	cpl                                              ; $5d3e: $2f
	ld b, e                                          ; $5d3f: $43
	jr c, jr_08a_5d7a                                ; $5d40: $38 $38

	ld c, d                                          ; $5d42: $4a
	ld e, h                                          ; $5d43: $5c
	ld b, h                                          ; $5d44: $44
	and d                                            ; $5d45: $a2
	cpl                                              ; $5d46: $2f
	ld b, e                                          ; $5d47: $43
	db $ec                                           ; $5d48: $ec
	sub $44                                          ; $5d49: $d6 $44
	ld a, [hl-]                                      ; $5d4b: $3a
	and b                                            ; $5d4c: $a0
	cpl                                              ; $5d4d: $2f
	ld b, e                                          ; $5d4e: $43
	ld c, b                                          ; $5d4f: $48
	ret                                              ; $5d50: $c9


	inc [hl]                                         ; $5d51: $34
	ldh a, [$f1]                                     ; $5d52: $f0 $f1
	ldh a, [$9d]                                     ; $5d54: $f0 $9d
	ld b, h                                          ; $5d56: $44
	ld a, [hl-]                                      ; $5d57: $3a
	and b                                            ; $5d58: $a0
	cpl                                              ; $5d59: $2f
	ld b, e                                          ; $5d5a: $43
	ld d, h                                          ; $5d5b: $54
	ld d, a                                          ; $5d5c: $57
	ld d, [hl]                                       ; $5d5d: $56
	ld b, h                                          ; $5d5e: $44
	ld [hl], c                                       ; $5d5f: $71
	ld b, h                                          ; $5d60: $44
	ld e, c                                          ; $5d61: $59
	scf                                              ; $5d62: $37
	inc de                                           ; $5d63: $13
	ldh a, [rSVBK]                                   ; $5d64: $f0 $70
	ld a, d                                          ; $5d66: $7a
	dec sp                                           ; $5d67: $3b
	ccf                                              ; $5d68: $3f
	ldh a, [c]                                       ; $5d69: $f2
	ld l, c                                          ; $5d6a: $69
	ld b, l                                          ; $5d6b: $45
	and b                                            ; $5d6c: $a0
	cpl                                              ; $5d6d: $2f
	ld b, e                                          ; $5d6e: $43
	ld c, a                                          ; $5d6f: $4f
	add hl, sp                                       ; $5d70: $39
	ld b, h                                          ; $5d71: $44
	ld [hl], c                                       ; $5d72: $71
	ld b, h                                          ; $5d73: $44
	ld e, c                                          ; $5d74: $59
	and b                                            ; $5d75: $a0
	cpl                                              ; $5d76: $2f
	ld b, e                                          ; $5d77: $43
	db $eb                                           ; $5d78: $eb
	inc a                                            ; $5d79: $3c

jr_08a_5d7a:
	xor h                                            ; $5d7a: $ac
	add sp, -$38                                     ; $5d7b: $e8 $c8
	and b                                            ; $5d7d: $a0
	cpl                                              ; $5d7e: $2f
	ld [$ac10], a                                    ; $5d7f: $ea $10 $ac
	jp hl                                            ; $5d82: $e9


	add l                                            ; $5d83: $85
	add hl, bc                                       ; $5d84: $09
	cpl                                              ; $5d85: $2f
	ld [$0912], a                                    ; $5d86: $ea $12 $09
	cpl                                              ; $5d89: $2f
	jp hl                                            ; $5d8a: $e9


	add [hl]                                         ; $5d8b: $86
	add hl, bc                                       ; $5d8c: $09
	cpl                                              ; $5d8d: $2f
	ld b, e                                          ; $5d8e: $43
	db $eb                                           ; $5d8f: $eb
	dec a                                            ; $5d90: $3d
	inc de                                           ; $5d91: $13
	ld [$a011], a                                    ; $5d92: $ea $11 $a0
	cpl                                              ; $5d95: $2f
	ld b, e                                          ; $5d96: $43
	db $eb                                           ; $5d97: $eb
	inc a                                            ; $5d98: $3c
	xor h                                            ; $5d99: $ac
	db $ec                                           ; $5d9a: $ec
	rst SubAFromDE                                          ; $5d9b: $df
	db $ec                                           ; $5d9c: $ec
	inc h                                            ; $5d9d: $24
	inc de                                           ; $5d9e: $13
	db $ec                                           ; $5d9f: $ec
	ret c                                            ; $5da0: $d8

	inc a                                            ; $5da1: $3c
	and b                                            ; $5da2: $a0
	cpl                                              ; $5da3: $2f
	ld b, e                                          ; $5da4: $43
	db $eb                                           ; $5da5: $eb
	inc a                                            ; $5da6: $3c
	xor h                                            ; $5da7: $ac
	db $ec                                           ; $5da8: $ec
	ldh [$ec], a                                     ; $5da9: $e0 $ec
	inc h                                            ; $5dab: $24
	inc de                                           ; $5dac: $13
	db $ec                                           ; $5dad: $ec
	ret c                                            ; $5dae: $d8

	inc a                                            ; $5daf: $3c
	and b                                            ; $5db0: $a0
	cpl                                              ; $5db1: $2f
	ld b, e                                          ; $5db2: $43
	db $eb                                           ; $5db3: $eb
	inc a                                            ; $5db4: $3c
	xor h                                            ; $5db5: $ac
	db $ec                                           ; $5db6: $ec
	pop hl                                           ; $5db7: $e1
	db $ec                                           ; $5db8: $ec
	inc h                                            ; $5db9: $24
	inc de                                           ; $5dba: $13
	db $ec                                           ; $5dbb: $ec
	ret c                                            ; $5dbc: $d8

	inc a                                            ; $5dbd: $3c
	and b                                            ; $5dbe: $a0
	cpl                                              ; $5dbf: $2f
	ld b, e                                          ; $5dc0: $43
	db $eb                                           ; $5dc1: $eb
	inc a                                            ; $5dc2: $3c
	xor h                                            ; $5dc3: $ac
	db $ed                                           ; $5dc4: $ed
	ld d, e                                          ; $5dc5: $53
	db $ec                                           ; $5dc6: $ec
	inc h                                            ; $5dc7: $24
	inc de                                           ; $5dc8: $13
	db $ec                                           ; $5dc9: $ec
	ret c                                            ; $5dca: $d8

	inc a                                            ; $5dcb: $3c
	and b                                            ; $5dcc: $a0
	cpl                                              ; $5dcd: $2f
	ld b, e                                          ; $5dce: $43
	db $eb                                           ; $5dcf: $eb
	inc a                                            ; $5dd0: $3c
	xor h                                            ; $5dd1: $ac
	db $eb                                           ; $5dd2: $eb
	ld a, [$24ec]                                    ; $5dd3: $fa $ec $24
	inc de                                           ; $5dd6: $13
	db $ec                                           ; $5dd7: $ec
	ret c                                            ; $5dd8: $d8

	inc a                                            ; $5dd9: $3c
	and b                                            ; $5dda: $a0
	cpl                                              ; $5ddb: $2f
	ld b, e                                          ; $5ddc: $43
	db $eb                                           ; $5ddd: $eb
	inc a                                            ; $5dde: $3c
	xor h                                            ; $5ddf: $ac
	db $eb                                           ; $5de0: $eb
	db $fc                                           ; $5de1: $fc
	db $ec                                           ; $5de2: $ec
	inc h                                            ; $5de3: $24
	inc de                                           ; $5de4: $13
	db $ec                                           ; $5de5: $ec
	ret c                                            ; $5de6: $d8

	inc a                                            ; $5de7: $3c
	and b                                            ; $5de8: $a0
	cpl                                              ; $5de9: $2f
	ld b, e                                          ; $5dea: $43
	db $eb                                           ; $5deb: $eb
	inc a                                            ; $5dec: $3c
	xor h                                            ; $5ded: $ac
	db $ec                                           ; $5dee: $ec

jr_08a_5def:
	and $ec                                          ; $5def: $e6 $ec
	inc h                                            ; $5df1: $24
	inc de                                           ; $5df2: $13
	db $ec                                           ; $5df3: $ec
	ret c                                            ; $5df4: $d8

	inc a                                            ; $5df5: $3c
	and b                                            ; $5df6: $a0
	cpl                                              ; $5df7: $2f
	ld [hl-], a                                      ; $5df8: $32
	ld c, e                                          ; $5df9: $4b
	ld b, [hl]                                       ; $5dfa: $46
	inc [hl]                                         ; $5dfb: $34
	db $ed                                           ; $5dfc: $ed
	ld d, a                                          ; $5dfd: $57
	ldh a, [$75]                                     ; $5dfe: $f0 $75
	adc h                                            ; $5e00: $8c
	ld d, e                                          ; $5e01: $53
	inc de                                           ; $5e02: $13
	ldh a, [$5c]                                     ; $5e03: $f0 $5c
	jr c, jr_08a_5e41                                ; $5e05: $38 $3a

	ld [hl], h                                       ; $5e07: $74
	ld c, b                                          ; $5e08: $48
	and e                                            ; $5e09: $a3
	ldh a, [rRP]                                     ; $5e0a: $f0 $56
	ld d, e                                          ; $5e0c: $53
	ld b, b                                          ; $5e0d: $40
	ld b, c                                          ; $5e0e: $41
	ld a, [hl-]                                      ; $5e0f: $3a
	sbc d                                            ; $5e10: $9a
	ld h, d                                          ; $5e11: $62
	ld a, $3f                                        ; $5e12: $3e $3f
	ld c, a                                          ; $5e14: $4f
	xor h                                            ; $5e15: $ac
	ld d, d                                          ; $5e16: $52
	dec sp                                           ; $5e17: $3b
	dec a                                            ; $5e18: $3d
	ld d, l                                          ; $5e19: $55
	ld b, d                                          ; $5e1a: $42
	ldh a, [rAUD1LOW]                                ; $5e1b: $f0 $13
	db $ed                                           ; $5e1d: $ed
	add a                                            ; $5e1e: $87
	ld b, h                                          ; $5e1f: $44
	xor b                                            ; $5e20: $a8
	ldh a, [rAUD1LOW]                                ; $5e21: $f0 $13
	ldh a, [$af]                                     ; $5e23: $f0 $af
	ld a, [hl-]                                      ; $5e25: $3a
	pop af                                           ; $5e26: $f1
	db $dd                                           ; $5e27: $dd
	ldh a, [$7f]                                     ; $5e28: $f0 $7f
	ld c, e                                          ; $5e2a: $4b
	ld l, [hl]                                       ; $5e2b: $6e
	ld [hl], c                                       ; $5e2c: $71
	ldh a, [c]                                       ; $5e2d: $f2
	add d                                            ; $5e2e: $82
	ld e, [hl]                                       ; $5e2f: $5e
	and b                                            ; $5e30: $a0
	ld b, b                                          ; $5e31: $40
	ld b, c                                          ; $5e32: $41
	ld a, [hl-]                                      ; $5e33: $3a
	sbc d                                            ; $5e34: $9a
	ld h, d                                          ; $5e35: $62
	ld a, $3f                                        ; $5e36: $3e $3f
	ld c, a                                          ; $5e38: $4f
	xor h                                            ; $5e39: $ac
	pop hl                                           ; $5e3a: $e1
	ld b, d                                          ; $5e3b: $42
	ld a, a                                          ; $5e3c: $7f
	ld h, d                                          ; $5e3d: $62
	db $f4                                           ; $5e3e: $f4
	sub l                                            ; $5e3f: $95
	ld d, l                                          ; $5e40: $55

jr_08a_5e41:
	ld d, h                                          ; $5e41: $54
	ld c, c                                          ; $5e42: $49
	ld a, [hl-]                                      ; $5e43: $3a
	ld e, d                                          ; $5e44: $5a
	inc de                                           ; $5e45: $13
	sub h                                            ; $5e46: $94
	ld a, b                                          ; $5e47: $78
	ld c, [hl]                                       ; $5e48: $4e
	ld c, e                                          ; $5e49: $4b
	sbc h                                            ; $5e4a: $9c
	ld c, a                                          ; $5e4b: $4f
	ld a, [hl-]                                      ; $5e4c: $3a
	jr c, jr_08a_5def                                ; $5e4d: $38 $a0

	db $ed                                           ; $5e4f: $ed
	and a                                            ; $5e50: $a7
	ld c, e                                          ; $5e51: $4b
	ldh a, [rAUD1LOW]                                ; $5e52: $f0 $13
	ldh a, [$af]                                     ; $5e54: $f0 $af
	ld a, [hl-]                                      ; $5e56: $3a
	pop af                                           ; $5e57: $f1
	db $dd                                           ; $5e58: $dd
	ldh a, [$7f]                                     ; $5e59: $f0 $7f
	ld h, d                                          ; $5e5b: $62
	inc de                                           ; $5e5c: $13
	ld a, $3d                                        ; $5e5d: $3e $3d
	ld d, e                                          ; $5e5f: $53
	ld c, [hl]                                       ; $5e60: $4e

jr_08a_5e61:
	ld c, a                                          ; $5e61: $4f
	ld b, d                                          ; $5e62: $42
	ld b, h                                          ; $5e63: $44
	ld a, [hl-]                                      ; $5e64: $3a
	and b                                            ; $5e65: $a0
	ldh a, [rAUD1LOW]                                ; $5e66: $f0 $13
	ldh a, [$af]                                     ; $5e68: $f0 $af
	ld a, [hl-]                                      ; $5e6a: $3a
	ld d, h                                          ; $5e6b: $54
	ld c, c                                          ; $5e6c: $49
	ld h, d                                          ; $5e6d: $62
	xor l                                            ; $5e6e: $ad
	ld a, c                                          ; $5e6f: $79
	jr c, @-$71                                      ; $5e70: $38 $8d

	jr c, jr_08a_5e61                                ; $5e72: $38 $ed

	nop                                              ; $5e74: $00
	ldh a, [c]                                       ; $5e75: $f2
	add d                                            ; $5e76: $82
	ld e, [hl]                                       ; $5e77: $5e
	and b                                            ; $5e78: $a0
	sub d                                            ; $5e79: $92
	adc [hl]                                         ; $5e7a: $8e
	dec sp                                           ; $5e7b: $3b
	ccf                                              ; $5e7c: $3f
	ld c, [hl]                                       ; $5e7d: $4e
	add b                                            ; $5e7e: $80
	ld c, a                                          ; $5e7f: $4f
	ld d, a                                          ; $5e80: $57
	inc de                                           ; $5e81: $13
	ld b, h                                          ; $5e82: $44

jr_08a_5e83:
	ld e, a                                          ; $5e83: $5f
	add hl, sp                                       ; $5e84: $39
	ld d, e                                          ; $5e85: $53
	inc [hl]                                         ; $5e86: $34
	ld d, d                                          ; $5e87: $52
	dec sp                                           ; $5e88: $3b
	dec a                                            ; $5e89: $3d
	ld d, l                                          ; $5e8a: $55
	ldh a, [rAUD1LOW]                                ; $5e8b: $f0 $13
	ldh a, [$af]                                     ; $5e8d: $f0 $af
	ld b, h                                          ; $5e8f: $44
	xor b                                            ; $5e90: $a8
	ld d, h                                          ; $5e91: $54
	ld c, l                                          ; $5e92: $4d
	db $ec                                           ; $5e93: $ec
	jr nz, jr_08a_5e83                               ; $5e94: $20 $ed

	and a                                            ; $5e96: $a7
	ld c, e                                          ; $5e97: $4b
	ld c, b                                          ; $5e98: $48
	and b                                            ; $5e99: $a0
	pop af                                           ; $5e9a: $f1
	rst $38                                          ; $5e9b: $ff
	ld h, e                                          ; $5e9c: $63
	ld c, l                                          ; $5e9d: $4d
	pop af                                           ; $5e9e: $f1
	ld a, b                                          ; $5e9f: $78
	pop af                                           ; $5ea0: $f1
	db $dd                                           ; $5ea1: $dd
	ldh a, [$7f]                                     ; $5ea2: $f0 $7f
	ld h, d                                          ; $5ea4: $62
	ld c, b                                          ; $5ea5: $48
	and b                                            ; $5ea6: $a0
	db $ed                                           ; $5ea7: $ed
	and a                                            ; $5ea8: $a7
	ld c, c                                          ; $5ea9: $49
	ld c, e                                          ; $5eaa: $4b
	ldh a, [c]                                       ; $5eab: $f2
	rst SubAFromHL                                          ; $5eac: $d7
	ld a, $38                                        ; $5ead: $3e $38
	ld c, a                                          ; $5eaf: $4f
	ld b, d                                          ; $5eb0: $42
	ld b, l                                          ; $5eb1: $45
	xor b                                            ; $5eb2: $a8
	ld b, b                                          ; $5eb3: $40
	ld b, c                                          ; $5eb4: $41
	ld a, [hl-]                                      ; $5eb5: $3a
	pop af                                           ; $5eb6: $f1
	db $dd                                           ; $5eb7: $dd
	ldh a, [$7f]                                     ; $5eb8: $f0 $7f
	ld h, d                                          ; $5eba: $62
	ld a, $3a                                        ; $5ebb: $3e $3a
	ld e, l                                          ; $5ebd: $5d
	ld c, l                                          ; $5ebe: $4d
	ld a, e                                          ; $5ebf: $7b
	inc de                                           ; $5ec0: $13
	ld a, [hl-]                                      ; $5ec1: $3a
	ld d, b                                          ; $5ec2: $50
	ld a, [hl-]                                      ; $5ec3: $3a
	jr c, jr_08a_5f0f                                ; $5ec4: $38 $49

	ld c, e                                          ; $5ec6: $4b
	ld c, h                                          ; $5ec7: $4c
	and b                                            ; $5ec8: $a0
	jr c, @+$57                                      ; $5ec9: $38 $55

	ld d, b                                          ; $5ecb: $50
	inc [hl]                                         ; $5ecc: $34
	pop af                                           ; $5ecd: $f1
	db $dd                                           ; $5ece: $dd
	ldh a, [$7f]                                     ; $5ecf: $f0 $7f
	ld a, $3f                                        ; $5ed1: $3e $3f
	ld c, a                                          ; $5ed3: $4f
	xor h                                            ; $5ed4: $ac
	ld l, l                                          ; $5ed5: $6d
	ldh a, [rTIMA]                                   ; $5ed6: $f0 $05
	inc [hl]                                         ; $5ed8: $34
	pop af                                           ; $5ed9: $f1
	or [hl]                                          ; $5eda: $b6
	ld b, a                                          ; $5edb: $47
	inc a                                            ; $5edc: $3c
	ld a, [hl-]                                      ; $5edd: $3a
	add hl, sp                                       ; $5ede: $39
	ld d, h                                          ; $5edf: $54
	ld c, c                                          ; $5ee0: $49
	ld c, e                                          ; $5ee1: $4b
	inc de                                           ; $5ee2: $13
	ld a, [hl-]                                      ; $5ee3: $3a
	jr c, jr_08a_5f28                                ; $5ee4: $38 $42

	ld e, b                                          ; $5ee6: $58
	and b                                            ; $5ee7: $a0
	cpl                                              ; $5ee8: $2f
	ld [hl-], a                                      ; $5ee9: $32
	ld b, b                                          ; $5eea: $40
	ld b, c                                          ; $5eeb: $41
	ld a, [hl-]                                      ; $5eec: $3a
	ld d, h                                          ; $5eed: $54
	ld c, c                                          ; $5eee: $49
	add d                                            ; $5eef: $82
	add hl, sp                                       ; $5ef0: $39
	dec a                                            ; $5ef1: $3d
	ld [hl], c                                       ; $5ef2: $71
	ld b, a                                          ; $5ef3: $47
	inc de                                           ; $5ef4: $13
	ld h, e                                          ; $5ef5: $63
	ldh a, [rAUD1SWEEP]                              ; $5ef6: $f0 $10
	ld h, e                                          ; $5ef8: $63
	ldh a, [rAUD1SWEEP]                              ; $5ef9: $f0 $10
	ld a, b                                          ; $5efb: $78
	ld c, [hl]                                       ; $5efc: $4e
	ld a, [hl-]                                      ; $5efd: $3a
	ld b, l                                          ; $5efe: $45
	ld a, [hl-]                                      ; $5eff: $3a
	ld [hl], h                                       ; $5f00: $74
	and e                                            ; $5f01: $a3
	cpl                                              ; $5f02: $2f
	ld [hl-], a                                      ; $5f03: $32
	ld l, e                                          ; $5f04: $6b
	ld b, h                                          ; $5f05: $44
	inc a                                            ; $5f06: $3c
	inc [hl]                                         ; $5f07: $34
	ld l, [hl]                                       ; $5f08: $6e
	ld c, [hl]                                       ; $5f09: $4e
	ld a, a                                          ; $5f0a: $7f
	ld d, e                                          ; $5f0b: $53
	inc de                                           ; $5f0c: $13
	ld a, [hl-]                                      ; $5f0d: $3a
	ld d, l                                          ; $5f0e: $55

jr_08a_5f0f:
	ld a, [hl-]                                      ; $5f0f: $3a
	dec sp                                           ; $5f10: $3b
	ld h, c                                          ; $5f11: $61
	ld d, [hl]                                       ; $5f12: $56
	dec sp                                           ; $5f13: $3b
	dec a                                            ; $5f14: $3d
	ld b, l                                          ; $5f15: $45
	and e                                            ; $5f16: $a3
	cpl                                              ; $5f17: $2f
	ld [hl-], a                                      ; $5f18: $32
	db $ec                                           ; $5f19: $ec
	di                                               ; $5f1a: $f3
	ld b, d                                          ; $5f1b: $42
	ldh a, [$f8]                                     ; $5f1c: $f0 $f8
	xor b                                            ; $5f1e: $a8
	jr c, jr_08a_5f8f                                ; $5f1f: $38 $6e

	ld l, h                                          ; $5f21: $6c
	ld a, [hl-]                                      ; $5f22: $3a
	db $ed                                           ; $5f23: $ed
	ldh [c], a                                       ; $5f24: $e2
	ld b, h                                          ; $5f25: $44
	adc l                                            ; $5f26: $8d
	inc [hl]                                         ; $5f27: $34

jr_08a_5f28:
	ld d, d                                          ; $5f28: $52
	dec sp                                           ; $5f29: $3b
	dec a                                            ; $5f2a: $3d
	ld d, l                                          ; $5f2b: $55
	and e                                            ; $5f2c: $a3
	cpl                                              ; $5f2d: $2f
	ld [hl-], a                                      ; $5f2e: $32
	ldh a, [$5f]                                     ; $5f2f: $f0 $5f
	ldh a, [$9b]                                     ; $5f31: $f0 $9b
	inc [hl]                                         ; $5f33: $34
	ldh a, [rAUD2ENV]                                ; $5f34: $f0 $17
	ldh a, [rTIMA]                                   ; $5f36: $f0 $05
	pop af                                           ; $5f38: $f1
	ldh a, [c]                                       ; $5f39: $f2
	ld b, d                                          ; $5f3a: $42
	ldh a, [$2a]                                     ; $5f3b: $f0 $2a
	inc de                                           ; $5f3d: $13
	ld c, d                                          ; $5f3e: $4a
	halt                                             ; $5f3f: $76
	ld b, d                                          ; $5f40: $42
	ldh a, [c]                                       ; $5f41: $f2
	sbc e                                            ; $5f42: $9b
	di                                               ; $5f43: $f3
	ld c, e                                          ; $5f44: $4b
	ld d, e                                          ; $5f45: $53
	ldh a, [$5c]                                     ; $5f46: $f0 $5c
	ld d, l                                          ; $5f48: $55
	ld a, [hl-]                                      ; $5f49: $3a
	dec sp                                           ; $5f4a: $3b
	ccf                                              ; $5f4b: $3f
	jr c, jr_08a_5f9c                                ; $5f4c: $38 $4e

	ld c, c                                          ; $5f4e: $49
	inc de                                           ; $5f4f: $13
	adc e                                            ; $5f50: $8b
	ldh a, [$72]                                     ; $5f51: $f0 $72
	ld d, e                                          ; $5f53: $53
	jr c, jr_08a_5f91                                ; $5f54: $38 $3b

	ccf                                              ; $5f56: $3f
	jr c, jr_08a_5f96                                ; $5f57: $38 $3d

	ld a, [hl-]                                      ; $5f59: $3a
	and e                                            ; $5f5a: $a3
	cpl                                              ; $5f5b: $2f
	ld [hl-], a                                      ; $5f5c: $32
	ldh a, [$5f]                                     ; $5f5d: $f0 $5f
	ldh a, [$9b]                                     ; $5f5f: $f0 $9b
	inc [hl]                                         ; $5f61: $34
	ldh a, [rAUD2ENV]                                ; $5f62: $f0 $17
	ldh a, [rTIMA]                                   ; $5f64: $f0 $05
	pop af                                           ; $5f66: $f1
	ldh a, [c]                                       ; $5f67: $f2
	ld b, d                                          ; $5f68: $42
	ldh a, [$2a]                                     ; $5f69: $f0 $2a
	inc de                                           ; $5f6b: $13
	ld c, d                                          ; $5f6c: $4a
	ldh a, [$5d]                                     ; $5f6d: $f0 $5d
	ld a, [hl-]                                      ; $5f6f: $3a
	pop af                                           ; $5f70: $f1
	adc e                                            ; $5f71: $8b
	ld d, e                                          ; $5f72: $53
	ldh a, [hDisp0_BGP]                                     ; $5f73: $f0 $85
	ld c, l                                          ; $5f75: $4d
	ccf                                              ; $5f76: $3f
	jr c, jr_08a_5fc7                                ; $5f77: $38 $4e

	ld c, c                                          ; $5f79: $49
	inc de                                           ; $5f7a: $13
	adc e                                            ; $5f7b: $8b
	ldh a, [$72]                                     ; $5f7c: $f0 $72
	ld d, e                                          ; $5f7e: $53
	jr c, jr_08a_5fbc                                ; $5f7f: $38 $3b

	ccf                                              ; $5f81: $3f
	jr c, jr_08a_5fc1                                ; $5f82: $38 $3d

	ld a, [hl-]                                      ; $5f84: $3a
	and e                                            ; $5f85: $a3
	cpl                                              ; $5f86: $2f
	daa                                              ; $5f87: $27
	pop af                                           ; $5f88: $f1
	ld [$257f], a                                    ; $5f89: $ea $7f $25
	ld b, a                                          ; $5f8c: $47
	ld a, [hl-]                                      ; $5f8d: $3a
	dec sp                                           ; $5f8e: $3b

jr_08a_5f8f:
	ccf                                              ; $5f8f: $3f
	db $ec                                           ; $5f90: $ec

jr_08a_5f91:
	push de                                          ; $5f91: $d5
	and d                                            ; $5f92: $a2
	cpl                                              ; $5f93: $2f
	daa                                              ; $5f94: $27
	pop af                                           ; $5f95: $f1

jr_08a_5f96:
	inc hl                                           ; $5f96: $23
	ld a, l                                          ; $5f97: $7d
	ldh a, [$1f]                                     ; $5f98: $f0 $1f
	ld e, c                                          ; $5f9a: $59
	sub l                                            ; $5f9b: $95

jr_08a_5f9c:
	dec h                                            ; $5f9c: $25
	ld b, a                                          ; $5f9d: $47
	ld a, [hl-]                                      ; $5f9e: $3a
	dec sp                                           ; $5f9f: $3b
	ccf                                              ; $5fa0: $3f
	db $ec                                           ; $5fa1: $ec
	push de                                          ; $5fa2: $d5
	and d                                            ; $5fa3: $a2
	cpl                                              ; $5fa4: $2f
	daa                                              ; $5fa5: $27
	ldh a, [$c2]                                     ; $5fa6: $f0 $c2
	ldh a, [$a6]                                     ; $5fa8: $f0 $a6
	dec h                                            ; $5faa: $25
	ld h, d                                          ; $5fab: $62
	ld a, $3f                                        ; $5fac: $3e $3f
	db $ec                                           ; $5fae: $ec
	push de                                          ; $5faf: $d5
	and d                                            ; $5fb0: $a2
	cpl                                              ; $5fb1: $2f
	ld h, $f1                                        ; $5fb2: $26 $f1
	inc hl                                           ; $5fb4: $23
	ld a, l                                          ; $5fb5: $7d
	ldh a, [$1f]                                     ; $5fb6: $f0 $1f
	ld e, c                                          ; $5fb8: $59
	sub l                                            ; $5fb9: $95
	dec h                                            ; $5fba: $25
	ld d, e                                          ; $5fbb: $53

jr_08a_5fbc:
	ld a, [hl-]                                      ; $5fbc: $3a
	ld h, h                                          ; $5fbd: $64
	dec sp                                           ; $5fbe: $3b
	dec a                                            ; $5fbf: $3d
	and d                                            ; $5fc0: $a2

jr_08a_5fc1:
	cpl                                              ; $5fc1: $2f
	ld h, $f0                                        ; $5fc2: $26 $f0
	jp nz, $a6f0                                     ; $5fc4: $c2 $f0 $a6

jr_08a_5fc7:
	dec h                                            ; $5fc7: $25

jr_08a_5fc8:
	ld d, e                                          ; $5fc8: $53
	ld a, [hl-]                                      ; $5fc9: $3a
	ld h, h                                          ; $5fca: $64
	dec sp                                           ; $5fcb: $3b
	dec a                                            ; $5fcc: $3d
	and d                                            ; $5fcd: $a2
	add hl, bc                                       ; $5fce: $09
	cpl                                              ; $5fcf: $2f
	db $eb                                           ; $5fd0: $eb
	ld l, h                                          ; $5fd1: $6c
	inc [hl]                                         ; $5fd2: $34
	ld a, [hl]                                       ; $5fd3: $7e
	jr c, jr_08a_5fc8                                ; $5fd4: $38 $f2

	adc a                                            ; $5fd6: $8f
	ldh a, [c]                                       ; $5fd7: $f2
	sub b                                            ; $5fd8: $90
	inc de                                           ; $5fd9: $13
	ld h, d                                          ; $5fda: $62
	inc [hl]                                         ; $5fdb: $34
	jp hl                                            ; $5fdc: $e9


	and e                                            ; $5fdd: $a3
	and e                                            ; $5fde: $a3
	cpl                                              ; $5fdf: $2f
	ld [hl-], a                                      ; $5fe0: $32
	jp hl                                            ; $5fe1: $e9


	and l                                            ; $5fe2: $a5
	inc de                                           ; $5fe3: $13
	jp hl                                            ; $5fe4: $e9


	and e                                            ; $5fe5: $a3
	and e                                            ; $5fe6: $a3
	cpl                                              ; $5fe7: $2f
	jp hl                                            ; $5fe8: $e9


	inc hl                                           ; $5fe9: $23
	inc de                                           ; $5fea: $13
	ld b, h                                          ; $5feb: $44
	ld e, a                                          ; $5fec: $5f
	add hl, sp                                       ; $5fed: $39
	and e                                            ; $5fee: $a3
	cpl                                              ; $5fef: $2f
	ld [hl-], a                                      ; $5ff0: $32
	jp hl                                            ; $5ff1: $e9


	and [hl]                                         ; $5ff2: $a6
	inc de                                           ; $5ff3: $13
	jp hl                                            ; $5ff4: $e9


	inc h                                            ; $5ff5: $24
	and e                                            ; $5ff6: $a3
	cpl                                              ; $5ff7: $2f
	ld [$13b2], a                                    ; $5ff8: $ea $b2 $13
	jp hl                                            ; $5ffb: $e9


	and a                                            ; $5ffc: $a7
	and e                                            ; $5ffd: $a3
	cpl                                              ; $5ffe: $2f
	ld [hl-], a                                      ; $5fff: $32
	pop af                                           ; $6000: $f1
	ld c, c                                          ; $6001: $49
	ldh a, [rP1]                                     ; $6002: $f0 $00
	ldh a, [rSC]                                     ; $6004: $f0 $02
	ld c, e                                          ; $6006: $4b
	pop af                                           ; $6007: $f1
	ld [hl], c                                       ; $6008: $71
	pop af                                           ; $6009: $f1
	dec c                                            ; $600a: $0d
	ld b, d                                          ; $600b: $42
	inc de                                           ; $600c: $13
	add a                                            ; $600d: $87
	pop af                                           ; $600e: $f1
	ld hl, sp-$0c                                    ; $600f: $f8 $f4
	sub h                                            ; $6011: $94
	ld d, e                                          ; $6012: $53
	db $ec                                           ; $6013: $ec
	ld d, l                                          ; $6014: $55
	ld c, d                                          ; $6015: $4a
	inc de                                           ; $6016: $13
	add a                                            ; $6017: $87
	db $f4                                           ; $6018: $f4
	or b                                             ; $6019: $b0
	ld c, l                                          ; $601a: $4d
	ld d, c                                          ; $601b: $51
	ld c, [hl]                                       ; $601c: $4e
	ldh a, [c]                                       ; $601d: $f2
	and b                                            ; $601e: $a0
	di                                               ; $601f: $f3
	jr c, jr_08a_6066                                ; $6020: $38 $44

	inc sp                                           ; $6022: $33
	add hl, bc                                       ; $6023: $09
	cpl                                              ; $6024: $2f
	ld [hl-], a                                      ; $6025: $32
	ldh a, [$5c]                                     ; $6026: $f0 $5c
	pop af                                           ; $6028: $f1
	and a                                            ; $6029: $a7
	di                                               ; $602a: $f3
	ld a, [bc]                                       ; $602b: $0a
	ld c, e                                          ; $602c: $4b
	ldh a, [rAUD3LOW]                                ; $602d: $f0 $1d
	ldh a, [$8e]                                     ; $602f: $f0 $8e
	ldh a, [$c4]                                     ; $6031: $f0 $c4
	ldh a, [$3d]                                     ; $6033: $f0 $3d
	ld b, a                                          ; $6035: $47
	inc de                                           ; $6036: $13
	push af                                          ; $6037: $f5
	ld [hl], a                                       ; $6038: $77
	push af                                          ; $6039: $f5
	ld a, b                                          ; $603a: $78
	ld e, b                                          ; $603b: $58
	ld c, l                                          ; $603c: $4d
	ld c, [hl]                                       ; $603d: $4e
	ldh a, [$ab]                                     ; $603e: $f0 $ab
	ldh a, [rAUD2ENV]                                ; $6040: $f0 $17
	ld h, d                                          ; $6042: $62
	ldh a, [$bd]                                     ; $6043: $f0 $bd
	jr c, jr_08a_6084                                ; $6045: $38 $3d

	inc de                                           ; $6047: $13
	ld [$44c1], a                                    ; $6048: $ea $c1 $44
	inc sp                                           ; $604b: $33
	add hl, bc                                       ; $604c: $09
	cpl                                              ; $604d: $2f
	ld [hl-], a                                      ; $604e: $32
	ldh a, [c]                                       ; $604f: $f2
	ld c, b                                          ; $6050: $48
	di                                               ; $6051: $f3
	and $f0                                          ; $6052: $e6 $f0
	ld de, $f065                                     ; $6054: $11 $65 $f0
	adc [hl]                                         ; $6057: $8e
	ldh a, [$c4]                                     ; $6058: $f0 $c4
	ldh a, [rWY]                                     ; $605a: $f0 $4a
	ld h, l                                          ; $605c: $65
	inc de                                           ; $605d: $13
	sbc b                                            ; $605e: $98
	ldh a, [$7c]                                     ; $605f: $f0 $7c
	ldh a, [$03]                                     ; $6061: $f0 $03
	ld c, e                                          ; $6063: $4b
	db $ec                                           ; $6064: $ec
	ld d, l                                          ; $6065: $55

jr_08a_6066:
	ld c, d                                          ; $6066: $4a
	ldh a, [rAUDVOL]                                 ; $6067: $f0 $24
	pop af                                           ; $6069: $f1
	jp $1347                                         ; $606a: $c3 $47 $13


	ld a, [hl-]                                      ; $606d: $3a
	dec sp                                           ; $606e: $3b
	dec a                                            ; $606f: $3d
	db $eb                                           ; $6070: $eb
	add e                                            ; $6071: $83
	ldh a, [$74]                                     ; $6072: $f0 $74
	ldh a, [$7a]                                     ; $6074: $f0 $7a
	ld b, h                                          ; $6076: $44
	inc sp                                           ; $6077: $33
	add hl, bc                                       ; $6078: $09
	cpl                                              ; $6079: $2f
	ld [hl-], a                                      ; $607a: $32
	pop af                                           ; $607b: $f1
	ld b, b                                          ; $607c: $40
	ld a, l                                          ; $607d: $7d
	ldh a, [$32]                                     ; $607e: $f0 $32
	ldh a, [rP1]                                     ; $6080: $f0 $00
	ldh a, [$3d]                                     ; $6082: $f0 $3d

jr_08a_6084:
	ld h, l                                          ; $6084: $65
	ldh a, [c]                                       ; $6085: $f2
	adc h                                            ; $6086: $8c
	ld c, e                                          ; $6087: $4b
	inc de                                           ; $6088: $13
	ldh a, [c]                                       ; $6089: $f2
	ld e, d                                          ; $608a: $5a
	ldh a, [c]                                       ; $608b: $f2
	ld e, e                                          ; $608c: $5b
	add h                                            ; $608d: $84
	ld c, c                                          ; $608e: $49
	add h                                            ; $608f: $84

jr_08a_6090:
	ldh a, [$2a]                                     ; $6090: $f0 $2a
	ld b, d                                          ; $6092: $42
	ldh a, [$fc]                                     ; $6093: $f0 $fc
	jr c, @+$64                                      ; $6095: $38 $62

	ldh a, [$bd]                                     ; $6097: $f0 $bd
	ld d, l                                          ; $6099: $55
	inc de                                           ; $609a: $13
	ldh a, [c]                                       ; $609b: $f2
	and b                                            ; $609c: $a0
	di                                               ; $609d: $f3
	jr c, jr_08a_6090                                ; $609e: $38 $f0

	ld l, e                                          ; $60a0: $6b
	ldh a, [rSC]                                     ; $60a1: $f0 $02
	ld e, c                                          ; $60a3: $59
	ld b, d                                          ; $60a4: $42
	ldh a, [hDisp0_WY]                                     ; $60a5: $f0 $88
	ldh a, [rDMA]                                    ; $60a7: $f0 $46
	ld b, h                                          ; $60a9: $44
	and e                                            ; $60aa: $a3
	cpl                                              ; $60ab: $2f
	ld [hl-], a                                      ; $60ac: $32
	push af                                          ; $60ad: $f5
	halt                                             ; $60ae: $76
	ld b, d                                          ; $60af: $42
	di                                               ; $60b0: $f3
	daa                                              ; $60b1: $27
	di                                               ; $60b2: $f3
	rst SubAFromHL                                          ; $60b3: $d7
	ld c, e                                          ; $60b4: $4b
	inc de                                           ; $60b5: $13
	ldh a, [$3d]                                     ; $60b6: $f0 $3d
	pop af                                           ; $60b8: $f1
	ld [bc], a                                       ; $60b9: $02
	ldh a, [$9d]                                     ; $60ba: $f0 $9d
	ldh a, [$74]                                     ; $60bc: $f0 $74
	ldh a, [$7a]                                     ; $60be: $f0 $7a
	ld b, d                                          ; $60c0: $42
	pop af                                           ; $60c1: $f1
	ld d, d                                          ; $60c2: $52
	ldh a, [rAUDVOL]                                 ; $60c3: $f0 $24
	pop af                                           ; $60c5: $f1
	jp $a5f0                                         ; $60c6: $c3 $f0 $a5


	ld b, h                                          ; $60c9: $44
	and e                                            ; $60ca: $a3
	cpl                                              ; $60cb: $2f
	ld [hl-], a                                      ; $60cc: $32
	ldh a, [rP1]                                     ; $60cd: $f0 $00
	ldh a, [rAUD3ENA]                                ; $60cf: $f0 $1a
	ld e, c                                          ; $60d1: $59
	ldh a, [rAUD4POLY]                               ; $60d2: $f0 $22
	ldh a, [$03]                                     ; $60d4: $f0 $03
	ldh a, [hDisp0_WX]                                     ; $60d6: $f0 $89
	pop af                                           ; $60d8: $f1
	ld b, b                                          ; $60d9: $40
	pop af                                           ; $60da: $f1
	ld [de], a                                       ; $60db: $12
	ld h, l                                          ; $60dc: $65
	ldh a, [c]                                       ; $60dd: $f2
	adc h                                            ; $60de: $8c
	ld c, e                                          ; $60df: $4b
	inc de                                           ; $60e0: $13
	pop af                                           ; $60e1: $f1
	sub b                                            ; $60e2: $90
	di                                               ; $60e3: $f3
	sbc [hl]                                         ; $60e4: $9e
	ld a, [hl-]                                      ; $60e5: $3a
	db $eb                                           ; $60e6: $eb
	add e                                            ; $60e7: $83
	ldh a, [$74]                                     ; $60e8: $f0 $74
	ldh a, [$7a]                                     ; $60ea: $f0 $7a
	ld b, h                                          ; $60ec: $44
	and e                                            ; $60ed: $a3
	cpl                                              ; $60ee: $2f
	ld [hl-], a                                      ; $60ef: $32
	db $f4                                           ; $60f0: $f4
	sub e                                            ; $60f1: $93
	ldh a, [rHDMA2]                                  ; $60f2: $f0 $52
	pop af                                           ; $60f4: $f1
	add hl, de                                       ; $60f5: $19
	pop af                                           ; $60f6: $f1
	dec c                                            ; $60f7: $0d
	ldh a, [rSVBK]                                   ; $60f8: $f0 $70
	ld c, e                                          ; $60fa: $4b
	inc de                                           ; $60fb: $13
	ldh a, [$5d]                                     ; $60fc: $f0 $5d
	ld h, e                                          ; $60fe: $63
	dec sp                                           ; $60ff: $3b
	dec a                                            ; $6100: $3d
	ldh a, [$ab]                                     ; $6101: $f0 $ab
	ld d, e                                          ; $6103: $53
	di                                               ; $6104: $f3
	add d                                            ; $6105: $82
	add h                                            ; $6106: $84
	pop af                                           ; $6107: $f1
	jr z, jr_08a_614c                                ; $6108: $28 $42

	xor h                                            ; $610a: $ac
	ldh a, [$08]                                     ; $610b: $f0 $08
	ld b, d                                          ; $610d: $42
	pop af                                           ; $610e: $f1
	halt                                             ; $610f: $76
	ld b, d                                          ; $6110: $42
	ld [$44c1], a                                    ; $6111: $ea $c1 $44
	and e                                            ; $6114: $a3
	cpl                                              ; $6115: $2f
	ld [hl-], a                                      ; $6116: $32
	ldh a, [rWY]                                     ; $6117: $f0 $4a
	ldh a, [$c4]                                     ; $6119: $f0 $c4
	ld e, c                                          ; $611b: $59
	add c                                            ; $611c: $81
	db $eb                                           ; $611d: $eb
	call nc, $134b                                   ; $611e: $d4 $4b $13
	pop af                                           ; $6121: $f1
	sbc b                                            ; $6122: $98
	ldh a, [$dc]                                     ; $6123: $f0 $dc
	di                                               ; $6125: $f3
	add c                                            ; $6126: $81
	push af                                          ; $6127: $f5
	ld [hl], l                                       ; $6128: $75
	ld h, d                                          ; $6129: $62
	ldh a, [$60]                                     ; $612a: $f0 $60
	ld e, c                                          ; $612c: $59
	ldh a, [rAUD3LOW]                                ; $612d: $f0 $1d
	ld b, a                                          ; $612f: $47
	ld a, $3d                                        ; $6130: $3e $3d
	ldh a, [c]                                       ; $6132: $f2
	and b                                            ; $6133: $a0
	di                                               ; $6134: $f3
	jr c, jr_08a_617b                                ; $6135: $38 $44

jr_08a_6137:
	inc sp                                           ; $6137: $33
	add hl, bc                                       ; $6138: $09
	cpl                                              ; $6139: $2f
	ld [hl-], a                                      ; $613a: $32
	ldh a, [rP1]                                     ; $613b: $f0 $00
	ld h, l                                          ; $613d: $65
	pop af                                           ; $613e: $f1
	ld c, c                                          ; $613f: $49
	ld c, e                                          ; $6140: $4b
	db $ed                                           ; $6141: $ed
	cp d                                             ; $6142: $ba
	ld c, d                                          ; $6143: $4a
	ld c, a                                          ; $6144: $4f
	inc de                                           ; $6145: $13
	ldh a, [rAUD1ENV]                                ; $6146: $f0 $12
	jr c, jr_08a_6137                                ; $6148: $38 $ed

	adc e                                            ; $614a: $8b
	ld h, d                                          ; $614b: $62

jr_08a_614c:
	pop af                                           ; $614c: $f1
	ld c, d                                          ; $614d: $4a
	ld e, l                                          ; $614e: $5d
	dec a                                            ; $614f: $3d
	inc de                                           ; $6150: $13
	push af                                          ; $6151: $f5
	ld [hl], h                                       ; $6152: $74
	ldh a, [$7a]                                     ; $6153: $f0 $7a
	ldh a, [rOCPD]                                   ; $6155: $f0 $6b
	ldh a, [rSC]                                     ; $6157: $f0 $02
	ld e, c                                          ; $6159: $59
	ld b, h                                          ; $615a: $44
	inc sp                                           ; $615b: $33
	add hl, bc                                       ; $615c: $09
	cpl                                              ; $615d: $2f
	ld [hl-], a                                      ; $615e: $32
	ldh a, [$de]                                     ; $615f: $f0 $de
	ld e, c                                          ; $6161: $59
	ldh a, [$27]                                     ; $6162: $f0 $27
	ld c, e                                          ; $6164: $4b
	pop af                                           ; $6165: $f1
	and l                                            ; $6166: $a5
	pop af                                           ; $6167: $f1
	ldh [c], a                                       ; $6168: $e2
	ldh a, [c]                                       ; $6169: $f2
	or c                                             ; $616a: $b1
	inc a                                            ; $616b: $3c
	ld a, [hl-]                                      ; $616c: $3a
	inc de                                           ; $616d: $13
	ldh a, [rAUD1LEN]                                ; $616e: $f0 $11
	ldh a, [$9d]                                     ; $6170: $f0 $9d
	ldh a, [rWY]                                     ; $6172: $f0 $4a
	ldh a, [$c4]                                     ; $6174: $f0 $c4
	ldh a, [$3d]                                     ; $6176: $f0 $3d
	ld h, l                                          ; $6178: $65
	ld d, e                                          ; $6179: $53
	di                                               ; $617a: $f3

jr_08a_617b:
	add d                                            ; $617b: $82
	ldh a, [c]                                       ; $617c: $f2
	reti                                             ; $617d: $d9


	ld b, d                                          ; $617e: $42
	inc de                                           ; $617f: $13
	ldh a, [rAUD1LEN]                                ; $6180: $f0 $11
	ldh a, [$9d]                                     ; $6182: $f0 $9d
	ldh a, [rWY]                                     ; $6184: $f0 $4a
	ldh a, [$c4]                                     ; $6186: $f0 $c4
	ld e, c                                          ; $6188: $59
	ldh a, [$74]                                     ; $6189: $f0 $74
	ldh a, [$7a]                                     ; $618b: $f0 $7a
	ld b, h                                          ; $618d: $44
	inc sp                                           ; $618e: $33
	add hl, bc                                       ; $618f: $09
	cpl                                              ; $6190: $2f
	ld [hl-], a                                      ; $6191: $32
	ldh a, [rDIV]                                    ; $6192: $f0 $04
	ld a, l                                          ; $6194: $7d
	ldh a, [rIF]                                     ; $6195: $f0 $0f
	pop af                                           ; $6197: $f1
	ld [bc], a                                       ; $6198: $02
	ld [hl], e                                       ; $6199: $73
	sub e                                            ; $619a: $93
	ld c, e                                          ; $619b: $4b
	inc de                                           ; $619c: $13
	push af                                          ; $619d: $f5
	ld [hl], d                                       ; $619e: $72
	push af                                          ; $619f: $f5
	ld [hl], e                                       ; $61a0: $73
	ld d, c                                          ; $61a1: $51
	ld c, [hl]                                       ; $61a2: $4e
	db $f4                                           ; $61a3: $f4
	inc de                                           ; $61a4: $13
	db $f4                                           ; $61a5: $f4
	ld d, $f1                                        ; $61a6: $16 $f1
	call c, $92f4                                    ; $61a8: $dc $f4 $92
	ld h, d                                          ; $61ab: $62
	inc de                                           ; $61ac: $13
	di                                               ; $61ad: $f3
	sub e                                            ; $61ae: $93
	di                                               ; $61af: $f3
	ld h, l                                          ; $61b0: $65
	ld b, a                                          ; $61b1: $47
	ld a, $3d                                        ; $61b2: $3e $3d
	ld [$44c1], a                                    ; $61b4: $ea $c1 $44
	inc sp                                           ; $61b7: $33
	add hl, bc                                       ; $61b8: $09
	cpl                                              ; $61b9: $2f
	push af                                          ; $61ba: $f5
	ld [hl], c                                       ; $61bb: $71
	add sp, -$2b                                     ; $61bc: $e8 $d5
	xor h                                            ; $61be: $ac
	adc b                                            ; $61bf: $88
	ld l, b                                          ; $61c0: $68
	ld b, d                                          ; $61c1: $42
	ldh a, [$3e]                                     ; $61c2: $f0 $3e
	ldh a, [$74]                                     ; $61c4: $f0 $74
	ld h, d                                          ; $61c6: $62
	inc de                                           ; $61c7: $13
	ldh a, [$ce]                                     ; $61c8: $f0 $ce
	ldh a, [c]                                       ; $61ca: $f2
	ld e, b                                          ; $61cb: $58
	jr c, jr_08a_620b                                ; $61cc: $38 $3d

	ld a, $52                                        ; $61ce: $3e $52
	ld d, c                                          ; $61d0: $51
	and b                                            ; $61d1: $a0
	cpl                                              ; $61d2: $2f
	ld [hl-], a                                      ; $61d3: $32
	pop af                                           ; $61d4: $f1
	ld d, c                                          ; $61d5: $51
	ldh a, [c]                                       ; $61d6: $f2
	ld c, b                                          ; $61d7: $48
	ldh a, [c]                                       ; $61d8: $f2
	ld l, l                                          ; $61d9: $6d
	db $ec                                           ; $61da: $ec
	dec d                                            ; $61db: $15
	ld c, e                                          ; $61dc: $4b
	inc de                                           ; $61dd: $13
	ldh a, [$f6]                                     ; $61de: $f0 $f6
	pop af                                           ; $61e0: $f1
	inc [hl]                                         ; $61e1: $34
	ld b, a                                          ; $61e2: $47
	db $f4                                           ; $61e3: $f4
	sub c                                            ; $61e4: $91
	ld c, l                                          ; $61e5: $4d
	ld c, [hl]                                       ; $61e6: $4e
	db $ec                                           ; $61e7: $ec
	dec d                                            ; $61e8: $15
	ld b, h                                          ; $61e9: $44
	and e                                            ; $61ea: $a3
	cpl                                              ; $61eb: $2f
	ld [hl-], a                                      ; $61ec: $32
	pop af                                           ; $61ed: $f1
	ld d, c                                          ; $61ee: $51
	ldh a, [c]                                       ; $61ef: $f2
	ld c, b                                          ; $61f0: $48
	ldh a, [c]                                       ; $61f1: $f2
	ld l, l                                          ; $61f2: $6d
	db $ec                                           ; $61f3: $ec
	dec d                                            ; $61f4: $15
	xor h                                            ; $61f5: $ac
	db $ed                                           ; $61f6: $ed
	ld h, c                                          ; $61f7: $61
	pop af                                           ; $61f8: $f1
	ld h, [hl]                                       ; $61f9: $66
	jr c, jr_08a_623b                                ; $61fa: $38 $3f

	ld c, a                                          ; $61fc: $4f
	ld d, c                                          ; $61fd: $51
	ld a, e                                          ; $61fe: $7b
	ld d, b                                          ; $61ff: $50
	ld a, $38                                        ; $6200: $3e $38
	ld c, b                                          ; $6202: $48
	inc sp                                           ; $6203: $33
	add hl, bc                                       ; $6204: $09
	cpl                                              ; $6205: $2f
	ld [hl-], a                                      ; $6206: $32
	pop af                                           ; $6207: $f1
	ld d, c                                          ; $6208: $51
	ldh a, [c]                                       ; $6209: $f2
	ld c, b                                          ; $620a: $48

jr_08a_620b:
	ldh a, [c]                                       ; $620b: $f2
	ld l, l                                          ; $620c: $6d
	db $ec                                           ; $620d: $ec
	dec d                                            ; $620e: $15
	xor h                                            ; $620f: $ac
	pop af                                           ; $6210: $f1
	cp l                                             ; $6211: $bd
	ldh a, [rAUD1HIGH]                               ; $6212: $f0 $14
	ld a, b                                          ; $6214: $78
	ccf                                              ; $6215: $3f
	jr c, @+$50                                      ; $6216: $38 $4e

	ld l, h                                          ; $6218: $6c
	dec a                                            ; $6219: $3d
	jr c, @+$46                                      ; $621a: $38 $44

	ld a, [hl-]                                      ; $621c: $3a
	and e                                            ; $621d: $a3
	cpl                                              ; $621e: $2f
	ld [hl-], a                                      ; $621f: $32
	ldh a, [$7e]                                     ; $6220: $f0 $7e
	ldh a, [$7c]                                     ; $6222: $f0 $7c
	ldh a, [rIF]                                     ; $6224: $f0 $0f
	pop af                                           ; $6226: $f1
	ld [bc], a                                       ; $6227: $02
	ld e, c                                          ; $6228: $59
	pop af                                           ; $6229: $f1
	ld b, l                                          ; $622a: $45
	ldh a, [c]                                       ; $622b: $f2
	add [hl]                                         ; $622c: $86
	ldh a, [c]                                       ; $622d: $f2
	xor $f2                                          ; $622e: $ee $f2
	cp [hl]                                          ; $6230: $be
	ld c, e                                          ; $6231: $4b
	inc de                                           ; $6232: $13
	db $ec                                           ; $6233: $ec
	cp e                                             ; $6234: $bb
	ld b, d                                          ; $6235: $42
	ldh a, [$cc]                                     ; $6236: $f0 $cc
	pop af                                           ; $6238: $f1
	ld h, d                                          ; $6239: $62
	ldh a, [c]                                       ; $623a: $f2

jr_08a_623b:
	add c                                            ; $623b: $81
	ld b, d                                          ; $623c: $42
	inc de                                           ; $623d: $13
	ldh a, [rHDMA4]                                  ; $623e: $f0 $54
	ldh a, [rAUD1HIGH]                               ; $6240: $f0 $14
	ldh a, [$50]                                     ; $6242: $f0 $50
	ldh a, [$03]                                     ; $6244: $f0 $03
	ld e, c                                          ; $6246: $59
	add c                                            ; $6247: $81
	ld b, h                                          ; $6248: $44
	and e                                            ; $6249: $a3
	cpl                                              ; $624a: $2f
	ld [hl-], a                                      ; $624b: $32
	pop af                                           ; $624c: $f1
	sub a                                            ; $624d: $97
	pop af                                           ; $624e: $f1
	ld [bc], a                                       ; $624f: $02
	sbc b                                            ; $6250: $98
	ldh a, [rP1]                                     ; $6251: $f0 $00
	ld h, l                                          ; $6253: $65
	ld c, e                                          ; $6254: $4b
	inc de                                           ; $6255: $13
	inc a                                            ; $6256: $3c
	ld a, [hl-]                                      ; $6257: $3a
	ld d, a                                          ; $6258: $57
	db $ed                                           ; $6259: $ed
	ld a, b                                          ; $625a: $78
	ldh a, [rAUD3LEVEL]                              ; $625b: $f0 $1c
	ld b, d                                          ; $625d: $42
	inc de                                           ; $625e: $13
	ldh a, [$de]                                     ; $625f: $f0 $de
	ldh a, [$7e]                                     ; $6261: $f0 $7e
	ldh a, [$a1]                                     ; $6263: $f0 $a1
	ldh a, [$3d]                                     ; $6265: $f0 $3d
	ldh a, [$03]                                     ; $6267: $f0 $03
	ldh a, [c]                                       ; $6269: $f2
	ld e, $f0                                        ; $626a: $1e $f0
	ld d, b                                          ; $626c: $50
	ldh a, [$03]                                     ; $626d: $f0 $03
	ld e, c                                          ; $626f: $59
	add c                                            ; $6270: $81
	ld b, h                                          ; $6271: $44
	and e                                            ; $6272: $a3
	cpl                                              ; $6273: $2f
	ld [hl-], a                                      ; $6274: $32
	ldh a, [c]                                       ; $6275: $f2
	and b                                            ; $6276: $a0
	db $f4                                           ; $6277: $f4
	ld c, b                                          ; $6278: $48
	ldh a, [c]                                       ; $6279: $f2
	ld c, d                                          ; $627a: $4a
	di                                               ; $627b: $f3
	cpl                                              ; $627c: $2f
	ldh a, [c]                                       ; $627d: $f2
	ld c, b                                          ; $627e: $48
	pop af                                           ; $627f: $f1
	ld e, d                                          ; $6280: $5a
	ld c, e                                          ; $6281: $4b
	inc de                                           ; $6282: $13
	adc d                                            ; $6283: $8a
	ld a, $38                                        ; $6284: $3e $38
	ldh a, [$ab]                                     ; $6286: $f0 $ab
	pop af                                           ; $6288: $f1
	ld a, [bc]                                       ; $6289: $0a
	ldh a, [$6e]                                     ; $628a: $f0 $6e
	ld e, c                                          ; $628c: $59
	ldh a, [$35]                                     ; $628d: $f0 $35
	ldh a, [rP1]                                     ; $628f: $f0 $00
	add e                                            ; $6291: $83
	ld l, c                                          ; $6292: $69
	ld d, e                                          ; $6293: $53
	jr c, jr_08a_62e4                                ; $6294: $38 $4e

	inc de                                           ; $6296: $13
	ldh a, [$de]                                     ; $6297: $f0 $de
	ldh a, [$7e]                                     ; $6299: $f0 $7e
	ldh a, [$a1]                                     ; $629b: $f0 $a1
	ldh a, [$3d]                                     ; $629d: $f0 $3d
	ldh a, [$03]                                     ; $629f: $f0 $03
	ldh a, [c]                                       ; $62a1: $f2
	ld e, $f0                                        ; $62a2: $1e $f0
	ld d, b                                          ; $62a4: $50
	ldh a, [$03]                                     ; $62a5: $f0 $03
	ld e, c                                          ; $62a7: $59
	add c                                            ; $62a8: $81
	ld b, h                                          ; $62a9: $44
	and e                                            ; $62aa: $a3
	cpl                                              ; $62ab: $2f
	ld [hl-], a                                      ; $62ac: $32
	ldh a, [$1f]                                     ; $62ad: $f0 $1f
	ldh a, [$c2]                                     ; $62af: $f0 $c2
	ld [hl], e                                       ; $62b1: $73
	ld l, c                                          ; $62b2: $69
	ldh a, [$de]                                     ; $62b3: $f0 $de
	add e                                            ; $62b5: $83
	ldh a, [$c2]                                     ; $62b6: $f0 $c2
	ld [hl], e                                       ; $62b8: $73
	ldh a, [$f2]                                     ; $62b9: $f0 $f2
	ld c, e                                          ; $62bb: $4b
	inc de                                           ; $62bc: $13
	pop af                                           ; $62bd: $f1
	xor e                                            ; $62be: $ab
	dec sp                                           ; $62bf: $3b
	ccf                                              ; $62c0: $3f
	di                                               ; $62c1: $f3
	add b                                            ; $62c2: $80
	ld c, l                                          ; $62c3: $4d
	ld c, [hl]                                       ; $62c4: $4e
	inc de                                           ; $62c5: $13
	ldh a, [rAUD1LEN]                                ; $62c6: $f0 $11
	ldh a, [$9d]                                     ; $62c8: $f0 $9d
	ldh a, [rWY]                                     ; $62ca: $f0 $4a
	ldh a, [$c4]                                     ; $62cc: $f0 $c4
	ldh a, [$3d]                                     ; $62ce: $f0 $3d
	ld h, l                                          ; $62d0: $65
	ldh a, [rSTAT]                                   ; $62d1: $f0 $41
	ld b, h                                          ; $62d3: $44
	and e                                            ; $62d4: $a3
	cpl                                              ; $62d5: $2f
	ld [hl-], a                                      ; $62d6: $32
	add e                                            ; $62d7: $83
	ldh a, [$fd]                                     ; $62d8: $f0 $fd
	ldh a, [rP1]                                     ; $62da: $f0 $00
	ld [hl], e                                       ; $62dc: $73
	ldh a, [$f2]                                     ; $62dd: $f0 $f2
	ld c, e                                          ; $62df: $4b
	db $ed                                           ; $62e0: $ed
	ld l, c                                          ; $62e1: $69
	ld b, d                                          ; $62e2: $42
	inc de                                           ; $62e3: $13

jr_08a_62e4:
	db $ed                                           ; $62e4: $ed
	dec de                                           ; $62e5: $1b
	ldh a, [$50]                                     ; $62e6: $f0 $50
	ldh a, [$03]                                     ; $62e8: $f0 $03
	ld e, c                                          ; $62ea: $59
	add c                                            ; $62eb: $81
	ld b, h                                          ; $62ec: $44
	and e                                            ; $62ed: $a3
	cpl                                              ; $62ee: $2f
	ld [hl-], a                                      ; $62ef: $32
	ldh a, [c]                                       ; $62f0: $f2
	ld c, d                                          ; $62f1: $4a
	di                                               ; $62f2: $f3
	sbc l                                            ; $62f3: $9d
	ldh a, [c]                                       ; $62f4: $f2
	jp $ed4b                                         ; $62f5: $c3 $4b $ed


	ld l, c                                          ; $62f8: $69
	inc de                                           ; $62f9: $13
	pop af                                           ; $62fa: $f1
	ld d, $f0                                        ; $62fb: $16 $f0
	ld a, $f2                                        ; $62fd: $3e $f2
	sbc d                                            ; $62ff: $9a
	ldh a, [rAUD2HIGH]                               ; $6300: $f0 $19
	ld b, d                                          ; $6302: $42
	ldh a, [$50]                                     ; $6303: $f0 $50
	ldh a, [$03]                                     ; $6305: $f0 $03
	ld e, c                                          ; $6307: $59
	add c                                            ; $6308: $81
	ld b, h                                          ; $6309: $44
	and e                                            ; $630a: $a3
	cpl                                              ; $630b: $2f
	ld [hl-], a                                      ; $630c: $32
	ldh a, [c]                                       ; $630d: $f2
	and b                                            ; $630e: $a0
	ldh a, [c]                                       ; $630f: $f2
	add hl, sp                                       ; $6310: $39
	ldh a, [c]                                       ; $6311: $f2
	ld c, d                                          ; $6312: $4a
	ldh a, [c]                                       ; $6313: $f2
	ld c, d                                          ; $6314: $4a
	ldh a, [c]                                       ; $6315: $f2
	ld d, l                                          ; $6316: $55
	ld c, e                                          ; $6317: $4b
	pop af                                           ; $6318: $f1
	ld l, c                                          ; $6319: $69
	db $f4                                           ; $631a: $f4
	dec [hl]                                         ; $631b: $35
	inc de                                           ; $631c: $13
	ldh a, [rAUD1HIGH]                               ; $631d: $f0 $14
	push af                                          ; $631f: $f5
	ld [hl], b                                       ; $6320: $70
	pop af                                           ; $6321: $f1
	inc l                                            ; $6322: $2c
	ldh a, [c]                                       ; $6323: $f2
	adc h                                            ; $6324: $8c
	db $f4                                           ; $6325: $f4
	sub b                                            ; $6326: $90
	ld b, d                                          ; $6327: $42
	inc de                                           ; $6328: $13
	adc d                                            ; $6329: $8a
	ldh a, [rHDMA4]                                  ; $632a: $f0 $54
	ldh a, [rAUD2ENV]                                ; $632c: $f0 $17
	ldh a, [$50]                                     ; $632e: $f0 $50
	ldh a, [$03]                                     ; $6330: $f0 $03
	ld e, c                                          ; $6332: $59
	add c                                            ; $6333: $81
	ld b, h                                          ; $6334: $44
	and e                                            ; $6335: $a3
	cpl                                              ; $6336: $2f
	ld [hl-], a                                      ; $6337: $32
	ldh a, [rBCPD]                                   ; $6338: $f0 $69
	ldh a, [$03]                                     ; $633a: $f0 $03
	ldh a, [rBCPD]                                   ; $633c: $f0 $69
	ldh a, [$03]                                     ; $633e: $f0 $03
	pop af                                           ; $6340: $f1
	ld b, l                                          ; $6341: $45
	ld c, e                                          ; $6342: $4b
	pop af                                           ; $6343: $f1
	inc hl                                           ; $6344: $23
	ldh a, [rP1]                                     ; $6345: $f0 $00
	ld b, d                                          ; $6347: $42
	jr c, jr_08a_6382                                ; $6348: $38 $38

	inc de                                           ; $634a: $13
	jp hl                                            ; $634b: $e9


	ld [hl], h                                       ; $634c: $74
	ld h, d                                          ; $634d: $62
	inc de                                           ; $634e: $13
	pop af                                           ; $634f: $f1
	ld h, [hl]                                       ; $6350: $66
	inc a                                            ; $6351: $3c
	ld a, c                                          ; $6352: $79
	ccf                                              ; $6353: $3f
	ld d, l                                          ; $6354: $55
	ld c, l                                          ; $6355: $4d
	ld c, [hl]                                       ; $6356: $4e
	and e                                            ; $6357: $a3
	cpl                                              ; $6358: $2f
	ld [hl-], a                                      ; $6359: $32
	di                                               ; $635a: $f3
	push hl                                          ; $635b: $e5
	di                                               ; $635c: $f3
	dec c                                            ; $635d: $0d
	pop af                                           ; $635e: $f1
	ld e, d                                          ; $635f: $5a
	di                                               ; $6360: $f3
	and $4b                                          ; $6361: $e6 $4b
	db $ed                                           ; $6363: $ed
	ld l, c                                          ; $6364: $69
	inc de                                           ; $6365: $13
	ldh a, [c]                                       ; $6366: $f2
	ld c, b                                          ; $6367: $48
	di                                               ; $6368: $f3
	ld h, h                                          ; $6369: $64
	ldh a, [c]                                       ; $636a: $f2
	cp [hl]                                          ; $636b: $be
	pop af                                           ; $636c: $f1
	inc l                                            ; $636d: $2c
	ld b, d                                          ; $636e: $42
	db $ed                                           ; $636f: $ed
	dec de                                           ; $6370: $1b
	ldh a, [$50]                                     ; $6371: $f0 $50
	ldh a, [$03]                                     ; $6373: $f0 $03
	ld e, c                                          ; $6375: $59
	add c                                            ; $6376: $81
	ld b, h                                          ; $6377: $44
	and e                                            ; $6378: $a3
	cpl                                              ; $6379: $2f
	ld hl, $8622                                     ; $637a: $21 $22 $86
	add [hl]                                         ; $637d: $86
	add [hl]                                         ; $637e: $86
	add [hl]                                         ; $637f: $86
	add [hl]                                         ; $6380: $86
	add [hl]                                         ; $6381: $86

jr_08a_6382:
	add [hl]                                         ; $6382: $86
	add [hl]                                         ; $6383: $86
	ldh a, [rAUD3HIGH]                               ; $6384: $f0 $1e
	ld [hl+], a                                      ; $6386: $22
	inc de                                           ; $6387: $13
	add [hl]                                         ; $6388: $86
	add [hl]                                         ; $6389: $86
	add [hl]                                         ; $638a: $86
	add [hl]                                         ; $638b: $86
	add [hl]                                         ; $638c: $86
	add [hl]                                         ; $638d: $86
	add [hl]                                         ; $638e: $86
	add [hl]                                         ; $638f: $86
	ldh a, [rAUD3HIGH]                               ; $6390: $f0 $1e
	ld [hl+], a                                      ; $6392: $22
	jr nz, jr_08a_639e                               ; $6393: $20 $09

	cpl                                              ; $6395: $2f
	ld [hl-], a                                      ; $6396: $32
	pop de                                           ; $6397: $d1
	adc b                                            ; $6398: $88
	pop af                                           ; $6399: $f1
	inc h                                            ; $639a: $24
	pop af                                           ; $639b: $f1
	inc bc                                           ; $639c: $03
	ld a, [hl-]                                      ; $639d: $3a

jr_08a_639e:
	inc de                                           ; $639e: $13
	ld [$4422], a                                    ; $639f: $ea $22 $44
	ld a, [hl-]                                      ; $63a2: $3a
	and e                                            ; $63a3: $a3
	ldh a, [$8d]                                     ; $63a4: $f0 $8d
	ldh a, [$9e]                                     ; $63a6: $f0 $9e
	ld e, e                                          ; $63a8: $5b
	ld d, [hl]                                       ; $63a9: $56
	dec sp                                           ; $63aa: $3b
	dec a                                            ; $63ab: $3d
	ld a, [hl-]                                      ; $63ac: $3a
	xor b                                            ; $63ad: $a8
	ldh a, [$08]                                     ; $63ae: $f0 $08
	ld c, l                                          ; $63b0: $4d
	inc [hl]                                         ; $63b1: $34
	ld [$5be3], a                                    ; $63b2: $ea $e3 $5b
	ld d, [hl]                                       ; $63b5: $56
	and b                                            ; $63b6: $a0
	cpl                                              ; $63b7: $2f
	ld [hl-], a                                      ; $63b8: $32
	ld e, d                                          ; $63b9: $5a
	add hl, sp                                       ; $63ba: $39
	ld l, [hl]                                       ; $63bb: $6e
	ld d, b                                          ; $63bc: $50
	inc [hl]                                         ; $63bd: $34
	adc e                                            ; $63be: $8b
	ldh a, [$72]                                     ; $63bf: $f0 $72
	ld b, d                                          ; $63c1: $42
	ldh a, [rAUDVOL]                                 ; $63c2: $f0 $24
	inc de                                           ; $63c4: $13
	ld c, d                                          ; $63c5: $4a
	ld c, e                                          ; $63c6: $4b
	inc [hl]                                         ; $63c7: $34
	halt                                             ; $63c8: $76
	ld d, e                                          ; $63c9: $53
	inc [hl]                                         ; $63ca: $34
	add sp, $04                                      ; $63cb: $e8 $04
	ld h, d                                          ; $63cd: $62
	inc de                                           ; $63ce: $13
	daa                                              ; $63cf: $27
	pop af                                           ; $63d0: $f1
	adc b                                            ; $63d1: $88
	add b                                            ; $63d2: $80
	ld e, l                                          ; $63d3: $5d
	dec a                                            ; $63d4: $3d
	dec h                                            ; $63d5: $25
	ld c, c                                          ; $63d6: $49
	jr c, jr_08a_6412                                ; $63d7: $38 $39

	pop af                                           ; $63d9: $f1
	adc e                                            ; $63da: $8b
	ld d, e                                          ; $63db: $53
	inc de                                           ; $63dc: $13
	ldh a, [hDisp0_BGP]                                     ; $63dd: $f0 $85
	ld c, l                                          ; $63df: $4d
	ccf                                              ; $63e0: $3f
	dec a                                            ; $63e1: $3d
	ld b, b                                          ; $63e2: $40
	add hl, sp                                       ; $63e3: $39
	ld b, h                                          ; $63e4: $44
	and e                                            ; $63e5: $a3
	cpl                                              ; $63e6: $2f
	ld [hl-], a                                      ; $63e7: $32
	ld d, h                                          ; $63e8: $54
	ld c, l                                          ; $63e9: $4d
	inc a                                            ; $63ea: $3c
	ld d, b                                          ; $63eb: $50
	ld c, e                                          ; $63ec: $4b
	xor h                                            ; $63ed: $ac
	ld c, a                                          ; $63ee: $4f
	dec sp                                           ; $63ef: $3b
	ld c, c                                          ; $63f0: $49
	adc e                                            ; $63f1: $8b
	ldh a, [$72]                                     ; $63f2: $f0 $72
	ld b, a                                          ; $63f4: $47
	db $ed                                           ; $63f5: $ed
	halt                                             ; $63f6: $76
	ld a, $3f                                        ; $63f7: $3e $3f
	inc de                                           ; $63f9: $13
	db $ed                                           ; $63fa: $ed
	ld e, l                                          ; $63fb: $5d
	ld b, d                                          ; $63fc: $42
	db $ed                                           ; $63fd: $ed
	adc e                                            ; $63fe: $8b
	ld h, d                                          ; $63ff: $62
	db $ec                                           ; $6400: $ec
	ld a, c                                          ; $6401: $79
	ld d, c                                          ; $6402: $51
	ld c, [hl]                                       ; $6403: $4e
	inc a                                            ; $6404: $3c
	dec [hl]                                         ; $6405: $35
	rla                                              ; $6406: $17
	ld b, b                                          ; $6407: $40
	ld b, d                                          ; $6408: $42
	ldh a, [rBGP]                                    ; $6409: $f0 $47
	inc [hl]                                         ; $640b: $34
	ldh a, [$5d]                                     ; $640c: $f0 $5d
	ld a, [hl-]                                      ; $640e: $3a
	ldh a, [rAUD3LOW]                                ; $640f: $f0 $1d
	ld e, c                                          ; $6411: $59

jr_08a_6412:
	sub e                                            ; $6412: $93
	ld d, e                                          ; $6413: $53
	inc [hl]                                         ; $6414: $34
	di                                               ; $6415: $f3
	sub h                                            ; $6416: $94
	di                                               ; $6417: $f3
	add c                                            ; $6418: $81
	inc de                                           ; $6419: $13
	ld a, $3f                                        ; $641a: $3e $3f
	jr c, jr_08a_645b                                ; $641c: $38 $3d

	ld d, b                                          ; $641e: $50
	inc [hl]                                         ; $641f: $34
	di                                               ; $6420: $f3
	sub $f2                                          ; $6421: $d6 $f2
	call z, $c0f0                                    ; $6423: $cc $f0 $c0
	ld b, h                                          ; $6426: $44
	ld a, [hl-]                                      ; $6427: $3a
	and e                                            ; $6428: $a3
	cpl                                              ; $6429: $2f
	ld [hl-], a                                      ; $642a: $32
	ld e, d                                          ; $642b: $5a
	add hl, sp                                       ; $642c: $39
	ld l, [hl]                                       ; $642d: $6e
	ld d, b                                          ; $642e: $50
	inc [hl]                                         ; $642f: $34
	adc e                                            ; $6430: $8b
	ldh a, [$72]                                     ; $6431: $f0 $72
	ld b, d                                          ; $6433: $42
	ldh a, [rAUDVOL]                                 ; $6434: $f0 $24
	inc de                                           ; $6436: $13
	ld c, d                                          ; $6437: $4a
	ld c, e                                          ; $6438: $4b
	inc [hl]                                         ; $6439: $34
	halt                                             ; $643a: $76
	ld d, e                                          ; $643b: $53
	inc [hl]                                         ; $643c: $34
	add sp, $04                                      ; $643d: $e8 $04
	ld h, d                                          ; $643f: $62
	inc de                                           ; $6440: $13
	daa                                              ; $6441: $27
	ld d, d                                          ; $6442: $52
	dec a                                            ; $6443: $3d
	pop af                                           ; $6444: $f1
	adc b                                            ; $6445: $88
	add b                                            ; $6446: $80
	ld e, l                                          ; $6447: $5d
	dec a                                            ; $6448: $3d
	dec h                                            ; $6449: $25
	ld c, c                                          ; $644a: $49
	jr c, jr_08a_6486                                ; $644b: $38 $39

	pop af                                           ; $644d: $f1
	adc e                                            ; $644e: $8b
	ld d, e                                          ; $644f: $53
	inc de                                           ; $6450: $13
	ldh a, [hDisp0_BGP]                                     ; $6451: $f0 $85
	ld c, l                                          ; $6453: $4d
	ccf                                              ; $6454: $3f
	dec a                                            ; $6455: $3d
	ld b, b                                          ; $6456: $40
	add hl, sp                                       ; $6457: $39
	ld b, h                                          ; $6458: $44
	and e                                            ; $6459: $a3
	cpl                                              ; $645a: $2f

jr_08a_645b:
	ld [hl-], a                                      ; $645b: $32
	ldh a, [$9b]                                     ; $645c: $f0 $9b
	ld [hl], b                                       ; $645e: $70
	ld e, a                                          ; $645f: $5f
	halt                                             ; $6460: $76
	ld b, d                                          ; $6461: $42
	ldh a, [c]                                       ; $6462: $f2
	sbc e                                            ; $6463: $9b
	di                                               ; $6464: $f3
	ld c, e                                          ; $6465: $4b
	ld c, e                                          ; $6466: $4b
	inc de                                           ; $6467: $13
	ldh a, [$a6]                                     ; $6468: $f0 $a6
	ldh a, [rDIV]                                    ; $646a: $f0 $04
	pop af                                           ; $646c: $f1
	add c                                            ; $646d: $81
	ld h, c                                          ; $646e: $61
	ld b, a                                          ; $646f: $47
	ld a, [hl-]                                      ; $6470: $3a
	dec sp                                           ; $6471: $3b
	ccf                                              ; $6472: $3f
	jr c, @+$50                                      ; $6473: $38 $4e

	ld d, b                                          ; $6475: $50
	ld a, $38                                        ; $6476: $3e $38
	xor b                                            ; $6478: $a8
	ld c, a                                          ; $6479: $4f
	dec sp                                           ; $647a: $3b
	ld c, c                                          ; $647b: $49
	adc e                                            ; $647c: $8b
	ldh a, [$72]                                     ; $647d: $f0 $72
	ld b, a                                          ; $647f: $47
	db $ed                                           ; $6480: $ed
	halt                                             ; $6481: $76
	ld a, $3f                                        ; $6482: $3e $3f
	inc [hl]                                         ; $6484: $34
	db $ed                                           ; $6485: $ed

jr_08a_6486:
	ld e, l                                          ; $6486: $5d
	ld b, d                                          ; $6487: $42
	inc de                                           ; $6488: $13
	db $ed                                           ; $6489: $ed
	adc e                                            ; $648a: $8b
	ld h, d                                          ; $648b: $62
	db $ec                                           ; $648c: $ec
	ld a, c                                          ; $648d: $79
	ld a, $3a                                        ; $648e: $3e $3a
	ld e, h                                          ; $6490: $5c
	ld d, [hl]                                       ; $6491: $56
	ld a, [hl-]                                      ; $6492: $3a
	ld e, c                                          ; $6493: $59
	and e                                            ; $6494: $a3
	db $ec                                           ; $6495: $ec
	call nc, $edac                                   ; $6496: $d4 $ac $ed
	ld d, d                                          ; $6499: $52
	ld c, d                                          ; $649a: $4a
	ld d, c                                          ; $649b: $51
	ld e, l                                          ; $649c: $5d
	ld e, d                                          ; $649d: $5a
	and b                                            ; $649e: $a0
	cpl                                              ; $649f: $2f
	ld b, e                                          ; $64a0: $43
	ld a, [hl-]                                      ; $64a1: $3a
	ld b, c                                          ; $64a2: $41
	ld b, h                                          ; $64a3: $44
	dec [hl]                                         ; $64a4: $35
	adc e                                            ; $64a5: $8b
	ldh a, [$72]                                     ; $64a6: $f0 $72
	inc a                                            ; $64a8: $3c
	ld c, b                                          ; $64a9: $48
	and b                                            ; $64aa: $a0
	ld e, b                                          ; $64ab: $58
	dec sp                                           ; $64ac: $3b
	ld e, h                                          ; $64ad: $5c
	xor h                                            ; $64ae: $ac
	pop af                                           ; $64af: $f1
	add hl, de                                       ; $64b0: $19
	ldh a, [c]                                       ; $64b1: $f2
	ld h, $47                                        ; $64b2: $26 $47
	di                                               ; $64b4: $f3
	ret c                                            ; $64b5: $d8

	ld b, c                                          ; $64b6: $41
	ld b, h                                          ; $64b7: $44
	ld b, c                                          ; $64b8: $41
	ld b, h                                          ; $64b9: $44
	ld e, l                                          ; $64ba: $5d
	ld e, d                                          ; $64bb: $5a
	ld c, b                                          ; $64bc: $48
	and b                                            ; $64bd: $a0
	add hl, bc                                       ; $64be: $09
	cpl                                              ; $64bf: $2f
	ld d, h                                          ; $64c0: $54
	add hl, sp                                       ; $64c1: $39
	ld a, $3f                                        ; $64c2: $3e $3f
	inc [hl]                                         ; $64c4: $34
	add hl, bc                                       ; $64c5: $09
	cpl                                              ; $64c6: $2f
	halt                                             ; $64c7: $76
	ld b, d                                          ; $64c8: $42
	ldh a, [rAUD1ENV]                                ; $64c9: $f0 $12
	sbc a                                            ; $64cb: $9f
	ldh a, [rTIMA]                                   ; $64cc: $f0 $05
	pop af                                           ; $64ce: $f1
	rrca                                             ; $64cf: $0f
	pop af                                           ; $64d0: $f1
	ld [hl], e                                       ; $64d1: $73
	ldh a, [rAUD1HIGH]                               ; $64d2: $f0 $14
	ldh a, [$2a]                                     ; $64d4: $f0 $2a
	ld c, e                                          ; $64d6: $4b
	add hl, bc                                       ; $64d7: $09
	cpl                                              ; $64d8: $2f
	db $f4                                           ; $64d9: $f4
	ld [de], a                                       ; $64da: $12
	ld h, d                                          ; $64db: $62
	ldh a, [c]                                       ; $64dc: $f2
	push de                                          ; $64dd: $d5
	ld e, e                                          ; $64de: $5b
	dec a                                            ; $64df: $3d
	dec [hl]                                         ; $64e0: $35
	add hl, bc                                       ; $64e1: $09
	cpl                                              ; $64e2: $2f
	add [hl]                                         ; $64e3: $86
	add hl, bc                                       ; $64e4: $09
	cpl                                              ; $64e5: $2f
	ld [hl], a                                       ; $64e6: $77
	ld e, [hl]                                       ; $64e7: $5e
	ld a, e                                          ; $64e8: $7b
	inc [hl]                                         ; $64e9: $34
	pop af                                           ; $64ea: $f1
	ld [$537f], a                                    ; $64eb: $ea $7f $53
	ld h, c                                          ; $64ee: $61
	ld c, d                                          ; $64ef: $4a
	inc [hl]                                         ; $64f0: $34
	add hl, bc                                       ; $64f1: $09
	cpl                                              ; $64f2: $2f
	sub e                                            ; $64f3: $93
	ldh a, [rSC]                                     ; $64f4: $f0 $02
	add e                                            ; $64f6: $83
	ld b, d                                          ; $64f7: $42
	ld l, h                                          ; $64f8: $6c
	ld b, c                                          ; $64f9: $41
	ld a, [hl-]                                      ; $64fa: $3a
	ld c, c                                          ; $64fb: $49
	ld c, a                                          ; $64fc: $4f
	add hl, bc                                       ; $64fd: $09
	cpl                                              ; $64fe: $2f
	ld b, [hl]                                       ; $64ff: $46
	ld d, d                                          ; $6500: $52
	ld d, a                                          ; $6501: $57
	ldh a, [rHDMA3]                                  ; $6502: $f0 $53
	ld e, [hl]                                       ; $6504: $5e
	ld a, [hl-]                                      ; $6505: $3a
	inc a                                            ; $6506: $3c
	dec sp                                           ; $6507: $3b
	dec a                                            ; $6508: $3d
	ld a, [hl-]                                      ; $6509: $3a
	ld [hl], h                                       ; $650a: $74
	dec [hl]                                         ; $650b: $35
	add hl, bc                                       ; $650c: $09
	cpl                                              ; $650d: $2f
	db $ed                                           ; $650e: $ed
	ld a, c                                          ; $650f: $79
	ld c, d                                          ; $6510: $4a
	ld e, h                                          ; $6511: $5c
	dec a                                            ; $6512: $3d
	ld b, d                                          ; $6513: $42
	ld d, e                                          ; $6514: $53
	inc [hl]                                         ; $6515: $34
	add hl, bc                                       ; $6516: $09
	cpl                                              ; $6517: $2f
	ldh a, [$d0]                                     ; $6518: $f0 $d0
	ld [hl], a                                       ; $651a: $77
	ldh a, [c]                                       ; $651b: $f2
	or b                                             ; $651c: $b0
	ld a, [hl-]                                      ; $651d: $3a
	ld d, l                                          ; $651e: $55
	ld d, b                                          ; $651f: $50
	jr c, @+$46                                      ; $6520: $38 $44

	dec [hl]                                         ; $6522: $35
	add hl, bc                                       ; $6523: $09
	cpl                                              ; $6524: $2f
	ld [hl], a                                       ; $6525: $77
	ld e, [hl]                                       ; $6526: $5e
	ld a, e                                          ; $6527: $7b
	inc [hl]                                         ; $6528: $34
	ldh a, [c]                                       ; $6529: $f2
	ld l, c                                          ; $652a: $69
	ccf                                              ; $652b: $3f
	ld a, e                                          ; $652c: $7b
	inc a                                            ; $652d: $3c
	ld d, a                                          ; $652e: $57
	jr c, jr_08a_656e                                ; $652f: $38 $3d

	ld b, l                                          ; $6531: $45
	add hl, sp                                       ; $6532: $39
	ld a, [hl-]                                      ; $6533: $3a
	add hl, bc                                       ; $6534: $09
	cpl                                              ; $6535: $2f
	db $eb                                           ; $6536: $eb
	ld b, a                                          ; $6537: $47
	dec [hl]                                         ; $6538: $35
	add hl, bc                                       ; $6539: $09
	cpl                                              ; $653a: $2f
	ld [hl], a                                       ; $653b: $77
	ld e, [hl]                                       ; $653c: $5e
	ld a, e                                          ; $653d: $7b
	inc [hl]                                         ; $653e: $34
	add hl, bc                                       ; $653f: $09
	cpl                                              ; $6540: $2f
	adc b                                            ; $6541: $88
	ld a, e                                          ; $6542: $7b
	inc a                                            ; $6543: $3c
	ld d, a                                          ; $6544: $57
	ldh a, [$fa]                                     ; $6545: $f0 $fa
	ld b, c                                          ; $6547: $41
	ld c, d                                          ; $6548: $4a
	jr c, jr_08a_6588                                ; $6549: $38 $3d

	ld b, l                                          ; $654b: $45
	add hl, sp                                       ; $654c: $39
	ld a, [hl-]                                      ; $654d: $3a
	add hl, bc                                       ; $654e: $09
	cpl                                              ; $654f: $2f
	xor $2a                                          ; $6550: $ee $2a
	ld a, e                                          ; $6552: $7b
	inc a                                            ; $6553: $3c
	ld d, a                                          ; $6554: $57
	ld a, $3f                                        ; $6555: $3e $3f
	jr c, jr_08a_6596                                ; $6557: $38 $3d

	ld b, l                                          ; $6559: $45
	add hl, sp                                       ; $655a: $39
	ld a, [hl-]                                      ; $655b: $3a
	add hl, bc                                       ; $655c: $09
	cpl                                              ; $655d: $2f
	ldh a, [$3f]                                     ; $655e: $f0 $3f
	ld a, e                                          ; $6560: $7b
	inc a                                            ; $6561: $3c
	ld d, a                                          ; $6562: $57
	ldh a, [$bd]                                     ; $6563: $f0 $bd
	jr c, jr_08a_65a6                                ; $6565: $38 $3f

	jr c, jr_08a_65a6                                ; $6567: $38 $3d

	ld b, l                                          ; $6569: $45
	add hl, sp                                       ; $656a: $39
	ld a, [hl-]                                      ; $656b: $3a
	add hl, bc                                       ; $656c: $09
	cpl                                              ; $656d: $2f

jr_08a_656e:
	db $ed                                           ; $656e: $ed
	add [hl]                                         ; $656f: $86
	ld a, e                                          ; $6570: $7b
	inc a                                            ; $6571: $3c
	ld d, a                                          ; $6572: $57
	ld a, $3f                                        ; $6573: $3e $3f
	dec a                                            ; $6575: $3d
	ld b, l                                          ; $6576: $45
	add hl, sp                                       ; $6577: $39
	ld a, [hl-]                                      ; $6578: $3a
	add hl, bc                                       ; $6579: $09
	cpl                                              ; $657a: $2f
	ldh a, [$b2]                                     ; $657b: $f0 $b2
	ld b, c                                          ; $657d: $41
	ld c, d                                          ; $657e: $4a
	ld a, e                                          ; $657f: $7b
	inc a                                            ; $6580: $3c
	ld d, a                                          ; $6581: $57
	jr c, jr_08a_65c1                                ; $6582: $38 $3d

	ld b, l                                          ; $6584: $45
	add hl, sp                                       ; $6585: $39
	ld a, [hl-]                                      ; $6586: $3a
	add hl, bc                                       ; $6587: $09

jr_08a_6588:
	cpl                                              ; $6588: $2f
	ld [hl], a                                       ; $6589: $77
	ld e, [hl]                                       ; $658a: $5e
	ld a, e                                          ; $658b: $7b
	inc [hl]                                         ; $658c: $34
	pop af                                           ; $658d: $f1
	ld de, $3e44                                     ; $658e: $11 $44 $3e
	ld a, [hl-]                                      ; $6591: $3a
	ld l, h                                          ; $6592: $6c
	ld a, e                                          ; $6593: $7b
	inc a                                            ; $6594: $3c
	ld d, a                                          ; $6595: $57

jr_08a_6596:
	inc [hl]                                         ; $6596: $34
	add hl, bc                                       ; $6597: $09
	cpl                                              ; $6598: $2f
	ld a, a                                          ; $6599: $7f
	ld b, a                                          ; $659a: $47
	ld a, $3f                                        ; $659b: $3e $3f
	dec a                                            ; $659d: $3d
	ld b, l                                          ; $659e: $45
	add hl, sp                                       ; $659f: $39
	ld a, [hl-]                                      ; $65a0: $3a
	add hl, bc                                       ; $65a1: $09
	cpl                                              ; $65a2: $2f
	ld [hl], a                                       ; $65a3: $77
	ld e, [hl]                                       ; $65a4: $5e
	ld a, e                                          ; $65a5: $7b

jr_08a_65a6:
	inc [hl]                                         ; $65a6: $34
	db $ed                                           ; $65a7: $ed
	ld [$7b47], sp                                   ; $65a8: $08 $47 $7b
	inc a                                            ; $65ab: $3c
	ld d, a                                          ; $65ac: $57
	add hl, bc                                       ; $65ad: $09
	cpl                                              ; $65ae: $2f
	sub h                                            ; $65af: $94
	ccf                                              ; $65b0: $3f
	jr c, jr_08a_65f0                                ; $65b1: $38 $3d

	ld b, l                                          ; $65b3: $45
	add hl, sp                                       ; $65b4: $39
	ld a, [hl-]                                      ; $65b5: $3a
	add hl, bc                                       ; $65b6: $09
	cpl                                              ; $65b7: $2f
	ld a, [hl-]                                      ; $65b8: $3a
	ld b, a                                          ; $65b9: $47
	ld c, e                                          ; $65ba: $4b
	ld c, c                                          ; $65bb: $49
	ld c, a                                          ; $65bc: $4f
	ld b, [hl]                                       ; $65bd: $46
	ld c, l                                          ; $65be: $4d
	inc [hl]                                         ; $65bf: $34
	add hl, bc                                       ; $65c0: $09

jr_08a_65c1:
	cpl                                              ; $65c1: $2f
	ldh a, [rAUD1LOW]                                ; $65c2: $f0 $13
	sbc d                                            ; $65c4: $9a
	db $ed                                           ; $65c5: $ed
	ld a, c                                          ; $65c6: $79
	ld c, d                                          ; $65c7: $4a
	ld e, h                                          ; $65c8: $5c
	ccf                                              ; $65c9: $3f
	add hl, bc                                       ; $65ca: $09
	cpl                                              ; $65cb: $2f
	sbc $ec                                          ; $65cc: $de $ec
	cp c                                             ; $65ce: $b9
	dec [hl]                                         ; $65cf: $35
	add hl, bc                                       ; $65d0: $09
	cpl                                              ; $65d1: $2f
	db $ec                                           ; $65d2: $ec
	sub a                                            ; $65d3: $97
	ld c, e                                          ; $65d4: $4b
	ldh a, [$8d]                                     ; $65d5: $f0 $8d
	ldh a, [$9e]                                     ; $65d7: $f0 $9e
	ld a, [hl-]                                      ; $65d9: $3a
	ld d, e                                          ; $65da: $53
	ld d, b                                          ; $65db: $50
	add hl, bc                                       ; $65dc: $09
	cpl                                              ; $65dd: $2f
	ldh a, [$d0]                                     ; $65de: $f0 $d0
	ldh a, [rTMA]                                    ; $65e0: $f0 $06
	pop af                                           ; $65e2: $f1
	inc h                                            ; $65e3: $24
	ld b, h                                          ; $65e4: $44
	dec sp                                           ; $65e5: $3b
	dec a                                            ; $65e6: $3d
	ld d, e                                          ; $65e7: $53
	inc [hl]                                         ; $65e8: $34
	add hl, bc                                       ; $65e9: $09
	cpl                                              ; $65ea: $2f
	ldh a, [hDisp0_SCX]                                     ; $65eb: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $65ed: $f0 $85
	add a                                            ; $65ef: $87

jr_08a_65f0:
	adc c                                            ; $65f0: $89
	ld c, e                                          ; $65f1: $4b
	ldh a, [$8d]                                     ; $65f2: $f0 $8d
	ldh a, [$9e]                                     ; $65f4: $f0 $9e
	ld a, [hl-]                                      ; $65f6: $3a
	ld d, e                                          ; $65f7: $53
	ld d, b                                          ; $65f8: $50
	add hl, bc                                       ; $65f9: $09
	cpl                                              ; $65fa: $2f
	db $ec                                           ; $65fb: $ec
	xor c                                            ; $65fc: $a9
	ld c, e                                          ; $65fd: $4b
	ldh a, [$8d]                                     ; $65fe: $f0 $8d
	ldh a, [$9e]                                     ; $6600: $f0 $9e
	ld a, [hl-]                                      ; $6602: $3a
	ld d, e                                          ; $6603: $53
	ld d, b                                          ; $6604: $50
	add hl, bc                                       ; $6605: $09
	cpl                                              ; $6606: $2f
	ld l, l                                          ; $6607: $6d
	ldh a, [hDisp0_BGP]                                     ; $6608: $f0 $85
	pop af                                           ; $660a: $f1
	ld a, l                                          ; $660b: $7d
	ldh a, [hDisp0_LCDC]                                     ; $660c: $f0 $82
	ld c, e                                          ; $660e: $4b
	ldh a, [$8d]                                     ; $660f: $f0 $8d
	ldh a, [$9e]                                     ; $6611: $f0 $9e
	ld a, [hl-]                                      ; $6613: $3a
	ld d, e                                          ; $6614: $53
	ld d, b                                          ; $6615: $50
	add hl, bc                                       ; $6616: $09
	cpl                                              ; $6617: $2f
	ldh a, [hDisp0_SCX]                                     ; $6618: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $661a: $f0 $85
	pop af                                           ; $661c: $f1
	ld a, l                                          ; $661d: $7d
	ldh a, [hDisp0_LCDC]                                     ; $661e: $f0 $82
	ld c, e                                          ; $6620: $4b
	ldh a, [$8d]                                     ; $6621: $f0 $8d
	ldh a, [$9e]                                     ; $6623: $f0 $9e
	ld a, [hl-]                                      ; $6625: $3a
	ld d, e                                          ; $6626: $53
	ld d, b                                          ; $6627: $50
	add hl, bc                                       ; $6628: $09
	cpl                                              ; $6629: $2f
	pop af                                           ; $662a: $f1
	ld [hl], e                                       ; $662b: $73
	ldh a, [hDisp0_BGP]                                     ; $662c: $f0 $85
	pop af                                           ; $662e: $f1
	ld a, l                                          ; $662f: $7d
	ldh a, [hDisp0_LCDC]                                     ; $6630: $f0 $82
	ld c, e                                          ; $6632: $4b
	ldh a, [$8d]                                     ; $6633: $f0 $8d
	ldh a, [$9e]                                     ; $6635: $f0 $9e
	ld a, [hl-]                                      ; $6637: $3a
	ld d, e                                          ; $6638: $53
	ld d, b                                          ; $6639: $50
	add hl, bc                                       ; $663a: $09
	cpl                                              ; $663b: $2f
	db $eb                                           ; $663c: $eb
	ld c, b                                          ; $663d: $48
	inc [hl]                                         ; $663e: $34
	add hl, bc                                       ; $663f: $09
	cpl                                              ; $6640: $2f
	pop af                                           ; $6641: $f1
	add hl, de                                       ; $6642: $19
	pop af                                           ; $6643: $f1
	dec c                                            ; $6644: $0d
	ldh a, [rSVBK]                                   ; $6645: $f0 $70
	ld c, c                                          ; $6647: $49
	ld a, $3f                                        ; $6648: $3e $3f
	inc [hl]                                         ; $664a: $34
	add hl, bc                                       ; $664b: $09
	cpl                                              ; $664c: $2f
	jp hl                                            ; $664d: $e9


	rla                                              ; $664e: $17
	dec [hl]                                         ; $664f: $35
	add hl, bc                                       ; $6650: $09
	cpl                                              ; $6651: $2f
	di                                               ; $6652: $f3
	ld h, $f2                                        ; $6653: $26 $f2
	xor a                                            ; $6655: $af
	ldh a, [rHDMA3]                                  ; $6656: $f0 $53
	pop af                                           ; $6658: $f1
	ld a, [hl+]                                      ; $6659: $2a
	ld b, d                                          ; $665a: $42
	db $ed                                           ; $665b: $ed
	add h                                            ; $665c: $84
	xor $17                                          ; $665d: $ee $17
	ldh a, [$28]                                     ; $665f: $f0 $28
	ld c, d                                          ; $6661: $4a
	inc [hl]                                         ; $6662: $34
	add hl, bc                                       ; $6663: $09
	cpl                                              ; $6664: $2f
	db $eb                                           ; $6665: $eb
	ld c, b                                          ; $6666: $48
	add hl, bc                                       ; $6667: $09
	cpl                                              ; $6668: $2f
	ldh a, [hDisp0_WX]                                     ; $6669: $f0 $89
	ldh a, [$c4]                                     ; $666b: $f0 $c4
	ld e, c                                          ; $666d: $59
	ld h, l                                          ; $666e: $65
	ld b, a                                          ; $666f: $47
	db $ed                                           ; $6670: $ed
	sub b                                            ; $6671: $90
	ld a, $3f                                        ; $6672: $3e $3f
	inc [hl]                                         ; $6674: $34
	add hl, bc                                       ; $6675: $09
	cpl                                              ; $6676: $2f
	ldh a, [$99]                                     ; $6677: $f0 $99
	sub b                                            ; $6679: $90
	ld b, d                                          ; $667a: $42
	ldh a, [$dd]                                     ; $667b: $f0 $dd
	ldh a, [$9c]                                     ; $667d: $f0 $9c
	ld h, d                                          ; $667f: $62
	ld a, $45                                        ; $6680: $3e $45
	add hl, sp                                       ; $6682: $39
	ld c, c                                          ; $6683: $49
	ld [hl], a                                       ; $6684: $77
	add hl, sp                                       ; $6685: $39
	dec [hl]                                         ; $6686: $35
	add hl, bc                                       ; $6687: $09
	cpl                                              ; $6688: $2f
	ldh a, [rIF]                                     ; $6689: $f0 $0f
	ldh a, [rP1]                                     ; $668b: $f0 $00
	ld b, a                                          ; $668d: $47
	db $ed                                           ; $668e: $ed
	sub b                                            ; $668f: $90
	ld a, $3f                                        ; $6690: $3e $3f
	inc [hl]                                         ; $6692: $34
	add hl, bc                                       ; $6693: $09
	cpl                                              ; $6694: $2f
	ldh a, [$3f]                                     ; $6695: $f0 $3f
	ld b, d                                          ; $6697: $42
	ldh a, [$dd]                                     ; $6698: $f0 $dd
	ldh a, [$9c]                                     ; $669a: $f0 $9c
	ld h, d                                          ; $669c: $62
	ld a, $45                                        ; $669d: $3e $45
	add hl, sp                                       ; $669f: $39

jr_08a_66a0:
	ld c, c                                          ; $66a0: $49
	ld [hl], a                                       ; $66a1: $77
	add hl, sp                                       ; $66a2: $39
	dec [hl]                                         ; $66a3: $35
	add hl, bc                                       ; $66a4: $09
	cpl                                              ; $66a5: $2f
	add c                                            ; $66a6: $81
	ldh a, [$1f]                                     ; $66a7: $f0 $1f
	ldh a, [rAUD2LOW]                                ; $66a9: $f0 $18
	ldh a, [$dc]                                     ; $66ab: $f0 $dc
	pop af                                           ; $66ad: $f1
	jr c, jr_08a_66a0                                ; $66ae: $38 $f0

	dec bc                                           ; $66b0: $0b
	ld c, c                                          ; $66b1: $49
	ld a, $3f                                        ; $66b2: $3e $3f
	inc [hl]                                         ; $66b4: $34
	add hl, bc                                       ; $66b5: $09
	cpl                                              ; $66b6: $2f

jr_08a_66b7:
	db $eb                                           ; $66b7: $eb
	ld c, c                                          ; $66b8: $49
	add hl, bc                                       ; $66b9: $09
	cpl                                              ; $66ba: $2f
	add c                                            ; $66bb: $81
	ldh a, [$1f]                                     ; $66bc: $f0 $1f
	ldh a, [rAUD4POLY]                               ; $66be: $f0 $22
	ld [hl], e                                       ; $66c0: $73
	ldh a, [$35]                                     ; $66c1: $f0 $35
	ld e, c                                          ; $66c3: $59
	pop af                                           ; $66c4: $f1
	jr c, jr_08a_66b7                                ; $66c5: $38 $f0

	dec bc                                           ; $66c7: $0b
	ld c, c                                          ; $66c8: $49

jr_08a_66c9:
	ld a, $3f                                        ; $66c9: $3e $3f
	inc [hl]                                         ; $66cb: $34
	add hl, bc                                       ; $66cc: $09
	cpl                                              ; $66cd: $2f
	add c                                            ; $66ce: $81
	ldh a, [$1f]                                     ; $66cf: $f0 $1f
	ldh a, [$60]                                     ; $66d1: $f0 $60
	pop af                                           ; $66d3: $f1
	ld [bc], a                                       ; $66d4: $02
	add e                                            ; $66d5: $83
	pop af                                           ; $66d6: $f1
	jr c, jr_08a_66c9                                ; $66d7: $38 $f0

	dec bc                                           ; $66d9: $0b
	ld c, c                                          ; $66da: $49
	ld a, $3f                                        ; $66db: $3e $3f
	add hl, bc                                       ; $66dd: $09
	cpl                                              ; $66de: $2f
	ld [$34a6], a                                    ; $66df: $ea $a6 $34
	add hl, bc                                       ; $66e2: $09
	cpl                                              ; $66e3: $2f
	halt                                             ; $66e4: $76
	ld c, e                                          ; $66e5: $4b
	inc [hl]                                         ; $66e6: $34
	ldh a, [rAUD4LEN]                                ; $66e7: $f0 $20
	add e                                            ; $66e9: $83
	ldh a, [$c2]                                     ; $66ea: $f0 $c2
	ld b, d                                          ; $66ec: $42
	adc b                                            ; $66ed: $88
	ldh a, [$30]                                     ; $66ee: $f0 $30
	add hl, bc                                       ; $66f0: $09
	cpl                                              ; $66f1: $2f
	db $ec                                           ; $66f2: $ec
	ld d, l                                          ; $66f3: $55
	ld c, d                                          ; $66f4: $4a
	inc [hl]                                         ; $66f5: $34
	pop af                                           ; $66f6: $f1
	ld [$73f0], sp                                   ; $66f7: $08 $f0 $73
	ld h, d                                          ; $66fa: $62
	add hl, bc                                       ; $66fb: $09
	cpl                                              ; $66fc: $2f
	pop af                                           ; $66fd: $f1
	ld de, $8047                                     ; $66fe: $11 $47 $80
	ld e, l                                          ; $6701: $5d
	ld b, l                                          ; $6702: $45
	add hl, sp                                       ; $6703: $39
	ld c, c                                          ; $6704: $49
	ld [hl], a                                       ; $6705: $77
	add hl, sp                                       ; $6706: $39
	dec [hl]                                         ; $6707: $35
	add hl, bc                                       ; $6708: $09
	cpl                                              ; $6709: $2f
	db $ec                                           ; $670a: $ec
	sub a                                            ; $670b: $97
	ld b, a                                          ; $670c: $47
	ldh a, [rTMA]                                    ; $670d: $f0 $06
	pop af                                           ; $670f: $f1
	inc h                                            ; $6710: $24
	ld c, a                                          ; $6711: $4f
	ld c, d                                          ; $6712: $4a
	ld e, h                                          ; $6713: $5c
	dec a                                            ; $6714: $3d
	ld a, $34                                        ; $6715: $3e $34
	add hl, bc                                       ; $6717: $09
	cpl                                              ; $6718: $2f
	jp hl                                            ; $6719: $e9


	jr jr_08a_6751                                   ; $671a: $18 $35

	add hl, bc                                       ; $671c: $09
	cpl                                              ; $671d: $2f
	ld c, c                                          ; $671e: $49
	ld d, a                                          ; $671f: $57
	ld b, [hl]                                       ; $6720: $46
	ld e, [hl]                                       ; $6721: $5e
	sbc h                                            ; $6722: $9c
	ldh a, [hDisp0_SCX]                                     ; $6723: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $6725: $f0 $85
	add a                                            ; $6727: $87
	adc c                                            ; $6728: $89
	ld b, a                                          ; $6729: $47
	add hl, bc                                       ; $672a: $09
	cpl                                              ; $672b: $2f
	ldh a, [rTMA]                                    ; $672c: $f0 $06
	pop af                                           ; $672e: $f1
	inc h                                            ; $672f: $24
	ld c, a                                          ; $6730: $4f
	ld c, d                                          ; $6731: $4a
	ld e, h                                          ; $6732: $5c
	dec a                                            ; $6733: $3d
	ld a, $34                                        ; $6734: $3e $34
	add hl, bc                                       ; $6736: $09
	cpl                                              ; $6737: $2f
	ld c, c                                          ; $6738: $49
	ld d, a                                          ; $6739: $57
	ld b, [hl]                                       ; $673a: $46
	ld e, [hl]                                       ; $673b: $5e
	sbc h                                            ; $673c: $9c
	db $ec                                           ; $673d: $ec
	xor c                                            ; $673e: $a9
	ld b, a                                          ; $673f: $47
	add hl, bc                                       ; $6740: $09
	cpl                                              ; $6741: $2f
	ldh a, [rTMA]                                    ; $6742: $f0 $06
	pop af                                           ; $6744: $f1
	inc h                                            ; $6745: $24
	ld c, e                                          ; $6746: $4b
	ld c, d                                          ; $6747: $4a
	ld e, h                                          ; $6748: $5c
	dec a                                            ; $6749: $3d
	dec [hl]                                         ; $674a: $35
	add hl, bc                                       ; $674b: $09
	cpl                                              ; $674c: $2f
	db $ec                                           ; $674d: $ec
	ld [bc], a                                       ; $674e: $02
	sub [hl]                                         ; $674f: $96
	pop af                                           ; $6750: $f1

jr_08a_6751:
	ld a, [hl+]                                      ; $6751: $2a
	add hl, bc                                       ; $6752: $09
	cpl                                              ; $6753: $2f
	ld d, c                                          ; $6754: $51
	ld c, [hl]                                       ; $6755: $4e
	ld d, h                                          ; $6756: $54
	ld c, c                                          ; $6757: $49
	ld c, a                                          ; $6758: $4f
	ldh a, [$ec]                                     ; $6759: $f0 $ec
	ld d, d                                          ; $675b: $52
	dec sp                                           ; $675c: $3b
	dec a                                            ; $675d: $3d
	ld a, $34                                        ; $675e: $3e $34
	add hl, bc                                       ; $6760: $09
	cpl                                              ; $6761: $2f
	ld c, c                                          ; $6762: $49
	ld d, a                                          ; $6763: $57
	ld b, [hl]                                       ; $6764: $46
	ld e, [hl]                                       ; $6765: $5e
	sbc h                                            ; $6766: $9c
	ldh a, [hDisp0_SCX]                                     ; $6767: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $6769: $f0 $85
	pop af                                           ; $676b: $f1
	ld a, l                                          ; $676c: $7d
	ldh a, [hDisp0_LCDC]                                     ; $676d: $f0 $82
	ld b, a                                          ; $676f: $47
	add hl, bc                                       ; $6770: $09
	cpl                                              ; $6771: $2f
	sub [hl]                                         ; $6772: $96
	pop af                                           ; $6773: $f1
	ld a, [hl+]                                      ; $6774: $2a
	ld c, a                                          ; $6775: $4f
	ldh a, [$ec]                                     ; $6776: $f0 $ec
	ld d, d                                          ; $6778: $52
	dec sp                                           ; $6779: $3b
	dec a                                            ; $677a: $3d
	ld a, $34                                        ; $677b: $3e $34
	add hl, bc                                       ; $677d: $09
	cpl                                              ; $677e: $2f
	ld c, c                                          ; $677f: $49
	ld d, a                                          ; $6780: $57
	ld b, [hl]                                       ; $6781: $46
	ld e, [hl]                                       ; $6782: $5e
	sbc h                                            ; $6783: $9c
	pop af                                           ; $6784: $f1
	ld [hl], e                                       ; $6785: $73
	ldh a, [hDisp0_BGP]                                     ; $6786: $f0 $85
	pop af                                           ; $6788: $f1
	ld a, l                                          ; $6789: $7d
	ldh a, [hDisp0_LCDC]                                     ; $678a: $f0 $82
	ld b, a                                          ; $678c: $47
	add hl, bc                                       ; $678d: $09
	cpl                                              ; $678e: $2f
	sub [hl]                                         ; $678f: $96
	pop af                                           ; $6790: $f1
	ld a, [hl+]                                      ; $6791: $2a
	ld c, a                                          ; $6792: $4f
	ldh a, [$ec]                                     ; $6793: $f0 $ec
	ld d, d                                          ; $6795: $52
	dec sp                                           ; $6796: $3b
	dec a                                            ; $6797: $3d
	dec [hl]                                         ; $6798: $35
	add hl, bc                                       ; $6799: $09
	cpl                                              ; $679a: $2f
	db $ed                                           ; $679b: $ed
	ld e, l                                          ; $679c: $5d
	ld b, d                                          ; $679d: $42
	pop af                                           ; $679e: $f1
	and e                                            ; $679f: $a3
	pop af                                           ; $67a0: $f1
	ld [hl], d                                       ; $67a1: $72
	ld h, d                                          ; $67a2: $62
	db $f4                                           ; $67a3: $f4
	adc a                                            ; $67a4: $8f
	ld a, e                                          ; $67a5: $7b
	ld d, c                                          ; $67a6: $51
	dec a                                            ; $67a7: $3d
	ld [hl], c                                       ; $67a8: $71
	ld b, a                                          ; $67a9: $47
	add hl, bc                                       ; $67aa: $09
	cpl                                              ; $67ab: $2f
	db $ec                                           ; $67ac: $ec
	and l                                            ; $67ad: $a5
	ld b, a                                          ; $67ae: $47
	pop af                                           ; $67af: $f1
	dec hl                                           ; $67b0: $2b
	ldh a, [$be]                                     ; $67b1: $f0 $be
	ld d, h                                          ; $67b3: $54
	ld c, c                                          ; $67b4: $49
	ld b, a                                          ; $67b5: $47
	ld a, $3d                                        ; $67b6: $3e $3d
	dec [hl]                                         ; $67b8: $35
	add hl, bc                                       ; $67b9: $09
	cpl                                              ; $67ba: $2f
	halt                                             ; $67bb: $76
	ld b, d                                          ; $67bc: $42
	ldh a, [c]                                       ; $67bd: $f2
	call nc, $07f0                                   ; $67be: $d4 $f0 $07
	ld a, [hl-]                                      ; $67c1: $3a
	ldh a, [$2d]                                     ; $67c2: $f0 $2d
	ldh a, [c]                                       ; $67c4: $f2
	xor [hl]                                         ; $67c5: $ae
	ld h, d                                          ; $67c6: $62
	di                                               ; $67c7: $f3
	call nz, $16f0                                   ; $67c8: $c4 $f0 $16
	ld a, $3f                                        ; $67cb: $3e $3f
	inc [hl]                                         ; $67cd: $34
	add hl, bc                                       ; $67ce: $09
	cpl                                              ; $67cf: $2f
	ldh a, [$2d]                                     ; $67d0: $f0 $2d
	ld d, a                                          ; $67d2: $57
	ldh a, [rHDMA3]                                  ; $67d3: $f0 $53
	jr c, jr_08a_6819                                ; $67d5: $38 $42

	add b                                            ; $67d7: $80
	ccf                                              ; $67d8: $3f
	ld c, d                                          ; $67d9: $4a
	add hl, bc                                       ; $67da: $09
	cpl                                              ; $67db: $2f
	ldh a, [rAUD3LOW]                                ; $67dc: $f0 $1d
	add e                                            ; $67de: $83
	ldh a, [rAUD1LEN]                                ; $67df: $f0 $11
	pop af                                           ; $67e1: $f1
	ld d, h                                          ; $67e2: $54
	db $ed                                           ; $67e3: $ed
	ld a, a                                          ; $67e4: $7f
	ld b, d                                          ; $67e5: $42
	add hl, bc                                       ; $67e6: $09
	cpl                                              ; $67e7: $2f
	ldh a, [c]                                       ; $67e8: $f2
	sbc c                                            ; $67e9: $99
	sbc d                                            ; $67ea: $9a
	ld b, a                                          ; $67eb: $47
	add b                                            ; $67ec: $80
	ld d, h                                          ; $67ed: $54
	add hl, sp                                       ; $67ee: $39
	ld c, c                                          ; $67ef: $49
	ld [hl], a                                       ; $67f0: $77
	add hl, sp                                       ; $67f1: $39
	dec [hl]                                         ; $67f2: $35
	add hl, bc                                       ; $67f3: $09
	cpl                                              ; $67f4: $2f
	di                                               ; $67f5: $f3
	ld [hl-], a                                      ; $67f6: $32
	ld c, d                                          ; $67f7: $4a
	add e                                            ; $67f8: $83
	ldh a, [$35]                                     ; $67f9: $f0 $35
	ldh a, [hDisp0_WX]                                     ; $67fb: $f0 $89
	ld l, c                                          ; $67fd: $69
	ld e, b                                          ; $67fe: $58
	ld c, l                                          ; $67ff: $4d
	ccf                                              ; $6800: $3f
	add hl, bc                                       ; $6801: $09
	cpl                                              ; $6802: $2f
	ldh a, [$b8]                                     ; $6803: $f0 $b8
	pop af                                           ; $6805: $f1
	ld [hl], d                                       ; $6806: $72
	pop af                                           ; $6807: $f1
	inc [hl]                                         ; $6808: $34
	ld b, d                                          ; $6809: $42
	ldh a, [$ee]                                     ; $680a: $f0 $ee
	ld b, a                                          ; $680c: $47
	add hl, bc                                       ; $680d: $09
	cpl                                              ; $680e: $2f
	pop af                                           ; $680f: $f1
	dec hl                                           ; $6810: $2b
	ldh a, [$be]                                     ; $6811: $f0 $be
	ld d, h                                          ; $6813: $54
	ld c, c                                          ; $6814: $49
	ld b, a                                          ; $6815: $47
	ld a, [hl-]                                      ; $6816: $3a
	dec sp                                           ; $6817: $3b
	dec a                                            ; $6818: $3d

jr_08a_6819:
	dec [hl]                                         ; $6819: $35
	add hl, bc                                       ; $681a: $09
	cpl                                              ; $681b: $2f
	halt                                             ; $681c: $76
	ld b, d                                          ; $681d: $42
	pop af                                           ; $681e: $f1
	sub e                                            ; $681f: $93
	pop af                                           ; $6820: $f1
	ld a, [bc]                                       ; $6821: $0a
	ld d, e                                          ; $6822: $53
	ldh a, [c]                                       ; $6823: $f2
	sbc a                                            ; $6824: $9f
	ld [hl], c                                       ; $6825: $71
	ld d, b                                          ; $6826: $50
	ld c, l                                          ; $6827: $4d
	dec a                                            ; $6828: $3d
	ld b, d                                          ; $6829: $42
	inc a                                            ; $682a: $3c
	add hl, bc                                       ; $682b: $09
	cpl                                              ; $682c: $2f
	di                                               ; $682d: $f3
	db $e4                                           ; $682e: $e4
	di                                               ; $682f: $f3
	ld e, [hl]                                       ; $6830: $5e
	ldh a, [c]                                       ; $6831: $f2
	ld l, b                                          ; $6832: $68
	ld b, a                                          ; $6833: $47
	db $f4                                           ; $6834: $f4
	ld de, $3bf0                                     ; $6835: $11 $f0 $3b
	ld e, b                                          ; $6838: $58
	ld c, l                                          ; $6839: $4d
	inc [hl]                                         ; $683a: $34
	add hl, bc                                       ; $683b: $09
	cpl                                              ; $683c: $2f
	ld h, a                                          ; $683d: $67
	ld d, l                                          ; $683e: $55
	ld d, h                                          ; $683f: $54
	ld c, c                                          ; $6840: $49
	ld b, a                                          ; $6841: $47
	ldh a, [$ec]                                     ; $6842: $f0 $ec
	ld [hl], c                                       ; $6844: $71
	dec a                                            ; $6845: $3d
	dec [hl]                                         ; $6846: $35
	add hl, bc                                       ; $6847: $09
	cpl                                              ; $6848: $2f
	ld l, d                                          ; $6849: $6a
	ld b, d                                          ; $684a: $42
	halt                                             ; $684b: $76
	ld b, a                                          ; $684c: $47
	ld c, e                                          ; $684d: $4b
	add hl, bc                                       ; $684e: $09
	cpl                                              ; $684f: $2f
	db $f4                                           ; $6850: $f4
	dec e                                            ; $6851: $1d
	di                                               ; $6852: $f3
	add [hl]                                         ; $6853: $86
	ld d, e                                          ; $6854: $53
	ldh a, [c]                                       ; $6855: $f2
	ld b, b                                          ; $6856: $40
	di                                               ; $6857: $f3
	sub $3a                                          ; $6858: $d6 $3a
	dec a                                            ; $685a: $3d
	ld [hl], c                                       ; $685b: $71
	inc [hl]                                         ; $685c: $34
	add hl, bc                                       ; $685d: $09
	cpl                                              ; $685e: $2f
	db $ec                                           ; $685f: $ec
	db $eb                                           ; $6860: $eb
	sub [hl]                                         ; $6861: $96
	ldh a, [hDisp1_SCX]                                     ; $6862: $f0 $91
	ld [$351d], a                                    ; $6864: $ea $1d $35
	add hl, bc                                       ; $6867: $09
	cpl                                              ; $6868: $2f
	ld c, c                                          ; $6869: $49
	ld d, a                                          ; $686a: $57
	ld b, [hl]                                       ; $686b: $46
	ld e, [hl]                                       ; $686c: $5e
	sbc h                                            ; $686d: $9c
	inc [hl]                                         ; $686e: $34
	add hl, bc                                       ; $686f: $09
	cpl                                              ; $6870: $2f
	ld b, [hl]                                       ; $6871: $46
	ld c, c                                          ; $6872: $49
	ld l, l                                          ; $6873: $6d
	ldh a, [rAUD1HIGH]                               ; $6874: $f0 $14
	sub d                                            ; $6876: $92
	adc [hl]                                         ; $6877: $8e
	dec sp                                           ; $6878: $3b
	ccf                                              ; $6879: $3f
	add hl, bc                                       ; $687a: $09
	cpl                                              ; $687b: $2f
	ld a, b                                          ; $687c: $78
	ldh a, [rAUD1HIGH]                               ; $687d: $f0 $14
	ld d, d                                          ; $687f: $52
	dec a                                            ; $6880: $3d
	inc [hl]                                         ; $6881: $34
	pop af                                           ; $6882: $f1
	ld c, d                                          ; $6883: $4a
	ldh a, [$ad]                                     ; $6884: $f0 $ad
	ld a, $45                                        ; $6886: $3e $45
	add hl, sp                                       ; $6888: $39
	ld c, c                                          ; $6889: $49
	ld [hl], a                                       ; $688a: $77
	add hl, sp                                       ; $688b: $39
	dec [hl]                                         ; $688c: $35
	add hl, bc                                       ; $688d: $09
	cpl                                              ; $688e: $2f
	ld c, c                                          ; $688f: $49
	ld d, a                                          ; $6890: $57
	ld b, [hl]                                       ; $6891: $46
	ld e, [hl]                                       ; $6892: $5e
	sbc h                                            ; $6893: $9c
	inc [hl]                                         ; $6894: $34
	ld l, [hl]                                       ; $6895: $6e
	ld c, [hl]                                       ; $6896: $4e
	ld d, h                                          ; $6897: $54
	ld c, c                                          ; $6898: $49
	ld d, e                                          ; $6899: $53
	ldh a, [$ec]                                     ; $689a: $f0 $ec
	ld d, d                                          ; $689c: $52
	ld c, [hl]                                       ; $689d: $4e
	ld d, d                                          ; $689e: $52
	ld c, d                                          ; $689f: $4a
	add hl, bc                                       ; $68a0: $09
	cpl                                              ; $68a1: $2f
	ldh a, [$8e]                                     ; $68a2: $f0 $8e
	ldh a, [rP1]                                     ; $68a4: $f0 $00
	ld e, c                                          ; $68a6: $59
	ldh a, [rDIV]                                    ; $68a7: $f0 $04
	ld e, c                                          ; $68a9: $59
	ld c, d                                          ; $68aa: $4a
	ld c, a                                          ; $68ab: $4f
	ld a, $3f                                        ; $68ac: $3e $3f
	jr c, jr_08a_6904                                ; $68ae: $38 $54

	add hl, sp                                       ; $68b0: $39
	ld c, c                                          ; $68b1: $49
	ld [hl], a                                       ; $68b2: $77
	add hl, sp                                       ; $68b3: $39
	dec [hl]                                         ; $68b4: $35
	add hl, bc                                       ; $68b5: $09
	cpl                                              ; $68b6: $2f
	db $ec                                           ; $68b7: $ec
	ld bc, $ed34                                     ; $68b8: $01 $34 $ed
	xor c                                            ; $68bb: $a9
	ld c, a                                          ; $68bc: $4f
	add hl, bc                                       ; $68bd: $09
	cpl                                              ; $68be: $2f
	ldh a, [$cd]                                     ; $68bf: $f0 $cd
	ld e, e                                          ; $68c1: $5b
	db $ec                                           ; $68c2: $ec
	sub a                                            ; $68c3: $97
	ld b, a                                          ; $68c4: $47
	add hl, bc                                       ; $68c5: $09
	cpl                                              ; $68c6: $2f
	ld [$351a], a                                    ; $68c7: $ea $1a $35
	add hl, bc                                       ; $68ca: $09
	cpl                                              ; $68cb: $2f
	ld e, b                                          ; $68cc: $58
	dec sp                                           ; $68cd: $3b
	ld b, b                                          ; $68ce: $40
	ld d, l                                          ; $68cf: $55
	xor $06                                          ; $68d0: $ee $06
	ld b, a                                          ; $68d2: $47
	add hl, bc                                       ; $68d3: $09
	cpl                                              ; $68d4: $2f
	add a                                            ; $68d5: $87
	adc c                                            ; $68d6: $89
	ldh a, [rTIMA]                                   ; $68d7: $f0 $05
	pop af                                           ; $68d9: $f1
	rrca                                             ; $68da: $0f
	ld b, a                                          ; $68db: $47
	add b                                            ; $68dc: $80
	jr c, jr_08a_691e                                ; $68dd: $38 $3f

	add hl, bc                                       ; $68df: $09
	cpl                                              ; $68e0: $2f
	db $ed                                           ; $68e1: $ed
	db $d3                                           ; $68e2: $d3
	ld a, $3f                                        ; $68e3: $3e $3f
	jr c, @+$50                                      ; $68e5: $38 $4e

	dec [hl]                                         ; $68e7: $35
	add hl, bc                                       ; $68e8: $09
	cpl                                              ; $68e9: $2f
	jp hl                                            ; $68ea: $e9


	sub d                                            ; $68eb: $92
	add hl, bc                                       ; $68ec: $09
	cpl                                              ; $68ed: $2f
	add sp, $48                                      ; $68ee: $e8 $48
	dec [hl]                                         ; $68f0: $35
	add hl, bc                                       ; $68f1: $09
	cpl                                              ; $68f2: $2f
	jp hl                                            ; $68f3: $e9


jr_08a_68f4:
	add hl, de                                       ; $68f4: $19
	add hl, bc                                       ; $68f5: $09
	cpl                                              ; $68f6: $2f
	db $ed                                           ; $68f7: $ed
	ld e, e                                          ; $68f8: $5b
	ld c, e                                          ; $68f9: $4b
	ldh a, [rHDMA3]                                  ; $68fa: $f0 $53
	ld e, [hl]                                       ; $68fc: $5e
	ld a, [hl-]                                      ; $68fd: $3a
	ld d, l                                          ; $68fe: $55
	ccf                                              ; $68ff: $3f
	inc [hl]                                         ; $6900: $34
	add hl, bc                                       ; $6901: $09
	cpl                                              ; $6902: $2f
	pop af                                           ; $6903: $f1

jr_08a_6904:
	xor b                                            ; $6904: $a8
	ld a, $38                                        ; $6905: $3e $38
	ld e, l                                          ; $6907: $5d
	ld e, d                                          ; $6908: $5a
	inc [hl]                                         ; $6909: $34
	add hl, bc                                       ; $690a: $09
	cpl                                              ; $690b: $2f
	ld e, h                                          ; $690c: $5c
	dec sp                                           ; $690d: $3b
	ld c, c                                          ; $690e: $49
	inc [hl]                                         ; $690f: $34
	sbc c                                            ; $6910: $99
	dec sp                                           ; $6911: $3b
	ccf                                              ; $6912: $3f
	jr c, jr_08a_6954                                ; $6913: $38 $3f

	ld d, l                                          ; $6915: $55
	ld c, l                                          ; $6916: $4d
	ld c, [hl]                                       ; $6917: $4e
	dec [hl]                                         ; $6918: $35
	add hl, bc                                       ; $6919: $09
	cpl                                              ; $691a: $2f
	adc c                                            ; $691b: $89
	sbc a                                            ; $691c: $9f
	ld c, e                                          ; $691d: $4b

jr_08a_691e:
	ldh a, [$f5]                                     ; $691e: $f0 $f5
	add hl, sp                                       ; $6920: $39
	ld e, l                                          ; $6921: $5d
	ld c, l                                          ; $6922: $4d
	ld e, d                                          ; $6923: $5a
	add hl, bc                                       ; $6924: $09
	cpl                                              ; $6925: $2f
	adc c                                            ; $6926: $89
	ldh a, [rTIMA]                                   ; $6927: $f0 $05
	ld e, d                                          ; $6929: $5a
	add hl, sp                                       ; $692a: $39
	ld a, $44                                        ; $692b: $3e $44
	inc [hl]                                         ; $692d: $34
	add hl, bc                                       ; $692e: $09
	cpl                                              ; $692f: $2f
	ldh a, [rHDMA3]                                  ; $6930: $f0 $53
	ld e, [hl]                                       ; $6932: $5e
	ld c, [hl]                                       ; $6933: $4e
	ldh a, [rBGP]                                    ; $6934: $f0 $47
	ldh a, [$2a]                                     ; $6936: $f0 $2a
	ld c, e                                          ; $6938: $4b
	pop af                                           ; $6939: $f1
	sub d                                            ; $693a: $92
	jr c, jr_08a_6986                                ; $693b: $38 $49

	ld [hl], a                                       ; $693d: $77
	add hl, sp                                       ; $693e: $39
	dec [hl]                                         ; $693f: $35
	add hl, bc                                       ; $6940: $09
	cpl                                              ; $6941: $2f
	db $ec                                           ; $6942: $ec
	sub a                                            ; $6943: $97
	ld b, a                                          ; $6944: $47
	add hl, bc                                       ; $6945: $09
	cpl                                              ; $6946: $2f
	ld a, b                                          ; $6947: $78
	ldh a, [rAUD1HIGH]                               ; $6948: $f0 $14
	ld c, e                                          ; $694a: $4b
	xor $06                                          ; $694b: $ee $06
	ld b, d                                          ; $694d: $42
	add a                                            ; $694e: $87
	adc c                                            ; $694f: $89
	ld b, a                                          ; $6950: $47
	add hl, bc                                       ; $6951: $09
	cpl                                              ; $6952: $2f
	ld h, a                                          ; $6953: $67

jr_08a_6954:
	ld e, l                                          ; $6954: $5d
	ld c, [hl]                                       ; $6955: $4e
	ld b, l                                          ; $6956: $45
	add hl, sp                                       ; $6957: $39
	ld b, a                                          ; $6958: $47
	inc [hl]                                         ; $6959: $34
	sub d                                            ; $695a: $92
	adc [hl]                                         ; $695b: $8e
	ld d, b                                          ; $695c: $50
	ld a, [hl-]                                      ; $695d: $3a
	ld e, h                                          ; $695e: $5c
	ld d, [hl]                                       ; $695f: $56
	ld c, b                                          ; $6960: $48
	dec [hl]                                         ; $6961: $35
	add hl, bc                                       ; $6962: $09
	cpl                                              ; $6963: $2f
	jp hl                                            ; $6964: $e9


	sbc h                                            ; $6965: $9c
	add hl, bc                                       ; $6966: $09
	cpl                                              ; $6967: $2f
	ld b, [hl]                                       ; $6968: $46
	ld c, [hl]                                       ; $6969: $4e
	inc a                                            ; $696a: $3c
	ld d, b                                          ; $696b: $50
	inc [hl]                                         ; $696c: $34
	db $ed                                           ; $696d: $ed
	ld e, e                                          ; $696e: $5b
	ld c, e                                          ; $696f: $4b
	add hl, bc                                       ; $6970: $09
	cpl                                              ; $6971: $2f
	jr c, jr_08a_68f4                                ; $6972: $38 $80

	ld c, d                                          ; $6974: $4a
	ld c, a                                          ; $6975: $4f
	ldh a, [rHDMA3]                                  ; $6976: $f0 $53
	ld e, [hl]                                       ; $6978: $5e
	ld c, [hl]                                       ; $6979: $4e
	ld e, l                                          ; $697a: $5d
	ld e, d                                          ; $697b: $5a
	inc [hl]                                         ; $697c: $34
	add hl, bc                                       ; $697d: $09
	cpl                                              ; $697e: $2f
	inc a                                            ; $697f: $3c
	ld a, [hl-]                                      ; $6980: $3a
	ld d, a                                          ; $6981: $57
	db $ed                                           ; $6982: $ed
	ld h, h                                          ; $6983: $64
	ld h, d                                          ; $6984: $62
	add hl, bc                                       ; $6985: $09

jr_08a_6986:
	cpl                                              ; $6986: $2f
	inc a                                            ; $6987: $3c
	ld e, l                                          ; $6988: $5d
	ccf                                              ; $6989: $3f
	jr c, jr_08a_69da                                ; $698a: $38 $4e

	ld l, h                                          ; $698c: $6c
	dec a                                            ; $698d: $3d
	jr c, @+$46                                      ; $698e: $38 $44

	dec [hl]                                         ; $6990: $35
	add hl, bc                                       ; $6991: $09
	cpl                                              ; $6992: $2f
	ld b, b                                          ; $6993: $40
	add hl, sp                                       ; $6994: $39
	ld b, b                                          ; $6995: $40
	add hl, sp                                       ; $6996: $39
	inc [hl]                                         ; $6997: $34
	db $ed                                           ; $6998: $ed
	xor c                                            ; $6999: $a9
	ld c, e                                          ; $699a: $4b
	add hl, bc                                       ; $699b: $09
	cpl                                              ; $699c: $2f
	halt                                             ; $699d: $76
	ld b, d                                          ; $699e: $42
	ldh a, [$65]                                     ; $699f: $f0 $65
	ld b, d                                          ; $69a1: $42
	ldh a, [c]                                       ; $69a2: $f2
	cp c                                             ; $69a3: $b9
	ldh a, [rTMA]                                    ; $69a4: $f0 $06
	ld h, d                                          ; $69a6: $62
	db $ed                                           ; $69a7: $ed
	ld h, h                                          ; $69a8: $64
	ld a, $3f                                        ; $69a9: $3e $3f
	inc [hl]                                         ; $69ab: $34
	add hl, bc                                       ; $69ac: $09
	cpl                                              ; $69ad: $2f
	pop af                                           ; $69ae: $f1
	cp l                                             ; $69af: $bd
	pop af                                           ; $69b0: $f1
	ld l, h                                          ; $69b1: $6c
	ld b, d                                          ; $69b2: $42
	ld b, l                                          ; $69b3: $45
	add hl, sp                                       ; $69b4: $39
	ld b, a                                          ; $69b5: $47
	db $ed                                           ; $69b6: $ed
	xor c                                            ; $69b7: $a9
	ld c, e                                          ; $69b8: $4b
	inc [hl]                                         ; $69b9: $34
	add hl, bc                                       ; $69ba: $09
	cpl                                              ; $69bb: $2f
	ld h, h                                          ; $69bc: $64
	ld [hl], d                                       ; $69bd: $72
	pop af                                           ; $69be: $f1
	add e                                            ; $69bf: $83
	jr c, jr_08a_6a09                                ; $69c0: $38 $47

	ld a, b                                          ; $69c2: $78
	ccf                                              ; $69c3: $3f
	ld d, l                                          ; $69c4: $55
	ld c, l                                          ; $69c5: $4d
	ld c, [hl]                                       ; $69c6: $4e
	dec [hl]                                         ; $69c7: $35
	add hl, bc                                       ; $69c8: $09
	cpl                                              ; $69c9: $2f
	sub b                                            ; $69ca: $90
	ld a, $38                                        ; $69cb: $3e $38
	ld c, e                                          ; $69cd: $4b
	sbc h                                            ; $69ce: $9c
	ld b, d                                          ; $69cf: $42
	add hl, bc                                       ; $69d0: $09
	cpl                                              ; $69d1: $2f
	adc c                                            ; $69d2: $89
	ldh a, [rTIMA]                                   ; $69d3: $f0 $05
	ldh a, [rTIMA]                                   ; $69d5: $f0 $05
	pop af                                           ; $69d7: $f1
	rrca                                             ; $69d8: $0f
	ld b, d                                          ; $69d9: $42

jr_08a_69da:
	ld l, l                                          ; $69da: $6d
	adc a                                            ; $69db: $8f
	ld h, d                                          ; $69dc: $62
	add hl, bc                                       ; $69dd: $09
	cpl                                              ; $69de: $2f
	di                                               ; $69df: $f3
	ld a, a                                          ; $69e0: $7f
	ld l, [hl]                                       ; $69e1: $6e
	ld a, $3f                                        ; $69e2: $3e $3f
	ld d, l                                          ; $69e4: $55
	ld c, l                                          ; $69e5: $4d
	ccf                                              ; $69e6: $3f
	inc [hl]                                         ; $69e7: $34
	add hl, bc                                       ; $69e8: $09
	cpl                                              ; $69e9: $2f
	ldh a, [$f7]                                     ; $69ea: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $69ec: $f0 $17
	ld b, a                                          ; $69ee: $47
	ld c, e                                          ; $69ef: $4b
	db $ed                                           ; $69f0: $ed
	and e                                            ; $69f1: $a3
	ld a, $3f                                        ; $69f2: $3e $3f
	ld c, [hl]                                       ; $69f4: $4e
	dec [hl]                                         ; $69f5: $35
	add hl, bc                                       ; $69f6: $09
	cpl                                              ; $69f7: $2f
	ld d, h                                          ; $69f8: $54
	ld b, c                                          ; $69f9: $41
	ld a, [hl-]                                      ; $69fa: $3a
	halt                                             ; $69fb: $76
	ld b, h                                          ; $69fc: $44
	ld d, e                                          ; $69fd: $53
	inc [hl]                                         ; $69fe: $34
	db $ed                                           ; $69ff: $ed
	xor c                                            ; $6a00: $a9
	ldh a, [$5a]                                     ; $6a01: $f0 $5a
	ld b, d                                          ; $6a03: $42
	ldh a, [rHDMA2]                                  ; $6a04: $f0 $52
	ld c, e                                          ; $6a06: $4b
	add hl, bc                                       ; $6a07: $09
	cpl                                              ; $6a08: $2f

jr_08a_6a09:
	ldh a, [$98]                                     ; $6a09: $f0 $98
	ld b, a                                          ; $6a0b: $47
	ld c, a                                          ; $6a0c: $4f
	ldh a, [$e4]                                     ; $6a0d: $f0 $e4
	ld e, l                                          ; $6a0f: $5d
	ld a, [hl-]                                      ; $6a10: $3a
	jr c, jr_08a_6a48                                ; $6a11: $38 $35

	add hl, bc                                       ; $6a13: $09
	cpl                                              ; $6a14: $2f
	jp hl                                            ; $6a15: $e9


	sbc [hl]                                         ; $6a16: $9e
	add hl, bc                                       ; $6a17: $09
	cpl                                              ; $6a18: $2f
	ldh a, [rHDMA3]                                  ; $6a19: $f0 $53
	ld e, [hl]                                       ; $6a1b: $5e
	ld c, [hl]                                       ; $6a1c: $4e
	ldh a, [$c6]                                     ; $6a1d: $f0 $c6
	ldh a, [rHDMA3]                                  ; $6a1f: $f0 $53
	ld c, a                                          ; $6a21: $4f
	add hl, bc                                       ; $6a22: $09
	cpl                                              ; $6a23: $2f
	ldh a, [rHDMA4]                                  ; $6a24: $f0 $54
	ld a, [hl-]                                      ; $6a26: $3a
	jr c, jr_08a_6a65                                ; $6a27: $38 $3c

	ld c, a                                          ; $6a29: $4f
	ld a, $4d                                        ; $6a2a: $3e $4d
	ld a, [hl-]                                      ; $6a2c: $3a
	jr c, jr_08a_6a64                                ; $6a2d: $38 $35

	add hl, bc                                       ; $6a2f: $09
	cpl                                              ; $6a30: $2f
	add sp, $7c                                      ; $6a31: $e8 $7c
	dec [hl]                                         ; $6a33: $35
	add hl, bc                                       ; $6a34: $09
	cpl                                              ; $6a35: $2f
	db $ed                                           ; $6a36: $ed
	xor c                                            ; $6a37: $a9
	ld c, e                                          ; $6a38: $4b
	inc [hl]                                         ; $6a39: $34
	inc a                                            ; $6a3a: $3c
	ld h, e                                          ; $6a3b: $63
	jr c, jr_08a_6a93                                ; $6a3c: $38 $55

	ccf                                              ; $6a3e: $3f
	inc [hl]                                         ; $6a3f: $34
	add hl, bc                                       ; $6a40: $09
	cpl                                              ; $6a41: $2f
	ldh a, [$98]                                     ; $6a42: $f0 $98
	inc a                                            ; $6a44: $3c
	ld d, b                                          ; $6a45: $50
	ld c, a                                          ; $6a46: $4f
	db $ed                                           ; $6a47: $ed

jr_08a_6a48:
	ld l, c                                          ; $6a48: $69
	db $eb                                           ; $6a49: $eb
	ld l, l                                          ; $6a4a: $6d
	inc [hl]                                         ; $6a4b: $34
	add hl, bc                                       ; $6a4c: $09
	cpl                                              ; $6a4d: $2f
	jp hl                                            ; $6a4e: $e9


	sbc e                                            ; $6a4f: $9b
	dec [hl]                                         ; $6a50: $35
	add hl, bc                                       ; $6a51: $09
	cpl                                              ; $6a52: $2f
	add sp, $0b                                      ; $6a53: $e8 $0b
	dec [hl]                                         ; $6a55: $35
	add hl, bc                                       ; $6a56: $09
	cpl                                              ; $6a57: $2f
	db $ec                                           ; $6a58: $ec
	ld bc, $ed34                                     ; $6a59: $01 $34 $ed
	add e                                            ; $6a5c: $83
	ld c, a                                          ; $6a5d: $4f
	add hl, bc                                       ; $6a5e: $09
	cpl                                              ; $6a5f: $2f
	db $ec                                           ; $6a60: $ec
	ld bc, $ed34                                     ; $6a61: $01 $34 $ed

jr_08a_6a64:
	add e                                            ; $6a64: $83

jr_08a_6a65:
	ld c, e                                          ; $6a65: $4b
	add hl, bc                                       ; $6a66: $09
	cpl                                              ; $6a67: $2f
	db $ed                                           ; $6a68: $ed
	add e                                            ; $6a69: $83
	ld b, a                                          ; $6a6a: $47
	ld c, e                                          ; $6a6b: $4b
	ldh a, [rHDMA3]                                  ; $6a6c: $f0 $53
	ld e, [hl]                                       ; $6a6e: $5e
	ld a, [hl-]                                      ; $6a6f: $3a
	ld d, l                                          ; $6a70: $55
	ccf                                              ; $6a71: $3f
	inc [hl]                                         ; $6a72: $34
	add hl, bc                                       ; $6a73: $09
	cpl                                              ; $6a74: $2f
	ld h, a                                          ; $6a75: $67
	ld e, l                                          ; $6a76: $5d
	ld c, [hl]                                       ; $6a77: $4e
	ld b, l                                          ; $6a78: $45
	add hl, sp                                       ; $6a79: $39
	ld b, a                                          ; $6a7a: $47
	inc [hl]                                         ; $6a7b: $34
	add hl, bc                                       ; $6a7c: $09
	cpl                                              ; $6a7d: $2f
	sub d                                            ; $6a7e: $92
	adc [hl]                                         ; $6a7f: $8e
	ld d, b                                          ; $6a80: $50
	ld a, [hl-]                                      ; $6a81: $3a
	ld e, h                                          ; $6a82: $5c
	ld d, [hl]                                       ; $6a83: $56
	ld c, b                                          ; $6a84: $48
	dec [hl]                                         ; $6a85: $35
	add hl, bc                                       ; $6a86: $09
	cpl                                              ; $6a87: $2f
	jp hl                                            ; $6a88: $e9


	sbc h                                            ; $6a89: $9c
	ld b, [hl]                                       ; $6a8a: $46
	ld c, [hl]                                       ; $6a8b: $4e
	inc a                                            ; $6a8c: $3c
	ld d, b                                          ; $6a8d: $50
	add hl, bc                                       ; $6a8e: $09
	cpl                                              ; $6a8f: $2f
	db $ed                                           ; $6a90: $ed
	add e                                            ; $6a91: $83
	ld b, a                                          ; $6a92: $47

jr_08a_6a93:
	xor $2d                                          ; $6a93: $ee $2d
	add b                                            ; $6a95: $80
	ld c, d                                          ; $6a96: $4a
	ld c, a                                          ; $6a97: $4f
	ldh a, [rHDMA3]                                  ; $6a98: $f0 $53
	ld e, [hl]                                       ; $6a9a: $5e
	ld c, [hl]                                       ; $6a9b: $4e
	ld e, l                                          ; $6a9c: $5d
	ld e, d                                          ; $6a9d: $5a
	add hl, bc                                       ; $6a9e: $09
	cpl                                              ; $6a9f: $2f
	pop af                                           ; $6aa0: $f1
	ld de, $65f0                                     ; $6aa1: $11 $f0 $65
	ld h, d                                          ; $6aa4: $62
	ldh a, [$5c]                                     ; $6aa5: $f0 $5c
	ld d, l                                          ; $6aa7: $55
	ld a, $3a                                        ; $6aa8: $3e $3a
	ld e, h                                          ; $6aaa: $5c
	ld d, [hl]                                       ; $6aab: $56
	add hl, bc                                       ; $6aac: $09
	cpl                                              ; $6aad: $2f
	db $ec                                           ; $6aae: $ec
	ld [$3548], sp                                   ; $6aaf: $08 $48 $35
	add hl, bc                                       ; $6ab2: $09
	cpl                                              ; $6ab3: $2f
	ld b, b                                          ; $6ab4: $40
	add hl, sp                                       ; $6ab5: $39
	ld b, b                                          ; $6ab6: $40
	add hl, sp                                       ; $6ab7: $39
	inc [hl]                                         ; $6ab8: $34
	db $ed                                           ; $6ab9: $ed
	add e                                            ; $6aba: $83
	ld c, e                                          ; $6abb: $4b
	add hl, bc                                       ; $6abc: $09
	cpl                                              ; $6abd: $2f
	halt                                             ; $6abe: $76
	ld b, d                                          ; $6abf: $42
	ldh a, [$65]                                     ; $6ac0: $f0 $65
	ld b, d                                          ; $6ac2: $42
	ldh a, [c]                                       ; $6ac3: $f2
	cp c                                             ; $6ac4: $b9
	ldh a, [rTMA]                                    ; $6ac5: $f0 $06
	ld h, d                                          ; $6ac7: $62
	add hl, bc                                       ; $6ac8: $09
	cpl                                              ; $6ac9: $2f
	db $ed                                           ; $6aca: $ed
	ld h, h                                          ; $6acb: $64
	ld a, $3f                                        ; $6acc: $3e $3f
	inc [hl]                                         ; $6ace: $34
	add hl, bc                                       ; $6acf: $09
	cpl                                              ; $6ad0: $2f
	db $ed                                           ; $6ad1: $ed
	add e                                            ; $6ad2: $83
	ld c, e                                          ; $6ad3: $4b
	inc [hl]                                         ; $6ad4: $34
	pop af                                           ; $6ad5: $f1
	cp l                                             ; $6ad6: $bd
	pop af                                           ; $6ad7: $f1
	ld l, h                                          ; $6ad8: $6c
	ld b, d                                          ; $6ad9: $42
	ld b, l                                          ; $6ada: $45
	add hl, sp                                       ; $6adb: $39
	ld b, a                                          ; $6adc: $47
	add hl, bc                                       ; $6add: $09
	cpl                                              ; $6ade: $2f
	db $ed                                           ; $6adf: $ed
	add e                                            ; $6ae0: $83
	ld b, a                                          ; $6ae1: $47
	ld c, e                                          ; $6ae2: $4b
	db $ed                                           ; $6ae3: $ed
	and e                                            ; $6ae4: $a3
	ld a, $3f                                        ; $6ae5: $3e $3f
	ld c, [hl]                                       ; $6ae7: $4e
	dec [hl]                                         ; $6ae8: $35
	add hl, bc                                       ; $6ae9: $09
	cpl                                              ; $6aea: $2f
	dec a                                            ; $6aeb: $3d
	ld b, h                                          ; $6aec: $44
	inc [hl]                                         ; $6aed: $34
	ldh a, [$f7]                                     ; $6aee: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $6af0: $f0 $17
	ld c, a                                          ; $6af2: $4f
	add hl, bc                                       ; $6af3: $09
	cpl                                              ; $6af4: $2f
	ld b, [hl]                                       ; $6af5: $46
	ld d, d                                          ; $6af6: $52
	ld d, a                                          ; $6af7: $57
	ldh a, [$5b]                                     ; $6af8: $f0 $5b
	ldh a, [$5e]                                     ; $6afa: $f0 $5e
	ld c, d                                          ; $6afc: $4a
	ld c, e                                          ; $6afd: $4b
	ld a, [hl-]                                      ; $6afe: $3a
	jr c, jr_08a_6b43                                ; $6aff: $38 $42

	ld c, d                                          ; $6b01: $4a
	add hl, bc                                       ; $6b02: $09
	cpl                                              ; $6b03: $2f
	ld b, [hl]                                       ; $6b04: $46
	ld d, d                                          ; $6b05: $52
	ld d, a                                          ; $6b06: $57
	inc [hl]                                         ; $6b07: $34
	ldh a, [rAUD1LOW]                                ; $6b08: $f0 $13
	ldh a, [$63]                                     ; $6b0a: $f0 $63
	ld c, e                                          ; $6b0c: $4b
	ld e, b                                          ; $6b0d: $58
	ld a, c                                          ; $6b0e: $79
	ld d, b                                          ; $6b0f: $50
	ld c, l                                          ; $6b10: $4d
	ld a, [hl-]                                      ; $6b11: $3a
	jr c, jr_08a_6b49                                ; $6b12: $38 $35

	add hl, bc                                       ; $6b14: $09
	cpl                                              ; $6b15: $2f
	ld d, h                                          ; $6b16: $54
	ld b, c                                          ; $6b17: $41
	ld a, [hl-]                                      ; $6b18: $3a
	halt                                             ; $6b19: $76
	ld b, h                                          ; $6b1a: $44
	ld d, e                                          ; $6b1b: $53
	inc [hl]                                         ; $6b1c: $34
	add hl, bc                                       ; $6b1d: $09
	cpl                                              ; $6b1e: $2f
	db $ed                                           ; $6b1f: $ed
	add e                                            ; $6b20: $83
	add sp, $7e                                      ; $6b21: $e8 $7e
	dec [hl]                                         ; $6b23: $35
	add hl, bc                                       ; $6b24: $09
	cpl                                              ; $6b25: $2f
	pop af                                           ; $6b26: $f1
	ld de, $65f0                                     ; $6b27: $11 $f0 $65
	ld d, e                                          ; $6b2a: $53
	db $ed                                           ; $6b2b: $ed
	ld h, h                                          ; $6b2c: $64
	db $ec                                           ; $6b2d: $ec
	jr nz, jr_08a_6b39                               ; $6b2e: $20 $09

	cpl                                              ; $6b30: $2f
	ld b, [hl]                                       ; $6b31: $46
	ld d, d                                          ; $6b32: $52
	ld d, a                                          ; $6b33: $57
	ldh a, [$f0]                                     ; $6b34: $f0 $f0
	ld b, a                                          ; $6b36: $47
	ld c, e                                          ; $6b37: $4b
	sub h                                            ; $6b38: $94

jr_08a_6b39:
	ld c, l                                          ; $6b39: $4d
	ld a, [hl-]                                      ; $6b3a: $3a
	jr c, jr_08a_6b9a                                ; $6b3b: $38 $5d

	ld c, l                                          ; $6b3d: $4d
	ld e, d                                          ; $6b3e: $5a
	inc [hl]                                         ; $6b3f: $34
	add hl, bc                                       ; $6b40: $09
	cpl                                              ; $6b41: $2f
	ld d, h                                          ; $6b42: $54

jr_08a_6b43:
	ld b, d                                          ; $6b43: $42
	pop af                                           ; $6b44: $f1
	ld b, [hl]                                       ; $6b45: $46
	ld c, c                                          ; $6b46: $49
	ld a, [hl-]                                      ; $6b47: $3a
	ld d, b                                          ; $6b48: $50

jr_08a_6b49:
	inc [hl]                                         ; $6b49: $34
	add hl, bc                                       ; $6b4a: $09
	cpl                                              ; $6b4b: $2f
	db $ec                                           ; $6b4c: $ec
	ld bc, $ed34                                     ; $6b4d: $01 $34 $ed
	or e                                             ; $6b50: $b3
	ld c, a                                          ; $6b51: $4f
	add hl, bc                                       ; $6b52: $09
	cpl                                              ; $6b53: $2f
	ldh a, [$cd]                                     ; $6b54: $f0 $cd
	ld e, e                                          ; $6b56: $5b
	db $ec                                           ; $6b57: $ec
	ld [bc], a                                       ; $6b58: $02
	add hl, bc                                       ; $6b59: $09
	cpl                                              ; $6b5a: $2f
	jp hl                                            ; $6b5b: $e9


	sbc l                                            ; $6b5c: $9d
	dec [hl]                                         ; $6b5d: $35
	add hl, bc                                       ; $6b5e: $09
	cpl                                              ; $6b5f: $2f
	xor $06                                          ; $6b60: $ee $06
	ld b, d                                          ; $6b62: $42
	adc a                                            ; $6b63: $8f
	db $f4                                           ; $6b64: $f4
	adc [hl]                                         ; $6b65: $8e
	ld b, a                                          ; $6b66: $47
	ld a, [hl-]                                      ; $6b67: $3a
	ld c, l                                          ; $6b68: $4d
	ld c, [hl]                                       ; $6b69: $4e
	ld c, c                                          ; $6b6a: $49
	jr c, jr_08a_6ba5                                ; $6b6b: $38 $38

	ld c, h                                          ; $6b6d: $4c
	dec [hl]                                         ; $6b6e: $35
	add hl, bc                                       ; $6b6f: $09
	cpl                                              ; $6b70: $2f
	ld a, [hl-]                                      ; $6b71: $3a
	ld b, c                                          ; $6b72: $41
	ccf                                              ; $6b73: $3f
	ldh a, [rAUDVOL]                                 ; $6b74: $f0 $24
	ld a, $3f                                        ; $6b76: $3e $3f
	jr c, jr_08a_6bc8                                ; $6b78: $38 $4e

	dec [hl]                                         ; $6b7a: $35
	add hl, bc                                       ; $6b7b: $09
	cpl                                              ; $6b7c: $2f
	jp hl                                            ; $6b7d: $e9


	sub l                                            ; $6b7e: $95
	add hl, bc                                       ; $6b7f: $09
	cpl                                              ; $6b80: $2f
	db $ec                                           ; $6b81: $ec
	ld [bc], a                                       ; $6b82: $02
	add hl, bc                                       ; $6b83: $09
	cpl                                              ; $6b84: $2f
	jp hl                                            ; $6b85: $e9


	and d                                            ; $6b86: $a2
	add hl, bc                                       ; $6b87: $09
	cpl                                              ; $6b88: $2f
	ld [$35a7], a                                    ; $6b89: $ea $a7 $35
	add hl, bc                                       ; $6b8c: $09
	cpl                                              ; $6b8d: $2f
	db $ed                                           ; $6b8e: $ed
	or e                                             ; $6b8f: $b3
	ld b, a                                          ; $6b90: $47
	ld c, e                                          ; $6b91: $4b
	ldh a, [rHDMA3]                                  ; $6b92: $f0 $53
	ld e, [hl]                                       ; $6b94: $5e
	ld a, [hl-]                                      ; $6b95: $3a
	ld d, l                                          ; $6b96: $55
	ccf                                              ; $6b97: $3f
	inc [hl]                                         ; $6b98: $34
	add hl, bc                                       ; $6b99: $09

jr_08a_6b9a:
	cpl                                              ; $6b9a: $2f
	ld h, h                                          ; $6b9b: $64
	pop af                                           ; $6b9c: $f1
	ld d, a                                          ; $6b9d: $57
	jr c, jr_08a_6be7                                ; $6b9e: $38 $47

	pop af                                           ; $6ba0: $f1
	adc a                                            ; $6ba1: $8f
	ld a, $55                                        ; $6ba2: $3e $55
	ld a, [hl-]                                      ; $6ba4: $3a

jr_08a_6ba5:
	dec sp                                           ; $6ba5: $3b
	dec a                                            ; $6ba6: $3d
	ld d, b                                          ; $6ba7: $50
	inc [hl]                                         ; $6ba8: $34
	add hl, bc                                       ; $6ba9: $09
	cpl                                              ; $6baa: $2f
	ld a, b                                          ; $6bab: $78
	ldh a, [rAUD1HIGH]                               ; $6bac: $f0 $14
	ld c, e                                          ; $6bae: $4b
	add a                                            ; $6baf: $87
	adc c                                            ; $6bb0: $89
	ld [$345c], a                                    ; $6bb1: $ea $5c $34
	add hl, bc                                       ; $6bb4: $09
	cpl                                              ; $6bb5: $2f
	db $ed                                           ; $6bb6: $ed
	or e                                             ; $6bb7: $b3
	ld b, a                                          ; $6bb8: $47
	xor $2d                                          ; $6bb9: $ee $2d
	add b                                            ; $6bbb: $80
	ld c, d                                          ; $6bbc: $4a
	ld c, a                                          ; $6bbd: $4f
	ldh a, [rHDMA3]                                  ; $6bbe: $f0 $53
	ld e, [hl]                                       ; $6bc0: $5e
	ld c, [hl]                                       ; $6bc1: $4e
	ld e, l                                          ; $6bc2: $5d
	ld e, d                                          ; $6bc3: $5a
	add hl, bc                                       ; $6bc4: $09
	cpl                                              ; $6bc5: $2f
	ldh a, [$0a]                                     ; $6bc6: $f0 $0a

jr_08a_6bc8:
	ld d, l                                          ; $6bc8: $55
	inc [hl]                                         ; $6bc9: $34
	ldh a, [hDisp0_WY]                                     ; $6bca: $f0 $88
	pop af                                           ; $6bcc: $f1
	rst FarCall                                          ; $6bcd: $f7
	ld h, d                                          ; $6bce: $62
	add hl, bc                                       ; $6bcf: $09
	cpl                                              ; $6bd0: $2f
	pop af                                           ; $6bd1: $f1
	adc l                                            ; $6bd2: $8d
	ld e, b                                          ; $6bd3: $58
	ld a, [hl-]                                      ; $6bd4: $3a
	jr c, jr_08a_6c20                                ; $6bd5: $38 $49

	ld a, [hl-]                                      ; $6bd7: $3a
	ld [hl], h                                       ; $6bd8: $74
	ld c, b                                          ; $6bd9: $48
	dec [hl]                                         ; $6bda: $35
	add hl, bc                                       ; $6bdb: $09
	cpl                                              ; $6bdc: $2f
	ld b, b                                          ; $6bdd: $40
	add hl, sp                                       ; $6bde: $39
	ld b, b                                          ; $6bdf: $40
	add hl, sp                                       ; $6be0: $39
	inc [hl]                                         ; $6be1: $34
	db $ed                                           ; $6be2: $ed
	or e                                             ; $6be3: $b3
	ld c, e                                          ; $6be4: $4b
	add hl, bc                                       ; $6be5: $09
	cpl                                              ; $6be6: $2f

jr_08a_6be7:
	sub [hl]                                         ; $6be7: $96
	ldh a, [hDisp1_SCX]                                     ; $6be8: $f0 $91
	ldh a, [rAUD2HIGH]                               ; $6bea: $f0 $19
	ld b, d                                          ; $6bec: $42
	halt                                             ; $6bed: $76
	ld b, d                                          ; $6bee: $42
	ldh a, [$65]                                     ; $6bef: $f0 $65
	ld h, d                                          ; $6bf1: $62
	db $ed                                           ; $6bf2: $ed
	ld h, h                                          ; $6bf3: $64
	ld a, $3f                                        ; $6bf4: $3e $3f
	add hl, bc                                       ; $6bf6: $09
	cpl                                              ; $6bf7: $2f
	ldh a, [$b6]                                     ; $6bf8: $f0 $b6
	di                                               ; $6bfa: $f3
	jp $aff2                                         ; $6bfb: $c3 $f2 $af


	ld b, d                                          ; $6bfe: $42
	xor $17                                          ; $6bff: $ee $17
	ld h, d                                          ; $6c01: $62
	add hl, bc                                       ; $6c02: $09
	cpl                                              ; $6c03: $2f
	ld a, $3f                                        ; $6c04: $3e $3f
	ld d, l                                          ; $6c06: $55
	ld c, l                                          ; $6c07: $4d
	ld c, [hl]                                       ; $6c08: $4e
	ld b, b                                          ; $6c09: $40
	add hl, sp                                       ; $6c0a: $39
	ld b, h                                          ; $6c0b: $44
	dec [hl]                                         ; $6c0c: $35
	add hl, bc                                       ; $6c0d: $09
	cpl                                              ; $6c0e: $2f
	halt                                             ; $6c0f: $76
	ld b, d                                          ; $6c10: $42
	dec a                                            ; $6c11: $3d
	ld [hl], c                                       ; $6c12: $71
	ld b, a                                          ; $6c13: $47
	add hl, bc                                       ; $6c14: $09
	cpl                                              ; $6c15: $2f
	add a                                            ; $6c16: $87
	sbc d                                            ; $6c17: $9a
	ld a, [hl-]                                      ; $6c18: $3a
	ldh a, [rBGP]                                    ; $6c19: $f0 $47
	ldh a, [$2a]                                     ; $6c1b: $f0 $2a
	ld h, d                                          ; $6c1d: $62
	add hl, bc                                       ; $6c1e: $09
	cpl                                              ; $6c1f: $2f

jr_08a_6c20:
	di                                               ; $6c20: $f3
	ld a, a                                          ; $6c21: $7f
	ld l, [hl]                                       ; $6c22: $6e
	ld a, $3f                                        ; $6c23: $3e $3f
	ld d, l                                          ; $6c25: $55
	ld c, l                                          ; $6c26: $4d
	ccf                                              ; $6c27: $3f
	add hl, bc                                       ; $6c28: $09
	cpl                                              ; $6c29: $2f
	db $ed                                           ; $6c2a: $ed
	or e                                             ; $6c2b: $b3
	add sp, $7e                                      ; $6c2c: $e8 $7e
	dec [hl]                                         ; $6c2e: $35
	add hl, bc                                       ; $6c2f: $09

jr_08a_6c30:
	cpl                                              ; $6c30: $2f
	ldh a, [$f7]                                     ; $6c31: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $6c33: $f0 $17
	ld c, e                                          ; $6c35: $4b
	inc [hl]                                         ; $6c36: $34
	jr c, jr_08a_6c8b                                ; $6c37: $38 $52

	ld b, h                                          ; $6c39: $44
	ld b, a                                          ; $6c3a: $47
	add hl, bc                                       ; $6c3b: $09
	cpl                                              ; $6c3c: $2f
	pop af                                           ; $6c3d: $f1
	ld hl, sp+$3e                                    ; $6c3e: $f8 $3e
	jr c, jr_08a_6c30                                ; $6c40: $38 $ee

	rla                                              ; $6c42: $17
	ld h, d                                          ; $6c43: $62
	ld a, $3f                                        ; $6c44: $3e $3f
	jr c, jr_08a_6c96                                ; $6c46: $38 $4e

	ld e, l                                          ; $6c48: $5d
	ld e, d                                          ; $6c49: $5a
	inc [hl]                                         ; $6c4a: $34
	add hl, bc                                       ; $6c4b: $09
	cpl                                              ; $6c4c: $2f
	db $ec                                           ; $6c4d: $ec
	ld bc, $ed34                                     ; $6c4e: $01 $34 $ed
	cp [hl]                                          ; $6c51: $be
	ld c, a                                          ; $6c52: $4f
	add hl, bc                                       ; $6c53: $09
	cpl                                              ; $6c54: $2f
	db $eb                                           ; $6c55: $eb
	ld c, d                                          ; $6c56: $4a
	add hl, bc                                       ; $6c57: $09
	cpl                                              ; $6c58: $2f
	db $eb                                           ; $6c59: $eb
	ld c, e                                          ; $6c5a: $4b
	inc [hl]                                         ; $6c5b: $34
	add hl, bc                                       ; $6c5c: $09
	cpl                                              ; $6c5d: $2f
	add sp, $4b                                      ; $6c5e: $e8 $4b
	dec [hl]                                         ; $6c60: $35
	add hl, bc                                       ; $6c61: $09
	cpl                                              ; $6c62: $2f
	ld e, b                                          ; $6c63: $58
	dec sp                                           ; $6c64: $3b
	ld b, b                                          ; $6c65: $40
	ld d, l                                          ; $6c66: $55
	inc [hl]                                         ; $6c67: $34
	pop af                                           ; $6c68: $f1
	dec a                                            ; $6c69: $3d
	ld d, h                                          ; $6c6a: $54
	add hl, sp                                       ; $6c6b: $39
	ld c, d                                          ; $6c6c: $4a
	add hl, bc                                       ; $6c6d: $09
	cpl                                              ; $6c6e: $2f
	ldh a, [$b2]                                     ; $6c6f: $f0 $b2
	ldh a, [$fe]                                     ; $6c71: $f0 $fe
	ld d, h                                          ; $6c73: $54
	ld c, c                                          ; $6c74: $49
	ld a, e                                          ; $6c75: $7b
	inc a                                            ; $6c76: $3c
	ld d, a                                          ; $6c77: $57
	ldh a, [rAUDVOL]                                 ; $6c78: $f0 $24
	ld a, $3f                                        ; $6c7a: $3e $3f
	jr c, jr_08a_6ccc                                ; $6c7c: $38 $4e

	dec [hl]                                         ; $6c7e: $35
	add hl, bc                                       ; $6c7f: $09
	cpl                                              ; $6c80: $2f
	jp hl                                            ; $6c81: $e9


	sub h                                            ; $6c82: $94
	add hl, bc                                       ; $6c83: $09
	cpl                                              ; $6c84: $2f
	ld h, h                                          ; $6c85: $64
	pop af                                           ; $6c86: $f1
	ld d, a                                          ; $6c87: $57
	jr c, jr_08a_6cd1                                ; $6c88: $38 $47

	inc [hl]                                         ; $6c8a: $34

jr_08a_6c8b:
	ldh a, [$f5]                                     ; $6c8b: $f0 $f5
	add hl, sp                                       ; $6c8d: $39
	ldh a, [$ca]                                     ; $6c8e: $f0 $ca
	ld c, d                                          ; $6c90: $4a
	sub d                                            ; $6c91: $92
	adc [hl]                                         ; $6c92: $8e
	dec sp                                           ; $6c93: $3b
	ccf                                              ; $6c94: $3f
	inc [hl]                                         ; $6c95: $34

jr_08a_6c96:
	add hl, bc                                       ; $6c96: $09
	cpl                                              ; $6c97: $2f
	db $ed                                           ; $6c98: $ed
	sub a                                            ; $6c99: $97
	ld b, a                                          ; $6c9a: $47
	ld a, d                                          ; $6c9b: $7a
	dec sp                                           ; $6c9c: $3b
	ccf                                              ; $6c9d: $3f
	ld e, h                                          ; $6c9e: $5c
	dec a                                            ; $6c9f: $3d
	ld d, b                                          ; $6ca0: $50
	inc [hl]                                         ; $6ca1: $34
	add hl, bc                                       ; $6ca2: $09
	cpl                                              ; $6ca3: $2f
	ld d, h                                          ; $6ca4: $54
	ld b, d                                          ; $6ca5: $42
	pop af                                           ; $6ca6: $f1
	rst GetHLinHL                                          ; $6ca7: $cf
	ld b, d                                          ; $6ca8: $42
	ldh a, [$a3]                                     ; $6ca9: $f0 $a3
	ld c, d                                          ; $6cab: $4a
	di                                               ; $6cac: $f3
	ld [$53f0], sp                                   ; $6cad: $08 $f0 $53
	ld d, c                                          ; $6cb0: $51
	ld c, [hl]                                       ; $6cb1: $4e
	add hl, bc                                       ; $6cb2: $09
	cpl                                              ; $6cb3: $2f
	xor $1d                                          ; $6cb4: $ee $1d
	ld h, d                                          ; $6cb6: $62
	ld a, $3d                                        ; $6cb7: $3e $3d
	dec [hl]                                         ; $6cb9: $35
	add hl, bc                                       ; $6cba: $09
	cpl                                              ; $6cbb: $2f
	ld l, d                                          ; $6cbc: $6a
	ldh a, [$0d]                                     ; $6cbd: $f0 $0d
	inc [hl]                                         ; $6cbf: $34
	ldh a, [rHDMA3]                                  ; $6cc0: $f0 $53
	ld e, [hl]                                       ; $6cc2: $5e
	ld c, [hl]                                       ; $6cc3: $4e
	ld c, c                                          ; $6cc4: $49
	ld e, h                                          ; $6cc5: $5c
	ld b, a                                          ; $6cc6: $47
	ld c, e                                          ; $6cc7: $4b
	add hl, bc                                       ; $6cc8: $09
	cpl                                              ; $6cc9: $2f
	add a                                            ; $6cca: $87
	adc c                                            ; $6ccb: $89

jr_08a_6ccc:
	ldh a, [rTIMA]                                   ; $6ccc: $f0 $05
	ld c, c                                          ; $6cce: $49
	ld a, $3f                                        ; $6ccf: $3e $3f

jr_08a_6cd1:
	inc [hl]                                         ; $6cd1: $34
	add hl, bc                                       ; $6cd2: $09
	cpl                                              ; $6cd3: $2f
	ldh a, [$be]                                     ; $6cd4: $f0 $be
	inc a                                            ; $6cd6: $3c
	ld e, [hl]                                       ; $6cd7: $5e
	ld d, b                                          ; $6cd8: $50
	ld c, l                                          ; $6cd9: $4d
	ld c, [hl]                                       ; $6cda: $4e
	ld b, l                                          ; $6cdb: $45
	add hl, sp                                       ; $6cdc: $39
	ld b, a                                          ; $6cdd: $47
	add hl, bc                                       ; $6cde: $09
	cpl                                              ; $6cdf: $2f
	ld l, d                                          ; $6ce0: $6a
	ldh a, [$0d]                                     ; $6ce1: $f0 $0d
	inc [hl]                                         ; $6ce3: $34
	ldh a, [rHDMA3]                                  ; $6ce4: $f0 $53
	ld e, [hl]                                       ; $6ce6: $5e
	ld c, [hl]                                       ; $6ce7: $4e
	ld c, c                                          ; $6ce8: $49
	ld e, h                                          ; $6ce9: $5c
	ld d, d                                          ; $6cea: $52
	ld c, d                                          ; $6ceb: $4a
	add hl, bc                                       ; $6cec: $09
	cpl                                              ; $6ced: $2f
	ld h, c                                          ; $6cee: $61
	ld d, [hl]                                       ; $6cef: $56
	ld b, c                                          ; $6cf0: $41
	ld c, c                                          ; $6cf1: $49
	inc [hl]                                         ; $6cf2: $34
	pop af                                           ; $6cf3: $f1
	rst FarCall                                          ; $6cf4: $f7
	ld b, a                                          ; $6cf5: $47
	add hl, bc                                       ; $6cf6: $09
	cpl                                              ; $6cf7: $2f
	ldh a, [c]                                       ; $6cf8: $f2
	ld [hl-], a                                      ; $6cf9: $32
	jr c, jr_08a_6d3b                                ; $6cfa: $38 $3f

	ld a, [hl-]                                      ; $6cfc: $3a
	jr c, jr_08a_6d48                                ; $6cfd: $38 $49

	ld a, [hl-]                                      ; $6cff: $3a
	ld [hl], h                                       ; $6d00: $74
	ld c, b                                          ; $6d01: $48
	dec [hl]                                         ; $6d02: $35
	add hl, bc                                       ; $6d03: $09
	cpl                                              ; $6d04: $2f
	sub [hl]                                         ; $6d05: $96
	ldh a, [hDisp1_SCX]                                     ; $6d06: $f0 $91
	ldh a, [rAUD2HIGH]                               ; $6d08: $f0 $19
	ld b, d                                          ; $6d0a: $42
	halt                                             ; $6d0b: $76
	ld b, a                                          ; $6d0c: $47
	ld c, e                                          ; $6d0d: $4b
	inc [hl]                                         ; $6d0e: $34
	add hl, bc                                       ; $6d0f: $09
	cpl                                              ; $6d10: $2f
	pop af                                           ; $6d11: $f1
	cp l                                             ; $6d12: $bd
	ld l, b                                          ; $6d13: $68
	inc [hl]                                         ; $6d14: $34
	ldh a, [$0b]                                     ; $6d15: $f0 $0b
	di                                               ; $6d17: $f3
	ld c, c                                          ; $6d18: $49
	ld h, d                                          ; $6d19: $62
	add hl, bc                                       ; $6d1a: $09
	cpl                                              ; $6d1b: $2f
	pop af                                           ; $6d1c: $f1
	ld l, $38                                        ; $6d1d: $2e $38
	ccf                                              ; $6d1f: $3f
	ld d, l                                          ; $6d20: $55
	ld c, l                                          ; $6d21: $4d
	ld c, [hl]                                       ; $6d22: $4e
	ld b, b                                          ; $6d23: $40
	add hl, sp                                       ; $6d24: $39
	ld b, h                                          ; $6d25: $44
	dec [hl]                                         ; $6d26: $35
	add hl, bc                                       ; $6d27: $09
	cpl                                              ; $6d28: $2f
	add sp, $4c                                      ; $6d29: $e8 $4c
	dec [hl]                                         ; $6d2b: $35
	add hl, bc                                       ; $6d2c: $09
	cpl                                              ; $6d2d: $2f
	db $ec                                           ; $6d2e: $ec
	db $eb                                           ; $6d2f: $eb
	ldh a, [rHDMA3]                                  ; $6d30: $f0 $53
	ld e, [hl]                                       ; $6d32: $5e
	ld a, [hl-]                                      ; $6d33: $3a
	ld d, l                                          ; $6d34: $55
	ccf                                              ; $6d35: $3f
	pop af                                           ; $6d36: $f1
	xor b                                            ; $6d37: $a8
	ld a, $38                                        ; $6d38: $3e $38
	ld d, e                                          ; $6d3a: $53

jr_08a_6d3b:
	add hl, bc                                       ; $6d3b: $09
	cpl                                              ; $6d3c: $2f
	ldh a, [$f7]                                     ; $6d3d: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $6d3f: $f0 $17
	ld b, d                                          ; $6d41: $42
	pop af                                           ; $6d42: $f1
	add sp, $42                                      ; $6d43: $e8 $42
	dec a                                            ; $6d45: $3d
	ld [hl], c                                       ; $6d46: $71
	ld b, h                                          ; $6d47: $44

jr_08a_6d48:
	inc [hl]                                         ; $6d48: $34
	add hl, bc                                       ; $6d49: $09
	cpl                                              ; $6d4a: $2f
	jr c, @-$7e                                      ; $6d4b: $38 $80

	ld d, d                                          ; $6d4d: $52
	ld c, d                                          ; $6d4e: $4a
	ld c, a                                          ; $6d4f: $4f
	inc [hl]                                         ; $6d50: $34
	sbc c                                            ; $6d51: $99
	dec sp                                           ; $6d52: $3b
	ccf                                              ; $6d53: $3f
	jr c, jr_08a_6da6                                ; $6d54: $38 $50

	ld c, l                                          ; $6d56: $4d
	ld c, [hl]                                       ; $6d57: $4e
	dec [hl]                                         ; $6d58: $35
	add hl, bc                                       ; $6d59: $09
	cpl                                              ; $6d5a: $2f
	ldh a, [$8e]                                     ; $6d5b: $f0 $8e
	ldh a, [rSC]                                     ; $6d5d: $f0 $02
	ld h, l                                          ; $6d5f: $65
	add e                                            ; $6d60: $83
	add h                                            ; $6d61: $84
	ld c, e                                          ; $6d62: $4b
	db $ed                                           ; $6d63: $ed
	ld [hl], $44                                     ; $6d64: $36 $44
	inc a                                            ; $6d66: $3c
	ld d, b                                          ; $6d67: $50
	add hl, bc                                       ; $6d68: $09
	cpl                                              ; $6d69: $2f
	ldh a, [rHDMA4]                                  ; $6d6a: $f0 $54
	ld a, $ed                                        ; $6d6c: $3e $ed
	ld h, h                                          ; $6d6e: $64
	ld b, h                                          ; $6d6f: $44
	ld e, l                                          ; $6d70: $5d
	ld e, d                                          ; $6d71: $5a
	inc [hl]                                         ; $6d72: $34
	add hl, bc                                       ; $6d73: $09
	cpl                                              ; $6d74: $2f
	ld e, h                                          ; $6d75: $5c
	dec sp                                           ; $6d76: $3b
	ld c, c                                          ; $6d77: $49
	inc [hl]                                         ; $6d78: $34
	add a                                            ; $6d79: $87
	ldh a, [$5b]                                     ; $6d7a: $f0 $5b
	ldh a, [$5e]                                     ; $6d7c: $f0 $5e
	ld b, h                                          ; $6d7e: $44
	dec [hl]                                         ; $6d7f: $35
	add hl, bc                                       ; $6d80: $09
	cpl                                              ; $6d81: $2f
	jp hl                                            ; $6d82: $e9


	sub e                                            ; $6d83: $93
	add hl, bc                                       ; $6d84: $09
	cpl                                              ; $6d85: $2f
	pop af                                           ; $6d86: $f1
	dec b                                            ; $6d87: $05
	ldh a, [rWY]                                     ; $6d88: $f0 $4a
	ldh a, [$03]                                     ; $6d8a: $f0 $03
	ld b, d                                          ; $6d8c: $42
	ldh a, [$ee]                                     ; $6d8d: $f0 $ee
	ld b, a                                          ; $6d8f: $47
	pop af                                           ; $6d90: $f1
	dec hl                                           ; $6d91: $2b
	ld b, c                                          ; $6d92: $41
	ld b, h                                          ; $6d93: $44
	dec [hl]                                         ; $6d94: $35
	add hl, bc                                       ; $6d95: $09
	cpl                                              ; $6d96: $2f
	ld h, h                                          ; $6d97: $64
	pop af                                           ; $6d98: $f1
	ld d, a                                          ; $6d99: $57
	jr c, jr_08a_6de3                                ; $6d9a: $38 $47

	add hl, bc                                       ; $6d9c: $09
	cpl                                              ; $6d9d: $2f
	add e                                            ; $6d9e: $83
	ldh a, [$2f]                                     ; $6d9f: $f0 $2f
	ldh a, [$7c]                                     ; $6da1: $f0 $7c
	ld h, l                                          ; $6da3: $65
	ldh a, [$f1]                                     ; $6da4: $f0 $f1

jr_08a_6da6:
	ldh a, [$03]                                     ; $6da6: $f0 $03
	ld h, d                                          ; $6da8: $62
	ld a, a                                          ; $6da9: $7f
	ld b, a                                          ; $6daa: $47
	ld a, $3f                                        ; $6dab: $3e $3f
	add hl, bc                                       ; $6dad: $09
	cpl                                              ; $6dae: $2f
	ld b, [hl]                                       ; $6daf: $46
	ld d, d                                          ; $6db0: $52
	ld d, a                                          ; $6db1: $57
	ldh a, [rHDMA3]                                  ; $6db2: $f0 $53
	ld e, [hl]                                       ; $6db4: $5e
	ld a, [hl-]                                      ; $6db5: $3a
	jr c, jr_08a_6df4                                ; $6db6: $38 $3c

	ld a, [hl-]                                      ; $6db8: $3a
	ld c, b                                          ; $6db9: $48
	dec [hl]                                         ; $6dba: $35
	add hl, bc                                       ; $6dbb: $09
	cpl                                              ; $6dbc: $2f
	ld c, d                                          ; $6dbd: $4a
	ld c, a                                          ; $6dbe: $4f
	inc [hl]                                         ; $6dbf: $34
	add hl, sp                                       ; $6dc0: $39
	ld d, d                                          ; $6dc1: $52
	ld d, l                                          ; $6dc2: $55
	ld l, [hl]                                       ; $6dc3: $6e
	dec sp                                           ; $6dc4: $3b
	ccf                                              ; $6dc5: $3f
	add hl, bc                                       ; $6dc6: $09
	cpl                                              ; $6dc7: $2f
	jr c, jr_08a_6e27                                ; $6dc8: $38 $5d

	ld c, [hl]                                       ; $6dca: $4e
	ld c, c                                          ; $6dcb: $49
	ld [hl], a                                       ; $6dcc: $77
	add hl, sp                                       ; $6dcd: $39
	dec [hl]                                         ; $6dce: $35
	add hl, bc                                       ; $6dcf: $09
	cpl                                              ; $6dd0: $2f
	add sp, $22                                      ; $6dd1: $e8 $22
	dec [hl]                                         ; $6dd3: $35
	add hl, bc                                       ; $6dd4: $09
	cpl                                              ; $6dd5: $2f
	xor $25                                          ; $6dd6: $ee $25
	ld b, a                                          ; $6dd8: $47
	ld c, e                                          ; $6dd9: $4b
	ldh a, [rHDMA3]                                  ; $6dda: $f0 $53
	ld e, [hl]                                       ; $6ddc: $5e
	ld a, [hl-]                                      ; $6ddd: $3a
	ld d, l                                          ; $6dde: $55
	ccf                                              ; $6ddf: $3f
	inc [hl]                                         ; $6de0: $34
	add hl, bc                                       ; $6de1: $09
	cpl                                              ; $6de2: $2f

jr_08a_6de3:
	pop af                                           ; $6de3: $f1
	rrca                                             ; $6de4: $0f
	ldh a, [c]                                       ; $6de5: $f2
	bit 4, d                                         ; $6de6: $cb $62
	di                                               ; $6de8: $f3
	add e                                            ; $6de9: $83
	di                                               ; $6dea: $f3
	ld sp, $724a                                     ; $6deb: $31 $4a $72
	ld a, [hl-]                                      ; $6dee: $3a
	ld d, e                                          ; $6def: $53
	ld d, b                                          ; $6df0: $50
	inc [hl]                                         ; $6df1: $34
	add hl, bc                                       ; $6df2: $09
	cpl                                              ; $6df3: $2f

jr_08a_6df4:
	db $ec                                           ; $6df4: $ec
	ld c, e                                          ; $6df5: $4b
	ld c, c                                          ; $6df6: $49
	ld a, $45                                        ; $6df7: $3e $45
	add hl, sp                                       ; $6df9: $39
	dec [hl]                                         ; $6dfa: $35
	add hl, bc                                       ; $6dfb: $09
	cpl                                              ; $6dfc: $2f
	xor $25                                          ; $6dfd: $ee $25
	ld b, d                                          ; $6dff: $42
	ldh a, [c]                                       ; $6e00: $f2
	ld sp, hl                                        ; $6e01: $f9
	dec sp                                           ; $6e02: $3b
	inc a                                            ; $6e03: $3c
	ld e, l                                          ; $6e04: $5d
	ld c, d                                          ; $6e05: $4a
	ld c, a                                          ; $6e06: $4f
	add hl, bc                                       ; $6e07: $09
	cpl                                              ; $6e08: $2f
	db $ec                                           ; $6e09: $ec
	inc c                                            ; $6e0a: $0c
	ld a, [hl-]                                      ; $6e0b: $3a
	ld c, b                                          ; $6e0c: $48
	dec [hl]                                         ; $6e0d: $35
	add hl, bc                                       ; $6e0e: $09
	cpl                                              ; $6e0f: $2f
	db $ec                                           ; $6e10: $ec
	ld c, $f4                                        ; $6e11: $0e $f4
	dec e                                            ; $6e13: $1d
	di                                               ; $6e14: $f3
	add [hl]                                         ; $6e15: $86
	ld d, c                                          ; $6e16: $51
	ld c, [hl]                                       ; $6e17: $4e
	ld c, c                                          ; $6e18: $49
	ld a, $45                                        ; $6e19: $3e $45
	add hl, sp                                       ; $6e1b: $39
	dec [hl]                                         ; $6e1c: $35
	add hl, bc                                       ; $6e1d: $09
	cpl                                              ; $6e1e: $2f
	ldh a, [$f7]                                     ; $6e1f: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $6e21: $f0 $17
	ld c, e                                          ; $6e23: $4b
	inc [hl]                                         ; $6e24: $34
	ld e, h                                          ; $6e25: $5c
	dec sp                                           ; $6e26: $3b

jr_08a_6e27:
	ld c, c                                          ; $6e27: $49
	add hl, bc                                       ; $6e28: $09
	cpl                                              ; $6e29: $2f
	db $ed                                           ; $6e2a: $ed
	ld l, c                                          ; $6e2b: $69
	ld d, e                                          ; $6e2c: $53
	sub h                                            ; $6e2d: $94
	ld c, [hl]                                       ; $6e2e: $4e
	ld c, c                                          ; $6e2f: $49
	ld [hl], a                                       ; $6e30: $77
	add hl, sp                                       ; $6e31: $39
	inc a                                            ; $6e32: $3c
	ld d, b                                          ; $6e33: $50
	add hl, bc                                       ; $6e34: $09
	cpl                                              ; $6e35: $2f
	jp hl                                            ; $6e36: $e9


	sbc e                                            ; $6e37: $9b
	inc [hl]                                         ; $6e38: $34
	add hl, bc                                       ; $6e39: $09
	cpl                                              ; $6e3a: $2f
	db $ec                                           ; $6e3b: $ec
	ld bc, $ee34                                     ; $6e3c: $01 $34 $ee
	ld h, $4f                                        ; $6e3f: $26 $4f
	add hl, bc                                       ; $6e41: $09
	cpl                                              ; $6e42: $2f
	jp hl                                            ; $6e43: $e9


	and c                                            ; $6e44: $a1
	inc [hl]                                         ; $6e45: $34
	add hl, bc                                       ; $6e46: $09
	cpl                                              ; $6e47: $2f
	jp hl                                            ; $6e48: $e9


	inc e                                            ; $6e49: $1c
	dec [hl]                                         ; $6e4a: $35
	add hl, bc                                       ; $6e4b: $09
	cpl                                              ; $6e4c: $2f
	ld h, h                                          ; $6e4d: $64
	pop af                                           ; $6e4e: $f1
	ld d, a                                          ; $6e4f: $57
	jr c, jr_08a_6e99                                ; $6e50: $38 $47

	ldh a, [rBGP]                                    ; $6e52: $f0 $47
	ldh a, [$2a]                                     ; $6e54: $f0 $2a
	ld c, e                                          ; $6e56: $4b
	ld b, [hl]                                       ; $6e57: $46
	ld c, [hl]                                       ; $6e58: $4e
	inc a                                            ; $6e59: $3c
	ld d, b                                          ; $6e5a: $50
	inc [hl]                                         ; $6e5b: $34
	add hl, bc                                       ; $6e5c: $09
	cpl                                              ; $6e5d: $2f
	ld d, h                                          ; $6e5e: $54
	ld c, l                                          ; $6e5f: $4d
	inc a                                            ; $6e60: $3c
	ld d, b                                          ; $6e61: $50
	ld b, d                                          ; $6e62: $42
	ld d, h                                          ; $6e63: $54
	ld c, c                                          ; $6e64: $49
	ld c, e                                          ; $6e65: $4b
	add hl, bc                                       ; $6e66: $09
	cpl                                              ; $6e67: $2f
	ld b, b                                          ; $6e68: $40
	ld b, d                                          ; $6e69: $42
	add hl, sp                                       ; $6e6a: $39
	ld h, c                                          ; $6e6b: $61
	ldh a, [$a4]                                     ; $6e6c: $f0 $a4
	ld e, [hl]                                       ; $6e6e: $5e
	ld b, l                                          ; $6e6f: $45
	add hl, sp                                       ; $6e70: $39
	dec [hl]                                         ; $6e71: $35
	add hl, bc                                       ; $6e72: $09
	cpl                                              ; $6e73: $2f
	jp hl                                            ; $6e74: $e9


	sub [hl]                                         ; $6e75: $96
	add hl, bc                                       ; $6e76: $09
	cpl                                              ; $6e77: $2f
	xor $26                                          ; $6e78: $ee $26
	ld b, a                                          ; $6e7a: $47
	ld c, e                                          ; $6e7b: $4b
	ldh a, [rHDMA3]                                  ; $6e7c: $f0 $53
	ld e, [hl]                                       ; $6e7e: $5e
	ld a, [hl-]                                      ; $6e7f: $3a
	ld d, l                                          ; $6e80: $55
	ccf                                              ; $6e81: $3f
	inc [hl]                                         ; $6e82: $34
	add hl, bc                                       ; $6e83: $09
	cpl                                              ; $6e84: $2f
	halt                                             ; $6e85: $76
	ld c, e                                          ; $6e86: $4b
	adc c                                            ; $6e87: $89
	ldh a, [rTIMA]                                   ; $6e88: $f0 $05
	ld b, h                                          ; $6e8a: $44
	inc a                                            ; $6e8b: $3c
	ld d, b                                          ; $6e8c: $50
	add hl, bc                                       ; $6e8d: $09
	cpl                                              ; $6e8e: $2f
	ld h, e                                          ; $6e8f: $63
	ld d, a                                          ; $6e90: $57
	ld c, c                                          ; $6e91: $49
	pop af                                           ; $6e92: $f1
	sub d                                            ; $6e93: $92
	jr c, @+$4b                                      ; $6e94: $38 $49

	ld [hl], a                                       ; $6e96: $77
	add hl, sp                                       ; $6e97: $39
	dec [hl]                                         ; $6e98: $35

jr_08a_6e99:
	add hl, bc                                       ; $6e99: $09
	cpl                                              ; $6e9a: $2f
	halt                                             ; $6e9b: $76
	ld b, d                                          ; $6e9c: $42
	ldh a, [c]                                       ; $6e9d: $f2
	ld sp, hl                                        ; $6e9e: $f9
	dec sp                                           ; $6e9f: $3b
	inc a                                            ; $6ea0: $3c
	ld e, l                                          ; $6ea1: $5d
	ld h, d                                          ; $6ea2: $62
	add hl, bc                                       ; $6ea3: $09
	cpl                                              ; $6ea4: $2f
	ld d, c                                          ; $6ea5: $51
	ld c, [hl]                                       ; $6ea6: $4e
	ld c, c                                          ; $6ea7: $49
	inc a                                            ; $6ea8: $3c
	add d                                            ; $6ea9: $82
	dec sp                                           ; $6eaa: $3b
	ccf                                              ; $6eab: $3f
	dec a                                            ; $6eac: $3d
	ld a, [hl-]                                      ; $6ead: $3a
	dec [hl]                                         ; $6eae: $35
	add hl, bc                                       ; $6eaf: $09
	cpl                                              ; $6eb0: $2f
	sub [hl]                                         ; $6eb1: $96
	ldh a, [hDisp1_SCX]                                     ; $6eb2: $f0 $91
	ldh a, [rAUD2HIGH]                               ; $6eb4: $f0 $19
	ld b, d                                          ; $6eb6: $42
	halt                                             ; $6eb7: $76
	ld b, d                                          ; $6eb8: $42
	ld c, c                                          ; $6eb9: $49
	ld d, h                                          ; $6eba: $54
	ld e, a                                          ; $6ebb: $5f
	ld b, a                                          ; $6ebc: $47
	ld c, a                                          ; $6ebd: $4f
	add hl, bc                                       ; $6ebe: $09
	cpl                                              ; $6ebf: $2f
	pop af                                           ; $6ec0: $f1
	cp l                                             ; $6ec1: $bd
	ld l, b                                          ; $6ec2: $68
	ld b, d                                          ; $6ec3: $42
	ld b, l                                          ; $6ec4: $45
	add hl, sp                                       ; $6ec5: $39
	ld b, a                                          ; $6ec6: $47
	add hl, bc                                       ; $6ec7: $09
	cpl                                              ; $6ec8: $2f
	ldh a, [$67]                                     ; $6ec9: $f0 $67
	pop af                                           ; $6ecb: $f1
	ld hl, $f03a                                     ; $6ecc: $21 $3a $f0
	ld b, a                                          ; $6ecf: $47
	ldh a, [$2a]                                     ; $6ed0: $f0 $2a
	ld d, e                                          ; $6ed2: $53
	pop af                                           ; $6ed3: $f1
	sub d                                            ; $6ed4: $92
	ld d, l                                          ; $6ed5: $55
	ccf                                              ; $6ed6: $3f
	add hl, bc                                       ; $6ed7: $09
	cpl                                              ; $6ed8: $2f
	ret                                              ; $6ed9: $c9


	add hl, sp                                       ; $6eda: $39
	ld d, b                                          ; $6edb: $50
	ld l, [hl]                                       ; $6edc: $6e
	ld d, d                                          ; $6edd: $52
	ld a, $38                                        ; $6ede: $3e $38
	ld a, [hl-]                                      ; $6ee0: $3a
	dec [hl]                                         ; $6ee1: $35
	add hl, bc                                       ; $6ee2: $09
	cpl                                              ; $6ee3: $2f
	ldh a, [$f7]                                     ; $6ee4: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $6ee6: $f0 $17
	ld c, e                                          ; $6ee8: $4b
	inc [hl]                                         ; $6ee9: $34
	ldh a, [$79]                                     ; $6eea: $f0 $79
	ld c, [hl]                                       ; $6eec: $4e
	ld d, l                                          ; $6eed: $55
	ccf                                              ; $6eee: $3f
	add hl, bc                                       ; $6eef: $09
	cpl                                              ; $6ef0: $2f
	inc a                                            ; $6ef1: $3c
	ld h, e                                          ; $6ef2: $63
	db $ec                                           ; $6ef3: $ec
	ld [$0934], sp                                   ; $6ef4: $08 $34 $09
	cpl                                              ; $6ef7: $2f
	ldh a, [c]                                       ; $6ef8: $f2
	ld a, [hl]                                       ; $6ef9: $7e
	ld e, h                                          ; $6efa: $5c
	dec sp                                           ; $6efb: $3b
	pop af                                           ; $6efc: $f1
	rla                                              ; $6efd: $17
	jr c, jr_08a_6f3c                                ; $6efe: $38 $3c

	ld d, b                                          ; $6f00: $50
	inc [hl]                                         ; $6f01: $34
	add hl, bc                                       ; $6f02: $09
	cpl                                              ; $6f03: $2f
	ret                                              ; $6f04: $c9


	db $ed                                           ; $6f05: $ed
	ld h, h                                          ; $6f06: $64
	ld b, h                                          ; $6f07: $44
	dec [hl]                                         ; $6f08: $35
	add hl, bc                                       ; $6f09: $09
	cpl                                              ; $6f0a: $2f
	ld b, h                                          ; $6f0b: $44
	ld e, l                                          ; $6f0c: $5d
	ld e, d                                          ; $6f0d: $5a
	inc [hl]                                         ; $6f0e: $34
	add hl, bc                                       ; $6f0f: $09
	cpl                                              ; $6f10: $2f
	jp hl                                            ; $6f11: $e9


	sub a                                            ; $6f12: $97
	add hl, bc                                       ; $6f13: $09
	cpl                                              ; $6f14: $2f
	ldh a, [$cd]                                     ; $6f15: $f0 $cd
	ld e, e                                          ; $6f17: $5b
	adc c                                            ; $6f18: $89
	sbc a                                            ; $6f19: $9f
	ld b, a                                          ; $6f1a: $47
	ldh a, [rOCPS]                                   ; $6f1b: $f0 $6a
	add hl, sp                                       ; $6f1d: $39
	dec a                                            ; $6f1e: $3d
	ld [hl], c                                       ; $6f1f: $71
	add hl, bc                                       ; $6f20: $09
	cpl                                              ; $6f21: $2f
	ldh a, [$dd]                                     ; $6f22: $f0 $dd
	ldh a, [$9c]                                     ; $6f24: $f0 $9c
	ld h, d                                          ; $6f26: $62
	sub d                                            ; $6f27: $92
	adc [hl]                                         ; $6f28: $8e
	dec sp                                           ; $6f29: $3b
	ccf                                              ; $6f2a: $3f
	jr c, @+$50                                      ; $6f2b: $38 $4e

	dec [hl]                                         ; $6f2d: $35
	add hl, bc                                       ; $6f2e: $09
	cpl                                              ; $6f2f: $2f
	ldh a, [$cd]                                     ; $6f30: $f0 $cd
	ld e, e                                          ; $6f32: $5b
	ldh a, [rHDMA3]                                  ; $6f33: $f0 $53
	pop af                                           ; $6f35: $f1
	ld a, [hl+]                                      ; $6f36: $2a
	ld b, a                                          ; $6f37: $47
	ldh a, [rOCPS]                                   ; $6f38: $f0 $6a
	add hl, sp                                       ; $6f3a: $39
	dec a                                            ; $6f3b: $3d

jr_08a_6f3c:
	ld [hl], c                                       ; $6f3c: $71
	add hl, bc                                       ; $6f3d: $09
	cpl                                              ; $6f3e: $2f
	sub d                                            ; $6f3f: $92
	adc [hl]                                         ; $6f40: $8e
	dec sp                                           ; $6f41: $3b
	ccf                                              ; $6f42: $3f
	jr c, jr_08a_6f93                                ; $6f43: $38 $4e

	dec [hl]                                         ; $6f45: $35
	add hl, bc                                       ; $6f46: $09
	cpl                                              ; $6f47: $2f
	ldh a, [rHDMA3]                                  ; $6f48: $f0 $53
	ld e, [hl]                                       ; $6f4a: $5e
	ld a, [hl-]                                      ; $6f4b: $3a
	ld d, l                                          ; $6f4c: $55
	ccf                                              ; $6f4d: $3f
	pop af                                           ; $6f4e: $f1
	xor b                                            ; $6f4f: $a8
	ld a, $38                                        ; $6f50: $3e $38
	dec sp                                           ; $6f52: $3b
	ccf                                              ; $6f53: $3f
	add hl, bc                                       ; $6f54: $09
	cpl                                              ; $6f55: $2f
	ldh a, [c]                                       ; $6f56: $f2
	adc c                                            ; $6f57: $89
	jr c, jr_08a_6f99                                ; $6f58: $38 $3f

	dec a                                            ; $6f5a: $3d
	ld a, [hl-]                                      ; $6f5b: $3a
	ld c, b                                          ; $6f5c: $48
	dec [hl]                                         ; $6f5d: $35
	add hl, bc                                       ; $6f5e: $09
	cpl                                              ; $6f5f: $2f
	halt                                             ; $6f60: $76
	ld c, a                                          ; $6f61: $4f
	inc [hl]                                         ; $6f62: $34
	ret                                              ; $6f63: $c9


	pop af                                           ; $6f64: $f1
	xor b                                            ; $6f65: $a8
	ld a, $38                                        ; $6f66: $3e $38
	ld e, l                                          ; $6f68: $5d
	ld e, d                                          ; $6f69: $5a
	inc [hl]                                         ; $6f6a: $34
	add hl, bc                                       ; $6f6b: $09
	cpl                                              ; $6f6c: $2f
	halt                                             ; $6f6d: $76
	ld d, e                                          ; $6f6e: $53
	pop af                                           ; $6f6f: $f1
	adc d                                            ; $6f70: $8a
	ldh a, [$fb]                                     ; $6f71: $f0 $fb
	ld b, a                                          ; $6f73: $47
	ld a, [hl-]                                      ; $6f74: $3a
	dec sp                                           ; $6f75: $3b
	dec a                                            ; $6f76: $3d
	ld d, b                                          ; $6f77: $50
	add hl, bc                                       ; $6f78: $09
	cpl                                              ; $6f79: $2f
	ldh a, [rHDMA3]                                  ; $6f7a: $f0 $53
	ld e, [hl]                                       ; $6f7c: $5e
	ld a, [hl-]                                      ; $6f7d: $3a
	ld d, l                                          ; $6f7e: $55
	ld a, [hl-]                                      ; $6f7f: $3a
	ld c, [hl]                                       ; $6f80: $4e
	inc a                                            ; $6f81: $3c
	ld c, a                                          ; $6f82: $4f
	add hl, bc                                       ; $6f83: $09
	cpl                                              ; $6f84: $2f
	ld a, $4d                                        ; $6f85: $3e $4d
	ld a, [hl-]                                      ; $6f87: $3a
	jr c, jr_08a_6fc5                                ; $6f88: $38 $3b

	ccf                                              ; $6f8a: $3f
	inc [hl]                                         ; $6f8b: $34
	add hl, bc                                       ; $6f8c: $09
	cpl                                              ; $6f8d: $2f
	ldh a, [c]                                       ; $6f8e: $f2
	rst SubAFromHL                                          ; $6f8f: $d7
	ld a, $40                                        ; $6f90: $3e $40
	add hl, sp                                       ; $6f92: $39

jr_08a_6f93:
	ld b, a                                          ; $6f93: $47
	ld a, $3f                                        ; $6f94: $3e $3f
	dec a                                            ; $6f96: $3d
	dec [hl]                                         ; $6f97: $35
	add hl, bc                                       ; $6f98: $09

jr_08a_6f99:
	cpl                                              ; $6f99: $2f
	ld c, d                                          ; $6f9a: $4a
	ld c, a                                          ; $6f9b: $4f
	inc [hl]                                         ; $6f9c: $34
	db $ed                                           ; $6f9d: $ed
	ld h, h                                          ; $6f9e: $64
	xor $2d                                          ; $6f9f: $ee $2d
	ld d, b                                          ; $6fa1: $50
	ld a, [hl-]                                      ; $6fa2: $3a
	jr c, jr_08a_6fee                                ; $6fa3: $38 $49

	ld [hl], a                                       ; $6fa5: $77
	add hl, sp                                       ; $6fa6: $39
	dec [hl]                                         ; $6fa7: $35
	add hl, bc                                       ; $6fa8: $09
	cpl                                              ; $6fa9: $2f
	xor $06                                          ; $6faa: $ee $06
	ld b, a                                          ; $6fac: $47
	pop af                                           ; $6fad: $f1
	ld c, d                                          ; $6fae: $4a
	ldh a, [$ad]                                     ; $6faf: $f0 $ad
	ld d, e                                          ; $6fb1: $53
	ld c, d                                          ; $6fb2: $4a
	ld e, h                                          ; $6fb3: $5c
	ld c, [hl]                                       ; $6fb4: $4e
	dec sp                                           ; $6fb5: $3b
	ccf                                              ; $6fb6: $3f
	add hl, bc                                       ; $6fb7: $09
	cpl                                              ; $6fb8: $2f
	ld b, l                                          ; $6fb9: $45
	ld e, a                                          ; $6fba: $5f
	ld d, h                                          ; $6fbb: $54
	ld b, c                                          ; $6fbc: $41
	ld c, d                                          ; $6fbd: $4a
	dec a                                            ; $6fbe: $3d
	ld a, [hl-]                                      ; $6fbf: $3a
	dec [hl]                                         ; $6fc0: $35
	add hl, bc                                       ; $6fc1: $09
	cpl                                              ; $6fc2: $2f
	db $eb                                           ; $6fc3: $eb
	sub a                                            ; $6fc4: $97

jr_08a_6fc5:
	inc [hl]                                         ; $6fc5: $34
	ld a, [hl-]                                      ; $6fc6: $3a
	sbc l                                            ; $6fc7: $9d
	ld e, b                                          ; $6fc8: $58
	ld [hl], c                                       ; $6fc9: $71
	ccf                                              ; $6fca: $3f
	ld d, l                                          ; $6fcb: $55
	ld c, l                                          ; $6fcc: $4d
	ccf                                              ; $6fcd: $3f
	ld c, a                                          ; $6fce: $4f
	add hl, bc                                       ; $6fcf: $09
	cpl                                              ; $6fd0: $2f
	jr c, jr_08a_700b                                ; $6fd1: $38 $38

	ld b, d                                          ; $6fd3: $42
	ld b, a                                          ; $6fd4: $47
	ld c, b                                          ; $6fd5: $48
	dec [hl]                                         ; $6fd6: $35
	add hl, bc                                       ; $6fd7: $09
	cpl                                              ; $6fd8: $2f
	ld a, a                                          ; $6fd9: $7f
	sub b                                            ; $6fda: $90
	ld a, [hl-]                                      ; $6fdb: $3a
	ldh a, [rTIMA]                                   ; $6fdc: $f0 $05
	pop af                                           ; $6fde: $f1
	rrca                                             ; $6fdf: $0f
	ld h, d                                          ; $6fe0: $62
	add hl, bc                                       ; $6fe1: $09
	cpl                                              ; $6fe2: $2f
	add hl, sp                                       ; $6fe3: $39
	ld d, b                                          ; $6fe4: $50
	ld l, [hl]                                       ; $6fe5: $6e
	ld d, d                                          ; $6fe6: $52
	ld a, $53                                        ; $6fe7: $3e $53
	dec sp                                           ; $6fe9: $3b
	ccf                                              ; $6fea: $3f
	jr c, jr_08a_703b                                ; $6feb: $38 $4e

	add hl, bc                                       ; $6fed: $09

jr_08a_6fee:
	cpl                                              ; $6fee: $2f
	ld l, h                                          ; $6fef: $6c
	dec a                                            ; $6ff0: $3d
	jr c, jr_08a_7037                                ; $6ff1: $38 $44

	dec sp                                           ; $6ff3: $3b
	dec a                                            ; $6ff4: $3d
	dec [hl]                                         ; $6ff5: $35
	add hl, bc                                       ; $6ff6: $09
	cpl                                              ; $6ff7: $2f
	xor $27                                          ; $6ff8: $ee $27
	xor $2d                                          ; $6ffa: $ee $2d
	add b                                            ; $6ffc: $80
	ld c, a                                          ; $6ffd: $4f
	adc c                                            ; $6ffe: $89
	sbc a                                            ; $6fff: $9f
	ld b, d                                          ; $7000: $42
	ld a, d                                          ; $7001: $7a
	ld d, a                                          ; $7002: $57
	ld b, a                                          ; $7003: $47
	add hl, bc                                       ; $7004: $09
	cpl                                              ; $7005: $2f
	halt                                             ; $7006: $76
	ld b, d                                          ; $7007: $42
	ld h, h                                          ; $7008: $64
	ld [hl], d                                       ; $7009: $72
	pop af                                           ; $700a: $f1

jr_08a_700b:
	add e                                            ; $700b: $83
	jr c, jr_08a_7055                                ; $700c: $38 $47

	ld a, b                                          ; $700e: $78
	ccf                                              ; $700f: $3f
	ld d, l                                          ; $7010: $55
	ld c, l                                          ; $7011: $4d
	ld c, [hl]                                       ; $7012: $4e
	dec [hl]                                         ; $7013: $35
	add hl, bc                                       ; $7014: $09
	cpl                                              ; $7015: $2f
	db $ed                                           ; $7016: $ed
	ld h, d                                          ; $7017: $62
	ld c, c                                          ; $7018: $49
	ldh a, [$b2]                                     ; $7019: $f0 $b2
	ldh a, [$fe]                                     ; $701b: $f0 $fe
	ld b, l                                          ; $701d: $45
	ld d, a                                          ; $701e: $57
	inc [hl]                                         ; $701f: $34
	add hl, bc                                       ; $7020: $09
	cpl                                              ; $7021: $2f
	halt                                             ; $7022: $76
	ld b, d                                          ; $7023: $42
	ldh a, [$d2]                                     ; $7024: $f0 $d2
	ld h, d                                          ; $7026: $62
	ld [hl], d                                       ; $7027: $72
	ld c, [hl]                                       ; $7028: $4e
	ldh a, [$38]                                     ; $7029: $f0 $38
	ld d, e                                          ; $702b: $53
	add hl, bc                                       ; $702c: $09
	cpl                                              ; $702d: $2f
	sub b                                            ; $702e: $90
	ld a, $38                                        ; $702f: $3e $38
	dec sp                                           ; $7031: $3b
	ccf                                              ; $7032: $3f
	inc [hl]                                         ; $7033: $34
	add d                                            ; $7034: $82
	dec sp                                           ; $7035: $3b
	ccf                                              ; $7036: $3f

jr_08a_7037:
	ld d, l                                          ; $7037: $55
	ld c, l                                          ; $7038: $4d
	ld c, [hl]                                       ; $7039: $4e
	dec [hl]                                         ; $703a: $35

jr_08a_703b:
	add hl, bc                                       ; $703b: $09
	cpl                                              ; $703c: $2f
	ld b, b                                          ; $703d: $40
	ld b, c                                          ; $703e: $41
	ld a, [hl-]                                      ; $703f: $3a
	xor $27                                          ; $7040: $ee $27
	ld c, c                                          ; $7042: $49
	ld a, [hl-]                                      ; $7043: $3a
	ld d, b                                          ; $7044: $50
	inc [hl]                                         ; $7045: $34
	add hl, bc                                       ; $7046: $09
	cpl                                              ; $7047: $2f
	xor $27                                          ; $7048: $ee $27
	ld c, e                                          ; $704a: $4b
	ld d, d                                          ; $704b: $52
	ld b, h                                          ; $704c: $44
	ldh a, [rAUD1ENV]                                ; $704d: $f0 $12
	sbc a                                            ; $704f: $9f
	ldh a, [rTIMA]                                   ; $7050: $f0 $05
	db $ec                                           ; $7052: $ec
	jr nz, jr_08a_705e                               ; $7053: $20 $09

jr_08a_7055:
	cpl                                              ; $7055: $2f
	ldh a, [$f7]                                     ; $7056: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $7058: $f0 $17
	ld b, d                                          ; $705a: $42
	pop af                                           ; $705b: $f1
	dec hl                                           ; $705c: $2b
	pop af                                           ; $705d: $f1

jr_08a_705e:
	db $ec                                           ; $705e: $ec
	ld b, d                                          ; $705f: $42
	dec a                                            ; $7060: $3d
	ld [hl], c                                       ; $7061: $71
	ld b, a                                          ; $7062: $47
	inc [hl]                                         ; $7063: $34
	add hl, bc                                       ; $7064: $09
	cpl                                              ; $7065: $2f
	ld c, d                                          ; $7066: $4a
	ld e, h                                          ; $7067: $5c
	ld c, [hl]                                       ; $7068: $4e
	inc a                                            ; $7069: $3c
	ldh a, [$cb]                                     ; $706a: $f0 $cb
	ld d, a                                          ; $706c: $57
	ld b, d                                          ; $706d: $42
	db $ed                                           ; $706e: $ed
	ld h, [hl]                                       ; $706f: $66
	ld h, d                                          ; $7070: $62
	add hl, bc                                       ; $7071: $09
	cpl                                              ; $7072: $2f
	ld a, $3f                                        ; $7073: $3e $3f
	jr c, jr_08a_70cb                                ; $7075: $38 $54

	add hl, sp                                       ; $7077: $39
	ld c, c                                          ; $7078: $49
	ld [hl], a                                       ; $7079: $77
	add hl, sp                                       ; $707a: $39
	dec [hl]                                         ; $707b: $35
	add hl, bc                                       ; $707c: $09
	cpl                                              ; $707d: $2f
	xor $27                                          ; $707e: $ee $27

jr_08a_7080:
	ld c, e                                          ; $7080: $4b
	inc [hl]                                         ; $7081: $34
	ld d, d                                          ; $7082: $52
	ld b, h                                          ; $7083: $44
	db $ed                                           ; $7084: $ed
	ld h, a                                          ; $7085: $67
	dec sp                                           ; $7086: $3b
	pop af                                           ; $7087: $f1
	rla                                              ; $7088: $17
	ld d, l                                          ; $7089: $55
	ccf                                              ; $708a: $3f
	add hl, bc                                       ; $708b: $09
	cpl                                              ; $708c: $2f
	ldh a, [rSVBK]                                   ; $708d: $f0 $70
	ld b, a                                          ; $708f: $47
	ldh a, [$b2]                                     ; $7090: $f0 $b2
	ldh a, [rKEY1]                                   ; $7092: $f0 $4d
	ld b, a                                          ; $7094: $47
	ld h, a                                          ; $7095: $67
	ld d, l                                          ; $7096: $55
	ld c, c                                          ; $7097: $49
	inc [hl]                                         ; $7098: $34
	add hl, bc                                       ; $7099: $09
	cpl                                              ; $709a: $2f
	adc e                                            ; $709b: $8b
	ldh a, [$72]                                     ; $709c: $f0 $72
	ld d, e                                          ; $709e: $53
	add hl, sp                                       ; $709f: $39
	ld c, [hl]                                       ; $70a0: $4e
	ld e, b                                          ; $70a1: $58
	jr c, jr_08a_7101                                ; $70a2: $38 $5d

	ld e, d                                          ; $70a4: $5a
	inc [hl]                                         ; $70a5: $34
	add hl, bc                                       ; $70a6: $09
	cpl                                              ; $70a7: $2f
	jp hl                                            ; $70a8: $e9


	sbc b                                            ; $70a9: $98
	add hl, bc                                       ; $70aa: $09
	cpl                                              ; $70ab: $2f
	add sp, $24                                      ; $70ac: $e8 $24
	dec [hl]                                         ; $70ae: $35
	add hl, bc                                       ; $70af: $09
	cpl                                              ; $70b0: $2f
	ldh a, [$cd]                                     ; $70b1: $f0 $cd
	ld e, e                                          ; $70b3: $5b
	ld b, l                                          ; $70b4: $45
	add hl, sp                                       ; $70b5: $39
	ld a, [hl-]                                      ; $70b6: $3a
	ldh a, [$ee]                                     ; $70b7: $f0 $ee
	ld h, d                                          ; $70b9: $62
	add hl, bc                                       ; $70ba: $09
	cpl                                              ; $70bb: $2f
	pop af                                           ; $70bc: $f1
	ld h, $f0                                        ; $70bd: $26 $f0
	cp [hl]                                          ; $70bf: $be
	ld d, h                                          ; $70c0: $54
	ld c, c                                          ; $70c1: $49
	ld b, a                                          ; $70c2: $47
	ld a, [hl-]                                      ; $70c3: $3a
	dec sp                                           ; $70c4: $3b
	dec a                                            ; $70c5: $3d
	ld d, e                                          ; $70c6: $53
	inc [hl]                                         ; $70c7: $34
	add hl, bc                                       ; $70c8: $09
	cpl                                              ; $70c9: $2f
	ld d, h                                          ; $70ca: $54

jr_08a_70cb:
	ld c, l                                          ; $70cb: $4d
	inc a                                            ; $70cc: $3c
	ld d, b                                          ; $70cd: $50
	ldh a, [hDisp0_SCX]                                     ; $70ce: $f0 $84
	add h                                            ; $70d0: $84
	ld c, d                                          ; $70d1: $4a
	add hl, bc                                       ; $70d2: $09
	cpl                                              ; $70d3: $2f
	pop af                                           ; $70d4: $f1
	ld l, c                                          ; $70d5: $69
	ldh a, [hDisp1_OBP0]                                     ; $70d6: $f0 $93
	ld h, d                                          ; $70d8: $62
	ldh a, [c]                                       ; $70d9: $f2
	dec c                                            ; $70da: $0d
	ld c, [hl]                                       ; $70db: $4e
	dec a                                            ; $70dc: $3d
	ld [hl], c                                       ; $70dd: $71
	inc [hl]                                         ; $70de: $34
	add hl, bc                                       ; $70df: $09
	cpl                                              ; $70e0: $2f
	ld l, b                                          ; $70e1: $68
	ldh a, [$cf]                                     ; $70e2: $f0 $cf
	ldh a, [c]                                       ; $70e4: $f2
	and l                                            ; $70e5: $a5
	pop af                                           ; $70e6: $f1
	dec hl                                           ; $70e7: $2b
	ld d, c                                          ; $70e8: $51
	ld c, [hl]                                       ; $70e9: $4e
	add b                                            ; $70ea: $80
	ld c, a                                          ; $70eb: $4f
	ld d, a                                          ; $70ec: $57
	ld b, h                                          ; $70ed: $44
	dec [hl]                                         ; $70ee: $35
	add hl, bc                                       ; $70ef: $09
	cpl                                              ; $70f0: $2f
	xor $0a                                          ; $70f1: $ee $0a
	ld b, a                                          ; $70f3: $47
	ld c, e                                          ; $70f4: $4b
	ldh a, [rHDMA3]                                  ; $70f5: $f0 $53
	ld e, [hl]                                       ; $70f7: $5e
	ld a, [hl-]                                      ; $70f8: $3a
	ld d, l                                          ; $70f9: $55
	ccf                                              ; $70fa: $3f
	inc [hl]                                         ; $70fb: $34
	add hl, bc                                       ; $70fc: $09
	cpl                                              ; $70fd: $2f
	jr c, jr_08a_7080                                ; $70fe: $38 $80

	ld d, d                                          ; $7100: $52

jr_08a_7101:
	ld c, d                                          ; $7101: $4a
	ld c, a                                          ; $7102: $4f
	di                                               ; $7103: $f3
	jp nz, Jump_08a_4284                             ; $7104: $c2 $84 $42

	ld d, d                                          ; $7107: $52
	ld d, d                                          ; $7108: $52
	ld b, h                                          ; $7109: $44
	ld c, c                                          ; $710a: $49
	add hl, bc                                       ; $710b: $09
	cpl                                              ; $710c: $2f
	add sp, $25                                      ; $710d: $e8 $25
	add hl, bc                                       ; $710f: $09
	cpl                                              ; $7110: $2f
	ld d, d                                          ; $7111: $52
	ld e, e                                          ; $7112: $5b
	ld [hl], c                                       ; $7113: $71
	ld b, a                                          ; $7114: $47
	ldh a, [$dd]                                     ; $7115: $f0 $dd
	ldh a, [$9c]                                     ; $7117: $f0 $9c
	ld a, $3f                                        ; $7119: $3e $3f
	add hl, bc                                       ; $711b: $09
	cpl                                              ; $711c: $2f
	ldh a, [$0a]                                     ; $711d: $f0 $0a
	ld d, l                                          ; $711f: $55
	pop af                                           ; $7120: $f1
	dec hl                                           ; $7121: $2b
	adc c                                            ; $7122: $89
	ld a, $3a                                        ; $7123: $3e $3a
	ld e, h                                          ; $7125: $5c
	ld d, [hl]                                       ; $7126: $56
	ld a, [hl-]                                      ; $7127: $3a
	ld c, b                                          ; $7128: $48
	dec [hl]                                         ; $7129: $35
	add hl, bc                                       ; $712a: $09
	cpl                                              ; $712b: $2f
	jp hl                                            ; $712c: $e9


	sbc h                                            ; $712d: $9c
	ld b, [hl]                                       ; $712e: $46
	ld c, [hl]                                       ; $712f: $4e
	ld e, l                                          ; $7130: $5d
	ld e, d                                          ; $7131: $5a
	add hl, bc                                       ; $7132: $09
	cpl                                              ; $7133: $2f
	xor $0a                                          ; $7134: $ee $0a
	ld b, a                                          ; $7136: $47
	xor $2d                                          ; $7137: $ee $2d
	add b                                            ; $7139: $80
	ld c, a                                          ; $713a: $4f
	add hl, bc                                       ; $713b: $09
	cpl                                              ; $713c: $2f
	ld c, e                                          ; $713d: $4b
	dec sp                                           ; $713e: $3b
	ldh a, [$36]                                     ; $713f: $f0 $36
	ld h, d                                          ; $7141: $62
	inc a                                            ; $7142: $3c
	ld e, l                                          ; $7143: $5d
	ld d, b                                          ; $7144: $50
	ld c, l                                          ; $7145: $4d
	ccf                                              ; $7146: $3f
	jr c, @+$50                                      ; $7147: $38 $4e

	dec [hl]                                         ; $7149: $35
	add hl, bc                                       ; $714a: $09
	cpl                                              ; $714b: $2f
	ld b, b                                          ; $714c: $40
	add hl, sp                                       ; $714d: $39
	ld b, b                                          ; $714e: $40
	add hl, sp                                       ; $714f: $39
	inc [hl]                                         ; $7150: $34
	ldh a, [$f7]                                     ; $7151: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $7153: $f0 $17
	ld c, e                                          ; $7155: $4b
	add hl, bc                                       ; $7156: $09
	cpl                                              ; $7157: $2f
	ld b, [hl]                                       ; $7158: $46
	ld d, d                                          ; $7159: $52
	ld d, a                                          ; $715a: $57
	ldh a, [$fe]                                     ; $715b: $f0 $fe
	ld d, b                                          ; $715d: $50
	ldh a, [$fe]                                     ; $715e: $f0 $fe
	ld d, b                                          ; $7160: $50
	add hl, bc                                       ; $7161: $09
	cpl                                              ; $7162: $2f
	ld a, $3f                                        ; $7163: $3e $3f
	jr c, jr_08a_71b5                                ; $7165: $38 $4e

	ld c, c                                          ; $7167: $49
	inc [hl]                                         ; $7168: $34
	add hl, bc                                       ; $7169: $09
	cpl                                              ; $716a: $2f
	ldh a, [$0a]                                     ; $716b: $f0 $0a
	ld d, l                                          ; $716d: $55
	pop af                                           ; $716e: $f1
	dec hl                                           ; $716f: $2b
	pop af                                           ; $7170: $f1
	db $ec                                           ; $7171: $ec
	ld h, d                                          ; $7172: $62
	ldh a, [$ec]                                     ; $7173: $f0 $ec
	ld [hl], c                                       ; $7175: $71

jr_08a_7176:
	ld a, [hl-]                                      ; $7176: $3a
	ld e, h                                          ; $7177: $5c
	ld d, [hl]                                       ; $7178: $56
	ld a, [hl-]                                      ; $7179: $3a
	ld c, b                                          ; $717a: $48
	dec [hl]                                         ; $717b: $35
	add hl, bc                                       ; $717c: $09
	cpl                                              ; $717d: $2f
	ldh a, [$f7]                                     ; $717e: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $7180: $f0 $17
	ld c, e                                          ; $7182: $4b
	inc [hl]                                         ; $7183: $34
	halt                                             ; $7184: $76
	ld b, d                                          ; $7185: $42
	ldh a, [$65]                                     ; $7186: $f0 $65
	ld h, d                                          ; $7188: $62
	add hl, bc                                       ; $7189: $09
	cpl                                              ; $718a: $2f
	db $ed                                           ; $718b: $ed
	ld h, h                                          ; $718c: $64
	ld a, $3f                                        ; $718d: $3e $3f
	inc [hl]                                         ; $718f: $34
	pop af                                           ; $7190: $f1
	adc a                                            ; $7191: $8f
	ld a, $38                                        ; $7192: $3e $38
	ldh a, [rTMA]                                    ; $7194: $f0 $06
	ldh a, [$2a]                                     ; $7196: $f0 $2a
	ld h, d                                          ; $7198: $62
	add hl, bc                                       ; $7199: $09
	cpl                                              ; $719a: $2f
	db $f4                                           ; $719b: $f4
	rrca                                             ; $719c: $0f
	dec sp                                           ; $719d: $3b
	ccf                                              ; $719e: $3f
	inc [hl]                                         ; $719f: $34
	pop af                                           ; $71a0: $f1
	cp l                                             ; $71a1: $bd
	pop af                                           ; $71a2: $f1
	ld l, h                                          ; $71a3: $6c
	ld [hl], d                                       ; $71a4: $72
	pop af                                           ; $71a5: $f1
	add e                                            ; $71a6: $83
	jr c, jr_08a_71f0                                ; $71a7: $38 $47

	add hl, bc                                       ; $71a9: $09
	cpl                                              ; $71aa: $2f
	ld a, b                                          ; $71ab: $78
	ccf                                              ; $71ac: $3f
	ld d, l                                          ; $71ad: $55
	ld c, l                                          ; $71ae: $4d
	ccf                                              ; $71af: $3f
	jr c, jr_08a_7200                                ; $71b0: $38 $4e

	dec [hl]                                         ; $71b2: $35
	add hl, bc                                       ; $71b3: $09
	cpl                                              ; $71b4: $2f

jr_08a_71b5:
	xor $0a                                          ; $71b5: $ee $0a
	add sp, $7e                                      ; $71b7: $e8 $7e
	dec [hl]                                         ; $71b9: $35
	add hl, bc                                       ; $71ba: $09
	cpl                                              ; $71bb: $2f
	ldh a, [$f7]                                     ; $71bc: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $71be: $f0 $17
	ld c, e                                          ; $71c0: $4b
	ldh a, [$79]                                     ; $71c1: $f0 $79
	ld c, [hl]                                       ; $71c3: $4e
	ld d, l                                          ; $71c4: $55
	ccf                                              ; $71c5: $3f
	add hl, bc                                       ; $71c6: $09
	cpl                                              ; $71c7: $2f
	sbc [hl]                                         ; $71c8: $9e
	pop af                                           ; $71c9: $f1
	dec a                                            ; $71ca: $3d
	ld e, h                                          ; $71cb: $5c
	ld a, [hl-]                                      ; $71cc: $3a
	pop af                                           ; $71cd: $f1
	ld a, [bc]                                       ; $71ce: $0a
	pop af                                           ; $71cf: $f1
	inc h                                            ; $71d0: $24
	ld a, [hl-]                                      ; $71d1: $3a
	ld b, d                                          ; $71d2: $42
	ld c, d                                          ; $71d3: $4a
	add hl, bc                                       ; $71d4: $09
	cpl                                              ; $71d5: $2f
	ldh a, [$98]                                     ; $71d6: $f0 $98
	inc a                                            ; $71d8: $3c
	ld d, b                                          ; $71d9: $50
	ld c, a                                          ; $71da: $4f
	adc e                                            ; $71db: $8b
	inc a                                            ; $71dc: $3c
	ld c, l                                          ; $71dd: $4d
	ccf                                              ; $71de: $3f
	add hl, bc                                       ; $71df: $09
	cpl                                              ; $71e0: $2f
	jp hl                                            ; $71e1: $e9


	sbc d                                            ; $71e2: $9a
	add hl, bc                                       ; $71e3: $09
	cpl                                              ; $71e4: $2f
	halt                                             ; $71e5: $76
	ld c, c                                          ; $71e6: $49
	ldh a, [$cd]                                     ; $71e7: $f0 $cd
	ld e, e                                          ; $71e9: $5b
	pop af                                           ; $71ea: $f1
	dec hl                                           ; $71eb: $2b
	pop af                                           ; $71ec: $f1
	db $ec                                           ; $71ed: $ec
	ld b, h                                          ; $71ee: $44
	dec sp                                           ; $71ef: $3b

jr_08a_71f0:
	dec a                                            ; $71f0: $3d
	dec [hl]                                         ; $71f1: $35
	add hl, bc                                       ; $71f2: $09
	cpl                                              ; $71f3: $2f
	jr c, jr_08a_7176                                ; $71f4: $38 $80

	ld b, d                                          ; $71f6: $42
	ld d, d                                          ; $71f7: $52
	ld b, a                                          ; $71f8: $47
	inc [hl]                                         ; $71f9: $34
	add hl, bc                                       ; $71fa: $09
	cpl                                              ; $71fb: $2f
	ldh a, [$75]                                     ; $71fc: $f0 $75
	ldh a, [$8c]                                     ; $71fe: $f0 $8c

jr_08a_7200:
	db $ec                                           ; $7200: $ec
	add hl, de                                       ; $7201: $19
	ld e, a                                          ; $7202: $5f
	add hl, sp                                       ; $7203: $39
	ld c, b                                          ; $7204: $48
	dec [hl]                                         ; $7205: $35
	add hl, bc                                       ; $7206: $09
	cpl                                              ; $7207: $2f
	adc b                                            ; $7208: $88
	sub c                                            ; $7209: $91
	ld c, e                                          ; $720a: $4b
	inc [hl]                                         ; $720b: $34
	xor $06                                          ; $720c: $ee $06
	ld b, a                                          ; $720e: $47
	add hl, bc                                       ; $720f: $09
	cpl                                              ; $7210: $2f
	add b                                            ; $7211: $80
	jr c, jr_08a_7253                                ; $7212: $38 $3f

	jr c, jr_08a_7272                                ; $7214: $38 $5c

	dec a                                            ; $7216: $3d
	inc a                                            ; $7217: $3c
	dec sp                                           ; $7218: $3b
	dec a                                            ; $7219: $3d
	add hl, bc                                       ; $721a: $09
	cpl                                              ; $721b: $2f
	ld l, h                                          ; $721c: $6c
	dec a                                            ; $721d: $3d
	jr c, @+$46                                      ; $721e: $38 $44

	ld e, l                                          ; $7220: $5d
	ld e, d                                          ; $7221: $5a
	inc [hl]                                         ; $7222: $34
	add hl, bc                                       ; $7223: $09
	cpl                                              ; $7224: $2f
	db $ec                                           ; $7225: $ec
	ld bc, $ee34                                     ; $7226: $01 $34 $ee
	add hl, hl                                       ; $7229: $29
	ld c, a                                          ; $722a: $4f
	add hl, bc                                       ; $722b: $09
	cpl                                              ; $722c: $2f
	ldh a, [$cd]                                     ; $722d: $f0 $cd
	ld e, e                                          ; $722f: $5b
	ldh a, [$cc]                                     ; $7230: $f0 $cc
	pop af                                           ; $7232: $f1
	ld h, d                                          ; $7233: $62
	sbc a                                            ; $7234: $9f
	ld b, h                                          ; $7235: $44
	dec sp                                           ; $7236: $3b
	dec a                                            ; $7237: $3d
	dec [hl]                                         ; $7238: $35
	add hl, bc                                       ; $7239: $09
	cpl                                              ; $723a: $2f
	ld c, d                                          ; $723b: $4a
	ld c, a                                          ; $723c: $4f
	inc [hl]                                         ; $723d: $34
	ldh a, [$f7]                                     ; $723e: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $7240: $f0 $17
	dec sp                                           ; $7242: $3b
	ccf                                              ; $7243: $3f
	add hl, bc                                       ; $7244: $09
	cpl                                              ; $7245: $2f
	pop af                                           ; $7246: $f1
	sub $38                                          ; $7247: $d6 $38
	jr c, jr_08a_728c                                ; $7249: $38 $41

	ld b, h                                          ; $724b: $44
	ld b, l                                          ; $724c: $45
	ld a, [hl-]                                      ; $724d: $3a
	ld [hl], h                                       ; $724e: $74
	ld c, b                                          ; $724f: $48
	dec [hl]                                         ; $7250: $35
	add hl, bc                                       ; $7251: $09
	cpl                                              ; $7252: $2f

jr_08a_7253:
	ldh a, [$cd]                                     ; $7253: $f0 $cd
	ld e, e                                          ; $7255: $5b
	ld d, l                                          ; $7256: $55
	ldh a, [$8e]                                     ; $7257: $f0 $8e
	ldh a, [rP1]                                     ; $7259: $f0 $00
	ld e, c                                          ; $725b: $59
	ldh a, [rDIV]                                    ; $725c: $f0 $04
	ld e, c                                          ; $725e: $59
	ld c, d                                          ; $725f: $4a
	inc [hl]                                         ; $7260: $34
	add hl, bc                                       ; $7261: $09
	cpl                                              ; $7262: $2f
	xor $06                                          ; $7263: $ee $06
	ld b, a                                          ; $7265: $47
	inc [hl]                                         ; $7266: $34
	ldh a, [$3d]                                     ; $7267: $f0 $3d
	ldh a, [$03]                                     ; $7269: $f0 $03
	ldh a, [rAUD4LEN]                                ; $726b: $f0 $20
	ld a, l                                          ; $726d: $7d
	ld l, c                                          ; $726e: $69
	ld h, d                                          ; $726f: $62
	add hl, bc                                       ; $7270: $09
	cpl                                              ; $7271: $2f

jr_08a_7272:
	db $ed                                           ; $7272: $ed
	ld bc, $4e38                                     ; $7273: $01 $38 $4e
	dec [hl]                                         ; $7276: $35
	add hl, bc                                       ; $7277: $09
	cpl                                              ; $7278: $2f
	db $f4                                           ; $7279: $f4
	ld c, $f3                                        ; $727a: $0e $f3
	pop bc                                           ; $727c: $c1
	adc c                                            ; $727d: $89
	sbc a                                            ; $727e: $9f
	ld b, a                                          ; $727f: $47
	add hl, bc                                       ; $7280: $09
	cpl                                              ; $7281: $2f
	db $f4                                           ; $7282: $f4
	ld c, $f3                                        ; $7283: $0e $f3
	pop bc                                           ; $7285: $c1
	db $f4                                           ; $7286: $f4
	adc h                                            ; $7287: $8c
	ld b, a                                          ; $7288: $47
	ld a, [hl-]                                      ; $7289: $3a
	dec sp                                           ; $728a: $3b
	ccf                                              ; $728b: $3f

jr_08a_728c:
	inc [hl]                                         ; $728c: $34
	add hl, bc                                       ; $728d: $09
	cpl                                              ; $728e: $2f
	halt                                             ; $728f: $76
	ld b, d                                          ; $7290: $42
	ldh a, [$f6]                                     ; $7291: $f0 $f6
	ldh a, [rAUDVOL]                                 ; $7293: $f0 $24
	ld h, d                                          ; $7295: $62
	ld a, $3d                                        ; $7296: $3e $3d
	jr c, jr_08a_72d5                                ; $7298: $38 $3b

	ccf                                              ; $729a: $3f
	add hl, bc                                       ; $729b: $09
	cpl                                              ; $729c: $2f
	jr c, jr_08a_72da                                ; $729d: $38 $3b

	ccf                                              ; $729f: $3f
	ld d, l                                          ; $72a0: $55
	ld c, l                                          ; $72a1: $4d
	dec a                                            ; $72a2: $3d
	dec [hl]                                         ; $72a3: $35
	add hl, bc                                       ; $72a4: $09
	cpl                                              ; $72a5: $2f
	ld l, d                                          ; $72a6: $6a
	ld c, e                                          ; $72a7: $4b
	inc [hl]                                         ; $72a8: $34
	ld b, b                                          ; $72a9: $40
	ld b, c                                          ; $72aa: $41
	ld a, [hl-]                                      ; $72ab: $3a
	xor $29                                          ; $72ac: $ee $29
	ld d, e                                          ; $72ae: $53
	inc [hl]                                         ; $72af: $34
	add hl, bc                                       ; $72b0: $09
	cpl                                              ; $72b1: $2f
	ld c, c                                          ; $72b2: $49
	ccf                                              ; $72b3: $3f
	ld c, a                                          ; $72b4: $4f
	jr c, jr_08a_7300                                ; $72b5: $38 $49

	ld h, h                                          ; $72b7: $64
	ld a, $55                                        ; $72b8: $3e $55
	ld [hl], a                                       ; $72ba: $77
	ld e, [hl]                                       ; $72bb: $5e
	ld c, [hl]                                       ; $72bc: $4e
	dec [hl]                                         ; $72bd: $35
	add hl, bc                                       ; $72be: $09
	cpl                                              ; $72bf: $2f
	adc b                                            ; $72c0: $88
	sub c                                            ; $72c1: $91
	ld c, e                                          ; $72c2: $4b
	inc [hl]                                         ; $72c3: $34
	ldh a, [$cd]                                     ; $72c4: $f0 $cd
	ld e, e                                          ; $72c6: $5b
	pop af                                           ; $72c7: $f1
	dec hl                                           ; $72c8: $2b
	pop af                                           ; $72c9: $f1
	db $ec                                           ; $72ca: $ec
	ld b, a                                          ; $72cb: $47
	add hl, bc                                       ; $72cc: $09
	cpl                                              ; $72cd: $2f
	pop af                                           ; $72ce: $f1
	dec hl                                           ; $72cf: $2b
	ld l, h                                          ; $72d0: $6c
	dec a                                            ; $72d1: $3d
	inc a                                            ; $72d2: $3c
	dec sp                                           ; $72d3: $3b
	dec a                                            ; $72d4: $3d

jr_08a_72d5:
	add hl, bc                                       ; $72d5: $09
	cpl                                              ; $72d6: $2f
	ld e, b                                          ; $72d7: $58
	ld d, c                                          ; $72d8: $51
	ld d, e                                          ; $72d9: $53

jr_08a_72da:
	ld b, a                                          ; $72da: $47
	xor $05                                          ; $72db: $ee $05
	ld b, h                                          ; $72dd: $44
	dec sp                                           ; $72de: $3b
	dec a                                            ; $72df: $3d
	ld l, h                                          ; $72e0: $6c
	dec a                                            ; $72e1: $3d
	jr c, jr_08a_7328                                ; $72e2: $38 $44

	dec [hl]                                         ; $72e4: $35
	add hl, bc                                       ; $72e5: $09
	cpl                                              ; $72e6: $2f
	ldh a, [$f7]                                     ; $72e7: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $72e9: $f0 $17
	ld c, c                                          ; $72eb: $49
	ld c, e                                          ; $72ec: $4b
	ld h, h                                          ; $72ed: $64
	pop af                                           ; $72ee: $f1
	ld d, a                                          ; $72ef: $57
	jr c, @+$49                                      ; $72f0: $38 $47

	inc [hl]                                         ; $72f2: $34
	ld d, d                                          ; $72f3: $52
	ld b, h                                          ; $72f4: $44
	add hl, bc                                       ; $72f5: $09
	cpl                                              ; $72f6: $2f
	ldh a, [$63]                                     ; $72f7: $f0 $63
	pop af                                           ; $72f9: $f1
	dec sp                                           ; $72fa: $3b
	ld a, $46                                        ; $72fb: $3e $46
	ld e, [hl]                                       ; $72fd: $5e
	ccf                                              ; $72fe: $3f
	ld a, [hl-]                                      ; $72ff: $3a

jr_08a_7300:
	jr c, jr_08a_735f                                ; $7300: $38 $5d

	ld e, d                                          ; $7302: $5a
	add hl, bc                                       ; $7303: $09
	cpl                                              ; $7304: $2f
	ld [$34ab], a                                    ; $7305: $ea $ab $34
	xor $1e                                          ; $7308: $ee $1e
	db $ec                                           ; $730a: $ec
	di                                               ; $730b: $f3
	ld d, e                                          ; $730c: $53
	add hl, bc                                       ; $730d: $09
	cpl                                              ; $730e: $2f
	ldh a, [rAUD2ENV]                                ; $730f: $f0 $17
	db $ec                                           ; $7311: $ec
	ld b, [hl]                                       ; $7312: $46
	ld c, e                                          ; $7313: $4b
	ld c, b                                          ; $7314: $48
	dec [hl]                                         ; $7315: $35
	add hl, bc                                       ; $7316: $09
	cpl                                              ; $7317: $2f
	ld a, $3c                                        ; $7318: $3e $3c
	ld c, a                                          ; $731a: $4f
	halt                                             ; $731b: $76
	ld b, d                                          ; $731c: $42
	ld d, h                                          ; $731d: $54
	ld c, c                                          ; $731e: $49
	ld h, d                                          ; $731f: $62
	add hl, bc                                       ; $7320: $09
	cpl                                              ; $7321: $2f
	pop af                                           ; $7322: $f1
	ld c, h                                          ; $7323: $4c
	dec sp                                           ; $7324: $3b
	ccf                                              ; $7325: $3f
	jr c, jr_08a_7365                                ; $7326: $38 $3d

jr_08a_7328:
	ld a, [hl-]                                      ; $7328: $3a
	ld b, c                                          ; $7329: $41
	ccf                                              ; $732a: $3f
	dec [hl]                                         ; $732b: $35
	add hl, bc                                       ; $732c: $09
	cpl                                              ; $732d: $2f
	ldh a, [$f7]                                     ; $732e: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $7330: $f0 $17
	ld c, e                                          ; $7332: $4b
	db $ec                                           ; $7333: $ec
	ld e, [hl]                                       ; $7334: $5e
	ld b, d                                          ; $7335: $42
	add hl, bc                                       ; $7336: $09
	cpl                                              ; $7337: $2f
	ldh a, [rSVBK]                                   ; $7338: $f0 $70
	di                                               ; $733a: $f3
	ld c, b                                          ; $733b: $48
	ld h, d                                          ; $733c: $62
	ldh a, [c]                                       ; $733d: $f2
	ld hl, $3f3b                                     ; $733e: $21 $3b $3f
	db $ec                                           ; $7341: $ec
	push de                                          ; $7342: $d5
	ld b, d                                          ; $7343: $42
	ld b, h                                          ; $7344: $44
	ld d, e                                          ; $7345: $53
	inc [hl]                                         ; $7346: $34
	add hl, bc                                       ; $7347: $09
	cpl                                              ; $7348: $2f
	ldh a, [$63]                                     ; $7349: $f0 $63
	sbc d                                            ; $734b: $9a
	ldh a, [$62]                                     ; $734c: $f0 $62
	ld c, d                                          ; $734e: $4a
	ld b, [hl]                                       ; $734f: $46
	ld c, [hl]                                       ; $7350: $4e
	push af                                          ; $7351: $f5
	ld l, a                                          ; $7352: $6f
	pop af                                           ; $7353: $f1
	ccf                                              ; $7354: $3f
	ld c, a                                          ; $7355: $4f
	add hl, bc                                       ; $7356: $09
	cpl                                              ; $7357: $2f
	add b                                            ; $7358: $80
	ld c, h                                          ; $7359: $4c
	ldh a, [c]                                       ; $735a: $f2
	ld h, a                                          ; $735b: $67
	ld c, h                                          ; $735c: $4c
	inc [hl]                                         ; $735d: $34
	ld h, h                                          ; $735e: $64

jr_08a_735f:
	inc a                                            ; $735f: $3c
	ld a, $38                                        ; $7360: $3e $38
	ld c, c                                          ; $7362: $49
	add hl, bc                                       ; $7363: $09
	cpl                                              ; $7364: $2f

jr_08a_7365:
	ld [hl], a                                       ; $7365: $77
	dec sp                                           ; $7366: $3b
	ccf                                              ; $7367: $3f
	jr c, jr_08a_73a7                                ; $7368: $38 $3d

	ld d, b                                          ; $736a: $50
	ld a, $55                                        ; $736b: $3e $55
	add hl, bc                                       ; $736d: $09
	cpl                                              ; $736e: $2f
	ld d, h                                          ; $736f: $54
	ld b, d                                          ; $7370: $42
	ldh a, [$c6]                                     ; $7371: $f0 $c6
	ldh a, [rHDMA3]                                  ; $7373: $f0 $53
	ld b, a                                          ; $7375: $47
	add hl, bc                                       ; $7376: $09
	cpl                                              ; $7377: $2f
	ld b, b                                          ; $7378: $40
	ld b, c                                          ; $7379: $41
	ld a, [hl-]                                      ; $737a: $3a
	pop af                                           ; $737b: $f1
	or d                                             ; $737c: $b2
	pop af                                           ; $737d: $f1
	ld c, b                                          ; $737e: $48
	ldh a, [rSB]                                     ; $737f: $f0 $01
	dec a                                            ; $7381: $3d
	ldh a, [rSVBK]                                   ; $7382: $f0 $70
	di                                               ; $7384: $f3
	ld c, b                                          ; $7385: $48
	ld h, d                                          ; $7386: $62
	add hl, bc                                       ; $7387: $09
	cpl                                              ; $7388: $2f
	ld a, [hl-]                                      ; $7389: $3a
	ld d, l                                          ; $738a: $55
	ld a, $3d                                        ; $738b: $3e $3d
	ld d, b                                          ; $738d: $50
	ld a, $38                                        ; $738e: $3e $38
	dec [hl]                                         ; $7390: $35
	add hl, bc                                       ; $7391: $09
	cpl                                              ; $7392: $2f
	ld [hl], l                                       ; $7393: $75
	ld a, l                                          ; $7394: $7d
	ld c, e                                          ; $7395: $4b
	inc [hl]                                         ; $7396: $34
	db $ec                                           ; $7397: $ec
	ld e, [hl]                                       ; $7398: $5e
	ld b, d                                          ; $7399: $42
	add hl, bc                                       ; $739a: $09
	cpl                                              ; $739b: $2f
	xor $08                                          ; $739c: $ee $08
	pop af                                           ; $739e: $f1
	ld b, [hl]                                       ; $739f: $46
	ld c, c                                          ; $73a0: $49
	ld a, $3f                                        ; $73a1: $3e $3f
	add hl, bc                                       ; $73a3: $09
	cpl                                              ; $73a4: $2f
	db $ec                                           ; $73a5: $ec
	di                                               ; $73a6: $f3

jr_08a_73a7:
	ldh a, [$50]                                     ; $73a7: $f0 $50
	ldh a, [$03]                                     ; $73a9: $f0 $03
	ld e, c                                          ; $73ab: $59
	add c                                            ; $73ac: $81
	ld h, d                                          ; $73ad: $62
	add hl, bc                                       ; $73ae: $09
	cpl                                              ; $73af: $2f
	di                                               ; $73b0: $f3
	push de                                          ; $73b1: $d5
	ld d, e                                          ; $73b2: $53
	ld a, [hl-]                                      ; $73b3: $3a
	ld e, l                                          ; $73b4: $5d
	ld c, l                                          ; $73b5: $4d
	ld a, e                                          ; $73b6: $7b
	ld a, [hl-]                                      ; $73b7: $3a
	ld d, b                                          ; $73b8: $50
	ld a, [hl-]                                      ; $73b9: $3a
	jr c, jr_08a_73fe                                ; $73ba: $38 $42

	ld c, d                                          ; $73bc: $4a
	inc [hl]                                         ; $73bd: $34
	add hl, bc                                       ; $73be: $09
	cpl                                              ; $73bf: $2f
	db $f4                                           ; $73c0: $f4
	sub [hl]                                         ; $73c1: $96
	di                                               ; $73c2: $f3
	dec b                                            ; $73c3: $05
	adc c                                            ; $73c4: $89
	ld h, d                                          ; $73c5: $62
	adc c                                            ; $73c6: $89
	ldh a, [rKEY1]                                   ; $73c7: $f0 $4d
	ld b, a                                          ; $73c9: $47
	add hl, bc                                       ; $73ca: $09
	cpl                                              ; $73cb: $2f
	db $ec                                           ; $73cc: $ec
	ld d, l                                          ; $73cd: $55
	ld b, a                                          ; $73ce: $47
	db $ed                                           ; $73cf: $ed
	sub b                                            ; $73d0: $90
	ld d, c                                          ; $73d1: $51
	ld c, [hl]                                       ; $73d2: $4e
	add hl, bc                                       ; $73d3: $09
	cpl                                              ; $73d4: $2f
	ld d, h                                          ; $73d5: $54
	ld c, c                                          ; $73d6: $49
	ld b, a                                          ; $73d7: $47
	ld a, [hl-]                                      ; $73d8: $3a
	dec sp                                           ; $73d9: $3b
	dec a                                            ; $73da: $3d
	dec [hl]                                         ; $73db: $35
	add hl, bc                                       ; $73dc: $09
	cpl                                              ; $73dd: $2f
	ld d, h                                          ; $73de: $54
	ld b, c                                          ; $73df: $41
	ld a, [hl-]                                      ; $73e0: $3a
	ldh a, [$f7]                                     ; $73e1: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $73e3: $f0 $17
	ld h, d                                          ; $73e5: $62
	ldh a, [rHDMA1]                                  ; $73e6: $f0 $51
	dec sp                                           ; $73e8: $3b
	ccf                                              ; $73e9: $3f
	ld a, $52                                        ; $73ea: $3e $52
	dec sp                                           ; $73ec: $3b
	ccf                                              ; $73ed: $3f
	add hl, bc                                       ; $73ee: $09
	cpl                                              ; $73ef: $2f
	ld d, h                                          ; $73f0: $54
	ld c, l                                          ; $73f1: $4d
	inc a                                            ; $73f2: $3c
	ld d, b                                          ; $73f3: $50
	ldh a, [$bc]                                     ; $73f4: $f0 $bc
	inc [hl]                                         ; $73f6: $34
	add hl, bc                                       ; $73f7: $09
	cpl                                              ; $73f8: $2f
	halt                                             ; $73f9: $76
	ld c, e                                          ; $73fa: $4b
	ld l, l                                          ; $73fb: $6d
	ldh a, [$65]                                     ; $73fc: $f0 $65

jr_08a_73fe:
	ld e, d                                          ; $73fe: $5a
	add hl, sp                                       ; $73ff: $39
	ld d, c                                          ; $7400: $51
	ld c, l                                          ; $7401: $4d
	ld a, e                                          ; $7402: $7b
	add hl, bc                                       ; $7403: $09
	cpl                                              ; $7404: $2f
	jr c, jr_08a_743f                                ; $7405: $38 $38

	ld b, c                                          ; $7407: $41
	ld b, h                                          ; $7408: $44
	ld e, a                                          ; $7409: $5f
	add hl, sp                                       ; $740a: $39
	ld c, b                                          ; $740b: $48
	dec [hl]                                         ; $740c: $35
	add hl, bc                                       ; $740d: $09
	cpl                                              ; $740e: $2f
	jp hl                                            ; $740f: $e9


	and b                                            ; $7410: $a0
	add hl, bc                                       ; $7411: $09
	cpl                                              ; $7412: $2f
	add sp, $7d                                      ; $7413: $e8 $7d
	inc [hl]                                         ; $7415: $34
	add hl, bc                                       ; $7416: $09
	cpl                                              ; $7417: $2f
	halt                                             ; $7418: $76
	ldh a, [rSTAT]                                   ; $7419: $f0 $41
	ldh a, [hDisp0_SCX]                                     ; $741b: $f0 $84
	add h                                            ; $741d: $84
	ld b, d                                          ; $741e: $42
	ldh a, [rHDMA2]                                  ; $741f: $f0 $52
	ld c, a                                          ; $7421: $4f
	inc [hl]                                         ; $7422: $34
	add hl, bc                                       ; $7423: $09
	cpl                                              ; $7424: $2f
	ldh a, [c]                                       ; $7425: $f2
	pop de                                           ; $7426: $d1
	pop af                                           ; $7427: $f1
	ld b, $44                                        ; $7428: $06 $44
	ld c, c                                          ; $742a: $49
	ldh a, [$9f]                                     ; $742b: $f0 $9f
	ld e, e                                          ; $742d: $5b
	ccf                                              ; $742e: $3f
	add hl, bc                                       ; $742f: $09
	cpl                                              ; $7430: $2f
	ldh a, [rTIMA]                                   ; $7431: $f0 $05
	ld e, h                                          ; $7433: $5c
	ccf                                              ; $7434: $3f
	jr c, jr_08a_748b                                ; $7435: $38 $54

	add hl, sp                                       ; $7437: $39
	ld c, b                                          ; $7438: $48
	dec [hl]                                         ; $7439: $35
	add hl, bc                                       ; $743a: $09
	cpl                                              ; $743b: $2f
	ldh a, [c]                                       ; $743c: $f2
	pop de                                           ; $743d: $d1
	pop af                                           ; $743e: $f1

jr_08a_743f:
	ld b, $3a                                        ; $743f: $06 $3a
	ld b, d                                          ; $7441: $42
	ld b, h                                          ; $7442: $44
	inc a                                            ; $7443: $3c
	ld d, b                                          ; $7444: $50
	ld c, b                                          ; $7445: $48
	dec [hl]                                         ; $7446: $35
	add hl, bc                                       ; $7447: $09
	add hl, bc                                       ; $7448: $09
































































Data_8a_7449::
	cpl                                              ; $7449: $2f
	ld b, e                                          ; $744a: $43
	halt                                             ; $744b: $76
	ld b, d                                          ; $744c: $42
	db $ed                                           ; $744d: $ed
	ld [hl], c                                       ; $744e: $71
	ld c, e                                          ; $744f: $4b
	inc de                                           ; $7450: $13
	ld de, $a812                                     ; $7451: $11 $12 $a8
	ld d, h                                          ; $7454: $54
	ld d, h                                          ; $7455: $54
	inc [hl]                                         ; $7456: $34
	ld l, a                                          ; $7457: $6f
	ldh a, [$d9]                                     ; $7458: $f0 $d9
	ld [$42f4], a                                    ; $745a: $ea $f4 $42
	inc de                                           ; $745d: $13
	pop af                                           ; $745e: $f1
	ld e, h                                          ; $745f: $5c
	sub [hl]                                         ; $7460: $96
	ldh a, [rTIMA]                                   ; $7461: $f0 $05
	ld b, h                                          ; $7463: $44
	and b                                            ; $7464: $a0


;
	cpl                                              ; $7465: $2f
	ld b, e                                          ; $7466: $43
	ldh a, [rAUD1LOW]                                ; $7467: $f0 $13
	ldh a, [$63]                                     ; $7469: $f0 $63
	ld b, h                                          ; $746b: $44
	ld c, c                                          ; $746c: $49
	ld [hl], a                                       ; $746d: $77
	dec sp                                           ; $746e: $3b
	ccf                                              ; $746f: $3f
	jr c, jr_08a_74af                                ; $7470: $38 $3d

	inc de                                           ; $7472: $13
	ldh a, [c]                                       ; $7473: $f2
	ld [hl], $6d                                     ; $7474: $36 $6d
	ldh a, [c]                                       ; $7476: $f2
	rst SubAFromDE                                          ; $7477: $df
	pop af                                           ; $7478: $f1
	ld l, d                                          ; $7479: $6a
	ld b, h                                          ; $747a: $44
	dec sp                                           ; $747b: $3b
	dec a                                            ; $747c: $3d
	ld d, e                                          ; $747d: $53
	xor h                                            ; $747e: $ac
	pop af                                           ; $747f: $f1
	ld h, e                                          ; $7480: $63
	ld a, [hl]                                       ; $7481: $7e
	ld d, l                                          ; $7482: $55
	ldh a, [rTMA]                                    ; $7483: $f0 $06
	pop af                                           ; $7485: $f1
	inc h                                            ; $7486: $24
	ld d, c                                          ; $7487: $51
	ld c, [hl]                                       ; $7488: $4e
	ld d, h                                          ; $7489: $54
	ld c, c                                          ; $748a: $49

jr_08a_748b:
	ld d, e                                          ; $748b: $53
	ld c, d                                          ; $748c: $4a
	ld e, h                                          ; $748d: $5c
	dec a                                            ; $748e: $3d
	and b                                            ; $748f: $a0


;
	cpl                                              ; $7490: $2f
	ld b, e                                          ; $7491: $43
	db $ed                                           ; $7492: $ed
	ld h, b                                          ; $7493: $60
	ld b, d                                          ; $7494: $42
	ld a, a                                          ; $7495: $7f
	ldh a, [rTAC]                                    ; $7496: $f0 $07
	ld b, h                                          ; $7498: $44
	adc l                                            ; $7499: $8d
	dec [hl]                                         ; $749a: $35
	rla                                              ; $749b: $17
	pop af                                           ; $749c: $f1
	and h                                            ; $749d: $a4
	inc a                                            ; $749e: $3c
	ld b, a                                          ; $749f: $47
	pop af                                           ; $74a0: $f1
	ld c, h                                          ; $74a1: $4c
	dec sp                                           ; $74a2: $3b
	ccf                                              ; $74a3: $3f
	jr c, jr_08a_74f4                                ; $74a4: $38 $4e

	db $ed                                           ; $74a6: $ed
	xor b                                            ; $74a7: $a8
	db $ed                                           ; $74a8: $ed
	xor c                                            ; $74a9: $a9
	ld c, c                                          ; $74aa: $49
	inc de                                           ; $74ab: $13
	ldh a, [$cd]                                     ; $74ac: $f0 $cd
	ld e, e                                          ; $74ae: $5b

jr_08a_74af:
	adc c                                            ; $74af: $89
	sbc a                                            ; $74b0: $9f
	ld b, a                                          ; $74b1: $47
	sub [hl]                                         ; $74b2: $96
	adc c                                            ; $74b3: $89
	ld c, d                                          ; $74b4: $4a
	ld e, h                                          ; $74b5: $5c
	dec a                                            ; $74b6: $3d
	ld b, c                                          ; $74b7: $41
	ld b, h                                          ; $74b8: $44
	inc a                                            ; $74b9: $3c
	ld d, b                                          ; $74ba: $50
	add hl, bc                                       ; $74bb: $09


;
	cpl                                              ; $74bc: $2f
	ld b, e                                          ; $74bd: $43
	ldh a, [$31]                                     ; $74be: $f0 $31
	ld c, e                                          ; $74c0: $4b
	inc [hl]                                         ; $74c1: $34
	ldh a, [$f7]                                     ; $74c2: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $74c4: $f0 $17
	ld c, c                                          ; $74c6: $49
	ld c, e                                          ; $74c7: $4b
	xor h                                            ; $74c8: $ac
	pop af                                           ; $74c9: $f1
	add hl, de                                       ; $74ca: $19
	adc c                                            ; $74cb: $89
	sbc a                                            ; $74cc: $9f
	inc a                                            ; $74cd: $3c
	ld d, b                                          ; $74ce: $50
	ld b, d                                          ; $74cf: $42
	ldh a, [c]                                       ; $74d0: $f2
	jp z, Jump_08a_5b3a                              ; $74d1: $ca $3a $5b

	ld l, h                                          ; $74d4: $6c
	ld c, d                                          ; $74d5: $4a
	xor h                                            ; $74d6: $ac
	ldh a, [rSVBK]                                   ; $74d7: $f0 $70
	ld c, a                                          ; $74d9: $4f
	ldh a, [c]                                       ; $74da: $f2
	ld d, c                                          ; $74db: $51
	ld d, a                                          ; $74dc: $57
	ld e, d                                          ; $74dd: $5a
	add hl, sp                                       ; $74de: $39
	ld a, $3a                                        ; $74df: $3e $3a
	ld b, c                                          ; $74e1: $41
	ld b, h                                          ; $74e2: $44
	ld e, l                                          ; $74e3: $5d
	ld c, l                                          ; $74e4: $4d
	ld e, d                                          ; $74e5: $5a
	ld c, b                                          ; $74e6: $48
	and b                                            ; $74e7: $a0
	cpl                                              ; $74e8: $2f
	ld b, e                                          ; $74e9: $43
	halt                                             ; $74ea: $76
	ld c, c                                          ; $74eb: $49
	di                                               ; $74ec: $f3
	rla                                              ; $74ed: $17
	ldh a, [$8c]                                     ; $74ee: $f0 $8c
	ccf                                              ; $74f0: $3f
	inc de                                           ; $74f1: $13
	ldh a, [rLYC]                                    ; $74f2: $f0 $45

jr_08a_74f4:
	ld c, c                                          ; $74f4: $49
	add e                                            ; $74f5: $83
	ld [hl], e                                       ; $74f6: $73
	pop af                                           ; $74f7: $f1
	ld [de], a                                       ; $74f8: $12
	ld h, l                                          ; $74f9: $65
	xor b                                            ; $74fa: $a8
	db $ec                                           ; $74fb: $ec
	jr nz, jr_08a_7536                               ; $74fc: $20 $38

	ld d, d                                          ; $74fe: $52
	ld b, h                                          ; $74ff: $44
	ld b, a                                          ; $7500: $47
	db $ed                                           ; $7501: $ed
	ld h, d                                          ; $7502: $62
	pop af                                           ; $7503: $f1
	ld c, e                                          ; $7504: $4b
	ldh a, [$3e]                                     ; $7505: $f0 $3e
	ld b, d                                          ; $7507: $42
	inc de                                           ; $7508: $13
	db $ed                                           ; $7509: $ed
	ld a, a                                          ; $750a: $7f
	ld b, a                                          ; $750b: $47
	ld c, e                                          ; $750c: $4b
	ld c, b                                          ; $750d: $48
	and b                                            ; $750e: $a0
	cpl                                              ; $750f: $2f
	ld l, c                                          ; $7510: $69
	ld h, l                                          ; $7511: $65
	ld l, c                                          ; $7512: $69
	ld h, l                                          ; $7513: $65
	add hl, bc                                       ; $7514: $09
	cpl                                              ; $7515: $2f
	ld b, e                                          ; $7516: $43
	ld b, c                                          ; $7517: $41
	and c                                            ; $7518: $a1
	ld b, l                                          ; $7519: $45
	add hl, sp                                       ; $751a: $39
	xor b                                            ; $751b: $a8
	ld l, e                                          ; $751c: $6b
	ld a, $5d                                        ; $751d: $3e $5d
	dec a                                            ; $751f: $3d
	ldh a, [rAUD4ENV]                                ; $7520: $f0 $21
	ld a, $3f                                        ; $7522: $3e $3f
	ld b, c                                          ; $7524: $41
	ld b, h                                          ; $7525: $44
	ld b, l                                          ; $7526: $45
	and b                                            ; $7527: $a0
	cpl                                              ; $7528: $2f
	ld b, e                                          ; $7529: $43
	ld b, [hl]                                       ; $752a: $46
	inc [hl]                                         ; $752b: $34
	ld b, [hl]                                       ; $752c: $46
	xor $20                                          ; $752d: $ee $20
	dec [hl]                                         ; $752f: $35
	ldh a, [$34]                                     ; $7530: $f0 $34
	ld b, a                                          ; $7532: $47
	xor l                                            ; $7533: $ad
	ld [hl-], a                                      ; $7534: $32
	ldh a, [c]                                       ; $7535: $f2

jr_08a_7536:
	ei                                               ; $7536: $fb
	ld c, l                                          ; $7537: $4d
	ldh a, [c]                                       ; $7538: $f2
	ei                                               ; $7539: $fb
	ld c, l                                          ; $753a: $4d
	ld a, $38                                        ; $753b: $3e $38
	ldh a, [$f8]                                     ; $753d: $f0 $f8
	ld b, h                                          ; $753f: $44
	ld a, [hl-]                                      ; $7540: $3a
	xor $20                                          ; $7541: $ee $20
	inc sp                                           ; $7543: $33
	add hl, bc                                       ; $7544: $09
	halt                                             ; $7545: $76
	inc [hl]                                         ; $7546: $34

jr_08a_7547:
	db $ed                                           ; $7547: $ed
	ld d, d                                          ; $7548: $52
	adc e                                            ; $7549: $8b
	ldh a, [$72]                                     ; $754a: $f0 $72
	dec [hl]                                         ; $754c: $35
	rla                                              ; $754d: $17
	jp hl                                            ; $754e: $e9


	jp nz, $a83a                                     ; $754f: $c2 $3a $a8

	ld h, h                                          ; $7552: $64
	sbc [hl]                                         ; $7553: $9e
	ld c, e                                          ; $7554: $4b
	ld l, e                                          ; $7555: $6b
	ccf                                              ; $7556: $3f
	jr c, jr_08a_7547                                ; $7557: $38 $ee

	rra                                              ; $7559: $1f
	ld b, h                                          ; $755a: $44
	and c                                            ; $755b: $a1
	cpl                                              ; $755c: $2f
	ld b, e                                          ; $755d: $43
	halt                                             ; $755e: $76
	ld c, e                                          ; $755f: $4b
	ld de, $a812                                     ; $7560: $11 $12 $a8
	db $ec                                           ; $7563: $ec
	xor $54                                          ; $7564: $ee $54
	ld b, b                                          ; $7566: $40
	db $ec                                           ; $7567: $ec
	jr jr_08a_75a4                                   ; $7568: $18 $3a

	and b                                            ; $756a: $a0


;
	cpl                                              ; $756b: $2f
	ld hl, $4630                                     ; $756c: $21 $30 $46
	dec sp                                           ; $756f: $3b
	inc [hl]                                         ; $7570: $34
	ld a, b                                          ; $7571: $78
	dec a                                            ; $7572: $3d
	ld h, e                                          ; $7573: $63
	ld b, l                                          ; $7574: $45
	and b                                            ; $7575: $a0
	cpl                                              ; $7576: $2f
	ld hl, $f030                                     ; $7577: $21 $30 $f0
	ld d, a                                          ; $757a: $57
	ldh a, [$ae]                                     ; $757b: $f0 $ae
	pop af                                           ; $757d: $f1
	dec [hl]                                         ; $757e: $35
	and b                                            ; $757f: $a0
	ld l, e                                          ; $7580: $6b
	ld b, h                                          ; $7581: $44
	xor c                                            ; $7582: $a9
	pop af                                           ; $7583: $f1
	ld d, $47                                        ; $7584: $16 $47
	ldh a, [rAUD2ENV]                                ; $7586: $f0 $17
	adc h                                            ; $7588: $8c
	ld d, e                                          ; $7589: $53
	di                                               ; $758a: $f3
	ld d, $f0                                        ; $758b: $16 $f0
	bit 0, h                                         ; $758d: $cb $44
	ld a, $3d                                        ; $758f: $3e $3d
	sub a                                            ; $7591: $97
	and b                                            ; $7592: $a0

;
	ld l, [hl]                                       ; $7593: $6e
	ld b, [hl]                                       ; $7594: $46
	inc [hl]                                         ; $7595: $34
	db $f4                                           ; $7596: $f4
	inc sp                                           ; $7597: $33
	ldh a, [rRP]                                     ; $7598: $f0 $56
	xor b                                            ; $759a: $a8
	sbc c                                            ; $759b: $99
	dec a                                            ; $759c: $3d
	ld a, c                                          ; $759d: $79
	dec a                                            ; $759e: $3d
	ld c, h                                          ; $759f: $4c
	and b                                            ; $75a0: $a0


;
	ld d, h                                          ; $75a1: $54
	ld b, d                                          ; $75a2: $42
	pop af                                           ; $75a3: $f1

jr_08a_75a4:
	or [hl]                                          ; $75a4: $b6
	ld b, d                                          ; $75a5: $42
	sbc d                                            ; $75a6: $9a
	ld h, d                                          ; $75a7: $62
	xor h                                            ; $75a8: $ac
	db $ec                                           ; $75a9: $ec
	dec b                                            ; $75aa: $05
	pop af                                           ; $75ab: $f1
	ld b, d                                          ; $75ac: $42
	xor $2d                                          ; $75ad: $ee $2d
	ld a, [hl-]                                      ; $75af: $3a
	jr c, @+$4b                                      ; $75b0: $38 $49

	ld [hl], a                                       ; $75b2: $77
	add hl, sp                                       ; $75b3: $39
	ld d, e                                          ; $75b4: $53
	xor h                                            ; $75b5: $ac
	pop af                                           ; $75b6: $f1
	or [hl]                                          ; $75b7: $b6
	ld d, e                                          ; $75b8: $53
	ldh a, [$63]                                     ; $75b9: $f0 $63
	sbc d                                            ; $75bb: $9a
	ldh a, [$62]                                     ; $75bc: $f0 $62
	ld b, d                                          ; $75be: $42
	db $f4                                           ; $75bf: $f4
	dec c                                            ; $75c0: $0d
	ld b, d                                          ; $75c1: $42
	ld c, b                                          ; $75c2: $48
	add hl, bc                                       ; $75c3: $09
	db $ec                                           ; $75c4: $ec
	di                                               ; $75c5: $f3
	ld [hl], l                                       ; $75c6: $75
	ld a, l                                          ; $75c7: $7d
	ld b, h                                          ; $75c8: $44
	dec [hl]                                         ; $75c9: $35
	rla                                              ; $75ca: $17
	ldh a, [$cd]                                     ; $75cb: $f0 $cd
	ld e, e                                          ; $75cd: $5b
	sub e                                            ; $75ce: $93
	ldh a, [rSC]                                     ; $75cf: $f0 $02
	add e                                            ; $75d1: $83
	ld b, d                                          ; $75d2: $42
	ldh a, [$ab]                                     ; $75d3: $f0 $ab
	pop af                                           ; $75d5: $f1
	ld a, [bc]                                       ; $75d6: $0a
	db $f4                                           ; $75d7: $f4
	inc sp                                           ; $75d8: $33
	ldh a, [rRP]                                     ; $75d9: $f0 $56
	ld b, a                                          ; $75db: $47
	ld c, e                                          ; $75dc: $4b
	inc de                                           ; $75dd: $13
	ldh a, [$5c]                                     ; $75de: $f0 $5c
	jr c, @+$55                                      ; $75e0: $38 $53

	xor l                                            ; $75e2: $ad
	pop af                                           ; $75e3: $f1
	ld h, b                                          ; $75e4: $60
	ld a, [hl]                                       ; $75e5: $7e
	ld d, l                                          ; $75e6: $55
	ld l, [hl]                                       ; $75e7: $6e
	dec sp                                           ; $75e8: $3b
	ccf                                              ; $75e9: $3f
	jr c, jr_08a_7640                                ; $75ea: $38 $54

	add hl, sp                                       ; $75ec: $39
	db $ec                                           ; $75ed: $ec
	ret c                                            ; $75ee: $d8

	inc a                                            ; $75ef: $3c
	and b                                            ; $75f0: $a0
	db $ec                                           ; $75f1: $ec
	di                                               ; $75f2: $f3
	dec sp                                           ; $75f3: $3b
	ccf                                              ; $75f4: $3f
	inc de                                           ; $75f5: $13
	xor $1e                                          ; $75f6: $ee $1e
	pop af                                           ; $75f8: $f1
	add [hl]                                         ; $75f9: $86
	ldh a, [rHDMA1]                                  ; $75fa: $f0 $51
	ld h, c                                          ; $75fc: $61
	ld b, d                                          ; $75fd: $42
	inc a                                            ; $75fe: $3c
	xor l                                            ; $75ff: $ad
	ldh a, [$64]                                     ; $7600: $f0 $64
	ld a, [hl-]                                      ; $7602: $3a
	sub e                                            ; $7603: $93
	ldh a, [rSC]                                     ; $7604: $f0 $02
	add e                                            ; $7606: $83
	ld b, a                                          ; $7607: $47
	ld a, [hl-]                                      ; $7608: $3a
	dec sp                                           ; $7609: $3b
	ld h, c                                          ; $760a: $61
	ld d, d                                          ; $760b: $52
	dec sp                                           ; $760c: $3b
	dec a                                            ; $760d: $3d
	ld a, [hl-]                                      ; $760e: $3a
	ld [hl], h                                       ; $760f: $74
	and b                                            ; $7610: $a0
	cpl                                              ; $7611: $2f
	ld b, e                                          ; $7612: $43
	rst JumpTable                                          ; $7613: $c7
	ld b, h                                          ; $7614: $44
	ld a, [hl-]                                      ; $7615: $3a
	ld c, b                                          ; $7616: $48
	and b                                            ; $7617: $a0
	cpl                                              ; $7618: $2f
	ld [hl-], a                                      ; $7619: $32
	ldh a, [$d6]                                     ; $761a: $f0 $d6
	ld c, e                                          ; $761c: $4b
	db $ed                                           ; $761d: $ed
	xor c                                            ; $761e: $a9
	ld b, d                                          ; $761f: $42
	inc de                                           ; $7620: $13
	ldh a, [$67]                                     ; $7621: $f0 $67
	push af                                          ; $7623: $f5
	ld l, [hl]                                       ; $7624: $6e
	ldh a, [c]                                       ; $7625: $f2
	xor h                                            ; $7626: $ac
	ldh a, [c]                                       ; $7627: $f2
	ld h, [hl]                                       ; $7628: $66
	inc a                                            ; $7629: $3c
	inc sp                                           ; $762a: $33
	add hl, bc                                       ; $762b: $09
	ld l, h                                          ; $762c: $6c
	ld a, [hl-]                                      ; $762d: $3a
	ld e, b                                          ; $762e: $58
	ld b, c                                          ; $762f: $41
	ld c, e                                          ; $7630: $4b
	ld e, e                                          ; $7631: $5b
	ld [hl], c                                       ; $7632: $71
	ld d, d                                          ; $7633: $52
	ld a, $3f                                        ; $7634: $3e $3f
	xor b                                            ; $7636: $a8
	db $ed                                           ; $7637: $ed
	ld [hl], c                                       ; $7638: $71
	ld c, e                                          ; $7639: $4b
	db $ed                                           ; $763a: $ed
	xor b                                            ; $763b: $a8
	db $ed                                           ; $763c: $ed
	xor c                                            ; $763d: $a9
	ld c, d                                          ; $763e: $4a
	ld d, c                                          ; $763f: $51

jr_08a_7640:
	and b                                            ; $7640: $a0
	pop af                                           ; $7641: $f1
	ld a, e                                          ; $7642: $7b
	ldh a, [hDisp1_WY]                                     ; $7643: $f0 $95
	ld c, e                                          ; $7645: $4b
	ldh a, [$99]                                     ; $7646: $f0 $99
	sub b                                            ; $7648: $90
	db $ed                                           ; $7649: $ed
	and [hl]                                         ; $764a: $a6
	ld c, d                                          ; $764b: $4a
	xor h                                            ; $764c: $ac
	db $eb                                           ; $764d: $eb
	ld h, l                                          ; $764e: $65
	ld c, c                                          ; $764f: $49
	inc a                                            ; $7650: $3c

jr_08a_7651:
	ld h, d                                          ; $7651: $62
	ld a, [hl]                                       ; $7652: $7e
	ld d, l                                          ; $7653: $55
	pop af                                           ; $7654: $f1
	ld h, [hl]                                       ; $7655: $66
	ld e, h                                          ; $7656: $5c
	ld d, d                                          ; $7657: $52
	ld d, c                                          ; $7658: $51
	xor b                                            ; $7659: $a8
	ld l, h                                          ; $765a: $6c
	ld a, [hl-]                                      ; $765b: $3a
	ld e, b                                          ; $765c: $58
	ld b, c                                          ; $765d: $41
	inc [hl]                                         ; $765e: $34
	ld d, h                                          ; $765f: $54
	ld c, l                                          ; $7660: $4d
	inc a                                            ; $7661: $3c
	ld d, b                                          ; $7662: $50
	inc de                                           ; $7663: $13
	db $ec                                           ; $7664: $ec
	jr jr_08a_7651                                   ; $7665: $18 $ea

	or [hl]                                          ; $7667: $b6
	and b                                            ; $7668: $a0
	inc a                                            ; $7669: $3c
	inc [hl]                                         ; $766a: $34
	inc a                                            ; $766b: $3c
	ld h, e                                          ; $766c: $63
	jr c, jr_08a_76a7                                ; $766d: $38 $38

	ld e, c                                          ; $766f: $59
	xor b                                            ; $7670: $a8
	db $ed                                           ; $7671: $ed
	xor b                                            ; $7672: $a8
	db $ed                                           ; $7673: $ed
	xor c                                            ; $7674: $a9
	ld h, c                                          ; $7675: $61
	ld d, [hl]                                       ; $7676: $56
	ld b, c                                          ; $7677: $41
	inc a                                            ; $7678: $3c
	xor l                                            ; $7679: $ad
	ld d, h                                          ; $767a: $54
	ld b, d                                          ; $767b: $42
	sub e                                            ; $767c: $93
	ldh a, [rSC]                                     ; $767d: $f0 $02
	add e                                            ; $767f: $83
	ld c, d                                          ; $7680: $4a
	ld b, l                                          ; $7681: $45
	inc a                                            ; $7682: $3c
	dec sp                                           ; $7683: $3b
	dec a                                            ; $7684: $3d
	adc l                                            ; $7685: $8d
	and b                                            ; $7686: $a0
	cpl                                              ; $7687: $2f
	ld [hl-], a                                      ; $7688: $32
	ld e, b                                          ; $7689: $58
	dec sp                                           ; $768a: $3b
	ld e, h                                          ; $768b: $5c
	ld c, e                                          ; $768c: $4b
	inc [hl]                                         ; $768d: $34
	ldh a, [$64]                                     ; $768e: $f0 $64
	db $ed                                           ; $7690: $ed
	ld b, e                                          ; $7691: $43
	inc de                                           ; $7692: $13
	add d                                            ; $7693: $82
	dec sp                                           ; $7694: $3b
	ccf                                              ; $7695: $3f
	dec a                                            ; $7696: $3d
	ld d, l                                          ; $7697: $55
	ld a, c                                          ; $7698: $79
	ld b, a                                          ; $7699: $47
	ld c, b                                          ; $769a: $48
	inc sp                                           ; $769b: $33
	add hl, bc                                       ; $769c: $09
	ld b, [hl]                                       ; $769d: $46
	dec sp                                           ; $769e: $3b
	inc [hl]                                         ; $769f: $34
	ld l, d                                          ; $76a0: $6a
	inc [hl]                                         ; $76a1: $34
	ld h, h                                          ; $76a2: $64
	sbc [hl]                                         ; $76a3: $9e
	ld h, d                                          ; $76a4: $62
	inc de                                           ; $76a5: $13
	ld [hl], d                                       ; $76a6: $72

jr_08a_76a7:
	dec a                                            ; $76a7: $3d
	adc l                                            ; $76a8: $8d
	dec [hl]                                         ; $76a9: $35
	xor $1e                                          ; $76aa: $ee $1e
	pop af                                           ; $76ac: $f1
	ld b, [hl]                                       ; $76ad: $46
	ldh a, [$2d]                                     ; $76ae: $f0 $2d
	dec sp                                           ; $76b0: $3b
	ccf                                              ; $76b1: $3f
	ld c, [hl]                                       ; $76b2: $4e
	ld b, d                                          ; $76b3: $42
	inc a                                            ; $76b4: $3c
	and c                                            ; $76b5: $a1
	cpl                                              ; $76b6: $2f
	ld b, e                                          ; $76b7: $43
	ldh a, [$2d]                                     ; $76b8: $f0 $2d
	dec sp                                           ; $76ba: $3b
	ccf                                              ; $76bb: $3f
	ld c, [hl]                                       ; $76bc: $4e
	ld c, a                                          ; $76bd: $4f
	ld l, e                                          ; $76be: $6b
	ld c, a                                          ; $76bf: $4f
	xor h                                            ; $76c0: $ac
	halt                                             ; $76c1: $76
	ld b, d                                          ; $76c2: $42
	ldh a, [c]                                       ; $76c3: $f2
	jp z, Jump_08a_5b3a                              ; $76c4: $ca $3a $5b

	ld l, h                                          ; $76c7: $6c
	ld b, h                                          ; $76c8: $44
	ld b, l                                          ; $76c9: $45
	and b                                            ; $76ca: $a0
	ldh a, [$5a]                                     ; $76cb: $f0 $5a
	add l                                            ; $76cd: $85
	inc [hl]                                         ; $76ce: $34
	db $d3                                           ; $76cf: $d3
	inc a                                            ; $76d0: $3c
	xor l                                            ; $76d1: $ad
	ld e, e                                          ; $76d2: $5b
	ld d, [hl]                                       ; $76d3: $56
	ld b, [hl]                                       ; $76d4: $46
	inc [hl]                                         ; $76d5: $34
	ldh a, [$f7]                                     ; $76d6: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $76d8: $f0 $17
	db $ec                                           ; $76da: $ec
	inc h                                            ; $76db: $24
	ld c, e                                          ; $76dc: $4b
	and c                                            ; $76dd: $a1
	cpl                                              ; $76de: $2f
	ld b, e                                          ; $76df: $43
	add sp, $07                                      ; $76e0: $e8 $07
	and b                                            ; $76e2: $a0
	ldh a, [c]                                       ; $76e3: $f2
	rla                                              ; $76e4: $17
	di                                               ; $76e5: $f3
	sbc a                                            ; $76e6: $9f
	pop af                                           ; $76e7: $f1
	db $e4                                           ; $76e8: $e4
	ld c, e                                          ; $76e9: $4b
	and c                                            ; $76ea: $a1
	cpl                                              ; $76eb: $2f
	ld b, e                                          ; $76ec: $43
	add sp, $08                                      ; $76ed: $e8 $08
	and b                                            ; $76ef: $a0
	pop af                                           ; $76f0: $f1
	ld a, e                                          ; $76f1: $7b
	ldh a, [hDisp1_WY]                                     ; $76f2: $f0 $95
	ld c, e                                          ; $76f4: $4b
	and c                                            ; $76f5: $a1
	cpl                                              ; $76f6: $2f
	ld b, e                                          ; $76f7: $43
	ldh a, [$99]                                     ; $76f8: $f0 $99
	sub b                                            ; $76fa: $90
	db $ed                                           ; $76fb: $ed
	and [hl]                                         ; $76fc: $a6
	dec sp                                           ; $76fd: $3b
	ccf                                              ; $76fe: $3f
	add d                                            ; $76ff: $82
	dec sp                                           ; $7700: $3b
	ccf                                              ; $7701: $3f
	dec a                                            ; $7702: $3d
	inc de                                           ; $7703: $13
	db $ec                                           ; $7704: $ec
	ret c                                            ; $7705: $d8

	inc a                                            ; $7706: $3c
	and b                                            ; $7707: $a0
	db $eb                                           ; $7708: $eb
	ld bc, $83a8                                     ; $7709: $01 $a8 $83
	ldh a, [rP1]                                     ; $770c: $f0 $00
	ld e, c                                          ; $770e: $59
	ldh a, [rAUD4POLY]                               ; $770f: $f0 $22
	ld a, l                                          ; $7711: $7d
	pop af                                           ; $7712: $f1
	ld b, l                                          ; $7713: $45
	ld c, e                                          ; $7714: $4b
	and c                                            ; $7715: $a1
	cpl                                              ; $7716: $2f
	ld b, e                                          ; $7717: $43
	ld b, b                                          ; $7718: $40
	ld b, c                                          ; $7719: $41
	ld a, [hl-]                                      ; $771a: $3a
	ld b, d                                          ; $771b: $42
	ldh a, [$2d]                                     ; $771c: $f0 $2d
	ld c, [hl]                                       ; $771e: $4e
	inc a                                            ; $771f: $3c
	ld b, l                                          ; $7720: $45
	and b                                            ; $7721: $a0
	ld b, l                                          ; $7722: $45
	ld a, $ec                                        ; $7723: $3e $ec
	ld a, c                                          ; $7725: $79
	ld b, h                                          ; $7726: $44
	xor b                                            ; $7727: $a8
	db $ec                                           ; $7728: $ec
	ld a, c                                          ; $7729: $79
	and b                                            ; $772a: $a0
	cpl                                              ; $772b: $2f
	ld b, e                                          ; $772c: $43
	ld h, h                                          ; $772d: $64
	inc [hl]                                         ; $772e: $34
	ld h, h                                          ; $772f: $64
	sbc [hl]                                         ; $7730: $9e
	xor l                                            ; $7731: $ad
	ld b, b                                          ; $7732: $40
	ld b, d                                          ; $7733: $42
	ldh a, [$9d]                                     ; $7734: $f0 $9d
	pop af                                           ; $7736: $f1
	dec b                                            ; $7737: $05
	push af                                          ; $7738: $f5
	ld l, l                                          ; $7739: $6d
	ld c, b                                          ; $773a: $48
	xor h                                            ; $773b: $ac
	pop hl                                           ; $773c: $e1
	ld b, d                                          ; $773d: $42
	sbc d                                            ; $773e: $9a
	ld a, e                                          ; $773f: $7b
	dec sp                                           ; $7740: $3b
	inc a                                            ; $7741: $3c
	ld d, a                                          ; $7742: $57
	inc de                                           ; $7743: $13
	db $ec                                           ; $7744: $ec
	ret c                                            ; $7745: $d8

	inc a                                            ; $7746: $3c
	ld c, b                                          ; $7747: $48
	and b                                            ; $7748: $a0
	ld d, d                                          ; $7749: $52
	inc [hl]                                         ; $774a: $34
	pop hl                                           ; $774b: $e1
	ld b, d                                          ; $774c: $42
	sbc d                                            ; $774d: $9a
	ld c, d                                          ; $774e: $4a
	inc de                                           ; $774f: $13
	ldh a, [$2d]                                     ; $7750: $f0 $2d
	ld d, a                                          ; $7752: $57
	dec a                                            ; $7753: $3d
	jr c, @+$56                                      ; $7754: $38 $54

	ld c, c                                          ; $7756: $49
	ld d, e                                          ; $7757: $53
	ld b, [hl]                                       ; $7758: $46
	dec sp                                           ; $7759: $3b
	dec a                                            ; $775a: $3d
	ld d, b                                          ; $775b: $50
	xor h                                            ; $775c: $ac
	halt                                             ; $775d: $76
	ld b, a                                          ; $775e: $47
	ldh a, [$a7]                                     ; $775f: $f0 $a7
	pop af                                           ; $7761: $f1
	dec de                                           ; $7762: $1b
	ld a, $3a                                        ; $7763: $3e $3a
	xor b                                            ; $7765: $a8
	ldh a, [$7f]                                     ; $7766: $f0 $7f
	ld b, a                                          ; $7768: $47
	ld a, [hl-]                                      ; $7769: $3a
	ld c, [hl]                                       ; $776a: $4e
	adc l                                            ; $776b: $8d
	and b                                            ; $776c: $a0
	cpl                                              ; $776d: $2f
	ld b, e                                          ; $776e: $43
	rst JumpTable                                          ; $776f: $c7
	inc a                                            ; $7770: $3c
	xor l                                            ; $7771: $ad
	ld b, [hl]                                       ; $7772: $46
	ld d, a                                          ; $7773: $57
	ld d, e                                          ; $7774: $53
	ld c, c                                          ; $7775: $49
	add hl, sp                                       ; $7776: $39
	and b                                            ; $7777: $a0
	ld b, b                                          ; $7778: $40
	ld c, l                                          ; $7779: $4d
	ld b, l                                          ; $777a: $45
	ld d, a                                          ; $777b: $57
	ld c, a                                          ; $777c: $4f
	inc [hl]                                         ; $777d: $34
	ld h, h                                          ; $777e: $64
	sbc [hl]                                         ; $777f: $9e
	xor b                                            ; $7780: $a8
	ld d, h                                          ; $7781: $54
	ld b, d                                          ; $7782: $42
	ldh a, [rAUD1ENV]                                ; $7783: $f0 $12
	sbc a                                            ; $7785: $9f
	ld b, d                                          ; $7786: $42
	pop af                                           ; $7787: $f1
	ld [hl], c                                       ; $7788: $71
	pop af                                           ; $7789: $f1
	dec c                                            ; $778a: $0d
	inc [hl]                                         ; $778b: $34
	ldh a, [$2d]                                     ; $778c: $f0 $2d
	dec sp                                           ; $778e: $3b
	ccf                                              ; $778f: $3f
	ld c, [hl]                                       ; $7790: $4e
	inc a                                            ; $7791: $3c
	and c                                            ; $7792: $a1
	cpl                                              ; $7793: $2f
	ld b, e                                          ; $7794: $43
	pop af                                           ; $7795: $f1
	ld [hl], c                                       ; $7796: $71
	pop af                                           ; $7797: $f1
	dec c                                            ; $7798: $0d
	and c                                            ; $7799: $a1
	ldh a, [$08]                                     ; $779a: $f0 $08

jr_08a_779c:
	ld d, b                                          ; $779c: $50
	inc [hl]                                         ; $779d: $34
	ld b, b                                          ; $779e: $40
	ld d, h                                          ; $779f: $54
	ld b, d                                          ; $77a0: $42
	di                                               ; $77a1: $f3
	sub d                                            ; $77a2: $92
	inc a                                            ; $77a3: $3c
	ld d, b                                          ; $77a4: $50
	xor h                                            ; $77a5: $ac
	ld c, d                                          ; $77a6: $4a
	dec sp                                           ; $77a7: $3b
	inc a                                            ; $77a8: $3c
	jr c, jr_08a_779c                                ; $77a9: $38 $f1

	rst GetHLinHL                                          ; $77ab: $cf
	ld d, e                                          ; $77ac: $53
	ld [hl], d                                       ; $77ad: $72
	ld e, [hl]                                       ; $77ae: $5e
	ld c, [hl]                                       ; $77af: $4e
	ld b, h                                          ; $77b0: $44
	ld e, a                                          ; $77b1: $5f
	and b                                            ; $77b2: $a0
	cpl                                              ; $77b3: $2f
	ld b, e                                          ; $77b4: $43
	ld b, c                                          ; $77b5: $41
	ld [hl], $46                                     ; $77b6: $36 $46
	ld [hl], h                                       ; $77b8: $74
	and b                                            ; $77b9: $a0
	db $ed                                           ; $77ba: $ed
	ld a, c                                          ; $77bb: $79
	ldh a, [$39]                                     ; $77bc: $f0 $39
	ld b, d                                          ; $77be: $42
	ld l, b                                          ; $77bf: $68
	ld b, a                                          ; $77c0: $47
	xor $10                                          ; $77c1: $ee $10
	ld h, b                                          ; $77c3: $60
	dec [hl]                                         ; $77c4: $35
	rla                                              ; $77c5: $17
	xor $1e                                          ; $77c6: $ee $1e
	ldh a, [$37]                                     ; $77c8: $f0 $37
	ld b, d                                          ; $77ca: $42
	ldh a, [$a3]                                     ; $77cb: $f0 $a3
	ld c, d                                          ; $77cd: $4a
	xor h                                            ; $77ce: $ac
	pop hl                                           ; $77cf: $e1
	inc a                                            ; $77d0: $3c
	ld d, b                                          ; $77d1: $50
	ldh a, [c]                                       ; $77d2: $f2
	ld l, e                                          ; $77d3: $6b
	ldh a, [rAUD4GO]                                 ; $77d4: $f0 $23
	ld e, b                                          ; $77d6: $58
	ld c, l                                          ; $77d7: $4d
	ld c, [hl]                                       ; $77d8: $4e
	ld c, c                                          ; $77d9: $49
	xor h                                            ; $77da: $ac
	ld b, b                                          ; $77db: $40
	ld b, d                                          ; $77dc: $42
	ldh a, [hDisp0_SCX]                                     ; $77dd: $f0 $84
	add h                                            ; $77df: $84
	ld c, e                                          ; $77e0: $4b
	ldh a, [c]                                       ; $77e1: $f2
	pop de                                           ; $77e2: $d1
	pop af                                           ; $77e3: $f1
	ld b, $47                                        ; $77e4: $06 $47
	pop af                                           ; $77e6: $f1
	and d                                            ; $77e7: $a2
	ld a, c                                          ; $77e8: $79
	ld a, [hl-]                                      ; $77e9: $3a
	db $ed                                           ; $77ea: $ed
	ld a, a                                          ; $77eb: $7f
	ld b, a                                          ; $77ec: $47
	inc de                                           ; $77ed: $13
	ld a, [hl-]                                      ; $77ee: $3a
	ld c, l                                          ; $77ef: $4d
	ld c, [hl]                                       ; $77f0: $4e
	ld b, c                                          ; $77f1: $41
	db $ed                                           ; $77f2: $ed
	ld b, e                                          ; $77f3: $43
	ld b, l                                          ; $77f4: $45
	and b                                            ; $77f5: $a0
	cpl                                              ; $77f6: $2f
	ld b, e                                          ; $77f7: $43
	ldh a, [$5a]                                     ; $77f8: $f0 $5a
	add l                                            ; $77fa: $85
	xor h                                            ; $77fb: $ac
	ld b, b                                          ; $77fc: $40
	ld b, c                                          ; $77fd: $41
	ld a, [hl-]                                      ; $77fe: $3a
	pop af                                           ; $77ff: $f1
	ld [hl], c                                       ; $7800: $71
	pop af                                           ; $7801: $f1
	dec c                                            ; $7802: $0d
	ld d, e                                          ; $7803: $53
	ld b, [hl]                                       ; $7804: $46
	ld c, [hl]                                       ; $7805: $4e
	ld b, d                                          ; $7806: $42
	inc a                                            ; $7807: $3c
	ld c, b                                          ; $7808: $48
	and b                                            ; $7809: $a0
	ldh a, [$98]                                     ; $780a: $f0 $98
	ld d, e                                          ; $780c: $53
	add d                                            ; $780d: $82
	dec sp                                           ; $780e: $3b
	dec a                                            ; $780f: $3d
	inc a                                            ; $7810: $3c
	ld a, $50                                        ; $7811: $3e $50
	ld c, h                                          ; $7813: $4c
	add l                                            ; $7814: $85
	ld d, e                                          ; $7815: $53
	inc de                                           ; $7816: $13
	add hl, sp                                       ; $7817: $39
	ld d, b                                          ; $7818: $50
	ld l, [hl]                                       ; $7819: $6e
	ld d, d                                          ; $781a: $52
	ld a, $38                                        ; $781b: $3e $38
	ldh a, [rAUDVOL]                                 ; $781d: $f0 $24
	ld b, h                                          ; $781f: $44
	ld a, [hl-]                                      ; $7820: $3a
	and b                                            ; $7821: $a0
	cpl                                              ; $7822: $2f
	ld b, e                                          ; $7823: $43
	pop af                                           ; $7824: $f1
	ld [hl], c                                       ; $7825: $71
	pop af                                           ; $7826: $f1
	dec c                                            ; $7827: $0d
	inc a                                            ; $7828: $3c
	xor l                                            ; $7829: $ad
	ld b, b                                          ; $782a: $40
	add hl, sp                                       ; $782b: $39
	ld b, h                                          ; $782c: $44
	ld a, [hl-]                                      ; $782d: $3a
	inc [hl]                                         ; $782e: $34
	halt                                             ; $782f: $76
	ld a, [hl-]                                      ; $7830: $3a
	ld d, b                                          ; $7831: $50
	ld c, b                                          ; $7832: $48
	add hl, bc                                       ; $7833: $09
	cpl                                              ; $7834: $2f
	ld b, e                                          ; $7835: $43
	ld d, h                                          ; $7836: $54
	add hl, sp                                       ; $7837: $39
	ld a, $3f                                        ; $7838: $3e $3f
	inc [hl]                                         ; $783a: $34
	pop af                                           ; $783b: $f1
	rst SubAFromBC                                          ; $783c: $e7
	sbc c                                            ; $783d: $99
	ld c, c                                          ; $783e: $49
	inc de                                           ; $783f: $13
	ldh a, [$d0]                                     ; $7840: $f0 $d0
	pop af                                           ; $7842: $f1
	cp c                                             ; $7843: $b9
	ld b, d                                          ; $7844: $42
	ldh a, [rAUD1ENV]                                ; $7845: $f0 $12

Jump_08a_7847:
	sbc a                                            ; $7847: $9f
	ldh a, [rTIMA]                                   ; $7848: $f0 $05
	pop af                                           ; $784a: $f1
	rrca                                             ; $784b: $0f
	ld d, e                                          ; $784c: $53
	ldh a, [$bb]                                     ; $784d: $f0 $bb
	ld d, d                                          ; $784f: $52
	dec sp                                           ; $7850: $3b
	dec a                                            ; $7851: $3d
	and b                                            ; $7852: $a0
	ld a, [hl-]                                      ; $7853: $3a
	ld b, [hl]                                       ; $7854: $46
	inc [hl]                                         ; $7855: $34
	ld [de], a                                       ; $7856: $12
	dec [hl]                                         ; $7857: $35
	rla                                              ; $7858: $17
	ld d, h                                          ; $7859: $54
	ld b, d                                          ; $785a: $42
	adc c                                            ; $785b: $89
	sbc a                                            ; $785c: $9f
	dec sp                                           ; $785d: $3b
	ccf                                              ; $785e: $3f
	db $ed                                           ; $785f: $ed
	ld [$0ff1], sp                                   ; $7860: $08 $f1 $0f
	ldh a, [rOBP0]                                   ; $7863: $f0 $48
	ld c, a                                          ; $7865: $4f
	inc de                                           ; $7866: $13
	di                                               ; $7867: $f3
	sub c                                            ; $7868: $91

	ld b, c                                          ; $7869: $41
	ld d, b                                          ; $786a: $50
	ld a, $38                                        ; $786b: $3e $38
	adc l                                            ; $786d: $8d
	and b                                            ; $786e: $a0
	cpl                                              ; $786f: $2f
	ld b, e                                          ; $7870: $43
	db $d3                                           ; $7871: $d3
	inc a                                            ; $7872: $3c


;
	and c                                            ; $7873: $a1   ? (skipped)
	ld d, h                                          ; $7874: $54
	ld c, l                                          ; $7875: $4d
	inc a                                            ; $7876: $3c
	ld d, b                                          ; $7877: $50

	ret                                              ; $7878: $c9
	inc de                                           ; $7879: $13
	ld [hl], d                                       ; $787a: $72
	adc c                                            ; $787b: $89
	ld b, a                                          ; $787c: $47
	ld h, a                                          ; $787d: $67
	dec sp                                           ; $787e: $3b
	ccf                                              ; $787f: $3f
	ld l, h                                          ; $7880: $6c
	ld a, [hl-]                                      ; $7881: $3a
	jr c, jr_08a_78c0                                ; $7882: $38 $3c

	and c                                            ; $7884: $a1


;
	cpl                                              ; $7885: $2f
	ld b, e                                          ; $7886: $43
	ld b, b                                          ; $7887: $40
	add hl, sp                                       ; $7888: $39
	ld b, h                                          ; $7889: $44
	ld a, [hl-]                                      ; $788a: $3a
	ld c, b                                          ; $788b: $48
	add hl, bc                                       ; $788c: $09


;
	cpl                                              ; $788d: $2f
	db $dd                                           ; $788e: $dd
	ld h, a                                          ; $788f: $67
	ld d, h                                          ; $7890: $54
	add hl, sp                                       ; $7891: $39
	add hl, bc                                       ; $7892: $09


;
	cpl                                              ; $7893: $2f
	db $ed                                           ; $7894: $ed
	ld d, a                                          ; $7895: $57
	ldh a, [rIF]                                     ; $7896: $f0 $0f
	add e                                            ; $7898: $83


;
	add hl, bc                                       ; $7899: $09
	ld b, b                                          ; $789a: $40
	add hl, sp                                       ; $789b: $39
	inc a                                            ; $789c: $3c
	inc [hl]                                         ; $789d: $34
	ldh a, [$8d]                                     ; $789e: $f0 $8d
	ldh a, [$9e]                                     ; $78a0: $f0 $9e
	ld b, h                                          ; $78a2: $44
	ld a, [hl-]                                      ; $78a3: $3a
	xor b                                            ; $78a4: $a8
	ld e, e                                          ; $78a5: $5b
	ld d, [hl]                                       ; $78a6: $56
	inc [hl]                                         ; $78a7: $34
	halt                                             ; $78a8: $76
	ld c, a                                          ; $78a9: $4f
	pop af                                           ; $78aa: $f1
	jr nc, jr_08a_791e                               ; $78ab: $30 $71

	ld c, c                                          ; $78ad: $49
	ld d, l                                          ; $78ae: $55
	inc a                                            ; $78af: $3c
	and b                                            ; $78b0: $a0
	cpl                                              ; $78b1: $2f
	ld b, e                                          ; $78b2: $43
	jr c, @+$61                                      ; $78b3: $38 $5f

	ld b, c                                          ; $78b5: $41
	ld a, [hl-]                                      ; $78b6: $3a
	adc a                                            ; $78b7: $8f
	ld d, e                                          ; $78b8: $53
	inc de                                           ; $78b9: $13
	ld b, [hl]                                       ; $78ba: $46
	ld c, [hl]                                       ; $78bb: $4e
	ld l, h                                          ; $78bc: $6c
	dec a                                            ; $78bd: $3d
	jr c, jr_08a_7904                                ; $78be: $38 $44

jr_08a_78c0:
	ld a, [hl-]                                      ; $78c0: $3a
	and b                                            ; $78c1: $a0
	cpl                                              ; $78c2: $2f
	ld b, e                                          ; $78c3: $43
	xor $10                                          ; $78c4: $ee $10
	xor $10                                          ; $78c6: $ee $10
	and b                                            ; $78c8: $a0
	cpl                                              ; $78c9: $2f
	ld b, e                                          ; $78ca: $43
	ld b, c                                          ; $78cb: $41
	xor c                                            ; $78cc: $a9
	ld b, [hl]                                       ; $78cd: $46
	ld c, l                                          ; $78ce: $4d
	ld c, e                                          ; $78cf: $4b
	adc d                                            ; $78d0: $8a
	ldh a, [$73]                                     ; $78d1: $f0 $73
	adc a                                            ; $78d3: $8f
	ld b, d                                          ; $78d4: $42
	ld b, l                                          ; $78d5: $45
	add hl, sp                                       ; $78d6: $39
	ld b, h                                          ; $78d7: $44
	ld a, [hl-]                                      ; $78d8: $3a
	and b                                            ; $78d9: $a0
	cpl                                              ; $78da: $2f
	ld b, e                                          ; $78db: $43
	ld a, [hl-]                                      ; $78dc: $3a
	inc [hl]                                         ; $78dd: $34
	ld a, [hl-]                                      ; $78de: $3a
	ld b, c                                          ; $78df: $41
	ccf                                              ; $78e0: $3f
	xor e                                            ; $78e1: $ab
	db $ed                                           ; $78e2: $ed
	ld e, a                                          ; $78e3: $5f
	pop af                                           ; $78e4: $f1
	inc bc                                           ; $78e5: $03
	ld a, [hl-]                                      ; $78e6: $3a
	ldh a, [$3f]                                     ; $78e7: $f0 $3f
	ld b, h                                          ; $78e9: $44
	ld c, b                                          ; $78ea: $48
	and b                                            ; $78eb: $a0
	ldh a, [$08]                                     ; $78ec: $f0 $08
	add hl, sp                                       ; $78ee: $39
	xor l                                            ; $78ef: $ad
	ld d, h                                          ; $78f0: $54
	ld b, d                                          ; $78f1: $42
	ldh a, [$3f]                                     ; $78f2: $f0 $3f
	ld b, d                                          ; $78f4: $42
	ld a, [hl]                                       ; $78f5: $7e
	ld e, b                                          ; $78f6: $58
	ld d, e                                          ; $78f7: $53
	pop af                                           ; $78f8: $f1
	dec sp                                           ; $78f9: $3b
	ld c, [hl]                                       ; $78fa: $4e
	ld b, d                                          ; $78fb: $42
	inc a                                            ; $78fc: $3c
	xor l                                            ; $78fd: $ad
	ldh a, [rRP]                                     ; $78fe: $f0 $56
	ld b, a                                          ; $7900: $47
	ld c, e                                          ; $7901: $4b
	db $ed                                           ; $7902: $ed
	ld e, a                                          ; $7903: $5f

jr_08a_7904:
	ldh a, [rSVBK]                                   ; $7904: $f0 $70
	ld b, d                                          ; $7906: $42
	ldh a, [c]                                       ; $7907: $f2
	rla                                              ; $7908: $17
	ld d, e                                          ; $7909: $53
	ldh a, [hDisp0_BGP]                                     ; $790a: $f0 $85
	ld c, l                                          ; $790c: $4d
	ccf                                              ; $790d: $3f
	inc de                                           ; $790e: $13
	jr c, jr_08a_795f                                ; $790f: $38 $4e

	ld l, h                                          ; $7911: $6c
	dec a                                            ; $7912: $3d
	jr c, jr_08a_7959                                ; $7913: $38 $44

	ld c, h                                          ; $7915: $4c
	and b                                            ; $7916: $a0
	cpl                                              ; $7917: $2f
	ld b, e                                          ; $7918: $43
	rst JumpTable                                          ; $7919: $c7
	ld c, d                                          ; $791a: $4a
	ld a, $66                                        ; $791b: $3e $66
	add hl, sp                                       ; $791d: $39

jr_08a_791e:
	inc a                                            ; $791e: $3c
	and c                                            ; $791f: $a1
	add hl, sp                                       ; $7920: $39
	ldh a, [$be]                                     ; $7921: $f0 $be
	dec [hl]                                         ; $7923: $35
	ld e, d                                          ; $7924: $5a
	add hl, sp                                       ; $7925: $39
	ld b, h                                          ; $7926: $44
	ld c, h                                          ; $7927: $4c
	xor c                                            ; $7928: $a9
	adc d                                            ; $7929: $8a
	ldh a, [$73]                                     ; $792a: $f0 $73
	adc a                                            ; $792c: $8f
	ld b, a                                          ; $792d: $47
	sub [hl]                                         ; $792e: $96
	ld d, b                                          ; $792f: $50
	ld a, [hl-]                                      ; $7930: $3a
	jr c, jr_08a_796f                                ; $7931: $38 $3c

	and c                                            ; $7933: $a1
	cpl                                              ; $7934: $2f
	ld b, e                                          ; $7935: $43
	add hl, sp                                       ; $7936: $39
	ld e, c                                          ; $7937: $59
	ld b, c                                          ; $7938: $41
	ld c, b                                          ; $7939: $48
	db $eb                                           ; $793a: $eb
	ld e, c                                          ; $793b: $59

jr_08a_793c:
	inc a                                            ; $793c: $3c
	ld a, [hl-]                                      ; $793d: $3a
	ld c, b                                          ; $793e: $48
	add hl, bc                                       ; $793f: $09
	db $ec                                           ; $7940: $ec
	jr z, jr_08a_797b                                ; $7941: $28 $38

	jr c, jr_08a_798a                                ; $7943: $38 $45

	pop af                                           ; $7945: $f1
	dec [hl]                                         ; $7946: $35
	xor b                                            ; $7947: $a8
	inc a                                            ; $7948: $3c
	ld h, e                                          ; $7949: $63
	jr c, jr_08a_7984                                ; $794a: $38 $38

	pop hl                                           ; $794c: $e1
	ld c, a                                          ; $794d: $4f
	jr c, jr_08a_799e                                ; $794e: $38 $4e

	ld a, $48                                        ; $7950: $3e $48
	add hl, bc                                       ; $7952: $09


; 286
	cpl                                              ; $7953: $2f
	add sp, $46                                      ; $7954: $e8 $46
	add hl, bc                                       ; $7956: $09


; 288
	add sp, -$37                                     ; $7957: $e8 $c9

jr_08a_7959:
	inc de                                           ; $7959: $13
	ldh a, [$d2]                                     ; $795a: $f0 $d2
	sub h                                            ; $795c: $94
	ld a, $3f                                        ; $795d: $3e $3f

jr_08a_795f:
	ld d, l                                          ; $795f: $55
	ld c, l                                          ; $7960: $4d
	xor b                                            ; $7961: $a8
	jp hl                                            ; $7962: $e9


	adc l                                            ; $7963: $8d
	and b                                            ; $7964: $a0
	cpl                                              ; $7965: $2f
	db $ec                                           ; $7966: $ec
	ld [$ea09], a                                    ; $7967: $ea $09 $ea
	ld d, [hl]                                       ; $796a: $56
	ld c, c                                          ; $796b: $49
	inc a                                            ; $796c: $3c
	ld c, a                                          ; $796d: $4f
	inc de                                           ; $796e: $13

jr_08a_796f:
	ld b, [hl]                                       ; $796f: $46
	ld c, [hl]                                       ; $7970: $4e
	inc a                                            ; $7971: $3c
	ld c, a                                          ; $7972: $4f
	ld c, b                                          ; $7973: $48
	add hl, bc                                       ; $7974: $09
	cpl                                              ; $7975: $2f
	ldh a, [$bc]                                     ; $7976: $f0 $bc
	ldh a, [c]                                       ; $7978: $f2
	inc bc                                           ; $7979: $03
	scf                                              ; $797a: $37

jr_08a_797b:
	db $ec                                           ; $797b: $ec
	jr @-$14                                         ; $797c: $18 $ea

	or [hl]                                          ; $797e: $b6
	add hl, bc                                       ; $797f: $09
	ldh a, [rSCY]                                    ; $7980: $f0 $42
	ldh a, [rSCY]                                    ; $7982: $f0 $42

jr_08a_7984:
	ldh a, [rSCY]                                    ; $7984: $f0 $42
	inc [hl]                                         ; $7986: $34
	ld b, b                                          ; $7987: $40
	ld c, l                                          ; $7988: $4d
	ld e, e                                          ; $7989: $5b

jr_08a_798a:
	ld d, [hl]                                       ; $798a: $56
	ldh a, [$0a]                                     ; $798b: $f0 $0a
	pop af                                           ; $798d: $f1
	jr jr_08a_793c                                   ; $798e: $18 $ac

	ldh a, [$79]                                     ; $7990: $f0 $79
	ld l, b                                          ; $7992: $68
	inc a                                            ; $7993: $3c
	ld d, b                                          ; $7994: $50
	ldh a, [$d2]                                     ; $7995: $f0 $d2
	sub h                                            ; $7997: $94
	ld a, $3f                                        ; $7998: $3e $3f
	ld d, l                                          ; $799a: $55
	ld c, l                                          ; $799b: $4d
	xor b                                            ; $799c: $a8
	jp hl                                            ; $799d: $e9


jr_08a_799e:
	adc l                                            ; $799e: $8d
	and b                                            ; $799f: $a0
	cpl                                              ; $79a0: $2f
	db $ed                                           ; $79a1: $ed
	ld [hl], h                                       ; $79a2: $74
	ld a, [hl-]                                      ; $79a3: $3a
	jr c, @+$4e                                      ; $79a4: $38 $4c

	add hl, bc                                       ; $79a6: $09
	jp hl                                            ; $79a7: $e9


	adc [hl]                                         ; $79a8: $8e
	xor b                                            ; $79a9: $a8
	add sp, -$35                                     ; $79aa: $e8 $cb
	and b                                            ; $79ac: $a0
	jp hl                                            ; $79ad: $e9


	adc a                                            ; $79ae: $8f
	xor b                                            ; $79af: $a8
	ld l, b                                          ; $79b0: $68
	pop af                                           ; $79b1: $f1
	sbc h                                            ; $79b2: $9c
	ld b, a                                          ; $79b3: $47
	db $ed                                           ; $79b4: $ed
	ld [$11f0], sp                                   ; $79b5: $08 $f0 $11
	ldh a, [rAUD3LOW]                                ; $79b8: $f0 $1d
	ld h, l                                          ; $79ba: $65
	ldh a, [$32]                                     ; $79bb: $f0 $32
	ld h, d                                          ; $79bd: $62
	inc de                                           ; $79be: $13
	db $eb                                           ; $79bf: $eb
	ld b, l                                          ; $79c0: $45
	and b                                            ; $79c1: $a0
	xor $10                                          ; $79c2: $ee $10
	ld h, b                                          ; $79c4: $60
	ld b, b                                          ; $79c5: $40
	ld d, h                                          ; $79c6: $54
	ld b, d                                          ; $79c7: $42
	ldh a, [rRP]                                     ; $79c8: $f0 $56
	xor $10                                          ; $79ca: $ee $10
	ld h, b                                          ; $79cc: $60
	add hl, bc                                       ; $79cd: $09
	cpl                                              ; $79ce: $2f
	ld b, e                                          ; $79cf: $43
	ldh a, [$98]                                     ; $79d0: $f0 $98
	inc a                                            ; $79d2: $3c
	halt                                             ; $79d3: $76
	ld h, d                                          ; $79d4: $62
	pop af                                           ; $79d5: $f1
	ld bc, $4441                                     ; $79d6: $01 $41 $44
	ld b, l                                          ; $79d9: $45
	add hl, sp                                       ; $79da: $39
	ld a, [hl-]                                      ; $79db: $3a
	ld c, b                                          ; $79dc: $48
	add hl, bc                                       ; $79dd: $09
	ldh a, [rRP]                                     ; $79de: $f0 $56
	xor h                                            ; $79e0: $ac
	ldh a, [$aa]                                     ; $79e1: $f0 $aa
	adc c                                            ; $79e3: $89
	adc a                                            ; $79e4: $8f
	ld b, a                                          ; $79e5: $47
	sub [hl]                                         ; $79e6: $96
	ld d, b                                          ; $79e7: $50
	ld a, [hl-]                                      ; $79e8: $3a
	jr c, jr_08a_7a27                                ; $79e9: $38 $3c

	ld c, b                                          ; $79eb: $48
	add hl, bc                                       ; $79ec: $09
	cpl                                              ; $79ed: $2f
	ld b, e                                          ; $79ee: $43
	inc a                                            ; $79ef: $3c
	inc [hl]                                         ; $79f0: $34
	ldh a, [$aa]                                     ; $79f1: $f0 $aa
	adc c                                            ; $79f3: $89
	adc a                                            ; $79f4: $8f
	ld c, d                                          ; $79f5: $4a
	ld d, c                                          ; $79f6: $51
	inc a                                            ; $79f7: $3c
	and c                                            ; $79f8: $a1
	ld b, b                                          ; $79f9: $40
	add hl, sp                                       ; $79fa: $39
	ld b, h                                          ; $79fb: $44
	ld c, b                                          ; $79fc: $48
	dec [hl]                                         ; $79fd: $35
	rla                                              ; $79fe: $17
	pop af                                           ; $79ff: $f1
	ld a, [hl+]                                      ; $7a00: $2a
	ldh a, [rHDMA3]                                  ; $7a01: $f0 $53
	ld b, a                                          ; $7a03: $47
	sub h                                            ; $7a04: $94
	dec a                                            ; $7a05: $3d
	ldh a, [rBGP]                                    ; $7a06: $f0 $47
	xor h                                            ; $7a08: $ac
	ldh a, [$5f]                                     ; $7a09: $f0 $5f
	ld c, a                                          ; $7a0b: $4f
	ldh a, [c]                                       ; $7a0c: $f2
	reti                                             ; $7a0d: $d9


	ld b, a                                          ; $7a0e: $47
	ldh a, [$d9]                                     ; $7a0f: $f0 $d9
	add b                                            ; $7a11: $80
	ld b, d                                          ; $7a12: $42
	ld d, e                                          ; $7a13: $53
	ldh a, [$aa]                                     ; $7a14: $f0 $aa
	adc c                                            ; $7a16: $89
	ld b, h                                          ; $7a17: $44
	ld b, l                                          ; $7a18: $45
	and b                                            ; $7a19: $a0
	cpl                                              ; $7a1a: $2f
	ld b, e                                          ; $7a1b: $43
	ld a, [hl-]                                      ; $7a1c: $3a
	ld b, c                                          ; $7a1d: $41
	inc a                                            ; $7a1e: $3c
	pop af                                           ; $7a1f: $f1
	adc $3a                                          ; $7a20: $ce $3a
	ld b, b                                          ; $7a22: $40
	add hl, sp                                       ; $7a23: $39
	ld a, [hl-]                                      ; $7a24: $3a
	inc de                                           ; $7a25: $13
	add h                                            ; $7a26: $84

jr_08a_7a27:
	ldh a, [rSTAT]                                   ; $7a27: $f0 $41
	ld b, h                                          ; $7a29: $44
	ld a, [hl-]                                      ; $7a2a: $3a
	ld [hl], h                                       ; $7a2b: $74
	and b                                            ; $7a2c: $a0
	ld b, b                                          ; $7a2d: $40
	ld c, l                                          ; $7a2e: $4d
	ld b, a                                          ; $7a2f: $47
	xor e                                            ; $7a30: $ab
	ld [$4816], a                                    ; $7a31: $ea $16 $48
	xor h                                            ; $7a34: $ac
	add sp, $21                                      ; $7a35: $e8 $21
	inc de                                           ; $7a37: $13
	jr c, jr_08a_7a88                                ; $7a38: $38 $4e

	ld b, c                                          ; $7a3a: $41
	ld b, h                                          ; $7a3b: $44
	and b                                            ; $7a3c: $a0
	ld [hl-], a                                      ; $7a3d: $32
	pop af                                           ; $7a3e: $f1
	ld [hl+], a                                      ; $7a3f: $22
	pop af                                           ; $7a40: $f1
	daa                                              ; $7a41: $27
	pop af                                           ; $7a42: $f1
	ld [hl+], a                                      ; $7a43: $22
	pop af                                           ; $7a44: $f1
	daa                                              ; $7a45: $27
	inc sp                                           ; $7a46: $33
	adc a                                            ; $7a47: $8f
	ldh a, [$62]                                     ; $7a48: $f0 $62
	xor b                                            ; $7a4a: $a8
	inc a                                            ; $7a4b: $3c
	ld h, e                                          ; $7a4c: $63
	jr c, jr_08a_7a87                                ; $7a4d: $38 $38

	pop hl                                           ; $7a4f: $e1
	ld b, h                                          ; $7a50: $44
	ld a, [hl-]                                      ; $7a51: $3a
	ld b, c                                          ; $7a52: $41
	ccf                                              ; $7a53: $3f

jr_08a_7a54:
	inc de                                           ; $7a54: $13
	add d                                            ; $7a55: $82
	dec sp                                           ; $7a56: $3b
	ccf                                              ; $7a57: $3f
	db $eb                                           ; $7a58: $eb
	add a                                            ; $7a59: $87
	inc a                                            ; $7a5a: $3c
	xor c                                            ; $7a5b: $a9
	pop af                                           ; $7a5c: $f1
	add d                                            ; $7a5d: $82
	inc a                                            ; $7a5e: $3c
	ld b, a                                          ; $7a5f: $47
	ld [hl], d                                       ; $7a60: $72
	dec a                                            ; $7a61: $3d
	ldh a, [rAUD3LEVEL]                              ; $7a62: $f0 $1c
	ld c, e                                          ; $7a64: $4b
	ld c, b                                          ; $7a65: $48
	and b                                            ; $7a66: $a0
	ld [hl-], a                                      ; $7a67: $32
	pop af                                           ; $7a68: $f1
	ld [hl+], a                                      ; $7a69: $22
	pop af                                           ; $7a6a: $f1
	daa                                              ; $7a6b: $27
	pop af                                           ; $7a6c: $f1
	ld [hl+], a                                      ; $7a6d: $22
	pop af                                           ; $7a6e: $f1
	daa                                              ; $7a6f: $27
	inc sp                                           ; $7a70: $33
	ld a, $3b                                        ; $7a71: $3e $3b
	scf                                              ; $7a73: $37
	inc de                                           ; $7a74: $13
	ld b, e                                          ; $7a75: $43
	daa                                              ; $7a76: $27
	xor $16                                          ; $7a77: $ee $16
	ld a, [hl-]                                      ; $7a79: $3a
	ldh a, [rAUD2ENV]                                ; $7a7a: $f0 $17
	dec h                                            ; $7a7c: $25
	ldh a, [$eb]                                     ; $7a7d: $f0 $eb
	ld a, [hl-]                                      ; $7a7f: $3a
	ld b, c                                          ; $7a80: $41
	ccf                                              ; $7a81: $3f
	inc de                                           ; $7a82: $13
	pop af                                           ; $7a83: $f1
	push af                                          ; $7a84: $f5
	ld d, e                                          ; $7a85: $53
	push af                                          ; $7a86: $f5

jr_08a_7a87:
	ld l, h                                          ; $7a87: $6c

jr_08a_7a88:
	ld e, l                                          ; $7a88: $5d
	ccf                                              ; $7a89: $3f
	ld c, a                                          ; $7a8a: $4f
	add d                                            ; $7a8b: $82
	add hl, sp                                       ; $7a8c: $39
	ld a, [hl-]                                      ; $7a8d: $3a
	ld b, l                                          ; $7a8e: $45
	and b                                            ; $7a8f: $a0
	cpl                                              ; $7a90: $2f
	ld b, e                                          ; $7a91: $43
	xor $10                                          ; $7a92: $ee $10
	xor b                                            ; $7a94: $a8
	ld [hl-], a                                      ; $7a95: $32
	ldh a, [$0c]                                     ; $7a96: $f0 $0c
	ld d, h                                          ; $7a98: $54
	ld e, [hl]                                       ; $7a99: $5e
	dec a                                            ; $7a9a: $3d
	ld b, c                                          ; $7a9b: $41
	ld c, d                                          ; $7a9c: $4a
	ld d, c                                          ; $7a9d: $51
	ld e, l                                          ; $7a9e: $5d
	ld e, d                                          ; $7a9f: $5a
	inc sp                                           ; $7aa0: $33
	add hl, bc                                       ; $7aa1: $09

;
	ld e, d                                          ; $7aa2: $5a
	inc [hl]                                         ; $7aa3: $34
	ld e, d                                          ; $7aa4: $5a
	add hl, sp                                       ; $7aa5: $39
	ld b, h                                          ; $7aa6: $44
	ld c, h                                          ; $7aa7: $4c
	xor c                                            ; $7aa8: $a9
	xor $1a                                          ; $7aa9: $ee $1a
	ld a, $3f                                        ; $7aab: $3e $3f
	ld d, l                                          ; $7aad: $55
	ld c, l                                          ; $7aae: $4d
	ld c, [hl]                                       ; $7aaf: $4e
	inc a                                            ; $7ab0: $3c
	jr c, jr_08a_7a54                                ; $7ab1: $38 $a1


;
	jp hl                                            ; $7ab3: $e9


	adc [hl]                                         ; $7ab4: $8e
	and b                                            ; $7ab5: $a0


;
	ld e, b                                          ; $7ab6: $58
	ccf                                              ; $7ab7: $3f
	inc [hl]                                         ; $7ab8: $34
	db $ec                                           ; $7ab9: $ec
	push bc                                          ; $7aba: $c5
	db $ed                                           ; $7abb: $ed
	ld e, b                                          ; $7abc: $58
	and b                                            ; $7abd: $a0


;
	cpl                                              ; $7abe: $2f
	ld b, e                                          ; $7abf: $43
	ld b, b                                          ; $7ac0: $40
	add hl, sp                                       ; $7ac1: $39
	ld b, h                                          ; $7ac2: $44
	ld a, [hl-]                                      ; $7ac3: $3a
	and b                                            ; $7ac4: $a0
	add hl, bc                                       ; $7ac5: $09




























































Data_8a_7ac6::
	cpl                                              ; $7ac6: $2f
	ld b, e                                          ; $7ac7: $43
	db $ed                                           ; $7ac8: $ed
	ld d, a                                          ; $7ac9: $57
	db $ed                                           ; $7aca: $ed
	ld a, c                                          ; $7acb: $79
	ldh a, [$39]                                     ; $7acc: $f0 $39
	ld b, h                                          ; $7ace: $44
	and b                                            ; $7acf: $a0
	cpl                                              ; $7ad0: $2f
	ld b, e                                          ; $7ad1: $43
	ldh a, [rSCY]                                    ; $7ad2: $f0 $42
	ldh a, [c]                                       ; $7ad4: $f2
	ld l, h                                          ; $7ad5: $6c
	ld e, c                                          ; $7ad6: $59
	xor h                                            ; $7ad7: $ac
	db $ed                                           ; $7ad8: $ed
	ld a, c                                          ; $7ad9: $79
	ldh a, [$39]                                     ; $7ada: $f0 $39
	ld d, e                                          ; $7adc: $53
	ldh a, [$ce]                                     ; $7add: $f0 $ce
	ld h, e                                          ; $7adf: $63
	dec sp                                           ; $7ae0: $3b
	dec a                                            ; $7ae1: $3d
	adc l                                            ; $7ae2: $8d
	dec [hl]                                         ; $7ae3: $35
	rla                                              ; $7ae4: $17
	sbc a                                            ; $7ae5: $9f
	ldh a, [$62]                                     ; $7ae6: $f0 $62
	ld b, d                                          ; $7ae8: $42
	ldh a, [rAUDVOL]                                 ; $7ae9: $f0 $24
	ld d, e                                          ; $7aeb: $53
	xor h                                            ; $7aec: $ac
	ldh a, [$62]                                     ; $7aed: $f0 $62
	pop af                                           ; $7aef: $f1
	sub b                                            ; $7af0: $90
	ldh a, [$cb]                                     ; $7af1: $f0 $cb
	ld c, [hl]                                       ; $7af3: $4e
	ld b, c                                          ; $7af4: $41
	ld b, h                                          ; $7af5: $44
	ld b, l                                          ; $7af6: $45
	ld a, [hl-]                                      ; $7af7: $3a
	ld [hl], h                                       ; $7af8: $74
	and b                                            ; $7af9: $a0
	cpl                                              ; $7afa: $2f
	ld [hl-], a                                      ; $7afb: $32
	db $ec                                           ; $7afc: $ec
	rst SubAFromDE                                          ; $7afd: $df
	ld c, e                                          ; $7afe: $4b
	xor h                                            ; $7aff: $ac
	di                                               ; $7b00: $f3
	inc c                                            ; $7b01: $0c
	ldh a, [c]                                       ; $7b02: $f2
	rla                                              ; $7b03: $17
	ld c, d                                          ; $7b04: $4a
	ldh a, [c]                                       ; $7b05: $f2
	ld [de], a                                       ; $7b06: $12
	ld c, l                                          ; $7b07: $4d
	ld a, [hl-]                                      ; $7b08: $3a
	inc a                                            ; $7b09: $3c
	dec sp                                           ; $7b0a: $3b
	dec a                                            ; $7b0b: $3d
	inc a                                            ; $7b0c: $3c
	ld a, [hl-]                                      ; $7b0d: $3a
	ld [hl], $33                                     ; $7b0e: $36 $33
	add hl, bc                                       ; $7b10: $09
	ld d, c                                          ; $7b11: $51
	jr c, jr_08a_7b66                                ; $7b12: $38 $52

	ld a, c                                          ; $7b14: $79
	ld b, c                                          ; $7b15: $41
	and b                                            ; $7b16: $a0
	cpl                                              ; $7b17: $2f
	ld b, e                                          ; $7b18: $43
	ld b, [hl]                                       ; $7b19: $46
	ld c, l                                          ; $7b1a: $4d
	xor c                                            ; $7b1b: $a9
	db $ec                                           ; $7b1c: $ec
	ld e, [hl]                                       ; $7b1d: $5e
	ld b, d                                          ; $7b1e: $42
	inc [hl]                                         ; $7b1f: $34
	ld e, [hl]                                       ; $7b20: $5e
	dec sp                                           ; $7b21: $3b
	ld c, c                                          ; $7b22: $49
	ld c, b                                          ; $7b23: $48
	and b                                            ; $7b24: $a0
	db $ed                                           ; $7b25: $ed
	rst $38                                          ; $7b26: $ff
	ldh a, [c]                                       ; $7b27: $f2
	ld b, e                                          ; $7b28: $43
	ldh a, [c]                                       ; $7b29: $f2
	rst SubAFromBC                                          ; $7b2a: $e7
	di                                               ; $7b2b: $f3
	ld l, $4a                                        ; $7b2c: $2e $4a
	xor h                                            ; $7b2e: $ac
	ld [hl], b                                       ; $7b2f: $70
	ldh a, [rAUD1SWEEP]                              ; $7b30: $f0 $10
	jr c, jr_08a_7b86                                ; $7b32: $38 $52

	ld d, c                                          ; $7b34: $51
	and b                                            ; $7b35: $a0
	cpl                                              ; $7b36: $2f
	ld b, e                                          ; $7b37: $43
	db $ec                                           ; $7b38: $ec
	di                                               ; $7b39: $f3
	ld a, [hl-]                                      ; $7b3a: $3a
	ld d, b                                          ; $7b3b: $50
	xor h                                            ; $7b3c: $ac
	pop af                                           ; $7b3d: $f1
	nop                                              ; $7b3e: $00
	pop af                                           ; $7b3f: $f1
	ld l, b                                          ; $7b40: $68
	ld b, a                                          ; $7b41: $47
	ld c, b                                          ; $7b42: $48
	and b                                            ; $7b43: $a0
	jr c, jr_08a_7b7a                                ; $7b44: $38 $34

	inc h                                            ; $7b46: $24
	jr c, jr_08a_7ba7                                ; $7b47: $38 $5e

	ld c, b                                          ; $7b49: $48
	dec [hl]                                         ; $7b4a: $35
	inc hl                                           ; $7b4b: $23
	inc de                                           ; $7b4c: $13
	ldh a, [$31]                                     ; $7b4d: $f0 $31
	ld c, e                                          ; $7b4f: $4b
	ldh a, [c]                                       ; $7b50: $f2
	rra                                              ; $7b51: $1f
	ldh a, [$38]                                     ; $7b52: $f0 $38
	ldh a, [hDisp0_OBP1]                                     ; $7b54: $f0 $87
	ld b, a                                          ; $7b56: $47
	inc de                                           ; $7b57: $13
	ldh a, [rAUD2LEN]                                ; $7b58: $f0 $16
	ld d, e                                          ; $7b5a: $53
	ld [hl], b                                       ; $7b5b: $70
	ldh a, [rAUD1SWEEP]                              ; $7b5c: $f0 $10
	jr c, jr_08a_7bb2                                ; $7b5e: $38 $52

	ld a, $3f                                        ; $7b60: $3e $3f
	ld c, b                                          ; $7b62: $48
	and b                                            ; $7b63: $a0
	cpl                                              ; $7b64: $2f
	ld b, e                                          ; $7b65: $43

jr_08a_7b66:
	ld e, [hl]                                       ; $7b66: $5e
	dec sp                                           ; $7b67: $3b
	xor c                                            ; $7b68: $a9
	halt                                             ; $7b69: $76
	ld b, a                                          ; $7b6a: $47
	and c                                            ; $7b6b: $a1
	ldh a, [$31]                                     ; $7b6c: $f0 $31
	ld c, e                                          ; $7b6e: $4b
	ld c, b                                          ; $7b6f: $48
	dec [hl]                                         ; $7b70: $35
	inc hl                                           ; $7b71: $23
	inc de                                           ; $7b72: $13
	ldh a, [c]                                       ; $7b73: $f2
	rra                                              ; $7b74: $1f
	ldh a, [$38]                                     ; $7b75: $f0 $38
	ldh a, [hDisp0_OBP1]                                     ; $7b77: $f0 $87
	ld b, d                                          ; $7b79: $42

jr_08a_7b7a:
	sbc d                                            ; $7b7a: $9a
	ld d, e                                          ; $7b7b: $53
	ld c, b                                          ; $7b7c: $48
	and b                                            ; $7b7d: $a0
	ld hl, $716e                                     ; $7b7e: $21 $6e $71
	ld c, [hl]                                       ; $7b81: $4e
	ld b, c                                          ; $7b82: $41
	ld b, h                                          ; $7b83: $44
	inc [hl]                                         ; $7b84: $34
	db $ed                                           ; $7b85: $ed

jr_08a_7b86:
	rst $38                                          ; $7b86: $ff
	and d                                            ; $7b87: $a2
	ld [hl], l                                       ; $7b88: $75
	inc [hl]                                         ; $7b89: $34
	ld [hl], l                                       ; $7b8a: $75
	ld a, l                                          ; $7b8b: $7d
	ldh a, [hDisp0_OBP1]                                     ; $7b8c: $f0 $87
	ld c, b                                          ; $7b8e: $48
	and b                                            ; $7b8f: $a0
	db $ed                                           ; $7b90: $ed
	ret nz                                           ; $7b91: $c0

	ld b, b                                          ; $7b92: $40
	ld c, l                                          ; $7b93: $4d
	ld c, e                                          ; $7b94: $4b
	xor h                                            ; $7b95: $ac
	pop af                                           ; $7b96: $f1
	rst $38                                          ; $7b97: $ff
	ld h, e                                          ; $7b98: $63
	ld c, l                                          ; $7b99: $4d
	pop af                                           ; $7b9a: $f1
	ld a, b                                          ; $7b9b: $78
	pop af                                           ; $7b9c: $f1
	ld [hl], b                                       ; $7b9d: $70
	ld b, h                                          ; $7b9e: $44
	ld c, b                                          ; $7b9f: $48
	dec [hl]                                         ; $7ba0: $35
	rla                                              ; $7ba1: $17
	ld h, h                                          ; $7ba2: $64
	sbc [hl]                                         ; $7ba3: $9e
	ld b, d                                          ; $7ba4: $42
	db $ed                                           ; $7ba5: $ed
	ld l, a                                          ; $7ba6: $6f

jr_08a_7ba7:
	ld h, c                                          ; $7ba7: $61
	ld c, e                                          ; $7ba8: $4b
	ld h, e                                          ; $7ba9: $63
	inc a                                            ; $7baa: $3c
	ld c, [hl]                                       ; $7bab: $4e
	ld d, e                                          ; $7bac: $53
	xor h                                            ; $7bad: $ac
	ld b, [hl]                                       ; $7bae: $46
	ld e, h                                          ; $7baf: $5c
	ld d, b                                          ; $7bb0: $50
	ld [hl], c                                       ; $7bb1: $71

jr_08a_7bb2:
	ld e, a                                          ; $7bb2: $5f
	ld c, b                                          ; $7bb3: $48
	and b                                            ; $7bb4: $a0
	ld hl, $10ee                                     ; $7bb5: $21 $ee $10
	xor $10                                          ; $7bb8: $ee $10
	and b                                            ; $7bba: $a0
	add hl, sp                                       ; $7bbb: $39
	ld h, c                                          ; $7bbc: $61
	ld b, d                                          ; $7bbd: $42
	db $ed                                           ; $7bbe: $ed
	rst $38                                          ; $7bbf: $ff
	ld d, e                                          ; $7bc0: $53
	inc de                                           ; $7bc1: $13
	ldh a, [rHDMA5]                                  ; $7bc2: $f0 $55
	ldh a, [rBCPS]                                   ; $7bc4: $f0 $68
	ld a, $3d                                        ; $7bc6: $3e $3d
	xor b                                            ; $7bc8: $a8
	ld l, d                                          ; $7bc9: $6a
	ld l, b                                          ; $7bca: $68
	ld b, d                                          ; $7bcb: $42
	sbc d                                            ; $7bcc: $9a
	ld c, e                                          ; $7bcd: $4b
	pop af                                           ; $7bce: $f1
	dec d                                            ; $7bcf: $15
	ld c, l                                          ; $7bd0: $4d
	ccf                                              ; $7bd1: $3f
	ld d, l                                          ; $7bd2: $55
	ld c, l                                          ; $7bd3: $4d
	dec a                                            ; $7bd4: $3d
	ld d, d                                          ; $7bd5: $52
	ld e, [hl]                                       ; $7bd6: $5e
	and b                                            ; $7bd7: $a0
	cpl                                              ; $7bd8: $2f
	ld b, e                                          ; $7bd9: $43
	jr c, jr_08a_7c10                                ; $7bda: $38 $34

	db $ec                                           ; $7bdc: $ec
	ld [$a048], sp                                   ; $7bdd: $08 $48 $a0
	ld e, b                                          ; $7be0: $58
	inc [hl]                                         ; $7be1: $34
	db $ed                                           ; $7be2: $ed
	rst $38                                          ; $7be3: $ff
	xor b                                            ; $7be4: $a8
	ld c, a                                          ; $7be5: $4f
	add hl, sp                                       ; $7be6: $39
	ld a, d                                          ; $7be7: $7a
	ld c, [hl]                                       ; $7be8: $4e
	ld b, c                                          ; $7be9: $41
	ld b, h                                          ; $7bea: $44
	and b                                            ; $7beb: $a0
	ld c, e                                          ; $7bec: $4b
	inc [hl]                                         ; $7bed: $34
	xor $2d                                          ; $7bee: $ee $2d
	xor l                                            ; $7bf0: $ad
	ld b, b                                          ; $7bf1: $40
	inc [hl]                                         ; $7bf2: $34
	inc h                                            ; $7bf3: $24
	jp z, $24ea                                      ; $7bf4: $ca $ea $24

	and b                                            ; $7bf7: $a0
	ld c, d                                          ; $7bf8: $4a
	ld c, e                                          ; $7bf9: $4b
	inc [hl]                                         ; $7bfa: $34
	ldh a, [rHDMA5]                                  ; $7bfb: $f0 $55
	ldh a, [rBCPS]                                   ; $7bfd: $f0 $68
	ld d, c                                          ; $7bff: $51
	ld c, [hl]                                       ; $7c00: $4e
	ld b, l                                          ; $7c01: $45
	and b                                            ; $7c02: $a0
	cpl                                              ; $7c03: $2f
	ld b, e                                          ; $7c04: $43
	db $ec                                           ; $7c05: $ec
	ld de, $3d3e                                     ; $7c06: $11 $3e $3d
	ld e, c                                          ; $7c09: $59
	xor b                                            ; $7c0a: $a8
	ld a, $3b                                        ; $7c0b: $3e $3b
	inc a                                            ; $7c0d: $3c
	ld a, $34                                        ; $7c0e: $3e $34

jr_08a_7c10:
	db $ed                                           ; $7c10: $ed
	rst $38                                          ; $7c11: $ff
	dec sp                                           ; $7c12: $3b
	ccf                                              ; $7c13: $3f
	ld l, l                                          ; $7c14: $6d
	ldh a, [$65]                                     ; $7c15: $f0 $65
	ld c, b                                          ; $7c17: $48
	and b                                            ; $7c18: $a0
	ld b, l                                          ; $7c19: $45
	ld h, h                                          ; $7c1a: $64
	and b                                            ; $7c1b: $a0
	cpl                                              ; $7c1c: $2f
	ld b, e                                          ; $7c1d: $43
	ld a, [hl-]                                      ; $7c1e: $3a
	ld b, c                                          ; $7c1f: $41
	ld b, h                                          ; $7c20: $44
	inc [hl]                                         ; $7c21: $34
	adc e                                            ; $7c22: $8b
	ldh a, [$72]                                     ; $7c23: $f0 $72
	inc a                                            ; $7c25: $3c
	and b                                            ; $7c26: $a0
	ld c, c                                          ; $7c27: $49
	add hl, sp                                       ; $7c28: $39
	ld c, c                                          ; $7c29: $49
	add hl, sp                                       ; $7c2a: $39
	inc [hl]                                         ; $7c2b: $34
	ld d, h                                          ; $7c2c: $54
	ld b, d                                          ; $7c2d: $42
	adc c                                            ; $7c2e: $89
	sbc a                                            ; $7c2f: $9f
	ld c, c                                          ; $7c30: $49
	ld c, a                                          ; $7c31: $4f
	inc de                                           ; $7c32: $13
	ld h, h                                          ; $7c33: $64
	ldh a, [$34]                                     ; $7c34: $f0 $34
	ld c, l                                          ; $7c36: $4d
	ld b, h                                          ; $7c37: $44
	ld a, [hl-]                                      ; $7c38: $3a
	and b                                            ; $7c39: $a0
	cpl                                              ; $7c3a: $2f
	ld b, e                                          ; $7c3b: $43
	ld b, [hl]                                       ; $7c3c: $46
	xor $20                                          ; $7c3d: $ee $20
	rla                                              ; $7c3f: $17
	ld b, [hl]                                       ; $7c40: $46
	dec sp                                           ; $7c41: $3b
	ld c, c                                          ; $7c42: $49
	jr c, @+$3b                                      ; $7c43: $38 $39

	ldh a, [$2a]                                     ; $7c45: $f0 $2a
	ld b, d                                          ; $7c47: $42
	inc de                                           ; $7c48: $13
	pop af                                           ; $7c49: $f1
	ld [hl], e                                       ; $7c4a: $73
	ldh a, [rAUD1HIGH]                               ; $7c4b: $f0 $14
	ldh a, [$2a]                                     ; $7c4d: $f0 $2a
	ld b, h                                          ; $7c4f: $44
	dec sp                                           ; $7c50: $3b
	dec a                                            ; $7c51: $3d
	ld b, l                                          ; $7c52: $45
	and b                                            ; $7c53: $a0
	db $ec                                           ; $7c54: $ec
	ld bc, $64ac                                     ; $7c55: $01 $ac $64
	sbc [hl]                                         ; $7c58: $9e
	inc [hl]                                         ; $7c59: $34
	pop af                                           ; $7c5a: $f1
	dec hl                                           ; $7c5b: $2b
	pop af                                           ; $7c5c: $f1
	db $ec                                           ; $7c5d: $ec
	ld c, e                                          ; $7c5e: $4b
	ld e, d                                          ; $7c5f: $5a
	add hl, sp                                       ; $7c60: $39
	ld d, c                                          ; $7c61: $51
	ld c, [hl]                                       ; $7c62: $4e
	ld b, c                                          ; $7c63: $41
	ld b, h                                          ; $7c64: $44
	and c                                            ; $7c65: $a1
	ld b, b                                          ; $7c66: $40
	ld c, l                                          ; $7c67: $4d
	ld e, e                                          ; $7c68: $5b
	ld d, [hl]                                       ; $7c69: $56
	inc [hl]                                         ; $7c6a: $34
	db $ed                                           ; $7c6b: $ed
	ld e, b                                          ; $7c6c: $58
	and b                                            ; $7c6d: $a0
	cpl                                              ; $7c6e: $2f
	ld b, e                                          ; $7c6f: $43
	ld b, b                                          ; $7c70: $40
	add hl, sp                                       ; $7c71: $39
	ld b, h                                          ; $7c72: $44
	ld a, [hl-]                                      ; $7c73: $3a
	ld [hl], h                                       ; $7c74: $74
	inc [hl]                                         ; $7c75: $34
	db $ed                                           ; $7c76: $ed
	ld e, b                                          ; $7c77: $58
	and b                                            ; $7c78: $a0
	ld h, h                                          ; $7c79: $64
	sbc c                                            ; $7c7a: $99
	dec a                                            ; $7c7b: $3d
	ld a, c                                          ; $7c7c: $79
	ld a, $52                                        ; $7c7d: $3e $52
	ld a, $3d                                        ; $7c7f: $3e $3d
	and b                                            ; $7c81: $a0
	ld a, [hl-]                                      ; $7c82: $3a
	ld b, c                                          ; $7c83: $41
	ld b, h                                          ; $7c84: $44
	inc [hl]                                         ; $7c85: $34
	db $ed                                           ; $7c86: $ed
	add e                                            ; $7c87: $83
	inc a                                            ; $7c88: $3c
	and b                                            ; $7c89: $a0
	ld e, b                                          ; $7c8a: $58
	ld [hl], h                                       ; $7c8b: $74
	xor h                                            ; $7c8c: $ac
	db $ed                                           ; $7c8d: $ed
	ld c, $34                                        ; $7c8e: $0e $34
	or b                                             ; $7c90: $b0
	and b                                            ; $7c91: $a0
	ld h, h                                          ; $7c92: $64
	sbc c                                            ; $7c93: $99
	dec a                                            ; $7c94: $3d
	ld a, c                                          ; $7c95: $79
	and b                                            ; $7c96: $a0
	ld a, [hl-]                                      ; $7c97: $3a
	ld b, c                                          ; $7c98: $41
	ld b, h                                          ; $7c99: $44
	inc [hl]                                         ; $7c9a: $34
	db $ed                                           ; $7c9b: $ed
	or e                                             ; $7c9c: $b3
	inc a                                            ; $7c9d: $3c
	and b                                            ; $7c9e: $a0
	ld e, b                                          ; $7c9f: $58
	ld [hl], h                                       ; $7ca0: $74
	db $ed                                           ; $7ca1: $ed
	ld c, $ac                                        ; $7ca2: $0e $ac
	db $ec                                           ; $7ca4: $ec
	ld [hl-], a                                      ; $7ca5: $32
	and b                                            ; $7ca6: $a0
	db $ed                                           ; $7ca7: $ed
	ld b, [hl]                                       ; $7ca8: $46
	inc [hl]                                         ; $7ca9: $34
	ld h, h                                          ; $7caa: $64
	sbc c                                            ; $7cab: $99
	dec a                                            ; $7cac: $3d
	ld a, c                                          ; $7cad: $79
	and b                                            ; $7cae: $a0
	ld a, [hl-]                                      ; $7caf: $3a
	ld b, c                                          ; $7cb0: $41
	ld b, h                                          ; $7cb1: $44
	inc [hl]                                         ; $7cb2: $34
	db $ed                                           ; $7cb3: $ed
	cp [hl]                                          ; $7cb4: $be
	inc a                                            ; $7cb5: $3c
	and b                                            ; $7cb6: $a0
	sbc c                                            ; $7cb7: $99
	dec a                                            ; $7cb8: $3d
	ld a, c                                          ; $7cb9: $79
	ldh [$a0], a                                     ; $7cba: $e0 $a0
	ld a, [hl-]                                      ; $7cbc: $3a
	ld b, c                                          ; $7cbd: $41
	ld b, h                                          ; $7cbe: $44
	inc [hl]                                         ; $7cbf: $34
	xor $25                                          ; $7cc0: $ee $25
	inc a                                            ; $7cc2: $3c
	and b                                            ; $7cc3: $a0
	ld h, h                                          ; $7cc4: $64
	ld d, d                                          ; $7cc5: $52
	dec a                                            ; $7cc6: $3d
	ld a, c                                          ; $7cc7: $79
	ld e, c                                          ; $7cc8: $59
	and b                                            ; $7cc9: $a0
	ld a, [hl-]                                      ; $7cca: $3a
	ld b, c                                          ; $7ccb: $41
	ld b, h                                          ; $7ccc: $44
	inc [hl]                                         ; $7ccd: $34
	xor $26                                          ; $7cce: $ee $26
	inc a                                            ; $7cd0: $3c
	and b                                            ; $7cd1: $a0
	ld b, b                                          ; $7cd2: $40
	ld c, l                                          ; $7cd3: $4d
	ld e, e                                          ; $7cd4: $5b
	ld d, [hl]                                       ; $7cd5: $56
	xor h                                            ; $7cd6: $ac
	db $ed                                           ; $7cd7: $ed
	ld c, $34                                        ; $7cd8: $0e $34
	ld a, d                                          ; $7cda: $7a
	ld e, a                                          ; $7cdb: $5f
	and b                                            ; $7cdc: $a0
	ld h, h                                          ; $7cdd: $64
	ldh a, [rAUD3HIGH]                               ; $7cde: $f0 $1e
	ld d, d                                          ; $7ce0: $52
	ldh a, [rAUD3HIGH]                               ; $7ce1: $f0 $1e
	dec a                                            ; $7ce3: $3d
	ldh a, [rAUD3HIGH]                               ; $7ce4: $f0 $1e
	ld a, c                                          ; $7ce6: $79
	and b                                            ; $7ce7: $a0
	ld a, [hl-]                                      ; $7ce8: $3a
	ld b, c                                          ; $7ce9: $41
	ld b, h                                          ; $7cea: $44
	inc [hl]                                         ; $7ceb: $34
	xor $0a                                          ; $7cec: $ee $0a
	inc a                                            ; $7cee: $3c
	and b                                            ; $7cef: $a0
	ld e, b                                          ; $7cf0: $58
	ld [hl], h                                       ; $7cf1: $74
	db $ed                                           ; $7cf2: $ed
	ld c, $ac                                        ; $7cf3: $0e $ac
	or b                                             ; $7cf5: $b0
	and b                                            ; $7cf6: $a0
	ld e, e                                          ; $7cf7: $5b
	ld d, [hl]                                       ; $7cf8: $56
	ld b, [hl]                                       ; $7cf9: $46
	xor h                                            ; $7cfa: $ac
	halt                                             ; $7cfb: $76
	ldh a, [rSTAT]                                   ; $7cfc: $f0 $41
	ld c, e                                          ; $7cfe: $4b
	ldh a, [$bc]                                     ; $7cff: $f0 $bc
	ld b, a                                          ; $7d01: $47
	ld a, d                                          ; $7d02: $7a
	ld c, [hl]                                       ; $7d03: $4e
	adc l                                            ; $7d04: $8d
	xor b                                            ; $7d05: $a8
	pop af                                           ; $7d06: $f1
	rra                                              ; $7d07: $1f
	ld a, a                                          ; $7d08: $7f
	ld c, d                                          ; $7d09: $4a
	ld a, [hl-]                                      ; $7d0a: $3a
	and b                                            ; $7d0b: $a0
	cpl                                              ; $7d0c: $2f
	ld b, e                                          ; $7d0d: $43
	ld b, [hl]                                       ; $7d0e: $46
	inc [hl]                                         ; $7d0f: $34
	ld b, [hl]                                       ; $7d10: $46
	ld b, [hl]                                       ; $7d11: $46
	xor b                                            ; $7d12: $a8
	db $ed                                           ; $7d13: $ed
	dec d                                            ; $7d14: $15
	ld a, [hl-]                                      ; $7d15: $3a
	and b                                            ; $7d16: $a0
	cpl                                              ; $7d17: $2f
	ld b, e                                          ; $7d18: $43
	jr c, jr_08a_7d53                                ; $7d19: $38 $38

	ld b, l                                          ; $7d1b: $45
	ld a, [hl-]                                      ; $7d1c: $3a
	ld [hl], h                                       ; $7d1d: $74
	inc [hl]                                         ; $7d1e: $34
	adc e                                            ; $7d1f: $8b
	ldh a, [$72]                                     ; $7d20: $f0 $72
	ld c, e                                          ; $7d22: $4b
	ld c, b                                          ; $7d23: $48
	dec [hl]                                         ; $7d24: $35
	ld [hl+], a                                      ; $7d25: $22
	inc de                                           ; $7d26: $13
	halt                                             ; $7d27: $76
	ld c, a                                          ; $7d28: $4f
	inc [hl]                                         ; $7d29: $34
	db $ed                                           ; $7d2a: $ed
	ld e, b                                          ; $7d2b: $58
	ld c, b                                          ; $7d2c: $48
	and b                                            ; $7d2d: $a0
	cpl                                              ; $7d2e: $2f
	ld b, e                                          ; $7d2f: $43
	db $ed                                           ; $7d30: $ed
	ld d, $34                                        ; $7d31: $16 $34
	inc hl                                           ; $7d33: $23
	di                                               ; $7d34: $f3
	push bc                                          ; $7d35: $c5
	ld b, d                                          ; $7d36: $42
	ldh a, [rAUD2HIGH]                               ; $7d37: $f0 $19
	ld b, a                                          ; $7d39: $47
	xor h                                            ; $7d3a: $ac
	ldh a, [$0b]                                     ; $7d3b: $f0 $0b
	di                                               ; $7d3d: $f3
	ld c, c                                          ; $7d3e: $49
	ld d, e                                          ; $7d3f: $53
	sub [hl]                                         ; $7d40: $96
	dec sp                                           ; $7d41: $3b
	ccf                                              ; $7d42: $3f
	jr c, @+$50                                      ; $7d43: $38 $4e

	sub a                                            ; $7d45: $97
	dec [hl]                                         ; $7d46: $35
	inc hl                                           ; $7d47: $23
	inc de                                           ; $7d48: $13
	ldh a, [$98]                                     ; $7d49: $f0 $98
	inc a                                            ; $7d4b: $3c
	ld d, b                                          ; $7d4c: $50
	ld b, h                                          ; $7d4d: $44
	ld e, a                                          ; $7d4e: $5f
	add hl, sp                                       ; $7d4f: $39
	and b                                            ; $7d50: $a0
	cpl                                              ; $7d51: $2f
	ld b, e                                          ; $7d52: $43

jr_08a_7d53:
	ld l, e                                          ; $7d53: $6b
	ldh a, [$cf]                                     ; $7d54: $f0 $cf
	ld c, b                                          ; $7d56: $48
	inc [hl]                                         ; $7d57: $34
	inc h                                            ; $7d58: $24
	rla                                              ; $7d59: $17
	ld b, e                                          ; $7d5a: $43
	pop af                                           ; $7d5b: $f1
	ld [hl], c                                       ; $7d5c: $71
	pop af                                           ; $7d5d: $f1
	dec c                                            ; $7d5e: $0d
	ld b, d                                          ; $7d5f: $42
	ldh a, [$37]                                     ; $7d60: $f0 $37
	ld b, d                                          ; $7d62: $42
	ldh a, [$a3]                                     ; $7d63: $f0 $a3
	ld c, d                                          ; $7d65: $4a
	xor h                                            ; $7d66: $ac
	sbc c                                            ; $7d67: $99
	dec sp                                           ; $7d68: $3b
	ccf                                              ; $7d69: $3f
	jr c, jr_08a_7dbe                                ; $7d6a: $38 $52

	ld d, c                                          ; $7d6c: $51
	dec [hl]                                         ; $7d6d: $35
	ldh a, [$eb]                                     ; $7d6e: $f0 $eb
	ld [hl+], a                                      ; $7d70: $22
	inc de                                           ; $7d71: $13
	db $ed                                           ; $7d72: $ed
	ld [hl], c                                       ; $7d73: $71
	ld c, e                                          ; $7d74: $4b
	inc hl                                           ; $7d75: $23
	ldh a, [rAUD3HIGH]                               ; $7d76: $f0 $1e
	inc hl                                           ; $7d78: $23
	ldh a, [rAUD3HIGH]                               ; $7d79: $f0 $1e
	inc hl                                           ; $7d7b: $23
	ldh a, [rAUD3HIGH]                               ; $7d7c: $f0 $1e
	inc hl                                           ; $7d7e: $23
	inc de                                           ; $7d7f: $13
	ld e, d                                          ; $7d80: $5a
	ld d, h                                          ; $7d81: $54
	ld b, a                                          ; $7d82: $47
	ld c, a                                          ; $7d83: $4f
	ldh a, [rAUD1LOW]                                ; $7d84: $f0 $13
	jr c, jr_08a_7dc2                                ; $7d86: $38 $3a

	ld [hl], h                                       ; $7d88: $74
	and b                                            ; $7d89: $a0
	cpl                                              ; $7d8a: $2f
	ld b, e                                          ; $7d8b: $43
	ld b, b                                          ; $7d8c: $40
	ld c, l                                          ; $7d8d: $4d
	ld e, e                                          ; $7d8e: $5b
	ld d, [hl]                                       ; $7d8f: $56
	xor h                                            ; $7d90: $ac
	pop af                                           ; $7d91: $f1
	ld d, $38                                        ; $7d92: $16 $38
	ld c, d                                          ; $7d94: $4a
	ld h, a                                          ; $7d95: $67
	inc a                                            ; $7d96: $3c
	ld a, [hl-]                                      ; $7d97: $3a
	ld d, l                                          ; $7d98: $55
	ld h, c                                          ; $7d99: $61
	ld d, [hl]                                       ; $7d9a: $56
	and b                                            ; $7d9b: $a0
	cpl                                              ; $7d9c: $2f
	ld b, e                                          ; $7d9d: $43
	add a                                            ; $7d9e: $87
	adc c                                            ; $7d9f: $89
	sub [hl]                                         ; $7da0: $96
	pop af                                           ; $7da1: $f1
	add hl, sp                                       ; $7da2: $39
	ld b, a                                          ; $7da3: $47
	ld c, e                                          ; $7da4: $4b
	xor h                                            ; $7da5: $ac
	ldh a, [rHDMA5]                                  ; $7da6: $f0 $55
	pop af                                           ; $7da8: $f1
	add b                                            ; $7da9: $80
	db $eb                                           ; $7daa: $eb
	ld d, [hl]                                       ; $7dab: $56
	ld a, $3a                                        ; $7dac: $3e $3a
	ld [hl], h                                       ; $7dae: $74
	ld c, b                                          ; $7daf: $48
	and b                                            ; $7db0: $a0
	cpl                                              ; $7db1: $2f
	ld b, e                                          ; $7db2: $43
	ldh a, [c]                                       ; $7db3: $f2
	ld [hl-], a                                      ; $7db4: $32
	pop af                                           ; $7db5: $f1
	rst FarCall                                          ; $7db6: $f7
	xor $2c                                          ; $7db7: $ee $2c
	ld b, a                                          ; $7db9: $47
	ld c, e                                          ; $7dba: $4b
	xor h                                            ; $7dbb: $ac
	ldh a, [rHDMA5]                                  ; $7dbc: $f0 $55

jr_08a_7dbe:
	pop af                                           ; $7dbe: $f1
	add b                                            ; $7dbf: $80
	db $eb                                           ; $7dc0: $eb
	ld d, [hl]                                       ; $7dc1: $56

jr_08a_7dc2:
	ld a, $3a                                        ; $7dc2: $3e $3a
	ld [hl], h                                       ; $7dc4: $74
	ld c, b                                          ; $7dc5: $48
	and b                                            ; $7dc6: $a0
	ld h, h                                          ; $7dc7: $64
	ld h, h                                          ; $7dc8: $64
	inc [hl]                                         ; $7dc9: $34
	ld b, b                                          ; $7dca: $40
	add hl, sp                                       ; $7dcb: $39
	inc a                                            ; $7dcc: $3c
	dec [hl]                                         ; $7dcd: $35
	rla                                              ; $7dce: $17
	ldh a, [$31]                                     ; $7dcf: $f0 $31
	ld c, e                                          ; $7dd1: $4b
	halt                                             ; $7dd2: $76
	ld c, a                                          ; $7dd3: $4f
	xor h                                            ; $7dd4: $ac
	add a                                            ; $7dd5: $87
	adc c                                            ; $7dd6: $89
	pop af                                           ; $7dd7: $f1
	add c                                            ; $7dd8: $81
	ld h, c                                          ; $7dd9: $61
	dec a                                            ; $7dda: $3d
	ld b, c                                          ; $7ddb: $41
	ld b, h                                          ; $7ddc: $44
	ld b, l                                          ; $7ddd: $45
	and b                                            ; $7dde: $a0
	cpl                                              ; $7ddf: $2f
	ld b, e                                          ; $7de0: $43
	ld b, [hl]                                       ; $7de1: $46
	inc [hl]                                         ; $7de2: $34
	ld c, d                                          ; $7de3: $4a
	ld c, a                                          ; $7de4: $4f
	halt                                             ; $7de5: $76
	xor h                                            ; $7de6: $ac
	db $ec                                           ; $7de7: $ec
	and l                                            ; $7de8: $a5
	ld b, a                                          ; $7de9: $47
	inc de                                           ; $7dea: $13
	pop af                                           ; $7deb: $f1
	dec hl                                           ; $7dec: $2b
	ldh a, [$be]                                     ; $7ded: $f0 $be
	ld d, h                                          ; $7def: $54
	ld c, c                                          ; $7df0: $49
	ld b, a                                          ; $7df1: $47
	ld a, $3d                                        ; $7df2: $3e $3d
	ld b, c                                          ; $7df4: $41
	ld b, h                                          ; $7df5: $44
	and b                                            ; $7df6: $a0
	cpl                                              ; $7df7: $2f
	ld b, e                                          ; $7df8: $43
	ld b, [hl]                                       ; $7df9: $46
	inc [hl]                                         ; $7dfa: $34
	ld c, d                                          ; $7dfb: $4a
	ld c, a                                          ; $7dfc: $4f
	halt                                             ; $7dfd: $76
	xor h                                            ; $7dfe: $ac
	ldh a, [$2d]                                     ; $7dff: $f0 $2d
	ld d, a                                          ; $7e01: $57
	ldh a, [rHDMA3]                                  ; $7e02: $f0 $53
	jr c, jr_08a_7e48                                ; $7e04: $38 $42

	add b                                            ; $7e06: $80
	ccf                                              ; $7e07: $3f
	ld c, d                                          ; $7e08: $4a
	xor h                                            ; $7e09: $ac
	ldh a, [rAUD3LOW]                                ; $7e0a: $f0 $1d
	add e                                            ; $7e0c: $83
	ldh a, [rAUD1LEN]                                ; $7e0d: $f0 $11
	pop af                                           ; $7e0f: $f1
	ld d, h                                          ; $7e10: $54
	db $ed                                           ; $7e11: $ed
	ld a, a                                          ; $7e12: $7f
	ld b, d                                          ; $7e13: $42
	ldh a, [c]                                       ; $7e14: $f2
	sbc c                                            ; $7e15: $99
	sbc d                                            ; $7e16: $9a
	ld b, a                                          ; $7e17: $47
	add b                                            ; $7e18: $80
	ld d, l                                          ; $7e19: $55
	ld b, c                                          ; $7e1a: $41
	ld b, h                                          ; $7e1b: $44
	and b                                            ; $7e1c: $a0
	cpl                                              ; $7e1d: $2f
	ld b, e                                          ; $7e1e: $43
	ld b, [hl]                                       ; $7e1f: $46
	inc [hl]                                         ; $7e20: $34
	ld c, d                                          ; $7e21: $4a
	ld c, a                                          ; $7e22: $4f
	halt                                             ; $7e23: $76
	xor h                                            ; $7e24: $ac
	di                                               ; $7e25: $f3
	ld [hl-], a                                      ; $7e26: $32
	ld c, d                                          ; $7e27: $4a
	add e                                            ; $7e28: $83
	ldh a, [$35]                                     ; $7e29: $f0 $35
	ldh a, [hDisp0_WX]                                     ; $7e2b: $f0 $89
	ld l, c                                          ; $7e2d: $69
	ld e, b                                          ; $7e2e: $58
	ld c, l                                          ; $7e2f: $4d
	ccf                                              ; $7e30: $3f
	inc de                                           ; $7e31: $13
	ldh a, [$b8]                                     ; $7e32: $f0 $b8
	pop af                                           ; $7e34: $f1
	ld [hl], d                                       ; $7e35: $72
	pop af                                           ; $7e36: $f1
	inc [hl]                                         ; $7e37: $34
	ld b, d                                          ; $7e38: $42
	ldh a, [$ee]                                     ; $7e39: $f0 $ee
	ld b, a                                          ; $7e3b: $47
	inc de                                           ; $7e3c: $13
	pop af                                           ; $7e3d: $f1
	dec hl                                           ; $7e3e: $2b
	ldh a, [$be]                                     ; $7e3f: $f0 $be
	ld d, h                                          ; $7e41: $54
	ld c, c                                          ; $7e42: $49
	ld b, a                                          ; $7e43: $47
	ld a, [hl-]                                      ; $7e44: $3a
	dec sp                                           ; $7e45: $3b
	dec a                                            ; $7e46: $3d
	ld b, c                                          ; $7e47: $41

jr_08a_7e48:
	ld b, h                                          ; $7e48: $44
	and b                                            ; $7e49: $a0
	cpl                                              ; $7e4a: $2f
	ld b, e                                          ; $7e4b: $43
	ld b, [hl]                                       ; $7e4c: $46
	inc [hl]                                         ; $7e4d: $34
	ld c, d                                          ; $7e4e: $4a
	ld c, a                                          ; $7e4f: $4f
	halt                                             ; $7e50: $76
	xor h                                            ; $7e51: $ac
	di                                               ; $7e52: $f3
	db $e4                                           ; $7e53: $e4
	di                                               ; $7e54: $f3
	ld e, [hl]                                       ; $7e55: $5e
	ldh a, [c]                                       ; $7e56: $f2
	ld l, b                                          ; $7e57: $68
	ld b, a                                          ; $7e58: $47
	db $f4                                           ; $7e59: $f4
	ld de, $3bf0                                     ; $7e5a: $11 $f0 $3b
	ld e, b                                          ; $7e5d: $58
	ld c, l                                          ; $7e5e: $4d
	ccf                                              ; $7e5f: $3f
	xor h                                            ; $7e60: $ac
	ld h, a                                          ; $7e61: $67
	ld d, l                                          ; $7e62: $55
	ld d, h                                          ; $7e63: $54
	ld c, c                                          ; $7e64: $49
	ld b, a                                          ; $7e65: $47
	ldh a, [$ec]                                     ; $7e66: $f0 $ec
	ld [hl], c                                       ; $7e68: $71
	dec a                                            ; $7e69: $3d
	ld b, c                                          ; $7e6a: $41
	ld b, h                                          ; $7e6b: $44
	and b                                            ; $7e6c: $a0
	cpl                                              ; $7e6d: $2f
	ld b, e                                          ; $7e6e: $43
	ld b, [hl]                                       ; $7e6f: $46
	inc [hl]                                         ; $7e70: $34
	ld c, d                                          ; $7e71: $4a
	ld c, a                                          ; $7e72: $4f
	halt                                             ; $7e73: $76
	xor h                                            ; $7e74: $ac
	pop af                                           ; $7e75: $f1
	ld [$537f], a                                    ; $7e76: $ea $7f $53
	ld h, c                                          ; $7e79: $61
	ld b, h                                          ; $7e7a: $44
	inc a                                            ; $7e7b: $3c
	ld d, b                                          ; $7e7c: $50
	xor h                                            ; $7e7d: $ac
	db $ec                                           ; $7e7e: $ec
	db $eb                                           ; $7e7f: $eb
	sub [hl]                                         ; $7e80: $96
	ldh a, [hDisp1_SCX]                                     ; $7e81: $f0 $91
	ld [$451d], a                                    ; $7e83: $ea $1d $45
	and b                                            ; $7e86: $a0
	ld b, b                                          ; $7e87: $40
	add hl, sp                                       ; $7e88: $39
	inc a                                            ; $7e89: $3c
	xor b                                            ; $7e8a: $a8
	ld h, h                                          ; $7e8b: $64
	sbc [hl]                                         ; $7e8c: $9e
	inc [hl]                                         ; $7e8d: $34
	ldh a, [rAUD1LOW]                                ; $7e8e: $f0 $13
	ldh a, [$63]                                     ; $7e90: $f0 $63
	ld a, $51                                        ; $7e92: $3e $51
	ldh a, [$cb]                                     ; $7e94: $f0 $cb
	ld b, h                                          ; $7e96: $44
	dec sp                                           ; $7e97: $3b
	dec a                                            ; $7e98: $3d
	inc a                                            ; $7e99: $3c
	ld d, b                                          ; $7e9a: $50
	ld a, [hl-]                                      ; $7e9b: $3a
	xor b                                            ; $7e9c: $a8
	ldh a, [$65]                                     ; $7e9d: $f0 $65
	inc [hl]                                         ; $7e9f: $34
	add a                                            ; $7ea0: $87
	sbc d                                            ; $7ea1: $9a
	ld b, a                                          ; $7ea2: $47
	ld a, $5f                                        ; $7ea3: $3e $5f
	ld b, l                                          ; $7ea5: $45
	and b                                            ; $7ea6: $a0
	cpl                                              ; $7ea7: $2f
	ld b, e                                          ; $7ea8: $43
	ld b, [hl]                                       ; $7ea9: $46
	inc [hl]                                         ; $7eaa: $34
	ld b, [hl]                                       ; $7eab: $46
	ld d, a                                          ; $7eac: $57
	ld d, e                                          ; $7ead: $53
	ld c, c                                          ; $7eae: $49
	add hl, sp                                       ; $7eaf: $39
	xor b                                            ; $7eb0: $a8
	ld h, h                                          ; $7eb1: $64
	sbc [hl]                                         ; $7eb2: $9e
	inc a                                            ; $7eb3: $3c
	ld d, b                                          ; $7eb4: $50
	xor h                                            ; $7eb5: $ac
	ld b, b                                          ; $7eb6: $40
	ld b, c                                          ; $7eb7: $41
	ld a, [hl-]                                      ; $7eb8: $3a
	add d                                            ; $7eb9: $82
	pop af                                           ; $7eba: $f1
	adc h                                            ; $7ebb: $8c
	ld d, e                                          ; $7ebc: $53
	ldh a, [$0c]                                     ; $7ebd: $f0 $0c
	ld e, l                                          ; $7ebf: $5d
	ld c, [hl]                                       ; $7ec0: $4e
	ld a, [hl-]                                      ; $7ec1: $3a
	ld b, c                                          ; $7ec2: $41
	ccf                                              ; $7ec3: $3f
	ld c, b                                          ; $7ec4: $48
	and b                                            ; $7ec5: $a0
	cpl                                              ; $7ec6: $2f
	ld b, e                                          ; $7ec7: $43
	ld c, c                                          ; $7ec8: $49
	ld d, a                                          ; $7ec9: $57
	ld b, [hl]                                       ; $7eca: $46
	ld e, [hl]                                       ; $7ecb: $5e
	sbc h                                            ; $7ecc: $9c
	xor h                                            ; $7ecd: $ac
	ld b, [hl]                                       ; $7ece: $46
	ld c, c                                          ; $7ecf: $49
	ld l, l                                          ; $7ed0: $6d
	ldh a, [rAUD1HIGH]                               ; $7ed1: $f0 $14
	sub d                                            ; $7ed3: $92
	adc [hl]                                         ; $7ed4: $8e
	dec sp                                           ; $7ed5: $3b
	ccf                                              ; $7ed6: $3f
	inc [hl]                                         ; $7ed7: $34
	ld a, b                                          ; $7ed8: $78
	ldh a, [rAUD1HIGH]                               ; $7ed9: $f0 $14
	ld d, d                                          ; $7edb: $52
	dec a                                            ; $7edc: $3d
	inc de                                           ; $7edd: $13
	pop af                                           ; $7ede: $f1
	ld c, d                                          ; $7edf: $4a
	ldh a, [$ad]                                     ; $7ee0: $f0 $ad
	ld a, $45                                        ; $7ee2: $3e $45
	add hl, sp                                       ; $7ee4: $39
	ld c, c                                          ; $7ee5: $49
	ld [hl], a                                       ; $7ee6: $77
	dec sp                                           ; $7ee7: $3b
	ccf                                              ; $7ee8: $3f
	ld c, [hl]                                       ; $7ee9: $4e
	ld b, c                                          ; $7eea: $41
	ld b, h                                          ; $7eeb: $44
	and b                                            ; $7eec: $a0
	cpl                                              ; $7eed: $2f
	ld b, e                                          ; $7eee: $43
	ld c, c                                          ; $7eef: $49
	ld d, a                                          ; $7ef0: $57
	ld b, [hl]                                       ; $7ef1: $46
	ld e, [hl]                                       ; $7ef2: $5e
	sbc h                                            ; $7ef3: $9c
	xor h                                            ; $7ef4: $ac
	ld l, [hl]                                       ; $7ef5: $6e
	ld c, [hl]                                       ; $7ef6: $4e
	ld d, h                                          ; $7ef7: $54
	ld c, c                                          ; $7ef8: $49
	ld d, e                                          ; $7ef9: $53
	ldh a, [$ec]                                     ; $7efa: $f0 $ec
	ld d, d                                          ; $7efc: $52
	ld c, [hl]                                       ; $7efd: $4e
	ld d, d                                          ; $7efe: $52
	ld c, d                                          ; $7eff: $4a
	inc de                                           ; $7f00: $13
	ldh a, [$8e]                                     ; $7f01: $f0 $8e
	ldh a, [rP1]                                     ; $7f03: $f0 $00
	ld e, c                                          ; $7f05: $59
	ldh a, [rDIV]                                    ; $7f06: $f0 $04
	ld e, c                                          ; $7f08: $59
	ld c, d                                          ; $7f09: $4a
	ld c, a                                          ; $7f0a: $4f
	ld a, $45                                        ; $7f0b: $3e $45
	add hl, sp                                       ; $7f0d: $39
	ld c, c                                          ; $7f0e: $49
	inc de                                           ; $7f0f: $13
	ld [hl], a                                       ; $7f10: $77
	dec sp                                           ; $7f11: $3b
	ccf                                              ; $7f12: $3f
	ld c, [hl]                                       ; $7f13: $4e
	ld b, c                                          ; $7f14: $41
	ld b, h                                          ; $7f15: $44
	and b                                            ; $7f16: $a0
	ld b, l                                          ; $7f17: $45
	ld a, $45                                        ; $7f18: $3e $45
	ld a, $ac                                        ; $7f1a: $3e $ac
	halt                                             ; $7f1c: $76
	dec a                                            ; $7f1d: $3d
	ld h, c                                          ; $7f1e: $61
	ld d, [hl]                                       ; $7f1f: $56
	inc [hl]                                         ; $7f20: $34
	pop af                                           ; $7f21: $f1
	ld h, b                                          ; $7f22: $60
	ldh a, [$2a]                                     ; $7f23: $f0 $2a
	ld b, h                                          ; $7f25: $44
	ld a, [hl-]                                      ; $7f26: $3a
	and b                                            ; $7f27: $a0
	cpl                                              ; $7f28: $2f
	ld b, e                                          ; $7f29: $43
	ld a, [hl-]                                      ; $7f2a: $3a
	ld b, c                                          ; $7f2b: $41
	inc a                                            ; $7f2c: $3c
	xor h                                            ; $7f2d: $ac
	pop af                                           ; $7f2e: $f1
	xor b                                            ; $7f2f: $a8
	ld a, $38                                        ; $7f30: $3e $38
	pop af                                           ; $7f32: $f1
	ld h, b                                          ; $7f33: $60
	ldh a, [$2a]                                     ; $7f34: $f0 $2a
	ld b, h                                          ; $7f36: $44
	ld a, [hl-]                                      ; $7f37: $3a
	ld c, b                                          ; $7f38: $48
	and b                                            ; $7f39: $a0
	cpl                                              ; $7f3a: $2f
	ld b, e                                          ; $7f3b: $43
	halt                                             ; $7f3c: $76
	ld c, e                                          ; $7f3d: $4b
	inc [hl]                                         ; $7f3e: $34
	pop af                                           ; $7f3f: $f1
	add hl, de                                       ; $7f40: $19
	pop af                                           ; $7f41: $f1
	dec c                                            ; $7f42: $0d
	ldh a, [rSVBK]                                   ; $7f43: $f0 $70
	ld c, c                                          ; $7f45: $49
	ld a, $3f                                        ; $7f46: $3e $3f
	xor h                                            ; $7f48: $ac
	sub d                                            ; $7f49: $92
	adc [hl]                                         ; $7f4a: $8e
	dec sp                                           ; $7f4b: $3b
	ccf                                              ; $7f4c: $3f
	jr c, jr_08a_7fa3                                ; $7f4d: $38 $54

	add hl, sp                                       ; $7f4f: $39
	ld c, c                                          ; $7f50: $49
	inc de                                           ; $7f51: $13
	ld [hl], a                                       ; $7f52: $77
	dec sp                                           ; $7f53: $3b
	ccf                                              ; $7f54: $3f
	ld c, [hl]                                       ; $7f55: $4e
	ld b, c                                          ; $7f56: $41
	ld b, h                                          ; $7f57: $44
	and b                                            ; $7f58: $a0
	cpl                                              ; $7f59: $2f
	ld b, e                                          ; $7f5a: $43
	halt                                             ; $7f5b: $76
	ld c, e                                          ; $7f5c: $4b
	inc [hl]                                         ; $7f5d: $34
	di                                               ; $7f5e: $f3
	ld h, $f2                                        ; $7f5f: $26 $f2
	xor a                                            ; $7f61: $af
	ldh a, [rHDMA3]                                  ; $7f62: $f0 $53
	pop af                                           ; $7f64: $f1
	ld a, [hl+]                                      ; $7f65: $2a
	ld b, d                                          ; $7f66: $42
	inc de                                           ; $7f67: $13
	db $ed                                           ; $7f68: $ed
	add h                                            ; $7f69: $84
	xor $17                                          ; $7f6a: $ee $17
	ldh a, [$28]                                     ; $7f6c: $f0 $28
	ld c, d                                          ; $7f6e: $4a
	xor h                                            ; $7f6f: $ac
	sub d                                            ; $7f70: $92
	adc [hl]                                         ; $7f71: $8e
	dec sp                                           ; $7f72: $3b
	ccf                                              ; $7f73: $3f
	jr c, jr_08a_7fca                                ; $7f74: $38 $54

	add hl, sp                                       ; $7f76: $39
	ld c, c                                          ; $7f77: $49
	inc de                                           ; $7f78: $13
	ld [hl], a                                       ; $7f79: $77
	dec sp                                           ; $7f7a: $3b
	ccf                                              ; $7f7b: $3f
	ld c, [hl]                                       ; $7f7c: $4e
	ld b, c                                          ; $7f7d: $41
	ld b, h                                          ; $7f7e: $44
	and b                                            ; $7f7f: $a0
	cpl                                              ; $7f80: $2f
	ld b, e                                          ; $7f81: $43
	halt                                             ; $7f82: $76
	ld c, e                                          ; $7f83: $4b
	xor h                                            ; $7f84: $ac
	ldh a, [hDisp0_WX]                                     ; $7f85: $f0 $89
	ldh a, [$c4]                                     ; $7f87: $f0 $c4
	ld e, c                                          ; $7f89: $59
	ld h, l                                          ; $7f8a: $65
	ld b, a                                          ; $7f8b: $47
	db $ed                                           ; $7f8c: $ed
	sub b                                            ; $7f8d: $90
	ld a, $3f                                        ; $7f8e: $3e $3f
	xor h                                            ; $7f90: $ac
	ldh a, [$99]                                     ; $7f91: $f0 $99
	sub b                                            ; $7f93: $90
	ld b, d                                          ; $7f94: $42
	ldh a, [$dd]                                     ; $7f95: $f0 $dd
	ldh a, [$9c]                                     ; $7f97: $f0 $9c
	ld h, d                                          ; $7f99: $62
	inc de                                           ; $7f9a: $13
	ld a, $45                                        ; $7f9b: $3e $45
	add hl, sp                                       ; $7f9d: $39
	ld c, c                                          ; $7f9e: $49
	ld [hl], a                                       ; $7f9f: $77
	dec sp                                           ; $7fa0: $3b
	ccf                                              ; $7fa1: $3f
	ld c, [hl]                                       ; $7fa2: $4e

jr_08a_7fa3:
	ld b, c                                          ; $7fa3: $41
	ld b, h                                          ; $7fa4: $44
	and b                                            ; $7fa5: $a0
	cpl                                              ; $7fa6: $2f
	ld b, e                                          ; $7fa7: $43
	halt                                             ; $7fa8: $76
	ld c, e                                          ; $7fa9: $4b
	inc [hl]                                         ; $7faa: $34
	ldh a, [rIF]                                     ; $7fab: $f0 $0f
	ldh a, [rP1]                                     ; $7fad: $f0 $00
	ld b, a                                          ; $7faf: $47
	db $ed                                           ; $7fb0: $ed
	sub b                                            ; $7fb1: $90
	ld a, $3f                                        ; $7fb2: $3e $3f
	xor h                                            ; $7fb4: $ac
	ldh a, [$3f]                                     ; $7fb5: $f0 $3f
	ld b, d                                          ; $7fb7: $42
	ldh a, [$dd]                                     ; $7fb8: $f0 $dd
	ldh a, [$9c]                                     ; $7fba: $f0 $9c
	ld h, d                                          ; $7fbc: $62
	ld a, $45                                        ; $7fbd: $3e $45
	add hl, sp                                       ; $7fbf: $39
	ld c, c                                          ; $7fc0: $49
	inc de                                           ; $7fc1: $13
	ld [hl], a                                       ; $7fc2: $77
	dec sp                                           ; $7fc3: $3b
	ccf                                              ; $7fc4: $3f
	ld c, [hl]                                       ; $7fc5: $4e
	ld b, c                                          ; $7fc6: $41
	ld b, h                                          ; $7fc7: $44

jr_08a_7fc8:
	and b                                            ; $7fc8: $a0
	cpl                                              ; $7fc9: $2f

jr_08a_7fca:
	ld b, e                                          ; $7fca: $43
	halt                                             ; $7fcb: $76
	ld c, e                                          ; $7fcc: $4b
	xor h                                            ; $7fcd: $ac
	add c                                            ; $7fce: $81
	ldh a, [$1f]                                     ; $7fcf: $f0 $1f
	ldh a, [rAUD2LOW]                                ; $7fd1: $f0 $18
	ldh a, [$dc]                                     ; $7fd3: $f0 $dc
	pop af                                           ; $7fd5: $f1
	jr c, jr_08a_7fc8                                ; $7fd6: $38 $f0

	dec bc                                           ; $7fd8: $0b
	ld c, c                                          ; $7fd9: $49
	ld a, $3f                                        ; $7fda: $3e $3f
	xor h                                            ; $7fdc: $ac
	db $eb                                           ; $7fdd: $eb
	ld c, c                                          ; $7fde: $49
	sub d                                            ; $7fdf: $92
	adc [hl]                                         ; $7fe0: $8e
	dec sp                                           ; $7fe1: $3b
	ccf                                              ; $7fe2: $3f
	jr c, @+$56                                      ; $7fe3: $38 $54

	add hl, sp                                       ; $7fe5: $39
	ld c, c                                          ; $7fe6: $49
	inc de                                           ; $7fe7: $13
	ld [hl], a                                       ; $7fe8: $77
	dec sp                                           ; $7fe9: $3b
	ccf                                              ; $7fea: $3f
	ld c, [hl]                                       ; $7feb: $4e
	ld b, c                                          ; $7fec: $41
	ld b, h                                          ; $7fed: $44
	and b                                            ; $7fee: $a0
	cpl                                              ; $7fef: $2f

jr_08a_7ff0:
	ld b, e                                          ; $7ff0: $43
	halt                                             ; $7ff1: $76
	ld c, e                                          ; $7ff2: $4b
	xor h                                            ; $7ff3: $ac
	add c                                            ; $7ff4: $81
	ldh a, [$1f]                                     ; $7ff5: $f0 $1f
	ldh a, [rAUD4POLY]                               ; $7ff7: $f0 $22
	ld [hl], e                                       ; $7ff9: $73
	ldh a, [$35]                                     ; $7ffa: $f0 $35
	ld e, c                                          ; $7ffc: $59
	pop af                                           ; $7ffd: $f1
	jr c, jr_08a_7ff0                                ; $7ffe: $38 $f0
