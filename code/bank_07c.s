; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07c", ROMX[$4000], BANK[$7c]

	inc bc                                           ; $4000: $03
	inc [hl]                                         ; $4001: $34
	ret nz                                           ; $4002: $c0

	nop                                              ; $4003: $00
	inc bc                                           ; $4004: $03
	add hl, sp                                       ; $4005: $39
	ret nz                                           ; $4006: $c0

	nop                                              ; $4007: $00
	inc bc                                           ; $4008: $03
	ld b, d                                          ; $4009: $42
	ret nz                                           ; $400a: $c0

	nop                                              ; $400b: $00
	ld [bc], a                                       ; $400c: $02
	jp z, $00c0                                      ; $400d: $ca $c0 $00

	nop                                              ; $4010: $00
	ld [de], a                                       ; $4011: $12
	db $e4                                           ; $4012: $e4
	ld [$09a5], sp                                   ; $4013: $08 $a5 $09
	pop bc                                           ; $4016: $c1
	ld h, a                                          ; $4017: $67
	db $fd                                           ; $4018: $fd
	pop bc                                           ; $4019: $c1
	ld h, h                                          ; $401a: $64
	adc e                                            ; $401b: $8b
	ld [bc], a                                       ; $401c: $02
	dec de                                           ; $401d: $1b
	ld [bc], a                                       ; $401e: $02
	or b                                             ; $401f: $b0
	ld b, [hl]                                       ; $4020: $46
	rra                                              ; $4021: $1f
	ret nz                                           ; $4022: $c0

	nop                                              ; $4023: $00
	inc bc                                           ; $4024: $03
	ld b, a                                          ; $4025: $47
	ret nz                                           ; $4026: $c0

	nop                                              ; $4027: $00
	inc bc                                           ; $4028: $03
	ld c, e                                          ; $4029: $4b
	ret nz                                           ; $402a: $c0

	nop                                              ; $402b: $00
	inc bc                                           ; $402c: $03
	ld c, [hl]                                       ; $402d: $4e
	ret nz                                           ; $402e: $c0

	nop                                              ; $402f: $00
	nop                                              ; $4030: $00
	ld [de], a                                       ; $4031: $12
	ret nz                                           ; $4032: $c0

	nop                                              ; $4033: $00
	inc bc                                           ; $4034: $03
	ld d, c                                          ; $4035: $51
	ret nz                                           ; $4036: $c0

	nop                                              ; $4037: $00
	inc bc                                           ; $4038: $03
	ld e, c                                          ; $4039: $59
	ret nz                                           ; $403a: $c0

	nop                                              ; $403b: $00
	nop                                              ; $403c: $00
	ld [de], a                                       ; $403d: $12
	ldh [rSB], a                                     ; $403e: $e0 $01
	ld b, b                                          ; $4040: $40
	ld b, $b0                                        ; $4041: $06 $b0
	ld c, e                                          ; $4043: $4b
	or b                                             ; $4044: $b0

Jump_07c_4045:
	ld c, h                                          ; $4045: $4c
	or b                                             ; $4046: $b0
	ld d, c                                          ; $4047: $51
	cpl                                              ; $4048: $2f
	ret nz                                           ; $4049: $c0

	nop                                              ; $404a: $00
	inc bc                                           ; $404b: $03
	ld e, a                                          ; $404c: $5f
	ret nz                                           ; $404d: $c0

	nop                                              ; $404e: $00
	inc bc                                           ; $404f: $03
	ld h, c                                          ; $4050: $61
	ret nz                                           ; $4051: $c0

	nop                                              ; $4052: $00
	inc bc                                           ; $4053: $03
	ld c, [hl]                                       ; $4054: $4e
	ret nz                                           ; $4055: $c0

	nop                                              ; $4056: $00
	inc bc                                           ; $4057: $03
	ld h, e                                          ; $4058: $63
	ret nz                                           ; $4059: $c0

	nop                                              ; $405a: $00
	inc bc                                           ; $405b: $03
	ld h, l                                          ; $405c: $65
	ret nz                                           ; $405d: $c0

	nop                                              ; $405e: $00
	nop                                              ; $405f: $00
	ld [de], a                                       ; $4060: $12
	ret nz                                           ; $4061: $c0

	nop                                              ; $4062: $00
	ld [bc], a                                       ; $4063: $02
	ld a, [de]                                       ; $4064: $1a
	ret nz                                           ; $4065: $c0

	nop                                              ; $4066: $00
	inc bc                                           ; $4067: $03
	ld l, b                                          ; $4068: $68
	ret nz                                           ; $4069: $c0

	nop                                              ; $406a: $00
	ld [bc], a                                       ; $406b: $02
	ld [hl+], a                                      ; $406c: $22
	ret nz                                           ; $406d: $c0

	nop                                              ; $406e: $00
	ld [bc], a                                       ; $406f: $02
	daa                                              ; $4070: $27
	ret nz                                           ; $4071: $c0

	nop                                              ; $4072: $00
	nop                                              ; $4073: $00
	ld [de], a                                       ; $4074: $12
	db $e4                                           ; $4075: $e4
	ld [$0442], sp                                   ; $4076: $08 $42 $04
	or b                                             ; $4079: $b0
	ld b, a                                          ; $407a: $47
	or b                                             ; $407b: $b0
	ld c, b                                          ; $407c: $48
	cpl                                              ; $407d: $2f
	ret nz                                           ; $407e: $c0

	nop                                              ; $407f: $00
	inc bc                                           ; $4080: $03
	ld e, a                                          ; $4081: $5f
	ret nz                                           ; $4082: $c0

	nop                                              ; $4083: $00
	inc bc                                           ; $4084: $03
	ld h, c                                          ; $4085: $61
	ret nz                                           ; $4086: $c0

	nop                                              ; $4087: $00
	inc bc                                           ; $4088: $03
	ld c, [hl]                                       ; $4089: $4e
	ret nz                                           ; $408a: $c0

	nop                                              ; $408b: $00
	inc bc                                           ; $408c: $03
	ld h, e                                          ; $408d: $63
	ret nz                                           ; $408e: $c0

	nop                                              ; $408f: $00
	inc bc                                           ; $4090: $03
	ld h, l                                          ; $4091: $65
	ret nz                                           ; $4092: $c0

	nop                                              ; $4093: $00
	nop                                              ; $4094: $00
	ld [de], a                                       ; $4095: $12
	ret nz                                           ; $4096: $c0

	nop                                              ; $4097: $00
	inc bc                                           ; $4098: $03
	ld l, [hl]                                       ; $4099: $6e
	ret nz                                           ; $409a: $c0

	nop                                              ; $409b: $00
	ld [bc], a                                       ; $409c: $02
	xor l                                            ; $409d: $ad
	ret nz                                           ; $409e: $c0

	nop                                              ; $409f: $00
	ld [bc], a                                       ; $40a0: $02
	or e                                             ; $40a1: $b3
	ret nz                                           ; $40a2: $c0

	nop                                              ; $40a3: $00
	nop                                              ; $40a4: $00
	ld [de], a                                       ; $40a5: $12
	ret nz                                           ; $40a6: $c0

	nop                                              ; $40a7: $00
	ld [bc], a                                       ; $40a8: $02
	cp c                                             ; $40a9: $b9
	db $e4                                           ; $40aa: $e4
	ld [$020d], sp                                   ; $40ab: $08 $0d $02
	or b                                             ; $40ae: $b0
	ld d, a                                          ; $40af: $57
	rra                                              ; $40b0: $1f
	ret nz                                           ; $40b1: $c0

	nop                                              ; $40b2: $00
	inc bc                                           ; $40b3: $03
	ld e, a                                          ; $40b4: $5f
	ret nz                                           ; $40b5: $c0

	nop                                              ; $40b6: $00
	inc bc                                           ; $40b7: $03
	ld h, c                                          ; $40b8: $61
	ret nz                                           ; $40b9: $c0

	nop                                              ; $40ba: $00
	inc bc                                           ; $40bb: $03
	ld c, [hl]                                       ; $40bc: $4e
	ret nz                                           ; $40bd: $c0

	nop                                              ; $40be: $00
	nop                                              ; $40bf: $00
	ld [de], a                                       ; $40c0: $12
	ret nz                                           ; $40c1: $c0

	nop                                              ; $40c2: $00
	inc bc                                           ; $40c3: $03
	halt                                             ; $40c4: $76
	ret nz                                           ; $40c5: $c0

	nop                                              ; $40c6: $00
	ld [bc], a                                       ; $40c7: $02
	ldh [$c0], a                                     ; $40c8: $e0 $c0
	nop                                              ; $40ca: $00
	nop                                              ; $40cb: $00
	ld [de], a                                       ; $40cc: $12
	ldh [rP1], a                                     ; $40cd: $e0 $00
	or c                                             ; $40cf: $b1
	ld [bc], a                                       ; $40d0: $02
	or b                                             ; $40d1: $b0
	ld e, b                                          ; $40d2: $58
	cpl                                              ; $40d3: $2f
	ret nz                                           ; $40d4: $c0

	nop                                              ; $40d5: $00
	ld [bc], a                                       ; $40d6: $02
	push hl                                          ; $40d7: $e5
	ret nz                                           ; $40d8: $c0

	nop                                              ; $40d9: $00
	inc bc                                           ; $40da: $03
	ld a, h                                          ; $40db: $7c
	ret nz                                           ; $40dc: $c0

	nop                                              ; $40dd: $00
	inc bc                                           ; $40de: $03
	add h                                            ; $40df: $84
	ret nz                                           ; $40e0: $c0

	nop                                              ; $40e1: $00
	inc bc                                           ; $40e2: $03
	adc c                                            ; $40e3: $89
	ret nz                                           ; $40e4: $c0

	nop                                              ; $40e5: $00
	nop                                              ; $40e6: $00
	ld [de], a                                       ; $40e7: $12
	ret nz                                           ; $40e8: $c0

	nop                                              ; $40e9: $00
	inc bc                                           ; $40ea: $03
	adc a                                            ; $40eb: $8f
	ret nz                                           ; $40ec: $c0

	nop                                              ; $40ed: $00
	inc bc                                           ; $40ee: $03
	ld h, c                                          ; $40ef: $61
	ret nz                                           ; $40f0: $c0

	nop                                              ; $40f1: $00
	inc bc                                           ; $40f2: $03
	ld c, [hl]                                       ; $40f3: $4e
	ret nz                                           ; $40f4: $c0

	nop                                              ; $40f5: $00
	inc bc                                           ; $40f6: $03
	ld h, e                                          ; $40f7: $63
	ret nz                                           ; $40f8: $c0

	nop                                              ; $40f9: $00
	inc bc                                           ; $40fa: $03
	ld h, l                                          ; $40fb: $65
	ret nz                                           ; $40fc: $c0

	nop                                              ; $40fd: $00
	nop                                              ; $40fe: $00
	ld [de], a                                       ; $40ff: $12
	ldh [rP1], a                                     ; $4100: $e0 $00
	ld a, [hl]                                       ; $4102: $7e
	ld [bc], a                                       ; $4103: $02
	or b                                             ; $4104: $b0
	ld d, [hl]                                       ; $4105: $56
	ld c, e                                          ; $4106: $4b
	ret nz                                           ; $4107: $c0

	nop                                              ; $4108: $00
	inc bc                                           ; $4109: $03
	ld e, a                                          ; $410a: $5f
	ret nz                                           ; $410b: $c0

	nop                                              ; $410c: $00
	inc bc                                           ; $410d: $03
	ld h, c                                          ; $410e: $61
	ret nz                                           ; $410f: $c0

	nop                                              ; $4110: $00
	inc bc                                           ; $4111: $03
	ld c, [hl]                                       ; $4112: $4e
	ret nz                                           ; $4113: $c0

	nop                                              ; $4114: $00
	inc bc                                           ; $4115: $03
	ld h, e                                          ; $4116: $63
	ret nz                                           ; $4117: $c0

	nop                                              ; $4118: $00
	inc bc                                           ; $4119: $03
	ld h, l                                          ; $411a: $65
	ret nz                                           ; $411b: $c0

	nop                                              ; $411c: $00
	nop                                              ; $411d: $00
	ld [de], a                                       ; $411e: $12
	ret nz                                           ; $411f: $c0

	nop                                              ; $4120: $00
	inc bc                                           ; $4121: $03
	sub h                                            ; $4122: $94
	ret nz                                           ; $4123: $c0

	nop                                              ; $4124: $00
	inc bc                                           ; $4125: $03
	sbc l                                            ; $4126: $9d
	ret nz                                           ; $4127: $c0

	nop                                              ; $4128: $00
	inc bc                                           ; $4129: $03
	and e                                            ; $412a: $a3
	ret nz                                           ; $412b: $c0

	nop                                              ; $412c: $00
	nop                                              ; $412d: $00
	ld [de], a                                       ; $412e: $12
	ret nz                                           ; $412f: $c0

	nop                                              ; $4130: $00
	inc bc                                           ; $4131: $03
	xor b                                            ; $4132: $a8
	ret nz                                           ; $4133: $c0

	nop                                              ; $4134: $00
	inc bc                                           ; $4135: $03
	xor h                                            ; $4136: $ac
	ret nz                                           ; $4137: $c0

	nop                                              ; $4138: $00
	inc bc                                           ; $4139: $03
	or c                                             ; $413a: $b1
	ret nz                                           ; $413b: $c0

	nop                                              ; $413c: $00
	ld [bc], a                                       ; $413d: $02
	sub [hl]                                         ; $413e: $96
	ret nz                                           ; $413f: $c0

	nop                                              ; $4140: $00
	nop                                              ; $4141: $00
	ld [de], a                                       ; $4142: $12
	ret nz                                           ; $4143: $c0

	nop                                              ; $4144: $00
	inc bc                                           ; $4145: $03
	inc l                                            ; $4146: $2c
	ret nz                                           ; $4147: $c0

	nop                                              ; $4148: $00
	inc bc                                           ; $4149: $03
	or [hl]                                          ; $414a: $b6
	ret nz                                           ; $414b: $c0

	nop                                              ; $414c: $00
	nop                                              ; $414d: $00
	ld [de], a                                       ; $414e: $12
	db $e4                                           ; $414f: $e4
	rlca                                             ; $4150: $07
	ld l, b                                          ; $4151: $68
	nop                                              ; $4152: $00
	dec hl                                           ; $4153: $2b
	ret nz                                           ; $4154: $c0

	nop                                              ; $4155: $00
	inc bc                                           ; $4156: $03
	ld e, a                                          ; $4157: $5f
	ret nz                                           ; $4158: $c0

	nop                                              ; $4159: $00
	inc bc                                           ; $415a: $03
	ld h, c                                          ; $415b: $61
	ret nz                                           ; $415c: $c0

	nop                                              ; $415d: $00
	inc bc                                           ; $415e: $03
	ld c, [hl]                                       ; $415f: $4e
	ret nz                                           ; $4160: $c0

	nop                                              ; $4161: $00
	nop                                              ; $4162: $00
	ld [de], a                                       ; $4163: $12
	ret nz                                           ; $4164: $c0

	nop                                              ; $4165: $00
	ld [bc], a                                       ; $4166: $02
	xor e                                            ; $4167: $ab
	ret nz                                           ; $4168: $c0

	nop                                              ; $4169: $00
	ld [bc], a                                       ; $416a: $02
	xor l                                            ; $416b: $ad
	ret nz                                           ; $416c: $c0

	nop                                              ; $416d: $00
	ld [bc], a                                       ; $416e: $02
	or e                                             ; $416f: $b3
	ret nz                                           ; $4170: $c0

	nop                                              ; $4171: $00
	nop                                              ; $4172: $00
	ld [de], a                                       ; $4173: $12
	ret nz                                           ; $4174: $c0

	nop                                              ; $4175: $00
	ld [bc], a                                       ; $4176: $02
	cp c                                             ; $4177: $b9
	ret nz                                           ; $4178: $c0

	nop                                              ; $4179: $00
	nop                                              ; $417a: $00
	ld [de], a                                       ; $417b: $12
	db $e4                                           ; $417c: $e4
	rlca                                             ; $417d: $07
	dec sp                                           ; $417e: $3b
	rla                                              ; $417f: $17
	ret nz                                           ; $4180: $c0

	nop                                              ; $4181: $00
	inc bc                                           ; $4182: $03
	cp c                                             ; $4183: $b9
	ret nz                                           ; $4184: $c0

	nop                                              ; $4185: $00
	inc bc                                           ; $4186: $03
	cp a                                             ; $4187: $bf
	ret nz                                           ; $4188: $c0

	nop                                              ; $4189: $00
	inc bc                                           ; $418a: $03
	ld b, d                                          ; $418b: $42
	ret nz                                           ; $418c: $c0

	nop                                              ; $418d: $00
	ld [bc], a                                       ; $418e: $02
	jp z, $00c0                                      ; $418f: $ca $c0 $00

	nop                                              ; $4192: $00
	ld [de], a                                       ; $4193: $12
	db $e4                                           ; $4194: $e4
	rlca                                             ; $4195: $07
	inc hl                                           ; $4196: $23
	add hl, bc                                       ; $4197: $09

jr_07c_4198:
	pop bc                                           ; $4198: $c1
	jr jr_07c_4198                                   ; $4199: $18 $fd

	pop bc                                           ; $419b: $c1
	dec d                                            ; $419c: $15
	adc e                                            ; $419d: $8b
	ld [bc], a                                       ; $419e: $02
	dec de                                           ; $419f: $1b
	ld [bc], a                                       ; $41a0: $02
	or b                                             ; $41a1: $b0
	ld c, h                                          ; $41a2: $4c
	inc hl                                           ; $41a3: $23
	ret nz                                           ; $41a4: $c0

	nop                                              ; $41a5: $00
	inc bc                                           ; $41a6: $03
	rst JumpTable                                          ; $41a7: $c7
	ret nz                                           ; $41a8: $c0

	nop                                              ; $41a9: $00
	inc bc                                           ; $41aa: $03
	set 0, b                                         ; $41ab: $cb $c0
	nop                                              ; $41ad: $00
	inc bc                                           ; $41ae: $03
	call $00c0                                       ; $41af: $cd $c0 $00
	inc bc                                           ; $41b2: $03
	ret nc                                           ; $41b3: $d0

	ret nz                                           ; $41b4: $c0

	nop                                              ; $41b5: $00
	nop                                              ; $41b6: $00
	ld [de], a                                       ; $41b7: $12
	ret nz                                           ; $41b8: $c0

	nop                                              ; $41b9: $00
	inc bc                                           ; $41ba: $03
	jp nc, $00c0                                     ; $41bb: $d2 $c0 $00

	inc bc                                           ; $41be: $03
	ret c                                            ; $41bf: $d8

	ret nz                                           ; $41c0: $c0

	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	ld [de], a                                       ; $41c3: $12
	ldh [rP1], a                                     ; $41c4: $e0 $00
	db $ed                                           ; $41c6: $ed
	inc b                                            ; $41c7: $04
	or b                                             ; $41c8: $b0
	ld c, e                                          ; $41c9: $4b
	or b                                             ; $41ca: $b0
	ld d, c                                          ; $41cb: $51
	dec hl                                           ; $41cc: $2b
	ret nz                                           ; $41cd: $c0

	nop                                              ; $41ce: $00
	inc bc                                           ; $41cf: $03
	pop hl                                           ; $41d0: $e1
	ret nz                                           ; $41d1: $c0

	nop                                              ; $41d2: $00
	inc bc                                           ; $41d3: $03
	set 0, b                                         ; $41d4: $cb $c0
	nop                                              ; $41d6: $00
	inc bc                                           ; $41d7: $03
	call $00c0                                       ; $41d8: $cd $c0 $00
	inc bc                                           ; $41db: $03
	ret nc                                           ; $41dc: $d0

	ret nz                                           ; $41dd: $c0

	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	ld [de], a                                       ; $41e0: $12
	ret nz                                           ; $41e1: $c0

	nop                                              ; $41e2: $00
	inc bc                                           ; $41e3: $03
	db $e3                                           ; $41e4: $e3
	ret nz                                           ; $41e5: $c0

	nop                                              ; $41e6: $00
	inc bc                                           ; $41e7: $03
	db $ed                                           ; $41e8: $ed
	ret nz                                           ; $41e9: $c0

	nop                                              ; $41ea: $00
	inc bc                                           ; $41eb: $03
	di                                               ; $41ec: $f3
	ret nz                                           ; $41ed: $c0

	nop                                              ; $41ee: $00
	inc bc                                           ; $41ef: $03
	ei                                               ; $41f0: $fb
	ret nz                                           ; $41f1: $c0

	nop                                              ; $41f2: $00
	nop                                              ; $41f3: $00
	ld [de], a                                       ; $41f4: $12
	ldh [rP1], a                                     ; $41f5: $e0 $00
	cp h                                             ; $41f7: $bc
	ld [bc], a                                       ; $41f8: $02
	or b                                             ; $41f9: $b0
	ld d, a                                          ; $41fa: $57
	dec hl                                           ; $41fb: $2b
	ret nz                                           ; $41fc: $c0

	nop                                              ; $41fd: $00
	inc bc                                           ; $41fe: $03
	pop hl                                           ; $41ff: $e1
	ret nz                                           ; $4200: $c0

	nop                                              ; $4201: $00
	inc bc                                           ; $4202: $03
	set 0, b                                         ; $4203: $cb $c0
	nop                                              ; $4205: $00
	inc bc                                           ; $4206: $03
	call $00c0                                       ; $4207: $cd $c0 $00
	inc bc                                           ; $420a: $03
	ret nc                                           ; $420b: $d0

	ret nz                                           ; $420c: $c0

	nop                                              ; $420d: $00
	nop                                              ; $420e: $00
	ld [de], a                                       ; $420f: $12
	ret nz                                           ; $4210: $c0

	nop                                              ; $4211: $00
	inc bc                                           ; $4212: $03
	rst $38                                          ; $4213: $ff
	ret nz                                           ; $4214: $c0

	nop                                              ; $4215: $00
	inc b                                            ; $4216: $04
	ld b, $c0                                        ; $4217: $06 $c0
	nop                                              ; $4219: $00
	inc b                                            ; $421a: $04
	dec bc                                           ; $421b: $0b
	ret nz                                           ; $421c: $c0

	nop                                              ; $421d: $00
	ld [bc], a                                       ; $421e: $02
	ldh [$c0], a                                     ; $421f: $e0 $c0
	nop                                              ; $4221: $00
	nop                                              ; $4222: $00
	ld [de], a                                       ; $4223: $12
	ldh [rP1], a                                     ; $4224: $e0 $00
	adc l                                            ; $4226: $8d
	ld [bc], a                                       ; $4227: $02
	or b                                             ; $4228: $b0
	ld e, b                                          ; $4229: $58
	daa                                              ; $422a: $27
	ret nz                                           ; $422b: $c0

	nop                                              ; $422c: $00
	inc bc                                           ; $422d: $03
	pop hl                                           ; $422e: $e1
	ret nz                                           ; $422f: $c0

	nop                                              ; $4230: $00
	inc bc                                           ; $4231: $03
	set 0, b                                         ; $4232: $cb $c0
	nop                                              ; $4234: $00
	inc bc                                           ; $4235: $03
	call $00c0                                       ; $4236: $cd $c0 $00
	inc bc                                           ; $4239: $03
	ret nc                                           ; $423a: $d0

	ret nz                                           ; $423b: $c0

	nop                                              ; $423c: $00
	nop                                              ; $423d: $00
	ld [de], a                                       ; $423e: $12
	ret nz                                           ; $423f: $c0

	nop                                              ; $4240: $00
	inc b                                            ; $4241: $04
	ld de, $00c0                                     ; $4242: $11 $c0 $00
	inc b                                            ; $4245: $04
	jr @-$3e                                         ; $4246: $18 $c0

	nop                                              ; $4248: $00
	inc b                                            ; $4249: $04
	dec e                                            ; $424a: $1d
	ret nz                                           ; $424b: $c0

	nop                                              ; $424c: $00
	nop                                              ; $424d: $00
	ld [de], a                                       ; $424e: $12
	ldh [rP1], a                                     ; $424f: $e0 $00
	ld h, d                                          ; $4251: $62
	ld [bc], a                                       ; $4252: $02
	or b                                             ; $4253: $b0
	ld d, [hl]                                       ; $4254: $56
	inc sp                                           ; $4255: $33
	ret nz                                           ; $4256: $c0

	nop                                              ; $4257: $00
	inc bc                                           ; $4258: $03
	pop hl                                           ; $4259: $e1
	ret nz                                           ; $425a: $c0

	nop                                              ; $425b: $00
	inc bc                                           ; $425c: $03
	set 0, b                                         ; $425d: $cb $c0
	nop                                              ; $425f: $00
	inc bc                                           ; $4260: $03
	call $00c0                                       ; $4261: $cd $c0 $00

jr_07c_4264:
	inc bc                                           ; $4264: $03
	ret nc                                           ; $4265: $d0

	ret nz                                           ; $4266: $c0

	nop                                              ; $4267: $00
	nop                                              ; $4268: $00
	ld [de], a                                       ; $4269: $12
	ret nz                                           ; $426a: $c0

	nop                                              ; $426b: $00
	inc b                                            ; $426c: $04
	inc hl                                           ; $426d: $23
	ret nz                                           ; $426e: $c0

	nop                                              ; $426f: $00
	inc b                                            ; $4270: $04
	add hl, hl                                       ; $4271: $29
	ret nz                                           ; $4272: $c0

	nop                                              ; $4273: $00
	inc b                                            ; $4274: $04
	cpl                                              ; $4275: $2f
	ret nz                                           ; $4276: $c0

	nop                                              ; $4277: $00
	nop                                              ; $4278: $00
	ld [de], a                                       ; $4279: $12
	ret nz                                           ; $427a: $c0

	nop                                              ; $427b: $00
	inc bc                                           ; $427c: $03
	inc l                                            ; $427d: $2c
	ret nz                                           ; $427e: $c0

	nop                                              ; $427f: $00
	inc b                                            ; $4280: $04
	dec [hl]                                         ; $4281: $35
	ret nz                                           ; $4282: $c0

	nop                                              ; $4283: $00
	nop                                              ; $4284: $00
	ld [de], a                                       ; $4285: $12
	db $e4                                           ; $4286: $e4
	ld b, $31                                        ; $4287: $06 $31
	nop                                              ; $4289: $00
	daa                                              ; $428a: $27
	ret nz                                           ; $428b: $c0

	nop                                              ; $428c: $00
	inc bc                                           ; $428d: $03
	pop hl                                           ; $428e: $e1
	ret nz                                           ; $428f: $c0

	nop                                              ; $4290: $00
	inc bc                                           ; $4291: $03
	set 0, b                                         ; $4292: $cb $c0
	nop                                              ; $4294: $00
	inc bc                                           ; $4295: $03
	call $00c0                                       ; $4296: $cd $c0 $00
	inc bc                                           ; $4299: $03
	ret nc                                           ; $429a: $d0

	ret nz                                           ; $429b: $c0

	nop                                              ; $429c: $00
	nop                                              ; $429d: $00
	ld [de], a                                       ; $429e: $12
	ret nz                                           ; $429f: $c0

	nop                                              ; $42a0: $00
	inc b                                            ; $42a1: $04
	jr c, jr_07c_4264                                ; $42a2: $38 $c0

	nop                                              ; $42a4: $00
	inc b                                            ; $42a5: $04
	ccf                                              ; $42a6: $3f
	ret nz                                           ; $42a7: $c0

	nop                                              ; $42a8: $00
	inc b                                            ; $42a9: $04
	ld b, [hl]                                       ; $42aa: $46
	ret nz                                           ; $42ab: $c0

	nop                                              ; $42ac: $00
	nop                                              ; $42ad: $00
	ld [de], a                                       ; $42ae: $12
	db $e4                                           ; $42af: $e4
	ld b, $08                                        ; $42b0: $06 $08
	inc de                                           ; $42b2: $13
	ret nz                                           ; $42b3: $c0

	nop                                              ; $42b4: $00
	inc b                                            ; $42b5: $04
	ld c, [hl]                                       ; $42b6: $4e
	ret nz                                           ; $42b7: $c0

	nop                                              ; $42b8: $00
	inc b                                            ; $42b9: $04
	ld d, [hl]                                       ; $42ba: $56
	ret nz                                           ; $42bb: $c0

	nop                                              ; $42bc: $00
	inc b                                            ; $42bd: $04
	ld e, e                                          ; $42be: $5b
	ret nz                                           ; $42bf: $c0

	nop                                              ; $42c0: $00
	nop                                              ; $42c1: $00
	ld [de], a                                       ; $42c2: $12
	db $e4                                           ; $42c3: $e4
	dec b                                            ; $42c4: $05
	db $f4                                           ; $42c5: $f4
	add hl, bc                                       ; $42c6: $09
	ret nz                                           ; $42c7: $c0

	sub $fd                                          ; $42c8: $d6 $fd
	ret nz                                           ; $42ca: $c0

	db $d3                                           ; $42cb: $d3
	adc e                                            ; $42cc: $8b
	ld [bc], a                                       ; $42cd: $02
	dec de                                           ; $42ce: $1b
	ld b, $b0                                        ; $42cf: $06 $b0
	ld c, l                                          ; $42d1: $4d
	or b                                             ; $42d2: $b0
	ld c, [hl]                                       ; $42d3: $4e
	or b                                             ; $42d4: $b0
	ld d, h                                          ; $42d5: $54
	dec hl                                           ; $42d6: $2b
	ret nz                                           ; $42d7: $c0

	nop                                              ; $42d8: $00
	inc b                                            ; $42d9: $04
	ld h, d                                          ; $42da: $62
	ret nz                                           ; $42db: $c0

	nop                                              ; $42dc: $00
	inc b                                            ; $42dd: $04
	ld h, h                                          ; $42de: $64
	ret nz                                           ; $42df: $c0

	nop                                              ; $42e0: $00
	nop                                              ; $42e1: $00
	ld [de], a                                       ; $42e2: $12
	ret nz                                           ; $42e3: $c0

	nop                                              ; $42e4: $00
	inc b                                            ; $42e5: $04
	ld l, h                                          ; $42e6: $6c
	ret nz                                           ; $42e7: $c0

	nop                                              ; $42e8: $00
	inc b                                            ; $42e9: $04
	ld [hl], b                                       ; $42ea: $70
	ret nz                                           ; $42eb: $c0

	nop                                              ; $42ec: $00
	inc b                                            ; $42ed: $04
	ld a, b                                          ; $42ee: $78
	ret nz                                           ; $42ef: $c0

	nop                                              ; $42f0: $00
	nop                                              ; $42f1: $00
	ld [de], a                                       ; $42f2: $12
	ret nz                                           ; $42f3: $c0

	nop                                              ; $42f4: $00
	inc b                                            ; $42f5: $04
	ld a, a                                          ; $42f6: $7f
	ret nz                                           ; $42f7: $c0

	nop                                              ; $42f8: $00
	inc b                                            ; $42f9: $04
	add l                                            ; $42fa: $85
	ret nz                                           ; $42fb: $c0

	nop                                              ; $42fc: $00
	nop                                              ; $42fd: $00
	ld [de], a                                       ; $42fe: $12
	db $e4                                           ; $42ff: $e4
	dec b                                            ; $4300: $05
	cp b                                             ; $4301: $b8
	ld b, $b0                                        ; $4302: $06 $b0
	ld c, e                                          ; $4304: $4b
	or b                                             ; $4305: $b0
	ld c, h                                          ; $4306: $4c
	or b                                             ; $4307: $b0
	ld d, c                                          ; $4308: $51
	inc hl                                           ; $4309: $23
	ret nz                                           ; $430a: $c0

	nop                                              ; $430b: $00
	inc b                                            ; $430c: $04
	ld h, d                                          ; $430d: $62
	ret nz                                           ; $430e: $c0

	nop                                              ; $430f: $00
	inc b                                            ; $4310: $04
	adc c                                            ; $4311: $89
	ret nz                                           ; $4312: $c0

	nop                                              ; $4313: $00
	nop                                              ; $4314: $00
	ld [de], a                                       ; $4315: $12
	ret nz                                           ; $4316: $c0

	nop                                              ; $4317: $00
	ld [bc], a                                       ; $4318: $02
	ld a, [de]                                       ; $4319: $1a
	ret nz                                           ; $431a: $c0

	nop                                              ; $431b: $00
	inc b                                            ; $431c: $04
	adc h                                            ; $431d: $8c
	ret nz                                           ; $431e: $c0

	nop                                              ; $431f: $00
	ld [bc], a                                       ; $4320: $02
	ld [hl+], a                                      ; $4321: $22
	ret nz                                           ; $4322: $c0

	nop                                              ; $4323: $00
	ld [bc], a                                       ; $4324: $02
	daa                                              ; $4325: $27
	ret nz                                           ; $4326: $c0

	nop                                              ; $4327: $00
	nop                                              ; $4328: $00
	ld [de], a                                       ; $4329: $12
	db $e4                                           ; $432a: $e4
	dec b                                            ; $432b: $05
	adc l                                            ; $432c: $8d
	ld [bc], a                                       ; $432d: $02
	or b                                             ; $432e: $b0
	ld d, a                                          ; $432f: $57
	dec de                                           ; $4330: $1b
	ret nz                                           ; $4331: $c0

	nop                                              ; $4332: $00
	inc b                                            ; $4333: $04
	ld h, d                                          ; $4334: $62
	ret nz                                           ; $4335: $c0

	nop                                              ; $4336: $00
	inc b                                            ; $4337: $04
	adc c                                            ; $4338: $89
	ret nz                                           ; $4339: $c0

	nop                                              ; $433a: $00
	nop                                              ; $433b: $00
	ld [de], a                                       ; $433c: $12
	ret nz                                           ; $433d: $c0

	nop                                              ; $433e: $00
	inc b                                            ; $433f: $04
	sub d                                            ; $4340: $92
	ret nz                                           ; $4341: $c0

	nop                                              ; $4342: $00
	inc b                                            ; $4343: $04
	sbc e                                            ; $4344: $9b
	ret nz                                           ; $4345: $c0

	nop                                              ; $4346: $00
	nop                                              ; $4347: $00
	ld [de], a                                       ; $4348: $12
	ldh [rP1], a                                     ; $4349: $e0 $00
	ld d, l                                          ; $434b: $55
	ld [bc], a                                       ; $434c: $02
	or b                                             ; $434d: $b0
	ld e, b                                          ; $434e: $58
	rra                                              ; $434f: $1f
	ret nz                                           ; $4350: $c0

	nop                                              ; $4351: $00
	inc b                                            ; $4352: $04
	ld h, d                                          ; $4353: $62
	ret nz                                           ; $4354: $c0

	nop                                              ; $4355: $00
	inc b                                            ; $4356: $04
	adc c                                            ; $4357: $89
	ret nz                                           ; $4358: $c0

	nop                                              ; $4359: $00
	nop                                              ; $435a: $00
	ld [de], a                                       ; $435b: $12
	ret nz                                           ; $435c: $c0

	nop                                              ; $435d: $00
	ld [bc], a                                       ; $435e: $02
	push hl                                          ; $435f: $e5
	ret nz                                           ; $4360: $c0

	nop                                              ; $4361: $00
	inc b                                            ; $4362: $04
	sbc a                                            ; $4363: $9f
	ret nz                                           ; $4364: $c0

	nop                                              ; $4365: $00
	inc b                                            ; $4366: $04
	and l                                            ; $4367: $a5
	ret nz                                           ; $4368: $c0

	nop                                              ; $4369: $00
	nop                                              ; $436a: $00
	ld [de], a                                       ; $436b: $12
	ldh [rP1], a                                     ; $436c: $e0 $00
	ld [hl-], a                                      ; $436e: $32
	ld [bc], a                                       ; $436f: $02
	or b                                             ; $4370: $b0
	ld d, [hl]                                       ; $4371: $56
	dec de                                           ; $4372: $1b
	ret nz                                           ; $4373: $c0

	nop                                              ; $4374: $00
	inc b                                            ; $4375: $04
	ld h, d                                          ; $4376: $62
	ret nz                                           ; $4377: $c0

	nop                                              ; $4378: $00
	inc b                                            ; $4379: $04
	adc c                                            ; $437a: $89
	ret nz                                           ; $437b: $c0

	nop                                              ; $437c: $00
	nop                                              ; $437d: $00
	ld [de], a                                       ; $437e: $12
	ret nz                                           ; $437f: $c0

	nop                                              ; $4380: $00
	inc b                                            ; $4381: $04
	sub d                                            ; $4382: $92
	ret nz                                           ; $4383: $c0

	nop                                              ; $4384: $00
	inc b                                            ; $4385: $04
	xor c                                            ; $4386: $a9
	ret nz                                           ; $4387: $c0

	nop                                              ; $4388: $00
	nop                                              ; $4389: $00
	ld [de], a                                       ; $438a: $12
	ldh [rP1], a                                     ; $438b: $e0 $00
	inc de                                           ; $438d: $13
	nop                                              ; $438e: $00
	rrca                                             ; $438f: $0f
	ret nz                                           ; $4390: $c0

	nop                                              ; $4391: $00
	inc b                                            ; $4392: $04
	ld h, d                                          ; $4393: $62
	ret nz                                           ; $4394: $c0

	nop                                              ; $4395: $00
	inc b                                            ; $4396: $04
	adc c                                            ; $4397: $89
	ret nz                                           ; $4398: $c0

	nop                                              ; $4399: $00
	nop                                              ; $439a: $00
	ld [de], a                                       ; $439b: $12
	ldh [rP1], a                                     ; $439c: $e0 $00
	ld [bc], a                                       ; $439e: $02
	rla                                              ; $439f: $17
	ret nz                                           ; $43a0: $c0

	nop                                              ; $43a1: $00
	inc b                                            ; $43a2: $04
	or b                                             ; $43a3: $b0
	ret nz                                           ; $43a4: $c0

	nop                                              ; $43a5: $00
	inc b                                            ; $43a6: $04
	or [hl]                                          ; $43a7: $b6
	ret nz                                           ; $43a8: $c0

	nop                                              ; $43a9: $00
	inc b                                            ; $43aa: $04
	cp h                                             ; $43ab: $bc
	ret nz                                           ; $43ac: $c0

	nop                                              ; $43ad: $00
	ld [bc], a                                       ; $43ae: $02
	jp z, $00c0                                      ; $43af: $ca $c0 $00

	nop                                              ; $43b2: $00
	ld [de], a                                       ; $43b3: $12
	db $e4                                           ; $43b4: $e4
	dec b                                            ; $43b5: $05
	inc bc                                           ; $43b6: $03
	add hl, bc                                       ; $43b7: $09
	pop bc                                           ; $43b8: $c1
	rrca                                             ; $43b9: $0f
	db $fd                                           ; $43ba: $fd
	pop bc                                           ; $43bb: $c1
	inc c                                            ; $43bc: $0c
	adc e                                            ; $43bd: $8b
	ld [bc], a                                       ; $43be: $02
	dec de                                           ; $43bf: $1b
	ld [bc], a                                       ; $43c0: $02
	or b                                             ; $43c1: $b0
	ld e, b                                          ; $43c2: $58
	inc hl                                           ; $43c3: $23
	ret nz                                           ; $43c4: $c0

	nop                                              ; $43c5: $00
	inc b                                            ; $43c6: $04
	cp [hl]                                          ; $43c7: $be
	ret nz                                           ; $43c8: $c0

	nop                                              ; $43c9: $00
	inc b                                            ; $43ca: $04
	jp nz, $00c0                                     ; $43cb: $c2 $c0 $00

	inc b                                            ; $43ce: $04
	push bc                                          ; $43cf: $c5
	ret nz                                           ; $43d0: $c0

	nop                                              ; $43d1: $00
	nop                                              ; $43d2: $00
	ld [de], a                                       ; $43d3: $12
	ret nz                                           ; $43d4: $c0

	nop                                              ; $43d5: $00
	inc b                                            ; $43d6: $04
	rst JumpTable                                          ; $43d7: $c7
	ret nz                                           ; $43d8: $c0

	nop                                              ; $43d9: $00
	inc b                                            ; $43da: $04
	ret nc                                           ; $43db: $d0

	ret nz                                           ; $43dc: $c0

	nop                                              ; $43dd: $00
	inc b                                            ; $43de: $04
	push de                                          ; $43df: $d5
	ret nz                                           ; $43e0: $c0

	nop                                              ; $43e1: $00
	nop                                              ; $43e2: $00
	ld [de], a                                       ; $43e3: $12
	ldh [rP1], a                                     ; $43e4: $e0 $00
	db $e4                                           ; $43e6: $e4
	ld b, $b0                                        ; $43e7: $06 $b0
	ld c, e                                          ; $43e9: $4b
	or b                                             ; $43ea: $b0
	ld c, h                                          ; $43eb: $4c
	or b                                             ; $43ec: $b0
	ld d, c                                          ; $43ed: $51
	daa                                              ; $43ee: $27
	ret nz                                           ; $43ef: $c0

	nop                                              ; $43f0: $00
	inc b                                            ; $43f1: $04
	db $db                                           ; $43f2: $db
	ret nz                                           ; $43f3: $c0

	nop                                              ; $43f4: $00
	inc b                                            ; $43f5: $04
	jp nz, $00c0                                     ; $43f6: $c2 $c0 $00

	inc b                                            ; $43f9: $04
	push bc                                          ; $43fa: $c5
	ret nz                                           ; $43fb: $c0

	nop                                              ; $43fc: $00
	nop                                              ; $43fd: $00
	ld [de], a                                       ; $43fe: $12
	ret nz                                           ; $43ff: $c0

	nop                                              ; $4400: $00
	ld [bc], a                                       ; $4401: $02
	ld a, [de]                                       ; $4402: $1a
	ret nz                                           ; $4403: $c0

	nop                                              ; $4404: $00
	inc b                                            ; $4405: $04
	db $dd                                           ; $4406: $dd
	ret nz                                           ; $4407: $c0

	nop                                              ; $4408: $00
	ld [bc], a                                       ; $4409: $02
	ld [hl+], a                                      ; $440a: $22
	ret nz                                           ; $440b: $c0

	nop                                              ; $440c: $00
	ld [bc], a                                       ; $440d: $02
	daa                                              ; $440e: $27
	ret nz                                           ; $440f: $c0

	nop                                              ; $4410: $00
	nop                                              ; $4411: $00
	ld [de], a                                       ; $4412: $12
	db $e4                                           ; $4413: $e4
	inc b                                            ; $4414: $04
	and h                                            ; $4415: $a4
	ld [$43b0], sp                                   ; $4416: $08 $b0 $43
	or b                                             ; $4419: $b0
	ld b, h                                          ; $441a: $44
	or b                                             ; $441b: $b0
	ld b, l                                          ; $441c: $45
	or b                                             ; $441d: $b0
	ld d, e                                          ; $441e: $53
	inc hl                                           ; $441f: $23
	ret nz                                           ; $4420: $c0

	nop                                              ; $4421: $00
	inc b                                            ; $4422: $04
	db $db                                           ; $4423: $db
	ret nz                                           ; $4424: $c0

	nop                                              ; $4425: $00
	inc b                                            ; $4426: $04
	jp nz, $00c0                                     ; $4427: $c2 $c0 $00

	inc b                                            ; $442a: $04
	push bc                                          ; $442b: $c5
	ret nz                                           ; $442c: $c0

	nop                                              ; $442d: $00
	nop                                              ; $442e: $00
	ld [de], a                                       ; $442f: $12
	ret nz                                           ; $4430: $c0

	nop                                              ; $4431: $00
	inc b                                            ; $4432: $04
	db $e3                                           ; $4433: $e3
	ret nz                                           ; $4434: $c0

	nop                                              ; $4435: $00
	ld [bc], a                                       ; $4436: $02
	xor l                                            ; $4437: $ad
	ret nz                                           ; $4438: $c0

	nop                                              ; $4439: $00
	inc b                                            ; $443a: $04
	add sp, -$40                                     ; $443b: $e8 $c0
	nop                                              ; $443d: $00
	nop                                              ; $443e: $00
	ld [de], a                                       ; $443f: $12
	ldh [rP1], a                                     ; $4440: $e0 $00
	adc b                                            ; $4442: $88
	ld [bc], a                                       ; $4443: $02
	or b                                             ; $4444: $b0
	ld d, a                                          ; $4445: $57
	inc de                                           ; $4446: $13
	ret nz                                           ; $4447: $c0

	nop                                              ; $4448: $00
	inc b                                            ; $4449: $04
	db $db                                           ; $444a: $db
	ret nz                                           ; $444b: $c0

	nop                                              ; $444c: $00
	inc b                                            ; $444d: $04
	jp nz, $00c0                                     ; $444e: $c2 $c0 $00

	inc b                                            ; $4451: $04
	push bc                                          ; $4452: $c5
	ret nz                                           ; $4453: $c0

	nop                                              ; $4454: $00
	nop                                              ; $4455: $00
	ld [de], a                                       ; $4456: $12
	ldh [rP1], a                                     ; $4457: $e0 $00
	ld [hl], c                                       ; $4459: $71
	ld b, $b0                                        ; $445a: $06 $b0
	ld c, l                                          ; $445c: $4d
	or b                                             ; $445d: $b0
	ld c, [hl]                                       ; $445e: $4e
	or b                                             ; $445f: $b0
	ld d, h                                          ; $4460: $54
	rra                                              ; $4461: $1f
	ret nz                                           ; $4462: $c0

	nop                                              ; $4463: $00
	inc b                                            ; $4464: $04
	db $db                                           ; $4465: $db
	ret nz                                           ; $4466: $c0

	nop                                              ; $4467: $00
	inc b                                            ; $4468: $04
	jp nz, $00c0                                     ; $4469: $c2 $c0 $00

	inc b                                            ; $446c: $04
	push bc                                          ; $446d: $c5
	ret nz                                           ; $446e: $c0

	nop                                              ; $446f: $00
	nop                                              ; $4470: $00
	ld [de], a                                       ; $4471: $12
	ret nz                                           ; $4472: $c0

	nop                                              ; $4473: $00
	inc b                                            ; $4474: $04
	xor $c0                                          ; $4475: $ee $c0
	nop                                              ; $4477: $00
	inc b                                            ; $4478: $04
	di                                               ; $4479: $f3
	ret nz                                           ; $447a: $c0

	nop                                              ; $447b: $00
	nop                                              ; $447c: $00
	ld [de], a                                       ; $447d: $12
	ldh [rP1], a                                     ; $447e: $e0 $00
	ld c, d                                          ; $4480: $4a
	ld [bc], a                                       ; $4481: $02
	or b                                             ; $4482: $b0
	ld d, [hl]                                       ; $4483: $56
	inc hl                                           ; $4484: $23
	ret nz                                           ; $4485: $c0

	nop                                              ; $4486: $00
	inc b                                            ; $4487: $04
	db $db                                           ; $4488: $db
	ret nz                                           ; $4489: $c0

	nop                                              ; $448a: $00
	inc b                                            ; $448b: $04
	jp nz, $00c0                                     ; $448c: $c2 $c0 $00

	inc b                                            ; $448f: $04
	push bc                                          ; $4490: $c5
	ret nz                                           ; $4491: $c0

	nop                                              ; $4492: $00
	nop                                              ; $4493: $00
	ld [de], a                                       ; $4494: $12
	ret nz                                           ; $4495: $c0

	nop                                              ; $4496: $00
	inc b                                            ; $4497: $04
	ld sp, hl                                        ; $4498: $f9
	ret nz                                           ; $4499: $c0

	nop                                              ; $449a: $00
	dec b                                            ; $449b: $05
	ld bc, $00c0                                     ; $449c: $01 $c0 $00
	ld [bc], a                                       ; $449f: $02
	ld a, a                                          ; $44a0: $7f
	ret nz                                           ; $44a1: $c0

	nop                                              ; $44a2: $00
	nop                                              ; $44a3: $00
	ld [de], a                                       ; $44a4: $12
	ldh [rP1], a                                     ; $44a5: $e0 $00
	inc hl                                           ; $44a7: $23
	nop                                              ; $44a8: $00
	rra                                              ; $44a9: $1f
	ret nz                                           ; $44aa: $c0

	nop                                              ; $44ab: $00
	inc b                                            ; $44ac: $04
	db $db                                           ; $44ad: $db
	ret nz                                           ; $44ae: $c0

	nop                                              ; $44af: $00
	inc b                                            ; $44b0: $04
	jp nz, $00c0                                     ; $44b1: $c2 $c0 $00

	inc b                                            ; $44b4: $04
	push bc                                          ; $44b5: $c5
	ret nz                                           ; $44b6: $c0

	nop                                              ; $44b7: $00
	nop                                              ; $44b8: $00
	ld [de], a                                       ; $44b9: $12
	ret nz                                           ; $44ba: $c0

	nop                                              ; $44bb: $00
	dec b                                            ; $44bc: $05
	dec b                                            ; $44bd: $05
	ret nz                                           ; $44be: $c0

	nop                                              ; $44bf: $00
	dec b                                            ; $44c0: $05
	dec c                                            ; $44c1: $0d
	ret nz                                           ; $44c2: $c0

	nop                                              ; $44c3: $00
	nop                                              ; $44c4: $00
	ld [de], a                                       ; $44c5: $12
	ldh [rP1], a                                     ; $44c6: $e0 $00
	ld [bc], a                                       ; $44c8: $02
	rra                                              ; $44c9: $1f
	ret nz                                           ; $44ca: $c0

	nop                                              ; $44cb: $00
	dec b                                            ; $44cc: $05
	inc de                                           ; $44cd: $13
	ret nz                                           ; $44ce: $c0

	nop                                              ; $44cf: $00
	dec b                                            ; $44d0: $05
	add hl, de                                       ; $44d1: $19
	ret nz                                           ; $44d2: $c0

	nop                                              ; $44d3: $00
	dec b                                            ; $44d4: $05
	dec e                                            ; $44d5: $1d
	ret nz                                           ; $44d6: $c0

	nop                                              ; $44d7: $00
	dec b                                            ; $44d8: $05
	inc hl                                           ; $44d9: $23
	ret nz                                           ; $44da: $c0

	nop                                              ; $44db: $00
	dec b                                            ; $44dc: $05
	ld h, $c0                                        ; $44dd: $26 $c0
	nop                                              ; $44df: $00
	ld [bc], a                                       ; $44e0: $02
	jp z, $00c0                                      ; $44e1: $ca $c0 $00

	nop                                              ; $44e4: $00
	ld [de], a                                       ; $44e5: $12
	db $e4                                           ; $44e6: $e4
	inc bc                                           ; $44e7: $03
	pop de                                           ; $44e8: $d1
	add hl, bc                                       ; $44e9: $09
	pop bc                                           ; $44ea: $c1
	dec c                                            ; $44eb: $0d
	db $fd                                           ; $44ec: $fd
	pop bc                                           ; $44ed: $c1
	ld a, [bc]                                       ; $44ee: $0a
	adc e                                            ; $44ef: $8b
	ld [bc], a                                       ; $44f0: $02
	dec de                                           ; $44f1: $1b
	ld [$43b0], sp                                   ; $44f2: $08 $b0 $43
	or b                                             ; $44f5: $b0
	ld b, h                                          ; $44f6: $44
	or b                                             ; $44f7: $b0
	ld b, l                                          ; $44f8: $45
	or b                                             ; $44f9: $b0
	ld d, e                                          ; $44fa: $53
	inc de                                           ; $44fb: $13
	ret nz                                           ; $44fc: $c0

	nop                                              ; $44fd: $00
	dec b                                            ; $44fe: $05
	add hl, hl                                       ; $44ff: $29
	ret nz                                           ; $4500: $c0

	nop                                              ; $4501: $00
	dec b                                            ; $4502: $05
	dec hl                                           ; $4503: $2b
	ret nz                                           ; $4504: $c0

	nop                                              ; $4505: $00
	dec b                                            ; $4506: $05
	ld [hl-], a                                      ; $4507: $32
	ret nz                                           ; $4508: $c0

	nop                                              ; $4509: $00
	nop                                              ; $450a: $00
	ld [de], a                                       ; $450b: $12
	ldh [rP1], a                                     ; $450c: $e0 $00
	db $ec                                           ; $450e: $ec
	ld b, $b0                                        ; $450f: $06 $b0
	ld b, [hl]                                       ; $4511: $46
	or b                                             ; $4512: $b0
	ld b, a                                          ; $4513: $47
	or b                                             ; $4514: $b0
	ld c, b                                          ; $4515: $48
	inc de                                           ; $4516: $13
	ret nz                                           ; $4517: $c0

	nop                                              ; $4518: $00
	dec b                                            ; $4519: $05
	add hl, hl                                       ; $451a: $29
	ret nz                                           ; $451b: $c0

	nop                                              ; $451c: $00
	dec b                                            ; $451d: $05
	add hl, sp                                       ; $451e: $39
	ret nz                                           ; $451f: $c0

	nop                                              ; $4520: $00
	dec b                                            ; $4521: $05
	ld b, b                                          ; $4522: $40
	ret nz                                           ; $4523: $c0

	nop                                              ; $4524: $00
	nop                                              ; $4525: $00
	ld [de], a                                       ; $4526: $12
	ldh [rP1], a                                     ; $4527: $e0 $00
	pop de                                           ; $4529: $d1
	ld b, $b0                                        ; $452a: $06 $b0
	ld c, e                                          ; $452c: $4b
	or b                                             ; $452d: $b0
	ld c, h                                          ; $452e: $4c
	or b                                             ; $452f: $b0
	ld d, c                                          ; $4530: $51
	rra                                              ; $4531: $1f
	ret nz                                           ; $4532: $c0

	nop                                              ; $4533: $00
	dec b                                            ; $4534: $05
	add hl, hl                                       ; $4535: $29
	ret nz                                           ; $4536: $c0

	nop                                              ; $4537: $00
	dec b                                            ; $4538: $05
	ld b, l                                          ; $4539: $45
	ret nz                                           ; $453a: $c0

	nop                                              ; $453b: $00
	dec b                                            ; $453c: $05
	ld c, h                                          ; $453d: $4c
	ret nz                                           ; $453e: $c0

	nop                                              ; $453f: $00
	nop                                              ; $4540: $00
	ld [de], a                                       ; $4541: $12
	ret nz                                           ; $4542: $c0

	nop                                              ; $4543: $00
	dec b                                            ; $4544: $05
	ld d, c                                          ; $4545: $51
	ret nz                                           ; $4546: $c0

	nop                                              ; $4547: $00
	ld [bc], a                                       ; $4548: $02
	daa                                              ; $4549: $27
	ret nz                                           ; $454a: $c0

	nop                                              ; $454b: $00
	nop                                              ; $454c: $00
	ld [de], a                                       ; $454d: $12
	db $e4                                           ; $454e: $e4
	inc bc                                           ; $454f: $03
	ld l, c                                          ; $4550: $69
	ld [$4db0], sp                                   ; $4551: $08 $b0 $4d
	or b                                             ; $4554: $b0
	ld c, [hl]                                       ; $4555: $4e
	or b                                             ; $4556: $b0
	ld c, a                                          ; $4557: $4f
	or b                                             ; $4558: $b0
	ld d, h                                          ; $4559: $54
	inc hl                                           ; $455a: $23
	ret nz                                           ; $455b: $c0

	nop                                              ; $455c: $00
	dec b                                            ; $455d: $05
	add hl, hl                                       ; $455e: $29
	ret nz                                           ; $455f: $c0

	nop                                              ; $4560: $00
	dec b                                            ; $4561: $05
	ld d, a                                          ; $4562: $57
	ret nz                                           ; $4563: $c0

	nop                                              ; $4564: $00
	dec b                                            ; $4565: $05
	ld e, [hl]                                       ; $4566: $5e
	ret nz                                           ; $4567: $c0

	nop                                              ; $4568: $00
	dec b                                            ; $4569: $05
	ld h, e                                          ; $456a: $63
	ret nz                                           ; $456b: $c0

	nop                                              ; $456c: $00
	dec b                                            ; $456d: $05
	ld l, b                                          ; $456e: $68
	ret nz                                           ; $456f: $c0

	nop                                              ; $4570: $00
	nop                                              ; $4571: $00
	ld [de], a                                       ; $4572: $12
	ret nz                                           ; $4573: $c0

	nop                                              ; $4574: $00
	dec b                                            ; $4575: $05
	ld l, [hl]                                       ; $4576: $6e
	ret nz                                           ; $4577: $c0

	nop                                              ; $4578: $00
	nop                                              ; $4579: $00
	ld [de], a                                       ; $457a: $12
	db $e4                                           ; $457b: $e4
	inc bc                                           ; $457c: $03
	inc a                                            ; $457d: $3c
	ld [bc], a                                       ; $457e: $02
	or b                                             ; $457f: $b0
	ld d, a                                          ; $4580: $57
	dec de                                           ; $4581: $1b
	ret nz                                           ; $4582: $c0

	nop                                              ; $4583: $00
	dec b                                            ; $4584: $05
	add hl, hl                                       ; $4585: $29
	ret nz                                           ; $4586: $c0

	nop                                              ; $4587: $00
	dec b                                            ; $4588: $05
	halt                                             ; $4589: $76
	ret nz                                           ; $458a: $c0

	nop                                              ; $458b: $00
	dec b                                            ; $458c: $05
	ld a, l                                          ; $458d: $7d
	ret nz                                           ; $458e: $c0

	nop                                              ; $458f: $00
	dec b                                            ; $4590: $05
	add d                                            ; $4591: $82
	ret nz                                           ; $4592: $c0

	nop                                              ; $4593: $00
	dec b                                            ; $4594: $05
	adc c                                            ; $4595: $89
	ret nz                                           ; $4596: $c0

	nop                                              ; $4597: $00
	nop                                              ; $4598: $00
	ld [de], a                                       ; $4599: $12
	ldh [rP1], a                                     ; $459a: $e0 $00
	ld e, [hl]                                       ; $459c: $5e
	ld [bc], a                                       ; $459d: $02
	or b                                             ; $459e: $b0
	ld e, b                                          ; $459f: $58
	rla                                              ; $45a0: $17
	ret nz                                           ; $45a1: $c0

	nop                                              ; $45a2: $00
	dec b                                            ; $45a3: $05
	add hl, hl                                       ; $45a4: $29
	ret nz                                           ; $45a5: $c0

	nop                                              ; $45a6: $00
	dec b                                            ; $45a7: $05
	adc l                                            ; $45a8: $8d
	ret nz                                           ; $45a9: $c0

	nop                                              ; $45aa: $00
	dec b                                            ; $45ab: $05
	sub d                                            ; $45ac: $92
	ret nz                                           ; $45ad: $c0

	nop                                              ; $45ae: $00
	dec b                                            ; $45af: $05
	sbc b                                            ; $45b0: $98
	ret nz                                           ; $45b1: $c0

	nop                                              ; $45b2: $00
	nop                                              ; $45b3: $00
	ld [de], a                                       ; $45b4: $12
	ldh [rP1], a                                     ; $45b5: $e0 $00
	ld b, e                                          ; $45b7: $43
	ld [bc], a                                       ; $45b8: $02
	or b                                             ; $45b9: $b0
	ld d, [hl]                                       ; $45ba: $56
	inc h                                            ; $45bb: $24
	ret nz                                           ; $45bc: $c0

	nop                                              ; $45bd: $00
	dec b                                            ; $45be: $05
	sbc l                                            ; $45bf: $9d
	ret nz                                           ; $45c0: $c0

	nop                                              ; $45c1: $00
	dec b                                            ; $45c2: $05
	and h                                            ; $45c3: $a4
	ret nz                                           ; $45c4: $c0

	nop                                              ; $45c5: $00
	dec b                                            ; $45c6: $05
	xor h                                            ; $45c7: $ac
	ret nz                                           ; $45c8: $c0

	nop                                              ; $45c9: $00
	dec b                                            ; $45ca: $05
	or d                                             ; $45cb: $b2
	ret nz                                           ; $45cc: $c0

	nop                                              ; $45cd: $00
	dec b                                            ; $45ce: $05
	cp b                                             ; $45cf: $b8
	ret nz                                           ; $45d0: $c0

	nop                                              ; $45d1: $00
	nop                                              ; $45d2: $00
	ld [de], a                                       ; $45d3: $12
	ret nz                                           ; $45d4: $c0

	nop                                              ; $45d5: $00
	dec b                                            ; $45d6: $05
	cp a                                             ; $45d7: $bf
	ret nz                                           ; $45d8: $c0

	nop                                              ; $45d9: $00
	ld [bc], a                                       ; $45da: $02
	jp z, $00c0                                      ; $45db: $ca $c0 $00

	nop                                              ; $45de: $00
	ld [de], a                                       ; $45df: $12
	nop                                              ; $45e0: $00
	rla                                              ; $45e1: $17
	ret nz                                           ; $45e2: $c0

	nop                                              ; $45e3: $00
	dec b                                            ; $45e4: $05
	push bc                                          ; $45e5: $c5
	ret nz                                           ; $45e6: $c0

	nop                                              ; $45e7: $00
	dec b                                            ; $45e8: $05
	call z, $00c0                                    ; $45e9: $cc $c0 $00
	dec b                                            ; $45ec: $05
	call nc, $00c0                                   ; $45ed: $d4 $c0 $00
	dec b                                            ; $45f0: $05
	jp c, $00c0                                      ; $45f1: $da $c0 $00

	nop                                              ; $45f4: $00
	ld [de], a                                       ; $45f5: $12
	ldh [rP1], a                                     ; $45f6: $e0 $00
	ld [bc], a                                       ; $45f8: $02
	rla                                              ; $45f9: $17
	ret nz                                           ; $45fa: $c0

	nop                                              ; $45fb: $00
	dec b                                            ; $45fc: $05
	ldh [$c0], a                                     ; $45fd: $e0 $c0
	nop                                              ; $45ff: $00
	dec b                                            ; $4600: $05
	rst SubAFromBC                                          ; $4601: $e7
	ret nz                                           ; $4602: $c0

	nop                                              ; $4603: $00
	dec b                                            ; $4604: $05
	xor $c0                                          ; $4605: $ee $c0
	nop                                              ; $4607: $00
	ld [bc], a                                       ; $4608: $02
	jp z, $00c0                                      ; $4609: $ca $c0 $00

	nop                                              ; $460c: $00
	ld [de], a                                       ; $460d: $12
	db $e4                                           ; $460e: $e4
	ld [bc], a                                       ; $460f: $02
	xor c                                            ; $4610: $a9
	add hl, bc                                       ; $4611: $09
	ret nz                                           ; $4612: $c0

	cp $fd                                           ; $4613: $fe $fd
	ret nz                                           ; $4615: $c0

	ei                                               ; $4616: $fb
	adc e                                            ; $4617: $8b
	ld [bc], a                                       ; $4618: $02
	dec de                                           ; $4619: $1b
	ld [bc], a                                       ; $461a: $02
	or b                                             ; $461b: $b0
	ld d, l                                          ; $461c: $55
	daa                                              ; $461d: $27
	ret nz                                           ; $461e: $c0

	nop                                              ; $461f: $00
	dec b                                            ; $4620: $05
	push af                                          ; $4621: $f5
	ret nz                                           ; $4622: $c0

	nop                                              ; $4623: $00
	dec b                                            ; $4624: $05
	rst FarCall                                          ; $4625: $f7
	ret nz                                           ; $4626: $c0

	nop                                              ; $4627: $00
	nop                                              ; $4628: $00
	ld [de], a                                       ; $4629: $12
	ret nz                                           ; $462a: $c0

	nop                                              ; $462b: $00
	dec b                                            ; $462c: $05
	ld sp, hl                                        ; $462d: $f9
	ret nz                                           ; $462e: $c0

	nop                                              ; $462f: $00
	dec b                                            ; $4630: $05
	rst $38                                          ; $4631: $ff
	ret nz                                           ; $4632: $c0

	nop                                              ; $4633: $00
	ld b, $06                                        ; $4634: $06 $06
	ret nz                                           ; $4636: $c0

	nop                                              ; $4637: $00
	ld b, $0b                                        ; $4638: $06 $0b
	ret nz                                           ; $463a: $c0

	nop                                              ; $463b: $00
	ld b, $11                                        ; $463c: $06 $11
	ret nz                                           ; $463e: $c0

	nop                                              ; $463f: $00
	nop                                              ; $4640: $00
	ld [de], a                                       ; $4641: $12
	db $e4                                           ; $4642: $e4
	ld [bc], a                                       ; $4643: $02
	ld [hl], l                                       ; $4644: $75
	ld b, $b0                                        ; $4645: $06 $b0
	ld c, e                                          ; $4647: $4b
	or b                                             ; $4648: $b0
	ld c, h                                          ; $4649: $4c
	or b                                             ; $464a: $b0
	ld d, c                                          ; $464b: $51
	inc hl                                           ; $464c: $23
	ret nz                                           ; $464d: $c0

	nop                                              ; $464e: $00
	dec b                                            ; $464f: $05
	push af                                          ; $4650: $f5
	ret nz                                           ; $4651: $c0

	nop                                              ; $4652: $00
	dec b                                            ; $4653: $05
	rst FarCall                                          ; $4654: $f7
	ret nz                                           ; $4655: $c0

	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	ld [de], a                                       ; $4658: $12
	ret nz                                           ; $4659: $c0

	nop                                              ; $465a: $00
	ld [bc], a                                       ; $465b: $02
	ld a, [de]                                       ; $465c: $1a
	ret nz                                           ; $465d: $c0

	nop                                              ; $465e: $00
	ld b, $19                                        ; $465f: $06 $19
	ret nz                                           ; $4661: $c0

	nop                                              ; $4662: $00
	ld [bc], a                                       ; $4663: $02
	ld [hl+], a                                      ; $4664: $22
	ret nz                                           ; $4665: $c0

	nop                                              ; $4666: $00
	ld [bc], a                                       ; $4667: $02
	daa                                              ; $4668: $27
	ret nz                                           ; $4669: $c0

	nop                                              ; $466a: $00
	nop                                              ; $466b: $00
	ld [de], a                                       ; $466c: $12
	db $e4                                           ; $466d: $e4
	ld [bc], a                                       ; $466e: $02
	ld c, d                                          ; $466f: $4a
	ld [bc], a                                       ; $4670: $02
	or b                                             ; $4671: $b0
	ld d, a                                          ; $4672: $57
	inc hl                                           ; $4673: $23
	ret nz                                           ; $4674: $c0

	nop                                              ; $4675: $00
	dec b                                            ; $4676: $05
	push af                                          ; $4677: $f5
	ret nz                                           ; $4678: $c0

	nop                                              ; $4679: $00
	dec b                                            ; $467a: $05
	rst FarCall                                          ; $467b: $f7
	ret nz                                           ; $467c: $c0

	nop                                              ; $467d: $00
	nop                                              ; $467e: $00
	ld [de], a                                       ; $467f: $12
	ret nz                                           ; $4680: $c0

	nop                                              ; $4681: $00
	ld b, $20                                        ; $4682: $06 $20
	ret nz                                           ; $4684: $c0

	nop                                              ; $4685: $00
	ld b, $27                                        ; $4686: $06 $27
	ret nz                                           ; $4688: $c0

	nop                                              ; $4689: $00
	ld b, $29                                        ; $468a: $06 $29
	ret nz                                           ; $468c: $c0

	nop                                              ; $468d: $00
	ld b, $2f                                        ; $468e: $06 $2f
	ret nz                                           ; $4690: $c0

	nop                                              ; $4691: $00
	nop                                              ; $4692: $00
	ld [de], a                                       ; $4693: $12
	ldh [rP1], a                                     ; $4694: $e0 $00
	ld a, l                                          ; $4696: $7d
	ld [bc], a                                       ; $4697: $02
	or b                                             ; $4698: $b0
	ld e, b                                          ; $4699: $58
	inc sp                                           ; $469a: $33
	ret nz                                           ; $469b: $c0

	nop                                              ; $469c: $00
	ld b, $37                                        ; $469d: $06 $37
	ret nz                                           ; $469f: $c0

	nop                                              ; $46a0: $00
	ld b, $3b                                        ; $46a1: $06 $3b
	ret nz                                           ; $46a3: $c0

	nop                                              ; $46a4: $00
	ld b, $3f                                        ; $46a5: $06 $3f
	ret nz                                           ; $46a7: $c0

	nop                                              ; $46a8: $00
	nop                                              ; $46a9: $00
	ld [de], a                                       ; $46aa: $12
	ret nz                                           ; $46ab: $c0

	nop                                              ; $46ac: $00
	ld b, $47                                        ; $46ad: $06 $47
	ret nz                                           ; $46af: $c0

	nop                                              ; $46b0: $00
	dec b                                            ; $46b1: $05
	rst FarCall                                          ; $46b2: $f7
	ret nz                                           ; $46b3: $c0

	nop                                              ; $46b4: $00
	nop                                              ; $46b5: $00
	ld [de], a                                       ; $46b6: $12
	ret nz                                           ; $46b7: $c0

	nop                                              ; $46b8: $00
	ld b, $4d                                        ; $46b9: $06 $4d
	ret nz                                           ; $46bb: $c0

	nop                                              ; $46bc: $00
	ld b, $52                                        ; $46bd: $06 $52
	ret nz                                           ; $46bf: $c0

	nop                                              ; $46c0: $00
	ld b, $27                                        ; $46c1: $06 $27
	ret nz                                           ; $46c3: $c0

	nop                                              ; $46c4: $00
	ld b, $56                                        ; $46c5: $06 $56
	ret nz                                           ; $46c7: $c0

	nop                                              ; $46c8: $00
	nop                                              ; $46c9: $00
	ld [de], a                                       ; $46ca: $12
	db $e4                                           ; $46cb: $e4
	ld bc, $02ec                                     ; $46cc: $01 $ec $02
	or b                                             ; $46cf: $b0
	ld d, [hl]                                       ; $46d0: $56
	cpl                                              ; $46d1: $2f
	ret nz                                           ; $46d2: $c0

	nop                                              ; $46d3: $00
	dec b                                            ; $46d4: $05
	push af                                          ; $46d5: $f5
	ret nz                                           ; $46d6: $c0

	nop                                              ; $46d7: $00
	dec b                                            ; $46d8: $05
	rst FarCall                                          ; $46d9: $f7
	ret nz                                           ; $46da: $c0

	nop                                              ; $46db: $00
	nop                                              ; $46dc: $00
	ld [de], a                                       ; $46dd: $12
	ret nz                                           ; $46de: $c0

	nop                                              ; $46df: $00
	ld b, $60                                        ; $46e0: $06 $60
	ret nz                                           ; $46e2: $c0

	nop                                              ; $46e3: $00
	ld b, $66                                        ; $46e4: $06 $66
	ret nz                                           ; $46e6: $c0

	nop                                              ; $46e7: $00
	ld b, $6e                                        ; $46e8: $06 $6e
	ret nz                                           ; $46ea: $c0

	nop                                              ; $46eb: $00
	ld b, $76                                        ; $46ec: $06 $76
	ret nz                                           ; $46ee: $c0

	nop                                              ; $46ef: $00
	nop                                              ; $46f0: $00
	ld [de], a                                       ; $46f1: $12
	ret nz                                           ; $46f2: $c0

	nop                                              ; $46f3: $00
	inc bc                                           ; $46f4: $03
	inc l                                            ; $46f5: $2c
	ret nz                                           ; $46f6: $c0

	nop                                              ; $46f7: $00
	ld b, $7b                                        ; $46f8: $06 $7b
	ret nz                                           ; $46fa: $c0

	nop                                              ; $46fb: $00
	nop                                              ; $46fc: $00
	ld [de], a                                       ; $46fd: $12
	db $e4                                           ; $46fe: $e4
	ld bc, $00b9                                     ; $46ff: $01 $b9 $00
	rrca                                             ; $4702: $0f
	ret nz                                           ; $4703: $c0

	nop                                              ; $4704: $00
	dec b                                            ; $4705: $05
	push af                                          ; $4706: $f5
	ret nz                                           ; $4707: $c0

	nop                                              ; $4708: $00
	dec b                                            ; $4709: $05
	rst FarCall                                          ; $470a: $f7
	ret nz                                           ; $470b: $c0

	nop                                              ; $470c: $00
	nop                                              ; $470d: $00
	ld [de], a                                       ; $470e: $12
	ldh [rP1], a                                     ; $470f: $e0 $00
	ld [bc], a                                       ; $4711: $02
	dec de                                           ; $4712: $1b
	ret nz                                           ; $4713: $c0

	nop                                              ; $4714: $00
	ld b, $7f                                        ; $4715: $06 $7f
	ret nz                                           ; $4717: $c0

	nop                                              ; $4718: $00
	ld b, $85                                        ; $4719: $06 $85
	ret nz                                           ; $471b: $c0

	nop                                              ; $471c: $00
	ld b, $8c                                        ; $471d: $06 $8c
	ret nz                                           ; $471f: $c0

	nop                                              ; $4720: $00
	ld [bc], a                                       ; $4721: $02
	ret z                                            ; $4722: $c8

	ret nz                                           ; $4723: $c0

	nop                                              ; $4724: $00
	ld [bc], a                                       ; $4725: $02
	jp z, $00c0                                      ; $4726: $ca $c0 $00

	nop                                              ; $4729: $00
	ld [de], a                                       ; $472a: $12
	db $e4                                           ; $472b: $e4
	ld bc, $098c                                     ; $472c: $01 $8c $09

jr_07c_472f:
	ret nz                                           ; $472f: $c0

	xor $fd                                          ; $4730: $ee $fd
	ret nz                                           ; $4732: $c0

	db $eb                                           ; $4733: $eb
	adc e                                            ; $4734: $8b
	ld [bc], a                                       ; $4735: $02
	dec de                                           ; $4736: $1b
	ld c, $b0                                        ; $4737: $0e $b0
	ld b, e                                          ; $4739: $43
	or b                                             ; $473a: $b0
	ld b, h                                          ; $473b: $44
	or b                                             ; $473c: $b0
	ld b, l                                          ; $473d: $45
	or b                                             ; $473e: $b0
	ld d, e                                          ; $473f: $53
	or b                                             ; $4740: $b0
	ld b, [hl]                                       ; $4741: $46
	or b                                             ; $4742: $b0
	ld b, a                                          ; $4743: $47
	or b                                             ; $4744: $b0
	ld c, b                                          ; $4745: $48
	rla                                              ; $4746: $17
	ret nz                                           ; $4747: $c0

	nop                                              ; $4748: $00
	ld b, $91                                        ; $4749: $06 $91
	ret nz                                           ; $474b: $c0

	nop                                              ; $474c: $00
	ld b, $93                                        ; $474d: $06 $93
	ret nz                                           ; $474f: $c0

	nop                                              ; $4750: $00
	ld b, $9b                                        ; $4751: $06 $9b
	ret nz                                           ; $4753: $c0

	nop                                              ; $4754: $00
	ld b, $9f                                        ; $4755: $06 $9f
	ret nz                                           ; $4757: $c0

	nop                                              ; $4758: $00
	nop                                              ; $4759: $00
	ld [de], a                                       ; $475a: $12
	ldh [rP1], a                                     ; $475b: $e0 $00
	jp $b006                                         ; $475d: $c3 $06 $b0


	ld c, e                                          ; $4760: $4b
	or b                                             ; $4761: $b0
	ld c, h                                          ; $4762: $4c
	or b                                             ; $4763: $b0
	ld d, c                                          ; $4764: $51
	inc hl                                           ; $4765: $23
	ret nz                                           ; $4766: $c0

	nop                                              ; $4767: $00
	ld b, $91                                        ; $4768: $06 $91
	ret nz                                           ; $476a: $c0

	nop                                              ; $476b: $00
	ld [bc], a                                       ; $476c: $02
	jr jr_07c_472f                                   ; $476d: $18 $c0

	nop                                              ; $476f: $00
	nop                                              ; $4770: $00
	ld [de], a                                       ; $4771: $12
	ret nz                                           ; $4772: $c0

	nop                                              ; $4773: $00
	ld b, $a5                                        ; $4774: $06 $a5
	ret nz                                           ; $4776: $c0

	nop                                              ; $4777: $00
	ld b, $a9                                        ; $4778: $06 $a9
	ret nz                                           ; $477a: $c0

	nop                                              ; $477b: $00
	ld b, $af                                        ; $477c: $06 $af
	ret nz                                           ; $477e: $c0

	nop                                              ; $477f: $00
	ld [bc], a                                       ; $4780: $02
	daa                                              ; $4781: $27
	ret nz                                           ; $4782: $c0

	nop                                              ; $4783: $00
	nop                                              ; $4784: $00
	ld [de], a                                       ; $4785: $12
	db $e4                                           ; $4786: $e4
	ld bc, $0231                                     ; $4787: $01 $31 $02
	or b                                             ; $478a: $b0
	ld d, a                                          ; $478b: $57
	dec de                                           ; $478c: $1b
	ret nz                                           ; $478d: $c0

	nop                                              ; $478e: $00
	ld b, $b3                                        ; $478f: $06 $b3
	ret nz                                           ; $4791: $c0

	nop                                              ; $4792: $00
	ld b, $b7                                        ; $4793: $06 $b7
	ret nz                                           ; $4795: $c0

	nop                                              ; $4796: $00
	nop                                              ; $4797: $00
	ld [de], a                                       ; $4798: $12
	ret nz                                           ; $4799: $c0

	nop                                              ; $479a: $00
	ld b, $be                                        ; $479b: $06 $be
	ret nz                                           ; $479d: $c0

	nop                                              ; $479e: $00
	ld b, $c4                                        ; $479f: $06 $c4
	ret nz                                           ; $47a1: $c0

	nop                                              ; $47a2: $00
	nop                                              ; $47a3: $00
	ld [de], a                                       ; $47a4: $12
	ldh [rP1], a                                     ; $47a5: $e0 $00
	ld a, c                                          ; $47a7: $79
	ld [bc], a                                       ; $47a8: $02
	or b                                             ; $47a9: $b0
	ld e, b                                          ; $47aa: $58
	rla                                              ; $47ab: $17
	ret nz                                           ; $47ac: $c0

	nop                                              ; $47ad: $00
	ld b, $b3                                        ; $47ae: $06 $b3
	ret nz                                           ; $47b0: $c0

	nop                                              ; $47b1: $00
	ld b, $ca                                        ; $47b2: $06 $ca
	ret nz                                           ; $47b4: $c0

	nop                                              ; $47b5: $00
	ld b, $d2                                        ; $47b6: $06 $d2
	ret nz                                           ; $47b8: $c0

	nop                                              ; $47b9: $00
	ld b, $da                                        ; $47ba: $06 $da
	ret nz                                           ; $47bc: $c0

	nop                                              ; $47bd: $00
	nop                                              ; $47be: $00
	ld [de], a                                       ; $47bf: $12
	ldh [rP1], a                                     ; $47c0: $e0 $00
	ld e, [hl]                                       ; $47c2: $5e
	ld [bc], a                                       ; $47c3: $02
	or b                                             ; $47c4: $b0
	ld d, [hl]                                       ; $47c5: $56
	cpl                                              ; $47c6: $2f
	ret nz                                           ; $47c7: $c0

	nop                                              ; $47c8: $00
	ld b, $91                                        ; $47c9: $06 $91
	ret nz                                           ; $47cb: $c0

	nop                                              ; $47cc: $00
	ld b, $dd                                        ; $47cd: $06 $dd
	ret nz                                           ; $47cf: $c0

	nop                                              ; $47d0: $00
	ld [bc], a                                       ; $47d1: $02
	inc b                                            ; $47d2: $04
	ret nz                                           ; $47d3: $c0

	nop                                              ; $47d4: $00
	nop                                              ; $47d5: $00
	ld [de], a                                       ; $47d6: $12
	ret nz                                           ; $47d7: $c0

	nop                                              ; $47d8: $00
	ld b, $e2                                        ; $47d9: $06 $e2
	ret nz                                           ; $47db: $c0

	nop                                              ; $47dc: $00
	ld b, $e8                                        ; $47dd: $06 $e8
	ret nz                                           ; $47df: $c0

	nop                                              ; $47e0: $00
	ld b, $ef                                        ; $47e1: $06 $ef
	ret nz                                           ; $47e3: $c0

	nop                                              ; $47e4: $00
	nop                                              ; $47e5: $00
	ld [de], a                                       ; $47e6: $12
	ret nz                                           ; $47e7: $c0

	nop                                              ; $47e8: $00
	ld b, $f4                                        ; $47e9: $06 $f4
	ret nz                                           ; $47eb: $c0

	nop                                              ; $47ec: $00
	ld b, $fa                                        ; $47ed: $06 $fa
	ret nz                                           ; $47ef: $c0

	nop                                              ; $47f0: $00
	nop                                              ; $47f1: $00
	ld [de], a                                       ; $47f2: $12
	db $e4                                           ; $47f3: $e4
	nop                                              ; $47f4: $00
	call nz, $2700                                   ; $47f5: $c4 $00 $27
	ret nz                                           ; $47f8: $c0

	nop                                              ; $47f9: $00
	ld b, $91                                        ; $47fa: $06 $91
	ret nz                                           ; $47fc: $c0

	nop                                              ; $47fd: $00

jr_07c_47fe:
	ld [bc], a                                       ; $47fe: $02
	ld b, d                                          ; $47ff: $42
	ret nz                                           ; $4800: $c0

	nop                                              ; $4801: $00
	ld [bc], a                                       ; $4802: $02
	inc b                                            ; $4803: $04
	ret nz                                           ; $4804: $c0

	nop                                              ; $4805: $00
	nop                                              ; $4806: $00
	ld [de], a                                       ; $4807: $12
	ret nz                                           ; $4808: $c0

	nop                                              ; $4809: $00
	rlca                                             ; $480a: $07
	ld bc, $00c0                                     ; $480b: $01 $c0 $00

jr_07c_480e:
	rlca                                             ; $480e: $07
	ld [$00c0], sp                                   ; $480f: $08 $c0 $00
	ld b, $af                                        ; $4812: $06 $af
	ret nz                                           ; $4814: $c0

	nop                                              ; $4815: $00
	rlca                                             ; $4816: $07
	inc c                                            ; $4817: $0c
	ret nz                                           ; $4818: $c0

	nop                                              ; $4819: $00
	nop                                              ; $481a: $00
	ld [de], a                                       ; $481b: $12
	ldh [rP1], a                                     ; $481c: $e0 $00
	ld [bc], a                                       ; $481e: $02
	inc de                                           ; $481f: $13
	ret nz                                           ; $4820: $c0

	nop                                              ; $4821: $00
	rlca                                             ; $4822: $07
	inc d                                            ; $4823: $14
	ret nz                                           ; $4824: $c0

	nop                                              ; $4825: $00
	rlca                                             ; $4826: $07
	inc e                                            ; $4827: $1c
	ret nz                                           ; $4828: $c0

	nop                                              ; $4829: $00
	ld [bc], a                                       ; $482a: $02
	jp z, $00c0                                      ; $482b: $ca $c0 $00

	nop                                              ; $482e: $00
	ld [de], a                                       ; $482f: $12
	db $e4                                           ; $4830: $e4
	nop                                              ; $4831: $00
	add a                                            ; $4832: $87
	add hl, bc                                       ; $4833: $09
	add e                                            ; $4834: $83
	ret nz                                           ; $4835: $c0

	nop                                              ; $4836: $00
	rlca                                             ; $4837: $07
	inc hl                                           ; $4838: $23
	ret nz                                           ; $4839: $c0

	nop                                              ; $483a: $00
	rlca                                             ; $483b: $07
	jr z, jr_07c_47fe                                ; $483c: $28 $c0

	nop                                              ; $483e: $00
	rlca                                             ; $483f: $07
	dec l                                            ; $4840: $2d
	ret nz                                           ; $4841: $c0

	nop                                              ; $4842: $00
	rlca                                             ; $4843: $07
	ld [hl-], a                                      ; $4844: $32
	ret nz                                           ; $4845: $c0

	nop                                              ; $4846: $00
	nop                                              ; $4847: $00
	ld [de], a                                       ; $4848: $12
	ret nz                                           ; $4849: $c0

	nop                                              ; $484a: $00
	rlca                                             ; $484b: $07
	jr c, jr_07c_480e                                ; $484c: $38 $c0

	nop                                              ; $484e: $00
	rlca                                             ; $484f: $07
	dec a                                            ; $4850: $3d
	ret nz                                           ; $4851: $c0

	nop                                              ; $4852: $00
	rlca                                             ; $4853: $07
	ld b, l                                          ; $4854: $45
	ret nz                                           ; $4855: $c0

	nop                                              ; $4856: $00
	rlca                                             ; $4857: $07
	ld c, l                                          ; $4858: $4d
	ret nz                                           ; $4859: $c0

	nop                                              ; $485a: $00
	rlca                                             ; $485b: $07
	ld d, e                                          ; $485c: $53
	ret nz                                           ; $485d: $c0

	nop                                              ; $485e: $00
	rlca                                             ; $485f: $07
	ld e, b                                          ; $4860: $58
	ret nz                                           ; $4861: $c0

	nop                                              ; $4862: $00
	rlca                                             ; $4863: $07
	ld e, l                                          ; $4864: $5d
	ret nz                                           ; $4865: $c0

	nop                                              ; $4866: $00
	rlca                                             ; $4867: $07
	ld h, l                                          ; $4868: $65
	ret nz                                           ; $4869: $c0

	nop                                              ; $486a: $00
	nop                                              ; $486b: $00
	ld [de], a                                       ; $486c: $12
	ret nz                                           ; $486d: $c0

	nop                                              ; $486e: $00
	rlca                                             ; $486f: $07
	ld l, d                                          ; $4870: $6a
	ret nz                                           ; $4871: $c0

	nop                                              ; $4872: $00
	rlca                                             ; $4873: $07
	ld l, a                                          ; $4874: $6f
	ret nz                                           ; $4875: $c0

	nop                                              ; $4876: $00
	rlca                                             ; $4877: $07
	ld [hl], e                                       ; $4878: $73
	ret nz                                           ; $4879: $c0

	nop                                              ; $487a: $00
	rlca                                             ; $487b: $07
	ld a, c                                          ; $487c: $79
	ret nz                                           ; $487d: $c0

	nop                                              ; $487e: $00
	rlca                                             ; $487f: $07
	add c                                            ; $4880: $81
	ret nz                                           ; $4881: $c0

	nop                                              ; $4882: $00
	rlca                                             ; $4883: $07
	add a                                            ; $4884: $87
	ret nz                                           ; $4885: $c0

	nop                                              ; $4886: $00
	rlca                                             ; $4887: $07
	adc e                                            ; $4888: $8b
	ret nz                                           ; $4889: $c0

	nop                                              ; $488a: $00
	nop                                              ; $488b: $00
	ld [de], a                                       ; $488c: $12
	ret nz                                           ; $488d: $c0

	nop                                              ; $488e: $00
	rlca                                             ; $488f: $07
	sub b                                            ; $4890: $90
	ret nz                                           ; $4891: $c0

	nop                                              ; $4892: $00
	rlca                                             ; $4893: $07
	sbc c                                            ; $4894: $99
	ret nz                                           ; $4895: $c0

	nop                                              ; $4896: $00
	rlca                                             ; $4897: $07
	sbc l                                            ; $4898: $9d
	ret nz                                           ; $4899: $c0

	nop                                              ; $489a: $00
	rlca                                             ; $489b: $07
	and e                                            ; $489c: $a3
	ret nz                                           ; $489d: $c0

	nop                                              ; $489e: $00
	nop                                              ; $489f: $00
	ld [de], a                                       ; $48a0: $12
	ret nz                                           ; $48a1: $c0

	nop                                              ; $48a2: $00
	rlca                                             ; $48a3: $07
	xor b                                            ; $48a4: $a8
	ret nz                                           ; $48a5: $c0

	nop                                              ; $48a6: $00
	rlca                                             ; $48a7: $07
	xor d                                            ; $48a8: $aa
	ret nz                                           ; $48a9: $c0

	nop                                              ; $48aa: $00
	rlca                                             ; $48ab: $07
	xor l                                            ; $48ac: $ad
	ret nz                                           ; $48ad: $c0

	nop                                              ; $48ae: $00
	rlca                                             ; $48af: $07
	or e                                             ; $48b0: $b3
	ret nz                                           ; $48b1: $c0

	nop                                              ; $48b2: $00
	rlca                                             ; $48b3: $07
	cp c                                             ; $48b4: $b9
	db $e4                                           ; $48b5: $e4
	nop                                              ; $48b6: $00
	dec e                                            ; $48b7: $1d
	add hl, bc                                       ; $48b8: $09
	add hl, de                                       ; $48b9: $19
	ret nz                                           ; $48ba: $c0

	nop                                              ; $48bb: $00
	rlca                                             ; $48bc: $07
	xor b                                            ; $48bd: $a8
	ret nz                                           ; $48be: $c0

	nop                                              ; $48bf: $00
	rlca                                             ; $48c0: $07
	xor d                                            ; $48c1: $aa
	ret nz                                           ; $48c2: $c0

	nop                                              ; $48c3: $00
	rlca                                             ; $48c4: $07
	xor l                                            ; $48c5: $ad
	ret nz                                           ; $48c6: $c0

	nop                                              ; $48c7: $00
	rlca                                             ; $48c8: $07
	cp a                                             ; $48c9: $bf
	pop bc                                           ; $48ca: $c1
	dec a                                            ; $48cb: $3d
	ret nz                                           ; $48cc: $c0

	inc c                                            ; $48cd: $0c
	ldh [$b4], a                                     ; $48ce: $e0 $b4
	db $e4                                           ; $48d0: $e4
	nop                                              ; $48d1: $00
	ld [bc], a                                       ; $48d2: $02
	add hl, bc                                       ; $48d3: $09
	add hl, bc                                       ; $48d4: $09
	pop bc                                           ; $48d5: $c1
	sub d                                            ; $48d6: $92
	pop bc                                           ; $48d7: $c1
	sub h                                            ; $48d8: $94
	pop bc                                           ; $48d9: $c1
	sub l                                            ; $48da: $95
	pop bc                                           ; $48db: $c1
	dec d                                            ; $48dc: $15
	ret nc                                           ; $48dd: $d0

	ld b, l                                          ; $48de: $45
	inc b                                            ; $48df: $04




































MainScript04::
	db $09, $c1, $c4 ; this lasts for $1c4 bytes from next addr
	dwbe $c1b0 ; 3 params - sets bytes
	db $d2, $e0,$20, $d0
	dwbe $c001 ; 2 params - uses texts table
	db $a0,$01, $00,$01
	dwbe $c001
	db $a0,$01, $00,$0f
	dwbe $c001
	db $a0,$01, $00,$24
	dwbe $c159 ; 1 param
	db $e3, $01,$28
	dwbe $c001
	db $a0,$01, $00,$3a
	dwbe $c001
	db $a0,$01, $00,$50
	dwbe $c000 ; 1 param
	db $00,$64
	dwbe $c001
	db $a0,$01, $00,$67
	dwbe $c014 ; 1 param
	db $e3, $01,$29
	dwbe $c001
	db $a0,$07, $00,$69
	dwbe $c001
	db $a0,$01, $00,$70
	dwbe $c001
	db $a0,$07, $00,$7f
	dwbe $c001
	db $a0,$01, $00,$8a
	dwbe $c00c ; 1 param - wait
	db $e0, $1e
	dwbe $c001
	db $a0,$10, $00,$92
	dwbe $c18a ; 1 param
	db $d4
	dwbe $c001
	db $a0,$11, $00,$97
	dwbe $c00c
	db $e0, $3c
	dwbe $c14f ; 1 param
	db $d0
	dwbe $c001
	db $a0,$07, $00,$9c
	dwbe $c13b ; 0 params
	dwbe $c0cb ; 0 params
	dwbe $c009 ; 1 param
	db $e3, $00,$57

; 12b is idx used to load graphics, e3 loads next word as param
	db $c0, $0f, $e3, $01, $2b

; c001 is task 1, a0 loads in B as 1st param, and a6 as 2nd
	db $c0, $01, $a0, $0b, $00, $a6

; c00c is task c (wait), e0 loads $1e as the sole param
	db $c0, $0c, $e0, $1e

;
	ret nz                                           ; $496b: $c0

	inc d                                            ; $496c: $14
	db $e3                                           ; $496d: $e3
	nop                                              ; $496e: $00
	ret z                                            ; $496f: $c8

	ret nz                                           ; $4970: $c0

	and a                                            ; $4971: $a7
	rst SubAFromDE                                          ; $4972: $df
	db $d3                                           ; $4973: $d3
	rst SubAFromDE                                          ; $4974: $df
	ret nz                                           ; $4975: $c0

	and l                                            ; $4976: $a5
	ret nz                                           ; $4977: $c0

	ld bc, $0ba0                                     ; $4978: $01 $a0 $0b
	nop                                              ; $497b: $00
	xor l                                            ; $497c: $ad
	pop bc                                           ; $497d: $c1
	ld e, c                                          ; $497e: $59
	db $e3                                           ; $497f: $e3
	nop                                              ; $4980: $00
	rst JumpTable                                          ; $4981: $c7
	ret nz                                           ; $4982: $c0

	ld bc, $0ba0                                     ; $4983: $01 $a0 $0b
	nop                                              ; $4986: $00
	cp [hl]                                          ; $4987: $be
	pop bc                                           ; $4988: $c1
	ld c, a                                          ; $4989: $4f
	pop de                                           ; $498a: $d1
	ret nz                                           ; $498b: $c0

	ld bc, $07a0                                     ; $498c: $01 $a0 $07
	nop                                              ; $498f: $00
	push de                                          ; $4990: $d5
	ret nz                                           ; $4991: $c0

	ld bc, $01a0                                     ; $4992: $01 $a0 $01
	nop                                              ; $4995: $00
	push hl                                          ; $4996: $e5
	ret nz                                           ; $4997: $c0

	inc d                                            ; $4998: $14
	db $e3                                           ; $4999: $e3
	ld bc, $c128                                     ; $499a: $01 $28 $c1
	dec sp                                           ; $499d: $3b
	ret nz                                           ; $499e: $c0

	ld bc, $01a0                                     ; $499f: $01 $a0 $01
	nop                                              ; $49a2: $00
	add sp, -$40                                     ; $49a3: $e8 $c0
	ld de, $00e3                                     ; $49a5: $11 $e3 $00
	ret z                                            ; $49a8: $c8

	ret nz                                           ; $49a9: $c0

	and a                                            ; $49aa: $a7
	ret nc                                           ; $49ab: $d0

	db $d3                                           ; $49ac: $d3
	rst SubAFromDE                                          ; $49ad: $df
	pop bc                                           ; $49ae: $c1
	ld e, h                                          ; $49af: $5c
	ret nz                                           ; $49b0: $c0

	rst $38                                          ; $49b1: $ff
	pop bc                                           ; $49b2: $c1
	or d                                             ; $49b3: $b2
	db $e3                                           ; $49b4: $e3
	nop                                              ; $49b5: $00
	ld bc, $09c0                                     ; $49b6: $01 $c0 $09
	db $e3                                           ; $49b9: $e3
	nop                                              ; $49ba: $00
	ld c, d                                          ; $49bb: $4a
	ret nz                                           ; $49bc: $c0

	ld bc, $02a0                                     ; $49bd: $01 $a0 $02
	nop                                              ; $49c0: $00
	ldh a, [c]                                       ; $49c1: $f2
	ret nz                                           ; $49c2: $c0

	ld bc, $02a0                                     ; $49c3: $01 $a0 $02
	nop                                              ; $49c6: $00
	db $fd                                           ; $49c7: $fd
	pop bc                                           ; $49c8: $c1
	ld c, a                                          ; $49c9: $4f
	jp nc, $01c0                                     ; $49ca: $d2 $c0 $01

	and b                                            ; $49cd: $a0
	rlca                                             ; $49ce: $07
	ld bc, $c011                                     ; $49cf: $01 $11 $c0
	ld bc, $01a0                                     ; $49d2: $01 $a0 $01
	ld bc, $c020                                     ; $49d5: $01 $20 $c0
	ld bc, $07a0                                     ; $49d8: $01 $a0 $07
	ld bc, $c02b                                     ; $49db: $01 $2b $c0
	ld bc, $01a0                                     ; $49de: $01 $a0 $01
	ld bc, $c037                                     ; $49e1: $01 $37 $c0
	ld bc, $07a0                                     ; $49e4: $01 $a0 $07
	ld bc, $c042                                     ; $49e7: $01 $42 $c0
	ld bc, $01a0                                     ; $49ea: $01 $a0 $01
	ld bc, $c04b                                     ; $49ed: $01 $4b $c0
	ld bc, $07a0                                     ; $49f0: $01 $a0 $07
	ld bc, $c04e                                     ; $49f3: $01 $4e $c0
	ld bc, $01a0                                     ; $49f6: $01 $a0 $01
	ld bc, $c052                                     ; $49f9: $01 $52 $c0
	ld bc, $07a0                                     ; $49fc: $01 $a0 $07
	ld bc, $c054                                     ; $49ff: $01 $54 $c0
	ld bc, $01a0                                     ; $4a02: $01 $a0 $01
	ld bc, $c057                                     ; $4a05: $01 $57 $c0
	ld bc, $07a0                                     ; $4a08: $01 $a0 $07
	ld bc, $c060                                     ; $4a0b: $01 $60 $c0
	ld bc, $01a0                                     ; $4a0e: $01 $a0 $01
	ld bc, $c067                                     ; $4a11: $01 $67 $c0
	ld bc, $07a0                                     ; $4a14: $01 $a0 $07
	ld bc, $c06d                                     ; $4a17: $01 $6d $c0
	ld bc, $01a0                                     ; $4a1a: $01 $a0 $01
	ld bc, $c072                                     ; $4a1d: $01 $72 $c0
	inc d                                            ; $4a20: $14
	db $e3                                           ; $4a21: $e3
	ld bc, $c029                                     ; $4a22: $01 $29 $c0
	ld bc, $07a0                                     ; $4a25: $01 $a0 $07
	ld bc, $c081                                     ; $4a28: $01 $81 $c0
	ld bc, $01a0                                     ; $4a2b: $01 $a0 $01
	ld bc, $c193                                     ; $4a2e: $01 $93 $c1
	dec sp                                           ; $4a31: $3b
	ret nz                                           ; $4a32: $c0

	add hl, bc                                       ; $4a33: $09
	db $e3                                           ; $4a34: $e3
	nop                                              ; $4a35: $00
	ld h, b                                          ; $4a36: $60
	ret nz                                           ; $4a37: $c0

	ld bc, $07a0                                     ; $4a38: $01 $a0 $07
	ld bc, $c098                                     ; $4a3b: $01 $98 $c0
	ld bc, $01a0                                     ; $4a3e: $01 $a0 $01
	ld bc, $c0a6                                     ; $4a41: $01 $a6 $c0
	ld bc, $07a0                                     ; $4a44: $01 $a0 $07
	ld bc, $c1a9                                     ; $4a47: $01 $a9 $c1
	ld e, c                                          ; $4a4a: $59
	db $e3                                           ; $4a4b: $e3
	ld bc, $c02c                                     ; $4a4c: $01 $2c $c0
	ld bc, $01a0                                     ; $4a4f: $01 $a0 $01
	ld bc, $c0b6                                     ; $4a52: $01 $b6 $c0
	inc c                                            ; $4a55: $0c
	ldh [$3c], a                                     ; $4a56: $e0 $3c
	pop bc                                           ; $4a58: $c1
	ld e, c                                          ; $4a59: $59
	db $e3                                           ; $4a5a: $e3
	ld bc, $c02d                                     ; $4a5b: $01 $2d $c0
	ld bc, $07a0                                     ; $4a5e: $01 $a0 $07
	ld bc, $c0b9                                     ; $4a61: $01 $b9 $c0
	ld bc, $01a0                                     ; $4a64: $01 $a0 $01
	ld bc, $c0d7                                     ; $4a67: $01 $d7 $c0
	ld bc, $07a0                                     ; $4a6a: $01 $a0 $07
	ld bc, $c0e1                                     ; $4a6d: $01 $e1 $c0
	ld bc, $01a0                                     ; $4a70: $01 $a0 $01
	ld bc, $c1ed                                     ; $4a73: $01 $ed $c1
	ld d, a                                          ; $4a76: $57
	ret nz                                           ; $4a77: $c0

	and a                                            ; $4a78: $a7
	ret nc                                           ; $4a79: $d0

	db $d3                                           ; $4a7a: $d3
	rst SubAFromDE                                          ; $4a7b: $df
	pop bc                                           ; $4a7c: $c1
	ld e, l                                          ; $4a7d: $5d
	ret nz                                           ; $4a7e: $c0

	inc c                                            ; $4a7f: $0c
	ldh [rAUD3HIGH], a                               ; $4a80: $e0 $1e
	pop bc                                           ; $4a82: $c1
	ld e, [hl]                                       ; $4a83: $5e
	pop bc                                           ; $4a84: $c1
	ld e, e                                          ; $4a85: $5b
	pop bc                                           ; $4a86: $c1
	adc [hl]                                         ; $4a87: $8e
	ret nz                                           ; $4a88: $c0

	rrca                                             ; $4a89: $0f
	db $e3                                           ; $4a8a: $e3
	ld bc, $c02d                                     ; $4a8b: $01 $2d $c0
	ld bc, $01a0                                     ; $4a8e: $01 $a0 $01
	ld bc, $c1f6                                     ; $4a91: $01 $f6 $c1
	or b                                             ; $4a94: $b0
	ret nc                                           ; $4a95: $d0

	ret nc                                           ; $4a96: $d0

	ret nc                                           ; $4a97: $d0

	ret nz                                           ; $4a98: $c0

	inc c                                            ; $4a99: $0c
	ldh [$3c], a                                     ; $4a9a: $e0 $3c
	pop bc                                           ; $4a9c: $c1
	ld d, a                                          ; $4a9d: $57
	pop bc                                           ; $4a9e: $c1
	dec sp                                           ; $4a9f: $3b
	ret nz                                           ; $4aa0: $c0

	reti                                             ; $4aa1: $d9


	jp nc, $e4d7                                     ; $4aa2: $d2 $d7 $e4

	nop                                              ; $4aa5: $00
	ld [bc], a                                       ; $4aa6: $02



; above good
; --------------------------------------------------------------------



; jumped to from above e4 00 02
	db $09, $23 ; this lasts for $23 bytes from next addr, ie $4acc
	ret nz                                           ; $4aa9: $c0

	rrca                                             ; $4aaa: $0f
	db $e3                                           ; $4aab: $e3
	nop                                              ; $4aac: $00
	ld c, c                                          ; $4aad: $49
	pop hl                                           ; $4aae: $e1
	ld [bc], a                                       ; $4aaf: $02
	ld [bc], a                                       ; $4ab0: $02
	call z, $09c0                                    ; $4ab1: $cc $c0 $09
	db $e3                                           ; $4ab4: $e3
	nop                                              ; $4ab5: $00
	ld l, d                                          ; $4ab6: $6a
	ret nz                                           ; $4ab7: $c0

	ld bc, $07a0                                     ; $4ab8: $01 $a0 $07
	ld [bc], a                                       ; $4abb: $02
	ld b, $c0                                        ; $4abc: $06 $c0
	ld bc, $01a0                                     ; $4abe: $01 $a0 $01
	ld [bc], a                                       ; $4ac1: $02
	inc d                                            ; $4ac2: $14
	ret nz                                           ; $4ac3: $c0

	ld bc, $07a0                                     ; $4ac4: $01 $a0 $07
	ld [bc], a                                       ; $4ac7: $02
	ld d, $e4                                        ; $4ac8: $16 $e4
	nop                                              ; $4aca: $00
	ld [bc], a                                       ; $4acb: $02



; above good
; --------------------------------------------------------------------

; jumped to from above e4 00 02

; $28 is stored, script set to byte after, so $06 is next to run,
; byt Call_003_64ba is called first
	jr z, jr_07c_4ad4                                ; $4acc: $28 $06

	ret nz                                           ; $4ace: $c0

	ld bc, $01a0                                     ; $4acf: $01 $a0 $01
	ld [bc], a                                       ; $4ad2: $02
	rra                                              ; $4ad3: $1f

; displaying 2 options
jr_07c_4ad4:
	inc h                                            ; $4ad4: $24   ?? distance from next to options join up
	ld [bc], a                                       ; $4ad5: $02
	inc hl                                           ; $4ad6: $23   ?? 223 is option 1

; option 1
	add hl, bc                                       ; $4ad7: $09   ?? num bytes of for opt is 09
	add hl, bc                                       ; $4ad8: $09

;
	ret nz                                           ; $4ad9: $c0

	set 0, c                                         ; $4ada: $cb $c1
	ld e, e                                          ; $4adc: $5b
	pop bc                                           ; $4add: $c1
	dec sp                                           ; $4ade: $3b
	db $e4                                           ; $4adf: $e4
	nop                                              ; $4ae0: $00
	add hl, de                                       ; $4ae1: $19

; option 2???
	ld [bc], a                                       ; $4ae2: $02   ?? 226 is option 2
	db $26
	
	
	db $09 ;    ?? num bytes of for opt is 13
	inc de                                           ; $4ae5: $13

;
	ret nz                                           ; $4ae6: $c0

	ld bc, $07a0                                     ; $4ae7: $01 $a0 $07
	ld [bc], a                                       ; $4aea: $02
	add hl, hl                                       ; $4aeb: $29
	ret nz                                           ; $4aec: $c0

	set 0, c                                         ; $4aed: $cb $c1
	ld e, e                                          ; $4aef: $5b
	pop bc                                           ; $4af0: $c1
	dec sp                                           ; $4af1: $3b
	ldh [rSB], a                                     ; $4af2: $e0 $01
	ld l, e                                          ; $4af4: $6b
	push hl                                          ; $4af5: $e5
	ld bc, $0000                                     ; $4af6: $01 $00 $00

; options join up here
	add hl, bc                                       ; $4af9: $09
	ld h, $c0                                        ; $4afa: $26 $c0
	add hl, bc                                       ; $4afc: $09
	db $e3                                           ; $4afd: $e3
	nop                                              ; $4afe: $00
	rrca                                             ; $4aff: $0f
	ret nz                                           ; $4b00: $c0

	rrca                                             ; $4b01: $0f
	db $e3                                           ; $4b02: $e3
	ld bc, $c024                                     ; $4b03: $01 $24 $c0
	ld bc, $01a0                                     ; $4b06: $01 $a0 $01
	ld [bc], a                                       ; $4b09: $02
	dec [hl]                                         ; $4b0a: $35
	ret nz                                           ; $4b0b: $c0

	inc c                                            ; $4b0c: $0c
	ldh [$3c], a                                     ; $4b0d: $e0 $3c
	pop bc                                           ; $4b0f: $c1
	ld e, c                                          ; $4b10: $59
	db $e3                                           ; $4b11: $e3
	ld bc, $c023                                     ; $4b12: $01 $23 $c0
	ld bc, $01a0                                     ; $4b15: $01 $a0 $01
	ld [bc], a                                       ; $4b18: $02
	dec a                                            ; $4b19: $3d
	ret nz                                           ; $4b1a: $c0

	inc c                                            ; $4b1b: $0c
	ldh [$3c], a                                     ; $4b1c: $e0 $3c
	db $e4                                           ; $4b1e: $e4
	nop                                              ; $4b1f: $00
	ld [bc], a                                       ; $4b20: $02



; above good
; --------------------------------------------------------------------


	add hl, bc                                       ; $4b21: $09
	inc [hl]                                         ; $4b22: $34
	ret nz                                           ; $4b23: $c0

	set 0, b                                         ; $4b24: $cb $c0
	rrca                                             ; $4b26: $0f
	db $e3                                           ; $4b27: $e3
	ld bc, $c025                                     ; $4b28: $01 $25 $c0
	ld bc, $01a0                                     ; $4b2b: $01 $a0 $01
	ld [bc], a                                       ; $4b2e: $02
	ld b, c                                          ; $4b2f: $41
	ret nz                                           ; $4b30: $c0

	ld bc, $01a0                                     ; $4b31: $01 $a0 $01
	ld [bc], a                                       ; $4b34: $02
	ld c, c                                          ; $4b35: $49
	ret nz                                           ; $4b36: $c0

	ld bc, $12a0                                     ; $4b37: $01 $a0 $12
	ld [bc], a                                       ; $4b3a: $02
	ld d, d                                          ; $4b3b: $52
	ret nz                                           ; $4b3c: $c0

	ld bc, $01a0                                     ; $4b3d: $01 $a0 $01
	ld [bc], a                                       ; $4b40: $02
	ld l, b                                          ; $4b41: $68
	ret nz                                           ; $4b42: $c0

	ld bc, $12a0                                     ; $4b43: $01 $a0 $12
	ld [bc], a                                       ; $4b46: $02
	ld l, h                                          ; $4b47: $6c
	ret nz                                           ; $4b48: $c0

	ld bc, $01a0                                     ; $4b49: $01 $a0 $01
	ld [bc], a                                       ; $4b4c: $02
	halt                                             ; $4b4d: $76
	ret nz                                           ; $4b4e: $c0

	ld bc, $12a0                                     ; $4b4f: $01 $a0 $12
	ld [bc], a                                       ; $4b52: $02
	ld a, h                                          ; $4b53: $7c
	db $e4                                           ; $4b54: $e4
	nop                                              ; $4b55: $00
	ld [bc], a                                       ; $4b56: $02


; above good
; --------------------------------------------------------------------

;???? - 277

	db $08, $2a ; - to 4b83
	db $02, $86 ; - this text is for opt 1

	add hl, bc                                       ; $4b5b: $09 - to 4b76
	add hl, de                                       ; $4b5c: $19

	ret nz                                           ; $4b5d: $c0

	sub d                                            ; $4b5e: $92
	db $d2
	
	
	db $d0
	db $8b, $00, $00 ; d0 skips 3 bytes after
	db $b0,$10 ; returns $10 as a task param
	
; ?????
	ld bc, $0080                                     ; $4b66: $01 $80 $00
	ld l, d                                          ; $4b69: $6a
	add b                                            ; $4b6a: $80
	nop                                              ; $4b6b: $00
	ld h, [hl]                                       ; $4b6c: $66

; display text, go to 4c35
	ret nz                                           ; $4b6d: $c0

	ld bc, $13a0                                     ; $4b6e: $01 $a0 $13
	ld [bc], a                                       ; $4b71: $02
	adc b                                            ; $4b72: $88

	db $e4                                           ; $4b73: $e4
	nop                                              ; $4b74: $00
	pop bc                                           ; $4b75: $c1


	ld [bc], a                                       ; $4b76: $02 - text for option 2
	adc a                                            ; $4b77: $8f
	add hl, bc                                       ; $4b78: $09
	add hl, bc                                       ; $4b79: $09 - 9 bytes here
	ret nz                                           ; $4b7a: $c0

	ld bc, $12a0                                     ; $4b7b: $01 $a0 $12
	ld [bc], a                                       ; $4b7e: $02
	sub c                                            ; $4b7f: $91
	db $e4                                           ; $4b80: $e4
	nop                                              ; $4b81: $00
	ld [bc], a                                       ; $4b82: $02


; --------------------------------------------------------------------

	ld [$0230], sp                                   ; $4b83: $08 $30 $02
	sub a                                            ; $4b86: $97

	add hl, bc                                       ; $4b87: $09
	add hl, de                                       ; $4b88: $19
	ret nz                                           ; $4b89: $c0

	sub d                                            ; $4b8a: $92
	jp nc, $8bd0                                     ; $4b8b: $d2 $d0 $8b

	nop                                              ; $4b8e: $00
	nop                                              ; $4b8f: $00
	or b                                             ; $4b90: $b0
	db $10                                           ; $4b91: $10
	ld bc, $0080                                     ; $4b92: $01 $80 $00
	ld l, d                                          ; $4b95: $6a
	add b                                            ; $4b96: $80
	nop                                              ; $4b97: $00
	ld h, [hl]                                       ; $4b98: $66

;
	ret nz                                           ; $4b99: $c0

	ld bc, $13a0                                     ; $4b9a: $01 $a0 $13
	ld [bc], a                                       ; $4b9d: $02
	sbc h                                            ; $4b9e: $9c

; to 4c35
	db $e4                                           ; $4b9f: $e4
	nop                                              ; $4ba0: $00
	sub l                                            ; $4ba1: $95

; to 4bb5
	ld [bc], a                                       ; $4ba2: $02
	xor h                                            ; $4ba3: $ac
	add hl, bc                                       ; $4ba4: $09
	rrca                                             ; $4ba5: $0f


;
	ret nz                                           ; $4ba6: $c0

	ld bc, $12a0                                     ; $4ba7: $01 $a0 $12
	ld [bc], a                                       ; $4baa: $02
	or b                                             ; $4bab: $b0

	ret nz                                           ; $4bac: $c0

	ld bc, $12a0                                     ; $4bad: $01 $a0 $12
	ld [bc], a                                       ; $4bb0: $02
	or e                                             ; $4bb1: $b3
	db $e4                                           ; $4bb2: $e4
	nop                                              ; $4bb3: $00
	ld [bc], a                                       ; $4bb4: $02


; --------------------------------------------------------------------


	add hl, bc                                       ; $4bb5: $09
	ld c, h                                          ; $4bb6: $4c
	ret nz                                           ; $4bb7: $c0

	set 0, b                                         ; $4bb8: $cb $c0
	ld bc, $12a0                                     ; $4bba: $01 $a0 $12
	ld [bc], a                                       ; $4bbd: $02
	cp l                                             ; $4bbe: $bd
	ret nz                                           ; $4bbf: $c0

	ld bc, $01a0                                     ; $4bc0: $01 $a0 $01
	ld [bc], a                                       ; $4bc3: $02
	jp $0fc0                                         ; $4bc4: $c3 $c0 $0f


	db $e3                                           ; $4bc7: $e3
	ld bc, $c026                                     ; $4bc8: $01 $26 $c0
	ld bc, $12a0                                     ; $4bcb: $01 $a0 $12
	ld [bc], a                                       ; $4bce: $02
	set 0, b                                         ; $4bcf: $cb $c0
	ld bc, $01a0                                     ; $4bd1: $01 $a0 $01
	ld [bc], a                                       ; $4bd4: $02
	db $d3                                           ; $4bd5: $d3
	ret nz                                           ; $4bd6: $c0

	ld bc, $12a0                                     ; $4bd7: $01 $a0 $12
	ld [bc], a                                       ; $4bda: $02
	reti                                             ; $4bdb: $d9


	ret nz                                           ; $4bdc: $c0

	ld bc, $01a0                                     ; $4bdd: $01 $a0 $01
	ld [bc], a                                       ; $4be0: $02
	jp hl                                            ; $4be1: $e9


	ret nz                                           ; $4be2: $c0

	ld bc, $12a0                                     ; $4be3: $01 $a0 $12
	ld [bc], a                                       ; $4be6: $02
	di                                               ; $4be7: $f3
	ret nz                                           ; $4be8: $c0

	ld bc, $12a0                                     ; $4be9: $01 $a0 $12
	ld [bc], a                                       ; $4bec: $02
	ei                                               ; $4bed: $fb
	ret nz                                           ; $4bee: $c0

	ld bc, $13a0                                     ; $4bef: $01 $a0 $13
	inc bc                                           ; $4bf2: $03
	db $10                                           ; $4bf3: $10
	ret nz                                           ; $4bf4: $c0

	ld bc, $01a0                                     ; $4bf5: $01 $a0 $01
	inc bc                                           ; $4bf8: $03
	inc h                                            ; $4bf9: $24
	ret nz                                           ; $4bfa: $c0

	ld bc, $13a0                                     ; $4bfb: $01 $a0 $13
	inc bc                                           ; $4bfe: $03
	dec l                                            ; $4bff: $2d
	db $e4                                           ; $4c00: $e4
	nop                                              ; $4c01: $00
	ld [bc], a                                       ; $4c02: $02



; --------------------------------------------------------------------


	ld [$0230], sp                                   ; $4c03: $08 $30 $02
	add [hl]                                         ; $4c06: $86
	add hl, bc                                       ; $4c07: $09
	add hl, de                                       ; $4c08: $19
	ret nz                                           ; $4c09: $c0

	sub d                                            ; $4c0a: $92
	pop de                                           ; $4c0b: $d1
	ret nc                                           ; $4c0c: $d0

	adc e                                            ; $4c0d: $8b
	nop                                              ; $4c0e: $00
	nop                                              ; $4c0f: $00
	or b                                             ; $4c10: $b0
	ld c, $01                                        ; $4c11: $0e $01
	add b                                            ; $4c13: $80
	nop                                              ; $4c14: $00
	ld l, d                                          ; $4c15: $6a
	add b                                            ; $4c16: $80
	nop                                              ; $4c17: $00
	ld h, [hl]                                       ; $4c18: $66
	ret nz                                           ; $4c19: $c0

	ld bc, $13a0                                     ; $4c1a: $01 $a0 $13
	ld [bc], a                                       ; $4c1d: $02
	adc b                                            ; $4c1e: $88

; to 4c35
	db $e4                                           ; $4c1f: $e4
	nop                                              ; $4c20: $00
	dec d                                            ; $4c21: $15

; to 4c35
	ld [bc], a                                       ; $4c22: $02
	adc a                                            ; $4c23: $8f
	add hl, bc                                       ; $4c24: $09
	rrca                                             ; $4c25: $0f
	ret nz                                           ; $4c26: $c0

	ld bc, $12a0                                     ; $4c27: $01 $a0 $12
	inc bc                                           ; $4c2a: $03
	ld [hl], $c0                                     ; $4c2b: $36 $c0
	ld bc, $12a0                                     ; $4c2d: $01 $a0 $12
	ld [bc], a                                       ; $4c30: $02
	or e                                             ; $4c31: $b3
	db $e4                                           ; $4c32: $e4
	nop                                              ; $4c33: $00
	ld [bc], a                                       ; $4c34: $02


; --------------------------------------------------------------------

; also from 4b73, 4ba0, 4c1f

	add hl, bc                                       ; $4c35: $09
	daa                                              ; $4c36: $27
	ret nz                                           ; $4c37: $c0

	set 0, b                                         ; $4c38: $cb $c0
	ld de, $00e3                                     ; $4c3a: $11 $e3 $00
	dec a                                            ; $4c3d: $3d
	ret nz                                           ; $4c3e: $c0

	add hl, bc                                       ; $4c3f: $09
	db $e3                                           ; $4c40: $e3
	nop                                              ; $4c41: $00
	ld l, d                                          ; $4c42: $6a
	pop hl                                           ; $4c43: $e1
	ld [bc], a                                       ; $4c44: $02
	ld [bc], a                                       ; $4c45: $02
	db $d3                                           ; $4c46: $d3
	ret nz                                           ; $4c47: $c0

	ld bc, $07a0                                     ; $4c48: $01 $a0 $07
	inc bc                                           ; $4c4b: $03
	scf                                              ; $4c4c: $37
	ret nz                                           ; $4c4d: $c0

	ld bc, $01a0                                     ; $4c4e: $01 $a0 $01
	inc bc                                           ; $4c51: $03   ??? very last text
	dec sp                                           ; $4c52: $3b
	ret nz                                           ; $4c53: $c0

	set 0, c                                         ; $4c54: $cb $c1
	ld e, e                                          ; $4c56: $5b
	ldh [rP1], a                                     ; $4c57: $e0 $00
	ld b, $e5                                        ; $4c59: $06 $e5
	ld bc, $0000                                     ; $4c5b: $01 $00 $00


; --------------------------------------------------------------------

; called from $4c57

	jr z, @-$01                                      ; $4c5e: $28 $fd

; $26 is size of this thing
	ld h, $c1                                        ; $4c60: $26 $c1
	ld [hl], c                                       ; $4c62: $71
	ret nc                                           ; $4c63: $d0

;
	ld bc, $04d3                                     ; $4c64: $01 $d3 $04
	nop                                              ; $4c67: $00
	add b                                            ; $4c68: $80
	nop                                              ; $4c69: $00
	ld [hl], d                                       ; $4c6a: $72

;
	ld bc, $04d4                                     ; $4c6b: $01 $d4 $04
	nop                                              ; $4c6e: $00
	add b                                            ; $4c6f: $80
	ld [bc], a                                       ; $4c70: $02
	daa                                              ; $4c71: $27

;
	ld bc, $04d5                                     ; $4c72: $01 $d5 $04
	nop                                              ; $4c75: $00
	add b                                            ; $4c76: $80
	ld [bc], a                                       ; $4c77: $02
	db $28
	
;
	db $01

	sub $04                                          ; $4c7a: $d6 $04
	nop                                              ; $4c7c: $00
	add b                                            ; $4c7d: $80
	ld [bc], a                                       ; $4c7e: $02
	add hl, hl                                       ; $4c7f: $29

;
	ld bc, $04d7                                     ; $4c80: $01 $d7 $04
	nop                                              ; $4c83: $00
	add b                                            ; $4c84: $80
	ld [bc], a                                       ; $4c85: $02
	ld a, [hl+]                                      ; $4c86: $2a


Data_7c_4c87::
	ld c, h                                          ; $4c87: $4c
	inc b                                            ; $4c88: $04

































MainScript05::
	add hl, bc                                       ; $4c89: $09
	ld b, c                                          ; $4c8a: $41
	ret nz                                           ; $4c8b: $c0

	set 0, b                                         ; $4c8c: $cb $c0
	rrca                                             ; $4c8e: $0f
	db $e3                                           ; $4c8f: $e3
	nop                                              ; $4c90: $00
	ld c, h                                          ; $4c91: $4c
	ret nz                                           ; $4c92: $c0

	ld bc, $01a0                                     ; $4c93: $01 $a0 $01
	nop                                              ; $4c96: $00
	ld bc, $0cc0                                     ; $4c97: $01 $c0 $0c
	ldh [$78], a                                     ; $4c9a: $e0 $78
	pop bc                                           ; $4c9c: $c1
	ld e, c                                          ; $4c9d: $59
	db $e3                                           ; $4c9e: $e3
	nop                                              ; $4c9f: $00
	inc a                                            ; $4ca0: $3c
	ret nz                                           ; $4ca1: $c0

	ld bc, $01a0                                     ; $4ca2: $01 $a0 $01
	nop                                              ; $4ca5: $00
	ld b, $fb                                        ; $4ca6: $06 $fb
	cp $0f                                           ; $4ca8: $fe $0f

jr_07c_4caa:
	add b                                            ; $4caa: $80
	nop                                              ; $4cab: $00
	ld l, l                                          ; $4cac: $6d
	ei                                               ; $4cad: $fb
	ret nz                                           ; $4cae: $c0

	ld d, $d1                                        ; $4caf: $16 $d1
	ldh [$5a], a                                     ; $4cb1: $e0 $5a
	ei                                               ; $4cb3: $fb
	ret nz                                           ; $4cb4: $c0

	dec d                                            ; $4cb5: $15
	pop de                                           ; $4cb6: $d1
	ldh [$5a], a                                     ; $4cb7: $e0 $5a
	ld b, $c0                                        ; $4cb9: $06 $c0
	ld bc, $01a0                                     ; $4cbb: $01 $a0 $01
	nop                                              ; $4cbe: $00
	dec de                                           ; $4cbf: $1b
	ld h, b                                          ; $4cc0: $60
	add b                                            ; $4cc1: $80
	ld [bc], a                                       ; $4cc2: $02
	dec hl                                           ; $4cc3: $2b
	inc bc                                           ; $4cc4: $03
	db $e4                                           ; $4cc5: $e4
	nop                                              ; $4cc6: $00
	ld b, $03                                        ; $4cc7: $06 $03
	db $e4                                           ; $4cc9: $e4
	nop                                              ; $4cca: $00
	sbc l                                            ; $4ccb: $9d
	add hl, bc                                       ; $4ccc: $09
	sbc c                                            ; $4ccd: $99
	ret nz                                           ; $4cce: $c0

	ld bc, $14a0                                     ; $4ccf: $01 $a0 $14
	nop                                              ; $4cd2: $00
	ld h, $c0                                        ; $4cd3: $26 $c0
	add hl, bc                                       ; $4cd5: $09
	db $e3                                           ; $4cd6: $e3
	nop                                              ; $4cd7: $00
	add b                                            ; $4cd8: $80
	pop hl                                           ; $4cd9: $e1
	ld [bc], a                                       ; $4cda: $02
	inc bc                                           ; $4cdb: $03
	dec b                                            ; $4cdc: $05
	ret nz                                           ; $4cdd: $c0

	ld bc, $01a0                                     ; $4cde: $01 $a0 $01
	nop                                              ; $4ce1: $00
	add hl, hl                                       ; $4ce2: $29
	ret nz                                           ; $4ce3: $c0

	ld bc, $15a0                                     ; $4ce4: $01 $a0 $15
	nop                                              ; $4ce7: $00
	jr nc, jr_07c_4caa                               ; $4ce8: $30 $c0

	ld bc, $01a0                                     ; $4cea: $01 $a0 $01
	nop                                              ; $4ced: $00
	add hl, sp                                       ; $4cee: $39
	pop hl                                           ; $4cef: $e1
	ld [bc], a                                       ; $4cf0: $02
	inc bc                                           ; $4cf1: $03
	rrca                                             ; $4cf2: $0f
	ret nz                                           ; $4cf3: $c0

	ld bc, $15a0                                     ; $4cf4: $01 $a0 $15
	nop                                              ; $4cf7: $00
	ld b, b                                          ; $4cf8: $40
	ret nz                                           ; $4cf9: $c0

	ld bc, $01a0                                     ; $4cfa: $01 $a0 $01
	nop                                              ; $4cfd: $00
	ld d, b                                          ; $4cfe: $50
	ret nz                                           ; $4cff: $c0

	ld bc, $15a0                                     ; $4d00: $01 $a0 $15
	nop                                              ; $4d03: $00
	ld d, h                                          ; $4d04: $54
	ret nz                                           ; $4d05: $c0

	ld bc, $0ba0                                     ; $4d06: $01 $a0 $0b
	nop                                              ; $4d09: $00
	ld e, l                                          ; $4d0a: $5d
	ret nz                                           ; $4d0b: $c0

	ld bc, $15a0                                     ; $4d0c: $01 $a0 $15
	nop                                              ; $4d0f: $00
	ld h, d                                          ; $4d10: $62
	pop bc                                           ; $4d11: $c1
	ld e, e                                          ; $4d12: $5b
	pop hl                                           ; $4d13: $e1
	ld [bc], a                                       ; $4d14: $02
	ld [bc], a                                       ; $4d15: $02
	or d                                             ; $4d16: $b2
	ret nz                                           ; $4d17: $c0

	ld bc, $0ba0                                     ; $4d18: $01 $a0 $0b
	nop                                              ; $4d1b: $00
	ld h, [hl]                                       ; $4d1c: $66
	ret nz                                           ; $4d1d: $c0

	ld bc, $15a0                                     ; $4d1e: $01 $a0 $15
	nop                                              ; $4d21: $00
	ld a, b                                          ; $4d22: $78
	ret nz                                           ; $4d23: $c0

	ld bc, $0ba0                                     ; $4d24: $01 $a0 $0b
	nop                                              ; $4d27: $00
	ld a, e                                          ; $4d28: $7b
	ret nz                                           ; $4d29: $c0

	ld bc, $01a0                                     ; $4d2a: $01 $a0 $01
	nop                                              ; $4d2d: $00
	adc d                                            ; $4d2e: $8a
	ret nz                                           ; $4d2f: $c0

	ld bc, $0ba0                                     ; $4d30: $01 $a0 $0b
	nop                                              ; $4d33: $00
	adc [hl]                                         ; $4d34: $8e
	pop bc                                           ; $4d35: $c1
	ld e, e                                          ; $4d36: $5b
	pop hl                                           ; $4d37: $e1
	ld [bc], a                                       ; $4d38: $02
	inc bc                                           ; $4d39: $03
	dec b                                            ; $4d3a: $05
	ret nz                                           ; $4d3b: $c0

	ld bc, $15a0                                     ; $4d3c: $01 $a0 $15
	nop                                              ; $4d3f: $00
	sub h                                            ; $4d40: $94
	pop bc                                           ; $4d41: $c1
	ld e, e                                          ; $4d42: $5b
	pop hl                                           ; $4d43: $e1
	ld [bc], a                                       ; $4d44: $02
	ld [bc], a                                       ; $4d45: $02
	or d                                             ; $4d46: $b2
	ret nz                                           ; $4d47: $c0

	ld bc, $0ba0                                     ; $4d48: $01 $a0 $0b
	nop                                              ; $4d4b: $00
	sbc d                                            ; $4d4c: $9a
	pop bc                                           ; $4d4d: $c1
	ld e, e                                          ; $4d4e: $5b
	ret nz                                           ; $4d4f: $c0

	inc c                                            ; $4d50: $0c
	ldh [$3c], a                                     ; $4d51: $e0 $3c
	ret nz                                           ; $4d53: $c0

	ld bc, $01a0                                     ; $4d54: $01 $a0 $01
	nop                                              ; $4d57: $00
	sbc a                                            ; $4d58: $9f
	ret nz                                           ; $4d59: $c0

	inc c                                            ; $4d5a: $0c
	ldh [$28], a                                     ; $4d5b: $e0 $28
	pop bc                                           ; $4d5d: $c1
	add $c1                                          ; $4d5e: $c6 $c1
	inc a                                            ; $4d60: $3c
	pop bc                                           ; $4d61: $c1
	ld l, l                                          ; $4d62: $6d
	rst SubAFromDE                                          ; $4d63: $df
	db $e4                                           ; $4d64: $e4
	nop                                              ; $4d65: $00
	ld [bc], a                                       ; $4d66: $02
	add hl, bc                                       ; $4d67: $09
	pop bc                                           ; $4d68: $c1
	jr nz, @-$3d                                     ; $4d69: $20 $c1

	ld e, c                                          ; $4d6b: $59
	db $e3                                           ; $4d6c: $e3
	nop                                              ; $4d6d: $00
	ld c, d                                          ; $4d6e: $4a
	add c                                            ; $4d6f: $81
	adc e                                            ; $4d70: $8b
	ld bc, $02b5                                     ; $4d71: $01 $b5 $02
	or b                                             ; $4d74: $b0
	ld bc, $f5c0                                     ; $4d75: $01 $c0 $f5
	ret nz                                           ; $4d78: $c0

	ld bc, $07a0                                     ; $4d79: $01 $a0 $07
	nop                                              ; $4d7c: $00
	xor d                                            ; $4d7d: $aa
	pop bc                                           ; $4d7e: $c1
	dec sp                                           ; $4d7f: $3b
	ret nz                                           ; $4d80: $c0

	add hl, bc                                       ; $4d81: $09
	db $e3                                           ; $4d82: $e3
	nop                                              ; $4d83: $00
	ld l, d                                          ; $4d84: $6a
	pop hl                                           ; $4d85: $e1
	ld [bc], a                                       ; $4d86: $02
	ld [bc], a                                       ; $4d87: $02
	call z, $01c0                                    ; $4d88: $cc $c0 $01
	and b                                            ; $4d8b: $a0
	ld bc, $ac00                                     ; $4d8c: $01 $00 $ac
	ret nz                                           ; $4d8f: $c0

	ld bc, $07a0                                     ; $4d90: $01 $a0 $07
	nop                                              ; $4d93: $00
	or c                                             ; $4d94: $b1
	ret nz                                           ; $4d95: $c0

	ld bc, $01a0                                     ; $4d96: $01 $a0 $01
	nop                                              ; $4d99: $00
	cp e                                             ; $4d9a: $bb
	ret nz                                           ; $4d9b: $c0

	ld bc, $07a0                                     ; $4d9c: $01 $a0 $07
	nop                                              ; $4d9f: $00
	ret z                                            ; $4da0: $c8

	ldh [rP1], a                                     ; $4da1: $e0 $00
	push af                                          ; $4da3: $f5
	ld h, b                                          ; $4da4: $60
	add b                                            ; $4da5: $80
	ld bc, $0f88                                     ; $4da6: $01 $88 $0f
	ret nz                                           ; $4da9: $c0

	ld bc, $07a0                                     ; $4daa: $01 $a0 $07
	nop                                              ; $4dad: $00
	pop de                                           ; $4dae: $d1
	ret nz                                           ; $4daf: $c0

	ld bc, $01a0                                     ; $4db0: $01 $a0 $01
	nop                                              ; $4db3: $00
	push de                                          ; $4db4: $d5
	db $e4                                           ; $4db5: $e4
	ld [bc], a                                       ; $4db6: $02
	inc sp                                           ; $4db7: $33
	or h                                             ; $4db8: $b4
	db $fd                                           ; $4db9: $fd
	sub e                                            ; $4dba: $93
	add e                                            ; $4dbb: $83
	ld bc, $0184                                     ; $4dbc: $01 $84 $01
	pop de                                           ; $4dbf: $d1
	dec d                                            ; $4dc0: $15
	ret nz                                           ; $4dc1: $c0

	ld bc, $03a0                                     ; $4dc2: $01 $a0 $03
	nop                                              ; $4dc5: $00
	jp c, $00e0                                      ; $4dc6: $da $e0 $00

	jp nz, $01c0                                     ; $4dc9: $c2 $c0 $01

	and b                                            ; $4dcc: $a0
	rlca                                             ; $4dcd: $07
	nop                                              ; $4dce: $00
	rst SubAFromDE                                          ; $4dcf: $df
	ret nz                                           ; $4dd0: $c0

	ld bc, $03a0                                     ; $4dd1: $01 $a0 $03
	nop                                              ; $4dd4: $00
	db $e3                                           ; $4dd5: $e3
	ld bc, $15d2                                     ; $4dd6: $01 $d2 $15
	ret nz                                           ; $4dd9: $c0

	ld bc, $04a0                                     ; $4dda: $01 $a0 $04
	nop                                              ; $4ddd: $00
	rst SubAFromBC                                          ; $4dde: $e7
	ldh [rP1], a                                     ; $4ddf: $e0 $00
	xor d                                            ; $4de1: $aa
	ret nz                                           ; $4de2: $c0

	ld bc, $07a0                                     ; $4de3: $01 $a0 $07
	nop                                              ; $4de6: $00
	jp hl                                            ; $4de7: $e9


	ret nz                                           ; $4de8: $c0

	ld bc, $04a0                                     ; $4de9: $01 $a0 $04
	nop                                              ; $4dec: $00
	db $ed                                           ; $4ded: $ed
	ld bc, $15d3                                     ; $4dee: $01 $d3 $15
	ret nz                                           ; $4df1: $c0

	ld bc, $05a0                                     ; $4df2: $01 $a0 $05
	nop                                              ; $4df5: $00
	pop af                                           ; $4df6: $f1
	ldh [rP1], a                                     ; $4df7: $e0 $00
	sub d                                            ; $4df9: $92
	ret nz                                           ; $4dfa: $c0

	ld bc, $07a0                                     ; $4dfb: $01 $a0 $07
	nop                                              ; $4dfe: $00
	push af                                          ; $4dff: $f5
	ret nz                                           ; $4e00: $c0

	ld bc, $05a0                                     ; $4e01: $01 $a0 $05
	nop                                              ; $4e04: $00
	db $e3                                           ; $4e05: $e3
	ld bc, $15d7                                     ; $4e06: $01 $d7 $15
	ret nz                                           ; $4e09: $c0

	ld bc, $08a0                                     ; $4e0a: $01 $a0 $08
	nop                                              ; $4e0d: $00
	ld sp, hl                                        ; $4e0e: $f9
	ldh [rP1], a                                     ; $4e0f: $e0 $00
	ld a, d                                          ; $4e11: $7a
	ret nz                                           ; $4e12: $c0

	ld bc, $07a0                                     ; $4e13: $01 $a0 $07
	nop                                              ; $4e16: $00
	db $fc                                           ; $4e17: $fc
	ret nz                                           ; $4e18: $c0

	ld bc, $08a0                                     ; $4e19: $01 $a0 $08
	nop                                              ; $4e1c: $00
	db $ed                                           ; $4e1d: $ed
	ld bc, $15d8                                     ; $4e1e: $01 $d8 $15
	ret nz                                           ; $4e21: $c0

	ld bc, $09a0                                     ; $4e22: $01 $a0 $09
	ld bc, $e000                                     ; $4e25: $01 $00 $e0
	nop                                              ; $4e28: $00
	ld h, d                                          ; $4e29: $62
	ret nz                                           ; $4e2a: $c0

	ld bc, $07a0                                     ; $4e2b: $01 $a0 $07
	ld bc, $c003                                     ; $4e2e: $01 $03 $c0
	ld bc, $09a0                                     ; $4e31: $01 $a0 $09
	ld bc, $0107                                     ; $4e34: $01 $07 $01
	db $dd                                           ; $4e37: $dd
	dec d                                            ; $4e38: $15
	ret nz                                           ; $4e39: $c0

	ld bc, $0aa0                                     ; $4e3a: $01 $a0 $0a
	ld bc, $e00c                                     ; $4e3d: $01 $0c $e0
	nop                                              ; $4e40: $00
	ld c, d                                          ; $4e41: $4a
	ret nz                                           ; $4e42: $c0

	ld bc, $07a0                                     ; $4e43: $01 $a0 $07
	ld bc, $c012                                     ; $4e46: $01 $12 $c0
	ld bc, $0aa0                                     ; $4e49: $01 $a0 $0a
	ld bc, $c116                                     ; $4e4c: $01 $16 $c1
	ld e, e                                          ; $4e4f: $5b
	pop hl                                           ; $4e50: $e1
	ld [bc], a                                       ; $4e51: $02
	ld [bc], a                                       ; $4e52: $02
	call z, $01c0                                    ; $4e53: $cc $c0 $01
	and b                                            ; $4e56: $a0
	rlca                                             ; $4e57: $07
	ld bc, $c019                                     ; $4e58: $01 $19 $c0
	ld bc, $01a0                                     ; $4e5b: $01 $a0 $01
	ld bc, $c124                                     ; $4e5e: $01 $24 $c1
	ld e, e                                          ; $4e61: $5b
	pop bc                                           ; $4e62: $c1
	inc a                                            ; $4e63: $3c
	ret nz                                           ; $4e64: $c0

	ld bc, $01a0                                     ; $4e65: $01 $a0 $01
	ld bc, $e429                                     ; $4e68: $01 $29 $e4
	ld bc, $00cc                                     ; $4e6b: $01 $cc $00
	dec de                                           ; $4e6e: $1b
	ret nz                                           ; $4e6f: $c0

	ld bc, $01a0                                     ; $4e70: $01 $a0 $01
	ld bc, $c035                                     ; $4e73: $01 $35 $c0
	inc c                                            ; $4e76: $0c
	ldh [$3c], a                                     ; $4e77: $e0 $3c
	ret nz                                           ; $4e79: $c0

	ld bc, $01a0                                     ; $4e7a: $01 $a0 $01
	ld bc, $c046                                     ; $4e7d: $01 $46 $c0
	ld bc, $01a0                                     ; $4e80: $01 $a0 $01
	ld bc, $c163                                     ; $4e83: $01 $63 $c1
	inc a                                            ; $4e86: $3c
	db $e4                                           ; $4e87: $e4
	ld bc, $0ccb                                     ; $4e88: $01 $cb $0c
	ret nz                                           ; $4e8b: $c0

	or e                                             ; $4e8c: $b3
	ret nz                                           ; $4e8d: $c0

	xor b                                            ; $4e8e: $a8
	add e                                            ; $4e8f: $83
	ld bc, $c084                                     ; $4e90: $01 $84 $c0
	xor e                                            ; $4e93: $ab
	jp nc, $a5c0                                     ; $4e94: $d2 $c0 $a5

	pop bc                                           ; $4e97: $c1
	ld b, e                                          ; $4e98: $43
	ld h, b                                          ; $4e99: $60
	add b                                            ; $4e9a: $80
	ld [bc], a                                       ; $4e9b: $02
	ld a, [de]                                       ; $4e9c: $1a
	sbc a                                            ; $4e9d: $9f
	ret nc                                           ; $4e9e: $d0

	add d                                            ; $4e9f: $82
	and b                                            ; $4ea0: $a0
	nop                                              ; $4ea1: $00
	ret nz                                           ; $4ea2: $c0

	and c                                            ; $4ea3: $a1
	add c                                            ; $4ea4: $81
	adc e                                            ; $4ea5: $8b
	ld [bc], a                                       ; $4ea6: $02
	dec de                                           ; $4ea7: $1b
	ld b, $b0                                        ; $4ea8: $06 $b0
	ld b, e                                          ; $4eaa: $43
	or b                                             ; $4eab: $b0
	ld b, h                                          ; $4eac: $44
	or b                                             ; $4ead: $b0
	ld b, l                                          ; $4eae: $45
	ld b, $c0                                        ; $4eaf: $06 $c0
	ld bc, $01a0                                     ; $4eb1: $01 $a0 $01
	ld bc, $066c                                     ; $4eb4: $01 $6c $06
	or b                                             ; $4eb7: $b0
	ld b, [hl]                                       ; $4eb8: $46
	or b                                             ; $4eb9: $b0
	ld b, a                                          ; $4eba: $47
	or b                                             ; $4ebb: $b0
	ld c, b                                          ; $4ebc: $48
	ld b, $c0                                        ; $4ebd: $06 $c0
	ld bc, $01a0                                     ; $4ebf: $01 $a0 $01
	ld bc, $c076                                     ; $4ec2: $01 $76 $c0
	ld bc, $07a0                                     ; $4ec5: $01 $a0 $07
	ld bc, $fd81                                     ; $4ec8: $01 $81 $fd
	ld [hl], c                                       ; $4ecb: $71
	add d                                            ; $4ecc: $82
	and b                                            ; $4ecd: $a0
	nop                                              ; $4ece: $00
	ld bc, $09d0                                     ; $4ecf: $01 $d0 $09
	ret nz                                           ; $4ed2: $c0

	ld bc, $01a0                                     ; $4ed3: $01 $a0 $01
	ld bc, $e08d                                     ; $4ed6: $01 $8d $e0
	ld bc, $0103                                     ; $4ed9: $01 $03 $01
	pop de                                           ; $4edc: $d1
	add hl, bc                                       ; $4edd: $09
	ret nz                                           ; $4ede: $c0

	ld bc, $01a0                                     ; $4edf: $01 $a0 $01
	ld bc, $e099                                     ; $4ee2: $01 $99 $e0
	nop                                              ; $4ee5: $00
	rst FarCall                                          ; $4ee6: $f7
	ld bc, $09d2                                     ; $4ee7: $01 $d2 $09
	ret nz                                           ; $4eea: $c0

	ld bc, $01a0                                     ; $4eeb: $01 $a0 $01
	ld bc, $e0ac                                     ; $4eee: $01 $ac $e0
	nop                                              ; $4ef1: $00
	db $eb                                           ; $4ef2: $eb
	ld bc, $09d3                                     ; $4ef3: $01 $d3 $09
	ret nz                                           ; $4ef6: $c0

	ld bc, $01a0                                     ; $4ef7: $01 $a0 $01
	ld bc, $e0c3                                     ; $4efa: $01 $c3 $e0
	nop                                              ; $4efd: $00
	rst SubAFromDE                                          ; $4efe: $df
	ld bc, $12d4                                     ; $4eff: $01 $d4 $12
	ret nz                                           ; $4f02: $c0

	ld bc, $01a0                                     ; $4f03: $01 $a0 $01
	ld bc, $c0d4                                     ; $4f06: $01 $d4 $c0
	ld bc, $07a0                                     ; $4f09: $01 $a0 $07
	ld bc, $c0e1                                     ; $4f0c: $01 $e1 $c0
	ld bc, $01a0                                     ; $4f0f: $01 $a0 $01
	ld bc, $01f1                                     ; $4f12: $01 $f1 $01
	push de                                          ; $4f15: $d5
	ld h, $81                                        ; $4f16: $26 $81
	adc e                                            ; $4f18: $8b
	ld [bc], a                                       ; $4f19: $02
	dec de                                           ; $4f1a: $1b
	ld b, $b0                                        ; $4f1b: $06 $b0
	ld b, e                                          ; $4f1d: $43
	or b                                             ; $4f1e: $b0
	ld b, h                                          ; $4f1f: $44
	or b                                             ; $4f20: $b0
	ld b, l                                          ; $4f21: $45
	ld b, $c0                                        ; $4f22: $06 $c0
	ld bc, $01a0                                     ; $4f24: $01 $a0 $01
	ld [bc], a                                       ; $4f27: $02
	ld bc, $0600                                     ; $4f28: $01 $00 $06
	ret nz                                           ; $4f2b: $c0

	ld bc, $01a0                                     ; $4f2c: $01 $a0 $01
	ld [bc], a                                       ; $4f2f: $02
	inc d                                            ; $4f30: $14
	ret nz                                           ; $4f31: $c0

	ld bc, $07a0                                     ; $4f32: $01 $a0 $07
	ld [bc], a                                       ; $4f35: $02
	add hl, hl                                       ; $4f36: $29
	ret nz                                           ; $4f37: $c0

	ld bc, $01a0                                     ; $4f38: $01 $a0 $01
	ld [bc], a                                       ; $4f3b: $02
	ld [hl-], a                                      ; $4f3c: $32
	sbc [hl]                                         ; $4f3d: $9e
	db $fd                                           ; $4f3e: $fd
	sbc c                                            ; $4f3f: $99
	adc e                                            ; $4f40: $8b
	ld [bc], a                                       ; $4f41: $02
	dec de                                           ; $4f42: $1b
	ld [bc], a                                       ; $4f43: $02
	or b                                             ; $4f44: $b0
	ld c, c                                          ; $4f45: $49
	ld b, $c0                                        ; $4f46: $06 $c0
	ld bc, $01a0                                     ; $4f48: $01 $a0 $01
	ld [bc], a                                       ; $4f4b: $02
	dec sp                                           ; $4f4c: $3b
	ld [bc], a                                       ; $4f4d: $02
	or b                                             ; $4f4e: $b0
	ld c, d                                          ; $4f4f: $4a
	ld b, $c0                                        ; $4f50: $06 $c0
	ld bc, $01a0                                     ; $4f52: $01 $a0 $01
	ld [bc], a                                       ; $4f55: $02
	ld c, d                                          ; $4f56: $4a
	ld [bc], a                                       ; $4f57: $02
	or b                                             ; $4f58: $b0
	ld c, e                                          ; $4f59: $4b
	ld b, $c0                                        ; $4f5a: $06 $c0
	ld bc, $01a0                                     ; $4f5c: $01 $a0 $01
	ld [bc], a                                       ; $4f5f: $02
	ld e, [hl]                                       ; $4f60: $5e
	ld [bc], a                                       ; $4f61: $02
	or b                                             ; $4f62: $b0
	ld c, h                                          ; $4f63: $4c
	ld b, $c0                                        ; $4f64: $06 $c0
	ld bc, $01a0                                     ; $4f66: $01 $a0 $01
	ld [bc], a                                       ; $4f69: $02
	ld [hl], c                                       ; $4f6a: $71
	ld [bc], a                                       ; $4f6b: $02
	or b                                             ; $4f6c: $b0
	ld c, l                                          ; $4f6d: $4d
	ld b, $c0                                        ; $4f6e: $06 $c0
	ld bc, $01a0                                     ; $4f70: $01 $a0 $01
	ld [bc], a                                       ; $4f73: $02
	add d                                            ; $4f74: $82
	ld [bc], a                                       ; $4f75: $02
	or b                                             ; $4f76: $b0
	ld c, [hl]                                       ; $4f77: $4e
	ld b, $c0                                        ; $4f78: $06 $c0
	ld bc, $01a0                                     ; $4f7a: $01 $a0 $01
	ld [bc], a                                       ; $4f7d: $02
	sub l                                            ; $4f7e: $95
	ld [bc], a                                       ; $4f7f: $02
	or b                                             ; $4f80: $b0
	ld c, a                                          ; $4f81: $4f
	ld b, $c0                                        ; $4f82: $06 $c0
	ld bc, $01a0                                     ; $4f84: $01 $a0 $01
	ld [bc], a                                       ; $4f87: $02
	xor c                                            ; $4f88: $a9
	ld [bc], a                                       ; $4f89: $02
	or b                                             ; $4f8a: $b0
	ld d, b                                          ; $4f8b: $50
	ld b, $c0                                        ; $4f8c: $06 $c0
	ld bc, $01a0                                     ; $4f8e: $01 $a0 $01
	ld [bc], a                                       ; $4f91: $02
	cp l                                             ; $4f92: $bd
	ld [bc], a                                       ; $4f93: $02
	or b                                             ; $4f94: $b0
	ld d, c                                          ; $4f95: $51
	ld b, $c0                                        ; $4f96: $06 $c0
	ld bc, $01a0                                     ; $4f98: $01 $a0 $01
	ld [bc], a                                       ; $4f9b: $02
	ret                                              ; $4f9c: $c9


	ld [bc], a                                       ; $4f9d: $02
	or b                                             ; $4f9e: $b0
	ld b, e                                          ; $4f9f: $43
	ld b, $c0                                        ; $4fa0: $06 $c0
	ld bc, $01a0                                     ; $4fa2: $01 $a0 $01
	ld [bc], a                                       ; $4fa5: $02
	db $db                                           ; $4fa6: $db
	ld [bc], a                                       ; $4fa7: $02
	or b                                             ; $4fa8: $b0
	ld b, h                                          ; $4fa9: $44
	ld b, $c0                                        ; $4faa: $06 $c0
	ld bc, $01a0                                     ; $4fac: $01 $a0 $01
	ld [bc], a                                       ; $4faf: $02
	jp hl                                            ; $4fb0: $e9


	ld [bc], a                                       ; $4fb1: $02
	or b                                             ; $4fb2: $b0
	ld b, l                                          ; $4fb3: $45
	ld b, $c0                                        ; $4fb4: $06 $c0
	ld bc, $01a0                                     ; $4fb6: $01 $a0 $01
	ld [bc], a                                       ; $4fb9: $02
	ei                                               ; $4fba: $fb
	ld [bc], a                                       ; $4fbb: $02
	or b                                             ; $4fbc: $b0
	ld b, [hl]                                       ; $4fbd: $46
	ld b, $c0                                        ; $4fbe: $06 $c0
	ld bc, $01a0                                     ; $4fc0: $01 $a0 $01
	inc bc                                           ; $4fc3: $03
	inc c                                            ; $4fc4: $0c
	ld [bc], a                                       ; $4fc5: $02
	or b                                             ; $4fc6: $b0
	ld b, a                                          ; $4fc7: $47
	ld b, $c0                                        ; $4fc8: $06 $c0
	ld bc, $01a0                                     ; $4fca: $01 $a0 $01
	inc bc                                           ; $4fcd: $03
	inc e                                            ; $4fce: $1c
	ld [bc], a                                       ; $4fcf: $02
	or b                                             ; $4fd0: $b0
	ld c, b                                          ; $4fd1: $48
	ld b, $c0                                        ; $4fd2: $06 $c0
	ld bc, $01a0                                     ; $4fd4: $01 $a0 $01
	inc bc                                           ; $4fd7: $03
	ld sp, $00e0                                     ; $4fd8: $31 $e0 $00
	ld [bc], a                                       ; $4fdb: $02
	inc c                                            ; $4fdc: $0c
	ret nz                                           ; $4fdd: $c0

	ld bc, $07a0                                     ; $4fde: $01 $a0 $07
	inc bc                                           ; $4fe1: $03
	ld b, l                                          ; $4fe2: $45
	ret nz                                           ; $4fe3: $c0

	ld bc, $01a0                                     ; $4fe4: $01 $a0 $01
	inc bc                                           ; $4fe7: $03
	ld d, h                                          ; $4fe8: $54
	add hl, bc                                       ; $4fe9: $09
	ld c, h                                          ; $4fea: $4c
	pop bc                                           ; $4feb: $c1
	ld e, e                                          ; $4fec: $5b
	pop bc                                           ; $4fed: $c1
	ld e, c                                          ; $4fee: $59
	db $e3                                           ; $4fef: $e3
	nop                                              ; $4ff0: $00
	ld c, l                                          ; $4ff1: $4d
	pop hl                                           ; $4ff2: $e1
	ld [bc], a                                       ; $4ff3: $02
	ld [bc], a                                       ; $4ff4: $02
	call z, $01c0                                    ; $4ff5: $cc $c0 $01
	and b                                            ; $4ff8: $a0
	ld bc, $5a03                                     ; $4ff9: $01 $03 $5a
	ret nz                                           ; $4ffc: $c0

	ld bc, $07a0                                     ; $4ffd: $01 $a0 $07
	inc bc                                           ; $5000: $03
	ld l, e                                          ; $5001: $6b
	ret nz                                           ; $5002: $c0

	ld bc, $01a0                                     ; $5003: $01 $a0 $01
	inc bc                                           ; $5006: $03
	ld [hl], l                                       ; $5007: $75
	ret nz                                           ; $5008: $c0

	ld bc, $07a0                                     ; $5009: $01 $a0 $07
	inc bc                                           ; $500c: $03
	ld a, [hl]                                       ; $500d: $7e
	ret nz                                           ; $500e: $c0

	ld bc, $01a0                                     ; $500f: $01 $a0 $01
	inc bc                                           ; $5012: $03
	sub l                                            ; $5013: $95
	ret nz                                           ; $5014: $c0

	ld bc, $07a0                                     ; $5015: $01 $a0 $07
	inc bc                                           ; $5018: $03
	and d                                            ; $5019: $a2
	ret nz                                           ; $501a: $c0

	ld bc, $01a0                                     ; $501b: $01 $a0 $01
	inc bc                                           ; $501e: $03
	xor l                                            ; $501f: $ad
	ret nz                                           ; $5020: $c0

	ld bc, $07a0                                     ; $5021: $01 $a0 $07
	inc bc                                           ; $5024: $03
	or l                                             ; $5025: $b5
	pop bc                                           ; $5026: $c1
	ld e, e                                          ; $5027: $5b
	pop bc                                           ; $5028: $c1
	inc a                                            ; $5029: $3c
	ret nz                                           ; $502a: $c0

	inc c                                            ; $502b: $0c
	ldh [$3c], a                                     ; $502c: $e0 $3c
	ret nz                                           ; $502e: $c0

	ld bc, $01a0                                     ; $502f: $01 $a0 $01
	inc bc                                           ; $5032: $03
	rst JumpTable                                          ; $5033: $c7
	db $e4                                           ; $5034: $e4
	nop                                              ; $5035: $00
	ld [bc], a                                       ; $5036: $02
	add hl, bc                                       ; $5037: $09
	ld a, [de]                                       ; $5038: $1a
	pop bc                                           ; $5039: $c1
	ld e, c                                          ; $503a: $59
	db $e3                                           ; $503b: $e3
	nop                                              ; $503c: $00
	ret                                              ; $503d: $c9


	ret nz                                           ; $503e: $c0

	nop                                              ; $503f: $00
	inc bc                                           ; $5040: $03
	call z, $00c0                                    ; $5041: $cc $c0 $00
	inc bc                                           ; $5044: $03
	ld [$00c0], a                                    ; $5045: $ea $c0 $00
	inc b                                            ; $5048: $04
	inc bc                                           ; $5049: $03
	pop bc                                           ; $504a: $c1
	rst JumpTable                                          ; $504b: $c7
	pop bc                                           ; $504c: $c1
	cp b                                             ; $504d: $b8
	pop bc                                           ; $504e: $c1
	sub e                                            ; $504f: $93
	pop bc                                           ; $5050: $c1
	dec d                                            ; $5051: $15
	ret nc                                           ; $5052: $d0

	add hl, bc                                       ; $5053: $09
	and e                                            ; $5054: $a3
	db $fd                                           ; $5055: $fd
	sub a                                            ; $5056: $97
	adc e                                            ; $5057: $8b
	ld bc, $02b5                                     ; $5058: $01 $b5 $02
	or b                                             ; $505b: $b0
	inc bc                                           ; $505c: $03
	add hl, bc                                       ; $505d: $09
	pop bc                                           ; $505e: $c1
	cp d                                             ; $505f: $ba
	ret nc                                           ; $5060: $d0

	pop bc                                           ; $5061: $c1
	or a                                             ; $5062: $b7
	pop hl                                           ; $5063: $e1
	ld [hl], c                                       ; $5064: $71
	nop                                              ; $5065: $00
	nop                                              ; $5066: $00
	ld [bc], a                                       ; $5067: $02
	or b                                             ; $5068: $b0
	inc b                                            ; $5069: $04
	dec de                                           ; $506a: $1b
	ld h, b                                          ; $506b: $60
	add b                                            ; $506c: $80
	ld [bc], a                                       ; $506d: $02
	inc l                                            ; $506e: $2c
	ld [$8040], sp                                   ; $506f: $08 $40 $80
	ld bc, $c146                                     ; $5072: $01 $46 $c1
	cp d                                             ; $5075: $ba
	ldh [rAUD4ENV], a                                ; $5076: $e0 $21
	rlca                                             ; $5078: $07
	nop                                              ; $5079: $00
	add b                                            ; $507a: $80
	ld bc, $c146                                     ; $507b: $01 $46 $c1
	cp d                                             ; $507e: $ba
	pop de                                           ; $507f: $d1
	pop bc                                           ; $5080: $c1
	or a                                             ; $5081: $b7
	pop hl                                           ; $5082: $e1
	ld [hl], h                                       ; $5083: $74
	nop                                              ; $5084: $00
	nop                                              ; $5085: $00
	ld [bc], a                                       ; $5086: $02
	or b                                             ; $5087: $b0
	dec b                                            ; $5088: $05
	add hl, bc                                       ; $5089: $09
	pop bc                                           ; $508a: $c1
	cp d                                             ; $508b: $ba
	jp nc, $b7c1                                     ; $508c: $d2 $c1 $b7

	pop hl                                           ; $508f: $e1
	ld [hl], l                                       ; $5090: $75
	nop                                              ; $5091: $00
	nop                                              ; $5092: $00
	ld [bc], a                                       ; $5093: $02
	or b                                             ; $5094: $b0
	ld b, $09                                        ; $5095: $06 $09
	pop bc                                           ; $5097: $c1
	cp d                                             ; $5098: $ba
	db $d3                                           ; $5099: $d3
	pop bc                                           ; $509a: $c1
	or a                                             ; $509b: $b7
	pop hl                                           ; $509c: $e1
	halt                                             ; $509d: $76
	nop                                              ; $509e: $00
	nop                                              ; $509f: $00
	ld [bc], a                                       ; $50a0: $02
	or b                                             ; $50a1: $b0
	rlca                                             ; $50a2: $07
	add hl, bc                                       ; $50a3: $09
	pop bc                                           ; $50a4: $c1
	cp d                                             ; $50a5: $ba
	rst SubAFromHL                                          ; $50a6: $d7
	pop bc                                           ; $50a7: $c1
	or a                                             ; $50a8: $b7
	pop hl                                           ; $50a9: $e1
	ld [hl], a                                       ; $50aa: $77
	nop                                              ; $50ab: $00
	nop                                              ; $50ac: $00
	ld [bc], a                                       ; $50ad: $02
	or b                                             ; $50ae: $b0
	ld [wPtrToDataCopyStruct+1], sp                                   ; $50af: $08 $09 $c1
	cp d                                             ; $50b2: $ba
	ret c                                            ; $50b3: $d8

	pop bc                                           ; $50b4: $c1
	or a                                             ; $50b5: $b7
	pop hl                                           ; $50b6: $e1
	ld a, b                                          ; $50b7: $78
	nop                                              ; $50b8: $00
	nop                                              ; $50b9: $00
	ld [bc], a                                       ; $50ba: $02
	or b                                             ; $50bb: $b0
	add hl, bc                                       ; $50bc: $09
	add hl, bc                                       ; $50bd: $09
	pop bc                                           ; $50be: $c1
	cp d                                             ; $50bf: $ba
	jp c, $b7c1                                      ; $50c0: $da $c1 $b7

	pop hl                                           ; $50c3: $e1
	ld a, c                                          ; $50c4: $79
	nop                                              ; $50c5: $00
	nop                                              ; $50c6: $00
	ld [bc], a                                       ; $50c7: $02
	or b                                             ; $50c8: $b0
	ld a, [bc]                                       ; $50c9: $0a
	add hl, bc                                       ; $50ca: $09
	pop bc                                           ; $50cb: $c1
	cp d                                             ; $50cc: $ba
	db $dd                                           ; $50cd: $dd
	pop bc                                           ; $50ce: $c1
	or a                                             ; $50cf: $b7
	pop hl                                           ; $50d0: $e1
	ld a, d                                          ; $50d1: $7a
	nop                                              ; $50d2: $00
	nop                                              ; $50d3: $00
	ld [bc], a                                       ; $50d4: $02
	or b                                             ; $50d5: $b0
	ld a, [hl+]                                      ; $50d6: $2a
	add hl, bc                                       ; $50d7: $09
	pop bc                                           ; $50d8: $c1
	cp d                                             ; $50d9: $ba
	sbc $c1                                          ; $50da: $de $c1
	or a                                             ; $50dc: $b7
	pop hl                                           ; $50dd: $e1
	ld [hl], d                                       ; $50de: $72
	nop                                              ; $50df: $00
	nop                                              ; $50e0: $00
	ld [bc], a                                       ; $50e1: $02
	or b                                             ; $50e2: $b0
	ld a, [de]                                       ; $50e3: $1a
	add hl, bc                                       ; $50e4: $09
	pop bc                                           ; $50e5: $c1
	cp d                                             ; $50e6: $ba
	rst SubAFromDE                                          ; $50e7: $df
	pop bc                                           ; $50e8: $c1
	or a                                             ; $50e9: $b7
	pop hl                                           ; $50ea: $e1
	ld [hl], e                                       ; $50eb: $73
	nop                                              ; $50ec: $00
	nop                                              ; $50ed: $00
	pop bc                                           ; $50ee: $c1
	inc a                                            ; $50ef: $3c
	ret nz                                           ; $50f0: $c0

	inc c                                            ; $50f1: $0c
	ldh [$78], a                                     ; $50f2: $e0 $78
	push hl                                          ; $50f4: $e5
	inc bc                                           ; $50f5: $03
	nop                                              ; $50f6: $00
	nop                                              ; $50f7: $00
	ld c, h                                          ; $50f8: $4c
	inc b                                            ; $50f9: $04
	add hl, bc                                       ; $50fa: $09
	ld d, h                                          ; $50fb: $54
	pop bc                                           ; $50fc: $c1
	ld d, e                                          ; $50fd: $53
	ret nz                                           ; $50fe: $c0

	inc d                                            ; $50ff: $14
	db $e3                                           ; $5100: $e3
	nop                                              ; $5101: $00
	inc a                                            ; $5102: $3c
	ret nz                                           ; $5103: $c0

	ld bc, $01a0                                     ; $5104: $01 $a0 $01
	nop                                              ; $5107: $00
	ld bc, $0bc0                                     ; $5108: $01 $c0 $0b
	db $e3                                           ; $510b: $e3
	nop                                              ; $510c: $00
	db $10                                           ; $510d: $10
	pop bc                                           ; $510e: $c1
	ld d, l                                          ; $510f: $55
	pop de                                           ; $5110: $d1
	ret nz                                           ; $5111: $c0

	nop                                              ; $5112: $00
	nop                                              ; $5113: $00
	ld a, [bc]                                       ; $5114: $0a
	ret nz                                           ; $5115: $c0

	add hl, bc                                       ; $5116: $09
	db $e3                                           ; $5117: $e3
	nop                                              ; $5118: $00
	ld bc, $a8c0                                     ; $5119: $01 $c0 $a8
	ret c                                            ; $511c: $d8

	ret nz                                           ; $511d: $c0

	and l                                            ; $511e: $a5
	ret nz                                           ; $511f: $c0

	ld bc, $16a0                                     ; $5120: $01 $a0 $16
	nop                                              ; $5123: $00
	ld c, $c0                                        ; $5124: $0e $c0
	ld bc, $01a0                                     ; $5126: $01 $a0 $01
	nop                                              ; $5129: $00
	ld de, $02e1                                     ; $512a: $11 $e1 $02
	inc bc                                           ; $512d: $03
	dec de                                           ; $512e: $1b
	pop bc                                           ; $512f: $c1
	or d                                             ; $5130: $b2
	db $e3                                           ; $5131: $e3
	nop                                              ; $5132: $00
	ld e, h                                          ; $5133: $5c
	ret nz                                           ; $5134: $c0

	ld bc, $16a0                                     ; $5135: $01 $a0 $16
	nop                                              ; $5138: $00
	dec d                                            ; $5139: $15
	pop bc                                           ; $513a: $c1
	ld e, e                                          ; $513b: $5b
	ret nz                                           ; $513c: $c0

	ld bc, $01a0                                     ; $513d: $01 $a0 $01
	nop                                              ; $5140: $00
	dec e                                            ; $5141: $1d
	nop                                              ; $5142: $00
	add b                                            ; $5143: $80
	ld bc, $20a9                                     ; $5144: $01 $a9 $20
	add c                                            ; $5147: $81
	ld bc, $c1aa                                     ; $5148: $01 $aa $c1
	dec b                                            ; $514b: $05
	push hl                                          ; $514c: $e5
	ld bc, $b119                                     ; $514d: $01 $19 $b1
	add hl, bc                                       ; $5150: $09
	ld d, h                                          ; $5151: $54
	pop bc                                           ; $5152: $c1
	ld d, e                                          ; $5153: $53
	ret nz                                           ; $5154: $c0

	inc d                                            ; $5155: $14
	db $e3                                           ; $5156: $e3
	nop                                              ; $5157: $00
	inc a                                            ; $5158: $3c
	ret nz                                           ; $5159: $c0

	ld bc, $01a0                                     ; $515a: $01 $a0 $01
	nop                                              ; $515d: $00
	inc hl                                           ; $515e: $23
	ret nz                                           ; $515f: $c0

	dec bc                                           ; $5160: $0b
	db $e3                                           ; $5161: $e3
	nop                                              ; $5162: $00
	db $10                                           ; $5163: $10
	pop bc                                           ; $5164: $c1
	ld d, l                                          ; $5165: $55
	pop de                                           ; $5166: $d1
	ret nz                                           ; $5167: $c0

	nop                                              ; $5168: $00
	nop                                              ; $5169: $00
	ld a, [bc]                                       ; $516a: $0a
	ret nz                                           ; $516b: $c0

	add hl, bc                                       ; $516c: $09
	db $e3                                           ; $516d: $e3
	nop                                              ; $516e: $00
	ld bc, $a8c0                                     ; $516f: $01 $c0 $a8
	ret c                                            ; $5172: $d8

	ret nz                                           ; $5173: $c0

	and l                                            ; $5174: $a5
	ret nz                                           ; $5175: $c0

	ld bc, $16a0                                     ; $5176: $01 $a0 $16
	nop                                              ; $5179: $00
	dec l                                            ; $517a: $2d
	ret nz                                           ; $517b: $c0

	ld bc, $01a0                                     ; $517c: $01 $a0 $01
	nop                                              ; $517f: $00
	ld sp, $02e1                                     ; $5180: $31 $e1 $02
	inc bc                                           ; $5183: $03
	dec de                                           ; $5184: $1b
	pop bc                                           ; $5185: $c1
	or d                                             ; $5186: $b2
	db $e3                                           ; $5187: $e3
	nop                                              ; $5188: $00
	ld e, l                                          ; $5189: $5d
	ret nz                                           ; $518a: $c0

	ld bc, $16a0                                     ; $518b: $01 $a0 $16
	nop                                              ; $518e: $00
	ld [hl], $c1                                     ; $518f: $36 $c1
	ld e, e                                          ; $5191: $5b
	ret nz                                           ; $5192: $c0

	ld bc, $01a0                                     ; $5193: $01 $a0 $01
	nop                                              ; $5196: $00
	ld b, b                                          ; $5197: $40
	nop                                              ; $5198: $00
	add b                                            ; $5199: $80
	ld bc, $20a9                                     ; $519a: $01 $a9 $20
	add c                                            ; $519d: $81
	ld bc, $c1aa                                     ; $519e: $01 $aa $c1
	dec b                                            ; $51a1: $05
	push hl                                          ; $51a2: $e5
	ld bc, $b119                                     ; $51a3: $01 $19 $b1
	add hl, bc                                       ; $51a6: $09
	ld c, a                                          ; $51a7: $4f
	pop bc                                           ; $51a8: $c1
	ld d, e                                          ; $51a9: $53
	ret nz                                           ; $51aa: $c0

	inc d                                            ; $51ab: $14
	db $e3                                           ; $51ac: $e3
	nop                                              ; $51ad: $00
	inc a                                            ; $51ae: $3c
	ret nz                                           ; $51af: $c0

	ld bc, $01a0                                     ; $51b0: $01 $a0 $01
	nop                                              ; $51b3: $00
	ld c, c                                          ; $51b4: $49
	ret nz                                           ; $51b5: $c0

	dec bc                                           ; $51b6: $0b
	db $e3                                           ; $51b7: $e3
	nop                                              ; $51b8: $00
	db $10                                           ; $51b9: $10
	pop bc                                           ; $51ba: $c1
	ld d, l                                          ; $51bb: $55
	pop de                                           ; $51bc: $d1
	ret nz                                           ; $51bd: $c0

	nop                                              ; $51be: $00
	nop                                              ; $51bf: $00
	ld a, [bc]                                       ; $51c0: $0a
	ret nz                                           ; $51c1: $c0

	add hl, bc                                       ; $51c2: $09
	db $e3                                           ; $51c3: $e3
	nop                                              ; $51c4: $00
	ld bc, $a8c0                                     ; $51c5: $01 $c0 $a8
	ret c                                            ; $51c8: $d8

	ret nz                                           ; $51c9: $c0

	and l                                            ; $51ca: $a5
	ret nz                                           ; $51cb: $c0

	ld bc, $16a0                                     ; $51cc: $01 $a0 $16
	nop                                              ; $51cf: $00
	dec l                                            ; $51d0: $2d
	ret nz                                           ; $51d1: $c0

jr_07c_51d2:
	ld bc, $01a0                                     ; $51d2: $01 $a0 $01
	nop                                              ; $51d5: $00
	ld d, d                                          ; $51d6: $52
	pop hl                                           ; $51d7: $e1
	ld [bc], a                                       ; $51d8: $02
	inc bc                                           ; $51d9: $03
	dec de                                           ; $51da: $1b
	ret nz                                           ; $51db: $c0

	ld bc, $16a0                                     ; $51dc: $01 $a0 $16
	nop                                              ; $51df: $00
	ld e, b                                          ; $51e0: $58
	pop bc                                           ; $51e1: $c1
	ld e, e                                          ; $51e2: $5b
	ret nz                                           ; $51e3: $c0

	ld bc, $01a0                                     ; $51e4: $01 $a0 $01
	nop                                              ; $51e7: $00
	ld h, h                                          ; $51e8: $64
	nop                                              ; $51e9: $00
	add b                                            ; $51ea: $80
	ld bc, $20a8                                     ; $51eb: $01 $a8 $20
	add c                                            ; $51ee: $81
	ld bc, $c1aa                                     ; $51ef: $01 $aa $c1
	dec b                                            ; $51f2: $05
	push hl                                          ; $51f3: $e5
	ld bc, $b119                                     ; $51f4: $01 $19 $b1
	add hl, bc                                       ; $51f7: $09
	ret nz                                           ; $51f8: $c0

	rst FarCall                                          ; $51f9: $f7
	ret nz                                           ; $51fa: $c0

	ld e, $e0                                        ; $51fb: $1e $e0
	ld b, [hl]                                       ; $51fd: $46
	ret c                                            ; $51fe: $d8

	ret nz                                           ; $51ff: $c0

	jr nz, jr_07c_51d2                               ; $5200: $20 $d0

	ret c                                            ; $5202: $d8

	pop bc                                           ; $5203: $c1
	ld d, e                                          ; $5204: $53
	ret nz                                           ; $5205: $c0

	inc d                                            ; $5206: $14
	db $e3                                           ; $5207: $e3
	nop                                              ; $5208: $00
	inc a                                            ; $5209: $3c
	ret nz                                           ; $520a: $c0

	ld bc, $01a0                                     ; $520b: $01 $a0 $01
	nop                                              ; $520e: $00
	ld [hl], b                                       ; $520f: $70
	ret nz                                           ; $5210: $c0

	ld bc, $07a0                                     ; $5211: $01 $a0 $07
	nop                                              ; $5214: $00
	ld a, d                                          ; $5215: $7a
	ret nz                                           ; $5216: $c0

	add hl, bc                                       ; $5217: $09
	db $e3                                           ; $5218: $e3
	nop                                              ; $5219: $00
	ld l, d                                          ; $521a: $6a
	pop hl                                           ; $521b: $e1
	ld [bc], a                                       ; $521c: $02
	ld [bc], a                                       ; $521d: $02
	call z, $01c0                                    ; $521e: $cc $c0 $01
	and b                                            ; $5221: $a0
	ld bc, $7e00                                     ; $5222: $01 $00 $7e
	ret nz                                           ; $5225: $c0

	ld bc, $07a0                                     ; $5226: $01 $a0 $07
	nop                                              ; $5229: $00
	add [hl]                                         ; $522a: $86
	ret nz                                           ; $522b: $c0

	ld bc, $01a0                                     ; $522c: $01 $a0 $01
	nop                                              ; $522f: $00
	sbc d                                            ; $5230: $9a
	ret nz                                           ; $5231: $c0

	ld bc, $07a0                                     ; $5232: $01 $a0 $07
	nop                                              ; $5235: $00
	xor e                                            ; $5236: $ab
	ret nz                                           ; $5237: $c0

	ld bc, $01a0                                     ; $5238: $01 $a0 $01
	nop                                              ; $523b: $00
	or l                                             ; $523c: $b5
	ret nz                                           ; $523d: $c0

	ld bc, $07a0                                     ; $523e: $01 $a0 $07
	nop                                              ; $5241: $00
	cp e                                             ; $5242: $bb
	pop bc                                           ; $5243: $c1
	ld e, e                                          ; $5244: $5b
	ret nz                                           ; $5245: $c0

	inc c                                            ; $5246: $0c
	ldh [rAUD3HIGH], a                               ; $5247: $e0 $1e
	ret nz                                           ; $5249: $c0

	xor b                                            ; $524a: $a8
	ret c                                            ; $524b: $d8

	ret nz                                           ; $524c: $c0

	and l                                            ; $524d: $a5
	pop bc                                           ; $524e: $c1
	or d                                             ; $524f: $b2
	db $e3                                           ; $5250: $e3
	nop                                              ; $5251: $00
	ld e, [hl]                                       ; $5252: $5e
	ret nz                                           ; $5253: $c0

	add hl, bc                                       ; $5254: $09
	db $e3                                           ; $5255: $e3
	nop                                              ; $5256: $00
	ld bc, $01c0                                     ; $5257: $01 $c0 $01
	and b                                            ; $525a: $a0
	add hl, bc                                       ; $525b: $09
	nop                                              ; $525c: $00
	ret                                              ; $525d: $c9


	ret nz                                           ; $525e: $c0

	ld bc, $01a0                                     ; $525f: $01 $a0 $01
	nop                                              ; $5262: $00
	db $d3                                           ; $5263: $d3
	pop hl                                           ; $5264: $e1
	ld [bc], a                                       ; $5265: $02
	inc bc                                           ; $5266: $03
	dec de                                           ; $5267: $1b
	ret nz                                           ; $5268: $c0

	ld bc, $09a0                                     ; $5269: $01 $a0 $09
	nop                                              ; $526c: $00
	jp c, $01c0                                      ; $526d: $da $c0 $01

	and b                                            ; $5270: $a0
	ld bc, $eb00                                     ; $5271: $01 $00 $eb
	pop hl                                           ; $5274: $e1
	ld [bc], a                                       ; $5275: $02
	inc bc                                           ; $5276: $03
	inc de                                           ; $5277: $13
	ret nz                                           ; $5278: $c0

	ld bc, $09a0                                     ; $5279: $01 $a0 $09
	nop                                              ; $527c: $00
	ld hl, sp-$40                                    ; $527d: $f8 $c0
	ld bc, $01a0                                     ; $527f: $01 $a0 $01
	ld bc, $c00c                                     ; $5282: $01 $0c $c0
	ld bc, $09a0                                     ; $5285: $01 $a0 $09
	ld bc, $c01d                                     ; $5288: $01 $1d $c0
	ld bc, $01a0                                     ; $528b: $01 $a0 $01
	ld bc, $e127                                     ; $528e: $01 $27 $e1
	ld [bc], a                                       ; $5291: $02
	inc bc                                           ; $5292: $03
	rrca                                             ; $5293: $0f
	pop bc                                           ; $5294: $c1
	or d                                             ; $5295: $b2
	db $e3                                           ; $5296: $e3
	nop                                              ; $5297: $00
	ld e, a                                          ; $5298: $5f
	ret nz                                           ; $5299: $c0

	ld bc, $09a0                                     ; $529a: $01 $a0 $09
	ld bc, $c02f                                     ; $529d: $01 $2f $c0
	ld bc, $01a0                                     ; $52a0: $01 $a0 $01
	ld bc, $e13d                                     ; $52a3: $01 $3d $e1
	ld [bc], a                                       ; $52a6: $02
	inc bc                                           ; $52a7: $03
	rra                                              ; $52a8: $1f
	ret nz                                           ; $52a9: $c0

	ld bc, $09a0                                     ; $52aa: $01 $a0 $09
	ld bc, $c04a                                     ; $52ad: $01 $4a $c0
	ld bc, $01a0                                     ; $52b0: $01 $a0 $01
	ld bc, $e155                                     ; $52b3: $01 $55 $e1
	ld [bc], a                                       ; $52b6: $02
	inc bc                                           ; $52b7: $03
	inc de                                           ; $52b8: $13
	ret nz                                           ; $52b9: $c0

	ld bc, $09a0                                     ; $52ba: $01 $a0 $09
	ld bc, $c062                                     ; $52bd: $01 $62 $c0
	ld bc, $01a0                                     ; $52c0: $01 $a0 $01
	ld bc, $c06b                                     ; $52c3: $01 $6b $c0
	ld bc, $09a0                                     ; $52c6: $01 $a0 $09
	ld bc, $c174                                     ; $52c9: $01 $74 $c1
	ld e, e                                          ; $52cc: $5b
	ret nz                                           ; $52cd: $c0

	ld bc, $01a0                                     ; $52ce: $01 $a0 $01
	ld bc, $c07e                                     ; $52d1: $01 $7e $c0
	ld bc, $01a0                                     ; $52d4: $01 $a0 $01
	ld bc, $2084                                     ; $52d7: $01 $84 $20
	add c                                            ; $52da: $81
	ld bc, $00a6                                     ; $52db: $01 $a6 $00
	add b                                            ; $52de: $80
	nop                                              ; $52df: $00
	adc l                                            ; $52e0: $8d
	ret nz                                           ; $52e1: $c0

	sbc e                                            ; $52e2: $9b
	ret c                                            ; $52e3: $d8

	ret nz                                           ; $52e4: $c0

	ld e, $e0                                        ; $52e5: $1e $e0
	jr z, @-$26                                      ; $52e7: $28 $d8

	ret nz                                           ; $52e9: $c0

	set 0, c                                         ; $52ea: $cb $c1
	dec b                                            ; $52ec: $05
	push hl                                          ; $52ed: $e5
	ld bc, $b119                                     ; $52ee: $01 $19 $b1
	ld c, a                                          ; $52f1: $4f
	inc b                                            ; $52f2: $04
	add hl, bc                                       ; $52f3: $09
	ld c, l                                          ; $52f4: $4d
	add c                                            ; $52f5: $81
	adc e                                            ; $52f6: $8b
	nop                                              ; $52f7: $00
	nop                                              ; $52f8: $00
	ld [bc], a                                       ; $52f9: $02
	or b                                             ; $52fa: $b0
	ld c, $04                                        ; $52fb: $0e $04
	push hl                                          ; $52fd: $e5
	ld bc, $b119                                     ; $52fe: $01 $19 $b1
	nop                                              ; $5301: $00
	ccf                                              ; $5302: $3f
	jr nz, @-$7d                                     ; $5303: $20 $81

	ld bc, $00a6                                     ; $5305: $01 $a6 $00
	add b                                            ; $5308: $80
	nop                                              ; $5309: $00
	ld l, a                                          ; $530a: $6f
	ret nz                                           ; $530b: $c0

	sbc e                                            ; $530c: $9b
	jp nc, $1ec0                                     ; $530d: $d2 $c0 $1e

	ldh [rDMA], a                                    ; $5310: $e0 $46
	jp nc, $20c0                                     ; $5312: $d2 $c0 $20

	ret nc                                           ; $5315: $d0

	jp nc, $8060                                     ; $5316: $d2 $60 $80

	nop                                              ; $5319: $00
	ld l, e                                          ; $531a: $6b
	db $10                                           ; $531b: $10
	or c                                             ; $531c: $b1
	ld d, h                                          ; $531d: $54
	inc bc                                           ; $531e: $03
	db $e4                                           ; $531f: $e4
	nop                                              ; $5320: $00
	ld [hl+], a                                      ; $5321: $22
	xor d                                            ; $5322: $aa
	inc bc                                           ; $5323: $03
	db $e4                                           ; $5324: $e4
	nop                                              ; $5325: $00
	cp h                                             ; $5326: $bc
	rst $38                                          ; $5327: $ff
	inc bc                                           ; $5328: $03
	db $e4                                           ; $5329: $e4
	ld [bc], a                                       ; $532a: $02
	ld e, d                                          ; $532b: $5a
	dec d                                            ; $532c: $15
	or d                                             ; $532d: $b2
	ccf                                              ; $532e: $3f
	inc bc                                           ; $532f: $03
	db $e4                                           ; $5330: $e4
	nop                                              ; $5331: $00

jr_07c_5332:
	ld de, $037f                                     ; $5332: $11 $7f $03
	db $e4                                           ; $5335: $e4
	nop                                              ; $5336: $00
	xor e                                            ; $5337: $ab
	cp a                                             ; $5338: $bf
	inc bc                                           ; $5339: $03
	db $e4                                           ; $533a: $e4
	ld bc, $ff4b                                     ; $533b: $01 $4b $ff
	inc bc                                           ; $533e: $03
	db $e4                                           ; $533f: $e4
	ld [bc], a                                       ; $5340: $02
	ld b, h                                          ; $5341: $44
	add hl, bc                                       ; $5342: $09
	sbc l                                            ; $5343: $9d
	pop bc                                           ; $5344: $c1
	dec sp                                           ; $5345: $3b
	pop bc                                           ; $5346: $c1
	ld d, e                                          ; $5347: $53
	ret nz                                           ; $5348: $c0

	inc d                                            ; $5349: $14
	db $e3                                           ; $534a: $e3
	nop                                              ; $534b: $00
	ld c, d                                          ; $534c: $4a
	ret nz                                           ; $534d: $c0

	ld bc, $01a0                                     ; $534e: $01 $a0 $01
	nop                                              ; $5351: $00
	ld bc, $0bc0                                     ; $5352: $01 $c0 $0b
	db $e3                                           ; $5355: $e3
	nop                                              ; $5356: $00
	adc b                                            ; $5357: $88
	ret nz                                           ; $5358: $c0

	nop                                              ; $5359: $00
	nop                                              ; $535a: $00
	db $10                                           ; $535b: $10
	ret nz                                           ; $535c: $c0

	ld bc, $01a0                                     ; $535d: $01 $a0 $01
	nop                                              ; $5360: $00
	dec d                                            ; $5361: $15
	ret nz                                           ; $5362: $c0

	add hl, bc                                       ; $5363: $09
	db $e3                                           ; $5364: $e3
	nop                                              ; $5365: $00
	dec b                                            ; $5366: $05
	pop hl                                           ; $5367: $e1
	ld [bc], a                                       ; $5368: $02
	ld bc, $c050                                     ; $5369: $01 $50 $c0
	ld bc, $17a0                                     ; $536c: $01 $a0 $17
	nop                                              ; $536f: $00
	jr z, jr_07c_5332                                ; $5370: $28 $c0

	ld bc, $01a0                                     ; $5372: $01 $a0 $01
	nop                                              ; $5375: $00
	inc l                                            ; $5376: $2c
	pop hl                                           ; $5377: $e1
	ld [bc], a                                       ; $5378: $02
	inc bc                                           ; $5379: $03
	rra                                              ; $537a: $1f
	ret nz                                           ; $537b: $c0

	ld bc, $17a0                                     ; $537c: $01 $a0 $17
	nop                                              ; $537f: $00
	ld [hl-], a                                      ; $5380: $32
	ret nz                                           ; $5381: $c0

	ld bc, $01a0                                     ; $5382: $01 $a0 $01
	nop                                              ; $5385: $00
	inc a                                            ; $5386: $3c
	ret nz                                           ; $5387: $c0

	ld bc, $17a0                                     ; $5388: $01 $a0 $17
	nop                                              ; $538b: $00
	ld b, e                                          ; $538c: $43
	ret nz                                           ; $538d: $c0

	ld bc, $01a0                                     ; $538e: $01 $a0 $01
	nop                                              ; $5391: $00
	ld d, c                                          ; $5392: $51
	ret nz                                           ; $5393: $c0

	nop                                              ; $5394: $00
	nop                                              ; $5395: $00
	ld d, e                                          ; $5396: $53
	pop hl                                           ; $5397: $e1
	ld [bc], a                                       ; $5398: $02
	inc bc                                           ; $5399: $03
	inc de                                           ; $539a: $13
	ret nz                                           ; $539b: $c0

	ld bc, $17a0                                     ; $539c: $01 $a0 $17
	nop                                              ; $539f: $00
	ld d, a                                          ; $53a0: $57
	ret nz                                           ; $53a1: $c0

	ld bc, $01a0                                     ; $53a2: $01 $a0 $01
	nop                                              ; $53a5: $00
	ld e, a                                          ; $53a6: $5f
	pop hl                                           ; $53a7: $e1
	ld [bc], a                                       ; $53a8: $02
	inc bc                                           ; $53a9: $03
	daa                                              ; $53aa: $27

jr_07c_53ab:
	pop bc                                           ; $53ab: $c1
	or d                                             ; $53ac: $b2
	db $e3                                           ; $53ad: $e3
	nop                                              ; $53ae: $00
	ld sp, $01c0                                     ; $53af: $31 $c0 $01
	and b                                            ; $53b2: $a0
	rla                                              ; $53b3: $17
	nop                                              ; $53b4: $00
	ld l, b                                          ; $53b5: $68
	ret nz                                           ; $53b6: $c0

	ld bc, $04a0                                     ; $53b7: $01 $a0 $04
	nop                                              ; $53ba: $00
	ld l, e                                          ; $53bb: $6b
	ret nz                                           ; $53bc: $c0

	ld bc, $01a0                                     ; $53bd: $01 $a0 $01
	nop                                              ; $53c0: $00

Jump_07c_53c1:
	ld [hl], l                                       ; $53c1: $75
	ret nz                                           ; $53c2: $c0

	ld bc, $04a0                                     ; $53c3: $01 $a0 $04
	nop                                              ; $53c6: $00
	ld a, b                                          ; $53c7: $78
	pop bc                                           ; $53c8: $c1
	ld e, e                                          ; $53c9: $5b
	ret nz                                           ; $53ca: $c0

	inc c                                            ; $53cb: $0c
	ldh [rAUD3HIGH], a                               ; $53cc: $e0 $1e
	ret nz                                           ; $53ce: $c0

	ld bc, $01a0                                     ; $53cf: $01 $a0 $01
	nop                                              ; $53d2: $00
	add d                                            ; $53d3: $82
	ret nz                                           ; $53d4: $c0

	ld e, $e0                                        ; $53d5: $1e $e0
	jr z, jr_07c_53ab                                ; $53d7: $28 $d2

	ret nz                                           ; $53d9: $c0

	set 0, c                                         ; $53da: $cb $c1
	dec b                                            ; $53dc: $05
	push hl                                          ; $53dd: $e5
	ld bc, $b119                                     ; $53de: $01 $19 $b1
	add hl, bc                                       ; $53e1: $09
	and e                                            ; $53e2: $a3
	pop bc                                           ; $53e3: $c1
	dec sp                                           ; $53e4: $3b
	pop bc                                           ; $53e5: $c1
	ld d, e                                          ; $53e6: $53
	ret nz                                           ; $53e7: $c0

	inc d                                            ; $53e8: $14
	db $e3                                           ; $53e9: $e3
	nop                                              ; $53ea: $00
	ld c, d                                          ; $53eb: $4a
	ret nz                                           ; $53ec: $c0

	ld bc, $01a0                                     ; $53ed: $01 $a0 $01
	nop                                              ; $53f0: $00
	ld bc, $0bc0                                     ; $53f1: $01 $c0 $0b
	db $e3                                           ; $53f4: $e3
	nop                                              ; $53f5: $00
	adc b                                            ; $53f6: $88
	ret nz                                           ; $53f7: $c0

	nop                                              ; $53f8: $00
	nop                                              ; $53f9: $00
	db $10                                           ; $53fa: $10
	ret nz                                           ; $53fb: $c0

	ld bc, $01a0                                     ; $53fc: $01 $a0 $01
	nop                                              ; $53ff: $00
	adc b                                            ; $5400: $88
	ret nz                                           ; $5401: $c0

	add hl, bc                                       ; $5402: $09
	db $e3                                           ; $5403: $e3
	nop                                              ; $5404: $00
	dec b                                            ; $5405: $05
	pop hl                                           ; $5406: $e1
	ld [bc], a                                       ; $5407: $02
	ld bc, $c050                                     ; $5408: $01 $50 $c0
	ld bc, $17a0                                     ; $540b: $01 $a0 $17
	nop                                              ; $540e: $00
	jr z, @-$3e                                      ; $540f: $28 $c0

	ld bc, $01a0                                     ; $5411: $01 $a0 $01
	nop                                              ; $5414: $00
	inc l                                            ; $5415: $2c
	ret nz                                           ; $5416: $c0

	ld bc, $17a0                                     ; $5417: $01 $a0 $17
	nop                                              ; $541a: $00
	sub c                                            ; $541b: $91
	ret nz                                           ; $541c: $c0

	ld bc, $01a0                                     ; $541d: $01 $a0 $01
	nop                                              ; $5420: $00
	sbc d                                            ; $5421: $9a
	pop hl                                           ; $5422: $e1
	ld [bc], a                                       ; $5423: $02
	inc bc                                           ; $5424: $03
	rra                                              ; $5425: $1f
	ret nz                                           ; $5426: $c0

	ld bc, $17a0                                     ; $5427: $01 $a0 $17
	nop                                              ; $542a: $00
	and b                                            ; $542b: $a0
	ret nz                                           ; $542c: $c0

	ld bc, $01a0                                     ; $542d: $01 $a0 $01
	nop                                              ; $5430: $00
	ld d, c                                          ; $5431: $51
	pop hl                                           ; $5432: $e1
	ld [bc], a                                       ; $5433: $02
	rlca                                             ; $5434: $07
	cp a                                             ; $5435: $bf
	ret nz                                           ; $5436: $c0

	ld bc, $01a0                                     ; $5437: $01 $a0 $01
	nop                                              ; $543a: $00
	xor e                                            ; $543b: $ab
	pop hl                                           ; $543c: $e1
	ld [bc], a                                       ; $543d: $02
	inc bc                                           ; $543e: $03
	inc de                                           ; $543f: $13
	ret nz                                           ; $5440: $c0

	ld bc, $17a0                                     ; $5441: $01 $a0 $17
	nop                                              ; $5444: $00
	or c                                             ; $5445: $b1
	ret nz                                           ; $5446: $c0

	ld bc, $01a0                                     ; $5447: $01 $a0 $01
	nop                                              ; $544a: $00
	or l                                             ; $544b: $b5
	pop hl                                           ; $544c: $e1
	ld [bc], a                                       ; $544d: $02
	inc bc                                           ; $544e: $03
	daa                                              ; $544f: $27

jr_07c_5450:
	pop bc                                           ; $5450: $c1
	or d                                             ; $5451: $b2
	db $e3                                           ; $5452: $e3
	nop                                              ; $5453: $00
	ld sp, $01c0                                     ; $5454: $31 $c0 $01
	and b                                            ; $5457: $a0
	rla                                              ; $5458: $17
	nop                                              ; $5459: $00
	ld l, b                                          ; $545a: $68
	ret nz                                           ; $545b: $c0

	ld bc, $04a0                                     ; $545c: $01 $a0 $04
	nop                                              ; $545f: $00
	ld l, e                                          ; $5460: $6b
	ret nz                                           ; $5461: $c0

	ld bc, $01a0                                     ; $5462: $01 $a0 $01
	nop                                              ; $5465: $00
	ld [hl], l                                       ; $5466: $75
	ret nz                                           ; $5467: $c0

	ld bc, $04a0                                     ; $5468: $01 $a0 $04
	nop                                              ; $546b: $00
	ld a, b                                          ; $546c: $78
	pop bc                                           ; $546d: $c1
	ld e, e                                          ; $546e: $5b
	ret nz                                           ; $546f: $c0

	inc c                                            ; $5470: $0c
	ldh [rAUD3HIGH], a                               ; $5471: $e0 $1e
	ret nz                                           ; $5473: $c0

	ld bc, $01a0                                     ; $5474: $01 $a0 $01
	nop                                              ; $5477: $00
	add d                                            ; $5478: $82
	ret nz                                           ; $5479: $c0

	ld e, $e0                                        ; $547a: $1e $e0
	jr z, jr_07c_5450                                ; $547c: $28 $d2

	ret nz                                           ; $547e: $c0

	set 0, c                                         ; $547f: $cb $c1
	dec b                                            ; $5481: $05
	push hl                                          ; $5482: $e5
	ld bc, $b119                                     ; $5483: $01 $19 $b1
	add hl, bc                                       ; $5486: $09
	ret nz                                           ; $5487: $c0

	ei                                               ; $5488: $fb
	pop bc                                           ; $5489: $c1
	dec sp                                           ; $548a: $3b
	pop bc                                           ; $548b: $c1
	ld d, e                                          ; $548c: $53
	ret nz                                           ; $548d: $c0

	inc d                                            ; $548e: $14
	db $e3                                           ; $548f: $e3
	nop                                              ; $5490: $00
	inc a                                            ; $5491: $3c
	ret nz                                           ; $5492: $c0

	dec bc                                           ; $5493: $0b
	db $e3                                           ; $5494: $e3
	nop                                              ; $5495: $00
	dec c                                            ; $5496: $0d
	ret nz                                           ; $5497: $c0

	nop                                              ; $5498: $00
	nop                                              ; $5499: $00
	cp h                                             ; $549a: $bc
	ret nz                                           ; $549b: $c0

	ld bc, $01a0                                     ; $549c: $01 $a0 $01
	nop                                              ; $549f: $00
	pop bc                                           ; $54a0: $c1
	pop bc                                           ; $54a1: $c1
	add a                                            ; $54a2: $87
	ret nz                                           ; $54a3: $c0

	dec bc                                           ; $54a4: $0b
	db $e3                                           ; $54a5: $e3
	nop                                              ; $54a6: $00
	adc b                                            ; $54a7: $88
	pop bc                                           ; $54a8: $c1
	ld e, c                                          ; $54a9: $59
	db $e3                                           ; $54aa: $e3
	nop                                              ; $54ab: $00
	ld b, [hl]                                       ; $54ac: $46
	ret nz                                           ; $54ad: $c0

	inc c                                            ; $54ae: $0c
	ldh [rAUD3HIGH], a                               ; $54af: $e0 $1e
	ret nz                                           ; $54b1: $c0

	dec bc                                           ; $54b2: $0b
	db $e3                                           ; $54b3: $e3
	nop                                              ; $54b4: $00
	ccf                                              ; $54b5: $3f
	ret nz                                           ; $54b6: $c0

	nop                                              ; $54b7: $00
	nop                                              ; $54b8: $00
	call $0cc0                                       ; $54b9: $cd $c0 $0c
	ldh [$3c], a                                     ; $54bc: $e0 $3c
	ret nz                                           ; $54be: $c0

	ld bc, $01a0                                     ; $54bf: $01 $a0 $01
	nop                                              ; $54c2: $00
	push de                                          ; $54c3: $d5
	pop bc                                           ; $54c4: $c1
	ld e, c                                          ; $54c5: $59
	db $e3                                           ; $54c6: $e3
	nop                                              ; $54c7: $00
	ld b, a                                          ; $54c8: $47
	ret nz                                           ; $54c9: $c0

	inc c                                            ; $54ca: $0c
	ldh [rAUD3HIGH], a                               ; $54cb: $e0 $1e
	ret nz                                           ; $54cd: $c0

	xor d                                            ; $54ce: $aa
	jp nc, $abc0                                     ; $54cf: $d2 $c0 $ab

	db $d3                                           ; $54d2: $d3
	ret nz                                           ; $54d3: $c0

	and l                                            ; $54d4: $a5
	ret nz                                           ; $54d5: $c0

	add hl, bc                                       ; $54d6: $09
	db $e3                                           ; $54d7: $e3
	nop                                              ; $54d8: $00
	dec b                                            ; $54d9: $05
	ret nz                                           ; $54da: $c0

	ld bc, $17a0                                     ; $54db: $01 $a0 $17
	nop                                              ; $54de: $00
	sbc $c0                                          ; $54df: $de $c0
	ld bc, $01a0                                     ; $54e1: $01 $a0 $01
	nop                                              ; $54e4: $00
	ld [$01c0], a                                    ; $54e5: $ea $c0 $01
	and b                                            ; $54e8: $a0
	rla                                              ; $54e9: $17
	nop                                              ; $54ea: $00
	rst AddAOntoHL                                          ; $54eb: $ef
	ret nz                                           ; $54ec: $c0

	ld bc, $17a0                                     ; $54ed: $01 $a0 $17
	nop                                              ; $54f0: $00
	db $f4                                           ; $54f1: $f4
	ret nz                                           ; $54f2: $c0

	ld bc, $01a0                                     ; $54f3: $01 $a0 $01
	nop                                              ; $54f6: $00
	cp $e1                                           ; $54f7: $fe $e1
	ld [bc], a                                       ; $54f9: $02
	inc bc                                           ; $54fa: $03
	inc de                                           ; $54fb: $13
	ret nz                                           ; $54fc: $c0

	ld bc, $17a0                                     ; $54fd: $01 $a0 $17
	ld bc, $c005                                     ; $5500: $01 $05 $c0
	ld bc, $01a0                                     ; $5503: $01 $a0 $01
	ld bc, $e110                                     ; $5506: $01 $10 $e1
	ld [bc], a                                       ; $5509: $02
	inc bc                                           ; $550a: $03
	rra                                              ; $550b: $1f
	ret nz                                           ; $550c: $c0

	ld bc, $17a0                                     ; $550d: $01 $a0 $17
	ld bc, $c020                                     ; $5510: $01 $20 $c0
	ld bc, $01a0                                     ; $5513: $01 $a0 $01
	ld bc, $e131                                     ; $5516: $01 $31 $e1
	ld [bc], a                                       ; $5519: $02
	inc bc                                           ; $551a: $03
	inc de                                           ; $551b: $13
	ret nz                                           ; $551c: $c0

	ld bc, $04a0                                     ; $551d: $01 $a0 $04
	ld bc, $c036                                     ; $5520: $01 $36 $c0
	ld bc, $01a0                                     ; $5523: $01 $a0 $01
	ld bc, $c045                                     ; $5526: $01 $45 $c0
	ld bc, $04a0                                     ; $5529: $01 $a0 $04
	ld bc, $c055                                     ; $552c: $01 $55 $c0
	ld bc, $01a0                                     ; $552f: $01 $a0 $01
	ld bc, $c062                                     ; $5532: $01 $62 $c0
	ld bc, $04a0                                     ; $5535: $01 $a0 $04
	ld bc, $c06e                                     ; $5538: $01 $6e $c0
	set 0, c                                         ; $553b: $cb $c1
	ld e, e                                          ; $553d: $5b
	ret nz                                           ; $553e: $c0

	inc c                                            ; $553f: $0c
	ldh [$3c], a                                     ; $5540: $e0 $3c
	ret nz                                           ; $5542: $c0

	rrca                                             ; $5543: $0f
	db $e3                                           ; $5544: $e3
	nop                                              ; $5545: $00
	inc a                                            ; $5546: $3c
	ret nz                                           ; $5547: $c0

	ld bc, $01a0                                     ; $5548: $01 $a0 $01

jr_07c_554b:
	ld bc, $c083                                     ; $554b: $01 $83 $c0
	ld bc, $01a0                                     ; $554e: $01 $a0 $01
	ld bc, $c094                                     ; $5551: $01 $94 $c0
	inc c                                            ; $5554: $0c
	ldh [$3c], a                                     ; $5555: $e0 $3c
	ret nz                                           ; $5557: $c0

	ld bc, $01a0                                     ; $5558: $01 $a0 $01
	ld bc, $029b                                     ; $555b: $01 $9b $02
	add b                                            ; $555e: $80
	nop                                              ; $555f: $00
	ld h, a                                          ; $5560: $67
	add b                                            ; $5561: $80
	nop                                              ; $5562: $00
	ld [hl], a                                       ; $5563: $77
	add b                                            ; $5564: $80
	nop                                              ; $5565: $00
	ld h, [hl]                                       ; $5566: $66
	ret nc                                           ; $5567: $d0

	adc e                                            ; $5568: $8b
	nop                                              ; $5569: $00
	nop                                              ; $556a: $00
	or b                                             ; $556b: $b0
	ld c, $40                                        ; $556c: $0e $40
	add b                                            ; $556e: $80
	nop                                              ; $556f: $00
	ld l, c                                          ; $5570: $69
	ret nz                                           ; $5571: $c0

	sub d                                            ; $5572: $92
	pop de                                           ; $5573: $d1
	ret nz                                           ; $5574: $c0

	ld e, $e0                                        ; $5575: $1e $e0
	jr z, jr_07c_554b                                ; $5577: $28 $d2

	ret nz                                           ; $5579: $c0

	ret nz                                           ; $557a: $c0

	jp nc, $cbc0                                     ; $557b: $d2 $c0 $cb

	pop bc                                           ; $557e: $c1
	dec b                                            ; $557f: $05
	push hl                                          ; $5580: $e5
	ld bc, $b119                                     ; $5581: $01 $19 $b1
	add hl, bc                                       ; $5584: $09
	sub e                                            ; $5585: $93
	pop bc                                           ; $5586: $c1
	dec sp                                           ; $5587: $3b
	pop bc                                           ; $5588: $c1
	ld d, e                                          ; $5589: $53
	ret nz                                           ; $558a: $c0

	inc d                                            ; $558b: $14
	db $e3                                           ; $558c: $e3
	nop                                              ; $558d: $00
	ld c, d                                          ; $558e: $4a
	ret nz                                           ; $558f: $c0

	ld bc, $01a0                                     ; $5590: $01 $a0 $01
	nop                                              ; $5593: $00
	ld bc, $01c0                                     ; $5594: $01 $c0 $01
	and b                                            ; $5597: $a0
	ld bc, $a901                                     ; $5598: $01 $01 $a9
	ret nz                                           ; $559b: $c0

	set 0, b                                         ; $559c: $cb $c0
	inc c                                            ; $559e: $0c
	ldh [$28], a                                     ; $559f: $e0 $28
	ret nz                                           ; $55a1: $c0

	ld de, $00e3                                     ; $55a2: $11 $e3 $00
	ld b, d                                          ; $55a5: $42
	ret nz                                           ; $55a6: $c0

	jp z, $0cc0                                      ; $55a7: $ca $c0 $0c

	ldh [$28], a                                     ; $55aa: $e0 $28
	ret nz                                           ; $55ac: $c0

	ld bc, $01a0                                     ; $55ad: $01 $a0 $01
	ld bc, $c0b9                                     ; $55b0: $01 $b9 $c0
	xor d                                            ; $55b3: $aa
	jp nc, $acc0                                     ; $55b4: $d2 $c0 $ac

	ret nz                                           ; $55b7: $c0

	and l                                            ; $55b8: $a5
	ret nz                                           ; $55b9: $c0

	add hl, bc                                       ; $55ba: $09
	db $e3                                           ; $55bb: $e3
	nop                                              ; $55bc: $00
	dec b                                            ; $55bd: $05
	ret nz                                           ; $55be: $c0

	ld bc, $17a0                                     ; $55bf: $01 $a0 $17
	ld bc, $c0c6                                     ; $55c2: $01 $c6 $c0
	ld bc, $01a0                                     ; $55c5: $01 $a0 $01
	ld bc, $c0d1                                     ; $55c8: $01 $d1 $c0
	ld bc, $17a0                                     ; $55cb: $01 $a0 $17
	ld bc, $c0df                                     ; $55ce: $01 $df $c0
	ld bc, $01a0                                     ; $55d1: $01 $a0 $01
	ld bc, $e1ea                                     ; $55d4: $01 $ea $e1
	ld [bc], a                                       ; $55d7: $02
	inc bc                                           ; $55d8: $03
	rra                                              ; $55d9: $1f
	ret nz                                           ; $55da: $c0

	ld bc, $17a0                                     ; $55db: $01 $a0 $17
	ld bc, $c0f4                                     ; $55de: $01 $f4 $c0
	ld bc, $01a0                                     ; $55e1: $01 $a0 $01
	ld [bc], a                                       ; $55e4: $02
	ld bc, $02e1                                     ; $55e5: $01 $e1 $02
	inc bc                                           ; $55e8: $03
	inc de                                           ; $55e9: $13
	ret nz                                           ; $55ea: $c0

	ld bc, $17a0                                     ; $55eb: $01 $a0 $17
	ld [bc], a                                       ; $55ee: $02
	dec bc                                           ; $55ef: $0b
	ret nz                                           ; $55f0: $c0

	ld bc, $01a0                                     ; $55f1: $01 $a0 $01
	ld [bc], a                                       ; $55f4: $02
	dec e                                            ; $55f5: $1d
	ret nz                                           ; $55f6: $c0

	set 0, c                                         ; $55f7: $cb $c1
	ld e, e                                          ; $55f9: $5b
	ret nz                                           ; $55fa: $c0

	rrca                                             ; $55fb: $0f
	db $e3                                           ; $55fc: $e3
	nop                                              ; $55fd: $00
	ld c, d                                          ; $55fe: $4a
	ret nz                                           ; $55ff: $c0

	ld bc, $01a0                                     ; $5600: $01 $a0 $01
	ld [bc], a                                       ; $5603: $02
	dec h                                            ; $5604: $25
	nop                                              ; $5605: $00
	add b                                            ; $5606: $80
	nop                                              ; $5607: $00
	ld [hl], a                                       ; $5608: $77
	ret nz                                           ; $5609: $c0

	ret nz                                           ; $560a: $c0

	jp nc, $1ec0                                     ; $560b: $d2 $c0 $1e

	ldh [$28], a                                     ; $560e: $e0 $28
	jp nc, $cbc0                                     ; $5610: $d2 $c0 $cb

	pop bc                                           ; $5613: $c1
	dec b                                            ; $5614: $05
	push hl                                          ; $5615: $e5
	ld bc, $b119                                     ; $5616: $01 $19 $b1

jr_07c_5619:
	add hl, bc                                       ; $5619: $09
	sbc l                                            ; $561a: $9d
	ret nz                                           ; $561b: $c0

	ld e, $e0                                        ; $561c: $1e $e0
	ld b, [hl]                                       ; $561e: $46
	jp nc, $20c0                                     ; $561f: $d2 $c0 $20

	ret nc                                           ; $5622: $d0

	jp nc, $3bc1                                     ; $5623: $d2 $c1 $3b

	pop bc                                           ; $5626: $c1
	ld d, e                                          ; $5627: $53
	ret nz                                           ; $5628: $c0

	inc d                                            ; $5629: $14
	db $e3                                           ; $562a: $e3
	nop                                              ; $562b: $00
	ld b, d                                          ; $562c: $42
	ret nz                                           ; $562d: $c0

	ld bc, $01a0                                     ; $562e: $01 $a0 $01
	ld [bc], a                                       ; $5631: $02
	ld b, l                                          ; $5632: $45
	ret nz                                           ; $5633: $c0

	add hl, bc                                       ; $5634: $09
	db $e3                                           ; $5635: $e3
	nop                                              ; $5636: $00
	dec b                                            ; $5637: $05
	ret nz                                           ; $5638: $c0

	xor d                                            ; $5639: $aa
	jp nc, $a5c0                                     ; $563a: $d2 $c0 $a5

	ret nz                                           ; $563d: $c0

	ld bc, $17a0                                     ; $563e: $01 $a0 $17
	ld [bc], a                                       ; $5641: $02
	ld c, a                                          ; $5642: $4f
	ret nz                                           ; $5643: $c0

	ld bc, $17a0                                     ; $5644: $01 $a0 $17
	ld [bc], a                                       ; $5647: $02
	ld d, b                                          ; $5648: $50
	ret nz                                           ; $5649: $c0

	ld bc, $01a0                                     ; $564a: $01 $a0 $01
	ld [bc], a                                       ; $564d: $02
	ld e, c                                          ; $564e: $59
	pop bc                                           ; $564f: $c1
	or d                                             ; $5650: $b2
	db $e3                                           ; $5651: $e3
	nop                                              ; $5652: $00
	ld [hl-], a                                      ; $5653: $32
	ret nz                                           ; $5654: $c0

	ld bc, $17a0                                     ; $5655: $01 $a0 $17
	ld [bc], a                                       ; $5658: $02
	ld e, [hl]                                       ; $5659: $5e
	ret nz                                           ; $565a: $c0

	ld bc, $01a0                                     ; $565b: $01 $a0 $01
	ld [bc], a                                       ; $565e: $02
	ld h, h                                          ; $565f: $64
	ret nz                                           ; $5660: $c0

	set 0, b                                         ; $5661: $cb $c0
	inc c                                            ; $5663: $0c
	ldh [$3c], a                                     ; $5664: $e0 $3c
	ret nz                                           ; $5666: $c0

	ld bc, $01a0                                     ; $5667: $01 $a0 $01
	ld [bc], a                                       ; $566a: $02
	ld l, b                                          ; $566b: $68
	ret nz                                           ; $566c: $c0

	ld bc, $01a0                                     ; $566d: $01 $a0 $01
	ld [bc], a                                       ; $5670: $02
	ld l, l                                          ; $5671: $6d
	ret nz                                           ; $5672: $c0

	ld bc, $01a0                                     ; $5673: $01 $a0 $01
	ld [bc], a                                       ; $5676: $02
	ld [hl], d                                       ; $5677: $72
	ret nz                                           ; $5678: $c0

	inc c                                            ; $5679: $0c
	ldh [$3c], a                                     ; $567a: $e0 $3c
	ret nz                                           ; $567c: $c0

	jp z, $01c0                                      ; $567d: $ca $c0 $01

	and b                                            ; $5680: $a0
	ld bc, $7802                                     ; $5681: $01 $02 $78
	ret nz                                           ; $5684: $c0

	ld bc, $04a0                                     ; $5685: $01 $a0 $04
	ld [bc], a                                       ; $5688: $02
	ld a, e                                          ; $5689: $7b
	pop bc                                           ; $568a: $c1
	ld e, e                                          ; $568b: $5b
	ret nz                                           ; $568c: $c0

	inc c                                            ; $568d: $0c
	ldh [rAUD3HIGH], a                               ; $568e: $e0 $1e
	ret nz                                           ; $5690: $c0

	ld bc, $01a0                                     ; $5691: $01 $a0 $01
	ld [bc], a                                       ; $5694: $02

jr_07c_5695:
	adc d                                            ; $5695: $8a
	jr nz, jr_07c_5619                               ; $5696: $20 $81

	ld bc, $01a6                                     ; $5698: $01 $a6 $01
	add b                                            ; $569b: $80
	nop                                              ; $569c: $00
	ld l, a                                          ; $569d: $6f
	add b                                            ; $569e: $80
	nop                                              ; $569f: $00
	ld l, b                                          ; $56a0: $68
	nop                                              ; $56a1: $00
	add b                                            ; $56a2: $80
	nop                                              ; $56a3: $00
	ld [hl], a                                       ; $56a4: $77
	ret nz                                           ; $56a5: $c0

	sbc e                                            ; $56a6: $9b
	jp nc, $c0c0                                     ; $56a7: $d2 $c0 $c0

	jp nc, $1ec0                                     ; $56aa: $d2 $c0 $1e

	ldh [$28], a                                     ; $56ad: $e0 $28
	jp nc, $cbc0                                     ; $56af: $d2 $c0 $cb

	pop bc                                           ; $56b2: $c1
	dec b                                            ; $56b3: $05
	push hl                                          ; $56b4: $e5
	ld bc, $b119                                     ; $56b5: $01 $19 $b1
	ld c, a                                          ; $56b8: $4f
	inc b                                            ; $56b9: $04
	add hl, bc                                       ; $56ba: $09
	ret nz                                           ; $56bb: $c0

	db $ec                                           ; $56bc: $ec
	ret nz                                           ; $56bd: $c0

	ld e, $e0                                        ; $56be: $1e $e0
	ld b, [hl]                                       ; $56c0: $46
	db $dd                                           ; $56c1: $dd
	ret nz                                           ; $56c2: $c0

	jr nz, jr_07c_5695                               ; $56c3: $20 $d0

	db $dd                                           ; $56c5: $dd
	pop bc                                           ; $56c6: $c1
	ld d, e                                          ; $56c7: $53
	pop bc                                           ; $56c8: $c1
	dec sp                                           ; $56c9: $3b
	ret nz                                           ; $56ca: $c0

	inc d                                            ; $56cb: $14
	db $e3                                           ; $56cc: $e3
	nop                                              ; $56cd: $00
	ld a, [hl]                                       ; $56ce: $7e
	ret nz                                           ; $56cf: $c0

	ld bc, $01a0                                     ; $56d0: $01 $a0 $01
	nop                                              ; $56d3: $00
	ld bc, $54b1                                     ; $56d4: $01 $b1 $54
	inc b                                            ; $56d7: $04
	ret nz                                           ; $56d8: $c0

	nop                                              ; $56d9: $00
	nop                                              ; $56da: $00
	db $10                                           ; $56db: $10
	xor d                                            ; $56dc: $aa
	inc b                                            ; $56dd: $04
	ret nz                                           ; $56de: $c0

	nop                                              ; $56df: $00
	nop                                              ; $56e0: $00
	dec h                                            ; $56e1: $25
	rst $38                                          ; $56e2: $ff
	inc b                                            ; $56e3: $04
	ret nz                                           ; $56e4: $c0

	nop                                              ; $56e5: $00
	nop                                              ; $56e6: $00
	inc a                                            ; $56e7: $3c
	ret nz                                           ; $56e8: $c0

	ld bc, $01a0                                     ; $56e9: $01 $a0 $01
	nop                                              ; $56ec: $00
	ld d, a                                          ; $56ed: $57
	pop hl                                           ; $56ee: $e1
	ld [bc], a                                       ; $56ef: $02
	ld [bc], a                                       ; $56f0: $02
	ld [hl], b                                       ; $56f1: $70
	pop hl                                           ; $56f2: $e1
	ld [bc], a                                       ; $56f3: $02
	inc bc                                           ; $56f4: $03
	dec de                                           ; $56f5: $1b
	pop bc                                           ; $56f6: $c1
	or d                                             ; $56f7: $b2
	db $e3                                           ; $56f8: $e3
	nop                                              ; $56f9: $00
	ld a, d                                          ; $56fa: $7a
	ret nz                                           ; $56fb: $c0

	ld bc, $18a0                                     ; $56fc: $01 $a0 $18
	nop                                              ; $56ff: $00
	ld e, e                                          ; $5700: $5b
	ret nz                                           ; $5701: $c0

	ld bc, $01a0                                     ; $5702: $01 $a0 $01
	nop                                              ; $5705: $00
	ld e, l                                          ; $5706: $5d
	pop hl                                           ; $5707: $e1
	ld [bc], a                                       ; $5708: $02
	inc bc                                           ; $5709: $03
	rla                                              ; $570a: $17
	pop bc                                           ; $570b: $c1
	or d                                             ; $570c: $b2
	db $e3                                           ; $570d: $e3
	nop                                              ; $570e: $00
	ld a, e                                          ; $570f: $7b
	ret nz                                           ; $5710: $c0

	ld bc, $18a0                                     ; $5711: $01 $a0 $18

jr_07c_5714:
	nop                                              ; $5714: $00
	ld h, b                                          ; $5715: $60
	ret nz                                           ; $5716: $c0

	ld bc, $01a0                                     ; $5717: $01 $a0 $01
	nop                                              ; $571a: $00
	ld h, e                                          ; $571b: $63
	add c                                            ; $571c: $81
	ret nz                                           ; $571d: $c0

	add b                                            ; $571e: $80
	ld bc, $10d1                                     ; $571f: $01 $d1 $10
	pop bc                                           ; $5722: $c1
	or d                                             ; $5723: $b2
	db $e3                                           ; $5724: $e3
	nop                                              ; $5725: $00
	ld a, h                                          ; $5726: $7c
	ret nz                                           ; $5727: $c0

	add hl, bc                                       ; $5728: $09
	db $e3                                           ; $5729: $e3
	nop                                              ; $572a: $00
	rlca                                             ; $572b: $07
	ret nz                                           ; $572c: $c0

	ld bc, $18a0                                     ; $572d: $01 $a0 $18
	nop                                              ; $5730: $00
	ld [hl], c                                       ; $5731: $71
	ld bc, $10d2                                     ; $5732: $01 $d2 $10
	pop bc                                           ; $5735: $c1
	or d                                             ; $5736: $b2
	db $e3                                           ; $5737: $e3
	nop                                              ; $5738: $00
	ld a, l                                          ; $5739: $7d
	ret nz                                           ; $573a: $c0

	add hl, bc                                       ; $573b: $09
	db $e3                                           ; $573c: $e3
	nop                                              ; $573d: $00
	rlca                                             ; $573e: $07
	ret nz                                           ; $573f: $c0

	ld bc, $18a0                                     ; $5740: $01 $a0 $18
	nop                                              ; $5743: $00
	ld a, d                                          ; $5744: $7a
	ret nz                                           ; $5745: $c0

	ld bc, $01a0                                     ; $5746: $01 $a0 $01
	nop                                              ; $5749: $00
	add d                                            ; $574a: $82
	pop hl                                           ; $574b: $e1
	ld [bc], a                                       ; $574c: $02
	inc bc                                           ; $574d: $03
	inc de                                           ; $574e: $13
	ret nz                                           ; $574f: $c0

	ld bc, $0aa0                                     ; $5750: $01 $a0 $0a
	nop                                              ; $5753: $00
	adc l                                            ; $5754: $8d
	pop bc                                           ; $5755: $c1
	ld e, e                                          ; $5756: $5b
	ret nz                                           ; $5757: $c0

	ld bc, $01a0                                     ; $5758: $01 $a0 $01
	nop                                              ; $575b: $00
	sub [hl]                                         ; $575c: $96
	pop hl                                           ; $575d: $e1
	ld [bc], a                                       ; $575e: $02
	inc bc                                           ; $575f: $03
	rla                                              ; $5760: $17
	pop bc                                           ; $5761: $c1
	ld e, h                                          ; $5762: $5c
	ret nz                                           ; $5763: $c0

	ld bc, $0aa0                                     ; $5764: $01 $a0 $0a
	nop                                              ; $5767: $00
	sbc e                                            ; $5768: $9b
	ret nz                                           ; $5769: $c0

	ld bc, $01a0                                     ; $576a: $01 $a0 $01
	nop                                              ; $576d: $00
	sbc h                                            ; $576e: $9c
	pop hl                                           ; $576f: $e1
	ld [bc], a                                       ; $5770: $02
	inc bc                                           ; $5771: $03
	dec de                                           ; $5772: $1b
	ret nz                                           ; $5773: $c0

	ld bc, $0aa0                                     ; $5774: $01 $a0 $0a
	nop                                              ; $5777: $00
	and [hl]                                         ; $5778: $a6
	ret nz                                           ; $5779: $c0

	ld bc, $01a0                                     ; $577a: $01 $a0 $01
	nop                                              ; $577d: $00

jr_07c_577e:
	xor a                                            ; $577e: $af
	pop hl                                           ; $577f: $e1
	ld [bc], a                                       ; $5780: $02
	inc bc                                           ; $5781: $03
	inc de                                           ; $5782: $13
	ret nz                                           ; $5783: $c0

	ld bc, $0aa0                                     ; $5784: $01 $a0 $0a
	nop                                              ; $5787: $00
	cp d                                             ; $5788: $ba
	pop bc                                           ; $5789: $c1
	ld e, e                                          ; $578a: $5b
	ret nz                                           ; $578b: $c0

	ld bc, $01a0                                     ; $578c: $01 $a0 $01
	nop                                              ; $578f: $00
	cp l                                             ; $5790: $bd
	jr nz, jr_07c_5714                               ; $5791: $20 $81

	ld bc, $00a6                                     ; $5793: $01 $a6 $00
	add b                                            ; $5796: $80
	nop                                              ; $5797: $00
	ld a, l                                          ; $5798: $7d
	ret nz                                           ; $5799: $c0

	sbc e                                            ; $579a: $9b
	db $dd                                           ; $579b: $dd
	ret nz                                           ; $579c: $c0

	ld e, $e0                                        ; $579d: $1e $e0
	jr z, jr_07c_577e                                ; $579f: $28 $dd

	ret nz                                           ; $57a1: $c0

	set 0, c                                         ; $57a2: $cb $c1
	dec b                                            ; $57a4: $05
	push hl                                          ; $57a5: $e5
	ld bc, $b119                                     ; $57a6: $01 $19 $b1
	ld c, a                                          ; $57a9: $4f
	inc b                                            ; $57aa: $04
	add hl, bc                                       ; $57ab: $09
	ret nz                                           ; $57ac: $c0

	ldh a, [c]                                       ; $57ad: $f2
	ret nz                                           ; $57ae: $c0

	ld e, $e0                                        ; $57af: $1e $e0
	ld b, [hl]                                       ; $57b1: $46
	rst SubAFromHL                                          ; $57b2: $d7
	ret nz                                           ; $57b3: $c0

	jr nz, @-$2e                                     ; $57b4: $20 $d0

	rst SubAFromHL                                          ; $57b6: $d7
	pop bc                                           ; $57b7: $c1
	ld d, e                                          ; $57b8: $53
	ret nz                                           ; $57b9: $c0

	ld de, $00e3                                     ; $57ba: $11 $e3 $00
	inc a                                            ; $57bd: $3c
	ret nz                                           ; $57be: $c0

	add hl, bc                                       ; $57bf: $09
	db $e3                                           ; $57c0: $e3
	nop                                              ; $57c1: $00
	ld l, d                                          ; $57c2: $6a
	pop hl                                           ; $57c3: $e1
	ld [bc], a                                       ; $57c4: $02
	ld [bc], a                                       ; $57c5: $02
	db $d3                                           ; $57c6: $d3
	ret nz                                           ; $57c7: $c0

	ld bc, $01a0                                     ; $57c8: $01 $a0 $01
	nop                                              ; $57cb: $00
	ld bc, $01c0                                     ; $57cc: $01 $c0 $01
	and b                                            ; $57cf: $a0
	rlca                                             ; $57d0: $07
	nop                                              ; $57d1: $00
	inc c                                            ; $57d2: $0c
	pop bc                                           ; $57d3: $c1
	add a                                            ; $57d4: $87
	pop bc                                           ; $57d5: $c1
	ld e, e                                          ; $57d6: $5b
	ret nz                                           ; $57d7: $c0

	dec bc                                           ; $57d8: $0b
	db $e3                                           ; $57d9: $e3
	nop                                              ; $57da: $00
	db $10                                           ; $57db: $10
	pop bc                                           ; $57dc: $c1
	ld d, l                                          ; $57dd: $55
	pop de                                           ; $57de: $d1
	pop bc                                           ; $57df: $c1
	ld d, h                                          ; $57e0: $54
	ret nz                                           ; $57e1: $c0

	ld bc, $19a0                                     ; $57e2: $01 $a0 $19
	nop                                              ; $57e5: $00
	ld [de], a                                       ; $57e6: $12
	pop bc                                           ; $57e7: $c1
	dec sp                                           ; $57e8: $3b
	add c                                            ; $57e9: $81
	ret nz                                           ; $57ea: $c0

	ld h, l                                          ; $57eb: $65
	ld [$d2d1], sp                                   ; $57ec: $08 $d1 $d2
	db $d3                                           ; $57ef: $d3
	call nc, $dad5                                   ; $57f0: $d4 $d5 $da
	db $db                                           ; $57f3: $db
	call c, $c005                                    ; $57f4: $dc $05 $c0
	rrca                                             ; $57f7: $0f
	db $e3                                           ; $57f8: $e3
	nop                                              ; $57f9: $00
	or $04                                           ; $57fa: $f6 $04
	sub $d7                                          ; $57fc: $d6 $d7
	ret c                                            ; $57fe: $d8

	reti                                             ; $57ff: $d9


	dec b                                            ; $5800: $05
	ret nz                                           ; $5801: $c0

	rrca                                             ; $5802: $0f
	db $e3                                           ; $5803: $e3
	nop                                              ; $5804: $00
	push af                                          ; $5805: $f5
	pop bc                                           ; $5806: $c1
	or d                                             ; $5807: $b2
	db $e3                                           ; $5808: $e3
	nop                                              ; $5809: $00
	ld c, l                                          ; $580a: $4d

jr_07c_580b:
	ret nz                                           ; $580b: $c0

	add hl, bc                                       ; $580c: $09
	db $e3                                           ; $580d: $e3
	nop                                              ; $580e: $00
	inc bc                                           ; $580f: $03
	ret nz                                           ; $5810: $c0

	ld bc, $19a0                                     ; $5811: $01 $a0 $19
	nop                                              ; $5814: $00
	inc d                                            ; $5815: $14
	ret nz                                           ; $5816: $c0

	ld bc, $01a0                                     ; $5817: $01 $a0 $01
	nop                                              ; $581a: $00
	rla                                              ; $581b: $17
	pop bc                                           ; $581c: $c1
	or d                                             ; $581d: $b2
	db $e3                                           ; $581e: $e3
	nop                                              ; $581f: $00
	ld c, [hl]                                       ; $5820: $4e
	ret nz                                           ; $5821: $c0

	ld bc, $19a0                                     ; $5822: $01 $a0 $19
	nop                                              ; $5825: $00
	dec de                                           ; $5826: $1b
	ret nz                                           ; $5827: $c0

	ld bc, $01a0                                     ; $5828: $01 $a0 $01
	nop                                              ; $582b: $00
	daa                                              ; $582c: $27
	ret nz                                           ; $582d: $c0

	inc d                                            ; $582e: $14
	db $e3                                           ; $582f: $e3
	nop                                              ; $5830: $00
	inc a                                            ; $5831: $3c
	ret nz                                           ; $5832: $c0

	xor b                                            ; $5833: $a8
	rst SubAFromHL                                          ; $5834: $d7
	ret nz                                           ; $5835: $c0

	xor e                                            ; $5836: $ab
	db $d3                                           ; $5837: $d3
	ret nz                                           ; $5838: $c0

	and l                                            ; $5839: $a5
	ret nz                                           ; $583a: $c0

	nop                                              ; $583b: $00
	nop                                              ; $583c: $00
	ld l, $c0                                        ; $583d: $2e $c0
	ld bc, $01a0                                     ; $583f: $01 $a0 $01
	nop                                              ; $5842: $00
	inc sp                                           ; $5843: $33
	pop hl                                           ; $5844: $e1
	ld [bc], a                                       ; $5845: $02
	inc bc                                           ; $5846: $03
	daa                                              ; $5847: $27
	ret nz                                           ; $5848: $c0

	inc c                                            ; $5849: $0c
	ldh [$28], a                                     ; $584a: $e0 $28
	ret nz                                           ; $584c: $c0

	ld bc, $19a0                                     ; $584d: $01 $a0 $19
	nop                                              ; $5850: $00
	ld a, $c0                                        ; $5851: $3e $c0
	ld bc, $01a0                                     ; $5853: $01 $a0 $01
	nop                                              ; $5856: $00
	ld c, c                                          ; $5857: $49
	ret nz                                           ; $5858: $c0

	ld bc, $19a0                                     ; $5859: $01 $a0 $19
	nop                                              ; $585c: $00
	ld c, [hl]                                       ; $585d: $4e
	pop bc                                           ; $585e: $c1
	ld e, e                                          ; $585f: $5b
	ret nz                                           ; $5860: $c0

	inc c                                            ; $5861: $0c
	ldh [rAUD3HIGH], a                               ; $5862: $e0 $1e
	ret nz                                           ; $5864: $c0

	ld bc, $01a0                                     ; $5865: $01 $a0 $01
	nop                                              ; $5868: $00
	ld e, a                                          ; $5869: $5f
	pop hl                                           ; $586a: $e1
	ld [bc], a                                       ; $586b: $02
	ld [bc], a                                       ; $586c: $02
	call z, $01c0                                    ; $586d: $cc $c0 $01
	and b                                            ; $5870: $a0
	rlca                                             ; $5871: $07
	nop                                              ; $5872: $00
	ld h, a                                          ; $5873: $67
	ret nz                                           ; $5874: $c0

	ld bc, $01a0                                     ; $5875: $01 $a0 $01
	nop                                              ; $5878: $00
	halt                                             ; $5879: $76
	ret nz                                           ; $587a: $c0

	ld bc, $07a0                                     ; $587b: $01 $a0 $07
	nop                                              ; $587e: $00
	add d                                            ; $587f: $82
	pop bc                                           ; $5880: $c1
	ld e, e                                          ; $5881: $5b
	ret nz                                           ; $5882: $c0

	ld bc, $01a0                                     ; $5883: $01 $a0 $01
	nop                                              ; $5886: $00
	adc [hl]                                         ; $5887: $8e
	jr nz, jr_07c_580b                               ; $5888: $20 $81

	ld bc, $00a6                                     ; $588a: $01 $a6 $00
	add b                                            ; $588d: $80
	nop                                              ; $588e: $00
	adc h                                            ; $588f: $8c
	ret nz                                           ; $5890: $c0

	sbc e                                            ; $5891: $9b
	rst SubAFromHL                                          ; $5892: $d7
	ret nz                                           ; $5893: $c0

	ld e, $e0                                        ; $5894: $1e $e0
	jr z, @-$27                                      ; $5896: $28 $d7

	ret nz                                           ; $5898: $c0

	set 0, c                                         ; $5899: $cb $c1
	dec b                                            ; $589b: $05
	push hl                                          ; $589c: $e5
	ld bc, $b119                                     ; $589d: $01 $19 $b1
	ld c, a                                          ; $58a0: $4f
	inc b                                            ; $58a1: $04
	add hl, bc                                       ; $58a2: $09
	pop bc                                           ; $58a3: $c1
	ld l, $c0                                        ; $58a4: $2e $c0
	ld e, $e0                                        ; $58a6: $1e $e0
	ld b, [hl]                                       ; $58a8: $46
	db $d3                                           ; $58a9: $d3
	ret nz                                           ; $58aa: $c0

	jr nz, @-$2e                                     ; $58ab: $20 $d0

	db $d3                                           ; $58ad: $d3
	pop bc                                           ; $58ae: $c1
	dec sp                                           ; $58af: $3b
	pop bc                                           ; $58b0: $c1
	ld d, e                                          ; $58b1: $53
	ret nz                                           ; $58b2: $c0

	inc d                                            ; $58b3: $14
	db $e3                                           ; $58b4: $e3
	nop                                              ; $58b5: $00

jr_07c_58b6:
	dec a                                            ; $58b6: $3d
	ret nz                                           ; $58b7: $c0

	ld bc, $01a0                                     ; $58b8: $01 $a0 $01
	nop                                              ; $58bb: $00
	ld bc, $b2c1                                     ; $58bc: $01 $c1 $b2
	db $e3                                           ; $58bf: $e3
	nop                                              ; $58c0: $00
	ccf                                              ; $58c1: $3f
	ret nz                                           ; $58c2: $c0

	ld bc, $1aa0                                     ; $58c3: $01 $a0 $1a
	nop                                              ; $58c6: $00
	ld de, $09c0                                     ; $58c7: $11 $c0 $09
	db $e3                                           ; $58ca: $e3
	nop                                              ; $58cb: $00
	inc b                                            ; $58cc: $04
	ret nz                                           ; $58cd: $c0

	xor b                                            ; $58ce: $a8
	db $d3                                           ; $58cf: $d3
	ret nz                                           ; $58d0: $c0

	xor e                                            ; $58d1: $ab
	pop de                                           ; $58d2: $d1
	ret nz                                           ; $58d3: $c0

	and l                                            ; $58d4: $a5
	ret nz                                           ; $58d5: $c0

	ld bc, $01a0                                     ; $58d6: $01 $a0 $01
	nop                                              ; $58d9: $00
	rla                                              ; $58da: $17
	ld h, b                                          ; $58db: $60
	add b                                            ; $58dc: $80
	nop                                              ; $58dd: $00
	sub b                                            ; $58de: $90
	and e                                            ; $58df: $a3
	add c                                            ; $58e0: $81
	adc e                                            ; $58e1: $8b
	nop                                              ; $58e2: $00
	nop                                              ; $58e3: $00
	ld [bc], a                                       ; $58e4: $02
	or b                                             ; $58e5: $b0
	db $10                                           ; $58e6: $10
	ld c, a                                          ; $58e7: $4f
	ret nz                                           ; $58e8: $c0

	ld bc, $1aa0                                     ; $58e9: $01 $a0 $1a
	nop                                              ; $58ec: $00
	inc e                                            ; $58ed: $1c
	ret nz                                           ; $58ee: $c0

	ld bc, $01a0                                     ; $58ef: $01 $a0 $01
	nop                                              ; $58f2: $00
	jr z, jr_07c_58b6                                ; $58f3: $28 $c1

	or d                                             ; $58f5: $b2
	db $e3                                           ; $58f6: $e3
	nop                                              ; $58f7: $00
	ld b, b                                          ; $58f8: $40
	ret nz                                           ; $58f9: $c0

	ld bc, $1aa0                                     ; $58fa: $01 $a0 $1a
	nop                                              ; $58fd: $00
	ld a, [hl-]                                      ; $58fe: $3a
	ret nz                                           ; $58ff: $c0

	ld bc, $01a0                                     ; $5900: $01 $a0 $01
	nop                                              ; $5903: $00
	ld b, h                                          ; $5904: $44
	ret nz                                           ; $5905: $c0

	ld bc, $05a0                                     ; $5906: $01 $a0 $05
	nop                                              ; $5909: $00
	ld c, d                                          ; $590a: $4a
	ret nz                                           ; $590b: $c0

	ld bc, $01a0                                     ; $590c: $01 $a0 $01
	nop                                              ; $590f: $00
	ld e, b                                          ; $5910: $58
	ret nz                                           ; $5911: $c0

	ld bc, $05a0                                     ; $5912: $01 $a0 $05
	nop                                              ; $5915: $00
	ld l, e                                          ; $5916: $6b
	ret nz                                           ; $5917: $c0

	ld bc, $01a0                                     ; $5918: $01 $a0 $01
	nop                                              ; $591b: $00
	ld [hl], h                                       ; $591c: $74
	ret nz                                           ; $591d: $c0

	ld bc, $05a0                                     ; $591e: $01 $a0 $05
	nop                                              ; $5921: $00
	add l                                            ; $5922: $85
	ret nz                                           ; $5923: $c0

	ld bc, $01a0                                     ; $5924: $01 $a0 $01
	nop                                              ; $5927: $00
	adc a                                            ; $5928: $8f
	ret nz                                           ; $5929: $c0

	ld bc, $05a0                                     ; $592a: $01 $a0 $05
	nop                                              ; $592d: $00
	sbc a                                            ; $592e: $9f
	pop bc                                           ; $592f: $c1
	ld e, e                                          ; $5930: $5b
	ret nz                                           ; $5931: $c0

	ld bc, $01a0                                     ; $5932: $01 $a0 $01
	nop                                              ; $5935: $00
	xor a                                            ; $5936: $af
	nop                                              ; $5937: $00
	ld b, e                                          ; $5938: $43
	ret nz                                           ; $5939: $c0

	ld bc, $1aa0                                     ; $593a: $01 $a0 $1a
	nop                                              ; $593d: $00
	cp b                                             ; $593e: $b8
	ret nz                                           ; $593f: $c0

	ld bc, $01a0                                     ; $5940: $01 $a0 $01
	nop                                              ; $5943: $00
	ret z                                            ; $5944: $c8

	ret nz                                           ; $5945: $c0

	ld bc, $1aa0                                     ; $5946: $01 $a0 $1a
	nop                                              ; $5949: $00
	push de                                          ; $594a: $d5
	ret nz                                           ; $594b: $c0

	ld bc, $01a0                                     ; $594c: $01 $a0 $01
	nop                                              ; $594f: $00
	ldh [c], a                                       ; $5950: $e2
	pop bc                                           ; $5951: $c1
	or d                                             ; $5952: $b2
	db $e3                                           ; $5953: $e3
	nop                                              ; $5954: $00
	ld b, c                                          ; $5955: $41
	ret nz                                           ; $5956: $c0

	ld bc, $1aa0                                     ; $5957: $01 $a0 $1a
	nop                                              ; $595a: $00
	ldh a, [c]                                       ; $595b: $f2
	ret nz                                           ; $595c: $c0

	ld bc, $01a0                                     ; $595d: $01 $a0 $01
	nop                                              ; $5960: $00
	ei                                               ; $5961: $fb
	ret nz                                           ; $5962: $c0

	ld bc, $05a0                                     ; $5963: $01 $a0 $05
	ld bc, $c000                                     ; $5966: $01 $00 $c0
	ld bc, $01a0                                     ; $5969: $01 $a0 $01
	ld bc, $c00e                                     ; $596c: $01 $0e $c0
	ld bc, $05a0                                     ; $596f: $01 $a0 $05
	ld bc, $c115                                     ; $5972: $01 $15 $c1
	ld e, e                                          ; $5975: $5b
	ret nz                                           ; $5976: $c0

	ld bc, $01a0                                     ; $5977: $01 $a0 $01
	ld bc, $0017                                     ; $597a: $01 $17 $00
	add b                                            ; $597d: $80
	nop                                              ; $597e: $00
	ld a, c                                          ; $597f: $79
	ret nz                                           ; $5980: $c0

	ret nz                                           ; $5981: $c0

	db $d3                                           ; $5982: $d3
	scf                                              ; $5983: $37
	ret nz                                           ; $5984: $c0

	ld bc, $1aa0                                     ; $5985: $01 $a0 $1a
	ld bc, $c01c                                     ; $5988: $01 $1c $c0
	ld bc, $01a0                                     ; $598b: $01 $a0 $01
	ld bc, $c026                                     ; $598e: $01 $26 $c0
	ld bc, $1aa0                                     ; $5991: $01 $a0 $1a
	ld bc, $c02d                                     ; $5994: $01 $2d $c0
	ld bc, $01a0                                     ; $5997: $01 $a0 $01
	ld bc, $c13a                                     ; $599a: $01 $3a $c1
	or d                                             ; $599d: $b2

jr_07c_599e:
	db $e3                                           ; $599e: $e3
	nop                                              ; $599f: $00
	ld b, c                                          ; $59a0: $41
	ret nz                                           ; $59a1: $c0

	ld bc, $1aa0                                     ; $59a2: $01 $a0 $1a
	ld bc, $c04a                                     ; $59a5: $01 $4a $c0
	ld bc, $01a0                                     ; $59a8: $01 $a0 $01
	ld bc, $c053                                     ; $59ab: $01 $53 $c0

jr_07c_59ae:
	ld bc, $05a0                                     ; $59ae: $01 $a0 $05
	ld bc, $c158                                     ; $59b1: $01 $58 $c1
	ld e, e                                          ; $59b4: $5b
	ret nz                                           ; $59b5: $c0

	ld bc, $01a0                                     ; $59b6: $01 $a0 $01
	ld bc, $206a                                     ; $59b9: $01 $6a $20
	add c                                            ; $59bc: $81
	ld bc, $00a6                                     ; $59bd: $01 $a6 $00
	add b                                            ; $59c0: $80
	nop                                              ; $59c1: $00
	ld [hl], b                                       ; $59c2: $70
	ret nz                                           ; $59c3: $c0

	sbc e                                            ; $59c4: $9b
	db $d3                                           ; $59c5: $d3
	ret nz                                           ; $59c6: $c0

	ld e, $e0                                        ; $59c7: $1e $e0
	jr z, jr_07c_599e                                ; $59c9: $28 $d3

	ret nz                                           ; $59cb: $c0

	set 0, c                                         ; $59cc: $cb $c1
	dec b                                            ; $59ce: $05
	push hl                                          ; $59cf: $e5
	ld bc, $b119                                     ; $59d0: $01 $19 $b1
	add hl, bc                                       ; $59d3: $09
	ret nz                                           ; $59d4: $c0

	call nz, $1ec0                                   ; $59d5: $c4 $c0 $1e
	ldh [rDMA], a                                    ; $59d8: $e0 $46
	db $d3                                           ; $59da: $d3
	ret nz                                           ; $59db: $c0

	jr nz, jr_07c_59ae                               ; $59dc: $20 $d0

	db $d3                                           ; $59de: $d3
	pop bc                                           ; $59df: $c1
	dec sp                                           ; $59e0: $3b
	pop bc                                           ; $59e1: $c1
	ld d, e                                          ; $59e2: $53
	ret nz                                           ; $59e3: $c0

	inc d                                            ; $59e4: $14
	db $e3                                           ; $59e5: $e3
	nop                                              ; $59e6: $00
	ld b, e                                          ; $59e7: $43
	ret nz                                           ; $59e8: $c0

	ld bc, $01a0                                     ; $59e9: $01 $a0 $01
	nop                                              ; $59ec: $00
	ld bc, $b2c1                                     ; $59ed: $01 $c1 $b2
	db $e3                                           ; $59f0: $e3
	nop                                              ; $59f1: $00
	ccf                                              ; $59f2: $3f
	ret nz                                           ; $59f3: $c0

	ld bc, $1aa0                                     ; $59f4: $01 $a0 $1a
	nop                                              ; $59f7: $00
	ld de, $09c0                                     ; $59f8: $11 $c0 $09

jr_07c_59fb:
	db $e3                                           ; $59fb: $e3
	nop                                              ; $59fc: $00
	inc b                                            ; $59fd: $04
	pop hl                                           ; $59fe: $e1
	ld [bc], a                                       ; $59ff: $02
	ld bc, $c0c8                                     ; $5a00: $01 $c8 $c0
	ld bc, $01a0                                     ; $5a03: $01 $a0 $01
	nop                                              ; $5a06: $00
	rla                                              ; $5a07: $17
	ret nz                                           ; $5a08: $c0

	ld bc, $1aa0                                     ; $5a09: $01 $a0 $1a
	ld bc, $c076                                     ; $5a0c: $01 $76 $c0
	ld bc, $01a0                                     ; $5a0f: $01 $a0 $01
	ld bc, $e17d                                     ; $5a12: $01 $7d $e1
	ld [bc], a                                       ; $5a15: $02
	inc bc                                           ; $5a16: $03
	dec de                                           ; $5a17: $1b
	ret nz                                           ; $5a18: $c0

	ld bc, $1aa0                                     ; $5a19: $01 $a0 $1a
	ld bc, $c08f                                     ; $5a1c: $01 $8f $c0
	ld bc, $01a0                                     ; $5a1f: $01 $a0 $01
	ld bc, $e196                                     ; $5a22: $01 $96 $e1
	ld [bc], a                                       ; $5a25: $02
	inc bc                                           ; $5a26: $03
	daa                                              ; $5a27: $27
	ret nz                                           ; $5a28: $c0

	ld bc, $05a0                                     ; $5a29: $01 $a0 $05
	ld bc, $c0a2                                     ; $5a2c: $01 $a2 $c0
	ld bc, $01a0                                     ; $5a2f: $01 $a0 $01
	ld bc, $c0ae                                     ; $5a32: $01 $ae $c0
	ld bc, $05a0                                     ; $5a35: $01 $a0 $05
	ld bc, $c0cc                                     ; $5a38: $01 $cc $c0
	ld bc, $01a0                                     ; $5a3b: $01 $a0 $01
	ld bc, $c0d5                                     ; $5a3e: $01 $d5 $c0
	ld bc, $05a0                                     ; $5a41: $01 $a0 $05
	ld bc, wGenericTileDataBytesToCopyUntil21h                                     ; $5a44: $01 $e4 $c0
	ld bc, $01a0                                     ; $5a47: $01 $a0 $01
	ld bc, $e1e9                                     ; $5a4a: $01 $e9 $e1
	ld [bc], a                                       ; $5a4d: $02
	inc bc                                           ; $5a4e: $03
	inc de                                           ; $5a4f: $13
	ret nz                                           ; $5a50: $c0

	ld bc, $05a0                                     ; $5a51: $01 $a0 $05
	ld bc, $e1f3                                     ; $5a54: $01 $f3 $e1
	ld [bc], a                                       ; $5a57: $02
	inc bc                                           ; $5a58: $03
	daa                                              ; $5a59: $27
	ret nz                                           ; $5a5a: $c0

	ld bc, $05a0                                     ; $5a5b: $01 $a0 $05
	ld bc, $c0fa                                     ; $5a5e: $01 $fa $c0
	ld bc, $01a0                                     ; $5a61: $01 $a0 $01
	ld [bc], a                                       ; $5a64: $02

jr_07c_5a65:
	dec b                                            ; $5a65: $05
	pop hl                                           ; $5a66: $e1
	ld [bc], a                                       ; $5a67: $02
	inc bc                                           ; $5a68: $03
	inc de                                           ; $5a69: $13
	ret nz                                           ; $5a6a: $c0

	ld bc, $05a0                                     ; $5a6b: $01 $a0 $05
	ld [bc], a                                       ; $5a6e: $02
	inc c                                            ; $5a6f: $0c
	pop bc                                           ; $5a70: $c1
	ld e, e                                          ; $5a71: $5b
	ret nz                                           ; $5a72: $c0

	ld bc, $01a0                                     ; $5a73: $01 $a0 $01
	ld [bc], a                                       ; $5a76: $02

jr_07c_5a77:
	rla                                              ; $5a77: $17
	jr nz, jr_07c_59fb                               ; $5a78: $20 $81

	ld bc, $01a6                                     ; $5a7a: $01 $a6 $01
	add b                                            ; $5a7d: $80
	nop                                              ; $5a7e: $00
	ld [hl], b                                       ; $5a7f: $70
	add b                                            ; $5a80: $80
	nop                                              ; $5a81: $00
	ld [hl], c                                       ; $5a82: $71
	nop                                              ; $5a83: $00
	add b                                            ; $5a84: $80
	nop                                              ; $5a85: $00
	ld a, c                                          ; $5a86: $79
	ret nz                                           ; $5a87: $c0

	sbc e                                            ; $5a88: $9b
	db $d3                                           ; $5a89: $d3
	ret nz                                           ; $5a8a: $c0

	ret nz                                           ; $5a8b: $c0

	db $d3                                           ; $5a8c: $d3
	ret nz                                           ; $5a8d: $c0

	ld e, $e0                                        ; $5a8e: $1e $e0
	jr z, jr_07c_5a65                                ; $5a90: $28 $d3

	ret nz                                           ; $5a92: $c0

	set 0, c                                         ; $5a93: $cb $c1
	dec b                                            ; $5a95: $05
	push hl                                          ; $5a96: $e5
	ld bc, $b119                                     ; $5a97: $01 $19 $b1
	ld c, a                                          ; $5a9a: $4f
	inc b                                            ; $5a9b: $04
	add hl, bc                                       ; $5a9c: $09
	ret nz                                           ; $5a9d: $c0

	rst AddAOntoHL                                          ; $5a9e: $ef
	ret nz                                           ; $5a9f: $c0

	ld e, $e0                                        ; $5aa0: $1e $e0
	ld b, [hl]                                       ; $5aa2: $46
	pop de                                           ; $5aa3: $d1
	ret nz                                           ; $5aa4: $c0

	jr nz, jr_07c_5a77                               ; $5aa5: $20 $d0

	pop de                                           ; $5aa7: $d1
	pop bc                                           ; $5aa8: $c1
	dec sp                                           ; $5aa9: $3b
	pop bc                                           ; $5aaa: $c1
	ld d, e                                          ; $5aab: $53
	ret nz                                           ; $5aac: $c0

	inc d                                            ; $5aad: $14
	db $e3                                           ; $5aae: $e3
	nop                                              ; $5aaf: $00
	ld b, c                                          ; $5ab0: $41
	ret nz                                           ; $5ab1: $c0

	xor b                                            ; $5ab2: $a8
	pop de                                           ; $5ab3: $d1
	ret nz                                           ; $5ab4: $c0

	ld bc, $01a0                                     ; $5ab5: $01 $a0 $01
	nop                                              ; $5ab8: $00
	ld bc, $7fb0                                     ; $5ab9: $01 $b0 $7f
	ld d, d                                          ; $5abc: $52
	ret nz                                           ; $5abd: $c0

	add hl, bc                                       ; $5abe: $09
	db $e3                                           ; $5abf: $e3
	nop                                              ; $5ac0: $00
	ld b, $c0                                        ; $5ac1: $06 $c0
	ld bc, $1ba0                                     ; $5ac3: $01 $a0 $1b
	nop                                              ; $5ac6: $00
	ld [de], a                                       ; $5ac7: $12
	ret nz                                           ; $5ac8: $c0

	and l                                            ; $5ac9: $a5
	ret nz                                           ; $5aca: $c0

	ld bc, $1ba0                                     ; $5acb: $01 $a0 $1b
	nop                                              ; $5ace: $00
	inc de                                           ; $5acf: $13
	ret nz                                           ; $5ad0: $c0

	ld bc, $01a0                                     ; $5ad1: $01 $a0 $01
	nop                                              ; $5ad4: $00
	dec de                                           ; $5ad5: $1b
	pop hl                                           ; $5ad6: $e1
	ld [bc], a                                       ; $5ad7: $02
	inc bc                                           ; $5ad8: $03
	inc de                                           ; $5ad9: $13
	ret nz                                           ; $5ada: $c0

	ld bc, $1ba0                                     ; $5adb: $01 $a0 $1b
	nop                                              ; $5ade: $00
	add hl, hl                                       ; $5adf: $29
	ret nz                                           ; $5ae0: $c0

	ld bc, $01a0                                     ; $5ae1: $01 $a0 $01
	nop                                              ; $5ae4: $00
	ld [hl], $c0                                     ; $5ae5: $36 $c0
	ld bc, $1ba0                                     ; $5ae7: $01 $a0 $1b
	nop                                              ; $5aea: $00
	ld b, a                                          ; $5aeb: $47
	ret nz                                           ; $5aec: $c0

	ld bc, $01a0                                     ; $5aed: $01 $a0 $01
	nop                                              ; $5af0: $00
	ld d, [hl]                                       ; $5af1: $56
	ret nz                                           ; $5af2: $c0

	ld bc, $1ba0                                     ; $5af3: $01 $a0 $1b
	nop                                              ; $5af6: $00
	ld e, d                                          ; $5af7: $5a
	ret nz                                           ; $5af8: $c0

jr_07c_5af9:
	ld bc, $01a0                                     ; $5af9: $01 $a0 $01
	nop                                              ; $5afc: $00
	ld e, a                                          ; $5afd: $5f
	pop bc                                           ; $5afe: $c1
	or d                                             ; $5aff: $b2
	db $e3                                           ; $5b00: $e3
	nop                                              ; $5b01: $00
	ld [hl+], a                                      ; $5b02: $22
	ret nz                                           ; $5b03: $c0

	ld bc, $1ba0                                     ; $5b04: $01 $a0 $1b
	nop                                              ; $5b07: $00
	ld l, d                                          ; $5b08: $6a
	ret nz                                           ; $5b09: $c0

	ld bc, $03a0                                     ; $5b0a: $01 $a0 $03
	nop                                              ; $5b0d: $00
	ld [hl], l                                       ; $5b0e: $75
	rst $38                                          ; $5b0f: $ff
	ld e, l                                          ; $5b10: $5d
	ret nz                                           ; $5b11: $c0

	ld bc, $01a0                                     ; $5b12: $01 $a0 $01
	nop                                              ; $5b15: $00
	ld a, h                                          ; $5b16: $7c
	ret nz                                           ; $5b17: $c0

	ld bc, $01a0                                     ; $5b18: $01 $a0 $01
	nop                                              ; $5b1b: $00
	add a                                            ; $5b1c: $87
	ret nz                                           ; $5b1d: $c0

	add hl, bc                                       ; $5b1e: $09
	db $e3                                           ; $5b1f: $e3
	nop                                              ; $5b20: $00
	ld b, $c0                                        ; $5b21: $06 $c0
	ld bc, $1ba0                                     ; $5b23: $01 $a0 $1b
	nop                                              ; $5b26: $00
	ld [de], a                                       ; $5b27: $12
	ret nz                                           ; $5b28: $c0

	and l                                            ; $5b29: $a5
	pop bc                                           ; $5b2a: $c1
	or d                                             ; $5b2b: $b2
	db $e3                                           ; $5b2c: $e3
	nop                                              ; $5b2d: $00
	inc hl                                           ; $5b2e: $23
	ret nz                                           ; $5b2f: $c0

	ld bc, $1ba0                                     ; $5b30: $01 $a0 $1b
	nop                                              ; $5b33: $00
	sub [hl]                                         ; $5b34: $96
	ret nz                                           ; $5b35: $c0

	ld bc, $01a0                                     ; $5b36: $01 $a0 $01
	nop                                              ; $5b39: $00
	and d                                            ; $5b3a: $a2
	pop hl                                           ; $5b3b: $e1
	ld [bc], a                                       ; $5b3c: $02
	inc bc                                           ; $5b3d: $03
	inc de                                           ; $5b3e: $13
	ret nz                                           ; $5b3f: $c0

	ld bc, $1ba0                                     ; $5b40: $01 $a0 $1b
	nop                                              ; $5b43: $00
	and a                                            ; $5b44: $a7
	ret nz                                           ; $5b45: $c0

	ld bc, $01a0                                     ; $5b46: $01 $a0 $01
	nop                                              ; $5b49: $00
	xor a                                            ; $5b4a: $af
	pop bc                                           ; $5b4b: $c1
	or d                                             ; $5b4c: $b2
	db $e3                                           ; $5b4d: $e3
	nop                                              ; $5b4e: $00
	inc h                                            ; $5b4f: $24
	ret nz                                           ; $5b50: $c0

	ld bc, $1ba0                                     ; $5b51: $01 $a0 $1b
	nop                                              ; $5b54: $00
	cp d                                             ; $5b55: $ba
	ret nz                                           ; $5b56: $c0

jr_07c_5b57:
	ld bc, $01a0                                     ; $5b57: $01 $a0 $01
	nop                                              ; $5b5a: $00
	ret z                                            ; $5b5b: $c8

	ret nz                                           ; $5b5c: $c0

	ld bc, $03a0                                     ; $5b5d: $01 $a0 $03
	nop                                              ; $5b60: $00
	call z, $01c0                                    ; $5b61: $cc $c0 $01
	and b                                            ; $5b64: $a0
	ld bc, $d600                                     ; $5b65: $01 $00 $d6
	ret nz                                           ; $5b68: $c0

jr_07c_5b69:
	ld bc, $03a0                                     ; $5b69: $01 $a0 $03
	nop                                              ; $5b6c: $00
	db $e4                                           ; $5b6d: $e4
	pop bc                                           ; $5b6e: $c1
	ld e, e                                          ; $5b6f: $5b
	ret nz                                           ; $5b70: $c0

	ld bc, $01a0                                     ; $5b71: $01 $a0 $01
	nop                                              ; $5b74: $00
	db $ed                                           ; $5b75: $ed
	jr nz, jr_07c_5af9                               ; $5b76: $20 $81

	ld bc, $00a6                                     ; $5b78: $01 $a6 $00
	add b                                            ; $5b7b: $80
	nop                                              ; $5b7c: $00
	ld l, l                                          ; $5b7d: $6d
	ret nz                                           ; $5b7e: $c0

	sbc e                                            ; $5b7f: $9b
	pop de                                           ; $5b80: $d1
	ret nz                                           ; $5b81: $c0

	ld e, $e0                                        ; $5b82: $1e $e0
	jr z, jr_07c_5b57                                ; $5b84: $28 $d1

	ret nz                                           ; $5b86: $c0

	set 0, c                                         ; $5b87: $cb $c1
	dec b                                            ; $5b89: $05
	push hl                                          ; $5b8a: $e5
	ld bc, $b119                                     ; $5b8b: $01 $19 $b1
	add hl, bc                                       ; $5b8e: $09
	ret nz                                           ; $5b8f: $c0

	jp c, $1ec0                                      ; $5b90: $da $c0 $1e

	ldh [rDMA], a                                    ; $5b93: $e0 $46
	pop de                                           ; $5b95: $d1
	ret nz                                           ; $5b96: $c0

	jr nz, jr_07c_5b69                               ; $5b97: $20 $d0

	pop de                                           ; $5b99: $d1
	or b                                             ; $5b9a: $b0
	ld a, a                                          ; $5b9b: $7f
	ld h, b                                          ; $5b9c: $60
	pop bc                                           ; $5b9d: $c1
	dec sp                                           ; $5b9e: $3b
	pop bc                                           ; $5b9f: $c1
	ld d, e                                          ; $5ba0: $53
	ret nz                                           ; $5ba1: $c0

	inc d                                            ; $5ba2: $14
	db $e3                                           ; $5ba3: $e3
	nop                                              ; $5ba4: $00
	inc a                                            ; $5ba5: $3c
	ret nz                                           ; $5ba6: $c0

	ld bc, $01a0                                     ; $5ba7: $01 $a0 $01
	nop                                              ; $5baa: $00
	ld sp, hl                                        ; $5bab: $f9
	ret nz                                           ; $5bac: $c0

	ld de, $00e3                                     ; $5bad: $11 $e3 $00
	ld b, b                                          ; $5bb0: $40
	ret nz                                           ; $5bb1: $c0

	ld bc, $01a0                                     ; $5bb2: $01 $a0 $01
	ld bc, $c00c                                     ; $5bb5: $01 $0c $c0
	add hl, bc                                       ; $5bb8: $09
	db $e3                                           ; $5bb9: $e3
	nop                                              ; $5bba: $00
	ld b, $c0                                        ; $5bbb: $06 $c0
	ld bc, $1ba0                                     ; $5bbd: $01 $a0 $1b
	nop                                              ; $5bc0: $00

Call_07c_5bc1:
	ld [de], a                                       ; $5bc1: $12
	pop hl                                           ; $5bc2: $e1
	ld [bc], a                                       ; $5bc3: $02
	ld bc, $c008                                     ; $5bc4: $01 $08 $c0
	ld bc, $1ba0                                     ; $5bc7: $01 $a0 $1b
	ld bc, $c015                                     ; $5bca: $01 $15 $c0
	ld bc, $01a0                                     ; $5bcd: $01 $a0 $01
	ld bc, $c11a                                     ; $5bd0: $01 $1a $c1
	or d                                             ; $5bd3: $b2
	db $e3                                           ; $5bd4: $e3
	nop                                              ; $5bd5: $00
	ld h, $c0                                        ; $5bd6: $26 $c0
	ld bc, $1ba0                                     ; $5bd8: $01 $a0 $1b
	ld bc, $c02c                                     ; $5bdb: $01 $2c $c0
	ld bc, $01a0                                     ; $5bde: $01 $a0 $01
	ld bc, $c041                                     ; $5be1: $01 $41 $c0
	ld bc, $03a0                                     ; $5be4: $01 $a0 $03
	ld bc, $c04d                                     ; $5be7: $01 $4d $c0
	ld bc, $01a0                                     ; $5bea: $01 $a0 $01
	ld bc, $c063                                     ; $5bed: $01 $63 $c0
	ld bc, $03a0                                     ; $5bf0: $01 $a0 $03
	ld bc, $c16a                                     ; $5bf3: $01 $6a $c1
	ld e, e                                          ; $5bf6: $5b
	ret nz                                           ; $5bf7: $c0

	ld bc, $01a0                                     ; $5bf8: $01 $a0 $01
	ld bc, $ff6d                                     ; $5bfb: $01 $6d $ff
	ld c, [hl]                                       ; $5bfe: $4e
	pop bc                                           ; $5bff: $c1
	dec sp                                           ; $5c00: $3b
	pop bc                                           ; $5c01: $c1
	ld d, e                                          ; $5c02: $53
	ret nz                                           ; $5c03: $c0

	inc d                                            ; $5c04: $14
	db $e3                                           ; $5c05: $e3
	nop                                              ; $5c06: $00
	ld b, b                                          ; $5c07: $40
	ret nz                                           ; $5c08: $c0

	ld bc, $01a0                                     ; $5c09: $01 $a0 $01
	ld bc, $c084                                     ; $5c0c: $01 $84 $c0
	add hl, bc                                       ; $5c0f: $09
	db $e3                                           ; $5c10: $e3
	nop                                              ; $5c11: $00
	ld b, $c0                                        ; $5c12: $06 $c0
	ld bc, $03a0                                     ; $5c14: $01 $a0 $03
	ld bc, $e195                                     ; $5c17: $01 $95 $e1
	ld [bc], a                                       ; $5c1a: $02
	ld bc, $c008                                     ; $5c1b: $01 $08 $c0
	ld bc, $01a0                                     ; $5c1e: $01 $a0 $01
	ld bc, $c099                                     ; $5c21: $01 $99 $c0
	ld bc, $03a0                                     ; $5c24: $01 $a0 $03
	ld bc, $c0a5                                     ; $5c27: $01 $a5 $c0
	ld bc, $01a0                                     ; $5c2a: $01 $a0 $01
	ld bc, $e1b6                                     ; $5c2d: $01 $b6 $e1
	ld [bc], a                                       ; $5c30: $02
	inc bc                                           ; $5c31: $03
	inc de                                           ; $5c32: $13
	ret nz                                           ; $5c33: $c0

jr_07c_5c34:
	ld bc, $03a0                                     ; $5c34: $01 $a0 $03
	ld bc, $c0c6                                     ; $5c37: $01 $c6 $c0
	ld bc, $01a0                                     ; $5c3a: $01 $a0 $01
	ld bc, $c0d4                                     ; $5c3d: $01 $d4 $c0
	ld bc, $03a0                                     ; $5c40: $01 $a0 $03
	ld bc, $c1dc                                     ; $5c43: $01 $dc $c1
	ld e, e                                          ; $5c46: $5b
	ret nz                                           ; $5c47: $c0

	ld bc, $01a0                                     ; $5c48: $01 $a0 $01
	ld bc, $20e5                                     ; $5c4b: $01 $e5 $20
	add c                                            ; $5c4e: $81
	ld bc, $01a6                                     ; $5c4f: $01 $a6 $01
	add b                                            ; $5c52: $80
	nop                                              ; $5c53: $00
	ld l, l                                          ; $5c54: $6d
	add b                                            ; $5c55: $80
	nop                                              ; $5c56: $00
	ld l, [hl]                                       ; $5c57: $6e
	ret nz                                           ; $5c58: $c0

	sbc e                                            ; $5c59: $9b
	pop de                                           ; $5c5a: $d1
	ret nz                                           ; $5c5b: $c0

	ret nz                                           ; $5c5c: $c0

	pop de                                           ; $5c5d: $d1
	ret nz                                           ; $5c5e: $c0

	ld e, $e0                                        ; $5c5f: $1e $e0
	jr z, jr_07c_5c34                                ; $5c61: $28 $d1

	ret nz                                           ; $5c63: $c0

	set 0, c                                         ; $5c64: $cb $c1
	dec b                                            ; $5c66: $05
	push hl                                          ; $5c67: $e5
	ld bc, $b119                                     ; $5c68: $01 $19 $b1
	ld c, a                                          ; $5c6b: $4f
	inc b                                            ; $5c6c: $04
	add hl, bc                                       ; $5c6d: $09
	ret nz                                           ; $5c6e: $c0

	and $c0                                          ; $5c6f: $e6 $c0
	ld e, $e0                                        ; $5c71: $1e $e0
	ld b, [hl]                                       ; $5c73: $46
	jp c, $20c0                                      ; $5c74: $da $c0 $20

	ret nc                                           ; $5c77: $d0

	jp c, Jump_07c_53c1                              ; $5c78: $da $c1 $53

	ret nz                                           ; $5c7b: $c0

	inc d                                            ; $5c7c: $14
	db $e3                                           ; $5c7d: $e3
	nop                                              ; $5c7e: $00
	ld c, h                                          ; $5c7f: $4c
	ret nz                                           ; $5c80: $c0

	ld bc, $01a0                                     ; $5c81: $01 $a0 $01
	nop                                              ; $5c84: $00
	ld bc, $3bc1                                     ; $5c85: $01 $c1 $3b
	ret nz                                           ; $5c88: $c0

	add hl, bc                                       ; $5c89: $09
	db $e3                                           ; $5c8a: $e3
	nop                                              ; $5c8b: $00
	ld [bc], a                                       ; $5c8c: $02
	ret nz                                           ; $5c8d: $c0

	ld bc, $1ca0                                     ; $5c8e: $01 $a0 $1c
	nop                                              ; $5c91: $00
	ld c, $c0                                        ; $5c92: $0e $c0
	xor b                                            ; $5c94: $a8
	jp c, $abc0                                      ; $5c95: $da $c0 $ab

	pop de                                           ; $5c98: $d1
	ret nz                                           ; $5c99: $c0

	and l                                            ; $5c9a: $a5
	ret nz                                           ; $5c9b: $c0

	ld bc, $01a0                                     ; $5c9c: $01 $a0 $01
	nop                                              ; $5c9f: $00
	ld [de], a                                       ; $5ca0: $12
	ret nz                                           ; $5ca1: $c0

	ld bc, $1ca0                                     ; $5ca2: $01 $a0 $1c
	nop                                              ; $5ca5: $00
	inc e                                            ; $5ca6: $1c
	ld h, b                                          ; $5ca7: $60
	add b                                            ; $5ca8: $80
	nop                                              ; $5ca9: $00
	ld a, [hl]                                       ; $5caa: $7e
	ld b, $c0                                        ; $5cab: $06 $c0
	ld bc, $01a0                                     ; $5cad: $01 $a0 $01
	nop                                              ; $5cb0: $00
	ld [hl+], a                                      ; $5cb1: $22
	ld b, $c0                                        ; $5cb2: $06 $c0
	ld bc, $01a0                                     ; $5cb4: $01 $a0 $01

jr_07c_5cb7:
	nop                                              ; $5cb7: $00
	ld l, $c0                                        ; $5cb8: $2e $c0
	ld bc, $1ca0                                     ; $5cba: $01 $a0 $1c
	nop                                              ; $5cbd: $00
	ccf                                              ; $5cbe: $3f
	ret nz                                           ; $5cbf: $c0

	ld bc, $07a0                                     ; $5cc0: $01 $a0 $07
	nop                                              ; $5cc3: $00
	ld c, e                                          ; $5cc4: $4b
	ret nz                                           ; $5cc5: $c0

	ld bc, $06a0                                     ; $5cc6: $01 $a0 $06
	nop                                              ; $5cc9: $00
	ld d, c                                          ; $5cca: $51
	ret nz                                           ; $5ccb: $c0

	or e                                             ; $5ccc: $b3
	pop hl                                           ; $5ccd: $e1
	ld [bc], a                                       ; $5cce: $02
	ld [bc], a                                       ; $5ccf: $02
	call z, $01c0                                    ; $5cd0: $cc $c0 $01
	and b                                            ; $5cd3: $a0
	rlca                                             ; $5cd4: $07
	nop                                              ; $5cd5: $00
	ld d, h                                          ; $5cd6: $54
	ret nz                                           ; $5cd7: $c0

	ld bc, $01a0                                     ; $5cd8: $01 $a0 $01
	nop                                              ; $5cdb: $00
	ld e, e                                          ; $5cdc: $5b
	ret nz                                           ; $5cdd: $c0

	ld bc, $07a0                                     ; $5cde: $01 $a0 $07
	nop                                              ; $5ce1: $00
	ld h, d                                          ; $5ce2: $62
	ld h, b                                          ; $5ce3: $60
	add b                                            ; $5ce4: $80
	nop                                              ; $5ce5: $00
	ld a, [hl]                                       ; $5ce6: $7e
	ld b, $c0                                        ; $5ce7: $06 $c0
	ld bc, $01a0                                     ; $5ce9: $01 $a0 $01
	nop                                              ; $5cec: $00
	ld l, l                                          ; $5ced: $6d
	ld b, $c0                                        ; $5cee: $06 $c0
	ld bc, $01a0                                     ; $5cf0: $01 $a0 $01
	nop                                              ; $5cf3: $00
	add c                                            ; $5cf4: $81
	ret nz                                           ; $5cf5: $c0

	ld bc, $07a0                                     ; $5cf6: $01 $a0 $07
	nop                                              ; $5cf9: $00
	sub a                                            ; $5cfa: $97
	ret nz                                           ; $5cfb: $c0

	or e                                             ; $5cfc: $b3
	ret nz                                           ; $5cfd: $c0

	xor b                                            ; $5cfe: $a8
	jp c, $abc0                                      ; $5cff: $da $c0 $ab

	pop de                                           ; $5d02: $d1
	ret nz                                           ; $5d03: $c0

	and l                                            ; $5d04: $a5
	pop bc                                           ; $5d05: $c1
	or d                                             ; $5d06: $b2
	db $e3                                           ; $5d07: $e3
	nop                                              ; $5d08: $00
	ld l, l                                          ; $5d09: $6d
	ret nz                                           ; $5d0a: $c0

	ld bc, $06a0                                     ; $5d0b: $01 $a0 $06
	nop                                              ; $5d0e: $00
	and e                                            ; $5d0f: $a3
	ret nz                                           ; $5d10: $c0

	ld bc, $07a0                                     ; $5d11: $01 $a0 $07
	nop                                              ; $5d14: $00
	xor [hl]                                         ; $5d15: $ae
	ret nz                                           ; $5d16: $c0

	ld bc, $06a0                                     ; $5d17: $01 $a0 $06
	nop                                              ; $5d1a: $00
	or e                                             ; $5d1b: $b3
	pop bc                                           ; $5d1c: $c1
	ld e, e                                          ; $5d1d: $5b
	ld h, b                                          ; $5d1e: $60
	add b                                            ; $5d1f: $80
	nop                                              ; $5d20: $00
	ld a, [hl]                                       ; $5d21: $7e
	ld b, $c0                                        ; $5d22: $06 $c0
	ld bc, $01a0                                     ; $5d24: $01 $a0 $01
	nop                                              ; $5d27: $00
	ret nz                                           ; $5d28: $c0

	ld b, $c0                                        ; $5d29: $06 $c0
	ld bc, $01a0                                     ; $5d2b: $01 $a0 $01
	nop                                              ; $5d2e: $00
	rst GetHLinHL                                          ; $5d2f: $cf
	nop                                              ; $5d30: $00
	add b                                            ; $5d31: $80
	nop                                              ; $5d32: $00
	ld a, h                                          ; $5d33: $7c
	jr nz, jr_07c_5cb7                               ; $5d34: $20 $81

	ld bc, $c0a6                                     ; $5d36: $01 $a6 $c0
	sbc e                                            ; $5d39: $9b
	jp c, $1ec0                                      ; $5d3a: $da $c0 $1e

	ldh [$28], a                                     ; $5d3d: $e0 $28
	jp c, $cbc0                                      ; $5d3f: $da $c0 $cb

	pop bc                                           ; $5d42: $c1
	dec b                                            ; $5d43: $05
	add c                                            ; $5d44: $81
	adc e                                            ; $5d45: $8b
	ld bc, $0266                                     ; $5d46: $01 $66 $02
	or b                                             ; $5d49: $b0
	inc bc                                           ; $5d4a: $03
	inc b                                            ; $5d4b: $04
	push hl                                          ; $5d4c: $e5
	ld bc, $6015                                     ; $5d4d: $01 $15 $60
	nop                                              ; $5d50: $00
	inc b                                            ; $5d51: $04
	push hl                                          ; $5d52: $e5
	ld bc, $b119                                     ; $5d53: $01 $19 $b1
	ld c, a                                          ; $5d56: $4f
	inc b                                            ; $5d57: $04
	add hl, bc                                       ; $5d58: $09
	daa                                              ; $5d59: $27
	pop bc                                           ; $5d5a: $c1
	cp l                                             ; $5d5b: $bd
	pop de                                           ; $5d5c: $d1
	ret nc                                           ; $5d5d: $d0

	adc a                                            ; $5d5e: $8f
	and b                                            ; $5d5f: $a0
	inc bc                                           ; $5d60: $03
	ldh [rAUD4LEN], a                                ; $5d61: $e0 $20
	ret nc                                           ; $5d63: $d0

	adc a                                            ; $5d64: $8f
	and b                                            ; $5d65: $a0
	inc de                                           ; $5d66: $13
	ldh [rAUD4LEN], a                                ; $5d67: $e0 $20
	ret nc                                           ; $5d69: $d0

	add l                                            ; $5d6a: $85
	and b                                            ; $5d6b: $a0
	inc hl                                           ; $5d6c: $23
	ldh [rAUD4LEN], a                                ; $5d6d: $e0 $20
	ld b, e                                          ; $5d6f: $43
	add b                                            ; $5d70: $80
	and b                                            ; $5d71: $a0
	nop                                              ; $5d72: $00
	add b                                            ; $5d73: $80
	and b                                            ; $5d74: $a0
	ld bc, $0080                                     ; $5d75: $01 $80 $00
	db $db                                           ; $5d78: $db
	add b                                            ; $5d79: $80
	ld [bc], a                                       ; $5d7a: $02
	dec l                                            ; $5d7b: $2d
	pop bc                                           ; $5d7c: $c1
	inc l                                            ; $5d7d: $2c
	db $e4                                           ; $5d7e: $e4
	nop                                              ; $5d7f: $00
	ld [bc], a                                       ; $5d80: $02
	add hl, bc                                       ; $5d81: $09
	dec hl                                           ; $5d82: $2b
	ret nc                                           ; $5d83: $d0

	add h                                            ; $5d84: $84
	ld [bc], a                                       ; $5d85: $02
	ld l, $c0                                        ; $5d86: $2e $c0
	ld a, [$fcfb]                                    ; $5d88: $fa $fb $fc
	add h                                            ; $5d8b: $84
	ld [bc], a                                       ; $5d8c: $02
	ld l, $e0                                        ; $5d8d: $2e $e0
	ld [de], a                                       ; $5d8f: $12
	inc bc                                           ; $5d90: $03
	db $e4                                           ; $5d91: $e4
	inc b                                            ; $5d92: $04
	ld c, b                                          ; $5d93: $48
	add d                                            ; $5d94: $82
	pop bc                                           ; $5d95: $c1
	dec l                                            ; $5d96: $2d
	ld [bc], a                                       ; $5d97: $02
	ret nc                                           ; $5d98: $d0

	pop de                                           ; $5d99: $d1
	inc bc                                           ; $5d9a: $03
	db $e4                                           ; $5d9b: $e4
	inc b                                            ; $5d9c: $04
	ld a, $01                                        ; $5d9d: $3e $01
	jp nc, $e403                                     ; $5d9f: $d2 $03 $e4

	nop                                              ; $5da2: $00
	inc c                                            ; $5da3: $0c
	ld bc, $07d3                                     ; $5da4: $01 $d3 $07
	nop                                              ; $5da7: $00
	add b                                            ; $5da8: $80
	and b                                            ; $5da9: $a0
	nop                                              ; $5daa: $00
	db $e4                                           ; $5dab: $e4
	nop                                              ; $5dac: $00
	ld [bc], a                                       ; $5dad: $02
	inc a                                            ; $5dae: $3c
	ld b, $c0                                        ; $5daf: $06 $c0
	ld bc, $01a0                                     ; $5db1: $01 $a0 $01
	nop                                              ; $5db4: $00
	ld bc, $802f                                     ; $5db5: $01 $2f $80
	and b                                            ; $5db8: $a0
	nop                                              ; $5db9: $00
	jr nz, jr_07c_5dd1                               ; $5dba: $20 $15

	ret nc                                           ; $5dbc: $d0

	adc a                                            ; $5dbd: $8f
	and b                                            ; $5dbe: $a0
	inc bc                                           ; $5dbf: $03
	pop bc                                           ; $5dc0: $c1
	ld l, $d1                                        ; $5dc1: $2e $d1
	ret nc                                           ; $5dc3: $d0

	adc a                                            ; $5dc4: $8f
	and b                                            ; $5dc5: $a0
	inc de                                           ; $5dc6: $13
	pop bc                                           ; $5dc7: $c1
	ld l, $d2                                        ; $5dc8: $2e $d2
	ret nc                                           ; $5dca: $d0

	add l                                            ; $5dcb: $85
	and b                                            ; $5dcc: $a0
	inc hl                                           ; $5dcd: $23
	pop bc                                           ; $5dce: $c1
	ld l, $d3                                        ; $5dcf: $2e $d3

jr_07c_5dd1:
	nop                                              ; $5dd1: $00
	inc sp                                           ; $5dd2: $33
	pop de                                           ; $5dd3: $d1
	jr nz, jr_07c_5de4                               ; $5dd4: $20 $0e

	ret nc                                           ; $5dd6: $d0

	adc a                                            ; $5dd7: $8f
	and b                                            ; $5dd8: $a0
	inc bc                                           ; $5dd9: $03
	pop bc                                           ; $5dda: $c1
	ld l, $d1                                        ; $5ddb: $2e $d1
	ret nc                                           ; $5ddd: $d0

	adc a                                            ; $5dde: $8f
	and b                                            ; $5ddf: $a0
	inc de                                           ; $5de0: $13
	pop bc                                           ; $5de1: $c1
	ld l, $d2                                        ; $5de2: $2e $d2

jr_07c_5de4:
	nop                                              ; $5de4: $00
	jr nz, jr_07c_5e04                               ; $5de5: $20 $1d

	pop bc                                           ; $5de7: $c1
	ld b, d                                          ; $5de8: $42
	adc a                                            ; $5de9: $8f
	and b                                            ; $5dea: $a0
	add hl, hl                                       ; $5deb: $29
	ld h, b                                          ; $5dec: $60
	db $fc                                           ; $5ded: $fc
	add h                                            ; $5dee: $84
	ld [bc], a                                       ; $5def: $02
	ld l, $8f                                        ; $5df0: $2e $8f
	and b                                            ; $5df2: $a0
	add hl, hl                                       ; $5df3: $29
	rlca                                             ; $5df4: $07
	nop                                              ; $5df5: $00
	add b                                            ; $5df6: $80
	and b                                            ; $5df7: $a0
	ld bc, $03e4                                     ; $5df8: $01 $e4 $03
	ldh [rTAC], a                                    ; $5dfb: $e0 $07
	nop                                              ; $5dfd: $00
	add b                                            ; $5dfe: $80
	nop                                              ; $5dff: $00
	db $db                                           ; $5e00: $db
	db $e4                                           ; $5e01: $e4
	ld [bc], a                                       ; $5e02: $02
	ld b, l                                          ; $5e03: $45

jr_07c_5e04:
	ld [$40c2], sp                                   ; $5e04: $08 $c2 $40
	ei                                               ; $5e07: $fb
	rst $38                                          ; $5e08: $ff
	rrca                                             ; $5e09: $0f
	db $fc                                           ; $5e0a: $fc
	adc a                                            ; $5e0b: $8f
	and b                                            ; $5e0c: $a0
	inc bc                                           ; $5e0d: $03
	ret nc                                           ; $5e0e: $d0

	db $fc                                           ; $5e0f: $fc
	adc a                                            ; $5e10: $8f
	and b                                            ; $5e11: $a0
	inc de                                           ; $5e12: $13
	ret nc                                           ; $5e13: $d0

	db $fc                                           ; $5e14: $fc
	add l                                            ; $5e15: $85
	and b                                            ; $5e16: $a0
	inc hl                                           ; $5e17: $23
	ret nc                                           ; $5e18: $d0

	add hl, bc                                       ; $5e19: $09
	nop                                              ; $5e1a: $00
	add hl, bc                                       ; $5e1b: $09
	add hl, bc                                       ; $5e1c: $09
	dec b                                            ; $5e1d: $05
	ret nc                                           ; $5e1e: $d0

	adc a                                            ; $5e1f: $8f
	and b                                            ; $5e20: $a0
	add hl, hl                                       ; $5e21: $29
	ret nc                                           ; $5e22: $d0

	ei                                               ; $5e23: $fb
	rst $38                                          ; $5e24: $ff
	rrca                                             ; $5e25: $0f
	db $fc                                           ; $5e26: $fc
	adc a                                            ; $5e27: $8f
	and b                                            ; $5e28: $a0
	inc bc                                           ; $5e29: $03
	pop de                                           ; $5e2a: $d1
	db $fc                                           ; $5e2b: $fc
	adc a                                            ; $5e2c: $8f
	and b                                            ; $5e2d: $a0
	inc de                                           ; $5e2e: $13
	pop de                                           ; $5e2f: $d1
	db $fc                                           ; $5e30: $fc
	add l                                            ; $5e31: $85
	and b                                            ; $5e32: $a0
	inc hl                                           ; $5e33: $23
	pop de                                           ; $5e34: $d1
	add hl, bc                                       ; $5e35: $09
	nop                                              ; $5e36: $00
	dec bc                                           ; $5e37: $0b
	add hl, bc                                       ; $5e38: $09
	dec b                                            ; $5e39: $05
	ret nc                                           ; $5e3a: $d0

	adc a                                            ; $5e3b: $8f
	and b                                            ; $5e3c: $a0
	add hl, hl                                       ; $5e3d: $29
	pop de                                           ; $5e3e: $d1
	ei                                               ; $5e3f: $fb
	rst $38                                          ; $5e40: $ff
	rrca                                             ; $5e41: $0f
	db $fc                                           ; $5e42: $fc
	adc a                                            ; $5e43: $8f
	and b                                            ; $5e44: $a0
	inc bc                                           ; $5e45: $03
	jp nc, $8ffc                                     ; $5e46: $d2 $fc $8f

	and b                                            ; $5e49: $a0
	inc de                                           ; $5e4a: $13
	jp nc, $85fc                                     ; $5e4b: $d2 $fc $85

	and b                                            ; $5e4e: $a0
	inc hl                                           ; $5e4f: $23
	jp nc, $0009                                     ; $5e50: $d2 $09 $00

	dec c                                            ; $5e53: $0d
	add hl, bc                                       ; $5e54: $09
	dec b                                            ; $5e55: $05
	ret nc                                           ; $5e56: $d0

	adc a                                            ; $5e57: $8f
	and b                                            ; $5e58: $a0
	add hl, hl                                       ; $5e59: $29
	jp nc, $fffb                                     ; $5e5a: $d2 $fb $ff

	rrca                                             ; $5e5d: $0f
	db $fc                                           ; $5e5e: $fc
	adc a                                            ; $5e5f: $8f
	and b                                            ; $5e60: $a0
	inc bc                                           ; $5e61: $03
	db $d3                                           ; $5e62: $d3
	db $fc                                           ; $5e63: $fc
	adc a                                            ; $5e64: $8f
	and b                                            ; $5e65: $a0
	inc de                                           ; $5e66: $13
	db $d3                                           ; $5e67: $d3
	db $fc                                           ; $5e68: $fc
	add l                                            ; $5e69: $85
	and b                                            ; $5e6a: $a0
	inc hl                                           ; $5e6b: $23
	db $d3                                           ; $5e6c: $d3
	add hl, bc                                       ; $5e6d: $09
	nop                                              ; $5e6e: $00
	db $10                                           ; $5e6f: $10
	add hl, bc                                       ; $5e70: $09
	dec b                                            ; $5e71: $05
	ret nc                                           ; $5e72: $d0

	adc a                                            ; $5e73: $8f
	and b                                            ; $5e74: $a0
	add hl, hl                                       ; $5e75: $29
	db $d3                                           ; $5e76: $d3
	ei                                               ; $5e77: $fb
	rst $38                                          ; $5e78: $ff
	rrca                                             ; $5e79: $0f
	db $fc                                           ; $5e7a: $fc
	adc a                                            ; $5e7b: $8f
	and b                                            ; $5e7c: $a0
	inc bc                                           ; $5e7d: $03
	call nc, $8ffc                                   ; $5e7e: $d4 $fc $8f
	and b                                            ; $5e81: $a0
	inc de                                           ; $5e82: $13
	call nc, $85fc                                   ; $5e83: $d4 $fc $85
	and b                                            ; $5e86: $a0
	inc hl                                           ; $5e87: $23
	call nc, $0009                                   ; $5e88: $d4 $09 $00
	ld [de], a                                       ; $5e8b: $12
	add hl, bc                                       ; $5e8c: $09
	dec b                                            ; $5e8d: $05
	ret nc                                           ; $5e8e: $d0

	adc a                                            ; $5e8f: $8f
	and b                                            ; $5e90: $a0
	add hl, hl                                       ; $5e91: $29
	call nc, $fffb                                   ; $5e92: $d4 $fb $ff
	rrca                                             ; $5e95: $0f
	db $fc                                           ; $5e96: $fc
	adc a                                            ; $5e97: $8f
	and b                                            ; $5e98: $a0
	inc bc                                           ; $5e99: $03
	push de                                          ; $5e9a: $d5
	db $fc                                           ; $5e9b: $fc
	adc a                                            ; $5e9c: $8f
	and b                                            ; $5e9d: $a0
	inc de                                           ; $5e9e: $13
	push de                                          ; $5e9f: $d5
	db $fc                                           ; $5ea0: $fc
	add l                                            ; $5ea1: $85
	and b                                            ; $5ea2: $a0
	inc hl                                           ; $5ea3: $23
	push de                                          ; $5ea4: $d5
	add hl, bc                                       ; $5ea5: $09
	nop                                              ; $5ea6: $00
	ld d, $09                                        ; $5ea7: $16 $09
	dec b                                            ; $5ea9: $05
	ret nc                                           ; $5eaa: $d0

	adc a                                            ; $5eab: $8f
	and b                                            ; $5eac: $a0
	add hl, hl                                       ; $5ead: $29
	push de                                          ; $5eae: $d5
	ei                                               ; $5eaf: $fb
	rst $38                                          ; $5eb0: $ff
	rrca                                             ; $5eb1: $0f
	db $fc                                           ; $5eb2: $fc
	adc a                                            ; $5eb3: $8f
	and b                                            ; $5eb4: $a0
	inc bc                                           ; $5eb5: $03
	sub $fc                                          ; $5eb6: $d6 $fc
	adc a                                            ; $5eb8: $8f
	and b                                            ; $5eb9: $a0
	inc de                                           ; $5eba: $13
	sub $fc                                          ; $5ebb: $d6 $fc
	add l                                            ; $5ebd: $85
	and b                                            ; $5ebe: $a0
	inc hl                                           ; $5ebf: $23
	sub $09                                          ; $5ec0: $d6 $09
	nop                                              ; $5ec2: $00
	jr jr_07c_5ece                                   ; $5ec3: $18 $09

	dec b                                            ; $5ec5: $05
	ret nc                                           ; $5ec6: $d0

	adc a                                            ; $5ec7: $8f
	and b                                            ; $5ec8: $a0
	add hl, hl                                       ; $5ec9: $29
	sub $fb                                          ; $5eca: $d6 $fb
	rst $38                                          ; $5ecc: $ff
	rrca                                             ; $5ecd: $0f

jr_07c_5ece:
	db $fc                                           ; $5ece: $fc
	adc a                                            ; $5ecf: $8f
	and b                                            ; $5ed0: $a0
	inc bc                                           ; $5ed1: $03
	rst SubAFromHL                                          ; $5ed2: $d7
	db $fc                                           ; $5ed3: $fc
	adc a                                            ; $5ed4: $8f
	and b                                            ; $5ed5: $a0
	inc de                                           ; $5ed6: $13
	rst SubAFromHL                                          ; $5ed7: $d7
	db $fc                                           ; $5ed8: $fc
	add l                                            ; $5ed9: $85
	and b                                            ; $5eda: $a0
	inc hl                                           ; $5edb: $23
	rst SubAFromHL                                          ; $5edc: $d7
	add hl, bc                                       ; $5edd: $09
	nop                                              ; $5ede: $00
	ld a, [de]                                       ; $5edf: $1a
	add hl, bc                                       ; $5ee0: $09
	dec b                                            ; $5ee1: $05
	ret nc                                           ; $5ee2: $d0

	adc a                                            ; $5ee3: $8f
	and b                                            ; $5ee4: $a0
	add hl, hl                                       ; $5ee5: $29
	rst SubAFromHL                                          ; $5ee6: $d7
	ei                                               ; $5ee7: $fb
	rst $38                                          ; $5ee8: $ff
	rrca                                             ; $5ee9: $0f
	db $fc                                           ; $5eea: $fc
	adc a                                            ; $5eeb: $8f
	and b                                            ; $5eec: $a0
	inc bc                                           ; $5eed: $03
	ret c                                            ; $5eee: $d8

	db $fc                                           ; $5eef: $fc
	adc a                                            ; $5ef0: $8f
	and b                                            ; $5ef1: $a0
	inc de                                           ; $5ef2: $13
	ret c                                            ; $5ef3: $d8

	db $fc                                           ; $5ef4: $fc
	add l                                            ; $5ef5: $85
	and b                                            ; $5ef6: $a0
	inc hl                                           ; $5ef7: $23
	ret c                                            ; $5ef8: $d8

	add hl, bc                                       ; $5ef9: $09
	nop                                              ; $5efa: $00
	inc e                                            ; $5efb: $1c
	add hl, bc                                       ; $5efc: $09
	dec b                                            ; $5efd: $05
	ret nc                                           ; $5efe: $d0

	adc a                                            ; $5eff: $8f
	and b                                            ; $5f00: $a0
	add hl, hl                                       ; $5f01: $29
	ret c                                            ; $5f02: $d8

	ei                                               ; $5f03: $fb
	rst $38                                          ; $5f04: $ff
	rrca                                             ; $5f05: $0f
	db $fc                                           ; $5f06: $fc
	adc a                                            ; $5f07: $8f
	and b                                            ; $5f08: $a0
	inc bc                                           ; $5f09: $03
	reti                                             ; $5f0a: $d9


	db $fc                                           ; $5f0b: $fc
	adc a                                            ; $5f0c: $8f
	and b                                            ; $5f0d: $a0
	inc de                                           ; $5f0e: $13
	reti                                             ; $5f0f: $d9


	db $fc                                           ; $5f10: $fc
	add l                                            ; $5f11: $85
	and b                                            ; $5f12: $a0
	inc hl                                           ; $5f13: $23
	reti                                             ; $5f14: $d9


	add hl, bc                                       ; $5f15: $09
	nop                                              ; $5f16: $00
	ld e, $09                                        ; $5f17: $1e $09
	dec b                                            ; $5f19: $05
	ret nc                                           ; $5f1a: $d0

	adc a                                            ; $5f1b: $8f
	and b                                            ; $5f1c: $a0
	add hl, hl                                       ; $5f1d: $29
	reti                                             ; $5f1e: $d9


	ei                                               ; $5f1f: $fb
	rst $38                                          ; $5f20: $ff
	rrca                                             ; $5f21: $0f
	db $fc                                           ; $5f22: $fc
	adc a                                            ; $5f23: $8f
	and b                                            ; $5f24: $a0
	inc bc                                           ; $5f25: $03
	jp c, $8ffc                                      ; $5f26: $da $fc $8f

	and b                                            ; $5f29: $a0
	inc de                                           ; $5f2a: $13
	jp c, $85fc                                      ; $5f2b: $da $fc $85

	and b                                            ; $5f2e: $a0
	inc hl                                           ; $5f2f: $23
	jp c, $0009                                      ; $5f30: $da $09 $00

	jr nz, jr_07c_5f3e                               ; $5f33: $20 $09

	dec b                                            ; $5f35: $05
	ret nc                                           ; $5f36: $d0

	adc a                                            ; $5f37: $8f
	and b                                            ; $5f38: $a0
	add hl, hl                                       ; $5f39: $29
	jp c, $fffb                                      ; $5f3a: $da $fb $ff

	rrca                                             ; $5f3d: $0f

jr_07c_5f3e:
	db $fc                                           ; $5f3e: $fc
	adc a                                            ; $5f3f: $8f
	and b                                            ; $5f40: $a0
	inc bc                                           ; $5f41: $03
	db $db                                           ; $5f42: $db
	db $fc                                           ; $5f43: $fc
	adc a                                            ; $5f44: $8f
	and b                                            ; $5f45: $a0
	inc de                                           ; $5f46: $13
	db $db                                           ; $5f47: $db
	db $fc                                           ; $5f48: $fc
	add l                                            ; $5f49: $85
	and b                                            ; $5f4a: $a0
	inc hl                                           ; $5f4b: $23
	db $db                                           ; $5f4c: $db
	add hl, bc                                       ; $5f4d: $09
	nop                                              ; $5f4e: $00
	ld [hl+], a                                      ; $5f4f: $22
	add hl, bc                                       ; $5f50: $09
	dec b                                            ; $5f51: $05
	ret nc                                           ; $5f52: $d0

	adc a                                            ; $5f53: $8f
	and b                                            ; $5f54: $a0
	add hl, hl                                       ; $5f55: $29
	db $db                                           ; $5f56: $db
	ei                                               ; $5f57: $fb
	rst $38                                          ; $5f58: $ff
	rrca                                             ; $5f59: $0f
	db $fc                                           ; $5f5a: $fc
	adc a                                            ; $5f5b: $8f
	and b                                            ; $5f5c: $a0
	inc bc                                           ; $5f5d: $03
	call c, $8ffc                                    ; $5f5e: $dc $fc $8f
	and b                                            ; $5f61: $a0
	inc de                                           ; $5f62: $13
	call c, $85fc                                    ; $5f63: $dc $fc $85
	and b                                            ; $5f66: $a0
	inc hl                                           ; $5f67: $23
	call c, $0009                                    ; $5f68: $dc $09 $00
	daa                                              ; $5f6b: $27
	add hl, bc                                       ; $5f6c: $09
	dec b                                            ; $5f6d: $05
	ret nc                                           ; $5f6e: $d0

	adc a                                            ; $5f6f: $8f
	and b                                            ; $5f70: $a0
	add hl, hl                                       ; $5f71: $29
	call c, $fffb                                    ; $5f72: $dc $fb $ff
	rrca                                             ; $5f75: $0f
	db $fc                                           ; $5f76: $fc
	adc a                                            ; $5f77: $8f
	and b                                            ; $5f78: $a0
	inc bc                                           ; $5f79: $03
	db $dd                                           ; $5f7a: $dd
	db $fc                                           ; $5f7b: $fc
	adc a                                            ; $5f7c: $8f
	and b                                            ; $5f7d: $a0
	inc de                                           ; $5f7e: $13
	db $dd                                           ; $5f7f: $dd
	db $fc                                           ; $5f80: $fc
	add l                                            ; $5f81: $85
	and b                                            ; $5f82: $a0
	inc hl                                           ; $5f83: $23
	db $dd                                           ; $5f84: $dd
	add hl, bc                                       ; $5f85: $09
	nop                                              ; $5f86: $00
	dec hl                                           ; $5f87: $2b
	add hl, bc                                       ; $5f88: $09
	dec b                                            ; $5f89: $05
	ret nc                                           ; $5f8a: $d0

	adc a                                            ; $5f8b: $8f
	and b                                            ; $5f8c: $a0
	add hl, hl                                       ; $5f8d: $29
	db $dd                                           ; $5f8e: $dd
	ei                                               ; $5f8f: $fb
	rst $38                                          ; $5f90: $ff
	rrca                                             ; $5f91: $0f
	db $fc                                           ; $5f92: $fc
	adc a                                            ; $5f93: $8f
	and b                                            ; $5f94: $a0
	inc bc                                           ; $5f95: $03
	sbc $fc                                          ; $5f96: $de $fc
	adc a                                            ; $5f98: $8f
	and b                                            ; $5f99: $a0
	inc de                                           ; $5f9a: $13
	sbc $fc                                          ; $5f9b: $de $fc
	add l                                            ; $5f9d: $85
	and b                                            ; $5f9e: $a0
	inc hl                                           ; $5f9f: $23
	sbc $09                                          ; $5fa0: $de $09
	nop                                              ; $5fa2: $00
	jr nc, jr_07c_5fae                               ; $5fa3: $30 $09

	dec b                                            ; $5fa5: $05
	ret nc                                           ; $5fa6: $d0

	adc a                                            ; $5fa7: $8f
	and b                                            ; $5fa8: $a0
	add hl, hl                                       ; $5fa9: $29
	sbc $fb                                          ; $5faa: $de $fb
	rst $38                                          ; $5fac: $ff
	rrca                                             ; $5fad: $0f

jr_07c_5fae:
	db $fc                                           ; $5fae: $fc
	adc a                                            ; $5faf: $8f
	and b                                            ; $5fb0: $a0
	inc bc                                           ; $5fb1: $03
	rst SubAFromDE                                          ; $5fb2: $df
	db $fc                                           ; $5fb3: $fc
	adc a                                            ; $5fb4: $8f
	and b                                            ; $5fb5: $a0
	inc de                                           ; $5fb6: $13
	rst SubAFromDE                                          ; $5fb7: $df
	db $fc                                           ; $5fb8: $fc
	add l                                            ; $5fb9: $85
	and b                                            ; $5fba: $a0
	inc hl                                           ; $5fbb: $23
	rst SubAFromDE                                          ; $5fbc: $df
	add hl, bc                                       ; $5fbd: $09
	nop                                              ; $5fbe: $00
	inc [hl]                                         ; $5fbf: $34
	add hl, bc                                       ; $5fc0: $09
	dec b                                            ; $5fc1: $05
	ret nc                                           ; $5fc2: $d0

	adc a                                            ; $5fc3: $8f
	and b                                            ; $5fc4: $a0
	add hl, hl                                       ; $5fc5: $29
	rst SubAFromDE                                          ; $5fc6: $df
	ei                                               ; $5fc7: $fb
	rst $38                                          ; $5fc8: $ff
	ld [de], a                                       ; $5fc9: $12
	db $fc                                           ; $5fca: $fc
	adc a                                            ; $5fcb: $8f
	and b                                            ; $5fcc: $a0
	inc bc                                           ; $5fcd: $03
	ldh [rAUD1SWEEP], a                              ; $5fce: $e0 $10
	db $fc                                           ; $5fd0: $fc
	adc a                                            ; $5fd1: $8f
	and b                                            ; $5fd2: $a0
	inc de                                           ; $5fd3: $13
	ldh [rAUD1SWEEP], a                              ; $5fd4: $e0 $10
	db $fc                                           ; $5fd6: $fc
	add l                                            ; $5fd7: $85
	and b                                            ; $5fd8: $a0
	inc hl                                           ; $5fd9: $23
	ldh [rAUD1SWEEP], a                              ; $5fda: $e0 $10
	ld a, [bc]                                       ; $5fdc: $0a
	nop                                              ; $5fdd: $00
	ld [hl], $09                                     ; $5fde: $36 $09
	ld b, $d0                                        ; $5fe0: $06 $d0
	adc a                                            ; $5fe2: $8f
	and b                                            ; $5fe3: $a0
	add hl, hl                                       ; $5fe4: $29
	ldh [rAUD1SWEEP], a                              ; $5fe5: $e0 $10
	ei                                               ; $5fe7: $fb
	rst $38                                          ; $5fe8: $ff
	ld [de], a                                       ; $5fe9: $12
	db $fc                                           ; $5fea: $fc
	adc a                                            ; $5feb: $8f
	and b                                            ; $5fec: $a0
	inc bc                                           ; $5fed: $03
	ldh [rAUD1LEN], a                                ; $5fee: $e0 $11
	db $fc                                           ; $5ff0: $fc
	adc a                                            ; $5ff1: $8f
	and b                                            ; $5ff2: $a0
	inc de                                           ; $5ff3: $13
	ldh [rAUD1LEN], a                                ; $5ff4: $e0 $11
	db $fc                                           ; $5ff6: $fc
	add l                                            ; $5ff7: $85
	and b                                            ; $5ff8: $a0
	inc hl                                           ; $5ff9: $23
	ldh [rAUD1LEN], a                                ; $5ffa: $e0 $11
	ld a, [bc]                                       ; $5ffc: $0a
	nop                                              ; $5ffd: $00
	jr c, jr_07c_6009                                ; $5ffe: $38 $09

	ld b, $d0                                        ; $6000: $06 $d0
	adc a                                            ; $6002: $8f
	and b                                            ; $6003: $a0
	add hl, hl                                       ; $6004: $29
	ldh [rAUD1LEN], a                                ; $6005: $e0 $11
	ei                                               ; $6007: $fb
	rst $38                                          ; $6008: $ff

jr_07c_6009:
	ld [de], a                                       ; $6009: $12
	db $fc                                           ; $600a: $fc
	adc a                                            ; $600b: $8f
	and b                                            ; $600c: $a0
	inc bc                                           ; $600d: $03
	ldh [rAUD1LOW], a                                ; $600e: $e0 $13
	db $fc                                           ; $6010: $fc
	adc a                                            ; $6011: $8f
	and b                                            ; $6012: $a0
	inc de                                           ; $6013: $13
	ldh [rAUD1LOW], a                                ; $6014: $e0 $13
	db $fc                                           ; $6016: $fc
	add l                                            ; $6017: $85
	and b                                            ; $6018: $a0
	inc hl                                           ; $6019: $23
	ldh [rAUD1LOW], a                                ; $601a: $e0 $13
	ld a, [bc]                                       ; $601c: $0a
	nop                                              ; $601d: $00
	ld a, [hl-]                                      ; $601e: $3a
	add hl, bc                                       ; $601f: $09
	ld b, $d0                                        ; $6020: $06 $d0
	adc a                                            ; $6022: $8f
	and b                                            ; $6023: $a0
	add hl, hl                                       ; $6024: $29
	ldh [rAUD1LOW], a                                ; $6025: $e0 $13
	ei                                               ; $6027: $fb
	rst $38                                          ; $6028: $ff
	ld [de], a                                       ; $6029: $12
	db $fc                                           ; $602a: $fc
	adc a                                            ; $602b: $8f
	and b                                            ; $602c: $a0
	inc bc                                           ; $602d: $03
	ldh [rAUD1HIGH], a                               ; $602e: $e0 $14
	db $fc                                           ; $6030: $fc
	adc a                                            ; $6031: $8f
	and b                                            ; $6032: $a0
	inc de                                           ; $6033: $13
	ldh [rAUD1HIGH], a                               ; $6034: $e0 $14
	db $fc                                           ; $6036: $fc
	add l                                            ; $6037: $85
	and b                                            ; $6038: $a0
	inc hl                                           ; $6039: $23
	ldh [rAUD1HIGH], a                               ; $603a: $e0 $14
	ld a, [bc]                                       ; $603c: $0a
	nop                                              ; $603d: $00
	ld a, $09                                        ; $603e: $3e $09
	ld b, $d0                                        ; $6040: $06 $d0
	adc a                                            ; $6042: $8f
	and b                                            ; $6043: $a0
	add hl, hl                                       ; $6044: $29
	ldh [rAUD1HIGH], a                               ; $6045: $e0 $14
	add hl, bc                                       ; $6047: $09
	dec d                                            ; $6048: $15
	ret nz                                           ; $6049: $c0

	ld bc, $01a0                                     ; $604a: $01 $a0 $01
	nop                                              ; $604d: $00
	ld b, c                                          ; $604e: $41
	ldh [rP1], a                                     ; $604f: $e0 $00
	set 4, b                                         ; $6051: $cb $e0
	inc bc                                           ; $6053: $03
	scf                                              ; $6054: $37
	ret nz                                           ; $6055: $c0

	ld bc, $01a0                                     ; $6056: $01 $a0 $01
	nop                                              ; $6059: $00
	ld c, c                                          ; $605a: $49
	db $e4                                           ; $605b: $e4
	nop                                              ; $605c: $00
	ld [bc], a                                       ; $605d: $02
	ld [$00a3], sp                                   ; $605e: $08 $a3 $00
	ld e, c                                          ; $6061: $59
	add hl, bc                                       ; $6062: $09
	add hl, bc                                       ; $6063: $09
	ret nz                                           ; $6064: $c0

	ld bc, $01a0                                     ; $6065: $01 $a0 $01
	nop                                              ; $6068: $00
	ld h, b                                          ; $6069: $60
	db $e4                                           ; $606a: $e4
	nop                                              ; $606b: $00
	sbc b                                            ; $606c: $98
	nop                                              ; $606d: $00
	ld l, [hl]                                       ; $606e: $6e
	inc c                                            ; $606f: $0c
	sub d                                            ; $6070: $92
	add b                                            ; $6071: $80
	and b                                            ; $6072: $a0
	nop                                              ; $6073: $00
	jr nc, jr_07c_60b6                               ; $6074: $30 $40

	ret nz                                           ; $6076: $c0

	ld bc, $01a0                                     ; $6077: $01 $a0 $01
	nop                                              ; $607a: $00
	ld [hl], h                                       ; $607b: $74
	add d                                            ; $607c: $82
	adc a                                            ; $607d: $8f
	and b                                            ; $607e: $a0
	add hl, hl                                       ; $607f: $29
	inc bc                                           ; $6080: $03
	adc a                                            ; $6081: $8f
	and b                                            ; $6082: $a0
	inc bc                                           ; $6083: $03
	inc d                                            ; $6084: $14
	ret nc                                           ; $6085: $d0

	adc a                                            ; $6086: $8f
	and b                                            ; $6087: $a0
	inc bc                                           ; $6088: $03
	adc a                                            ; $6089: $8f
	and b                                            ; $608a: $a0
	inc de                                           ; $608b: $13
	ret nc                                           ; $608c: $d0

	adc a                                            ; $608d: $8f
	and b                                            ; $608e: $a0
	inc de                                           ; $608f: $13
	add l                                            ; $6090: $85
	and b                                            ; $6091: $a0
	inc hl                                           ; $6092: $23
	ret nc                                           ; $6093: $d0

	add l                                            ; $6094: $85
	and b                                            ; $6095: $a0
	inc hl                                           ; $6096: $23
	ldh [rAUD4LEN], a                                ; $6097: $e0 $20
	inc bc                                           ; $6099: $03
	adc a                                            ; $609a: $8f
	and b                                            ; $609b: $a0
	inc de                                           ; $609c: $13
	dec c                                            ; $609d: $0d
	ret nc                                           ; $609e: $d0

	adc a                                            ; $609f: $8f
	and b                                            ; $60a0: $a0
	inc de                                           ; $60a1: $13
	add l                                            ; $60a2: $85
	and b                                            ; $60a3: $a0
	inc hl                                           ; $60a4: $23
	ret nc                                           ; $60a5: $d0

	add l                                            ; $60a6: $85
	and b                                            ; $60a7: $a0
	inc hl                                           ; $60a8: $23
	ldh [rAUD4LEN], a                                ; $60a9: $e0 $20
	inc bc                                           ; $60ab: $03
	add l                                            ; $60ac: $85
	and b                                            ; $60ad: $a0
	inc hl                                           ; $60ae: $23
	ld b, $d0                                        ; $60af: $06 $d0
	add l                                            ; $60b1: $85
	and b                                            ; $60b2: $a0
	inc hl                                           ; $60b3: $23
	ldh [rAUD4LEN], a                                ; $60b4: $e0 $20

jr_07c_60b6:
	db $fd                                           ; $60b6: $fd
	ld c, [hl]                                       ; $60b7: $4e
	ld e, $c1                                        ; $60b8: $1e $c1
	ld b, d                                          ; $60ba: $42
	adc a                                            ; $60bb: $8f
	and b                                            ; $60bc: $a0
	add hl, hl                                       ; $60bd: $29
	ld h, b                                          ; $60be: $60
	db $fc                                           ; $60bf: $fc
	add h                                            ; $60c0: $84
	ld [bc], a                                       ; $60c1: $02
	ld l, $8f                                        ; $60c2: $2e $8f
	and b                                            ; $60c4: $a0
	add hl, hl                                       ; $60c5: $29
	inc c                                            ; $60c6: $0c
	ret nz                                           ; $60c7: $c0

	ld bc, $01a0                                     ; $60c8: $01 $a0 $01
	nop                                              ; $60cb: $00
	ld a, a                                          ; $60cc: $7f
	ldh [$03], a                                     ; $60cd: $e0 $03
	jp $03e0                                         ; $60cf: $c3 $e0 $03


	ld l, b                                          ; $60d2: $68
	inc bc                                           ; $60d3: $03
	db $e4                                           ; $60d4: $e4
	inc bc                                           ; $60d5: $03
	ld d, e                                          ; $60d6: $53
	pop de                                           ; $60d7: $d1
	add hl, bc                                       ; $60d8: $09
	add hl, hl                                       ; $60d9: $29
	ld h, b                                          ; $60da: $60
	db $fc                                           ; $60db: $fc
	adc a                                            ; $60dc: $8f
	and b                                            ; $60dd: $a0
	add hl, hl                                       ; $60de: $29
	adc a                                            ; $60df: $8f
	and b                                            ; $60e0: $a0
	inc bc                                           ; $60e1: $03
	rlca                                             ; $60e2: $07
	ret nc                                           ; $60e3: $d0

	adc a                                            ; $60e4: $8f
	and b                                            ; $60e5: $a0
	add hl, hl                                       ; $60e6: $29
	adc a                                            ; $60e7: $8f
	and b                                            ; $60e8: $a0
	inc de                                           ; $60e9: $13
	rlca                                             ; $60ea: $07
	ret nc                                           ; $60eb: $d0

	adc a                                            ; $60ec: $8f
	and b                                            ; $60ed: $a0
	add hl, hl                                       ; $60ee: $29
	adc a                                            ; $60ef: $8f
	and b                                            ; $60f0: $a0
	inc bc                                           ; $60f1: $03
	pop bc                                           ; $60f2: $c1
	ld b, d                                          ; $60f3: $42
	adc a                                            ; $60f4: $8f
	and b                                            ; $60f5: $a0
	add hl, hl                                       ; $60f6: $29
	ret nz                                           ; $60f7: $c0

	ld bc, $01a0                                     ; $60f8: $01 $a0 $01
	nop                                              ; $60fb: $00
	ld a, a                                          ; $60fc: $7f
	ldh [$03], a                                     ; $60fd: $e0 $03
	sub e                                            ; $60ff: $93
	ldh [$03], a                                     ; $6100: $e0 $03
	jr c, jr_07c_610d                                ; $6102: $38 $09

	ld d, $e1                                        ; $6104: $16 $e1
	ld [bc], a                                       ; $6106: $02
	rlca                                             ; $6107: $07
	cp a                                             ; $6108: $bf
	ret nz                                           ; $6109: $c0

	ld bc, $01a0                                     ; $610a: $01 $a0 $01

jr_07c_610d:
	nop                                              ; $610d: $00
	add a                                            ; $610e: $87
	ret nz                                           ; $610f: $c0

	ld bc, $01a0                                     ; $6110: $01 $a0 $01
	nop                                              ; $6113: $00
	adc a                                            ; $6114: $8f
	pop bc                                           ; $6115: $c1
	dec sp                                           ; $6116: $3b
	push hl                                          ; $6117: $e5
	nop                                              ; $6118: $00
	inc e                                            ; $6119: $1c
	or [hl]                                          ; $611a: $b6
	cp [hl]                                          ; $611b: $be
	ret nz                                           ; $611c: $c0

	set 0, c                                         ; $611d: $cb $c1
	ld e, e                                          ; $611f: $5b
	db $fd                                           ; $6120: $fd
	cp b                                             ; $6121: $b8
	adc a                                            ; $6122: $8f
	and b                                            ; $6123: $a0
	add hl, hl                                       ; $6124: $29
	ld bc, $05d0                                     ; $6125: $01 $d0 $05
	ret nz                                           ; $6128: $c0

	rrca                                             ; $6129: $0f
	db $e3                                           ; $612a: $e3
	nop                                              ; $612b: $00
	ld a, l                                          ; $612c: $7d
	ld bc, $0dd1                                     ; $612d: $01 $d1 $0d
	pop hl                                           ; $6130: $e1
	ld [bc], a                                       ; $6131: $02
	inc b                                            ; $6132: $04
	di                                               ; $6133: $f3
	ret nz                                           ; $6134: $c0

	inc c                                            ; $6135: $0c
	ldh [$3c], a                                     ; $6136: $e0 $3c
	ret nz                                           ; $6138: $c0

	dec bc                                           ; $6139: $0b
	db $e3                                           ; $613a: $e3
	nop                                              ; $613b: $00
	dec b                                            ; $613c: $05
	ld bc, $05d2                                     ; $613d: $01 $d2 $05
	ret nz                                           ; $6140: $c0

	rrca                                             ; $6141: $0f
	db $e3                                           ; $6142: $e3
	nop                                              ; $6143: $00
	sbc a                                            ; $6144: $9f
	ld bc, $05d3                                     ; $6145: $01 $d3 $05
	ret nz                                           ; $6148: $c0

	rrca                                             ; $6149: $0f
	db $e3                                           ; $614a: $e3
	nop                                              ; $614b: $00
	xor h                                            ; $614c: $ac
	ld bc, $05d4                                     ; $614d: $01 $d4 $05
	ret nz                                           ; $6150: $c0

	rrca                                             ; $6151: $0f
	db $e3                                           ; $6152: $e3
	nop                                              ; $6153: $00
	xor d                                            ; $6154: $aa
	ld bc, $05d5                                     ; $6155: $01 $d5 $05
	ret nz                                           ; $6158: $c0

	rrca                                             ; $6159: $0f
	db $e3                                           ; $615a: $e3
	nop                                              ; $615b: $00
	or e                                             ; $615c: $b3
	ld bc, $05d6                                     ; $615d: $01 $d6 $05
	ret nz                                           ; $6160: $c0

	rrca                                             ; $6161: $0f
	db $e3                                           ; $6162: $e3
	nop                                              ; $6163: $00
	or l                                             ; $6164: $b5
	ld bc, $05d7                                     ; $6165: $01 $d7 $05
	ret nz                                           ; $6168: $c0

	rrca                                             ; $6169: $0f
	db $e3                                           ; $616a: $e3
	nop                                              ; $616b: $00
	sbc d                                            ; $616c: $9a
	ld bc, $05d8                                     ; $616d: $01 $d8 $05
	ret nz                                           ; $6170: $c0

	rrca                                             ; $6171: $0f
	db $e3                                           ; $6172: $e3
	nop                                              ; $6173: $00
	and h                                            ; $6174: $a4
	ld bc, $05d9                                     ; $6175: $01 $d9 $05
	ret nz                                           ; $6178: $c0

	rrca                                             ; $6179: $0f
	db $e3                                           ; $617a: $e3
	nop                                              ; $617b: $00
	sub a                                            ; $617c: $97
	ld bc, $05da                                     ; $617d: $01 $da $05
	ret nz                                           ; $6180: $c0

	rrca                                             ; $6181: $0f
	db $e3                                           ; $6182: $e3
	nop                                              ; $6183: $00
	cp h                                             ; $6184: $bc
	ld bc, $05db                                     ; $6185: $01 $db $05
	ret nz                                           ; $6188: $c0

	rrca                                             ; $6189: $0f
	db $e3                                           ; $618a: $e3
	nop                                              ; $618b: $00
	cp d                                             ; $618c: $ba
	ld bc, $05dc                                     ; $618d: $01 $dc $05
	ret nz                                           ; $6190: $c0

	rrca                                             ; $6191: $0f
	db $e3                                           ; $6192: $e3
	nop                                              ; $6193: $00
	adc c                                            ; $6194: $89
	ld bc, $05dd                                     ; $6195: $01 $dd $05
	ret nz                                           ; $6198: $c0

	rrca                                             ; $6199: $0f
	db $e3                                           ; $619a: $e3
	nop                                              ; $619b: $00
	or a                                             ; $619c: $b7
	ld bc, $05de                                     ; $619d: $01 $de $05
	ret nz                                           ; $61a0: $c0

	rrca                                             ; $61a1: $0f
	db $e3                                           ; $61a2: $e3
	nop                                              ; $61a3: $00
	sub e                                            ; $61a4: $93
	ld bc, $05df                                     ; $61a5: $01 $df $05
	ret nz                                           ; $61a8: $c0

	rrca                                             ; $61a9: $0f
	db $e3                                           ; $61aa: $e3
	nop                                              ; $61ab: $00
	sub l                                            ; $61ac: $95
	ld [bc], a                                       ; $61ad: $02
	ldh [rAUD1SWEEP], a                              ; $61ae: $e0 $10
	dec b                                            ; $61b0: $05
	ret nz                                           ; $61b1: $c0

	rrca                                             ; $61b2: $0f
	db $e3                                           ; $61b3: $e3
	nop                                              ; $61b4: $00
	or c                                             ; $61b5: $b1
	ld [bc], a                                       ; $61b6: $02
	ldh [rAUD1LEN], a                                ; $61b7: $e0 $11
	dec b                                            ; $61b9: $05
	ret nz                                           ; $61ba: $c0

	rrca                                             ; $61bb: $0f
	db $e3                                           ; $61bc: $e3
	nop                                              ; $61bd: $00
	xor [hl]                                         ; $61be: $ae
	ld [bc], a                                       ; $61bf: $02
	ldh [rAUD1ENV], a                                ; $61c0: $e0 $12
	dec b                                            ; $61c2: $05
	ret nz                                           ; $61c3: $c0

	rrca                                             ; $61c4: $0f
	db $e3                                           ; $61c5: $e3
	nop                                              ; $61c6: $00
	ld a, e                                          ; $61c7: $7b
	ld [bc], a                                       ; $61c8: $02
	ldh [rAUD1LOW], a                                ; $61c9: $e0 $13
	dec b                                            ; $61cb: $05
	ret nz                                           ; $61cc: $c0

	rrca                                             ; $61cd: $0f
	db $e3                                           ; $61ce: $e3
	nop                                              ; $61cf: $00
	xor b                                            ; $61d0: $a8
	ld [bc], a                                       ; $61d1: $02
	ldh [rAUD1HIGH], a                               ; $61d2: $e0 $14
	dec b                                            ; $61d4: $05
	ret nz                                           ; $61d5: $c0

	rrca                                             ; $61d6: $0f
	db $e3                                           ; $61d7: $e3
	nop                                              ; $61d8: $00
	and [hl]                                         ; $61d9: $a6
	add hl, bc                                       ; $61da: $09
	pop bc                                           ; $61db: $c1
	xor l                                            ; $61dc: $ad
	ld b, b                                          ; $61dd: $40
	add b                                            ; $61de: $80
	ld [bc], a                                       ; $61df: $02
	inc sp                                           ; $61e0: $33
	db $fd                                           ; $61e1: $fd
	pop bc                                           ; $61e2: $c1
	ld d, l                                          ; $61e3: $55
	add h                                            ; $61e4: $84
	ld [bc], a                                       ; $61e5: $02
	ld l, $01                                        ; $61e6: $2e $01
	ret nc                                           ; $61e8: $d0

	inc d                                            ; $61e9: $14
	ret nc                                           ; $61ea: $d0

	adc e                                            ; $61eb: $8b
	ld [bc], a                                       ; $61ec: $02
	inc [hl]                                         ; $61ed: $34
	or b                                             ; $61ee: $b0
	ld e, c                                          ; $61ef: $59
	ret nc                                           ; $61f0: $d0

	add h                                            ; $61f1: $84
	nop                                              ; $61f2: $00
	or e                                             ; $61f3: $b3
	ldh [rAUD3HIGH], a                               ; $61f4: $e0 $1e
	ld b, b                                          ; $61f6: $40
	add c                                            ; $61f7: $81
	nop                                              ; $61f8: $00
	ret z                                            ; $61f9: $c8

	nop                                              ; $61fa: $00
	add b                                            ; $61fb: $80
	ld [bc], a                                       ; $61fc: $02
	inc sp                                           ; $61fd: $33
	ld bc, $14d1                                     ; $61fe: $01 $d1 $14
	ret nc                                           ; $6201: $d0

	adc e                                            ; $6202: $8b
	ld [bc], a                                       ; $6203: $02
	inc [hl]                                         ; $6204: $34
	or b                                             ; $6205: $b0
	ld [de], a                                       ; $6206: $12
	ret nc                                           ; $6207: $d0

	add h                                            ; $6208: $84
	nop                                              ; $6209: $00
	or e                                             ; $620a: $b3
	ldh [rAUD3HIGH], a                               ; $620b: $e0 $1e
	ld b, b                                          ; $620d: $40
	add c                                            ; $620e: $81
	nop                                              ; $620f: $00
	ret z                                            ; $6210: $c8

	nop                                              ; $6211: $00
	add b                                            ; $6212: $80
	ld [bc], a                                       ; $6213: $02
	inc sp                                           ; $6214: $33
	ld bc, $0bd2                                     ; $6215: $01 $d2 $0b
	ret nc                                           ; $6218: $d0

	adc e                                            ; $6219: $8b
	ld [bc], a                                       ; $621a: $02
	inc [hl]                                         ; $621b: $34
	or b                                             ; $621c: $b0
	ld e, d                                          ; $621d: $5a
	ret nc                                           ; $621e: $d0

	add h                                            ; $621f: $84
	nop                                              ; $6220: $00
	or e                                             ; $6221: $b3
	jp nc, $d301                                     ; $6222: $d2 $01 $d3

	dec bc                                           ; $6225: $0b
	ret nc                                           ; $6226: $d0

jr_07c_6227:
	adc e                                            ; $6227: $8b
	ld [bc], a                                       ; $6228: $02
	inc [hl]                                         ; $6229: $34
	or b                                             ; $622a: $b0
	inc d                                            ; $622b: $14
	ret nc                                           ; $622c: $d0

	add h                                            ; $622d: $84
	nop                                              ; $622e: $00
	or e                                             ; $622f: $b3
	db $d3                                           ; $6230: $d3
	ld bc, $0bd4                                     ; $6231: $01 $d4 $0b
	ret nc                                           ; $6234: $d0

	adc e                                            ; $6235: $8b
	ld [bc], a                                       ; $6236: $02
	inc [hl]                                         ; $6237: $34
	or b                                             ; $6238: $b0
	ld e, e                                          ; $6239: $5b
	ret nc                                           ; $623a: $d0

	add h                                            ; $623b: $84
	nop                                              ; $623c: $00
	or e                                             ; $623d: $b3
	call nc, $d501                                   ; $623e: $d4 $01 $d5
	dec bc                                           ; $6241: $0b
	ret nc                                           ; $6242: $d0

	adc e                                            ; $6243: $8b
	ld [bc], a                                       ; $6244: $02
	inc [hl]                                         ; $6245: $34
	or b                                             ; $6246: $b0
	ld d, $d0                                        ; $6247: $16 $d0
	add h                                            ; $6249: $84
	nop                                              ; $624a: $00
	or e                                             ; $624b: $b3
	push de                                          ; $624c: $d5
	ld bc, $0bd6                                     ; $624d: $01 $d6 $0b
	ret nc                                           ; $6250: $d0

	adc e                                            ; $6251: $8b
	ld [bc], a                                       ; $6252: $02
	inc [hl]                                         ; $6253: $34
	or b                                             ; $6254: $b0
	jr jr_07c_6227                                   ; $6255: $18 $d0

	add h                                            ; $6257: $84
	nop                                              ; $6258: $00
	or e                                             ; $6259: $b3
	sub $01                                          ; $625a: $d6 $01
	rst SubAFromHL                                          ; $625c: $d7
	dec bc                                           ; $625d: $0b
	ret nc                                           ; $625e: $d0

	adc e                                            ; $625f: $8b
	ld [bc], a                                       ; $6260: $02
	inc [hl]                                         ; $6261: $34
	or b                                             ; $6262: $b0
	inc de                                           ; $6263: $13
	ret nc                                           ; $6264: $d0

	add h                                            ; $6265: $84
	nop                                              ; $6266: $00
	or e                                             ; $6267: $b3
	rst SubAFromHL                                          ; $6268: $d7
	ld bc, $0bd8                                     ; $6269: $01 $d8 $0b
	ret nc                                           ; $626c: $d0

	adc e                                            ; $626d: $8b
	ld [bc], a                                       ; $626e: $02
	inc [hl]                                         ; $626f: $34
	or b                                             ; $6270: $b0
	ld e, h                                          ; $6271: $5c
	ret nc                                           ; $6272: $d0

	add h                                            ; $6273: $84
	nop                                              ; $6274: $00
	or e                                             ; $6275: $b3
	ret c                                            ; $6276: $d8

	ld bc, $0bd9                                     ; $6277: $01 $d9 $0b
	ret nc                                           ; $627a: $d0

	adc e                                            ; $627b: $8b
	ld [bc], a                                       ; $627c: $02
	inc [hl]                                         ; $627d: $34
	or b                                             ; $627e: $b0
	ld e, l                                          ; $627f: $5d
	ret nc                                           ; $6280: $d0

	add h                                            ; $6281: $84
	nop                                              ; $6282: $00
	or e                                             ; $6283: $b3
	reti                                             ; $6284: $d9


	ld bc, $0bda                                     ; $6285: $01 $da $0b
	ret nc                                           ; $6288: $d0

	adc e                                            ; $6289: $8b
	ld [bc], a                                       ; $628a: $02
	inc [hl]                                         ; $628b: $34
	or b                                             ; $628c: $b0
	ld e, [hl]                                       ; $628d: $5e
	ret nc                                           ; $628e: $d0

	add h                                            ; $628f: $84
	nop                                              ; $6290: $00
	or e                                             ; $6291: $b3
	jp c, $db01                                      ; $6292: $da $01 $db

	dec bc                                           ; $6295: $0b
	ret nc                                           ; $6296: $d0

	adc e                                            ; $6297: $8b
	ld [bc], a                                       ; $6298: $02
	inc [hl]                                         ; $6299: $34
	or b                                             ; $629a: $b0
	ld e, a                                          ; $629b: $5f
	ret nc                                           ; $629c: $d0

	add h                                            ; $629d: $84
	nop                                              ; $629e: $00
	or e                                             ; $629f: $b3
	db $db                                           ; $62a0: $db
	ld bc, $0bdc                                     ; $62a1: $01 $dc $0b
	ret nc                                           ; $62a4: $d0

	adc e                                            ; $62a5: $8b
	ld [bc], a                                       ; $62a6: $02
	inc [hl]                                         ; $62a7: $34
	or b                                             ; $62a8: $b0
	ld h, b                                          ; $62a9: $60
	ret nc                                           ; $62aa: $d0

	add h                                            ; $62ab: $84
	nop                                              ; $62ac: $00
	or e                                             ; $62ad: $b3
	call c, $dd01                                    ; $62ae: $dc $01 $dd
	dec bc                                           ; $62b1: $0b
	ret nc                                           ; $62b2: $d0

	adc e                                            ; $62b3: $8b
	ld [bc], a                                       ; $62b4: $02
	inc [hl]                                         ; $62b5: $34
	or b                                             ; $62b6: $b0
	dec d                                            ; $62b7: $15
	ret nc                                           ; $62b8: $d0

	add h                                            ; $62b9: $84
	nop                                              ; $62ba: $00
	or e                                             ; $62bb: $b3
	db $dd                                           ; $62bc: $dd
	ld bc, $0bde                                     ; $62bd: $01 $de $0b
	ret nc                                           ; $62c0: $d0

	adc e                                            ; $62c1: $8b
	ld [bc], a                                       ; $62c2: $02
	inc [hl]                                         ; $62c3: $34
	or b                                             ; $62c4: $b0
	ld h, c                                          ; $62c5: $61
	ret nc                                           ; $62c6: $d0

	add h                                            ; $62c7: $84
	nop                                              ; $62c8: $00
	or e                                             ; $62c9: $b3
	sbc $01                                          ; $62ca: $de $01
	rst SubAFromDE                                          ; $62cc: $df
	dec bc                                           ; $62cd: $0b
	ret nc                                           ; $62ce: $d0

	adc e                                            ; $62cf: $8b
	ld [bc], a                                       ; $62d0: $02
	inc [hl]                                         ; $62d1: $34
	or b                                             ; $62d2: $b0
	ld h, d                                          ; $62d3: $62
	ret nc                                           ; $62d4: $d0

	add h                                            ; $62d5: $84
	nop                                              ; $62d6: $00
	or e                                             ; $62d7: $b3
	rst SubAFromDE                                          ; $62d8: $df
	ld [bc], a                                       ; $62d9: $02
	ldh [rAUD1SWEEP], a                              ; $62da: $e0 $10
	db $10                                           ; $62dc: $10
	ret nc                                           ; $62dd: $d0

	adc e                                            ; $62de: $8b
	ld [bc], a                                       ; $62df: $02
	inc [hl]                                         ; $62e0: $34
	or b                                             ; $62e1: $b0
	ld h, e                                          ; $62e2: $63
	ret nc                                           ; $62e3: $d0

	add h                                            ; $62e4: $84
	nop                                              ; $62e5: $00
	or e                                             ; $62e6: $b3
	ldh [rAUD1SWEEP], a                              ; $62e7: $e0 $10
	nop                                              ; $62e9: $00
	add b                                            ; $62ea: $80
	ld [bc], a                                       ; $62eb: $02
	inc sp                                           ; $62ec: $33
	ld [bc], a                                       ; $62ed: $02
	ldh [rAUD1LEN], a                                ; $62ee: $e0 $11
	db $10                                           ; $62f0: $10
	ret nc                                           ; $62f1: $d0

	adc e                                            ; $62f2: $8b
	ld [bc], a                                       ; $62f3: $02
	inc [hl]                                         ; $62f4: $34
	or b                                             ; $62f5: $b0
	ld h, h                                          ; $62f6: $64
	ret nc                                           ; $62f7: $d0

	add h                                            ; $62f8: $84
	nop                                              ; $62f9: $00
	or e                                             ; $62fa: $b3
	ldh [rAUD1LEN], a                                ; $62fb: $e0 $11
	nop                                              ; $62fd: $00
	add b                                            ; $62fe: $80
	ld [bc], a                                       ; $62ff: $02
	inc sp                                           ; $6300: $33
	ld [bc], a                                       ; $6301: $02
	ldh [rAUD1ENV], a                                ; $6302: $e0 $12
	db $10                                           ; $6304: $10
	ret nc                                           ; $6305: $d0

	adc e                                            ; $6306: $8b
	ld [bc], a                                       ; $6307: $02
	inc [hl]                                         ; $6308: $34
	or b                                             ; $6309: $b0
	ld h, l                                          ; $630a: $65
	ret nc                                           ; $630b: $d0

	add h                                            ; $630c: $84
	nop                                              ; $630d: $00
	or e                                             ; $630e: $b3
	ldh [rAUD1ENV], a                                ; $630f: $e0 $12
	nop                                              ; $6311: $00
	add b                                            ; $6312: $80
	ld [bc], a                                       ; $6313: $02
	inc sp                                           ; $6314: $33
	ld [bc], a                                       ; $6315: $02
	ldh [rAUD1LOW], a                                ; $6316: $e0 $13
	inc c                                            ; $6318: $0c
	ret nc                                           ; $6319: $d0

	adc e                                            ; $631a: $8b
	ld [bc], a                                       ; $631b: $02
	inc [hl]                                         ; $631c: $34
	or b                                             ; $631d: $b0
	ld h, [hl]                                       ; $631e: $66
	ret nc                                           ; $631f: $d0

	add h                                            ; $6320: $84
	nop                                              ; $6321: $00
	or e                                             ; $6322: $b3
	ldh [rAUD1LOW], a                                ; $6323: $e0 $13
	ld [bc], a                                       ; $6325: $02
	ldh [rAUD1HIGH], a                               ; $6326: $e0 $14
	db $10                                           ; $6328: $10
	ret nc                                           ; $6329: $d0

	adc e                                            ; $632a: $8b
	ld [bc], a                                       ; $632b: $02
	inc [hl]                                         ; $632c: $34
	or b                                             ; $632d: $b0
	ld h, a                                          ; $632e: $67
	ret nc                                           ; $632f: $d0

	add h                                            ; $6330: $84
	nop                                              ; $6331: $00
	or e                                             ; $6332: $b3
	ldh [rAUD1HIGH], a                               ; $6333: $e0 $14

jr_07c_6335:
	nop                                              ; $6335: $00
	add b                                            ; $6336: $80
	ld [bc], a                                       ; $6337: $02
	inc sp                                           ; $6338: $33
	pop bc                                           ; $6339: $c1
	ld b, d                                          ; $633a: $42
	add h                                            ; $633b: $84
	ld [bc], a                                       ; $633c: $02
	ld l, $61                                        ; $633d: $2e $61
	add b                                            ; $633f: $80
	nop                                              ; $6340: $00
	db $db                                           ; $6341: $db
	inc c                                            ; $6342: $0c
	ret nz                                           ; $6343: $c0

	ld bc, $01a0                                     ; $6344: $01 $a0 $01
	nop                                              ; $6347: $00
	ld a, a                                          ; $6348: $7f
	ldh [rSB], a                                     ; $6349: $e0 $01
	ld b, a                                          ; $634b: $47
	ldh [rP1], a                                     ; $634c: $e0 $00
	db $ec                                           ; $634e: $ec
	add b                                            ; $634f: $80
	and b                                            ; $6350: $a0
	ld bc, $c02a                                     ; $6351: $01 $2a $c0
	ld bc, $01a0                                     ; $6354: $01 $a0 $01
	nop                                              ; $6357: $00
	ld b, c                                          ; $6358: $41
	ldh [rSB], a                                     ; $6359: $e0 $01
	scf                                              ; $635b: $37
	add c                                            ; $635c: $81
	adc e                                            ; $635d: $8b
	nop                                              ; $635e: $00
	ld a, [hl-]                                      ; $635f: $3a
	ld [bc], a                                       ; $6360: $02
	or b                                             ; $6361: $b0
	dec b                                            ; $6362: $05
	inc bc                                           ; $6363: $03
	ldh [rP1], a                                     ; $6364: $e0 $00
	call nc, $1400                                   ; $6366: $d4 $00 $14
	or b                                             ; $6369: $b0
	ld c, b                                          ; $636a: $48
	inc bc                                           ; $636b: $03
	ldh [rP1], a                                     ; $636c: $e0 $00
	call z, $0cff                                    ; $636e: $cc $ff $0c
	ldh [rP1], a                                     ; $6371: $e0 $00
	jr jr_07c_6335                                   ; $6373: $18 $c0

	ld bc, $01a0                                     ; $6375: $01 $a0 $01
	nop                                              ; $6378: $00
	sbc d                                            ; $6379: $9a
	db $e4                                           ; $637a: $e4
	nop                                              ; $637b: $00
	ld e, $0c                                        ; $637c: $1e $0c
	ret nz                                           ; $637e: $c0

	ld bc, $01a0                                     ; $637f: $01 $a0 $01
	nop                                              ; $6382: $00
	ld b, c                                          ; $6383: $41
	ldh [rSB], a                                     ; $6384: $e0 $01
	inc c                                            ; $6386: $0c
	ldh [rP1], a                                     ; $6387: $e0 $00
	or c                                             ; $6389: $b1
	ld c, $c0                                        ; $638a: $0e $c0
	ld bc, $01a0                                     ; $638c: $01 $a0 $01
	nop                                              ; $638f: $00
	xor d                                            ; $6390: $aa
	ei                                               ; $6391: $fb
	add b                                            ; $6392: $80
	ld bc, $03ac                                     ; $6393: $01 $ac $03
	ldh [rSC], a                                     ; $6396: $e0 $02
	rst JumpTable                                          ; $6398: $c7
	ld [$008d], sp                                   ; $6399: $08 $8d $00
	ld e, c                                          ; $639c: $59
	add hl, bc                                       ; $639d: $09
	dec c                                            ; $639e: $0d
	ret nz                                           ; $639f: $c0

	ld bc, $01a0                                     ; $63a0: $01 $a0 $01
	nop                                              ; $63a3: $00
	ld h, b                                          ; $63a4: $60
	nop                                              ; $63a5: $00
	add b                                            ; $63a6: $80
	ld [bc], a                                       ; $63a7: $02
	dec l                                            ; $63a8: $2d
	ldh [rP1], a                                     ; $63a9: $e0 $00
	adc a                                            ; $63ab: $8f
	nop                                              ; $63ac: $00
	ld l, [hl]                                       ; $63ad: $6e
	inc l                                            ; $63ae: $2c
	inc b                                            ; $63af: $04
	nop                                              ; $63b0: $00
	add b                                            ; $63b1: $80
	nop                                              ; $63b2: $00
	db $db                                           ; $63b3: $db
	ld [hl], e                                       ; $63b4: $73
	add b                                            ; $63b5: $80
	and b                                            ; $63b6: $a0
	nop                                              ; $63b7: $00
	jr nc, jr_07c_63fa                               ; $63b8: $30 $40

	ret nz                                           ; $63ba: $c0

	ld bc, $01a0                                     ; $63bb: $01 $a0 $01
	nop                                              ; $63be: $00
	ld [hl], h                                       ; $63bf: $74
	add d                                            ; $63c0: $82
	adc a                                            ; $63c1: $8f
	and b                                            ; $63c2: $a0
	add hl, hl                                       ; $63c3: $29
	inc bc                                           ; $63c4: $03
	adc a                                            ; $63c5: $8f

jr_07c_63c6:
	and b                                            ; $63c6: $a0
	inc bc                                           ; $63c7: $03
	inc d                                            ; $63c8: $14
	ret nc                                           ; $63c9: $d0

	adc a                                            ; $63ca: $8f
	and b                                            ; $63cb: $a0
	inc bc                                           ; $63cc: $03
	adc a                                            ; $63cd: $8f
	and b                                            ; $63ce: $a0
	inc de                                           ; $63cf: $13
	ret nc                                           ; $63d0: $d0

	adc a                                            ; $63d1: $8f
	and b                                            ; $63d2: $a0
	inc de                                           ; $63d3: $13
	add l                                            ; $63d4: $85
	and b                                            ; $63d5: $a0
	inc hl                                           ; $63d6: $23
	ret nc                                           ; $63d7: $d0

	add l                                            ; $63d8: $85
	and b                                            ; $63d9: $a0
	inc hl                                           ; $63da: $23
	ldh [rAUD4LEN], a                                ; $63db: $e0 $20
	inc bc                                           ; $63dd: $03
	adc a                                            ; $63de: $8f
	and b                                            ; $63df: $a0
	inc de                                           ; $63e0: $13
	dec c                                            ; $63e1: $0d
	ret nc                                           ; $63e2: $d0

	adc a                                            ; $63e3: $8f
	and b                                            ; $63e4: $a0
	inc de                                           ; $63e5: $13
	add l                                            ; $63e6: $85
	and b                                            ; $63e7: $a0
	inc hl                                           ; $63e8: $23
	ret nc                                           ; $63e9: $d0

	add l                                            ; $63ea: $85
	and b                                            ; $63eb: $a0
	inc hl                                           ; $63ec: $23
	ldh [rAUD4LEN], a                                ; $63ed: $e0 $20
	inc bc                                           ; $63ef: $03
	add l                                            ; $63f0: $85
	and b                                            ; $63f1: $a0
	inc hl                                           ; $63f2: $23
	ld b, $d0                                        ; $63f3: $06 $d0
	add l                                            ; $63f5: $85
	and b                                            ; $63f6: $a0
	inc hl                                           ; $63f7: $23
	ldh [rAUD4LEN], a                                ; $63f8: $e0 $20

jr_07c_63fa:
	ld a, [$080a]                                    ; $63fa: $fa $0a $08
	pop bc                                           ; $63fd: $c1
	ld b, d                                          ; $63fe: $42
	adc a                                            ; $63ff: $8f
	and b                                            ; $6400: $a0
	add hl, hl                                       ; $6401: $29
	db $e4                                           ; $6402: $e4
	nop                                              ; $6403: $00
	dec h                                            ; $6404: $25
	pop de                                           ; $6405: $d1
	add hl, bc                                       ; $6406: $09
	jr nz, jr_07c_6469                               ; $6407: $20 $60

	db $fc                                           ; $6409: $fc
	adc a                                            ; $640a: $8f
	and b                                            ; $640b: $a0
	add hl, hl                                       ; $640c: $29
	adc a                                            ; $640d: $8f
	and b                                            ; $640e: $a0
	inc bc                                           ; $640f: $03
	rlca                                             ; $6410: $07
	ret nc                                           ; $6411: $d0

	adc a                                            ; $6412: $8f
	and b                                            ; $6413: $a0
	add hl, hl                                       ; $6414: $29
	adc a                                            ; $6415: $8f
	and b                                            ; $6416: $a0
	inc de                                           ; $6417: $13
	rlca                                             ; $6418: $07
	ret nc                                           ; $6419: $d0

	adc a                                            ; $641a: $8f
	and b                                            ; $641b: $a0
	add hl, hl                                       ; $641c: $29
	adc a                                            ; $641d: $8f
	and b                                            ; $641e: $a0
	inc bc                                           ; $641f: $03
	pop bc                                           ; $6420: $c1
	ld b, d                                          ; $6421: $42
	adc a                                            ; $6422: $8f
	and b                                            ; $6423: $a0
	add hl, hl                                       ; $6424: $29
	db $e4                                           ; $6425: $e4
	nop                                              ; $6426: $00
	ld [bc], a                                       ; $6427: $02
	add hl, bc                                       ; $6428: $09
	rrca                                             ; $6429: $0f
	ret nz                                           ; $642a: $c0

	ld bc, $01a0                                     ; $642b: $01 $a0 $01
	nop                                              ; $642e: $00
	ld a, a                                          ; $642f: $7f
	ldh [$fc], a                                     ; $6430: $e0 $fc
	ld [$ffe0], a                                    ; $6432: $ea $e0 $ff
	ld d, [hl]                                       ; $6435: $56
	db $e4                                           ; $6436: $e4
	db $fc                                           ; $6437: $fc
	call z, $6057                                    ; $6438: $cc $57 $60
	db $fc                                           ; $643b: $fc
	add h                                            ; $643c: $84
	nop                                              ; $643d: $00
	or e                                             ; $643e: $b3
	adc a                                            ; $643f: $8f
	nop                                              ; $6440: $00
	cp b                                             ; $6441: $b8
	inc b                                            ; $6442: $04
	jr nz, jr_07c_63c6                               ; $6443: $20 $81

	nop                                              ; $6445: $00
	ret z                                            ; $6446: $c8

	inc b                                            ; $6447: $04
	ld b, b                                          ; $6448: $40
	add c                                            ; $6449: $81
	nop                                              ; $644a: $00
	ret z                                            ; $644b: $c8

	db $fd                                           ; $644c: $fd
	ld b, e                                          ; $644d: $43
	adc e                                            ; $644e: $8b
	nop                                              ; $644f: $00
	ld a, [hl-]                                      ; $6450: $3a
	ld [bc], a                                       ; $6451: $02
	or b                                             ; $6452: $b0
	inc bc                                           ; $6453: $03
	inc b                                            ; $6454: $04
	push hl                                          ; $6455: $e5
	stop                                             ; $6456: $10 $00
	nop                                              ; $6458: $00
	ld [bc], a                                       ; $6459: $02
	or b                                             ; $645a: $b0
	inc b                                            ; $645b: $04
	inc b                                            ; $645c: $04
	push hl                                          ; $645d: $e5
	inc d                                            ; $645e: $14
	nop                                              ; $645f: $00
	nop                                              ; $6460: $00
	ld [bc], a                                       ; $6461: $02
	or b                                             ; $6462: $b0
	dec b                                            ; $6463: $05
	inc b                                            ; $6464: $04
	push hl                                          ; $6465: $e5
	jr jr_07c_6468                                   ; $6466: $18 $00

jr_07c_6468:
	nop                                              ; $6468: $00

jr_07c_6469:
	ld [bc], a                                       ; $6469: $02
	or b                                             ; $646a: $b0
	ld b, $04                                        ; $646b: $06 $04
	push hl                                          ; $646d: $e5
	inc e                                            ; $646e: $1c
	nop                                              ; $646f: $00
	nop                                              ; $6470: $00
	ld [bc], a                                       ; $6471: $02
	or b                                             ; $6472: $b0
	rlca                                             ; $6473: $07
	inc b                                            ; $6474: $04
	push hl                                          ; $6475: $e5
	jr nz, jr_07c_6478                               ; $6476: $20 $00

jr_07c_6478:
	nop                                              ; $6478: $00
	ld [bc], a                                       ; $6479: $02
	or b                                             ; $647a: $b0
	ld [$e504], sp                                   ; $647b: $08 $04 $e5
	inc h                                            ; $647e: $24
	nop                                              ; $647f: $00
	nop                                              ; $6480: $00
	ld [bc], a                                       ; $6481: $02
	or b                                             ; $6482: $b0
	add hl, bc                                       ; $6483: $09
	inc b                                            ; $6484: $04
	push hl                                          ; $6485: $e5
	jr z, jr_07c_6488                                ; $6486: $28 $00

jr_07c_6488:
	nop                                              ; $6488: $00
	ld [bc], a                                       ; $6489: $02
	or b                                             ; $648a: $b0
	ld a, [bc]                                       ; $648b: $0a
	inc b                                            ; $648c: $04
	push hl                                          ; $648d: $e5
	inc l                                            ; $648e: $2c
	nop                                              ; $648f: $00
	nop                                              ; $6490: $00
	pop bc                                           ; $6491: $c1
	set 0, b                                         ; $6492: $cb $c0
	set 7, l                                         ; $6494: $cb $fd
	pop bc                                           ; $6496: $c1
	add $84                                          ; $6497: $c6 $84
	ld [bc], a                                       ; $6499: $02
	ld l, $01                                        ; $649a: $2e $01
	ret nc                                           ; $649c: $d0

	add hl, de                                       ; $649d: $19
	ret nc                                           ; $649e: $d0

	adc e                                            ; $649f: $8b
	ld [bc], a                                       ; $64a0: $02
	inc [hl]                                         ; $64a1: $34
	or b                                             ; $64a2: $b0
	ld e, c                                          ; $64a3: $59
	ret nc                                           ; $64a4: $d0

	add h                                            ; $64a5: $84
	nop                                              ; $64a6: $00
	or e                                             ; $64a7: $b3
	ldh [rAUD3HIGH], a                               ; $64a8: $e0 $1e
	ld b, b                                          ; $64aa: $40
	add c                                            ; $64ab: $81
	nop                                              ; $64ac: $00
	ret z                                            ; $64ad: $c8

	nop                                              ; $64ae: $00
	add b                                            ; $64af: $80
	ld [bc], a                                       ; $64b0: $02
	inc sp                                           ; $64b1: $33
	ret nz                                           ; $64b2: $c0

	rrca                                             ; $64b3: $0f
	db $e3                                           ; $64b4: $e3
	nop                                              ; $64b5: $00
	ld a, l                                          ; $64b6: $7d
	ld bc, $21d1                                     ; $64b7: $01 $d1 $21
	ret nc                                           ; $64ba: $d0

	adc e                                            ; $64bb: $8b
	ld [bc], a                                       ; $64bc: $02
	inc [hl]                                         ; $64bd: $34
	or b                                             ; $64be: $b0
	ld [de], a                                       ; $64bf: $12
	ret nc                                           ; $64c0: $d0

	add h                                            ; $64c1: $84
	nop                                              ; $64c2: $00
	or e                                             ; $64c3: $b3
	ldh [rAUD3HIGH], a                               ; $64c4: $e0 $1e
	ld b, b                                          ; $64c6: $40
	add c                                            ; $64c7: $81
	nop                                              ; $64c8: $00
	ret z                                            ; $64c9: $c8

	nop                                              ; $64ca: $00
	add b                                            ; $64cb: $80
	ld [bc], a                                       ; $64cc: $02
	inc sp                                           ; $64cd: $33
	pop hl                                           ; $64ce: $e1
	ld [bc], a                                       ; $64cf: $02
	inc b                                            ; $64d0: $04
	di                                               ; $64d1: $f3
	ret nz                                           ; $64d2: $c0

	inc c                                            ; $64d3: $0c
	ldh [$3c], a                                     ; $64d4: $e0 $3c
	ret nz                                           ; $64d6: $c0

	dec bc                                           ; $64d7: $0b
	db $e3                                           ; $64d8: $e3
	nop                                              ; $64d9: $00
	dec b                                            ; $64da: $05
	ld bc, $10d2                                     ; $64db: $01 $d2 $10
	ret nc                                           ; $64de: $d0

	adc e                                            ; $64df: $8b
	ld [bc], a                                       ; $64e0: $02
	inc [hl]                                         ; $64e1: $34
	or b                                             ; $64e2: $b0
	ld e, d                                          ; $64e3: $5a
	ret nc                                           ; $64e4: $d0

	add h                                            ; $64e5: $84
	nop                                              ; $64e6: $00
	or e                                             ; $64e7: $b3
	jp nc, $0fc0                                     ; $64e8: $d2 $c0 $0f

	db $e3                                           ; $64eb: $e3
	nop                                              ; $64ec: $00
	sbc a                                            ; $64ed: $9f
	ld bc, $10d3                                     ; $64ee: $01 $d3 $10
	ret nc                                           ; $64f1: $d0

	adc e                                            ; $64f2: $8b
	ld [bc], a                                       ; $64f3: $02
	inc [hl]                                         ; $64f4: $34
	or b                                             ; $64f5: $b0
	inc d                                            ; $64f6: $14
	ret nc                                           ; $64f7: $d0

	add h                                            ; $64f8: $84
	nop                                              ; $64f9: $00
	or e                                             ; $64fa: $b3
	db $d3                                           ; $64fb: $d3
	ret nz                                           ; $64fc: $c0

	rrca                                             ; $64fd: $0f
	db $e3                                           ; $64fe: $e3
	nop                                              ; $64ff: $00
	xor h                                            ; $6500: $ac

jr_07c_6501:
	ld bc, $10d4                                     ; $6501: $01 $d4 $10
	ret nc                                           ; $6504: $d0

	adc e                                            ; $6505: $8b
	ld [bc], a                                       ; $6506: $02
	inc [hl]                                         ; $6507: $34
	or b                                             ; $6508: $b0
	ld e, e                                          ; $6509: $5b
	ret nc                                           ; $650a: $d0

	add h                                            ; $650b: $84
	nop                                              ; $650c: $00
	or e                                             ; $650d: $b3
	call nc, $0fc0                                   ; $650e: $d4 $c0 $0f
	db $e3                                           ; $6511: $e3
	nop                                              ; $6512: $00
	xor d                                            ; $6513: $aa
	ld bc, $10d5                                     ; $6514: $01 $d5 $10
	ret nc                                           ; $6517: $d0

	adc e                                            ; $6518: $8b
	ld [bc], a                                       ; $6519: $02
	inc [hl]                                         ; $651a: $34
	or b                                             ; $651b: $b0
	ld d, $d0                                        ; $651c: $16 $d0
	add h                                            ; $651e: $84
	nop                                              ; $651f: $00
	or e                                             ; $6520: $b3
	push de                                          ; $6521: $d5
	ret nz                                           ; $6522: $c0

	rrca                                             ; $6523: $0f
	db $e3                                           ; $6524: $e3
	nop                                              ; $6525: $00
	or e                                             ; $6526: $b3
	ld bc, $10d6                                     ; $6527: $01 $d6 $10
	ret nc                                           ; $652a: $d0

	adc e                                            ; $652b: $8b
	ld [bc], a                                       ; $652c: $02
	inc [hl]                                         ; $652d: $34
	or b                                             ; $652e: $b0
	jr jr_07c_6501                                   ; $652f: $18 $d0

	add h                                            ; $6531: $84
	nop                                              ; $6532: $00
	or e                                             ; $6533: $b3
	sub $c0                                          ; $6534: $d6 $c0
	rrca                                             ; $6536: $0f
	db $e3                                           ; $6537: $e3
	nop                                              ; $6538: $00
	or l                                             ; $6539: $b5
	ld bc, $10d7                                     ; $653a: $01 $d7 $10
	ret nc                                           ; $653d: $d0

	adc e                                            ; $653e: $8b
	ld [bc], a                                       ; $653f: $02
	inc [hl]                                         ; $6540: $34
	or b                                             ; $6541: $b0
	inc de                                           ; $6542: $13
	ret nc                                           ; $6543: $d0

	add h                                            ; $6544: $84
	nop                                              ; $6545: $00
	or e                                             ; $6546: $b3
	rst SubAFromHL                                          ; $6547: $d7
	ret nz                                           ; $6548: $c0

	rrca                                             ; $6549: $0f
	db $e3                                           ; $654a: $e3
	nop                                              ; $654b: $00
	sbc d                                            ; $654c: $9a
	ld bc, $10d8                                     ; $654d: $01 $d8 $10
	ret nc                                           ; $6550: $d0

	adc e                                            ; $6551: $8b
	ld [bc], a                                       ; $6552: $02
	inc [hl]                                         ; $6553: $34
	or b                                             ; $6554: $b0
	ld e, h                                          ; $6555: $5c
	ret nc                                           ; $6556: $d0

	add h                                            ; $6557: $84
	nop                                              ; $6558: $00
	or e                                             ; $6559: $b3
	ret c                                            ; $655a: $d8

	ret nz                                           ; $655b: $c0

	rrca                                             ; $655c: $0f
	db $e3                                           ; $655d: $e3
	nop                                              ; $655e: $00
	and h                                            ; $655f: $a4
	ld bc, $10d9                                     ; $6560: $01 $d9 $10
	ret nc                                           ; $6563: $d0

	adc e                                            ; $6564: $8b
	ld [bc], a                                       ; $6565: $02
	inc [hl]                                         ; $6566: $34
	or b                                             ; $6567: $b0
	ld e, l                                          ; $6568: $5d
	ret nc                                           ; $6569: $d0

	add h                                            ; $656a: $84
	nop                                              ; $656b: $00
	or e                                             ; $656c: $b3
	reti                                             ; $656d: $d9


	ret nz                                           ; $656e: $c0

	rrca                                             ; $656f: $0f
	db $e3                                           ; $6570: $e3
	nop                                              ; $6571: $00
	sub a                                            ; $6572: $97
	ld bc, $10da                                     ; $6573: $01 $da $10
	ret nc                                           ; $6576: $d0

	adc e                                            ; $6577: $8b
	ld [bc], a                                       ; $6578: $02
	inc [hl]                                         ; $6579: $34
	or b                                             ; $657a: $b0
	ld e, [hl]                                       ; $657b: $5e
	ret nc                                           ; $657c: $d0

	add h                                            ; $657d: $84
	nop                                              ; $657e: $00
	or e                                             ; $657f: $b3
	jp c, $0fc0                                      ; $6580: $da $c0 $0f

	db $e3                                           ; $6583: $e3
	nop                                              ; $6584: $00
	cp h                                             ; $6585: $bc
	ld bc, $10db                                     ; $6586: $01 $db $10
	ret nc                                           ; $6589: $d0

	adc e                                            ; $658a: $8b
	ld [bc], a                                       ; $658b: $02
	inc [hl]                                         ; $658c: $34
	or b                                             ; $658d: $b0
	ld e, a                                          ; $658e: $5f
	ret nc                                           ; $658f: $d0

	add h                                            ; $6590: $84
	nop                                              ; $6591: $00
	or e                                             ; $6592: $b3
	db $db                                           ; $6593: $db
	ret nz                                           ; $6594: $c0

	rrca                                             ; $6595: $0f
	db $e3                                           ; $6596: $e3
	nop                                              ; $6597: $00
	cp d                                             ; $6598: $ba
	ld bc, $10dc                                     ; $6599: $01 $dc $10
	ret nc                                           ; $659c: $d0

	adc e                                            ; $659d: $8b
	ld [bc], a                                       ; $659e: $02
	inc [hl]                                         ; $659f: $34
	or b                                             ; $65a0: $b0
	ld h, b                                          ; $65a1: $60
	ret nc                                           ; $65a2: $d0

	add h                                            ; $65a3: $84
	nop                                              ; $65a4: $00
	or e                                             ; $65a5: $b3
	call c, $0fc0                                    ; $65a6: $dc $c0 $0f
	db $e3                                           ; $65a9: $e3
	nop                                              ; $65aa: $00
	adc c                                            ; $65ab: $89
	ld bc, $10dd                                     ; $65ac: $01 $dd $10
	ret nc                                           ; $65af: $d0

	adc e                                            ; $65b0: $8b
	ld [bc], a                                       ; $65b1: $02
	inc [hl]                                         ; $65b2: $34
	or b                                             ; $65b3: $b0
	dec d                                            ; $65b4: $15
	ret nc                                           ; $65b5: $d0

	add h                                            ; $65b6: $84
	nop                                              ; $65b7: $00
	or e                                             ; $65b8: $b3
	db $dd                                           ; $65b9: $dd
	ret nz                                           ; $65ba: $c0

	rrca                                             ; $65bb: $0f
	db $e3                                           ; $65bc: $e3
	nop                                              ; $65bd: $00
	or a                                             ; $65be: $b7
	ld bc, $10de                                     ; $65bf: $01 $de $10
	ret nc                                           ; $65c2: $d0

	adc e                                            ; $65c3: $8b
	ld [bc], a                                       ; $65c4: $02
	inc [hl]                                         ; $65c5: $34
	or b                                             ; $65c6: $b0
	ld h, c                                          ; $65c7: $61
	ret nc                                           ; $65c8: $d0

	add h                                            ; $65c9: $84
	nop                                              ; $65ca: $00
	or e                                             ; $65cb: $b3
	sbc $c0                                          ; $65cc: $de $c0
	rrca                                             ; $65ce: $0f
	db $e3                                           ; $65cf: $e3
	nop                                              ; $65d0: $00
	sub e                                            ; $65d1: $93
	ld bc, $10df                                     ; $65d2: $01 $df $10
	ret nc                                           ; $65d5: $d0

	adc e                                            ; $65d6: $8b
	ld [bc], a                                       ; $65d7: $02
	inc [hl]                                         ; $65d8: $34
	or b                                             ; $65d9: $b0
	ld h, d                                          ; $65da: $62
	ret nc                                           ; $65db: $d0

	add h                                            ; $65dc: $84
	nop                                              ; $65dd: $00
	or e                                             ; $65de: $b3
	rst SubAFromDE                                          ; $65df: $df
	ret nz                                           ; $65e0: $c0

	rrca                                             ; $65e1: $0f
	db $e3                                           ; $65e2: $e3
	nop                                              ; $65e3: $00
	sub l                                            ; $65e4: $95
	ld [bc], a                                       ; $65e5: $02
	ldh [rAUD1SWEEP], a                              ; $65e6: $e0 $10
	dec d                                            ; $65e8: $15
	ret nc                                           ; $65e9: $d0

	adc e                                            ; $65ea: $8b
	ld [bc], a                                       ; $65eb: $02
	inc [hl]                                         ; $65ec: $34
	or b                                             ; $65ed: $b0
	ld h, e                                          ; $65ee: $63
	ret nc                                           ; $65ef: $d0

	add h                                            ; $65f0: $84
	nop                                              ; $65f1: $00
	or e                                             ; $65f2: $b3
	ldh [rAUD1SWEEP], a                              ; $65f3: $e0 $10
	nop                                              ; $65f5: $00
	add b                                            ; $65f6: $80
	ld [bc], a                                       ; $65f7: $02
	inc sp                                           ; $65f8: $33
	ret nz                                           ; $65f9: $c0

	rrca                                             ; $65fa: $0f
	db $e3                                           ; $65fb: $e3
	nop                                              ; $65fc: $00
	or c                                             ; $65fd: $b1
	ld [bc], a                                       ; $65fe: $02
	ldh [rAUD1LEN], a                                ; $65ff: $e0 $11
	dec d                                            ; $6601: $15
	ret nc                                           ; $6602: $d0

	adc e                                            ; $6603: $8b
	ld [bc], a                                       ; $6604: $02
	inc [hl]                                         ; $6605: $34
	or b                                             ; $6606: $b0
	ld h, h                                          ; $6607: $64
	ret nc                                           ; $6608: $d0

	add h                                            ; $6609: $84
	nop                                              ; $660a: $00
	or e                                             ; $660b: $b3
	ldh [rAUD1LEN], a                                ; $660c: $e0 $11
	nop                                              ; $660e: $00
	add b                                            ; $660f: $80
	ld [bc], a                                       ; $6610: $02
	inc sp                                           ; $6611: $33
	ret nz                                           ; $6612: $c0

	rrca                                             ; $6613: $0f
	db $e3                                           ; $6614: $e3
	nop                                              ; $6615: $00
	xor [hl]                                         ; $6616: $ae
	ld [bc], a                                       ; $6617: $02
	ldh [rAUD1ENV], a                                ; $6618: $e0 $12
	dec d                                            ; $661a: $15
	ret nc                                           ; $661b: $d0

jr_07c_661c:
	adc e                                            ; $661c: $8b
	ld [bc], a                                       ; $661d: $02
	inc [hl]                                         ; $661e: $34
	or b                                             ; $661f: $b0
	ld h, l                                          ; $6620: $65
	ret nc                                           ; $6621: $d0

	add h                                            ; $6622: $84
	nop                                              ; $6623: $00
	or e                                             ; $6624: $b3
	ldh [rAUD1ENV], a                                ; $6625: $e0 $12
	nop                                              ; $6627: $00
	add b                                            ; $6628: $80
	ld [bc], a                                       ; $6629: $02
	inc sp                                           ; $662a: $33
	ret nz                                           ; $662b: $c0

	rrca                                             ; $662c: $0f
	db $e3                                           ; $662d: $e3
	nop                                              ; $662e: $00
	ld a, e                                          ; $662f: $7b
	ld [bc], a                                       ; $6630: $02
	ldh [rAUD1LOW], a                                ; $6631: $e0 $13
	ld de, $8bd0                                     ; $6633: $11 $d0 $8b
	ld [bc], a                                       ; $6636: $02
	inc [hl]                                         ; $6637: $34
	or b                                             ; $6638: $b0
	ld h, [hl]                                       ; $6639: $66
	ret nc                                           ; $663a: $d0

	add h                                            ; $663b: $84
	nop                                              ; $663c: $00
	or e                                             ; $663d: $b3
	ldh [rAUD1LOW], a                                ; $663e: $e0 $13
	ret nz                                           ; $6640: $c0

	rrca                                             ; $6641: $0f
	db $e3                                           ; $6642: $e3
	nop                                              ; $6643: $00
	xor b                                            ; $6644: $a8
	ld [bc], a                                       ; $6645: $02
	ldh [rAUD1HIGH], a                               ; $6646: $e0 $14
	dec d                                            ; $6648: $15
	ret nc                                           ; $6649: $d0

	adc e                                            ; $664a: $8b
	ld [bc], a                                       ; $664b: $02
	inc [hl]                                         ; $664c: $34
	or b                                             ; $664d: $b0
	ld h, a                                          ; $664e: $67
	ret nc                                           ; $664f: $d0

	add h                                            ; $6650: $84
	nop                                              ; $6651: $00
	or e                                             ; $6652: $b3
	ldh [rAUD1HIGH], a                               ; $6653: $e0 $14
	nop                                              ; $6655: $00
	add b                                            ; $6656: $80
	ld [bc], a                                       ; $6657: $02
	inc sp                                           ; $6658: $33
	ret nz                                           ; $6659: $c0

	rrca                                             ; $665a: $0f
	db $e3                                           ; $665b: $e3
	nop                                              ; $665c: $00
	and [hl]                                         ; $665d: $a6
	ld d, c                                          ; $665e: $51
	ei                                               ; $665f: $fb
	cp $08                                           ; $6660: $fe $08
	pop af                                           ; $6662: $f1
	add b                                            ; $6663: $80
	nop                                              ; $6664: $00
	ld e, b                                          ; $6665: $58
	db $fc                                           ; $6666: $fc
	ret nz                                           ; $6667: $c0

	ld l, d                                          ; $6668: $6a
	ret nc                                           ; $6669: $d0

	jr jr_07c_661c                                   ; $666a: $18 $b0

	ld a, a                                          ; $666c: $7f
	inc de                                           ; $666d: $13
	ret nz                                           ; $666e: $c0

	inc c                                            ; $666f: $0c
	ldh [$3c], a                                     ; $6670: $e0 $3c
	pop hl                                           ; $6672: $e1
	ld [bc], a                                       ; $6673: $02
	ld [bc], a                                       ; $6674: $02
	xor b                                            ; $6675: $a8
	nop                                              ; $6676: $00
	add b                                            ; $6677: $80
	nop                                              ; $6678: $00
	ld e, b                                          ; $6679: $58
	pop bc                                           ; $667a: $c1
	ld l, e                                          ; $667b: $6b
	jp nc, $e0de                                     ; $667c: $d2 $de $e0

	nop                                              ; $667f: $00
	ld sp, $00ff                                     ; $6680: $31 $ff $00
	ei                                               ; $6683: $fb
	cp $0e                                           ; $6684: $fe $0e
	pop af                                           ; $6686: $f1
	add b                                            ; $6687: $80
	nop                                              ; $6688: $00
	ld e, c                                          ; $6689: $59
	db $fc                                           ; $668a: $fc
	ret nz                                           ; $668b: $c0

	ld l, d                                          ; $668c: $6a
	pop de                                           ; $668d: $d1
	db $fc                                           ; $668e: $fc
	add h                                            ; $668f: $84
	ld [bc], a                                       ; $6690: $02
	ld l, $e0                                        ; $6691: $2e $e0
	ld de, $b01b                                     ; $6693: $11 $1b $b0
	ld a, a                                          ; $6696: $7f
	ld d, $c0                                        ; $6697: $16 $c0
	inc c                                            ; $6699: $0c
	ldh [$3c], a                                     ; $669a: $e0 $3c
	ret nz                                           ; $669c: $c0

	and a                                            ; $669d: $a7
	sbc $d3                                          ; $669e: $de $d3
	rst SubAFromHL                                          ; $66a0: $d7
	ret nz                                           ; $66a1: $c0

	and l                                            ; $66a2: $a5
	nop                                              ; $66a3: $00
	add b                                            ; $66a4: $80
	nop                                              ; $66a5: $00
	ld e, c                                          ; $66a6: $59
	pop bc                                           ; $66a7: $c1
	ld l, e                                          ; $66a8: $6b
	db $d3                                           ; $66a9: $d3
	sbc $e0                                          ; $66aa: $de $e0
	nop                                              ; $66ac: $00
	inc b                                            ; $66ad: $04
	rst $38                                          ; $66ae: $ff
	nop                                              ; $66af: $00
	ld [hl-], a                                      ; $66b0: $32
	pop bc                                           ; $66b1: $c1
	or d                                             ; $66b2: $b2
	db $e3                                           ; $66b3: $e3
	nop                                              ; $66b4: $00
	dec de                                           ; $66b5: $1b
	ret nz                                           ; $66b6: $c0

	ld bc, $1da0                                     ; $66b7: $01 $a0 $1d
	nop                                              ; $66ba: $00
	or b                                             ; $66bb: $b0
	ret nz                                           ; $66bc: $c0

	ld bc, $01a0                                     ; $66bd: $01 $a0 $01
	nop                                              ; $66c0: $00
	or h                                             ; $66c1: $b4
	pop bc                                           ; $66c2: $c1
	or d                                             ; $66c3: $b2
	db $e3                                           ; $66c4: $e3
	nop                                              ; $66c5: $00
	inc e                                            ; $66c6: $1c
	ret nz                                           ; $66c7: $c0

	ld bc, $1da0                                     ; $66c8: $01 $a0 $1d
	nop                                              ; $66cb: $00
	or a                                             ; $66cc: $b7
	pop bc                                           ; $66cd: $c1
	ld e, e                                          ; $66ce: $5b
	and b                                            ; $66cf: $a0
	add b                                            ; $66d0: $80
	and b                                            ; $66d1: $a0
	ld [bc], a                                       ; $66d2: $02
	nop                                              ; $66d3: $00
	ld b, $c0                                        ; $66d4: $06 $c0
	ld bc, $01a0                                     ; $66d6: $01 $a0 $01
	nop                                              ; $66d9: $00
	cp a                                             ; $66da: $bf
	rst $38                                          ; $66db: $ff
	ld b, $c0                                        ; $66dc: $06 $c0
	ld bc, $01a0                                     ; $66de: $01 $a0 $01
	nop                                              ; $66e1: $00
	bit 1, a                                         ; $66e2: $cb $4f
	inc b                                            ; $66e4: $04
	add hl, bc                                       ; $66e5: $09
	jp Jump_07c_4045                                 ; $66e6: $c3 $45 $40


	add b                                            ; $66e9: $80
	nop                                              ; $66ea: $00
	ld e, a                                          ; $66eb: $5f
	ld b, b                                          ; $66ec: $40
	add b                                            ; $66ed: $80
	ld bc, $fba9                                     ; $66ee: $01 $a9 $fb
	db $fc                                           ; $66f1: $fc
	ret nz                                           ; $66f2: $c0

	add b                                            ; $66f3: $80
	pop de                                           ; $66f4: $d1
	pop bc                                           ; $66f5: $c1
	db $10                                           ; $66f6: $10
	db $fd                                           ; $66f7: $fd
	pop bc                                           ; $66f8: $c1
	dec c                                            ; $66f9: $0d
	ret nz                                           ; $66fa: $c0

	ld h, l                                          ; $66fb: $65
	ld bc, $26d2                                     ; $66fc: $01 $d2 $26
	ei                                               ; $66ff: $fb
	db $fc                                           ; $6700: $fc
	ret nz                                           ; $6701: $c0

	ld l, c                                          ; $6702: $69
	call nc, $0020                                  ; $6703: $d4 $20 $00
	add b                                            ; $6706: $80
	ld [bc], a                                       ; $6707: $02
	ld b, b                                          ; $6708: $40
	nop                                              ; $6709: $00
	add b                                            ; $670a: $80
	ld [bc], a                                       ; $670b: $02
	ld b, c                                          ; $670c: $41
	ret nc                                           ; $670d: $d0

	adc e                                            ; $670e: $8b
	nop                                              ; $670f: $00
	add b                                            ; $6710: $80
	or b                                             ; $6711: $b0
	dec d                                            ; $6712: $15
	ret nc                                           ; $6713: $d0

	adc e                                            ; $6714: $8b
	ld [bc], a                                       ; $6715: $02
	ld b, d                                          ; $6716: $42
	or b                                             ; $6717: $b0
	ld bc, $8bd0                                     ; $6718: $01 $d0 $8b
	ld bc, $b0ea                                     ; $671b: $01 $ea $b0
	cpl                                              ; $671e: $2f
	ret nc                                           ; $671f: $d0

	adc e                                            ; $6720: $8b
	ld bc, $b0f6                                     ; $6721: $01 $f6 $b0
	dec sp                                           ; $6724: $3b
	ld bc, $0cd3                                     ; $6725: $01 $d3 $0c
	ei                                               ; $6728: $fb
	db $fc                                           ; $6729: $fc
	ret nz                                           ; $672a: $c0

	ld l, c                                          ; $672b: $69
	jp nc, $d006                                     ; $672c: $d2 $06 $d0

	adc e                                            ; $672f: $8b
	nop                                              ; $6730: $00
	inc c                                            ; $6731: $0c
	or b                                             ; $6732: $b0
	ld l, b                                          ; $6733: $68
	ld bc, $20d4                                     ; $6734: $01 $d4 $20
	ret nc                                           ; $6737: $d0

	adc e                                            ; $6738: $8b
	ld bc, $b0f6                                     ; $6739: $01 $f6 $b0
	scf                                              ; $673c: $37
	ret nc                                           ; $673d: $d0

	adc e                                            ; $673e: $8b
	nop                                              ; $673f: $00
	inc c                                            ; $6740: $0c
	or b                                             ; $6741: $b0
	ld bc, $83d0                                     ; $6742: $01 $d0 $83
	ld bc, $df72                                     ; $6745: $01 $72 $df
	ret nc                                           ; $6748: $d0

	add e                                            ; $6749: $83
	ld bc, $df76                                     ; $674a: $01 $76 $df
	ret nc                                           ; $674d: $d0

	add e                                            ; $674e: $83
	ld bc, $df7a                                     ; $674f: $01 $7a $df
	ret nc                                           ; $6752: $d0

	add e                                            ; $6753: $83
	ld bc, $df7e                                     ; $6754: $01 $7e $df
	ld bc, $22d5                                     ; $6757: $01 $d5 $22
	ei                                               ; $675a: $fb
	db $fc                                           ; $675b: $fc
	ret nz                                           ; $675c: $c0

	ld l, c                                          ; $675d: $69
	push de                                          ; $675e: $d5
	inc e                                            ; $675f: $1c
	nop                                              ; $6760: $00
	add b                                            ; $6761: $80
	ld [bc], a                                       ; $6762: $02
	ld c, [hl]                                       ; $6763: $4e
	ret nc                                           ; $6764: $d0

	adc e                                            ; $6765: $8b
	nop                                              ; $6766: $00
	add b                                            ; $6767: $80
	or b                                             ; $6768: $b0
	ld [de], a                                       ; $6769: $12
	ret nc                                           ; $676a: $d0

	adc e                                            ; $676b: $8b
	ld bc, $b0ea                                     ; $676c: $01 $ea $b0
	inc l                                            ; $676f: $2c
	ret nc                                           ; $6770: $d0

	adc e                                            ; $6771: $8b
	ld bc, $b0f6                                     ; $6772: $01 $f6 $b0
	jr c, @-$2e                                      ; $6775: $38 $d0

	adc e                                            ; $6777: $8b
	nop                                              ; $6778: $00
	inc c                                            ; $6779: $0c
	or b                                             ; $677a: $b0
	ld l, c                                          ; $677b: $69
	ld bc, $0cd6                                     ; $677c: $01 $d6 $0c
	ei                                               ; $677f: $fb
	db $fc                                           ; $6780: $fc
	ret nz                                           ; $6781: $c0

	ld l, c                                          ; $6782: $69
	db $d3                                           ; $6783: $d3
	ld b, $d0                                        ; $6784: $06 $d0
	adc e                                            ; $6786: $8b
	nop                                              ; $6787: $00
	inc c                                            ; $6788: $0c
	or b                                             ; $6789: $b0
	ld l, d                                          ; $678a: $6a
	ld bc, $0cd7                                     ; $678b: $01 $d7 $0c
	ei                                               ; $678e: $fb
	db $fc                                           ; $678f: $fc
	ret nz                                           ; $6790: $c0

	ld l, c                                          ; $6791: $69
	call nc, $d006                                   ; $6792: $d4 $06 $d0
	adc e                                            ; $6795: $8b
	nop                                              ; $6796: $00
	inc c                                            ; $6797: $0c
	or b                                             ; $6798: $b0
	ld l, e                                          ; $6799: $6b
	ld bc, $2cd9                                     ; $679a: $01 $d9 $2c
	nop                                              ; $679d: $00
	add b                                            ; $679e: $80
	ld bc, $001b                                     ; $679f: $01 $1b $00
	add b                                            ; $67a2: $80
	ld [bc], a                                       ; $67a3: $02
	ld c, a                                          ; $67a4: $4f
	ret nc                                           ; $67a5: $d0

	adc e                                            ; $67a6: $8b
	nop                                              ; $67a7: $00
	add b                                            ; $67a8: $80
	or b                                             ; $67a9: $b0
	inc de                                           ; $67aa: $13
	ret nc                                           ; $67ab: $d0

	adc e                                            ; $67ac: $8b
	ld [bc], a                                       ; $67ad: $02
	ld b, d                                          ; $67ae: $42
	or b                                             ; $67af: $b0
	ld l, h                                          ; $67b0: $6c
	ret nc                                           ; $67b1: $d0

	adc e                                            ; $67b2: $8b
	ld bc, $b0ea                                     ; $67b3: $01 $ea $b0
	dec l                                            ; $67b6: $2d
	ret nc                                           ; $67b7: $d0

	adc e                                            ; $67b8: $8b
	ld bc, $b0f6                                     ; $67b9: $01 $f6 $b0
	add hl, sp                                       ; $67bc: $39
	ei                                               ; $67bd: $fb
	db $fc                                           ; $67be: $fc
	ret nz                                           ; $67bf: $c0

	ld l, c                                          ; $67c0: $69
	db $d3                                           ; $67c1: $d3
	ld b, $d0                                        ; $67c2: $06 $d0
	adc e                                            ; $67c4: $8b
	nop                                              ; $67c5: $00
	inc c                                            ; $67c6: $0c
	or b                                             ; $67c7: $b0
	ld l, l                                          ; $67c8: $6d
	ld bc, $0cdb                                     ; $67c9: $01 $db $0c
	ei                                               ; $67cc: $fb
	db $fc                                           ; $67cd: $fc
	ret nz                                           ; $67ce: $c0

	ld l, c                                          ; $67cf: $69
	call nc, $d006                                   ; $67d0: $d4 $06 $d0
	adc e                                            ; $67d3: $8b
	nop                                              ; $67d4: $00
	inc c                                            ; $67d5: $0c
	or b                                             ; $67d6: $b0
	ld l, d                                          ; $67d7: $6a
	ld bc, $2cdc                                     ; $67d8: $01 $dc $2c
	nop                                              ; $67db: $00
	add b                                            ; $67dc: $80
	ld [bc], a                                       ; $67dd: $02
	ld d, b                                          ; $67de: $50
	nop                                              ; $67df: $00
	add b                                            ; $67e0: $80
	ld [bc], a                                       ; $67e1: $02
	ld d, c                                          ; $67e2: $51
	ret nc                                           ; $67e3: $d0

	adc e                                            ; $67e4: $8b
	nop                                              ; $67e5: $00
	add b                                            ; $67e6: $80
	or b                                             ; $67e7: $b0
	inc d                                            ; $67e8: $14
	ret nc                                           ; $67e9: $d0

	adc e                                            ; $67ea: $8b
	ld [bc], a                                       ; $67eb: $02
	ld b, d                                          ; $67ec: $42
	or b                                             ; $67ed: $b0
	ld bc, $8bd0                                     ; $67ee: $01 $d0 $8b
	ld bc, $b0ea                                     ; $67f1: $01 $ea $b0
	ld l, $d0                                        ; $67f4: $2e $d0
	adc e                                            ; $67f6: $8b
	ld bc, $b0f6                                     ; $67f7: $01 $f6 $b0
	ld a, [hl-]                                      ; $67fa: $3a
	ei                                               ; $67fb: $fb
	db $fc                                           ; $67fc: $fc
	ret nz                                           ; $67fd: $c0

	ld l, c                                          ; $67fe: $69
	jp nc, $d006                                     ; $67ff: $d2 $06 $d0

	adc e                                            ; $6802: $8b
	nop                                              ; $6803: $00
	inc c                                            ; $6804: $0c
	or b                                             ; $6805: $b0
	ld l, [hl]                                       ; $6806: $6e
	ei                                               ; $6807: $fb
	db $fc                                           ; $6808: $fc
	ret nz                                           ; $6809: $c0

	add b                                            ; $680a: $80
	jp nc, $08c1                                     ; $680b: $d2 $c1 $08

	db $fd                                           ; $680e: $fd
	pop bc                                           ; $680f: $c1
	dec b                                            ; $6810: $05
	ret nz                                           ; $6811: $c0

	ld h, l                                          ; $6812: $65
	ld bc, $10d2                                     ; $6813: $01 $d2 $10
	ei                                               ; $6816: $fb
	db $fc                                           ; $6817: $fc
	ret nz                                           ; $6818: $c0

	ld l, c                                          ; $6819: $69
	db $d3                                           ; $681a: $d3
	ld b, $d0                                        ; $681b: $06 $d0
	adc e                                            ; $681d: $8b
	nop                                              ; $681e: $00
	inc c                                            ; $681f: $0c
	or b                                             ; $6820: $b0
	ld l, d                                          ; $6821: $6a
	ld b, b                                          ; $6822: $40
	add b                                            ; $6823: $80
	nop                                              ; $6824: $00
	ld e, e                                          ; $6825: $5b
	ld bc, $2cd3                                     ; $6826: $01 $d3 $2c
	nop                                              ; $6829: $00
	add b                                            ; $682a: $80
	ld [bc], a                                       ; $682b: $02
	ld d, d                                          ; $682c: $52
	nop                                              ; $682d: $00
	add b                                            ; $682e: $80
	ld [bc], a                                       ; $682f: $02
	ld d, e                                          ; $6830: $53
	ret nc                                           ; $6831: $d0

	adc e                                            ; $6832: $8b
	nop                                              ; $6833: $00
	add b                                            ; $6834: $80
	or b                                             ; $6835: $b0
	add hl, de                                       ; $6836: $19
	ret nc                                           ; $6837: $d0

	adc e                                            ; $6838: $8b
	ld [bc], a                                       ; $6839: $02
	ld b, d                                          ; $683a: $42
	or b                                             ; $683b: $b0
	ld l, a                                          ; $683c: $6f
	ret nc                                           ; $683d: $d0

	adc e                                            ; $683e: $8b
	ld bc, $b0ea                                     ; $683f: $01 $ea $b0
	inc sp                                           ; $6842: $33
	ret nc                                           ; $6843: $d0

	adc e                                            ; $6844: $8b
	ld bc, $b0f6                                     ; $6845: $01 $f6 $b0
	ccf                                              ; $6848: $3f
	ei                                               ; $6849: $fb
	db $fc                                           ; $684a: $fc
	ret nz                                           ; $684b: $c0

	ld l, c                                          ; $684c: $69
	jp nc, $d006                                     ; $684d: $d2 $06 $d0

	adc e                                            ; $6850: $8b
	nop                                              ; $6851: $00
	inc c                                            ; $6852: $0c
	or b                                             ; $6853: $b0
	ld l, b                                          ; $6854: $68
	ld bc, $0cd5                                     ; $6855: $01 $d5 $0c
	ei                                               ; $6858: $fb
	db $fc                                           ; $6859: $fc
	ret nz                                           ; $685a: $c0

	ld l, c                                          ; $685b: $69
	push de                                          ; $685c: $d5
	ld b, $d0                                        ; $685d: $06 $d0
	adc e                                            ; $685f: $8b
	nop                                              ; $6860: $00
	inc c                                            ; $6861: $0c
	or b                                             ; $6862: $b0
	ld l, c                                          ; $6863: $69
	ld bc, $28d6                                     ; $6864: $01 $d6 $28
	nop                                              ; $6867: $00
	add b                                            ; $6868: $80
	ld [bc], a                                       ; $6869: $02
	ld d, h                                          ; $686a: $54
	ret nc                                           ; $686b: $d0

	adc e                                            ; $686c: $8b
	nop                                              ; $686d: $00
	add b                                            ; $686e: $80
	or b                                             ; $686f: $b0
	ld d, $d0                                        ; $6870: $16 $d0
	adc e                                            ; $6872: $8b
	ld [bc], a                                       ; $6873: $02
	ld b, d                                          ; $6874: $42
	or b                                             ; $6875: $b0
	ld bc, $8bd0                                     ; $6876: $01 $d0 $8b
	ld bc, $b0ea                                     ; $6879: $01 $ea $b0
	jr nc, @-$2e                                     ; $687c: $30 $d0

	adc e                                            ; $687e: $8b
	ld bc, $b0f6                                     ; $687f: $01 $f6 $b0
	inc a                                            ; $6882: $3c
	ei                                               ; $6883: $fb
	db $fc                                           ; $6884: $fc
	ret nz                                           ; $6885: $c0

	ld l, c                                          ; $6886: $69
	db $d3                                           ; $6887: $d3
	ld b, $d0                                        ; $6888: $06 $d0
	adc e                                            ; $688a: $8b
	nop                                              ; $688b: $00
	inc c                                            ; $688c: $0c
	or b                                             ; $688d: $b0
	ld l, d                                          ; $688e: $6a
	ld bc, $0cd7                                     ; $688f: $01 $d7 $0c
	ei                                               ; $6892: $fb
	db $fc                                           ; $6893: $fc
	ret nz                                           ; $6894: $c0

	ld l, c                                          ; $6895: $69
	jp nc, $d006                                     ; $6896: $d2 $06 $d0

	adc e                                            ; $6899: $8b
	nop                                              ; $689a: $00
	inc c                                            ; $689b: $0c
	or b                                             ; $689c: $b0
	ld l, e                                          ; $689d: $6b
	ld bc, $0cd8                                     ; $689e: $01 $d8 $0c
	ei                                               ; $68a1: $fb
	db $fc                                           ; $68a2: $fc
	ret nz                                           ; $68a3: $c0

	ld l, c                                          ; $68a4: $69
	call nc, $d006                                   ; $68a5: $d4 $06 $d0
	adc e                                            ; $68a8: $8b
	nop                                              ; $68a9: $00
	inc c                                            ; $68aa: $0c
	or b                                             ; $68ab: $b0
	ld [hl], b                                       ; $68ac: $70
	ld bc, $2cd9                                     ; $68ad: $01 $d9 $2c
	nop                                              ; $68b0: $00
	add b                                            ; $68b1: $80
	ld [bc], a                                       ; $68b2: $02
	ld d, l                                          ; $68b3: $55
	nop                                              ; $68b4: $00
	add b                                            ; $68b5: $80
	ld [bc], a                                       ; $68b6: $02
	ld d, [hl]                                       ; $68b7: $56
	ret nc                                           ; $68b8: $d0

	adc e                                            ; $68b9: $8b
	nop                                              ; $68ba: $00
	add b                                            ; $68bb: $80
	or b                                             ; $68bc: $b0
	rla                                              ; $68bd: $17
	ret nc                                           ; $68be: $d0

	adc e                                            ; $68bf: $8b
	ld [bc], a                                       ; $68c0: $02
	ld b, d                                          ; $68c1: $42
	or b                                             ; $68c2: $b0
	ld bc, $8bd0                                     ; $68c3: $01 $d0 $8b
	ld bc, $b0ea                                     ; $68c6: $01 $ea $b0

jr_07c_68c9:
	ld sp, $8bd0                                     ; $68c9: $31 $d0 $8b
	ld bc, $b0f6                                     ; $68cc: $01 $f6 $b0
	dec a                                            ; $68cf: $3d
	ei                                               ; $68d0: $fb
	db $fc                                           ; $68d1: $fc
	ret nz                                           ; $68d2: $c0

	ld l, c                                          ; $68d3: $69
	call nc, $d006                                   ; $68d4: $d4 $06 $d0
	adc e                                            ; $68d7: $8b
	nop                                              ; $68d8: $00
	inc c                                            ; $68d9: $0c
	or b                                             ; $68da: $b0
	ld l, l                                          ; $68db: $6d
	ld bc, $0cdb                                     ; $68dc: $01 $db $0c
	ei                                               ; $68df: $fb
	db $fc                                           ; $68e0: $fc
	ret nz                                           ; $68e1: $c0

	ld l, c                                          ; $68e2: $69
	db $d3                                           ; $68e3: $d3
	ld b, $d0                                        ; $68e4: $06 $d0
	adc e                                            ; $68e6: $8b
	nop                                              ; $68e7: $00
	inc c                                            ; $68e8: $0c
	or b                                             ; $68e9: $b0
	ld l, d                                          ; $68ea: $6a
	ld bc, $28dc                                     ; $68eb: $01 $dc $28
	nop                                              ; $68ee: $00
	add b                                            ; $68ef: $80
	ld [bc], a                                       ; $68f0: $02
	ld d, a                                          ; $68f1: $57
	ret nc                                           ; $68f2: $d0

	adc e                                            ; $68f3: $8b
	nop                                              ; $68f4: $00
	add b                                            ; $68f5: $80
	or b                                             ; $68f6: $b0
	jr jr_07c_68c9                                   ; $68f7: $18 $d0

	adc e                                            ; $68f9: $8b
	ld [bc], a                                       ; $68fa: $02
	ld b, d                                          ; $68fb: $42
	or b                                             ; $68fc: $b0
	ld bc, $8bd0                                     ; $68fd: $01 $d0 $8b
	ld bc, $b0ea                                     ; $6900: $01 $ea $b0
	ld [hl-], a                                      ; $6903: $32
	ret nc                                           ; $6904: $d0

	adc e                                            ; $6905: $8b
	ld bc, $b0f6                                     ; $6906: $01 $f6 $b0
	ld a, $fb                                        ; $6909: $3e $fb
	db $fc                                           ; $690b: $fc
	ret nz                                           ; $690c: $c0

	ld l, c                                          ; $690d: $69
	jp nc, $d006                                     ; $690e: $d2 $06 $d0

	adc e                                            ; $6911: $8b
	nop                                              ; $6912: $00
	inc c                                            ; $6913: $0c
	or b                                             ; $6914: $b0
	ld l, [hl]                                       ; $6915: $6e
	ei                                               ; $6916: $fb
	db $fc                                           ; $6917: $fc
	ret nz                                           ; $6918: $c0

	add b                                            ; $6919: $80
	db $d3                                           ; $691a: $d3
	ret nz                                           ; $691b: $c0

	set 7, l                                         ; $691c: $cb $fd
	ret nz                                           ; $691e: $c0

	ret z                                            ; $691f: $c8

	ret nz                                           ; $6920: $c0

	ld h, l                                          ; $6921: $65
	ld bc, $0cd2                                     ; $6922: $01 $d2 $0c
	ei                                               ; $6925: $fb
	db $fc                                           ; $6926: $fc
	ret nz                                           ; $6927: $c0

	ld l, c                                          ; $6928: $69
	jp nc, $d006                                     ; $6929: $d2 $06 $d0

	adc e                                            ; $692c: $8b
	nop                                              ; $692d: $00
	inc c                                            ; $692e: $0c
	or b                                             ; $692f: $b0
	ld [hl], c                                       ; $6930: $71
	ld bc, $0cd5                                     ; $6931: $01 $d5 $0c
	ei                                               ; $6934: $fb
	db $fc                                           ; $6935: $fc
	ret nz                                           ; $6936: $c0

	ld l, c                                          ; $6937: $69
	call nc, $d006                                   ; $6938: $d4 $06 $d0
	adc e                                            ; $693b: $8b
	nop                                              ; $693c: $00
	inc c                                            ; $693d: $0c
	or b                                             ; $693e: $b0
	ld l, c                                          ; $693f: $69
	ld bc, $1ed6                                     ; $6940: $01 $d6 $1e
	ret nc                                           ; $6943: $d0

	adc e                                            ; $6944: $8b
	ld [bc], a                                       ; $6945: $02
	ld b, d                                          ; $6946: $42
	or b                                             ; $6947: $b0
	ld bc, $8bd0                                     ; $6948: $01 $d0 $8b
	ld bc, $b0ea                                     ; $694b: $01 $ea $b0
	inc [hl]                                         ; $694e: $34
	ret nc                                           ; $694f: $d0

	adc e                                            ; $6950: $8b
	ld bc, $b0f6                                     ; $6951: $01 $f6 $b0
	ld b, b                                          ; $6954: $40
	ei                                               ; $6955: $fb
	db $fc                                           ; $6956: $fc
	ret nz                                           ; $6957: $c0

	ld l, c                                          ; $6958: $69
	db $d3                                           ; $6959: $d3
	ld b, $d0                                        ; $695a: $06 $d0
	adc e                                            ; $695c: $8b
	nop                                              ; $695d: $00
	inc c                                            ; $695e: $0c
	or b                                             ; $695f: $b0
	ld l, d                                          ; $6960: $6a
	ld bc, $0cd7                                     ; $6961: $01 $d7 $0c
	ei                                               ; $6964: $fb
	db $fc                                           ; $6965: $fc
	ret nz                                           ; $6966: $c0

	ld l, c                                          ; $6967: $69
	jp nc, $d006                                     ; $6968: $d2 $06 $d0

	adc e                                            ; $696b: $8b

jr_07c_696c:
	nop                                              ; $696c: $00
	inc c                                            ; $696d: $0c
	or b                                             ; $696e: $b0
	ld l, e                                          ; $696f: $6b
	ld bc, $10d8                                     ; $6970: $01 $d8 $10
	nop                                              ; $6973: $00
	add b                                            ; $6974: $80
	ld [bc], a                                       ; $6975: $02
	ld e, b                                          ; $6976: $58
	ei                                               ; $6977: $fb
	db $fc                                           ; $6978: $fc
	ret nz                                           ; $6979: $c0

	ld l, c                                          ; $697a: $69
	call nc, $d006                                   ; $697b: $d4 $06 $d0
	adc e                                            ; $697e: $8b
	nop                                              ; $697f: $00
	inc c                                            ; $6980: $0c
	or b                                             ; $6981: $b0
	ld [hl], d                                       ; $6982: $72
	ld bc, $2ed9                                     ; $6983: $01 $d9 $2e
	nop                                              ; $6986: $00
	add b                                            ; $6987: $80
	ld [bc], a                                       ; $6988: $02
	ld e, c                                          ; $6989: $59
	ret nc                                           ; $698a: $d0

	adc e                                            ; $698b: $8b
	ld [bc], a                                       ; $698c: $02
	ld b, d                                          ; $698d: $42
	or b                                             ; $698e: $b0
	ld [hl], e                                       ; $698f: $73
	ret nc                                           ; $6990: $d0

	adc e                                            ; $6991: $8b
	ld bc, $b0ea                                     ; $6992: $01 $ea $b0
	dec [hl]                                         ; $6995: $35
	ret nc                                           ; $6996: $d0

	adc e                                            ; $6997: $8b
	ld bc, $b0f6                                     ; $6998: $01 $f6 $b0
	ld b, c                                          ; $699b: $41
	ld h, c                                          ; $699c: $61
	db $fc                                           ; $699d: $fc
	ret nz                                           ; $699e: $c0

	ld l, c                                          ; $699f: $69
	db $d3                                           ; $69a0: $d3
	ld b, $d0                                        ; $69a1: $06 $d0
	adc e                                            ; $69a3: $8b
	nop                                              ; $69a4: $00
	inc c                                            ; $69a5: $0c
	or b                                             ; $69a6: $b0
	ld l, l                                          ; $69a7: $6d
	db $fc                                           ; $69a8: $fc
	ret nz                                           ; $69a9: $c0

	ld l, c                                          ; $69aa: $69
	jp nc, $d006                                     ; $69ab: $d2 $06 $d0

	adc e                                            ; $69ae: $8b
	nop                                              ; $69af: $00
	inc c                                            ; $69b0: $0c
	or b                                             ; $69b1: $b0
	ld bc, $0100                                     ; $69b2: $01 $00 $01
	db $db                                           ; $69b5: $db
	inc c                                            ; $69b6: $0c
	ei                                               ; $69b7: $fb
	db $fc                                           ; $69b8: $fc
	ret nz                                           ; $69b9: $c0

	ld l, c                                          ; $69ba: $69
	db $d3                                           ; $69bb: $d3
	ld b, $d0                                        ; $69bc: $06 $d0
	adc e                                            ; $69be: $8b
	nop                                              ; $69bf: $00
	inc c                                            ; $69c0: $0c
	or b                                             ; $69c1: $b0
	ld l, d                                          ; $69c2: $6a
	ld bc, $22dc                                     ; $69c3: $01 $dc $22
	nop                                              ; $69c6: $00
	add b                                            ; $69c7: $80
	ld [bc], a                                       ; $69c8: $02
	ld e, d                                          ; $69c9: $5a
	ret nc                                           ; $69ca: $d0

	adc e                                            ; $69cb: $8b
	ld [bc], a                                       ; $69cc: $02
	ld b, d                                          ; $69cd: $42
	or b                                             ; $69ce: $b0
	ld bc, $8bd0                                     ; $69cf: $01 $d0 $8b
	ld bc, $b0ea                                     ; $69d2: $01 $ea $b0
	ld [hl], $d0                                     ; $69d5: $36 $d0
	adc e                                            ; $69d7: $8b
	ld bc, $b0f6                                     ; $69d8: $01 $f6 $b0
	ld b, d                                          ; $69db: $42
	ei                                               ; $69dc: $fb
	db $fc                                           ; $69dd: $fc
	ret nz                                           ; $69de: $c0

	ld l, c                                          ; $69df: $69
	jp nc, $d006                                     ; $69e0: $d2 $06 $d0

	adc e                                            ; $69e3: $8b
	nop                                              ; $69e4: $00
	inc c                                            ; $69e5: $0c
	or b                                             ; $69e6: $b0
	ld l, [hl]                                       ; $69e7: $6e
	ret nz                                           ; $69e8: $c0

	jr jr_07c_696c                                   ; $69e9: $18 $81

	ret nz                                           ; $69eb: $c0

	ld l, c                                          ; $69ec: $69
	ld bc, $02d2                                     ; $69ed: $01 $d2 $02
	ret nz                                           ; $69f0: $c0

	ld a, [de]                                       ; $69f1: $1a
	ld bc, $04d4                                     ; $69f2: $01 $d4 $04
	ret nz                                           ; $69f5: $c0

	add hl, de                                       ; $69f6: $19
	ret nz                                           ; $69f7: $c0

	ld a, [de]                                       ; $69f8: $1a
	ei                                               ; $69f9: $fb
	ei                                               ; $69fa: $fb
	adc a                                            ; $69fb: $8f
	ld [bc], a                                       ; $69fc: $02
	ld e, e                                          ; $69fd: $5b
	pop de                                           ; $69fe: $d1
	add hl, bc                                       ; $69ff: $09
	ret nc                                           ; $6a00: $d0

	adc a                                            ; $6a01: $8f
	ld [bc], a                                       ; $6a02: $02
	ld e, e                                          ; $6a03: $5b
	or $8f                                           ; $6a04: $f6 $8f
	ld [bc], a                                       ; $6a06: $02
	ld e, e                                          ; $6a07: $5b
	pop de                                           ; $6a08: $d1
	ei                                               ; $6a09: $fb
	ei                                               ; $6a0a: $fb
	adc a                                            ; $6a0b: $8f
	ld bc, $d130                                     ; $6a0c: $01 $30 $d1
	add hl, bc                                       ; $6a0f: $09
	ret nc                                           ; $6a10: $d0

	adc a                                            ; $6a11: $8f
	ld bc, $f630                                     ; $6a12: $01 $30 $f6
	adc a                                            ; $6a15: $8f
	ld bc, $d130                                     ; $6a16: $01 $30 $d1
	pop bc                                           ; $6a19: $c1

jr_07c_6a1a:
	ld b, b                                          ; $6a1a: $40
	ret nz                                           ; $6a1b: $c0

	add sp, -$40                                     ; $6a1c: $e8 $c0
	ld [$84d0], a                                    ; $6a1e: $ea $d0 $84
	and b                                            ; $6a21: $a0
	nop                                              ; $6a22: $00
	ret nz                                           ; $6a23: $c0

	rst SubAFromBC                                          ; $6a24: $e7
	ld b, b                                          ; $6a25: $40
	add b                                            ; $6a26: $80
	nop                                              ; $6a27: $00
	jp z, $00e5                                      ; $6a28: $ca $e5 $00

	nop                                              ; $6a2b: $00
	and d                                            ; $6a2c: $a2
	adc b                                            ; $6a2d: $88
	inc b                                            ; $6a2e: $04
	add hl, bc                                       ; $6a2f: $09
	add e                                            ; $6a30: $83
	pop hl                                           ; $6a31: $e1
	ld [bc], a                                       ; $6a32: $02
	nop                                              ; $6a33: $00
	sub c                                            ; $6a34: $91
	pop bc                                           ; $6a35: $c1
	ld [$d3d2], sp                                   ; $6a36: $08 $d2 $d3
	ret nz                                           ; $6a39: $c0

	ld bc, $01a0                                     ; $6a3a: $01 $a0 $01
	nop                                              ; $6a3d: $00
	ld bc, $0bc0                                     ; $6a3e: $01 $c0 $0b
	db $e3                                           ; $6a41: $e3
	nop                                              ; $6a42: $00
	ld a, a                                          ; $6a43: $7f
	ret nz                                           ; $6a44: $c0

	nop                                              ; $6a45: $00
	nop                                              ; $6a46: $00
	add hl, bc                                       ; $6a47: $09
	ret nz                                           ; $6a48: $c0

	ld bc, $01a0                                     ; $6a49: $01 $a0 $01
	nop                                              ; $6a4c: $00
	inc c                                            ; $6a4d: $0c
	ret nz                                           ; $6a4e: $c0

	ld bc, $07a0                                     ; $6a4f: $01 $a0 $07
	nop                                              ; $6a52: $00
	db $10                                           ; $6a53: $10
	ld h, b                                          ; $6a54: $60
	add b                                            ; $6a55: $80
	nop                                              ; $6a56: $00
	ld b, a                                          ; $6a57: $47
	jr nc, jr_07c_6a1a                               ; $6a58: $30 $c0

	ld bc, $01a0                                     ; $6a5a: $01 $a0 $01
	nop                                              ; $6a5d: $00
	jr @-$3e                                         ; $6a5e: $18 $c0

	ld bc, $07a0                                     ; $6a60: $01 $a0 $07
	nop                                              ; $6a63: $00
	daa                                              ; $6a64: $27
	ret nz                                           ; $6a65: $c0

	ld bc, $01a0                                     ; $6a66: $01 $a0 $01
	nop                                              ; $6a69: $00
	ld [hl-], a                                      ; $6a6a: $32
	ret nz                                           ; $6a6b: $c0

	ld bc, $07a0                                     ; $6a6c: $01 $a0 $07
	nop                                              ; $6a6f: $00
	inc a                                            ; $6a70: $3c
	ret nz                                           ; $6a71: $c0

	ld bc, $01a0                                     ; $6a72: $01 $a0 $01
	nop                                              ; $6a75: $00
	ld d, b                                          ; $6a76: $50
	ret nz                                           ; $6a77: $c0

	ld bc, $07a0                                     ; $6a78: $01 $a0 $07
	nop                                              ; $6a7b: $00
	ld e, h                                          ; $6a7c: $5c
	ret nz                                           ; $6a7d: $c0

	dec bc                                           ; $6a7e: $0b
	db $e3                                           ; $6a7f: $e3
	nop                                              ; $6a80: $00
	ld a, a                                          ; $6a81: $7f
	ret nz                                           ; $6a82: $c0

	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	add hl, bc                                       ; $6a85: $09
	db $e4                                           ; $6a86: $e4
	rrca                                             ; $6a87: $0f
	dec sp                                           ; $6a88: $3b
	ld a, [hl+]                                      ; $6a89: $2a
	ret nz                                           ; $6a8a: $c0

	ld bc, $01a0                                     ; $6a8b: $01 $a0 $01
	nop                                              ; $6a8e: $00
	ld h, d                                          ; $6a8f: $62
	ret nz                                           ; $6a90: $c0

	ld bc, $07a0                                     ; $6a91: $01 $a0 $07
	nop                                              ; $6a94: $00
	ld l, e                                          ; $6a95: $6b
	ret nz                                           ; $6a96: $c0

	ld bc, $01a0                                     ; $6a97: $01 $a0 $01
	nop                                              ; $6a9a: $00
	ld [hl], h                                       ; $6a9b: $74
	ret nz                                           ; $6a9c: $c0

	ld bc, $07a0                                     ; $6a9d: $01 $a0 $07
	nop                                              ; $6aa0: $00
	add l                                            ; $6aa1: $85
	ret nz                                           ; $6aa2: $c0

	dec bc                                           ; $6aa3: $0b
	db $e3                                           ; $6aa4: $e3
	nop                                              ; $6aa5: $00
	ld a, a                                          ; $6aa6: $7f
	ret nz                                           ; $6aa7: $c0

	nop                                              ; $6aa8: $00
	nop                                              ; $6aa9: $00
	add hl, bc                                       ; $6aaa: $09
	ret nz                                           ; $6aab: $c0

	ld bc, $01a0                                     ; $6aac: $01 $a0 $01
	nop                                              ; $6aaf: $00
	adc l                                            ; $6ab0: $8d
	db $e4                                           ; $6ab1: $e4
	nop                                              ; $6ab2: $00
	ld [bc], a                                       ; $6ab3: $02
	add hl, bc                                       ; $6ab4: $09
	add b                                            ; $6ab5: $80
	ret nz                                           ; $6ab6: $c0

	set 0, b                                         ; $6ab7: $cb $c0
	rrca                                             ; $6ab9: $0f
	db $e3                                           ; $6aba: $e3
	nop                                              ; $6abb: $00
	adc c                                            ; $6abc: $89
	ret nz                                           ; $6abd: $c0

	ld bc, $01a0                                     ; $6abe: $01 $a0 $01
	nop                                              ; $6ac1: $00
	sbc c                                            ; $6ac2: $99
	pop bc                                           ; $6ac3: $c1
	ld e, c                                          ; $6ac4: $59
	db $e3                                           ; $6ac5: $e3
	nop                                              ; $6ac6: $00
	adc d                                            ; $6ac7: $8a
	pop hl                                           ; $6ac8: $e1
	ld [bc], a                                       ; $6ac9: $02
	ld [bc], a                                       ; $6aca: $02
	pop hl                                           ; $6acb: $e1
	ret nz                                           ; $6acc: $c0

	ld bc, $07a0                                     ; $6acd: $01 $a0 $07
	nop                                              ; $6ad0: $00
	and l                                            ; $6ad1: $a5
	db $fd                                           ; $6ad2: $fd
	ld h, d                                          ; $6ad3: $62
	ret nz                                           ; $6ad4: $c0

	ld c, [hl]                                       ; $6ad5: $4e
	ld bc, $0dd1                                     ; $6ad6: $01 $d1 $0d
	nop                                              ; $6ad9: $00
	add b                                            ; $6ada: $80
	and b                                            ; $6adb: $a0
	nop                                              ; $6adc: $00
	ret nz                                           ; $6add: $c0

	ld bc, $01a0                                     ; $6ade: $01 $a0 $01
	nop                                              ; $6ae1: $00
	xor c                                            ; $6ae2: $a9
	db $e4                                           ; $6ae3: $e4
	nop                                              ; $6ae4: $00
	adc l                                            ; $6ae5: $8d
	ld bc, $0dd2                                     ; $6ae6: $01 $d2 $0d
	nop                                              ; $6ae9: $00
	add b                                            ; $6aea: $80
	and b                                            ; $6aeb: $a0
	ld bc, $01c0                                     ; $6aec: $01 $c0 $01
	and b                                            ; $6aef: $a0
	ld bc, $b300                                     ; $6af0: $01 $00 $b3
	db $e4                                           ; $6af3: $e4
	nop                                              ; $6af4: $00
	or e                                             ; $6af5: $b3
	ld bc, $0dd3                                     ; $6af6: $01 $d3 $0d
	nop                                              ; $6af9: $00
	add b                                            ; $6afa: $80
	and b                                            ; $6afb: $a0
	ld [bc], a                                       ; $6afc: $02
	ret nz                                           ; $6afd: $c0

	ld bc, $01a0                                     ; $6afe: $01 $a0 $01
	nop                                              ; $6b01: $00
	cp [hl]                                          ; $6b02: $be
	db $e4                                           ; $6b03: $e4
	nop                                              ; $6b04: $00
	reti                                             ; $6b05: $d9


	ld bc, $0dd7                                     ; $6b06: $01 $d7 $0d
	nop                                              ; $6b09: $00
	add b                                            ; $6b0a: $80
	and b                                            ; $6b0b: $a0
	inc bc                                           ; $6b0c: $03
	ret nz                                           ; $6b0d: $c0

	ld bc, $01a0                                     ; $6b0e: $01 $a0 $01
	nop                                              ; $6b11: $00
	ret z                                            ; $6b12: $c8

	db $e4                                           ; $6b13: $e4
	nop                                              ; $6b14: $00
	rst $38                                          ; $6b15: $ff
	ld bc, $0dd8                                     ; $6b16: $01 $d8 $0d
	nop                                              ; $6b19: $00
	add b                                            ; $6b1a: $80
	and b                                            ; $6b1b: $a0
	inc b                                            ; $6b1c: $04
	ret nz                                           ; $6b1d: $c0

	ld bc, $01a0                                     ; $6b1e: $01 $a0 $01
	nop                                              ; $6b21: $00
	jp nc, $01e4                                     ; $6b22: $d2 $e4 $01

	dec h                                            ; $6b25: $25
	ld bc, $0ddd                                     ; $6b26: $01 $dd $0d
	nop                                              ; $6b29: $00
	add b                                            ; $6b2a: $80
	and b                                            ; $6b2b: $a0
	dec b                                            ; $6b2c: $05
	ret nz                                           ; $6b2d: $c0

	ld bc, $01a0                                     ; $6b2e: $01 $a0 $01
	nop                                              ; $6b31: $00
	db $db                                           ; $6b32: $db
	db $e4                                           ; $6b33: $e4
	ld bc, $3a4b                                     ; $6b34: $01 $4b $3a
	pop bc                                           ; $6b37: $c1
	ld e, e                                          ; $6b38: $5b
	ret nz                                           ; $6b39: $c0

	inc c                                            ; $6b3a: $0c
	ldh [rAUD3HIGH], a                               ; $6b3b: $e0 $1e
	pop hl                                           ; $6b3d: $e1
	ld [bc], a                                       ; $6b3e: $02
	nop                                              ; $6b3f: $00
	ret c                                            ; $6b40: $d8

	add e                                            ; $6b41: $83
	ret nz                                           ; $6b42: $c0

	dec de                                           ; $6b43: $1b
	ret nc                                           ; $6b44: $d0

	ld [bc], a                                       ; $6b45: $02
	ret nc                                           ; $6b46: $d0

	pop de                                           ; $6b47: $d1
	ld b, $c0                                        ; $6b48: $06 $c0
	ld bc, $02a0                                     ; $6b4a: $01 $a0 $02
	nop                                              ; $6b4d: $00
	and $02                                          ; $6b4e: $e6 $02
	jp nc, $06d3                                     ; $6b50: $d2 $d3 $06

	ret nz                                           ; $6b53: $c0

	ld bc, $02a0                                     ; $6b54: $01 $a0 $02
	nop                                              ; $6b57: $00
	add sp, $01                                      ; $6b58: $e8 $01
	call nc, $c006                                   ; $6b5a: $d4 $06 $c0
	ld bc, $02a0                                     ; $6b5d: $01 $a0 $02
	nop                                              ; $6b60: $00
	db $eb                                           ; $6b61: $eb
	ld bc, $06d5                                     ; $6b62: $01 $d5 $06
	ret nz                                           ; $6b65: $c0

	ld bc, $02a0                                     ; $6b66: $01 $a0 $02
	nop                                              ; $6b69: $00
	db $ec                                           ; $6b6a: $ec
	ret nz                                           ; $6b6b: $c0

	inc c                                            ; $6b6c: $0c
	ldh [rAUD3HIGH], a                               ; $6b6d: $e0 $1e
	pop bc                                           ; $6b6f: $c1
	ld e, e                                          ; $6b70: $5b
	add hl, bc                                       ; $6b71: $09
	inc [hl]                                         ; $6b72: $34
	ldh [rIE], a                                     ; $6b73: $e0 $ff
	jp nz, $02e1                                     ; $6b75: $c2 $e1 $02

	ld bc, $8320                                     ; $6b78: $01 $20 $83
	ret nz                                           ; $6b7b: $c0

	dec de                                           ; $6b7c: $1b
	pop de                                           ; $6b7d: $d1
	ld [bc], a                                       ; $6b7e: $02
	ret nc                                           ; $6b7f: $d0

	pop de                                           ; $6b80: $d1
	ld b, $c0                                        ; $6b81: $06 $c0
	ld bc, $03a0                                     ; $6b83: $01 $a0 $03
	nop                                              ; $6b86: $00
	and $02                                          ; $6b87: $e6 $02
	jp nc, $06d3                                     ; $6b89: $d2 $d3 $06

	ret nz                                           ; $6b8c: $c0

	ld bc, $03a0                                     ; $6b8d: $01 $a0 $03
	nop                                              ; $6b90: $00
	add sp, $01                                      ; $6b91: $e8 $01
	call nc, $c006                                   ; $6b93: $d4 $06 $c0
	ld bc, $03a0                                     ; $6b96: $01 $a0 $03
	nop                                              ; $6b99: $00
	db $eb                                           ; $6b9a: $eb
	ld bc, $06d5                                     ; $6b9b: $01 $d5 $06
	ret nz                                           ; $6b9e: $c0

	ld bc, $03a0                                     ; $6b9f: $01 $a0 $03
	nop                                              ; $6ba2: $00
	db $ec                                           ; $6ba3: $ec
	db $e4                                           ; $6ba4: $e4
	ld bc, $0910                                     ; $6ba5: $01 $10 $09
	inc [hl]                                         ; $6ba8: $34
	ldh [rIE], a                                     ; $6ba9: $e0 $ff
	adc h                                            ; $6bab: $8c
	pop hl                                           ; $6bac: $e1
	ld [bc], a                                       ; $6bad: $02
	ld bc, $8368                                     ; $6bae: $01 $68 $83
	ret nz                                           ; $6bb1: $c0

	dec de                                           ; $6bb2: $1b
	jp nc, $d002                                     ; $6bb3: $d2 $02 $d0

	pop de                                           ; $6bb6: $d1
	ld b, $c0                                        ; $6bb7: $06 $c0
	ld bc, $04a0                                     ; $6bb9: $01 $a0 $04
	nop                                              ; $6bbc: $00
	rst AddAOntoHL                                          ; $6bbd: $ef
	ld [bc], a                                       ; $6bbe: $02
	jp nc, $06d3                                     ; $6bbf: $d2 $d3 $06

	ret nz                                           ; $6bc2: $c0

	ld bc, $04a0                                     ; $6bc3: $01 $a0 $04
	nop                                              ; $6bc6: $00
	ldh a, [c]                                       ; $6bc7: $f2
	ld bc, $06d4                                     ; $6bc8: $01 $d4 $06
	ret nz                                           ; $6bcb: $c0

	ld bc, $04a0                                     ; $6bcc: $01 $a0 $04
	nop                                              ; $6bcf: $00
	rst FarCall                                          ; $6bd0: $f7
	ld bc, $06d5                                     ; $6bd1: $01 $d5 $06
	ret nz                                           ; $6bd4: $c0

	ld bc, $04a0                                     ; $6bd5: $01 $a0 $04
	nop                                              ; $6bd8: $00
	db $ec                                           ; $6bd9: $ec
	db $e4                                           ; $6bda: $e4
	nop                                              ; $6bdb: $00
	jp c, $3409                                      ; $6bdc: $da $09 $34

	ldh [rIE], a                                     ; $6bdf: $e0 $ff
	ld d, [hl]                                       ; $6be1: $56
	pop hl                                           ; $6be2: $e1
	ld [bc], a                                       ; $6be3: $02
	ld bc, $83b0                                     ; $6be4: $01 $b0 $83
	ret nz                                           ; $6be7: $c0

	dec de                                           ; $6be8: $1b
	db $d3                                           ; $6be9: $d3
	ld [bc], a                                       ; $6bea: $02
	ret nc                                           ; $6beb: $d0

	pop de                                           ; $6bec: $d1
	ld b, $c0                                        ; $6bed: $06 $c0
	ld bc, $05a0                                     ; $6bef: $01 $a0 $05
	nop                                              ; $6bf2: $00
	and $02                                          ; $6bf3: $e6 $02
	jp nc, $06d3                                     ; $6bf5: $d2 $d3 $06

	ret nz                                           ; $6bf8: $c0

	ld bc, $05a0                                     ; $6bf9: $01 $a0 $05
	nop                                              ; $6bfc: $00
	ei                                               ; $6bfd: $fb
	ld bc, $06d4                                     ; $6bfe: $01 $d4 $06
	ret nz                                           ; $6c01: $c0

	ld bc, $05a0                                     ; $6c02: $01 $a0 $05
	nop                                              ; $6c05: $00
	db $eb                                           ; $6c06: $eb
	ld bc, $06d5                                     ; $6c07: $01 $d5 $06
	ret nz                                           ; $6c0a: $c0

	ld bc, $05a0                                     ; $6c0b: $01 $a0 $05
	nop                                              ; $6c0e: $00
	db $ec                                           ; $6c0f: $ec
	db $e4                                           ; $6c10: $e4
	nop                                              ; $6c11: $00
	and h                                            ; $6c12: $a4
	add hl, bc                                       ; $6c13: $09
	inc [hl]                                         ; $6c14: $34
	ldh [rIE], a                                     ; $6c15: $e0 $ff
	jr nz, @-$1d                                     ; $6c17: $20 $e1

	ld [bc], a                                       ; $6c19: $02
	ld bc, $83f8                                     ; $6c1a: $01 $f8 $83
	ret nz                                           ; $6c1d: $c0

	dec de                                           ; $6c1e: $1b
	rst SubAFromHL                                          ; $6c1f: $d7
	ld [bc], a                                       ; $6c20: $02
	ret nc                                           ; $6c21: $d0

	pop de                                           ; $6c22: $d1
	ld b, $c0                                        ; $6c23: $06 $c0
	ld bc, $08a0                                     ; $6c25: $01 $a0 $08
	nop                                              ; $6c28: $00
	rst $38                                          ; $6c29: $ff
	ld [bc], a                                       ; $6c2a: $02
	jp nc, $06d3                                     ; $6c2b: $d2 $d3 $06

	ret nz                                           ; $6c2e: $c0

	ld bc, $08a0                                     ; $6c2f: $01 $a0 $08
	nop                                              ; $6c32: $00
	rst $38                                          ; $6c33: $ff
	ld bc, $06d4                                     ; $6c34: $01 $d4 $06
	ret nz                                           ; $6c37: $c0

	ld bc, $08a0                                     ; $6c38: $01 $a0 $08
	nop                                              ; $6c3b: $00
	add sp, $01                                      ; $6c3c: $e8 $01
	push de                                          ; $6c3e: $d5
	ld b, $c0                                        ; $6c3f: $06 $c0
	ld bc, $08a0                                     ; $6c41: $01 $a0 $08
	nop                                              ; $6c44: $00
	db $ec                                           ; $6c45: $ec
	db $e4                                           ; $6c46: $e4
	nop                                              ; $6c47: $00
	ld l, [hl]                                       ; $6c48: $6e
	add hl, bc                                       ; $6c49: $09
	inc [hl]                                         ; $6c4a: $34
	ldh [$fe], a                                     ; $6c4b: $e0 $fe
	ld [$02e1], a                                    ; $6c4d: $ea $e1 $02
	ld [bc], a                                       ; $6c50: $02
	jr z, @-$7b                                      ; $6c51: $28 $83

	ret nz                                           ; $6c53: $c0

	dec de                                           ; $6c54: $1b
	ret c                                            ; $6c55: $d8

	ld [bc], a                                       ; $6c56: $02
	ret nc                                           ; $6c57: $d0

	pop de                                           ; $6c58: $d1
	ld b, $c0                                        ; $6c59: $06 $c0
	ld bc, $09a0                                     ; $6c5b: $01 $a0 $09
	nop                                              ; $6c5e: $00
	add sp, $02                                      ; $6c5f: $e8 $02

jr_07c_6c61:
	jp nc, $06d3                                     ; $6c61: $d2 $d3 $06

	ret nz                                           ; $6c64: $c0

	ld bc, $09a0                                     ; $6c65: $01 $a0 $09
	nop                                              ; $6c68: $00
	add sp, $01                                      ; $6c69: $e8 $01
	call nc, $c006                                   ; $6c6b: $d4 $06 $c0
	ld bc, $09a0                                     ; $6c6e: $01 $a0 $09

jr_07c_6c71:
	nop                                              ; $6c71: $00
	db $eb                                           ; $6c72: $eb
	ld bc, $06d5                                     ; $6c73: $01 $d5 $06
	ret nz                                           ; $6c76: $c0

	ld bc, $09a0                                     ; $6c77: $01 $a0 $09
	nop                                              ; $6c7a: $00
	db $ec                                           ; $6c7b: $ec
	db $e4                                           ; $6c7c: $e4
	nop                                              ; $6c7d: $00
	jr c, jr_07c_6c89                                ; $6c7e: $38 $09

	inc [hl]                                         ; $6c80: $34

jr_07c_6c81:
	ldh [$fe], a                                     ; $6c81: $e0 $fe
	or h                                             ; $6c83: $b4
	pop hl                                           ; $6c84: $e1
	ld [bc], a                                       ; $6c85: $02
	ld [bc], a                                       ; $6c86: $02
	adc b                                            ; $6c87: $88
	add e                                            ; $6c88: $83

jr_07c_6c89:
	ret nz                                           ; $6c89: $c0

	dec de                                           ; $6c8a: $1b
	db $dd                                           ; $6c8b: $dd
	ld [bc], a                                       ; $6c8c: $02
	ret nc                                           ; $6c8d: $d0

	pop de                                           ; $6c8e: $d1
	ld b, $c0                                        ; $6c8f: $06 $c0

jr_07c_6c91:
	ld bc, $0aa0                                     ; $6c91: $01 $a0 $0a
	nop                                              ; $6c94: $00
	and $02                                          ; $6c95: $e6 $02
	jp nc, $06d3                                     ; $6c97: $d2 $d3 $06

	ret nz                                           ; $6c9a: $c0

	ld bc, $0aa0                                     ; $6c9b: $01 $a0 $0a
	nop                                              ; $6c9e: $00
	add sp, $01                                      ; $6c9f: $e8 $01

jr_07c_6ca1:
	call nc, $c006                                   ; $6ca1: $d4 $06 $c0
	ld bc, $0aa0                                     ; $6ca4: $01 $a0 $0a
	nop                                              ; $6ca7: $00
	db $eb                                           ; $6ca8: $eb
	ld bc, $06d5                                     ; $6ca9: $01 $d5 $06
	ret nz                                           ; $6cac: $c0

	ld bc, $0aa0                                     ; $6cad: $01 $a0 $0a
	nop                                              ; $6cb0: $00

jr_07c_6cb1:
	db $ec                                           ; $6cb1: $ec
	db $e4                                           ; $6cb2: $e4
	nop                                              ; $6cb3: $00
	ld [bc], a                                       ; $6cb4: $02
	jr z, @+$23                                      ; $6cb5: $28 $21

	ret nz                                           ; $6cb7: $c0

	inc c                                            ; $6cb8: $0c
	ldh [rAUD3HIGH], a                               ; $6cb9: $e0 $1e
	pop bc                                           ; $6cbb: $c1
	ld e, e                                          ; $6cbc: $5b
	pop hl                                           ; $6cbd: $e1
	ld [bc], a                                       ; $6cbe: $02
	ld [bc], a                                       ; $6cbf: $02
	pop hl                                           ; $6cc0: $e1

jr_07c_6cc1:
	ret nz                                           ; $6cc1: $c0

	ld bc, $07a0                                     ; $6cc2: $01 $a0 $07
	ld bc, $c003                                     ; $6cc5: $01 $03 $c0
	ld bc, $07a0                                     ; $6cc8: $01 $a0 $07
	ld bc, $c10b                                     ; $6ccb: $01 $0b $c1
	ld e, c                                          ; $6cce: $59
	db $e3                                           ; $6ccf: $e3
	nop                                              ; $6cd0: $00
	adc [hl]                                         ; $6cd1: $8e
	ret nz                                           ; $6cd2: $c0

	ld bc, $07a0                                     ; $6cd3: $01 $a0 $07
	ld bc, $6b14                                     ; $6cd6: $01 $14 $6b
	ld bc, $091b                                     ; $6cd9: $01 $1b $09
	rlca                                             ; $6cdc: $07
	jr nz, jr_07c_6c61                               ; $6cdd: $20 $82

	and b                                            ; $6cdf: $a0
	ld b, $e4                                        ; $6ce0: $06 $e4
	nop                                              ; $6ce2: $00
	ld h, d                                          ; $6ce3: $62
	ei                                               ; $6ce4: $fb
	add b                                            ; $6ce5: $80
	and b                                            ; $6ce6: $a0
	nop                                              ; $6ce7: $00
	dec bc                                           ; $6ce8: $0b
	ld bc, $0920                                     ; $6ce9: $01 $20 $09
	rlca                                             ; $6cec: $07
	jr nz, jr_07c_6c71                               ; $6ced: $20 $82

	and b                                            ; $6cef: $a0
	add hl, bc                                       ; $6cf0: $09
	db $e4                                           ; $6cf1: $e4
	nop                                              ; $6cf2: $00
	adc a                                            ; $6cf3: $8f
	ei                                               ; $6cf4: $fb
	add b                                            ; $6cf5: $80
	and b                                            ; $6cf6: $a0
	ld bc, $010b                                     ; $6cf7: $01 $0b $01
	inc h                                            ; $6cfa: $24
	add hl, bc                                       ; $6cfb: $09
	rlca                                             ; $6cfc: $07
	jr nz, jr_07c_6c81                               ; $6cfd: $20 $82

	and b                                            ; $6cff: $a0
	add hl, bc                                       ; $6d00: $09
	db $e4                                           ; $6d01: $e4
	nop                                              ; $6d02: $00
	cp h                                             ; $6d03: $bc
	ei                                               ; $6d04: $fb
	add b                                            ; $6d05: $80
	and b                                            ; $6d06: $a0
	ld [bc], a                                       ; $6d07: $02
	dec bc                                           ; $6d08: $0b
	ld bc, $0929                                     ; $6d09: $01 $29 $09
	rlca                                             ; $6d0c: $07
	jr nz, jr_07c_6c91                               ; $6d0d: $20 $82

	and b                                            ; $6d0f: $a0
	add hl, bc                                       ; $6d10: $09
	db $e4                                           ; $6d11: $e4
	nop                                              ; $6d12: $00
	rst SubAFromHL                                          ; $6d13: $d7
	ei                                               ; $6d14: $fb
	add b                                            ; $6d15: $80
	and b                                            ; $6d16: $a0
	inc bc                                           ; $6d17: $03
	dec bc                                           ; $6d18: $0b
	ld bc, $092d                                     ; $6d19: $01 $2d $09
	rlca                                             ; $6d1c: $07
	jr nz, jr_07c_6ca1                               ; $6d1d: $20 $82

	and b                                            ; $6d1f: $a0
	add hl, bc                                       ; $6d20: $09
	db $e4                                           ; $6d21: $e4
	ld bc, $fb04                                     ; $6d22: $01 $04 $fb
	add b                                            ; $6d25: $80
	and b                                            ; $6d26: $a0
	inc b                                            ; $6d27: $04
	dec bc                                           ; $6d28: $0b
	ld bc, $0932                                     ; $6d29: $01 $32 $09
	rlca                                             ; $6d2c: $07
	jr nz, jr_07c_6cb1                               ; $6d2d: $20 $82

	and b                                            ; $6d2f: $a0
	add hl, bc                                       ; $6d30: $09
	db $e4                                           ; $6d31: $e4
	ld bc, $fb31                                     ; $6d32: $01 $31 $fb
	add b                                            ; $6d35: $80
	and b                                            ; $6d36: $a0
	dec b                                            ; $6d37: $05
	dec bc                                           ; $6d38: $0b
	ld bc, $0936                                     ; $6d39: $01 $36 $09
	rlca                                             ; $6d3c: $07
	jr nz, jr_07c_6cc1                               ; $6d3d: $20 $82

	and b                                            ; $6d3f: $a0
	add hl, bc                                       ; $6d40: $09
	db $e4                                           ; $6d41: $e4
	ld bc, $095e                                     ; $6d42: $01 $5e $09
	dec sp                                           ; $6d45: $3b
	ret nz                                           ; $6d46: $c0

	inc c                                            ; $6d47: $0c
	ldh [rAUD3HIGH], a                               ; $6d48: $e0 $1e
	pop bc                                           ; $6d4a: $c1
	ld e, e                                          ; $6d4b: $5b
	pop hl                                           ; $6d4c: $e1
	ld [bc], a                                       ; $6d4d: $02
	nop                                              ; $6d4e: $00
	ret c                                            ; $6d4f: $d8

	add c                                            ; $6d50: $81
	ret nz                                           ; $6d51: $c0

	dec de                                           ; $6d52: $1b
	ret nc                                           ; $6d53: $d0

	ld bc, $06d5                                     ; $6d54: $01 $d5 $06
	ret nz                                           ; $6d57: $c0

	ld bc, $02a0                                     ; $6d58: $01 $a0 $02
	ld bc, $003b                                     ; $6d5b: $01 $3b $00
	ld b, $c0                                        ; $6d5e: $06 $c0
	ld bc, $02a0                                     ; $6d60: $01 $a0 $02
	ld bc, $e140                                     ; $6d63: $01 $40 $e1
	ld [bc], a                                       ; $6d66: $02
	rlca                                             ; $6d67: $07
	rst FarCall                                          ; $6d68: $f7
	add c                                            ; $6d69: $81
	ret nz                                           ; $6d6a: $c0

	dec de                                           ; $6d6b: $1b
	ret nc                                           ; $6d6c: $d0

	ld bc, $06d5                                     ; $6d6d: $01 $d5 $06
	ret nz                                           ; $6d70: $c0

	ld bc, $02a0                                     ; $6d71: $01 $a0 $02
	ld bc, $0042                                     ; $6d74: $01 $42 $00
	ld b, $c0                                        ; $6d77: $06 $c0
	ld bc, $02a0                                     ; $6d79: $01 $a0 $02
	ld bc, $e448                                     ; $6d7c: $01 $48 $e4
	ld bc, $095e                                     ; $6d7f: $01 $5e $09
	dec sp                                           ; $6d82: $3b
	ret nz                                           ; $6d83: $c0

	inc c                                            ; $6d84: $0c
	ldh [rAUD3HIGH], a                               ; $6d85: $e0 $1e
	pop bc                                           ; $6d87: $c1
	ld e, e                                          ; $6d88: $5b
	pop hl                                           ; $6d89: $e1
	ld [bc], a                                       ; $6d8a: $02
	ld bc, $8120                                     ; $6d8b: $01 $20 $81
	ret nz                                           ; $6d8e: $c0

	dec de                                           ; $6d8f: $1b
	pop de                                           ; $6d90: $d1
	ld bc, $06d5                                     ; $6d91: $01 $d5 $06
	ret nz                                           ; $6d94: $c0

	ld bc, $03a0                                     ; $6d95: $01 $a0 $03
	ld bc, $004d                                     ; $6d98: $01 $4d $00
	ld b, $c0                                        ; $6d9b: $06 $c0
	ld bc, $03a0                                     ; $6d9d: $01 $a0 $03
	ld bc, $e152                                     ; $6da0: $01 $52 $e1
	ld [bc], a                                       ; $6da3: $02
	rlca                                             ; $6da4: $07
	rst FarCall                                          ; $6da5: $f7
	add c                                            ; $6da6: $81
	ret nz                                           ; $6da7: $c0

	dec de                                           ; $6da8: $1b
	pop de                                           ; $6da9: $d1
	ld bc, $06d5                                     ; $6daa: $01 $d5 $06
	ret nz                                           ; $6dad: $c0

	ld bc, $03a0                                     ; $6dae: $01 $a0 $03
	ld bc, $0057                                     ; $6db1: $01 $57 $00
	ld b, $c0                                        ; $6db4: $06 $c0
	ld bc, $03a0                                     ; $6db6: $01 $a0 $03
	ld bc, $e45e                                     ; $6db9: $01 $5e $e4
	ld bc, $0921                                     ; $6dbc: $01 $21 $09
	add hl, hl                                       ; $6dbf: $29
	ret nz                                           ; $6dc0: $c0

	inc c                                            ; $6dc1: $0c
	ldh [rAUD3HIGH], a                               ; $6dc2: $e0 $1e
	pop bc                                           ; $6dc4: $c1
	ld e, e                                          ; $6dc5: $5b
	pop hl                                           ; $6dc6: $e1
	ld [bc], a                                       ; $6dc7: $02
	ld bc, $8168                                     ; $6dc8: $01 $68 $81
	ret nz                                           ; $6dcb: $c0

	dec de                                           ; $6dcc: $1b
	jp nc, $d501                                     ; $6dcd: $d2 $01 $d5

	ld b, $c0                                        ; $6dd0: $06 $c0
	ld bc, $04a0                                     ; $6dd2: $01 $a0 $04
	ld bc, $0065                                     ; $6dd5: $01 $65 $00
	ld b, $c0                                        ; $6dd8: $06 $c0
	ld bc, $04a0                                     ; $6dda: $01 $a0 $04
	ld bc, $e16e                                     ; $6ddd: $01 $6e $e1
	ld [bc], a                                       ; $6de0: $02
	rlca                                             ; $6de1: $07
	rst FarCall                                          ; $6de2: $f7
	ldh [rTAC], a                                    ; $6de3: $e0 $07
	halt                                             ; $6de5: $76
	db $e4                                           ; $6de6: $e4
	nop                                              ; $6de7: $00
	or $09                                           ; $6de8: $f6 $09
	dec sp                                           ; $6dea: $3b
	ret nz                                           ; $6deb: $c0

	inc c                                            ; $6dec: $0c
	ldh [rAUD3HIGH], a                               ; $6ded: $e0 $1e
	pop bc                                           ; $6def: $c1
	ld e, e                                          ; $6df0: $5b

jr_07c_6df1:
	pop hl                                           ; $6df1: $e1
	ld [bc], a                                       ; $6df2: $02
	ld bc, $81b0                                     ; $6df3: $01 $b0 $81
	ret nz                                           ; $6df6: $c0

	dec de                                           ; $6df7: $1b
	db $d3                                           ; $6df8: $d3
	ld bc, $06d5                                     ; $6df9: $01 $d5 $06
	ret nz                                           ; $6dfc: $c0

	ld bc, $05a0                                     ; $6dfd: $01 $a0 $05
	ld bc, $0079                                     ; $6e00: $01 $79 $00
	ld b, $c0                                        ; $6e03: $06 $c0
	ld bc, $05a0                                     ; $6e05: $01 $a0 $05
	ld bc, $e180                                     ; $6e08: $01 $80 $e1
	ld [bc], a                                       ; $6e0b: $02
	rlca                                             ; $6e0c: $07
	rst FarCall                                          ; $6e0d: $f7
	add c                                            ; $6e0e: $81
	ret nz                                           ; $6e0f: $c0

	dec de                                           ; $6e10: $1b
	db $d3                                           ; $6e11: $d3
	ld bc, $06d5                                     ; $6e12: $01 $d5 $06
	ret nz                                           ; $6e15: $c0

	ld bc, $05a0                                     ; $6e16: $01 $a0 $05
	ld bc, $0082                                     ; $6e19: $01 $82 $00
	ld b, $c0                                        ; $6e1c: $06 $c0
	ld bc, $05a0                                     ; $6e1e: $01 $a0 $05
	ld bc, $e489                                     ; $6e21: $01 $89 $e4
	nop                                              ; $6e24: $00
	cp c                                             ; $6e25: $b9
	add hl, bc                                       ; $6e26: $09
	dec sp                                           ; $6e27: $3b
	ret nz                                           ; $6e28: $c0

	inc c                                            ; $6e29: $0c
	ldh [rAUD3HIGH], a                               ; $6e2a: $e0 $1e
	pop bc                                           ; $6e2c: $c1
	ld e, e                                          ; $6e2d: $5b
	pop hl                                           ; $6e2e: $e1
	ld [bc], a                                       ; $6e2f: $02
	ld bc, $81f8                                     ; $6e30: $01 $f8 $81
	ret nz                                           ; $6e33: $c0

	dec de                                           ; $6e34: $1b
	rst SubAFromHL                                          ; $6e35: $d7
	ld bc, $06d5                                     ; $6e36: $01 $d5 $06
	ret nz                                           ; $6e39: $c0

	ld bc, $08a0                                     ; $6e3a: $01 $a0 $08
	ld bc, $008e                                     ; $6e3d: $01 $8e $00
	ld b, $c0                                        ; $6e40: $06 $c0
	ld bc, $08a0                                     ; $6e42: $01 $a0 $08
	ld bc, $e193                                     ; $6e45: $01 $93 $e1
	ld [bc], a                                       ; $6e48: $02
	rlca                                             ; $6e49: $07
	rst FarCall                                          ; $6e4a: $f7
	add c                                            ; $6e4b: $81
	ret nz                                           ; $6e4c: $c0

	dec de                                           ; $6e4d: $1b
	rst SubAFromHL                                          ; $6e4e: $d7
	ld bc, $06d5                                     ; $6e4f: $01 $d5 $06
	ret nz                                           ; $6e52: $c0

	ld bc, $08a0                                     ; $6e53: $01 $a0 $08
	ld bc, $009b                                     ; $6e56: $01 $9b $00
	ld b, $c0                                        ; $6e59: $06 $c0
	ld bc, $08a0                                     ; $6e5b: $01 $a0 $08
	ld bc, $e4a3                                     ; $6e5e: $01 $a3 $e4
	nop                                              ; $6e61: $00
	ld a, h                                          ; $6e62: $7c
	add hl, bc                                       ; $6e63: $09
	dec sp                                           ; $6e64: $3b
	ret nz                                           ; $6e65: $c0

	inc c                                            ; $6e66: $0c
	ldh [rAUD3HIGH], a                               ; $6e67: $e0 $1e
	pop bc                                           ; $6e69: $c1
	ld e, e                                          ; $6e6a: $5b
	pop hl                                           ; $6e6b: $e1
	ld [bc], a                                       ; $6e6c: $02
	ld [bc], a                                       ; $6e6d: $02
	jr z, jr_07c_6df1                                ; $6e6e: $28 $81

	ret nz                                           ; $6e70: $c0

	dec de                                           ; $6e71: $1b
	ret c                                            ; $6e72: $d8

	ld bc, $06d5                                     ; $6e73: $01 $d5 $06
	ret nz                                           ; $6e76: $c0

	ld bc, $09a0                                     ; $6e77: $01 $a0 $09
	ld bc, $00a8                                     ; $6e7a: $01 $a8 $00
	ld b, $c0                                        ; $6e7d: $06 $c0
	ld bc, $09a0                                     ; $6e7f: $01 $a0 $09
	ld bc, $e1ab                                     ; $6e82: $01 $ab $e1
	ld [bc], a                                       ; $6e85: $02
	rlca                                             ; $6e86: $07
	rst FarCall                                          ; $6e87: $f7
	add c                                            ; $6e88: $81
	ret nz                                           ; $6e89: $c0

	dec de                                           ; $6e8a: $1b
	ret c                                            ; $6e8b: $d8

	ld bc, $06d5                                     ; $6e8c: $01 $d5 $06
	ret nz                                           ; $6e8f: $c0

	ld bc, $09a0                                     ; $6e90: $01 $a0 $09
	ld bc, $00af                                     ; $6e93: $01 $af $00
	ld b, $c0                                        ; $6e96: $06 $c0
	ld bc, $09a0                                     ; $6e98: $01 $a0 $09
	ld bc, $e4b6                                     ; $6e9b: $01 $b6 $e4
	nop                                              ; $6e9e: $00
	ccf                                              ; $6e9f: $3f
	add hl, bc                                       ; $6ea0: $09
	dec sp                                           ; $6ea1: $3b
	ret nz                                           ; $6ea2: $c0

	inc c                                            ; $6ea3: $0c
	ldh [rAUD3HIGH], a                               ; $6ea4: $e0 $1e
	pop bc                                           ; $6ea6: $c1

jr_07c_6ea7:
	ld e, e                                          ; $6ea7: $5b
	pop hl                                           ; $6ea8: $e1
	ld [bc], a                                       ; $6ea9: $02
	ld [bc], a                                       ; $6eaa: $02
	adc b                                            ; $6eab: $88
	add c                                            ; $6eac: $81
	ret nz                                           ; $6ead: $c0

	dec de                                           ; $6eae: $1b
	db $dd                                           ; $6eaf: $dd
	ld bc, $06d5                                     ; $6eb0: $01 $d5 $06
	ret nz                                           ; $6eb3: $c0

	ld bc, $0aa0                                     ; $6eb4: $01 $a0 $0a

jr_07c_6eb7:
	nop                                              ; $6eb7: $00
	db $ec                                           ; $6eb8: $ec
	nop                                              ; $6eb9: $00
	ld b, $c0                                        ; $6eba: $06 $c0
	ld bc, $0aa0                                     ; $6ebc: $01 $a0 $0a
	ld bc, $e1ba                                     ; $6ebf: $01 $ba $e1
	ld [bc], a                                       ; $6ec2: $02
	rlca                                             ; $6ec3: $07
	rst FarCall                                          ; $6ec4: $f7
	add c                                            ; $6ec5: $81
	ret nz                                           ; $6ec6: $c0

jr_07c_6ec7:
	dec de                                           ; $6ec7: $1b
	db $dd                                           ; $6ec8: $dd
	ld bc, $06d5                                     ; $6ec9: $01 $d5 $06
	ret nz                                           ; $6ecc: $c0

	ld bc, $0aa0                                     ; $6ecd: $01 $a0 $0a
	ld bc, $00c0                                     ; $6ed0: $01 $c0 $00
	ld b, $c0                                        ; $6ed3: $06 $c0
	ld bc, $0aa0                                     ; $6ed5: $01 $a0 $0a
	ld bc, $e4c4                                     ; $6ed8: $01 $c4 $e4
	nop                                              ; $6edb: $00
	ld [bc], a                                       ; $6edc: $02
	add hl, bc                                       ; $6edd: $09
	ld [hl+], a                                      ; $6ede: $22
	ret nz                                           ; $6edf: $c0

	inc c                                            ; $6ee0: $0c
	ldh [rAUD3HIGH], a                               ; $6ee1: $e0 $1e
	pop bc                                           ; $6ee3: $c1
	ld e, e                                          ; $6ee4: $5b
	pop hl                                           ; $6ee5: $e1
	ld [bc], a                                       ; $6ee6: $02

jr_07c_6ee7:
	ld [bc], a                                       ; $6ee7: $02
	pop hl                                           ; $6ee8: $e1
	ld h, b                                          ; $6ee9: $60
	add b                                            ; $6eea: $80
	ld [bc], a                                       ; $6eeb: $02
	ld d, e                                          ; $6eec: $53
	add hl, bc                                       ; $6eed: $09
	ret nz                                           ; $6eee: $c0

	ld bc, $07a0                                     ; $6eef: $01 $a0 $07
	ld bc, $e4c7                                     ; $6ef2: $01 $c7 $e4
	nop                                              ; $6ef5: $00
	add l                                            ; $6ef6: $85

jr_07c_6ef7:
	add hl, bc                                       ; $6ef7: $09
	ret nz                                           ; $6ef8: $c0

	ld bc, $07a0                                     ; $6ef9: $01 $a0 $07
	ld bc, $e4d1                                     ; $6efc: $01 $d1 $e4
	nop                                              ; $6eff: $00
	ld [bc], a                                       ; $6f00: $02
	jr z, @+$0d                                      ; $6f01: $28 $0b

	pop bc                                           ; $6f03: $c1
	ld e, c                                          ; $6f04: $59
	db $e3                                           ; $6f05: $e3
	nop                                              ; $6f06: $00
	adc h                                            ; $6f07: $8c
	ret nz                                           ; $6f08: $c0

	ld bc, $07a0                                     ; $6f09: $01 $a0 $07
	ld bc, $6b14                                     ; $6f0c: $01 $14 $6b
	ld bc, $091b                                     ; $6f0f: $01 $1b $09
	rlca                                             ; $6f12: $07
	jr nz, @-$7c                                     ; $6f13: $20 $82

	and b                                            ; $6f15: $a0

jr_07c_6f16:
	ld b, $e4                                        ; $6f16: $06 $e4
	nop                                              ; $6f18: $00
	pop hl                                           ; $6f19: $e1
	ei                                               ; $6f1a: $fb
	add b                                            ; $6f1b: $80
	and b                                            ; $6f1c: $a0
	nop                                              ; $6f1d: $00
	dec bc                                           ; $6f1e: $0b
	ld bc, $0920                                     ; $6f1f: $01 $20 $09
	rlca                                             ; $6f22: $07
	jr nz, jr_07c_6ea7                               ; $6f23: $20 $82

	and b                                            ; $6f25: $a0

jr_07c_6f26:
	add hl, bc                                       ; $6f26: $09
	db $e4                                           ; $6f27: $e4
	ld bc, $fb4b                                     ; $6f28: $01 $4b $fb
	add b                                            ; $6f2b: $80
	and b                                            ; $6f2c: $a0
	ld bc, $010b                                     ; $6f2d: $01 $0b $01
	inc h                                            ; $6f30: $24
	add hl, bc                                       ; $6f31: $09
	rlca                                             ; $6f32: $07
	jr nz, jr_07c_6eb7                               ; $6f33: $20 $82

	and b                                            ; $6f35: $a0

jr_07c_6f36:
	add hl, bc                                       ; $6f36: $09
	db $e4                                           ; $6f37: $e4
	ld bc, $fbb5                                     ; $6f38: $01 $b5 $fb
	add b                                            ; $6f3b: $80
	and b                                            ; $6f3c: $a0
	ld [bc], a                                       ; $6f3d: $02
	dec bc                                           ; $6f3e: $0b
	ld bc, $0929                                     ; $6f3f: $01 $29 $09
	rlca                                             ; $6f42: $07
	jr nz, jr_07c_6ec7                               ; $6f43: $20 $82

	and b                                            ; $6f45: $a0

jr_07c_6f46:
	add hl, bc                                       ; $6f46: $09
	db $e4                                           ; $6f47: $e4
	ld bc, $fbfb                                     ; $6f48: $01 $fb $fb
	add b                                            ; $6f4b: $80
	and b                                            ; $6f4c: $a0
	inc bc                                           ; $6f4d: $03
	dec bc                                           ; $6f4e: $0b
	ld bc, $092d                                     ; $6f4f: $01 $2d $09
	rlca                                             ; $6f52: $07
	jr nz, @-$7c                                     ; $6f53: $20 $82

	and b                                            ; $6f55: $a0

jr_07c_6f56:
	add hl, bc                                       ; $6f56: $09
	db $e4                                           ; $6f57: $e4
	ld [bc], a                                       ; $6f58: $02
	ld h, l                                          ; $6f59: $65
	ei                                               ; $6f5a: $fb
	add b                                            ; $6f5b: $80
	and b                                            ; $6f5c: $a0
	inc b                                            ; $6f5d: $04
	dec bc                                           ; $6f5e: $0b
	ld bc, $0932                                     ; $6f5f: $01 $32 $09
	rlca                                             ; $6f62: $07
	jr nz, jr_07c_6ee7                               ; $6f63: $20 $82

	and b                                            ; $6f65: $a0

jr_07c_6f66:
	add hl, bc                                       ; $6f66: $09
	db $e4                                           ; $6f67: $e4
	ld [bc], a                                       ; $6f68: $02
	rst GetHLinHL                                          ; $6f69: $cf
	ei                                               ; $6f6a: $fb
	add b                                            ; $6f6b: $80
	and b                                            ; $6f6c: $a0
	dec b                                            ; $6f6d: $05
	dec bc                                           ; $6f6e: $0b
	ld bc, $0936                                     ; $6f6f: $01 $36 $09
	rlca                                             ; $6f72: $07
	jr nz, jr_07c_6ef7                               ; $6f73: $20 $82

	and b                                            ; $6f75: $a0

jr_07c_6f76:
	add hl, bc                                       ; $6f76: $09
	db $e4                                           ; $6f77: $e4
	inc bc                                           ; $6f78: $03
	add hl, sp                                       ; $6f79: $39
	jr z, @+$13                                      ; $6f7a: $28 $11

	pop bc                                           ; $6f7c: $c1
	ld e, e                                          ; $6f7d: $5b
	pop bc                                           ; $6f7e: $c1
	ld e, c                                          ; $6f7f: $59
	db $e3                                           ; $6f80: $e3
	nop                                              ; $6f81: $00
	adc a                                            ; $6f82: $8f
	pop hl                                           ; $6f83: $e1
	ld [bc], a                                       ; $6f84: $02
	ld [bc], a                                       ; $6f85: $02
	pop hl                                           ; $6f86: $e1
	ret nz                                           ; $6f87: $c0

	ld bc, $07a0                                     ; $6f88: $01 $a0 $07
	ld bc, $6b14                                     ; $6f8b: $01 $14 $6b
	ld bc, $091b                                     ; $6f8e: $01 $1b $09
	rlca                                             ; $6f91: $07
	jr nz, jr_07c_6f16                               ; $6f92: $20 $82

	and b                                            ; $6f94: $a0
	ld b, $e4                                        ; $6f95: $06 $e4
	nop                                              ; $6f97: $00
	sbc a                                            ; $6f98: $9f
	ei                                               ; $6f99: $fb
	add b                                            ; $6f9a: $80
	and b                                            ; $6f9b: $a0
	nop                                              ; $6f9c: $00
	dec bc                                           ; $6f9d: $0b
	ld bc, $0920                                     ; $6f9e: $01 $20 $09
	rlca                                             ; $6fa1: $07
	jr nz, jr_07c_6f26                               ; $6fa2: $20 $82

	and b                                            ; $6fa4: $a0
	add hl, bc                                       ; $6fa5: $09
	db $e4                                           ; $6fa6: $e4
	ld bc, $fb09                                     ; $6fa7: $01 $09 $fb
	add b                                            ; $6faa: $80
	and b                                            ; $6fab: $a0
	ld bc, $010b                                     ; $6fac: $01 $0b $01
	inc h                                            ; $6faf: $24
	add hl, bc                                       ; $6fb0: $09
	rlca                                             ; $6fb1: $07
	jr nz, jr_07c_6f36                               ; $6fb2: $20 $82

	and b                                            ; $6fb4: $a0
	add hl, bc                                       ; $6fb5: $09
	db $e4                                           ; $6fb6: $e4
	ld bc, $fb61                                     ; $6fb7: $01 $61 $fb
	add b                                            ; $6fba: $80
	and b                                            ; $6fbb: $a0
	ld [bc], a                                       ; $6fbc: $02
	dec bc                                           ; $6fbd: $0b
	ld bc, $0929                                     ; $6fbe: $01 $29 $09
	rlca                                             ; $6fc1: $07
	jr nz, jr_07c_6f46                               ; $6fc2: $20 $82

	and b                                            ; $6fc4: $a0
	add hl, bc                                       ; $6fc5: $09
	db $e4                                           ; $6fc6: $e4
	ld bc, $fbb9                                     ; $6fc7: $01 $b9 $fb
	add b                                            ; $6fca: $80
	and b                                            ; $6fcb: $a0
	inc bc                                           ; $6fcc: $03
	dec bc                                           ; $6fcd: $0b
	ld bc, $092d                                     ; $6fce: $01 $2d $09
	rlca                                             ; $6fd1: $07
	jr nz, jr_07c_6f56                               ; $6fd2: $20 $82

	and b                                            ; $6fd4: $a0
	add hl, bc                                       ; $6fd5: $09
	db $e4                                           ; $6fd6: $e4
	ld [bc], a                                       ; $6fd7: $02
	inc hl                                           ; $6fd8: $23
	ei                                               ; $6fd9: $fb
	add b                                            ; $6fda: $80
	and b                                            ; $6fdb: $a0
	inc b                                            ; $6fdc: $04
	dec bc                                           ; $6fdd: $0b
	ld bc, $0932                                     ; $6fde: $01 $32 $09
	rlca                                             ; $6fe1: $07
	jr nz, jr_07c_6f66                               ; $6fe2: $20 $82

	and b                                            ; $6fe4: $a0
	add hl, bc                                       ; $6fe5: $09
	db $e4                                           ; $6fe6: $e4
	ld [bc], a                                       ; $6fe7: $02
	adc l                                            ; $6fe8: $8d
	ei                                               ; $6fe9: $fb
	add b                                            ; $6fea: $80
	and b                                            ; $6feb: $a0
	dec b                                            ; $6fec: $05
	dec bc                                           ; $6fed: $0b
	ld bc, $0936                                     ; $6fee: $01 $36 $09
	rlca                                             ; $6ff1: $07
	jr nz, jr_07c_6f76                               ; $6ff2: $20 $82

	and b                                            ; $6ff4: $a0
	add hl, bc                                       ; $6ff5: $09
	db $e4                                           ; $6ff6: $e4
	ld [bc], a                                       ; $6ff7: $02
	rst FarCall                                          ; $6ff8: $f7
	add hl, bc                                       ; $6ff9: $09
	dec sp                                           ; $6ffa: $3b
	ret nz                                           ; $6ffb: $c0

	inc c                                            ; $6ffc: $0c
	ldh [rAUD3HIGH], a                               ; $6ffd: $e0 $1e
	pop bc                                           ; $6fff: $c1
	ld e, e                                          ; $7000: $5b
	pop hl                                           ; $7001: $e1
	ld [bc], a                                       ; $7002: $02
	nop                                              ; $7003: $00
	ret c                                            ; $7004: $d8

	add c                                            ; $7005: $81
	ret nz                                           ; $7006: $c0

	dec de                                           ; $7007: $1b
	ret nc                                           ; $7008: $d0

	ld bc, $06d5                                     ; $7009: $01 $d5 $06
	ret nz                                           ; $700c: $c0

	ld bc, $02a0                                     ; $700d: $01 $a0 $02
	ld bc, $003b                                     ; $7010: $01 $3b $00
	ld b, $c0                                        ; $7013: $06 $c0
	ld bc, $02a0                                     ; $7015: $01 $a0 $02
	ld bc, $e1d5                                     ; $7018: $01 $d5 $e1
	ld [bc], a                                       ; $701b: $02
	rlca                                             ; $701c: $07
	call nz, $c081                                   ; $701d: $c4 $81 $c0
	dec de                                           ; $7020: $1b
	ret nc                                           ; $7021: $d0

	ld bc, $06d5                                     ; $7022: $01 $d5 $06
	ret nz                                           ; $7025: $c0

	ld bc, $02a0                                     ; $7026: $01 $a0 $02
	ld bc, $0042                                     ; $7029: $01 $42 $00
	ld b, $c0                                        ; $702c: $06 $c0
	ld bc, $02a0                                     ; $702e: $01 $a0 $02
	ld bc, $e4da                                     ; $7031: $01 $da $e4
	ld [bc], a                                       ; $7034: $02
	rst FarCall                                          ; $7035: $f7
	add hl, bc                                       ; $7036: $09
	dec sp                                           ; $7037: $3b
	ret nz                                           ; $7038: $c0

	inc c                                            ; $7039: $0c
	ldh [rAUD3HIGH], a                               ; $703a: $e0 $1e
	pop bc                                           ; $703c: $c1
	ld e, e                                          ; $703d: $5b
	pop hl                                           ; $703e: $e1
	ld [bc], a                                       ; $703f: $02
	nop                                              ; $7040: $00
	ret c                                            ; $7041: $d8

	add c                                            ; $7042: $81
	ret nz                                           ; $7043: $c0

	dec de                                           ; $7044: $1b
	ret nc                                           ; $7045: $d0

	ld bc, $06d5                                     ; $7046: $01 $d5 $06
	ret nz                                           ; $7049: $c0

	ld bc, $02a0                                     ; $704a: $01 $a0 $02
	ld bc, $003b                                     ; $704d: $01 $3b $00
	ld b, $c0                                        ; $7050: $06 $c0
	ld bc, $02a0                                     ; $7052: $01 $a0 $02
	ld bc, $e1de                                     ; $7055: $01 $de $e1
	ld [bc], a                                       ; $7058: $02
	ld [$8116], sp                                   ; $7059: $08 $16 $81
	ret nz                                           ; $705c: $c0

	dec de                                           ; $705d: $1b
	ret nc                                           ; $705e: $d0

	ld bc, $06d5                                     ; $705f: $01 $d5 $06
	ret nz                                           ; $7062: $c0

	ld bc, $02a0                                     ; $7063: $01 $a0 $02
	ld bc, $00e7                                     ; $7066: $01 $e7 $00
	ld b, $c0                                        ; $7069: $06 $c0
	ld bc, $02a0                                     ; $706b: $01 $a0 $02
	ld bc, $e4ee                                     ; $706e: $01 $ee $e4
	ld [bc], a                                       ; $7071: $02
	cp d                                             ; $7072: $ba
	add hl, bc                                       ; $7073: $09
	dec sp                                           ; $7074: $3b
	ret nz                                           ; $7075: $c0

	inc c                                            ; $7076: $0c
	ldh [rAUD3HIGH], a                               ; $7077: $e0 $1e
	pop bc                                           ; $7079: $c1
	ld e, e                                          ; $707a: $5b
	pop hl                                           ; $707b: $e1
	ld [bc], a                                       ; $707c: $02
	ld bc, $8120                                     ; $707d: $01 $20 $81
	ret nz                                           ; $7080: $c0

	dec de                                           ; $7081: $1b
	pop de                                           ; $7082: $d1
	ld bc, $06d5                                     ; $7083: $01 $d5 $06
	ret nz                                           ; $7086: $c0

	ld bc, $03a0                                     ; $7087: $01 $a0 $03
	ld bc, $00f0                                     ; $708a: $01 $f0 $00
	ld b, $c0                                        ; $708d: $06 $c0
	ld bc, $03a0                                     ; $708f: $01 $a0 $03
	ld bc, $e1f7                                     ; $7092: $01 $f7 $e1
	ld [bc], a                                       ; $7095: $02
	rlca                                             ; $7096: $07
	call nz, $c081                                   ; $7097: $c4 $81 $c0
	dec de                                           ; $709a: $1b
	pop de                                           ; $709b: $d1
	ld bc, $06d5                                     ; $709c: $01 $d5 $06
	ret nz                                           ; $709f: $c0

	ld bc, $03a0                                     ; $70a0: $01 $a0 $03
	ld bc, $00fd                                     ; $70a3: $01 $fd $00
	ld b, $c0                                        ; $70a6: $06 $c0
	ld bc, $03a0                                     ; $70a8: $01 $a0 $03
	ld [bc], a                                       ; $70ab: $02
	inc b                                            ; $70ac: $04
	db $e4                                           ; $70ad: $e4
	ld [bc], a                                       ; $70ae: $02
	ld a, l                                          ; $70af: $7d
	add hl, bc                                       ; $70b0: $09
	dec sp                                           ; $70b1: $3b
	ret nz                                           ; $70b2: $c0

	inc c                                            ; $70b3: $0c
	ldh [rAUD3HIGH], a                               ; $70b4: $e0 $1e
	pop bc                                           ; $70b6: $c1
	ld e, e                                          ; $70b7: $5b
	pop hl                                           ; $70b8: $e1
	ld [bc], a                                       ; $70b9: $02
	ld bc, $8120                                     ; $70ba: $01 $20 $81
	ret nz                                           ; $70bd: $c0

	dec de                                           ; $70be: $1b
	pop de                                           ; $70bf: $d1
	ld bc, $06d5                                     ; $70c0: $01 $d5 $06
	ret nz                                           ; $70c3: $c0

	ld bc, $03a0                                     ; $70c4: $01 $a0 $03
	ld [bc], a                                       ; $70c7: $02
	add hl, bc                                       ; $70c8: $09
	nop                                              ; $70c9: $00
	ld b, $c0                                        ; $70ca: $06 $c0
	ld bc, $03a0                                     ; $70cc: $01 $a0 $03
	ld [bc], a                                       ; $70cf: $02
	rrca                                             ; $70d0: $0f
	pop hl                                           ; $70d1: $e1
	ld [bc], a                                       ; $70d2: $02
	ld [$8116], sp                                   ; $70d3: $08 $16 $81
	ret nz                                           ; $70d6: $c0

	dec de                                           ; $70d7: $1b
	pop de                                           ; $70d8: $d1
	ld bc, $06d5                                     ; $70d9: $01 $d5 $06
	ret nz                                           ; $70dc: $c0

	ld bc, $03a0                                     ; $70dd: $01 $a0 $03
	ld [bc], a                                       ; $70e0: $02
	rra                                              ; $70e1: $1f
	nop                                              ; $70e2: $00
	ld b, $c0                                        ; $70e3: $06 $c0
	ld bc, $03a0                                     ; $70e5: $01 $a0 $03
	ld [bc], a                                       ; $70e8: $02
	daa                                              ; $70e9: $27
	db $e4                                           ; $70ea: $e4
	ld [bc], a                                       ; $70eb: $02
	ld b, b                                          ; $70ec: $40
	add hl, bc                                       ; $70ed: $09
	add hl, hl                                       ; $70ee: $29
	ret nz                                           ; $70ef: $c0

	inc c                                            ; $70f0: $0c
	ldh [rAUD3HIGH], a                               ; $70f1: $e0 $1e
	pop bc                                           ; $70f3: $c1
	ld e, e                                          ; $70f4: $5b
	pop hl                                           ; $70f5: $e1
	ld [bc], a                                       ; $70f6: $02
	ld bc, $8168                                     ; $70f7: $01 $68 $81
	ret nz                                           ; $70fa: $c0

	dec de                                           ; $70fb: $1b
	jp nc, $d501                                     ; $70fc: $d2 $01 $d5

	ld b, $c0                                        ; $70ff: $06 $c0
	ld bc, $04a0                                     ; $7101: $01 $a0 $04
	ld [bc], a                                       ; $7104: $02
	dec [hl]                                         ; $7105: $35
	nop                                              ; $7106: $00
	ld b, $c0                                        ; $7107: $06 $c0
	ld bc, $04a0                                     ; $7109: $01 $a0 $04
	ld [bc], a                                       ; $710c: $02
	ld b, b                                          ; $710d: $40
	pop hl                                           ; $710e: $e1
	ld [bc], a                                       ; $710f: $02
	rlca                                             ; $7110: $07
	call nz, $04e0                                   ; $7111: $c4 $e0 $04
	ld b, a                                          ; $7114: $47
	db $e4                                           ; $7115: $e4
	ld [bc], a                                       ; $7116: $02
	dec d                                            ; $7117: $15
	add hl, bc                                       ; $7118: $09
	add hl, hl                                       ; $7119: $29
	ret nz                                           ; $711a: $c0

	inc c                                            ; $711b: $0c
	ldh [rAUD3HIGH], a                               ; $711c: $e0 $1e
	pop bc                                           ; $711e: $c1
	ld e, e                                          ; $711f: $5b
	pop hl                                           ; $7120: $e1
	ld [bc], a                                       ; $7121: $02
	ld bc, $8168                                     ; $7122: $01 $68 $81
	ret nz                                           ; $7125: $c0

	dec de                                           ; $7126: $1b
	jp nc, $d501                                     ; $7127: $d2 $01 $d5

	ld b, $c0                                        ; $712a: $06 $c0
	ld bc, $04a0                                     ; $712c: $01 $a0 $04
	ld [bc], a                                       ; $712f: $02
	ld c, e                                          ; $7130: $4b
	nop                                              ; $7131: $00
	ld b, $c0                                        ; $7132: $06 $c0
	ld bc, $04a0                                     ; $7134: $01 $a0 $04
	ld [bc], a                                       ; $7137: $02
	ld b, b                                          ; $7138: $40
	pop hl                                           ; $7139: $e1
	ld [bc], a                                       ; $713a: $02
	ld [$e016], sp                                   ; $713b: $08 $16 $e0
	inc b                                            ; $713e: $04
	inc e                                            ; $713f: $1c
	db $e4                                           ; $7140: $e4
	ld bc, $09ea                                     ; $7141: $01 $ea $09
	dec sp                                           ; $7144: $3b
	ret nz                                           ; $7145: $c0

	inc c                                            ; $7146: $0c
	ldh [rAUD3HIGH], a                               ; $7147: $e0 $1e
	pop bc                                           ; $7149: $c1
	ld e, e                                          ; $714a: $5b
	pop hl                                           ; $714b: $e1
	ld [bc], a                                       ; $714c: $02
	ld bc, $81b0                                     ; $714d: $01 $b0 $81
	ret nz                                           ; $7150: $c0

	dec de                                           ; $7151: $1b
	db $d3                                           ; $7152: $d3
	ld bc, $06d5                                     ; $7153: $01 $d5 $06
	ret nz                                           ; $7156: $c0

	ld bc, $05a0                                     ; $7157: $01 $a0 $05
	ld bc, $0079                                     ; $715a: $01 $79 $00
	ld b, $c0                                        ; $715d: $06 $c0
	ld bc, $05a0                                     ; $715f: $01 $a0 $05
	ld [bc], a                                       ; $7162: $02
	ld c, [hl]                                       ; $7163: $4e
	pop hl                                           ; $7164: $e1
	ld [bc], a                                       ; $7165: $02
	rlca                                             ; $7166: $07
	call nz, $c081                                   ; $7167: $c4 $81 $c0
	dec de                                           ; $716a: $1b
	db $d3                                           ; $716b: $d3
	ld bc, $06d5                                     ; $716c: $01 $d5 $06
	ret nz                                           ; $716f: $c0

	ld bc, $05a0                                     ; $7170: $01 $a0 $05
	ld [bc], a                                       ; $7173: $02
	ld d, c                                          ; $7174: $51
	nop                                              ; $7175: $00
	ld b, $c0                                        ; $7176: $06 $c0
	ld bc, $05a0                                     ; $7178: $01 $a0 $05
	ld [bc], a                                       ; $717b: $02
	ld e, c                                          ; $717c: $59
	db $e4                                           ; $717d: $e4
	ld bc, $09ad                                     ; $717e: $01 $ad $09
	dec sp                                           ; $7181: $3b
	ret nz                                           ; $7182: $c0

	inc c                                            ; $7183: $0c
	ldh [rAUD3HIGH], a                               ; $7184: $e0 $1e
	pop bc                                           ; $7186: $c1
	ld e, e                                          ; $7187: $5b
	pop hl                                           ; $7188: $e1
	ld [bc], a                                       ; $7189: $02
	ld bc, $81b0                                     ; $718a: $01 $b0 $81
	ret nz                                           ; $718d: $c0

	dec de                                           ; $718e: $1b
	db $d3                                           ; $718f: $d3
	ld bc, $06d5                                     ; $7190: $01 $d5 $06
	ret nz                                           ; $7193: $c0

	ld bc, $05a0                                     ; $7194: $01 $a0 $05
	ld bc, $0079                                     ; $7197: $01 $79 $00
	ld b, $c0                                        ; $719a: $06 $c0
	ld bc, $05a0                                     ; $719c: $01 $a0 $05
	ld [bc], a                                       ; $719f: $02
	ld e, h                                          ; $71a0: $5c
	pop hl                                           ; $71a1: $e1
	ld [bc], a                                       ; $71a2: $02
	ld [$8116], sp                                   ; $71a3: $08 $16 $81
	ret nz                                           ; $71a6: $c0

	dec de                                           ; $71a7: $1b
	db $d3                                           ; $71a8: $d3
	ld bc, $06d5                                     ; $71a9: $01 $d5 $06
	ret nz                                           ; $71ac: $c0

	ld bc, $05a0                                     ; $71ad: $01 $a0 $05
	ld [bc], a                                       ; $71b0: $02
	ld h, b                                          ; $71b1: $60
	nop                                              ; $71b2: $00
	ld b, $c0                                        ; $71b3: $06 $c0
	ld bc, $05a0                                     ; $71b5: $01 $a0 $05
	ld bc, $e4ee                                     ; $71b8: $01 $ee $e4
	ld bc, $0970                                     ; $71bb: $01 $70 $09
	dec sp                                           ; $71be: $3b
	ret nz                                           ; $71bf: $c0

	inc c                                            ; $71c0: $0c
	ldh [rAUD3HIGH], a                               ; $71c1: $e0 $1e
	pop bc                                           ; $71c3: $c1
	ld e, e                                          ; $71c4: $5b

jr_07c_71c5:
	pop hl                                           ; $71c5: $e1
	ld [bc], a                                       ; $71c6: $02
	ld bc, $81f8                                     ; $71c7: $01 $f8 $81
	ret nz                                           ; $71ca: $c0

	dec de                                           ; $71cb: $1b
	rst SubAFromHL                                          ; $71cc: $d7
	ld bc, $06d5                                     ; $71cd: $01 $d5 $06
	ret nz                                           ; $71d0: $c0

	ld bc, $08a0                                     ; $71d1: $01 $a0 $08
	ld [bc], a                                       ; $71d4: $02
	ld l, b                                          ; $71d5: $68
	nop                                              ; $71d6: $00
	ld b, $c0                                        ; $71d7: $06 $c0
	ld bc, $08a0                                     ; $71d9: $01 $a0 $08
	ld [bc], a                                       ; $71dc: $02
	ld l, [hl]                                       ; $71dd: $6e
	pop hl                                           ; $71de: $e1
	ld [bc], a                                       ; $71df: $02
	rlca                                             ; $71e0: $07
	call nz, $c081                                   ; $71e1: $c4 $81 $c0
	dec de                                           ; $71e4: $1b
	rst SubAFromHL                                          ; $71e5: $d7
	ld bc, $06d5                                     ; $71e6: $01 $d5 $06
	ret nz                                           ; $71e9: $c0

	ld bc, $08a0                                     ; $71ea: $01 $a0 $08
	ld [bc], a                                       ; $71ed: $02
	ld [hl], d                                       ; $71ee: $72
	nop                                              ; $71ef: $00
	ld b, $c0                                        ; $71f0: $06 $c0
	ld bc, $08a0                                     ; $71f2: $01 $a0 $08
	ld [bc], a                                       ; $71f5: $02
	ld a, c                                          ; $71f6: $79
	db $e4                                           ; $71f7: $e4
	ld bc, $0933                                     ; $71f8: $01 $33 $09
	dec sp                                           ; $71fb: $3b
	ret nz                                           ; $71fc: $c0

	inc c                                            ; $71fd: $0c
	ldh [rAUD3HIGH], a                               ; $71fe: $e0 $1e
	pop bc                                           ; $7200: $c1
	ld e, e                                          ; $7201: $5b

jr_07c_7202:
	pop hl                                           ; $7202: $e1
	ld [bc], a                                       ; $7203: $02
	ld bc, $81f8                                     ; $7204: $01 $f8 $81
	ret nz                                           ; $7207: $c0

	dec de                                           ; $7208: $1b
	rst SubAFromHL                                          ; $7209: $d7
	ld bc, $06d5                                     ; $720a: $01 $d5 $06
	ret nz                                           ; $720d: $c0

	ld bc, $08a0                                     ; $720e: $01 $a0 $08
	ld [bc], a                                       ; $7211: $02
	ld a, a                                          ; $7212: $7f
	nop                                              ; $7213: $00
	ld b, $c0                                        ; $7214: $06 $c0
	ld bc, $08a0                                     ; $7216: $01 $a0 $08
	ld [bc], a                                       ; $7219: $02
	ld l, [hl]                                       ; $721a: $6e
	pop hl                                           ; $721b: $e1
	ld [bc], a                                       ; $721c: $02
	ld [$8116], sp                                   ; $721d: $08 $16 $81
	ret nz                                           ; $7220: $c0

	dec de                                           ; $7221: $1b
	rst SubAFromHL                                          ; $7222: $d7
	ld bc, $06d5                                     ; $7223: $01 $d5 $06
	ret nz                                           ; $7226: $c0

	ld bc, $08a0                                     ; $7227: $01 $a0 $08
	ld [bc], a                                       ; $722a: $02
	add [hl]                                         ; $722b: $86
	nop                                              ; $722c: $00
	ld b, $c0                                        ; $722d: $06 $c0
	ld bc, $08a0                                     ; $722f: $01 $a0 $08
	ld [bc], a                                       ; $7232: $02
	adc d                                            ; $7233: $8a
	db $e4                                           ; $7234: $e4
	nop                                              ; $7235: $00
	or $09                                           ; $7236: $f6 $09
	dec sp                                           ; $7238: $3b
	ret nz                                           ; $7239: $c0

	inc c                                            ; $723a: $0c
	ldh [rAUD3HIGH], a                               ; $723b: $e0 $1e
	pop bc                                           ; $723d: $c1
	ld e, e                                          ; $723e: $5b
	pop hl                                           ; $723f: $e1
	ld [bc], a                                       ; $7240: $02
	ld [bc], a                                       ; $7241: $02
	jr z, jr_07c_71c5                                ; $7242: $28 $81

	ret nz                                           ; $7244: $c0

	dec de                                           ; $7245: $1b
	ret c                                            ; $7246: $d8

	ld bc, $06d5                                     ; $7247: $01 $d5 $06
	ret nz                                           ; $724a: $c0

	ld bc, $09a0                                     ; $724b: $01 $a0 $09
	ld [bc], a                                       ; $724e: $02
	adc l                                            ; $724f: $8d
	nop                                              ; $7250: $00
	ld b, $c0                                        ; $7251: $06 $c0
	ld bc, $09a0                                     ; $7253: $01 $a0 $09
	ld [bc], a                                       ; $7256: $02
	sub h                                            ; $7257: $94
	pop hl                                           ; $7258: $e1
	ld [bc], a                                       ; $7259: $02
	rlca                                             ; $725a: $07
	call nz, $c081                                   ; $725b: $c4 $81 $c0
	dec de                                           ; $725e: $1b
	ret c                                            ; $725f: $d8

	ld bc, $06d5                                     ; $7260: $01 $d5 $06
	ret nz                                           ; $7263: $c0

	ld bc, $09a0                                     ; $7264: $01 $a0 $09
	ld [bc], a                                       ; $7267: $02
	sbc b                                            ; $7268: $98
	nop                                              ; $7269: $00
	ld b, $c0                                        ; $726a: $06 $c0
	ld bc, $09a0                                     ; $726c: $01 $a0 $09
	ld [bc], a                                       ; $726f: $02
	sbc a                                            ; $7270: $9f
	db $e4                                           ; $7271: $e4
	nop                                              ; $7272: $00
	cp c                                             ; $7273: $b9
	add hl, bc                                       ; $7274: $09
	dec sp                                           ; $7275: $3b
	ret nz                                           ; $7276: $c0

	inc c                                            ; $7277: $0c
	ldh [rAUD3HIGH], a                               ; $7278: $e0 $1e
	pop bc                                           ; $727a: $c1
	ld e, e                                          ; $727b: $5b
	pop hl                                           ; $727c: $e1
	ld [bc], a                                       ; $727d: $02
	ld [bc], a                                       ; $727e: $02
	jr z, jr_07c_7202                                ; $727f: $28 $81

	ret nz                                           ; $7281: $c0

	dec de                                           ; $7282: $1b
	ret c                                            ; $7283: $d8

	ld bc, $06d5                                     ; $7284: $01 $d5 $06
	ret nz                                           ; $7287: $c0

	ld bc, $09a0                                     ; $7288: $01 $a0 $09
	ld [bc], a                                       ; $728b: $02
	adc l                                            ; $728c: $8d
	nop                                              ; $728d: $00
	ld b, $c0                                        ; $728e: $06 $c0
	ld bc, $09a0                                     ; $7290: $01 $a0 $09
	ld [bc], a                                       ; $7293: $02
	and c                                            ; $7294: $a1
	pop hl                                           ; $7295: $e1
	ld [bc], a                                       ; $7296: $02
	ld [$8116], sp                                   ; $7297: $08 $16 $81
	ret nz                                           ; $729a: $c0

	dec de                                           ; $729b: $1b
	ret c                                            ; $729c: $d8

	ld bc, $06d5                                     ; $729d: $01 $d5 $06
	ret nz                                           ; $72a0: $c0

	ld bc, $09a0                                     ; $72a1: $01 $a0 $09
	ld [bc], a                                       ; $72a4: $02
	sbc b                                            ; $72a5: $98
	nop                                              ; $72a6: $00
	ld b, $c0                                        ; $72a7: $06 $c0
	ld bc, $09a0                                     ; $72a9: $01 $a0 $09
	ld [bc], a                                       ; $72ac: $02
	and a                                            ; $72ad: $a7
	db $e4                                           ; $72ae: $e4
	nop                                              ; $72af: $00
	ld a, h                                          ; $72b0: $7c
	add hl, bc                                       ; $72b1: $09
	dec sp                                           ; $72b2: $3b
	ret nz                                           ; $72b3: $c0

	inc c                                            ; $72b4: $0c
	ldh [rAUD3HIGH], a                               ; $72b5: $e0 $1e
	pop bc                                           ; $72b7: $c1
	ld e, e                                          ; $72b8: $5b
	pop hl                                           ; $72b9: $e1
	ld [bc], a                                       ; $72ba: $02
	ld [bc], a                                       ; $72bb: $02
	adc b                                            ; $72bc: $88
	add c                                            ; $72bd: $81
	ret nz                                           ; $72be: $c0

	dec de                                           ; $72bf: $1b
	db $dd                                           ; $72c0: $dd
	ld bc, $06d5                                     ; $72c1: $01 $d5 $06
	ret nz                                           ; $72c4: $c0

	ld bc, $0aa0                                     ; $72c5: $01 $a0 $0a
	nop                                              ; $72c8: $00
	db $ec                                           ; $72c9: $ec
	nop                                              ; $72ca: $00
	ld b, $c0                                        ; $72cb: $06 $c0
	ld bc, $0aa0                                     ; $72cd: $01 $a0 $0a
	ld [bc], a                                       ; $72d0: $02

jr_07c_72d1:
	xor l                                            ; $72d1: $ad
	pop hl                                           ; $72d2: $e1
	ld [bc], a                                       ; $72d3: $02
	rlca                                             ; $72d4: $07
	call nz, $c081                                   ; $72d5: $c4 $81 $c0
	dec de                                           ; $72d8: $1b
	db $dd                                           ; $72d9: $dd
	ld bc, $06d5                                     ; $72da: $01 $d5 $06
	ret nz                                           ; $72dd: $c0

	ld bc, $0aa0                                     ; $72de: $01 $a0 $0a

jr_07c_72e1:
	ld [bc], a                                       ; $72e1: $02
	or c                                             ; $72e2: $b1
	nop                                              ; $72e3: $00
	ld b, $c0                                        ; $72e4: $06 $c0
	ld bc, $0aa0                                     ; $72e6: $01 $a0 $0a
	ld [bc], a                                       ; $72e9: $02
	cp b                                             ; $72ea: $b8
	db $e4                                           ; $72eb: $e4
	nop                                              ; $72ec: $00
	ccf                                              ; $72ed: $3f
	add hl, bc                                       ; $72ee: $09
	dec sp                                           ; $72ef: $3b
	ret nz                                           ; $72f0: $c0

jr_07c_72f1:
	inc c                                            ; $72f1: $0c
	ldh [rAUD3HIGH], a                               ; $72f2: $e0 $1e
	pop bc                                           ; $72f4: $c1
	ld e, e                                          ; $72f5: $5b
	pop hl                                           ; $72f6: $e1
	ld [bc], a                                       ; $72f7: $02
	ld [bc], a                                       ; $72f8: $02
	adc b                                            ; $72f9: $88
	add c                                            ; $72fa: $81
	ret nz                                           ; $72fb: $c0

	dec de                                           ; $72fc: $1b
	db $dd                                           ; $72fd: $dd
	ld bc, $06d5                                     ; $72fe: $01 $d5 $06

jr_07c_7301:
	ret nz                                           ; $7301: $c0

	ld bc, $0aa0                                     ; $7302: $01 $a0 $0a
	nop                                              ; $7305: $00
	db $ec                                           ; $7306: $ec
	nop                                              ; $7307: $00
	ld b, $c0                                        ; $7308: $06 $c0
	ld bc, $0aa0                                     ; $730a: $01 $a0 $0a
	ld bc, $e140                                     ; $730d: $01 $40 $e1
	ld [bc], a                                       ; $7310: $02

jr_07c_7311:
	ld [$8116], sp                                   ; $7311: $08 $16 $81
	ret nz                                           ; $7314: $c0

	dec de                                           ; $7315: $1b
	db $dd                                           ; $7316: $dd
	ld bc, $06d5                                     ; $7317: $01 $d5 $06
	ret nz                                           ; $731a: $c0

	ld bc, $0aa0                                     ; $731b: $01 $a0 $0a
	ld [bc], a                                       ; $731e: $02
	or c                                             ; $731f: $b1
	nop                                              ; $7320: $00

jr_07c_7321:
	ld b, $c0                                        ; $7321: $06 $c0
	ld bc, $0aa0                                     ; $7323: $01 $a0 $0a
	ld [bc], a                                       ; $7326: $02
	cp [hl]                                          ; $7327: $be
	db $e4                                           ; $7328: $e4
	nop                                              ; $7329: $00
	ld [bc], a                                       ; $732a: $02
	jr z, jr_07c_7348                                ; $732b: $28 $1b

	ret nz                                           ; $732d: $c0

	inc c                                            ; $732e: $0c
	ldh [rAUD3HIGH], a                               ; $732f: $e0 $1e

jr_07c_7331:
	pop bc                                           ; $7331: $c1
	ld e, e                                          ; $7332: $5b
	pop hl                                           ; $7333: $e1
	ld [bc], a                                       ; $7334: $02
	ld [bc], a                                       ; $7335: $02
	pop hl                                           ; $7336: $e1
	ret nz                                           ; $7337: $c0

	ld bc, $07a0                                     ; $7338: $01 $a0 $07
	ld [bc], a                                       ; $733b: $02
	ret nz                                           ; $733c: $c0

	pop bc                                           ; $733d: $c1
	ld e, c                                          ; $733e: $59
	db $e3                                           ; $733f: $e3
	nop                                              ; $7340: $00
	adc l                                            ; $7341: $8d
	ret nz                                           ; $7342: $c0

	ld bc, $07a0                                     ; $7343: $01 $a0 $07
	ld [bc], a                                       ; $7346: $02
	ret                                              ; $7347: $c9


jr_07c_7348:
	ld l, e                                          ; $7348: $6b
	ld [bc], a                                       ; $7349: $02
	rst GetHLinHL                                          ; $734a: $cf
	add hl, bc                                       ; $734b: $09
	rlca                                             ; $734c: $07
	jr nz, jr_07c_72d1                               ; $734d: $20 $82

	and b                                            ; $734f: $a0
	ld b, $e4                                        ; $7350: $06 $e4
	nop                                              ; $7352: $00
	ld h, d                                          ; $7353: $62
	ei                                               ; $7354: $fb
	add b                                            ; $7355: $80
	and b                                            ; $7356: $a0
	nop                                              ; $7357: $00
	dec bc                                           ; $7358: $0b
	ld [bc], a                                       ; $7359: $02
	db $d3                                           ; $735a: $d3
	add hl, bc                                       ; $735b: $09
	rlca                                             ; $735c: $07
	jr nz, jr_07c_72e1                               ; $735d: $20 $82

	and b                                            ; $735f: $a0
	add hl, bc                                       ; $7360: $09
	db $e4                                           ; $7361: $e4
	nop                                              ; $7362: $00
	adc [hl]                                         ; $7363: $8e
	ei                                               ; $7364: $fb
	add b                                            ; $7365: $80
	and b                                            ; $7366: $a0
	ld bc, $020b                                     ; $7367: $01 $0b $02
	rst SubAFromHL                                          ; $736a: $d7
	add hl, bc                                       ; $736b: $09
	rlca                                             ; $736c: $07
	jr nz, jr_07c_72f1                               ; $736d: $20 $82

	and b                                            ; $736f: $a0
	add hl, bc                                       ; $7370: $09
	db $e4                                           ; $7371: $e4
	nop                                              ; $7372: $00
	cp d                                             ; $7373: $ba
	ei                                               ; $7374: $fb
	add b                                            ; $7375: $80
	and b                                            ; $7376: $a0
	ld [bc], a                                       ; $7377: $02
	dec bc                                           ; $7378: $0b
	ld [bc], a                                       ; $7379: $02
	db $db                                           ; $737a: $db
	add hl, bc                                       ; $737b: $09
	rlca                                             ; $737c: $07
	jr nz, jr_07c_7301                               ; $737d: $20 $82

	and b                                            ; $737f: $a0
	add hl, bc                                       ; $7380: $09
	db $e4                                           ; $7381: $e4
	nop                                              ; $7382: $00
	call nc, $80fb                                   ; $7383: $d4 $fb $80
	and b                                            ; $7386: $a0
	inc bc                                           ; $7387: $03
	dec bc                                           ; $7388: $0b
	ld [bc], a                                       ; $7389: $02
	rst SubAFromDE                                          ; $738a: $df
	add hl, bc                                       ; $738b: $09
	rlca                                             ; $738c: $07
	jr nz, jr_07c_7311                               ; $738d: $20 $82

	and b                                            ; $738f: $a0
	add hl, bc                                       ; $7390: $09
	db $e4                                           ; $7391: $e4
	ld bc, $fb00                                     ; $7392: $01 $00 $fb
	add b                                            ; $7395: $80
	and b                                            ; $7396: $a0
	inc b                                            ; $7397: $04
	dec bc                                           ; $7398: $0b
	ld [bc], a                                       ; $7399: $02
	db $e3                                           ; $739a: $e3
	add hl, bc                                       ; $739b: $09
	rlca                                             ; $739c: $07
	jr nz, jr_07c_7321                               ; $739d: $20 $82

	and b                                            ; $739f: $a0
	add hl, bc                                       ; $73a0: $09
	db $e4                                           ; $73a1: $e4
	ld bc, $fb2c                                     ; $73a2: $01 $2c $fb
	add b                                            ; $73a5: $80
	and b                                            ; $73a6: $a0
	dec b                                            ; $73a7: $05
	dec bc                                           ; $73a8: $0b
	ld [bc], a                                       ; $73a9: $02
	rst SubAFromBC                                          ; $73aa: $e7
	add hl, bc                                       ; $73ab: $09
	rlca                                             ; $73ac: $07
	jr nz, jr_07c_7331                               ; $73ad: $20 $82

	and b                                            ; $73af: $a0
	add hl, bc                                       ; $73b0: $09
	db $e4                                           ; $73b1: $e4
	ld bc, $0958                                     ; $73b2: $01 $58 $09
	ld a, [hl-]                                      ; $73b5: $3a
	ret nz                                           ; $73b6: $c0

	inc c                                            ; $73b7: $0c
	ldh [rAUD3HIGH], a                               ; $73b8: $e0 $1e
	pop bc                                           ; $73ba: $c1
	ld e, e                                          ; $73bb: $5b
	pop hl                                           ; $73bc: $e1
	ld [bc], a                                       ; $73bd: $02
	nop                                              ; $73be: $00
	ret c                                            ; $73bf: $d8

	add c                                            ; $73c0: $81
	ret nz                                           ; $73c1: $c0

	dec de                                           ; $73c2: $1b
	ret nc                                           ; $73c3: $d0

	ld bc, $06d5                                     ; $73c4: $01 $d5 $06
	ret nz                                           ; $73c7: $c0

	ld bc, $02a0                                     ; $73c8: $01 $a0 $02
	ld bc, $003b                                     ; $73cb: $01 $3b $00
	ld b, $c0                                        ; $73ce: $06 $c0
	ld bc, $02a0                                     ; $73d0: $01 $a0 $02
	ld [bc], a                                       ; $73d3: $02
	db $eb                                           ; $73d4: $eb
	ldh [rSB], a                                     ; $73d5: $e0 $01
	ld [hl], b                                       ; $73d7: $70
	add c                                            ; $73d8: $81
	ret nz                                           ; $73d9: $c0

	dec de                                           ; $73da: $1b
	ret nc                                           ; $73db: $d0

	ld bc, $06d5                                     ; $73dc: $01 $d5 $06
	ret nz                                           ; $73df: $c0

	ld bc, $02a0                                     ; $73e0: $01 $a0 $02
	ld bc, $00e7                                     ; $73e3: $01 $e7 $00
	ld b, $c0                                        ; $73e6: $06 $c0
	ld bc, $02a0                                     ; $73e8: $01 $a0 $02
	ld [bc], a                                       ; $73eb: $02
	ldh a, [c]                                       ; $73ec: $f2
	db $e4                                           ; $73ed: $e4
	ld bc, $0982                                     ; $73ee: $01 $82 $09
	ld a, [hl-]                                      ; $73f1: $3a
	ret nz                                           ; $73f2: $c0

	inc c                                            ; $73f3: $0c
	ldh [rAUD3HIGH], a                               ; $73f4: $e0 $1e
	pop bc                                           ; $73f6: $c1
	ld e, e                                          ; $73f7: $5b
	pop hl                                           ; $73f8: $e1
	ld [bc], a                                       ; $73f9: $02
	ld bc, $8120                                     ; $73fa: $01 $20 $81
	ret nz                                           ; $73fd: $c0

	dec de                                           ; $73fe: $1b
	pop de                                           ; $73ff: $d1
	ld bc, $06d5                                     ; $7400: $01 $d5 $06
	ret nz                                           ; $7403: $c0

	ld bc, $03a0                                     ; $7404: $01 $a0 $03
	ld [bc], a                                       ; $7407: $02
	rst FarCall                                          ; $7408: $f7
	nop                                              ; $7409: $00
	ld b, $c0                                        ; $740a: $06 $c0
	ld bc, $03a0                                     ; $740c: $01 $a0 $03
	ld [bc], a                                       ; $740f: $02
	db $fd                                           ; $7410: $fd
	ldh [rSB], a                                     ; $7411: $e0 $01
	inc [hl]                                         ; $7413: $34
	add c                                            ; $7414: $81
	ret nz                                           ; $7415: $c0

	dec de                                           ; $7416: $1b
	pop de                                           ; $7417: $d1
	ld bc, $06d5                                     ; $7418: $01 $d5 $06
	ret nz                                           ; $741b: $c0

	ld bc, $03a0                                     ; $741c: $01 $a0 $03
	ld bc, $00fd                                     ; $741f: $01 $fd $00
	ld b, $c0                                        ; $7422: $06 $c0
	ld bc, $03a0                                     ; $7424: $01 $a0 $03
	inc bc                                           ; $7427: $03
	ld bc, $01e4                                     ; $7428: $01 $e4 $01
	ld b, [hl]                                       ; $742b: $46
	add hl, bc                                       ; $742c: $09
	jr z, @-$3e                                      ; $742d: $28 $c0

	inc c                                            ; $742f: $0c
	ldh [rAUD3HIGH], a                               ; $7430: $e0 $1e
	pop bc                                           ; $7432: $c1
	ld e, e                                          ; $7433: $5b
	pop hl                                           ; $7434: $e1
	ld [bc], a                                       ; $7435: $02
	ld bc, $8168                                     ; $7436: $01 $68 $81
	ret nz                                           ; $7439: $c0

	dec de                                           ; $743a: $1b
	jp nc, $d501                                     ; $743b: $d2 $01 $d5

	ld b, $c0                                        ; $743e: $06 $c0
	ld bc, $04a0                                     ; $7440: $01 $a0 $04
	ld [bc], a                                       ; $7443: $02
	ld c, e                                          ; $7444: $4b
	nop                                              ; $7445: $00
	ld b, $c0                                        ; $7446: $06 $c0
	ld bc, $04a0                                     ; $7448: $01 $a0 $04
	inc bc                                           ; $744b: $03
	rlca                                             ; $744c: $07
	ldh [rP1], a                                     ; $744d: $e0 $00
	ld hl, sp-$20                                    ; $744f: $f8 $e0
	ld bc, $e409                                     ; $7451: $01 $09 $e4
	ld bc, $091c                                     ; $7454: $01 $1c $09
	ld a, [hl-]                                      ; $7457: $3a
	ret nz                                           ; $7458: $c0

	inc c                                            ; $7459: $0c
	ldh [rAUD3HIGH], a                               ; $745a: $e0 $1e

jr_07c_745c:
	pop bc                                           ; $745c: $c1
	ld e, e                                          ; $745d: $5b
	pop hl                                           ; $745e: $e1
	ld [bc], a                                       ; $745f: $02
	ld bc, $81b0                                     ; $7460: $01 $b0 $81
	ret nz                                           ; $7463: $c0

	dec de                                           ; $7464: $1b
	db $d3                                           ; $7465: $d3
	ld bc, $06d5                                     ; $7466: $01 $d5 $06
	ret nz                                           ; $7469: $c0

	ld bc, $05a0                                     ; $746a: $01 $a0 $05
	ld bc, $0079                                     ; $746d: $01 $79 $00
	ld b, $c0                                        ; $7470: $06 $c0
	ld bc, $05a0                                     ; $7472: $01 $a0 $05
	inc bc                                           ; $7475: $03
	inc de                                           ; $7476: $13
	ldh [rP1], a                                     ; $7477: $e0 $00
	adc $81                                          ; $7479: $ce $81
	ret nz                                           ; $747b: $c0

	dec de                                           ; $747c: $1b
	db $d3                                           ; $747d: $d3
	ld bc, $06d5                                     ; $747e: $01 $d5 $06
	ret nz                                           ; $7481: $c0

	ld bc, $05a0                                     ; $7482: $01 $a0 $05
	ld [bc], a                                       ; $7485: $02
	ld h, b                                          ; $7486: $60
	nop                                              ; $7487: $00
	ld b, $c0                                        ; $7488: $06 $c0
	ld bc, $05a0                                     ; $748a: $01 $a0 $05
	inc bc                                           ; $748d: $03
	ld a, [de]                                       ; $748e: $1a
	db $e4                                           ; $748f: $e4
	nop                                              ; $7490: $00
	ldh [$09], a                                     ; $7491: $e0 $09
	ld a, [hl-]                                      ; $7493: $3a
	ret nz                                           ; $7494: $c0

	inc c                                            ; $7495: $0c
	ldh [rAUD3HIGH], a                               ; $7496: $e0 $1e
	pop bc                                           ; $7498: $c1
	ld e, e                                          ; $7499: $5b
	pop hl                                           ; $749a: $e1
	ld [bc], a                                       ; $749b: $02
	ld bc, $81f8                                     ; $749c: $01 $f8 $81
	ret nz                                           ; $749f: $c0

	dec de                                           ; $74a0: $1b
	rst SubAFromHL                                          ; $74a1: $d7
	ld bc, $06d5                                     ; $74a2: $01 $d5 $06
	ret nz                                           ; $74a5: $c0

	ld bc, $08a0                                     ; $74a6: $01 $a0 $08
	inc bc                                           ; $74a9: $03
	ld e, $00                                        ; $74aa: $1e $00
	ld b, $c0                                        ; $74ac: $06 $c0
	ld bc, $08a0                                     ; $74ae: $01 $a0 $08
	inc bc                                           ; $74b1: $03
	ld h, $e0                                        ; $74b2: $26 $e0
	nop                                              ; $74b4: $00
	sub d                                            ; $74b5: $92
	add c                                            ; $74b6: $81
	ret nz                                           ; $74b7: $c0

	dec de                                           ; $74b8: $1b
	rst SubAFromHL                                          ; $74b9: $d7
	ld bc, $06d5                                     ; $74ba: $01 $d5 $06
	ret nz                                           ; $74bd: $c0

	ld bc, $08a0                                     ; $74be: $01 $a0 $08
	inc bc                                           ; $74c1: $03
	ld [hl], $00                                     ; $74c2: $36 $00
	ld b, $c0                                        ; $74c4: $06 $c0
	ld bc, $08a0                                     ; $74c6: $01 $a0 $08
	inc bc                                           ; $74c9: $03
	dec a                                            ; $74ca: $3d
	db $e4                                           ; $74cb: $e4
	nop                                              ; $74cc: $00
	and h                                            ; $74cd: $a4
	add hl, bc                                       ; $74ce: $09
	ld a, [hl-]                                      ; $74cf: $3a
	ret nz                                           ; $74d0: $c0

	inc c                                            ; $74d1: $0c
	ldh [rAUD3HIGH], a                               ; $74d2: $e0 $1e
	pop bc                                           ; $74d4: $c1
	ld e, e                                          ; $74d5: $5b
	pop hl                                           ; $74d6: $e1
	ld [bc], a                                       ; $74d7: $02
	ld [bc], a                                       ; $74d8: $02
	jr z, jr_07c_745c                                ; $74d9: $28 $81

	ret nz                                           ; $74db: $c0

	dec de                                           ; $74dc: $1b
	ret c                                            ; $74dd: $d8

	ld bc, $06d5                                     ; $74de: $01 $d5 $06
	ret nz                                           ; $74e1: $c0

	ld bc, $09a0                                     ; $74e2: $01 $a0 $09
	ld [bc], a                                       ; $74e5: $02
	adc l                                            ; $74e6: $8d
	nop                                              ; $74e7: $00
	ld b, $c0                                        ; $74e8: $06 $c0
	ld bc, $09a0                                     ; $74ea: $01 $a0 $09
	inc bc                                           ; $74ed: $03
	ld b, b                                          ; $74ee: $40
	ldh [rP1], a                                     ; $74ef: $e0 $00
	ld d, [hl]                                       ; $74f1: $56
	add c                                            ; $74f2: $81
	ret nz                                           ; $74f3: $c0

	dec de                                           ; $74f4: $1b
	ret c                                            ; $74f5: $d8

	ld bc, $06d5                                     ; $74f6: $01 $d5 $06
	ret nz                                           ; $74f9: $c0

	ld bc, $09a0                                     ; $74fa: $01 $a0 $09
	ld bc, $00af                                     ; $74fd: $01 $af $00
	ld b, $c0                                        ; $7500: $06 $c0
	ld bc, $09a0                                     ; $7502: $01 $a0 $09
	ld [bc], a                                       ; $7505: $02
	sbc a                                            ; $7506: $9f
	db $e4                                           ; $7507: $e4
	nop                                              ; $7508: $00
	ld l, b                                          ; $7509: $68
	add hl, bc                                       ; $750a: $09
	ld a, [hl-]                                      ; $750b: $3a
	ret nz                                           ; $750c: $c0

	inc c                                            ; $750d: $0c
	ldh [rAUD3HIGH], a                               ; $750e: $e0 $1e
	pop bc                                           ; $7510: $c1
	ld e, e                                          ; $7511: $5b
	pop hl                                           ; $7512: $e1
	ld [bc], a                                       ; $7513: $02
	ld [bc], a                                       ; $7514: $02
	adc b                                            ; $7515: $88
	add c                                            ; $7516: $81
	ret nz                                           ; $7517: $c0

	dec de                                           ; $7518: $1b
	db $dd                                           ; $7519: $dd
	ld bc, $06d5                                     ; $751a: $01 $d5 $06
	ret nz                                           ; $751d: $c0

	ld bc, $0aa0                                     ; $751e: $01 $a0 $0a
	nop                                              ; $7521: $00
	db $ec                                           ; $7522: $ec
	nop                                              ; $7523: $00
	ld b, $c0                                        ; $7524: $06 $c0
	ld bc, $0aa0                                     ; $7526: $01 $a0 $0a
	inc bc                                           ; $7529: $03
	ld b, l                                          ; $752a: $45
	ldh [rP1], a                                     ; $752b: $e0 $00
	ld a, [de]                                       ; $752d: $1a
	add c                                            ; $752e: $81
	ret nz                                           ; $752f: $c0

	dec de                                           ; $7530: $1b
	db $dd                                           ; $7531: $dd
	ld bc, $06d5                                     ; $7532: $01 $d5 $06
	ret nz                                           ; $7535: $c0

	ld bc, $0aa0                                     ; $7536: $01 $a0 $0a
	inc bc                                           ; $7539: $03
	ld c, e                                          ; $753a: $4b
	nop                                              ; $753b: $00
	ld b, $c0                                        ; $753c: $06 $c0
	ld bc, $0aa0                                     ; $753e: $01 $a0 $0a
	inc bc                                           ; $7541: $03
	ld c, [hl]                                       ; $7542: $4e
	db $e4                                           ; $7543: $e4
	nop                                              ; $7544: $00
	inc l                                            ; $7545: $2c
	inc de                                           ; $7546: $13
	pop bc                                           ; $7547: $c1
	and c                                            ; $7548: $a1
	ret nz                                           ; $7549: $c0

	add hl, bc                                       ; $754a: $09
	db $e3                                           ; $754b: $e3
	nop                                              ; $754c: $00
	dec hl                                           ; $754d: $2b
	ret nz                                           ; $754e: $c0

	inc c                                            ; $754f: $0c
	pop hl                                           ; $7550: $e1
	ld bc, $c068                                     ; $7551: $01 $68 $c0
	add hl, bc                                       ; $7554: $09
	db $e3                                           ; $7555: $e3
	nop                                              ; $7556: $00
	ld b, c                                          ; $7557: $41
	ret nz                                           ; $7558: $c0

	jp z, $8115                                      ; $7559: $ca $15 $81

	ret nz                                           ; $755c: $c0

	dec de                                           ; $755d: $1b
	jp nc, $d501                                     ; $755e: $d2 $01 $d5

	ld b, $c0                                        ; $7561: $06 $c0
	ld bc, $04a0                                     ; $7563: $01 $a0 $04
	nop                                              ; $7566: $00
	db $ec                                           ; $7567: $ec
	nop                                              ; $7568: $00
	ld b, $c0                                        ; $7569: $06 $c0
	ld bc, $04a0                                     ; $756b: $01 $a0 $04
	inc bc                                           ; $756e: $03
	ld d, a                                          ; $756f: $57
	add hl, bc                                       ; $7570: $09
	jp nz, $c01d                                     ; $7571: $c2 $1d $c0

	inc c                                            ; $7574: $0c
	ldh [rAUD3HIGH], a                               ; $7575: $e0 $1e
	pop bc                                           ; $7577: $c1
	ld e, e                                          ; $7578: $5b
	pop hl                                           ; $7579: $e1
	ld [bc], a                                       ; $757a: $02
	ld [bc], a                                       ; $757b: $02
	pop hl                                           ; $757c: $e1
	ret nz                                           ; $757d: $c0

	ld bc, $07a0                                     ; $757e: $01 $a0 $07
	inc bc                                           ; $7581: $03
	ld e, e                                          ; $7582: $5b
	pop bc                                           ; $7583: $c1
	ld e, e                                          ; $7584: $5b
	pop bc                                           ; $7585: $c1
	ld e, c                                          ; $7586: $59
	db $e3                                           ; $7587: $e3
	nop                                              ; $7588: $00
	adc c                                            ; $7589: $89
	add e                                            ; $758a: $83
	add d                                            ; $758b: $82
	and b                                            ; $758c: $a0
	ld b, $01                                        ; $758d: $06 $01
	db $d3                                           ; $758f: $d3
	inc b                                            ; $7590: $04
	ret nz                                           ; $7591: $c0

	ld hl, $d0dc                                     ; $7592: $21 $dc $d0
	ld bc, $04d2                                     ; $7595: $01 $d2 $04
	ret nz                                           ; $7598: $c0

	ld hl, $d0d3                                     ; $7599: $21 $d3 $d0
	ld bc, $04d1                                     ; $759c: $01 $d1 $04
	ret nz                                           ; $759f: $c0

	inc hl                                           ; $75a0: $23
	jp nc, $00d0                                     ; $75a1: $d2 $d0 $00

	inc b                                            ; $75a4: $04
	ret nz                                           ; $75a5: $c0

	inc hl                                           ; $75a6: $23
	rst SubAFromHL                                          ; $75a7: $d7
	ret nc                                           ; $75a8: $d0

	pop hl                                           ; $75a9: $e1
	ld [bc], a                                       ; $75aa: $02
	nop                                              ; $75ab: $00
	ret c                                            ; $75ac: $d8

	add d                                            ; $75ad: $82
	ret nz                                           ; $75ae: $c0

	dec de                                           ; $75af: $1b
	ret nc                                           ; $75b0: $d0

	ld [bc], a                                       ; $75b1: $02
	ret nc                                           ; $75b2: $d0

	pop de                                           ; $75b3: $d1
	ld b, $c0                                        ; $75b4: $06 $c0
	ld bc, $02a0                                     ; $75b6: $01 $a0 $02
	inc bc                                           ; $75b9: $03
	ld h, e                                          ; $75ba: $63
	inc bc                                           ; $75bb: $03
	jp nc, $d4d3                                     ; $75bc: $d2 $d3 $d4

	ld b, $c0                                        ; $75bf: $06 $c0
	ld bc, $02a0                                     ; $75c1: $01 $a0 $02
	inc bc                                           ; $75c4: $03
	ld l, e                                          ; $75c5: $6b
	ld bc, $06d5                                     ; $75c6: $01 $d5 $06
	ret nz                                           ; $75c9: $c0

	ld bc, $02a0                                     ; $75ca: $01 $a0 $02
	inc bc                                           ; $75cd: $03
	ld [hl], h                                       ; $75ce: $74
	pop bc                                           ; $75cf: $c1
	ld e, e                                          ; $75d0: $5b
	ei                                               ; $75d1: $fb
	add b                                            ; $75d2: $80
	and b                                            ; $75d3: $a0
	nop                                              ; $75d4: $00
	ld b, l                                          ; $75d5: $45
	add e                                            ; $75d6: $83
	add d                                            ; $75d7: $82
	and b                                            ; $75d8: $a0
	add hl, bc                                       ; $75d9: $09
	ld bc, $04d3                                     ; $75da: $01 $d3 $04
	ret nz                                           ; $75dd: $c0

	ld hl, $d1dc                                     ; $75de: $21 $dc $d1
	ld bc, $04d2                                     ; $75e1: $01 $d2 $04
	ret nz                                           ; $75e4: $c0

	ld hl, $d1d3                                     ; $75e5: $21 $d3 $d1
	ld bc, $04d1                                     ; $75e8: $01 $d1 $04
	ret nz                                           ; $75eb: $c0

	inc hl                                           ; $75ec: $23
	jp nc, $00d1                                     ; $75ed: $d2 $d1 $00

	inc b                                            ; $75f0: $04
	ret nz                                           ; $75f1: $c0

	inc hl                                           ; $75f2: $23
	rst SubAFromHL                                          ; $75f3: $d7
	pop de                                           ; $75f4: $d1
	pop hl                                           ; $75f5: $e1
	ld [bc], a                                       ; $75f6: $02
	ld bc, $8220                                     ; $75f7: $01 $20 $82
	ret nz                                           ; $75fa: $c0

	dec de                                           ; $75fb: $1b
	pop de                                           ; $75fc: $d1
	ld [bc], a                                       ; $75fd: $02
	ret nc                                           ; $75fe: $d0

	pop de                                           ; $75ff: $d1
	ld b, $c0                                        ; $7600: $06 $c0
	ld bc, $03a0                                     ; $7602: $01 $a0 $03
	inc bc                                           ; $7605: $03
	ld a, d                                          ; $7606: $7a
	inc bc                                           ; $7607: $03
	jp nc, $d4d3                                     ; $7608: $d2 $d3 $d4

	ld b, $c0                                        ; $760b: $06 $c0
	ld bc, $03a0                                     ; $760d: $01 $a0 $03
	inc bc                                           ; $7610: $03
	add c                                            ; $7611: $81
	ld bc, $06d5                                     ; $7612: $01 $d5 $06
	ret nz                                           ; $7615: $c0

	ld bc, $03a0                                     ; $7616: $01 $a0 $03
	inc bc                                           ; $7619: $03
	adc b                                            ; $761a: $88
	ei                                               ; $761b: $fb
	add b                                            ; $761c: $80
	and b                                            ; $761d: $a0
	ld bc, $8345                                     ; $761e: $01 $45 $83
	add d                                            ; $7621: $82
	and b                                            ; $7622: $a0
	add hl, bc                                       ; $7623: $09
	ld bc, $04d3                                     ; $7624: $01 $d3 $04
	ret nz                                           ; $7627: $c0

	ld hl, $d2dc                                     ; $7628: $21 $dc $d2
	ld bc, $04d2                                     ; $762b: $01 $d2 $04
	ret nz                                           ; $762e: $c0

	ld hl, $d2d3                                     ; $762f: $21 $d3 $d2
	ld bc, $04d1                                     ; $7632: $01 $d1 $04
	ret nz                                           ; $7635: $c0

	inc hl                                           ; $7636: $23
	jp nc, $00d2                                     ; $7637: $d2 $d2 $00

	inc b                                            ; $763a: $04
	ret nz                                           ; $763b: $c0

	inc hl                                           ; $763c: $23
	rst SubAFromHL                                          ; $763d: $d7
	jp nc, $02e1                                     ; $763e: $d2 $e1 $02

	ld bc, $8268                                     ; $7641: $01 $68 $82
	ret nz                                           ; $7644: $c0

	dec de                                           ; $7645: $1b
	jp nc, $d002                                     ; $7646: $d2 $02 $d0

	pop de                                           ; $7649: $d1
	ld b, $c0                                        ; $764a: $06 $c0
	ld bc, $04a0                                     ; $764c: $01 $a0 $04
	inc bc                                           ; $764f: $03
	adc a                                            ; $7650: $8f
	inc bc                                           ; $7651: $03
	jp nc, $d4d3                                     ; $7652: $d2 $d3 $d4

	ld b, $c0                                        ; $7655: $06 $c0
	ld bc, $04a0                                     ; $7657: $01 $a0 $04
	inc bc                                           ; $765a: $03
	sbc c                                            ; $765b: $99
	ld bc, $06d5                                     ; $765c: $01 $d5 $06
	ret nz                                           ; $765f: $c0

	ld bc, $04a0                                     ; $7660: $01 $a0 $04
	inc bc                                           ; $7663: $03
	and d                                            ; $7664: $a2
	ei                                               ; $7665: $fb
	add b                                            ; $7666: $80
	and b                                            ; $7667: $a0
	ld [bc], a                                       ; $7668: $02
	ld b, l                                          ; $7669: $45
	add e                                            ; $766a: $83
	add d                                            ; $766b: $82
	and b                                            ; $766c: $a0
	add hl, bc                                       ; $766d: $09
	ld bc, $04d3                                     ; $766e: $01 $d3 $04
	ret nz                                           ; $7671: $c0

	ld hl, $d3dc                                     ; $7672: $21 $dc $d3
	ld bc, $04d2                                     ; $7675: $01 $d2 $04
	ret nz                                           ; $7678: $c0

	ld hl, $d3d3                                     ; $7679: $21 $d3 $d3
	ld bc, $04d1                                     ; $767c: $01 $d1 $04
	ret nz                                           ; $767f: $c0

	inc hl                                           ; $7680: $23
	jp nc, $00d3                                     ; $7681: $d2 $d3 $00

	inc b                                            ; $7684: $04
	ret nz                                           ; $7685: $c0

	inc hl                                           ; $7686: $23
	rst SubAFromHL                                          ; $7687: $d7
	db $d3                                           ; $7688: $d3
	pop hl                                           ; $7689: $e1
	ld [bc], a                                       ; $768a: $02
	ld bc, $82b0                                     ; $768b: $01 $b0 $82
	ret nz                                           ; $768e: $c0

	dec de                                           ; $768f: $1b
	db $d3                                           ; $7690: $d3
	ld [bc], a                                       ; $7691: $02
	ret nc                                           ; $7692: $d0

	pop de                                           ; $7693: $d1
	ld b, $c0                                        ; $7694: $06 $c0
	ld bc, $05a0                                     ; $7696: $01 $a0 $05
	inc bc                                           ; $7699: $03
	xor [hl]                                         ; $769a: $ae
	inc bc                                           ; $769b: $03
	jp nc, $d4d3                                     ; $769c: $d2 $d3 $d4

	ld b, $c0                                        ; $769f: $06 $c0
	ld bc, $05a0                                     ; $76a1: $01 $a0 $05

jr_07c_76a4:
	inc bc                                           ; $76a4: $03
	or l                                             ; $76a5: $b5
	ld bc, $06d5                                     ; $76a6: $01 $d5 $06
	ret nz                                           ; $76a9: $c0

	ld bc, $05a0                                     ; $76aa: $01 $a0 $05
	inc bc                                           ; $76ad: $03
	jp nz, $80fb                                     ; $76ae: $c2 $fb $80

	and b                                            ; $76b1: $a0
	inc bc                                           ; $76b2: $03
	ld b, l                                          ; $76b3: $45
	add e                                            ; $76b4: $83
	add d                                            ; $76b5: $82
	and b                                            ; $76b6: $a0
	add hl, bc                                       ; $76b7: $09
	ld bc, $04d3                                     ; $76b8: $01 $d3 $04
	ret nz                                           ; $76bb: $c0

	ld hl, $d7dc                                     ; $76bc: $21 $dc $d7
	ld bc, $04d2                                     ; $76bf: $01 $d2 $04
	ret nz                                           ; $76c2: $c0

	ld hl, $d7d3                                     ; $76c3: $21 $d3 $d7
	ld bc, $04d1                                     ; $76c6: $01 $d1 $04
	ret nz                                           ; $76c9: $c0

	inc hl                                           ; $76ca: $23
	jp nc, $00d7                                     ; $76cb: $d2 $d7 $00

	inc b                                            ; $76ce: $04
	ret nz                                           ; $76cf: $c0

	inc hl                                           ; $76d0: $23
	rst SubAFromHL                                          ; $76d1: $d7
	rst SubAFromHL                                          ; $76d2: $d7
	pop hl                                           ; $76d3: $e1
	ld [bc], a                                       ; $76d4: $02
	ld bc, $82f8                                     ; $76d5: $01 $f8 $82
	ret nz                                           ; $76d8: $c0

	dec de                                           ; $76d9: $1b
	rst SubAFromHL                                          ; $76da: $d7
	ld [bc], a                                       ; $76db: $02
	ret nc                                           ; $76dc: $d0

	pop de                                           ; $76dd: $d1
	ld b, $c0                                        ; $76de: $06 $c0
	ld bc, $08a0                                     ; $76e0: $01 $a0 $08
	inc bc                                           ; $76e3: $03
	rst JumpTable                                          ; $76e4: $c7
	inc bc                                           ; $76e5: $03
	jp nc, $d4d3                                     ; $76e6: $d2 $d3 $d4

	ld b, $c0                                        ; $76e9: $06 $c0
	ld bc, $08a0                                     ; $76eb: $01 $a0 $08
	inc bc                                           ; $76ee: $03
	call nc, $d501                                   ; $76ef: $d4 $01 $d5
	ld b, $c0                                        ; $76f2: $06 $c0
	ld bc, $08a0                                     ; $76f4: $01 $a0 $08
	inc bc                                           ; $76f7: $03
	jp c, $80fb                                      ; $76f8: $da $fb $80

	and b                                            ; $76fb: $a0
	inc b                                            ; $76fc: $04
	ld b, l                                          ; $76fd: $45
	add e                                            ; $76fe: $83
	add d                                            ; $76ff: $82
	and b                                            ; $7700: $a0
	add hl, bc                                       ; $7701: $09
	ld bc, $04d3                                     ; $7702: $01 $d3 $04
	ret nz                                           ; $7705: $c0

	ld hl, $d8dc                                     ; $7706: $21 $dc $d8
	ld bc, $04d2                                     ; $7709: $01 $d2 $04
	ret nz                                           ; $770c: $c0

	ld hl, $d8d3                                     ; $770d: $21 $d3 $d8
	ld bc, $04d1                                     ; $7710: $01 $d1 $04
	ret nz                                           ; $7713: $c0

	inc hl                                           ; $7714: $23
	jp nc, $00d8                                     ; $7715: $d2 $d8 $00

	inc b                                            ; $7718: $04
	ret nz                                           ; $7719: $c0

	inc hl                                           ; $771a: $23
	rst SubAFromHL                                          ; $771b: $d7
	ret c                                            ; $771c: $d8

	pop hl                                           ; $771d: $e1
	ld [bc], a                                       ; $771e: $02
	ld [bc], a                                       ; $771f: $02
	jr z, jr_07c_76a4                                ; $7720: $28 $82

	ret nz                                           ; $7722: $c0

	dec de                                           ; $7723: $1b
	ret c                                            ; $7724: $d8

	ld [bc], a                                       ; $7725: $02
	ret nc                                           ; $7726: $d0

	pop de                                           ; $7727: $d1
	ld b, $c0                                        ; $7728: $06 $c0
	ld bc, $09a0                                     ; $772a: $01 $a0 $09
	inc bc                                           ; $772d: $03
	db $e4                                           ; $772e: $e4
	inc bc                                           ; $772f: $03
	jp nc, $d4d3                                     ; $7730: $d2 $d3 $d4

	ld b, $c0                                        ; $7733: $06 $c0
	ld bc, $09a0                                     ; $7735: $01 $a0 $09
	inc bc                                           ; $7738: $03
	db $ed                                           ; $7739: $ed
	ld bc, $06d5                                     ; $773a: $01 $d5 $06
	ret nz                                           ; $773d: $c0

	ld bc, $09a0                                     ; $773e: $01 $a0 $09
	inc bc                                           ; $7741: $03
	ldh a, [$fb]                                     ; $7742: $f0 $fb
	add b                                            ; $7744: $80
	and b                                            ; $7745: $a0
	dec b                                            ; $7746: $05
	ld b, l                                          ; $7747: $45
	add e                                            ; $7748: $83
	add d                                            ; $7749: $82
	and b                                            ; $774a: $a0
	add hl, bc                                       ; $774b: $09
	ld bc, $04d3                                     ; $774c: $01 $d3 $04
	ret nz                                           ; $774f: $c0

	ld hl, $dddc                                     ; $7750: $21 $dc $dd
	ld bc, $04d2                                     ; $7753: $01 $d2 $04
	ret nz                                           ; $7756: $c0

	ld hl, $ddd3                                     ; $7757: $21 $d3 $dd
	ld bc, $04d1                                     ; $775a: $01 $d1 $04
	ret nz                                           ; $775d: $c0

	inc hl                                           ; $775e: $23
	jp nc, $00dd                                     ; $775f: $d2 $dd $00

	inc b                                            ; $7762: $04
	ret nz                                           ; $7763: $c0

	inc hl                                           ; $7764: $23
	rst SubAFromHL                                          ; $7765: $d7
	db $dd                                           ; $7766: $dd
	pop hl                                           ; $7767: $e1
	ld [bc], a                                       ; $7768: $02
	ld [bc], a                                       ; $7769: $02
	adc b                                            ; $776a: $88
	add d                                            ; $776b: $82
	ret nz                                           ; $776c: $c0

	dec de                                           ; $776d: $1b
	db $dd                                           ; $776e: $dd
	ld [bc], a                                       ; $776f: $02
	ret nc                                           ; $7770: $d0

	pop de                                           ; $7771: $d1
	ld b, $c0                                        ; $7772: $06 $c0
	ld bc, $0aa0                                     ; $7774: $01 $a0 $0a
	inc bc                                           ; $7777: $03
	ldh a, [c]                                       ; $7778: $f2
	inc bc                                           ; $7779: $03
	jp nc, $d4d3                                     ; $777a: $d2 $d3 $d4

	ld b, $c0                                        ; $777d: $06 $c0
	ld bc, $0aa0                                     ; $777f: $01 $a0 $0a
	inc bc                                           ; $7782: $03
	rst FarCall                                          ; $7783: $f7
	ld bc, $06d5                                     ; $7784: $01 $d5 $06
	ret nz                                           ; $7787: $c0

	ld bc, $0aa0                                     ; $7788: $01 $a0 $0a
	inc bc                                           ; $778b: $03
	cp $e4                                           ; $778c: $fe $e4
	nop                                              ; $778e: $00
	ld [bc], a                                       ; $778f: $02
	add hl, bc                                       ; $7790: $09
	jr c, @-$3d                                      ; $7791: $38 $c1

	ld e, e                                          ; $7793: $5b
	pop hl                                           ; $7794: $e1
	ld [bc], a                                       ; $7795: $02
	ld [bc], a                                       ; $7796: $02
	pop hl                                           ; $7797: $e1
	ld h, d                                          ; $7798: $62
	ei                                               ; $7799: $fb
	ret nz                                           ; $779a: $c0

	rla                                              ; $779b: $17
	ret nc                                           ; $779c: $d0

	ldh [$32], a                                     ; $779d: $e0 $32
	add hl, bc                                       ; $779f: $09
	ret nz                                           ; $77a0: $c0

	ld bc, $07a0                                     ; $77a1: $01 $a0 $07
	inc b                                            ; $77a4: $04
	ld b, $e0                                        ; $77a5: $06 $e0
	nop                                              ; $77a7: $00
	inc hl                                           ; $77a8: $23
	ei                                               ; $77a9: $fb
	ret nz                                           ; $77aa: $c0

	dec [hl]                                         ; $77ab: $35
	ldh [$32], a                                     ; $77ac: $e0 $32
	add hl, bc                                       ; $77ae: $09
	ret nz                                           ; $77af: $c0

	ld bc, $07a0                                     ; $77b0: $01 $a0 $07
	inc b                                            ; $77b3: $04
	inc c                                            ; $77b4: $0c
	ldh [rP1], a                                     ; $77b5: $e0 $00
	inc d                                            ; $77b7: $14
	ld hl, sp-$40                                    ; $77b8: $f8 $c0
	inc [hl]                                         ; $77ba: $34
	jp c, $c009                                      ; $77bb: $da $09 $c0

	ld bc, $07a0                                     ; $77be: $01 $a0 $07
	inc b                                            ; $77c1: $04
	inc d                                            ; $77c2: $14
	ldh [rP1], a                                     ; $77c3: $e0 $00
	ld b, $03                                        ; $77c5: $06 $03
	db $e4                                           ; $77c7: $e4
	nop                                              ; $77c8: $00
	inc c                                            ; $77c9: $0c
	add hl, bc                                       ; $77ca: $09
	ret nz                                           ; $77cb: $c0

	ld bc, $01a0                                     ; $77cc: $01 $a0 $01
	inc b                                            ; $77cf: $04
	ld d, $e4                                        ; $77d0: $16 $e4
	ld bc, $09b0                                     ; $77d2: $01 $b0 $09
	inc l                                            ; $77d5: $2c
	db $fc                                           ; $77d6: $fc
	ld a, [hl+]                                      ; $77d7: $2a
	add b                                            ; $77d8: $80
	and b                                            ; $77d9: $a0
	nop                                              ; $77da: $00
	inc bc                                           ; $77db: $03
	db $e4                                           ; $77dc: $e4
	nop                                              ; $77dd: $00
	dec h                                            ; $77de: $25
	add b                                            ; $77df: $80
	and b                                            ; $77e0: $a0
	ld bc, $e403                                     ; $77e1: $01 $03 $e4
	nop                                              ; $77e4: $00
	ld e, [hl]                                       ; $77e5: $5e
	add b                                            ; $77e6: $80
	and b                                            ; $77e7: $a0
	ld [bc], a                                       ; $77e8: $02
	inc bc                                           ; $77e9: $03
	db $e4                                           ; $77ea: $e4
	nop                                              ; $77eb: $00
	sub a                                            ; $77ec: $97
	add b                                            ; $77ed: $80
	and b                                            ; $77ee: $a0
	inc bc                                           ; $77ef: $03
	inc bc                                           ; $77f0: $03
	db $e4                                           ; $77f1: $e4
	nop                                              ; $77f2: $00
	ret nc                                           ; $77f3: $d0

	add b                                            ; $77f4: $80
	and b                                            ; $77f5: $a0
	inc b                                            ; $77f6: $04
	inc bc                                           ; $77f7: $03
	db $e4                                           ; $77f8: $e4
	ld bc, $8009                                     ; $77f9: $01 $09 $80
	and b                                            ; $77fc: $a0
	dec b                                            ; $77fd: $05
	inc bc                                           ; $77fe: $03
	db $e4                                           ; $77ff: $e4
	ld bc, $0942                                     ; $7800: $01 $42 $09
	inc [hl]                                         ; $7803: $34
	ld h, d                                          ; $7804: $62
	ei                                               ; $7805: $fb
	ret nz                                           ; $7806: $c0

	rla                                              ; $7807: $17
	pop de                                           ; $7808: $d1
	ldh [$32], a                                     ; $7809: $e0 $32
	add hl, bc                                       ; $780b: $09
	ret nz                                           ; $780c: $c0

	ld bc, $07a0                                     ; $780d: $01 $a0 $07
	inc b                                            ; $7810: $04
	ld b, $e0                                        ; $7811: $06 $e0
	nop                                              ; $7813: $00
	dec h                                            ; $7814: $25
	ei                                               ; $7815: $fb
	ret nz                                           ; $7816: $c0

	ld d, $d1                                        ; $7817: $16 $d1
	ldh [$32], a                                     ; $7819: $e0 $32
	add hl, bc                                       ; $781b: $09
	ret nz                                           ; $781c: $c0

	ld bc, $07a0                                     ; $781d: $01 $a0 $07
	inc b                                            ; $7820: $04
	inc c                                            ; $7821: $0c
	ldh [rP1], a                                     ; $7822: $e0 $00
	dec d                                            ; $7824: $15
	ld hl, sp-$40                                    ; $7825: $f8 $c0
	dec d                                            ; $7827: $15
	pop de                                           ; $7828: $d1
	jp c, $c009                                      ; $7829: $da $09 $c0

	ld bc, $07a0                                     ; $782c: $01 $a0 $07
	inc b                                            ; $782f: $04
	inc d                                            ; $7830: $14
	ldh [rP1], a                                     ; $7831: $e0 $00
	ld b, $03                                        ; $7833: $06 $03
	db $e4                                           ; $7835: $e4
	ld bc, $0957                                     ; $7836: $01 $57 $09
	ret nz                                           ; $7839: $c0

	ld bc, $01a0                                     ; $783a: $01 $a0 $01
	inc b                                            ; $783d: $04
	dec e                                            ; $783e: $1d
	db $e4                                           ; $783f: $e4
	ld bc, $0942                                     ; $7840: $01 $42 $09
	inc [hl]                                         ; $7843: $34
	ld h, d                                          ; $7844: $62
	ei                                               ; $7845: $fb
	ret nz                                           ; $7846: $c0

	rla                                              ; $7847: $17
	jp nc, $32e0                                     ; $7848: $d2 $e0 $32

	add hl, bc                                       ; $784b: $09
	ret nz                                           ; $784c: $c0

	ld bc, $07a0                                     ; $784d: $01 $a0 $07
	inc b                                            ; $7850: $04
	ld b, $e0                                        ; $7851: $06 $e0
	nop                                              ; $7853: $00
	dec h                                            ; $7854: $25
	ei                                               ; $7855: $fb
	ret nz                                           ; $7856: $c0

	ld d, $d2                                        ; $7857: $16 $d2
	ldh [$32], a                                     ; $7859: $e0 $32
	add hl, bc                                       ; $785b: $09
	ret nz                                           ; $785c: $c0

	ld bc, $07a0                                     ; $785d: $01 $a0 $07
	inc b                                            ; $7860: $04
	inc c                                            ; $7861: $0c
	ldh [rP1], a                                     ; $7862: $e0 $00
	dec d                                            ; $7864: $15
	ld hl, sp-$40                                    ; $7865: $f8 $c0
	dec d                                            ; $7867: $15
	jp nc, $09da                                     ; $7868: $d2 $da $09

	ret nz                                           ; $786b: $c0

	ld bc, $07a0                                     ; $786c: $01 $a0 $07
	inc b                                            ; $786f: $04
	inc d                                            ; $7870: $14
	ldh [rP1], a                                     ; $7871: $e0 $00
	ld b, $03                                        ; $7873: $06 $03
	db $e4                                           ; $7875: $e4
	ld bc, $0917                                     ; $7876: $01 $17 $09
	ret nz                                           ; $7879: $c0

	ld bc, $01a0                                     ; $787a: $01 $a0 $01
	inc b                                            ; $787d: $04
	inc h                                            ; $787e: $24
	db $e4                                           ; $787f: $e4
	ld bc, $0902                                     ; $7880: $01 $02 $09
	inc [hl]                                         ; $7883: $34
	ld h, d                                          ; $7884: $62
	ei                                               ; $7885: $fb
	ret nz                                           ; $7886: $c0

	rla                                              ; $7887: $17
	db $d3                                           ; $7888: $d3
	ldh [$32], a                                     ; $7889: $e0 $32
	add hl, bc                                       ; $788b: $09
	ret nz                                           ; $788c: $c0

	ld bc, $07a0                                     ; $788d: $01 $a0 $07
	inc b                                            ; $7890: $04
	ld b, $e0                                        ; $7891: $06 $e0
	nop                                              ; $7893: $00
	dec h                                            ; $7894: $25
	ei                                               ; $7895: $fb
	ret nz                                           ; $7896: $c0

	ld d, $d3                                        ; $7897: $16 $d3
	ldh [$32], a                                     ; $7899: $e0 $32
	add hl, bc                                       ; $789b: $09
	ret nz                                           ; $789c: $c0

	ld bc, $07a0                                     ; $789d: $01 $a0 $07
	inc b                                            ; $78a0: $04
	inc c                                            ; $78a1: $0c
	ldh [rP1], a                                     ; $78a2: $e0 $00
	dec d                                            ; $78a4: $15
	ld hl, sp-$40                                    ; $78a5: $f8 $c0
	dec d                                            ; $78a7: $15
	db $d3                                           ; $78a8: $d3
	jp c, $c009                                      ; $78a9: $da $09 $c0

	ld bc, $07a0                                     ; $78ac: $01 $a0 $07
	inc b                                            ; $78af: $04
	inc d                                            ; $78b0: $14
	ldh [rP1], a                                     ; $78b1: $e0 $00
	ld b, $03                                        ; $78b3: $06 $03
	db $e4                                           ; $78b5: $e4
	nop                                              ; $78b6: $00
	rst SubAFromHL                                          ; $78b7: $d7
	add hl, bc                                       ; $78b8: $09
	ret nz                                           ; $78b9: $c0

	ld bc, $01a0                                     ; $78ba: $01 $a0 $01
	inc b                                            ; $78bd: $04
	dec hl                                           ; $78be: $2b
	db $e4                                           ; $78bf: $e4
	nop                                              ; $78c0: $00
	jp nz, $3409                                     ; $78c1: $c2 $09 $34

	ld h, d                                          ; $78c4: $62
	ei                                               ; $78c5: $fb
	ret nz                                           ; $78c6: $c0

	rla                                              ; $78c7: $17
	rst SubAFromHL                                          ; $78c8: $d7
	ldh [$32], a                                     ; $78c9: $e0 $32
	add hl, bc                                       ; $78cb: $09
	ret nz                                           ; $78cc: $c0

	ld bc, $07a0                                     ; $78cd: $01 $a0 $07
	inc b                                            ; $78d0: $04
	ld b, $e0                                        ; $78d1: $06 $e0
	nop                                              ; $78d3: $00
	dec h                                            ; $78d4: $25
	ei                                               ; $78d5: $fb
	ret nz                                           ; $78d6: $c0

	ld d, $d7                                        ; $78d7: $16 $d7
	ldh [$32], a                                     ; $78d9: $e0 $32
	add hl, bc                                       ; $78db: $09
	ret nz                                           ; $78dc: $c0

	ld bc, $07a0                                     ; $78dd: $01 $a0 $07
	inc b                                            ; $78e0: $04
	inc c                                            ; $78e1: $0c
	ldh [rP1], a                                     ; $78e2: $e0 $00
	dec d                                            ; $78e4: $15
	ld hl, sp-$40                                    ; $78e5: $f8 $c0
	dec d                                            ; $78e7: $15
	rst SubAFromHL                                          ; $78e8: $d7
	jp c, $c009                                      ; $78e9: $da $09 $c0

	ld bc, $07a0                                     ; $78ec: $01 $a0 $07
	inc b                                            ; $78ef: $04
	inc d                                            ; $78f0: $14
	ldh [rP1], a                                     ; $78f1: $e0 $00
	ld b, $03                                        ; $78f3: $06 $03
	db $e4                                           ; $78f5: $e4
	nop                                              ; $78f6: $00
	sub a                                            ; $78f7: $97
	add hl, bc                                       ; $78f8: $09
	ret nz                                           ; $78f9: $c0

	ld bc, $01a0                                     ; $78fa: $01 $a0 $01
	inc b                                            ; $78fd: $04
	ld [hl-], a                                      ; $78fe: $32
	db $e4                                           ; $78ff: $e4
	nop                                              ; $7900: $00
	add d                                            ; $7901: $82
	add hl, bc                                       ; $7902: $09
	inc [hl]                                         ; $7903: $34
	ld h, d                                          ; $7904: $62
	ei                                               ; $7905: $fb
	ret nz                                           ; $7906: $c0

	rla                                              ; $7907: $17
	ret c                                            ; $7908: $d8

	ldh [$32], a                                     ; $7909: $e0 $32
	add hl, bc                                       ; $790b: $09
	ret nz                                           ; $790c: $c0

	ld bc, $07a0                                     ; $790d: $01 $a0 $07
	inc b                                            ; $7910: $04
	ld b, $e0                                        ; $7911: $06 $e0
	nop                                              ; $7913: $00
	dec h                                            ; $7914: $25
	ei                                               ; $7915: $fb
	ret nz                                           ; $7916: $c0

	ld d, $d8                                        ; $7917: $16 $d8
	ldh [$32], a                                     ; $7919: $e0 $32
	add hl, bc                                       ; $791b: $09
	ret nz                                           ; $791c: $c0

	ld bc, $07a0                                     ; $791d: $01 $a0 $07
	inc b                                            ; $7920: $04
	inc c                                            ; $7921: $0c
	ldh [rP1], a                                     ; $7922: $e0 $00
	dec d                                            ; $7924: $15
	ld hl, sp-$40                                    ; $7925: $f8 $c0
	dec d                                            ; $7927: $15
	ret c                                            ; $7928: $d8

	jp c, $c009                                      ; $7929: $da $09 $c0

	ld bc, $07a0                                     ; $792c: $01 $a0 $07
	inc b                                            ; $792f: $04
	inc d                                            ; $7930: $14
	ldh [rP1], a                                     ; $7931: $e0 $00
	ld b, $03                                        ; $7933: $06 $03
	db $e4                                           ; $7935: $e4
	nop                                              ; $7936: $00
	ld d, a                                          ; $7937: $57
	add hl, bc                                       ; $7938: $09
	ret nz                                           ; $7939: $c0

	ld bc, $01a0                                     ; $793a: $01 $a0 $01
	inc b                                            ; $793d: $04
	add hl, sp                                       ; $793e: $39
	db $e4                                           ; $793f: $e4
	nop                                              ; $7940: $00
	ld b, d                                          ; $7941: $42
	add hl, bc                                       ; $7942: $09
	inc [hl]                                         ; $7943: $34
	ld h, d                                          ; $7944: $62
	ei                                               ; $7945: $fb
	ret nz                                           ; $7946: $c0

	rla                                              ; $7947: $17
	db $dd                                           ; $7948: $dd
	ldh [$32], a                                     ; $7949: $e0 $32
	add hl, bc                                       ; $794b: $09
	ret nz                                           ; $794c: $c0

	ld bc, $07a0                                     ; $794d: $01 $a0 $07
	inc b                                            ; $7950: $04
	ld b, $e0                                        ; $7951: $06 $e0
	nop                                              ; $7953: $00
	dec h                                            ; $7954: $25
	ei                                               ; $7955: $fb
	ret nz                                           ; $7956: $c0

	ld d, $dd                                        ; $7957: $16 $dd
	ldh [$32], a                                     ; $7959: $e0 $32

jr_07c_795b:
	add hl, bc                                       ; $795b: $09
	ret nz                                           ; $795c: $c0

	ld bc, $07a0                                     ; $795d: $01 $a0 $07
	inc b                                            ; $7960: $04
	inc c                                            ; $7961: $0c
	ldh [rP1], a                                     ; $7962: $e0 $00
	dec d                                            ; $7964: $15
	ld hl, sp-$40                                    ; $7965: $f8 $c0
	dec d                                            ; $7967: $15
	db $dd                                           ; $7968: $dd
	jp c, $c009                                      ; $7969: $da $09 $c0

	ld bc, $07a0                                     ; $796c: $01 $a0 $07
	inc b                                            ; $796f: $04
	inc d                                            ; $7970: $14
	ldh [rP1], a                                     ; $7971: $e0 $00
	ld b, $03                                        ; $7973: $06 $03
	db $e4                                           ; $7975: $e4
	nop                                              ; $7976: $00
	rla                                              ; $7977: $17
	add hl, bc                                       ; $7978: $09
	ret nz                                           ; $7979: $c0

	ld bc, $01a0                                     ; $797a: $01 $a0 $01
	inc b                                            ; $797d: $04
	ld b, b                                          ; $797e: $40
	db $e4                                           ; $797f: $e4
	nop                                              ; $7980: $00
	ld [bc], a                                       ; $7981: $02
	add hl, bc                                       ; $7982: $09
	add hl, bc                                       ; $7983: $09
	ret nz                                           ; $7984: $c0

	ld bc, $01a0                                     ; $7985: $01 $a0 $01
	inc b                                            ; $7988: $04
	ld b, a                                          ; $7989: $47
	db $e4                                           ; $798a: $e4
	nop                                              ; $798b: $00
	dec c                                            ; $798c: $0d
	add hl, bc                                       ; $798d: $09
	add hl, bc                                       ; $798e: $09
	ret nz                                           ; $798f: $c0

	ld bc, $01a0                                     ; $7990: $01 $a0 $01
	inc b                                            ; $7993: $04
	ld d, b                                          ; $7994: $50
	db $e4                                           ; $7995: $e4
	nop                                              ; $7996: $00
	ld [bc], a                                       ; $7997: $02
	add hl, bc                                       ; $7998: $09
	jr z, jr_07c_795b                                ; $7999: $28 $c0

	ld bc, $07a0                                     ; $799b: $01 $a0 $07
	inc b                                            ; $799e: $04
	ld d, a                                          ; $799f: $57
	ld b, c                                          ; $79a0: $41
	add d                                            ; $79a1: $82
	and b                                            ; $79a2: $a0
	ld b, $82                                        ; $79a3: $06 $82
	and b                                            ; $79a5: $a0
	add hl, bc                                       ; $79a6: $09
	ld b, d                                          ; $79a7: $42
	add b                                            ; $79a8: $80
	and b                                            ; $79a9: $a0
	nop                                              ; $79aa: $00
	add b                                            ; $79ab: $80
	and b                                            ; $79ac: $a0
	ld bc, $a080                                     ; $79ad: $01 $80 $a0
	ld [bc], a                                       ; $79b0: $02
	ld b, d                                          ; $79b1: $42
	add b                                            ; $79b2: $80
	and b                                            ; $79b3: $a0
	inc bc                                           ; $79b4: $03
	add b                                            ; $79b5: $80
	and b                                            ; $79b6: $a0
	inc b                                            ; $79b7: $04
	add b                                            ; $79b8: $80
	and b                                            ; $79b9: $a0
	dec b                                            ; $79ba: $05
	ret nz                                           ; $79bb: $c0

	set 0, c                                         ; $79bc: $cb $c1
	ld e, e                                          ; $79be: $5b
	db $e4                                           ; $79bf: $e4
	nop                                              ; $79c0: $00
	ld [bc], a                                       ; $79c1: $02
	inc c                                            ; $79c2: $0c
	ccf                                              ; $79c3: $3f
	add b                                            ; $79c4: $80
	ld bc, $288f                                     ; $79c5: $01 $8f $28
	ld c, $c0                                        ; $79c8: $0e $c0
	push af                                          ; $79ca: $f5
	ret nz                                           ; $79cb: $c0

	ld bc, $01a0                                     ; $79cc: $01 $a0 $01
	inc b                                            ; $79cf: $04
	ld e, [hl]                                       ; $79d0: $5e
	ret nz                                           ; $79d1: $c0

	ld bc, $01a0                                     ; $79d2: $01 $a0 $01
	inc b                                            ; $79d5: $04
	ld l, b                                          ; $79d6: $68
	inc h                                            ; $79d7: $24
	inc b                                            ; $79d8: $04
	halt                                             ; $79d9: $76
	add hl, bc                                       ; $79da: $09
	ld a, [bc]                                       ; $79db: $0a
	ret nc                                           ; $79dc: $d0

	adc e                                            ; $79dd: $8b
	nop                                              ; $79de: $00
	sbc $b0                                          ; $79df: $de $b0
	ld [hl], h                                       ; $79e1: $74
	push hl                                          ; $79e2: $e5
	ld b, l                                          ; $79e3: $45
	nop                                              ; $79e4: $00
	nop                                              ; $79e5: $00
	inc b                                            ; $79e6: $04
	ld a, b                                          ; $79e7: $78
	add hl, bc                                       ; $79e8: $09
	ld [de], a                                       ; $79e9: $12
	ret nz                                           ; $79ea: $c0

	inc h                                            ; $79eb: $24
	pop de                                           ; $79ec: $d1
	ret nc                                           ; $79ed: $d0

	ret nz                                           ; $79ee: $c0

	inc hl                                           ; $79ef: $23
	push de                                          ; $79f0: $d5
	ret nc                                           ; $79f1: $d0

	ret nz                                           ; $79f2: $c0

	ld bc, $01a0                                     ; $79f3: $01 $a0 $01
	inc b                                            ; $79f6: $04
	ld a, d                                          ; $79f7: $7a
	push hl                                          ; $79f8: $e5
	ld bc, $b119                                     ; $79f9: $01 $19 $b1
	pop de                                           ; $79fc: $d1
	add hl, bc                                       ; $79fd: $09
	inc b                                            ; $79fe: $04
	push hl                                          ; $79ff: $e5
	ld bc, $b119                                     ; $7a00: $01 $19 $b1

jr_07c_7a03:
	adc l                                            ; $7a03: $8d
	inc b                                            ; $7a04: $04
	add hl, bc                                       ; $7a05: $09
	pop bc                                           ; $7a06: $c1
	ld c, e                                          ; $7a07: $4b
	nop                                              ; $7a08: $00
	add b                                            ; $7a09: $80
	ld [bc], a                                       ; $7a0a: $02
	ld l, e                                          ; $7a0b: $6b
	db $fd                                           ; $7a0c: $fd
	pop bc                                           ; $7a0d: $c1
	ld b, h                                          ; $7a0e: $44
	adc e                                            ; $7a0f: $8b
	ld [bc], a                                       ; $7a10: $02
	inc [hl]                                         ; $7a11: $34
	ld [bc], a                                       ; $7a12: $02
	or b                                             ; $7a13: $b0
	ld e, c                                          ; $7a14: $59
	dec bc                                           ; $7a15: $0b
	pop hl                                           ; $7a16: $e1
	ld [bc], a                                       ; $7a17: $02
	nop                                              ; $7a18: $00
	jp nc, $01e0                                     ; $7a19: $d2 $e0 $01

	jr c, jr_07c_7a03                                ; $7a1c: $38 $e5

	ld de, $0000                                     ; $7a1e: $11 $00 $00
	ld [bc], a                                       ; $7a21: $02
	or b                                             ; $7a22: $b0
	ld [de], a                                       ; $7a23: $12
	dec bc                                           ; $7a24: $0b
	pop hl                                           ; $7a25: $e1
	ld [bc], a                                       ; $7a26: $02
	nop                                              ; $7a27: $00
	jp nc, $01e0                                     ; $7a28: $d2 $e0 $01

	add hl, hl                                       ; $7a2b: $29
	push hl                                          ; $7a2c: $e5
	ld de, $e201                                     ; $7a2d: $11 $01 $e2
	ld [bc], a                                       ; $7a30: $02
	or b                                             ; $7a31: $b0
	ld e, d                                          ; $7a32: $5a
	dec bc                                           ; $7a33: $0b
	pop hl                                           ; $7a34: $e1
	ld [bc], a                                       ; $7a35: $02
	nop                                              ; $7a36: $00
	jp nc, $01e0                                     ; $7a37: $d2 $e0 $01

	ld a, [de]                                       ; $7a3a: $1a
	push hl                                          ; $7a3b: $e5
	ld de, $f404                                     ; $7a3c: $11 $04 $f4
	ld [bc], a                                       ; $7a3f: $02
	or b                                             ; $7a40: $b0
	inc d                                            ; $7a41: $14
	dec bc                                           ; $7a42: $0b
	pop hl                                           ; $7a43: $e1
	ld [bc], a                                       ; $7a44: $02
	nop                                              ; $7a45: $00
	jp nc, $01e0                                     ; $7a46: $d2 $e0 $01

	dec bc                                           ; $7a49: $0b
	push hl                                          ; $7a4a: $e5
	ld de, $b709                                     ; $7a4b: $11 $09 $b7
	ld [bc], a                                       ; $7a4e: $02
	or b                                             ; $7a4f: $b0
	ld e, e                                          ; $7a50: $5b
	dec bc                                           ; $7a51: $0b
	pop hl                                           ; $7a52: $e1
	ld [bc], a                                       ; $7a53: $02
	nop                                              ; $7a54: $00
	jp nc, $00e0                                     ; $7a55: $d2 $e0 $00

	db $fc                                           ; $7a58: $fc
	push hl                                          ; $7a59: $e5
	ld de, $de0b                                     ; $7a5a: $11 $0b $de
	ld [bc], a                                       ; $7a5d: $02
	or b                                             ; $7a5e: $b0
	ld d, $0b                                        ; $7a5f: $16 $0b
	pop hl                                           ; $7a61: $e1
	ld [bc], a                                       ; $7a62: $02
	nop                                              ; $7a63: $00
	jp nc, $00e0                                     ; $7a64: $d2 $e0 $00

	db $ed                                           ; $7a67: $ed
	push hl                                          ; $7a68: $e5
	ld de, $050e                                     ; $7a69: $11 $0e $05
	ld [bc], a                                       ; $7a6c: $02
	or b                                             ; $7a6d: $b0
	jr jr_07c_7a7b                                   ; $7a6e: $18 $0b

	pop hl                                           ; $7a70: $e1
	ld [bc], a                                       ; $7a71: $02
	nop                                              ; $7a72: $00
	jp nc, $00e0                                     ; $7a73: $d2 $e0 $00

	sbc $e5                                          ; $7a76: $de $e5
	ld de, $710f                                     ; $7a78: $11 $0f $71

jr_07c_7a7b:
	ld [bc], a                                       ; $7a7b: $02
	or b                                             ; $7a7c: $b0
	inc de                                           ; $7a7d: $13
	dec bc                                           ; $7a7e: $0b
	pop hl                                           ; $7a7f: $e1
	ld [bc], a                                       ; $7a80: $02
	nop                                              ; $7a81: $00
	jp nc, $00e0                                     ; $7a82: $d2 $e0 $00

	rst GetHLinHL                                          ; $7a85: $cf
	push hl                                          ; $7a86: $e5
	ld de, $2611                                     ; $7a87: $11 $11 $26
	ld [bc], a                                       ; $7a8a: $02
	or b                                             ; $7a8b: $b0
	ld e, h                                          ; $7a8c: $5c
	dec bc                                           ; $7a8d: $0b
	pop hl                                           ; $7a8e: $e1
	ld [bc], a                                       ; $7a8f: $02
	nop                                              ; $7a90: $00
	jp nc, $00e0                                     ; $7a91: $d2 $e0 $00

	ret nz                                           ; $7a94: $c0

	push hl                                          ; $7a95: $e5
	ld de, $0b15                                     ; $7a96: $11 $15 $0b
	ld [bc], a                                       ; $7a99: $02
	or b                                             ; $7a9a: $b0
	ld e, l                                          ; $7a9b: $5d
	dec bc                                           ; $7a9c: $0b
	pop hl                                           ; $7a9d: $e1
	ld [bc], a                                       ; $7a9e: $02
	nop                                              ; $7a9f: $00
	jp nc, $00e0                                     ; $7aa0: $d2 $e0 $00

	or c                                             ; $7aa3: $b1
	push hl                                          ; $7aa4: $e5
	ld de, $2a16                                     ; $7aa5: $11 $16 $2a
	ld [bc], a                                       ; $7aa8: $02
	or b                                             ; $7aa9: $b0
	ld e, [hl]                                       ; $7aaa: $5e
	dec bc                                           ; $7aab: $0b
	pop hl                                           ; $7aac: $e1
	ld [bc], a                                       ; $7aad: $02
	nop                                              ; $7aae: $00
	jp nc, $00e0                                     ; $7aaf: $d2 $e0 $00

	and d                                            ; $7ab2: $a2
	push hl                                          ; $7ab3: $e5
	ld [de], a                                       ; $7ab4: $12
	nop                                              ; $7ab5: $00
	nop                                              ; $7ab6: $00
	ld [bc], a                                       ; $7ab7: $02
	or b                                             ; $7ab8: $b0
	ld e, a                                          ; $7ab9: $5f
	dec bc                                           ; $7aba: $0b
	pop hl                                           ; $7abb: $e1
	ld [bc], a                                       ; $7abc: $02
	nop                                              ; $7abd: $00
	jp nc, $00e0                                     ; $7abe: $d2 $e0 $00

	sub e                                            ; $7ac1: $93
	push hl                                          ; $7ac2: $e5
	ld [de], a                                       ; $7ac3: $12
	ld bc, $0278                                     ; $7ac4: $01 $78 $02
	or b                                             ; $7ac7: $b0
	ld h, b                                          ; $7ac8: $60
	dec bc                                           ; $7ac9: $0b
	pop hl                                           ; $7aca: $e1
	ld [bc], a                                       ; $7acb: $02
	nop                                              ; $7acc: $00
	jp nc, $00e0                                     ; $7acd: $d2 $e0 $00

	add h                                            ; $7ad0: $84
	push hl                                          ; $7ad1: $e5
	ld [de], a                                       ; $7ad2: $12
	ld [bc], a                                       ; $7ad3: $02
	db $e4                                           ; $7ad4: $e4
	ld [bc], a                                       ; $7ad5: $02
	or b                                             ; $7ad6: $b0
	dec d                                            ; $7ad7: $15
	dec bc                                           ; $7ad8: $0b
	pop hl                                           ; $7ad9: $e1
	ld [bc], a                                       ; $7ada: $02
	nop                                              ; $7adb: $00
	jp nc, $00e0                                     ; $7adc: $d2 $e0 $00

	ld [hl], l                                       ; $7adf: $75
	push hl                                          ; $7ae0: $e5
	ld [de], a                                       ; $7ae1: $12
	dec c                                            ; $7ae2: $0d
	jr nc, jr_07c_7ae7                               ; $7ae3: $30 $02

	or b                                             ; $7ae5: $b0
	ld h, c                                          ; $7ae6: $61

jr_07c_7ae7:
	dec bc                                           ; $7ae7: $0b
	pop hl                                           ; $7ae8: $e1
	ld [bc], a                                       ; $7ae9: $02
	nop                                              ; $7aea: $00
	jp nc, $00e0                                     ; $7aeb: $d2 $e0 $00

	ld h, [hl]                                       ; $7aee: $66
	push hl                                          ; $7aef: $e5
	ld [de], a                                       ; $7af0: $12
	db $10                                           ; $7af1: $10
	ld h, d                                          ; $7af2: $62
	ld [bc], a                                       ; $7af3: $02
	or b                                             ; $7af4: $b0
	ld h, d                                          ; $7af5: $62
	dec bc                                           ; $7af6: $0b
	pop hl                                           ; $7af7: $e1
	ld [bc], a                                       ; $7af8: $02
	nop                                              ; $7af9: $00
	jp nc, $00e0                                     ; $7afa: $d2 $e0 $00

	ld d, a                                          ; $7afd: $57
	push hl                                          ; $7afe: $e5
	ld [de], a                                       ; $7aff: $12
	ld [de], a                                       ; $7b00: $12
	ret                                              ; $7b01: $c9


	ld [bc], a                                       ; $7b02: $02
	or b                                             ; $7b03: $b0
	ld h, e                                          ; $7b04: $63
	dec bc                                           ; $7b05: $0b
	pop hl                                           ; $7b06: $e1
	ld [bc], a                                       ; $7b07: $02
	nop                                              ; $7b08: $00
	jp nc, $00e0                                     ; $7b09: $d2 $e0 $00

	ld c, b                                          ; $7b0c: $48
	push hl                                          ; $7b0d: $e5
	ld [de], a                                       ; $7b0e: $12
	dec d                                            ; $7b0f: $15
	ld l, a                                          ; $7b10: $6f
	ld [bc], a                                       ; $7b11: $02
	or b                                             ; $7b12: $b0
	ld h, h                                          ; $7b13: $64
	dec bc                                           ; $7b14: $0b
	pop hl                                           ; $7b15: $e1
	ld [bc], a                                       ; $7b16: $02
	nop                                              ; $7b17: $00
	jp nc, $00e0                                     ; $7b18: $d2 $e0 $00

	add hl, sp                                       ; $7b1b: $39
	push hl                                          ; $7b1c: $e5
	ld [de], a                                       ; $7b1d: $12
	jr @-$4f                                         ; $7b1e: $18 $af

	ld [bc], a                                       ; $7b20: $02
	or b                                             ; $7b21: $b0
	ld h, l                                          ; $7b22: $65

jr_07c_7b23:
	ld c, $c0                                        ; $7b23: $0e $c0
	and a                                            ; $7b25: $a7
	ret nc                                           ; $7b26: $d0

	db $d3                                           ; $7b27: $d3
	pop de                                           ; $7b28: $d1
	ret nz                                           ; $7b29: $c0

	xor h                                            ; $7b2a: $ac
	ldh [rP1], a                                     ; $7b2b: $e0 $00
	daa                                              ; $7b2d: $27
	push hl                                          ; $7b2e: $e5
	ld [de], a                                       ; $7b2f: $12
	ld a, [de]                                       ; $7b30: $1a
	ld b, d                                          ; $7b31: $42
	ld [bc], a                                       ; $7b32: $02
	or b                                             ; $7b33: $b0
	ld h, [hl]                                       ; $7b34: $66
	dec bc                                           ; $7b35: $0b
	pop hl                                           ; $7b36: $e1
	ld [bc], a                                       ; $7b37: $02
	nop                                              ; $7b38: $00
	jp nc, $00e0                                     ; $7b39: $d2 $e0 $00

	jr jr_07c_7b23                                   ; $7b3c: $18 $e5

	ld [de], a                                       ; $7b3e: $12
	dec de                                           ; $7b3f: $1b
	ld sp, hl                                        ; $7b40: $f9
	ld [bc], a                                       ; $7b41: $02
	or b                                             ; $7b42: $b0
	ld h, a                                          ; $7b43: $67
	ld c, $c0                                        ; $7b44: $0e $c0
	and a                                            ; $7b46: $a7
	ret nc                                           ; $7b47: $d0

	db $d3                                           ; $7b48: $d3
	jp nc, $acc0                                     ; $7b49: $d2 $c0 $ac

	ldh [rP1], a                                     ; $7b4c: $e0 $00
	ld b, $e5                                        ; $7b4e: $06 $e5
	ld [de], a                                       ; $7b50: $12
	dec e                                            ; $7b51: $1d
	dec l                                            ; $7b52: $2d
	jp nz, $610b                                     ; $7b53: $c2 $0b $61

	ld hl, sp-$40                                    ; $7b56: $f8 $c0
	add e                                            ; $7b58: $83
	sub $e0                                          ; $7b59: $d6 $e0
	ld e, $39                                        ; $7b5b: $1e $39
	ret nz                                           ; $7b5d: $c0

	and l                                            ; $7b5e: $a5
	ret nz                                           ; $7b5f: $c0

	inc c                                            ; $7b60: $0c
	ldh [$50], a                                     ; $7b61: $e0 $50
	pop hl                                           ; $7b63: $e1
	ld [bc], a                                       ; $7b64: $02
	inc bc                                           ; $7b65: $03
	rra                                              ; $7b66: $1f
	ret nz                                           ; $7b67: $c0

	ld bc, $02a0                                     ; $7b68: $01 $a0 $02
	nop                                              ; $7b6b: $00
	ld bc, $5bc1                                     ; $7b6c: $01 $c1 $5b
	ret nz                                           ; $7b6f: $c0

	ld bc, $01a0                                     ; $7b70: $01 $a0 $01
	nop                                              ; $7b73: $00
	ld [bc], a                                       ; $7b74: $02
	ret nz                                           ; $7b75: $c0

	ld bc, $01a0                                     ; $7b76: $01 $a0 $01
	nop                                              ; $7b79: $00
	ld a, [bc]                                       ; $7b7a: $0a
	ret nz                                           ; $7b7b: $c0

	ld bc, $01a0                                     ; $7b7c: $01 $a0 $01
	nop                                              ; $7b7f: $00
	rla                                              ; $7b80: $17
	ret nz                                           ; $7b81: $c0

	dec h                                            ; $7b82: $25
	pop de                                           ; $7b83: $d1
	ret nc                                           ; $7b84: $d0

	ret nz                                           ; $7b85: $c0

	inc h                                            ; $7b86: $24
	pop de                                           ; $7b87: $d1
	ret nc                                           ; $7b88: $d0

	ret nz                                           ; $7b89: $c0

	inc hl                                           ; $7b8a: $23
	push de                                          ; $7b8b: $d5
	ret nc                                           ; $7b8c: $d0

	pop bc                                           ; $7b8d: $c1
	ld c, h                                          ; $7b8e: $4c

jr_07c_7b8f:
	db $db                                           ; $7b8f: $db
	pop bc                                           ; $7b90: $c1

jr_07c_7b91:
	dec sp                                           ; $7b91: $3b
	push hl                                          ; $7b92: $e5
	nop                                              ; $7b93: $00
	jr nz, @-$26                                     ; $7b94: $20 $d8

	db $fc                                           ; $7b96: $fc
	ret nz                                           ; $7b97: $c0

	dec de                                           ; $7b98: $1b
	ret nc                                           ; $7b99: $d0

	push de                                          ; $7b9a: $d5
	dec e                                            ; $7b9b: $1d
	ret nz                                           ; $7b9c: $c0

	inc c                                            ; $7b9d: $0c
	ldh [$78], a                                     ; $7b9e: $e0 $78
	pop hl                                           ; $7ba0: $e1
	ld [bc], a                                       ; $7ba1: $02
	rlca                                             ; $7ba2: $07
	cp a                                             ; $7ba3: $bf
	ret nz                                           ; $7ba4: $c0

	ld bc, $01a0                                     ; $7ba5: $01 $a0 $01
	nop                                              ; $7ba8: $00
	inc e                                            ; $7ba9: $1c
	ret nz                                           ; $7baa: $c0

	ld bc, $01a0                                     ; $7bab: $01 $a0 $01
	nop                                              ; $7bae: $00
	dec h                                            ; $7baf: $25
	pop bc                                           ; $7bb0: $c1
	ld c, h                                          ; $7bb1: $4c
	db $db                                           ; $7bb2: $db
	pop bc                                           ; $7bb3: $c1
	dec sp                                           ; $7bb4: $3b
	push hl                                          ; $7bb5: $e5
	nop                                              ; $7bb6: $00
	jr nz, jr_07c_7b91                               ; $7bb7: $20 $d8

	and a                                            ; $7bb9: $a7
	ret nz                                           ; $7bba: $c0

	ld h, $e0                                        ; $7bbb: $26 $e0
	jr z, jr_07c_7b8f                                ; $7bbd: $28 $d0

	ld h, c                                          ; $7bbf: $61
	add b                                            ; $7bc0: $80
	nop                                              ; $7bc1: $00
	db $db                                           ; $7bc2: $db
	ld b, e                                          ; $7bc3: $43
	ret nz                                           ; $7bc4: $c0

	and l                                            ; $7bc5: $a5
	ret nz                                           ; $7bc6: $c0

	ld bc, $01a0                                     ; $7bc7: $01 $a0 $01
	nop                                              ; $7bca: $00
	cpl                                              ; $7bcb: $2f
	add d                                            ; $7bcc: $82
	ret nz                                           ; $7bcd: $c0

	dec de                                           ; $7bce: $1b
	ret nc                                           ; $7bcf: $d0

	ld [bc], a                                       ; $7bd0: $02
	ret nc                                           ; $7bd1: $d0

	pop de                                           ; $7bd2: $d1
	inc c                                            ; $7bd3: $0c
	ret nz                                           ; $7bd4: $c0

	ld bc, $02a0                                     ; $7bd5: $01 $a0 $02
	nop                                              ; $7bd8: $00
	scf                                              ; $7bd9: $37
	ret nz                                           ; $7bda: $c0

	ld bc, $01a0                                     ; $7bdb: $01 $a0 $01
	nop                                              ; $7bde: $00
	ld b, d                                          ; $7bdf: $42
	ld [bc], a                                       ; $7be0: $02
	jp nc, $0cd3                                     ; $7be1: $d2 $d3 $0c

	ret nz                                           ; $7be4: $c0

	ld bc, $02a0                                     ; $7be5: $01 $a0 $02
	nop                                              ; $7be8: $00
	ld c, b                                          ; $7be9: $48
	ret nz                                           ; $7bea: $c0

	ld bc, $01a0                                     ; $7beb: $01 $a0 $01
	nop                                              ; $7bee: $00
	ld d, h                                          ; $7bef: $54
	ld bc, $0cd4                                     ; $7bf0: $01 $d4 $0c
	ret nz                                           ; $7bf3: $c0

	ld bc, $02a0                                     ; $7bf4: $01 $a0 $02
	nop                                              ; $7bf7: $00
	ld e, d                                          ; $7bf8: $5a
	ret nz                                           ; $7bf9: $c0

	ld bc, $01a0                                     ; $7bfa: $01 $a0 $01
	nop                                              ; $7bfd: $00
	ld h, l                                          ; $7bfe: $65
	ret nz                                           ; $7bff: $c0

	inc hl                                           ; $7c00: $23
	ret c                                            ; $7c01: $d8

	ret nc                                           ; $7c02: $d0

	ld b, b                                          ; $7c03: $40
	add b                                            ; $7c04: $80
	nop                                              ; $7c05: $00
	db $db                                           ; $7c06: $db
	add b                                            ; $7c07: $80
	ld [bc], a                                       ; $7c08: $02
	dec l                                            ; $7c09: $2d
	inc bc                                           ; $7c0a: $03
	ldh [rSB], a                                     ; $7c0b: $e0 $01
	ld d, h                                          ; $7c0d: $54
	ld c, c                                          ; $7c0e: $49
	or b                                             ; $7c0f: $b0
	rst SubAFromDE                                          ; $7c10: $df
	dec sp                                           ; $7c11: $3b
	ret nz                                           ; $7c12: $c0

	and l                                            ; $7c13: $a5
	ret nz                                           ; $7c14: $c0

	ld bc, $01a0                                     ; $7c15: $01 $a0 $01
	nop                                              ; $7c18: $00
	ld l, a                                          ; $7c19: $6f
	add d                                            ; $7c1a: $82
	ret nz                                           ; $7c1b: $c0

	dec de                                           ; $7c1c: $1b
	ret nc                                           ; $7c1d: $d0

	ld [bc], a                                       ; $7c1e: $02
	ret nc                                           ; $7c1f: $d0

	pop de                                           ; $7c20: $d1
	inc c                                            ; $7c21: $0c
	ret nz                                           ; $7c22: $c0

	ld bc, $02a0                                     ; $7c23: $01 $a0 $02
	nop                                              ; $7c26: $00
	ld [hl], d                                       ; $7c27: $72
	ret nz                                           ; $7c28: $c0

	ld bc, $01a0                                     ; $7c29: $01 $a0 $01
	nop                                              ; $7c2c: $00
	ld a, e                                          ; $7c2d: $7b
	ld [bc], a                                       ; $7c2e: $02
	jp nc, $0cd3                                     ; $7c2f: $d2 $d3 $0c

	ret nz                                           ; $7c32: $c0

	ld bc, $02a0                                     ; $7c33: $01 $a0 $02
	nop                                              ; $7c36: $00
	ld a, [hl]                                       ; $7c37: $7e
	ret nz                                           ; $7c38: $c0

	ld bc, $01a0                                     ; $7c39: $01 $a0 $01
	nop                                              ; $7c3c: $00
	add h                                            ; $7c3d: $84
	ld bc, $0cd4                                     ; $7c3e: $01 $d4 $0c
	ret nz                                           ; $7c41: $c0

	ld bc, $02a0                                     ; $7c42: $01 $a0 $02
	nop                                              ; $7c45: $00
	add [hl]                                         ; $7c46: $86
	ret nz                                           ; $7c47: $c0

	ld bc, $01a0                                     ; $7c48: $01 $a0 $01
	nop                                              ; $7c4b: $00
	add h                                            ; $7c4c: $84
	rst $38                                          ; $7c4d: $ff
	add hl, bc                                       ; $7c4e: $09
	ret nz                                           ; $7c4f: $c0

	ld bc, $01a0                                     ; $7c50: $01 $a0 $01
	nop                                              ; $7c53: $00
	adc h                                            ; $7c54: $8c
	ldh [rSB], a                                     ; $7c55: $e0 $01
	ld a, [bc]                                       ; $7c57: $0a
	pop hl                                           ; $7c58: $e1
	jr nc, jr_07c_7c5b                               ; $7c59: $30 $00

jr_07c_7c5b:
	nop                                              ; $7c5b: $00
	pop bc                                           ; $7c5c: $c1
	ld c, h                                          ; $7c5d: $4c
	ret nc                                           ; $7c5e: $d0

	ret nz                                           ; $7c5f: $c0

	ld c, a                                          ; $7c60: $4f
	ei                                               ; $7c61: $fb
	cp $09                                           ; $7c62: $fe $09
	db $fc                                           ; $7c64: $fc
	ret nz                                           ; $7c65: $c0

	ld h, l                                          ; $7c66: $65
	db $d3                                           ; $7c67: $d3
	db $fc                                           ; $7c68: $fc
	ret nz                                           ; $7c69: $c0

	ld h, [hl]                                       ; $7c6a: $66
	ldh [$15], a                                     ; $7c6b: $e0 $15
	inc c                                            ; $7c6d: $0c
	ret nz                                           ; $7c6e: $c0

	ld bc, $02a0                                     ; $7c6f: $01 $a0 $02
	nop                                              ; $7c72: $00
	sub l                                            ; $7c73: $95
	ret nz                                           ; $7c74: $c0

	ld bc, $01a0                                     ; $7c75: $01 $a0 $01
	nop                                              ; $7c78: $00
	sbc [hl]                                         ; $7c79: $9e
	ei                                               ; $7c7a: $fb
	cp $15                                           ; $7c7b: $fe $15
	db $fc                                           ; $7c7d: $fc
	ret nz                                           ; $7c7e: $c0

	ld h, l                                          ; $7c7f: $65
	rst SubAFromHL                                          ; $7c80: $d7
	rst $38                                          ; $7c81: $ff
	rrca                                             ; $7c82: $0f
	db $fc                                           ; $7c83: $fc
	ret nz                                           ; $7c84: $c0

	ld h, [hl]                                       ; $7c85: $66
	ldh [rAUD2HIGH], a                               ; $7c86: $e0 $19
	db $fc                                           ; $7c88: $fc
	ret nz                                           ; $7c89: $c0

	ld h, [hl]                                       ; $7c8a: $66
	ldh [rAUD3ENA], a                                ; $7c8b: $e0 $1a
	db $fc                                           ; $7c8d: $fc
	ret nz                                           ; $7c8e: $c0

	ld h, [hl]                                       ; $7c8f: $66
	ldh [rAUD3LEN], a                                ; $7c90: $e0 $1b
	inc c                                            ; $7c92: $0c
	ret nz                                           ; $7c93: $c0

	ld bc, $02a0                                     ; $7c94: $01 $a0 $02
	nop                                              ; $7c97: $00
	and a                                            ; $7c98: $a7
	ret nz                                           ; $7c99: $c0

	ld bc, $01a0                                     ; $7c9a: $01 $a0 $01
	nop                                              ; $7c9d: $00
	xor h                                            ; $7c9e: $ac
	ei                                               ; $7c9f: $fb
	cp $09                                           ; $7ca0: $fe $09
	db $fc                                           ; $7ca2: $fc
	ret nz                                           ; $7ca3: $c0

	ld h, l                                          ; $7ca4: $65
	reti                                             ; $7ca5: $d9


	db $fc                                           ; $7ca6: $fc
	ret nz                                           ; $7ca7: $c0

	ld h, [hl]                                       ; $7ca8: $66
	ldh [rAUD2ENV], a                                ; $7ca9: $e0 $17
	dec e                                            ; $7cab: $1d
	or b                                             ; $7cac: $b0
	ld a, a                                          ; $7cad: $7f
	inc c                                            ; $7cae: $0c
	ret nz                                           ; $7caf: $c0

	ld bc, $02a0                                     ; $7cb0: $01 $a0 $02
	nop                                              ; $7cb3: $00
	or e                                             ; $7cb4: $b3
	ret nz                                           ; $7cb5: $c0

	ld bc, $01a0                                     ; $7cb6: $01 $a0 $01
	nop                                              ; $7cb9: $00
	cp e                                             ; $7cba: $bb
	rst $38                                          ; $7cbb: $ff
	inc c                                            ; $7cbc: $0c
	ret nz                                           ; $7cbd: $c0

	ld bc, $02a0                                     ; $7cbe: $01 $a0 $02
	nop                                              ; $7cc1: $00
	call nz, $01c0                                   ; $7cc2: $c4 $c0 $01
	and b                                            ; $7cc5: $a0
	ld bc, $cc00                                     ; $7cc6: $01 $00 $cc
	ei                                               ; $7cc9: $fb
	cp $10                                           ; $7cca: $fe $10
	add b                                            ; $7ccc: $80
	nop                                              ; $7ccd: $00
	call z, $c0fc                                    ; $7cce: $cc $fc $c0
	ld h, h                                          ; $7cd1: $64
	ldh [$61], a                                     ; $7cd2: $e0 $61
	db $fc                                           ; $7cd4: $fc
	ret nz                                           ; $7cd5: $c0

	ld h, l                                          ; $7cd6: $65
	jp c, $c0fc                                      ; $7cd7: $da $fc $c0

	ld h, [hl]                                       ; $7cda: $66
	push de                                          ; $7cdb: $d5
	dec hl                                           ; $7cdc: $2b
	add d                                            ; $7cdd: $82
	ret nz                                           ; $7cde: $c0

	dec de                                           ; $7cdf: $1b
	ret nc                                           ; $7ce0: $d0

	ld [bc], a                                       ; $7ce1: $02
	ret nc                                           ; $7ce2: $d0

	pop de                                           ; $7ce3: $d1
	ld b, $c0                                        ; $7ce4: $06 $c0
	ld bc, $02a0                                     ; $7ce6: $01 $a0 $02
	nop                                              ; $7ce9: $00
	sub $02                                          ; $7cea: $d6 $02
	jp nc, $06d3                                     ; $7cec: $d2 $d3 $06

	ret nz                                           ; $7cef: $c0

	ld bc, $02a0                                     ; $7cf0: $01 $a0 $02
	nop                                              ; $7cf3: $00
	ldh [rSB], a                                     ; $7cf4: $e0 $01
	call nc, $c006                                   ; $7cf6: $d4 $06 $c0
	ld bc, $02a0                                     ; $7cf9: $01 $a0 $02
	nop                                              ; $7cfc: $00
	push hl                                          ; $7cfd: $e5
	ret nz                                           ; $7cfe: $c0

	ld bc, $01a0                                     ; $7cff: $01 $a0 $01
	nop                                              ; $7d02: $00
	db $eb                                           ; $7d03: $eb
	ld b, b                                          ; $7d04: $40
	add b                                            ; $7d05: $80
	nop                                              ; $7d06: $00
	call z, $fefb                                    ; $7d07: $cc $fb $fe
	db $10                                           ; $7d0a: $10
	add b                                            ; $7d0b: $80
	nop                                              ; $7d0c: $00
	call $c0fc                                       ; $7d0d: $cd $fc $c0
	ld h, h                                          ; $7d10: $64
	ldh [$62], a                                     ; $7d11: $e0 $62
	db $fc                                           ; $7d13: $fc
	ret nz                                           ; $7d14: $c0

	ld h, l                                          ; $7d15: $65
	jp c, $c0fc                                      ; $7d16: $da $fc $c0

	ld h, [hl]                                       ; $7d19: $66
	call nc, $822b                                   ; $7d1a: $d4 $2b $82
	ret nz                                           ; $7d1d: $c0

	dec de                                           ; $7d1e: $1b
	ret nc                                           ; $7d1f: $d0

	ld [bc], a                                       ; $7d20: $02
	ret nc                                           ; $7d21: $d0

	pop de                                           ; $7d22: $d1
	ld b, $c0                                        ; $7d23: $06 $c0
	ld bc, $02a0                                     ; $7d25: $01 $a0 $02
	nop                                              ; $7d28: $00
	ldh a, [rSC]                                     ; $7d29: $f0 $02
	jp nc, $06d3                                     ; $7d2b: $d2 $d3 $06

	ret nz                                           ; $7d2e: $c0

	ld bc, $02a0                                     ; $7d2f: $01 $a0 $02
	nop                                              ; $7d32: $00
	rst FarCall                                          ; $7d33: $f7
	ld bc, $06d4                                     ; $7d34: $01 $d4 $06
	ret nz                                           ; $7d37: $c0

	ld bc, $02a0                                     ; $7d38: $01 $a0 $02
	nop                                              ; $7d3b: $00
	db $fd                                           ; $7d3c: $fd
	ret nz                                           ; $7d3d: $c0

	ld bc, $01a0                                     ; $7d3e: $01 $a0 $01
	nop                                              ; $7d41: $00
	db $eb                                           ; $7d42: $eb
	ld b, b                                          ; $7d43: $40
	add b                                            ; $7d44: $80
	nop                                              ; $7d45: $00
	call $fefb                                       ; $7d46: $cd $fb $fe
	add hl, bc                                       ; $7d49: $09
	db $fc                                           ; $7d4a: $fc
	ret nz                                           ; $7d4b: $c0

	ld h, l                                          ; $7d4c: $65
	call c, $c0fc                                    ; $7d4d: $dc $fc $c0
	ld h, [hl]                                       ; $7d50: $66
	ldh [rAUD2ENV], a                                ; $7d51: $e0 $17
	inc c                                            ; $7d53: $0c
	ret nz                                           ; $7d54: $c0

	ld bc, $02a0                                     ; $7d55: $01 $a0 $02
	ld bc, $c007                                     ; $7d58: $01 $07 $c0
	ld bc, $01a0                                     ; $7d5b: $01 $a0 $01
	ld bc, $310c                                     ; $7d5e: $01 $0c $31
	ret nz                                           ; $7d61: $c0

	inc c                                            ; $7d62: $0c
	ldh [$3c], a                                     ; $7d63: $e0 $3c
	pop hl                                           ; $7d65: $e1
	ld [bc], a                                       ; $7d66: $02
	rlca                                             ; $7d67: $07
	cp a                                             ; $7d68: $bf
	ret nz                                           ; $7d69: $c0

	and l                                            ; $7d6a: $a5
	add d                                            ; $7d6b: $82
	ret nz                                           ; $7d6c: $c0

	dec de                                           ; $7d6d: $1b
	ret nc                                           ; $7d6e: $d0

	ld [bc], a                                       ; $7d6f: $02
	ret nc                                           ; $7d70: $d0

	pop de                                           ; $7d71: $d1
	ld b, $c0                                        ; $7d72: $06 $c0
	ld bc, $02a0                                     ; $7d74: $01 $a0 $02
	ld bc, $0211                                     ; $7d77: $01 $11 $02
	jp nc, $06d3                                     ; $7d7a: $d2 $d3 $06

	ret nz                                           ; $7d7d: $c0

	ld bc, $02a0                                     ; $7d7e: $01 $a0 $02
	ld bc, $0119                                     ; $7d81: $01 $19 $01
	call nc, $c006                                   ; $7d84: $d4 $06 $c0
	ld bc, $02a0                                     ; $7d87: $01 $a0 $02
	ld bc, $c025                                     ; $7d8a: $01 $25 $c0
	ld bc, $01a0                                     ; $7d8d: $01 $a0 $01
	ld bc, $992a                                     ; $7d90: $01 $2a $99
	inc b                                            ; $7d93: $04
	add hl, bc                                       ; $7d94: $09
	dec [hl]                                         ; $7d95: $35
	add d                                            ; $7d96: $82
	ret nz                                           ; $7d97: $c0

	dec de                                           ; $7d98: $1b
	ret nc                                           ; $7d99: $d0

	ld [bc], a                                       ; $7d9a: $02
	ret nc                                           ; $7d9b: $d0

	pop de                                           ; $7d9c: $d1
	rla                                              ; $7d9d: $17
	ret nz                                           ; $7d9e: $c0

	ld bc, $02a0                                     ; $7d9f: $01 $a0 $02
	nop                                              ; $7da2: $00
	ld bc, $fcfb                                     ; $7da3: $01 $fb $fc
	ret nz                                           ; $7da6: $c0

	ld l, d                                          ; $7da7: $6a
	jp nc, $a00b                                     ; $7da8: $d2 $0b $a0

	add b                                            ; $7dab: $80
	and b                                            ; $7dac: $a0
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	inc bc                                           ; $7daf: $03
	db $e4                                           ; $7db0: $e4
	ld bc, $ff0c                                     ; $7db1: $01 $0c $ff
	nop                                              ; $7db4: $00
	ld [bc], a                                       ; $7db5: $02
	jp nc, $06d3                                     ; $7db6: $d2 $d3 $06

	ret nz                                           ; $7db9: $c0

	ld bc, $02a0                                     ; $7dba: $01 $a0 $02
	nop                                              ; $7dbd: $00
	add hl, bc                                       ; $7dbe: $09
	ld bc, $06d4                                     ; $7dbf: $01 $d4 $06
	ret nz                                           ; $7dc2: $c0

	ld bc, $02a0                                     ; $7dc3: $01 $a0 $02
	nop                                              ; $7dc6: $00
	inc de                                           ; $7dc7: $13
	db $e4                                           ; $7dc8: $e4
	nop                                              ; $7dc9: $00
	ld [bc], a                                       ; $7dca: $02
	jr z, jr_07c_7dd3                                ; $7dcb: $28 $06

	ret nz                                           ; $7dcd: $c0

	ld bc, $01a0                                     ; $7dce: $01 $a0 $01
	nop                                              ; $7dd1: $00
	dec e                                            ; $7dd2: $1d

jr_07c_7dd3:
	ld h, d                                          ; $7dd3: $62
	nop                                              ; $7dd4: $00
	ld [hl+], a                                      ; $7dd5: $22
	add hl, bc                                       ; $7dd6: $09
	ld d, h                                          ; $7dd7: $54
	pop hl                                           ; $7dd8: $e1
	ld [bc], a                                       ; $7dd9: $02
	dec c                                            ; $7dda: $0d
	call nz, $fe62                                   ; $7ddb: $c4 $62 $fe
	ld a, [bc]                                       ; $7dde: $0a
	db $fc                                           ; $7ddf: $fc
	ret nz                                           ; $7de0: $c0

	ld h, l                                          ; $7de1: $65
	ret nz                                           ; $7de2: $c0

	ld [hl], h                                       ; $7de3: $74
	ld hl, sp-$40                                    ; $7de4: $f8 $c0
	ld h, [hl]                                       ; $7de6: $66
	ret nz                                           ; $7de7: $c0

	ld [hl], l                                       ; $7de8: $75
	inc bc                                           ; $7de9: $03
	ldh [rP1], a                                     ; $7dea: $e0 $00
	ld c, e                                          ; $7dec: $4b
	db $fc                                           ; $7ded: $fc
	ret nz                                           ; $7dee: $c0

	ld h, l                                          ; $7def: $65
	add e                                            ; $7df0: $83
	ld [bc], a                                       ; $7df1: $02
	ld d, $03                                        ; $7df2: $16 $03
	ldh [rP1], a                                     ; $7df4: $e0 $00
	ld b, c                                          ; $7df6: $41
	cp $0b                                           ; $7df7: $fe $0b
	db $fc                                           ; $7df9: $fc
	ret nz                                           ; $7dfa: $c0

	ld h, l                                          ; $7dfb: $65
	add e                                            ; $7dfc: $83
	ld [bc], a                                       ; $7dfd: $02
	ld [de], a                                       ; $7dfe: $12
	ei                                               ; $7dff: $fb
	ret nz                                           ; $7e00: $c0

	ld h, [hl]                                       ; $7e01: $66
	ret nz                                           ; $7e02: $c0

	ld [hl], l                                       ; $7e03: $75
	inc bc                                           ; $7e04: $03
	ldh [rP1], a                                     ; $7e05: $e0 $00
	jr nc, jr_07c_7e29                               ; $7e07: $30 $20

	ld h, b                                          ; $7e09: $60
	add b                                            ; $7e0a: $80
	ld [bc], a                                       ; $7e0b: $02
	ld e, c                                          ; $7e0c: $59
	inc bc                                           ; $7e0d: $03
	ldh [rP1], a                                     ; $7e0e: $e0 $00
	ld [hl], l                                       ; $7e10: $75
	rla                                              ; $7e11: $17
	ld h, b                                          ; $7e12: $60
	cp $0c                                           ; $7e13: $fe $0c
	ei                                               ; $7e15: $fb
	ret nz                                           ; $7e16: $c0

	dec d                                            ; $7e17: $15
	ret nc                                           ; $7e18: $d0

	ldh [$50], a                                     ; $7e19: $e0 $50
	ei                                               ; $7e1b: $fb
	ret nz                                           ; $7e1c: $c0

	ld d, $d0                                        ; $7e1d: $16 $d0
	ldh [$5a], a                                     ; $7e1f: $e0 $5a
	inc bc                                           ; $7e21: $03
	ldh [rP1], a                                     ; $7e22: $e0 $00
	ld l, b                                          ; $7e24: $68
	inc bc                                           ; $7e25: $03
	ldh [rP1], a                                     ; $7e26: $e0 $00
	inc h                                            ; $7e28: $24

jr_07c_7e29:
	db $e4                                           ; $7e29: $e4
	ld bc, $003c                                     ; $7e2a: $01 $3c $00
	inc h                                            ; $7e2d: $24
	add hl, bc                                       ; $7e2e: $09
	ld b, $e0                                        ; $7e2f: $06 $e0
	nop                                              ; $7e31: $00
	ld h, c                                          ; $7e32: $61
	db $e4                                           ; $7e33: $e4
	ld bc, $1432                                     ; $7e34: $01 $32 $14
	ld h, b                                          ; $7e37: $60
	add b                                            ; $7e38: $80
	ld [bc], a                                       ; $7e39: $02
	ld l, h                                          ; $7e3a: $6c
	dec bc                                           ; $7e3b: $0b
	or b                                             ; $7e3c: $b0
	ld a, a                                          ; $7e3d: $7f
	inc bc                                           ; $7e3e: $03
	ldh [rP1], a                                     ; $7e3f: $e0 $00
	dec h                                            ; $7e41: $25
	rst $38                                          ; $7e42: $ff
	inc bc                                           ; $7e43: $03
	ldh [rP1], a                                     ; $7e44: $e0 $00
	ccf                                              ; $7e46: $3f
	inc bc                                           ; $7e47: $03
	ldh [rP1], a                                     ; $7e48: $e0 $00
	inc e                                            ; $7e4a: $1c
	add hl, de                                       ; $7e4b: $19
	or c                                             ; $7e4c: $b1
	ld d, h                                          ; $7e4d: $54
	ld b, $c0                                        ; $7e4e: $06 $c0
	ld bc, $01a0                                     ; $7e50: $01 $a0 $01
	nop                                              ; $7e53: $00
	ld h, $aa                                        ; $7e54: $26 $aa
	ld b, $c0                                        ; $7e56: $06 $c0
	ld bc, $01a0                                     ; $7e58: $01 $a0 $01
	nop                                              ; $7e5b: $00
	ld l, $ff                                        ; $7e5c: $2e $ff
	ld b, $c0                                        ; $7e5e: $06 $c0
	ld bc, $01a0                                     ; $7e60: $01 $a0 $01
	nop                                              ; $7e63: $00
	dec [hl]                                         ; $7e64: $35
	ld e, $82                                        ; $7e65: $1e $82
	ret nz                                           ; $7e67: $c0

	add b                                            ; $7e68: $80
	ld bc, $06d3                                     ; $7e69: $01 $d3 $06
	ret nz                                           ; $7e6c: $c0

	ld bc, $01a0                                     ; $7e6d: $01 $a0 $01
	nop                                              ; $7e70: $00
	ld b, d                                          ; $7e71: $42
	ld bc, $06d2                                     ; $7e72: $01 $d2 $06
	ret nz                                           ; $7e75: $c0

	ld bc, $01a0                                     ; $7e76: $01 $a0 $01
	nop                                              ; $7e79: $00
	ld d, b                                          ; $7e7a: $50
	ld bc, $06d1                                     ; $7e7b: $01 $d1 $06
	ret nz                                           ; $7e7e: $c0

	ld bc, $01a0                                     ; $7e7f: $01 $a0 $01
	nop                                              ; $7e82: $00
	ld e, l                                          ; $7e83: $5d
	ld b, $c0                                        ; $7e84: $06 $c0
	ld bc, $01a0                                     ; $7e86: $01 $a0 $01
	nop                                              ; $7e89: $00
	ld l, c                                          ; $7e8a: $69
	ld b, $c0                                        ; $7e8b: $06 $c0
	ld bc, $01a0                                     ; $7e8d: $01 $a0 $01
	nop                                              ; $7e90: $00
	ld a, b                                          ; $7e91: $78
	ld a, [hl+]                                      ; $7e92: $2a
	rst $38                                          ; $7e93: $ff
	jr z, @+$34                                      ; $7e94: $28 $32

	ld b, $c0                                        ; $7e96: $06 $c0
	ld bc, $01a0                                     ; $7e98: $01 $a0 $01
	nop                                              ; $7e9b: $00
	adc l                                            ; $7e9c: $8d
	ld h, l                                          ; $7e9d: $65
	ld b, $c0                                        ; $7e9e: $06 $c0
	ld bc, $01a0                                     ; $7ea0: $01 $a0 $01
	nop                                              ; $7ea3: $00
	sub [hl]                                         ; $7ea4: $96
	sbc c                                            ; $7ea5: $99
	ld b, $c0                                        ; $7ea6: $06 $c0
	ld bc, $01a0                                     ; $7ea8: $01 $a0 $01
	nop                                              ; $7eab: $00
	and h                                            ; $7eac: $a4
	call z, $c006                                    ; $7ead: $cc $06 $c0
	ld bc, $01a0                                     ; $7eb0: $01 $a0 $01
	nop                                              ; $7eb3: $00
	xor h                                            ; $7eb4: $ac
	rst $38                                          ; $7eb5: $ff
	ld b, $c0                                        ; $7eb6: $06 $c0
	ld bc, $01a0                                     ; $7eb8: $01 $a0 $01
	nop                                              ; $7ebb: $00
	or l                                             ; $7ebc: $b5
	add hl, bc                                       ; $7ebd: $09
	and a                                            ; $7ebe: $a7
	ret nz                                           ; $7ebf: $c0

	ld bc, $02a0                                     ; $7ec0: $01 $a0 $02
	nop                                              ; $7ec3: $00
	cp l                                             ; $7ec4: $bd
	ret nz                                           ; $7ec5: $c0

	ld bc, $01a0                                     ; $7ec6: $01 $a0 $01
	nop                                              ; $7ec9: $00
	jp nz, $01c0                                     ; $7eca: $c2 $c0 $01

	and b                                            ; $7ecd: $a0
	ld [bc], a                                       ; $7ece: $02
	nop                                              ; $7ecf: $00
	call nz, Call_07c_5bc1                           ; $7ed0: $c4 $c1 $5b
	ret nz                                           ; $7ed3: $c0

	ld bc, $01a0                                     ; $7ed4: $01 $a0 $01
	nop                                              ; $7ed7: $00
	ret nc                                           ; $7ed8: $d0

	ret nz                                           ; $7ed9: $c0

	ld bc, $02a0                                     ; $7eda: $01 $a0 $02
	nop                                              ; $7edd: $00
	rst SubAFromHL                                          ; $7ede: $d7
	ret nz                                           ; $7edf: $c0

	ld bc, $01a0                                     ; $7ee0: $01 $a0 $01
	nop                                              ; $7ee3: $00
	db $db                                           ; $7ee4: $db
	ret nz                                           ; $7ee5: $c0

	set 0, b                                         ; $7ee6: $cb $c0
	rrca                                             ; $7ee8: $0f
	db $e3                                           ; $7ee9: $e3
	nop                                              ; $7eea: $00
	ret c                                            ; $7eeb: $d8

	ret nz                                           ; $7eec: $c0

	ld bc, $02a0                                     ; $7eed: $01 $a0 $02
	nop                                              ; $7ef0: $00
	pop hl                                           ; $7ef1: $e1
	ret nz                                           ; $7ef2: $c0

	ld bc, $01a0                                     ; $7ef3: $01 $a0 $01
	nop                                              ; $7ef6: $00
	push af                                          ; $7ef7: $f5
	ret nz                                           ; $7ef8: $c0

	ld bc, $02a0                                     ; $7ef9: $01 $a0 $02
	nop                                              ; $7efc: $00
	ld hl, sp-$40                                    ; $7efd: $f8 $c0
	ld bc, $01a0                                     ; $7eff: $01 $a0 $01
	ld bc, $c007                                     ; $7f02: $01 $07 $c0
	set 0, b                                         ; $7f05: $cb $c0
	ld de, $00e3                                     ; $7f07: $11 $e3 $00
	ld a, l                                          ; $7f0a: $7d
	pop hl                                           ; $7f0b: $e1
	ld [bc], a                                       ; $7f0c: $02
	nop                                              ; $7f0d: $00
	ldh [$c0], a                                     ; $7f0e: $e0 $c0
	ld bc, $02a0                                     ; $7f10: $01 $a0 $02
	ld bc, $c010                                     ; $7f13: $01 $10 $c0
	ld bc, $01a0                                     ; $7f16: $01 $a0 $01
	ld bc, $c01e                                     ; $7f19: $01 $1e $c0
	ld bc, $02a0                                     ; $7f1c: $01 $a0 $02
	ld bc, $c020                                     ; $7f1f: $01 $20 $c0
	ld bc, $01a0                                     ; $7f22: $01 $a0 $01
	ld bc, $c02b                                     ; $7f25: $01 $2b $c0
	ld bc, $02a0                                     ; $7f28: $01 $a0 $02
	ld bc, $c034                                     ; $7f2b: $01 $34 $c0
	ld bc, $01a0                                     ; $7f2e: $01 $a0 $01
	ld bc, $c041                                     ; $7f31: $01 $41 $c0
	ld bc, $02a0                                     ; $7f34: $01 $a0 $02
	ld bc, $c044                                     ; $7f37: $01 $44 $c0
	ld bc, $01a0                                     ; $7f3a: $01 $a0 $01
	ld bc, $c04e                                     ; $7f3d: $01 $4e $c0
	set 2, b                                         ; $7f40: $cb $d0
	add d                                            ; $7f42: $82
	ld bc, $d1c6                                     ; $7f43: $01 $c6 $d1
	pop hl                                           ; $7f46: $e1
	ld [bc], a                                       ; $7f47: $02
	inc b                                            ; $7f48: $04
	rst JumpTable                                          ; $7f49: $c7
	ret nz                                           ; $7f4a: $c0

	ld d, c                                          ; $7f4b: $51
	jp nc, $55c0                                     ; $7f4c: $d2 $c0 $55

	ldh [rAUD3LEVEL], a                              ; $7f4f: $e0 $1c
	ret nz                                           ; $7f51: $c0

	ld d, [hl]                                       ; $7f52: $56
	ret nc                                           ; $7f53: $d0

	ret nc                                           ; $7f54: $d0

	ret nc                                           ; $7f55: $d0

	pop hl                                           ; $7f56: $e1
	inc de                                           ; $7f57: $13
	ld bc, $e16b                                     ; $7f58: $01 $6b $e1
	inc de                                           ; $7f5b: $13
	ld bc, $c1a9                                     ; $7f5c: $01 $a9 $c1
	ld l, e                                          ; $7f5f: $6b
	sub $d0                                          ; $7f60: $d6 $d0
	push hl                                          ; $7f62: $e5
	inc de                                           ; $7f63: $13
	ld [bc], a                                       ; $7f64: $02
	nop                                              ; $7f65: $00
	add hl, bc                                       ; $7f66: $09
	ld c, $d0                                        ; $7f67: $0e $d0
	add d                                            ; $7f69: $82
	ld bc, $d3c6                                     ; $7f6a: $01 $c6 $d3
	ret nz                                           ; $7f6d: $c0

	ld d, [hl]                                       ; $7f6e: $56
	ret nc                                           ; $7f6f: $d0

	ret nc                                           ; $7f70: $d0

	ret nc                                           ; $7f71: $d0

	push hl                                          ; $7f72: $e5
	inc de                                           ; $7f73: $13
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	add hl, bc                                       ; $7f76: $09
	inc h                                            ; $7f77: $24
	ld h, b                                          ; $7f78: $60
	db $fc                                           ; $7f79: $fc
	ret nz                                           ; $7f7a: $c0

	ld l, d                                          ; $7f7b: $6a
	ret nc                                           ; $7f7c: $d0

	ld a, [de]                                       ; $7f7d: $1a
	and b                                            ; $7f7e: $a0
	add b                                            ; $7f7f: $80
	and b                                            ; $7f80: $a0
	ld bc, $0f00                                     ; $7f81: $01 $00 $0f
	ret nz                                           ; $7f84: $c0

	ld bc, $02a0                                     ; $7f85: $01 $a0 $02
	ld bc, $c053                                     ; $7f88: $01 $53 $c0
	ld bc, $01a0                                     ; $7f8b: $01 $a0 $01
	ld bc, $e461                                     ; $7f8e: $01 $61 $e4
	ld [bc], a                                       ; $7f91: $02
	inc a                                            ; $7f92: $3c
	rst $38                                          ; $7f93: $ff
	inc bc                                           ; $7f94: $03
	ldh [rP1], a                                     ; $7f95: $e0 $00
	ld b, $03                                        ; $7f97: $06 $03
	ldh [rP1], a                                     ; $7f99: $e0 $00
	ld [bc], a                                       ; $7f9b: $02
	ld e, b                                          ; $7f9c: $58
	add c                                            ; $7f9d: $81
	ret nz                                           ; $7f9e: $c0

	ld h, l                                          ; $7f9f: $65
	ld [bc], a                                       ; $7fa0: $02
	db $d3                                           ; $7fa1: $d3
	call nc, $c01a                                   ; $7fa2: $d4 $1a $c0
	ld bc, $02a0                                     ; $7fa5: $01 $a0 $02
	ld bc, $c064                                     ; $7fa8: $01 $64 $c0
	ld bc, $01a0                                     ; $7fab: $01 $a0 $01
	ld bc, $c06c                                     ; $7fae: $01 $6c $c0
	ld bc, $02a0                                     ; $7fb1: $01 $a0 $02
	ld bc, $d06f                                     ; $7fb4: $01 $6f $d0
	add e                                            ; $7fb7: $83
	ld bc, $d1de                                     ; $7fb8: $01 $de $d1
	db $e4                                           ; $7fbb: $e4
	ld bc, $0073                                     ; $7fbc: $01 $73 $00
	dec [hl]                                         ; $7fbf: $35
	ret nc                                           ; $7fc0: $d0

	add e                                            ; $7fc1: $83
	ld bc, $d0de                                     ; $7fc2: $01 $de $d0
	ret nz                                           ; $7fc5: $c0

	ld bc, $02a0                                     ; $7fc6: $01 $a0 $02
	ld bc, $a072                                     ; $7fc9: $01 $72 $a0
	add b                                            ; $7fcc: $80
	and b                                            ; $7fcd: $a0
	ld [bc], a                                       ; $7fce: $02
	nop                                              ; $7fcf: $00
	rrca                                             ; $7fd0: $0f
	ret nz                                           ; $7fd1: $c0

	ld bc, $01a0                                     ; $7fd2: $01 $a0 $01
	ld bc, $c07b                                     ; $7fd5: $01 $7b $c0
	ld bc, $02a0                                     ; $7fd8: $01 $a0 $02
	ld bc, $e46f                                     ; $7fdb: $01 $6f $e4
	nop                                              ; $7fde: $00
	rla                                              ; $7fdf: $17
	rst $38                                          ; $7fe0: $ff
	inc de                                           ; $7fe1: $13
	ret nz                                           ; $7fe2: $c0

	ld bc, $01a0                                     ; $7fe3: $01 $a0 $01
	ld bc, $c07f                                     ; $7fe6: $01 $7f $c0
	ld bc, $02a0                                     ; $7fe9: $01 $a0 $02
	ld bc, $406f                                     ; $7fec: $01 $6f $40
	add b                                            ; $7fef: $80
	and b                                            ; $7ff0: $a0
	ld [bc], a                                       ; $7ff1: $02
	db $e4                                           ; $7ff2: $e4
	nop                                              ; $7ff3: $00
	sbc a                                            ; $7ff4: $9f
	jr z, @+$0c                                      ; $7ff5: $28 $0a

	pop hl                                           ; $7ff7: $e1
	ld [bc], a                                       ; $7ff8: $02
	dec b                                            ; $7ff9: $05
	dec b                                            ; $7ffa: $05
	ret nz                                           ; $7ffb: $c0

	ld bc, $02a0                                     ; $7ffc: $01 $a0 $02
	db $01                                           ; $7fff: $01
