; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

	nop                                              ; $4000: $00
	dec de                                           ; $4001: $1b
	nop                                              ; $4002: $00
	rst $38                                          ; $4003: $ff
	rst $38                                          ; $4004: $ff
	ld a, a                                          ; $4005: $7f
	rra                                              ; $4006: $1f
	ld a, $62                                        ; $4007: $3e $62
	ld a, [hl]                                       ; $4009: $7e
	nop                                              ; $400a: $00
	nop                                              ; $400b: $00
	rst $38                                          ; $400c: $ff
	ld a, a                                          ; $400d: $7f
	rra                                              ; $400e: $1f
	ld a, $5c                                        ; $400f: $3e $5c
	inc d                                            ; $4011: $14
	nop                                              ; $4012: $00
	nop                                              ; $4013: $00
	rst $38                                          ; $4014: $ff
	ld a, a                                          ; $4015: $7f
	ld h, d                                          ; $4016: $62
	ld a, [hl]                                       ; $4017: $7e
	nop                                              ; $4018: $00
	ld h, c                                          ; $4019: $61
	nop                                              ; $401a: $00
	nop                                              ; $401b: $00
	rst $38                                          ; $401c: $ff
	ld a, a                                          ; $401d: $7f
	ld h, d                                          ; $401e: $62
	ld a, [hl]                                       ; $401f: $7e
	rra                                              ; $4020: $1f
	ld a, $00                                        ; $4021: $3e $00
	nop                                              ; $4023: $00
	rra                                              ; $4024: $1f
	ld a, $62                                        ; $4025: $3e $62
	ld a, [hl]                                       ; $4027: $7e
	ld e, h                                          ; $4028: $5c
	inc d                                            ; $4029: $14
	nop                                              ; $402a: $00
	nop                                              ; $402b: $00
	rra                                              ; $402c: $1f
	ld a, $5c                                        ; $402d: $3e $5c
	inc d                                            ; $402f: $14
	nop                                              ; $4030: $00
	ld h, c                                          ; $4031: $61
	nop                                              ; $4032: $00
	nop                                              ; $4033: $00
	rst $38                                          ; $4034: $ff
	ld a, a                                          ; $4035: $7f
	rst $38                                          ; $4036: $ff
	ld a, a                                          ; $4037: $7f
	nop                                              ; $4038: $00
	ld h, c                                          ; $4039: $61
	nop                                              ; $403a: $00
	nop                                              ; $403b: $00
	rst $38                                          ; $403c: $ff
	ld a, a                                          ; $403d: $7f
	ld h, d                                          ; $403e: $62
	ld a, [hl]                                       ; $403f: $7e
	ld e, h                                          ; $4040: $5c
	inc d                                            ; $4041: $14
	nop                                              ; $4042: $00
	nop                                              ; $4043: $00
	nop                                              ; $4044: $00
	dec de                                           ; $4045: $1b
	nop                                              ; $4046: $00
	rst AddAOntoHL                                          ; $4047: $ef
	rst $38                                          ; $4048: $ff
	ld a, a                                          ; $4049: $7f
	rra                                              ; $404a: $1f
	ld a, $62                                        ; $404b: $3e $62
	ld a, [hl]                                       ; $404d: $7e
	nop                                              ; $404e: $00
	nop                                              ; $404f: $00
	rst $38                                          ; $4050: $ff
	ld a, a                                          ; $4051: $7f
	rra                                              ; $4052: $1f
	ld a, $5c                                        ; $4053: $3e $5c
	inc d                                            ; $4055: $14
	nop                                              ; $4056: $00
	nop                                              ; $4057: $00
	rra                                              ; $4058: $1f
	ld a, $62                                        ; $4059: $3e $62
	ld a, [hl]                                       ; $405b: $7e
	ld e, h                                          ; $405c: $5c
	inc d                                            ; $405d: $14
	nop                                              ; $405e: $00
	nop                                              ; $405f: $00
	rra                                              ; $4060: $1f
	ld a, $bd                                        ; $4061: $3e $bd
	ld [bc], a                                       ; $4063: $02
	ld e, h                                          ; $4064: $5c
	inc d                                            ; $4065: $14
	nop                                              ; $4066: $00
	nop                                              ; $4067: $00
	rra                                              ; $4068: $1f
	ld a, $62                                        ; $4069: $3e $62
	ld a, [hl]                                       ; $406b: $7e
	nop                                              ; $406c: $00
	ld h, c                                          ; $406d: $61
	nop                                              ; $406e: $00
	nop                                              ; $406f: $00
	rst $38                                          ; $4070: $ff
	ld a, a                                          ; $4071: $7f
	cp l                                             ; $4072: $bd
	ld [bc], a                                       ; $4073: $02
	nop                                              ; $4074: $00
	ld h, c                                          ; $4075: $61
	nop                                              ; $4076: $00
	nop                                              ; $4077: $00
	rst $38                                          ; $4078: $ff
	ld a, a                                          ; $4079: $7f
	ld h, d                                          ; $407a: $62
	ld a, [hl]                                       ; $407b: $7e
	ld e, h                                          ; $407c: $5c
	inc d                                            ; $407d: $14
	nop                                              ; $407e: $00
	nop                                              ; $407f: $00
	ld [bc], a                                       ; $4080: $02
	dec de                                           ; $4081: $1b
	cpl                                              ; $4082: $2f
	rst $38                                          ; $4083: $ff
	rst $38                                          ; $4084: $ff
	ld a, a                                          ; $4085: $7f
	rra                                              ; $4086: $1f
	ld a, $0d                                        ; $4087: $3e $0d
	ld a, e                                          ; $4089: $7b
	nop                                              ; $408a: $00
	nop                                              ; $408b: $00
	rst $38                                          ; $408c: $ff
	ld a, a                                          ; $408d: $7f
	rra                                              ; $408e: $1f
	ld a, $5c                                        ; $408f: $3e $5c
	inc d                                            ; $4091: $14
	nop                                              ; $4092: $00
	nop                                              ; $4093: $00
	rst $38                                          ; $4094: $ff
	ld a, a                                          ; $4095: $7f
	rra                                              ; $4096: $1f
	ld a, $be                                        ; $4097: $3e $be
	ld d, $5c                                        ; $4099: $16 $5c
	inc d                                            ; $409b: $14
	rst $38                                          ; $409c: $ff
	ld a, a                                          ; $409d: $7f
	rra                                              ; $409e: $1f
	ld a, $be                                        ; $409f: $3e $be
	ld d, $00                                        ; $40a1: $16 $00
	nop                                              ; $40a3: $00
	rst $38                                          ; $40a4: $ff
	ld a, a                                          ; $40a5: $7f
	rst $38                                          ; $40a6: $ff
	ld h, d                                          ; $40a7: $62
	ld e, a                                          ; $40a8: $5f
	ld b, d                                          ; $40a9: $42
	nop                                              ; $40aa: $00
	nop                                              ; $40ab: $00
	rst $38                                          ; $40ac: $ff
	ld a, a                                          ; $40ad: $7f
	ld e, a                                          ; $40ae: $5f
	ld b, d                                          ; $40af: $42
	dec c                                            ; $40b0: $0d
	ld a, e                                          ; $40b1: $7b
	nop                                              ; $40b2: $00
	nop                                              ; $40b3: $00
	rst $38                                          ; $40b4: $ff
	ld a, a                                          ; $40b5: $7f
	rst $38                                          ; $40b6: $ff
	ld a, a                                          ; $40b7: $7f
	sbc a                                            ; $40b8: $9f
	ld c, d                                          ; $40b9: $4a
	nop                                              ; $40ba: $00
	nop                                              ; $40bb: $00
	rst $38                                          ; $40bc: $ff
	ld a, a                                          ; $40bd: $7f
	cp [hl]                                          ; $40be: $be
	ld d, $5c                                        ; $40bf: $16 $5c
	inc d                                            ; $40c1: $14
	nop                                              ; $40c2: $00
	nop                                              ; $40c3: $00
	nop                                              ; $40c4: $00
	dec de                                           ; $40c5: $1b
	nop                                              ; $40c6: $00
	db $fc                                           ; $40c7: $fc
	rst $38                                          ; $40c8: $ff
	ld a, a                                          ; $40c9: $7f
	rra                                              ; $40ca: $1f
	ld a, $47                                        ; $40cb: $3e $47
	ld a, [hl]                                       ; $40cd: $7e
	nop                                              ; $40ce: $00
	nop                                              ; $40cf: $00
	rst $38                                          ; $40d0: $ff
	ld a, a                                          ; $40d1: $7f
	rra                                              ; $40d2: $1f
	ld a, $5c                                        ; $40d3: $3e $5c
	inc d                                            ; $40d5: $14
	nop                                              ; $40d6: $00
	nop                                              ; $40d7: $00
	rra                                              ; $40d8: $1f
	ld a, $ff                                        ; $40d9: $3e $ff
	ld a, a                                          ; $40db: $7f
	ld b, a                                          ; $40dc: $47
	ld a, [hl]                                       ; $40dd: $7e
	nop                                              ; $40de: $00
	nop                                              ; $40df: $00
	rra                                              ; $40e0: $1f
	ld a, $ff                                        ; $40e1: $3e $ff
	ld a, a                                          ; $40e3: $7f
	ld e, h                                          ; $40e4: $5c
	inc d                                            ; $40e5: $14
	nop                                              ; $40e6: $00
	nop                                              ; $40e7: $00
	rra                                              ; $40e8: $1f
	ld a, $47                                        ; $40e9: $3e $47
	ld a, [hl]                                       ; $40eb: $7e
	ld e, h                                          ; $40ec: $5c
	inc d                                            ; $40ed: $14
	nop                                              ; $40ee: $00
	nop                                              ; $40ef: $00
	rra                                              ; $40f0: $1f
	ld a, $ff                                        ; $40f1: $3e $ff
	ld a, a                                          ; $40f3: $7f
	rra                                              ; $40f4: $1f
	ld a, $00                                        ; $40f5: $3e $00
	nop                                              ; $40f7: $00
	ld bc, $2f1b                                     ; $40f8: $01 $1b $2f
	ei                                               ; $40fb: $fb
	rst $38                                          ; $40fc: $ff
	ld a, a                                          ; $40fd: $7f
	rra                                              ; $40fe: $1f
	ld a, $20                                        ; $40ff: $3e $20
	ld bc, $0000                                     ; $4101: $01 $00 $00
	rst $38                                          ; $4104: $ff
	ld a, a                                          ; $4105: $7f
	rra                                              ; $4106: $1f
	ld a, $5c                                        ; $4107: $3e $5c
	inc d                                            ; $4109: $14
	nop                                              ; $410a: $00
	nop                                              ; $410b: $00
	rst $38                                          ; $410c: $ff
	ld a, a                                          ; $410d: $7f
	rra                                              ; $410e: $1f
	ld a, $e7                                        ; $410f: $3e $e7
	ld d, c                                          ; $4111: $51
	nop                                              ; $4112: $00
	nop                                              ; $4113: $00
	rst $38                                          ; $4114: $ff
	ld a, a                                          ; $4115: $7f
	ld e, h                                          ; $4116: $5c
	inc d                                            ; $4117: $14
	rst SubAFromBC                                          ; $4118: $e7
	ld d, c                                          ; $4119: $51
	nop                                              ; $411a: $00
	nop                                              ; $411b: $00
	rra                                              ; $411c: $1f
	ld a, $e7                                        ; $411d: $3e $e7
	ld d, c                                          ; $411f: $51
	ld e, h                                          ; $4120: $5c
	inc d                                            ; $4121: $14
	nop                                              ; $4122: $00
	nop                                              ; $4123: $00
	rst $38                                          ; $4124: $ff
	ld a, a                                          ; $4125: $7f
	ld e, h                                          ; $4126: $5c
	inc d                                            ; $4127: $14
	jr nz, jr_02c_412b                               ; $4128: $20 $01

	nop                                              ; $412a: $00

jr_02c_412b:
	nop                                              ; $412b: $00
	rst $38                                          ; $412c: $ff
	ld a, a                                          ; $412d: $7f
	rst $38                                          ; $412e: $ff
	ld a, a                                          ; $412f: $7f
	rra                                              ; $4130: $1f
	ld a, $00                                        ; $4131: $3e $00
	nop                                              ; $4133: $00
	jr jr_02c_4151                                   ; $4134: $18 $1b

	daa                                              ; $4136: $27
	cp $ff                                           ; $4137: $fe $ff
	ld a, a                                          ; $4139: $7f
	rra                                              ; $413a: $1f
	ld a, $e0                                        ; $413b: $3e $e0
	ld l, [hl]                                       ; $413d: $6e
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	rst $38                                          ; $4140: $ff
	ld a, a                                          ; $4141: $7f
	rra                                              ; $4142: $1f
	ld a, $5c                                        ; $4143: $3e $5c
	inc d                                            ; $4145: $14
	nop                                              ; $4146: $00
	nop                                              ; $4147: $00
	rst $38                                          ; $4148: $ff
	ld a, a                                          ; $4149: $7f
	rra                                              ; $414a: $1f
	ld a, $ee                                        ; $414b: $3e $ee
	ld de, $0000                                     ; $414d: $11 $00 $00
	rst $38                                          ; $4150: $ff

jr_02c_4151:
	ld a, a                                          ; $4151: $7f
	ld a, a                                          ; $4152: $7f
	ld l, [hl]                                       ; $4153: $6e
	rra                                              ; $4154: $1f
	ld a, $00                                        ; $4155: $3e $00
	nop                                              ; $4157: $00
	rst $38                                          ; $4158: $ff
	ld a, a                                          ; $4159: $7f
	ld a, a                                          ; $415a: $7f
	ld l, [hl]                                       ; $415b: $6e
	ldh [$6e], a                                     ; $415c: $e0 $6e
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	rst $38                                          ; $4160: $ff
	ld a, a                                          ; $4161: $7f
	xor $11                                          ; $4162: $ee $11
	ld e, h                                          ; $4164: $5c
	inc d                                            ; $4165: $14
	nop                                              ; $4166: $00
	nop                                              ; $4167: $00
	xor $11                                          ; $4168: $ee $11
	rra                                              ; $416a: $1f
	ld a, $5c                                        ; $416b: $3e $5c
	inc d                                            ; $416d: $14
	nop                                              ; $416e: $00
	nop                                              ; $416f: $00
	ld [$271b], sp                                   ; $4170: $08 $1b $27
	rst $38                                          ; $4173: $ff
	rst $38                                          ; $4174: $ff
	ld a, a                                          ; $4175: $7f
	rra                                              ; $4176: $1f
	ld a, $a2                                        ; $4177: $3e $a2
	halt                                             ; $4179: $76
	nop                                              ; $417a: $00
	nop                                              ; $417b: $00
	rst $38                                          ; $417c: $ff
	ld a, a                                          ; $417d: $7f
	rra                                              ; $417e: $1f
	ld a, $5c                                        ; $417f: $3e $5c
	inc d                                            ; $4181: $14
	nop                                              ; $4182: $00
	nop                                              ; $4183: $00
	and d                                            ; $4184: $a2
	halt                                             ; $4185: $76
	rra                                              ; $4186: $1f
	ld a, $5c                                        ; $4187: $3e $5c
	inc d                                            ; $4189: $14
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	and d                                            ; $418c: $a2
	halt                                             ; $418d: $76
	rra                                              ; $418e: $1f
	ld a, $6f                                        ; $418f: $3e $6f
	ld c, l                                          ; $4191: $4d
	nop                                              ; $4192: $00
	nop                                              ; $4193: $00
	dec [hl]                                         ; $4194: $35
	ld l, [hl]                                       ; $4195: $6e
	ld l, a                                          ; $4196: $6f
	ld c, l                                          ; $4197: $4d
	ld e, h                                          ; $4198: $5c
	inc d                                            ; $4199: $14
	nop                                              ; $419a: $00
	nop                                              ; $419b: $00
	dec [hl]                                         ; $419c: $35
	ld h, [hl]                                       ; $419d: $66
	and d                                            ; $419e: $a2
	halt                                             ; $419f: $76
	rra                                              ; $41a0: $1f
	ld a, $00                                        ; $41a1: $3e $00
	nop                                              ; $41a3: $00
	rra                                              ; $41a4: $1f
	ld a, $5c                                        ; $41a5: $3e $5c
	inc d                                            ; $41a7: $14
	ld l, a                                          ; $41a8: $6f
	ld c, l                                          ; $41a9: $4d
	nop                                              ; $41aa: $00
	nop                                              ; $41ab: $00
	rra                                              ; $41ac: $1f
	ld a, $a2                                        ; $41ad: $3e $a2
	halt                                             ; $41af: $76
	ld e, h                                          ; $41b0: $5c
	inc d                                            ; $41b1: $14
	nop                                              ; $41b2: $00
	nop                                              ; $41b3: $00
	jr nz, jr_02c_41d1                               ; $41b4: $20 $1b

	dec hl                                           ; $41b6: $2b
	cp $ff                                           ; $41b7: $fe $ff
	ld a, a                                          ; $41b9: $7f
	rra                                              ; $41ba: $1f
	ld a, $27                                        ; $41bb: $3e $27
	ld a, a                                          ; $41bd: $7f
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	rst $38                                          ; $41c0: $ff
	ld a, a                                          ; $41c1: $7f
	rra                                              ; $41c2: $1f
	ld a, $5c                                        ; $41c3: $3e $5c
	inc d                                            ; $41c5: $14
	nop                                              ; $41c6: $00
	nop                                              ; $41c7: $00
	rst $38                                          ; $41c8: $ff
	ld a, a                                          ; $41c9: $7f
	daa                                              ; $41ca: $27
	ld a, a                                          ; $41cb: $7f
	rra                                              ; $41cc: $1f
	ld d, $00                                        ; $41cd: $16 $00
	nop                                              ; $41cf: $00
	rst $38                                          ; $41d0: $ff

jr_02c_41d1:
	ld a, a                                          ; $41d1: $7f
	rra                                              ; $41d2: $1f
	ld d, $5c                                        ; $41d3: $16 $5c
	inc d                                            ; $41d5: $14
	nop                                              ; $41d6: $00
	nop                                              ; $41d7: $00
	rra                                              ; $41d8: $1f
	ld d, $55                                        ; $41d9: $16 $55
	ld bc, $145c                                     ; $41db: $01 $5c $14
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	rra                                              ; $41e0: $1f
	ld d, $1f                                        ; $41e1: $16 $1f
	ld d, $55                                        ; $41e3: $16 $55
	ld bc, $0000                                     ; $41e5: $01 $00 $00
	rra                                              ; $41e8: $1f
	ld a, $27                                        ; $41e9: $3e $27
	ld a, a                                          ; $41eb: $7f
	ld e, h                                          ; $41ec: $5c
	inc d                                            ; $41ed: $14
	nop                                              ; $41ee: $00
	nop                                              ; $41ef: $00
	jr jr_02c_420d                                   ; $41f0: $18 $1b

	cpl                                              ; $41f2: $2f
	rst $38                                          ; $41f3: $ff
	rst $38                                          ; $41f4: $ff
	ld a, a                                          ; $41f5: $7f
	rra                                              ; $41f6: $1f
	ld a, $09                                        ; $41f7: $3e $09
	ld a, a                                          ; $41f9: $7f
	nop                                              ; $41fa: $00
	nop                                              ; $41fb: $00
	rst $38                                          ; $41fc: $ff
	ld a, a                                          ; $41fd: $7f
	rra                                              ; $41fe: $1f
	ld a, $5c                                        ; $41ff: $3e $5c
	inc d                                            ; $4201: $14
	nop                                              ; $4202: $00
	nop                                              ; $4203: $00
	rra                                              ; $4204: $1f
	ld a, $5a                                        ; $4205: $3e $5a
	dec a                                            ; $4207: $3d
	ld e, h                                          ; $4208: $5c
	inc d                                            ; $4209: $14
	nop                                              ; $420a: $00
	nop                                              ; $420b: $00
	rra                                              ; $420c: $1f

jr_02c_420d:
	ld a, $ff                                        ; $420d: $3e $ff
	ld a, a                                          ; $420f: $7f
	rra                                              ; $4210: $1f
	ld a, $00                                        ; $4211: $3e $00
	nop                                              ; $4213: $00
	rst $38                                          ; $4214: $ff
	ld a, a                                          ; $4215: $7f
	rst $38                                          ; $4216: $ff
	ld a, a                                          ; $4217: $7f
	add hl, bc                                       ; $4218: $09
	ld a, a                                          ; $4219: $7f
	nop                                              ; $421a: $00
	nop                                              ; $421b: $00
	rst $38                                          ; $421c: $ff
	ld a, a                                          ; $421d: $7f
	add hl, bc                                       ; $421e: $09
	ld a, a                                          ; $421f: $7f
	ld e, d                                          ; $4220: $5a
	dec a                                            ; $4221: $3d
	nop                                              ; $4222: $00
	nop                                              ; $4223: $00
	rst $38                                          ; $4224: $ff
	ld a, a                                          ; $4225: $7f
	call nc, Call_02c_5a2a                           ; $4226: $d4 $2a $5a
	dec a                                            ; $4229: $3d
	nop                                              ; $422a: $00
	nop                                              ; $422b: $00
	rst $38                                          ; $422c: $ff
	ld a, a                                          ; $422d: $7f
	add hl, bc                                       ; $422e: $09
	ld a, a                                          ; $422f: $7f
	ld e, h                                          ; $4230: $5c
	inc d                                            ; $4231: $14
	nop                                              ; $4232: $00
	nop                                              ; $4233: $00
	inc c                                            ; $4234: $0c
	dec de                                           ; $4235: $1b
	rra                                              ; $4236: $1f

Call_02c_4237:
	db $fc                                           ; $4237: $fc
	rst $38                                          ; $4238: $ff
	ld a, a                                          ; $4239: $7f
	rra                                              ; $423a: $1f
	ld a, $e0                                        ; $423b: $3e $e0
	ld l, c                                          ; $423d: $69
	nop                                              ; $423e: $00
	nop                                              ; $423f: $00
	rst $38                                          ; $4240: $ff
	ld a, a                                          ; $4241: $7f
	rra                                              ; $4242: $1f
	ld a, $5c                                        ; $4243: $3e $5c
	inc d                                            ; $4245: $14
	nop                                              ; $4246: $00
	nop                                              ; $4247: $00
	rst $38                                          ; $4248: $ff
	ld a, a                                          ; $4249: $7f
	ldh [rBCPD], a                                   ; $424a: $e0 $69
	ld e, h                                          ; $424c: $5c
	inc d                                            ; $424d: $14
	nop                                              ; $424e: $00
	nop                                              ; $424f: $00
	rst $38                                          ; $4250: $ff
	ld a, a                                          ; $4251: $7f
	rra                                              ; $4252: $1f
	ld a, $bf                                        ; $4253: $3e $bf
	inc d                                            ; $4255: $14
	nop                                              ; $4256: $00
	nop                                              ; $4257: $00
	rst $38                                          ; $4258: $ff
	ld a, a                                          ; $4259: $7f
	rst $38                                          ; $425a: $ff
	ld a, a                                          ; $425b: $7f
	cp a                                             ; $425c: $bf
	inc d                                            ; $425d: $14
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	rst $38                                          ; $4260: $ff
	ld a, a                                          ; $4261: $7f
	rst $38                                          ; $4262: $ff
	ld a, a                                          ; $4263: $7f
	ld e, h                                          ; $4264: $5c
	inc d                                            ; $4265: $14
	nop                                              ; $4266: $00
	nop                                              ; $4267: $00
	nop                                              ; $4268: $00
	dec de                                           ; $4269: $1b
	nop                                              ; $426a: $00
	rst $38                                          ; $426b: $ff
	rst $38                                          ; $426c: $ff
	ld a, a                                          ; $426d: $7f
	rra                                              ; $426e: $1f
	ld a, $a2                                        ; $426f: $3e $a2
	halt                                             ; $4271: $76
	nop                                              ; $4272: $00
	nop                                              ; $4273: $00
	rst $38                                          ; $4274: $ff
	ld a, a                                          ; $4275: $7f
	rra                                              ; $4276: $1f
	ld a, $5c                                        ; $4277: $3e $5c
	inc d                                            ; $4279: $14
	nop                                              ; $427a: $00
	nop                                              ; $427b: $00
	rra                                              ; $427c: $1f
	ld a, $42                                        ; $427d: $3e $42
	ld [hl+], a                                      ; $427f: $22
	ld e, h                                          ; $4280: $5c
	inc d                                            ; $4281: $14
	nop                                              ; $4282: $00
	nop                                              ; $4283: $00
	rra                                              ; $4284: $1f
	ld a, $31                                        ; $4285: $3e $31
	dec b                                            ; $4287: $05
	ld e, h                                          ; $4288: $5c
	inc d                                            ; $4289: $14
	nop                                              ; $428a: $00
	nop                                              ; $428b: $00
	rst $38                                          ; $428c: $ff
	ld a, a                                          ; $428d: $7f
	rra                                              ; $428e: $1f
	ld a, $42                                        ; $428f: $3e $42
	ld [hl+], a                                      ; $4291: $22
	nop                                              ; $4292: $00
	nop                                              ; $4293: $00
	rst $38                                          ; $4294: $ff
	ld a, a                                          ; $4295: $7f
	inc sp                                           ; $4296: $33
	ld l, d                                          ; $4297: $6a
	ld e, h                                          ; $4298: $5c
	inc d                                            ; $4299: $14
	nop                                              ; $429a: $00
	nop                                              ; $429b: $00
	ld e, h                                          ; $429c: $5c
	inc d                                            ; $429d: $14
	call Call_02c_4237                               ; $429e: $cd $37 $42
	ld [hl+], a                                      ; $42a1: $22
	nop                                              ; $42a2: $00
	nop                                              ; $42a3: $00
	ld e, h                                          ; $42a4: $5c
	inc d                                            ; $42a5: $14
	ld d, $0f                                        ; $42a6: $16 $0f
	ld b, d                                          ; $42a8: $42
	ld [hl+], a                                      ; $42a9: $22
	nop                                              ; $42aa: $00
	nop                                              ; $42ab: $00
	ld [$1f1b], sp                                   ; $42ac: $08 $1b $1f
	ld a, [$7fff]                                    ; $42af: $fa $ff $7f
	rra                                              ; $42b2: $1f
	ld a, $a2                                        ; $42b3: $3e $a2
	halt                                             ; $42b5: $76
	nop                                              ; $42b6: $00
	nop                                              ; $42b7: $00
	rst $38                                          ; $42b8: $ff
	ld a, a                                          ; $42b9: $7f
	rra                                              ; $42ba: $1f
	ld a, $5c                                        ; $42bb: $3e $5c
	inc d                                            ; $42bd: $14
	nop                                              ; $42be: $00
	nop                                              ; $42bf: $00
	rst $38                                          ; $42c0: $ff
	ld a, a                                          ; $42c1: $7f
	db $ed                                           ; $42c2: $ed
	ld d, d                                          ; $42c3: $52
	ld e, h                                          ; $42c4: $5c
	inc d                                            ; $42c5: $14
	nop                                              ; $42c6: $00
	nop                                              ; $42c7: $00
	rst $38                                          ; $42c8: $ff
	ld a, a                                          ; $42c9: $7f
	db $ed                                           ; $42ca: $ed
	ld d, d                                          ; $42cb: $52
	and d                                            ; $42cc: $a2
	halt                                             ; $42cd: $76
	nop                                              ; $42ce: $00
	nop                                              ; $42cf: $00
	rst $38                                          ; $42d0: $ff
	ld a, a                                          ; $42d1: $7f
	rst $38                                          ; $42d2: $ff
	ld a, a                                          ; $42d3: $7f
	db $ed                                           ; $42d4: $ed
	ld d, d                                          ; $42d5: $52
	nop                                              ; $42d6: $00
	nop                                              ; $42d7: $00
	db $ed                                           ; $42d8: $ed
	ld d, d                                          ; $42d9: $52
	rra                                              ; $42da: $1f
	ld a, $5c                                        ; $42db: $3e $5c
	inc d                                            ; $42dd: $14
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	nop                                              ; $42e0: $00
	dec de                                           ; $42e1: $1b
	nop                                              ; $42e2: $00
	rst $38                                          ; $42e3: $ff
	rst $38                                          ; $42e4: $ff
	ld a, a                                          ; $42e5: $7f
	rra                                              ; $42e6: $1f
	ld a, $15                                        ; $42e7: $3e $15
	ld a, a                                          ; $42e9: $7f
	nop                                              ; $42ea: $00
	nop                                              ; $42eb: $00
	rst $38                                          ; $42ec: $ff
	ld a, a                                          ; $42ed: $7f
	rra                                              ; $42ee: $1f
	ld a, $5c                                        ; $42ef: $3e $5c
	inc d                                            ; $42f1: $14
	nop                                              ; $42f2: $00
	nop                                              ; $42f3: $00
	rst $38                                          ; $42f4: $ff
	ld a, a                                          ; $42f5: $7f
	rra                                              ; $42f6: $1f
	ld a, $de                                        ; $42f7: $3e $de
	ld a, [bc]                                       ; $42f9: $0a
	nop                                              ; $42fa: $00
	nop                                              ; $42fb: $00
	rst $38                                          ; $42fc: $ff
	ld a, a                                          ; $42fd: $7f
	rst $38                                          ; $42fe: $ff
	ld a, a                                          ; $42ff: $7f
	rra                                              ; $4300: $1f
	ld a, $00                                        ; $4301: $3e $00
	nop                                              ; $4303: $00
	xor $45                                          ; $4304: $ee $45
	rra                                              ; $4306: $1f
	ld a, $5c                                        ; $4307: $3e $5c
	inc d                                            ; $4309: $14
	nop                                              ; $430a: $00
	nop                                              ; $430b: $00
	xor $45                                          ; $430c: $ee $45
	rra                                              ; $430e: $1f
	ld a, $5c                                        ; $430f: $3e $5c
	inc d                                            ; $4311: $14
	nop                                              ; $4312: $00
	nop                                              ; $4313: $00
	rst $38                                          ; $4314: $ff
	ld a, a                                          ; $4315: $7f
	rst $38                                          ; $4316: $ff
	ld a, a                                          ; $4317: $7f
	dec d                                            ; $4318: $15
	ld a, a                                          ; $4319: $7f
	nop                                              ; $431a: $00
	nop                                              ; $431b: $00
	rst $38                                          ; $431c: $ff
	ld a, a                                          ; $431d: $7f
	xor $45                                          ; $431e: $ee $45
	ld e, h                                          ; $4320: $5c
	inc d                                            ; $4321: $14
	nop                                              ; $4322: $00
	nop                                              ; $4323: $00
	jr nz, jr_02c_4341                               ; $4324: $20 $1b

	rra                                              ; $4326: $1f
	cp $ff                                           ; $4327: $fe $ff
	ld a, a                                          ; $4329: $7f
	rra                                              ; $432a: $1f
	ld a, $40                                        ; $432b: $3e $40
	halt                                             ; $432d: $76
	nop                                              ; $432e: $00
	nop                                              ; $432f: $00
	rst $38                                          ; $4330: $ff
	ld a, a                                          ; $4331: $7f
	rra                                              ; $4332: $1f
	ld a, $5c                                        ; $4333: $3e $5c
	inc d                                            ; $4335: $14
	nop                                              ; $4336: $00
	nop                                              ; $4337: $00
	rst $38                                          ; $4338: $ff
	ld a, a                                          ; $4339: $7f
	rst $38                                          ; $433a: $ff
	ld a, a                                          ; $433b: $7f
	rra                                              ; $433c: $1f
	ld a, $00                                        ; $433d: $3e $00
	nop                                              ; $433f: $00
	rst $38                                          ; $4340: $ff

jr_02c_4341:
	ld a, a                                          ; $4341: $7f
	rst $38                                          ; $4342: $ff
	ld a, a                                          ; $4343: $7f
	ld b, b                                          ; $4344: $40
	halt                                             ; $4345: $76
	nop                                              ; $4346: $00
	nop                                              ; $4347: $00
	rst $38                                          ; $4348: $ff
	ld a, a                                          ; $4349: $7f
	rst $38                                          ; $434a: $ff
	ld a, a                                          ; $434b: $7f
	ld e, h                                          ; $434c: $5c
	inc d                                            ; $434d: $14
	nop                                              ; $434e: $00
	nop                                              ; $434f: $00
	rst $38                                          ; $4350: $ff
	ld a, a                                          ; $4351: $7f
	ld b, b                                          ; $4352: $40
	halt                                             ; $4353: $76
	ld e, h                                          ; $4354: $5c
	inc d                                            ; $4355: $14
	nop                                              ; $4356: $00
	nop                                              ; $4357: $00
	ld b, b                                          ; $4358: $40
	halt                                             ; $4359: $76
	rra                                              ; $435a: $1f
	ld a, $5c                                        ; $435b: $3e $5c
	inc d                                            ; $435d: $14
	nop                                              ; $435e: $00
	nop                                              ; $435f: $00
	jr nz, jr_02c_437d                               ; $4360: $20 $1b

	cpl                                              ; $4362: $2f
	add sp, -$01                                     ; $4363: $e8 $ff
	ld a, a                                          ; $4365: $7f
	rra                                              ; $4366: $1f
	ld a, $a2                                        ; $4367: $3e $a2
	halt                                             ; $4369: $76
	nop                                              ; $436a: $00
	nop                                              ; $436b: $00
	rst $38                                          ; $436c: $ff
	ld a, a                                          ; $436d: $7f
	rra                                              ; $436e: $1f
	ld a, $5c                                        ; $436f: $3e $5c
	inc d                                            ; $4371: $14
	nop                                              ; $4372: $00
	nop                                              ; $4373: $00
	rst $38                                          ; $4374: $ff
	ld a, a                                          ; $4375: $7f
	rst $38                                          ; $4376: $ff
	ld a, a                                          ; $4377: $7f
	rra                                              ; $4378: $1f
	ld a, $00                                        ; $4379: $3e $00
	nop                                              ; $437b: $00
	ld b, [hl]                                       ; $437c: $46

jr_02c_437d:
	ld [hl], d                                       ; $437d: $72
	rra                                              ; $437e: $1f
	ld a, $5c                                        ; $437f: $3e $5c
	inc d                                            ; $4381: $14
	nop                                              ; $4382: $00
	nop                                              ; $4383: $00
	ld [de], a                                       ; $4384: $12
	dec de                                           ; $4385: $1b
	ld l, e                                          ; $4386: $6b
	cp $ff                                           ; $4387: $fe $ff
	ld a, a                                          ; $4389: $7f
	rra                                              ; $438a: $1f
	ld a, $03                                        ; $438b: $3e $03
	ld b, e                                          ; $438d: $43
	nop                                              ; $438e: $00
	nop                                              ; $438f: $00
	rst $38                                          ; $4390: $ff
	ld a, a                                          ; $4391: $7f
	rra                                              ; $4392: $1f
	ld a, $5c                                        ; $4393: $3e $5c
	inc d                                            ; $4395: $14
	nop                                              ; $4396: $00
	nop                                              ; $4397: $00
	rst $38                                          ; $4398: $ff
	ld a, a                                          ; $4399: $7f
	rra                                              ; $439a: $1f
	ld a, $8e                                        ; $439b: $3e $8e
	halt                                             ; $439d: $76
	nop                                              ; $439e: $00
	nop                                              ; $439f: $00
	rst $38                                          ; $43a0: $ff
	ld a, a                                          ; $43a1: $7f
	rst $38                                          ; $43a2: $ff
	ld a, a                                          ; $43a3: $7f
	rra                                              ; $43a4: $1f
	ld a, $00                                        ; $43a5: $3e $00
	nop                                              ; $43a7: $00
	rra                                              ; $43a8: $1f
	ld a, $03                                        ; $43a9: $3e $03
	ld b, e                                          ; $43ab: $43
	ld e, h                                          ; $43ac: $5c
	inc d                                            ; $43ad: $14
	nop                                              ; $43ae: $00
	nop                                              ; $43af: $00
	rra                                              ; $43b0: $1f
	ld a, $8e                                        ; $43b1: $3e $8e
	halt                                             ; $43b3: $76
	ld e, h                                          ; $43b4: $5c
	inc d                                            ; $43b5: $14
	nop                                              ; $43b6: $00
	nop                                              ; $43b7: $00
	rst $38                                          ; $43b8: $ff
	ld a, a                                          ; $43b9: $7f
	rra                                              ; $43ba: $1f
	ld a, $03                                        ; $43bb: $3e $03
	ld b, e                                          ; $43bd: $43
	ld e, h                                          ; $43be: $5c
	inc d                                            ; $43bf: $14
	jr nz, jr_02c_43dd                               ; $43c0: $20 $1b

	rra                                              ; $43c2: $1f
	ei                                               ; $43c3: $fb
	rst $38                                          ; $43c4: $ff
	ld a, a                                          ; $43c5: $7f
	rra                                              ; $43c6: $1f
	ld a, $65                                        ; $43c7: $3e $65
	ld l, d                                          ; $43c9: $6a
	nop                                              ; $43ca: $00
	nop                                              ; $43cb: $00
	rst $38                                          ; $43cc: $ff
	ld a, a                                          ; $43cd: $7f
	rra                                              ; $43ce: $1f
	ld a, $5c                                        ; $43cf: $3e $5c
	inc d                                            ; $43d1: $14
	nop                                              ; $43d2: $00
	nop                                              ; $43d3: $00
	rst $38                                          ; $43d4: $ff
	ld a, a                                          ; $43d5: $7f
	rst $38                                          ; $43d6: $ff
	ld a, a                                          ; $43d7: $7f
	ld h, l                                          ; $43d8: $65
	ld l, d                                          ; $43d9: $6a
	nop                                              ; $43da: $00
	nop                                              ; $43db: $00
	rst $38                                          ; $43dc: $ff

jr_02c_43dd:
	ld a, a                                          ; $43dd: $7f
	xor l                                            ; $43de: $ad
	ld a, a                                          ; $43df: $7f
	ld h, l                                          ; $43e0: $65
	ld l, d                                          ; $43e1: $6a
	nop                                              ; $43e2: $00
	nop                                              ; $43e3: $00
	rra                                              ; $43e4: $1f
	ld a, $65                                        ; $43e5: $3e $65
	ld l, d                                          ; $43e7: $6a
	ld e, h                                          ; $43e8: $5c
	inc d                                            ; $43e9: $14
	nop                                              ; $43ea: $00
	nop                                              ; $43eb: $00
	ld h, l                                          ; $43ec: $65
	ld l, d                                          ; $43ed: $6a
	rra                                              ; $43ee: $1f
	ld a, $5c                                        ; $43ef: $3e $5c
	inc d                                            ; $43f1: $14
	nop                                              ; $43f2: $00
	nop                                              ; $43f3: $00
	ld h, l                                          ; $43f4: $65
	ld l, d                                          ; $43f5: $6a
	ld e, h                                          ; $43f6: $5c
	inc d                                            ; $43f7: $14
	ld h, l                                          ; $43f8: $65
	ld l, d                                          ; $43f9: $6a
	nop                                              ; $43fa: $00
	nop                                              ; $43fb: $00
	dec [hl]                                         ; $43fc: $35
	dec de                                           ; $43fd: $1b
	cpl                                              ; $43fe: $2f
	rst FarCall                                          ; $43ff: $f7
	rst $38                                          ; $4400: $ff
	ld a, a                                          ; $4401: $7f
	rst $18                                          ; $4402: $df
	ld b, c                                          ; $4403: $41
	and b                                            ; $4404: $a0
	dec h                                            ; $4405: $25
	nop                                              ; $4406: $00
	nop                                              ; $4407: $00
	rst $38                                          ; $4408: $ff
	ld a, a                                          ; $4409: $7f
	ret nz                                           ; $440a: $c0

	ld c, d                                          ; $440b: $4a
	and b                                            ; $440c: $a0
	dec h                                            ; $440d: $25
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	rst $38                                          ; $4410: $ff
	ld a, a                                          ; $4411: $7f
	rst $18                                          ; $4412: $df
	ld b, c                                          ; $4413: $41
	ret nz                                           ; $4414: $c0

	ld c, d                                          ; $4415: $4a
	nop                                              ; $4416: $00
	nop                                              ; $4417: $00
	rst $38                                          ; $4418: $ff
	ld a, a                                          ; $4419: $7f
	rst $18                                          ; $441a: $df
	ld b, c                                          ; $441b: $41
	ld h, d                                          ; $441c: $62
	ld a, [hl]                                       ; $441d: $7e
	nop                                              ; $441e: $00
	nop                                              ; $441f: $00
	rst $38                                          ; $4420: $ff
	ld a, a                                          ; $4421: $7f
	rst $38                                          ; $4422: $ff
	ld a, a                                          ; $4423: $7f
	rst $18                                          ; $4424: $df
	ld b, c                                          ; $4425: $41
	nop                                              ; $4426: $00
	nop                                              ; $4427: $00
	rst $38                                          ; $4428: $ff
	ld a, a                                          ; $4429: $7f
	ret nz                                           ; $442a: $c0

	ld c, d                                          ; $442b: $4a
	rst $18                                          ; $442c: $df
	ld b, c                                          ; $442d: $41
	nop                                              ; $442e: $00
	nop                                              ; $442f: $00
	rst $38                                          ; $4430: $ff
	ld a, a                                          ; $4431: $7f
	rst $38                                          ; $4432: $ff
	ld a, a                                          ; $4433: $7f
	ld h, d                                          ; $4434: $62
	ld a, [hl]                                       ; $4435: $7e
	nop                                              ; $4436: $00
	nop                                              ; $4437: $00
	db $10                                           ; $4438: $10
	dec de                                           ; $4439: $1b
	rra                                              ; $443a: $1f
	db $fd                                           ; $443b: $fd
	rst $38                                          ; $443c: $ff
	ld a, a                                          ; $443d: $7f
	rst $18                                          ; $443e: $df
	ld b, c                                          ; $443f: $41
	and b                                            ; $4440: $a0
	dec h                                            ; $4441: $25
	nop                                              ; $4442: $00
	nop                                              ; $4443: $00
	rst $38                                          ; $4444: $ff
	ld a, a                                          ; $4445: $7f
	ld h, d                                          ; $4446: $62
	ld a, [hl]                                       ; $4447: $7e
	nop                                              ; $4448: $00
	ld h, c                                          ; $4449: $61
	nop                                              ; $444a: $00
	nop                                              ; $444b: $00
	rst $38                                          ; $444c: $ff
	ld a, a                                          ; $444d: $7f
	ret nz                                           ; $444e: $c0

	ld c, d                                          ; $444f: $4a
	and b                                            ; $4450: $a0
	dec h                                            ; $4451: $25
	nop                                              ; $4452: $00
	nop                                              ; $4453: $00
	rst $38                                          ; $4454: $ff
	ld a, a                                          ; $4455: $7f
	rst $38                                          ; $4456: $ff
	ld a, a                                          ; $4457: $7f
	rst $18                                          ; $4458: $df
	ld b, c                                          ; $4459: $41
	nop                                              ; $445a: $00
	nop                                              ; $445b: $00
	rst $38                                          ; $445c: $ff
	ld a, a                                          ; $445d: $7f
	ld h, d                                          ; $445e: $62
	ld a, [hl]                                       ; $445f: $7e
	nop                                              ; $4460: $00
	ld h, c                                          ; $4461: $61
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	rst $38                                          ; $4464: $ff
	ld a, a                                          ; $4465: $7f
	rst $18                                          ; $4466: $df
	ld b, c                                          ; $4467: $41
	and b                                            ; $4468: $a0
	dec h                                            ; $4469: $25
	nop                                              ; $446a: $00
	nop                                              ; $446b: $00
	rst $38                                          ; $446c: $ff
	ld a, a                                          ; $446d: $7f
	rst $18                                          ; $446e: $df
	ld b, c                                          ; $446f: $41
	ld h, d                                          ; $4470: $62
	ld a, [hl]                                       ; $4471: $7e
	nop                                              ; $4472: $00
	nop                                              ; $4473: $00
	inc b                                            ; $4474: $04
	dec de                                           ; $4475: $1b
	rra                                              ; $4476: $1f
	cp $ff                                           ; $4477: $fe $ff
	ld a, a                                          ; $4479: $7f
	rst $18                                          ; $447a: $df
	ld b, c                                          ; $447b: $41
	and b                                            ; $447c: $a0
	dec h                                            ; $447d: $25
	nop                                              ; $447e: $00
	nop                                              ; $447f: $00
	rst $38                                          ; $4480: $ff
	ld a, a                                          ; $4481: $7f
	ret nz                                           ; $4482: $c0

	ld c, d                                          ; $4483: $4a
	and b                                            ; $4484: $a0
	dec h                                            ; $4485: $25
	nop                                              ; $4486: $00
	nop                                              ; $4487: $00
	rst $18                                          ; $4488: $df
	ld b, c                                          ; $4489: $41
	add $7d                                          ; $448a: $c6 $7d
	and b                                            ; $448c: $a0
	dec h                                            ; $448d: $25
	nop                                              ; $448e: $00
	nop                                              ; $448f: $00
	rst $18                                          ; $4490: $df
	ld b, c                                          ; $4491: $41
	ret nz                                           ; $4492: $c0

	ld c, d                                          ; $4493: $4a
	and b                                            ; $4494: $a0
	dec h                                            ; $4495: $25
	nop                                              ; $4496: $00
	nop                                              ; $4497: $00
	rst $18                                          ; $4498: $df
	ld b, c                                          ; $4499: $41
	inc [hl]                                         ; $449a: $34
	ld hl, $25a0                                     ; $449b: $21 $a0 $25
	nop                                              ; $449e: $00
	nop                                              ; $449f: $00
	rst $18                                          ; $44a0: $df
	ld b, c                                          ; $44a1: $41
	ccf                                              ; $44a2: $3f
	ld c, d                                          ; $44a3: $4a
	and b                                            ; $44a4: $a0
	dec h                                            ; $44a5: $25
	nop                                              ; $44a6: $00
	nop                                              ; $44a7: $00
	rst $38                                          ; $44a8: $ff
	ld a, a                                          ; $44a9: $7f
	rst $18                                          ; $44aa: $df
	ld b, c                                          ; $44ab: $41
	sbc a                                            ; $44ac: $9f
	add hl, hl                                       ; $44ad: $29
	nop                                              ; $44ae: $00
	nop                                              ; $44af: $00
	ld [hl-], a                                      ; $44b0: $32
	dec de                                           ; $44b1: $1b
	cpl                                              ; $44b2: $2f
	ld a, [$7fff]                                    ; $44b3: $fa $ff $7f
	rst $18                                          ; $44b6: $df
	ld b, c                                          ; $44b7: $41
	and b                                            ; $44b8: $a0
	dec h                                            ; $44b9: $25
	nop                                              ; $44ba: $00
	nop                                              ; $44bb: $00
	rst $38                                          ; $44bc: $ff
	ld a, a                                          ; $44bd: $7f
	ret nz                                           ; $44be: $c0

	ld c, d                                          ; $44bf: $4a
	and b                                            ; $44c0: $a0
	dec h                                            ; $44c1: $25
	nop                                              ; $44c2: $00
	nop                                              ; $44c3: $00
	rst $38                                          ; $44c4: $ff
	ld a, a                                          ; $44c5: $7f
	rst $38                                          ; $44c6: $ff
	ld a, a                                          ; $44c7: $7f
	rst $18                                          ; $44c8: $df
	ld b, c                                          ; $44c9: $41
	nop                                              ; $44ca: $00
	nop                                              ; $44cb: $00
	rst $38                                          ; $44cc: $ff
	ld a, a                                          ; $44cd: $7f
	dec hl                                           ; $44ce: $2b
	ld a, a                                          ; $44cf: $7f
	ret nz                                           ; $44d0: $c0

	ld a, l                                          ; $44d1: $7d
	nop                                              ; $44d2: $00
	nop                                              ; $44d3: $00
	ret nz                                           ; $44d4: $c0

	ld c, d                                          ; $44d5: $4a
	rst $18                                          ; $44d6: $df
	ld b, c                                          ; $44d7: $41
	and b                                            ; $44d8: $a0
	dec h                                            ; $44d9: $25
	nop                                              ; $44da: $00
	nop                                              ; $44db: $00
	rst $38                                          ; $44dc: $ff
	ld a, a                                          ; $44dd: $7f
	rst $18                                          ; $44de: $df
	ld b, c                                          ; $44df: $41
	dec hl                                           ; $44e0: $2b
	ld a, a                                          ; $44e1: $7f
	nop                                              ; $44e2: $00
	nop                                              ; $44e3: $00
	nop                                              ; $44e4: $00
	dec de                                           ; $44e5: $1b
	nop                                              ; $44e6: $00
	ld a, [$7fff]                                    ; $44e7: $fa $ff $7f
	rst $18                                          ; $44ea: $df
	ld b, c                                          ; $44eb: $41
	and b                                            ; $44ec: $a0
	dec h                                            ; $44ed: $25
	nop                                              ; $44ee: $00
	nop                                              ; $44ef: $00
	rst $38                                          ; $44f0: $ff
	ld a, a                                          ; $44f1: $7f
	ret nz                                           ; $44f2: $c0

	ld c, d                                          ; $44f3: $4a
	and b                                            ; $44f4: $a0
	dec h                                            ; $44f5: $25
	nop                                              ; $44f6: $00
	nop                                              ; $44f7: $00
	rst $38                                          ; $44f8: $ff
	ld a, a                                          ; $44f9: $7f
	db $dd                                           ; $44fa: $dd
	ld a, $a0                                        ; $44fb: $3e $a0
	dec h                                            ; $44fd: $25
	nop                                              ; $44fe: $00
	nop                                              ; $44ff: $00
	rst $38                                          ; $4500: $ff
	ld a, a                                          ; $4501: $7f
	db $dd                                           ; $4502: $dd
	ld a, $30                                        ; $4503: $3e $30
	ld bc, $0000                                     ; $4505: $01 $00 $00
	rst $38                                          ; $4508: $ff
	ld a, a                                          ; $4509: $7f
	call z, Call_02c_7f7e                            ; $450a: $cc $7e $7f
	ld e, c                                          ; $450d: $59
	nop                                              ; $450e: $00
	nop                                              ; $450f: $00
	rst $38                                          ; $4510: $ff
	ld a, a                                          ; $4511: $7f
	rst $38                                          ; $4512: $ff
	ld a, a                                          ; $4513: $7f
	db $dd                                           ; $4514: $dd
	ld a, $00                                        ; $4515: $3e $00
	nop                                              ; $4517: $00
	nop                                              ; $4518: $00
	dec de                                           ; $4519: $1b
	nop                                              ; $451a: $00
	rst $38                                          ; $451b: $ff
	rst $38                                          ; $451c: $ff
	ld a, a                                          ; $451d: $7f
	rst $18                                          ; $451e: $df
	ld b, c                                          ; $451f: $41
	and b                                            ; $4520: $a0
	dec h                                            ; $4521: $25
	nop                                              ; $4522: $00
	nop                                              ; $4523: $00
	rst $38                                          ; $4524: $ff
	ld a, a                                          ; $4525: $7f
	jp c, $a040                                      ; $4526: $da $40 $a0

	dec h                                            ; $4529: $25
	nop                                              ; $452a: $00
	nop                                              ; $452b: $00
	rst $38                                          ; $452c: $ff
	ld a, a                                          ; $452d: $7f
	ret nz                                           ; $452e: $c0

	ld c, d                                          ; $452f: $4a
	and b                                            ; $4530: $a0
	dec h                                            ; $4531: $25
	nop                                              ; $4532: $00
	nop                                              ; $4533: $00
	rst $38                                          ; $4534: $ff
	ld a, a                                          ; $4535: $7f
	rst $18                                          ; $4536: $df
	ld h, c                                          ; $4537: $61
	and b                                            ; $4538: $a0
	dec h                                            ; $4539: $25
	nop                                              ; $453a: $00
	nop                                              ; $453b: $00
	rst $38                                          ; $453c: $ff
	ld a, a                                          ; $453d: $7f
	ret nz                                           ; $453e: $c0

	ld c, d                                          ; $453f: $4a
	and b                                            ; $4540: $a0
	dec h                                            ; $4541: $25
	nop                                              ; $4542: $00
	nop                                              ; $4543: $00
	rst $38                                          ; $4544: $ff
	ld a, a                                          ; $4545: $7f
	rst $18                                          ; $4546: $df
	ld h, c                                          ; $4547: $61
	jp c, VBlankInterrupt                            ; $4548: $da $40 $00

	nop                                              ; $454b: $00
	rst $38                                          ; $454c: $ff
	ld a, a                                          ; $454d: $7f
	ret nz                                           ; $454e: $c0

	ld c, d                                          ; $454f: $4a
	and b                                            ; $4550: $a0
	dec h                                            ; $4551: $25
	nop                                              ; $4552: $00
	nop                                              ; $4553: $00
	rst $38                                          ; $4554: $ff
	ld a, a                                          ; $4555: $7f
	rst $18                                          ; $4556: $df
	ld h, c                                          ; $4557: $61
	jp c, VBlankInterrupt                            ; $4558: $da $40 $00

	nop                                              ; $455b: $00
	jr nc, jr_02c_4579                               ; $455c: $30 $1b

	rra                                              ; $455e: $1f
	db $fc                                           ; $455f: $fc
	rst $38                                          ; $4560: $ff
	ld a, a                                          ; $4561: $7f
	rst $18                                          ; $4562: $df
	ld b, c                                          ; $4563: $41
	and b                                            ; $4564: $a0
	dec h                                            ; $4565: $25
	nop                                              ; $4566: $00
	nop                                              ; $4567: $00
	rst $38                                          ; $4568: $ff
	ld a, a                                          ; $4569: $7f
	ret nz                                           ; $456a: $c0

	ld c, d                                          ; $456b: $4a
	and b                                            ; $456c: $a0
	dec h                                            ; $456d: $25
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	rst $38                                          ; $4570: $ff
	ld a, a                                          ; $4571: $7f
	rst $38                                          ; $4572: $ff
	ld a, a                                          ; $4573: $7f
	ret nz                                           ; $4574: $c0

	ld c, d                                          ; $4575: $4a
	nop                                              ; $4576: $00
	nop                                              ; $4577: $00
	rst $38                                          ; $4578: $ff

jr_02c_4579:
	ld a, a                                          ; $4579: $7f
	rst $38                                          ; $457a: $ff
	ld a, a                                          ; $457b: $7f
	and b                                            ; $457c: $a0
	dec h                                            ; $457d: $25
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	rst $38                                          ; $4580: $ff
	ld a, a                                          ; $4581: $7f
	jr nc, jr_02c_4599                               ; $4582: $30 $15

	and b                                            ; $4584: $a0
	dec h                                            ; $4585: $25
	nop                                              ; $4586: $00
	nop                                              ; $4587: $00
	rst $38                                          ; $4588: $ff
	ld a, a                                          ; $4589: $7f
	rst $18                                          ; $458a: $df
	ld b, c                                          ; $458b: $41
	jr nc, jr_02c_45a3                               ; $458c: $30 $15

	nop                                              ; $458e: $00
	nop                                              ; $458f: $00
	ld [bc], a                                       ; $4590: $02
	dec de                                           ; $4591: $1b
	cpl                                              ; $4592: $2f
	rst FarCall                                          ; $4593: $f7
	rst $38                                          ; $4594: $ff
	ld a, a                                          ; $4595: $7f
	rst $18                                          ; $4596: $df
	ld b, c                                          ; $4597: $41
	and b                                            ; $4598: $a0

jr_02c_4599:
	dec h                                            ; $4599: $25
	nop                                              ; $459a: $00
	nop                                              ; $459b: $00
	rst $38                                          ; $459c: $ff
	ld a, a                                          ; $459d: $7f
	ret nz                                           ; $459e: $c0

	ld c, d                                          ; $459f: $4a
	and b                                            ; $45a0: $a0
	dec h                                            ; $45a1: $25
	nop                                              ; $45a2: $00

jr_02c_45a3:
	nop                                              ; $45a3: $00
	rst $38                                          ; $45a4: $ff
	ld a, a                                          ; $45a5: $7f
	rst $18                                          ; $45a6: $df
	ld b, c                                          ; $45a7: $41
	adc l                                            ; $45a8: $8d
	ld a, [hl]                                       ; $45a9: $7e
	nop                                              ; $45aa: $00
	nop                                              ; $45ab: $00
	rst $38                                          ; $45ac: $ff
	ld a, a                                          ; $45ad: $7f
	rst $38                                          ; $45ae: $ff
	ld a, a                                          ; $45af: $7f
	rst $18                                          ; $45b0: $df
	ld b, c                                          ; $45b1: $41
	nop                                              ; $45b2: $00
	nop                                              ; $45b3: $00
	rst $18                                          ; $45b4: $df
	ld b, c                                          ; $45b5: $41
	adc l                                            ; $45b6: $8d
	ld a, [hl]                                       ; $45b7: $7e
	and b                                            ; $45b8: $a0
	dec h                                            ; $45b9: $25
	nop                                              ; $45ba: $00
	nop                                              ; $45bb: $00
	rst $38                                          ; $45bc: $ff
	ld [bc], a                                       ; $45bd: $02
	rst $38                                          ; $45be: $ff
	ld [bc], a                                       ; $45bf: $02
	adc l                                            ; $45c0: $8d
	ld a, [hl]                                       ; $45c1: $7e
	nop                                              ; $45c2: $00
	nop                                              ; $45c3: $00
	rst $38                                          ; $45c4: $ff
	ld [bc], a                                       ; $45c5: $02
	adc l                                            ; $45c6: $8d
	ld a, [hl]                                       ; $45c7: $7e
	and b                                            ; $45c8: $a0
	dec h                                            ; $45c9: $25
	nop                                              ; $45ca: $00
	nop                                              ; $45cb: $00
	jr nc, jr_02c_45e9                               ; $45cc: $30 $1b

	dec hl                                           ; $45ce: $2b
	rst $38                                          ; $45cf: $ff
	rst $38                                          ; $45d0: $ff
	ld a, a                                          ; $45d1: $7f
	rst $18                                          ; $45d2: $df
	ld b, c                                          ; $45d3: $41
	and b                                            ; $45d4: $a0
	dec h                                            ; $45d5: $25
	nop                                              ; $45d6: $00
	nop                                              ; $45d7: $00
	rst $38                                          ; $45d8: $ff
	ld a, a                                          ; $45d9: $7f
	ret nz                                           ; $45da: $c0

	ld c, d                                          ; $45db: $4a
	and b                                            ; $45dc: $a0
	dec h                                            ; $45dd: $25
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	rst $38                                          ; $45e0: $ff
	ld a, a                                          ; $45e1: $7f
	rst $18                                          ; $45e2: $df
	ld b, c                                          ; $45e3: $41
	nop                                              ; $45e4: $00
	ld a, [hl]                                       ; $45e5: $7e
	nop                                              ; $45e6: $00
	nop                                              ; $45e7: $00
	rst $38                                          ; $45e8: $ff

jr_02c_45e9:
	ld a, a                                          ; $45e9: $7f
	rst $38                                          ; $45ea: $ff
	ld a, a                                          ; $45eb: $7f
	ldh [$7d], a                                     ; $45ec: $e0 $7d
	nop                                              ; $45ee: $00
	nop                                              ; $45ef: $00
	rst $18                                          ; $45f0: $df
	ld b, c                                          ; $45f1: $41
	ret nz                                           ; $45f2: $c0

	ld c, d                                          ; $45f3: $4a
	and b                                            ; $45f4: $a0
	dec h                                            ; $45f5: $25
	nop                                              ; $45f6: $00
	nop                                              ; $45f7: $00
	rst $18                                          ; $45f8: $df
	ld b, c                                          ; $45f9: $41
	ld h, d                                          ; $45fa: $62
	ld a, [hl]                                       ; $45fb: $7e
	ld h, b                                          ; $45fc: $60
	ld e, l                                          ; $45fd: $5d
	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	rst $38                                          ; $4600: $ff
	ld a, a                                          ; $4601: $7f
	dec hl                                           ; $4602: $2b
	ld a, a                                          ; $4603: $7f
	ldh [$7d], a                                     ; $4604: $e0 $7d
	nop                                              ; $4606: $00
	nop                                              ; $4607: $00
	rst $38                                          ; $4608: $ff
	ld a, a                                          ; $4609: $7f
	ret nz                                           ; $460a: $c0

	ld c, d                                          ; $460b: $4a
	and b                                            ; $460c: $a0
	dec h                                            ; $460d: $25
	nop                                              ; $460e: $00
	nop                                              ; $460f: $00
	db $10                                           ; $4610: $10
	dec de                                           ; $4611: $1b
	dec hl                                           ; $4612: $2b
	ld hl, sp-$01                                    ; $4613: $f8 $ff
	ld a, a                                          ; $4615: $7f
	rst $18                                          ; $4616: $df
	ld b, c                                          ; $4617: $41
	and b                                            ; $4618: $a0
	dec h                                            ; $4619: $25
	nop                                              ; $461a: $00
	nop                                              ; $461b: $00
	rst $38                                          ; $461c: $ff
	ld a, a                                          ; $461d: $7f
	ret nz                                           ; $461e: $c0

	ld c, d                                          ; $461f: $4a
	and b                                            ; $4620: $a0
	dec h                                            ; $4621: $25
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	rst $38                                          ; $4624: $ff
	ld a, a                                          ; $4625: $7f
	inc d                                            ; $4626: $14
	ld a, [hl]                                       ; $4627: $7e
	ld a, [hl+]                                      ; $4628: $2a
	ld h, h                                          ; $4629: $64
	nop                                              ; $462a: $00
	nop                                              ; $462b: $00
	rst $38                                          ; $462c: $ff
	ld a, a                                          ; $462d: $7f
	rst $18                                          ; $462e: $df
	ld b, c                                          ; $462f: $41
	inc d                                            ; $4630: $14
	ld a, [hl]                                       ; $4631: $7e
	nop                                              ; $4632: $00
	nop                                              ; $4633: $00
	rst $38                                          ; $4634: $ff
	ld a, a                                          ; $4635: $7f
	inc d                                            ; $4636: $14
	ld a, [hl]                                       ; $4637: $7e
	and b                                            ; $4638: $a0
	dec h                                            ; $4639: $25
	nop                                              ; $463a: $00
	nop                                              ; $463b: $00
	jr nz, jr_02c_4659                               ; $463c: $20 $1b

	cpl                                              ; $463e: $2f
	cp $ff                                           ; $463f: $fe $ff
	ld a, a                                          ; $4641: $7f
	rst $18                                          ; $4642: $df
	ld b, c                                          ; $4643: $41
	and b                                            ; $4644: $a0
	dec h                                            ; $4645: $25
	nop                                              ; $4646: $00
	nop                                              ; $4647: $00
	rst $38                                          ; $4648: $ff
	ld a, a                                          ; $4649: $7f
	ret nz                                           ; $464a: $c0

	ld c, d                                          ; $464b: $4a
	and b                                            ; $464c: $a0
	dec h                                            ; $464d: $25
	nop                                              ; $464e: $00
	nop                                              ; $464f: $00
	rst $38                                          ; $4650: $ff
	ld a, a                                          ; $4651: $7f
	rst $38                                          ; $4652: $ff
	ld a, a                                          ; $4653: $7f
	ld [hl-], a                                      ; $4654: $32
	ld a, a                                          ; $4655: $7f
	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	rst $38                                          ; $4658: $ff

jr_02c_4659:
	ld a, a                                          ; $4659: $7f
	ld h, d                                          ; $465a: $62
	ld a, [hl]                                       ; $465b: $7e
	and b                                            ; $465c: $a0
	dec h                                            ; $465d: $25
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	rst $38                                          ; $4660: $ff
	ld a, a                                          ; $4661: $7f
	rst $18                                          ; $4662: $df
	ld b, c                                          ; $4663: $41
	ld [hl-], a                                      ; $4664: $32
	ld a, a                                          ; $4665: $7f
	nop                                              ; $4666: $00
	nop                                              ; $4667: $00
	rst $38                                          ; $4668: $ff
	ld a, a                                          ; $4669: $7f
	ld [hl-], a                                      ; $466a: $32
	ld a, a                                          ; $466b: $7f
	ld h, d                                          ; $466c: $62
	ld a, [hl]                                       ; $466d: $7e
	nop                                              ; $466e: $00
	nop                                              ; $466f: $00
	rst $38                                          ; $4670: $ff
	ld a, a                                          ; $4671: $7f
	ret nz                                           ; $4672: $c0

	ld c, d                                          ; $4673: $4a
	ld a, a                                          ; $4674: $7f
	jr z, jr_02c_4677                                ; $4675: $28 $00

jr_02c_4677:
	nop                                              ; $4677: $00
	nop                                              ; $4678: $00
	dec de                                           ; $4679: $1b
	nop                                              ; $467a: $00
	push af                                          ; $467b: $f5
	rst $38                                          ; $467c: $ff
	ld a, a                                          ; $467d: $7f
	rst $18                                          ; $467e: $df
	ld b, c                                          ; $467f: $41
	and b                                            ; $4680: $a0
	dec h                                            ; $4681: $25
	nop                                              ; $4682: $00
	nop                                              ; $4683: $00
	rst $38                                          ; $4684: $ff
	ld a, a                                          ; $4685: $7f
	ret nz                                           ; $4686: $c0

	ld c, d                                          ; $4687: $4a
	and b                                            ; $4688: $a0
	dec h                                            ; $4689: $25
	nop                                              ; $468a: $00
	nop                                              ; $468b: $00
	rst $38                                          ; $468c: $ff
	ld a, a                                          ; $468d: $7f
	rst $18                                          ; $468e: $df
	ld b, c                                          ; $468f: $41
	nop                                              ; $4690: $00
	ld a, [hl]                                       ; $4691: $7e
	nop                                              ; $4692: $00
	nop                                              ; $4693: $00
	rst $38                                          ; $4694: $ff
	ld a, a                                          ; $4695: $7f
	rst $18                                          ; $4696: $df
	ld b, c                                          ; $4697: $41
	ld sp, hl                                        ; $4698: $f9
	stop                                             ; $4699: $10 $00
	nop                                              ; $469b: $00
	rst $18                                          ; $469c: $df
	ld b, c                                          ; $469d: $41
	ld sp, hl                                        ; $469e: $f9
	stop                                             ; $469f: $10 $00
	ld a, [hl]                                       ; $46a1: $7e
	nop                                              ; $46a2: $00
	nop                                              ; $46a3: $00
	rst $38                                          ; $46a4: $ff
	ld a, a                                          ; $46a5: $7f
	rst $38                                          ; $46a6: $ff
	ld a, a                                          ; $46a7: $7f
	rst $18                                          ; $46a8: $df
	ld b, c                                          ; $46a9: $41
	nop                                              ; $46aa: $00
	nop                                              ; $46ab: $00
	jr nz, jr_02c_46c9                               ; $46ac: $20 $1b

	cpl                                              ; $46ae: $2f
	xor $ff                                          ; $46af: $ee $ff
	ld a, a                                          ; $46b1: $7f
	rst $18                                          ; $46b2: $df
	ld b, c                                          ; $46b3: $41
	and b                                            ; $46b4: $a0
	dec h                                            ; $46b5: $25
	nop                                              ; $46b6: $00
	nop                                              ; $46b7: $00
	rst $38                                          ; $46b8: $ff
	ld a, a                                          ; $46b9: $7f
	ret nz                                           ; $46ba: $c0

	ld c, d                                          ; $46bb: $4a
	and b                                            ; $46bc: $a0
	dec h                                            ; $46bd: $25
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	rst $38                                          ; $46c0: $ff
	ld a, a                                          ; $46c1: $7f
	rst $38                                          ; $46c2: $ff
	ld a, a                                          ; $46c3: $7f
	rst $18                                          ; $46c4: $df
	ld b, c                                          ; $46c5: $41
	nop                                              ; $46c6: $00
	nop                                              ; $46c7: $00
	rst $38                                          ; $46c8: $ff

jr_02c_46c9:
	ld a, a                                          ; $46c9: $7f
	rst $18                                          ; $46ca: $df
	ld b, c                                          ; $46cb: $41
	ld sp, hl                                        ; $46cc: $f9
	stop                                             ; $46cd: $10 $00
	nop                                              ; $46cf: $00
	rst $38                                          ; $46d0: $ff
	ld a, a                                          ; $46d1: $7f
	rst $18                                          ; $46d2: $df
	ld b, c                                          ; $46d3: $41
	ld sp, $0036                                     ; $46d4: $31 $36 $00
	nop                                              ; $46d7: $00
	rst $18                                          ; $46d8: $df
	ld b, c                                          ; $46d9: $41
	ret nz                                           ; $46da: $c0

	ld c, d                                          ; $46db: $4a
	and b                                            ; $46dc: $a0
	dec h                                            ; $46dd: $25
	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	nop                                              ; $46e0: $00
	dec de                                           ; $46e1: $1b
	nop                                              ; $46e2: $00
	db $fc                                           ; $46e3: $fc
	rst $38                                          ; $46e4: $ff
	ld a, a                                          ; $46e5: $7f
	rst $18                                          ; $46e6: $df
	ld b, c                                          ; $46e7: $41
	and b                                            ; $46e8: $a0
	dec h                                            ; $46e9: $25
	nop                                              ; $46ea: $00
	nop                                              ; $46eb: $00
	rst $38                                          ; $46ec: $ff
	ld a, a                                          ; $46ed: $7f
	ret nz                                           ; $46ee: $c0

	ld c, d                                          ; $46ef: $4a
	and b                                            ; $46f0: $a0
	dec h                                            ; $46f1: $25
	nop                                              ; $46f2: $00
	nop                                              ; $46f3: $00
	rst $38                                          ; $46f4: $ff
	ld a, a                                          ; $46f5: $7f
	rst $18                                          ; $46f6: $df
	ld b, c                                          ; $46f7: $41
	ld sp, $0036                                     ; $46f8: $31 $36 $00
	nop                                              ; $46fb: $00
	rst $38                                          ; $46fc: $ff
	ld a, a                                          ; $46fd: $7f
	ld sp, $a036                                     ; $46fe: $31 $36 $a0
	dec h                                            ; $4701: $25
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	rst $38                                          ; $4704: $ff
	ld a, a                                          ; $4705: $7f
	rst $18                                          ; $4706: $df
	ld b, c                                          ; $4707: $41
	ld sp, hl                                        ; $4708: $f9
	stop                                             ; $4709: $10 $00
	nop                                              ; $470b: $00
	rst $38                                          ; $470c: $ff
	ld a, a                                          ; $470d: $7f
	rst $38                                          ; $470e: $ff
	ld a, a                                          ; $470f: $7f
	and b                                            ; $4710: $a0
	dec h                                            ; $4711: $25
	nop                                              ; $4712: $00
	nop                                              ; $4713: $00
	jr nz, @+$1d                                     ; $4714: $20 $1b

	cpl                                              ; $4716: $2f
	ldh [rIE], a                                     ; $4717: $e0 $ff
	ld a, a                                          ; $4719: $7f
	ld h, d                                          ; $471a: $62
	ld a, [hl]                                       ; $471b: $7e
	ld b, b                                          ; $471c: $40
	ld [hl], c                                       ; $471d: $71
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	rst $38                                          ; $4720: $ff
	ld a, a                                          ; $4721: $7f
	cp a                                             ; $4722: $bf
	add hl, sp                                       ; $4723: $39
	ld b, b                                          ; $4724: $40
	ld [hl], c                                       ; $4725: $71
	nop                                              ; $4726: $00
	nop                                              ; $4727: $00
	rst $38                                          ; $4728: $ff
	ld a, a                                          ; $4729: $7f
	rst $38                                          ; $472a: $ff
	ld a, a                                          ; $472b: $7f
	ld h, d                                          ; $472c: $62
	ld a, [hl]                                       ; $472d: $7e
	nop                                              ; $472e: $00
	nop                                              ; $472f: $00
	jr nz, jr_02c_474d                               ; $4730: $20 $1b

	cpl                                              ; $4732: $2f
	ldh [rIE], a                                     ; $4733: $e0 $ff
	ld a, a                                          ; $4735: $7f
	ld h, d                                          ; $4736: $62
	ld a, [hl]                                       ; $4737: $7e
	ld b, b                                          ; $4738: $40
	ld [hl], c                                       ; $4739: $71
	nop                                              ; $473a: $00
	nop                                              ; $473b: $00
	rst $38                                          ; $473c: $ff
	ld a, a                                          ; $473d: $7f
	cp a                                             ; $473e: $bf
	add hl, sp                                       ; $473f: $39
	ld b, b                                          ; $4740: $40
	ld [hl], c                                       ; $4741: $71
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	rst $38                                          ; $4744: $ff
	ld a, a                                          ; $4745: $7f
	rst $38                                          ; $4746: $ff
	ld a, a                                          ; $4747: $7f
	ld b, a                                          ; $4748: $47
	ld a, [hl]                                       ; $4749: $7e
	nop                                              ; $474a: $00
	nop                                              ; $474b: $00
	nop                                              ; $474c: $00

jr_02c_474d:
	dec de                                           ; $474d: $1b
	nop                                              ; $474e: $00
	ld hl, sp-$01                                    ; $474f: $f8 $ff
	ld a, a                                          ; $4751: $7f
	ld h, d                                          ; $4752: $62
	ld a, [hl]                                       ; $4753: $7e
	ld b, b                                          ; $4754: $40
	ld [hl], c                                       ; $4755: $71
	nop                                              ; $4756: $00
	nop                                              ; $4757: $00
	rst $38                                          ; $4758: $ff
	ld a, a                                          ; $4759: $7f
	cp a                                             ; $475a: $bf
	add hl, sp                                       ; $475b: $39
	ld b, b                                          ; $475c: $40
	ld [hl], c                                       ; $475d: $71
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	rst $38                                          ; $4760: $ff
	ld a, a                                          ; $4761: $7f
	dec d                                            ; $4762: $15
	ld [de], a                                       ; $4763: $12
	ld a, a                                          ; $4764: $7f
	ld b, h                                          ; $4765: $44
	nop                                              ; $4766: $00
	nop                                              ; $4767: $00
	rst $38                                          ; $4768: $ff
	ld a, a                                          ; $4769: $7f
	dec d                                            ; $476a: $15
	ld [de], a                                       ; $476b: $12
	ld c, $01                                        ; $476c: $0e $01
	nop                                              ; $476e: $00
	nop                                              ; $476f: $00
	rst $38                                          ; $4770: $ff
	ld a, a                                          ; $4771: $7f
	dec d                                            ; $4772: $15
	ld [de], a                                       ; $4773: $12
	ld b, b                                          ; $4774: $40
	ld [hl], c                                       ; $4775: $71
	nop                                              ; $4776: $00
	nop                                              ; $4777: $00
	inc e                                            ; $4778: $1c
	dec de                                           ; $4779: $1b
	cpl                                              ; $477a: $2f
	db $fc                                           ; $477b: $fc
	rst $38                                          ; $477c: $ff
	ld a, a                                          ; $477d: $7f
	ld h, d                                          ; $477e: $62
	ld a, [hl]                                       ; $477f: $7e
	ld b, b                                          ; $4780: $40
	ld [hl], c                                       ; $4781: $71
	nop                                              ; $4782: $00
	nop                                              ; $4783: $00
	rst $38                                          ; $4784: $ff
	ld a, a                                          ; $4785: $7f
	cp a                                             ; $4786: $bf
	add hl, sp                                       ; $4787: $39
	ld b, b                                          ; $4788: $40
	ld [hl], c                                       ; $4789: $71
	nop                                              ; $478a: $00
	nop                                              ; $478b: $00
	rst $38                                          ; $478c: $ff
	ld a, a                                          ; $478d: $7f
	dec h                                            ; $478e: $25
	ld b, e                                          ; $478f: $43
	ld b, b                                          ; $4790: $40
	ld [hl], c                                       ; $4791: $71
	nop                                              ; $4792: $00
	nop                                              ; $4793: $00
	rst $38                                          ; $4794: $ff
	ld a, a                                          ; $4795: $7f
	rst $38                                          ; $4796: $ff
	ld a, a                                          ; $4797: $7f
	cp a                                             ; $4798: $bf
	add hl, sp                                       ; $4799: $39
	nop                                              ; $479a: $00
	nop                                              ; $479b: $00
	rst $38                                          ; $479c: $ff
	ld a, a                                          ; $479d: $7f
	rst $38                                          ; $479e: $ff
	ld a, a                                          ; $479f: $7f
	dec h                                            ; $47a0: $25
	ld b, e                                          ; $47a1: $43
	nop                                              ; $47a2: $00
	nop                                              ; $47a3: $00
	rst $38                                          ; $47a4: $ff
	ld a, a                                          ; $47a5: $7f
	rst $38                                          ; $47a6: $ff
	ld a, a                                          ; $47a7: $7f
	ld h, d                                          ; $47a8: $62
	ld a, [hl]                                       ; $47a9: $7e
	nop                                              ; $47aa: $00
	nop                                              ; $47ab: $00
	ld l, $27                                        ; $47ac: $2e $27
	dec de                                           ; $47ae: $1b
	cp $ff                                           ; $47af: $fe $ff
	ld a, a                                          ; $47b1: $7f
	ld b, b                                          ; $47b2: $40
	ld [hl], c                                       ; $47b3: $71
	cp a                                             ; $47b4: $bf
	add hl, sp                                       ; $47b5: $39
	nop                                              ; $47b6: $00
	nop                                              ; $47b7: $00
	rst $38                                          ; $47b8: $ff
	ld a, a                                          ; $47b9: $7f
	ld b, b                                          ; $47ba: $40
	ld [hl], c                                       ; $47bb: $71
	inc d                                            ; $47bc: $14
	inc d                                            ; $47bd: $14
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	rst $38                                          ; $47c0: $ff
	ld a, a                                          ; $47c1: $7f
	ld h, d                                          ; $47c2: $62
	ld a, [hl]                                       ; $47c3: $7e
	ld b, b                                          ; $47c4: $40
	ld [hl], c                                       ; $47c5: $71
	nop                                              ; $47c6: $00
	nop                                              ; $47c7: $00
	rst $38                                          ; $47c8: $ff
	ld a, a                                          ; $47c9: $7f
	dec d                                            ; $47ca: $15
	dec l                                            ; $47cb: $2d
	cp a                                             ; $47cc: $bf
	add hl, sp                                       ; $47cd: $39
	nop                                              ; $47ce: $00
	nop                                              ; $47cf: $00
	rst $38                                          ; $47d0: $ff
	ld a, a                                          ; $47d1: $7f
	cp a                                             ; $47d2: $bf
	ld h, l                                          ; $47d3: $65
	inc d                                            ; $47d4: $14
	inc d                                            ; $47d5: $14
	nop                                              ; $47d6: $00
	nop                                              ; $47d7: $00
	rst $38                                          ; $47d8: $ff
	ld a, a                                          ; $47d9: $7f
	cp a                                             ; $47da: $bf
	ld h, l                                          ; $47db: $65
	inc d                                            ; $47dc: $14
	inc d                                            ; $47dd: $14
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	rst $38                                          ; $47e0: $ff
	ld a, a                                          ; $47e1: $7f
	rst $38                                          ; $47e2: $ff
	ld a, a                                          ; $47e3: $7f
	inc d                                            ; $47e4: $14
	inc d                                            ; $47e5: $14
	nop                                              ; $47e6: $00
	nop                                              ; $47e7: $00
	nop                                              ; $47e8: $00
	dec de                                           ; $47e9: $1b
	nop                                              ; $47ea: $00
	ld hl, sp-$01                                    ; $47eb: $f8 $ff
	ld a, a                                          ; $47ed: $7f
	ld h, d                                          ; $47ee: $62
	ld a, [hl]                                       ; $47ef: $7e
	ld b, b                                          ; $47f0: $40
	ld [hl], c                                       ; $47f1: $71
	nop                                              ; $47f2: $00
	nop                                              ; $47f3: $00
	rst $38                                          ; $47f4: $ff
	ld a, a                                          ; $47f5: $7f
	cp a                                             ; $47f6: $bf
	add hl, sp                                       ; $47f7: $39
	ld b, b                                          ; $47f8: $40
	ld [hl], c                                       ; $47f9: $71
	nop                                              ; $47fa: $00
	nop                                              ; $47fb: $00
	rst $38                                          ; $47fc: $ff
	ld a, a                                          ; $47fd: $7f
	add l                                            ; $47fe: $85
	ld d, a                                          ; $47ff: $57
	ld b, b                                          ; $4800: $40
	ld [hl], c                                       ; $4801: $71
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	rst $38                                          ; $4804: $ff
	ld a, a                                          ; $4805: $7f
	cp a                                             ; $4806: $bf
	add hl, sp                                       ; $4807: $39
	nop                                              ; $4808: $00
	ld [hl-], a                                      ; $4809: $32
	nop                                              ; $480a: $00
	nop                                              ; $480b: $00
	rst $38                                          ; $480c: $ff
	ld a, a                                          ; $480d: $7f
	add l                                            ; $480e: $85
	ld d, a                                          ; $480f: $57
	nop                                              ; $4810: $00
	ld [hl-], a                                      ; $4811: $32
	nop                                              ; $4812: $00
	nop                                              ; $4813: $00
	inc bc                                           ; $4814: $03
	dec de                                           ; $4815: $1b
	rra                                              ; $4816: $1f
	rst $38                                          ; $4817: $ff
	rst $38                                          ; $4818: $ff
	ld a, a                                          ; $4819: $7f
	cp a                                             ; $481a: $bf
	add hl, sp                                       ; $481b: $39
	ld b, b                                          ; $481c: $40
	ld [hl], c                                       ; $481d: $71
	nop                                              ; $481e: $00
	nop                                              ; $481f: $00
	rst $38                                          ; $4820: $ff
	ld a, a                                          ; $4821: $7f
	dec l                                            ; $4822: $2d
	ld [hl], a                                       ; $4823: $77
	adc h                                            ; $4824: $8c
	ld e, c                                          ; $4825: $59
	nop                                              ; $4826: $00
	nop                                              ; $4827: $00
	rst $38                                          ; $4828: $ff
	ld a, a                                          ; $4829: $7f
	ld h, d                                          ; $482a: $62
	ld a, [hl]                                       ; $482b: $7e
	ld b, b                                          ; $482c: $40
	ld [hl], c                                       ; $482d: $71
	nop                                              ; $482e: $00
	nop                                              ; $482f: $00
	rst $38                                          ; $4830: $ff
	ld a, a                                          ; $4831: $7f
	cp a                                             ; $4832: $bf
	add hl, sp                                       ; $4833: $39
	ldh a, [rAUD2LOW]                                ; $4834: $f0 $18
	nop                                              ; $4836: $00
	nop                                              ; $4837: $00
	rst $38                                          ; $4838: $ff
	ld a, a                                          ; $4839: $7f
	dec l                                            ; $483a: $2d
	ld [hl], a                                       ; $483b: $77
	ld b, b                                          ; $483c: $40
	ld [hl], c                                       ; $483d: $71
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	rst $38                                          ; $4840: $ff
	ld a, a                                          ; $4841: $7f
	dec l                                            ; $4842: $2d
	ld [hl], a                                       ; $4843: $77
	adc h                                            ; $4844: $8c
	ld d, c                                          ; $4845: $51
	nop                                              ; $4846: $00
	nop                                              ; $4847: $00
	rst $38                                          ; $4848: $ff
	ld a, a                                          ; $4849: $7f
	rst $38                                          ; $484a: $ff
	ld a, a                                          ; $484b: $7f
	adc h                                            ; $484c: $8c
	ld d, c                                          ; $484d: $51
	nop                                              ; $484e: $00
	nop                                              ; $484f: $00
	rst $38                                          ; $4850: $ff
	ld a, a                                          ; $4851: $7f
	rst $38                                          ; $4852: $ff
	ld a, a                                          ; $4853: $7f
	ld b, b                                          ; $4854: $40
	ld [hl], c                                       ; $4855: $71
	nop                                              ; $4856: $00
	nop                                              ; $4857: $00
	ld b, $1b                                        ; $4858: $06 $1b
	cpl                                              ; $485a: $2f
	cp $ff                                           ; $485b: $fe $ff
	ld a, a                                          ; $485d: $7f
	ld h, d                                          ; $485e: $62
	ld a, [hl]                                       ; $485f: $7e
	ld b, b                                          ; $4860: $40
	ld [hl], c                                       ; $4861: $71
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	rst $38                                          ; $4864: $ff
	ld a, a                                          ; $4865: $7f
	cp a                                             ; $4866: $bf
	add hl, sp                                       ; $4867: $39
	ld b, b                                          ; $4868: $40
	ld [hl], c                                       ; $4869: $71
	nop                                              ; $486a: $00
	nop                                              ; $486b: $00
	rst $38                                          ; $486c: $ff
	ld a, a                                          ; $486d: $7f
	push de                                          ; $486e: $d5
	ld a, [hl]                                       ; $486f: $7e
	ld l, c                                          ; $4870: $69
	ld d, l                                          ; $4871: $55
	nop                                              ; $4872: $00
	nop                                              ; $4873: $00
	rst $38                                          ; $4874: $ff
	ld a, a                                          ; $4875: $7f
	push de                                          ; $4876: $d5
	ld a, [hl]                                       ; $4877: $7e
	ld e, a                                          ; $4878: $5f
	jr nc, jr_02c_487b                               ; $4879: $30 $00

jr_02c_487b:
	nop                                              ; $487b: $00
	rst $38                                          ; $487c: $ff
	ld a, a                                          ; $487d: $7f
	push de                                          ; $487e: $d5
	ld a, [hl]                                       ; $487f: $7e
	ld b, b                                          ; $4880: $40
	ld [hl], c                                       ; $4881: $71
	nop                                              ; $4882: $00
	nop                                              ; $4883: $00
	rst $38                                          ; $4884: $ff
	ld a, a                                          ; $4885: $7f
	rst $38                                          ; $4886: $ff
	ld a, a                                          ; $4887: $7f
	push de                                          ; $4888: $d5
	ld a, [hl]                                       ; $4889: $7e
	nop                                              ; $488a: $00
	nop                                              ; $488b: $00
	rst $38                                          ; $488c: $ff
	ld a, a                                          ; $488d: $7f
	rst $38                                          ; $488e: $ff
	ld a, a                                          ; $488f: $7f
	ld h, d                                          ; $4890: $62
	ld a, [hl]                                       ; $4891: $7e
	nop                                              ; $4892: $00
	nop                                              ; $4893: $00
	inc c                                            ; $4894: $0c
	dec de                                           ; $4895: $1b
	cpl                                              ; $4896: $2f
	db $fc                                           ; $4897: $fc
	rst $38                                          ; $4898: $ff
	ld a, a                                          ; $4899: $7f
	ld h, d                                          ; $489a: $62
	ld a, [hl]                                       ; $489b: $7e
	ld b, b                                          ; $489c: $40
	ld [hl], c                                       ; $489d: $71
	nop                                              ; $489e: $00
	nop                                              ; $489f: $00
	rst $38                                          ; $48a0: $ff
	ld a, a                                          ; $48a1: $7f
	cp a                                             ; $48a2: $bf
	add hl, sp                                       ; $48a3: $39
	ld b, b                                          ; $48a4: $40
	ld [hl], c                                       ; $48a5: $71
	nop                                              ; $48a6: $00
	nop                                              ; $48a7: $00
	rst $38                                          ; $48a8: $ff
	ld a, a                                          ; $48a9: $7f
	cp a                                             ; $48aa: $bf
	add hl, sp                                       ; $48ab: $39
	ccf                                              ; $48ac: $3f
	inc bc                                           ; $48ad: $03
	nop                                              ; $48ae: $00
	nop                                              ; $48af: $00
	rst $38                                          ; $48b0: $ff
	ld a, a                                          ; $48b1: $7f
	cp a                                             ; $48b2: $bf
	add hl, sp                                       ; $48b3: $39
	bit 4, h                                         ; $48b4: $cb $64
	nop                                              ; $48b6: $00
	nop                                              ; $48b7: $00
	rst $38                                          ; $48b8: $ff
	ld a, a                                          ; $48b9: $7f
	rst $38                                          ; $48ba: $ff
	ld a, a                                          ; $48bb: $7f
	rla                                              ; $48bc: $17
	ld a, l                                          ; $48bd: $7d
	nop                                              ; $48be: $00
	nop                                              ; $48bf: $00
	rst $38                                          ; $48c0: $ff
	ld a, a                                          ; $48c1: $7f
	rst $38                                          ; $48c2: $ff
	ld a, a                                          ; $48c3: $7f
	cp a                                             ; $48c4: $bf
	add hl, sp                                       ; $48c5: $39
	nop                                              ; $48c6: $00
	nop                                              ; $48c7: $00
	db $10                                           ; $48c8: $10
	dec de                                           ; $48c9: $1b
	cpl                                              ; $48ca: $2f
	ldh a, [rIE]                                     ; $48cb: $f0 $ff
	ld a, a                                          ; $48cd: $7f
	ld h, d                                          ; $48ce: $62
	ld a, [hl]                                       ; $48cf: $7e
	ld b, b                                          ; $48d0: $40
	ld [hl], c                                       ; $48d1: $71
	nop                                              ; $48d2: $00
	nop                                              ; $48d3: $00
	rst $38                                          ; $48d4: $ff
	ld a, a                                          ; $48d5: $7f
	cp a                                             ; $48d6: $bf
	add hl, sp                                       ; $48d7: $39
	ld b, b                                          ; $48d8: $40
	ld [hl], c                                       ; $48d9: $71
	nop                                              ; $48da: $00
	nop                                              ; $48db: $00
	rst $38                                          ; $48dc: $ff
	ld a, a                                          ; $48dd: $7f
	ld h, d                                          ; $48de: $62
	ld a, [hl]                                       ; $48df: $7e
	rra                                              ; $48e0: $1f
	stop                                             ; $48e1: $10 $00
	nop                                              ; $48e3: $00
	rst $38                                          ; $48e4: $ff
	ld a, a                                          ; $48e5: $7f
	rst $38                                          ; $48e6: $ff
	ld a, a                                          ; $48e7: $7f
	ld h, d                                          ; $48e8: $62
	ld a, [hl]                                       ; $48e9: $7e
	nop                                              ; $48ea: $00
	nop                                              ; $48eb: $00
	inc c                                            ; $48ec: $0c
	dec de                                           ; $48ed: $1b
	cpl                                              ; $48ee: $2f
	db $fc                                           ; $48ef: $fc
	rst $38                                          ; $48f0: $ff
	ld a, a                                          ; $48f1: $7f
	ld h, d                                          ; $48f2: $62
	ld a, [hl]                                       ; $48f3: $7e
	ld b, b                                          ; $48f4: $40
	ld [hl], c                                       ; $48f5: $71
	nop                                              ; $48f6: $00
	nop                                              ; $48f7: $00
	rst $38                                          ; $48f8: $ff
	ld a, a                                          ; $48f9: $7f
	cp a                                             ; $48fa: $bf
	add hl, sp                                       ; $48fb: $39
	ld b, b                                          ; $48fc: $40
	ld [hl], c                                       ; $48fd: $71
	nop                                              ; $48fe: $00
	nop                                              ; $48ff: $00
	rst $38                                          ; $4900: $ff
	ld a, a                                          ; $4901: $7f
	cp a                                             ; $4902: $bf
	add hl, sp                                       ; $4903: $39
	dec d                                            ; $4904: $15
	add hl, de                                       ; $4905: $19
	nop                                              ; $4906: $00
	nop                                              ; $4907: $00
	rst $38                                          ; $4908: $ff
	ld a, a                                          ; $4909: $7f
	cp a                                             ; $490a: $bf
	add hl, sp                                       ; $490b: $39
	jr nc, jr_02c_498b                               ; $490c: $30 $7d

	nop                                              ; $490e: $00
	nop                                              ; $490f: $00
	rst $38                                          ; $4910: $ff
	ld a, a                                          ; $4911: $7f
	rst $38                                          ; $4912: $ff
	ld a, a                                          ; $4913: $7f
	cp a                                             ; $4914: $bf
	add hl, sp                                       ; $4915: $39
	nop                                              ; $4916: $00
	nop                                              ; $4917: $00
	rst $38                                          ; $4918: $ff
	ld a, a                                          ; $4919: $7f
	rst $38                                          ; $491a: $ff
	ld a, a                                          ; $491b: $7f
	ld h, d                                          ; $491c: $62
	ld a, [hl]                                       ; $491d: $7e
	nop                                              ; $491e: $00
	nop                                              ; $491f: $00
	inc c                                            ; $4920: $0c
	dec de                                           ; $4921: $1b
	cpl                                              ; $4922: $2f
	db $fc                                           ; $4923: $fc
	rst $38                                          ; $4924: $ff
	ld a, a                                          ; $4925: $7f
	ld h, d                                          ; $4926: $62
	ld a, [hl]                                       ; $4927: $7e
	ld b, b                                          ; $4928: $40
	ld [hl], c                                       ; $4929: $71
	nop                                              ; $492a: $00
	nop                                              ; $492b: $00
	rst $38                                          ; $492c: $ff
	ld a, a                                          ; $492d: $7f
	cp a                                             ; $492e: $bf
	add hl, sp                                       ; $492f: $39
	ld b, b                                          ; $4930: $40
	ld [hl], c                                       ; $4931: $71
	nop                                              ; $4932: $00
	nop                                              ; $4933: $00
	rst $38                                          ; $4934: $ff
	ld a, a                                          ; $4935: $7f
	ld d, b                                          ; $4936: $50
	ld a, [hl]                                       ; $4937: $7e
	ld b, b                                          ; $4938: $40
	ld [hl], c                                       ; $4939: $71
	nop                                              ; $493a: $00
	nop                                              ; $493b: $00
	rst $38                                          ; $493c: $ff
	ld a, a                                          ; $493d: $7f
	cp a                                             ; $493e: $bf
	add hl, sp                                       ; $493f: $39
	ld d, b                                          ; $4940: $50
	ld a, [hl]                                       ; $4941: $7e
	nop                                              ; $4942: $00
	nop                                              ; $4943: $00
	rst $38                                          ; $4944: $ff
	ld a, a                                          ; $4945: $7f
	rst $38                                          ; $4946: $ff
	ld a, a                                          ; $4947: $7f
	ld d, b                                          ; $4948: $50
	ld a, [hl]                                       ; $4949: $7e
	nop                                              ; $494a: $00
	nop                                              ; $494b: $00
	rst $38                                          ; $494c: $ff
	ld a, a                                          ; $494d: $7f
	rst $38                                          ; $494e: $ff
	ld a, a                                          ; $494f: $7f
	cp a                                             ; $4950: $bf
	add hl, sp                                       ; $4951: $39
	nop                                              ; $4952: $00
	nop                                              ; $4953: $00
	jr nc, jr_02c_4971                               ; $4954: $30 $1b

	cpl                                              ; $4956: $2f
	rst $38                                          ; $4957: $ff
	rst $38                                          ; $4958: $ff
	ld a, a                                          ; $4959: $7f
	ld a, $32                                        ; $495a: $3e $32
	ld [$0048], a                                    ; $495c: $ea $48 $00
	nop                                              ; $495f: $00
	rst $38                                          ; $4960: $ff
	ld a, a                                          ; $4961: $7f
	dec [hl]                                         ; $4962: $35
	ld l, [hl]                                       ; $4963: $6e
	ld [$0048], a                                    ; $4964: $ea $48 $00
	nop                                              ; $4967: $00
	rst $38                                          ; $4968: $ff
	ld a, a                                          ; $4969: $7f
	rst $38                                          ; $496a: $ff
	ld a, a                                          ; $496b: $7f
	add e                                            ; $496c: $83
	ld a, l                                          ; $496d: $7d
	nop                                              ; $496e: $00
	nop                                              ; $496f: $00
	rst $38                                          ; $4970: $ff

jr_02c_4971:
	ld a, a                                          ; $4971: $7f
	rst $38                                          ; $4972: $ff
	ld a, a                                          ; $4973: $7f
	ld a, $32                                        ; $4974: $3e $32
	nop                                              ; $4976: $00
	nop                                              ; $4977: $00
	rst $38                                          ; $4978: $ff
	ld a, a                                          ; $4979: $7f
	rra                                              ; $497a: $1f
	ld a, l                                          ; $497b: $7d
	rra                                              ; $497c: $1f
	ld a, l                                          ; $497d: $7d
	rra                                              ; $497e: $1f
	ld a, l                                          ; $497f: $7d
	rst $38                                          ; $4980: $ff
	ld a, a                                          ; $4981: $7f
	ld h, d                                          ; $4982: $62
	ld a, [hl]                                       ; $4983: $7e
	add e                                            ; $4984: $83
	ld a, l                                          ; $4985: $7d
	nop                                              ; $4986: $00
	nop                                              ; $4987: $00
	rst $38                                          ; $4988: $ff
	ld a, a                                          ; $4989: $7f
	ld h, d                                          ; $498a: $62

jr_02c_498b:
	ld a, [hl]                                       ; $498b: $7e
	ld [$0048], a                                    ; $498c: $ea $48 $00
	nop                                              ; $498f: $00
	rst $38                                          ; $4990: $ff
	ld a, a                                          ; $4991: $7f
	rra                                              ; $4992: $1f
	ld a, l                                          ; $4993: $7d
	rra                                              ; $4994: $1f
	ld a, l                                          ; $4995: $7d
	rra                                              ; $4996: $1f
	ld a, l                                          ; $4997: $7d
	jr c, jr_02c_49b5                                ; $4998: $38 $1b

	cpl                                              ; $499a: $2f
	cp $ff                                           ; $499b: $fe $ff
	ld a, a                                          ; $499d: $7f
	ld a, $32                                        ; $499e: $3e $32
	ld [$0048], a                                    ; $49a0: $ea $48 $00
	nop                                              ; $49a3: $00
	rst $38                                          ; $49a4: $ff
	ld a, a                                          ; $49a5: $7f
	dec [hl]                                         ; $49a6: $35
	ld l, [hl]                                       ; $49a7: $6e
	ld [$0048], a                                    ; $49a8: $ea $48 $00
	nop                                              ; $49ab: $00
	rst $38                                          ; $49ac: $ff
	ld a, a                                          ; $49ad: $7f
	ld a, $32                                        ; $49ae: $3e $32
	ld h, d                                          ; $49b0: $62
	ld a, [hl]                                       ; $49b1: $7e
	nop                                              ; $49b2: $00
	nop                                              ; $49b3: $00
	rst $38                                          ; $49b4: $ff

jr_02c_49b5:
	ld a, a                                          ; $49b5: $7f
	rst $38                                          ; $49b6: $ff
	ld a, a                                          ; $49b7: $7f
	ld a, $32                                        ; $49b8: $3e $32
	nop                                              ; $49ba: $00
	nop                                              ; $49bb: $00
	rst $38                                          ; $49bc: $ff
	ld a, a                                          ; $49bd: $7f
	rst $38                                          ; $49be: $ff
	ld a, a                                          ; $49bf: $7f
	ld h, d                                          ; $49c0: $62
	ld a, [hl]                                       ; $49c1: $7e
	nop                                              ; $49c2: $00
	nop                                              ; $49c3: $00
	rst $38                                          ; $49c4: $ff
	ld a, a                                          ; $49c5: $7f
	ld h, d                                          ; $49c6: $62
	ld a, [hl]                                       ; $49c7: $7e
	add e                                            ; $49c8: $83
	ld a, l                                          ; $49c9: $7d
	nop                                              ; $49ca: $00
	nop                                              ; $49cb: $00
	rst $38                                          ; $49cc: $ff
	ld a, a                                          ; $49cd: $7f
	ld h, d                                          ; $49ce: $62
	ld a, [hl]                                       ; $49cf: $7e
	ld [$0048], a                                    ; $49d0: $ea $48 $00
	nop                                              ; $49d3: $00
	jr nc, jr_02c_49f1                               ; $49d4: $30 $1b

	cpl                                              ; $49d6: $2f
	ldh a, [rIE]                                     ; $49d7: $f0 $ff
	ld a, a                                          ; $49d9: $7f
	ld a, $32                                        ; $49da: $3e $32
	ld [$0048], a                                    ; $49dc: $ea $48 $00
	nop                                              ; $49df: $00
	rst $38                                          ; $49e0: $ff
	ld a, a                                          ; $49e1: $7f
	dec [hl]                                         ; $49e2: $35
	ld l, [hl]                                       ; $49e3: $6e
	ld [$0048], a                                    ; $49e4: $ea $48 $00
	nop                                              ; $49e7: $00
	rst $38                                          ; $49e8: $ff
	ld a, a                                          ; $49e9: $7f
	rst $38                                          ; $49ea: $ff
	scf                                              ; $49eb: $37
	ld a, $32                                        ; $49ec: $3e $32
	nop                                              ; $49ee: $00
	nop                                              ; $49ef: $00
	rst $38                                          ; $49f0: $ff

jr_02c_49f1:
	ld a, a                                          ; $49f1: $7f
	rst $38                                          ; $49f2: $ff
	ld a, a                                          ; $49f3: $7f
	ld a, $32                                        ; $49f4: $3e $32
	nop                                              ; $49f6: $00
	nop                                              ; $49f7: $00
	inc a                                            ; $49f8: $3c
	dec de                                           ; $49f9: $1b
	cpl                                              ; $49fa: $2f
	cp $ff                                           ; $49fb: $fe $ff
	ld a, a                                          ; $49fd: $7f
	ld a, $32                                        ; $49fe: $3e $32
	ld [$0048], a                                    ; $4a00: $ea $48 $00
	nop                                              ; $4a03: $00
	rst $38                                          ; $4a04: $ff
	ld a, a                                          ; $4a05: $7f
	dec [hl]                                         ; $4a06: $35
	ld l, [hl]                                       ; $4a07: $6e
	ld [$0048], a                                    ; $4a08: $ea $48 $00
	nop                                              ; $4a0b: $00
	rst $38                                          ; $4a0c: $ff
	ld a, a                                          ; $4a0d: $7f
	rst $38                                          ; $4a0e: $ff
	scf                                              ; $4a0f: $37
	ld a, $32                                        ; $4a10: $3e $32
	nop                                              ; $4a12: $00
	nop                                              ; $4a13: $00
	rst $38                                          ; $4a14: $ff
	ld a, a                                          ; $4a15: $7f
	rst $38                                          ; $4a16: $ff
	ld a, a                                          ; $4a17: $7f
	ld a, $32                                        ; $4a18: $3e $32
	nop                                              ; $4a1a: $00

jr_02c_4a1b:
	nop                                              ; $4a1b: $00
	rst $38                                          ; $4a1c: $ff
	ld a, a                                          ; $4a1d: $7f
	rst $38                                          ; $4a1e: $ff
	scf                                              ; $4a1f: $37
	ld [$0048], a                                    ; $4a20: $ea $48 $00
	nop                                              ; $4a23: $00
	rst $38                                          ; $4a24: $ff
	ld a, a                                          ; $4a25: $7f
	rst $38                                          ; $4a26: $ff
	scf                                              ; $4a27: $37
	cp a                                             ; $4a28: $bf
	jr c, jr_02c_4a2b                                ; $4a29: $38 $00

jr_02c_4a2b:
	nop                                              ; $4a2b: $00
	ld a, [$bf7f]                                    ; $4a2c: $fa $7f $bf
	jr c, jr_02c_4a1b                                ; $4a2f: $38 $ea

	ld c, b                                          ; $4a31: $48
	nop                                              ; $4a32: $00
	nop                                              ; $4a33: $00
	db $10                                           ; $4a34: $10
	dec de                                           ; $4a35: $1b
	cpl                                              ; $4a36: $2f
	db $fc                                           ; $4a37: $fc
	rst $38                                          ; $4a38: $ff
	ld a, a                                          ; $4a39: $7f
	ld a, $32                                        ; $4a3a: $3e $32
	ld [$0048], a                                    ; $4a3c: $ea $48 $00
	nop                                              ; $4a3f: $00
	rst $38                                          ; $4a40: $ff
	ld a, a                                          ; $4a41: $7f
	dec [hl]                                         ; $4a42: $35
	ld l, [hl]                                       ; $4a43: $6e
	ld [$0048], a                                    ; $4a44: $ea $48 $00
	nop                                              ; $4a47: $00
	rst $38                                          ; $4a48: $ff
	ld a, a                                          ; $4a49: $7f
	cp a                                             ; $4a4a: $bf
	jr c, jr_02c_4ab9                                ; $4a4b: $38 $6c

	ld c, l                                          ; $4a4d: $4d
	nop                                              ; $4a4e: $00
	nop                                              ; $4a4f: $00
	rst $38                                          ; $4a50: $ff
	ld a, a                                          ; $4a51: $7f
	rst $38                                          ; $4a52: $ff
	ld a, a                                          ; $4a53: $7f
	ld a, $32                                        ; $4a54: $3e $32
	nop                                              ; $4a56: $00
	nop                                              ; $4a57: $00
	rst $38                                          ; $4a58: $ff
	ld a, a                                          ; $4a59: $7f
	ld a, $32                                        ; $4a5a: $3e $32
	cp a                                             ; $4a5c: $bf
	jr c, jr_02c_4a5f                                ; $4a5d: $38 $00

jr_02c_4a5f:
	nop                                              ; $4a5f: $00
	rst $38                                          ; $4a60: $ff
	ld a, a                                          ; $4a61: $7f
	ld a, $32                                        ; $4a62: $3e $32
	add c                                            ; $4a64: $81
	ld h, $00                                        ; $4a65: $26 $00
	nop                                              ; $4a67: $00
	jr c, jr_02c_4a85                                ; $4a68: $38 $1b

	cpl                                              ; $4a6a: $2f
	db $fc                                           ; $4a6b: $fc
	rst $38                                          ; $4a6c: $ff
	ld a, a                                          ; $4a6d: $7f
	ld a, $32                                        ; $4a6e: $3e $32
	ld [$0048], a                                    ; $4a70: $ea $48 $00
	nop                                              ; $4a73: $00
	rst $38                                          ; $4a74: $ff
	ld a, a                                          ; $4a75: $7f
	dec [hl]                                         ; $4a76: $35
	ld l, [hl]                                       ; $4a77: $6e
	ld [$0048], a                                    ; $4a78: $ea $48 $00
	nop                                              ; $4a7b: $00
	rst $38                                          ; $4a7c: $ff
	ld a, a                                          ; $4a7d: $7f
	rst $38                                          ; $4a7e: $ff
	scf                                              ; $4a7f: $37
	ld e, a                                          ; $4a80: $5f
	ld [hl], $00                                     ; $4a81: $36 $00
	nop                                              ; $4a83: $00
	rst $38                                          ; $4a84: $ff

jr_02c_4a85:
	ld a, a                                          ; $4a85: $7f
	rst $38                                          ; $4a86: $ff
	ld a, a                                          ; $4a87: $7f
	ld a, $32                                        ; $4a88: $3e $32
	nop                                              ; $4a8a: $00
	nop                                              ; $4a8b: $00
	rst $38                                          ; $4a8c: $ff
	ld a, a                                          ; $4a8d: $7f
	rst $38                                          ; $4a8e: $ff
	ld a, a                                          ; $4a8f: $7f
	or c                                             ; $4a90: $b1
	ld h, e                                          ; $4a91: $63
	nop                                              ; $4a92: $00
	nop                                              ; $4a93: $00
	rst $38                                          ; $4a94: $ff
	ld a, a                                          ; $4a95: $7f
	ld a, [hl+]                                      ; $4a96: $2a
	ld l, a                                          ; $4a97: $6f
	adc c                                            ; $4a98: $89
	dec a                                            ; $4a99: $3d
	nop                                              ; $4a9a: $00
	nop                                              ; $4a9b: $00
	ld [$2f1b], sp                                   ; $4a9c: $08 $1b $2f
	cp $ff                                           ; $4a9f: $fe $ff
	ld a, a                                          ; $4aa1: $7f
	ld a, $32                                        ; $4aa2: $3e $32
	ld [$0048], a                                    ; $4aa4: $ea $48 $00
	nop                                              ; $4aa7: $00
	rst $38                                          ; $4aa8: $ff
	ld a, a                                          ; $4aa9: $7f
	dec [hl]                                         ; $4aaa: $35
	ld l, [hl]                                       ; $4aab: $6e
	ld [$0048], a                                    ; $4aac: $ea $48 $00
	nop                                              ; $4aaf: $00
	rst $38                                          ; $4ab0: $ff
	ld a, a                                          ; $4ab1: $7f
	ld a, $32                                        ; $4ab2: $3e $32
	dec bc                                           ; $4ab4: $0b
	ld h, d                                          ; $4ab5: $62
	nop                                              ; $4ab6: $00
	nop                                              ; $4ab7: $00
	rst $38                                          ; $4ab8: $ff

jr_02c_4ab9:
	ld a, a                                          ; $4ab9: $7f
	rst $38                                          ; $4aba: $ff
	ld a, a                                          ; $4abb: $7f
	ld a, $32                                        ; $4abc: $3e $32
	nop                                              ; $4abe: $00
	nop                                              ; $4abf: $00
	rst $38                                          ; $4ac0: $ff
	ld a, a                                          ; $4ac1: $7f
	rst $38                                          ; $4ac2: $ff
	ld a, a                                          ; $4ac3: $7f
	dec bc                                           ; $4ac4: $0b
	ld h, d                                          ; $4ac5: $62
	nop                                              ; $4ac6: $00
	nop                                              ; $4ac7: $00
	rst $38                                          ; $4ac8: $ff
	ld a, a                                          ; $4ac9: $7f
	ld d, a                                          ; $4aca: $57
	ld a, a                                          ; $4acb: $7f
	dec bc                                           ; $4acc: $0b
	ld h, d                                          ; $4acd: $62
	nop                                              ; $4ace: $00
	nop                                              ; $4acf: $00
	rst $38                                          ; $4ad0: $ff
	ld a, a                                          ; $4ad1: $7f
	ld d, a                                          ; $4ad2: $57
	ld a, a                                          ; $4ad3: $7f
	ld [$0048], a                                    ; $4ad4: $ea $48 $00
	nop                                              ; $4ad7: $00
	db $10                                           ; $4ad8: $10
	dec de                                           ; $4ad9: $1b
	cpl                                              ; $4ada: $2f
	ld hl, sp-$01                                    ; $4adb: $f8 $ff
	ld a, a                                          ; $4add: $7f
	ld a, $32                                        ; $4ade: $3e $32
	ld [$0048], a                                    ; $4ae0: $ea $48 $00
	nop                                              ; $4ae3: $00
	rst $38                                          ; $4ae4: $ff
	ld a, a                                          ; $4ae5: $7f
	dec [hl]                                         ; $4ae6: $35
	ld l, [hl]                                       ; $4ae7: $6e
	ld [$0048], a                                    ; $4ae8: $ea $48 $00
	nop                                              ; $4aeb: $00
	rst $38                                          ; $4aec: $ff
	ld a, a                                          ; $4aed: $7f
	sub l                                            ; $4aee: $95
	ld a, a                                          ; $4aef: $7f
	and a                                            ; $4af0: $a7
	ld l, c                                          ; $4af1: $69
	nop                                              ; $4af2: $00
	nop                                              ; $4af3: $00
	rst $38                                          ; $4af4: $ff
	ld a, a                                          ; $4af5: $7f
	rst $38                                          ; $4af6: $ff
	ld a, a                                          ; $4af7: $7f
	ld a, $32                                        ; $4af8: $3e $32
	nop                                              ; $4afa: $00
	nop                                              ; $4afb: $00
	rst $38                                          ; $4afc: $ff
	ld a, a                                          ; $4afd: $7f
	rst $18                                          ; $4afe: $df
	ld [bc], a                                       ; $4aff: $02
	and a                                            ; $4b00: $a7
	ld l, c                                          ; $4b01: $69
	nop                                              ; $4b02: $00
	nop                                              ; $4b03: $00
	jr nc, jr_02c_4b21                               ; $4b04: $30 $1b

	cpl                                              ; $4b06: $2f
	ld hl, sp-$01                                    ; $4b07: $f8 $ff
	ld a, a                                          ; $4b09: $7f
	ld a, $32                                        ; $4b0a: $3e $32
	ld [$0048], a                                    ; $4b0c: $ea $48 $00
	nop                                              ; $4b0f: $00
	rst $38                                          ; $4b10: $ff
	ld a, a                                          ; $4b11: $7f
	dec [hl]                                         ; $4b12: $35
	ld l, [hl]                                       ; $4b13: $6e
	ld [$0048], a                                    ; $4b14: $ea $48 $00
	nop                                              ; $4b17: $00
	rst $38                                          ; $4b18: $ff
	ld a, a                                          ; $4b19: $7f
	rst $38                                          ; $4b1a: $ff
	scf                                              ; $4b1b: $37
	ld a, $32                                        ; $4b1c: $3e $32
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	rst $38                                          ; $4b20: $ff

jr_02c_4b21:
	ld a, a                                          ; $4b21: $7f
	rst $38                                          ; $4b22: $ff
	ld a, a                                          ; $4b23: $7f
	ld a, $32                                        ; $4b24: $3e $32
	nop                                              ; $4b26: $00
	nop                                              ; $4b27: $00
	rst $38                                          ; $4b28: $ff
	ld a, a                                          ; $4b29: $7f
	rra                                              ; $4b2a: $1f
	ld [hl], $0f                                     ; $4b2b: $36 $0f
	ld e, d                                          ; $4b2d: $5a
	nop                                              ; $4b2e: $00
	nop                                              ; $4b2f: $00
	nop                                              ; $4b30: $00
	dec de                                           ; $4b31: $1b
	nop                                              ; $4b32: $00
	ld hl, sp-$01                                    ; $4b33: $f8 $ff
	ld a, a                                          ; $4b35: $7f
	ld a, $32                                        ; $4b36: $3e $32
	ld [$0048], a                                    ; $4b38: $ea $48 $00
	nop                                              ; $4b3b: $00
	rst $38                                          ; $4b3c: $ff
	ld a, a                                          ; $4b3d: $7f
	dec [hl]                                         ; $4b3e: $35
	ld l, [hl]                                       ; $4b3f: $6e
	ld [$0048], a                                    ; $4b40: $ea $48 $00
	nop                                              ; $4b43: $00
	rst $38                                          ; $4b44: $ff
	ld a, a                                          ; $4b45: $7f
	ld a, $32                                        ; $4b46: $3e $32
	ld l, a                                          ; $4b48: $6f
	inc b                                            ; $4b49: $04
	nop                                              ; $4b4a: $00
	nop                                              ; $4b4b: $00
	rst $38                                          ; $4b4c: $ff
	ld a, a                                          ; $4b4d: $7f
	db $dd                                           ; $4b4e: $dd
	cpl                                              ; $4b4f: $2f
	ld [$0048], a                                    ; $4b50: $ea $48 $00
	nop                                              ; $4b53: $00
	rst $38                                          ; $4b54: $ff
	ld a, a                                          ; $4b55: $7f
	cp h                                             ; $4b56: $bc
	ld [hl+], a                                      ; $4b57: $22
	ld l, a                                          ; $4b58: $6f
	inc b                                            ; $4b59: $04
	nop                                              ; $4b5a: $00
	nop                                              ; $4b5b: $00
	db $10                                           ; $4b5c: $10
	dec de                                           ; $4b5d: $1b
	cpl                                              ; $4b5e: $2f
	cp $ff                                           ; $4b5f: $fe $ff
	ld a, a                                          ; $4b61: $7f
	ld a, $32                                        ; $4b62: $3e $32
	ld [$0048], a                                    ; $4b64: $ea $48 $00
	nop                                              ; $4b67: $00
	rst $38                                          ; $4b68: $ff
	ld a, a                                          ; $4b69: $7f
	dec [hl]                                         ; $4b6a: $35
	ld l, [hl]                                       ; $4b6b: $6e
	ld [$0048], a                                    ; $4b6c: $ea $48 $00
	nop                                              ; $4b6f: $00
	rst $38                                          ; $4b70: $ff
	ld a, a                                          ; $4b71: $7f
	ld e, a                                          ; $4b72: $5f
	ld [hl], $e3                                     ; $4b73: $36 $e3
	ld a, l                                          ; $4b75: $7d
	nop                                              ; $4b76: $00
	nop                                              ; $4b77: $00
	rst $38                                          ; $4b78: $ff
	ld a, a                                          ; $4b79: $7f
	rst $38                                          ; $4b7a: $ff
	ld a, a                                          ; $4b7b: $7f
	ld e, a                                          ; $4b7c: $5f
	ld [hl], $00                                     ; $4b7d: $36 $00
	nop                                              ; $4b7f: $00
	rst $38                                          ; $4b80: $ff
	ld a, a                                          ; $4b81: $7f
	dec h                                            ; $4b82: $25
	ld a, a                                          ; $4b83: $7f
	db $e3                                           ; $4b84: $e3
	ld a, l                                          ; $4b85: $7d
	nop                                              ; $4b86: $00
	nop                                              ; $4b87: $00
	rst $38                                          ; $4b88: $ff
	ld a, a                                          ; $4b89: $7f
	ld a, a                                          ; $4b8a: $7f
	dec a                                            ; $4b8b: $3d
	ld [$0048], a                                    ; $4b8c: $ea $48 $00
	nop                                              ; $4b8f: $00
	rst $38                                          ; $4b90: $ff
	ld a, a                                          ; $4b91: $7f
	dec h                                            ; $4b92: $25
	ld a, a                                          ; $4b93: $7f
	ld h, [hl]                                       ; $4b94: $66
	ld h, l                                          ; $4b95: $65
	nop                                              ; $4b96: $00
	nop                                              ; $4b97: $00
	jr nc, jr_02c_4bb5                               ; $4b98: $30 $1b

	cpl                                              ; $4b9a: $2f
	ld hl, sp-$01                                    ; $4b9b: $f8 $ff
	ld a, a                                          ; $4b9d: $7f
	ld a, $32                                        ; $4b9e: $3e $32
	ld [$0048], a                                    ; $4ba0: $ea $48 $00
	nop                                              ; $4ba3: $00
	rst $38                                          ; $4ba4: $ff
	ld a, a                                          ; $4ba5: $7f
	dec [hl]                                         ; $4ba6: $35
	ld l, [hl]                                       ; $4ba7: $6e
	ld [$0048], a                                    ; $4ba8: $ea $48 $00
	nop                                              ; $4bab: $00
	rst $38                                          ; $4bac: $ff
	ld a, a                                          ; $4bad: $7f
	rst $38                                          ; $4bae: $ff
	scf                                              ; $4baf: $37
	ld a, $32                                        ; $4bb0: $3e $32
	nop                                              ; $4bb2: $00
	nop                                              ; $4bb3: $00
	rst $38                                          ; $4bb4: $ff

jr_02c_4bb5:
	ld a, a                                          ; $4bb5: $7f
	rst $38                                          ; $4bb6: $ff
	ld a, a                                          ; $4bb7: $7f
	ld a, $32                                        ; $4bb8: $3e $32
	nop                                              ; $4bba: $00
	nop                                              ; $4bbb: $00
	rst $38                                          ; $4bbc: $ff
	ld a, a                                          ; $4bbd: $7f
	ld a, $32                                        ; $4bbe: $3e $32
	ld [bc], a                                       ; $4bc0: $02
	ld a, a                                          ; $4bc1: $7f
	nop                                              ; $4bc2: $00
	nop                                              ; $4bc3: $00
	jr nc, jr_02c_4be1                               ; $4bc4: $30 $1b

	cpl                                              ; $4bc6: $2f
	ldh a, [rIE]                                     ; $4bc7: $f0 $ff
	ld a, a                                          ; $4bc9: $7f
	ld a, $32                                        ; $4bca: $3e $32
	ld [$0048], a                                    ; $4bcc: $ea $48 $00
	nop                                              ; $4bcf: $00
	rst $38                                          ; $4bd0: $ff
	ld a, a                                          ; $4bd1: $7f
	dec [hl]                                         ; $4bd2: $35
	ld l, [hl]                                       ; $4bd3: $6e
	ld [$0048], a                                    ; $4bd4: $ea $48 $00
	nop                                              ; $4bd7: $00
	rst $38                                          ; $4bd8: $ff
	ld a, a                                          ; $4bd9: $7f
	rst $38                                          ; $4bda: $ff
	scf                                              ; $4bdb: $37
	ld a, $32                                        ; $4bdc: $3e $32
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	rst $38                                          ; $4be0: $ff

jr_02c_4be1:
	ld a, a                                          ; $4be1: $7f
	rst $38                                          ; $4be2: $ff
	ld a, a                                          ; $4be3: $7f
	ld a, $32                                        ; $4be4: $3e $32
	nop                                              ; $4be6: $00
	nop                                              ; $4be7: $00
	inc bc                                           ; $4be8: $03
	dec de                                           ; $4be9: $1b
	dec hl                                           ; $4bea: $2b
	rst AddAOntoHL                                          ; $4beb: $ef
	rst $38                                          ; $4bec: $ff
	ld a, a                                          ; $4bed: $7f
	sub e                                            ; $4bee: $93
	ld [hl], l                                       ; $4bef: $75
	ld c, $74                                        ; $4bf0: $0e $74
	nop                                              ; $4bf2: $00
	nop                                              ; $4bf3: $00
	rst $38                                          ; $4bf4: $ff
	ld a, a                                          ; $4bf5: $7f
	rst $18                                          ; $4bf6: $df
	ld c, l                                          ; $4bf7: $4d
	ld c, $74                                        ; $4bf8: $0e $74
	nop                                              ; $4bfa: $00
	nop                                              ; $4bfb: $00
	ld h, d                                          ; $4bfc: $62
	ld a, [hl]                                       ; $4bfd: $7e
	rra                                              ; $4bfe: $1f
	ld e, [hl]                                       ; $4bff: $5e
	ld c, $74                                        ; $4c00: $0e $74
	nop                                              ; $4c02: $00
	nop                                              ; $4c03: $00
	rst $38                                          ; $4c04: $ff
	ld a, a                                          ; $4c05: $7f
	ld h, d                                          ; $4c06: $62
	ld a, [hl]                                       ; $4c07: $7e
	ld c, $74                                        ; $4c08: $0e $74
	nop                                              ; $4c0a: $00
	nop                                              ; $4c0b: $00
	rst $38                                          ; $4c0c: $ff
	ld a, a                                          ; $4c0d: $7f
	rra                                              ; $4c0e: $1f
	ld e, [hl]                                       ; $4c0f: $5e
	sub e                                            ; $4c10: $93
	ld [hl], l                                       ; $4c11: $75
	nop                                              ; $4c12: $00
	nop                                              ; $4c13: $00
	rst $38                                          ; $4c14: $ff
	ld a, a                                          ; $4c15: $7f
	rra                                              ; $4c16: $1f
	ld e, [hl]                                       ; $4c17: $5e
	ld h, d                                          ; $4c18: $62
	ld a, [hl]                                       ; $4c19: $7e
	nop                                              ; $4c1a: $00
	nop                                              ; $4c1b: $00
	rst $38                                          ; $4c1c: $ff
	ld a, a                                          ; $4c1d: $7f
	rra                                              ; $4c1e: $1f
	ld e, [hl]                                       ; $4c1f: $5e
	rst $38                                          ; $4c20: $ff
	ld a, a                                          ; $4c21: $7f
	nop                                              ; $4c22: $00
	nop                                              ; $4c23: $00
	inc bc                                           ; $4c24: $03
	dec de                                           ; $4c25: $1b
	dec hl                                           ; $4c26: $2b
	ei                                               ; $4c27: $fb
	rst $38                                          ; $4c28: $ff
	ld a, a                                          ; $4c29: $7f
	sub e                                            ; $4c2a: $93
	ld [hl], l                                       ; $4c2b: $75
	ld c, $74                                        ; $4c2c: $0e $74
	nop                                              ; $4c2e: $00
	nop                                              ; $4c2f: $00
	rst $38                                          ; $4c30: $ff
	ld a, a                                          ; $4c31: $7f
	rst $18                                          ; $4c32: $df
	ld c, l                                          ; $4c33: $4d
	ld c, $74                                        ; $4c34: $0e $74
	nop                                              ; $4c36: $00
	nop                                              ; $4c37: $00
	rst $38                                          ; $4c38: $ff
	ld a, a                                          ; $4c39: $7f
	rst $18                                          ; $4c3a: $df
	ld c, l                                          ; $4c3b: $4d
	ld c, $74                                        ; $4c3c: $0e $74
	nop                                              ; $4c3e: $00
	nop                                              ; $4c3f: $00
	rst $38                                          ; $4c40: $ff
	ld a, a                                          ; $4c41: $7f
	ld h, d                                          ; $4c42: $62
	ld a, [hl]                                       ; $4c43: $7e
	nop                                              ; $4c44: $00
	ld h, c                                          ; $4c45: $61
	nop                                              ; $4c46: $00
	nop                                              ; $4c47: $00
	rst $38                                          ; $4c48: $ff
	ld a, a                                          ; $4c49: $7f
	ld h, d                                          ; $4c4a: $62
	ld a, [hl]                                       ; $4c4b: $7e
	ld c, $74                                        ; $4c4c: $0e $74
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	rst $38                                          ; $4c50: $ff
	ld a, a                                          ; $4c51: $7f
	rst $18                                          ; $4c52: $df
	ld c, l                                          ; $4c53: $4d
	ld h, d                                          ; $4c54: $62
	ld a, [hl]                                       ; $4c55: $7e
	nop                                              ; $4c56: $00
	nop                                              ; $4c57: $00
	rst $38                                          ; $4c58: $ff
	ld a, a                                          ; $4c59: $7f
	rst $18                                          ; $4c5a: $df
	ld c, l                                          ; $4c5b: $4d
	sub e                                            ; $4c5c: $93
	ld [hl], l                                       ; $4c5d: $75
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	ld [bc], a                                       ; $4c60: $02
	dec de                                           ; $4c61: $1b
	dec sp                                           ; $4c62: $3b
	set 7, a                                         ; $4c63: $cb $ff
	ld a, a                                          ; $4c65: $7f
	sub e                                            ; $4c66: $93
	ld [hl], l                                       ; $4c67: $75
	ld c, $74                                        ; $4c68: $0e $74
	nop                                              ; $4c6a: $00
	nop                                              ; $4c6b: $00
	rst $38                                          ; $4c6c: $ff
	ld a, a                                          ; $4c6d: $7f
	rst $18                                          ; $4c6e: $df
	ld c, l                                          ; $4c6f: $4d
	ld c, $74                                        ; $4c70: $0e $74
	nop                                              ; $4c72: $00
	nop                                              ; $4c73: $00
	rst $38                                          ; $4c74: $ff
	ld a, a                                          ; $4c75: $7f
	ld c, h                                          ; $4c76: $4c

Jump_02c_4c77:
	ld l, d                                          ; $4c77: $6a
	ld c, $74                                        ; $4c78: $0e $74
	nop                                              ; $4c7a: $00
	nop                                              ; $4c7b: $00
	jp nc, $df77                                     ; $4c7c: $d2 $77 $df

	ld c, l                                          ; $4c7f: $4d
	rst $38                                          ; $4c80: $ff
	ld a, a                                          ; $4c81: $7f
	nop                                              ; $4c82: $00
	nop                                              ; $4c83: $00
	jp nc, Jump_02c_4c77                             ; $4c84: $d2 $77 $4c

	ld l, d                                          ; $4c87: $6a
	ld c, $74                                        ; $4c88: $0e $74
	nop                                              ; $4c8a: $00
	nop                                              ; $4c8b: $00
	inc sp                                           ; $4c8c: $33
	dec de                                           ; $4c8d: $1b
	cpl                                              ; $4c8e: $2f
	db $db                                           ; $4c8f: $db
	rst $38                                          ; $4c90: $ff
	ld a, a                                          ; $4c91: $7f
	sub e                                            ; $4c92: $93
	ld [hl], l                                       ; $4c93: $75
	ld c, $74                                        ; $4c94: $0e $74
	nop                                              ; $4c96: $00
	nop                                              ; $4c97: $00
	rst $38                                          ; $4c98: $ff
	ld a, a                                          ; $4c99: $7f
	rst $18                                          ; $4c9a: $df
	ld c, l                                          ; $4c9b: $4d
	ld c, $74                                        ; $4c9c: $0e $74
	nop                                              ; $4c9e: $00
	nop                                              ; $4c9f: $00
	rst $38                                          ; $4ca0: $ff
	ld a, a                                          ; $4ca1: $7f
	rst $38                                          ; $4ca2: $ff
	ld a, a                                          ; $4ca3: $7f
	sub e                                            ; $4ca4: $93
	ld [hl], l                                       ; $4ca5: $75
	nop                                              ; $4ca6: $00
	nop                                              ; $4ca7: $00
	rst $38                                          ; $4ca8: $ff
	ld a, a                                          ; $4ca9: $7f
	daa                                              ; $4caa: $27
	ld [hl], e                                       ; $4cab: $73
	ld c, $74                                        ; $4cac: $0e $74
	nop                                              ; $4cae: $00
	nop                                              ; $4caf: $00
	rst $38                                          ; $4cb0: $ff
	ld a, a                                          ; $4cb1: $7f
	rst $38                                          ; $4cb2: $ff
	ld a, a                                          ; $4cb3: $7f
	rst $18                                          ; $4cb4: $df
	ld c, l                                          ; $4cb5: $4d
	nop                                              ; $4cb6: $00
	nop                                              ; $4cb7: $00
	rst $38                                          ; $4cb8: $ff
	ld a, a                                          ; $4cb9: $7f
	rst $18                                          ; $4cba: $df
	ld c, l                                          ; $4cbb: $4d
	daa                                              ; $4cbc: $27
	ld [hl], e                                       ; $4cbd: $73
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	ld d, b                                          ; $4cc0: $50
	dec de                                           ; $4cc1: $1b
	cpl                                              ; $4cc2: $2f
	rst $38                                          ; $4cc3: $ff
	rst $38                                          ; $4cc4: $ff
	ld a, a                                          ; $4cc5: $7f
	sub e                                            ; $4cc6: $93
	ld [hl], l                                       ; $4cc7: $75
	ld c, $74                                        ; $4cc8: $0e $74
	nop                                              ; $4cca: $00
	nop                                              ; $4ccb: $00
	rst $38                                          ; $4ccc: $ff
	ld a, a                                          ; $4ccd: $7f
	sbc a                                            ; $4cce: $9f
	ld [bc], a                                       ; $4ccf: $02
	rst $18                                          ; $4cd0: $df
	ld c, l                                          ; $4cd1: $4d
	nop                                              ; $4cd2: $00
	nop                                              ; $4cd3: $00
	rst $38                                          ; $4cd4: $ff
	ld a, a                                          ; $4cd5: $7f
	rst $18                                          ; $4cd6: $df
	ld c, l                                          ; $4cd7: $4d
	ld c, $74                                        ; $4cd8: $0e $74
	nop                                              ; $4cda: $00
	nop                                              ; $4cdb: $00
	rst $38                                          ; $4cdc: $ff
	ld a, a                                          ; $4cdd: $7f
	rst $38                                          ; $4cde: $ff
	ld a, a                                          ; $4cdf: $7f
	rst $18                                          ; $4ce0: $df
	ld c, l                                          ; $4ce1: $4d
	nop                                              ; $4ce2: $00
	nop                                              ; $4ce3: $00
	rst $38                                          ; $4ce4: $ff
	ld a, a                                          ; $4ce5: $7f
	ld d, $66                                        ; $4ce6: $16 $66
	ld c, h                                          ; $4ce8: $4c
	add hl, sp                                       ; $4ce9: $39
	nop                                              ; $4cea: $00
	nop                                              ; $4ceb: $00
	rst $38                                          ; $4cec: $ff
	ld a, a                                          ; $4ced: $7f
	rst $18                                          ; $4cee: $df
	ld c, l                                          ; $4cef: $4d
	ld c, h                                          ; $4cf0: $4c
	add hl, sp                                       ; $4cf1: $39
	nop                                              ; $4cf2: $00
	nop                                              ; $4cf3: $00
	sbc a                                            ; $4cf4: $9f
	ld [bc], a                                       ; $4cf5: $02
	rst $18                                          ; $4cf6: $df
	ld c, l                                          ; $4cf7: $4d
	ld c, h                                          ; $4cf8: $4c
	add hl, sp                                       ; $4cf9: $39
	nop                                              ; $4cfa: $00
	nop                                              ; $4cfb: $00
	sbc a                                            ; $4cfc: $9f
	ld [bc], a                                       ; $4cfd: $02
	sub e                                            ; $4cfe: $93
	ld [hl], l                                       ; $4cff: $75
	ld c, h                                          ; $4d00: $4c
	add hl, sp                                       ; $4d01: $39
	nop                                              ; $4d02: $00
	nop                                              ; $4d03: $00
	ld [bc], a                                       ; $4d04: $02
	dec de                                           ; $4d05: $1b
	rla                                              ; $4d06: $17
	cp d                                             ; $4d07: $ba
	rst $38                                          ; $4d08: $ff
	ld a, a                                          ; $4d09: $7f
	sub e                                            ; $4d0a: $93
	ld [hl], l                                       ; $4d0b: $75
	ld c, $74                                        ; $4d0c: $0e $74
	nop                                              ; $4d0e: $00
	nop                                              ; $4d0f: $00
	rst $38                                          ; $4d10: $ff
	ld a, a                                          ; $4d11: $7f
	rst $18                                          ; $4d12: $df
	ld c, l                                          ; $4d13: $4d
	ld c, $74                                        ; $4d14: $0e $74
	nop                                              ; $4d16: $00
	nop                                              ; $4d17: $00
	rst $38                                          ; $4d18: $ff
	ld a, a                                          ; $4d19: $7f
	rst $18                                          ; $4d1a: $df
	ld c, l                                          ; $4d1b: $4d
	nop                                              ; $4d1c: $00
	ld d, d                                          ; $4d1d: $52
	nop                                              ; $4d1e: $00
	nop                                              ; $4d1f: $00
	rst $38                                          ; $4d20: $ff
	ld a, a                                          ; $4d21: $7f
	jr nc, jr_02c_4d97                               ; $4d22: $30 $73

	nop                                              ; $4d24: $00
	ld d, d                                          ; $4d25: $52
	nop                                              ; $4d26: $00
	nop                                              ; $4d27: $00
	rst $38                                          ; $4d28: $ff
	ld a, a                                          ; $4d29: $7f
	nop                                              ; $4d2a: $00
	ld d, d                                          ; $4d2b: $52
	ld c, $74                                        ; $4d2c: $0e $74
	nop                                              ; $4d2e: $00
	nop                                              ; $4d2f: $00
	nop                                              ; $4d30: $00
	dec de                                           ; $4d31: $1b
	nop                                              ; $4d32: $00
	di                                               ; $4d33: $f3
	rst $38                                          ; $4d34: $ff
	ld a, a                                          ; $4d35: $7f
	sub e                                            ; $4d36: $93
	ld [hl], l                                       ; $4d37: $75
	ld c, $74                                        ; $4d38: $0e $74
	nop                                              ; $4d3a: $00
	nop                                              ; $4d3b: $00
	rst $38                                          ; $4d3c: $ff
	ld a, a                                          ; $4d3d: $7f
	rst $18                                          ; $4d3e: $df
	ld c, l                                          ; $4d3f: $4d
	ld c, $74                                        ; $4d40: $0e $74
	nop                                              ; $4d42: $00
	nop                                              ; $4d43: $00
	rst $38                                          ; $4d44: $ff
	ld a, a                                          ; $4d45: $7f
	rst $38                                          ; $4d46: $ff
	ld a, a                                          ; $4d47: $7f
	rst $38                                          ; $4d48: $ff
	ld a, a                                          ; $4d49: $7f
	nop                                              ; $4d4a: $00
	nop                                              ; $4d4b: $00
	rst $38                                          ; $4d4c: $ff
	ld a, a                                          ; $4d4d: $7f
	sbc a                                            ; $4d4e: $9f
	ld [bc], a                                       ; $4d4f: $02
	and [hl]                                         ; $4d50: $a6
	ld a, h                                          ; $4d51: $7c
	nop                                              ; $4d52: $00
	nop                                              ; $4d53: $00
	rst $38                                          ; $4d54: $ff
	ld a, a                                          ; $4d55: $7f
	rst $18                                          ; $4d56: $df
	ld c, l                                          ; $4d57: $4d
	and [hl]                                         ; $4d58: $a6
	ld a, h                                          ; $4d59: $7c
	nop                                              ; $4d5a: $00
	nop                                              ; $4d5b: $00
	rst $38                                          ; $4d5c: $ff
	ld a, a                                          ; $4d5d: $7f
	add hl, hl                                       ; $4d5e: $29
	ld b, e                                          ; $4d5f: $43
	ld c, $74                                        ; $4d60: $0e $74
	nop                                              ; $4d62: $00
	nop                                              ; $4d63: $00
	inc b                                            ; $4d64: $04
	dec de                                           ; $4d65: $1b
	rla                                              ; $4d66: $17
	rst $38                                          ; $4d67: $ff
	rst $38                                          ; $4d68: $ff
	ld a, a                                          ; $4d69: $7f
	sub e                                            ; $4d6a: $93
	ld [hl], l                                       ; $4d6b: $75
	ld c, $74                                        ; $4d6c: $0e $74
	nop                                              ; $4d6e: $00
	nop                                              ; $4d6f: $00
	rst $38                                          ; $4d70: $ff
	ld a, a                                          ; $4d71: $7f
	ld a, a                                          ; $4d72: $7f
	ld [bc], a                                       ; $4d73: $02
	jp hl                                            ; $4d74: $e9


	inc h                                            ; $4d75: $24
	nop                                              ; $4d76: $00
	nop                                              ; $4d77: $00
	rst $38                                          ; $4d78: $ff
	ld a, a                                          ; $4d79: $7f
	rst $18                                          ; $4d7a: $df
	ld c, l                                          ; $4d7b: $4d
	jp hl                                            ; $4d7c: $e9


	inc h                                            ; $4d7d: $24
	nop                                              ; $4d7e: $00
	nop                                              ; $4d7f: $00
	rst $38                                          ; $4d80: $ff
	ld a, a                                          ; $4d81: $7f
	ld a, a                                          ; $4d82: $7f
	ld [bc], a                                       ; $4d83: $02
	jp hl                                            ; $4d84: $e9


	inc h                                            ; $4d85: $24
	nop                                              ; $4d86: $00
	nop                                              ; $4d87: $00
	rst $38                                          ; $4d88: $ff
	ld a, a                                          ; $4d89: $7f
	rst $18                                          ; $4d8a: $df
	ld c, l                                          ; $4d8b: $4d
	ld c, $74                                        ; $4d8c: $0e $74
	nop                                              ; $4d8e: $00
	nop                                              ; $4d8f: $00
	rst $38                                          ; $4d90: $ff
	ld a, a                                          ; $4d91: $7f
	ld c, $74                                        ; $4d92: $0e $74
	jp hl                                            ; $4d94: $e9


	inc h                                            ; $4d95: $24
	nop                                              ; $4d96: $00

jr_02c_4d97:
	nop                                              ; $4d97: $00
	rst $38                                          ; $4d98: $ff
	ld a, a                                          ; $4d99: $7f
	rst $18                                          ; $4d9a: $df
	ld c, l                                          ; $4d9b: $4d
	ld c, $74                                        ; $4d9c: $0e $74
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	rst $38                                          ; $4da0: $ff
	ld a, a                                          ; $4da1: $7f
	sbc b                                            ; $4da2: $98
	ld c, c                                          ; $4da3: $49
	jp hl                                            ; $4da4: $e9


	inc h                                            ; $4da5: $24
	nop                                              ; $4da6: $00
	nop                                              ; $4da7: $00
	inc bc                                           ; $4da8: $03
	dec de                                           ; $4da9: $1b
	cpl                                              ; $4daa: $2f
	ei                                               ; $4dab: $fb
	rst $38                                          ; $4dac: $ff
	ld a, a                                          ; $4dad: $7f
	sub e                                            ; $4dae: $93
	ld [hl], l                                       ; $4daf: $75
	ld c, $74                                        ; $4db0: $0e $74
	nop                                              ; $4db2: $00
	nop                                              ; $4db3: $00
	rst $38                                          ; $4db4: $ff
	ld a, a                                          ; $4db5: $7f
	rst $18                                          ; $4db6: $df
	ld c, l                                          ; $4db7: $4d
	ld c, $74                                        ; $4db8: $0e $74
	nop                                              ; $4dba: $00
	nop                                              ; $4dbb: $00
	ld e, l                                          ; $4dbc: $5d
	ld [de], a                                       ; $4dbd: $12
	rla                                              ; $4dbe: $17
	ld bc, $1410                                     ; $4dbf: $01 $10 $14
	nop                                              ; $4dc2: $00
	nop                                              ; $4dc3: $00
	ld e, l                                          ; $4dc4: $5d
	ld [de], a                                       ; $4dc5: $12
	rla                                              ; $4dc6: $17
	ld bc, $740e                                     ; $4dc7: $01 $0e $74
	nop                                              ; $4dca: $00
	nop                                              ; $4dcb: $00
	ld e, l                                          ; $4dcc: $5d
	ld [de], a                                       ; $4dcd: $12
	ccf                                              ; $4dce: $3f
	jr nz, jr_02c_4de1                               ; $4dcf: $20 $10

	inc d                                            ; $4dd1: $14
	nop                                              ; $4dd2: $00
	nop                                              ; $4dd3: $00
	rst $38                                          ; $4dd4: $ff
	ld a, a                                          ; $4dd5: $7f
	ld e, l                                          ; $4dd6: $5d
	ld [de], a                                       ; $4dd7: $12
	rla                                              ; $4dd8: $17
	ld bc, $0000                                     ; $4dd9: $01 $00 $00
	rst $38                                          ; $4ddc: $ff
	ld a, a                                          ; $4ddd: $7f
	ld e, l                                          ; $4dde: $5d
	ld [de], a                                       ; $4ddf: $12
	rst $18                                          ; $4de0: $df

jr_02c_4de1:
	ld c, l                                          ; $4de1: $4d
	nop                                              ; $4de2: $00
	nop                                              ; $4de3: $00
	inc b                                            ; $4de4: $04
	dec de                                           ; $4de5: $1b
	dec sp                                           ; $4de6: $3b
	xor $ff                                          ; $4de7: $ee $ff
	ld a, a                                          ; $4de9: $7f
	sub e                                            ; $4dea: $93
	ld [hl], l                                       ; $4deb: $75
	ld c, $74                                        ; $4dec: $0e $74
	nop                                              ; $4dee: $00
	nop                                              ; $4def: $00
	rst $38                                          ; $4df0: $ff
	ld a, a                                          ; $4df1: $7f
	rst $18                                          ; $4df2: $df
	ld c, l                                          ; $4df3: $4d
	ld c, $74                                        ; $4df4: $0e $74
	nop                                              ; $4df6: $00
	nop                                              ; $4df7: $00
	rst $38                                          ; $4df8: $ff
	ld a, a                                          ; $4df9: $7f
	ldh a, [$0c]                                     ; $4dfa: $f0 $0c
	adc d                                            ; $4dfc: $8a
	inc b                                            ; $4dfd: $04
	nop                                              ; $4dfe: $00
	nop                                              ; $4dff: $00
	ld e, l                                          ; $4e00: $5d
	ld [de], a                                       ; $4e01: $12
	ldh a, [$0c]                                     ; $4e02: $f0 $0c
	ld c, $74                                        ; $4e04: $0e $74
	nop                                              ; $4e06: $00
	nop                                              ; $4e07: $00
	ld e, l                                          ; $4e08: $5d
	ld [de], a                                       ; $4e09: $12
	rst $18                                          ; $4e0a: $df
	ld c, l                                          ; $4e0b: $4d
	rst $38                                          ; $4e0c: $ff
	ld a, a                                          ; $4e0d: $7f
	nop                                              ; $4e0e: $00
	nop                                              ; $4e0f: $00
	rst $38                                          ; $4e10: $ff
	ld a, a                                          ; $4e11: $7f
	rst $18                                          ; $4e12: $df
	ld c, l                                          ; $4e13: $4d
	adc d                                            ; $4e14: $8a
	inc b                                            ; $4e15: $04
	nop                                              ; $4e16: $00
	nop                                              ; $4e17: $00
	ld [$3b1b], sp                                   ; $4e18: $08 $1b $3b
	rst $38                                          ; $4e1b: $ff
	rst $38                                          ; $4e1c: $ff
	ld a, a                                          ; $4e1d: $7f
	sub e                                            ; $4e1e: $93
	ld [hl], l                                       ; $4e1f: $75
	ld c, $74                                        ; $4e20: $0e $74
	nop                                              ; $4e22: $00
	nop                                              ; $4e23: $00
	rst $38                                          ; $4e24: $ff
	ld a, a                                          ; $4e25: $7f
	rst $18                                          ; $4e26: $df
	ld c, l                                          ; $4e27: $4d
	ld c, $74                                        ; $4e28: $0e $74
	nop                                              ; $4e2a: $00
	nop                                              ; $4e2b: $00
	rst $38                                          ; $4e2c: $ff
	ld a, a                                          ; $4e2d: $7f
	rst $18                                          ; $4e2e: $df
	ld c, l                                          ; $4e2f: $4d
	jp $007d                                         ; $4e30: $c3 $7d $00


	nop                                              ; $4e33: $00
	rst $38                                          ; $4e34: $ff
	ld a, a                                          ; $4e35: $7f
	sub e                                            ; $4e36: $93
	ld [hl], l                                       ; $4e37: $75
	ld e, $10                                        ; $4e38: $1e $10
	nop                                              ; $4e3a: $00
	nop                                              ; $4e3b: $00
	rst $38                                          ; $4e3c: $ff
	ld a, a                                          ; $4e3d: $7f
	inc c                                            ; $4e3e: $0c
	ld a, a                                          ; $4e3f: $7f
	rst $38                                          ; $4e40: $ff
	ld a, a                                          ; $4e41: $7f
	nop                                              ; $4e42: $00
	nop                                              ; $4e43: $00
	rst $38                                          ; $4e44: $ff
	ld a, a                                          ; $4e45: $7f
	rst $18                                          ; $4e46: $df
	ld c, l                                          ; $4e47: $4d
	ld c, $74                                        ; $4e48: $0e $74
	nop                                              ; $4e4a: $00
	nop                                              ; $4e4b: $00
	rst $38                                          ; $4e4c: $ff
	ld a, a                                          ; $4e4d: $7f
	rst $18                                          ; $4e4e: $df
	ld c, l                                          ; $4e4f: $4d
	jp $007d                                         ; $4e50: $c3 $7d $00


	nop                                              ; $4e53: $00
	rst $38                                          ; $4e54: $ff
	ld a, a                                          ; $4e55: $7f
	inc c                                            ; $4e56: $0c
	ld a, a                                          ; $4e57: $7f
	jp $007d                                         ; $4e58: $c3 $7d $00


	nop                                              ; $4e5b: $00
	rlca                                             ; $4e5c: $07
	dec de                                           ; $4e5d: $1b
	cpl                                              ; $4e5e: $2f
	rst GetHLinHL                                          ; $4e5f: $cf
	rst $38                                          ; $4e60: $ff
	ld a, a                                          ; $4e61: $7f
	sub e                                            ; $4e62: $93
	ld [hl], l                                       ; $4e63: $75
	ld c, $74                                        ; $4e64: $0e $74
	nop                                              ; $4e66: $00
	nop                                              ; $4e67: $00
	rst $38                                          ; $4e68: $ff
	ld a, a                                          ; $4e69: $7f
	rst $18                                          ; $4e6a: $df
	ld c, l                                          ; $4e6b: $4d
	ld c, $74                                        ; $4e6c: $0e $74
	nop                                              ; $4e6e: $00
	nop                                              ; $4e6f: $00
	rst $38                                          ; $4e70: $ff
	ld a, a                                          ; $4e71: $7f
	pop af                                           ; $4e72: $f1
	ld b, a                                          ; $4e73: $47
	nop                                              ; $4e74: $00
	ld [hl-], a                                      ; $4e75: $32
	nop                                              ; $4e76: $00
	nop                                              ; $4e77: $00
	rst $38                                          ; $4e78: $ff
	ld a, a                                          ; $4e79: $7f
	rst $38                                          ; $4e7a: $ff
	ld a, a                                          ; $4e7b: $7f
	rst $18                                          ; $4e7c: $df
	ld c, l                                          ; $4e7d: $4d
	nop                                              ; $4e7e: $00
	nop                                              ; $4e7f: $00
	rst $38                                          ; $4e80: $ff
	ld a, a                                          ; $4e81: $7f
	rst $38                                          ; $4e82: $ff
	ld a, a                                          ; $4e83: $7f
	rst $38                                          ; $4e84: $ff
	ld a, a                                          ; $4e85: $7f
	nop                                              ; $4e86: $00
	nop                                              ; $4e87: $00
	rst $38                                          ; $4e88: $ff
	ld a, a                                          ; $4e89: $7f
	rst $38                                          ; $4e8a: $ff
	ld a, a                                          ; $4e8b: $7f
	pop af                                           ; $4e8c: $f1
	ld b, a                                          ; $4e8d: $47
	nop                                              ; $4e8e: $00
	nop                                              ; $4e8f: $00
	ld [bc], a                                       ; $4e90: $02
	dec de                                           ; $4e91: $1b
	cpl                                              ; $4e92: $2f
	ld a, [$7fff]                                    ; $4e93: $fa $ff $7f
	sbc a                                            ; $4e96: $9f
	ld b, l                                          ; $4e97: $45
	add hl, de                                       ; $4e98: $19
	nop                                              ; $4e99: $00
	nop                                              ; $4e9a: $00
	nop                                              ; $4e9b: $00
	rst $38                                          ; $4e9c: $ff
	ld a, a                                          ; $4e9d: $7f
	sbc a                                            ; $4e9e: $9f
	ld b, l                                          ; $4e9f: $45
	add hl, de                                       ; $4ea0: $19
	nop                                              ; $4ea1: $00
	nop                                              ; $4ea2: $00
	nop                                              ; $4ea3: $00
	rst $38                                          ; $4ea4: $ff
	ld a, a                                          ; $4ea5: $7f
	ld h, d                                          ; $4ea6: $62
	ld a, [hl]                                       ; $4ea7: $7e
	sbc a                                            ; $4ea8: $9f
	ld b, l                                          ; $4ea9: $45
	nop                                              ; $4eaa: $00
	nop                                              ; $4eab: $00
	rst $38                                          ; $4eac: $ff
	ld a, a                                          ; $4ead: $7f
	ld h, d                                          ; $4eae: $62
	ld a, [hl]                                       ; $4eaf: $7e
	add hl, de                                       ; $4eb0: $19
	nop                                              ; $4eb1: $00
	nop                                              ; $4eb2: $00
	nop                                              ; $4eb3: $00
	sbc a                                            ; $4eb4: $9f
	ld b, l                                          ; $4eb5: $45
	ld h, d                                          ; $4eb6: $62
	ld a, [hl]                                       ; $4eb7: $7e
	add hl, de                                       ; $4eb8: $19
	nop                                              ; $4eb9: $00
	nop                                              ; $4eba: $00
	nop                                              ; $4ebb: $00
	rst $38                                          ; $4ebc: $ff
	ld a, a                                          ; $4ebd: $7f
	rst $38                                          ; $4ebe: $ff
	ld a, a                                          ; $4ebf: $7f
	ld h, d                                          ; $4ec0: $62
	ld a, [hl]                                       ; $4ec1: $7e
	nop                                              ; $4ec2: $00
	nop                                              ; $4ec3: $00
	inc bc                                           ; $4ec4: $03
	dec de                                           ; $4ec5: $1b
	rra                                              ; $4ec6: $1f
	di                                               ; $4ec7: $f3
	rst $38                                          ; $4ec8: $ff
	ld a, a                                          ; $4ec9: $7f
	sbc a                                            ; $4eca: $9f
	ld b, l                                          ; $4ecb: $45
	ld h, d                                          ; $4ecc: $62
	ld a, [hl]                                       ; $4ecd: $7e
	nop                                              ; $4ece: $00
	nop                                              ; $4ecf: $00
	rst $38                                          ; $4ed0: $ff
	ld a, a                                          ; $4ed1: $7f
	sbc a                                            ; $4ed2: $9f
	ld b, l                                          ; $4ed3: $45
	add hl, de                                       ; $4ed4: $19
	nop                                              ; $4ed5: $00
	nop                                              ; $4ed6: $00
	nop                                              ; $4ed7: $00
	rst $38                                          ; $4ed8: $ff
	ld a, a                                          ; $4ed9: $7f
	ld h, d                                          ; $4eda: $62
	ld a, [hl]                                       ; $4edb: $7e
	add b                                            ; $4edc: $80
	ld l, c                                          ; $4edd: $69
	nop                                              ; $4ede: $00
	nop                                              ; $4edf: $00
	rst $38                                          ; $4ee0: $ff
	ld a, a                                          ; $4ee1: $7f
	ld h, d                                          ; $4ee2: $62
	ld a, [hl]                                       ; $4ee3: $7e
	add hl, de                                       ; $4ee4: $19
	nop                                              ; $4ee5: $00
	nop                                              ; $4ee6: $00
	nop                                              ; $4ee7: $00
	rst $38                                          ; $4ee8: $ff
	ld a, a                                          ; $4ee9: $7f
	rst $38                                          ; $4eea: $ff
	ld a, a                                          ; $4eeb: $7f
	add hl, de                                       ; $4eec: $19
	nop                                              ; $4eed: $00
	nop                                              ; $4eee: $00
	nop                                              ; $4eef: $00
	rst $38                                          ; $4ef0: $ff
	ld a, a                                          ; $4ef1: $7f
	rst $38                                          ; $4ef2: $ff
	ld a, a                                          ; $4ef3: $7f
	add b                                            ; $4ef4: $80
	ld l, c                                          ; $4ef5: $69
	nop                                              ; $4ef6: $00
	nop                                              ; $4ef7: $00
	dec b                                            ; $4ef8: $05
	daa                                              ; $4ef9: $27
	cpl                                              ; $4efa: $2f
	cp l                                             ; $4efb: $bd
	rst $38                                          ; $4efc: $ff
	ld a, a                                          ; $4efd: $7f
	db $e3                                           ; $4efe: $e3
	ld c, l                                          ; $4eff: $4d
	inc d                                            ; $4f00: $14
	ld h, l                                          ; $4f01: $65
	nop                                              ; $4f02: $00
	nop                                              ; $4f03: $00
	rst $38                                          ; $4f04: $ff
	ld a, a                                          ; $4f05: $7f
	add hl, de                                       ; $4f06: $19
	nop                                              ; $4f07: $00
	sbc a                                            ; $4f08: $9f
	ld b, l                                          ; $4f09: $45
	nop                                              ; $4f0a: $00
	nop                                              ; $4f0b: $00
	rst $38                                          ; $4f0c: $ff
	ld a, a                                          ; $4f0d: $7f
	add hl, de                                       ; $4f0e: $19
	nop                                              ; $4f0f: $00
	inc d                                            ; $4f10: $14
	ld h, l                                          ; $4f11: $65
	nop                                              ; $4f12: $00
	nop                                              ; $4f13: $00
	rst $38                                          ; $4f14: $ff
	ld a, a                                          ; $4f15: $7f
	sub h                                            ; $4f16: $94
	dec d                                            ; $4f17: $15
	inc d                                            ; $4f18: $14
	ld h, l                                          ; $4f19: $65
	nop                                              ; $4f1a: $00
	nop                                              ; $4f1b: $00
	rst $38                                          ; $4f1c: $ff
	ld a, a                                          ; $4f1d: $7f
	sub h                                            ; $4f1e: $94
	dec d                                            ; $4f1f: $15
	add hl, de                                       ; $4f20: $19
	nop                                              ; $4f21: $00
	nop                                              ; $4f22: $00
	nop                                              ; $4f23: $00
	rst $38                                          ; $4f24: $ff
	ld a, a                                          ; $4f25: $7f
	rst $38                                          ; $4f26: $ff
	ld a, a                                          ; $4f27: $7f
	inc d                                            ; $4f28: $14
	ld h, l                                          ; $4f29: $65
	nop                                              ; $4f2a: $00
	nop                                              ; $4f2b: $00
	ld bc, $2f1b                                     ; $4f2c: $01 $1b $2f
	rst $38                                          ; $4f2f: $ff
	rst $38                                          ; $4f30: $ff
	ld a, a                                          ; $4f31: $7f
	sbc a                                            ; $4f32: $9f
	ld b, l                                          ; $4f33: $45
	add hl, de                                       ; $4f34: $19
	nop                                              ; $4f35: $00
	nop                                              ; $4f36: $00
	nop                                              ; $4f37: $00
	rst $38                                          ; $4f38: $ff
	ld a, a                                          ; $4f39: $7f
	sbc a                                            ; $4f3a: $9f
	ld b, l                                          ; $4f3b: $45
	add hl, de                                       ; $4f3c: $19
	nop                                              ; $4f3d: $00
	nop                                              ; $4f3e: $00
	nop                                              ; $4f3f: $00
	rst $38                                          ; $4f40: $ff
	ld a, a                                          ; $4f41: $7f
	ld sp, hl                                        ; $4f42: $f9
	ld h, a                                          ; $4f43: $67
	inc hl                                           ; $4f44: $23
	dec hl                                           ; $4f45: $2b
	nop                                              ; $4f46: $00
	nop                                              ; $4f47: $00
	rst $38                                          ; $4f48: $ff
	ld a, a                                          ; $4f49: $7f
	inc d                                            ; $4f4a: $14
	ld [hl], d                                       ; $4f4b: $72
	add hl, de                                       ; $4f4c: $19
	nop                                              ; $4f4d: $00
	nop                                              ; $4f4e: $00
	nop                                              ; $4f4f: $00
	rst $38                                          ; $4f50: $ff
	ld a, a                                          ; $4f51: $7f
	inc d                                            ; $4f52: $14
	ld [hl], d                                       ; $4f53: $72
	add hl, de                                       ; $4f54: $19
	nop                                              ; $4f55: $00
	nop                                              ; $4f56: $00
	nop                                              ; $4f57: $00
	rst $38                                          ; $4f58: $ff
	ld a, a                                          ; $4f59: $7f
	inc d                                            ; $4f5a: $14
	ld [hl], d                                       ; $4f5b: $72
	add hl, de                                       ; $4f5c: $19
	nop                                              ; $4f5d: $00
	nop                                              ; $4f5e: $00
	nop                                              ; $4f5f: $00
	sbc a                                            ; $4f60: $9f
	ld b, l                                          ; $4f61: $45
	ld sp, hl                                        ; $4f62: $f9
	ld h, a                                          ; $4f63: $67
	add hl, de                                       ; $4f64: $19
	nop                                              ; $4f65: $00
	nop                                              ; $4f66: $00
	nop                                              ; $4f67: $00
	sbc a                                            ; $4f68: $9f
	ld b, l                                          ; $4f69: $45
	rst $38                                          ; $4f6a: $ff
	ld a, a                                          ; $4f6b: $7f
	inc d                                            ; $4f6c: $14
	ld [hl], d                                       ; $4f6d: $72
	nop                                              ; $4f6e: $00
	nop                                              ; $4f6f: $00
	ld [$171b], sp                                   ; $4f70: $08 $1b $17
	db $eb                                           ; $4f73: $eb
	rst $38                                          ; $4f74: $ff
	ld a, a                                          ; $4f75: $7f
	ld a, [bc]                                       ; $4f76: $0a
	ld a, [hl]                                       ; $4f77: $7e
	add hl, de                                       ; $4f78: $19
	nop                                              ; $4f79: $00
	nop                                              ; $4f7a: $00
	nop                                              ; $4f7b: $00
	rst $38                                          ; $4f7c: $ff
	ld a, a                                          ; $4f7d: $7f
	sbc a                                            ; $4f7e: $9f
	ld b, l                                          ; $4f7f: $45
	add hl, de                                       ; $4f80: $19
	nop                                              ; $4f81: $00
	nop                                              ; $4f82: $00
	nop                                              ; $4f83: $00
	rst $38                                          ; $4f84: $ff
	ld a, a                                          ; $4f85: $7f
	ld h, [hl]                                       ; $4f86: $66
	ld a, h                                          ; $4f87: $7c
	inc bc                                           ; $4f88: $03
	ld b, h                                          ; $4f89: $44
	nop                                              ; $4f8a: $00
	nop                                              ; $4f8b: $00
	sbc a                                            ; $4f8c: $9f
	ld b, l                                          ; $4f8d: $45
	add hl, de                                       ; $4f8e: $19
	nop                                              ; $4f8f: $00
	inc bc                                           ; $4f90: $03
	ld b, h                                          ; $4f91: $44
	nop                                              ; $4f92: $00
	nop                                              ; $4f93: $00
	rst $38                                          ; $4f94: $ff
	ld a, a                                          ; $4f95: $7f
	sbc a                                            ; $4f96: $9f
	ld b, l                                          ; $4f97: $45
	ld b, a                                          ; $4f98: $47
	ld a, l                                          ; $4f99: $7d
	nop                                              ; $4f9a: $00
	nop                                              ; $4f9b: $00
	rst $38                                          ; $4f9c: $ff
	ld a, a                                          ; $4f9d: $7f
	ld a, [bc]                                       ; $4f9e: $0a
	ld a, [hl]                                       ; $4f9f: $7e
	ld b, a                                          ; $4fa0: $47
	ld a, l                                          ; $4fa1: $7d
	nop                                              ; $4fa2: $00
	nop                                              ; $4fa3: $00
	ld [$171b], sp                                   ; $4fa4: $08 $1b $17
	ei                                               ; $4fa7: $fb
	rst $38                                          ; $4fa8: $ff
	ld a, a                                          ; $4fa9: $7f
	inc [hl]                                         ; $4faa: $34
	ld a, a                                          ; $4fab: $7f
	dec b                                            ; $4fac: $05
	ld a, [hl]                                       ; $4fad: $7e
	nop                                              ; $4fae: $00
	nop                                              ; $4faf: $00
	rst $38                                          ; $4fb0: $ff
	ld a, a                                          ; $4fb1: $7f
	sbc a                                            ; $4fb2: $9f
	ld b, l                                          ; $4fb3: $45
	add hl, de                                       ; $4fb4: $19
	nop                                              ; $4fb5: $00
	nop                                              ; $4fb6: $00
	nop                                              ; $4fb7: $00
	rst $38                                          ; $4fb8: $ff
	ld a, a                                          ; $4fb9: $7f
	dec l                                            ; $4fba: $2d
	ld c, e                                          ; $4fbb: $4b
	and $25                                          ; $4fbc: $e6 $25
	nop                                              ; $4fbe: $00
	nop                                              ; $4fbf: $00
	rst $38                                          ; $4fc0: $ff
	ld a, a                                          ; $4fc1: $7f
	dec l                                            ; $4fc2: $2d
	ld c, e                                          ; $4fc3: $4b
	inc d                                            ; $4fc4: $14
	ld e, [hl]                                       ; $4fc5: $5e
	nop                                              ; $4fc6: $00
	nop                                              ; $4fc7: $00
	ld [hl], d                                       ; $4fc8: $72
	dec d                                            ; $4fc9: $15
	and $25                                          ; $4fca: $e6 $25
	add hl, de                                       ; $4fcc: $19
	nop                                              ; $4fcd: $00
	nop                                              ; $4fce: $00
	nop                                              ; $4fcf: $00
	rst $38                                          ; $4fd0: $ff
	ld a, a                                          ; $4fd1: $7f
	and $25                                          ; $4fd2: $e6 $25
	add hl, de                                       ; $4fd4: $19
	nop                                              ; $4fd5: $00
	nop                                              ; $4fd6: $00
	nop                                              ; $4fd7: $00
	rst $38                                          ; $4fd8: $ff
	ld a, a                                          ; $4fd9: $7f
	sbc a                                            ; $4fda: $9f
	ld b, l                                          ; $4fdb: $45
	inc d                                            ; $4fdc: $14
	ld e, [hl]                                       ; $4fdd: $5e
	nop                                              ; $4fde: $00
	nop                                              ; $4fdf: $00
	ld [$1f1b], sp                                   ; $4fe0: $08 $1b $1f
	rst $38                                          ; $4fe3: $ff
	rst $38                                          ; $4fe4: $ff
	ld a, a                                          ; $4fe5: $7f
	rst $38                                          ; $4fe6: $ff
	ld a, a                                          ; $4fe7: $7f
	ld c, b                                          ; $4fe8: $48
	ld b, e                                          ; $4fe9: $43
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	rst $38                                          ; $4fec: $ff
	ld a, a                                          ; $4fed: $7f
	sbc a                                            ; $4fee: $9f
	ld b, l                                          ; $4fef: $45
	add hl, de                                       ; $4ff0: $19
	nop                                              ; $4ff1: $00
	nop                                              ; $4ff2: $00
	nop                                              ; $4ff3: $00
	rst $38                                          ; $4ff4: $ff
	ld a, a                                          ; $4ff5: $7f
	ld c, b                                          ; $4ff6: $48
	ld b, e                                          ; $4ff7: $43
	sub h                                            ; $4ff8: $94
	ld [hl], b                                       ; $4ff9: $70
	nop                                              ; $4ffa: $00
	nop                                              ; $4ffb: $00
	rst $38                                          ; $4ffc: $ff
	ld a, a                                          ; $4ffd: $7f
	sub h                                            ; $4ffe: $94
	ld [hl], b                                       ; $4fff: $70
	add hl, de                                       ; $5000: $19
	nop                                              ; $5001: $00
	nop                                              ; $5002: $00
	nop                                              ; $5003: $00
	dec h                                            ; $5004: $25
	ld a, a                                          ; $5005: $7f
	rst $38                                          ; $5006: $ff
	ld a, a                                          ; $5007: $7f
	sub h                                            ; $5008: $94
	ld [hl], b                                       ; $5009: $70
	nop                                              ; $500a: $00
	nop                                              ; $500b: $00
	dec h                                            ; $500c: $25
	ld a, a                                          ; $500d: $7f
	ld c, b                                          ; $500e: $48
	ld b, e                                          ; $500f: $43
	sub h                                            ; $5010: $94
	ld [hl], b                                       ; $5011: $70
	nop                                              ; $5012: $00
	nop                                              ; $5013: $00
	rst $38                                          ; $5014: $ff
	ld b, a                                          ; $5015: $47
	ld c, b                                          ; $5016: $48
	ld b, e                                          ; $5017: $43
	sub h                                            ; $5018: $94
	ld [hl], b                                       ; $5019: $70
	nop                                              ; $501a: $00
	nop                                              ; $501b: $00
	rst $38                                          ; $501c: $ff
	ld b, a                                          ; $501d: $47
	add hl, de                                       ; $501e: $19
	nop                                              ; $501f: $00
	ld c, b                                          ; $5020: $48
	ld b, e                                          ; $5021: $43
	nop                                              ; $5022: $00
	nop                                              ; $5023: $00
	ld e, b                                          ; $5024: $58
	cpl                                              ; $5025: $2f
	dec de                                           ; $5026: $1b
	ld a, [$7fff]                                    ; $5027: $fa $ff $7f
	sbc a                                            ; $502a: $9f
	ld b, l                                          ; $502b: $45
	ldh a, [rTIMA]                                   ; $502c: $f0 $05
	nop                                              ; $502e: $00
	nop                                              ; $502f: $00
	rst $38                                          ; $5030: $ff
	ld a, a                                          ; $5031: $7f
	sbc a                                            ; $5032: $9f
	ld b, l                                          ; $5033: $45
	add hl, de                                       ; $5034: $19
	nop                                              ; $5035: $00
	nop                                              ; $5036: $00
	nop                                              ; $5037: $00
	rst $38                                          ; $5038: $ff
	ld a, a                                          ; $5039: $7f
	jp nc, $f07f                                     ; $503a: $d2 $7f $f0

	dec b                                            ; $503d: $05
	nop                                              ; $503e: $00
	nop                                              ; $503f: $00
	rst $38                                          ; $5040: $ff
	ld a, a                                          ; $5041: $7f
	ld e, [hl]                                       ; $5042: $5e
	inc e                                            ; $5043: $1c
	inc d                                            ; $5044: $14
	ld [rRAMG], sp                                   ; $5045: $08 $00 $00
	rst $38                                          ; $5048: $ff
	ld a, a                                          ; $5049: $7f
	sbc a                                            ; $504a: $9f
	ld b, l                                          ; $504b: $45
	ld l, b                                          ; $504c: $68
	ld b, c                                          ; $504d: $41
	nop                                              ; $504e: $00
	nop                                              ; $504f: $00
	rst $38                                          ; $5050: $ff
	ld a, a                                          ; $5051: $7f
	jp nc, Jump_02c_5e7f                             ; $5052: $d2 $7f $5e

	inc e                                            ; $5055: $1c
	nop                                              ; $5056: $00
	nop                                              ; $5057: $00
	ld h, a                                          ; $5058: $67
	cpl                                              ; $5059: $2f
	dec de                                           ; $505a: $1b
	rst AddAOntoHL                                          ; $505b: $ef
	rst $38                                          ; $505c: $ff
	ld a, a                                          ; $505d: $7f
	sbc a                                            ; $505e: $9f
	ld b, l                                          ; $505f: $45
	ldh a, [rTIMA]                                   ; $5060: $f0 $05
	nop                                              ; $5062: $00
	nop                                              ; $5063: $00
	rst $38                                          ; $5064: $ff
	ld a, a                                          ; $5065: $7f
	sbc a                                            ; $5066: $9f
	ld b, l                                          ; $5067: $45
	add hl, de                                       ; $5068: $19
	nop                                              ; $5069: $00
	nop                                              ; $506a: $00
	nop                                              ; $506b: $00
	rst $38                                          ; $506c: $ff
	ld a, a                                          ; $506d: $7f
	rrca                                             ; $506e: $0f
	ld a, e                                          ; $506f: $7b
	ld h, d                                          ; $5070: $62
	ld a, [hl]                                       ; $5071: $7e
	nop                                              ; $5072: $00
	nop                                              ; $5073: $00
	rst $38                                          ; $5074: $ff
	ld a, a                                          ; $5075: $7f
	rst $38                                          ; $5076: $ff
	ld a, a                                          ; $5077: $7f
	rrca                                             ; $5078: $0f
	ld a, e                                          ; $5079: $7b
	nop                                              ; $507a: $00
	nop                                              ; $507b: $00
	rst $38                                          ; $507c: $ff
	ld a, a                                          ; $507d: $7f
	rrca                                             ; $507e: $0f
	ld a, e                                          ; $507f: $7b
	ld [$005e], sp                                   ; $5080: $08 $5e $00
	nop                                              ; $5083: $00
	rst $38                                          ; $5084: $ff
	ld a, a                                          ; $5085: $7f
	rrca                                             ; $5086: $0f
	ld a, e                                          ; $5087: $7b
	add hl, de                                       ; $5088: $19
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	rst $38                                          ; $508c: $ff
	ld a, a                                          ; $508d: $7f
	jp nc, $197f                                     ; $508e: $d2 $7f $19

	nop                                              ; $5091: $00
	nop                                              ; $5092: $00
	nop                                              ; $5093: $00
	ld [bc], a                                       ; $5094: $02
	dec de                                           ; $5095: $1b
	cpl                                              ; $5096: $2f
	and $ff                                          ; $5097: $e6 $ff
	ld a, a                                          ; $5099: $7f
	rst $38                                          ; $509a: $ff
	ld a, a                                          ; $509b: $7f
	sbc a                                            ; $509c: $9f
	ld b, l                                          ; $509d: $45
	nop                                              ; $509e: $00
	nop                                              ; $509f: $00
	rst $38                                          ; $50a0: $ff
	ld a, a                                          ; $50a1: $7f
	sbc a                                            ; $50a2: $9f
	ld b, l                                          ; $50a3: $45
	add hl, de                                       ; $50a4: $19
	nop                                              ; $50a5: $00
	nop                                              ; $50a6: $00
	nop                                              ; $50a7: $00
	rst $38                                          ; $50a8: $ff
	ld a, a                                          ; $50a9: $7f
	sbc a                                            ; $50aa: $9f
	ld b, l                                          ; $50ab: $45
	xor l                                            ; $50ac: $ad
	inc bc                                           ; $50ad: $03
	nop                                              ; $50ae: $00
	nop                                              ; $50af: $00
	rst $38                                          ; $50b0: $ff
	ld a, a                                          ; $50b1: $7f
	ei                                               ; $50b2: $fb
	rrca                                             ; $50b3: $0f
	xor l                                            ; $50b4: $ad
	inc bc                                           ; $50b5: $03
	nop                                              ; $50b6: $00
	nop                                              ; $50b7: $00
	rst $38                                          ; $50b8: $ff
	ld a, a                                          ; $50b9: $7f
	rst $38                                          ; $50ba: $ff
	ld a, a                                          ; $50bb: $7f
	sbc a                                            ; $50bc: $9f
	ld b, l                                          ; $50bd: $45
	nop                                              ; $50be: $00
	nop                                              ; $50bf: $00
	ld a, c                                          ; $50c0: $79
	cpl                                              ; $50c1: $2f
	dec de                                           ; $50c2: $1b
	rst $38                                          ; $50c3: $ff
	rst $38                                          ; $50c4: $ff
	ld a, a                                          ; $50c5: $7f
	rst $38                                          ; $50c6: $ff
	ld a, a                                          ; $50c7: $7f
	sbc a                                            ; $50c8: $9f
	ld b, l                                          ; $50c9: $45
	nop                                              ; $50ca: $00
	nop                                              ; $50cb: $00
	rst $38                                          ; $50cc: $ff
	ld a, a                                          ; $50cd: $7f
	sbc a                                            ; $50ce: $9f
	ld b, l                                          ; $50cf: $45
	add hl, de                                       ; $50d0: $19
	nop                                              ; $50d1: $00
	nop                                              ; $50d2: $00
	nop                                              ; $50d3: $00
	rst $38                                          ; $50d4: $ff
	ld a, a                                          ; $50d5: $7f
	sbc a                                            ; $50d6: $9f
	ld b, l                                          ; $50d7: $45
	xor l                                            ; $50d8: $ad
	inc bc                                           ; $50d9: $03
	nop                                              ; $50da: $00
	nop                                              ; $50db: $00
	rst $38                                          ; $50dc: $ff
	ld a, a                                          ; $50dd: $7f
	sbc a                                            ; $50de: $9f
	ld b, l                                          ; $50df: $45
	xor l                                            ; $50e0: $ad
	inc bc                                           ; $50e1: $03
	nop                                              ; $50e2: $00
	nop                                              ; $50e3: $00
	xor l                                            ; $50e4: $ad
	inc bc                                           ; $50e5: $03
	sbc a                                            ; $50e6: $9f
	ld b, l                                          ; $50e7: $45
	add hl, de                                       ; $50e8: $19
	nop                                              ; $50e9: $00
	nop                                              ; $50ea: $00
	nop                                              ; $50eb: $00
	xor l                                            ; $50ec: $ad
	inc bc                                           ; $50ed: $03
	rst $38                                          ; $50ee: $ff
	ld a, a                                          ; $50ef: $7f
	sbc a                                            ; $50f0: $9f
	ld bc, $0000                                     ; $50f1: $01 $00 $00
	rst $38                                          ; $50f4: $ff
	ld a, a                                          ; $50f5: $7f
	sbc a                                            ; $50f6: $9f
	ld b, l                                          ; $50f7: $45
	xor l                                            ; $50f8: $ad
	inc bc                                           ; $50f9: $03
	nop                                              ; $50fa: $00
	nop                                              ; $50fb: $00
	rst $38                                          ; $50fc: $ff
	ld a, a                                          ; $50fd: $7f
	sbc a                                            ; $50fe: $9f
	ld b, l                                          ; $50ff: $45
	xor l                                            ; $5100: $ad
	inc bc                                           ; $5101: $03
	nop                                              ; $5102: $00
	nop                                              ; $5103: $00
	ld [bc], a                                       ; $5104: $02
	dec de                                           ; $5105: $1b
	cpl                                              ; $5106: $2f
	ldh [c], a                                       ; $5107: $e2
	rst $38                                          ; $5108: $ff
	ld a, a                                          ; $5109: $7f
	rst $38                                          ; $510a: $ff
	ld a, a                                          ; $510b: $7f
	and e                                            ; $510c: $a3
	ld a, a                                          ; $510d: $7f
	nop                                              ; $510e: $00
	nop                                              ; $510f: $00
	rst $38                                          ; $5110: $ff
	ld a, a                                          ; $5111: $7f
	sbc a                                            ; $5112: $9f
	ld b, l                                          ; $5113: $45
	add hl, de                                       ; $5114: $19
	nop                                              ; $5115: $00
	nop                                              ; $5116: $00
	nop                                              ; $5117: $00
	rst $38                                          ; $5118: $ff
	ld a, a                                          ; $5119: $7f
	sbc a                                            ; $511a: $9f
	ld b, l                                          ; $511b: $45
	and e                                            ; $511c: $a3
	ld a, a                                          ; $511d: $7f
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	rst $38                                          ; $5120: $ff
	ld a, a                                          ; $5121: $7f
	rst $38                                          ; $5122: $ff
	ld a, a                                          ; $5123: $7f
	sbc a                                            ; $5124: $9f
	ld b, l                                          ; $5125: $45
	nop                                              ; $5126: $00
	nop                                              ; $5127: $00
	ld b, b                                          ; $5128: $40
	dec de                                           ; $5129: $1b
	cpl                                              ; $512a: $2f
	rst $38                                          ; $512b: $ff
	rst $38                                          ; $512c: $ff
	ld a, a                                          ; $512d: $7f
	ld e, a                                          ; $512e: $5f
	ld a, [hl+]                                      ; $512f: $2a
	ld a, [$0014]                                    ; $5130: $fa $14 $00
	nop                                              ; $5133: $00
	rst $38                                          ; $5134: $ff
	ld a, a                                          ; $5135: $7f
	rst $38                                          ; $5136: $ff
	ld a, a                                          ; $5137: $7f
	jp nz, $007e                                     ; $5138: $c2 $7e $00

	nop                                              ; $513b: $00
	rst $38                                          ; $513c: $ff
	ld a, a                                          ; $513d: $7f
	cp a                                             ; $513e: $bf
	ld [bc], a                                       ; $513f: $02
	ld a, [$0014]                                    ; $5140: $fa $14 $00
	nop                                              ; $5143: $00
	rst $38                                          ; $5144: $ff
	ld a, a                                          ; $5145: $7f
	jp nz, $fa7e                                     ; $5146: $c2 $7e $fa

	inc d                                            ; $5149: $14
	nop                                              ; $514a: $00
	nop                                              ; $514b: $00
	rst $38                                          ; $514c: $ff
	ld a, a                                          ; $514d: $7f
	ld e, a                                          ; $514e: $5f
	ld a, [hl+]                                      ; $514f: $2a
	and b                                            ; $5150: $a0
	ld [hl], l                                       ; $5151: $75
	nop                                              ; $5152: $00
	nop                                              ; $5153: $00
	rst $38                                          ; $5154: $ff
	ld a, a                                          ; $5155: $7f
	jp nz, $a07e                                     ; $5156: $c2 $7e $a0

	ld [hl], l                                       ; $5159: $75
	nop                                              ; $515a: $00
	nop                                              ; $515b: $00
	rst $38                                          ; $515c: $ff
	ld a, a                                          ; $515d: $7f
	rra                                              ; $515e: $1f
	ld a, l                                          ; $515f: $7d
	rra                                              ; $5160: $1f
	ld a, l                                          ; $5161: $7d
	rra                                              ; $5162: $1f
	ld a, l                                          ; $5163: $7d
	rst $38                                          ; $5164: $ff
	ld a, a                                          ; $5165: $7f
	rra                                              ; $5166: $1f
	ld a, l                                          ; $5167: $7d
	rra                                              ; $5168: $1f
	ld a, l                                          ; $5169: $7d
	rra                                              ; $516a: $1f
	ld a, l                                          ; $516b: $7d
	ld b, b                                          ; $516c: $40
	dec de                                           ; $516d: $1b
	cpl                                              ; $516e: $2f
	rst $38                                          ; $516f: $ff
	rst $38                                          ; $5170: $ff
	ld a, a                                          ; $5171: $7f
	ld e, a                                          ; $5172: $5f
	ld a, [hl+]                                      ; $5173: $2a
	ld a, [$0014]                                    ; $5174: $fa $14 $00
	nop                                              ; $5177: $00
	rst $38                                          ; $5178: $ff
	ld a, a                                          ; $5179: $7f
	rst $38                                          ; $517a: $ff
	ld a, a                                          ; $517b: $7f
	ld e, a                                          ; $517c: $5f
	ld a, [hl+]                                      ; $517d: $2a
	nop                                              ; $517e: $00
	nop                                              ; $517f: $00
	rst $38                                          ; $5180: $ff
	ld a, a                                          ; $5181: $7f
	cp a                                             ; $5182: $bf
	ld [bc], a                                       ; $5183: $02
	ld a, [$0014]                                    ; $5184: $fa $14 $00
	nop                                              ; $5187: $00
	rst $38                                          ; $5188: $ff
	ld a, a                                          ; $5189: $7f
	jp nz, $9f7e                                     ; $518a: $c2 $7e $9f

	dec c                                            ; $518d: $0d
	nop                                              ; $518e: $00
	nop                                              ; $518f: $00
	rst $38                                          ; $5190: $ff
	ld a, a                                          ; $5191: $7f
	ld e, a                                          ; $5192: $5f
	ld a, [hl+]                                      ; $5193: $2a
	and b                                            ; $5194: $a0
	ld [hl], l                                       ; $5195: $75
	nop                                              ; $5196: $00
	nop                                              ; $5197: $00
	rst $38                                          ; $5198: $ff
	ld a, a                                          ; $5199: $7f
	jp nz, $a07e                                     ; $519a: $c2 $7e $a0

	ld [hl], l                                       ; $519d: $75
	nop                                              ; $519e: $00
	nop                                              ; $519f: $00
	rst $38                                          ; $51a0: $ff
	ld a, a                                          ; $51a1: $7f
	rra                                              ; $51a2: $1f
	ld a, l                                          ; $51a3: $7d
	rra                                              ; $51a4: $1f
	ld a, l                                          ; $51a5: $7d
	rra                                              ; $51a6: $1f
	ld a, l                                          ; $51a7: $7d
	rst $38                                          ; $51a8: $ff
	ld a, a                                          ; $51a9: $7f
	rra                                              ; $51aa: $1f
	ld a, l                                          ; $51ab: $7d
	rra                                              ; $51ac: $1f
	ld a, l                                          ; $51ad: $7d
	rra                                              ; $51ae: $1f
	ld a, l                                          ; $51af: $7d
	ld b, b                                          ; $51b0: $40
	dec de                                           ; $51b1: $1b
	cpl                                              ; $51b2: $2f
	rst $38                                          ; $51b3: $ff
	rst $38                                          ; $51b4: $ff
	ld a, a                                          ; $51b5: $7f
	ld e, a                                          ; $51b6: $5f
	ld a, [hl+]                                      ; $51b7: $2a
	ld a, [$0014]                                    ; $51b8: $fa $14 $00
	nop                                              ; $51bb: $00
	rst $38                                          ; $51bc: $ff
	ld a, a                                          ; $51bd: $7f
	rst $38                                          ; $51be: $ff
	ld a, a                                          ; $51bf: $7f
	ld e, a                                          ; $51c0: $5f
	ld a, [hl+]                                      ; $51c1: $2a
	nop                                              ; $51c2: $00
	nop                                              ; $51c3: $00
	rst $38                                          ; $51c4: $ff
	ld a, a                                          ; $51c5: $7f
	cp a                                             ; $51c6: $bf
	ld [bc], a                                       ; $51c7: $02
	ld a, [$0014]                                    ; $51c8: $fa $14 $00
	nop                                              ; $51cb: $00
	rst $38                                          ; $51cc: $ff
	ld a, a                                          ; $51cd: $7f
	rst $38                                          ; $51ce: $ff
	ld a, a                                          ; $51cf: $7f
	cp a                                             ; $51d0: $bf
	ld [bc], a                                       ; $51d1: $02
	nop                                              ; $51d2: $00
	nop                                              ; $51d3: $00
	rst $38                                          ; $51d4: $ff
	ld a, a                                          ; $51d5: $7f
	ld e, a                                          ; $51d6: $5f
	ld a, [hl+]                                      ; $51d7: $2a
	push hl                                          ; $51d8: $e5
	ld a, [de]                                       ; $51d9: $1a
	nop                                              ; $51da: $00
	nop                                              ; $51db: $00
	rst $38                                          ; $51dc: $ff
	ld a, a                                          ; $51dd: $7f
	ld e, a                                          ; $51de: $5f
	inc bc                                           ; $51df: $03
	ld b, b                                          ; $51e0: $40
	ld a, [hl]                                       ; $51e1: $7e
	nop                                              ; $51e2: $00
	nop                                              ; $51e3: $00
	rst $38                                          ; $51e4: $ff
	ld a, a                                          ; $51e5: $7f
	rra                                              ; $51e6: $1f
	ld a, l                                          ; $51e7: $7d
	rra                                              ; $51e8: $1f
	ld a, l                                          ; $51e9: $7d
	rra                                              ; $51ea: $1f
	ld a, l                                          ; $51eb: $7d
	rst $38                                          ; $51ec: $ff
	ld a, a                                          ; $51ed: $7f
	rra                                              ; $51ee: $1f
	ld a, l                                          ; $51ef: $7d
	rra                                              ; $51f0: $1f
	ld a, l                                          ; $51f1: $7d
	rra                                              ; $51f2: $1f
	ld a, l                                          ; $51f3: $7d
	inc c                                            ; $51f4: $0c
	dec de                                           ; $51f5: $1b
	cpl                                              ; $51f6: $2f
	cp $ff                                           ; $51f7: $fe $ff
	ld a, a                                          ; $51f9: $7f
	ld e, a                                          ; $51fa: $5f
	ld a, [hl+]                                      ; $51fb: $2a
	ld a, [$0014]                                    ; $51fc: $fa $14 $00
	nop                                              ; $51ff: $00
	rst $38                                          ; $5200: $ff
	ld a, a                                          ; $5201: $7f
	nop                                              ; $5202: $00
	rra                                              ; $5203: $1f
	ld e, a                                          ; $5204: $5f
	inc a                                            ; $5205: $3c
	nop                                              ; $5206: $00
	nop                                              ; $5207: $00
	rst $38                                          ; $5208: $ff
	ld a, a                                          ; $5209: $7f
	cp a                                             ; $520a: $bf
	ld [bc], a                                       ; $520b: $02
	ld a, [$0014]                                    ; $520c: $fa $14 $00
	nop                                              ; $520f: $00
	rst $38                                          ; $5210: $ff
	ld a, a                                          ; $5211: $7f
	jp nz, $a07e                                     ; $5212: $c2 $7e $a0

	ld [hl], l                                       ; $5215: $75
	nop                                              ; $5216: $00
	nop                                              ; $5217: $00
	rst $38                                          ; $5218: $ff
	ld a, a                                          ; $5219: $7f
	rst $38                                          ; $521a: $ff
	ld a, a                                          ; $521b: $7f
	ld e, a                                          ; $521c: $5f
	ld a, [hl+]                                      ; $521d: $2a
	nop                                              ; $521e: $00
	nop                                              ; $521f: $00
	rst $38                                          ; $5220: $ff
	ld a, a                                          ; $5221: $7f
	rst $38                                          ; $5222: $ff
	ld a, a                                          ; $5223: $7f
	jp nz, $007e                                     ; $5224: $c2 $7e $00

	nop                                              ; $5227: $00
	rst $38                                          ; $5228: $ff
	ld a, a                                          ; $5229: $7f
	ld e, a                                          ; $522a: $5f
	ld a, [hl+]                                      ; $522b: $2a
	and b                                            ; $522c: $a0
	ld [hl], l                                       ; $522d: $75
	nop                                              ; $522e: $00
	nop                                              ; $522f: $00
	ld b, b                                          ; $5230: $40
	dec de                                           ; $5231: $1b
	cpl                                              ; $5232: $2f
	rst $38                                          ; $5233: $ff
	rst $38                                          ; $5234: $ff
	ld a, a                                          ; $5235: $7f
	ld e, a                                          ; $5236: $5f
	ld a, [hl+]                                      ; $5237: $2a
	ld a, [$0014]                                    ; $5238: $fa $14 $00
	nop                                              ; $523b: $00
	rst $38                                          ; $523c: $ff
	ld a, a                                          ; $523d: $7f
	rst $38                                          ; $523e: $ff
	ld a, a                                          ; $523f: $7f
	ld e, a                                          ; $5240: $5f
	ld a, [hl+]                                      ; $5241: $2a
	nop                                              ; $5242: $00
	nop                                              ; $5243: $00
	rst $38                                          ; $5244: $ff
	ld a, a                                          ; $5245: $7f
	cp a                                             ; $5246: $bf
	ld [bc], a                                       ; $5247: $02
	ld a, [$0014]                                    ; $5248: $fa $14 $00
	nop                                              ; $524b: $00
	rst $38                                          ; $524c: $ff
	ld a, a                                          ; $524d: $7f
	ld e, a                                          ; $524e: $5f
	ld a, [hl+]                                      ; $524f: $2a
	sub h                                            ; $5250: $94
	ld [hl], c                                       ; $5251: $71
	nop                                              ; $5252: $00
	nop                                              ; $5253: $00
	rst $38                                          ; $5254: $ff
	ld a, a                                          ; $5255: $7f
	ld a, a                                          ; $5256: $7f
	daa                                              ; $5257: $27
	jr jr_02c_5264                                   ; $5258: $18 $0a

	nop                                              ; $525a: $00
	nop                                              ; $525b: $00
	rst $38                                          ; $525c: $ff
	ld a, a                                          ; $525d: $7f
	sub h                                            ; $525e: $94
	ld [hl], c                                       ; $525f: $71
	ld a, [$0014]                                    ; $5260: $fa $14 $00
	nop                                              ; $5263: $00

jr_02c_5264:
	rst $38                                          ; $5264: $ff
	ld a, a                                          ; $5265: $7f
	rra                                              ; $5266: $1f
	ld a, l                                          ; $5267: $7d
	rra                                              ; $5268: $1f
	ld a, l                                          ; $5269: $7d
	rra                                              ; $526a: $1f
	ld a, l                                          ; $526b: $7d
	rst $38                                          ; $526c: $ff
	ld a, a                                          ; $526d: $7f
	rra                                              ; $526e: $1f
	ld a, l                                          ; $526f: $7d
	rra                                              ; $5270: $1f
	ld a, l                                          ; $5271: $7d
	rra                                              ; $5272: $1f
	ld a, l                                          ; $5273: $7d
	ld [$1f1b], sp                                   ; $5274: $08 $1b $1f
	rst $38                                          ; $5277: $ff
	rst $38                                          ; $5278: $ff
	ld a, a                                          ; $5279: $7f
	ld e, a                                          ; $527a: $5f
	ld a, [hl+]                                      ; $527b: $2a
	ld a, [$0014]                                    ; $527c: $fa $14 $00
	nop                                              ; $527f: $00
	rst $38                                          ; $5280: $ff
	ld a, a                                          ; $5281: $7f
	cp a                                             ; $5282: $bf
	ld [bc], a                                       ; $5283: $02
	add b                                            ; $5284: $80
	ld e, d                                          ; $5285: $5a
	nop                                              ; $5286: $00
	nop                                              ; $5287: $00
	rst $38                                          ; $5288: $ff
	ld a, a                                          ; $5289: $7f
	cp a                                             ; $528a: $bf
	ld [bc], a                                       ; $528b: $02
	ld a, [$0014]                                    ; $528c: $fa $14 $00
	nop                                              ; $528f: $00
	rst $38                                          ; $5290: $ff
	ld a, a                                          ; $5291: $7f
	ccf                                              ; $5292: $3f
	ld h, [hl]                                       ; $5293: $66
	ld a, [$0014]                                    ; $5294: $fa $14 $00
	nop                                              ; $5297: $00
	rst $38                                          ; $5298: $ff
	ld a, a                                          ; $5299: $7f
	rst $38                                          ; $529a: $ff
	ld a, a                                          ; $529b: $7f
	add b                                            ; $529c: $80
	ld e, d                                          ; $529d: $5a
	nop                                              ; $529e: $00
	nop                                              ; $529f: $00
	rst $38                                          ; $52a0: $ff
	ld a, a                                          ; $52a1: $7f
	ld e, a                                          ; $52a2: $5f
	ld a, [hl+]                                      ; $52a3: $2a
	ccf                                              ; $52a4: $3f
	ld b, l                                          ; $52a5: $45
	nop                                              ; $52a6: $00
	nop                                              ; $52a7: $00
	rst $38                                          ; $52a8: $ff
	ld a, a                                          ; $52a9: $7f
	ld e, a                                          ; $52aa: $5f
	ld h, l                                          ; $52ab: $65
	add b                                            ; $52ac: $80
	ld e, d                                          ; $52ad: $5a
	nop                                              ; $52ae: $00
	nop                                              ; $52af: $00
	rst $38                                          ; $52b0: $ff
	ld a, a                                          ; $52b1: $7f
	rra                                              ; $52b2: $1f
	ld a, l                                          ; $52b3: $7d
	rra                                              ; $52b4: $1f
	ld a, l                                          ; $52b5: $7d
	rra                                              ; $52b6: $1f
	ld a, l                                          ; $52b7: $7d
	inc b                                            ; $52b8: $04
	dec de                                           ; $52b9: $1b
	cpl                                              ; $52ba: $2f
	rst $38                                          ; $52bb: $ff
	rst $38                                          ; $52bc: $ff
	ld a, a                                          ; $52bd: $7f
	ld e, a                                          ; $52be: $5f
	ld a, [hl+]                                      ; $52bf: $2a
	ld a, [$0014]                                    ; $52c0: $fa $14 $00
	nop                                              ; $52c3: $00
	rst $38                                          ; $52c4: $ff
	ld a, a                                          ; $52c5: $7f
	rst $18                                          ; $52c6: $df
	ld l, c                                          ; $52c7: $69
	ccf                                              ; $52c8: $3f
	inc a                                            ; $52c9: $3c
	nop                                              ; $52ca: $00
	nop                                              ; $52cb: $00
	rst $38                                          ; $52cc: $ff
	ld a, a                                          ; $52cd: $7f
	cp a                                             ; $52ce: $bf
	ld [bc], a                                       ; $52cf: $02
	ld a, [$0014]                                    ; $52d0: $fa $14 $00
	nop                                              ; $52d3: $00
	rst $38                                          ; $52d4: $ff
	ld a, a                                          ; $52d5: $7f
	adc c                                            ; $52d6: $89
	ld a, a                                          ; $52d7: $7f
	ccf                                              ; $52d8: $3f
	inc a                                            ; $52d9: $3c
	nop                                              ; $52da: $00
	nop                                              ; $52db: $00
	rst $38                                          ; $52dc: $ff
	ld a, a                                          ; $52dd: $7f
	add b                                            ; $52de: $80
	daa                                              ; $52df: $27
	ccf                                              ; $52e0: $3f
	inc a                                            ; $52e1: $3c
	nop                                              ; $52e2: $00
	nop                                              ; $52e3: $00
	rst $38                                          ; $52e4: $ff
	ld a, a                                          ; $52e5: $7f
	rst $38                                          ; $52e6: $ff
	ld a, a                                          ; $52e7: $7f
	rst $18                                          ; $52e8: $df
	ld l, c                                          ; $52e9: $69
	nop                                              ; $52ea: $00
	nop                                              ; $52eb: $00
	rst $38                                          ; $52ec: $ff
	ld a, a                                          ; $52ed: $7f
	rst $18                                          ; $52ee: $df
	ld l, c                                          ; $52ef: $69
	ld a, [$0014]                                    ; $52f0: $fa $14 $00
	nop                                              ; $52f3: $00
	rst $38                                          ; $52f4: $ff
	ld a, a                                          ; $52f5: $7f
	rra                                              ; $52f6: $1f
	ld a, l                                          ; $52f7: $7d
	rra                                              ; $52f8: $1f
	ld a, l                                          ; $52f9: $7d
	rra                                              ; $52fa: $1f
	ld a, l                                          ; $52fb: $7d
	ld c, b                                          ; $52fc: $48
	dec de                                           ; $52fd: $1b
	cpl                                              ; $52fe: $2f
	rst $38                                          ; $52ff: $ff
	rst $38                                          ; $5300: $ff
	ld a, a                                          ; $5301: $7f
	ld e, a                                          ; $5302: $5f
	ld a, [hl+]                                      ; $5303: $2a
	ld a, [$0014]                                    ; $5304: $fa $14 $00
	nop                                              ; $5307: $00
	rst $38                                          ; $5308: $ff
	ld a, a                                          ; $5309: $7f
	rst $38                                          ; $530a: $ff
	ld a, a                                          ; $530b: $7f
	ld e, a                                          ; $530c: $5f
	ld a, [hl+]                                      ; $530d: $2a
	nop                                              ; $530e: $00
	nop                                              ; $530f: $00
	rst $38                                          ; $5310: $ff
	ld a, a                                          ; $5311: $7f
	cp a                                             ; $5312: $bf
	ld [bc], a                                       ; $5313: $02
	ld a, [$0014]                                    ; $5314: $fa $14 $00
	nop                                              ; $5317: $00
	rst $38                                          ; $5318: $ff
	ld a, a                                          ; $5319: $7f
	and b                                            ; $531a: $a0
	ld a, [hl]                                       ; $531b: $7e
	ld e, [hl]                                       ; $531c: $5e
	dec d                                            ; $531d: $15
	nop                                              ; $531e: $00
	nop                                              ; $531f: $00
	rst $38                                          ; $5320: $ff
	ld a, a                                          ; $5321: $7f
	rst $38                                          ; $5322: $ff
	ld a, a                                          ; $5323: $7f
	and b                                            ; $5324: $a0
	ld a, [hl]                                       ; $5325: $7e
	nop                                              ; $5326: $00
	nop                                              ; $5327: $00
	rst $38                                          ; $5328: $ff
	ld a, a                                          ; $5329: $7f
	adc d                                            ; $532a: $8a
	ld d, e                                          ; $532b: $53
	inc bc                                           ; $532c: $03
	ld a, [de]                                       ; $532d: $1a
	nop                                              ; $532e: $00
	nop                                              ; $532f: $00
	rst $38                                          ; $5330: $ff
	ld a, a                                          ; $5331: $7f
	ld e, a                                          ; $5332: $5f
	ld a, [hl+]                                      ; $5333: $2a
	inc bc                                           ; $5334: $03
	ld a, [de]                                       ; $5335: $1a
	nop                                              ; $5336: $00
	nop                                              ; $5337: $00
	rst $38                                          ; $5338: $ff
	ld a, a                                          ; $5339: $7f
	rra                                              ; $533a: $1f
	ld a, l                                          ; $533b: $7d
	rra                                              ; $533c: $1f
	ld a, l                                          ; $533d: $7d
	rra                                              ; $533e: $1f
	ld a, l                                          ; $533f: $7d
	ld b, b                                          ; $5340: $40
	dec de                                           ; $5341: $1b
	cpl                                              ; $5342: $2f
	rst $38                                          ; $5343: $ff
	rst $38                                          ; $5344: $ff
	ld a, a                                          ; $5345: $7f
	ld e, a                                          ; $5346: $5f
	ld a, [hl+]                                      ; $5347: $2a
	ld a, [$0014]                                    ; $5348: $fa $14 $00
	nop                                              ; $534b: $00
	rst $38                                          ; $534c: $ff
	ld a, a                                          ; $534d: $7f
	rst $38                                          ; $534e: $ff
	ld a, a                                          ; $534f: $7f
	ld e, a                                          ; $5350: $5f
	ld a, [hl+]                                      ; $5351: $2a
	nop                                              ; $5352: $00
	nop                                              ; $5353: $00
	rst $38                                          ; $5354: $ff
	ld a, a                                          ; $5355: $7f
	cp a                                             ; $5356: $bf
	ld [bc], a                                       ; $5357: $02
	ld a, [$0014]                                    ; $5358: $fa $14 $00
	nop                                              ; $535b: $00
	rst $38                                          ; $535c: $ff
	ld a, a                                          ; $535d: $7f
	rst $38                                          ; $535e: $ff
	ld a, a                                          ; $535f: $7f
	ld b, b                                          ; $5360: $40
	halt                                             ; $5361: $76
	nop                                              ; $5362: $00
	nop                                              ; $5363: $00
	rst $38                                          ; $5364: $ff
	ld a, a                                          ; $5365: $7f
	rst $38                                          ; $5366: $ff
	ld a, a                                          ; $5367: $7f
	ld a, [$0014]                                    ; $5368: $fa $14 $00
	nop                                              ; $536b: $00
	rst $38                                          ; $536c: $ff
	ld a, a                                          ; $536d: $7f
	rra                                              ; $536e: $1f
	ld a, l                                          ; $536f: $7d
	rra                                              ; $5370: $1f
	ld a, l                                          ; $5371: $7d
	rra                                              ; $5372: $1f
	ld a, l                                          ; $5373: $7d
	rst $38                                          ; $5374: $ff
	ld a, a                                          ; $5375: $7f
	ld e, a                                          ; $5376: $5f
	ld a, [hl+]                                      ; $5377: $2a
	ld b, b                                          ; $5378: $40
	halt                                             ; $5379: $76
	nop                                              ; $537a: $00
	nop                                              ; $537b: $00
	rst $38                                          ; $537c: $ff
	ld a, a                                          ; $537d: $7f
	rrca                                             ; $537e: $0f
	ld a, e                                          ; $537f: $7b
	ld b, b                                          ; $5380: $40
	halt                                             ; $5381: $76
	nop                                              ; $5382: $00
	nop                                              ; $5383: $00
	ld b, b                                          ; $5384: $40
	dec de                                           ; $5385: $1b
	cpl                                              ; $5386: $2f
	rst $38                                          ; $5387: $ff
	rst $38                                          ; $5388: $ff
	ld a, a                                          ; $5389: $7f
	ld e, a                                          ; $538a: $5f
	ld a, [hl+]                                      ; $538b: $2a
	ld a, [$0014]                                    ; $538c: $fa $14 $00
	nop                                              ; $538f: $00
	rst $38                                          ; $5390: $ff
	ld a, a                                          ; $5391: $7f
	rst $38                                          ; $5392: $ff
	ld a, a                                          ; $5393: $7f
	ld e, a                                          ; $5394: $5f
	ld a, [hl+]                                      ; $5395: $2a
	nop                                              ; $5396: $00
	nop                                              ; $5397: $00
	rst $38                                          ; $5398: $ff
	ld a, a                                          ; $5399: $7f
	cp a                                             ; $539a: $bf
	ld [bc], a                                       ; $539b: $02
	ld a, [$0014]                                    ; $539c: $fa $14 $00
	nop                                              ; $539f: $00
	rst $38                                          ; $53a0: $ff
	ld a, a                                          ; $53a1: $7f
	ld e, a                                          ; $53a2: $5f
	ld a, [hl+]                                      ; $53a3: $2a
	and b                                            ; $53a4: $a0
	ld [hl], l                                       ; $53a5: $75
	nop                                              ; $53a6: $00
	nop                                              ; $53a7: $00
	rst $38                                          ; $53a8: $ff
	ld a, a                                          ; $53a9: $7f
	add [hl]                                         ; $53aa: $86
	dec sp                                           ; $53ab: $3b
	ld a, [$0014]                                    ; $53ac: $fa $14 $00
	nop                                              ; $53af: $00
	rst $38                                          ; $53b0: $ff
	ld a, a                                          ; $53b1: $7f
	rra                                              ; $53b2: $1f
	ld a, l                                          ; $53b3: $7d
	rra                                              ; $53b4: $1f
	ld a, l                                          ; $53b5: $7d
	rra                                              ; $53b6: $1f
	ld a, l                                          ; $53b7: $7d
	rst $38                                          ; $53b8: $ff
	ld a, a                                          ; $53b9: $7f
	rra                                              ; $53ba: $1f
	ld a, l                                          ; $53bb: $7d
	rra                                              ; $53bc: $1f
	ld a, l                                          ; $53bd: $7d
	rra                                              ; $53be: $1f
	ld a, l                                          ; $53bf: $7d
	rst $38                                          ; $53c0: $ff
	ld a, a                                          ; $53c1: $7f
	rra                                              ; $53c2: $1f
	ld a, l                                          ; $53c3: $7d
	rra                                              ; $53c4: $1f
	ld a, l                                          ; $53c5: $7d
	rra                                              ; $53c6: $1f
	ld a, l                                          ; $53c7: $7d
	jr jr_02c_53e5                                   ; $53c8: $18 $1b

	cpl                                              ; $53ca: $2f
	ld hl, sp-$01                                    ; $53cb: $f8 $ff
	ld a, a                                          ; $53cd: $7f
	rra                                              ; $53ce: $1f
	ld e, $d5                                        ; $53cf: $1e $d5
	nop                                              ; $53d1: $00
	nop                                              ; $53d2: $00
	nop                                              ; $53d3: $00
	rst $38                                          ; $53d4: $ff
	ld a, a                                          ; $53d5: $7f
	rra                                              ; $53d6: $1f
	ld e, $00                                        ; $53d7: $1e $00
	ld h, c                                          ; $53d9: $61
	nop                                              ; $53da: $00
	nop                                              ; $53db: $00
	rst $38                                          ; $53dc: $ff
	ld a, a                                          ; $53dd: $7f
	ld h, d                                          ; $53de: $62
	ld a, [hl]                                       ; $53df: $7e
	nop                                              ; $53e0: $00
	ld h, c                                          ; $53e1: $61
	nop                                              ; $53e2: $00
	nop                                              ; $53e3: $00
	ccf                                              ; $53e4: $3f

jr_02c_53e5:
	inc bc                                           ; $53e5: $03
	rst $38                                          ; $53e6: $ff
	ld a, a                                          ; $53e7: $7f
	ld h, d                                          ; $53e8: $62
	ld a, [hl]                                       ; $53e9: $7e
	nop                                              ; $53ea: $00
	nop                                              ; $53eb: $00
	ccf                                              ; $53ec: $3f
	inc bc                                           ; $53ed: $03
	rst $38                                          ; $53ee: $ff
	ld a, a                                          ; $53ef: $7f
	rra                                              ; $53f0: $1f
	ld e, $00                                        ; $53f1: $1e $00
	nop                                              ; $53f3: $00
	db $10                                           ; $53f4: $10
	dec de                                           ; $53f5: $1b
	cpl                                              ; $53f6: $2f
	ld hl, sp-$01                                    ; $53f7: $f8 $ff
	ld a, a                                          ; $53f9: $7f
	rra                                              ; $53fa: $1f
	ld e, $d5                                        ; $53fb: $1e $d5
	nop                                              ; $53fd: $00
	nop                                              ; $53fe: $00
	nop                                              ; $53ff: $00
	rst $38                                          ; $5400: $ff
	ld a, a                                          ; $5401: $7f
	ld h, d                                          ; $5402: $62
	ld a, [hl]                                       ; $5403: $7e
	nop                                              ; $5404: $00
	ld h, c                                          ; $5405: $61
	nop                                              ; $5406: $00
	nop                                              ; $5407: $00
	rst $38                                          ; $5408: $ff
	ld a, a                                          ; $5409: $7f
	rra                                              ; $540a: $1f
	ld e, $00                                        ; $540b: $1e $00
	ld h, c                                          ; $540d: $61
	nop                                              ; $540e: $00
	nop                                              ; $540f: $00
	rst $38                                          ; $5410: $ff
	ld a, a                                          ; $5411: $7f
	rst $38                                          ; $5412: $ff
	ld a, a                                          ; $5413: $7f
	ld h, d                                          ; $5414: $62
	ld a, [hl]                                       ; $5415: $7e
	nop                                              ; $5416: $00
	nop                                              ; $5417: $00
	rst $38                                          ; $5418: $ff
	ld a, a                                          ; $5419: $7f
	ld h, d                                          ; $541a: $62
	ld a, [hl]                                       ; $541b: $7e
	push de                                          ; $541c: $d5
	nop                                              ; $541d: $00
	nop                                              ; $541e: $00
	nop                                              ; $541f: $00
	ld [$2f1b], sp                                   ; $5420: $08 $1b $2f
	ld hl, sp-$01                                    ; $5423: $f8 $ff
	ld a, a                                          ; $5425: $7f
	rra                                              ; $5426: $1f
	ld e, $d5                                        ; $5427: $1e $d5
	nop                                              ; $5429: $00
	nop                                              ; $542a: $00
	nop                                              ; $542b: $00
	rst $38                                          ; $542c: $ff
	ld a, a                                          ; $542d: $7f
	rra                                              ; $542e: $1f
	ld e, $25                                        ; $542f: $1e $25
	ld a, [hl]                                       ; $5431: $7e
	nop                                              ; $5432: $00
	nop                                              ; $5433: $00
	rst $38                                          ; $5434: $ff
	ld a, a                                          ; $5435: $7f
	dec h                                            ; $5436: $25
	ld a, [hl]                                       ; $5437: $7e
	rst $18                                          ; $5438: $df
	ld bc, $0000                                     ; $5439: $01 $00 $00
	rst $38                                          ; $543c: $ff
	ld a, a                                          ; $543d: $7f
	rra                                              ; $543e: $1f
	ld e, $df                                        ; $543f: $1e $df
	ld bc, $0000                                     ; $5441: $01 $00 $00
	rst $38                                          ; $5444: $ff
	ld a, a                                          ; $5445: $7f
	rst $38                                          ; $5446: $ff
	ld a, a                                          ; $5447: $7f
	rra                                              ; $5448: $1f
	ld e, $00                                        ; $5449: $1e $00
	nop                                              ; $544b: $00
	jr nz, jr_02c_5469                               ; $544c: $20 $1b

	cpl                                              ; $544e: $2f
	db $ec                                           ; $544f: $ec
	rst $38                                          ; $5450: $ff
	ld a, a                                          ; $5451: $7f
	rra                                              ; $5452: $1f
	ld e, $d5                                        ; $5453: $1e $d5
	nop                                              ; $5455: $00
	nop                                              ; $5456: $00
	nop                                              ; $5457: $00
	rst $38                                          ; $5458: $ff
	ld a, a                                          ; $5459: $7f
	ld a, a                                          ; $545a: $7f
	dec hl                                           ; $545b: $2b
	ccf                                              ; $545c: $3f
	ld [bc], a                                       ; $545d: $02
	nop                                              ; $545e: $00
	nop                                              ; $545f: $00
	rst $38                                          ; $5460: $ff
	ld a, a                                          ; $5461: $7f
	rst $38                                          ; $5462: $ff
	ld a, a                                          ; $5463: $7f
	rra                                              ; $5464: $1f
	ld e, $00                                        ; $5465: $1e $00
	nop                                              ; $5467: $00
	rst $38                                          ; $5468: $ff

jr_02c_5469:
	ld a, a                                          ; $5469: $7f
	rra                                              ; $546a: $1f
	ld e, $3f                                        ; $546b: $1e $3f
	ld [bc], a                                       ; $546d: $02
	nop                                              ; $546e: $00
	nop                                              ; $546f: $00
	rst $38                                          ; $5470: $ff
	ld a, a                                          ; $5471: $7f
	ccf                                              ; $5472: $3f
	ld [bc], a                                       ; $5473: $02
	add d                                            ; $5474: $82
	inc d                                            ; $5475: $14
	nop                                              ; $5476: $00
	nop                                              ; $5477: $00
	inc h                                            ; $5478: $24
	dec de                                           ; $5479: $1b
	rra                                              ; $547a: $1f
	db $fc                                           ; $547b: $fc
	rst $38                                          ; $547c: $ff
	ld a, a                                          ; $547d: $7f
	rra                                              ; $547e: $1f
	ld e, $d5                                        ; $547f: $1e $d5
	nop                                              ; $5481: $00
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	rst $38                                          ; $5484: $ff
	ld a, a                                          ; $5485: $7f
	rra                                              ; $5486: $1f
	ld e, $c0                                        ; $5487: $1e $c0
	ld a, l                                          ; $5489: $7d
	nop                                              ; $548a: $00
	nop                                              ; $548b: $00
	rst $38                                          ; $548c: $ff
	ld a, a                                          ; $548d: $7f
	rst $38                                          ; $548e: $ff
	ld a, a                                          ; $548f: $7f
	ret nz                                           ; $5490: $c0

	ld a, l                                          ; $5491: $7d
	nop                                              ; $5492: $00
	nop                                              ; $5493: $00
	rst $38                                          ; $5494: $ff
	ld a, a                                          ; $5495: $7f
	nop                                              ; $5496: $00
	nop                                              ; $5497: $00
	nop                                              ; $5498: $00
	nop                                              ; $5499: $00
	nop                                              ; $549a: $00
	nop                                              ; $549b: $00
	rst $38                                          ; $549c: $ff
	ld a, a                                          ; $549d: $7f
	rra                                              ; $549e: $1f
	inc bc                                           ; $549f: $03
	ret nz                                           ; $54a0: $c0

	ld a, l                                          ; $54a1: $7d
	nop                                              ; $54a2: $00
	nop                                              ; $54a3: $00
	rst $38                                          ; $54a4: $ff
	ld a, a                                          ; $54a5: $7f
	rst $38                                          ; $54a6: $ff
	ld a, a                                          ; $54a7: $7f
	rra                                              ; $54a8: $1f
	ld e, $00                                        ; $54a9: $1e $00
	nop                                              ; $54ab: $00
	ld c, b                                          ; $54ac: $48
	dec de                                           ; $54ad: $1b
	cpl                                              ; $54ae: $2f
	rst $38                                          ; $54af: $ff
	rst $38                                          ; $54b0: $ff
	ld a, a                                          ; $54b1: $7f
	rra                                              ; $54b2: $1f
	ld e, $d5                                        ; $54b3: $1e $d5
	nop                                              ; $54b5: $00
	nop                                              ; $54b6: $00
	nop                                              ; $54b7: $00
	rst $38                                          ; $54b8: $ff
	ld a, a                                          ; $54b9: $7f
	rst $38                                          ; $54ba: $ff
	ld a, a                                          ; $54bb: $7f
	push de                                          ; $54bc: $d5
	nop                                              ; $54bd: $00
	nop                                              ; $54be: $00
	nop                                              ; $54bf: $00
	rst $38                                          ; $54c0: $ff
	ld a, a                                          ; $54c1: $7f
	rra                                              ; $54c2: $1f
	ld e, $1f                                        ; $54c3: $1e $1f
	nop                                              ; $54c5: $00
	nop                                              ; $54c6: $00
	nop                                              ; $54c7: $00
	rst $38                                          ; $54c8: $ff
	ld a, a                                          ; $54c9: $7f
	nop                                              ; $54ca: $00
	nop                                              ; $54cb: $00
	nop                                              ; $54cc: $00
	nop                                              ; $54cd: $00
	nop                                              ; $54ce: $00
	nop                                              ; $54cf: $00
	rst $18                                          ; $54d0: $df
	dec hl                                           ; $54d1: $2b
	rst $38                                          ; $54d2: $ff
	ld a, a                                          ; $54d3: $7f
	rra                                              ; $54d4: $1f
	ld e, $00                                        ; $54d5: $1e $00
	nop                                              ; $54d7: $00
	rst $18                                          ; $54d8: $df
	dec hl                                           ; $54d9: $2b
	rra                                              ; $54da: $1f
	ld e, $0e                                        ; $54db: $1e $0e
	ld [hl], b                                       ; $54dd: $70
	nop                                              ; $54de: $00
	nop                                              ; $54df: $00
	rst $38                                          ; $54e0: $ff
	ld a, a                                          ; $54e1: $7f
	rra                                              ; $54e2: $1f
	ld e, $1f                                        ; $54e3: $1e $1f
	nop                                              ; $54e5: $00
	nop                                              ; $54e6: $00
	nop                                              ; $54e7: $00
	rst $38                                          ; $54e8: $ff
	ld a, a                                          ; $54e9: $7f
	nop                                              ; $54ea: $00
	nop                                              ; $54eb: $00
	nop                                              ; $54ec: $00
	nop                                              ; $54ed: $00
	nop                                              ; $54ee: $00
	nop                                              ; $54ef: $00
	jr z, jr_02c_550d                                ; $54f0: $28 $1b

	rra                                              ; $54f2: $1f
	db $fc                                           ; $54f3: $fc
	rst $38                                          ; $54f4: $ff
	ld a, a                                          ; $54f5: $7f
	rra                                              ; $54f6: $1f
	ld e, $d5                                        ; $54f7: $1e $d5
	nop                                              ; $54f9: $00
	nop                                              ; $54fa: $00
	nop                                              ; $54fb: $00
	rst $38                                          ; $54fc: $ff
	ld a, a                                          ; $54fd: $7f
	nop                                              ; $54fe: $00
	nop                                              ; $54ff: $00
	nop                                              ; $5500: $00
	nop                                              ; $5501: $00
	nop                                              ; $5502: $00
	nop                                              ; $5503: $00
	rst $38                                          ; $5504: $ff
	ld a, a                                          ; $5505: $7f
	rst $38                                          ; $5506: $ff
	ld a, a                                          ; $5507: $7f
	ld h, b                                          ; $5508: $60
	ld b, a                                          ; $5509: $47
	nop                                              ; $550a: $00
	nop                                              ; $550b: $00
	rst $38                                          ; $550c: $ff

jr_02c_550d:
	ld a, a                                          ; $550d: $7f
	rra                                              ; $550e: $1f
	ld e, $60                                        ; $550f: $1e $60
	ld b, a                                          ; $5511: $47
	nop                                              ; $5512: $00
	nop                                              ; $5513: $00
	rst $38                                          ; $5514: $ff
	ld a, a                                          ; $5515: $7f
	rst $38                                          ; $5516: $ff
	ld a, a                                          ; $5517: $7f
	rra                                              ; $5518: $1f
	ld e, $00                                        ; $5519: $1e $00
	nop                                              ; $551b: $00
	rst $38                                          ; $551c: $ff
	ld a, a                                          ; $551d: $7f
	nop                                              ; $551e: $00
	nop                                              ; $551f: $00
	nop                                              ; $5520: $00
	nop                                              ; $5521: $00
	nop                                              ; $5522: $00
	nop                                              ; $5523: $00
	ld [hl], b                                       ; $5524: $70
	dec de                                           ; $5525: $1b
	rra                                              ; $5526: $1f
	cp $ff                                           ; $5527: $fe $ff
	ld a, a                                          ; $5529: $7f
	rra                                              ; $552a: $1f
	ld e, $d5                                        ; $552b: $1e $d5
	nop                                              ; $552d: $00
	nop                                              ; $552e: $00
	nop                                              ; $552f: $00
	rst $38                                          ; $5530: $ff
	ld a, a                                          ; $5531: $7f
	rst $38                                          ; $5532: $ff
	inc bc                                           ; $5533: $03
	rra                                              ; $5534: $1f
	inc h                                            ; $5535: $24
	nop                                              ; $5536: $00
	nop                                              ; $5537: $00
	rst $38                                          ; $5538: $ff
	ld a, a                                          ; $5539: $7f
	rst $38                                          ; $553a: $ff
	ld a, a                                          ; $553b: $7f
	rra                                              ; $553c: $1f
	ld e, $00                                        ; $553d: $1e $00
	nop                                              ; $553f: $00
	rst $38                                          ; $5540: $ff
	ld a, a                                          ; $5541: $7f
	rst $38                                          ; $5542: $ff
	ld a, a                                          ; $5543: $7f
	rra                                              ; $5544: $1f
	inc h                                            ; $5545: $24
	nop                                              ; $5546: $00
	nop                                              ; $5547: $00
	rst $38                                          ; $5548: $ff
	ld a, a                                          ; $5549: $7f
	rra                                              ; $554a: $1f
	ld e, $1f                                        ; $554b: $1e $1f
	inc h                                            ; $554d: $24
	nop                                              ; $554e: $00
	nop                                              ; $554f: $00
	rst $38                                          ; $5550: $ff
	ld a, a                                          ; $5551: $7f
	rra                                              ; $5552: $1f
	ld e, $29                                        ; $5553: $1e $29
	ld a, [hl]                                       ; $5555: $7e
	nop                                              ; $5556: $00
	nop                                              ; $5557: $00
	rst $38                                          ; $5558: $ff
	ld a, a                                          ; $5559: $7f
	jr nc, jr_02c_55db                               ; $555a: $30 $7f

	push de                                          ; $555c: $d5
	nop                                              ; $555d: $00
	nop                                              ; $555e: $00
	nop                                              ; $555f: $00
	inc c                                            ; $5560: $0c
	dec de                                           ; $5561: $1b
	cpl                                              ; $5562: $2f
	rst $38                                          ; $5563: $ff
	rst $38                                          ; $5564: $ff
	ld a, a                                          ; $5565: $7f
	rra                                              ; $5566: $1f
	ld e, $d5                                        ; $5567: $1e $d5
	nop                                              ; $5569: $00
	nop                                              ; $556a: $00
	nop                                              ; $556b: $00
	rst $38                                          ; $556c: $ff
	ld a, a                                          ; $556d: $7f
	ld h, [hl]                                       ; $556e: $66
	ld c, a                                          ; $556f: $4f
	push de                                          ; $5570: $d5
	nop                                              ; $5571: $00
	nop                                              ; $5572: $00
	nop                                              ; $5573: $00
	rst $38                                          ; $5574: $ff
	ld a, a                                          ; $5575: $7f
	rra                                              ; $5576: $1f
	ld e, $d6                                        ; $5577: $1e $d6
	ld a, h                                          ; $5579: $7c
	nop                                              ; $557a: $00
	nop                                              ; $557b: $00
	rst $38                                          ; $557c: $ff
	ld a, a                                          ; $557d: $7f
	rra                                              ; $557e: $1f
	nop                                              ; $557f: $00
	sub $7c                                          ; $5580: $d6 $7c
	nop                                              ; $5582: $00
	nop                                              ; $5583: $00
	rst $38                                          ; $5584: $ff
	ld a, a                                          ; $5585: $7f
	rst $38                                          ; $5586: $ff
	ld a, a                                          ; $5587: $7f
	rra                                              ; $5588: $1f
	ld e, $00                                        ; $5589: $1e $00
	nop                                              ; $558b: $00
	rst $38                                          ; $558c: $ff
	ld a, a                                          ; $558d: $7f
	rst $38                                          ; $558e: $ff
	ld a, a                                          ; $558f: $7f
	rra                                              ; $5590: $1f
	nop                                              ; $5591: $00
	nop                                              ; $5592: $00
	nop                                              ; $5593: $00
	ldh [$03], a                                     ; $5594: $e0 $03
	nop                                              ; $5596: $00
	nop                                              ; $5597: $00
	nop                                              ; $5598: $00
	nop                                              ; $5599: $00
	nop                                              ; $559a: $00
	nop                                              ; $559b: $00
	rst $38                                          ; $559c: $ff
	ld a, a                                          ; $559d: $7f
	rra                                              ; $559e: $1f
	ld e, $1f                                        ; $559f: $1e $1f
	nop                                              ; $55a1: $00
	nop                                              ; $55a2: $00
	nop                                              ; $55a3: $00
	jr z, jr_02c_55c1                                ; $55a4: $28 $1b

	cpl                                              ; $55a6: $2f
	rst $38                                          ; $55a7: $ff
	rst $38                                          ; $55a8: $ff
	ld a, a                                          ; $55a9: $7f
	rra                                              ; $55aa: $1f
	ld e, $d5                                        ; $55ab: $1e $d5
	nop                                              ; $55ad: $00
	nop                                              ; $55ae: $00
	nop                                              ; $55af: $00
	rst $38                                          ; $55b0: $ff
	ld a, a                                          ; $55b1: $7f
	rra                                              ; $55b2: $1f
	ld e, $5f                                        ; $55b3: $1e $5f
	inc d                                            ; $55b5: $14
	nop                                              ; $55b6: $00
	nop                                              ; $55b7: $00
	rst $38                                          ; $55b8: $ff
	ld a, a                                          ; $55b9: $7f
	rst $38                                          ; $55ba: $ff
	ld a, a                                          ; $55bb: $7f
	rra                                              ; $55bc: $1f
	ld e, $00                                        ; $55bd: $1e $00
	nop                                              ; $55bf: $00
	rst $38                                          ; $55c0: $ff

jr_02c_55c1:
	ld a, a                                          ; $55c1: $7f
	ld e, a                                          ; $55c2: $5f
	inc d                                            ; $55c3: $14
	push de                                          ; $55c4: $d5
	nop                                              ; $55c5: $00
	nop                                              ; $55c6: $00
	nop                                              ; $55c7: $00
	ld h, b                                          ; $55c8: $60
	ld a, l                                          ; $55c9: $7d
	rst $38                                          ; $55ca: $ff
	ld a, a                                          ; $55cb: $7f
	inc c                                            ; $55cc: $0c
	ld [hl], d                                       ; $55cd: $72
	nop                                              ; $55ce: $00
	nop                                              ; $55cf: $00
	ld h, b                                          ; $55d0: $60
	ld a, l                                          ; $55d1: $7d
	nop                                              ; $55d2: $00
	nop                                              ; $55d3: $00
	nop                                              ; $55d4: $00
	nop                                              ; $55d5: $00
	nop                                              ; $55d6: $00
	nop                                              ; $55d7: $00
	rst $38                                          ; $55d8: $ff
	ld a, a                                          ; $55d9: $7f
	rra                                              ; $55da: $1f

jr_02c_55db:
	ld e, $60                                        ; $55db: $1e $60
	ld a, l                                          ; $55dd: $7d
	nop                                              ; $55de: $00
	nop                                              ; $55df: $00
	rst $38                                          ; $55e0: $ff
	ld a, a                                          ; $55e1: $7f
	rra                                              ; $55e2: $1f
	ld e, $5f                                        ; $55e3: $1e $5f
	inc d                                            ; $55e5: $14
	nop                                              ; $55e6: $00
	nop                                              ; $55e7: $00
	ld [$2f1b], sp                                   ; $55e8: $08 $1b $2f
	db $fc                                           ; $55eb: $fc
	rst $38                                          ; $55ec: $ff
	ld a, a                                          ; $55ed: $7f
	rra                                              ; $55ee: $1f
	ld e, $d5                                        ; $55ef: $1e $d5
	nop                                              ; $55f1: $00
	nop                                              ; $55f2: $00
	nop                                              ; $55f3: $00
	rst $38                                          ; $55f4: $ff
	ld a, a                                          ; $55f5: $7f
	nop                                              ; $55f6: $00
	nop                                              ; $55f7: $00
	nop                                              ; $55f8: $00
	nop                                              ; $55f9: $00
	nop                                              ; $55fa: $00
	nop                                              ; $55fb: $00
	rst $38                                          ; $55fc: $ff
	ld a, a                                          ; $55fd: $7f
	rra                                              ; $55fe: $1f
	ld e, $80                                        ; $55ff: $1e $80
	ld a, l                                          ; $5601: $7d
	nop                                              ; $5602: $00
	nop                                              ; $5603: $00
	rst $38                                          ; $5604: $ff
	ld a, a                                          ; $5605: $7f
	nop                                              ; $5606: $00
	nop                                              ; $5607: $00
	nop                                              ; $5608: $00
	nop                                              ; $5609: $00
	nop                                              ; $560a: $00
	nop                                              ; $560b: $00
	rst $38                                          ; $560c: $ff
	ld a, a                                          ; $560d: $7f
	rst $38                                          ; $560e: $ff
	ld a, a                                          ; $560f: $7f
	rra                                              ; $5610: $1f
	ld e, $00                                        ; $5611: $1e $00
	nop                                              ; $5613: $00
	rst $38                                          ; $5614: $ff
	ld a, a                                          ; $5615: $7f
	nop                                              ; $5616: $00
	nop                                              ; $5617: $00
	nop                                              ; $5618: $00
	nop                                              ; $5619: $00
	nop                                              ; $561a: $00
	nop                                              ; $561b: $00
	ld hl, $2f1b                                     ; $561c: $21 $1b $2f
	rst $38                                          ; $561f: $ff
	rst $38                                          ; $5620: $ff
	ld a, a                                          ; $5621: $7f
	ld c, b                                          ; $5622: $48
	ld d, e                                          ; $5623: $53
	and b                                            ; $5624: $a0
	dec [hl]                                         ; $5625: $35
	nop                                              ; $5626: $00
	nop                                              ; $5627: $00
	rst $38                                          ; $5628: $ff
	ld a, a                                          ; $5629: $7f
	rst $18                                          ; $562a: $df
	add hl, sp                                       ; $562b: $39
	ld h, e                                          ; $562c: $63
	ld [hl], c                                       ; $562d: $71
	nop                                              ; $562e: $00
	nop                                              ; $562f: $00
	rst $38                                          ; $5630: $ff
	ld a, a                                          ; $5631: $7f
	rst $38                                          ; $5632: $ff
	ld a, a                                          ; $5633: $7f
	rst $18                                          ; $5634: $df
	add hl, sp                                       ; $5635: $39
	nop                                              ; $5636: $00
	nop                                              ; $5637: $00
	rst $38                                          ; $5638: $ff
	ld a, a                                          ; $5639: $7f
	ld h, d                                          ; $563a: $62
	ld a, [hl]                                       ; $563b: $7e
	and b                                            ; $563c: $a0
	dec [hl]                                         ; $563d: $35
	nop                                              ; $563e: $00
	nop                                              ; $563f: $00
	rst $38                                          ; $5640: $ff
	ld a, a                                          ; $5641: $7f
	rst $18                                          ; $5642: $df
	add hl, sp                                       ; $5643: $39
	and b                                            ; $5644: $a0
	dec [hl]                                         ; $5645: $35
	nop                                              ; $5646: $00
	nop                                              ; $5647: $00
	rst $38                                          ; $5648: $ff
	ld a, a                                          ; $5649: $7f
	sbc a                                            ; $564a: $9f
	rla                                              ; $564b: $17
	and b                                            ; $564c: $a0
	dec [hl]                                         ; $564d: $35
	nop                                              ; $564e: $00
	nop                                              ; $564f: $00
	rst $38                                          ; $5650: $ff
	ld a, a                                          ; $5651: $7f
	ld h, d                                          ; $5652: $62
	ld a, [hl]                                       ; $5653: $7e
	ld h, e                                          ; $5654: $63
	ld [hl], c                                       ; $5655: $71
	nop                                              ; $5656: $00
	nop                                              ; $5657: $00
	rst $38                                          ; $5658: $ff
	ld a, a                                          ; $5659: $7f
	rst $38                                          ; $565a: $ff
	ld a, a                                          ; $565b: $7f
	ld h, d                                          ; $565c: $62
	ld a, [hl]                                       ; $565d: $7e
	nop                                              ; $565e: $00
	nop                                              ; $565f: $00
	jr z, jr_02c_567d                                ; $5660: $28 $1b

	cpl                                              ; $5662: $2f
	rst AddAOntoHL                                          ; $5663: $ef
	rst $38                                          ; $5664: $ff
	ld a, a                                          ; $5665: $7f
	ld c, b                                          ; $5666: $48
	ld d, e                                          ; $5667: $53
	and b                                            ; $5668: $a0
	dec [hl]                                         ; $5669: $35
	nop                                              ; $566a: $00
	nop                                              ; $566b: $00
	rst $38                                          ; $566c: $ff
	ld a, a                                          ; $566d: $7f
	rst $18                                          ; $566e: $df
	add hl, sp                                       ; $566f: $39
	and b                                            ; $5670: $a0
	dec [hl]                                         ; $5671: $35
	nop                                              ; $5672: $00
	nop                                              ; $5673: $00
	rst $38                                          ; $5674: $ff
	ld a, a                                          ; $5675: $7f
	sbc a                                            ; $5676: $9f
	rla                                              ; $5677: $17
	ld c, b                                          ; $5678: $48
	ld d, e                                          ; $5679: $53
	nop                                              ; $567a: $00
	nop                                              ; $567b: $00
	rst $38                                          ; $567c: $ff

jr_02c_567d:
	ld a, a                                          ; $567d: $7f
	rst $38                                          ; $567e: $ff
	ld a, a                                          ; $567f: $7f
	ld h, d                                          ; $5680: $62
	ld a, [hl]                                       ; $5681: $7e
	nop                                              ; $5682: $00
	nop                                              ; $5683: $00
	rst $38                                          ; $5684: $ff
	ld a, a                                          ; $5685: $7f
	ld h, d                                          ; $5686: $62
	ld a, [hl]                                       ; $5687: $7e
	and b                                            ; $5688: $a0
	dec [hl]                                         ; $5689: $35
	nop                                              ; $568a: $00
	nop                                              ; $568b: $00
	rst $38                                          ; $568c: $ff
	ld a, a                                          ; $568d: $7f
	rst $18                                          ; $568e: $df
	add hl, sp                                       ; $568f: $39
	nop                                              ; $5690: $00
	ld h, c                                          ; $5691: $61
	nop                                              ; $5692: $00
	nop                                              ; $5693: $00
	rst $38                                          ; $5694: $ff
	ld a, a                                          ; $5695: $7f
	ld h, d                                          ; $5696: $62
	ld a, [hl]                                       ; $5697: $7e
	nop                                              ; $5698: $00
	ld h, c                                          ; $5699: $61
	nop                                              ; $569a: $00
	nop                                              ; $569b: $00
	jr nz, jr_02c_56b9                               ; $569c: $20 $1b

	cpl                                              ; $569e: $2f
	db $e3                                           ; $569f: $e3
	rst $38                                          ; $56a0: $ff
	ld a, a                                          ; $56a1: $7f
	ld c, b                                          ; $56a2: $48
	ld d, e                                          ; $56a3: $53
	and b                                            ; $56a4: $a0
	dec [hl]                                         ; $56a5: $35
	nop                                              ; $56a6: $00
	nop                                              ; $56a7: $00
	rst $38                                          ; $56a8: $ff
	ld a, a                                          ; $56a9: $7f
	rst $18                                          ; $56aa: $df
	add hl, sp                                       ; $56ab: $39
	and b                                            ; $56ac: $a0
	dec [hl]                                         ; $56ad: $35
	nop                                              ; $56ae: $00
	nop                                              ; $56af: $00
	rst $38                                          ; $56b0: $ff
	ld a, a                                          ; $56b1: $7f
	sbc a                                            ; $56b2: $9f
	rla                                              ; $56b3: $17
	ld c, b                                          ; $56b4: $48
	ld d, e                                          ; $56b5: $53
	nop                                              ; $56b6: $00
	nop                                              ; $56b7: $00
	rst $38                                          ; $56b8: $ff

jr_02c_56b9:
	ld a, a                                          ; $56b9: $7f
	rst $18                                          ; $56ba: $df
	add hl, sp                                       ; $56bb: $39
	ld e, e                                          ; $56bc: $5b
	ld d, h                                          ; $56bd: $54
	nop                                              ; $56be: $00
	nop                                              ; $56bf: $00
	rst $38                                          ; $56c0: $ff
	ld a, a                                          ; $56c1: $7f
	sbc $71                                          ; $56c2: $de $71
	ld e, e                                          ; $56c4: $5b
	ld d, h                                          ; $56c5: $54
	nop                                              ; $56c6: $00
	nop                                              ; $56c7: $00
	inc c                                            ; $56c8: $0c
	dec de                                           ; $56c9: $1b
	cpl                                              ; $56ca: $2f
	rst $38                                          ; $56cb: $ff
	rst $38                                          ; $56cc: $ff
	ld a, a                                          ; $56cd: $7f
	ld c, b                                          ; $56ce: $48
	ld d, e                                          ; $56cf: $53
	and b                                            ; $56d0: $a0
	dec [hl]                                         ; $56d1: $35
	nop                                              ; $56d2: $00
	nop                                              ; $56d3: $00
	rst $38                                          ; $56d4: $ff
	ld a, a                                          ; $56d5: $7f
	rra                                              ; $56d6: $1f
	ld b, d                                          ; $56d7: $42
	and b                                            ; $56d8: $a0
	dec [hl]                                         ; $56d9: $35
	nop                                              ; $56da: $00
	nop                                              ; $56db: $00
	rst $38                                          ; $56dc: $ff
	ld a, a                                          ; $56dd: $7f
	ld c, b                                          ; $56de: $48
	ld d, e                                          ; $56df: $53
	rra                                              ; $56e0: $1f
	ld hl, $0000                                     ; $56e1: $21 $00 $00
	rst $38                                          ; $56e4: $ff
	ld a, a                                          ; $56e5: $7f
	rra                                              ; $56e6: $1f
	ld b, d                                          ; $56e7: $42
	rra                                              ; $56e8: $1f
	ld hl, $0000                                     ; $56e9: $21 $00 $00
	rst $38                                          ; $56ec: $ff
	ld a, a                                          ; $56ed: $7f
	rst $38                                          ; $56ee: $ff
	ld a, a                                          ; $56ef: $7f
	rra                                              ; $56f0: $1f
	ld b, d                                          ; $56f1: $42
	nop                                              ; $56f2: $00
	nop                                              ; $56f3: $00
	rst $38                                          ; $56f4: $ff
	ld a, a                                          ; $56f5: $7f
	cp a                                             ; $56f6: $bf
	daa                                              ; $56f7: $27
	rra                                              ; $56f8: $1f
	ld b, d                                          ; $56f9: $42
	nop                                              ; $56fa: $00
	nop                                              ; $56fb: $00
	cp a                                             ; $56fc: $bf
	daa                                              ; $56fd: $27
	dec l                                            ; $56fe: $2d
	ld l, $1f                                        ; $56ff: $2e $1f
	ld hl, $0000                                     ; $5701: $21 $00 $00
	ret nz                                           ; $5704: $c0

	inc bc                                           ; $5705: $03
	jp nz, $c403                                     ; $5706: $c2 $03 $c4

	inc bc                                           ; $5709: $03
	add $03                                          ; $570a: $c6 $03
	inc hl                                           ; $570c: $23
	dec de                                           ; $570d: $1b
	cpl                                              ; $570e: $2f
	rst AddAOntoHL                                          ; $570f: $ef
	rst $38                                          ; $5710: $ff
	ld a, a                                          ; $5711: $7f
	ld c, b                                          ; $5712: $48
	ld d, e                                          ; $5713: $53
	and b                                            ; $5714: $a0
	dec [hl]                                         ; $5715: $35
	nop                                              ; $5716: $00
	nop                                              ; $5717: $00
	rst $38                                          ; $5718: $ff
	ld a, a                                          ; $5719: $7f
	rst $18                                          ; $571a: $df
	add hl, sp                                       ; $571b: $39
	and b                                            ; $571c: $a0
	dec [hl]                                         ; $571d: $35
	nop                                              ; $571e: $00
	nop                                              ; $571f: $00
	rst $38                                          ; $5720: $ff
	ld a, a                                          ; $5721: $7f
	sbc a                                            ; $5722: $9f
	rla                                              ; $5723: $17
	ld c, b                                          ; $5724: $48
	ld d, e                                          ; $5725: $53
	nop                                              ; $5726: $00
	nop                                              ; $5727: $00
	rst $38                                          ; $5728: $ff
	ld a, a                                          ; $5729: $7f
	rst $18                                          ; $572a: $df
	add hl, sp                                       ; $572b: $39
	sub c                                            ; $572c: $91
	ld l, l                                          ; $572d: $6d
	nop                                              ; $572e: $00
	nop                                              ; $572f: $00
	rst $38                                          ; $5730: $ff
	ld a, a                                          ; $5731: $7f
	ld c, b                                          ; $5732: $48
	ld d, e                                          ; $5733: $53
	sub c                                            ; $5734: $91
	ld l, l                                          ; $5735: $6d
	nop                                              ; $5736: $00
	nop                                              ; $5737: $00
	rst $38                                          ; $5738: $ff
	ld a, a                                          ; $5739: $7f
	rst $38                                          ; $573a: $ff
	ld a, a                                          ; $573b: $7f
	rst $18                                          ; $573c: $df
	add hl, sp                                       ; $573d: $39
	nop                                              ; $573e: $00
	nop                                              ; $573f: $00
	rst $38                                          ; $5740: $ff
	ld a, a                                          ; $5741: $7f
	rst $38                                          ; $5742: $ff
	ld a, a                                          ; $5743: $7f
	ld c, b                                          ; $5744: $48
	ld d, e                                          ; $5745: $53
	nop                                              ; $5746: $00
	nop                                              ; $5747: $00
	ld c, c                                          ; $5748: $49
	dec de                                           ; $5749: $1b
	cpl                                              ; $574a: $2f
	rst $38                                          ; $574b: $ff
	rst $38                                          ; $574c: $ff
	ld a, a                                          ; $574d: $7f
	rst $38                                          ; $574e: $ff
	add hl, hl                                       ; $574f: $29
	ld d, d                                          ; $5750: $52
	ld bc, $0000                                     ; $5751: $01 $00 $00
	rst $38                                          ; $5754: $ff
	ld a, a                                          ; $5755: $7f
	rra                                              ; $5756: $1f
	dec hl                                           ; $5757: $2b
	sub l                                            ; $5758: $95
	ld bc, $0000                                     ; $5759: $01 $00 $00
	rst $38                                          ; $575c: $ff
	ld a, a                                          ; $575d: $7f
	add hl, sp                                       ; $575e: $39
	ld a, a                                          ; $575f: $7f
	rst $18                                          ; $5760: $df
	jr nc, jr_02c_5763                               ; $5761: $30 $00

jr_02c_5763:
	nop                                              ; $5763: $00
	rst $38                                          ; $5764: $ff
	ld a, a                                          ; $5765: $7f
	add hl, sp                                       ; $5766: $39
	ld a, a                                          ; $5767: $7f
	rst AddAOntoHL                                          ; $5768: $ef
	ld a, l                                          ; $5769: $7d
	nop                                              ; $576a: $00
	nop                                              ; $576b: $00
	rst $38                                          ; $576c: $ff
	ld a, a                                          ; $576d: $7f
	rst $38                                          ; $576e: $ff
	ld a, a                                          ; $576f: $7f
	rst AddAOntoHL                                          ; $5770: $ef
	ld a, l                                          ; $5771: $7d
	nop                                              ; $5772: $00
	nop                                              ; $5773: $00
	rst $38                                          ; $5774: $ff
	ld a, a                                          ; $5775: $7f
	rst $38                                          ; $5776: $ff
	add hl, hl                                       ; $5777: $29
	rst AddAOntoHL                                          ; $5778: $ef
	ld a, l                                          ; $5779: $7d
	nop                                              ; $577a: $00
	nop                                              ; $577b: $00
	rst $38                                          ; $577c: $ff
	ld a, a                                          ; $577d: $7f
	rst $38                                          ; $577e: $ff
	add hl, hl                                       ; $577f: $29
	db $10                                           ; $5780: $10
	ld bc, $0000                                     ; $5781: $01 $00 $00
	rst $38                                          ; $5784: $ff
	ld a, a                                          ; $5785: $7f
	rst $38                                          ; $5786: $ff
	ld a, a                                          ; $5787: $7f
	rst $38                                          ; $5788: $ff
	add hl, hl                                       ; $5789: $29
	nop                                              ; $578a: $00
	nop                                              ; $578b: $00
	db $10                                           ; $578c: $10
	dec de                                           ; $578d: $1b
	cpl                                              ; $578e: $2f
	ei                                               ; $578f: $fb
	rst $38                                          ; $5790: $ff
	ld a, a                                          ; $5791: $7f
	sub h                                            ; $5792: $94
	ld a, [hl]                                       ; $5793: $7e
	adc h                                            ; $5794: $8c
	ld a, l                                          ; $5795: $7d
	nop                                              ; $5796: $00
	nop                                              ; $5797: $00
	rst $38                                          ; $5798: $ff
	ld a, a                                          ; $5799: $7f
	rra                                              ; $579a: $1f
	dec hl                                           ; $579b: $2b
	sub l                                            ; $579c: $95
	ld bc, $0000                                     ; $579d: $01 $00 $00
	rst $38                                          ; $57a0: $ff
	ld a, a                                          ; $57a1: $7f
	rst $38                                          ; $57a2: $ff
	add hl, hl                                       ; $57a3: $29
	sub l                                            ; $57a4: $95
	ld bc, $0000                                     ; $57a5: $01 $00 $00
	rst $38                                          ; $57a8: $ff
	ld a, a                                          ; $57a9: $7f
	rst $38                                          ; $57aa: $ff
	ld a, a                                          ; $57ab: $7f
	add hl, sp                                       ; $57ac: $39
	ld a, a                                          ; $57ad: $7f
	nop                                              ; $57ae: $00
	nop                                              ; $57af: $00
	rst $38                                          ; $57b0: $ff
	add hl, hl                                       ; $57b1: $29
	sub h                                            ; $57b2: $94
	ld a, [hl]                                       ; $57b3: $7e
	adc h                                            ; $57b4: $8c
	ld a, l                                          ; $57b5: $7d
	nop                                              ; $57b6: $00
	nop                                              ; $57b7: $00
	rst $38                                          ; $57b8: $ff
	ld a, a                                          ; $57b9: $7f
	rst $38                                          ; $57ba: $ff
	add hl, hl                                       ; $57bb: $29
	adc h                                            ; $57bc: $8c
	ld a, l                                          ; $57bd: $7d
	nop                                              ; $57be: $00
	nop                                              ; $57bf: $00
	rst $38                                          ; $57c0: $ff
	ld a, a                                          ; $57c1: $7f
	sub l                                            ; $57c2: $95
	ld bc, $7d8c                                     ; $57c3: $01 $8c $7d
	nop                                              ; $57c6: $00
	nop                                              ; $57c7: $00
	dec c                                            ; $57c8: $0d
	dec de                                           ; $57c9: $1b
	cpl                                              ; $57ca: $2f
	rst $38                                          ; $57cb: $ff
	rst $38                                          ; $57cc: $ff
	ld a, a                                          ; $57cd: $7f
	jp c, $d46d                                      ; $57ce: $da $6d $d4

	ld h, b                                          ; $57d1: $60
	nop                                              ; $57d2: $00
	nop                                              ; $57d3: $00
	rst $38                                          ; $57d4: $ff
	ld a, a                                          ; $57d5: $7f
	rra                                              ; $57d6: $1f
	dec hl                                           ; $57d7: $2b
	sub l                                            ; $57d8: $95
	ld bc, $0000                                     ; $57d9: $01 $00 $00
	rst $38                                          ; $57dc: $ff
	ld a, a                                          ; $57dd: $7f
	rst $38                                          ; $57de: $ff
	add hl, hl                                       ; $57df: $29
	sub l                                            ; $57e0: $95
	ld bc, $0000                                     ; $57e1: $01 $00 $00
	rst $38                                          ; $57e4: $ff
	ld a, a                                          ; $57e5: $7f
	ld hl, sp+$01                                    ; $57e6: $f8 $01
	call nc, JoypadTransitionInterrupt               ; $57e8: $d4 $60 $00
	nop                                              ; $57eb: $00
	rst $38                                          ; $57ec: $ff
	ld a, a                                          ; $57ed: $7f
	rst $38                                          ; $57ee: $ff
	ld a, a                                          ; $57ef: $7f
	ld e, l                                          ; $57f0: $5d
	ld a, [hl]                                       ; $57f1: $7e
	nop                                              ; $57f2: $00
	nop                                              ; $57f3: $00
	rst $38                                          ; $57f4: $ff
	ld a, a                                          ; $57f5: $7f
	rst $38                                          ; $57f6: $ff
	ld a, a                                          ; $57f7: $7f
	ldh [rSC], a                                     ; $57f8: $e0 $02
	nop                                              ; $57fa: $00
	nop                                              ; $57fb: $00
	rst $38                                          ; $57fc: $ff
	ld a, a                                          ; $57fd: $7f
	rst $38                                          ; $57fe: $ff
	add hl, hl                                       ; $57ff: $29
	rst AddAOntoHL                                          ; $5800: $ef
	ld a, l                                          ; $5801: $7d
	nop                                              ; $5802: $00
	nop                                              ; $5803: $00
	rst $38                                          ; $5804: $ff
	ld a, a                                          ; $5805: $7f
	rst $38                                          ; $5806: $ff
	ld a, a                                          ; $5807: $7f
	rst $38                                          ; $5808: $ff
	add hl, hl                                       ; $5809: $29
	nop                                              ; $580a: $00
	nop                                              ; $580b: $00
	inc b                                            ; $580c: $04
	dec de                                           ; $580d: $1b
	cpl                                              ; $580e: $2f
	rst $38                                          ; $580f: $ff
	rst $38                                          ; $5810: $ff
	ld a, a                                          ; $5811: $7f
	rst $38                                          ; $5812: $ff
	add hl, hl                                       ; $5813: $29
	sub l                                            ; $5814: $95
	ld bc, $0000                                     ; $5815: $01 $00 $00
	rst $38                                          ; $5818: $ff
	ld a, a                                          ; $5819: $7f
	rra                                              ; $581a: $1f
	dec hl                                           ; $581b: $2b
	sub l                                            ; $581c: $95
	ld bc, $0000                                     ; $581d: $01 $00 $00
	rst $38                                          ; $5820: $ff
	ld a, a                                          ; $5821: $7f
	ld h, d                                          ; $5822: $62
	ld a, [hl]                                       ; $5823: $7e
	ld h, e                                          ; $5824: $63
	ld [hl], c                                       ; $5825: $71
	nop                                              ; $5826: $00
	nop                                              ; $5827: $00
	rst $38                                          ; $5828: $ff
	ld a, a                                          ; $5829: $7f
	rra                                              ; $582a: $1f
	dec hl                                           ; $582b: $2b
	ld h, e                                          ; $582c: $63
	ld [hl], c                                       ; $582d: $71
	nop                                              ; $582e: $00
	nop                                              ; $582f: $00
	rst $38                                          ; $5830: $ff
	ld a, a                                          ; $5831: $7f
	ld h, d                                          ; $5832: $62
	ld a, [hl]                                       ; $5833: $7e
	sub l                                            ; $5834: $95
	ld bc, $0000                                     ; $5835: $01 $00 $00
	rst $38                                          ; $5838: $ff
	ld a, a                                          ; $5839: $7f
	rst $38                                          ; $583a: $ff
	ld a, a                                          ; $583b: $7f
	rra                                              ; $583c: $1f
	dec hl                                           ; $583d: $2b
	nop                                              ; $583e: $00
	nop                                              ; $583f: $00
	rst $38                                          ; $5840: $ff
	ld a, a                                          ; $5841: $7f
	rst $38                                          ; $5842: $ff
	add hl, hl                                       ; $5843: $29
	rst AddAOntoHL                                          ; $5844: $ef
	ld a, l                                          ; $5845: $7d
	nop                                              ; $5846: $00
	nop                                              ; $5847: $00
	ret nz                                           ; $5848: $c0

	ld bc, $01c2                                     ; $5849: $01 $c2 $01
	call nz, $c601                                   ; $584c: $c4 $01 $c6
	ld bc, $1b30                                     ; $584f: $01 $30 $1b
	dec sp                                           ; $5852: $3b
	ld hl, sp-$01                                    ; $5853: $f8 $ff
	ld a, a                                          ; $5855: $7f
	rst $18                                          ; $5856: $df
	add hl, de                                       ; $5857: $19
	ld a, c                                          ; $5858: $79
	inc c                                            ; $5859: $0c
	nop                                              ; $585a: $00
	nop                                              ; $585b: $00
	rst $38                                          ; $585c: $ff
	ld a, a                                          ; $585d: $7f
	sub h                                            ; $585e: $94
	ld a, d                                          ; $585f: $7a
	adc h                                            ; $5860: $8c
	ld [hl], c                                       ; $5861: $71
	nop                                              ; $5862: $00
	nop                                              ; $5863: $00
	rst $38                                          ; $5864: $ff
	ld a, a                                          ; $5865: $7f
	sub h                                            ; $5866: $94
	ld a, d                                          ; $5867: $7a
	rst $38                                          ; $5868: $ff
	ld a, a                                          ; $5869: $7f
	nop                                              ; $586a: $00
	nop                                              ; $586b: $00
	rst $38                                          ; $586c: $ff
	ld a, a                                          ; $586d: $7f
	rst $18                                          ; $586e: $df
	add hl, de                                       ; $586f: $19
	rst $38                                          ; $5870: $ff
	ld a, a                                          ; $5871: $7f
	nop                                              ; $5872: $00
	nop                                              ; $5873: $00
	rst $38                                          ; $5874: $ff
	ld a, a                                          ; $5875: $7f
	rst $18                                          ; $5876: $df
	add hl, de                                       ; $5877: $19
	adc h                                            ; $5878: $8c
	ld [hl], c                                       ; $5879: $71
	nop                                              ; $587a: $00
	nop                                              ; $587b: $00
	db $10                                           ; $587c: $10
	dec de                                           ; $587d: $1b
	dec sp                                           ; $587e: $3b
	ldh a, [rIE]                                     ; $587f: $f0 $ff
	ld a, a                                          ; $5881: $7f
	rst $18                                          ; $5882: $df
	add hl, de                                       ; $5883: $19
	ld a, c                                          ; $5884: $79
	inc c                                            ; $5885: $0c
	nop                                              ; $5886: $00
	nop                                              ; $5887: $00
	rst $38                                          ; $5888: $ff
	ld a, a                                          ; $5889: $7f
	db $10                                           ; $588a: $10
	ld a, [hl]                                       ; $588b: $7e
	add hl, hl                                       ; $588c: $29
	ld c, c                                          ; $588d: $49
	nop                                              ; $588e: $00
	nop                                              ; $588f: $00
	rst $38                                          ; $5890: $ff
	ld a, a                                          ; $5891: $7f
	db $10                                           ; $5892: $10
	ld a, [hl]                                       ; $5893: $7e
	ld a, c                                          ; $5894: $79
	inc c                                            ; $5895: $0c
	nop                                              ; $5896: $00
	nop                                              ; $5897: $00
	rst $38                                          ; $5898: $ff
	ld a, a                                          ; $5899: $7f
	rst $18                                          ; $589a: $df
	add hl, de                                       ; $589b: $19
	rst $38                                          ; $589c: $ff
	ld a, a                                          ; $589d: $7f
	nop                                              ; $589e: $00
	nop                                              ; $589f: $00
	jr jr_02c_58bd                                   ; $58a0: $18 $1b

	dec sp                                           ; $58a2: $3b
	cp h                                             ; $58a3: $bc
	rst $38                                          ; $58a4: $ff
	ld a, a                                          ; $58a5: $7f
	rst $18                                          ; $58a6: $df
	add hl, de                                       ; $58a7: $19
	ld a, c                                          ; $58a8: $79
	inc c                                            ; $58a9: $0c
	nop                                              ; $58aa: $00
	nop                                              ; $58ab: $00
	rst $38                                          ; $58ac: $ff
	ld a, a                                          ; $58ad: $7f
	db $10                                           ; $58ae: $10
	ld l, e                                          ; $58af: $6b
	ld a, c                                          ; $58b0: $79
	inc c                                            ; $58b1: $0c
	nop                                              ; $58b2: $00
	nop                                              ; $58b3: $00
	rst $38                                          ; $58b4: $ff
	ld a, a                                          ; $58b5: $7f
	rst $18                                          ; $58b6: $df
	add hl, de                                       ; $58b7: $19
	rst $38                                          ; $58b8: $ff
	ld a, a                                          ; $58b9: $7f
	nop                                              ; $58ba: $00
	nop                                              ; $58bb: $00
	rst $38                                          ; $58bc: $ff

jr_02c_58bd:
	ld a, a                                          ; $58bd: $7f
	db $10                                           ; $58be: $10
	ld l, e                                          ; $58bf: $6b
	rst $38                                          ; $58c0: $ff
	ld a, a                                          ; $58c1: $7f
	nop                                              ; $58c2: $00
	nop                                              ; $58c3: $00
	rst $38                                          ; $58c4: $ff
	ld a, a                                          ; $58c5: $7f
	db $10                                           ; $58c6: $10
	ld l, e                                          ; $58c7: $6b
	add b                                            ; $58c8: $80
	ld b, c                                          ; $58c9: $41
	nop                                              ; $58ca: $00
	nop                                              ; $58cb: $00
	ld [$3b1b], sp                                   ; $58cc: $08 $1b $3b
	rst $38                                          ; $58cf: $ff
	rst $38                                          ; $58d0: $ff
	ld a, a                                          ; $58d1: $7f
	inc e                                            ; $58d2: $1c
	ld [bc], a                                       ; $58d3: $02
	xor $00                                          ; $58d4: $ee $00
	nop                                              ; $58d6: $00
	nop                                              ; $58d7: $00
	rst $38                                          ; $58d8: $ff
	ld a, a                                          ; $58d9: $7f
	rst $38                                          ; $58da: $ff
	dec l                                            ; $58db: $2d
	xor $00                                          ; $58dc: $ee $00
	nop                                              ; $58de: $00
	nop                                              ; $58df: $00
	rst $38                                          ; $58e0: $ff
	ld a, a                                          ; $58e1: $7f
	or l                                             ; $58e2: $b5
	halt                                             ; $58e3: $76
	xor b                                            ; $58e4: $a8
	jr nz, jr_02c_58e7                               ; $58e5: $20 $00

jr_02c_58e7:
	nop                                              ; $58e7: $00
	rst $38                                          ; $58e8: $ff
	ld a, a                                          ; $58e9: $7f
	or l                                             ; $58ea: $b5
	halt                                             ; $58eb: $76
	ld e, $49                                        ; $58ec: $1e $49
	nop                                              ; $58ee: $00
	nop                                              ; $58ef: $00
	rst $38                                          ; $58f0: $ff
	ld a, a                                          ; $58f1: $7f
	rst $38                                          ; $58f2: $ff
	dec l                                            ; $58f3: $2d
	rst $38                                          ; $58f4: $ff
	ld a, a                                          ; $58f5: $7f
	nop                                              ; $58f6: $00
	nop                                              ; $58f7: $00
	ret nz                                           ; $58f8: $c0

	ld bc, $01c2                                     ; $58f9: $01 $c2 $01
	call nz, $c601                                   ; $58fc: $c4 $01 $c6
	ld bc, $01c0                                     ; $58ff: $01 $c0 $01
	jp nz, $c401                                     ; $5902: $c2 $01 $c4

	ld bc, $01c6                                     ; $5905: $01 $c6 $01
	ret nz                                           ; $5908: $c0

	ld bc, $01c2                                     ; $5909: $01 $c2 $01
	call nz, $c601                                   ; $590c: $c4 $01 $c6
	ld bc, $1b0c                                     ; $590f: $01 $0c $1b
	dec sp                                           ; $5912: $3b
	rst $38                                          ; $5913: $ff
	rst $38                                          ; $5914: $ff
	ld a, a                                          ; $5915: $7f
	inc e                                            ; $5916: $1c
	ld [bc], a                                       ; $5917: $02
	xor $00                                          ; $5918: $ee $00
	nop                                              ; $591a: $00
	nop                                              ; $591b: $00
	rst $38                                          ; $591c: $ff
	ld a, a                                          ; $591d: $7f
	rst $38                                          ; $591e: $ff
	dec l                                            ; $591f: $2d
	xor $00                                          ; $5920: $ee $00
	nop                                              ; $5922: $00
	nop                                              ; $5923: $00
	rst $38                                          ; $5924: $ff
	ld a, a                                          ; $5925: $7f
	or l                                             ; $5926: $b5
	halt                                             ; $5927: $76
	rst AddAOntoHL                                          ; $5928: $ef
	ld d, c                                          ; $5929: $51
	nop                                              ; $592a: $00
	nop                                              ; $592b: $00
	rst $38                                          ; $592c: $ff
	ld a, a                                          ; $592d: $7f
	or l                                             ; $592e: $b5
	halt                                             ; $592f: $76
	ld e, $49                                        ; $5930: $1e $49
	nop                                              ; $5932: $00
	nop                                              ; $5933: $00
	rst $38                                          ; $5934: $ff
	ld a, a                                          ; $5935: $7f
	rst $38                                          ; $5936: $ff
	dec l                                            ; $5937: $2d
	rst $38                                          ; $5938: $ff
	ld a, a                                          ; $5939: $7f
	nop                                              ; $593a: $00
	nop                                              ; $593b: $00
	rst $38                                          ; $593c: $ff
	ld a, a                                          ; $593d: $7f
	or l                                             ; $593e: $b5
	halt                                             ; $593f: $76
	rst $38                                          ; $5940: $ff
	ld a, a                                          ; $5941: $7f
	nop                                              ; $5942: $00
	nop                                              ; $5943: $00
	ret nz                                           ; $5944: $c0

	ld bc, $01c2                                     ; $5945: $01 $c2 $01
	call nz, $c601                                   ; $5948: $c4 $01 $c6
	ld bc, $01c0                                     ; $594b: $01 $c0 $01
	jp nz, $c401                                     ; $594e: $c2 $01 $c4

	ld bc, $01c6                                     ; $5951: $01 $c6 $01
	inc b                                            ; $5954: $04
	dec de                                           ; $5955: $1b
	add hl, sp                                       ; $5956: $39
	rst $38                                          ; $5957: $ff
	rst $38                                          ; $5958: $ff
	ld a, a                                          ; $5959: $7f
	rra                                              ; $595a: $1f
	ld a, h                                          ; $595b: $7c
	rra                                              ; $595c: $1f
	ld a, h                                          ; $595d: $7c
	rra                                              ; $595e: $1f
	ld a, h                                          ; $595f: $7c
	rst $38                                          ; $5960: $ff
	ld a, a                                          ; $5961: $7f
	rra                                              ; $5962: $1f
	ld a, h                                          ; $5963: $7c
	rra                                              ; $5964: $1f
	ld a, h                                          ; $5965: $7c
	rra                                              ; $5966: $1f
	ld a, h                                          ; $5967: $7c
	rst $38                                          ; $5968: $ff
	ld a, a                                          ; $5969: $7f
	rra                                              ; $596a: $1f
	ld a, h                                          ; $596b: $7c
	rra                                              ; $596c: $1f
	ld a, h                                          ; $596d: $7c
	rra                                              ; $596e: $1f
	ld a, h                                          ; $596f: $7c
	rst $38                                          ; $5970: $ff
	ld a, a                                          ; $5971: $7f
	or b                                             ; $5972: $b0
	ld d, d                                          ; $5973: $52
	db $f4                                           ; $5974: $f4
	add hl, hl                                       ; $5975: $29
	and d                                            ; $5976: $a2
	inc d                                            ; $5977: $14
	rra                                              ; $5978: $1f
	ld a, [hl-]                                      ; $5979: $3a
	dec h                                            ; $597a: $25
	ld a, a                                          ; $597b: $7f
	add b                                            ; $597c: $80
	ld [hl], c                                       ; $597d: $71
	nop                                              ; $597e: $00
	nop                                              ; $597f: $00
	rra                                              ; $5980: $1f
	ld a, [hl-]                                      ; $5981: $3a
	dec h                                            ; $5982: $25
	ld a, a                                          ; $5983: $7f
	rst $38                                          ; $5984: $ff
	ld a, a                                          ; $5985: $7f
	nop                                              ; $5986: $00
	nop                                              ; $5987: $00
	rst $38                                          ; $5988: $ff
	ld a, a                                          ; $5989: $7f
	add b                                            ; $598a: $80
	ld [hl], c                                       ; $598b: $71
	dec d                                            ; $598c: $15
	inc c                                            ; $598d: $0c
	nop                                              ; $598e: $00
	nop                                              ; $598f: $00
	rst $38                                          ; $5990: $ff
	ld a, a                                          ; $5991: $7f
	rst $38                                          ; $5992: $ff
	ld sp, $101f                                     ; $5993: $31 $1f $10
	nop                                              ; $5996: $00
	nop                                              ; $5997: $00
	nop                                              ; $5998: $00
	dec l                                            ; $5999: $2d
	nop                                              ; $599a: $00
	rst SubAFromBC                                          ; $599b: $e7
	rst $38                                          ; $599c: $ff
	ld a, a                                          ; $599d: $7f
	rra                                              ; $599e: $1f
	ld a, h                                          ; $599f: $7c
	rra                                              ; $59a0: $1f
	ld a, h                                          ; $59a1: $7c
	rra                                              ; $59a2: $1f
	ld a, h                                          ; $59a3: $7c
	rst $38                                          ; $59a4: $ff
	ld a, a                                          ; $59a5: $7f
	rra                                              ; $59a6: $1f
	ld a, h                                          ; $59a7: $7c
	rra                                              ; $59a8: $1f
	ld a, h                                          ; $59a9: $7c
	rra                                              ; $59aa: $1f
	ld a, h                                          ; $59ab: $7c
	rst $38                                          ; $59ac: $ff
	ld a, a                                          ; $59ad: $7f
	rra                                              ; $59ae: $1f
	ld a, h                                          ; $59af: $7c
	rra                                              ; $59b0: $1f
	ld a, h                                          ; $59b1: $7c
	rra                                              ; $59b2: $1f
	ld a, h                                          ; $59b3: $7c
	add $34                                          ; $59b4: $c6 $34
	rst $38                                          ; $59b6: $ff
	ld a, a                                          ; $59b7: $7f
	db $10                                           ; $59b8: $10
	ld h, [hl]                                       ; $59b9: $66
	nop                                              ; $59ba: $00
	nop                                              ; $59bb: $00
	sbc a                                            ; $59bc: $9f
	ld [bc], a                                       ; $59bd: $02
	rst $38                                          ; $59be: $ff
	ld a, a                                          ; $59bf: $7f
	ld e, $2a                                        ; $59c0: $1e $2a
	nop                                              ; $59c2: $00
	nop                                              ; $59c3: $00
	inc de                                           ; $59c4: $13
	ld bc, $7fff                                     ; $59c5: $01 $ff $7f
	sbc a                                            ; $59c8: $9f
	ld [bc], a                                       ; $59c9: $02
	nop                                              ; $59ca: $00
	nop                                              ; $59cb: $00
	rst $38                                          ; $59cc: $ff
	rst $38                                          ; $59cd: $ff
	rst $38                                          ; $59ce: $ff
	rst $38                                          ; $59cf: $ff
	rst $38                                          ; $59d0: $ff
	rst $38                                          ; $59d1: $ff
	rst $38                                          ; $59d2: $ff
	rst $38                                          ; $59d3: $ff
	rst $38                                          ; $59d4: $ff
	rst $38                                          ; $59d5: $ff
	rst $38                                          ; $59d6: $ff
	rst $38                                          ; $59d7: $ff
	rst $38                                          ; $59d8: $ff
	rst $38                                          ; $59d9: $ff
	rst $38                                          ; $59da: $ff
	rst $38                                          ; $59db: $ff
	rst $38                                          ; $59dc: $ff
	rst $38                                          ; $59dd: $ff
	rst $38                                          ; $59de: $ff
	rst $38                                          ; $59df: $ff
	rst $38                                          ; $59e0: $ff
	rst $38                                          ; $59e1: $ff
	rst $38                                          ; $59e2: $ff
	rst $38                                          ; $59e3: $ff
	rst $38                                          ; $59e4: $ff
	rst $38                                          ; $59e5: $ff
	rst $38                                          ; $59e6: $ff
	rst $38                                          ; $59e7: $ff
	rst $38                                          ; $59e8: $ff
	rst $38                                          ; $59e9: $ff
	rst $38                                          ; $59ea: $ff
	rst $38                                          ; $59eb: $ff
	rst $38                                          ; $59ec: $ff
	rst $38                                          ; $59ed: $ff
	rst $38                                          ; $59ee: $ff
	rst $38                                          ; $59ef: $ff
	rst $38                                          ; $59f0: $ff
	rst $38                                          ; $59f1: $ff
	rst $38                                          ; $59f2: $ff
	rst $38                                          ; $59f3: $ff
	rst $38                                          ; $59f4: $ff
	rst $38                                          ; $59f5: $ff
	rst $38                                          ; $59f6: $ff
	rst $38                                          ; $59f7: $ff
	rst $38                                          ; $59f8: $ff
	rst $38                                          ; $59f9: $ff
	rst $38                                          ; $59fa: $ff
	rst $38                                          ; $59fb: $ff
	rst $38                                          ; $59fc: $ff
	rst $38                                          ; $59fd: $ff
	rst $38                                          ; $59fe: $ff
	rst $38                                          ; $59ff: $ff
	rst $38                                          ; $5a00: $ff
	rst $38                                          ; $5a01: $ff
	rst $38                                          ; $5a02: $ff
	rst $38                                          ; $5a03: $ff
	rst $38                                          ; $5a04: $ff
	rst $38                                          ; $5a05: $ff
	rst $38                                          ; $5a06: $ff
	rst $38                                          ; $5a07: $ff
	rst $38                                          ; $5a08: $ff
	rst $38                                          ; $5a09: $ff
	rst $38                                          ; $5a0a: $ff
	rst $38                                          ; $5a0b: $ff
	rst $38                                          ; $5a0c: $ff
	rst $38                                          ; $5a0d: $ff
	rst $38                                          ; $5a0e: $ff
	rst $38                                          ; $5a0f: $ff
	rst $38                                          ; $5a10: $ff
	rst $38                                          ; $5a11: $ff
	rst $38                                          ; $5a12: $ff
	rst $38                                          ; $5a13: $ff
	rst $38                                          ; $5a14: $ff
	rst $38                                          ; $5a15: $ff
	rst $38                                          ; $5a16: $ff
	rst $38                                          ; $5a17: $ff
	rst $38                                          ; $5a18: $ff
	rst $38                                          ; $5a19: $ff
	rst $38                                          ; $5a1a: $ff
	rst $38                                          ; $5a1b: $ff
	rst $38                                          ; $5a1c: $ff
	rst $38                                          ; $5a1d: $ff
	rst $38                                          ; $5a1e: $ff
	rst $38                                          ; $5a1f: $ff
	rst $38                                          ; $5a20: $ff
	rst $38                                          ; $5a21: $ff
	rst $38                                          ; $5a22: $ff
	rst $38                                          ; $5a23: $ff
	rst $38                                          ; $5a24: $ff
	rst $38                                          ; $5a25: $ff
	rst $38                                          ; $5a26: $ff
	rst $38                                          ; $5a27: $ff
	rst $38                                          ; $5a28: $ff
	rst $38                                          ; $5a29: $ff

Call_02c_5a2a:
	rst $38                                          ; $5a2a: $ff
	rst $38                                          ; $5a2b: $ff
	rst $38                                          ; $5a2c: $ff
	rst $38                                          ; $5a2d: $ff
	rst $38                                          ; $5a2e: $ff
	rst $38                                          ; $5a2f: $ff
	rst $38                                          ; $5a30: $ff
	rst $38                                          ; $5a31: $ff
	rst $38                                          ; $5a32: $ff
	rst $38                                          ; $5a33: $ff
	rst $38                                          ; $5a34: $ff
	rst $38                                          ; $5a35: $ff
	rst $38                                          ; $5a36: $ff
	rst $38                                          ; $5a37: $ff
	rst $38                                          ; $5a38: $ff
	rst $38                                          ; $5a39: $ff
	rst $38                                          ; $5a3a: $ff
	rst $38                                          ; $5a3b: $ff
	rst $38                                          ; $5a3c: $ff
	rst $38                                          ; $5a3d: $ff
	rst $38                                          ; $5a3e: $ff
	rst $38                                          ; $5a3f: $ff
	rst $38                                          ; $5a40: $ff
	rst $38                                          ; $5a41: $ff
	rst $38                                          ; $5a42: $ff
	rst $38                                          ; $5a43: $ff
	rst $38                                          ; $5a44: $ff
	rst $38                                          ; $5a45: $ff
	rst $38                                          ; $5a46: $ff
	rst $38                                          ; $5a47: $ff
	rst $38                                          ; $5a48: $ff
	rst $38                                          ; $5a49: $ff
	rst $38                                          ; $5a4a: $ff
	rst $38                                          ; $5a4b: $ff
	rst $38                                          ; $5a4c: $ff
	rst $38                                          ; $5a4d: $ff
	rst $38                                          ; $5a4e: $ff
	rst $38                                          ; $5a4f: $ff
	rst $38                                          ; $5a50: $ff
	rst $38                                          ; $5a51: $ff
	rst $38                                          ; $5a52: $ff
	rst $38                                          ; $5a53: $ff
	rst $38                                          ; $5a54: $ff
	rst $38                                          ; $5a55: $ff
	rst $38                                          ; $5a56: $ff
	rst $38                                          ; $5a57: $ff
	rst $38                                          ; $5a58: $ff
	rst $38                                          ; $5a59: $ff
	rst $38                                          ; $5a5a: $ff
	rst $38                                          ; $5a5b: $ff
	rst $38                                          ; $5a5c: $ff
	rst $38                                          ; $5a5d: $ff
	rst $38                                          ; $5a5e: $ff
	rst $38                                          ; $5a5f: $ff
	rst $38                                          ; $5a60: $ff
	rst $38                                          ; $5a61: $ff
	rst $38                                          ; $5a62: $ff
	rst $38                                          ; $5a63: $ff
	rst $38                                          ; $5a64: $ff
	rst $38                                          ; $5a65: $ff
	rst $38                                          ; $5a66: $ff
	rst $38                                          ; $5a67: $ff
	rst $38                                          ; $5a68: $ff
	rst $38                                          ; $5a69: $ff
	rst $38                                          ; $5a6a: $ff
	rst $38                                          ; $5a6b: $ff
	rst $38                                          ; $5a6c: $ff
	rst $38                                          ; $5a6d: $ff
	rst $38                                          ; $5a6e: $ff
	rst $38                                          ; $5a6f: $ff
	rst $38                                          ; $5a70: $ff
	rst $38                                          ; $5a71: $ff
	rst $38                                          ; $5a72: $ff
	rst $38                                          ; $5a73: $ff
	rst $38                                          ; $5a74: $ff
	rst $38                                          ; $5a75: $ff
	rst $38                                          ; $5a76: $ff
	rst $38                                          ; $5a77: $ff
	rst $38                                          ; $5a78: $ff
	rst $38                                          ; $5a79: $ff
	rst $38                                          ; $5a7a: $ff
	rst $38                                          ; $5a7b: $ff
	rst $38                                          ; $5a7c: $ff
	rst $38                                          ; $5a7d: $ff
	rst $38                                          ; $5a7e: $ff
	rst $38                                          ; $5a7f: $ff
	rst $38                                          ; $5a80: $ff
	rst $38                                          ; $5a81: $ff
	rst $38                                          ; $5a82: $ff
	rst $38                                          ; $5a83: $ff
	rst $38                                          ; $5a84: $ff
	rst $38                                          ; $5a85: $ff
	rst $38                                          ; $5a86: $ff
	rst $38                                          ; $5a87: $ff
	rst $38                                          ; $5a88: $ff
	rst $38                                          ; $5a89: $ff
	rst $38                                          ; $5a8a: $ff
	rst $38                                          ; $5a8b: $ff
	rst $38                                          ; $5a8c: $ff
	rst $38                                          ; $5a8d: $ff
	rst $38                                          ; $5a8e: $ff
	rst $38                                          ; $5a8f: $ff
	rst $38                                          ; $5a90: $ff
	rst $38                                          ; $5a91: $ff
	rst $38                                          ; $5a92: $ff
	rst $38                                          ; $5a93: $ff
	rst $38                                          ; $5a94: $ff
	rst $38                                          ; $5a95: $ff
	rst $38                                          ; $5a96: $ff
	rst $38                                          ; $5a97: $ff
	rst $38                                          ; $5a98: $ff
	rst $38                                          ; $5a99: $ff
	rst $38                                          ; $5a9a: $ff
	rst $38                                          ; $5a9b: $ff
	rst $38                                          ; $5a9c: $ff
	rst $38                                          ; $5a9d: $ff
	rst $38                                          ; $5a9e: $ff
	rst $38                                          ; $5a9f: $ff
	rst $38                                          ; $5aa0: $ff
	rst $38                                          ; $5aa1: $ff
	rst $38                                          ; $5aa2: $ff
	rst $38                                          ; $5aa3: $ff
	rst $38                                          ; $5aa4: $ff
	rst $38                                          ; $5aa5: $ff
	rst $38                                          ; $5aa6: $ff
	rst $38                                          ; $5aa7: $ff
	rst $38                                          ; $5aa8: $ff
	rst $38                                          ; $5aa9: $ff
	rst $38                                          ; $5aaa: $ff
	rst $38                                          ; $5aab: $ff
	rst $38                                          ; $5aac: $ff
	rst $38                                          ; $5aad: $ff
	rst $38                                          ; $5aae: $ff
	rst $38                                          ; $5aaf: $ff
	rst $38                                          ; $5ab0: $ff
	rst $38                                          ; $5ab1: $ff
	rst $38                                          ; $5ab2: $ff
	rst $38                                          ; $5ab3: $ff
	rst $38                                          ; $5ab4: $ff
	rst $38                                          ; $5ab5: $ff
	rst $38                                          ; $5ab6: $ff
	rst $38                                          ; $5ab7: $ff
	rst $38                                          ; $5ab8: $ff
	rst $38                                          ; $5ab9: $ff
	rst $38                                          ; $5aba: $ff
	rst $38                                          ; $5abb: $ff
	rst $38                                          ; $5abc: $ff
	rst $38                                          ; $5abd: $ff
	rst $38                                          ; $5abe: $ff
	rst $38                                          ; $5abf: $ff
	rst $38                                          ; $5ac0: $ff
	rst $38                                          ; $5ac1: $ff
	rst $38                                          ; $5ac2: $ff
	rst $38                                          ; $5ac3: $ff
	rst $38                                          ; $5ac4: $ff
	rst $38                                          ; $5ac5: $ff
	rst $38                                          ; $5ac6: $ff
	rst $38                                          ; $5ac7: $ff
	rst $38                                          ; $5ac8: $ff
	rst $38                                          ; $5ac9: $ff
	rst $38                                          ; $5aca: $ff
	rst $38                                          ; $5acb: $ff
	rst $38                                          ; $5acc: $ff
	rst $38                                          ; $5acd: $ff
	rst $38                                          ; $5ace: $ff
	rst $38                                          ; $5acf: $ff
	rst $38                                          ; $5ad0: $ff
	rst $38                                          ; $5ad1: $ff
	rst $38                                          ; $5ad2: $ff
	rst $38                                          ; $5ad3: $ff
	rst $38                                          ; $5ad4: $ff
	rst $38                                          ; $5ad5: $ff
	rst $38                                          ; $5ad6: $ff
	rst $38                                          ; $5ad7: $ff
	rst $38                                          ; $5ad8: $ff
	rst $38                                          ; $5ad9: $ff
	rst $38                                          ; $5ada: $ff
	rst $38                                          ; $5adb: $ff
	rst $38                                          ; $5adc: $ff
	rst $38                                          ; $5add: $ff
	rst $38                                          ; $5ade: $ff
	rst $38                                          ; $5adf: $ff
	rst $38                                          ; $5ae0: $ff
	rst $38                                          ; $5ae1: $ff
	rst $38                                          ; $5ae2: $ff
	rst $38                                          ; $5ae3: $ff
	rst $38                                          ; $5ae4: $ff
	rst $38                                          ; $5ae5: $ff
	rst $38                                          ; $5ae6: $ff
	rst $38                                          ; $5ae7: $ff
	rst $38                                          ; $5ae8: $ff
	rst $38                                          ; $5ae9: $ff
	rst $38                                          ; $5aea: $ff
	rst $38                                          ; $5aeb: $ff
	rst $38                                          ; $5aec: $ff
	rst $38                                          ; $5aed: $ff
	rst $38                                          ; $5aee: $ff
	rst $38                                          ; $5aef: $ff
	rst $38                                          ; $5af0: $ff
	rst $38                                          ; $5af1: $ff
	rst $38                                          ; $5af2: $ff
	rst $38                                          ; $5af3: $ff
	rst $38                                          ; $5af4: $ff
	rst $38                                          ; $5af5: $ff
	rst $38                                          ; $5af6: $ff
	rst $38                                          ; $5af7: $ff
	rst $38                                          ; $5af8: $ff
	rst $38                                          ; $5af9: $ff
	rst $38                                          ; $5afa: $ff
	rst $38                                          ; $5afb: $ff
	rst $38                                          ; $5afc: $ff
	rst $38                                          ; $5afd: $ff
	rst $38                                          ; $5afe: $ff
	rst $38                                          ; $5aff: $ff
	rst $38                                          ; $5b00: $ff
	rst $38                                          ; $5b01: $ff
	rst $38                                          ; $5b02: $ff
	rst $38                                          ; $5b03: $ff
	rst $38                                          ; $5b04: $ff
	rst $38                                          ; $5b05: $ff
	rst $38                                          ; $5b06: $ff
	rst $38                                          ; $5b07: $ff
	rst $38                                          ; $5b08: $ff
	rst $38                                          ; $5b09: $ff
	rst $38                                          ; $5b0a: $ff
	rst $38                                          ; $5b0b: $ff
	rst $38                                          ; $5b0c: $ff
	rst $38                                          ; $5b0d: $ff
	rst $38                                          ; $5b0e: $ff
	rst $38                                          ; $5b0f: $ff
	rst $38                                          ; $5b10: $ff
	rst $38                                          ; $5b11: $ff
	rst $38                                          ; $5b12: $ff
	rst $38                                          ; $5b13: $ff
	rst $38                                          ; $5b14: $ff
	rst $38                                          ; $5b15: $ff
	rst $38                                          ; $5b16: $ff
	rst $38                                          ; $5b17: $ff
	rst $38                                          ; $5b18: $ff
	rst $38                                          ; $5b19: $ff
	rst $38                                          ; $5b1a: $ff
	rst $38                                          ; $5b1b: $ff
	rst $38                                          ; $5b1c: $ff
	rst $38                                          ; $5b1d: $ff
	rst $38                                          ; $5b1e: $ff
	rst $38                                          ; $5b1f: $ff
	rst $38                                          ; $5b20: $ff
	rst $38                                          ; $5b21: $ff
	rst $38                                          ; $5b22: $ff
	rst $38                                          ; $5b23: $ff
	rst $38                                          ; $5b24: $ff
	rst $38                                          ; $5b25: $ff
	rst $38                                          ; $5b26: $ff
	rst $38                                          ; $5b27: $ff
	rst $38                                          ; $5b28: $ff
	rst $38                                          ; $5b29: $ff
	rst $38                                          ; $5b2a: $ff
	rst $38                                          ; $5b2b: $ff
	rst $38                                          ; $5b2c: $ff
	rst $38                                          ; $5b2d: $ff
	rst $38                                          ; $5b2e: $ff
	rst $38                                          ; $5b2f: $ff
	rst $38                                          ; $5b30: $ff
	rst $38                                          ; $5b31: $ff
	rst $38                                          ; $5b32: $ff
	rst $38                                          ; $5b33: $ff
	rst $38                                          ; $5b34: $ff
	rst $38                                          ; $5b35: $ff
	rst $38                                          ; $5b36: $ff
	rst $38                                          ; $5b37: $ff
	rst $38                                          ; $5b38: $ff
	rst $38                                          ; $5b39: $ff
	rst $38                                          ; $5b3a: $ff
	rst $38                                          ; $5b3b: $ff
	rst $38                                          ; $5b3c: $ff
	rst $38                                          ; $5b3d: $ff
	rst $38                                          ; $5b3e: $ff
	rst $38                                          ; $5b3f: $ff
	rst $38                                          ; $5b40: $ff
	rst $38                                          ; $5b41: $ff
	rst $38                                          ; $5b42: $ff
	rst $38                                          ; $5b43: $ff
	rst $38                                          ; $5b44: $ff
	rst $38                                          ; $5b45: $ff
	rst $38                                          ; $5b46: $ff
	rst $38                                          ; $5b47: $ff
	rst $38                                          ; $5b48: $ff
	rst $38                                          ; $5b49: $ff
	rst $38                                          ; $5b4a: $ff
	rst $38                                          ; $5b4b: $ff
	rst $38                                          ; $5b4c: $ff
	rst $38                                          ; $5b4d: $ff
	rst $38                                          ; $5b4e: $ff
	rst $38                                          ; $5b4f: $ff
	rst $38                                          ; $5b50: $ff
	rst $38                                          ; $5b51: $ff
	rst $38                                          ; $5b52: $ff
	rst $38                                          ; $5b53: $ff
	rst $38                                          ; $5b54: $ff
	rst $38                                          ; $5b55: $ff
	rst $38                                          ; $5b56: $ff
	rst $38                                          ; $5b57: $ff
	rst $38                                          ; $5b58: $ff
	rst $38                                          ; $5b59: $ff
	rst $38                                          ; $5b5a: $ff
	rst $38                                          ; $5b5b: $ff
	rst $38                                          ; $5b5c: $ff
	rst $38                                          ; $5b5d: $ff
	rst $38                                          ; $5b5e: $ff
	rst $38                                          ; $5b5f: $ff
	rst $38                                          ; $5b60: $ff
	rst $38                                          ; $5b61: $ff
	rst $38                                          ; $5b62: $ff
	rst $38                                          ; $5b63: $ff
	rst $38                                          ; $5b64: $ff
	rst $38                                          ; $5b65: $ff
	rst $38                                          ; $5b66: $ff
	rst $38                                          ; $5b67: $ff
	rst $38                                          ; $5b68: $ff
	rst $38                                          ; $5b69: $ff
	rst $38                                          ; $5b6a: $ff
	rst $38                                          ; $5b6b: $ff
	rst $38                                          ; $5b6c: $ff
	rst $38                                          ; $5b6d: $ff
	rst $38                                          ; $5b6e: $ff
	rst $38                                          ; $5b6f: $ff
	rst $38                                          ; $5b70: $ff
	rst $38                                          ; $5b71: $ff
	rst $38                                          ; $5b72: $ff
	rst $38                                          ; $5b73: $ff
	rst $38                                          ; $5b74: $ff
	rst $38                                          ; $5b75: $ff
	rst $38                                          ; $5b76: $ff
	rst $38                                          ; $5b77: $ff
	rst $38                                          ; $5b78: $ff
	rst $38                                          ; $5b79: $ff
	rst $38                                          ; $5b7a: $ff
	rst $38                                          ; $5b7b: $ff
	rst $38                                          ; $5b7c: $ff
	rst $38                                          ; $5b7d: $ff
	rst $38                                          ; $5b7e: $ff
	rst $38                                          ; $5b7f: $ff
	rst $38                                          ; $5b80: $ff
	rst $38                                          ; $5b81: $ff
	rst $38                                          ; $5b82: $ff
	rst $38                                          ; $5b83: $ff
	rst $38                                          ; $5b84: $ff
	rst $38                                          ; $5b85: $ff
	rst $38                                          ; $5b86: $ff
	rst $38                                          ; $5b87: $ff
	rst $38                                          ; $5b88: $ff
	rst $38                                          ; $5b89: $ff
	rst $38                                          ; $5b8a: $ff
	rst $38                                          ; $5b8b: $ff
	rst $38                                          ; $5b8c: $ff
	rst $38                                          ; $5b8d: $ff
	rst $38                                          ; $5b8e: $ff
	rst $38                                          ; $5b8f: $ff
	rst $38                                          ; $5b90: $ff
	rst $38                                          ; $5b91: $ff
	rst $38                                          ; $5b92: $ff
	rst $38                                          ; $5b93: $ff
	rst $38                                          ; $5b94: $ff
	rst $38                                          ; $5b95: $ff
	rst $38                                          ; $5b96: $ff
	rst $38                                          ; $5b97: $ff
	rst $38                                          ; $5b98: $ff
	rst $38                                          ; $5b99: $ff
	rst $38                                          ; $5b9a: $ff
	rst $38                                          ; $5b9b: $ff
	rst $38                                          ; $5b9c: $ff
	rst $38                                          ; $5b9d: $ff
	rst $38                                          ; $5b9e: $ff
	rst $38                                          ; $5b9f: $ff
	rst $38                                          ; $5ba0: $ff
	rst $38                                          ; $5ba1: $ff
	rst $38                                          ; $5ba2: $ff
	rst $38                                          ; $5ba3: $ff
	rst $38                                          ; $5ba4: $ff
	rst $38                                          ; $5ba5: $ff
	rst $38                                          ; $5ba6: $ff
	rst $38                                          ; $5ba7: $ff
	rst $38                                          ; $5ba8: $ff
	rst $38                                          ; $5ba9: $ff
	rst $38                                          ; $5baa: $ff
	rst $38                                          ; $5bab: $ff
	rst $38                                          ; $5bac: $ff
	rst $38                                          ; $5bad: $ff
	rst $38                                          ; $5bae: $ff
	rst $38                                          ; $5baf: $ff
	rst $38                                          ; $5bb0: $ff
	rst $38                                          ; $5bb1: $ff
	rst $38                                          ; $5bb2: $ff
	rst $38                                          ; $5bb3: $ff
	rst $38                                          ; $5bb4: $ff
	rst $38                                          ; $5bb5: $ff
	rst $38                                          ; $5bb6: $ff
	rst $38                                          ; $5bb7: $ff
	rst $38                                          ; $5bb8: $ff
	rst $38                                          ; $5bb9: $ff
	rst $38                                          ; $5bba: $ff
	rst $38                                          ; $5bbb: $ff
	rst $38                                          ; $5bbc: $ff
	rst $38                                          ; $5bbd: $ff
	rst $38                                          ; $5bbe: $ff
	rst $38                                          ; $5bbf: $ff
	rst $38                                          ; $5bc0: $ff
	rst $38                                          ; $5bc1: $ff
	rst $38                                          ; $5bc2: $ff
	rst $38                                          ; $5bc3: $ff
	rst $38                                          ; $5bc4: $ff
	rst $38                                          ; $5bc5: $ff
	rst $38                                          ; $5bc6: $ff
	rst $38                                          ; $5bc7: $ff
	rst $38                                          ; $5bc8: $ff
	rst $38                                          ; $5bc9: $ff
	rst $38                                          ; $5bca: $ff
	rst $38                                          ; $5bcb: $ff
	rst $38                                          ; $5bcc: $ff
	rst $38                                          ; $5bcd: $ff
	rst $38                                          ; $5bce: $ff
	rst $38                                          ; $5bcf: $ff
	rst $38                                          ; $5bd0: $ff
	rst $38                                          ; $5bd1: $ff
	rst $38                                          ; $5bd2: $ff
	rst $38                                          ; $5bd3: $ff
	rst $38                                          ; $5bd4: $ff
	rst $38                                          ; $5bd5: $ff
	rst $38                                          ; $5bd6: $ff
	rst $38                                          ; $5bd7: $ff
	rst $38                                          ; $5bd8: $ff
	rst $38                                          ; $5bd9: $ff
	rst $38                                          ; $5bda: $ff
	rst $38                                          ; $5bdb: $ff
	rst $38                                          ; $5bdc: $ff
	rst $38                                          ; $5bdd: $ff
	rst $38                                          ; $5bde: $ff
	rst $38                                          ; $5bdf: $ff
	rst $38                                          ; $5be0: $ff
	rst $38                                          ; $5be1: $ff
	rst $38                                          ; $5be2: $ff
	rst $38                                          ; $5be3: $ff
	rst $38                                          ; $5be4: $ff
	rst $38                                          ; $5be5: $ff
	rst $38                                          ; $5be6: $ff
	rst $38                                          ; $5be7: $ff
	rst $38                                          ; $5be8: $ff
	rst $38                                          ; $5be9: $ff
	rst $38                                          ; $5bea: $ff
	rst $38                                          ; $5beb: $ff
	rst $38                                          ; $5bec: $ff
	rst $38                                          ; $5bed: $ff
	rst $38                                          ; $5bee: $ff
	rst $38                                          ; $5bef: $ff
	rst $38                                          ; $5bf0: $ff
	rst $38                                          ; $5bf1: $ff
	rst $38                                          ; $5bf2: $ff
	rst $38                                          ; $5bf3: $ff
	rst $38                                          ; $5bf4: $ff
	rst $38                                          ; $5bf5: $ff
	rst $38                                          ; $5bf6: $ff
	rst $38                                          ; $5bf7: $ff
	rst $38                                          ; $5bf8: $ff
	rst $38                                          ; $5bf9: $ff
	rst $38                                          ; $5bfa: $ff
	rst $38                                          ; $5bfb: $ff
	rst $38                                          ; $5bfc: $ff
	rst $38                                          ; $5bfd: $ff
	rst $38                                          ; $5bfe: $ff
	rst $38                                          ; $5bff: $ff
	rst $38                                          ; $5c00: $ff
	rst $38                                          ; $5c01: $ff
	rst $38                                          ; $5c02: $ff
	rst $38                                          ; $5c03: $ff
	rst $38                                          ; $5c04: $ff
	rst $38                                          ; $5c05: $ff
	rst $38                                          ; $5c06: $ff
	rst $38                                          ; $5c07: $ff
	rst $38                                          ; $5c08: $ff
	rst $38                                          ; $5c09: $ff
	rst $38                                          ; $5c0a: $ff
	rst $38                                          ; $5c0b: $ff
	rst $38                                          ; $5c0c: $ff
	rst $38                                          ; $5c0d: $ff
	rst $38                                          ; $5c0e: $ff
	rst $38                                          ; $5c0f: $ff
	rst $38                                          ; $5c10: $ff
	rst $38                                          ; $5c11: $ff
	rst $38                                          ; $5c12: $ff
	rst $38                                          ; $5c13: $ff
	rst $38                                          ; $5c14: $ff
	rst $38                                          ; $5c15: $ff
	rst $38                                          ; $5c16: $ff
	rst $38                                          ; $5c17: $ff
	rst $38                                          ; $5c18: $ff
	rst $38                                          ; $5c19: $ff
	rst $38                                          ; $5c1a: $ff
	rst $38                                          ; $5c1b: $ff
	rst $38                                          ; $5c1c: $ff
	rst $38                                          ; $5c1d: $ff
	rst $38                                          ; $5c1e: $ff
	rst $38                                          ; $5c1f: $ff
	rst $38                                          ; $5c20: $ff
	rst $38                                          ; $5c21: $ff
	rst $38                                          ; $5c22: $ff
	rst $38                                          ; $5c23: $ff
	rst $38                                          ; $5c24: $ff
	rst $38                                          ; $5c25: $ff
	rst $38                                          ; $5c26: $ff
	rst $38                                          ; $5c27: $ff
	rst $38                                          ; $5c28: $ff
	rst $38                                          ; $5c29: $ff
	rst $38                                          ; $5c2a: $ff
	rst $38                                          ; $5c2b: $ff
	rst $38                                          ; $5c2c: $ff
	rst $38                                          ; $5c2d: $ff
	rst $38                                          ; $5c2e: $ff
	rst $38                                          ; $5c2f: $ff
	rst $38                                          ; $5c30: $ff
	rst $38                                          ; $5c31: $ff
	rst $38                                          ; $5c32: $ff
	rst $38                                          ; $5c33: $ff
	rst $38                                          ; $5c34: $ff
	rst $38                                          ; $5c35: $ff
	rst $38                                          ; $5c36: $ff
	rst $38                                          ; $5c37: $ff
	rst $38                                          ; $5c38: $ff
	rst $38                                          ; $5c39: $ff
	rst $38                                          ; $5c3a: $ff
	rst $38                                          ; $5c3b: $ff
	rst $38                                          ; $5c3c: $ff
	rst $38                                          ; $5c3d: $ff
	rst $38                                          ; $5c3e: $ff
	rst $38                                          ; $5c3f: $ff
	rst $38                                          ; $5c40: $ff
	rst $38                                          ; $5c41: $ff
	rst $38                                          ; $5c42: $ff
	rst $38                                          ; $5c43: $ff
	rst $38                                          ; $5c44: $ff
	rst $38                                          ; $5c45: $ff
	rst $38                                          ; $5c46: $ff
	rst $38                                          ; $5c47: $ff
	rst $38                                          ; $5c48: $ff
	rst $38                                          ; $5c49: $ff
	rst $38                                          ; $5c4a: $ff
	rst $38                                          ; $5c4b: $ff
	rst $38                                          ; $5c4c: $ff
	rst $38                                          ; $5c4d: $ff
	rst $38                                          ; $5c4e: $ff
	rst $38                                          ; $5c4f: $ff
	rst $38                                          ; $5c50: $ff
	rst $38                                          ; $5c51: $ff
	rst $38                                          ; $5c52: $ff
	rst $38                                          ; $5c53: $ff
	rst $38                                          ; $5c54: $ff
	rst $38                                          ; $5c55: $ff
	rst $38                                          ; $5c56: $ff
	rst $38                                          ; $5c57: $ff
	rst $38                                          ; $5c58: $ff
	rst $38                                          ; $5c59: $ff
	rst $38                                          ; $5c5a: $ff
	rst $38                                          ; $5c5b: $ff
	rst $38                                          ; $5c5c: $ff
	rst $38                                          ; $5c5d: $ff
	rst $38                                          ; $5c5e: $ff
	rst $38                                          ; $5c5f: $ff
	rst $38                                          ; $5c60: $ff
	rst $38                                          ; $5c61: $ff
	rst $38                                          ; $5c62: $ff
	rst $38                                          ; $5c63: $ff
	rst $38                                          ; $5c64: $ff
	rst $38                                          ; $5c65: $ff
	rst $38                                          ; $5c66: $ff
	rst $38                                          ; $5c67: $ff
	rst $38                                          ; $5c68: $ff
	rst $38                                          ; $5c69: $ff
	rst $38                                          ; $5c6a: $ff
	rst $38                                          ; $5c6b: $ff
	rst $38                                          ; $5c6c: $ff
	rst $38                                          ; $5c6d: $ff
	rst $38                                          ; $5c6e: $ff
	rst $38                                          ; $5c6f: $ff
	rst $38                                          ; $5c70: $ff
	rst $38                                          ; $5c71: $ff
	rst $38                                          ; $5c72: $ff
	rst $38                                          ; $5c73: $ff
	rst $38                                          ; $5c74: $ff
	rst $38                                          ; $5c75: $ff
	rst $38                                          ; $5c76: $ff
	rst $38                                          ; $5c77: $ff
	rst $38                                          ; $5c78: $ff
	rst $38                                          ; $5c79: $ff
	rst $38                                          ; $5c7a: $ff
	rst $38                                          ; $5c7b: $ff
	rst $38                                          ; $5c7c: $ff
	rst $38                                          ; $5c7d: $ff
	rst $38                                          ; $5c7e: $ff
	rst $38                                          ; $5c7f: $ff
	rst $38                                          ; $5c80: $ff
	rst $38                                          ; $5c81: $ff
	rst $38                                          ; $5c82: $ff
	rst $38                                          ; $5c83: $ff
	rst $38                                          ; $5c84: $ff
	rst $38                                          ; $5c85: $ff
	rst $38                                          ; $5c86: $ff
	rst $38                                          ; $5c87: $ff
	rst $38                                          ; $5c88: $ff
	rst $38                                          ; $5c89: $ff
	rst $38                                          ; $5c8a: $ff
	rst $38                                          ; $5c8b: $ff
	rst $38                                          ; $5c8c: $ff
	rst $38                                          ; $5c8d: $ff
	rst $38                                          ; $5c8e: $ff
	rst $38                                          ; $5c8f: $ff
	rst $38                                          ; $5c90: $ff
	rst $38                                          ; $5c91: $ff
	rst $38                                          ; $5c92: $ff
	rst $38                                          ; $5c93: $ff
	rst $38                                          ; $5c94: $ff
	rst $38                                          ; $5c95: $ff
	rst $38                                          ; $5c96: $ff
	rst $38                                          ; $5c97: $ff
	rst $38                                          ; $5c98: $ff
	rst $38                                          ; $5c99: $ff
	rst $38                                          ; $5c9a: $ff
	rst $38                                          ; $5c9b: $ff
	rst $38                                          ; $5c9c: $ff
	rst $38                                          ; $5c9d: $ff
	rst $38                                          ; $5c9e: $ff
	rst $38                                          ; $5c9f: $ff
	rst $38                                          ; $5ca0: $ff
	rst $38                                          ; $5ca1: $ff
	rst $38                                          ; $5ca2: $ff
	rst $38                                          ; $5ca3: $ff
	rst $38                                          ; $5ca4: $ff
	rst $38                                          ; $5ca5: $ff
	rst $38                                          ; $5ca6: $ff
	rst $38                                          ; $5ca7: $ff
	rst $38                                          ; $5ca8: $ff
	rst $38                                          ; $5ca9: $ff
	rst $38                                          ; $5caa: $ff
	rst $38                                          ; $5cab: $ff
	rst $38                                          ; $5cac: $ff
	rst $38                                          ; $5cad: $ff
	rst $38                                          ; $5cae: $ff
	rst $38                                          ; $5caf: $ff
	rst $38                                          ; $5cb0: $ff
	rst $38                                          ; $5cb1: $ff
	rst $38                                          ; $5cb2: $ff
	rst $38                                          ; $5cb3: $ff
	rst $38                                          ; $5cb4: $ff
	rst $38                                          ; $5cb5: $ff
	rst $38                                          ; $5cb6: $ff
	rst $38                                          ; $5cb7: $ff
	rst $38                                          ; $5cb8: $ff
	rst $38                                          ; $5cb9: $ff
	rst $38                                          ; $5cba: $ff
	rst $38                                          ; $5cbb: $ff
	rst $38                                          ; $5cbc: $ff
	rst $38                                          ; $5cbd: $ff
	rst $38                                          ; $5cbe: $ff
	rst $38                                          ; $5cbf: $ff
	rst $38                                          ; $5cc0: $ff
	rst $38                                          ; $5cc1: $ff
	rst $38                                          ; $5cc2: $ff
	rst $38                                          ; $5cc3: $ff
	rst $38                                          ; $5cc4: $ff
	rst $38                                          ; $5cc5: $ff
	rst $38                                          ; $5cc6: $ff
	rst $38                                          ; $5cc7: $ff
	rst $38                                          ; $5cc8: $ff
	rst $38                                          ; $5cc9: $ff
	rst $38                                          ; $5cca: $ff
	rst $38                                          ; $5ccb: $ff
	rst $38                                          ; $5ccc: $ff
	rst $38                                          ; $5ccd: $ff
	rst $38                                          ; $5cce: $ff
	rst $38                                          ; $5ccf: $ff
	rst $38                                          ; $5cd0: $ff
	rst $38                                          ; $5cd1: $ff
	rst $38                                          ; $5cd2: $ff
	rst $38                                          ; $5cd3: $ff
	rst $38                                          ; $5cd4: $ff
	rst $38                                          ; $5cd5: $ff
	rst $38                                          ; $5cd6: $ff
	rst $38                                          ; $5cd7: $ff
	rst $38                                          ; $5cd8: $ff
	rst $38                                          ; $5cd9: $ff
	rst $38                                          ; $5cda: $ff
	rst $38                                          ; $5cdb: $ff
	rst $38                                          ; $5cdc: $ff
	rst $38                                          ; $5cdd: $ff
	rst $38                                          ; $5cde: $ff
	rst $38                                          ; $5cdf: $ff
	rst $38                                          ; $5ce0: $ff
	rst $38                                          ; $5ce1: $ff
	rst $38                                          ; $5ce2: $ff
	rst $38                                          ; $5ce3: $ff
	rst $38                                          ; $5ce4: $ff
	rst $38                                          ; $5ce5: $ff
	rst $38                                          ; $5ce6: $ff
	rst $38                                          ; $5ce7: $ff
	rst $38                                          ; $5ce8: $ff
	rst $38                                          ; $5ce9: $ff
	rst $38                                          ; $5cea: $ff
	rst $38                                          ; $5ceb: $ff
	rst $38                                          ; $5cec: $ff
	rst $38                                          ; $5ced: $ff
	rst $38                                          ; $5cee: $ff
	rst $38                                          ; $5cef: $ff
	rst $38                                          ; $5cf0: $ff
	rst $38                                          ; $5cf1: $ff
	rst $38                                          ; $5cf2: $ff
	rst $38                                          ; $5cf3: $ff
	rst $38                                          ; $5cf4: $ff
	rst $38                                          ; $5cf5: $ff
	rst $38                                          ; $5cf6: $ff
	rst $38                                          ; $5cf7: $ff
	rst $38                                          ; $5cf8: $ff
	rst $38                                          ; $5cf9: $ff
	rst $38                                          ; $5cfa: $ff
	rst $38                                          ; $5cfb: $ff
	rst $38                                          ; $5cfc: $ff
	rst $38                                          ; $5cfd: $ff
	rst $38                                          ; $5cfe: $ff
	rst $38                                          ; $5cff: $ff
	rst $38                                          ; $5d00: $ff
	rst $38                                          ; $5d01: $ff
	rst $38                                          ; $5d02: $ff
	rst $38                                          ; $5d03: $ff
	rst $38                                          ; $5d04: $ff
	rst $38                                          ; $5d05: $ff
	rst $38                                          ; $5d06: $ff
	rst $38                                          ; $5d07: $ff
	rst $38                                          ; $5d08: $ff
	rst $38                                          ; $5d09: $ff
	rst $38                                          ; $5d0a: $ff
	rst $38                                          ; $5d0b: $ff
	rst $38                                          ; $5d0c: $ff
	rst $38                                          ; $5d0d: $ff
	rst $38                                          ; $5d0e: $ff
	rst $38                                          ; $5d0f: $ff
	rst $38                                          ; $5d10: $ff
	rst $38                                          ; $5d11: $ff
	rst $38                                          ; $5d12: $ff
	rst $38                                          ; $5d13: $ff
	rst $38                                          ; $5d14: $ff
	rst $38                                          ; $5d15: $ff
	rst $38                                          ; $5d16: $ff
	rst $38                                          ; $5d17: $ff
	rst $38                                          ; $5d18: $ff
	rst $38                                          ; $5d19: $ff
	rst $38                                          ; $5d1a: $ff
	rst $38                                          ; $5d1b: $ff
	rst $38                                          ; $5d1c: $ff
	rst $38                                          ; $5d1d: $ff
	rst $38                                          ; $5d1e: $ff
	rst $38                                          ; $5d1f: $ff
	rst $38                                          ; $5d20: $ff
	rst $38                                          ; $5d21: $ff
	rst $38                                          ; $5d22: $ff
	rst $38                                          ; $5d23: $ff
	rst $38                                          ; $5d24: $ff
	rst $38                                          ; $5d25: $ff
	rst $38                                          ; $5d26: $ff
	rst $38                                          ; $5d27: $ff
	rst $38                                          ; $5d28: $ff
	rst $38                                          ; $5d29: $ff
	rst $38                                          ; $5d2a: $ff
	rst $38                                          ; $5d2b: $ff
	rst $38                                          ; $5d2c: $ff
	rst $38                                          ; $5d2d: $ff
	rst $38                                          ; $5d2e: $ff
	rst $38                                          ; $5d2f: $ff
	rst $38                                          ; $5d30: $ff
	rst $38                                          ; $5d31: $ff
	rst $38                                          ; $5d32: $ff
	rst $38                                          ; $5d33: $ff
	rst $38                                          ; $5d34: $ff
	rst $38                                          ; $5d35: $ff
	rst $38                                          ; $5d36: $ff
	rst $38                                          ; $5d37: $ff
	rst $38                                          ; $5d38: $ff
	rst $38                                          ; $5d39: $ff
	rst $38                                          ; $5d3a: $ff
	rst $38                                          ; $5d3b: $ff
	rst $38                                          ; $5d3c: $ff
	rst $38                                          ; $5d3d: $ff
	rst $38                                          ; $5d3e: $ff
	rst $38                                          ; $5d3f: $ff
	rst $38                                          ; $5d40: $ff
	rst $38                                          ; $5d41: $ff
	rst $38                                          ; $5d42: $ff
	rst $38                                          ; $5d43: $ff
	rst $38                                          ; $5d44: $ff
	rst $38                                          ; $5d45: $ff
	rst $38                                          ; $5d46: $ff
	rst $38                                          ; $5d47: $ff
	rst $38                                          ; $5d48: $ff
	rst $38                                          ; $5d49: $ff
	rst $38                                          ; $5d4a: $ff
	rst $38                                          ; $5d4b: $ff
	rst $38                                          ; $5d4c: $ff
	rst $38                                          ; $5d4d: $ff
	rst $38                                          ; $5d4e: $ff
	rst $38                                          ; $5d4f: $ff
	rst $38                                          ; $5d50: $ff
	rst $38                                          ; $5d51: $ff
	rst $38                                          ; $5d52: $ff
	rst $38                                          ; $5d53: $ff
	rst $38                                          ; $5d54: $ff
	rst $38                                          ; $5d55: $ff
	rst $38                                          ; $5d56: $ff
	rst $38                                          ; $5d57: $ff
	rst $38                                          ; $5d58: $ff
	rst $38                                          ; $5d59: $ff
	rst $38                                          ; $5d5a: $ff
	rst $38                                          ; $5d5b: $ff
	rst $38                                          ; $5d5c: $ff
	rst $38                                          ; $5d5d: $ff
	rst $38                                          ; $5d5e: $ff
	rst $38                                          ; $5d5f: $ff
	rst $38                                          ; $5d60: $ff
	rst $38                                          ; $5d61: $ff
	rst $38                                          ; $5d62: $ff
	rst $38                                          ; $5d63: $ff
	rst $38                                          ; $5d64: $ff
	rst $38                                          ; $5d65: $ff
	rst $38                                          ; $5d66: $ff
	rst $38                                          ; $5d67: $ff
	rst $38                                          ; $5d68: $ff
	rst $38                                          ; $5d69: $ff
	rst $38                                          ; $5d6a: $ff
	rst $38                                          ; $5d6b: $ff
	rst $38                                          ; $5d6c: $ff
	rst $38                                          ; $5d6d: $ff
	rst $38                                          ; $5d6e: $ff
	rst $38                                          ; $5d6f: $ff
	rst $38                                          ; $5d70: $ff
	rst $38                                          ; $5d71: $ff
	rst $38                                          ; $5d72: $ff
	rst $38                                          ; $5d73: $ff
	rst $38                                          ; $5d74: $ff
	rst $38                                          ; $5d75: $ff
	rst $38                                          ; $5d76: $ff
	rst $38                                          ; $5d77: $ff
	rst $38                                          ; $5d78: $ff
	rst $38                                          ; $5d79: $ff
	rst $38                                          ; $5d7a: $ff
	rst $38                                          ; $5d7b: $ff
	rst $38                                          ; $5d7c: $ff
	rst $38                                          ; $5d7d: $ff
	rst $38                                          ; $5d7e: $ff
	rst $38                                          ; $5d7f: $ff
	rst $38                                          ; $5d80: $ff
	rst $38                                          ; $5d81: $ff
	rst $38                                          ; $5d82: $ff
	rst $38                                          ; $5d83: $ff
	rst $38                                          ; $5d84: $ff
	rst $38                                          ; $5d85: $ff
	rst $38                                          ; $5d86: $ff
	rst $38                                          ; $5d87: $ff
	rst $38                                          ; $5d88: $ff
	rst $38                                          ; $5d89: $ff
	rst $38                                          ; $5d8a: $ff
	rst $38                                          ; $5d8b: $ff
	rst $38                                          ; $5d8c: $ff
	rst $38                                          ; $5d8d: $ff
	rst $38                                          ; $5d8e: $ff
	rst $38                                          ; $5d8f: $ff
	rst $38                                          ; $5d90: $ff
	rst $38                                          ; $5d91: $ff
	rst $38                                          ; $5d92: $ff
	rst $38                                          ; $5d93: $ff
	rst $38                                          ; $5d94: $ff
	rst $38                                          ; $5d95: $ff
	rst $38                                          ; $5d96: $ff
	rst $38                                          ; $5d97: $ff
	rst $38                                          ; $5d98: $ff
	rst $38                                          ; $5d99: $ff
	rst $38                                          ; $5d9a: $ff
	rst $38                                          ; $5d9b: $ff
	rst $38                                          ; $5d9c: $ff
	rst $38                                          ; $5d9d: $ff
	rst $38                                          ; $5d9e: $ff
	rst $38                                          ; $5d9f: $ff
	rst $38                                          ; $5da0: $ff
	rst $38                                          ; $5da1: $ff
	rst $38                                          ; $5da2: $ff
	rst $38                                          ; $5da3: $ff
	rst $38                                          ; $5da4: $ff
	rst $38                                          ; $5da5: $ff
	rst $38                                          ; $5da6: $ff
	rst $38                                          ; $5da7: $ff
	rst $38                                          ; $5da8: $ff
	rst $38                                          ; $5da9: $ff
	rst $38                                          ; $5daa: $ff
	rst $38                                          ; $5dab: $ff
	rst $38                                          ; $5dac: $ff
	rst $38                                          ; $5dad: $ff
	rst $38                                          ; $5dae: $ff
	rst $38                                          ; $5daf: $ff
	rst $38                                          ; $5db0: $ff
	rst $38                                          ; $5db1: $ff
	rst $38                                          ; $5db2: $ff
	rst $38                                          ; $5db3: $ff
	rst $38                                          ; $5db4: $ff
	rst $38                                          ; $5db5: $ff
	rst $38                                          ; $5db6: $ff
	rst $38                                          ; $5db7: $ff
	rst $38                                          ; $5db8: $ff
	rst $38                                          ; $5db9: $ff
	rst $38                                          ; $5dba: $ff
	rst $38                                          ; $5dbb: $ff
	rst $38                                          ; $5dbc: $ff
	rst $38                                          ; $5dbd: $ff
	rst $38                                          ; $5dbe: $ff
	rst $38                                          ; $5dbf: $ff
	rst $38                                          ; $5dc0: $ff
	rst $38                                          ; $5dc1: $ff
	rst $38                                          ; $5dc2: $ff
	rst $38                                          ; $5dc3: $ff
	rst $38                                          ; $5dc4: $ff
	rst $38                                          ; $5dc5: $ff
	rst $38                                          ; $5dc6: $ff
	rst $38                                          ; $5dc7: $ff
	rst $38                                          ; $5dc8: $ff
	rst $38                                          ; $5dc9: $ff
	rst $38                                          ; $5dca: $ff
	rst $38                                          ; $5dcb: $ff
	rst $38                                          ; $5dcc: $ff
	rst $38                                          ; $5dcd: $ff
	rst $38                                          ; $5dce: $ff
	rst $38                                          ; $5dcf: $ff
	rst $38                                          ; $5dd0: $ff
	rst $38                                          ; $5dd1: $ff
	rst $38                                          ; $5dd2: $ff
	rst $38                                          ; $5dd3: $ff
	rst $38                                          ; $5dd4: $ff
	rst $38                                          ; $5dd5: $ff
	rst $38                                          ; $5dd6: $ff
	rst $38                                          ; $5dd7: $ff
	rst $38                                          ; $5dd8: $ff
	rst $38                                          ; $5dd9: $ff
	rst $38                                          ; $5dda: $ff
	rst $38                                          ; $5ddb: $ff
	rst $38                                          ; $5ddc: $ff
	rst $38                                          ; $5ddd: $ff
	rst $38                                          ; $5dde: $ff
	rst $38                                          ; $5ddf: $ff
	rst $38                                          ; $5de0: $ff
	rst $38                                          ; $5de1: $ff
	rst $38                                          ; $5de2: $ff
	rst $38                                          ; $5de3: $ff
	rst $38                                          ; $5de4: $ff
	rst $38                                          ; $5de5: $ff
	rst $38                                          ; $5de6: $ff
	rst $38                                          ; $5de7: $ff
	rst $38                                          ; $5de8: $ff
	rst $38                                          ; $5de9: $ff
	rst $38                                          ; $5dea: $ff
	rst $38                                          ; $5deb: $ff
	rst $38                                          ; $5dec: $ff
	rst $38                                          ; $5ded: $ff
	rst $38                                          ; $5dee: $ff
	rst $38                                          ; $5def: $ff
	rst $38                                          ; $5df0: $ff
	rst $38                                          ; $5df1: $ff
	rst $38                                          ; $5df2: $ff
	rst $38                                          ; $5df3: $ff
	rst $38                                          ; $5df4: $ff
	rst $38                                          ; $5df5: $ff
	rst $38                                          ; $5df6: $ff
	rst $38                                          ; $5df7: $ff
	rst $38                                          ; $5df8: $ff
	rst $38                                          ; $5df9: $ff
	rst $38                                          ; $5dfa: $ff
	rst $38                                          ; $5dfb: $ff
	rst $38                                          ; $5dfc: $ff
	rst $38                                          ; $5dfd: $ff
	rst $38                                          ; $5dfe: $ff
	rst $38                                          ; $5dff: $ff
	rst $38                                          ; $5e00: $ff
	rst $38                                          ; $5e01: $ff
	rst $38                                          ; $5e02: $ff
	rst $38                                          ; $5e03: $ff
	rst $38                                          ; $5e04: $ff
	rst $38                                          ; $5e05: $ff
	rst $38                                          ; $5e06: $ff
	rst $38                                          ; $5e07: $ff
	rst $38                                          ; $5e08: $ff
	rst $38                                          ; $5e09: $ff
	rst $38                                          ; $5e0a: $ff
	rst $38                                          ; $5e0b: $ff
	rst $38                                          ; $5e0c: $ff
	rst $38                                          ; $5e0d: $ff
	rst $38                                          ; $5e0e: $ff
	rst $38                                          ; $5e0f: $ff
	rst $38                                          ; $5e10: $ff
	rst $38                                          ; $5e11: $ff
	rst $38                                          ; $5e12: $ff
	rst $38                                          ; $5e13: $ff
	rst $38                                          ; $5e14: $ff
	rst $38                                          ; $5e15: $ff
	rst $38                                          ; $5e16: $ff
	rst $38                                          ; $5e17: $ff
	rst $38                                          ; $5e18: $ff
	rst $38                                          ; $5e19: $ff
	rst $38                                          ; $5e1a: $ff
	rst $38                                          ; $5e1b: $ff
	rst $38                                          ; $5e1c: $ff
	rst $38                                          ; $5e1d: $ff
	rst $38                                          ; $5e1e: $ff
	rst $38                                          ; $5e1f: $ff
	rst $38                                          ; $5e20: $ff
	rst $38                                          ; $5e21: $ff
	rst $38                                          ; $5e22: $ff
	rst $38                                          ; $5e23: $ff
	rst $38                                          ; $5e24: $ff
	rst $38                                          ; $5e25: $ff
	rst $38                                          ; $5e26: $ff
	rst $38                                          ; $5e27: $ff
	rst $38                                          ; $5e28: $ff
	rst $38                                          ; $5e29: $ff
	rst $38                                          ; $5e2a: $ff
	rst $38                                          ; $5e2b: $ff
	rst $38                                          ; $5e2c: $ff
	rst $38                                          ; $5e2d: $ff
	rst $38                                          ; $5e2e: $ff
	rst $38                                          ; $5e2f: $ff
	rst $38                                          ; $5e30: $ff
	rst $38                                          ; $5e31: $ff
	rst $38                                          ; $5e32: $ff
	rst $38                                          ; $5e33: $ff
	rst $38                                          ; $5e34: $ff
	rst $38                                          ; $5e35: $ff
	rst $38                                          ; $5e36: $ff
	rst $38                                          ; $5e37: $ff
	rst $38                                          ; $5e38: $ff
	rst $38                                          ; $5e39: $ff
	rst $38                                          ; $5e3a: $ff
	rst $38                                          ; $5e3b: $ff
	rst $38                                          ; $5e3c: $ff
	rst $38                                          ; $5e3d: $ff
	rst $38                                          ; $5e3e: $ff
	rst $38                                          ; $5e3f: $ff
	rst $38                                          ; $5e40: $ff
	rst $38                                          ; $5e41: $ff
	rst $38                                          ; $5e42: $ff
	rst $38                                          ; $5e43: $ff
	rst $38                                          ; $5e44: $ff
	rst $38                                          ; $5e45: $ff
	rst $38                                          ; $5e46: $ff
	rst $38                                          ; $5e47: $ff
	rst $38                                          ; $5e48: $ff
	rst $38                                          ; $5e49: $ff
	rst $38                                          ; $5e4a: $ff
	rst $38                                          ; $5e4b: $ff
	rst $38                                          ; $5e4c: $ff
	rst $38                                          ; $5e4d: $ff
	rst $38                                          ; $5e4e: $ff
	rst $38                                          ; $5e4f: $ff
	rst $38                                          ; $5e50: $ff
	rst $38                                          ; $5e51: $ff
	rst $38                                          ; $5e52: $ff
	rst $38                                          ; $5e53: $ff
	rst $38                                          ; $5e54: $ff
	rst $38                                          ; $5e55: $ff
	rst $38                                          ; $5e56: $ff
	rst $38                                          ; $5e57: $ff
	rst $38                                          ; $5e58: $ff
	rst $38                                          ; $5e59: $ff
	rst $38                                          ; $5e5a: $ff
	rst $38                                          ; $5e5b: $ff
	rst $38                                          ; $5e5c: $ff
	rst $38                                          ; $5e5d: $ff
	rst $38                                          ; $5e5e: $ff
	rst $38                                          ; $5e5f: $ff
	rst $38                                          ; $5e60: $ff
	rst $38                                          ; $5e61: $ff
	rst $38                                          ; $5e62: $ff
	rst $38                                          ; $5e63: $ff
	rst $38                                          ; $5e64: $ff
	rst $38                                          ; $5e65: $ff
	rst $38                                          ; $5e66: $ff
	rst $38                                          ; $5e67: $ff
	rst $38                                          ; $5e68: $ff
	rst $38                                          ; $5e69: $ff
	rst $38                                          ; $5e6a: $ff
	rst $38                                          ; $5e6b: $ff
	rst $38                                          ; $5e6c: $ff
	rst $38                                          ; $5e6d: $ff
	rst $38                                          ; $5e6e: $ff
	rst $38                                          ; $5e6f: $ff
	rst $38                                          ; $5e70: $ff
	rst $38                                          ; $5e71: $ff
	rst $38                                          ; $5e72: $ff
	rst $38                                          ; $5e73: $ff
	rst $38                                          ; $5e74: $ff
	rst $38                                          ; $5e75: $ff
	rst $38                                          ; $5e76: $ff
	rst $38                                          ; $5e77: $ff
	rst $38                                          ; $5e78: $ff
	rst $38                                          ; $5e79: $ff
	rst $38                                          ; $5e7a: $ff
	rst $38                                          ; $5e7b: $ff
	rst $38                                          ; $5e7c: $ff
	rst $38                                          ; $5e7d: $ff
	rst $38                                          ; $5e7e: $ff

Jump_02c_5e7f:
	rst $38                                          ; $5e7f: $ff
	rst $38                                          ; $5e80: $ff
	rst $38                                          ; $5e81: $ff
	rst $38                                          ; $5e82: $ff
	rst $38                                          ; $5e83: $ff
	rst $38                                          ; $5e84: $ff
	rst $38                                          ; $5e85: $ff
	rst $38                                          ; $5e86: $ff
	rst $38                                          ; $5e87: $ff
	rst $38                                          ; $5e88: $ff
	rst $38                                          ; $5e89: $ff
	rst $38                                          ; $5e8a: $ff
	rst $38                                          ; $5e8b: $ff
	rst $38                                          ; $5e8c: $ff
	rst $38                                          ; $5e8d: $ff
	rst $38                                          ; $5e8e: $ff
	rst $38                                          ; $5e8f: $ff
	rst $38                                          ; $5e90: $ff
	rst $38                                          ; $5e91: $ff
	rst $38                                          ; $5e92: $ff
	rst $38                                          ; $5e93: $ff
	rst $38                                          ; $5e94: $ff
	rst $38                                          ; $5e95: $ff
	rst $38                                          ; $5e96: $ff
	rst $38                                          ; $5e97: $ff
	rst $38                                          ; $5e98: $ff
	rst $38                                          ; $5e99: $ff
	rst $38                                          ; $5e9a: $ff
	rst $38                                          ; $5e9b: $ff
	rst $38                                          ; $5e9c: $ff
	rst $38                                          ; $5e9d: $ff
	rst $38                                          ; $5e9e: $ff
	rst $38                                          ; $5e9f: $ff
	rst $38                                          ; $5ea0: $ff
	rst $38                                          ; $5ea1: $ff
	rst $38                                          ; $5ea2: $ff
	rst $38                                          ; $5ea3: $ff
	rst $38                                          ; $5ea4: $ff
	rst $38                                          ; $5ea5: $ff
	rst $38                                          ; $5ea6: $ff
	rst $38                                          ; $5ea7: $ff
	rst $38                                          ; $5ea8: $ff
	rst $38                                          ; $5ea9: $ff
	rst $38                                          ; $5eaa: $ff
	rst $38                                          ; $5eab: $ff
	rst $38                                          ; $5eac: $ff
	rst $38                                          ; $5ead: $ff
	rst $38                                          ; $5eae: $ff
	rst $38                                          ; $5eaf: $ff
	rst $38                                          ; $5eb0: $ff
	rst $38                                          ; $5eb1: $ff
	rst $38                                          ; $5eb2: $ff
	rst $38                                          ; $5eb3: $ff
	rst $38                                          ; $5eb4: $ff
	rst $38                                          ; $5eb5: $ff
	rst $38                                          ; $5eb6: $ff
	rst $38                                          ; $5eb7: $ff
	rst $38                                          ; $5eb8: $ff
	rst $38                                          ; $5eb9: $ff
	rst $38                                          ; $5eba: $ff
	rst $38                                          ; $5ebb: $ff
	rst $38                                          ; $5ebc: $ff
	rst $38                                          ; $5ebd: $ff
	rst $38                                          ; $5ebe: $ff
	rst $38                                          ; $5ebf: $ff
	rst $38                                          ; $5ec0: $ff
	rst $38                                          ; $5ec1: $ff
	rst $38                                          ; $5ec2: $ff
	rst $38                                          ; $5ec3: $ff
	rst $38                                          ; $5ec4: $ff
	rst $38                                          ; $5ec5: $ff
	rst $38                                          ; $5ec6: $ff
	rst $38                                          ; $5ec7: $ff
	rst $38                                          ; $5ec8: $ff
	rst $38                                          ; $5ec9: $ff
	rst $38                                          ; $5eca: $ff
	rst $38                                          ; $5ecb: $ff
	rst $38                                          ; $5ecc: $ff
	rst $38                                          ; $5ecd: $ff
	rst $38                                          ; $5ece: $ff
	rst $38                                          ; $5ecf: $ff
	rst $38                                          ; $5ed0: $ff
	rst $38                                          ; $5ed1: $ff
	rst $38                                          ; $5ed2: $ff
	rst $38                                          ; $5ed3: $ff
	rst $38                                          ; $5ed4: $ff
	rst $38                                          ; $5ed5: $ff
	rst $38                                          ; $5ed6: $ff
	rst $38                                          ; $5ed7: $ff
	rst $38                                          ; $5ed8: $ff
	rst $38                                          ; $5ed9: $ff
	rst $38                                          ; $5eda: $ff
	rst $38                                          ; $5edb: $ff
	rst $38                                          ; $5edc: $ff
	rst $38                                          ; $5edd: $ff
	rst $38                                          ; $5ede: $ff
	rst $38                                          ; $5edf: $ff
	rst $38                                          ; $5ee0: $ff
	rst $38                                          ; $5ee1: $ff
	rst $38                                          ; $5ee2: $ff
	rst $38                                          ; $5ee3: $ff
	rst $38                                          ; $5ee4: $ff
	rst $38                                          ; $5ee5: $ff
	rst $38                                          ; $5ee6: $ff
	rst $38                                          ; $5ee7: $ff
	rst $38                                          ; $5ee8: $ff
	rst $38                                          ; $5ee9: $ff
	rst $38                                          ; $5eea: $ff
	rst $38                                          ; $5eeb: $ff
	rst $38                                          ; $5eec: $ff
	rst $38                                          ; $5eed: $ff
	rst $38                                          ; $5eee: $ff
	rst $38                                          ; $5eef: $ff
	rst $38                                          ; $5ef0: $ff
	rst $38                                          ; $5ef1: $ff
	rst $38                                          ; $5ef2: $ff
	rst $38                                          ; $5ef3: $ff
	rst $38                                          ; $5ef4: $ff
	rst $38                                          ; $5ef5: $ff
	rst $38                                          ; $5ef6: $ff
	rst $38                                          ; $5ef7: $ff
	rst $38                                          ; $5ef8: $ff
	rst $38                                          ; $5ef9: $ff
	rst $38                                          ; $5efa: $ff
	rst $38                                          ; $5efb: $ff
	rst $38                                          ; $5efc: $ff
	rst $38                                          ; $5efd: $ff
	rst $38                                          ; $5efe: $ff
	rst $38                                          ; $5eff: $ff
	rst $38                                          ; $5f00: $ff
	rst $38                                          ; $5f01: $ff
	rst $38                                          ; $5f02: $ff
	rst $38                                          ; $5f03: $ff
	rst $38                                          ; $5f04: $ff
	rst $38                                          ; $5f05: $ff
	rst $38                                          ; $5f06: $ff
	rst $38                                          ; $5f07: $ff
	rst $38                                          ; $5f08: $ff
	rst $38                                          ; $5f09: $ff
	rst $38                                          ; $5f0a: $ff
	rst $38                                          ; $5f0b: $ff
	rst $38                                          ; $5f0c: $ff
	rst $38                                          ; $5f0d: $ff
	rst $38                                          ; $5f0e: $ff
	rst $38                                          ; $5f0f: $ff
	rst $38                                          ; $5f10: $ff
	rst $38                                          ; $5f11: $ff
	rst $38                                          ; $5f12: $ff
	rst $38                                          ; $5f13: $ff
	rst $38                                          ; $5f14: $ff
	rst $38                                          ; $5f15: $ff
	rst $38                                          ; $5f16: $ff
	rst $38                                          ; $5f17: $ff
	rst $38                                          ; $5f18: $ff
	rst $38                                          ; $5f19: $ff
	rst $38                                          ; $5f1a: $ff
	rst $38                                          ; $5f1b: $ff
	rst $38                                          ; $5f1c: $ff
	rst $38                                          ; $5f1d: $ff
	rst $38                                          ; $5f1e: $ff
	rst $38                                          ; $5f1f: $ff
	rst $38                                          ; $5f20: $ff
	rst $38                                          ; $5f21: $ff
	rst $38                                          ; $5f22: $ff
	rst $38                                          ; $5f23: $ff
	rst $38                                          ; $5f24: $ff
	rst $38                                          ; $5f25: $ff
	rst $38                                          ; $5f26: $ff
	rst $38                                          ; $5f27: $ff
	rst $38                                          ; $5f28: $ff
	rst $38                                          ; $5f29: $ff
	rst $38                                          ; $5f2a: $ff
	rst $38                                          ; $5f2b: $ff
	rst $38                                          ; $5f2c: $ff
	rst $38                                          ; $5f2d: $ff
	rst $38                                          ; $5f2e: $ff
	rst $38                                          ; $5f2f: $ff
	rst $38                                          ; $5f30: $ff
	rst $38                                          ; $5f31: $ff
	rst $38                                          ; $5f32: $ff
	rst $38                                          ; $5f33: $ff
	rst $38                                          ; $5f34: $ff
	rst $38                                          ; $5f35: $ff
	rst $38                                          ; $5f36: $ff
	rst $38                                          ; $5f37: $ff
	rst $38                                          ; $5f38: $ff
	rst $38                                          ; $5f39: $ff
	rst $38                                          ; $5f3a: $ff
	rst $38                                          ; $5f3b: $ff
	rst $38                                          ; $5f3c: $ff
	rst $38                                          ; $5f3d: $ff
	rst $38                                          ; $5f3e: $ff
	rst $38                                          ; $5f3f: $ff
	rst $38                                          ; $5f40: $ff
	rst $38                                          ; $5f41: $ff
	rst $38                                          ; $5f42: $ff
	rst $38                                          ; $5f43: $ff
	rst $38                                          ; $5f44: $ff
	rst $38                                          ; $5f45: $ff
	rst $38                                          ; $5f46: $ff
	rst $38                                          ; $5f47: $ff
	rst $38                                          ; $5f48: $ff
	rst $38                                          ; $5f49: $ff
	rst $38                                          ; $5f4a: $ff
	rst $38                                          ; $5f4b: $ff
	rst $38                                          ; $5f4c: $ff
	rst $38                                          ; $5f4d: $ff
	rst $38                                          ; $5f4e: $ff
	rst $38                                          ; $5f4f: $ff
	rst $38                                          ; $5f50: $ff
	rst $38                                          ; $5f51: $ff
	rst $38                                          ; $5f52: $ff
	rst $38                                          ; $5f53: $ff
	rst $38                                          ; $5f54: $ff
	rst $38                                          ; $5f55: $ff
	rst $38                                          ; $5f56: $ff
	rst $38                                          ; $5f57: $ff
	rst $38                                          ; $5f58: $ff
	rst $38                                          ; $5f59: $ff
	rst $38                                          ; $5f5a: $ff
	rst $38                                          ; $5f5b: $ff
	rst $38                                          ; $5f5c: $ff
	rst $38                                          ; $5f5d: $ff
	rst $38                                          ; $5f5e: $ff
	rst $38                                          ; $5f5f: $ff
	rst $38                                          ; $5f60: $ff
	rst $38                                          ; $5f61: $ff
	rst $38                                          ; $5f62: $ff
	rst $38                                          ; $5f63: $ff
	rst $38                                          ; $5f64: $ff
	rst $38                                          ; $5f65: $ff
	rst $38                                          ; $5f66: $ff
	rst $38                                          ; $5f67: $ff
	rst $38                                          ; $5f68: $ff
	rst $38                                          ; $5f69: $ff
	rst $38                                          ; $5f6a: $ff
	rst $38                                          ; $5f6b: $ff
	rst $38                                          ; $5f6c: $ff
	rst $38                                          ; $5f6d: $ff
	rst $38                                          ; $5f6e: $ff
	rst $38                                          ; $5f6f: $ff
	rst $38                                          ; $5f70: $ff
	rst $38                                          ; $5f71: $ff
	rst $38                                          ; $5f72: $ff
	rst $38                                          ; $5f73: $ff
	rst $38                                          ; $5f74: $ff
	rst $38                                          ; $5f75: $ff
	rst $38                                          ; $5f76: $ff
	rst $38                                          ; $5f77: $ff
	rst $38                                          ; $5f78: $ff
	rst $38                                          ; $5f79: $ff
	rst $38                                          ; $5f7a: $ff
	rst $38                                          ; $5f7b: $ff
	rst $38                                          ; $5f7c: $ff
	rst $38                                          ; $5f7d: $ff
	rst $38                                          ; $5f7e: $ff
	rst $38                                          ; $5f7f: $ff
	rst $38                                          ; $5f80: $ff
	rst $38                                          ; $5f81: $ff
	rst $38                                          ; $5f82: $ff
	rst $38                                          ; $5f83: $ff
	rst $38                                          ; $5f84: $ff
	rst $38                                          ; $5f85: $ff
	rst $38                                          ; $5f86: $ff
	rst $38                                          ; $5f87: $ff
	rst $38                                          ; $5f88: $ff
	rst $38                                          ; $5f89: $ff
	rst $38                                          ; $5f8a: $ff
	rst $38                                          ; $5f8b: $ff
	rst $38                                          ; $5f8c: $ff
	rst $38                                          ; $5f8d: $ff
	rst $38                                          ; $5f8e: $ff
	rst $38                                          ; $5f8f: $ff
	rst $38                                          ; $5f90: $ff
	rst $38                                          ; $5f91: $ff
	rst $38                                          ; $5f92: $ff
	rst $38                                          ; $5f93: $ff
	rst $38                                          ; $5f94: $ff
	rst $38                                          ; $5f95: $ff
	rst $38                                          ; $5f96: $ff
	rst $38                                          ; $5f97: $ff
	rst $38                                          ; $5f98: $ff
	rst $38                                          ; $5f99: $ff
	rst $38                                          ; $5f9a: $ff
	rst $38                                          ; $5f9b: $ff
	rst $38                                          ; $5f9c: $ff
	rst $38                                          ; $5f9d: $ff
	rst $38                                          ; $5f9e: $ff
	rst $38                                          ; $5f9f: $ff
	rst $38                                          ; $5fa0: $ff
	rst $38                                          ; $5fa1: $ff
	rst $38                                          ; $5fa2: $ff
	rst $38                                          ; $5fa3: $ff
	rst $38                                          ; $5fa4: $ff
	rst $38                                          ; $5fa5: $ff
	rst $38                                          ; $5fa6: $ff
	rst $38                                          ; $5fa7: $ff
	rst $38                                          ; $5fa8: $ff
	rst $38                                          ; $5fa9: $ff
	rst $38                                          ; $5faa: $ff
	rst $38                                          ; $5fab: $ff
	rst $38                                          ; $5fac: $ff
	rst $38                                          ; $5fad: $ff
	rst $38                                          ; $5fae: $ff
	rst $38                                          ; $5faf: $ff
	rst $38                                          ; $5fb0: $ff
	rst $38                                          ; $5fb1: $ff
	rst $38                                          ; $5fb2: $ff
	rst $38                                          ; $5fb3: $ff
	rst $38                                          ; $5fb4: $ff
	rst $38                                          ; $5fb5: $ff
	rst $38                                          ; $5fb6: $ff
	rst $38                                          ; $5fb7: $ff
	rst $38                                          ; $5fb8: $ff
	rst $38                                          ; $5fb9: $ff
	rst $38                                          ; $5fba: $ff
	rst $38                                          ; $5fbb: $ff
	rst $38                                          ; $5fbc: $ff
	rst $38                                          ; $5fbd: $ff
	rst $38                                          ; $5fbe: $ff
	rst $38                                          ; $5fbf: $ff
	rst $38                                          ; $5fc0: $ff
	rst $38                                          ; $5fc1: $ff
	rst $38                                          ; $5fc2: $ff
	rst $38                                          ; $5fc3: $ff
	rst $38                                          ; $5fc4: $ff
	rst $38                                          ; $5fc5: $ff
	rst $38                                          ; $5fc6: $ff
	rst $38                                          ; $5fc7: $ff
	rst $38                                          ; $5fc8: $ff
	rst $38                                          ; $5fc9: $ff
	rst $38                                          ; $5fca: $ff
	rst $38                                          ; $5fcb: $ff
	rst $38                                          ; $5fcc: $ff
	rst $38                                          ; $5fcd: $ff
	rst $38                                          ; $5fce: $ff
	rst $38                                          ; $5fcf: $ff
	rst $38                                          ; $5fd0: $ff
	rst $38                                          ; $5fd1: $ff
	rst $38                                          ; $5fd2: $ff
	rst $38                                          ; $5fd3: $ff
	rst $38                                          ; $5fd4: $ff
	rst $38                                          ; $5fd5: $ff
	rst $38                                          ; $5fd6: $ff
	rst $38                                          ; $5fd7: $ff
	rst $38                                          ; $5fd8: $ff
	rst $38                                          ; $5fd9: $ff
	rst $38                                          ; $5fda: $ff
	rst $38                                          ; $5fdb: $ff
	rst $38                                          ; $5fdc: $ff
	rst $38                                          ; $5fdd: $ff
	rst $38                                          ; $5fde: $ff
	rst $38                                          ; $5fdf: $ff
	rst $38                                          ; $5fe0: $ff
	rst $38                                          ; $5fe1: $ff
	rst $38                                          ; $5fe2: $ff
	rst $38                                          ; $5fe3: $ff
	rst $38                                          ; $5fe4: $ff
	rst $38                                          ; $5fe5: $ff
	rst $38                                          ; $5fe6: $ff
	rst $38                                          ; $5fe7: $ff
	rst $38                                          ; $5fe8: $ff
	rst $38                                          ; $5fe9: $ff
	rst $38                                          ; $5fea: $ff
	rst $38                                          ; $5feb: $ff
	rst $38                                          ; $5fec: $ff
	rst $38                                          ; $5fed: $ff
	rst $38                                          ; $5fee: $ff
	rst $38                                          ; $5fef: $ff
	rst $38                                          ; $5ff0: $ff
	rst $38                                          ; $5ff1: $ff
	rst $38                                          ; $5ff2: $ff
	rst $38                                          ; $5ff3: $ff
	rst $38                                          ; $5ff4: $ff
	rst $38                                          ; $5ff5: $ff
	rst $38                                          ; $5ff6: $ff
	rst $38                                          ; $5ff7: $ff
	rst $38                                          ; $5ff8: $ff
	rst $38                                          ; $5ff9: $ff
	rst $38                                          ; $5ffa: $ff
	rst $38                                          ; $5ffb: $ff
	rst $38                                          ; $5ffc: $ff
	rst $38                                          ; $5ffd: $ff
	rst $38                                          ; $5ffe: $ff
	rst $38                                          ; $5fff: $ff
	rst $38                                          ; $6000: $ff
	rst $38                                          ; $6001: $ff
	rst $38                                          ; $6002: $ff
	rst $38                                          ; $6003: $ff
	rst $38                                          ; $6004: $ff
	rst $38                                          ; $6005: $ff
	rst $38                                          ; $6006: $ff
	rst $38                                          ; $6007: $ff
	rst $38                                          ; $6008: $ff
	rst $38                                          ; $6009: $ff
	rst $38                                          ; $600a: $ff
	rst $38                                          ; $600b: $ff
	rst $38                                          ; $600c: $ff
	rst $38                                          ; $600d: $ff
	rst $38                                          ; $600e: $ff
	rst $38                                          ; $600f: $ff
	rst $38                                          ; $6010: $ff
	rst $38                                          ; $6011: $ff
	rst $38                                          ; $6012: $ff
	rst $38                                          ; $6013: $ff
	rst $38                                          ; $6014: $ff
	rst $38                                          ; $6015: $ff
	rst $38                                          ; $6016: $ff
	rst $38                                          ; $6017: $ff
	rst $38                                          ; $6018: $ff
	rst $38                                          ; $6019: $ff
	rst $38                                          ; $601a: $ff
	rst $38                                          ; $601b: $ff
	rst $38                                          ; $601c: $ff
	rst $38                                          ; $601d: $ff
	rst $38                                          ; $601e: $ff
	rst $38                                          ; $601f: $ff
	rst $38                                          ; $6020: $ff
	rst $38                                          ; $6021: $ff
	rst $38                                          ; $6022: $ff
	rst $38                                          ; $6023: $ff
	rst $38                                          ; $6024: $ff
	rst $38                                          ; $6025: $ff
	rst $38                                          ; $6026: $ff
	rst $38                                          ; $6027: $ff
	rst $38                                          ; $6028: $ff
	rst $38                                          ; $6029: $ff
	rst $38                                          ; $602a: $ff
	rst $38                                          ; $602b: $ff
	rst $38                                          ; $602c: $ff
	rst $38                                          ; $602d: $ff
	rst $38                                          ; $602e: $ff
	rst $38                                          ; $602f: $ff
	rst $38                                          ; $6030: $ff
	rst $38                                          ; $6031: $ff
	rst $38                                          ; $6032: $ff
	rst $38                                          ; $6033: $ff
	rst $38                                          ; $6034: $ff
	rst $38                                          ; $6035: $ff
	rst $38                                          ; $6036: $ff
	rst $38                                          ; $6037: $ff
	rst $38                                          ; $6038: $ff
	rst $38                                          ; $6039: $ff
	rst $38                                          ; $603a: $ff
	rst $38                                          ; $603b: $ff
	rst $38                                          ; $603c: $ff
	rst $38                                          ; $603d: $ff
	rst $38                                          ; $603e: $ff
	rst $38                                          ; $603f: $ff
	rst $38                                          ; $6040: $ff
	rst $38                                          ; $6041: $ff
	rst $38                                          ; $6042: $ff
	rst $38                                          ; $6043: $ff
	rst $38                                          ; $6044: $ff
	rst $38                                          ; $6045: $ff
	rst $38                                          ; $6046: $ff
	rst $38                                          ; $6047: $ff
	rst $38                                          ; $6048: $ff
	rst $38                                          ; $6049: $ff
	rst $38                                          ; $604a: $ff
	rst $38                                          ; $604b: $ff
	rst $38                                          ; $604c: $ff
	rst $38                                          ; $604d: $ff
	rst $38                                          ; $604e: $ff
	rst $38                                          ; $604f: $ff
	rst $38                                          ; $6050: $ff
	rst $38                                          ; $6051: $ff
	rst $38                                          ; $6052: $ff
	rst $38                                          ; $6053: $ff
	rst $38                                          ; $6054: $ff
	rst $38                                          ; $6055: $ff
	rst $38                                          ; $6056: $ff
	rst $38                                          ; $6057: $ff
	rst $38                                          ; $6058: $ff
	rst $38                                          ; $6059: $ff
	rst $38                                          ; $605a: $ff
	rst $38                                          ; $605b: $ff
	rst $38                                          ; $605c: $ff
	rst $38                                          ; $605d: $ff
	rst $38                                          ; $605e: $ff
	rst $38                                          ; $605f: $ff
	rst $38                                          ; $6060: $ff
	rst $38                                          ; $6061: $ff
	rst $38                                          ; $6062: $ff
	rst $38                                          ; $6063: $ff
	rst $38                                          ; $6064: $ff
	rst $38                                          ; $6065: $ff
	rst $38                                          ; $6066: $ff
	rst $38                                          ; $6067: $ff
	rst $38                                          ; $6068: $ff
	rst $38                                          ; $6069: $ff
	rst $38                                          ; $606a: $ff
	rst $38                                          ; $606b: $ff
	rst $38                                          ; $606c: $ff
	rst $38                                          ; $606d: $ff
	rst $38                                          ; $606e: $ff
	rst $38                                          ; $606f: $ff
	rst $38                                          ; $6070: $ff
	rst $38                                          ; $6071: $ff
	rst $38                                          ; $6072: $ff
	rst $38                                          ; $6073: $ff
	rst $38                                          ; $6074: $ff
	rst $38                                          ; $6075: $ff
	rst $38                                          ; $6076: $ff
	rst $38                                          ; $6077: $ff
	rst $38                                          ; $6078: $ff
	rst $38                                          ; $6079: $ff
	rst $38                                          ; $607a: $ff
	rst $38                                          ; $607b: $ff
	rst $38                                          ; $607c: $ff
	rst $38                                          ; $607d: $ff
	rst $38                                          ; $607e: $ff
	rst $38                                          ; $607f: $ff
	rst $38                                          ; $6080: $ff
	rst $38                                          ; $6081: $ff
	rst $38                                          ; $6082: $ff
	rst $38                                          ; $6083: $ff
	rst $38                                          ; $6084: $ff
	rst $38                                          ; $6085: $ff
	rst $38                                          ; $6086: $ff
	rst $38                                          ; $6087: $ff
	rst $38                                          ; $6088: $ff
	rst $38                                          ; $6089: $ff
	rst $38                                          ; $608a: $ff
	rst $38                                          ; $608b: $ff
	rst $38                                          ; $608c: $ff
	rst $38                                          ; $608d: $ff
	rst $38                                          ; $608e: $ff
	rst $38                                          ; $608f: $ff
	rst $38                                          ; $6090: $ff
	rst $38                                          ; $6091: $ff
	rst $38                                          ; $6092: $ff
	rst $38                                          ; $6093: $ff
	rst $38                                          ; $6094: $ff
	rst $38                                          ; $6095: $ff
	rst $38                                          ; $6096: $ff
	rst $38                                          ; $6097: $ff
	rst $38                                          ; $6098: $ff
	rst $38                                          ; $6099: $ff
	rst $38                                          ; $609a: $ff
	rst $38                                          ; $609b: $ff
	rst $38                                          ; $609c: $ff
	rst $38                                          ; $609d: $ff
	rst $38                                          ; $609e: $ff
	rst $38                                          ; $609f: $ff
	rst $38                                          ; $60a0: $ff
	rst $38                                          ; $60a1: $ff
	rst $38                                          ; $60a2: $ff
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

Call_02c_7f7e:
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
