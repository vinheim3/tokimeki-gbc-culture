; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

	dec hl                                           ; $4000: $2b
	rst $38                                          ; $4001: $ff
	ld a, a                                          ; $4002: $7f
	ei                                               ; $4003: $fb
	ld a, [hl]                                       ; $4004: $7e
	sub c                                            ; $4005: $91
	ld l, l                                          ; $4006: $6d
	jp z, $ff54                                      ; $4007: $ca $54 $ff

	ld a, a                                          ; $400a: $7f
	dec e                                            ; $400b: $1d
	nop                                              ; $400c: $00
	add h                                            ; $400d: $84
	ld [hl], l                                       ; $400e: $75
	ld b, d                                          ; $400f: $42
	ld [$7fff], sp                                   ; $4010: $08 $ff $7f
	rst SubAFromDE                                          ; $4013: $df
	ld c, l                                          ; $4014: $4d
	ld a, a                                          ; $4015: $7f
	inc h                                            ; $4016: $24
	ret nz                                           ; $4017: $c0

	ld a, h                                          ; $4018: $7c
	rst $38                                          ; $4019: $ff
	ld a, a                                          ; $401a: $7f
	rra                                              ; $401b: $1f
	ld [hl], a                                       ; $401c: $77
	dec e                                            ; $401d: $1d
	nop                                              ; $401e: $00
	dec e                                            ; $401f: $1d
	nop                                              ; $4020: $00
	rst $38                                          ; $4021: $ff
	ld a, a                                          ; $4022: $7f
	ld c, a                                          ; $4023: $4f
	ld a, a                                          ; $4024: $7f
	add h                                            ; $4025: $84
	ld [hl], l                                       ; $4026: $75
	ld b, b                                          ; $4027: $40
	ld [hl], h                                       ; $4028: $74
	rst $38                                          ; $4029: $ff
	ld a, a                                          ; $402a: $7f
	ld [hl], a                                       ; $402b: $77
	ld d, a                                          ; $402c: $57
	or c                                             ; $402d: $b1
	ld [de], a                                       ; $402e: $12
	add h                                            ; $402f: $84
	nop                                              ; $4030: $00

Call_010_4031:
	rra                                              ; $4031: $1f
	ld [bc], a                                       ; $4032: $02
	ld [$8421], sp                                   ; $4033: $08 $21 $84
	ld [hl], l                                       ; $4036: $75
	ld a, l                                          ; $4037: $7d
	ld c, a                                          ; $4038: $4f
	adc d                                            ; $4039: $8a
	nop                                              ; $403a: $00
	ld [bc], a                                       ; $403b: $02
	nop                                              ; $403c: $00
	dec de                                           ; $403d: $1b
	inc bc                                           ; $403e: $03
	rra                                              ; $403f: $1f
	ld bc, $0100                                     ; $4040: $01 $00 $01
	inc sp                                           ; $4043: $33
	ld a, l                                          ; $4044: $7d
	ld l, d                                          ; $4045: $6a
	ld l, b                                          ; $4046: $68
	inc bc                                           ; $4047: $03
	ld c, b                                          ; $4048: $48
	call z, Call_010_7bde                            ; $4049: $cc $de $7b
	ld d, b                                          ; $404c: $50
	ld [hl], d                                       ; $404d: $72
	ld b, b                                          ; $404e: $40
	jr jr_010_4062                                   ; $404f: $18 $11

	add hl, de                                       ; $4051: $19
	ld bc, $0051                                     ; $4052: $01 $51 $00
	nop                                              ; $4055: $00
	ld bc, $0004                                     ; $4056: $01 $04 $00
	inc sp                                           ; $4059: $33
	rra                                              ; $405a: $1f
	ld a, h                                          ; $405b: $7c
	rra                                              ; $405c: $1f
	ld a, h                                          ; $405d: $7c
	rra                                              ; $405e: $1f
	ld a, h                                          ; $405f: $7c
	rra                                              ; $4060: $1f
	ld a, h                                          ; $4061: $7c

jr_010_4062:
	adc b                                            ; $4062: $88
	rst SubAFromDE                                          ; $4063: $df
	ld d, d                                          ; $4064: $52
	ld a, [$e031]                                    ; $4065: $fa $31 $e0
	ld [hl], l                                       ; $4068: $75
	sbc c                                            ; $4069: $99
	rst SubAFromDE                                          ; $406a: $df
	ld d, d                                          ; $406b: $52
	ld c, b                                          ; $406c: $48
	ld a, [hl]                                       ; $406d: $7e
	ld a, [de]                                       ; $406e: $1a
	nop                                              ; $406f: $00
	xor d                                            ; $4070: $aa
	rst $38                                          ; $4071: $ff
	ld a, a                                          ; $4072: $7f
	ld e, a                                          ; $4073: $5f
	inc bc                                           ; $4074: $03
	reti                                             ; $4075: $d9


	ld bc, rIF                                     ; $4076: $01 $0f $ff
	ld a, a                                          ; $4079: $7f
	nop                                              ; $407a: $00
	ld a, a                                          ; $407b: $7f
	ld a, a                                          ; $407c: $7f
	ld h, b                                          ; $407d: $60
	nop                                              ; $407e: $00
	ld bc, $0119                                     ; $407f: $01 $19 $01
	ld d, c                                          ; $4082: $51
	nop                                              ; $4083: $00
	nop                                              ; $4084: $00
	ld bc, $0004                                     ; $4085: $01 $04 $00
	rst $38                                          ; $4088: $ff
	ld a, a                                          ; $4089: $7f
	or l                                             ; $408a: $b5
	ld d, [hl]                                       ; $408b: $56
	adc h                                            ; $408c: $8c
	ld sp, $0100                                     ; $408d: $31 $00 $01
	rra                                              ; $4090: $1f
	ld a, h                                          ; $4091: $7c
	rra                                              ; $4092: $1f
	ld a, h                                          ; $4093: $7c
	rra                                              ; $4094: $1f
	ld a, h                                          ; $4095: $7c
	rra                                              ; $4096: $1f
	ld a, h                                          ; $4097: $7c
	rra                                              ; $4098: $1f
	ld a, h                                          ; $4099: $7c
	rra                                              ; $409a: $1f
	ld a, h                                          ; $409b: $7c
	rra                                              ; $409c: $1f
	ld a, h                                          ; $409d: $7c
	rra                                              ; $409e: $1f
	ld a, h                                          ; $409f: $7c
	rra                                              ; $40a0: $1f
	ld a, h                                          ; $40a1: $7c
	rra                                              ; $40a2: $1f
	ld a, h                                          ; $40a3: $7c
	rra                                              ; $40a4: $1f
	ld a, h                                          ; $40a5: $7c
	rra                                              ; $40a6: $1f
	ld a, h                                          ; $40a7: $7c
	rra                                              ; $40a8: $1f
	ld a, h                                          ; $40a9: $7c
	rra                                              ; $40aa: $1f
	ld a, h                                          ; $40ab: $7c
	rra                                              ; $40ac: $1f
	ld a, h                                          ; $40ad: $7c
	rra                                              ; $40ae: $1f
	ld a, h                                          ; $40af: $7c
	rra                                              ; $40b0: $1f
	ld a, h                                          ; $40b1: $7c
	rra                                              ; $40b2: $1f
	ld a, h                                          ; $40b3: $7c
	rra                                              ; $40b4: $1f
	ld a, h                                          ; $40b5: $7c
	rra                                              ; $40b6: $1f
	ld a, h                                          ; $40b7: $7c
	rst SubAFromDE                                          ; $40b8: $df
	ld d, d                                          ; $40b9: $52
	ld a, [$e031]                                    ; $40ba: $fa $31 $e0
	ld [hl], l                                       ; $40bd: $75
	rst SubAFromDE                                          ; $40be: $df
	ld d, d                                          ; $40bf: $52
	ld c, b                                          ; $40c0: $48
	ld a, [hl]                                       ; $40c1: $7e
	ld a, [de]                                       ; $40c2: $1a
	nop                                              ; $40c3: $00
	rst $38                                          ; $40c4: $ff
	ld a, a                                          ; $40c5: $7f
	ld e, a                                          ; $40c6: $5f
	inc bc                                           ; $40c7: $03
	reti                                             ; $40c8: $d9


	ld bc, $7c1f                                     ; $40c9: $01 $1f $7c
	rra                                              ; $40cc: $1f
	ld a, h                                          ; $40cd: $7c
	rra                                              ; $40ce: $1f
	ld a, h                                          ; $40cf: $7c
	rra                                              ; $40d0: $1f
	ld a, h                                          ; $40d1: $7c
	rra                                              ; $40d2: $1f
	ld a, h                                          ; $40d3: $7c
	rra                                              ; $40d4: $1f
	ld a, h                                          ; $40d5: $7c
	rra                                              ; $40d6: $1f
	ld a, h                                          ; $40d7: $7c
	rra                                              ; $40d8: $1f
	ld a, h                                          ; $40d9: $7c
	rra                                              ; $40da: $1f
	ld a, h                                          ; $40db: $7c
	rra                                              ; $40dc: $1f
	ld a, h                                          ; $40dd: $7c
	rra                                              ; $40de: $1f
	ld a, h                                          ; $40df: $7c
	rra                                              ; $40e0: $1f
	ld a, h                                          ; $40e1: $7c
	rra                                              ; $40e2: $1f
	ld a, h                                          ; $40e3: $7c
	rra                                              ; $40e4: $1f
	ld a, h                                          ; $40e5: $7c
	rra                                              ; $40e6: $1f
	ld a, h                                          ; $40e7: $7c
	rrca                                             ; $40e8: $0f
	rst $38                                          ; $40e9: $ff
	ld a, a                                          ; $40ea: $7f
	rst $38                                          ; $40eb: $ff
	ld a, a                                          ; $40ec: $7f
	rst $38                                          ; $40ed: $ff
	ld a, a                                          ; $40ee: $7f
	rst $38                                          ; $40ef: $ff
	ld a, a                                          ; $40f0: $7f
	rst $38                                          ; $40f1: $ff
	ld a, a                                          ; $40f2: $7f
	rst $38                                          ; $40f3: $ff
	ld a, a                                          ; $40f4: $7f
	rst $38                                          ; $40f5: $ff
	ld a, a                                          ; $40f6: $7f
	rst $38                                          ; $40f7: $ff
	ld a, a                                          ; $40f8: $7f
	rst $38                                          ; $40f9: $ff
	ld a, a                                          ; $40fa: $7f
	rst $38                                          ; $40fb: $ff
	ld a, a                                          ; $40fc: $7f
	rst $38                                          ; $40fd: $ff
	ld a, a                                          ; $40fe: $7f
	rst $38                                          ; $40ff: $ff
	ld a, a                                          ; $4100: $7f
	rst $38                                          ; $4101: $ff
	ld a, a                                          ; $4102: $7f
	rst $38                                          ; $4103: $ff
	ld a, a                                          ; $4104: $7f
	rst $38                                          ; $4105: $ff
	ld a, a                                          ; $4106: $7f
	rst $38                                          ; $4107: $ff
	ld a, a                                          ; $4108: $7f
	rst $38                                          ; $4109: $ff
	ld a, a                                          ; $410a: $7f
	rst $38                                          ; $410b: $ff
	ld a, a                                          ; $410c: $7f
	rst $38                                          ; $410d: $ff
	ld a, a                                          ; $410e: $7f
	rst $38                                          ; $410f: $ff
	ld a, a                                          ; $4110: $7f
	rst $38                                          ; $4111: $ff
	ld a, a                                          ; $4112: $7f
	rst $38                                          ; $4113: $ff
	ld a, a                                          ; $4114: $7f
	rst $38                                          ; $4115: $ff
	ld a, a                                          ; $4116: $7f
	rst $38                                          ; $4117: $ff
	ld a, a                                          ; $4118: $7f
	rst $38                                          ; $4119: $ff
	ld a, a                                          ; $411a: $7f
	rst $38                                          ; $411b: $ff
	ld a, a                                          ; $411c: $7f
	rst $38                                          ; $411d: $ff
	ld a, a                                          ; $411e: $7f
	rst $38                                          ; $411f: $ff
	ld a, a                                          ; $4120: $7f
	rst $38                                          ; $4121: $ff
	ld a, a                                          ; $4122: $7f
	rst $38                                          ; $4123: $ff
	ld a, a                                          ; $4124: $7f
	rst $38                                          ; $4125: $ff
	ld a, a                                          ; $4126: $7f
	rst $38                                          ; $4127: $ff
	ld a, a                                          ; $4128: $7f
	rst $38                                          ; $4129: $ff
	ld a, a                                          ; $412a: $7f
	rst $38                                          ; $412b: $ff
	ld a, a                                          ; $412c: $7f
	rst $38                                          ; $412d: $ff
	ld a, a                                          ; $412e: $7f
	rst $38                                          ; $412f: $ff
	ld a, a                                          ; $4130: $7f
	rst $38                                          ; $4131: $ff
	ld a, a                                          ; $4132: $7f
	rst $38                                          ; $4133: $ff
	ld a, a                                          ; $4134: $7f
	rst $38                                          ; $4135: $ff
	ld a, a                                          ; $4136: $7f
	rst $38                                          ; $4137: $ff
	ld a, a                                          ; $4138: $7f
	rst $38                                          ; $4139: $ff
	ld a, a                                          ; $413a: $7f
	rst $38                                          ; $413b: $ff
	ld a, a                                          ; $413c: $7f
	rst $38                                          ; $413d: $ff
	ld a, a                                          ; $413e: $7f
	rst $38                                          ; $413f: $ff
	ld a, a                                          ; $4140: $7f
	rst $38                                          ; $4141: $ff
	ld a, a                                          ; $4142: $7f
	rst $38                                          ; $4143: $ff
	ld a, a                                          ; $4144: $7f
	rst $38                                          ; $4145: $ff
	ld a, a                                          ; $4146: $7f
	rst $38                                          ; $4147: $ff
	ld a, a                                          ; $4148: $7f
	rst $38                                          ; $4149: $ff
	ld a, a                                          ; $414a: $7f
	rst $38                                          ; $414b: $ff
	ld a, a                                          ; $414c: $7f
	rst $38                                          ; $414d: $ff
	ld a, a                                          ; $414e: $7f
	rst $38                                          ; $414f: $ff
	ld a, a                                          ; $4150: $7f
	rst $38                                          ; $4151: $ff
	ld a, a                                          ; $4152: $7f
	rst $38                                          ; $4153: $ff
	ld a, a                                          ; $4154: $7f
	rst $38                                          ; $4155: $ff
	ld a, a                                          ; $4156: $7f
	rst $38                                          ; $4157: $ff
	ld a, a                                          ; $4158: $7f
	rrca                                             ; $4159: $0f
	nop                                              ; $415a: $00
	nop                                              ; $415b: $00
	nop                                              ; $415c: $00
	nop                                              ; $415d: $00
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	nop                                              ; $4160: $00
	nop                                              ; $4161: $00
	nop                                              ; $4162: $00
	nop                                              ; $4163: $00
	nop                                              ; $4164: $00
	nop                                              ; $4165: $00
	nop                                              ; $4166: $00
	nop                                              ; $4167: $00
	nop                                              ; $4168: $00
	nop                                              ; $4169: $00
	nop                                              ; $416a: $00
	nop                                              ; $416b: $00
	nop                                              ; $416c: $00
	nop                                              ; $416d: $00
	nop                                              ; $416e: $00
	nop                                              ; $416f: $00
	nop                                              ; $4170: $00
	nop                                              ; $4171: $00
	nop                                              ; $4172: $00
	nop                                              ; $4173: $00
	nop                                              ; $4174: $00
	nop                                              ; $4175: $00
	nop                                              ; $4176: $00
	nop                                              ; $4177: $00
	nop                                              ; $4178: $00
	nop                                              ; $4179: $00
	nop                                              ; $417a: $00
	nop                                              ; $417b: $00
	nop                                              ; $417c: $00
	nop                                              ; $417d: $00
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
	nop                                              ; $4181: $00
	nop                                              ; $4182: $00
	nop                                              ; $4183: $00
	nop                                              ; $4184: $00
	nop                                              ; $4185: $00
	nop                                              ; $4186: $00
	nop                                              ; $4187: $00
	nop                                              ; $4188: $00
	nop                                              ; $4189: $00
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	nop                                              ; $418c: $00
	nop                                              ; $418d: $00
	nop                                              ; $418e: $00
	nop                                              ; $418f: $00
	nop                                              ; $4190: $00
	nop                                              ; $4191: $00
	nop                                              ; $4192: $00
	nop                                              ; $4193: $00
	nop                                              ; $4194: $00
	nop                                              ; $4195: $00
	nop                                              ; $4196: $00
	nop                                              ; $4197: $00
	nop                                              ; $4198: $00
	nop                                              ; $4199: $00
	nop                                              ; $419a: $00
	nop                                              ; $419b: $00
	nop                                              ; $419c: $00
	nop                                              ; $419d: $00
	nop                                              ; $419e: $00
	nop                                              ; $419f: $00
	nop                                              ; $41a0: $00
	nop                                              ; $41a1: $00
	nop                                              ; $41a2: $00
	nop                                              ; $41a3: $00
	nop                                              ; $41a4: $00
	nop                                              ; $41a5: $00
	nop                                              ; $41a6: $00
	nop                                              ; $41a7: $00
	nop                                              ; $41a8: $00
	nop                                              ; $41a9: $00
	nop                                              ; $41aa: $00
	nop                                              ; $41ab: $00
	nop                                              ; $41ac: $00
	nop                                              ; $41ad: $00
	nop                                              ; $41ae: $00
	nop                                              ; $41af: $00
	nop                                              ; $41b0: $00
	nop                                              ; $41b1: $00
	nop                                              ; $41b2: $00
	nop                                              ; $41b3: $00
	nop                                              ; $41b4: $00
	nop                                              ; $41b5: $00
	nop                                              ; $41b6: $00
	nop                                              ; $41b7: $00
	nop                                              ; $41b8: $00
	nop                                              ; $41b9: $00
	nop                                              ; $41ba: $00
	nop                                              ; $41bb: $00
	nop                                              ; $41bc: $00
	nop                                              ; $41bd: $00
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	nop                                              ; $41c0: $00
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	nop                                              ; $41c3: $00
	nop                                              ; $41c4: $00
	nop                                              ; $41c5: $00
	nop                                              ; $41c6: $00
	nop                                              ; $41c7: $00
	nop                                              ; $41c8: $00
	nop                                              ; $41c9: $00
	inc sp                                           ; $41ca: $33
	rst $38                                          ; $41cb: $ff
	ld a, a                                          ; $41cc: $7f
	dec e                                            ; $41cd: $1d
	nop                                              ; $41ce: $00
	add h                                            ; $41cf: $84
	ld [hl], l                                       ; $41d0: $75
	ld b, d                                          ; $41d1: $42
	ld [$ff34], sp                                   ; $41d2: $08 $34 $ff
	ld a, a                                          ; $41d5: $7f
	db $fc                                           ; $41d6: $fc
	ld a, a                                          ; $41d7: $7f
	sbc a                                            ; $41d8: $9f
	ld a, a                                          ; $41d9: $7f
	db $fd                                           ; $41da: $fd
	ld [hl], e                                       ; $41db: $73
	rst $38                                          ; $41dc: $ff
	ld a, a                                          ; $41dd: $7f
	rst $38                                          ; $41de: $ff
	ld a, a                                          ; $41df: $7f
	rst $38                                          ; $41e0: $ff
	ld [hl], a                                       ; $41e1: $77
	sbc h                                            ; $41e2: $9c
	ld [hl], e                                       ; $41e3: $73
	inc [hl]                                         ; $41e4: $34
	rst $38                                          ; $41e5: $ff
	ld a, a                                          ; $41e6: $7f
	or $7f                                           ; $41e7: $f6 $7f
	rst SubAFromDE                                          ; $41e9: $df
	halt                                             ; $41ea: $76
	ld d, a                                          ; $41eb: $57
	ld e, e                                          ; $41ec: $5b
	rst $38                                          ; $41ed: $ff
	ld a, a                                          ; $41ee: $7f
	rst $38                                          ; $41ef: $ff
	ld l, a                                          ; $41f0: $6f
	rst $38                                          ; $41f1: $ff
	ld h, e                                          ; $41f2: $63
	sub $5a                                          ; $41f3: $d6 $5a
	inc [hl]                                         ; $41f5: $34
	rst $38                                          ; $41f6: $ff
	ld a, a                                          ; $41f7: $7f
	jp hl                                            ; $41f8: $e9


	ld h, e                                          ; $41f9: $63
	ccf                                              ; $41fa: $3f
	ld d, c                                          ; $41fb: $51
	db $eb                                           ; $41fc: $eb
	dec h                                            ; $41fd: $25
	rst $38                                          ; $41fe: $ff
	ld a, a                                          ; $41ff: $7f
	sbc a                                            ; $4200: $9f
	ld b, a                                          ; $4201: $47
	ld e, $33                                        ; $4202: $1e $33
	add hl, hl                                       ; $4204: $29
	dec h                                            ; $4205: $25
	inc [hl]                                         ; $4206: $34
	rst $38                                          ; $4207: $ff
	ld a, a                                          ; $4208: $7f
	ldh [rHDMA3], a                                  ; $4209: $e0 $53
	rra                                              ; $420b: $1f
	inc a                                            ; $420c: $3c
	inc bc                                           ; $420d: $03
	ld bc, $7fff                                     ; $420e: $01 $ff $7f
	ld e, a                                          ; $4211: $5f
	cpl                                              ; $4212: $2f
	sbc l                                            ; $4213: $9d
	ld [de], a                                       ; $4214: $12
	and d                                            ; $4215: $a2
	inc d                                            ; $4216: $14
	ld bc, $7fff                                     ; $4217: $01 $ff $7f
	nop                                              ; $421a: $00
	ld a, a                                          ; $421b: $7f
	ld a, a                                          ; $421c: $7f
	ld h, b                                          ; $421d: $60
	nop                                              ; $421e: $00
	ld bc, $0119                                     ; $421f: $01 $19 $01
	ld d, c                                          ; $4222: $51
	nop                                              ; $4223: $00
	nop                                              ; $4224: $00
	ld bc, $0004                                     ; $4225: $01 $04 $00
	ld bc, $7fff                                     ; $4228: $01 $ff $7f
	add b                                            ; $422b: $80
	dec a                                            ; $422c: $3d
	ld a, a                                          ; $422d: $7f
	ld h, b                                          ; $422e: $60
	nop                                              ; $422f: $00
	ld bc, $0119                                     ; $4230: $01 $19 $01
	ld d, c                                          ; $4233: $51
	nop                                              ; $4234: $00
	nop                                              ; $4235: $00
	ld bc, $0004                                     ; $4236: $01 $04 $00
	nop                                              ; $4239: $00
	ld a, a                                          ; $423a: $7f
	nop                                              ; $423b: $00
	ld a, a                                          ; $423c: $7f
	ld a, a                                          ; $423d: $7f
	ld h, b                                          ; $423e: $60
	nop                                              ; $423f: $00
	ld bc, $607f                                     ; $4240: $01 $7f $60
	nop                                              ; $4243: $00
	ld a, a                                          ; $4244: $7f
	ld a, a                                          ; $4245: $7f
	ld h, b                                          ; $4246: $60
	nop                                              ; $4247: $00
	ld bc, $ff77                                     ; $4248: $01 $77 $ff
	ld a, a                                          ; $424b: $7f
	sub h                                            ; $424c: $94
	ld a, [hl]                                       ; $424d: $7e
	ld a, a                                          ; $424e: $7f
	ld h, b                                          ; $424f: $60
	nop                                              ; $4250: $00
	nop                                              ; $4251: $00
	ld [hl+], a                                      ; $4252: $22
	rst $38                                          ; $4253: $ff
	ld a, a                                          ; $4254: $7f
	sub h                                            ; $4255: $94
	ld d, d                                          ; $4256: $52
	ld c, d                                          ; $4257: $4a
	add hl, hl                                       ; $4258: $29
	nop                                              ; $4259: $00
	nop                                              ; $425a: $00
	nop                                              ; $425b: $00
	rst $38                                          ; $425c: $ff
	ld a, a                                          ; $425d: $7f
	nop                                              ; $425e: $00
	ld a, a                                          ; $425f: $7f
	ld a, a                                          ; $4260: $7f
	ld h, b                                          ; $4261: $60
	nop                                              ; $4262: $00
	ld bc, $ff22                                     ; $4263: $01 $22 $ff
	ld a, a                                          ; $4266: $7f
	nop                                              ; $4267: $00
	ld a, a                                          ; $4268: $7f
	ld a, a                                          ; $4269: $7f
	ld h, b                                          ; $426a: $60
	ld a, a                                          ; $426b: $7f
	ld h, b                                          ; $426c: $60
	adc b                                            ; $426d: $88
	rst $38                                          ; $426e: $ff
	ld a, a                                          ; $426f: $7f
	rst $38                                          ; $4270: $ff
	ld a, a                                          ; $4271: $7f
	rst $38                                          ; $4272: $ff
	ld a, a                                          ; $4273: $7f
	cpl                                              ; $4274: $2f
	rst $38                                          ; $4275: $ff
	ld a, a                                          ; $4276: $7f
	rst $38                                          ; $4277: $ff
	ld a, a                                          ; $4278: $7f
	rst $38                                          ; $4279: $ff
	ld a, a                                          ; $427a: $7f
	rst $38                                          ; $427b: $ff
	ld a, a                                          ; $427c: $7f
	rst $38                                          ; $427d: $ff
	ld a, a                                          ; $427e: $7f
	rst $38                                          ; $427f: $ff
	ld a, a                                          ; $4280: $7f
	rst $38                                          ; $4281: $ff
	ld a, a                                          ; $4282: $7f
	rst $38                                          ; $4283: $ff
	ld a, a                                          ; $4284: $7f
	rst $38                                          ; $4285: $ff
	ld a, a                                          ; $4286: $7f
	rst $38                                          ; $4287: $ff
	ld a, a                                          ; $4288: $7f
	rst $38                                          ; $4289: $ff
	ld a, a                                          ; $428a: $7f
	rst $38                                          ; $428b: $ff
	ld a, a                                          ; $428c: $7f
	rst $38                                          ; $428d: $ff
	ld a, a                                          ; $428e: $7f
	rst $38                                          ; $428f: $ff
	ld a, a                                          ; $4290: $7f
	rst $38                                          ; $4291: $ff
	ld a, a                                          ; $4292: $7f
	rst $38                                          ; $4293: $ff
	ld a, a                                          ; $4294: $7f
	rst $38                                          ; $4295: $ff
	ld a, a                                          ; $4296: $7f
	rst $38                                          ; $4297: $ff
	ld a, a                                          ; $4298: $7f
	rst $38                                          ; $4299: $ff
	ld a, a                                          ; $429a: $7f
	rst $38                                          ; $429b: $ff
	ld a, a                                          ; $429c: $7f
	rst $38                                          ; $429d: $ff
	ld a, a                                          ; $429e: $7f
	rst $38                                          ; $429f: $ff
	ld a, a                                          ; $42a0: $7f
	rst $38                                          ; $42a1: $ff
	ld a, a                                          ; $42a2: $7f
	rst $38                                          ; $42a3: $ff
	ld a, a                                          ; $42a4: $7f
	rst $38                                          ; $42a5: $ff
	ld a, a                                          ; $42a6: $7f
	rst $38                                          ; $42a7: $ff
	ld a, a                                          ; $42a8: $7f
	rst $38                                          ; $42a9: $ff
	ld a, a                                          ; $42aa: $7f
	rst $38                                          ; $42ab: $ff
	ld a, a                                          ; $42ac: $7f
	rst $38                                          ; $42ad: $ff
	ld a, a                                          ; $42ae: $7f
	rst $38                                          ; $42af: $ff
	ld a, a                                          ; $42b0: $7f
	rst $38                                          ; $42b1: $ff
	ld a, a                                          ; $42b2: $7f
	rst $38                                          ; $42b3: $ff
	ld a, a                                          ; $42b4: $7f
	rst $38                                          ; $42b5: $ff
	ld a, a                                          ; $42b6: $7f
	rst $38                                          ; $42b7: $ff
	ld a, a                                          ; $42b8: $7f
	rst $38                                          ; $42b9: $ff
	ld a, a                                          ; $42ba: $7f
	rst $38                                          ; $42bb: $ff
	ld a, a                                          ; $42bc: $7f
	rst $38                                          ; $42bd: $ff
	ld a, a                                          ; $42be: $7f
	rst $38                                          ; $42bf: $ff
	ld a, a                                          ; $42c0: $7f
	rst $38                                          ; $42c1: $ff
	ld a, a                                          ; $42c2: $7f
	rst $38                                          ; $42c3: $ff
	ld a, a                                          ; $42c4: $7f
	rst $38                                          ; $42c5: $ff
	ld a, a                                          ; $42c6: $7f
	rst $38                                          ; $42c7: $ff
	ld a, a                                          ; $42c8: $7f
	rst $38                                          ; $42c9: $ff
	ld a, a                                          ; $42ca: $7f
	rst $38                                          ; $42cb: $ff
	ld a, a                                          ; $42cc: $7f
	rst $38                                          ; $42cd: $ff
	ld a, a                                          ; $42ce: $7f
	rst $38                                          ; $42cf: $ff
	ld a, a                                          ; $42d0: $7f
	rst $38                                          ; $42d1: $ff
	ld a, a                                          ; $42d2: $7f
	rst $38                                          ; $42d3: $ff
	ld a, a                                          ; $42d4: $7f
	cpl                                              ; $42d5: $2f
	nop                                              ; $42d6: $00
	nop                                              ; $42d7: $00
	nop                                              ; $42d8: $00
	nop                                              ; $42d9: $00
	nop                                              ; $42da: $00
	nop                                              ; $42db: $00
	nop                                              ; $42dc: $00
	nop                                              ; $42dd: $00
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	nop                                              ; $42e0: $00
	nop                                              ; $42e1: $00
	nop                                              ; $42e2: $00
	nop                                              ; $42e3: $00
	nop                                              ; $42e4: $00
	nop                                              ; $42e5: $00
	nop                                              ; $42e6: $00
	nop                                              ; $42e7: $00
	nop                                              ; $42e8: $00
	nop                                              ; $42e9: $00
	nop                                              ; $42ea: $00
	nop                                              ; $42eb: $00
	nop                                              ; $42ec: $00
	nop                                              ; $42ed: $00
	nop                                              ; $42ee: $00
	nop                                              ; $42ef: $00
	nop                                              ; $42f0: $00
	nop                                              ; $42f1: $00
	nop                                              ; $42f2: $00
	nop                                              ; $42f3: $00
	nop                                              ; $42f4: $00
	nop                                              ; $42f5: $00
	nop                                              ; $42f6: $00
	nop                                              ; $42f7: $00
	nop                                              ; $42f8: $00
	nop                                              ; $42f9: $00
	nop                                              ; $42fa: $00
	nop                                              ; $42fb: $00
	nop                                              ; $42fc: $00
	nop                                              ; $42fd: $00
	nop                                              ; $42fe: $00
	nop                                              ; $42ff: $00
	nop                                              ; $4300: $00
	nop                                              ; $4301: $00
	nop                                              ; $4302: $00
	nop                                              ; $4303: $00
	nop                                              ; $4304: $00
	nop                                              ; $4305: $00
	nop                                              ; $4306: $00
	nop                                              ; $4307: $00
	nop                                              ; $4308: $00
	nop                                              ; $4309: $00
	nop                                              ; $430a: $00
	nop                                              ; $430b: $00
	nop                                              ; $430c: $00
	nop                                              ; $430d: $00
	nop                                              ; $430e: $00
	nop                                              ; $430f: $00
	nop                                              ; $4310: $00
	nop                                              ; $4311: $00
	nop                                              ; $4312: $00
	nop                                              ; $4313: $00
	nop                                              ; $4314: $00
	nop                                              ; $4315: $00
	nop                                              ; $4316: $00
	nop                                              ; $4317: $00
	nop                                              ; $4318: $00
	nop                                              ; $4319: $00
	nop                                              ; $431a: $00
	nop                                              ; $431b: $00
	nop                                              ; $431c: $00
	nop                                              ; $431d: $00
	nop                                              ; $431e: $00
	nop                                              ; $431f: $00
	nop                                              ; $4320: $00
	nop                                              ; $4321: $00
	nop                                              ; $4322: $00
	nop                                              ; $4323: $00
	nop                                              ; $4324: $00
	nop                                              ; $4325: $00
	nop                                              ; $4326: $00
	nop                                              ; $4327: $00
	nop                                              ; $4328: $00
	nop                                              ; $4329: $00
	nop                                              ; $432a: $00
	nop                                              ; $432b: $00
	nop                                              ; $432c: $00
	nop                                              ; $432d: $00
	nop                                              ; $432e: $00
	nop                                              ; $432f: $00
	nop                                              ; $4330: $00
	nop                                              ; $4331: $00
	nop                                              ; $4332: $00
	nop                                              ; $4333: $00
	nop                                              ; $4334: $00
	nop                                              ; $4335: $00
	rrca                                             ; $4336: $0f
	rst $38                                          ; $4337: $ff
	ld a, a                                          ; $4338: $7f
	rst $38                                          ; $4339: $ff
	ld a, a                                          ; $433a: $7f
	rst $38                                          ; $433b: $ff
	ld a, a                                          ; $433c: $7f
	rst $38                                          ; $433d: $ff
	ld a, a                                          ; $433e: $7f

Call_010_433f:
	rst $38                                          ; $433f: $ff
	ld a, a                                          ; $4340: $7f
	rst $38                                          ; $4341: $ff
	ld a, a                                          ; $4342: $7f
	rst $38                                          ; $4343: $ff
	ld a, a                                          ; $4344: $7f
	rst $38                                          ; $4345: $ff
	ld a, a                                          ; $4346: $7f
	rst $38                                          ; $4347: $ff
	ld a, a                                          ; $4348: $7f
	rst $38                                          ; $4349: $ff
	ld a, a                                          ; $434a: $7f
	rst $38                                          ; $434b: $ff
	ld a, a                                          ; $434c: $7f
	rst $38                                          ; $434d: $ff
	ld a, a                                          ; $434e: $7f
	rst $38                                          ; $434f: $ff
	ld a, a                                          ; $4350: $7f
	rst $38                                          ; $4351: $ff
	ld a, a                                          ; $4352: $7f
	rst $38                                          ; $4353: $ff
	ld a, a                                          ; $4354: $7f
	rst $38                                          ; $4355: $ff
	ld a, a                                          ; $4356: $7f
	rst $38                                          ; $4357: $ff
	ld a, a                                          ; $4358: $7f
	rst $38                                          ; $4359: $ff
	ld a, a                                          ; $435a: $7f
	rst $38                                          ; $435b: $ff
	ld a, a                                          ; $435c: $7f
	rst $38                                          ; $435d: $ff
	ld a, a                                          ; $435e: $7f
	rst $38                                          ; $435f: $ff
	ld a, a                                          ; $4360: $7f
	rst $38                                          ; $4361: $ff
	ld a, a                                          ; $4362: $7f
	rst $38                                          ; $4363: $ff
	ld a, a                                          ; $4364: $7f
	rst $38                                          ; $4365: $ff
	ld a, a                                          ; $4366: $7f
	rst $38                                          ; $4367: $ff
	ld a, a                                          ; $4368: $7f
	rst $38                                          ; $4369: $ff
	ld a, a                                          ; $436a: $7f
	rst $38                                          ; $436b: $ff
	ld a, a                                          ; $436c: $7f
	rst $38                                          ; $436d: $ff
	ld a, a                                          ; $436e: $7f
	rst $38                                          ; $436f: $ff
	ld a, a                                          ; $4370: $7f
	rst $38                                          ; $4371: $ff
	ld a, a                                          ; $4372: $7f
	rst $38                                          ; $4373: $ff
	ld a, a                                          ; $4374: $7f
	rst $38                                          ; $4375: $ff
	ld a, a                                          ; $4376: $7f
	rst $38                                          ; $4377: $ff
	ld a, a                                          ; $4378: $7f
	rst $38                                          ; $4379: $ff
	ld a, a                                          ; $437a: $7f
	rst $38                                          ; $437b: $ff
	ld a, a                                          ; $437c: $7f
	rst $38                                          ; $437d: $ff
	ld a, a                                          ; $437e: $7f
	rst $38                                          ; $437f: $ff
	ld a, a                                          ; $4380: $7f
	rst $38                                          ; $4381: $ff
	ld a, a                                          ; $4382: $7f
	rst $38                                          ; $4383: $ff
	ld a, a                                          ; $4384: $7f
	rst $38                                          ; $4385: $ff
	ld a, a                                          ; $4386: $7f
	rst $38                                          ; $4387: $ff
	ld a, a                                          ; $4388: $7f
	rst $38                                          ; $4389: $ff
	ld a, a                                          ; $438a: $7f
	rst $38                                          ; $438b: $ff
	ld a, a                                          ; $438c: $7f
	rst $38                                          ; $438d: $ff
	ld a, a                                          ; $438e: $7f
	rst $38                                          ; $438f: $ff
	ld a, a                                          ; $4390: $7f
	rst $38                                          ; $4391: $ff
	ld a, a                                          ; $4392: $7f
	rst $38                                          ; $4393: $ff
	ld a, a                                          ; $4394: $7f
	rst $38                                          ; $4395: $ff
	ld a, a                                          ; $4396: $7f
	rst $38                                          ; $4397: $ff
	ld a, a                                          ; $4398: $7f
	rst $38                                          ; $4399: $ff
	ld a, a                                          ; $439a: $7f
	rst $38                                          ; $439b: $ff
	ld a, a                                          ; $439c: $7f
	rst $38                                          ; $439d: $ff
	ld a, a                                          ; $439e: $7f
	rst $38                                          ; $439f: $ff
	ld a, a                                          ; $43a0: $7f
	rst $38                                          ; $43a1: $ff
	ld a, a                                          ; $43a2: $7f
	rst $38                                          ; $43a3: $ff
	ld a, a                                          ; $43a4: $7f
	rst $38                                          ; $43a5: $ff
	ld a, a                                          ; $43a6: $7f
	rrca                                             ; $43a7: $0f
	nop                                              ; $43a8: $00
	nop                                              ; $43a9: $00
	nop                                              ; $43aa: $00
	nop                                              ; $43ab: $00
	nop                                              ; $43ac: $00
	nop                                              ; $43ad: $00
	nop                                              ; $43ae: $00
	nop                                              ; $43af: $00
	nop                                              ; $43b0: $00
	nop                                              ; $43b1: $00
	nop                                              ; $43b2: $00
	nop                                              ; $43b3: $00
	nop                                              ; $43b4: $00
	nop                                              ; $43b5: $00
	nop                                              ; $43b6: $00
	nop                                              ; $43b7: $00
	nop                                              ; $43b8: $00
	nop                                              ; $43b9: $00
	nop                                              ; $43ba: $00
	nop                                              ; $43bb: $00
	nop                                              ; $43bc: $00
	nop                                              ; $43bd: $00
	nop                                              ; $43be: $00
	nop                                              ; $43bf: $00
	nop                                              ; $43c0: $00
	nop                                              ; $43c1: $00
	nop                                              ; $43c2: $00
	nop                                              ; $43c3: $00
	nop                                              ; $43c4: $00
	nop                                              ; $43c5: $00
	nop                                              ; $43c6: $00
	nop                                              ; $43c7: $00
	nop                                              ; $43c8: $00
	nop                                              ; $43c9: $00
	nop                                              ; $43ca: $00
	nop                                              ; $43cb: $00
	nop                                              ; $43cc: $00
	nop                                              ; $43cd: $00
	nop                                              ; $43ce: $00
	nop                                              ; $43cf: $00
	nop                                              ; $43d0: $00
	nop                                              ; $43d1: $00
	nop                                              ; $43d2: $00
	nop                                              ; $43d3: $00
	nop                                              ; $43d4: $00
	nop                                              ; $43d5: $00
	nop                                              ; $43d6: $00
	nop                                              ; $43d7: $00
	nop                                              ; $43d8: $00
	nop                                              ; $43d9: $00
	nop                                              ; $43da: $00
	nop                                              ; $43db: $00
	nop                                              ; $43dc: $00
	nop                                              ; $43dd: $00
	nop                                              ; $43de: $00
	nop                                              ; $43df: $00
	nop                                              ; $43e0: $00
	nop                                              ; $43e1: $00
	nop                                              ; $43e2: $00
	nop                                              ; $43e3: $00
	nop                                              ; $43e4: $00
	nop                                              ; $43e5: $00
	nop                                              ; $43e6: $00
	nop                                              ; $43e7: $00
	nop                                              ; $43e8: $00
	nop                                              ; $43e9: $00
	nop                                              ; $43ea: $00
	nop                                              ; $43eb: $00
	nop                                              ; $43ec: $00
	nop                                              ; $43ed: $00
	nop                                              ; $43ee: $00
	nop                                              ; $43ef: $00
	nop                                              ; $43f0: $00
	nop                                              ; $43f1: $00
	nop                                              ; $43f2: $00
	nop                                              ; $43f3: $00
	nop                                              ; $43f4: $00
	nop                                              ; $43f5: $00
	nop                                              ; $43f6: $00
	nop                                              ; $43f7: $00
	nop                                              ; $43f8: $00
	nop                                              ; $43f9: $00
	nop                                              ; $43fa: $00
	nop                                              ; $43fb: $00
	nop                                              ; $43fc: $00
	nop                                              ; $43fd: $00
	nop                                              ; $43fe: $00
	nop                                              ; $43ff: $00
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	nop                                              ; $4403: $00
	nop                                              ; $4404: $00
	nop                                              ; $4405: $00
	nop                                              ; $4406: $00
	nop                                              ; $4407: $00
	nop                                              ; $4408: $00
	nop                                              ; $4409: $00
	nop                                              ; $440a: $00
	nop                                              ; $440b: $00
	nop                                              ; $440c: $00
	nop                                              ; $440d: $00
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	nop                                              ; $4410: $00
	nop                                              ; $4411: $00
	nop                                              ; $4412: $00
	nop                                              ; $4413: $00
	nop                                              ; $4414: $00
	nop                                              ; $4415: $00
	nop                                              ; $4416: $00
	nop                                              ; $4417: $00
	ld b, $ff                                        ; $4418: $06 $ff
	ld a, a                                          ; $441a: $7f
	ld e, $40                                        ; $441b: $1e $40
	ld h, b                                          ; $441d: $60
	ld a, h                                          ; $441e: $7c
	nop                                              ; $441f: $00
	ld bc, $0119                                     ; $4420: $01 $19 $01
	ld d, c                                          ; $4423: $51
	nop                                              ; $4424: $00
	nop                                              ; $4425: $00
	ld bc, $0004                                     ; $4426: $01 $04 $00
	rst $38                                          ; $4429: $ff
	ld a, a                                          ; $442a: $7f
	ld a, a                                          ; $442b: $7f
	ld a, h                                          ; $442c: $7c
	nop                                              ; $442d: $00
	ld a, b                                          ; $442e: $78
	ld h, e                                          ; $442f: $63
	inc c                                            ; $4430: $0c
	rst $38                                          ; $4431: $ff
	ld a, a                                          ; $4432: $7f
	rra                                              ; $4433: $1f
	ld a, [hl]                                       ; $4434: $7e
	and h                                            ; $4435: $a4
	ld a, l                                          ; $4436: $7d
	nop                                              ; $4437: $00
	ld bc, $7fff                                     ; $4438: $01 $ff $7f
	and h                                            ; $443b: $a4
	ld a, l                                          ; $443c: $7d
	inc bc                                           ; $443d: $03
	ld a, h                                          ; $443e: $7c
	nop                                              ; $443f: $00
	ld bc, $7fff                                     ; $4440: $01 $ff $7f
	rra                                              ; $4443: $1f
	ld a, [hl]                                       ; $4444: $7e
	jr jr_010_44af                                   ; $4445: $18 $68

	nop                                              ; $4447: $00
	ld bc, $7fff                                     ; $4448: $01 $ff $7f
	dec e                                            ; $444b: $1d
	nop                                              ; $444c: $00
	ld e, $40                                        ; $444d: $1e $40
	nop                                              ; $444f: $00
	ld bc, $1f8c                                     ; $4450: $01 $8c $1f
	ld a, [hl]                                       ; $4453: $7e
	ld b, l                                          ; $4454: $45
	ld a, a                                          ; $4455: $7f
	and h                                            ; $4456: $a4
	ld a, l                                          ; $4457: $7d
	ld b, l                                          ; $4458: $45
	ld a, a                                          ; $4459: $7f
	and h                                            ; $445a: $a4
	ld a, l                                          ; $445b: $7d
	inc bc                                           ; $445c: $03
	ld a, h                                          ; $445d: $7c
	rra                                              ; $445e: $1f
	ld a, [hl]                                       ; $445f: $7e
	jr jr_010_44ca                                   ; $4460: $18 $68

	and l                                            ; $4462: $a5
	inc d                                            ; $4463: $14
	rra                                              ; $4464: $1f
	ld a, h                                          ; $4465: $7c
	ld e, $40                                        ; $4466: $1e $40
	dec e                                            ; $4468: $1d
	nop                                              ; $4469: $00
	db $10                                           ; $446a: $10
	ld h, d                                          ; $446b: $62
	cp a                                             ; $446c: $bf
	inc d                                            ; $446d: $14
	ld b, d                                          ; $446e: $42
	ld [$ff24], sp                                   ; $446f: $08 $24 $ff
	ld a, a                                          ; $4472: $7f
	sbc a                                            ; $4473: $9f
	ld b, d                                          ; $4474: $42
	add hl, de                                       ; $4475: $19
	inc d                                            ; $4476: $14
	nop                                              ; $4477: $00
	nop                                              ; $4478: $00
	rst $38                                          ; $4479: $ff
	ld a, a                                          ; $447a: $7f
	cp a                                             ; $447b: $bf
	dec [hl]                                         ; $447c: $35
	add hl, de                                       ; $447d: $19
	inc d                                            ; $447e: $14
	nop                                              ; $447f: $00
	nop                                              ; $4480: $00
	rst $38                                          ; $4481: $ff
	ld a, a                                          ; $4482: $7f
	cp a                                             ; $4483: $bf
	dec [hl]                                         ; $4484: $35
	inc de                                           ; $4485: $13
	ld [rRAMG], sp                                   ; $4486: $08 $00 $00
	dec h                                            ; $4489: $25
	rst $38                                          ; $448a: $ff
	ld a, a                                          ; $448b: $7f
	sbc a                                            ; $448c: $9f
	ld d, d                                          ; $448d: $52
	add b                                            ; $448e: $80

Call_010_448f:
	ld sp, $0000                                     ; $448f: $31 $00 $00
	rst $38                                          ; $4492: $ff
	ld a, a                                          ; $4493: $7f
	inc l                                            ; $4494: $2c
	ld d, e                                          ; $4495: $53
	add b                                            ; $4496: $80
	ld sp, $0000                                     ; $4497: $31 $00 $00
	rst $38                                          ; $449a: $ff
	ld a, a                                          ; $449b: $7f
	cp h                                             ; $449c: $bc
	add hl, de                                       ; $449d: $19
	add b                                            ; $449e: $80
	ld sp, $0000                                     ; $449f: $31 $00 $00
	rst $38                                          ; $44a2: $ff
	ld a, a                                          ; $44a3: $7f
	sbc a                                            ; $44a4: $9f
	ld d, d                                          ; $44a5: $52
	cp h                                             ; $44a6: $bc
	add hl, de                                       ; $44a7: $19
	nop                                              ; $44a8: $00
	nop                                              ; $44a9: $00
	dec h                                            ; $44aa: $25
	rst $38                                          ; $44ab: $ff
	ld a, a                                          ; $44ac: $7f
	sbc a                                            ; $44ad: $9f
	ld d, d                                          ; $44ae: $52

jr_010_44af:
	add b                                            ; $44af: $80
	ld [hl], c                                       ; $44b0: $71
	nop                                              ; $44b1: $00
	nop                                              ; $44b2: $00
	rst $38                                          ; $44b3: $ff
	ld a, a                                          ; $44b4: $7f
	dec h                                            ; $44b5: $25
	ld a, a                                          ; $44b6: $7f
	add b                                            ; $44b7: $80
	ld [hl], c                                       ; $44b8: $71
	nop                                              ; $44b9: $00
	nop                                              ; $44ba: $00
	rst $38                                          ; $44bb: $ff
	ld a, a                                          ; $44bc: $7f
	sbc a                                            ; $44bd: $9f
	ld d, d                                          ; $44be: $52
	ld a, d                                          ; $44bf: $7a
	dec a                                            ; $44c0: $3d
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	dec h                                            ; $44c3: $25
	ld a, a                                          ; $44c4: $7f
	sbc a                                            ; $44c5: $9f
	ld d, d                                          ; $44c6: $52
	add b                                            ; $44c7: $80
	ld [hl], c                                       ; $44c8: $71
	nop                                              ; $44c9: $00

jr_010_44ca:
	nop                                              ; $44ca: $00
	inc h                                            ; $44cb: $24
	rst $38                                          ; $44cc: $ff
	ld a, a                                          ; $44cd: $7f
	cp a                                             ; $44ce: $bf
	ld d, d                                          ; $44cf: $52
	adc h                                            ; $44d0: $8c
	ld b, c                                          ; $44d1: $41
	nop                                              ; $44d2: $00
	nop                                              ; $44d3: $00
	rst $38                                          ; $44d4: $ff
	ld a, a                                          ; $44d5: $7f
	sub h                                            ; $44d6: $94
	ld h, [hl]                                       ; $44d7: $66
	adc h                                            ; $44d8: $8c
	ld b, c                                          ; $44d9: $41
	nop                                              ; $44da: $00
	nop                                              ; $44db: $00
	rst $38                                          ; $44dc: $ff
	ld a, a                                          ; $44dd: $7f
	cp a                                             ; $44de: $bf
	ld d, d                                          ; $44df: $52
	sbc h                                            ; $44e0: $9c
	ld sp, $0000                                     ; $44e1: $31 $00 $00
	ld h, $ff                                        ; $44e4: $26 $ff
	ld a, a                                          ; $44e6: $7f
	sbc a                                            ; $44e7: $9f
	ld b, d                                          ; $44e8: $42
	nop                                              ; $44e9: $00
	ld h, [hl]                                       ; $44ea: $66
	ld b, d                                          ; $44eb: $42
	ld [$7fff], sp                                   ; $44ec: $08 $ff $7f
	dec h                                            ; $44ef: $25
	ld a, a                                          ; $44f0: $7f
	nop                                              ; $44f1: $00
	ld h, [hl]                                       ; $44f2: $66
	ld b, d                                          ; $44f3: $42
	ld [$7fff], sp                                   ; $44f4: $08 $ff $7f
	sbc a                                            ; $44f7: $9f
	ld b, d                                          ; $44f8: $42
	cp b                                             ; $44f9: $b8
	dec h                                            ; $44fa: $25
	ld b, d                                          ; $44fb: $42
	ld [$7fff], sp                                   ; $44fc: $08 $ff $7f
	nop                                              ; $44ff: $00
	ld h, [hl]                                       ; $4500: $66
	add b                                            ; $4501: $80
	ld [hl], c                                       ; $4502: $71
	ld b, d                                          ; $4503: $42
	ld [$7fff], sp                                   ; $4504: $08 $ff $7f
	nop                                              ; $4507: $00
	ld h, [hl]                                       ; $4508: $66
	cp b                                             ; $4509: $b8
	dec h                                            ; $450a: $25
	ld b, d                                          ; $450b: $42
	ld [$ff25], sp                                   ; $450c: $08 $25 $ff
	ld a, a                                          ; $450f: $7f
	sbc a                                            ; $4510: $9f
	ld d, d                                          ; $4511: $52
	add hl, de                                       ; $4512: $19
	ld b, b                                          ; $4513: $40
	nop                                              ; $4514: $00
	nop                                              ; $4515: $00
	rst $38                                          ; $4516: $ff
	ld a, a                                          ; $4517: $7f
	rra                                              ; $4518: $1f
	ld [hl], d                                       ; $4519: $72
	add hl, de                                       ; $451a: $19
	ld b, b                                          ; $451b: $40
	nop                                              ; $451c: $00
	nop                                              ; $451d: $00
	rst $38                                          ; $451e: $ff
	ld a, a                                          ; $451f: $7f
	sbc a                                            ; $4520: $9f
	ld d, d                                          ; $4521: $52
	or b                                             ; $4522: $b0
	inc d                                            ; $4523: $14
	nop                                              ; $4524: $00
	nop                                              ; $4525: $00
	rst $38                                          ; $4526: $ff
	ld a, a                                          ; $4527: $7f
	xor h                                            ; $4528: $ac
	ld l, c                                          ; $4529: $69
	add hl, de                                       ; $452a: $19
	ld b, b                                          ; $452b: $40
	nop                                              ; $452c: $00
	nop                                              ; $452d: $00
	ld h, $ff                                        ; $452e: $26 $ff
	ld a, a                                          ; $4530: $7f
	sbc a                                            ; $4531: $9f
	ld [hl-], a                                      ; $4532: $32
	and b                                            ; $4533: $a0
	ld bc, $0000                                     ; $4534: $01 $00 $00
	rst $38                                          ; $4537: $ff
	ld a, a                                          ; $4538: $7f
	ld b, c                                          ; $4539: $41
	rla                                              ; $453a: $17
	and b                                            ; $453b: $a0
	ld bc, $0000                                     ; $453c: $01 $00 $00
	rst $38                                          ; $453f: $ff
	ld a, a                                          ; $4540: $7f
	sbc a                                            ; $4541: $9f
	ld [hl-], a                                      ; $4542: $32
	pop de                                           ; $4543: $d1
	ld [rRAMG], sp                                   ; $4544: $08 $00 $00
	rst $38                                          ; $4547: $ff
	ld a, a                                          ; $4548: $7f
	sbc a                                            ; $4549: $9f
	ld [hl-], a                                      ; $454a: $32
	add $62                                          ; $454b: $c6 $62
	nop                                              ; $454d: $00
	nop                                              ; $454e: $00
	rst $38                                          ; $454f: $ff
	ld a, a                                          ; $4550: $7f
	sbc a                                            ; $4551: $9f
	ld [hl-], a                                      ; $4552: $32
	rra                                              ; $4553: $1f
	ld d, d                                          ; $4554: $52
	nop                                              ; $4555: $00
	nop                                              ; $4556: $00
	ld h, $ff                                        ; $4557: $26 $ff
	ld a, a                                          ; $4559: $7f
	sbc a                                            ; $455a: $9f
	ld h, [hl]                                       ; $455b: $66
	or b                                             ; $455c: $b0
	ld a, h                                          ; $455d: $7c
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
	rst $38                                          ; $4560: $ff
	ld a, a                                          ; $4561: $7f
	dec d                                            ; $4562: $15
	ld a, [hl]                                       ; $4563: $7e
	or b                                             ; $4564: $b0
	ld a, h                                          ; $4565: $7c
	nop                                              ; $4566: $00
	nop                                              ; $4567: $00
	rst $38                                          ; $4568: $ff
	ld a, a                                          ; $4569: $7f
	sbc a                                            ; $456a: $9f
	ld h, [hl]                                       ; $456b: $66
	call nz, $007a                                   ; $456c: $c4 $7a $00
	nop                                              ; $456f: $00
	rst $38                                          ; $4570: $ff
	ld a, a                                          ; $4571: $7f
	sbc a                                            ; $4572: $9f
	ld h, [hl]                                       ; $4573: $66
	sbc h                                            ; $4574: $9c
	dec [hl]                                         ; $4575: $35
	nop                                              ; $4576: $00
	nop                                              ; $4577: $00
	rst $38                                          ; $4578: $ff
	ld a, a                                          ; $4579: $7f
	sbc h                                            ; $457a: $9c
	dec [hl]                                         ; $457b: $35
	or b                                             ; $457c: $b0
	ld a, h                                          ; $457d: $7c
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	ld h, $ff                                        ; $4580: $26 $ff
	ld a, a                                          ; $4582: $7f
	sbc a                                            ; $4583: $9f
	ld b, d                                          ; $4584: $42
	jr @+$22                                         ; $4585: $18 $20

	nop                                              ; $4587: $00
	nop                                              ; $4588: $00
	rst $38                                          ; $4589: $ff
	ld a, a                                          ; $458a: $7f
	cp a                                             ; $458b: $bf
	ld b, l                                          ; $458c: $45
	inc e                                            ; $458d: $1c
	jr nc, jr_010_4590                               ; $458e: $30 $00

jr_010_4590:
	nop                                              ; $4590: $00
	rst $38                                          ; $4591: $ff
	ld a, a                                          ; $4592: $7f
	sbc a                                            ; $4593: $9f
	ld b, d                                          ; $4594: $42
	ld h, c                                          ; $4595: $61
	ld l, c                                          ; $4596: $69
	nop                                              ; $4597: $00
	nop                                              ; $4598: $00
	rst $38                                          ; $4599: $ff
	ld a, a                                          ; $459a: $7f
	ld h, $7f                                        ; $459b: $26 $7f
	inc e                                            ; $459d: $1c
	jr nc, jr_010_45a0                               ; $459e: $30 $00

jr_010_45a0:
	nop                                              ; $45a0: $00
	rst $38                                          ; $45a1: $ff
	ld a, a                                          ; $45a2: $7f
	ld h, c                                          ; $45a3: $61
	ld l, c                                          ; $45a4: $69
	inc e                                            ; $45a5: $1c
	jr nc, jr_010_45a8                               ; $45a6: $30 $00

jr_010_45a8:
	nop                                              ; $45a8: $00
	inc h                                            ; $45a9: $24
	rst $38                                          ; $45aa: $ff
	ld a, a                                          ; $45ab: $7f
	sbc a                                            ; $45ac: $9f
	ld h, [hl]                                       ; $45ad: $66
	sub b                                            ; $45ae: $90
	dec d                                            ; $45af: $15
	nop                                              ; $45b0: $00
	nop                                              ; $45b1: $00
	rst $38                                          ; $45b2: $ff
	ld a, a                                          ; $45b3: $7f
	sbc h                                            ; $45b4: $9c
	ld b, d                                          ; $45b5: $42
	sub b                                            ; $45b6: $90
	dec d                                            ; $45b7: $15
	nop                                              ; $45b8: $00
	nop                                              ; $45b9: $00
	rst $38                                          ; $45ba: $ff
	ld a, a                                          ; $45bb: $7f
	ld c, [hl]                                       ; $45bc: $4e
	ld e, d                                          ; $45bd: $5a
	sub b                                            ; $45be: $90
	dec d                                            ; $45bf: $15
	nop                                              ; $45c0: $00
	nop                                              ; $45c1: $00
	dec h                                            ; $45c2: $25
	rst $38                                          ; $45c3: $ff
	ld a, a                                          ; $45c4: $7f
	sbc a                                            ; $45c5: $9f
	ld b, d                                          ; $45c6: $42
	inc e                                            ; $45c7: $1c
	ld bc, $0000                                     ; $45c8: $01 $00 $00
	rst $38                                          ; $45cb: $ff
	ld a, a                                          ; $45cc: $7f
	rra                                              ; $45cd: $1f
	dec hl                                           ; $45ce: $2b
	inc e                                            ; $45cf: $1c
	ld bc, $0000                                     ; $45d0: $01 $00 $00
	rst $38                                          ; $45d3: $ff
	ld a, a                                          ; $45d4: $7f
	sbc a                                            ; $45d5: $9f
	ld b, d                                          ; $45d6: $42
	ld [hl+], a                                      ; $45d7: $22
	ld [hl], d                                       ; $45d8: $72
	nop                                              ; $45d9: $00
	nop                                              ; $45da: $00
	rst $38                                          ; $45db: $ff
	ld a, a                                          ; $45dc: $7f
	sbc a                                            ; $45dd: $9f
	ld b, d                                          ; $45de: $42
	or b                                             ; $45df: $b0
	stop                                             ; $45e0: $10 $00
	nop                                              ; $45e2: $00
	ld h, $ff                                        ; $45e3: $26 $ff
	ld a, a                                          ; $45e5: $7f
	sbc a                                            ; $45e6: $9f
	ld d, d                                          ; $45e7: $52
	sbc c                                            ; $45e8: $99
	ld [bc], a                                       ; $45e9: $02
	nop                                              ; $45ea: $00
	nop                                              ; $45eb: $00
	rst $38                                          ; $45ec: $ff
	ld a, a                                          ; $45ed: $7f
	sbc a                                            ; $45ee: $9f
	inc sp                                           ; $45ef: $33
	sbc c                                            ; $45f0: $99
	ld [bc], a                                       ; $45f1: $02
	nop                                              ; $45f2: $00
	nop                                              ; $45f3: $00
	sbc a                                            ; $45f4: $9f
	ld d, d                                          ; $45f5: $52
	rst AddAOntoHL                                          ; $45f6: $ef
	ld l, l                                          ; $45f7: $6d
	cp h                                             ; $45f8: $bc
	dec [hl]                                         ; $45f9: $35
	nop                                              ; $45fa: $00
	nop                                              ; $45fb: $00
	sbc a                                            ; $45fc: $9f
	ld d, d                                          ; $45fd: $52
	cp h                                             ; $45fe: $bc
	dec [hl]                                         ; $45ff: $35
	sbc c                                            ; $4600: $99
	ld [bc], a                                       ; $4601: $02
	nop                                              ; $4602: $00
	nop                                              ; $4603: $00
	rst $38                                          ; $4604: $ff
	ld a, a                                          ; $4605: $7f
	rst AddAOntoHL                                          ; $4606: $ef
	ld l, l                                          ; $4607: $6d
	sbc c                                            ; $4608: $99
	ld [bc], a                                       ; $4609: $02
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	inc h                                            ; $460c: $24
	rst $38                                          ; $460d: $ff
	ld a, a                                          ; $460e: $7f
	inc a                                            ; $460f: $3c
	ld a, [hl]                                       ; $4610: $7e
	add hl, de                                       ; $4611: $19
	ld c, b                                          ; $4612: $48
	nop                                              ; $4613: $00
	nop                                              ; $4614: $00
	rst $38                                          ; $4615: $ff
	ld a, a                                          ; $4616: $7f
	ld e, a                                          ; $4617: $5f
	ld d, [hl]                                       ; $4618: $56
	add hl, de                                       ; $4619: $19
	ld c, b                                          ; $461a: $48
	nop                                              ; $461b: $00
	nop                                              ; $461c: $00
	rst $38                                          ; $461d: $ff
	ld a, a                                          ; $461e: $7f
	ld e, a                                          ; $461f: $5f
	ld d, [hl]                                       ; $4620: $56
	add hl, sp                                       ; $4621: $39
	add hl, hl                                       ; $4622: $29
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00
	inc h                                            ; $4625: $24
	rst $38                                          ; $4626: $ff
	ld c, a                                          ; $4627: $4f
	rst SubAFromDE                                          ; $4628: $df
	ld c, $9a                                        ; $4629: $0e $9a
	ld bc, $0000                                     ; $462b: $01 $00 $00
	rst $38                                          ; $462e: $ff
	ld a, a                                          ; $462f: $7f
	ld e, a                                          ; $4630: $5f
	ld a, [hl+]                                      ; $4631: $2a
	sbc d                                            ; $4632: $9a
	ld bc, $0000                                     ; $4633: $01 $00 $00
	rst $38                                          ; $4636: $ff
	ld a, a                                          ; $4637: $7f
	ld e, a                                          ; $4638: $5f
	ld a, [hl+]                                      ; $4639: $2a
	nop                                              ; $463a: $00
	ld h, c                                          ; $463b: $61
	nop                                              ; $463c: $00
	nop                                              ; $463d: $00
	ld h, $ff                                        ; $463e: $26 $ff
	ld a, a                                          ; $4640: $7f
	ld a, l                                          ; $4641: $7d
	add hl, bc                                       ; $4642: $09
	ld [hl], d                                       ; $4643: $72
	nop                                              ; $4644: $00
	nop                                              ; $4645: $00
	nop                                              ; $4646: $00
	rst $38                                          ; $4647: $ff
	ld a, a                                          ; $4648: $7f
	ld a, a                                          ; $4649: $7f
	ld [hl-], a                                      ; $464a: $32
	ld a, l                                          ; $464b: $7d
	add hl, bc                                       ; $464c: $09
	nop                                              ; $464d: $00
	nop                                              ; $464e: $00
	rst $38                                          ; $464f: $ff
	ld a, a                                          ; $4650: $7f
	and b                                            ; $4651: $a0
	ld h, l                                          ; $4652: $65
	ld [hl], d                                       ; $4653: $72
	nop                                              ; $4654: $00
	nop                                              ; $4655: $00
	nop                                              ; $4656: $00
	rst $38                                          ; $4657: $ff
	ld a, a                                          ; $4658: $7f
	and b                                            ; $4659: $a0
	ld h, l                                          ; $465a: $65
	ld a, l                                          ; $465b: $7d
	add hl, bc                                       ; $465c: $09
	nop                                              ; $465d: $00
	nop                                              ; $465e: $00
	rst $38                                          ; $465f: $ff
	ld a, a                                          ; $4660: $7f
	ld a, a                                          ; $4661: $7f
	ld [hl-], a                                      ; $4662: $32
	ld [hl], d                                       ; $4663: $72
	nop                                              ; $4664: $00
	nop                                              ; $4665: $00
	nop                                              ; $4666: $00
	daa                                              ; $4667: $27
	rst $38                                          ; $4668: $ff
	ld a, a                                          ; $4669: $7f
	rst $38                                          ; $466a: $ff
	ld bc, $2aa3                                     ; $466b: $01 $a3 $2a
	rra                                              ; $466e: $1f
	nop                                              ; $466f: $00
	rst $38                                          ; $4670: $ff
	ld a, a                                          ; $4671: $7f
	ld e, a                                          ; $4672: $5f
	ld h, c                                          ; $4673: $61
	ld a, [de]                                       ; $4674: $1a
	jr nz, @+$42                                     ; $4675: $20 $40

	dec c                                            ; $4677: $0d
	rst $38                                          ; $4678: $ff
	ld a, a                                          ; $4679: $7f
	adc $39                                          ; $467a: $ce $39
	xor d                                            ; $467c: $aa
	ld a, h                                          ; $467d: $7c
	ld h, e                                          ; $467e: $63
	inc c                                            ; $467f: $0c
	rst $38                                          ; $4680: $ff
	ld a, a                                          ; $4681: $7f
	nop                                              ; $4682: $00
	ld a, [hl]                                       ; $4683: $7e
	ld a, a                                          ; $4684: $7f
	ld a, h                                          ; $4685: $7c
	ld h, b                                          ; $4686: $60
	ld a, h                                          ; $4687: $7c
	rst $38                                          ; $4688: $ff
	ld a, a                                          ; $4689: $7f
	rra                                              ; $468a: $1f
	ld d, [hl]                                       ; $468b: $56
	adc $39                                          ; $468c: $ce $39
	ld h, e                                          ; $468e: $63
	inc c                                            ; $468f: $0c
	rst $38                                          ; $4690: $ff
	ld a, a                                          ; $4691: $7f
	ld d, d                                          ; $4692: $52
	ld a, l                                          ; $4693: $7d
	xor d                                            ; $4694: $aa
	ld a, h                                          ; $4695: $7c
	ld b, b                                          ; $4696: $40
	dec c                                            ; $4697: $0d
	ld [hl+], a                                      ; $4698: $22
	rst $38                                          ; $4699: $ff
	ld a, a                                          ; $469a: $7f
	rst $38                                          ; $469b: $ff
	ld bc, $6940                                     ; $469c: $01 $40 $69
	rra                                              ; $469f: $1f
	nop                                              ; $46a0: $00
	ld [hl+], a                                      ; $46a1: $22
	rst $38                                          ; $46a2: $ff
	ld a, a                                          ; $46a3: $7f
	rra                                              ; $46a4: $1f
	ld [bc], a                                       ; $46a5: $02
	ld e, a                                          ; $46a6: $5f
	ld bc, $001f                                     ; $46a7: $01 $1f $00
	ld [hl+], a                                      ; $46aa: $22
	rst $38                                          ; $46ab: $ff
	ld a, a                                          ; $46ac: $7f
	rst $38                                          ; $46ad: $ff
	ld bc, $6950                                     ; $46ae: $01 $50 $69
	rra                                              ; $46b1: $1f
	nop                                              ; $46b2: $00
	inc sp                                           ; $46b3: $33
	rst $38                                          ; $46b4: $ff
	ld a, a                                          ; $46b5: $7f
	sbc $03                                          ; $46b6: $de $03
	rra                                              ; $46b8: $1f
	ld [bc], a                                       ; $46b9: $02
	ld b, b                                          ; $46ba: $40
	dec c                                            ; $46bb: $0d
	inc sp                                           ; $46bc: $33
	rst $38                                          ; $46bd: $ff
	ld a, a                                          ; $46be: $7f
	ld [$403f], a                                    ; $46bf: $ea $3f $40
	ld a, [hl+]                                      ; $46c2: $2a
	ld b, b                                          ; $46c3: $40
	dec c                                            ; $46c4: $0d
	inc sp                                           ; $46c5: $33
	rst $38                                          ; $46c6: $ff
	ld a, a                                          ; $46c7: $7f
	rra                                              ; $46c8: $1f
	ld [bc], a                                       ; $46c9: $02
	ld a, a                                          ; $46ca: $7f
	ld h, b                                          ; $46cb: $60
	ld b, b                                          ; $46cc: $40
	dec c                                            ; $46cd: $0d
	ld de, $7fff                                     ; $46ce: $11 $ff $7f
	nop                                              ; $46d1: $00
	ld a, a                                          ; $46d2: $7f
	ld a, a                                          ; $46d3: $7f
	ld h, b                                          ; $46d4: $60
	nop                                              ; $46d5: $00
	nop                                              ; $46d6: $00
	scf                                              ; $46d7: $37
	rst $38                                          ; $46d8: $ff
	ld a, a                                          ; $46d9: $7f
	ld b, [hl]                                       ; $46da: $46
	ld a, a                                          ; $46db: $7f
	jp $e055                                         ; $46dc: $c3 $55 $e0


	jr c, @+$01                                      ; $46df: $38 $ff

	ld [hl], e                                       ; $46e1: $73
	sbc c                                            ; $46e2: $99
	ld b, d                                          ; $46e3: $42
	or e                                             ; $46e4: $b3
	dec l                                            ; $46e5: $2d
	inc c                                            ; $46e6: $0c
	dec e                                            ; $46e7: $1d
	or e                                             ; $46e8: $b3
	dec l                                            ; $46e9: $2d
	inc c                                            ; $46ea: $0c
	dec e                                            ; $46eb: $1d
	ldh [$38], a                                     ; $46ec: $e0 $38
	and $55                                          ; $46ee: $e6 $55
	rst $38                                          ; $46f0: $ff
	ld a, a                                          ; $46f1: $7f
	ld b, [hl]                                       ; $46f2: $46
	ld a, a                                          ; $46f3: $7f
	ldh [c], a                                       ; $46f4: $e2
	ld e, l                                          ; $46f5: $5d
	db $f4                                           ; $46f6: $f4
	dec [hl]                                         ; $46f7: $35
	ei                                               ; $46f8: $fb
	ld a, a                                          ; $46f9: $7f
	ld b, [hl]                                       ; $46fa: $46
	ld a, a                                          ; $46fb: $7f
	add b                                            ; $46fc: $80
	ld a, [hl]                                       ; $46fd: $7e
	ldh [c], a                                       ; $46fe: $e2
	ld e, l                                          ; $46ff: $5d
	rlca                                             ; $4700: $07
	rst $38                                          ; $4701: $ff
	ld a, a                                          ; $4702: $7f
	ld h, d                                          ; $4703: $62
	ld a, [hl]                                       ; $4704: $7e
	nop                                              ; $4705: $00
	ld [hl], l                                       ; $4706: $75
	nop                                              ; $4707: $00
	nop                                              ; $4708: $00
	rst $38                                          ; $4709: $ff
	ld a, a                                          ; $470a: $7f
	dec h                                            ; $470b: $25
	dec sp                                           ; $470c: $3b
	ret nz                                           ; $470d: $c0

	dec d                                            ; $470e: $15
	nop                                              ; $470f: $00
	nop                                              ; $4710: $00
	rst $38                                          ; $4711: $ff
	ld a, a                                          ; $4712: $7f
	cp a                                             ; $4713: $bf
	add hl, sp                                       ; $4714: $39
	ld e, h                                          ; $4715: $5c
	stop                                             ; $4716: $10 $00
	nop                                              ; $4718: $00
	rst $38                                          ; $4719: $ff
	ld a, a                                          ; $471a: $7f
	sbc a                                            ; $471b: $9f
	rla                                              ; $471c: $17
	nop                                              ; $471d: $00
	ld [hl], l                                       ; $471e: $75
	nop                                              ; $471f: $00
	nop                                              ; $4720: $00
	rst $38                                          ; $4721: $ff
	ld a, a                                          ; $4722: $7f
	sbc a                                            ; $4723: $9f
	rla                                              ; $4724: $17
	ld e, h                                          ; $4725: $5c
	stop                                             ; $4726: $10 $00
	nop                                              ; $4728: $00
	rst $38                                          ; $4729: $ff
	ld a, a                                          ; $472a: $7f
	ld h, d                                          ; $472b: $62
	ld a, [hl]                                       ; $472c: $7e
	ld e, h                                          ; $472d: $5c
	stop                                             ; $472e: $10 $00
	nop                                              ; $4730: $00
	rst $38                                          ; $4731: $ff
	ld a, a                                          ; $4732: $7f
	push de                                          ; $4733: $d5
	dec l                                            ; $4734: $2d
	adc $14                                          ; $4735: $ce $14
	nop                                              ; $4737: $00
	nop                                              ; $4738: $00
	rst $38                                          ; $4739: $ff
	ld a, a                                          ; $473a: $7f
	ld a, [hl+]                                      ; $473b: $2a
	inc bc                                           ; $473c: $03
	adc $14                                          ; $473d: $ce $14
	nop                                              ; $473f: $00
	nop                                              ; $4740: $00
	rlca                                             ; $4741: $07
	rst $38                                          ; $4742: $ff
	ld a, a                                          ; $4743: $7f
	sub a                                            ; $4744: $97
	ld a, [hl]                                       ; $4745: $7e
	ld l, $75                                        ; $4746: $2e $75
	nop                                              ; $4748: $00
	nop                                              ; $4749: $00
	rst $38                                          ; $474a: $ff
	ld a, a                                          ; $474b: $7f
	ccf                                              ; $474c: $3f
	dec hl                                           ; $474d: $2b
	sub l                                            ; $474e: $95
	ld bc, $0000                                     ; $474f: $01 $00 $00
	rst $38                                          ; $4752: $ff
	ld a, a                                          ; $4753: $7f
	cp a                                             ; $4754: $bf
	add hl, sp                                       ; $4755: $39
	sub l                                            ; $4756: $95
	ld bc, $0000                                     ; $4757: $01 $00 $00
	rst $38                                          ; $475a: $ff
	ld a, a                                          ; $475b: $7f
	cp a                                             ; $475c: $bf
	add hl, sp                                       ; $475d: $39
	ld l, $75                                        ; $475e: $2e $75
	nop                                              ; $4760: $00
	nop                                              ; $4761: $00
	rst $38                                          ; $4762: $ff
	ld a, a                                          ; $4763: $7f
	ld h, d                                          ; $4764: $62
	ld a, [hl]                                       ; $4765: $7e
	nop                                              ; $4766: $00
	ld [hl], l                                       ; $4767: $75
	nop                                              ; $4768: $00
	nop                                              ; $4769: $00
	rst $38                                          ; $476a: $ff
	ld a, a                                          ; $476b: $7f
	cp a                                             ; $476c: $bf
	add hl, sp                                       ; $476d: $39
	add b                                            ; $476e: $80
	ld b, c                                          ; $476f: $41
	nop                                              ; $4770: $00
	nop                                              ; $4771: $00
	sbc a                                            ; $4772: $9f
	rla                                              ; $4773: $17
	dec b                                            ; $4774: $05
	ld d, e                                          ; $4775: $53
	add b                                            ; $4776: $80
	ld b, c                                          ; $4777: $41
	nop                                              ; $4778: $00
	nop                                              ; $4779: $00
	sbc a                                            ; $477a: $9f
	rla                                              ; $477b: $17
	push de                                          ; $477c: $d5
	dec l                                            ; $477d: $2d
	adc $14                                          ; $477e: $ce $14
	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	adc h                                            ; $4782: $8c
	ld h, d                                          ; $4783: $62
	ld a, [hl]                                       ; $4784: $7e
	nop                                              ; $4785: $00
	ld [hl], l                                       ; $4786: $75
	nop                                              ; $4787: $00
	nop                                              ; $4788: $00
	sbc a                                            ; $4789: $9f
	rla                                              ; $478a: $17
	ld c, b                                          ; $478b: $48
	ld d, e                                          ; $478c: $53
	nop                                              ; $478d: $00
	nop                                              ; $478e: $00
	ld c, b                                          ; $478f: $48
	ld d, e                                          ; $4790: $53
	and b                                            ; $4791: $a0
	dec [hl]                                         ; $4792: $35
	nop                                              ; $4793: $00
	nop                                              ; $4794: $00
	ld h, b                                          ; $4795: $60
	ld bc, $7500                                     ; $4796: $01 $00 $75
	nop                                              ; $4799: $00
	nop                                              ; $479a: $00
	sbc a                                            ; $479b: $9f
	rla                                              ; $479c: $17
	ld h, d                                          ; $479d: $62
	ld a, [hl]                                       ; $479e: $7e
	nop                                              ; $479f: $00
	nop                                              ; $47a0: $00
	nop                                              ; $47a1: $00
	rst $38                                          ; $47a2: $ff
	ld a, a                                          ; $47a3: $7f
	or l                                             ; $47a4: $b5
	ld d, [hl]                                       ; $47a5: $56
	ld c, d                                          ; $47a6: $4a
	add hl, hl                                       ; $47a7: $29
	nop                                              ; $47a8: $00
	nop                                              ; $47a9: $00
	adc e                                            ; $47aa: $8b
	or l                                             ; $47ab: $b5
	ld d, [hl]                                       ; $47ac: $56
	ld c, d                                          ; $47ad: $4a
	add hl, hl                                       ; $47ae: $29
	nop                                              ; $47af: $00
	nop                                              ; $47b0: $00
	db $fd                                           ; $47b1: $fd
	dec e                                            ; $47b2: $1d
	or e                                             ; $47b3: $b3
	inc d                                            ; $47b4: $14
	nop                                              ; $47b5: $00
	nop                                              ; $47b6: $00
	db $fd                                           ; $47b7: $fd
	dec e                                            ; $47b8: $1d
	ld c, d                                          ; $47b9: $4a
	add hl, hl                                       ; $47ba: $29
	nop                                              ; $47bb: $00
	nop                                              ; $47bc: $00
	ld c, d                                          ; $47bd: $4a
	add hl, hl                                       ; $47be: $29
	or e                                             ; $47bf: $b3
	inc d                                            ; $47c0: $14
	nop                                              ; $47c1: $00
	nop                                              ; $47c2: $00
	rlca                                             ; $47c3: $07
	rst $38                                          ; $47c4: $ff
	ld a, a                                          ; $47c5: $7f
	ld h, d                                          ; $47c6: $62
	ld a, [hl]                                       ; $47c7: $7e
	nop                                              ; $47c8: $00
	ld [hl], l                                       ; $47c9: $75
	nop                                              ; $47ca: $00
	nop                                              ; $47cb: $00
	rst $38                                          ; $47cc: $ff
	ld a, a                                          ; $47cd: $7f
	ld h, b                                          ; $47ce: $60
	ld bc, $7500                                     ; $47cf: $01 $00 $75
	nop                                              ; $47d2: $00
	nop                                              ; $47d3: $00
	rst $38                                          ; $47d4: $ff
	ld a, a                                          ; $47d5: $7f
	cp a                                             ; $47d6: $bf
	add hl, sp                                       ; $47d7: $39
	ld a, [de]                                       ; $47d8: $1a
	inc d                                            ; $47d9: $14
	nop                                              ; $47da: $00
	nop                                              ; $47db: $00
	sbc a                                            ; $47dc: $9f
	rla                                              ; $47dd: $17
	ld h, d                                          ; $47de: $62
	ld a, [hl]                                       ; $47df: $7e
	nop                                              ; $47e0: $00
	ld [hl], l                                       ; $47e1: $75
	nop                                              ; $47e2: $00
	nop                                              ; $47e3: $00
	sbc a                                            ; $47e4: $9f
	rla                                              ; $47e5: $17
	cp a                                             ; $47e6: $bf
	add hl, sp                                       ; $47e7: $39
	ld a, [de]                                       ; $47e8: $1a
	inc d                                            ; $47e9: $14
	nop                                              ; $47ea: $00
	nop                                              ; $47eb: $00
	rst $38                                          ; $47ec: $ff
	ld a, a                                          ; $47ed: $7f
	ld h, d                                          ; $47ee: $62
	ld a, [hl]                                       ; $47ef: $7e
	ld a, [de]                                       ; $47f0: $1a
	inc d                                            ; $47f1: $14
	nop                                              ; $47f2: $00
	nop                                              ; $47f3: $00
	rst $38                                          ; $47f4: $ff
	ld a, a                                          ; $47f5: $7f
	push de                                          ; $47f6: $d5
	dec l                                            ; $47f7: $2d
	adc $14                                          ; $47f8: $ce $14
	nop                                              ; $47fa: $00
	nop                                              ; $47fb: $00
	rst $38                                          ; $47fc: $ff
	ld a, a                                          ; $47fd: $7f
	cp a                                             ; $47fe: $bf
	add hl, sp                                       ; $47ff: $39
	nop                                              ; $4800: $00
	ld [hl], l                                       ; $4801: $75
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	rlca                                             ; $4804: $07
	rst $38                                          ; $4805: $ff
	ld a, a                                          ; $4806: $7f
	rst AddAOntoHL                                          ; $4807: $ef
	ld d, l                                          ; $4808: $55
	add sp, $40                                      ; $4809: $e8 $40
	nop                                              ; $480b: $00
	nop                                              ; $480c: $00
	rst $38                                          ; $480d: $ff
	ld a, a                                          ; $480e: $7f
	ld h, d                                          ; $480f: $62
	ld a, [hl]                                       ; $4810: $7e
	nop                                              ; $4811: $00
	ld [hl], l                                       ; $4812: $75
	nop                                              ; $4813: $00
	nop                                              ; $4814: $00
	rst $38                                          ; $4815: $ff
	ld a, a                                          ; $4816: $7f
	rst SubAFromDE                                          ; $4817: $df
	add hl, hl                                       ; $4818: $29
	add sp, $40                                      ; $4819: $e8 $40
	nop                                              ; $481b: $00
	nop                                              ; $481c: $00
	rst $38                                          ; $481d: $ff
	ld a, a                                          ; $481e: $7f
	rst SubAFromDE                                          ; $481f: $df
	add hl, hl                                       ; $4820: $29
	nop                                              ; $4821: $00
	ld [hl], l                                       ; $4822: $75
	nop                                              ; $4823: $00
	nop                                              ; $4824: $00
	rst $38                                          ; $4825: $ff
	ld a, a                                          ; $4826: $7f
	rst SubAFromDE                                          ; $4827: $df
	add hl, hl                                       ; $4828: $29
	ld e, e                                          ; $4829: $5b
	stop                                             ; $482a: $10 $00
	nop                                              ; $482c: $00
	sbc a                                            ; $482d: $9f
	rla                                              ; $482e: $17
	ld h, d                                          ; $482f: $62
	ld a, [hl]                                       ; $4830: $7e
	nop                                              ; $4831: $00
	ld [hl], l                                       ; $4832: $75
	nop                                              ; $4833: $00
	nop                                              ; $4834: $00
	rst $38                                          ; $4835: $ff
	ld a, a                                          ; $4836: $7f
	ld [de], a                                       ; $4837: $12
	ld l, [hl]                                       ; $4838: $6e
	ld e, e                                          ; $4839: $5b
	stop                                             ; $483a: $10 $00
	nop                                              ; $483c: $00
	rst $38                                          ; $483d: $ff
	ld a, a                                          ; $483e: $7f
	ld h, d                                          ; $483f: $62
	ld a, [hl]                                       ; $4840: $7e
	ld e, e                                          ; $4841: $5b
	stop                                             ; $4842: $10 $00
	nop                                              ; $4844: $00
	adc a                                            ; $4845: $8f
	ld [de], a                                       ; $4846: $12
	ld l, [hl]                                       ; $4847: $6e
	ld [$0050], a                                    ; $4848: $ea $50 $00
	nop                                              ; $484b: $00
	ld h, d                                          ; $484c: $62
	ld a, [hl]                                       ; $484d: $7e
	nop                                              ; $484e: $00
	ld [hl], l                                       ; $484f: $75
	nop                                              ; $4850: $00
	nop                                              ; $4851: $00
	rst SubAFromDE                                          ; $4852: $df
	ld b, c                                          ; $4853: $41
	ld [$0050], a                                    ; $4854: $ea $50 $00
	nop                                              ; $4857: $00
	rst SubAFromDE                                          ; $4858: $df
	ld b, c                                          ; $4859: $41
	nop                                              ; $485a: $00
	ld [hl], l                                       ; $485b: $75
	nop                                              ; $485c: $00
	nop                                              ; $485d: $00
	rst SubAFromDE                                          ; $485e: $df
	ld b, c                                          ; $485f: $41
	ld e, $24                                        ; $4860: $1e $24
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	ld b, d                                          ; $4864: $42
	ld a, [bc]                                       ; $4865: $0a
	ld b, h                                          ; $4866: $44
	ld a, [bc]                                       ; $4867: $0a
	ld b, [hl]                                       ; $4868: $46
	ld a, [bc]                                       ; $4869: $0a
	ld [de], a                                       ; $486a: $12
	ld l, [hl]                                       ; $486b: $6e
	ld e, $24                                        ; $486c: $1e $24
	nop                                              ; $486e: $00
	nop                                              ; $486f: $00
	ld h, d                                          ; $4870: $62
	ld a, [hl]                                       ; $4871: $7e
	ld e, $24                                        ; $4872: $1e $24
	nop                                              ; $4874: $00
	nop                                              ; $4875: $00
	rlca                                             ; $4876: $07
	rst $38                                          ; $4877: $ff
	ld a, a                                          ; $4878: $7f
	ret c                                            ; $4879: $d8

	ld a, l                                          ; $487a: $7d
	ld c, $74                                        ; $487b: $0e $74
	nop                                              ; $487d: $00
	nop                                              ; $487e: $00
	rst $38                                          ; $487f: $ff
	ld a, a                                          ; $4880: $7f
	ld h, d                                          ; $4881: $62
	ld a, [hl]                                       ; $4882: $7e
	nop                                              ; $4883: $00
	ld [hl], l                                       ; $4884: $75
	nop                                              ; $4885: $00
	nop                                              ; $4886: $00
	rst $38                                          ; $4887: $ff
	ld a, a                                          ; $4888: $7f
	sbc a                                            ; $4889: $9f
	ld b, l                                          ; $488a: $45
	ld c, $74                                        ; $488b: $0e $74
	nop                                              ; $488d: $00
	nop                                              ; $488e: $00
	rst $38                                          ; $488f: $ff
	ld a, a                                          ; $4890: $7f
	sbc a                                            ; $4891: $9f
	ld b, l                                          ; $4892: $45
	nop                                              ; $4893: $00
	ld [hl], l                                       ; $4894: $75
	nop                                              ; $4895: $00
	nop                                              ; $4896: $00
	ld b, b                                          ; $4897: $40
	ld [bc], a                                       ; $4898: $02
	ld b, d                                          ; $4899: $42
	ld [bc], a                                       ; $489a: $02
	ld b, h                                          ; $489b: $44
	ld [bc], a                                       ; $489c: $02
	ld b, [hl]                                       ; $489d: $46
	ld [bc], a                                       ; $489e: $02
	sbc a                                            ; $489f: $9f
	rla                                              ; $48a0: $17
	ld h, d                                          ; $48a1: $62
	ld a, [hl]                                       ; $48a2: $7e
	nop                                              ; $48a3: $00
	ld [hl], l                                       ; $48a4: $75
	nop                                              ; $48a5: $00
	nop                                              ; $48a6: $00
	rst $38                                          ; $48a7: $ff
	ld a, a                                          ; $48a8: $7f
	ret c                                            ; $48a9: $d8

	ld a, l                                          ; $48aa: $7d
	nop                                              ; $48ab: $00
	ld [hl], l                                       ; $48ac: $75
	nop                                              ; $48ad: $00
	nop                                              ; $48ae: $00
	rst $38                                          ; $48af: $ff
	ld a, a                                          ; $48b0: $7f
	ld h, d                                          ; $48b1: $62
	ld a, [hl]                                       ; $48b2: $7e
	ld c, $74                                        ; $48b3: $0e $74
	nop                                              ; $48b5: $00
	nop                                              ; $48b6: $00
	adc d                                            ; $48b7: $8a
	dec d                                            ; $48b8: $15
	ld a, [hl]                                       ; $48b9: $7e
	db $10                                           ; $48ba: $10
	ld a, h                                          ; $48bb: $7c
	nop                                              ; $48bc: $00
	nop                                              ; $48bd: $00
	ld h, d                                          ; $48be: $62
	ld a, [hl]                                       ; $48bf: $7e
	nop                                              ; $48c0: $00
	ld [hl], l                                       ; $48c1: $75
	nop                                              ; $48c2: $00
	nop                                              ; $48c3: $00
	rst $38                                          ; $48c4: $ff
	ld b, l                                          ; $48c5: $45
	db $10                                           ; $48c6: $10
	ld a, h                                          ; $48c7: $7c
	nop                                              ; $48c8: $00
	nop                                              ; $48c9: $00
	rst AddAOntoHL                                          ; $48ca: $ef
	dec d                                            ; $48cb: $15
	ld a, [hl]                                       ; $48cc: $7e
	nop                                              ; $48cd: $00
	ld [hl], l                                       ; $48ce: $75
	nop                                              ; $48cf: $00
	nop                                              ; $48d0: $00
	ld h, d                                          ; $48d1: $62
	ld a, [hl]                                       ; $48d2: $7e
	db $10                                           ; $48d3: $10
	ld a, h                                          ; $48d4: $7c
	nop                                              ; $48d5: $00
	nop                                              ; $48d6: $00
	rlca                                             ; $48d7: $07
	rst $38                                          ; $48d8: $ff
	ld a, a                                          ; $48d9: $7f
	ld h, d                                          ; $48da: $62
	ld a, [hl]                                       ; $48db: $7e
	nop                                              ; $48dc: $00
	ld [hl], l                                       ; $48dd: $75
	nop                                              ; $48de: $00
	nop                                              ; $48df: $00
	rst $38                                          ; $48e0: $ff
	ld a, a                                          ; $48e1: $7f
	dec h                                            ; $48e2: $25
	ld b, a                                          ; $48e3: $47
	add b                                            ; $48e4: $80
	ld sp, $0000                                     ; $48e5: $31 $00 $00
	rst $38                                          ; $48e8: $ff
	ld a, a                                          ; $48e9: $7f
	rst $38                                          ; $48ea: $ff
	dec h                                            ; $48eb: $25
	add b                                            ; $48ec: $80
	ld sp, $0000                                     ; $48ed: $31 $00 $00
	rst $38                                          ; $48f0: $ff
	ld a, a                                          ; $48f1: $7f
	rst $38                                          ; $48f2: $ff
	dec h                                            ; $48f3: $25
	nop                                              ; $48f4: $00
	ld [hl], l                                       ; $48f5: $75
	nop                                              ; $48f6: $00
	nop                                              ; $48f7: $00
	rst $38                                          ; $48f8: $ff
	ld a, a                                          ; $48f9: $7f
	ld h, d                                          ; $48fa: $62
	ld a, [hl]                                       ; $48fb: $7e
	add b                                            ; $48fc: $80
	ld sp, $0000                                     ; $48fd: $31 $00 $00
	sbc a                                            ; $4900: $9f
	rla                                              ; $4901: $17
	ld h, d                                          ; $4902: $62
	ld a, [hl]                                       ; $4903: $7e
	nop                                              ; $4904: $00
	ld [hl], l                                       ; $4905: $75
	nop                                              ; $4906: $00
	nop                                              ; $4907: $00
	rst $38                                          ; $4908: $ff
	ld a, a                                          ; $4909: $7f
	rst $38                                          ; $490a: $ff
	dec h                                            ; $490b: $25
	rst FarCall                                          ; $490c: $f7
	nop                                              ; $490d: $00
	nop                                              ; $490e: $00
	nop                                              ; $490f: $00
	rst $38                                          ; $4910: $ff
	ld a, a                                          ; $4911: $7f
	ld h, d                                          ; $4912: $62
	ld a, [hl]                                       ; $4913: $7e
	rst FarCall                                          ; $4914: $f7
	nop                                              ; $4915: $00
	nop                                              ; $4916: $00
	nop                                              ; $4917: $00
	adc [hl]                                         ; $4918: $8e
	ld h, d                                          ; $4919: $62
	ld a, [hl]                                       ; $491a: $7e
	nop                                              ; $491b: $00
	ld [hl], l                                       ; $491c: $75
	nop                                              ; $491d: $00
	nop                                              ; $491e: $00
	ret nz                                           ; $491f: $c0

	ld c, d                                          ; $4920: $4a
	and b                                            ; $4921: $a0
	dec h                                            ; $4922: $25
	nop                                              ; $4923: $00
	nop                                              ; $4924: $00
	ccf                                              ; $4925: $3f
	ld [hl-], a                                      ; $4926: $32
	and b                                            ; $4927: $a0
	dec h                                            ; $4928: $25
	nop                                              ; $4929: $00
	nop                                              ; $492a: $00
	jp nz, $c408                                     ; $492b: $c2 $08 $c4

	ld [$08c6], sp                                   ; $492e: $08 $c6 $08
	ld h, d                                          ; $4931: $62
	ld a, [hl]                                       ; $4932: $7e
	and b                                            ; $4933: $a0
	dec h                                            ; $4934: $25
	nop                                              ; $4935: $00
	nop                                              ; $4936: $00
	ld b, d                                          ; $4937: $42
	add hl, bc                                       ; $4938: $09
	ld b, h                                          ; $4939: $44
	add hl, bc                                       ; $493a: $09
	ld b, [hl]                                       ; $493b: $46
	add hl, bc                                       ; $493c: $09
	ccf                                              ; $493d: $3f
	ld [hl-], a                                      ; $493e: $32
	ld a, [$0014]                                    ; $493f: $fa $14 $00
	nop                                              ; $4942: $00
	ld [bc], a                                       ; $4943: $02
	rst $38                                          ; $4944: $ff
	ld a, a                                          ; $4945: $7f
	ld h, d                                          ; $4946: $62
	ld a, [hl]                                       ; $4947: $7e
	nop                                              ; $4948: $00
	ld [hl], l                                       ; $4949: $75
	nop                                              ; $494a: $00
	nop                                              ; $494b: $00
	rst $38                                          ; $494c: $ff
	ld a, a                                          ; $494d: $7f
	rst $38                                          ; $494e: $ff
	dec h                                            ; $494f: $25
	ldh a, [c]                                       ; $4950: $f2
	jr jr_010_4953                                   ; $4951: $18 $00

jr_010_4953:
	nop                                              ; $4953: $00
	rst $38                                          ; $4954: $ff
	ld a, a                                          ; $4955: $7f
	rst $38                                          ; $4956: $ff
	dec h                                            ; $4957: $25
	nop                                              ; $4958: $00
	ld [hl], l                                       ; $4959: $75
	nop                                              ; $495a: $00
	nop                                              ; $495b: $00
	adc d                                            ; $495c: $8a
	ld h, d                                          ; $495d: $62
	ld a, [hl]                                       ; $495e: $7e
	nop                                              ; $495f: $00
	ld [hl], l                                       ; $4960: $75
	nop                                              ; $4961: $00
	nop                                              ; $4962: $00
	rst $38                                          ; $4963: $ff
	ld a, a                                          ; $4964: $7f
	ld e, a                                          ; $4965: $5f
	ld a, [hl+]                                      ; $4966: $2a
	nop                                              ; $4967: $00
	nop                                              ; $4968: $00
	rst $38                                          ; $4969: $ff
	ld a, a                                          ; $496a: $7f
	ld h, d                                          ; $496b: $62
	ld a, [hl]                                       ; $496c: $7e
	nop                                              ; $496d: $00
	nop                                              ; $496e: $00
	nop                                              ; $496f: $00
	rst $38                                          ; $4970: $ff
	ld a, a                                          ; $4971: $7f
	or l                                             ; $4972: $b5
	ld d, [hl]                                       ; $4973: $56
	ld c, d                                          ; $4974: $4a
	add hl, hl                                       ; $4975: $29
	ld h, e                                          ; $4976: $63
	inc c                                            ; $4977: $0c
	adc b                                            ; $4978: $88
	or l                                             ; $4979: $b5
	ld d, [hl]                                       ; $497a: $56
	ld c, d                                          ; $497b: $4a
	add hl, hl                                       ; $497c: $29
	ld h, e                                          ; $497d: $63
	inc c                                            ; $497e: $0c
	daa                                              ; $497f: $27
	inc l                                            ; $4980: $2c
	ld hl, $0140                                     ; $4981: $21 $40 $01
	nop                                              ; $4984: $00
	ld [hl], l                                       ; $4985: $75
	nop                                              ; $4986: $00
	nop                                              ; $4987: $00
	rst $38                                          ; $4988: $ff
	ld a, a                                          ; $4989: $7f
	ld h, d                                          ; $498a: $62
	ld a, [hl]                                       ; $498b: $7e
	nop                                              ; $498c: $00
	ld [hl], l                                       ; $498d: $75
	nop                                              ; $498e: $00
	nop                                              ; $498f: $00
	rst $38                                          ; $4990: $ff
	ld a, a                                          ; $4991: $7f
	cp a                                             ; $4992: $bf
	add hl, sp                                       ; $4993: $39
	ld a, [de]                                       ; $4994: $1a
	inc d                                            ; $4995: $14
	nop                                              ; $4996: $00
	nop                                              ; $4997: $00
	sbc a                                            ; $4998: $9f
	rla                                              ; $4999: $17
	cp a                                             ; $499a: $bf
	add hl, sp                                       ; $499b: $39
	nop                                              ; $499c: $00
	ld [hl], l                                       ; $499d: $75
	nop                                              ; $499e: $00
	nop                                              ; $499f: $00
	sbc a                                            ; $49a0: $9f
	rla                                              ; $49a1: $17
	cp a                                             ; $49a2: $bf
	add hl, sp                                       ; $49a3: $39
	ld a, [de]                                       ; $49a4: $1a
	inc d                                            ; $49a5: $14
	nop                                              ; $49a6: $00
	nop                                              ; $49a7: $00
	rst $38                                          ; $49a8: $ff
	ld a, a                                          ; $49a9: $7f
	ld a, [de]                                       ; $49aa: $1a
	inc d                                            ; $49ab: $14
	nop                                              ; $49ac: $00
	ld [hl], l                                       ; $49ad: $75
	nop                                              ; $49ae: $00
	nop                                              ; $49af: $00
	daa                                              ; $49b0: $27
	inc l                                            ; $49b1: $2c
	ld hl, $0140                                     ; $49b2: $21 $40 $01
	nop                                              ; $49b5: $00
	ld [hl], l                                       ; $49b6: $75
	nop                                              ; $49b7: $00
	nop                                              ; $49b8: $00
	rst $38                                          ; $49b9: $ff
	ld a, a                                          ; $49ba: $7f
	ld h, d                                          ; $49bb: $62
	ld a, [hl]                                       ; $49bc: $7e
	nop                                              ; $49bd: $00
	ld [hl], l                                       ; $49be: $75
	nop                                              ; $49bf: $00
	nop                                              ; $49c0: $00
	rst $38                                          ; $49c1: $ff
	ld a, a                                          ; $49c2: $7f
	cp a                                             ; $49c3: $bf
	add hl, sp                                       ; $49c4: $39
	add b                                            ; $49c5: $80
	ld b, c                                          ; $49c6: $41
	nop                                              ; $49c7: $00
	nop                                              ; $49c8: $00
	sbc a                                            ; $49c9: $9f
	rla                                              ; $49ca: $17
	ld h, d                                          ; $49cb: $62
	ld a, [hl]                                       ; $49cc: $7e
	nop                                              ; $49cd: $00
	ld [hl], l                                       ; $49ce: $75
	nop                                              ; $49cf: $00
	nop                                              ; $49d0: $00
	rst $38                                          ; $49d1: $ff
	ld a, a                                          ; $49d2: $7f
	dec b                                            ; $49d3: $05
	ld d, e                                          ; $49d4: $53
	add b                                            ; $49d5: $80
	ld b, c                                          ; $49d6: $41
	nop                                              ; $49d7: $00
	nop                                              ; $49d8: $00
	rst $38                                          ; $49d9: $ff
	ld a, a                                          ; $49da: $7f
	dec b                                            ; $49db: $05
	ld d, e                                          ; $49dc: $53
	nop                                              ; $49dd: $00
	ld [hl], l                                       ; $49de: $75
	nop                                              ; $49df: $00
	nop                                              ; $49e0: $00
	daa                                              ; $49e1: $27
	inc l                                            ; $49e2: $2c
	ld hl, $0140                                     ; $49e3: $21 $40 $01
	nop                                              ; $49e6: $00
	ld [hl], l                                       ; $49e7: $75
	nop                                              ; $49e8: $00
	nop                                              ; $49e9: $00
	rst $38                                          ; $49ea: $ff
	ld a, a                                          ; $49eb: $7f
	ld h, d                                          ; $49ec: $62
	ld a, [hl]                                       ; $49ed: $7e
	nop                                              ; $49ee: $00
	ld [hl], l                                       ; $49ef: $75
	nop                                              ; $49f0: $00
	nop                                              ; $49f1: $00
	rst $38                                          ; $49f2: $ff
	ld a, a                                          ; $49f3: $7f
	sbc a                                            ; $49f4: $9f
	ld b, l                                          ; $49f5: $45
	sub c                                            ; $49f6: $91
	ld bc, $0000                                     ; $49f7: $01 $00 $00
	rst $38                                          ; $49fa: $ff
	ld a, a                                          ; $49fb: $7f
	ccf                                              ; $49fc: $3f
	rla                                              ; $49fd: $17
	nop                                              ; $49fe: $00
	ld [hl], l                                       ; $49ff: $75
	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	rst $38                                          ; $4a02: $ff
	ld a, a                                          ; $4a03: $7f
	ccf                                              ; $4a04: $3f
	rla                                              ; $4a05: $17
	sub c                                            ; $4a06: $91
	ld bc, $0000                                     ; $4a07: $01 $00 $00
	ccf                                              ; $4a0a: $3f
	rla                                              ; $4a0b: $17
	sbc a                                            ; $4a0c: $9f
	ld b, l                                          ; $4a0d: $45
	nop                                              ; $4a0e: $00
	ld [hl], l                                       ; $4a0f: $75
	nop                                              ; $4a10: $00
	nop                                              ; $4a11: $00
	daa                                              ; $4a12: $27
	inc l                                            ; $4a13: $2c
	ld hl, $0140                                     ; $4a14: $21 $40 $01
	nop                                              ; $4a17: $00
	ld [hl], l                                       ; $4a18: $75
	nop                                              ; $4a19: $00
	nop                                              ; $4a1a: $00
	rst $38                                          ; $4a1b: $ff
	ld a, a                                          ; $4a1c: $7f
	ld h, d                                          ; $4a1d: $62
	ld a, [hl]                                       ; $4a1e: $7e
	nop                                              ; $4a1f: $00
	ld [hl], l                                       ; $4a20: $75
	nop                                              ; $4a21: $00
	nop                                              ; $4a22: $00
	rst $38                                          ; $4a23: $ff
	ld a, a                                          ; $4a24: $7f
	sbc a                                            ; $4a25: $9f
	ld b, l                                          ; $4a26: $45
	ld c, $74                                        ; $4a27: $0e $74
	nop                                              ; $4a29: $00
	nop                                              ; $4a2a: $00
	sbc a                                            ; $4a2b: $9f
	rla                                              ; $4a2c: $17
	ld h, d                                          ; $4a2d: $62
	ld a, [hl]                                       ; $4a2e: $7e
	nop                                              ; $4a2f: $00
	ld [hl], l                                       ; $4a30: $75
	nop                                              ; $4a31: $00
	nop                                              ; $4a32: $00
	rst $38                                          ; $4a33: $ff
	ld a, a                                          ; $4a34: $7f
	ret c                                            ; $4a35: $d8

	ld a, l                                          ; $4a36: $7d
	ld c, $74                                        ; $4a37: $0e $74
	nop                                              ; $4a39: $00
	nop                                              ; $4a3a: $00
	rst $38                                          ; $4a3b: $ff
	ld a, a                                          ; $4a3c: $7f
	ret c                                            ; $4a3d: $d8

	ld a, l                                          ; $4a3e: $7d
	nop                                              ; $4a3f: $00
	ld [hl], l                                       ; $4a40: $75
	nop                                              ; $4a41: $00
	nop                                              ; $4a42: $00
	daa                                              ; $4a43: $27
	inc l                                            ; $4a44: $2c
	ld hl, $0140                                     ; $4a45: $21 $40 $01
	nop                                              ; $4a48: $00
	ld [hl], l                                       ; $4a49: $75
	nop                                              ; $4a4a: $00
	nop                                              ; $4a4b: $00
	rst $38                                          ; $4a4c: $ff
	ld a, a                                          ; $4a4d: $7f
	ld h, d                                          ; $4a4e: $62
	ld a, [hl]                                       ; $4a4f: $7e
	nop                                              ; $4a50: $00
	ld [hl], l                                       ; $4a51: $75
	nop                                              ; $4a52: $00
	nop                                              ; $4a53: $00
	rst $38                                          ; $4a54: $ff
	ld a, a                                          ; $4a55: $7f
	rst $38                                          ; $4a56: $ff
	dec h                                            ; $4a57: $25
	add b                                            ; $4a58: $80
	ld sp, $0000                                     ; $4a59: $31 $00 $00
	sbc a                                            ; $4a5c: $9f
	rla                                              ; $4a5d: $17
	add b                                            ; $4a5e: $80
	ld sp, $7500                                     ; $4a5f: $31 $00 $75
	nop                                              ; $4a62: $00
	nop                                              ; $4a63: $00
	rst $38                                          ; $4a64: $ff
	ld a, a                                          ; $4a65: $7f
	dec h                                            ; $4a66: $25
	ld b, a                                          ; $4a67: $47
	add b                                            ; $4a68: $80
	ld sp, $0000                                     ; $4a69: $31 $00 $00
	rst $38                                          ; $4a6c: $ff
	ld a, a                                          ; $4a6d: $7f
	ld b, b                                          ; $4a6e: $40
	ld bc, $3180                                     ; $4a6f: $01 $80 $31
	nop                                              ; $4a72: $00
	nop                                              ; $4a73: $00
	daa                                              ; $4a74: $27
	inc l                                            ; $4a75: $2c
	ld hl, $0140                                     ; $4a76: $21 $40 $01
	nop                                              ; $4a79: $00
	ld [hl], l                                       ; $4a7a: $75
	nop                                              ; $4a7b: $00
	nop                                              ; $4a7c: $00
	rst $38                                          ; $4a7d: $ff
	ld a, a                                          ; $4a7e: $7f
	ld h, d                                          ; $4a7f: $62
	ld a, [hl]                                       ; $4a80: $7e
	nop                                              ; $4a81: $00
	ld [hl], l                                       ; $4a82: $75
	nop                                              ; $4a83: $00
	nop                                              ; $4a84: $00
	rst $38                                          ; $4a85: $ff
	ld a, a                                          ; $4a86: $7f
	rst SubAFromDE                                          ; $4a87: $df
	add hl, hl                                       ; $4a88: $29
	add b                                            ; $4a89: $80
	ld sp, $0000                                     ; $4a8a: $31 $00 $00
	sbc a                                            ; $4a8d: $9f
	rla                                              ; $4a8e: $17
	add b                                            ; $4a8f: $80
	ld sp, $7500                                     ; $4a90: $31 $00 $75
	nop                                              ; $4a93: $00
	nop                                              ; $4a94: $00
	rst $38                                          ; $4a95: $ff
	ld a, a                                          ; $4a96: $7f
	dec h                                            ; $4a97: $25
	ld b, a                                          ; $4a98: $47
	add b                                            ; $4a99: $80
	ld sp, $0000                                     ; $4a9a: $31 $00 $00
	rst $38                                          ; $4a9d: $ff
	ld a, a                                          ; $4a9e: $7f
	add b                                            ; $4a9f: $80
	ld sp, $7500                                     ; $4aa0: $31 $00 $75
	nop                                              ; $4aa3: $00
	nop                                              ; $4aa4: $00
	daa                                              ; $4aa5: $27
	inc l                                            ; $4aa6: $2c
	ld hl, $0140                                     ; $4aa7: $21 $40 $01
	nop                                              ; $4aaa: $00
	ld [hl], l                                       ; $4aab: $75
	nop                                              ; $4aac: $00
	nop                                              ; $4aad: $00
	rst $38                                          ; $4aae: $ff
	ld a, a                                          ; $4aaf: $7f
	ld h, d                                          ; $4ab0: $62
	ld a, [hl]                                       ; $4ab1: $7e
	nop                                              ; $4ab2: $00
	ld [hl], l                                       ; $4ab3: $75
	nop                                              ; $4ab4: $00
	nop                                              ; $4ab5: $00
	sbc a                                            ; $4ab6: $9f
	rla                                              ; $4ab7: $17
	rst SubAFromDE                                          ; $4ab8: $df
	add hl, hl                                       ; $4ab9: $29
	nop                                              ; $4aba: $00
	ld [hl], l                                       ; $4abb: $75
	nop                                              ; $4abc: $00
	nop                                              ; $4abd: $00
	rst $38                                          ; $4abe: $ff
	ld a, a                                          ; $4abf: $7f
	rst SubAFromDE                                          ; $4ac0: $df
	add hl, hl                                       ; $4ac1: $29
	ld e, e                                          ; $4ac2: $5b
	stop                                             ; $4ac3: $10 $00
	nop                                              ; $4ac5: $00
	rra                                              ; $4ac6: $1f
	ld a, h                                          ; $4ac7: $7c
	ld b, b                                          ; $4ac8: $40
	ld bc, $105b                                     ; $4ac9: $01 $5b $10
	nop                                              ; $4acc: $00
	nop                                              ; $4acd: $00
	rst $38                                          ; $4ace: $ff
	ld a, a                                          ; $4acf: $7f
	ld e, e                                          ; $4ad0: $5b
	stop                                             ; $4ad1: $10 $00
	ld [hl], l                                       ; $4ad3: $75
	nop                                              ; $4ad4: $00
	nop                                              ; $4ad5: $00
	daa                                              ; $4ad6: $27
	inc l                                            ; $4ad7: $2c
	ld hl, $0140                                     ; $4ad8: $21 $40 $01
	nop                                              ; $4adb: $00
	ld [hl], l                                       ; $4adc: $75
	nop                                              ; $4add: $00
	nop                                              ; $4ade: $00
	rst $38                                          ; $4adf: $ff
	ld a, a                                          ; $4ae0: $7f
	ld h, d                                          ; $4ae1: $62
	ld a, [hl]                                       ; $4ae2: $7e
	nop                                              ; $4ae3: $00
	ld [hl], l                                       ; $4ae4: $75
	nop                                              ; $4ae5: $00
	nop                                              ; $4ae6: $00
	sbc a                                            ; $4ae7: $9f
	rla                                              ; $4ae8: $17
	cp a                                             ; $4ae9: $bf
	add hl, sp                                       ; $4aea: $39
	nop                                              ; $4aeb: $00
	ld [hl], l                                       ; $4aec: $75
	nop                                              ; $4aed: $00
	nop                                              ; $4aee: $00
	rst $38                                          ; $4aef: $ff
	ld a, a                                          ; $4af0: $7f
	cp a                                             ; $4af1: $bf
	add hl, sp                                       ; $4af2: $39
	halt                                             ; $4af3: $76
	dec l                                            ; $4af4: $2d
	nop                                              ; $4af5: $00
	nop                                              ; $4af6: $00
	ld b, b                                          ; $4af7: $40
	ld bc, $7e62                                     ; $4af8: $01 $62 $7e
	nop                                              ; $4afb: $00
	ld [hl], l                                       ; $4afc: $75
	nop                                              ; $4afd: $00
	nop                                              ; $4afe: $00
	rst $38                                          ; $4aff: $ff
	ld a, a                                          ; $4b00: $7f
	cp a                                             ; $4b01: $bf
	add hl, sp                                       ; $4b02: $39
	nop                                              ; $4b03: $00
	ld [hl], l                                       ; $4b04: $75
	nop                                              ; $4b05: $00
	nop                                              ; $4b06: $00
	daa                                              ; $4b07: $27
	inc l                                            ; $4b08: $2c
	ld hl, $0140                                     ; $4b09: $21 $40 $01
	nop                                              ; $4b0c: $00
	ld [hl], l                                       ; $4b0d: $75
	nop                                              ; $4b0e: $00
	nop                                              ; $4b0f: $00
	rst $38                                          ; $4b10: $ff
	ld a, a                                          ; $4b11: $7f
	ld h, d                                          ; $4b12: $62
	ld a, [hl]                                       ; $4b13: $7e
	nop                                              ; $4b14: $00
	ld [hl], l                                       ; $4b15: $75
	nop                                              ; $4b16: $00
	nop                                              ; $4b17: $00
	sbc a                                            ; $4b18: $9f
	rla                                              ; $4b19: $17
	rst SubAFromDE                                          ; $4b1a: $df
	add hl, hl                                       ; $4b1b: $29
	nop                                              ; $4b1c: $00
	ld [hl], l                                       ; $4b1d: $75
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	rst $38                                          ; $4b20: $ff
	ld a, a                                          ; $4b21: $7f
	rst SubAFromDE                                          ; $4b22: $df
	add hl, hl                                       ; $4b23: $29
	add sp, $40                                      ; $4b24: $e8 $40
	nop                                              ; $4b26: $00
	nop                                              ; $4b27: $00
	rst $38                                          ; $4b28: $ff
	ld a, a                                          ; $4b29: $7f
	rst AddAOntoHL                                          ; $4b2a: $ef
	ld d, l                                          ; $4b2b: $55
	add sp, $40                                      ; $4b2c: $e8 $40
	nop                                              ; $4b2e: $00
	nop                                              ; $4b2f: $00
	rst $38                                          ; $4b30: $ff
	ld a, a                                          ; $4b31: $7f
	rst AddAOntoHL                                          ; $4b32: $ef
	ld d, l                                          ; $4b33: $55
	nop                                              ; $4b34: $00
	ld [hl], l                                       ; $4b35: $75
	nop                                              ; $4b36: $00
	nop                                              ; $4b37: $00
	daa                                              ; $4b38: $27
	inc l                                            ; $4b39: $2c
	ld hl, $0140                                     ; $4b3a: $21 $40 $01
	nop                                              ; $4b3d: $00
	ld [hl], l                                       ; $4b3e: $75
	nop                                              ; $4b3f: $00
	nop                                              ; $4b40: $00
	rst $38                                          ; $4b41: $ff
	ld a, a                                          ; $4b42: $7f
	ld h, d                                          ; $4b43: $62
	ld a, [hl]                                       ; $4b44: $7e
	nop                                              ; $4b45: $00
	ld [hl], l                                       ; $4b46: $75
	nop                                              ; $4b47: $00
	nop                                              ; $4b48: $00
	sbc a                                            ; $4b49: $9f
	rla                                              ; $4b4a: $17
	rst $38                                          ; $4b4b: $ff
	dec h                                            ; $4b4c: $25
	nop                                              ; $4b4d: $00
	ld [hl], l                                       ; $4b4e: $75
	nop                                              ; $4b4f: $00
	nop                                              ; $4b50: $00
	rst $38                                          ; $4b51: $ff
	ld a, a                                          ; $4b52: $7f
	rst $38                                          ; $4b53: $ff
	dec h                                            ; $4b54: $25
	rst FarCall                                          ; $4b55: $f7
	nop                                              ; $4b56: $00
	nop                                              ; $4b57: $00
	nop                                              ; $4b58: $00
	ldh a, [$63]                                     ; $4b59: $f0 $63
	ld b, b                                          ; $4b5b: $40
	ld bc, $00f7                                     ; $4b5c: $01 $f7 $00
	nop                                              ; $4b5f: $00
	nop                                              ; $4b60: $00
	rst $38                                          ; $4b61: $ff
	ld a, a                                          ; $4b62: $7f
	rst FarCall                                          ; $4b63: $f7
	nop                                              ; $4b64: $00
	nop                                              ; $4b65: $00
	ld [hl], l                                       ; $4b66: $75
	nop                                              ; $4b67: $00
	nop                                              ; $4b68: $00
	daa                                              ; $4b69: $27
	inc l                                            ; $4b6a: $2c
	ld hl, $0140                                     ; $4b6b: $21 $40 $01
	nop                                              ; $4b6e: $00
	ld [hl], l                                       ; $4b6f: $75
	nop                                              ; $4b70: $00
	nop                                              ; $4b71: $00
	rst $38                                          ; $4b72: $ff
	ld a, a                                          ; $4b73: $7f
	ld h, d                                          ; $4b74: $62
	ld a, [hl]                                       ; $4b75: $7e
	nop                                              ; $4b76: $00
	ld [hl], l                                       ; $4b77: $75
	nop                                              ; $4b78: $00
	nop                                              ; $4b79: $00
	rst $38                                          ; $4b7a: $ff
	ld a, a                                          ; $4b7b: $7f
	rst $38                                          ; $4b7c: $ff
	dec h                                            ; $4b7d: $25
	push de                                          ; $4b7e: $d5
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	nop                                              ; $4b81: $00
	rst $38                                          ; $4b82: $ff
	ld a, a                                          ; $4b83: $7f
	rst $38                                          ; $4b84: $ff
	dec h                                            ; $4b85: $25
	nop                                              ; $4b86: $00
	ld [hl], l                                       ; $4b87: $75
	nop                                              ; $4b88: $00
	nop                                              ; $4b89: $00
	sbc a                                            ; $4b8a: $9f
	rla                                              ; $4b8b: $17
	ld h, d                                          ; $4b8c: $62
	ld a, [hl]                                       ; $4b8d: $7e
	nop                                              ; $4b8e: $00
	ld [hl], l                                       ; $4b8f: $75
	nop                                              ; $4b90: $00
	nop                                              ; $4b91: $00
	ld b, b                                          ; $4b92: $40
	ld [bc], a                                       ; $4b93: $02
	ld b, d                                          ; $4b94: $42
	ld [bc], a                                       ; $4b95: $02
	ld b, h                                          ; $4b96: $44
	ld [bc], a                                       ; $4b97: $02
	ld b, [hl]                                       ; $4b98: $46
	ld [bc], a                                       ; $4b99: $02
	scf                                              ; $4b9a: $37
	ei                                               ; $4b9b: $fb
	inc sp                                           ; $4b9c: $33
	ld d, b                                          ; $4b9d: $50
	inc de                                           ; $4b9e: $13

jr_010_4b9f:
	ld l, b                                          ; $4b9f: $68
	ld [de], a                                       ; $4ba0: $12
	add d                                            ; $4ba1: $82
	jr jr_010_4b9f                                   ; $4ba2: $18 $fb

	inc sp                                           ; $4ba4: $33
	ld d, b                                          ; $4ba5: $50
	inc de                                           ; $4ba6: $13
	ld l, b                                          ; $4ba7: $68
	ld [de], a                                       ; $4ba8: $12
	call nz, $fb24                                   ; $4ba9: $c4 $24 $fb
	inc sp                                           ; $4bac: $33
	dec l                                            ; $4bad: $2d
	rrca                                             ; $4bae: $0f
	ld h, h                                          ; $4baf: $64
	ld hl, $1882                                     ; $4bb0: $21 $82 $18
	cp b                                             ; $4bb3: $b8
	inc hl                                           ; $4bb4: $23
	ld d, b                                          ; $4bb5: $50
	inc de                                           ; $4bb6: $13
	ld l, b                                          ; $4bb7: $68
	ld [de], a                                       ; $4bb8: $12
	add d                                            ; $4bb9: $82
	jr jr_010_4c0c                                   ; $4bba: $18 $50

	inc de                                           ; $4bbc: $13
	jp z, Jump_010_640e                              ; $4bbd: $ca $0e $64

	ld hl, $1882                                     ; $4bc0: $21 $82 $18
	rlca                                             ; $4bc3: $07
	rst $38                                          ; $4bc4: $ff
	ld a, a                                          ; $4bc5: $7f
	cp a                                             ; $4bc6: $bf
	add hl, sp                                       ; $4bc7: $39
	ld a, [de]                                       ; $4bc8: $1a
	inc d                                            ; $4bc9: $14
	nop                                              ; $4bca: $00
	nop                                              ; $4bcb: $00
	rst $38                                          ; $4bcc: $ff
	ld a, a                                          ; $4bcd: $7f
	ld b, b                                          ; $4bce: $40
	ld h, a                                          ; $4bcf: $67
	add b                                            ; $4bd0: $80
	ld d, c                                          ; $4bd1: $51
	nop                                              ; $4bd2: $00
	nop                                              ; $4bd3: $00
	rst $38                                          ; $4bd4: $ff
	ld a, a                                          ; $4bd5: $7f
	cp a                                             ; $4bd6: $bf
	add hl, sp                                       ; $4bd7: $39
	add b                                            ; $4bd8: $80
	ld d, c                                          ; $4bd9: $51
	nop                                              ; $4bda: $00
	nop                                              ; $4bdb: $00
	rst $38                                          ; $4bdc: $ff
	ld a, a                                          ; $4bdd: $7f
	ld b, b                                          ; $4bde: $40
	ld h, a                                          ; $4bdf: $67
	ld a, [de]                                       ; $4be0: $1a
	inc d                                            ; $4be1: $14
	nop                                              ; $4be2: $00
	nop                                              ; $4be3: $00
	rst $38                                          ; $4be4: $ff
	ld a, a                                          ; $4be5: $7f
	sbc a                                            ; $4be6: $9f
	ld [hl-], a                                      ; $4be7: $32
	ld d, h                                          ; $4be8: $54
	ld bc, $0000                                     ; $4be9: $01 $00 $00
	rst $38                                          ; $4bec: $ff
	ld a, a                                          ; $4bed: $7f
	ld b, b                                          ; $4bee: $40
	ld h, a                                          ; $4bef: $67
	ld d, h                                          ; $4bf0: $54
	ld bc, $0000                                     ; $4bf1: $01 $00 $00
	rst $38                                          ; $4bf4: $ff
	ld a, a                                          ; $4bf5: $7f
	sbc a                                            ; $4bf6: $9f
	ld [hl-], a                                      ; $4bf7: $32
	add b                                            ; $4bf8: $80
	ld d, c                                          ; $4bf9: $51
	nop                                              ; $4bfa: $00
	nop                                              ; $4bfb: $00
	rst $38                                          ; $4bfc: $ff
	ld a, a                                          ; $4bfd: $7f
	sbc a                                            ; $4bfe: $9f
	ld [hl-], a                                      ; $4bff: $32
	ld a, [de]                                       ; $4c00: $1a
	inc d                                            ; $4c01: $14
	nop                                              ; $4c02: $00
	nop                                              ; $4c03: $00
	rlca                                             ; $4c04: $07
	rst $38                                          ; $4c05: $ff
	ld a, a                                          ; $4c06: $7f
	dec b                                            ; $4c07: $05
	ld d, e                                          ; $4c08: $53
	add b                                            ; $4c09: $80
	ld b, c                                          ; $4c0a: $41
	nop                                              ; $4c0b: $00

jr_010_4c0c:
	nop                                              ; $4c0c: $00
	rst $38                                          ; $4c0d: $ff
	ld a, a                                          ; $4c0e: $7f
	cp a                                             ; $4c0f: $bf
	add hl, sp                                       ; $4c10: $39
	add b                                            ; $4c11: $80
	ld b, c                                          ; $4c12: $41
	nop                                              ; $4c13: $00
	nop                                              ; $4c14: $00
	rst $38                                          ; $4c15: $ff
	ld a, a                                          ; $4c16: $7f
	ld e, b                                          ; $4c17: $58
	ld a, c                                          ; $4c18: $79
	add b                                            ; $4c19: $80
	ld b, c                                          ; $4c1a: $41
	nop                                              ; $4c1b: $00
	nop                                              ; $4c1c: $00
	rst $38                                          ; $4c1d: $ff
	ld a, a                                          ; $4c1e: $7f
	sbc a                                            ; $4c1f: $9f
	ld h, c                                          ; $4c20: $61
	sbc h                                            ; $4c21: $9c
	jr nc, jr_010_4c24                               ; $4c22: $30 $00

jr_010_4c24:
	nop                                              ; $4c24: $00
	rst $38                                          ; $4c25: $ff
	ld a, a                                          ; $4c26: $7f
	rst SubAFromDE                                          ; $4c27: $df
	ld d, $c0                                        ; $4c28: $16 $c0
	add hl, sp                                       ; $4c2a: $39
	nop                                              ; $4c2b: $00
	nop                                              ; $4c2c: $00
	rst $38                                          ; $4c2d: $ff
	ld a, a                                          ; $4c2e: $7f
	rst SubAFromDE                                          ; $4c2f: $df
	ld d, $f9                                        ; $4c30: $16 $f9
	nop                                              ; $4c32: $00
	nop                                              ; $4c33: $00
	nop                                              ; $4c34: $00
	rst $38                                          ; $4c35: $ff
	ld a, a                                          ; $4c36: $7f
	rst SubAFromDE                                          ; $4c37: $df
	ld d, $85                                        ; $4c38: $16 $85
	ld [hl], l                                       ; $4c3a: $75
	nop                                              ; $4c3b: $00
	nop                                              ; $4c3c: $00
	rst $38                                          ; $4c3d: $ff
	ld a, a                                          ; $4c3e: $7f
	ld e, b                                          ; $4c3f: $58
	ld a, c                                          ; $4c40: $79
	ld sp, hl                                        ; $4c41: $f9
	nop                                              ; $4c42: $00
	nop                                              ; $4c43: $00
	nop                                              ; $4c44: $00
	rlca                                             ; $4c45: $07
	rst $38                                          ; $4c46: $ff
	ld a, a                                          ; $4c47: $7f
	cp a                                             ; $4c48: $bf
	ld [bc], a                                       ; $4c49: $02
	sub c                                            ; $4c4a: $91
	ld bc, $0000                                     ; $4c4b: $01 $00 $00
	rst $38                                          ; $4c4e: $ff
	ld a, a                                          ; $4c4f: $7f
	sbc a                                            ; $4c50: $9f
	ld b, l                                          ; $4c51: $45
	sub c                                            ; $4c52: $91
	ld bc, $0000                                     ; $4c53: $01 $00 $00
	rst $38                                          ; $4c56: $ff
	ld a, a                                          ; $4c57: $7f
	dec l                                            ; $4c58: $2d
	ld a, [hl]                                       ; $4c59: $7e
	dec c                                            ; $4c5a: $0d
	ld d, h                                          ; $4c5b: $54
	nop                                              ; $4c5c: $00
	nop                                              ; $4c5d: $00
	rst $38                                          ; $4c5e: $ff
	ld a, a                                          ; $4c5f: $7f
	ld [hl], h                                       ; $4c60: $74
	ld a, l                                          ; $4c61: $7d
	dec c                                            ; $4c62: $0d
	ld d, h                                          ; $4c63: $54
	nop                                              ; $4c64: $00
	nop                                              ; $4c65: $00
	rst $38                                          ; $4c66: $ff
	ld a, a                                          ; $4c67: $7f
	cp a                                             ; $4c68: $bf
	ld [bc], a                                       ; $4c69: $02
	dec c                                            ; $4c6a: $0d
	ld d, h                                          ; $4c6b: $54
	nop                                              ; $4c6c: $00
	nop                                              ; $4c6d: $00
	rst $38                                          ; $4c6e: $ff
	ld a, a                                          ; $4c6f: $7f
	ld a, h                                          ; $4c70: $7c
	ld h, $39                                        ; $4c71: $26 $39
	ld bc, $0000                                     ; $4c73: $01 $00 $00
	rst $38                                          ; $4c76: $ff
	ld a, a                                          ; $4c77: $7f
	dec l                                            ; $4c78: $2d
	ld a, [hl]                                       ; $4c79: $7e
	add hl, sp                                       ; $4c7a: $39
	ld bc, $0000                                     ; $4c7b: $01 $00 $00
	rst $38                                          ; $4c7e: $ff
	ld a, a                                          ; $4c7f: $7f
	ld a, h                                          ; $4c80: $7c
	ld h, $0d                                        ; $4c81: $26 $0d
	ld d, h                                          ; $4c83: $54
	nop                                              ; $4c84: $00
	nop                                              ; $4c85: $00
	rlca                                             ; $4c86: $07
	rst $38                                          ; $4c87: $ff
	ld a, a                                          ; $4c88: $7f
	push de                                          ; $4c89: $d5
	ld a, l                                          ; $4c8a: $7d
	ld c, $74                                        ; $4c8b: $0e $74
	nop                                              ; $4c8d: $00
	nop                                              ; $4c8e: $00
	rst $38                                          ; $4c8f: $ff
	ld a, a                                          ; $4c90: $7f
	sbc a                                            ; $4c91: $9f
	ld b, l                                          ; $4c92: $45
	ld c, $74                                        ; $4c93: $0e $74
	nop                                              ; $4c95: $00
	nop                                              ; $4c96: $00
	rst $38                                          ; $4c97: $ff
	ld a, a                                          ; $4c98: $7f
	sbc a                                            ; $4c99: $9f
	ld [bc], a                                       ; $4c9a: $02
	sbc l                                            ; $4c9b: $9d
	ld bc, $0000                                     ; $4c9c: $01 $00 $00
	add b                                            ; $4c9f: $80
	ld [bc], a                                       ; $4ca0: $02
	add d                                            ; $4ca1: $82
	ld [bc], a                                       ; $4ca2: $02
	add h                                            ; $4ca3: $84
	ld [bc], a                                       ; $4ca4: $02
	add [hl]                                         ; $4ca5: $86
	ld [bc], a                                       ; $4ca6: $02
	ld b, b                                          ; $4ca7: $40
	ld [bc], a                                       ; $4ca8: $02
	ld b, d                                          ; $4ca9: $42
	ld [bc], a                                       ; $4caa: $02
	ld b, h                                          ; $4cab: $44
	ld [bc], a                                       ; $4cac: $02
	ld b, [hl]                                       ; $4cad: $46
	ld [bc], a                                       ; $4cae: $02
	rst $38                                          ; $4caf: $ff
	ld a, a                                          ; $4cb0: $7f
	push de                                          ; $4cb1: $d5
	ld a, l                                          ; $4cb2: $7d
	rst SubAFromDE                                          ; $4cb3: $df
	ld b, b                                          ; $4cb4: $40
	nop                                              ; $4cb5: $00
	nop                                              ; $4cb6: $00
	rst $38                                          ; $4cb7: $ff
	ld a, a                                          ; $4cb8: $7f
	push de                                          ; $4cb9: $d5
	ld a, l                                          ; $4cba: $7d
	sbc l                                            ; $4cbb: $9d
	ld bc, $0000                                     ; $4cbc: $01 $00 $00
	rst $38                                          ; $4cbf: $ff
	ld a, a                                          ; $4cc0: $7f
	sbc a                                            ; $4cc1: $9f
	ld [bc], a                                       ; $4cc2: $02
	ld c, $74                                        ; $4cc3: $0e $74
	nop                                              ; $4cc5: $00
	nop                                              ; $4cc6: $00
	rlca                                             ; $4cc7: $07
	rst $38                                          ; $4cc8: $ff
	ld a, a                                          ; $4cc9: $7f
	dec h                                            ; $4cca: $25
	ld b, a                                          ; $4ccb: $47
	add b                                            ; $4ccc: $80
	ld sp, $0000                                     ; $4ccd: $31 $00 $00
	rst $38                                          ; $4cd0: $ff
	ld a, a                                          ; $4cd1: $7f
	rst SubAFromDE                                          ; $4cd2: $df
	add hl, hl                                       ; $4cd3: $29
	add b                                            ; $4cd4: $80
	ld sp, $0000                                     ; $4cd5: $31 $00 $00
	rst $38                                          ; $4cd8: $ff
	ld a, a                                          ; $4cd9: $7f
	cp a                                             ; $4cda: $bf
	ld [bc], a                                       ; $4cdb: $02
	add b                                            ; $4cdc: $80
	ld sp, $0000                                     ; $4cdd: $31 $00 $00
	rst $38                                          ; $4ce0: $ff
	ld a, a                                          ; $4ce1: $7f
	inc l                                            ; $4ce2: $2c
	dec hl                                           ; $4ce3: $2b
	add b                                            ; $4ce4: $80
	ld sp, $0000                                     ; $4ce5: $31 $00 $00
	rst $38                                          ; $4ce8: $ff
	ld a, a                                          ; $4ce9: $7f
	ld e, a                                          ; $4cea: $5f
	ld h, l                                          ; $4ceb: $65
	jr c, jr_010_4d2a                                ; $4cec: $38 $3c

	nop                                              ; $4cee: $00
	nop                                              ; $4cef: $00
	rst $38                                          ; $4cf0: $ff
	ld a, a                                          ; $4cf1: $7f
	ld e, a                                          ; $4cf2: $5f
	ld h, l                                          ; $4cf3: $65
	add b                                            ; $4cf4: $80
	ld sp, $0000                                     ; $4cf5: $31 $00 $00
	rst $38                                          ; $4cf8: $ff
	ld a, a                                          ; $4cf9: $7f
	inc l                                            ; $4cfa: $2c
	dec hl                                           ; $4cfb: $2b
	db $10                                           ; $4cfc: $10
	dec e                                            ; $4cfd: $1d
	nop                                              ; $4cfe: $00
	nop                                              ; $4cff: $00
	add b                                            ; $4d00: $80
	ld [bc], a                                       ; $4d01: $02
	add d                                            ; $4d02: $82
	ld [bc], a                                       ; $4d03: $02
	add h                                            ; $4d04: $84
	ld [bc], a                                       ; $4d05: $02
	add [hl]                                         ; $4d06: $86
	ld [bc], a                                       ; $4d07: $02
	rlca                                             ; $4d08: $07
	rst $38                                          ; $4d09: $ff
	ld a, a                                          ; $4d0a: $7f
	ld c, d                                          ; $4d0b: $4a
	ld a, a                                          ; $4d0c: $7f
	ld a, [de]                                       ; $4d0d: $1a
	inc e                                            ; $4d0e: $1c
	nop                                              ; $4d0f: $00
	nop                                              ; $4d10: $00
	rst $38                                          ; $4d11: $ff
	ld a, a                                          ; $4d12: $7f
	di                                               ; $4d13: $f3
	dec hl                                           ; $4d14: $2b
	ld b, b                                          ; $4d15: $40
	ld a, [hl]                                       ; $4d16: $7e
	nop                                              ; $4d17: $00
	nop                                              ; $4d18: $00
	rst $38                                          ; $4d19: $ff
	ld a, e                                          ; $4d1a: $7b
	di                                               ; $4d1b: $f3
	dec hl                                           ; $4d1c: $2b
	sub $1c                                          ; $4d1d: $d6 $1c
	nop                                              ; $4d1f: $00
	nop                                              ; $4d20: $00
	rst $38                                          ; $4d21: $ff
	ld a, a                                          ; $4d22: $7f
	di                                               ; $4d23: $f3
	dec hl                                           ; $4d24: $2b
	add h                                            ; $4d25: $84
	ld a, $00                                        ; $4d26: $3e $00
	nop                                              ; $4d28: $00
	rst $38                                          ; $4d29: $ff

jr_010_4d2a:
	ld a, a                                          ; $4d2a: $7f
	cp a                                             ; $4d2b: $bf
	dec [hl]                                         ; $4d2c: $35
	add hl, de                                       ; $4d2d: $19
	inc h                                            ; $4d2e: $24
	nop                                              ; $4d2f: $00
	nop                                              ; $4d30: $00
	rst $38                                          ; $4d31: $ff
	ld a, a                                          ; $4d32: $7f
	cp a                                             ; $4d33: $bf
	dec [hl]                                         ; $4d34: $35
	sub $1c                                          ; $4d35: $d6 $1c
	nop                                              ; $4d37: $00
	nop                                              ; $4d38: $00
	rst $38                                          ; $4d39: $ff
	ld a, a                                          ; $4d3a: $7f
	ld c, d                                          ; $4d3b: $4a
	ld a, a                                          ; $4d3c: $7f
	ld b, b                                          ; $4d3d: $40
	ld a, [hl]                                       ; $4d3e: $7e
	nop                                              ; $4d3f: $00
	nop                                              ; $4d40: $00
	rst $38                                          ; $4d41: $ff
	ld a, a                                          ; $4d42: $7f
	cp a                                             ; $4d43: $bf
	dec [hl]                                         ; $4d44: $35
	ld b, b                                          ; $4d45: $40
	ld a, [hl]                                       ; $4d46: $7e
	nop                                              ; $4d47: $00
	nop                                              ; $4d48: $00
	rlca                                             ; $4d49: $07
	rst $38                                          ; $4d4a: $ff
	ld a, a                                          ; $4d4b: $7f
	sub h                                            ; $4d4c: $94
	ld b, [hl]                                       ; $4d4d: $46
	adc h                                            ; $4d4e: $8c
	dec h                                            ; $4d4f: $25
	add a                                            ; $4d50: $87
	inc b                                            ; $4d51: $04
	rst $38                                          ; $4d52: $ff
	ld a, a                                          ; $4d53: $7f
	sbc h                                            ; $4d54: $9c
	ld [bc], a                                       ; $4d55: $02
	adc h                                            ; $4d56: $8c
	dec h                                            ; $4d57: $25
	nop                                              ; $4d58: $00
	nop                                              ; $4d59: $00
	rst $38                                          ; $4d5a: $ff
	ld a, e                                          ; $4d5b: $7b
	ld a, a                                          ; $4d5c: $7f
	ld c, c                                          ; $4d5d: $49
	nop                                              ; $4d5e: $00
	ld [hl], c                                       ; $4d5f: $71
	nop                                              ; $4d60: $00
	nop                                              ; $4d61: $00
	rst $38                                          ; $4d62: $ff
	ld a, a                                          ; $4d63: $7f
	ld e, a                                          ; $4d64: $5f
	ld d, c                                          ; $4d65: $51
	cpl                                              ; $4d66: $2f
	dec a                                            ; $4d67: $3d
	add a                                            ; $4d68: $87
	nop                                              ; $4d69: $00
	rst $38                                          ; $4d6a: $ff
	ld a, a                                          ; $4d6b: $7f
	ld h, b                                          ; $4d6c: $60
	ld a, [hl]                                       ; $4d6d: $7e
	nop                                              ; $4d6e: $00
	ld [hl], c                                       ; $4d6f: $71
	nop                                              ; $4d70: $00
	nop                                              ; $4d71: $00
	rst $38                                          ; $4d72: $ff
	ld a, a                                          ; $4d73: $7f
	cp a                                             ; $4d74: $bf
	add hl, sp                                       ; $4d75: $39
	ldh a, [rOBP0]                                   ; $4d76: $f0 $48
	nop                                              ; $4d78: $00
	nop                                              ; $4d79: $00
	rst $38                                          ; $4d7a: $ff
	ld a, a                                          ; $4d7b: $7f
	cp a                                             ; $4d7c: $bf
	add hl, sp                                       ; $4d7d: $39
	nop                                              ; $4d7e: $00
	ld [hl], c                                       ; $4d7f: $71
	nop                                              ; $4d80: $00
	nop                                              ; $4d81: $00
	rst $38                                          ; $4d82: $ff
	ld a, a                                          ; $4d83: $7f
	ld h, l                                          ; $4d84: $65
	ld a, [hl]                                       ; $4d85: $7e
	adc h                                            ; $4d86: $8c
	dec h                                            ; $4d87: $25
	nop                                              ; $4d88: $00
	nop                                              ; $4d89: $00
	rlca                                             ; $4d8a: $07
	rst $38                                          ; $4d8b: $ff
	ld a, a                                          ; $4d8c: $7f
	ld c, a                                          ; $4d8d: $4f
	ccf                                              ; $4d8e: $3f
	inc l                                            ; $4d8f: $2c
	dec d                                            ; $4d90: $15
	and e                                            ; $4d91: $a3
	nop                                              ; $4d92: $00
	rst $38                                          ; $4d93: $ff
	ld a, a                                          ; $4d94: $7f
	rst SubAFromDE                                          ; $4d95: $df
	ld hl, $1d6e                                     ; $4d96: $21 $6e $1d
	and e                                            ; $4d99: $a3
	nop                                              ; $4d9a: $00
	rst $38                                          ; $4d9b: $ff
	ld a, e                                          ; $4d9c: $7b
	xor a                                            ; $4d9d: $af
	ld d, l                                          ; $4d9e: $55
	inc d                                            ; $4d9f: $14
	inc h                                            ; $4da0: $24
	nop                                              ; $4da1: $00
	nop                                              ; $4da2: $00
	rst $38                                          ; $4da3: $ff
	ld a, a                                          ; $4da4: $7f
	ccf                                              ; $4da5: $3f
	inc bc                                           ; $4da6: $03
	scf                                              ; $4da7: $37
	ld bc, $0000                                     ; $4da8: $01 $00 $00
	rst $38                                          ; $4dab: $ff
	ld a, a                                          ; $4dac: $7f
	ccf                                              ; $4dad: $3f
	inc bc                                           ; $4dae: $03
	inc d                                            ; $4daf: $14
	inc h                                            ; $4db0: $24
	nop                                              ; $4db1: $00
	nop                                              ; $4db2: $00
	rst $38                                          ; $4db3: $ff
	ld a, a                                          ; $4db4: $7f
	rst $38                                          ; $4db5: $ff
	ld d, h                                          ; $4db6: $54
	inc d                                            ; $4db7: $14
	inc h                                            ; $4db8: $24
	nop                                              ; $4db9: $00
	nop                                              ; $4dba: $00
	rst $38                                          ; $4dbb: $ff
	ld a, a                                          ; $4dbc: $7f
	xor a                                            ; $4dbd: $af
	ld d, l                                          ; $4dbe: $55
	rst JumpTable                                          ; $4dbf: $c7
	inc [hl]                                         ; $4dc0: $34
	nop                                              ; $4dc1: $00
	nop                                              ; $4dc2: $00
	rst $38                                          ; $4dc3: $ff
	ld a, a                                          ; $4dc4: $7f
	rst SubAFromDE                                          ; $4dc5: $df
	ld hl, $34c7                                     ; $4dc6: $21 $c7 $34
	nop                                              ; $4dc9: $00
	nop                                              ; $4dca: $00
	rlca                                             ; $4dcb: $07
	rst $38                                          ; $4dcc: $ff
	ld a, a                                          ; $4dcd: $7f
	ld e, d                                          ; $4dce: $5a
	ld [bc], a                                       ; $4dcf: $02
	adc e                                            ; $4dd0: $8b
	ld bc, $0444                                     ; $4dd1: $01 $44 $04
	rst $38                                          ; $4dd4: $ff
	ld a, a                                          ; $4dd5: $7f
	sbc a                                            ; $4dd6: $9f
	dec [hl]                                         ; $4dd7: $35
	xor e                                            ; $4dd8: $ab
	ld bc, $0444                                     ; $4dd9: $01 $44 $04
	rst $38                                          ; $4ddc: $ff
	ld a, a                                          ; $4ddd: $7f
	sbc a                                            ; $4dde: $9f
	dec [hl]                                         ; $4ddf: $35
	dec e                                            ; $4de0: $1d
	jr nc, jr_010_4de3                               ; $4de1: $30 $00

jr_010_4de3:
	nop                                              ; $4de3: $00
	rst $38                                          ; $4de4: $ff
	ld a, a                                          ; $4de5: $7f
	rra                                              ; $4de6: $1f
	ld a, [hl+]                                      ; $4de7: $2a
	ld h, [hl]                                       ; $4de8: $66
	ld l, c                                          ; $4de9: $69
	nop                                              ; $4dea: $00
	nop                                              ; $4deb: $00
	rst $38                                          ; $4dec: $ff
	ld a, a                                          ; $4ded: $7f
	rra                                              ; $4dee: $1f
	ld [bc], a                                       ; $4def: $02
	or $14                                           ; $4df0: $f6 $14
	nop                                              ; $4df2: $00
	nop                                              ; $4df3: $00
	rst $38                                          ; $4df4: $ff
	ld a, a                                          ; $4df5: $7f
	rra                                              ; $4df6: $1f
	ld a, [hl+]                                      ; $4df7: $2a
	sub $18                                          ; $4df8: $d6 $18
	nop                                              ; $4dfa: $00
	nop                                              ; $4dfb: $00
	sbc a                                            ; $4dfc: $9f
	ld d, e                                          ; $4dfd: $53
	adc a                                            ; $4dfe: $8f
	ld [hl], d                                       ; $4dff: $72
	add a                                            ; $4e00: $87
	ld l, c                                          ; $4e01: $69
	nop                                              ; $4e02: $00
	nop                                              ; $4e03: $00
	rst $38                                          ; $4e04: $ff
	ld a, a                                          ; $4e05: $7f
	nop                                              ; $4e06: $00
	ccf                                              ; $4e07: $3f
	or [hl]                                          ; $4e08: $b6
	inc d                                            ; $4e09: $14
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	rlca                                             ; $4e0c: $07
	rst $38                                          ; $4e0d: $ff
	ld a, a                                          ; $4e0e: $7f
	ldh a, [rWY]                                     ; $4e0f: $f0 $4a
	rlc l                                            ; $4e11: $cb $05
	inc hl                                           ; $4e13: $23
	ld de, $7fff                                     ; $4e14: $11 $ff $7f
	add a                                            ; $4e17: $87
	inc hl                                           ; $4e18: $23
	push af                                          ; $4e19: $f5
	ld [rRAMG], sp                                   ; $4e1a: $08 $00 $00
	rst $38                                          ; $4e1d: $ff
	ld a, a                                          ; $4e1e: $7f
	db $ec                                           ; $4e1f: $ec
	ld a, d                                          ; $4e20: $7a
	push af                                          ; $4e21: $f5
	ld [rRAMG], sp                                   ; $4e22: $08 $00 $00
	rst $38                                          ; $4e25: $ff
	ld a, a                                          ; $4e26: $7f
	add a                                            ; $4e27: $87
	inc hl                                           ; $4e28: $23
	jr nz, jr_010_4e51                               ; $4e29: $20 $26

	nop                                              ; $4e2b: $00
	nop                                              ; $4e2c: $00
	rst $38                                          ; $4e2d: $ff
	ld a, a                                          ; $4e2e: $7f
	db $ec                                           ; $4e2f: $ec
	ld a, d                                          ; $4e30: $7a
	and $69                                          ; $4e31: $e6 $69
	nop                                              ; $4e33: $00
	nop                                              ; $4e34: $00
	rst $38                                          ; $4e35: $ff
	ld a, a                                          ; $4e36: $7f
	db $db                                           ; $4e37: $db
	dec b                                            ; $4e38: $05
	push af                                          ; $4e39: $f5
	ld [rRAMG], sp                                   ; $4e3a: $08 $00 $00
	rst $38                                          ; $4e3d: $ff
	ld a, a                                          ; $4e3e: $7f
	rst $38                                          ; $4e3f: $ff
	ld hl, $08f5                                     ; $4e40: $21 $f5 $08
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	rst $38                                          ; $4e45: $ff
	ld a, a                                          ; $4e46: $7f
	rst $38                                          ; $4e47: $ff
	ld hl, $2620                                     ; $4e48: $21 $20 $26
	nop                                              ; $4e4b: $00
	nop                                              ; $4e4c: $00
	rlca                                             ; $4e4d: $07
	rst $38                                          ; $4e4e: $ff
	ld a, a                                          ; $4e4f: $7f
	rra                                              ; $4e50: $1f

jr_010_4e51:
	ld a, $5c                                        ; $4e51: $3e $5c
	inc d                                            ; $4e53: $14
	nop                                              ; $4e54: $00
	nop                                              ; $4e55: $00
	rst $38                                          ; $4e56: $ff
	ld a, a                                          ; $4e57: $7f
	rra                                              ; $4e58: $1f
	ld a, $f1                                        ; $4e59: $3e $f1
	stop                                             ; $4e5b: $10 $00
	nop                                              ; $4e5d: $00
	rst $38                                          ; $4e5e: $ff
	ld a, a                                          ; $4e5f: $7f
	nop                                              ; $4e60: $00
	ld a, [hl]                                       ; $4e61: $7e
	pop af                                           ; $4e62: $f1
	stop                                             ; $4e63: $10 $00
	nop                                              ; $4e65: $00
	rst $38                                          ; $4e66: $ff
	ld a, a                                          ; $4e67: $7f
	nop                                              ; $4e68: $00
	ld a, [hl]                                       ; $4e69: $7e
	jr nz, jr_010_4eb5                               ; $4e6a: $20 $49

	nop                                              ; $4e6c: $00
	nop                                              ; $4e6d: $00
	rst $38                                          ; $4e6e: $ff
	ld a, a                                          ; $4e6f: $7f
	nop                                              ; $4e70: $00
	ld a, [hl]                                       ; $4e71: $7e
	ld e, h                                          ; $4e72: $5c
	inc d                                            ; $4e73: $14
	nop                                              ; $4e74: $00
	nop                                              ; $4e75: $00
	rst $38                                          ; $4e76: $ff
	ld a, a                                          ; $4e77: $7f
	rra                                              ; $4e78: $1f
	ld a, $20                                        ; $4e79: $3e $20
	ld c, c                                          ; $4e7b: $49
	nop                                              ; $4e7c: $00
	nop                                              ; $4e7d: $00
	rst $38                                          ; $4e7e: $ff
	ld a, a                                          ; $4e7f: $7f
	rst $38                                          ; $4e80: $ff
	ld [bc], a                                       ; $4e81: $02
	jr nz, jr_010_4ecd                               ; $4e82: $20 $49

	nop                                              ; $4e84: $00
	nop                                              ; $4e85: $00
	rst $38                                          ; $4e86: $ff
	ld a, a                                          ; $4e87: $7f
	ld e, h                                          ; $4e88: $5c
	inc d                                            ; $4e89: $14
	pop af                                           ; $4e8a: $f1
	stop                                             ; $4e8b: $10 $00
	nop                                              ; $4e8d: $00
	rlca                                             ; $4e8e: $07
	ld e, a                                          ; $4e8f: $5f
	ld d, a                                          ; $4e90: $57
	ld a, h                                          ; $4e91: $7c
	ld a, [hl-]                                      ; $4e92: $3a
	ld d, $05                                        ; $4e93: $16 $05
	ld [$5f04], sp                                   ; $4e95: $08 $04 $5f
	ld d, a                                          ; $4e98: $57
	ld a, h                                          ; $4e99: $7c
	ld a, [hl-]                                      ; $4e9a: $3a
	reti                                             ; $4e9b: $d9


	dec e                                            ; $4e9c: $1d
	ld [$e004], sp                                   ; $4e9d: $08 $04 $e0
	inc bc                                           ; $4ea0: $03
	rra                                              ; $4ea1: $1f
	ld a, h                                          ; $4ea2: $7c
	rra                                              ; $4ea3: $1f
	ld a, h                                          ; $4ea4: $7c
	rra                                              ; $4ea5: $1f
	ld a, h                                          ; $4ea6: $7c
	ldh [$03], a                                     ; $4ea7: $e0 $03
	rra                                              ; $4ea9: $1f
	ld a, h                                          ; $4eaa: $7c
	rra                                              ; $4eab: $1f
	ld a, h                                          ; $4eac: $7c
	rra                                              ; $4ead: $1f
	ld a, h                                          ; $4eae: $7c
	ldh [$03], a                                     ; $4eaf: $e0 $03
	rra                                              ; $4eb1: $1f
	ld a, h                                          ; $4eb2: $7c
	rra                                              ; $4eb3: $1f
	ld a, h                                          ; $4eb4: $7c

jr_010_4eb5:
	rra                                              ; $4eb5: $1f
	ld a, h                                          ; $4eb6: $7c
	ldh [$03], a                                     ; $4eb7: $e0 $03
	rra                                              ; $4eb9: $1f
	ld a, h                                          ; $4eba: $7c
	rra                                              ; $4ebb: $1f
	ld a, h                                          ; $4ebc: $7c
	rra                                              ; $4ebd: $1f
	ld a, h                                          ; $4ebe: $7c
	ldh [$03], a                                     ; $4ebf: $e0 $03
	rra                                              ; $4ec1: $1f
	ld a, h                                          ; $4ec2: $7c
	rra                                              ; $4ec3: $1f
	ld a, h                                          ; $4ec4: $7c
	rra                                              ; $4ec5: $1f
	ld a, h                                          ; $4ec6: $7c
	ldh [$03], a                                     ; $4ec7: $e0 $03
	rra                                              ; $4ec9: $1f
	ld a, h                                          ; $4eca: $7c
	rra                                              ; $4ecb: $1f
	ld a, h                                          ; $4ecc: $7c

jr_010_4ecd:
	rra                                              ; $4ecd: $1f
	ld a, h                                          ; $4ece: $7c
	rlca                                             ; $4ecf: $07
	rst $38                                          ; $4ed0: $ff
	ld a, a                                          ; $4ed1: $7f
	rra                                              ; $4ed2: $1f
	ld a, $5c                                        ; $4ed3: $3e $5c
	inc d                                            ; $4ed5: $14
	nop                                              ; $4ed6: $00
	nop                                              ; $4ed7: $00
	rst $38                                          ; $4ed8: $ff
	ld a, a                                          ; $4ed9: $7f
	nop                                              ; $4eda: $00
	ld a, [hl]                                       ; $4edb: $7e
	ld e, h                                          ; $4edc: $5c
	inc d                                            ; $4edd: $14
	nop                                              ; $4ede: $00
	nop                                              ; $4edf: $00
	rst $38                                          ; $4ee0: $ff
	ld a, a                                          ; $4ee1: $7f
	nop                                              ; $4ee2: $00
	ld a, [hl]                                       ; $4ee3: $7e
	jr nz, jr_010_4f2f                               ; $4ee4: $20 $49

	nop                                              ; $4ee6: $00
	nop                                              ; $4ee7: $00
	rst $38                                          ; $4ee8: $ff
	ld a, a                                          ; $4ee9: $7f
	rra                                              ; $4eea: $1f
	ld a, $ff                                        ; $4eeb: $3e $ff
	ld [bc], a                                       ; $4eed: $02
	nop                                              ; $4eee: $00
	nop                                              ; $4eef: $00
	rst $38                                          ; $4ef0: $ff
	ld a, a                                          ; $4ef1: $7f
	rra                                              ; $4ef2: $1f
	ld a, $20                                        ; $4ef3: $3e $20
	ld c, c                                          ; $4ef5: $49
	nop                                              ; $4ef6: $00
	nop                                              ; $4ef7: $00
	rst $38                                          ; $4ef8: $ff
	ld a, a                                          ; $4ef9: $7f
	rst $38                                          ; $4efa: $ff
	ld [bc], a                                       ; $4efb: $02
	or a                                             ; $4efc: $b7
	ld bc, $0000                                     ; $4efd: $01 $00 $00
	ccf                                              ; $4f00: $3f
	ld c, a                                          ; $4f01: $4f
	or a                                             ; $4f02: $b7
	add hl, hl                                       ; $4f03: $29
	pop af                                           ; $4f04: $f1
	stop                                             ; $4f05: $10 $00
	nop                                              ; $4f07: $00
	rst $38                                          ; $4f08: $ff
	ld a, a                                          ; $4f09: $7f
	nop                                              ; $4f0a: $00
	ld a, [hl]                                       ; $4f0b: $7e
	or a                                             ; $4f0c: $b7
	ld bc, $0000                                     ; $4f0d: $01 $00 $00
	dec l                                            ; $4f10: $2d
	sub b                                            ; $4f11: $90
	ld a, [hl+]                                      ; $4f12: $2a
	cp c                                             ; $4f13: $b9
	add hl, hl                                       ; $4f14: $29
	xor l                                            ; $4f15: $ad
	inc d                                            ; $4f16: $14
	nop                                              ; $4f17: $00
	nop                                              ; $4f18: $00
	rst $38                                          ; $4f19: $ff
	ld a, a                                          ; $4f1a: $7f
	sbc [hl]                                         ; $4f1b: $9e
	ld b, d                                          ; $4f1c: $42
	sub b                                            ; $4f1d: $90
	ld a, [hl+]                                      ; $4f1e: $2a
	nop                                              ; $4f1f: $00
	nop                                              ; $4f20: $00
	sub b                                            ; $4f21: $90
	ld a, [hl+]                                      ; $4f22: $2a
	and a                                            ; $4f23: $a7
	dec d                                            ; $4f24: $15
	nop                                              ; $4f25: $00
	dec c                                            ; $4f26: $0d
	nop                                              ; $4f27: $00
	nop                                              ; $4f28: $00
	rst $38                                          ; $4f29: $ff
	ld [hl], a                                       ; $4f2a: $77
	ld a, [de]                                       ; $4f2b: $1a
	ld [hl], $ad                                     ; $4f2c: $36 $ad
	inc d                                            ; $4f2e: $14

jr_010_4f2f:
	nop                                              ; $4f2f: $00
	nop                                              ; $4f30: $00
	sbc a                                            ; $4f31: $9f
	ld d, a                                          ; $4f32: $57
	xor l                                            ; $4f33: $ad
	inc d                                            ; $4f34: $14
	nop                                              ; $4f35: $00
	dec c                                            ; $4f36: $0d
	nop                                              ; $4f37: $00
	nop                                              ; $4f38: $00
	pop de                                           ; $4f39: $d1
	ld a, [hl-]                                      ; $4f3a: $3a
	cp c                                             ; $4f3b: $b9
	add hl, hl                                       ; $4f3c: $29
	push hl                                          ; $4f3d: $e5
	jr nc, jr_010_4f40                               ; $4f3e: $30 $00

jr_010_4f40:
	nop                                              ; $4f40: $00
	rra                                              ; $4f41: $1f
	ld a, h                                          ; $4f42: $7c
	rra                                              ; $4f43: $1f
	ld a, h                                          ; $4f44: $7c
	rra                                              ; $4f45: $1f
	ld a, h                                          ; $4f46: $7c
	cp c                                             ; $4f47: $b9
	add hl, hl                                       ; $4f48: $29
	cp b                                             ; $4f49: $b8
	add hl, hl                                       ; $4f4a: $29
	nop                                              ; $4f4b: $00
	nop                                              ; $4f4c: $00
	sbc [hl]                                         ; $4f4d: $9e
	ld b, d                                          ; $4f4e: $42
	ld c, l                                          ; $4f4f: $4d
	dec h                                            ; $4f50: $25
	nop                                              ; $4f51: $00
	nop                                              ; $4f52: $00
	and a                                            ; $4f53: $a7
	dec d                                            ; $4f54: $15
	nop                                              ; $4f55: $00
	dec c                                            ; $4f56: $0d
	nop                                              ; $4f57: $00
	nop                                              ; $4f58: $00
	sbc [hl]                                         ; $4f59: $9e
	ld b, d                                          ; $4f5a: $42
	cp c                                             ; $4f5b: $b9
	add hl, hl                                       ; $4f5c: $29
	nop                                              ; $4f5d: $00
	nop                                              ; $4f5e: $00
	sbc [hl]                                         ; $4f5f: $9e
	ld b, d                                          ; $4f60: $42
	ld c, l                                          ; $4f61: $4d
	dec h                                            ; $4f62: $25
	nop                                              ; $4f63: $00
	nop                                              ; $4f64: $00
	ld b, $95                                        ; $4f65: $06 $95
	ld a, a                                          ; $4f67: $7f
	daa                                              ; $4f68: $27
	ld e, e                                          ; $4f69: $5b
	jp $0054                                         ; $4f6a: $c3 $54 $00


	nop                                              ; $4f6d: $00
	rst $38                                          ; $4f6e: $ff
	ld a, a                                          ; $4f6f: $7f
	daa                                              ; $4f70: $27
	ld e, e                                          ; $4f71: $5b
	jp $0054                                         ; $4f72: $c3 $54 $00


	nop                                              ; $4f75: $00
	rst SubAFromDE                                          ; $4f76: $df
	ld d, l                                          ; $4f77: $55
	rra                                              ; $4f78: $1f
	dec a                                            ; $4f79: $3d
	jp $0054                                         ; $4f7a: $c3 $54 $00


	nop                                              ; $4f7d: $00
	rst $38                                          ; $4f7e: $ff
	ld a, a                                          ; $4f7f: $7f
	rst SubAFromDE                                          ; $4f80: $df
	ld d, l                                          ; $4f81: $55
	jp $0054                                         ; $4f82: $c3 $54 $00


	nop                                              ; $4f85: $00
	rst $38                                          ; $4f86: $ff
	ld a, a                                          ; $4f87: $7f
	or l                                             ; $4f88: $b5
	ld l, d                                          ; $4f89: $6a
	jp $0054                                         ; $4f8a: $c3 $54 $00


	nop                                              ; $4f8d: $00
	rst $38                                          ; $4f8e: $ff
	ld a, a                                          ; $4f8f: $7f
	ld a, l                                          ; $4f90: $7d
	inc [hl]                                         ; $4f91: $34
	inc c                                            ; $4f92: $0c
	stop                                             ; $4f93: $10 $00
	nop                                              ; $4f95: $00
	rst $38                                          ; $4f96: $ff
	ld a, a                                          ; $4f97: $7f
	ld [bc], a                                       ; $4f98: $02
	ld e, d                                          ; $4f99: $5a
	ld h, c                                          ; $4f9a: $61
	jr nz, jr_010_4f9d                               ; $4f9b: $20 $00

jr_010_4f9d:
	nop                                              ; $4f9d: $00
	inc b                                            ; $4f9e: $04
	rst $38                                          ; $4f9f: $ff
	ld a, a                                          ; $4fa0: $7f
	or l                                             ; $4fa1: $b5
	ld d, [hl]                                       ; $4fa2: $56
	adc h                                            ; $4fa3: $8c
	ld sp, $0000                                     ; $4fa4: $31 $00 $00
	rst $38                                          ; $4fa7: $ff
	ld a, a                                          ; $4fa8: $7f
	ld a, e                                          ; $4fa9: $7b
	ld l, a                                          ; $4faa: $6f
	ld d, c                                          ; $4fab: $51
	ld c, d                                          ; $4fac: $4a
	ld c, d                                          ; $4fad: $4a
	add hl, hl                                       ; $4fae: $29
	rst $38                                          ; $4faf: $ff
	ld a, a                                          ; $4fb0: $7f
	jr jr_010_4fd7                                   ; $4fb1: $18 $24

	ld d, c                                          ; $4fb3: $51
	ld c, d                                          ; $4fb4: $4a
	ld c, d                                          ; $4fb5: $4a
	add hl, hl                                       ; $4fb6: $29
	rst $38                                          ; $4fb7: $ff
	ld a, a                                          ; $4fb8: $7f
	jr nz, jr_010_4fed                               ; $4fb9: $20 $32

	ld d, c                                          ; $4fbb: $51
	ld c, d                                          ; $4fbc: $4a
	ld c, d                                          ; $4fbd: $4a
	add hl, hl                                       ; $4fbe: $29
	rst $38                                          ; $4fbf: $ff
	ld a, a                                          ; $4fc0: $7f
	ret                                              ; $4fc1: $c9


	ld e, c                                          ; $4fc2: $59
	ld d, c                                          ; $4fc3: $51
	ld c, d                                          ; $4fc4: $4a
	ld c, d                                          ; $4fc5: $4a
	add hl, hl                                       ; $4fc6: $29
	nop                                              ; $4fc7: $00
	rst $38                                          ; $4fc8: $ff
	ld a, a                                          ; $4fc9: $7f
	db $10                                           ; $4fca: $10
	ld b, d                                          ; $4fcb: $42
	add $18                                          ; $4fcc: $c6 $18
	nop                                              ; $4fce: $00
	nop                                              ; $4fcf: $00
	scf                                              ; $4fd0: $37
	nop                                              ; $4fd1: $00
	nop                                              ; $4fd2: $00
	nop                                              ; $4fd3: $00
	nop                                              ; $4fd4: $00
	nop                                              ; $4fd5: $00
	nop                                              ; $4fd6: $00

jr_010_4fd7:
	nop                                              ; $4fd7: $00
	nop                                              ; $4fd8: $00
	nop                                              ; $4fd9: $00
	nop                                              ; $4fda: $00
	nop                                              ; $4fdb: $00
	nop                                              ; $4fdc: $00
	nop                                              ; $4fdd: $00
	nop                                              ; $4fde: $00
	nop                                              ; $4fdf: $00
	nop                                              ; $4fe0: $00
	nop                                              ; $4fe1: $00
	nop                                              ; $4fe2: $00
	nop                                              ; $4fe3: $00
	nop                                              ; $4fe4: $00
	nop                                              ; $4fe5: $00
	nop                                              ; $4fe6: $00
	nop                                              ; $4fe7: $00
	nop                                              ; $4fe8: $00
	nop                                              ; $4fe9: $00
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00

jr_010_4fed:
	nop                                              ; $4fed: $00
	nop                                              ; $4fee: $00
	nop                                              ; $4fef: $00
	nop                                              ; $4ff0: $00
	nop                                              ; $4ff1: $00
	nop                                              ; $4ff2: $00
	nop                                              ; $4ff3: $00
	nop                                              ; $4ff4: $00
	nop                                              ; $4ff5: $00
	nop                                              ; $4ff6: $00
	nop                                              ; $4ff7: $00
	nop                                              ; $4ff8: $00
	scf                                              ; $4ff9: $37
	rst $38                                          ; $4ffa: $ff
	ld a, a                                          ; $4ffb: $7f
	rst $38                                          ; $4ffc: $ff
	ld a, a                                          ; $4ffd: $7f
	rst $38                                          ; $4ffe: $ff
	ld a, a                                          ; $4fff: $7f
	rst $38                                          ; $5000: $ff
	ld a, a                                          ; $5001: $7f
	rst $38                                          ; $5002: $ff
	ld a, a                                          ; $5003: $7f
	rst $38                                          ; $5004: $ff
	ld a, a                                          ; $5005: $7f
	rst $38                                          ; $5006: $ff
	ld a, a                                          ; $5007: $7f
	rst $38                                          ; $5008: $ff
	ld a, a                                          ; $5009: $7f
	rst $38                                          ; $500a: $ff
	ld a, a                                          ; $500b: $7f
	rst $38                                          ; $500c: $ff
	ld a, a                                          ; $500d: $7f
	rst $38                                          ; $500e: $ff
	ld a, a                                          ; $500f: $7f
	rst $38                                          ; $5010: $ff
	ld a, a                                          ; $5011: $7f
	rst $38                                          ; $5012: $ff
	ld a, a                                          ; $5013: $7f
	rst $38                                          ; $5014: $ff
	ld a, a                                          ; $5015: $7f
	rst $38                                          ; $5016: $ff
	ld a, a                                          ; $5017: $7f
	rst $38                                          ; $5018: $ff
	ld a, a                                          ; $5019: $7f
	rst $38                                          ; $501a: $ff
	ld a, a                                          ; $501b: $7f
	rst $38                                          ; $501c: $ff
	ld a, a                                          ; $501d: $7f
	rst $38                                          ; $501e: $ff
	ld a, a                                          ; $501f: $7f
	rst $38                                          ; $5020: $ff
	ld a, a                                          ; $5021: $7f
	daa                                              ; $5022: $27
	nop                                              ; $5023: $00
	nop                                              ; $5024: $00
	nop                                              ; $5025: $00
	nop                                              ; $5026: $00
	nop                                              ; $5027: $00
	nop                                              ; $5028: $00
	nop                                              ; $5029: $00
	nop                                              ; $502a: $00
	nop                                              ; $502b: $00
	nop                                              ; $502c: $00
	nop                                              ; $502d: $00
	nop                                              ; $502e: $00
	nop                                              ; $502f: $00
	nop                                              ; $5030: $00
	nop                                              ; $5031: $00
	nop                                              ; $5032: $00
	nop                                              ; $5033: $00
	nop                                              ; $5034: $00
	nop                                              ; $5035: $00
	nop                                              ; $5036: $00
	nop                                              ; $5037: $00
	nop                                              ; $5038: $00
	nop                                              ; $5039: $00
	nop                                              ; $503a: $00
	nop                                              ; $503b: $00
	nop                                              ; $503c: $00
	nop                                              ; $503d: $00
	nop                                              ; $503e: $00
	nop                                              ; $503f: $00
	nop                                              ; $5040: $00
	nop                                              ; $5041: $00
	nop                                              ; $5042: $00
	nop                                              ; $5043: $00
	nop                                              ; $5044: $00
	nop                                              ; $5045: $00
	nop                                              ; $5046: $00
	nop                                              ; $5047: $00
	nop                                              ; $5048: $00
	nop                                              ; $5049: $00
	nop                                              ; $504a: $00
	nop                                              ; $504b: $00
	nop                                              ; $504c: $00
	nop                                              ; $504d: $00
	nop                                              ; $504e: $00
	nop                                              ; $504f: $00
	nop                                              ; $5050: $00
	nop                                              ; $5051: $00
	nop                                              ; $5052: $00
	daa                                              ; $5053: $27
	rst $38                                          ; $5054: $ff
	ld a, a                                          ; $5055: $7f
	rst $38                                          ; $5056: $ff
	ld a, a                                          ; $5057: $7f
	rst $38                                          ; $5058: $ff
	ld a, a                                          ; $5059: $7f
	rst $38                                          ; $505a: $ff
	ld a, a                                          ; $505b: $7f
	rst $38                                          ; $505c: $ff
	ld a, a                                          ; $505d: $7f
	rst $38                                          ; $505e: $ff
	ld a, a                                          ; $505f: $7f
	rst $38                                          ; $5060: $ff
	ld a, a                                          ; $5061: $7f
	rst $38                                          ; $5062: $ff
	ld a, a                                          ; $5063: $7f
	rst $38                                          ; $5064: $ff
	ld a, a                                          ; $5065: $7f
	rst $38                                          ; $5066: $ff
	ld a, a                                          ; $5067: $7f
	rst $38                                          ; $5068: $ff
	ld a, a                                          ; $5069: $7f
	rst $38                                          ; $506a: $ff
	ld a, a                                          ; $506b: $7f
	rst $38                                          ; $506c: $ff
	ld a, a                                          ; $506d: $7f
	rst $38                                          ; $506e: $ff
	ld a, a                                          ; $506f: $7f
	rst $38                                          ; $5070: $ff
	ld a, a                                          ; $5071: $7f
	rst $38                                          ; $5072: $ff
	ld a, a                                          ; $5073: $7f
	rst $38                                          ; $5074: $ff
	ld a, a                                          ; $5075: $7f
	rst $38                                          ; $5076: $ff
	ld a, a                                          ; $5077: $7f
	rst $38                                          ; $5078: $ff
	ld a, a                                          ; $5079: $7f
	rst $38                                          ; $507a: $ff

Call_010_507b:
	ld a, a                                          ; $507b: $7f

Call_010_507c:
	rst $38                                          ; $507c: $ff
	ld a, a                                          ; $507d: $7f
	rst $38                                          ; $507e: $ff
	ld a, a                                          ; $507f: $7f
	rst $38                                          ; $5080: $ff
	ld a, a                                          ; $5081: $7f
	rst $38                                          ; $5082: $ff
	ld a, a                                          ; $5083: $7f
	rlca                                             ; $5084: $07
	rst $38                                          ; $5085: $ff
	ld a, a                                          ; $5086: $7f
	ld d, b                                          ; $5087: $50
	ld a, a                                          ; $5088: $7f
	daa                                              ; $5089: $27
	ld e, e                                          ; $508a: $5b
	jp $ff54                                         ; $508b: $c3 $54 $ff


	ld a, a                                          ; $508e: $7f
	sub l                                            ; $508f: $95
	ld a, a                                          ; $5090: $7f
	ld c, [hl]                                       ; $5091: $4e
	ld e, a                                          ; $5092: $5f
	jp $ff54                                         ; $5093: $c3 $54 $ff


	ld a, a                                          ; $5096: $7f
	ld e, a                                          ; $5097: $5f
	ld h, d                                          ; $5098: $62
	rra                                              ; $5099: $1f
	dec a                                            ; $509a: $3d
	jp $ff54                                         ; $509b: $c3 $54 $ff


	ld a, a                                          ; $509e: $7f
	ld e, a                                          ; $509f: $5f
	ld d, d                                          ; $50a0: $52
	ld l, $6e                                        ; $50a1: $2e $6e
	jp $ff54                                         ; $50a3: $c3 $54 $ff


	ld a, a                                          ; $50a6: $7f
	ld e, d                                          ; $50a7: $5a
	ld l, [hl]                                       ; $50a8: $6e
	ld [hl], $61                                     ; $50a9: $36 $61
	ld d, b                                          ; $50ab: $50
	ld c, h                                          ; $50ac: $4c
	rst $38                                          ; $50ad: $ff
	ld a, a                                          ; $50ae: $7f
	sub b                                            ; $50af: $90
	ld a, [hl]                                       ; $50b0: $7e
	add l                                            ; $50b1: $85
	ld a, c                                          ; $50b2: $79
	jp $ff54                                         ; $50b3: $c3 $54 $ff


	ld a, a                                          ; $50b6: $7f
	ld de, $026f                                     ; $50b7: $11 $6f $02
	ld e, d                                          ; $50ba: $5a
	ld h, c                                          ; $50bb: $61
	jr nz, @+$01                                     ; $50bc: $20 $ff

	ld a, a                                          ; $50be: $7f
	ld a, $5a                                        ; $50bf: $3e $5a
	ld a, l                                          ; $50c1: $7d
	inc [hl]                                         ; $50c2: $34
	inc c                                            ; $50c3: $0c
	db $10                                           ; $50c4: $10
	ld bc, $7fff                                     ; $50c5: $01 $ff $7f
	rra                                              ; $50c8: $1f
	ld [bc], a                                       ; $50c9: $02
	inc e                                            ; $50ca: $1c
	nop                                              ; $50cb: $00
	nop                                              ; $50cc: $00
	nop                                              ; $50cd: $00
	rst $38                                          ; $50ce: $ff
	ld a, a                                          ; $50cf: $7f
	nop                                              ; $50d0: $00
	nop                                              ; $50d1: $00
	add hl, sp                                       ; $50d2: $39
	ld h, a                                          ; $50d3: $67
	ldh [$03], a                                     ; $50d4: $e0 $03
	inc b                                            ; $50d6: $04
	rst $38                                          ; $50d7: $ff
	ld a, a                                          ; $50d8: $7f
	ld e, d                                          ; $50d9: $5a
	ld l, e                                          ; $50da: $6b
	sub h                                            ; $50db: $94
	ld d, d                                          ; $50dc: $52
	ld [$ff21], sp                                   ; $50dd: $08 $21 $ff
	ld a, a                                          ; $50e0: $7f
	sub h                                            ; $50e1: $94
	ld d, d                                          ; $50e2: $52
	rra                                              ; $50e3: $1f
	inc e                                            ; $50e4: $1c
	ld [$ff21], sp                                   ; $50e5: $08 $21 $ff
	ld a, a                                          ; $50e8: $7f
	sub h                                            ; $50e9: $94
	ld d, d                                          ; $50ea: $52
	jr nz, jr_010_5117                               ; $50eb: $20 $2a

	ld [$ff21], sp                                   ; $50ed: $08 $21 $ff
	ld a, a                                          ; $50f0: $7f
	sub h                                            ; $50f1: $94
	ld d, d                                          ; $50f2: $52
	ret z                                            ; $50f3: $c8

	ld e, c                                          ; $50f4: $59
	ld [$ff21], sp                                   ; $50f5: $08 $21 $ff
	ld a, a                                          ; $50f8: $7f
	ld e, d                                          ; $50f9: $5a
	ld l, e                                          ; $50fa: $6b
	sub h                                            ; $50fb: $94
	ld d, d                                          ; $50fc: $52
	nop                                              ; $50fd: $00
	nop                                              ; $50fe: $00
	daa                                              ; $50ff: $27
	rra                                              ; $5100: $1f
	ld a, h                                          ; $5101: $7c
	rra                                              ; $5102: $1f
	ld a, h                                          ; $5103: $7c
	rra                                              ; $5104: $1f
	ld a, h                                          ; $5105: $7c
	rra                                              ; $5106: $1f
	ld a, h                                          ; $5107: $7c
	dec sp                                           ; $5108: $3b
	ld l, a                                          ; $5109: $6f
	rst GetHLinHL                                          ; $510a: $cf
	ld b, h                                          ; $510b: $44
	inc bc                                           ; $510c: $03
	jr c, jr_010_510f                                ; $510d: $38 $00

jr_010_510f:
	nop                                              ; $510f: $00
	sub b                                            ; $5110: $90
	ld a, [hl]                                       ; $5111: $7e
	and b                                            ; $5112: $a0
	ld d, b                                          ; $5113: $50
	inc bc                                           ; $5114: $03
	jr c, jr_010_5117                                ; $5115: $38 $00

jr_010_5117:
	nop                                              ; $5117: $00
	rst GetHLinHL                                          ; $5118: $cf
	ld b, h                                          ; $5119: $44
	and b                                            ; $511a: $a0
	ld d, b                                          ; $511b: $50
	inc bc                                           ; $511c: $03
	jr c, jr_010_511f                                ; $511d: $38 $00

jr_010_511f:
	nop                                              ; $511f: $00
	rst SubAFromDE                                          ; $5120: $df
	ld b, [hl]                                       ; $5121: $46
	and b                                            ; $5122: $a0
	ld d, b                                          ; $5123: $50
	inc bc                                           ; $5124: $03
	jr c, jr_010_5127                                ; $5125: $38 $00

jr_010_5127:
	nop                                              ; $5127: $00
	cp $7b                                           ; $5128: $fe $7b
	rst GetHLinHL                                          ; $512a: $cf
	ld b, h                                          ; $512b: $44
	inc bc                                           ; $512c: $03
	jr c, jr_010_512f                                ; $512d: $38 $00

jr_010_512f:
	nop                                              ; $512f: $00
	daa                                              ; $5130: $27
	rst $38                                          ; $5131: $ff
	ld d, a                                          ; $5132: $57
	rst SubAFromDE                                          ; $5133: $df
	ld a, [hl+]                                      ; $5134: $2a
	ld c, h                                          ; $5135: $4c
	dec a                                            ; $5136: $3d
	nop                                              ; $5137: $00
	nop                                              ; $5138: $00
	rst SubAFromDE                                          ; $5139: $df
	ld a, [hl+]                                      ; $513a: $2a
	ccf                                              ; $513b: $3f
	ld a, [hl+]                                      ; $513c: $2a
	sub $79                                          ; $513d: $d6 $79
	nop                                              ; $513f: $00
	nop                                              ; $5140: $00
	ccf                                              ; $5141: $3f
	ld a, [hl+]                                      ; $5142: $2a
	rst $38                                          ; $5143: $ff
	ld a, [hl+]                                      ; $5144: $2a
	ld a, [hl+]                                      ; $5145: $2a
	ld e, $00                                        ; $5146: $1e $00
	nop                                              ; $5148: $00
	rst $38                                          ; $5149: $ff
	ld a, a                                          ; $514a: $7f
	rst SubAFromDE                                          ; $514b: $df
	ld a, [hl+]                                      ; $514c: $2a
	sub $79                                          ; $514d: $d6 $79
	ld hl, $1f04                                     ; $514f: $21 $04 $1f
	ld [$1e2a], sp                                   ; $5152: $08 $2a $1e
	ld d, d                                          ; $5155: $52
	ld c, c                                          ; $5156: $49
	ld hl, $ff04                                     ; $5157: $21 $04 $ff
	ld a, a                                          ; $515a: $7f
	sub $79                                          ; $515b: $d6 $79
	ld d, d                                          ; $515d: $52
	ld c, c                                          ; $515e: $49
	inc l                                            ; $515f: $2c
	dec l                                            ; $5160: $2d
	daa                                              ; $5161: $27
	rst $38                                          ; $5162: $ff
	ld d, a                                          ; $5163: $57
	rst SubAFromDE                                          ; $5164: $df
	ld a, [hl+]                                      ; $5165: $2a
	ld c, h                                          ; $5166: $4c
	dec a                                            ; $5167: $3d
	nop                                              ; $5168: $00
	nop                                              ; $5169: $00
	rst SubAFromDE                                          ; $516a: $df
	ld a, [hl+]                                      ; $516b: $2a
	ccf                                              ; $516c: $3f
	ld a, [hl+]                                      ; $516d: $2a
	sub $79                                          ; $516e: $d6 $79
	nop                                              ; $5170: $00
	nop                                              ; $5171: $00
	rst $38                                          ; $5172: $ff
	ld a, [hl+]                                      ; $5173: $2a
	ccf                                              ; $5174: $3f
	ld a, [hl+]                                      ; $5175: $2a
	ld c, h                                          ; $5176: $4c
	dec a                                            ; $5177: $3d
	nop                                              ; $5178: $00
	nop                                              ; $5179: $00
	rst $38                                          ; $517a: $ff
	ld a, a                                          ; $517b: $7f
	rst SubAFromDE                                          ; $517c: $df
	ld a, [hl+]                                      ; $517d: $2a
	sub $79                                          ; $517e: $d6 $79
	ld hl, $1f04                                     ; $5180: $21 $04 $1f
	ld [$79d6], sp                                   ; $5183: $08 $d6 $79
	ld c, h                                          ; $5186: $4c
	dec a                                            ; $5187: $3d
	ld hl, $ff04                                     ; $5188: $21 $04 $ff
	ld a, a                                          ; $518b: $7f
	sub $79                                          ; $518c: $d6 $79
	ld d, d                                          ; $518e: $52
	ld c, c                                          ; $518f: $49
	inc l                                            ; $5190: $2c
	dec l                                            ; $5191: $2d
	daa                                              ; $5192: $27
	ld a, b                                          ; $5193: $78
	ld a, e                                          ; $5194: $7b
	halt                                             ; $5195: $76
	dec d                                            ; $5196: $15
	cp a                                             ; $5197: $bf
	inc d                                            ; $5198: $14
	ld h, e                                          ; $5199: $63
	inc c                                            ; $519a: $0c
	ld d, d                                          ; $519b: $52
	ld c, c                                          ; $519c: $49
	halt                                             ; $519d: $76
	dec d                                            ; $519e: $15
	add d                                            ; $519f: $82
	ld hl, $0c63                                     ; $51a0: $21 $63 $0c
	ld a, b                                          ; $51a3: $78
	ld a, e                                          ; $51a4: $7b
	ld a, b                                          ; $51a5: $78
	ld a, e                                          ; $51a6: $7b
	add d                                            ; $51a7: $82
	ld hl, $0000                                     ; $51a8: $21 $00 $00
	ld a, b                                          ; $51ab: $78
	ld a, e                                          ; $51ac: $7b
	cp a                                             ; $51ad: $bf
	ld bc, $04f4                                     ; $51ae: $01 $f4 $04
	nop                                              ; $51b1: $00
	nop                                              ; $51b2: $00
	cp a                                             ; $51b3: $bf
	ld bc, $2182                                     ; $51b4: $01 $82 $21
	ld h, e                                          ; $51b7: $63
	inc c                                            ; $51b8: $0c
	nop                                              ; $51b9: $00
	nop                                              ; $51ba: $00
	ld a, b                                          ; $51bb: $78
	ld a, e                                          ; $51bc: $7b
	halt                                             ; $51bd: $76
	dec d                                            ; $51be: $15
	db $d3                                           ; $51bf: $d3
	inc d                                            ; $51c0: $14
	ld h, e                                          ; $51c1: $63
	inc c                                            ; $51c2: $0c
	daa                                              ; $51c3: $27
	call c, $267f                                    ; $51c4: $dc $7f $26
	ld c, $ab                                        ; $51c7: $0e $ab
	dec d                                            ; $51c9: $15
	nop                                              ; $51ca: $00
	nop                                              ; $51cb: $00
	call c, $267f                                    ; $51cc: $dc $7f $26
	ld c, $14                                        ; $51cf: $0e $14
	dec c                                            ; $51d1: $0d
	jr nz, jr_010_51d4                               ; $51d2: $20 $00

jr_010_51d4:
	db $dd                                           ; $51d4: $dd
	ld d, $b2                                        ; $51d5: $16 $b2

jr_010_51d7:
	add hl, hl                                       ; $51d7: $29
	inc d                                            ; $51d8: $14
	dec c                                            ; $51d9: $0d
	nop                                              ; $51da: $00
	nop                                              ; $51db: $00
	db $dd                                           ; $51dc: $dd
	ld d, $b2                                        ; $51dd: $16 $b2
	add hl, hl                                       ; $51df: $29
	inc d                                            ; $51e0: $14
	dec c                                            ; $51e1: $0d
	nop                                              ; $51e2: $00
	nop                                              ; $51e3: $00
	rst FarCall                                          ; $51e4: $f7
	ld e, [hl]                                       ; $51e5: $5e
	ldh [c], a                                       ; $51e6: $e2
	ld l, l                                          ; $51e7: $6d
	xor e                                            ; $51e8: $ab
	dec d                                            ; $51e9: $15
	nop                                              ; $51ea: $00
	nop                                              ; $51eb: $00
	call c, $e27f                                    ; $51ec: $dc $7f $e2
	ld l, l                                          ; $51ef: $6d
	inc d                                            ; $51f0: $14
	dec c                                            ; $51f1: $0d
	nop                                              ; $51f2: $00
	nop                                              ; $51f3: $00
	daa                                              ; $51f4: $27
	ld [hl], $7f                                     ; $51f5: $36 $7f
	adc e                                            ; $51f7: $8b
	ld l, $c5                                        ; $51f8: $2e $c5
	ld sp, $0000                                     ; $51fa: $31 $00 $00
	rst SubAFromDE                                          ; $51fd: $df
	ld b, [hl]                                       ; $51fe: $46
	push bc                                          ; $51ff: $c5
	ld sp, $50a0                                     ; $5200: $31 $a0 $50
	nop                                              ; $5203: $00
	nop                                              ; $5204: $00
	rst SubAFromDE                                          ; $5205: $df
	ld b, [hl]                                       ; $5206: $46
	sub b                                            ; $5207: $90
	ld a, [hl]                                       ; $5208: $7e
	and b                                            ; $5209: $a0
	ld d, b                                          ; $520a: $50
	nop                                              ; $520b: $00
	nop                                              ; $520c: $00
	rst SubAFromDE                                          ; $520d: $df
	ld b, [hl]                                       ; $520e: $46
	rst SubAFromHL                                          ; $520f: $d7
	jr jr_010_51d7                                   ; $5210: $18 $c5

	ld sp, $0000                                     ; $5212: $31 $00 $00
	ld [hl], $7f                                     ; $5215: $36 $7f
	sub b                                            ; $5217: $90
	ld a, [hl]                                       ; $5218: $7e
	push bc                                          ; $5219: $c5
	ld sp, $0000                                     ; $521a: $31 $00 $00
	adc e                                            ; $521d: $8b
	ld l, $c5                                        ; $521e: $2e $c5
	ld sp, $50a0                                     ; $5220: $31 $a0 $50
	nop                                              ; $5223: $00
	nop                                              ; $5224: $00
	daa                                              ; $5225: $27
	ld a, [hl]                                       ; $5226: $7e
	ld [hl+], a                                      ; $5227: $22
	dec c                                            ; $5228: $0d
	ld c, [hl]                                       ; $5229: $4e
	ld c, e                                          ; $522a: $4b
	dec [hl]                                         ; $522b: $35
	ld bc, $db00                                     ; $522c: $01 $00 $db
	ld a, e                                          ; $522f: $7b
	dec c                                            ; $5230: $0d
	ld c, [hl]                                       ; $5231: $4e
	and d                                            ; $5232: $a2
	ld [hl], l                                       ; $5233: $75
	nop                                              ; $5234: $00
	nop                                              ; $5235: $00
	db $db                                           ; $5236: $db
	ld a, e                                          ; $5237: $7b
	ld c, e                                          ; $5238: $4b
	dec [hl]                                         ; $5239: $35
	ld [bc], a                                       ; $523a: $02
	inc [hl]                                         ; $523b: $34
	nop                                              ; $523c: $00
	nop                                              ; $523d: $00
	ld a, [hl]                                       ; $523e: $7e
	ld [hl+], a                                      ; $523f: $22
	ld b, b                                          ; $5240: $40
	ld b, $4b                                        ; $5241: $06 $4b
	dec [hl]                                         ; $5243: $35
	ld bc, $ff00                                     ; $5244: $01 $00 $ff
	ld [hl], e                                       ; $5247: $73
	ld e, a                                          ; $5248: $5f
	ld [hl], d                                       ; $5249: $72
	ld a, $28                                        ; $524a: $3e $28
	rra                                              ; $524c: $1f
	ld a, h                                          ; $524d: $7c
	db $db                                           ; $524e: $db
	ld a, e                                          ; $524f: $7b
	dec c                                            ; $5250: $0d
	ld c, [hl]                                       ; $5251: $4e
	ld c, e                                          ; $5252: $4b
	dec [hl]                                         ; $5253: $35
	ld bc, $0100                                     ; $5254: $01 $00 $01
	xor b                                            ; $5257: $a8
	ld a, d                                          ; $5258: $7a
	cp [hl]                                          ; $5259: $be
	ld [bc], a                                       ; $525a: $02
	nop                                              ; $525b: $00
	nop                                              ; $525c: $00
	nop                                              ; $525d: $00
	nop                                              ; $525e: $00
	ld e, h                                          ; $525f: $5c
	ld a, a                                          ; $5260: $7f
	cp [hl]                                          ; $5261: $be
	ld [bc], a                                       ; $5262: $02
	rra                                              ; $5263: $1f
	nop                                              ; $5264: $00
	nop                                              ; $5265: $00
	nop                                              ; $5266: $00
	xor e                                            ; $5267: $ab
	ccf                                              ; $5268: $3f
	ld b, e                                          ; $5269: $43
	ld a, a                                          ; $526a: $7f
	jr nz, jr_010_526d                               ; $526b: $20 $00

jr_010_526d:
	inc b                                            ; $526d: $04
	ccf                                              ; $526e: $3f
	ld b, e                                          ; $526f: $43
	rst $38                                          ; $5270: $ff
	ld a, c                                          ; $5271: $79
	nop                                              ; $5272: $00
	inc b                                            ; $5273: $04
	xor e                                            ; $5274: $ab
	ccf                                              ; $5275: $3f
	ld b, e                                          ; $5276: $43
	ld a, a                                          ; $5277: $7f
	jr nz, jr_010_527a                               ; $5278: $20 $00

jr_010_527a:
	inc b                                            ; $527a: $04
	ccf                                              ; $527b: $3f
	ld b, e                                          ; $527c: $43
	ld d, b                                          ; $527d: $50
	ld [hl], l                                       ; $527e: $75
	nop                                              ; $527f: $00
	nop                                              ; $5280: $00
	xor e                                            ; $5281: $ab
	ccf                                              ; $5282: $3f
	ld b, e                                          ; $5283: $43
	sub $1d                                          ; $5284: $d6 $1d
	ld bc, $3f00                                     ; $5286: $01 $00 $3f
	ld b, e                                          ; $5289: $43
	adc b                                            ; $528a: $88
	ld l, $01                                        ; $528b: $2e $01
	nop                                              ; $528d: $00
	xor e                                            ; $528e: $ab
	ccf                                              ; $528f: $3f
	ld b, e                                          ; $5290: $43
	ld c, b                                          ; $5291: $48
	ld a, [hl]                                       ; $5292: $7e
	nop                                              ; $5293: $00
	inc b                                            ; $5294: $04
	ccf                                              ; $5295: $3f
	ld b, e                                          ; $5296: $43
	add hl, sp                                       ; $5297: $39
	ld a, e                                          ; $5298: $7b
	nop                                              ; $5299: $00
	nop                                              ; $529a: $00
	call Call_010_7bdc                               ; $529b: $cd $dc $7b
	xor [hl]                                         ; $529e: $ae
	ld e, a                                          ; $529f: $5f
	add b                                            ; $52a0: $80
	ld b, e                                          ; $52a1: $43
	call c, $b97b                                    ; $52a2: $dc $7b $b9
	ld a, c                                          ; $52a5: $79
	ld a, [de]                                       ; $52a6: $1a
	ld h, h                                          ; $52a7: $64
	xor e                                            ; $52a8: $ab
	ccf                                              ; $52a9: $3f
	ld b, e                                          ; $52aa: $43
	inc [hl]                                         ; $52ab: $34
	ld a, l                                          ; $52ac: $7d
	nop                                              ; $52ad: $00
	inc b                                            ; $52ae: $04
	rst $38                                          ; $52af: $ff
	cpl                                              ; $52b0: $2f
	ccf                                              ; $52b1: $3f
	ld [hl], l                                       ; $52b2: $75
	ld c, $00                                        ; $52b3: $0e $00
	xor e                                            ; $52b5: $ab
	ccf                                              ; $52b6: $3f
	ld b, e                                          ; $52b7: $43
	add [hl]                                         ; $52b8: $86
	ld c, d                                          ; $52b9: $4a
	ld bc, $1f00                                     ; $52ba: $01 $00 $1f
	ld a, h                                          ; $52bd: $7c
	rra                                              ; $52be: $1f
	ld a, h                                          ; $52bf: $7c
	rra                                              ; $52c0: $1f
	ld a, h                                          ; $52c1: $7c
	xor e                                            ; $52c2: $ab
	ccf                                              ; $52c3: $3f
	ld b, e                                          ; $52c4: $43
	ld l, b                                          ; $52c5: $68
	ld d, c                                          ; $52c6: $51
	nop                                              ; $52c7: $00
	nop                                              ; $52c8: $00
	ccf                                              ; $52c9: $3f
	ld b, e                                          ; $52ca: $43
	ld c, d                                          ; $52cb: $4a
	cpl                                              ; $52cc: $2f
	nop                                              ; $52cd: $00
	inc b                                            ; $52ce: $04
	xor e                                            ; $52cf: $ab
	ccf                                              ; $52d0: $3f

jr_010_52d1:
	ld b, e                                          ; $52d1: $43
	ccf                                              ; $52d2: $3f
	ld [hl], l                                       ; $52d3: $75
	nop                                              ; $52d4: $00
	inc b                                            ; $52d5: $04
	ccf                                              ; $52d6: $3f
	ld b, e                                          ; $52d7: $43
	add sp, $52                                      ; $52d8: $e8 $52
	nop                                              ; $52da: $00
	nop                                              ; $52db: $00
	call Call_010_433f                               ; $52dc: $cd $3f $43
	ld l, e                                          ; $52df: $6b
	dec l                                            ; $52e0: $2d
	nop                                              ; $52e1: $00
	nop                                              ; $52e2: $00
	rst $38                                          ; $52e3: $ff
	ld a, a                                          ; $52e4: $7f
	rst $38                                          ; $52e5: $ff
	inc bc                                           ; $52e6: $03
	rst $38                                          ; $52e7: $ff
	inc bc                                           ; $52e8: $03
	xor e                                            ; $52e9: $ab
	ccf                                              ; $52ea: $3f
	ld b, e                                          ; $52eb: $43
	ld a, a                                          ; $52ec: $7f
	ld hl, $0000                                     ; $52ed: $21 $00 $00
	ccf                                              ; $52f0: $3f
	ld b, e                                          ; $52f1: $43
	ld [$002a], a                                    ; $52f2: $ea $2a $00
	inc b                                            ; $52f5: $04
	adc c                                            ; $52f6: $89
	ccf                                              ; $52f7: $3f
	ld b, e                                          ; $52f8: $43
	ld l, e                                          ; $52f9: $6b
	dec l                                            ; $52fa: $2d
	nop                                              ; $52fb: $00
	inc b                                            ; $52fc: $04
	ccf                                              ; $52fd: $3f
	ld b, e                                          ; $52fe: $43
	add c                                            ; $52ff: $81
	ld l, [hl]                                       ; $5300: $6e
	nop                                              ; $5301: $00
	inc b                                            ; $5302: $04
	xor e                                            ; $5303: $ab
	ld e, l                                          ; $5304: $5d
	ld [hl-], a                                      ; $5305: $32
	cp a                                             ; $5306: $bf
	nop                                              ; $5307: $00
	ld bc, $5d00                                     ; $5308: $01 $00 $5d
	ld [hl-], a                                      ; $530b: $32
	db $eb                                           ; $530c: $eb
	dec e                                            ; $530d: $1d
	ld bc, $ce00                                     ; $530e: $01 $00 $ce
	call c, $ae7b                                    ; $5311: $dc $7b $ae
	ld e, a                                          ; $5314: $5f
	add b                                            ; $5315: $80
	ld b, e                                          ; $5316: $43
	call c, Call_010_507b                            ; $5317: $dc $7b $50
	ld a, a                                          ; $531a: $7f
	add c                                            ; $531b: $81
	ld l, [hl]                                       ; $531c: $6e
	call c, Call_010_507b                            ; $531d: $dc $7b $50
	ld a, a                                          ; $5320: $7f
	pop bc                                           ; $5321: $c1
	jr c, jr_010_52d1                                ; $5322: $38 $ad

	ld e, l                                          ; $5324: $5d
	ld [hl-], a                                      ; $5325: $32
	cp a                                             ; $5326: $bf
	nop                                              ; $5327: $00
	ld bc, $5d00                                     ; $5328: $01 $00 $5d
	ld [hl-], a                                      ; $532b: $32
	db $eb                                           ; $532c: $eb
	dec e                                            ; $532d: $1d
	ld bc, $dc00                                     ; $532e: $01 $00 $dc
	ld a, e                                          ; $5331: $7b
	xor [hl]                                         ; $5332: $ae
	ld e, a                                          ; $5333: $5f
	add b                                            ; $5334: $80
	ld b, e                                          ; $5335: $43
	call c, Call_010_507b                            ; $5336: $dc $7b $50
	ld a, a                                          ; $5339: $7f
	add c                                            ; $533a: $81
	ld l, [hl]                                       ; $533b: $6e
	xor e                                            ; $533c: $ab
	ccf                                              ; $533d: $3f
	ld b, e                                          ; $533e: $43
	and $16                                          ; $533f: $e6 $16
	nop                                              ; $5341: $00
	nop                                              ; $5342: $00
	ccf                                              ; $5343: $3f
	ld b, e                                          ; $5344: $43
	ld e, a                                          ; $5345: $5f
	inc l                                            ; $5346: $2c
	nop                                              ; $5347: $00
	inc b                                            ; $5348: $04
	xor e                                            ; $5349: $ab
	ccf                                              ; $534a: $3f
	ld b, e                                          ; $534b: $43
	call nz, $007d                                   ; $534c: $c4 $7d $00
	nop                                              ; $534f: $00
	ccf                                              ; $5350: $3f
	ld b, e                                          ; $5351: $43
	inc c                                            ; $5352: $0c
	dec l                                            ; $5353: $2d
	nop                                              ; $5354: $00
	inc b                                            ; $5355: $04
	call Call_010_7fff                               ; $5356: $cd $ff $7f
	rst $38                                          ; $5359: $ff
	inc bc                                           ; $535a: $03
	rra                                              ; $535b: $1f
	nop                                              ; $535c: $00
	rst $38                                          ; $535d: $ff
	ld a, a                                          ; $535e: $7f
	pop bc                                           ; $535f: $c1
	ld a, a                                          ; $5360: $7f
	ld b, b                                          ; $5361: $40
	ld a, l                                          ; $5362: $7d
	rst AddAOntoHL                                          ; $5363: $ef
	rra                                              ; $5364: $1f
	ld [$79d6], sp                                   ; $5365: $08 $d6 $79
	nop                                              ; $5368: $00
	nop                                              ; $5369: $00
	cp [hl]                                          ; $536a: $be
	ld [hl], e                                       ; $536b: $73
	adc c                                            ; $536c: $89
	ld a, [hl]                                       ; $536d: $7e
	nop                                              ; $536e: $00
	inc b                                            ; $536f: $04
	rst AddAOntoHL                                          ; $5370: $ef
	rst $38                                          ; $5371: $ff
	ld a, a                                          ; $5372: $7f
	rst $38                                          ; $5373: $ff
	inc bc                                           ; $5374: $03
	cp c                                             ; $5375: $b9
	ld [bc], a                                       ; $5376: $02
	cp [hl]                                          ; $5377: $be
	ld [hl], e                                       ; $5378: $73
	adc c                                            ; $5379: $89
	ld a, [hl]                                       ; $537a: $7e
	nop                                              ; $537b: $00
	inc b                                            ; $537c: $04
	rst AddAOntoHL                                          ; $537d: $ef
	rst $38                                          ; $537e: $ff
	ld a, a                                          ; $537f: $7f
	sub $79                                          ; $5380: $d6 $79
	ld d, d                                          ; $5382: $52
	ld c, c                                          ; $5383: $49
	sub $79                                          ; $5384: $d6 $79
	ld d, d                                          ; $5386: $52
	ld c, c                                          ; $5387: $49
	inc l                                            ; $5388: $2c
	dec l                                            ; $5389: $2d
	rst AddAOntoHL                                          ; $538a: $ef
	rst $38                                          ; $538b: $ff
	ld a, a                                          ; $538c: $7f
	ld b, b                                          ; $538d: $40
	ld a, [hl]                                       ; $538e: $7e
	nop                                              ; $538f: $00
	nop                                              ; $5390: $00
	rst SubAFromDE                                          ; $5391: $df
	ccf                                              ; $5392: $3f
	cp a                                             ; $5393: $bf
	ld bc, $0000                                     ; $5394: $01 $00 $00
	rst AddAOntoHL                                          ; $5397: $ef
	db $dd                                           ; $5398: $dd
	ld d, $14                                        ; $5399: $16 $14
	dec c                                            ; $539b: $0d
	nop                                              ; $539c: $00
	nop                                              ; $539d: $00
	db $fc                                           ; $539e: $fc
	ld a, a                                          ; $539f: $7f
	ld a, a                                          ; $53a0: $7f
	rla                                              ; $53a1: $17
	ld e, h                                          ; $53a2: $5c
	ld d, $ef                                        ; $53a3: $16 $ef
	rst $38                                          ; $53a5: $ff
	ld [hl], e                                       ; $53a6: $73
	ld l, b                                          ; $53a7: $68
	ld [hl], d                                       ; $53a8: $72
	and b                                            ; $53a9: $a0
	ld h, b                                          ; $53aa: $60
	rst $38                                          ; $53ab: $ff
	ld [hl], e                                       ; $53ac: $73
	rra                                              ; $53ad: $1f
	inc d                                            ; $53ae: $14
	and b                                            ; $53af: $a0
	ld h, b                                          ; $53b0: $60
	rst AddAOntoHL                                          ; $53b1: $ef
	rst $38                                          ; $53b2: $ff
	ld [hl], e                                       ; $53b3: $73
	ld l, b                                          ; $53b4: $68
	ld [hl], d                                       ; $53b5: $72
	ldh [$61], a                                     ; $53b6: $e0 $61
	sbc a                                            ; $53b8: $9f
	ld a, h                                          ; $53b9: $7c
	sbc a                                            ; $53ba: $9f
	ld b, d                                          ; $53bb: $42
	ld e, [hl]                                       ; $53bc: $5e
	ld de, $9def                                     ; $53bd: $11 $ef $9d
	ld [hl], $92                                     ; $53c0: $36 $92
	dec d                                            ; $53c2: $15
	nop                                              ; $53c3: $00
	nop                                              ; $53c4: $00
	rst $38                                          ; $53c5: $ff
	ld a, a                                          ; $53c6: $7f
	sbc l                                            ; $53c7: $9d
	ld [hl], $2a                                     ; $53c8: $36 $2a
	ld hl, $9def                                     ; $53ca: $21 $ef $9d
	ld [hl], $07                                     ; $53cd: $36 $07
	dec [hl]                                         ; $53cf: $35
	nop                                              ; $53d0: $00
	nop                                              ; $53d1: $00
	cp c                                             ; $53d2: $b9
	ld bc, $343f                                     ; $53d3: $01 $3f $34
	and $21                                          ; $53d6: $e6 $21
	rst AddAOntoHL                                          ; $53d8: $ef
	ccf                                              ; $53d9: $3f
	ld b, e                                          ; $53da: $43
	rlca                                             ; $53db: $07
	ld c, c                                          ; $53dc: $49
	nop                                              ; $53dd: $00
	nop                                              ; $53de: $00
	rst $38                                          ; $53df: $ff
	ld a, a                                          ; $53e0: $7f
	ccf                                              ; $53e1: $3f
	ld b, e                                          ; $53e2: $43
	ccf                                              ; $53e3: $3f
	inc [hl]                                         ; $53e4: $34
	xor $ff                                          ; $53e5: $ee $ff
	ld [hl], e                                       ; $53e7: $73
	ld e, a                                          ; $53e8: $5f
	ld [hl], d                                       ; $53e9: $72
	ld a, $28                                        ; $53ea: $3e $28
	xor e                                            ; $53ec: $ab
	ccf                                              ; $53ed: $3f
	ld b, e                                          ; $53ee: $43
	call nz, $007d                                   ; $53ef: $c4 $7d $00
	nop                                              ; $53f2: $00
	ccf                                              ; $53f3: $3f
	ld b, e                                          ; $53f4: $43
	inc c                                            ; $53f5: $0c
	dec l                                            ; $53f6: $2d
	nop                                              ; $53f7: $00
	inc b                                            ; $53f8: $04
	xor $df                                          ; $53f9: $ee $df
	ld a, a                                          ; $53fb: $7f
	ret nz                                           ; $53fc: $c0

	ld a, [hl]                                       ; $53fd: $7e
	ld h, c                                          ; $53fe: $61
	ld a, l                                          ; $53ff: $7d
	rst AddAOntoHL                                          ; $5400: $ef
	rst SubAFromDE                                          ; $5401: $df
	ld a, a                                          ; $5402: $7f
	rst $38                                          ; $5403: $ff
	nop                                              ; $5404: $00
	ld h, c                                          ; $5405: $61
	ld a, l                                          ; $5406: $7d
	and b                                            ; $5407: $a0
	ld d, b                                          ; $5408: $50
	inc de                                           ; $5409: $13
	jr c, jr_010_540c                                ; $540a: $38 $00

jr_010_540c:
	nop                                              ; $540c: $00
	xor e                                            ; $540d: $ab
	ccf                                              ; $540e: $3f
	ld b, e                                          ; $540f: $43
	ld e, a                                          ; $5410: $5f
	ld b, b                                          ; $5411: $40
	nop                                              ; $5412: $00
	inc b                                            ; $5413: $04
	rst $38                                          ; $5414: $ff
	inc bc                                           ; $5415: $03
	ld e, a                                          ; $5416: $5f
	ld b, b                                          ; $5417: $40
	nop                                              ; $5418: $00
	inc b                                            ; $5419: $04
	xor e                                            ; $541a: $ab
	ccf                                              ; $541b: $3f
	ld b, e                                          ; $541c: $43
	ld a, a                                          ; $541d: $7f
	rrca                                             ; $541e: $0f
	nop                                              ; $541f: $00
	inc b                                            ; $5420: $04
	ccf                                              ; $5421: $3f
	ld b, e                                          ; $5422: $43
	ldh [c], a                                       ; $5423: $e2
	ld a, c                                          ; $5424: $79
	nop                                              ; $5425: $00
	inc b                                            ; $5426: $04
	xor e                                            ; $5427: $ab
	ccf                                              ; $5428: $3f
	ld b, e                                          ; $5429: $43
	or $25                                           ; $542a: $f6 $25
	nop                                              ; $542c: $00
	inc b                                            ; $542d: $04
	ccf                                              ; $542e: $3f
	ld b, e                                          ; $542f: $43
	rra                                              ; $5430: $1f
	ld b, c                                          ; $5431: $41
	nop                                              ; $5432: $00
	inc b                                            ; $5433: $04
	call z, Call_010_7bdc                            ; $5434: $cc $dc $7b
	rra                                              ; $5437: $1f
	ld a, [hl]                                       ; $5438: $7e
	nop                                              ; $5439: $00
	nop                                              ; $543a: $00
	adc c                                            ; $543b: $89
	ccf                                              ; $543c: $3f
	ld b, e                                          ; $543d: $43
	ld l, e                                          ; $543e: $6b
	dec l                                            ; $543f: $2d
	nop                                              ; $5440: $00
	inc b                                            ; $5441: $04
	ccf                                              ; $5442: $3f
	ld b, e                                          ; $5443: $43
	ld e, a                                          ; $5444: $5f
	inc de                                           ; $5445: $13
	nop                                              ; $5446: $00
	inc b                                            ; $5447: $04
	adc c                                            ; $5448: $89
	ccf                                              ; $5449: $3f
	ld b, e                                          ; $544a: $43
	ld l, e                                          ; $544b: $6b
	dec l                                            ; $544c: $2d
	nop                                              ; $544d: $00
	inc b                                            ; $544e: $04
	ccf                                              ; $544f: $3f
	ld b, e                                          ; $5450: $43
	add c                                            ; $5451: $81
	ld l, [hl]                                       ; $5452: $6e
	nop                                              ; $5453: $00
	inc b                                            ; $5454: $04
	db $dd                                           ; $5455: $dd
	rst SubAFromDE                                          ; $5456: $df
	ld d, e                                          ; $5457: $53
	ld [de], a                                       ; $5458: $12
	inc [hl]                                         ; $5459: $34
	nop                                              ; $545a: $00
	inc b                                            ; $545b: $04
	adc c                                            ; $545c: $89
	ccf                                              ; $545d: $3f
	ld b, e                                          ; $545e: $43
	ld l, e                                          ; $545f: $6b
	dec l                                            ; $5460: $2d
	nop                                              ; $5461: $00
	inc b                                            ; $5462: $04
	rst SubAFromDE                                          ; $5463: $df
	ld [hl], e                                       ; $5464: $73
	inc [hl]                                         ; $5465: $34
	ld sp, $0400                                     ; $5466: $31 $00 $04
	call $3134                                       ; $5469: $cd $34 $31
	jr nz, jr_010_54d7                               ; $546c: $20 $69

	nop                                              ; $546e: $00
	inc b                                            ; $546f: $04
	rst SubAFromDE                                          ; $5470: $df
	ld [hl], e                                       ; $5471: $73
	rra                                              ; $5472: $1f
	jr nz, jr_010_5475                               ; $5473: $20 $00

jr_010_5475:
	inc b                                            ; $5475: $04
	adc c                                            ; $5476: $89
	ccf                                              ; $5477: $3f
	ld b, e                                          ; $5478: $43
	ld l, e                                          ; $5479: $6b
	dec l                                            ; $547a: $2d
	nop                                              ; $547b: $00
	inc b                                            ; $547c: $04
	ccf                                              ; $547d: $3f
	ld b, e                                          ; $547e: $43
	add c                                            ; $547f: $81
	ld l, [hl]                                       ; $5480: $6e
	nop                                              ; $5481: $00
	inc b                                            ; $5482: $04
	call z, Call_010_433f                            ; $5483: $cc $3f $43
	inc e                                            ; $5486: $1c
	ld a, [de]                                       ; $5487: $1a
	nop                                              ; $5488: $00
	inc b                                            ; $5489: $04
	adc c                                            ; $548a: $89
	ccf                                              ; $548b: $3f

jr_010_548c:
	ld b, e                                          ; $548c: $43
	ld l, e                                          ; $548d: $6b
	dec l                                            ; $548e: $2d
	nop                                              ; $548f: $00
	inc b                                            ; $5490: $04
	ccf                                              ; $5491: $3f
	ld b, e                                          ; $5492: $43
	push af                                          ; $5493: $f5
	inc d                                            ; $5494: $14
	nop                                              ; $5495: $00
	inc b                                            ; $5496: $04
	call z, Call_010_7714                            ; $5497: $cc $14 $77
	ld h, b                                          ; $549a: $60
	ld a, [hl]                                       ; $549b: $7e
	xor e                                            ; $549c: $ab
	ld d, c                                          ; $549d: $51
	adc b                                            ; $549e: $88
	ccf                                              ; $549f: $3f
	ld b, e                                          ; $54a0: $43
	ld l, e                                          ; $54a1: $6b
	dec l                                            ; $54a2: $2d
	nop                                              ; $54a3: $00
	inc b                                            ; $54a4: $04
	call Call_010_7fdf                               ; $54a5: $cd $df $7f
	dec h                                            ; $54a8: $25
	ld b, l                                          ; $54a9: $45
	and c                                            ; $54aa: $a1
	jr z, jr_010_548c                                ; $54ab: $28 $df

	ld a, a                                          ; $54ad: $7f
	jr c, @+$80                                      ; $54ae: $38 $7e

	nop                                              ; $54b0: $00
	inc b                                            ; $54b1: $04
	adc c                                            ; $54b2: $89
	ccf                                              ; $54b3: $3f
	ld b, e                                          ; $54b4: $43
	ld l, e                                          ; $54b5: $6b
	dec l                                            ; $54b6: $2d
	nop                                              ; $54b7: $00
	inc b                                            ; $54b8: $04
	ccf                                              ; $54b9: $3f
	ld b, e                                          ; $54ba: $43
	rra                                              ; $54bb: $1f
	nop                                              ; $54bc: $00
	nop                                              ; $54bd: $00
	inc b                                            ; $54be: $04
	call $1dde                                       ; $54bf: $cd $de $1d
	rra                                              ; $54c2: $1f
	nop                                              ; $54c3: $00
	nop                                              ; $54c4: $00
	nop                                              ; $54c5: $00
	call c, $c07b                                    ; $54c6: $dc $7b $c0
	ld [hl], l                                       ; $54c9: $75
	and c                                            ; $54ca: $a1
	ld a, b                                          ; $54cb: $78
	adc c                                            ; $54cc: $89
	ccf                                              ; $54cd: $3f
	ld b, e                                          ; $54ce: $43
	ld l, e                                          ; $54cf: $6b
	dec l                                            ; $54d0: $2d
	nop                                              ; $54d1: $00
	inc b                                            ; $54d2: $04
	ccf                                              ; $54d3: $3f
	ld b, e                                          ; $54d4: $43
	cp e                                             ; $54d5: $bb
	dec c                                            ; $54d6: $0d

jr_010_54d7:
	nop                                              ; $54d7: $00
	inc b                                            ; $54d8: $04
	sbc c                                            ; $54d9: $99
	rst $38                                          ; $54da: $ff
	ld a, e                                          ; $54db: $7b
	ld e, a                                          ; $54dc: $5f
	ld bc, $041f                                     ; $54dd: $01 $1f $04
	call Call_010_5ef7                               ; $54e0: $cd $f7 $5e
	ldh [$7c], a                                     ; $54e3: $e0 $7c
	nop                                              ; $54e5: $00
	inc b                                            ; $54e6: $04
	cp $7b                                           ; $54e7: $fe $7b
	rst GetHLinHL                                          ; $54e9: $cf
	ld b, h                                          ; $54ea: $44
	nop                                              ; $54eb: $00
	inc b                                            ; $54ec: $04
	db $dd                                           ; $54ed: $dd
	cp $7b                                           ; $54ee: $fe $7b
	sub $79                                          ; $54f0: $d6 $79
	nop                                              ; $54f2: $00
	inc b                                            ; $54f3: $04
	db $dd                                           ; $54f4: $dd
	ld [hl], $7f                                     ; $54f5: $36 $7f
	adc e                                            ; $54f7: $8b
	ld l, $00                                        ; $54f8: $2e $00
	inc b                                            ; $54fa: $04
	adc b                                            ; $54fb: $88
	ccf                                              ; $54fc: $3f
	ld b, e                                          ; $54fd: $43
	ld l, e                                          ; $54fe: $6b
	dec l                                            ; $54ff: $2d
	nop                                              ; $5500: $00
	inc b                                            ; $5501: $04
	call Call_010_7dc6                               ; $5502: $cd $c6 $7d
	and c                                            ; $5505: $a1
	ld a, b                                          ; $5506: $78
	nop                                              ; $5507: $00
	ld b, b                                          ; $5508: $40
	call c, $c07b                                    ; $5509: $dc $7b $c0
	ld [hl], l                                       ; $550c: $75
	and c                                            ; $550d: $a1
	ld a, b                                          ; $550e: $78
	adc c                                            ; $550f: $89
	ccf                                              ; $5510: $3f
	ld b, e                                          ; $5511: $43
	ld l, e                                          ; $5512: $6b
	dec l                                            ; $5513: $2d
	nop                                              ; $5514: $00
	inc b                                            ; $5515: $04
	ccf                                              ; $5516: $3f
	ld b, e                                          ; $5517: $43
	dec c                                            ; $5518: $0d
	ld a, e                                          ; $5519: $7b
	nop                                              ; $551a: $00
	inc b                                            ; $551b: $04
	call z, $02df                                    ; $551c: $cc $df $02
	cp a                                             ; $551f: $bf
	dec c                                            ; $5520: $0d
	rra                                              ; $5521: $1f
	inc b                                            ; $5522: $04
	adc c                                            ; $5523: $89
	ccf                                              ; $5524: $3f
	ld b, e                                          ; $5525: $43
	ld [$007d], a                                    ; $5526: $ea $7d $00
	inc b                                            ; $5529: $04
	ld a, c                                          ; $552a: $79
	ld [hl], a                                       ; $552b: $77
	db $db                                           ; $552c: $db
	ld hl, $0400                                     ; $552d: $21 $00 $04
	call Call_010_7bdf                               ; $5530: $cd $df $7b
	xor [hl]                                         ; $5533: $ae
	ld e, c                                          ; $5534: $59
	nop                                              ; $5535: $00
	inc b                                            ; $5536: $04
	rst SubAFromDE                                          ; $5537: $df
	ld l, a                                          ; $5538: $6f
	ld a, [de]                                       ; $5539: $1a
	nop                                              ; $553a: $00
	nop                                              ; $553b: $00
	inc b                                            ; $553c: $04
	adc b                                            ; $553d: $88
	ld a, c                                          ; $553e: $79
	ld a, a                                          ; $553f: $7f
	ld l, e                                          ; $5540: $6b
	ld l, c                                          ; $5541: $69
	add h                                            ; $5542: $84
	db $10                                           ; $5543: $10
	adc l                                            ; $5544: $8d
	ld a, a                                          ; $5545: $7f
	ld c, e                                          ; $5546: $4b
	ld e, h                                          ; $5547: $5c
	ld e, $37                                        ; $5548: $1e $37
	dec l                                            ; $554a: $2d
	ccf                                              ; $554b: $3f
	ld b, [hl]                                       ; $554c: $46
	ld e, h                                          ; $554d: $5c
	ld e, $bb                                        ; $554e: $1e $bb
	dec [hl]                                         ; $5550: $35
	scf                                              ; $5551: $37
	dec l                                            ; $5552: $2d
	ld [$003d], sp                                   ; $5553: $08 $3d $00
	nop                                              ; $5556: $00
	db $fd                                           ; $5557: $fd
	ld a, a                                          ; $5558: $7f
	sub $5a                                          ; $5559: $d6 $5a
	ld c, d                                          ; $555b: $4a
	add hl, hl                                       ; $555c: $29
	adc l                                            ; $555d: $8d
	ld c, [hl]                                       ; $555e: $4e
	sbc a                                            ; $555f: $9f
	ld a, [bc]                                       ; $5560: $0a
	add l                                            ; $5561: $85
	dec l                                            ; $5562: $2d
	ld d, d                                          ; $5563: $52
	ld c, d                                          ; $5564: $4a
	ld c, d                                          ; $5565: $4a
	add hl, hl                                       ; $5566: $29
	nop                                              ; $5567: $00
	nop                                              ; $5568: $00
	adc e                                            ; $5569: $8b
	jp c, $8c7f                                      ; $556a: $da $7f $8c

	ld c, l                                          ; $556d: $4d
	rst SubAFromDE                                          ; $556e: $df
	db $10                                           ; $556f: $10
	rra                                              ; $5570: $1f
	ccf                                              ; $5571: $3f
	rra                                              ; $5572: $1f
	inc hl                                           ; $5573: $23
	ld d, [hl]                                       ; $5574: $56
	dec d                                            ; $5575: $15
	sbc a                                            ; $5576: $9f
	ld c, c                                          ; $5577: $49
	or [hl]                                          ; $5578: $b6
	inc h                                            ; $5579: $24
	nop                                              ; $557a: $00
	nop                                              ; $557b: $00
	sub $5a                                          ; $557c: $d6 $5a
	ld c, d                                          ; $557e: $4a
	add hl, hl                                       ; $557f: $29
	nop                                              ; $5580: $00
	nop                                              ; $5581: $00
	adc [hl]                                         ; $5582: $8e
	ccf                                              ; $5583: $3f
	rlca                                             ; $5584: $07
	sbc [hl]                                         ; $5585: $9e
	ld bc, $00d1                                     ; $5586: $01 $d1 $00
	db $fd                                           ; $5589: $fd
	ld a, a                                          ; $558a: $7f
	ld d, d                                          ; $558b: $52
	ld c, d                                          ; $558c: $4a
	nop                                              ; $558d: $00
	nop                                              ; $558e: $00
	rra                                              ; $558f: $1f
	inc hl                                           ; $5590: $23
	ld e, a                                          ; $5591: $5f
	ld [bc], a                                       ; $5592: $02
	ld e, c                                          ; $5593: $59
	ld bc, $4fff                                     ; $5594: $01 $ff $4f
	ld e, a                                          ; $5597: $5f
	ld [bc], a                                       ; $5598: $02
	pop de                                           ; $5599: $d1
	nop                                              ; $559a: $00
	ei                                               ; $559b: $fb
	ld l, a                                          ; $559c: $6f
	adc [hl]                                         ; $559d: $8e
	ld c, e                                          ; $559e: $4b
	ld bc, $521d                                     ; $559f: $01 $1d $52
	ld c, d                                          ; $55a2: $4a
	sbc a                                            ; $55a3: $9f
	inc c                                            ; $55a4: $0c
	nop                                              ; $55a5: $00
	nop                                              ; $55a6: $00
	ld [hl], l                                       ; $55a7: $75
	ld a, a                                          ; $55a8: $7f
	ld c, l                                          ; $55a9: $4d
	ld a, [hl]                                       ; $55aa: $7e
	nop                                              ; $55ab: $00
	nop                                              ; $55ac: $00
	adc d                                            ; $55ad: $8a
	db $fd                                           ; $55ae: $fd
	ld a, a                                          ; $55af: $7f
	ld d, d                                          ; $55b0: $52
	ld c, d                                          ; $55b1: $4a
	nop                                              ; $55b2: $00
	nop                                              ; $55b3: $00
	db $ed                                           ; $55b4: $ed
	daa                                              ; $55b5: $27
	ld b, a                                          ; $55b6: $47
	rla                                              ; $55b7: $17
	rst SubAFromDE                                          ; $55b8: $df
	db $10                                           ; $55b9: $10
	or b                                             ; $55ba: $b0
	ld a, [hl]                                       ; $55bb: $7e
	ccf                                              ; $55bc: $3f
	rlca                                             ; $55bd: $07
	ld h, [hl]                                       ; $55be: $66
	ld a, l                                          ; $55bf: $7d
	adc [hl]                                         ; $55c0: $8e
	ld e, d                                          ; $55c1: $5a
	ld l, e                                          ; $55c2: $6b
	sub $5a                                          ; $55c3: $d6 $5a
	adc $39                                          ; $55c5: $ce $39
	db $fd                                           ; $55c7: $fd
	ld a, a                                          ; $55c8: $7f
	rst SubAFromDE                                          ; $55c9: $df
	stop                                             ; $55ca: $10 $00
	nop                                              ; $55cc: $00
	ld h, [hl]                                       ; $55cd: $66
	ld a, l                                          ; $55ce: $7d
	ld b, c                                          ; $55cf: $41
	ld a, h                                          ; $55d0: $7c
	nop                                              ; $55d1: $00
	nop                                              ; $55d2: $00
	ccf                                              ; $55d3: $3f
	rlca                                             ; $55d4: $07
	ld b, b                                          ; $55d5: $40
	ld d, $4a                                        ; $55d6: $16 $4a
	add hl, hl                                       ; $55d8: $29
	ld e, h                                          ; $55d9: $5c
	ld e, $ba                                        ; $55da: $1e $ba
	dec c                                            ; $55dc: $0d
	dec [hl]                                         ; $55dd: $35
	dec c                                            ; $55de: $0d
	ccf                                              ; $55df: $3f
	rlca                                             ; $55e0: $07
	add h                                            ; $55e1: $84
	db $10                                           ; $55e2: $10
	dec [hl]                                         ; $55e3: $35
	dec c                                            ; $55e4: $0d
	ld h, [hl]                                       ; $55e5: $66
	ld a, l                                          ; $55e6: $7d
	ld b, a                                          ; $55e7: $47
	rla                                              ; $55e8: $17
	ldh [$09], a                                     ; $55e9: $e0 $09
	adc l                                            ; $55eb: $8d
	db $fd                                           ; $55ec: $fd
	ld a, a                                          ; $55ed: $7f
	sbc a                                            ; $55ee: $9f
	ld h, d                                          ; $55ef: $62
	ld a, a                                          ; $55f0: $7f
	ld b, l                                          ; $55f1: $45
	ccf                                              ; $55f2: $3f
	rlca                                             ; $55f3: $07
	ld h, [hl]                                       ; $55f4: $66
	ld a, l                                          ; $55f5: $7d
	and e                                            ; $55f6: $a3
	ld a, h                                          ; $55f7: $7c
	cp a                                             ; $55f8: $bf
	ld [hl-], a                                      ; $55f9: $32
	ld a, a                                          ; $55fa: $7f
	ld bc, $7e4d                                     ; $55fb: $01 $4d $7e
	ld e, d                                          ; $55fe: $5a
	ld l, e                                          ; $55ff: $6b
	adc $39                                          ; $5600: $ce $39
	nop                                              ; $5602: $00
	nop                                              ; $5603: $00
	rra                                              ; $5604: $1f
	ld d, [hl]                                       ; $5605: $56
	ld c, e                                          ; $5606: $4b
	ld d, l                                          ; $5607: $55
	xor b                                            ; $5608: $a8
	ld c, b                                          ; $5609: $48
	rra                                              ; $560a: $1f
	ccf                                              ; $560b: $3f
	inc de                                           ; $560c: $13
	dec c                                            ; $560d: $0d
	add l                                            ; $560e: $85
	dec l                                            ; $560f: $2d
	adc l                                            ; $5610: $8d
	rra                                              ; $5611: $1f
	ld d, [hl]                                       ; $5612: $56
	ld e, c                                          ; $5613: $59
	ld bc, $00ad                                     ; $5614: $01 $ad $00
	db $fd                                           ; $5617: $fd
	ld a, a                                          ; $5618: $7f
	ld b, a                                          ; $5619: $47
	rla                                              ; $561a: $17
	rst AddAOntoHL                                          ; $561b: $ef
	ld l, c                                          ; $561c: $69
	cp [hl]                                          ; $561d: $be
	ld c, $4a                                        ; $561e: $0e $4a
	add hl, hl                                       ; $5620: $29
	add $18                                          ; $5621: $c6 $18
	db $f4                                           ; $5623: $f4
	ld a, [hl]                                       ; $5624: $7e
	adc d                                            ; $5625: $8a
	ld c, d                                          ; $5626: $4a
	rra                                              ; $5627: $1f
	nop                                              ; $5628: $00
	cp [hl]                                          ; $5629: $be
	ld c, $2c                                        ; $562a: $0e $2c
	ld h, c                                          ; $562c: $61
	add $18                                          ; $562d: $c6 $18
	sbc a                                            ; $562f: $9f
	ld h, d                                          ; $5630: $62
	adc a                                            ; $5631: $8f
	ld a, [hl]                                       ; $5632: $7e
	rra                                              ; $5633: $1f
	ld d, [hl]                                       ; $5634: $56
	adc a                                            ; $5635: $8f
	ld a, $43                                        ; $5636: $3e $43
	ld e, d                                          ; $5638: $5a
	ld a, a                                          ; $5639: $7f
	add hl, hl                                       ; $563a: $29
	ld b, c                                          ; $563b: $41
	rst SubAFromDE                                          ; $563c: $df
	ld l, d                                          ; $563d: $6a
	rst SubAFromDE                                          ; $563e: $df
	ld d, c                                          ; $563f: $51
	or d                                             ; $5640: $b2
	nop                                              ; $5641: $00
	ld a, a                                          ; $5642: $7f
	ld c, e                                          ; $5643: $4b
	ld e, h                                          ; $5644: $5c
	ld e, $37                                        ; $5645: $1e $37
	dec l                                            ; $5647: $2d
	ld e, a                                          ; $5648: $5f
	ld a, $5f                                        ; $5649: $3e $5f
	ld hl, $10df                                     ; $564b: $21 $df $10
	ret z                                            ; $564e: $c8

	ld a, l                                          ; $564f: $7d
	ld h, [hl]                                       ; $5650: $66
	ld a, l                                          ; $5651: $7d
	ld b, c                                          ; $5652: $41
	ld a, h                                          ; $5653: $7c
	ld e, a                                          ; $5654: $5f
	ld a, $ce                                        ; $5655: $3e $ce
	ld h, l                                          ; $5657: $65
	add l                                            ; $5658: $85
	dec l                                            ; $5659: $2d
	ld a, $43                                        ; $565a: $3e $43
	sbc l                                            ; $565c: $9d
	ld e, $15                                        ; $565d: $1e $15
	ld bc, $6adf                                     ; $565f: $01 $df $6a
	rst SubAFromDE                                          ; $5662: $df
	ld d, c                                          ; $5663: $51
	adc c                                            ; $5664: $89
	inc c                                            ; $5665: $0c
	adc d                                            ; $5666: $8a
	db $fd                                           ; $5667: $fd
	ld a, a                                          ; $5668: $7f
	rst SubAFromDE                                          ; $5669: $df
	db $10                                           ; $566a: $10
	add hl, bc                                       ; $566b: $09
	ld a, $3f                                        ; $566c: $3e $3f
	rlca                                             ; $566e: $07
	rst SubAFromDE                                          ; $566f: $df
	stop                                             ; $5670: $10 $00
	nop                                              ; $5672: $00
	db $fd                                           ; $5673: $fd
	ld a, a                                          ; $5674: $7f
	ld c, l                                          ; $5675: $4d
	ld a, [hl]                                       ; $5676: $7e
	ld b, $2b                                        ; $5677: $06 $2b
	rst GetHLinHL                                          ; $5679: $cf
	ccf                                              ; $567a: $3f
	ld b, e                                          ; $567b: $43
	ld l, e                                          ; $567c: $6b
	dec l                                            ; $567d: $2d
	nop                                              ; $567e: $00
	nop                                              ; $567f: $00
	rst $38                                          ; $5680: $ff
	ld a, a                                          ; $5681: $7f
	call nz, $007d                                   ; $5682: $c4 $7d $00
	nop                                              ; $5685: $00
	rst $38                                          ; $5686: $ff
	ld a, a                                          ; $5687: $7f
	ccf                                              ; $5688: $3f
	ld b, e                                          ; $5689: $43
	nop                                              ; $568a: $00
	nop                                              ; $568b: $00
	ccf                                              ; $568c: $3f
	ld b, e                                          ; $568d: $43
	call nz, $007d                                   ; $568e: $c4 $7d $00
	nop                                              ; $5691: $00
	rst GetHLinHL                                          ; $5692: $cf
	ccf                                              ; $5693: $3f
	ld b, e                                          ; $5694: $43
	ld a, a                                          ; $5695: $7f
	jr nz, jr_010_5698                               ; $5696: $20 $00

jr_010_5698:
	nop                                              ; $5698: $00
	rst $38                                          ; $5699: $ff
	ld a, a                                          ; $569a: $7f
	call nz, $007d                                   ; $569b: $c4 $7d $00
	nop                                              ; $569e: $00
	rst $38                                          ; $569f: $ff
	ld a, a                                          ; $56a0: $7f
	ccf                                              ; $56a1: $3f
	ld b, e                                          ; $56a2: $43
	nop                                              ; $56a3: $00
	nop                                              ; $56a4: $00
	ccf                                              ; $56a5: $3f
	ld b, e                                          ; $56a6: $43
	call nz, $007d                                   ; $56a7: $c4 $7d $00
	nop                                              ; $56aa: $00
	rst GetHLinHL                                          ; $56ab: $cf
	ccf                                              ; $56ac: $3f
	ld b, e                                          ; $56ad: $43
	ld l, e                                          ; $56ae: $6b
	dec l                                            ; $56af: $2d
	nop                                              ; $56b0: $00
	nop                                              ; $56b1: $00
	ccf                                              ; $56b2: $3f
	ld b, e                                          ; $56b3: $43
	ld a, a                                          ; $56b4: $7f
	ld hl, $0000                                     ; $56b5: $21 $00 $00
	ccf                                              ; $56b8: $3f
	ld b, e                                          ; $56b9: $43
	add c                                            ; $56ba: $81
	ld l, [hl]                                       ; $56bb: $6e
	nop                                              ; $56bc: $00
	nop                                              ; $56bd: $00
	ccf                                              ; $56be: $3f
	ld b, e                                          ; $56bf: $43
	ld a, a                                          ; $56c0: $7f
	jr nz, jr_010_56c3                               ; $56c1: $20 $00

jr_010_56c3:
	nop                                              ; $56c3: $00
	rst GetHLinHL                                          ; $56c4: $cf
	ccf                                              ; $56c5: $3f
	ld b, e                                          ; $56c6: $43
	db $fc                                           ; $56c7: $fc
	ld [bc], a                                       ; $56c8: $02
	nop                                              ; $56c9: $00
	nop                                              ; $56ca: $00
	ccf                                              ; $56cb: $3f
	ld b, e                                          ; $56cc: $43
	add b                                            ; $56cd: $80
	ld a, [hl]                                       ; $56ce: $7e
	nop                                              ; $56cf: $00
	nop                                              ; $56d0: $00
	ccf                                              ; $56d1: $3f
	ld b, a                                          ; $56d2: $47
	ret nz                                           ; $56d3: $c0

	ld h, $00                                        ; $56d4: $26 $00
	nop                                              ; $56d6: $00
	ccf                                              ; $56d7: $3f
	ld b, e                                          ; $56d8: $43
	ld a, a                                          ; $56d9: $7f
	jr nz, jr_010_56dc                               ; $56da: $20 $00

jr_010_56dc:
	nop                                              ; $56dc: $00
	rst GetHLinHL                                          ; $56dd: $cf
	ccf                                              ; $56de: $3f
	ld b, e                                          ; $56df: $43
	ld l, e                                          ; $56e0: $6b
	dec l                                            ; $56e1: $2d
	nop                                              ; $56e2: $00
	nop                                              ; $56e3: $00
	add c                                            ; $56e4: $81
	ld l, [hl]                                       ; $56e5: $6e
	rra                                              ; $56e6: $1f
	nop                                              ; $56e7: $00
	nop                                              ; $56e8: $00
	nop                                              ; $56e9: $00
	ccf                                              ; $56ea: $3f
	ld b, e                                          ; $56eb: $43
	add c                                            ; $56ec: $81
	ld l, [hl]                                       ; $56ed: $6e
	nop                                              ; $56ee: $00
	nop                                              ; $56ef: $00
	ccf                                              ; $56f0: $3f
	ld b, e                                          ; $56f1: $43
	rra                                              ; $56f2: $1f
	nop                                              ; $56f3: $00
	nop                                              ; $56f4: $00
	nop                                              ; $56f5: $00
	rst GetHLinHL                                          ; $56f6: $cf
	ccf                                              ; $56f7: $3f
	ld b, e                                          ; $56f8: $43
	ld l, e                                          ; $56f9: $6b
	dec l                                            ; $56fa: $2d
	nop                                              ; $56fb: $00
	nop                                              ; $56fc: $00
	add c                                            ; $56fd: $81
	ld l, [hl]                                       ; $56fe: $6e
	add [hl]                                         ; $56ff: $86
	ld c, d                                          ; $5700: $4a
	nop                                              ; $5701: $00
	nop                                              ; $5702: $00
	ccf                                              ; $5703: $3f
	ld b, e                                          ; $5704: $43
	add c                                            ; $5705: $81
	ld l, [hl]                                       ; $5706: $6e
	nop                                              ; $5707: $00
	nop                                              ; $5708: $00
	ccf                                              ; $5709: $3f
	ld b, e                                          ; $570a: $43
	add [hl]                                         ; $570b: $86
	ld c, d                                          ; $570c: $4a
	nop                                              ; $570d: $00
	nop                                              ; $570e: $00
	rst GetHLinHL                                          ; $570f: $cf
	ccf                                              ; $5710: $3f
	ld b, e                                          ; $5711: $43
	ld l, e                                          ; $5712: $6b
	dec l                                            ; $5713: $2d
	nop                                              ; $5714: $00
	nop                                              ; $5715: $00
	rst $38                                          ; $5716: $ff
	ld a, a                                          ; $5717: $7f
	call nz, $007d                                   ; $5718: $c4 $7d $00
	nop                                              ; $571b: $00
	rst $38                                          ; $571c: $ff
	ld a, a                                          ; $571d: $7f
	ccf                                              ; $571e: $3f
	ld b, e                                          ; $571f: $43
	nop                                              ; $5720: $00
	nop                                              ; $5721: $00
	ccf                                              ; $5722: $3f
	ld b, e                                          ; $5723: $43
	call nz, $007d                                   ; $5724: $c4 $7d $00
	nop                                              ; $5727: $00
	rst GetHLinHL                                          ; $5728: $cf
	ccf                                              ; $5729: $3f
	ld b, e                                          ; $572a: $43
	ld a, a                                          ; $572b: $7f
	jr nz, jr_010_572e                               ; $572c: $20 $00

jr_010_572e:
	nop                                              ; $572e: $00
	rst $38                                          ; $572f: $ff
	ld a, a                                          ; $5730: $7f
	call nz, $007d                                   ; $5731: $c4 $7d $00
	nop                                              ; $5734: $00
	rst $38                                          ; $5735: $ff
	ld a, a                                          ; $5736: $7f
	ccf                                              ; $5737: $3f
	ld b, e                                          ; $5738: $43
	nop                                              ; $5739: $00
	nop                                              ; $573a: $00
	ccf                                              ; $573b: $3f
	ld b, e                                          ; $573c: $43
	call nz, $007d                                   ; $573d: $c4 $7d $00
	nop                                              ; $5740: $00
	adc a                                            ; $5741: $8f
	ld d, $67                                        ; $5742: $16 $67
	rst $38                                          ; $5744: $ff
	rla                                              ; $5745: $17
	cp a                                             ; $5746: $bf
	inc d                                            ; $5747: $14
	push hl                                          ; $5748: $e5
	rla                                              ; $5749: $17
	rst $38                                          ; $574a: $ff
	rla                                              ; $574b: $17
	cp a                                             ; $574c: $bf
	inc d                                            ; $574d: $14
	push hl                                          ; $574e: $e5
	rla                                              ; $574f: $17
	add h                                            ; $5750: $84
	ld a, a                                          ; $5751: $7f
	ld a, a                                          ; $5752: $7f
	ld [de], a                                       ; $5753: $12
	ld a, a                                          ; $5754: $7f
	ld [de], a                                       ; $5755: $12
	add h                                            ; $5756: $84
	ld a, a                                          ; $5757: $7f
	ret c                                            ; $5758: $d8

	ld a, h                                          ; $5759: $7c
	ldh [$34], a                                     ; $575a: $e0 $34
	ld c, a                                          ; $575c: $4f
	nop                                              ; $575d: $00
	ldh [rP1], a                                     ; $575e: $e0 $00
	rra                                              ; $5760: $1f
	inc bc                                           ; $5761: $03
	rst $38                                          ; $5762: $ff
	ld bc, $017f                                     ; $5763: $01 $7f $01
	rra                                              ; $5766: $1f
	ld a, h                                          ; $5767: $7c
	rra                                              ; $5768: $1f
	ld a, h                                          ; $5769: $7c
	rra                                              ; $576a: $1f
	ld a, h                                          ; $576b: $7c
	rra                                              ; $576c: $1f
	ld a, h                                          ; $576d: $7c
	rra                                              ; $576e: $1f
	ld a, h                                          ; $576f: $7c
	rra                                              ; $5770: $1f
	ld a, h                                          ; $5771: $7c
	adc a                                            ; $5772: $8f
	add h                                            ; $5773: $84
	ld a, a                                          ; $5774: $7f
	rst $38                                          ; $5775: $ff
	rla                                              ; $5776: $17
	push hl                                          ; $5777: $e5
	rla                                              ; $5778: $17
	ld a, a                                          ; $5779: $7f
	ld [de], a                                       ; $577a: $12
	rst $38                                          ; $577b: $ff
	rla                                              ; $577c: $17
	cp a                                             ; $577d: $bf
	inc d                                            ; $577e: $14
	rra                                              ; $577f: $1f
	ld a, h                                          ; $5780: $7c
	rra                                              ; $5781: $1f
	ld a, h                                          ; $5782: $7c
	rra                                              ; $5783: $1f
	ld a, h                                          ; $5784: $7c
	rra                                              ; $5785: $1f
	ld a, h                                          ; $5786: $7c
	rra                                              ; $5787: $1f
	ld a, h                                          ; $5788: $7c
	rra                                              ; $5789: $1f
	ld a, h                                          ; $578a: $7c
	ldh [$34], a                                     ; $578b: $e0 $34
	ld c, a                                          ; $578d: $4f
	nop                                              ; $578e: $00
	ldh [rP1], a                                     ; $578f: $e0 $00
	rra                                              ; $5791: $1f
	inc bc                                           ; $5792: $03
	rst $38                                          ; $5793: $ff
	ld bc, $017f                                     ; $5794: $01 $7f $01
	rra                                              ; $5797: $1f
	ld a, h                                          ; $5798: $7c
	rra                                              ; $5799: $1f
	ld a, h                                          ; $579a: $7c
	rra                                              ; $579b: $1f
	ld a, h                                          ; $579c: $7c
	rra                                              ; $579d: $1f
	ld a, h                                          ; $579e: $7c
	rra                                              ; $579f: $1f
	ld a, h                                          ; $57a0: $7c
	rra                                              ; $57a1: $1f
	ld a, h                                          ; $57a2: $7c
	adc a                                            ; $57a3: $8f
	ldh [$03], a                                     ; $57a4: $e0 $03
	ldh [$03], a                                     ; $57a6: $e0 $03
	ldh [$03], a                                     ; $57a8: $e0 $03
	ldh [$03], a                                     ; $57aa: $e0 $03
	ldh [$03], a                                     ; $57ac: $e0 $03
	ldh [$03], a                                     ; $57ae: $e0 $03
	ldh [$03], a                                     ; $57b0: $e0 $03
	ldh [$03], a                                     ; $57b2: $e0 $03
	ldh [$03], a                                     ; $57b4: $e0 $03
	ldh [$03], a                                     ; $57b6: $e0 $03
	ldh [$03], a                                     ; $57b8: $e0 $03
	ldh [$03], a                                     ; $57ba: $e0 $03
	ld sp, hl                                        ; $57bc: $f9
	dec l                                            ; $57bd: $2d
	inc [hl]                                         ; $57be: $34
	dec d                                            ; $57bf: $15
	nop                                              ; $57c0: $00
	nop                                              ; $57c1: $00
	db $fc                                           ; $57c2: $fc
	ld a, a                                          ; $57c3: $7f
	rst AddAOntoHL                                          ; $57c4: $ef
	add hl, sp                                       ; $57c5: $39
	nop                                              ; $57c6: $00
	nop                                              ; $57c7: $00
	db $fc                                           ; $57c8: $fc
	ld a, a                                          ; $57c9: $7f
	ld a, a                                          ; $57ca: $7f
	jr nz, jr_010_57cd                               ; $57cb: $20 $00

jr_010_57cd:
	nop                                              ; $57cd: $00
	ccf                                              ; $57ce: $3f
	ld b, e                                          ; $57cf: $43
	rst AddAOntoHL                                          ; $57d0: $ef
	add hl, sp                                       ; $57d1: $39
	nop                                              ; $57d2: $00
	nop                                              ; $57d3: $00
	adc a                                            ; $57d4: $8f
	ld c, [hl]                                       ; $57d5: $4e
	ld a, a                                          ; $57d6: $7f
	ld [$0039], sp                                   ; $57d7: $08 $39 $00
	nop                                              ; $57da: $00
	ld c, [hl]                                       ; $57db: $4e
	ld a, a                                          ; $57dc: $7f
	ldh [$7d], a                                     ; $57dd: $e0 $7d
	nop                                              ; $57df: $00
	nop                                              ; $57e0: $00
	rst $38                                          ; $57e1: $ff
	ld a, a                                          ; $57e2: $7f
	sub e                                            ; $57e3: $93
	ld d, d                                          ; $57e4: $52
	nop                                              ; $57e5: $00
	nop                                              ; $57e6: $00
	rst $38                                          ; $57e7: $ff
	ld a, a                                          ; $57e8: $7f
	add b                                            ; $57e9: $80
	ld d, b                                          ; $57ea: $50
	nop                                              ; $57eb: $00
	nop                                              ; $57ec: $00
	ld [bc], a                                       ; $57ed: $02
	ld bc, $0104                                ; $57ee: $01 $04 $01
	ld b, $01                                        ; $57f1: $06 $01
	ld b, d                                          ; $57f3: $42
	ld bc, $0144                     ; $57f4: $01 $44 $01
	ld b, [hl]                                       ; $57f7: $46
	ld bc, $0182                                     ; $57f8: $01 $82 $01
	add h                                            ; $57fb: $84
	ld bc, $0186                                     ; $57fc: $01 $86 $01
	jp nz, $c401                                     ; $57ff: $c2 $01 $c4

	ld bc, $01c6                                     ; $5802: $01 $c6 $01
	adc a                                            ; $5805: $8f
	adc c                                            ; $5806: $89
	cpl                                              ; $5807: $2f
	add h                                            ; $5808: $84
	dec l                                            ; $5809: $2d
	nop                                              ; $580a: $00
	nop                                              ; $580b: $00
	adc c                                            ; $580c: $89
	cpl                                              ; $580d: $2f
	add b                                            ; $580e: $80
	ld a, [hl]                                       ; $580f: $7e
	nop                                              ; $5810: $00
	nop                                              ; $5811: $00
	rst $38                                          ; $5812: $ff
	ld a, a                                          ; $5813: $7f
	sub e                                            ; $5814: $93
	ld d, d                                          ; $5815: $52
	nop                                              ; $5816: $00
	nop                                              ; $5817: $00
	rst $38                                          ; $5818: $ff
	ld a, a                                          ; $5819: $7f
	ret nz                                           ; $581a: $c0

	dec d                                            ; $581b: $15
	nop                                              ; $581c: $00
	nop                                              ; $581d: $00
	ld [bc], a                                       ; $581e: $02
	ld bc, $0104                                ; $581f: $01 $04 $01
	ld b, $01                                        ; $5822: $06 $01
	ld b, d                                          ; $5824: $42
	ld bc, $0144                     ; $5825: $01 $44 $01
	ld b, [hl]                                       ; $5828: $46
	ld bc, $0182                                     ; $5829: $01 $82 $01
	add h                                            ; $582c: $84
	ld bc, $0186                                     ; $582d: $01 $86 $01
	jp nz, $c401                                     ; $5830: $c2 $01 $c4

	ld bc, $01c6                                     ; $5833: $01 $c6 $01
	adc a                                            ; $5836: $8f
	rst SubAFromDE                                          ; $5837: $df
	ld hl, $2db2                                     ; $5838: $21 $b2 $2d
	nop                                              ; $583b: $00
	nop                                              ; $583c: $00
	rst SubAFromDE                                          ; $583d: $df
	ld hl, $7e80                                     ; $583e: $21 $80 $7e
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	rst $38                                          ; $5843: $ff
	ld a, a                                          ; $5844: $7f
	sub e                                            ; $5845: $93
	ld d, d                                          ; $5846: $52
	nop                                              ; $5847: $00
	nop                                              ; $5848: $00
	rst $38                                          ; $5849: $ff
	ld a, a                                          ; $584a: $7f
	dec d                                            ; $584b: $15
	jr jr_010_584e                                   ; $584c: $18 $00

jr_010_584e:
	nop                                              ; $584e: $00
	ld [bc], a                                       ; $584f: $02
	ld bc, $0104                                ; $5850: $01 $04 $01
	ld b, $01                                        ; $5853: $06 $01
	ld b, d                                          ; $5855: $42
	ld bc, $0144                     ; $5856: $01 $44 $01
	ld b, [hl]                                       ; $5859: $46
	ld bc, $0182                                     ; $585a: $01 $82 $01
	add h                                            ; $585d: $84
	ld bc, $0186                                     ; $585e: $01 $86 $01
	jp nz, $c401                                     ; $5861: $c2 $01 $c4

	ld bc, $01c6                                     ; $5864: $01 $c6 $01
	adc b                                            ; $5867: $88
	rst $38                                          ; $5868: $ff
	ld a, a                                          ; $5869: $7f
	rst AddAOntoHL                                          ; $586a: $ef
	ld a, a                                          ; $586b: $7f
	jr nz, jr_010_58ec                               ; $586c: $20 $7e

	ld bc, $571f                                     ; $586e: $01 $1f $57
	dec a                                            ; $5871: $3d
	ld b, d                                          ; $5872: $42
	ld h, l                                          ; $5873: $65
	ld e, c                                          ; $5874: $59
	nop                                              ; $5875: $00
	nop                                              ; $5876: $00
	rst $38                                          ; $5877: $ff
	ld a, a                                          ; $5878: $7f
	rst FarCall                                          ; $5879: $f7
	ld h, [hl]                                       ; $587a: $66
	add hl, hl                                       ; $587b: $29
	add hl, hl                                       ; $587c: $29
	nop                                              ; $587d: $00
	nop                                              ; $587e: $00
	ld bc, $0442                                     ; $587f: $01 $42 $04
	add hl, hl                                       ; $5882: $29
	add hl, hl                                       ; $5883: $29
	rst FarCall                                          ; $5884: $f7
	ld h, [hl]                                       ; $5885: $66
	rst $38                                          ; $5886: $ff
	ld a, a                                          ; $5887: $7f
	ld b, d                                          ; $5888: $42
	inc b                                            ; $5889: $04
	add hl, hl                                       ; $588a: $29
	add hl, hl                                       ; $588b: $29
	rst FarCall                                          ; $588c: $f7
	ld h, [hl]                                       ; $588d: $66
	rst $38                                          ; $588e: $ff
	ld a, a                                          ; $588f: $7f
	ld [bc], a                                       ; $5890: $02
	rst $38                                          ; $5891: $ff
	ld a, a                                          ; $5892: $7f
	ldh [$7d], a                                     ; $5893: $e0 $7d
	rrca                                             ; $5895: $0f
	ld b, h                                          ; $5896: $44
	nop                                              ; $5897: $00
	nop                                              ; $5898: $00
	ld l, c                                          ; $5899: $69
	ld b, l                                          ; $589a: $45
	and b                                            ; $589b: $a0
	ld a, h                                          ; $589c: $7c
	add hl, bc                                       ; $589d: $09
	jr z, jr_010_58a0                                ; $589e: $28 $00

jr_010_58a0:
	nop                                              ; $58a0: $00
	ldh [$03], a                                     ; $58a1: $e0 $03
	ldh [$7d], a                                     ; $58a3: $e0 $7d
	add hl, bc                                       ; $58a5: $09
	jr z, jr_010_58a8                                ; $58a6: $28 $00

jr_010_58a8:
	nop                                              ; $58a8: $00
	adc a                                            ; $58a9: $8f
	cp a                                             ; $58aa: $bf
	ld b, d                                          ; $58ab: $42
	cp d                                             ; $58ac: $ba
	inc d                                            ; $58ad: $14
	nop                                              ; $58ae: $00
	inc e                                            ; $58af: $1c
	rst SubAFromDE                                          ; $58b0: $df
	ld c, d                                          ; $58b1: $4a
	nop                                              ; $58b2: $00
	ld b, c                                          ; $58b3: $41
	ld b, e                                          ; $58b4: $43
	nop                                              ; $58b5: $00
	rst SubAFromDE                                          ; $58b6: $df
	ld c, d                                          ; $58b7: $4a
	db $10                                           ; $58b8: $10
	ld a, h                                          ; $58b9: $7c
	nop                                              ; $58ba: $00
	inc d                                            ; $58bb: $14
	rst SubAFromDE                                          ; $58bc: $df
	ld c, d                                          ; $58bd: $4a
	ccf                                              ; $58be: $3f
	ld [bc], a                                       ; $58bf: $02
	nop                                              ; $58c0: $00
	jr @-$1f                                         ; $58c1: $18 $df

	ld c, d                                          ; $58c3: $4a
	ld [hl], a                                       ; $58c4: $77
	nop                                              ; $58c5: $00
	ld b, e                                          ; $58c6: $43
	nop                                              ; $58c7: $00
	cp a                                             ; $58c8: $bf
	ld a, [hl-]                                      ; $58c9: $3a
	ret nz                                           ; $58ca: $c0

	ld bc, $1040                                     ; $58cb: $01 $40 $10
	ld a, [hl]                                       ; $58ce: $7e
	ld l, $34                                        ; $58cf: $2e $34
	ld bc, $0004                                     ; $58d1: $01 $04 $00
	rra                                              ; $58d4: $1f
	ld a, h                                          ; $58d5: $7c
	rra                                              ; $58d6: $1f
	ld a, h                                          ; $58d7: $7c
	rra                                              ; $58d8: $1f
	ld a, h                                          ; $58d9: $7c
	cp h                                             ; $58da: $bc
	jr jr_010_5940                                   ; $58db: $18 $63

	sbc h                                            ; $58dd: $9c
	ld a, [hl-]                                      ; $58de: $3a
	jr nz, jr_010_5902                               ; $58df: $20 $21

	jr jr_010_5946                                   ; $58e1: $18 $63

	sbc h                                            ; $58e3: $9c
	ld a, [hl-]                                      ; $58e4: $3a
	ld c, d                                          ; $58e5: $4a
	nop                                              ; $58e6: $00
	adc c                                            ; $58e7: $89
	rra                                              ; $58e8: $1f
	ld a, [hl+]                                      ; $58e9: $2a
	jr nz, jr_010_5901                               ; $58ea: $20 $15

jr_010_58ec:
	inc b                                            ; $58ec: $04
	nop                                              ; $58ed: $00
	rst $38                                          ; $58ee: $ff
	ld a, a                                          ; $58ef: $7f
	ld b, b                                          ; $58f0: $40
	ld a, h                                          ; $58f1: $7c
	inc b                                            ; $58f2: $04
	nop                                              ; $58f3: $00
	ld h, a                                          ; $58f4: $67
	sbc a                                            ; $58f5: $9f
	ld [hl], e                                       ; $58f6: $73
	ld b, b                                          ; $58f7: $40
	dec e                                            ; $58f8: $1d
	sub h                                            ; $58f9: $94
	ld bc, $0000                                     ; $58fa: $01 $00 $00
	sbc a                                            ; $58fd: $9f
	ld [hl], e                                       ; $58fe: $73
	ld b, b                                          ; $58ff: $40
	dec e                                            ; $5900: $1d

jr_010_5901:
	sub h                                            ; $5901: $94

jr_010_5902:
	ld bc, $2040                                     ; $5902: $01 $40 $20
	ld [hl], a                                       ; $5905: $77
	rst $38                                          ; $5906: $ff
	ld [hl], e                                       ; $5907: $73
	nop                                              ; $5908: $00
	ld a, h                                          ; $5909: $7c
	rra                                              ; $590a: $1f
	nop                                              ; $590b: $00
	nop                                              ; $590c: $00
	nop                                              ; $590d: $00
	ld [hl], a                                       ; $590e: $77
	cp d                                             ; $590f: $ba
	ld l, a                                          ; $5910: $6f
	nop                                              ; $5911: $00
	ld a, h                                          ; $5912: $7c
	rra                                              ; $5913: $1f
	nop                                              ; $5914: $00
	nop                                              ; $5915: $00
	nop                                              ; $5916: $00
	ld [bc], a                                       ; $5917: $02
	rst $38                                          ; $5918: $ff
	ld a, a                                          ; $5919: $7f
	rst FarCall                                          ; $591a: $f7
	ld a, a                                          ; $591b: $7f
	daa                                              ; $591c: $27
	ld a, a                                          ; $591d: $7f
	dec b                                            ; $591e: $05
	ld a, [hl]                                       ; $591f: $7e
	nop                                              ; $5920: $00
	ld bc, $0051                                     ; $5921: $01 $51 $00
	add hl, de                                       ; $5924: $19
	ld bc, $0004                                     ; $5925: $01 $04 $00
	nop                                              ; $5928: $00
	ld bc, $7fff                                     ; $5929: $01 $ff $7f
	nop                                              ; $592c: $00
	ld bc, $7fff                                     ; $592d: $01 $ff $7f
	adc d                                            ; $5930: $8a
	rst $38                                          ; $5931: $ff
	inc bc                                           ; $5932: $03
	db $f4                                           ; $5933: $f4
	ld [hl], a                                       ; $5934: $77
	nop                                              ; $5935: $00
	nop                                              ; $5936: $00
	rra                                              ; $5937: $1f
	nop                                              ; $5938: $00
	db $f4                                           ; $5939: $f4
	ld [hl], a                                       ; $593a: $77
	nop                                              ; $593b: $00
	nop                                              ; $593c: $00
	rra                                              ; $593d: $1f
	ld e, a                                          ; $593e: $5f
	rra                                              ; $593f: $1f

jr_010_5940:
	nop                                              ; $5940: $00
	ld l, $00                                        ; $5941: $2e $00
	ld b, h                                          ; $5943: $44
	daa                                              ; $5944: $27
	ld a, a                                          ; $5945: $7f

jr_010_5946:
	dec b                                            ; $5946: $05
	ld a, [hl]                                       ; $5947: $7e
	ld a, [bc]                                       ; $5948: $0a
	ld h, b                                          ; $5949: $60
	nop                                              ; $594a: $00
	nop                                              ; $594b: $00
	ld d, l                                          ; $594c: $55
	daa                                              ; $594d: $27
	ld a, a                                          ; $594e: $7f
	dec b                                            ; $594f: $05
	ld a, [hl]                                       ; $5950: $7e
	rra                                              ; $5951: $1f
	nop                                              ; $5952: $00
	ld bc, $6600                                     ; $5953: $01 $00 $66
	daa                                              ; $5956: $27
	ld a, a                                          ; $5957: $7f
	dec b                                            ; $5958: $05
	ld a, [hl]                                       ; $5959: $7e
	nop                                              ; $595a: $00
	ld a, h                                          ; $595b: $7c
	nop                                              ; $595c: $00
	nop                                              ; $595d: $00
	ld [hl], a                                       ; $595e: $77
	daa                                              ; $595f: $27
	ld a, a                                          ; $5960: $7f
	dec b                                            ; $5961: $05
	ld a, [hl]                                       ; $5962: $7e
	cp a                                             ; $5963: $bf
	ld [bc], a                                       ; $5964: $02
	nop                                              ; $5965: $00
	nop                                              ; $5966: $00
	ld bc, $7fff                                     ; $5967: $01 $ff $7f
	jr nz, jr_010_59d6                               ; $596a: $20 $6a

	nop                                              ; $596c: $00
	ld d, b                                          ; $596d: $50
	nop                                              ; $596e: $00
	nop                                              ; $596f: $00
	rra                                              ; $5970: $1f
	ld a, h                                          ; $5971: $7c
	rra                                              ; $5972: $1f
	ld a, h                                          ; $5973: $7c
	rra                                              ; $5974: $1f
	ld a, h                                          ; $5975: $7c
	rra                                              ; $5976: $1f
	ld a, h                                          ; $5977: $7c
	ld [hl], a                                       ; $5978: $77
	rst $38                                          ; $5979: $ff
	ld a, a                                          ; $597a: $7f
	ld [$1f45], a                                    ; $597b: $ea $45 $1f
	nop                                              ; $597e: $00
	nop                                              ; $597f: $00
	nop                                              ; $5980: $00
	adc d                                            ; $5981: $8a
	ld e, d                                          ; $5982: $5a
	ld bc, $001f                                     ; $5983: $01 $1f $00
	inc b                                            ; $5986: $04
	nop                                              ; $5987: $00
	rra                                              ; $5988: $1f
	nop                                              ; $5989: $00
	rst $38                                          ; $598a: $ff
	inc bc                                           ; $598b: $03
	ldh [$03], a                                     ; $598c: $e0 $03
	rst FarCall                                          ; $598e: $f7
	ld h, [hl]                                       ; $598f: $66
	add hl, hl                                       ; $5990: $29
	add hl, hl                                       ; $5991: $29
	nop                                              ; $5992: $00
	nop                                              ; $5993: $00
	ld b, a                                          ; $5994: $47
	rst $38                                          ; $5995: $ff
	ld a, a                                          ; $5996: $7f
	rst FarCall                                          ; $5997: $f7
	ld h, [hl]                                       ; $5998: $66
	add hl, hl                                       ; $5999: $29
	add hl, hl                                       ; $599a: $29
	nop                                              ; $599b: $00
	nop                                              ; $599c: $00
	ldh [$03], a                                     ; $599d: $e0 $03
	rra                                              ; $599f: $1f
	nop                                              ; $59a0: $00
	rst $38                                          ; $59a1: $ff
	inc bc                                           ; $59a2: $03
	nop                                              ; $59a3: $00
	nop                                              ; $59a4: $00
	rra                                              ; $59a5: $1f
	nop                                              ; $59a6: $00
	rst FarCall                                          ; $59a7: $f7
	ld h, [hl]                                       ; $59a8: $66
	add hl, hl                                       ; $59a9: $29
	add hl, hl                                       ; $59aa: $29
	nop                                              ; $59ab: $00
	nop                                              ; $59ac: $00
	rra                                              ; $59ad: $1f
	ld a, h                                          ; $59ae: $7c
	rra                                              ; $59af: $1f
	ld a, h                                          ; $59b0: $7c
	rra                                              ; $59b1: $1f
	ld a, h                                          ; $59b2: $7c
	rra                                              ; $59b3: $1f
	ld a, h                                          ; $59b4: $7c
	inc bc                                           ; $59b5: $03
	ld a, $63                                        ; $59b6: $3e $63
	and b                                            ; $59b8: $a0
	ld a, [hl]                                       ; $59b9: $7e
	ld a, $32                                        ; $59ba: $3e $32
	nop                                              ; $59bc: $00
	nop                                              ; $59bd: $00
	push de                                          ; $59be: $d5
	ld a, a                                          ; $59bf: $7f
	and b                                            ; $59c0: $a0
	ld a, [hl]                                       ; $59c1: $7e
	jr nz, jr_010_5a09                               ; $59c2: $20 $45

	nop                                              ; $59c4: $00
	nop                                              ; $59c5: $00
	rst $38                                          ; $59c6: $ff
	ld a, a                                          ; $59c7: $7f
	ccf                                              ; $59c8: $3f
	ld [hl-], a                                      ; $59c9: $32
	ld e, e                                          ; $59ca: $5b
	inc d                                            ; $59cb: $14
	nop                                              ; $59cc: $00
	nop                                              ; $59cd: $00
	rra                                              ; $59ce: $1f
	ld a, h                                          ; $59cf: $7c
	rra                                              ; $59d0: $1f
	ld a, h                                          ; $59d1: $7c
	rra                                              ; $59d2: $1f
	ld a, h                                          ; $59d3: $7c
	rra                                              ; $59d4: $1f
	ld a, h                                          ; $59d5: $7c

jr_010_59d6:
	sbc c                                            ; $59d6: $99
	rst $38                                          ; $59d7: $ff
	ld a, a                                          ; $59d8: $7f
	jp z, $0056                                      ; $59d9: $ca $56 $00

	nop                                              ; $59dc: $00
	inc b                                            ; $59dd: $04
	rra                                              ; $59de: $1f
	rra                                              ; $59df: $1f
	sub l                                            ; $59e0: $95
	inc d                                            ; $59e1: $14
	rrca                                             ; $59e2: $0f
	stop                                             ; $59e3: $10 $00
	nop                                              ; $59e5: $00
	rst $38                                          ; $59e6: $ff
	ld a, e                                          ; $59e7: $7b
	rra                                              ; $59e8: $1f
	inc bc                                           ; $59e9: $03
	rra                                              ; $59ea: $1f
	nop                                              ; $59eb: $00
	nop                                              ; $59ec: $00
	nop                                              ; $59ed: $00
	rst SubAFromDE                                          ; $59ee: $df
	ld a, e                                          ; $59ef: $7b
	sbc c                                            ; $59f0: $99
	dec h                                            ; $59f1: $25
	rra                                              ; $59f2: $1f
	nop                                              ; $59f3: $00
	nop                                              ; $59f4: $00
	nop                                              ; $59f5: $00
	rst $38                                          ; $59f6: $ff
	ld a, e                                          ; $59f7: $7b
	rra                                              ; $59f8: $1f
	inc bc                                           ; $59f9: $03
	sbc c                                            ; $59fa: $99
	dec h                                            ; $59fb: $25
	nop                                              ; $59fc: $00
	nop                                              ; $59fd: $00
	rra                                              ; $59fe: $1f
	inc bc                                           ; $59ff: $03
	sbc c                                            ; $5a00: $99
	dec h                                            ; $5a01: $25
	rra                                              ; $5a02: $1f
	nop                                              ; $5a03: $00
	nop                                              ; $5a04: $00
	nop                                              ; $5a05: $00
	ld bc, $2860                                     ; $5a06: $01 $60 $28

jr_010_5a09:
	xor b                                            ; $5a09: $a8
	ld d, c                                          ; $5a0a: $51
	jr nz, jr_010_5a6d                               ; $5a0b: $20 $60

	nop                                              ; $5a0d: $00
	nop                                              ; $5a0e: $00
	xor b                                            ; $5a0f: $a8
	ld d, c                                          ; $5a10: $51
	nop                                              ; $5a11: $00
	nop                                              ; $5a12: $00
	rst $38                                          ; $5a13: $ff
	ld a, a                                          ; $5a14: $7f
	db $eb                                           ; $5a15: $eb
	ld a, a                                          ; $5a16: $7f
	ld bc, $7fff                                     ; $5a17: $01 $ff $7f
	cp l                                             ; $5a1a: $bd
	ld bc, $17ff                                     ; $5a1b: $01 $ff $17
	nop                                              ; $5a1e: $00
	nop                                              ; $5a1f: $00
	cp [hl]                                          ; $5a20: $be
	ld e, e                                          ; $5a21: $5b
	rst SubAFromHL                                          ; $5a22: $d7
	ld e, d                                          ; $5a23: $5a
	cp l                                             ; $5a24: $bd
	ld bc, $0000                                     ; $5a25: $01 $00 $00
	dec [hl]                                         ; $5a28: $35
	sbc e                                            ; $5a29: $9b
	ld a, e                                          ; $5a2a: $7b
	add hl, sp                                       ; $5a2b: $39
	ld [hl+], a                                      ; $5a2c: $22
	sbc a                                            ; $5a2d: $9f
	inc l                                            ; $5a2e: $2c
	stop                                             ; $5a2f: $10 $00
	sbc e                                            ; $5a31: $9b
	ld a, e                                          ; $5a32: $7b
	ld e, h                                          ; $5a33: $5c
	inc sp                                           ; $5a34: $33
	ld h, l                                          ; $5a35: $65
	ld c, $85                                        ; $5a36: $0e $85
	nop                                              ; $5a38: $00
	rst $38                                          ; $5a39: $ff
	ld a, a                                          ; $5a3a: $7f
	ld a, c                                          ; $5a3b: $79
	ld [hl+], a                                      ; $5a3c: $22
	sbc $02                                          ; $5a3d: $de $02
	adc $19                                          ; $5a3f: $ce $19
	ld bc, $7c1f                                     ; $5a41: $01 $1f $7c
	rra                                              ; $5a44: $1f
	ld a, h                                          ; $5a45: $7c
	rra                                              ; $5a46: $1f
	ld a, h                                          ; $5a47: $7c
	rra                                              ; $5a48: $1f
	ld a, h                                          ; $5a49: $7c
	rst $38                                          ; $5a4a: $ff
	ld a, a                                          ; $5a4b: $7f
	xor l                                            ; $5a4c: $ad
	ld a, a                                          ; $5a4d: $7f
	rst JumpTable                                          ; $5a4e: $c7
	ld a, [hl]                                       ; $5a4f: $7e
	ldh [c], a                                       ; $5a50: $e2
	ld a, l                                          ; $5a51: $7d
	adc a                                            ; $5a52: $8f
	rst $38                                          ; $5a53: $ff
	ld a, a                                          ; $5a54: $7f
	sbc a                                            ; $5a55: $9f
	ld [bc], a                                       ; $5a56: $02
	nop                                              ; $5a57: $00
	inc c                                            ; $5a58: $0c
	rst $38                                          ; $5a59: $ff
	ld a, a                                          ; $5a5a: $7f
	rra                                              ; $5a5b: $1f
	stop                                             ; $5a5c: $10 $00
	inc c                                            ; $5a5e: $0c
	rst $38                                          ; $5a5f: $ff
	ld a, a                                          ; $5a60: $7f
	nop                                              ; $5a61: $00
	jr nc, jr_010_5ac4                               ; $5a62: $30 $60

	jr jr_010_5a9a                                   ; $5a64: $18 $34

	ld a, a                                          ; $5a66: $7f
	and [hl]                                         ; $5a67: $a6
	ld [hl], c                                       ; $5a68: $71
	ld b, h                                          ; $5a69: $44
	ld d, c                                          ; $5a6a: $51
	inc [hl]                                         ; $5a6b: $34
	ld a, a                                          ; $5a6c: $7f

jr_010_5a6d:
	and [hl]                                         ; $5a6d: $a6
	ld [hl], c                                       ; $5a6e: $71
	ld b, h                                          ; $5a6f: $44
	ld d, c                                          ; $5a70: $51
	sbc $3f                                          ; $5a71: $de $3f
	ld l, h                                          ; $5a73: $6c
	ld a, [bc]                                       ; $5a74: $0a
	ld h, b                                          ; $5a75: $60
	jr nz, @+$01                                     ; $5a76: $20 $ff

	ld a, a                                          ; $5a78: $7f
	sbc $3c                                          ; $5a79: $de $3c
	sbc a                                            ; $5a7b: $9f
	ld h, h                                          ; $5a7c: $64
	rst SubAFromHL                                          ; $5a7d: $d7

Jump_010_5a7e:
	ld a, a                                          ; $5a7e: $7f
	dec d                                            ; $5a7f: $15
	ld a, [hl]                                       ; $5a80: $7e
	sbc b                                            ; $5a81: $98
	ld [hl], l                                       ; $5a82: $75
	ld b, $7d                                        ; $5a83: $06 $7d
	ld [hl], e                                       ; $5a85: $73
	ld d, d                                          ; $5a86: $52
	ld b, [hl]                                       ; $5a87: $46
	adc e                                            ; $5a88: $8b
	dec a                                            ; $5a89: $3d
	ld h, h                                          ; $5a8a: $64
	db $10                                           ; $5a8b: $10
	cp e                                             ; $5a8c: $bb
	ld l, a                                          ; $5a8d: $6f
	ccf                                              ; $5a8e: $3f
	scf                                              ; $5a8f: $37
	ld d, d                                          ; $5a90: $52
	ld b, [hl]                                       ; $5a91: $46
	nop                                              ; $5a92: $00
	ld b, b                                          ; $5a93: $40
	cp d                                             ; $5a94: $ba
	ld l, a                                          ; $5a95: $6f
	ccf                                              ; $5a96: $3f
	scf                                              ; $5a97: $37
	ldh [$6d], a                                     ; $5a98: $e0 $6d

jr_010_5a9a:
	ld d, d                                          ; $5a9a: $52
	ld b, [hl]                                       ; $5a9b: $46
	ld sp, hl                                        ; $5a9c: $f9
	ld d, d                                          ; $5a9d: $52
	ccf                                              ; $5a9e: $3f
	scf                                              ; $5a9f: $37
	ccf                                              ; $5aa0: $3f
	scf                                              ; $5aa1: $37
	nop                                              ; $5aa2: $00
	ld b, b                                          ; $5aa3: $40
	ld sp, hl                                        ; $5aa4: $f9
	ld d, d                                          ; $5aa5: $52
	ccf                                              ; $5aa6: $3f
	scf                                              ; $5aa7: $37
	db $f4                                           ; $5aa8: $f4
	add hl, de                                       ; $5aa9: $19
	ld a, c                                          ; $5aaa: $79
	inc b                                            ; $5aab: $04
	cp d                                             ; $5aac: $ba
	ld l, a                                          ; $5aad: $6f
	ld d, $2e                                        ; $5aae: $16 $2e
	ldh [$6d], a                                     ; $5ab0: $e0 $6d
	jr nz, jr_010_5acc                               ; $5ab2: $20 $18

	cp d                                             ; $5ab4: $ba
	ld l, a                                          ; $5ab5: $6f
	ldh a, [c]                                       ; $5ab6: $f2
	add hl, sp                                       ; $5ab7: $39
	ld a, c                                          ; $5ab8: $79
	inc b                                            ; $5ab9: $04
	nop                                              ; $5aba: $00
	ld b, b                                          ; $5abb: $40
	inc b                                            ; $5abc: $04
	ei                                               ; $5abd: $fb
	ld d, [hl]                                       ; $5abe: $56
	and e                                            ; $5abf: $a3
	ld a, l                                          ; $5ac0: $7d
	ld e, e                                          ; $5ac1: $5b
	nop                                              ; $5ac2: $00
	ld h, [hl]                                       ; $5ac3: $66

jr_010_5ac4:
	nop                                              ; $5ac4: $00
	ei                                               ; $5ac5: $fb
	ld d, [hl]                                       ; $5ac6: $56
	call nc, Call_010_4031                           ; $5ac7: $d4 $31 $40
	add hl, bc                                       ; $5aca: $09
	ld h, [hl]                                       ; $5acb: $66

jr_010_5acc:
	nop                                              ; $5acc: $00
	ei                                               ; $5acd: $fb
	ld d, [hl]                                       ; $5ace: $56
	db $f4                                           ; $5acf: $f4
	ld sp, $04aa                                     ; $5ad0: $31 $aa $04
	ld h, [hl]                                       ; $5ad3: $66
	nop                                              ; $5ad4: $00
	rst SubAFromHL                                          ; $5ad5: $d7
	add hl, hl                                       ; $5ad6: $29
	ld de, $6c09                                     ; $5ad7: $11 $09 $6c
	inc b                                            ; $5ada: $04
	ld h, [hl]                                       ; $5adb: $66
	nop                                              ; $5adc: $00
	ei                                               ; $5add: $fb
	ld d, [hl]                                       ; $5ade: $56
	and e                                            ; $5adf: $a3
	ld a, l                                          ; $5ae0: $7d
	db $f4                                           ; $5ae1: $f4
	ld sp, $0066                                     ; $5ae2: $31 $66 $00
	inc b                                            ; $5ae5: $04
	rst $38                                          ; $5ae6: $ff
	ld [hl], e                                       ; $5ae7: $73
	sbc h                                            ; $5ae8: $9c
	ld l, $86                                        ; $5ae9: $2e $86
	ld c, $e4                                        ; $5aeb: $0e $e4
	jr nz, @+$01                                     ; $5aed: $20 $ff

	ld [hl], e                                       ; $5aef: $73
	sbc h                                            ; $5af0: $9c
	ld l, $b6                                        ; $5af1: $2e $b6
	dec c                                            ; $5af3: $0d
	dec c                                            ; $5af4: $0d
	ld bc, $73ff                                     ; $5af5: $01 $ff $73
	ret nz                                           ; $5af8: $c0

	ld a, [hl]                                       ; $5af9: $7e
	db $e4                                           ; $5afa: $e4
	ld a, l                                          ; $5afb: $7d
	add b                                            ; $5afc: $80
	ld h, c                                          ; $5afd: $61
	rst $38                                          ; $5afe: $ff
	ld [hl], e                                       ; $5aff: $73
	db $ed                                           ; $5b00: $ed
	ld b, d                                          ; $5b01: $42
	or [hl]                                          ; $5b02: $b6
	dec c                                            ; $5b03: $0d
	jp z, $ff04                                      ; $5b04: $ca $04 $ff

	ld [hl], e                                       ; $5b07: $73
	and b                                            ; $5b08: $a0
	ld a, [hl]                                       ; $5b09: $7e
	ld a, h                                          ; $5b0a: $7c
	ld h, $e5                                        ; $5b0b: $26 $e5
	db $10                                           ; $5b0d: $10
	adc c                                            ; $5b0e: $89
	rra                                              ; $5b0f: $1f
	ld a, [hl+]                                      ; $5b10: $2a
	ld e, b                                          ; $5b11: $58
	db $10                                           ; $5b12: $10
	inc b                                            ; $5b13: $04
	nop                                              ; $5b14: $00
	rst $38                                          ; $5b15: $ff
	ld a, a                                          ; $5b16: $7f
	ld b, b                                          ; $5b17: $40
	ld a, h                                          ; $5b18: $7c
	inc b                                            ; $5b19: $04
	nop                                              ; $5b1a: $00
	dec b                                            ; $5b1b: $05
	rst $38                                          ; $5b1c: $ff
	ld [hl], e                                       ; $5b1d: $73
	sbc h                                            ; $5b1e: $9c
	ld l, $2d                                        ; $5b1f: $2e $2d
	ld e, e                                          ; $5b21: $5b
	db $e4                                           ; $5b22: $e4
	jr nz, @+$01                                     ; $5b23: $20 $ff

	ld [hl], e                                       ; $5b25: $73
	inc c                                            ; $5b26: $0c
	ld a, a                                          ; $5b27: $7f
	ld b, h                                          ; $5b28: $44
	ld a, [hl]                                       ; $5b29: $7e
	add b                                            ; $5b2a: $80
	ld h, c                                          ; $5b2b: $61
	rst $38                                          ; $5b2c: $ff
	ld [hl], e                                       ; $5b2d: $73
	ld e, h                                          ; $5b2e: $5c
	ld l, e                                          ; $5b2f: $6b
	inc c                                            ; $5b30: $0c
	ld a, a                                          ; $5b31: $7f
	push hl                                          ; $5b32: $e5
	db $10                                           ; $5b33: $10
	sbc h                                            ; $5b34: $9c
	ld l, $1f                                        ; $5b35: $2e $1f
	ld hl, $0194                                     ; $5b37: $21 $94 $01
	nop                                              ; $5b3a: $00
	nop                                              ; $5b3b: $00
	rst $38                                          ; $5b3c: $ff
	ld a, a                                          ; $5b3d: $7f
	sbc h                                            ; $5b3e: $9c
	ld l, $94                                        ; $5b3f: $2e $94
	ld bc, $0000                                     ; $5b41: $01 $00 $00
	rst $38                                          ; $5b44: $ff
	ld a, a                                          ; $5b45: $7f
	ccf                                              ; $5b46: $3f
	ld b, e                                          ; $5b47: $43
	sub h                                            ; $5b48: $94
	ld bc, $0000                                     ; $5b49: $01 $00 $00
	ld h, a                                          ; $5b4c: $67
	sbc a                                            ; $5b4d: $9f
	ld [hl], e                                       ; $5b4e: $73
	sbc h                                            ; $5b4f: $9c
	db $10                                           ; $5b50: $10
	sub h                                            ; $5b51: $94
	ld bc, $0000                                     ; $5b52: $01 $00 $00
	sbc a                                            ; $5b55: $9f
	ld [hl], e                                       ; $5b56: $73
	sbc h                                            ; $5b57: $9c
	db $10                                           ; $5b58: $10
	sub h                                            ; $5b59: $94
	ld bc, $5c80                                     ; $5b5a: $01 $80 $5c
	adc c                                            ; $5b5d: $89
	sbc h                                            ; $5b5e: $9c
	ld [hl], e                                       ; $5b5f: $73
	ld d, c                                          ; $5b60: $51
	ld b, d                                          ; $5b61: $42
	nop                                              ; $5b62: $00
	nop                                              ; $5b63: $00
	adc d                                            ; $5b64: $8a
	add hl, hl                                       ; $5b65: $29
	ret nz                                           ; $5b66: $c0

	ld a, b                                          ; $5b67: $78
	nop                                              ; $5b68: $00
	nop                                              ; $5b69: $00
	adc d                                            ; $5b6a: $8a
	jr jr_010_5bd0                                   ; $5b6b: $18 $63

	sbc h                                            ; $5b6d: $9c
	ld a, [hl-]                                      ; $5b6e: $3a
	add h                                            ; $5b6f: $84
	ld [$6318], sp                                   ; $5b70: $08 $18 $63
	sbc h                                            ; $5b73: $9c
	ld a, [hl-]                                      ; $5b74: $3a
	add b                                            ; $5b75: $80
	ld e, h                                          ; $5b76: $5c
	sbc h                                            ; $5b77: $9c
	ld a, [hl-]                                      ; $5b78: $3a
	db $10                                           ; $5b79: $10
	ld b, d                                          ; $5b7a: $42
	add b                                            ; $5b7b: $80
	ld e, h                                          ; $5b7c: $5c
	rst AddAOntoHL                                          ; $5b7d: $ef
	sbc h                                            ; $5b7e: $9c
	ld [hl], e                                       ; $5b7f: $73
	sbc h                                            ; $5b80: $9c
	ld a, [hl-]                                      ; $5b81: $3a
	add h                                            ; $5b82: $84
	ld [$3a9c], sp                                   ; $5b83: $08 $9c $3a
	adc h                                            ; $5b86: $8c
	ld sp, $0884                                     ; $5b87: $31 $84 $08
	rst $38                                          ; $5b8a: $ff
	sbc h                                            ; $5b8b: $9c
	ld [hl], e                                       ; $5b8c: $73
	jr jr_010_5bf2                                   ; $5b8d: $18 $63

	db $10                                           ; $5b8f: $10
	ld b, d                                          ; $5b90: $42
	cp h                                             ; $5b91: $bc
	jr jr_010_5bf7                                   ; $5b92: $18 $63

	sbc h                                            ; $5b94: $9c
	ld a, [hl-]                                      ; $5b95: $3a
	stop                                             ; $5b96: $10 $00
	jr jr_010_5bfd                                   ; $5b98: $18 $63

	sbc h                                            ; $5b9a: $9c
	ld a, [hl-]                                      ; $5b9b: $3a
	jr nz, jr_010_5bbf                               ; $5b9c: $20 $21

	rst AddAOntoHL                                          ; $5b9e: $ef
	sbc h                                            ; $5b9f: $9c
	ld [hl], e                                       ; $5ba0: $73
	db $10                                           ; $5ba1: $10
	ld b, d                                          ; $5ba2: $42
	add h                                            ; $5ba3: $84
	ld [$531c], sp                                   ; $5ba4: $08 $1c $53
	rra                                              ; $5ba7: $1f
	ld hl, $109c                                     ; $5ba8: $21 $9c $10
	dec b                                            ; $5bab: $05
	rst $38                                          ; $5bac: $ff
	ld [hl], e                                       ; $5bad: $73
	rst $38                                          ; $5bae: $ff
	ld b, [hl]                                       ; $5baf: $46
	dec l                                            ; $5bb0: $2d
	ld e, e                                          ; $5bb1: $5b
	db $e4                                           ; $5bb2: $e4
	jr nz, jr_010_5bcd                               ; $5bb3: $20 $18

	ld l, e                                          ; $5bb5: $6b
	sbc h                                            ; $5bb6: $9c
	ld l, $b6                                        ; $5bb7: $2e $b6
	dec c                                            ; $5bb9: $0d
	dec c                                            ; $5bba: $0d
	ld bc, $73ff                                     ; $5bbb: $01 $ff $73
	inc c                                            ; $5bbe: $0c

jr_010_5bbf:
	ld a, a                                          ; $5bbf: $7f
	ld b, h                                          ; $5bc0: $44
	ld a, [hl]                                       ; $5bc1: $7e
	add b                                            ; $5bc2: $80
	ld h, c                                          ; $5bc3: $61
	rst $38                                          ; $5bc4: $ff
	ld [hl], e                                       ; $5bc5: $73
	db $ed                                           ; $5bc6: $ed
	ld b, d                                          ; $5bc7: $42
	or [hl]                                          ; $5bc8: $b6
	dec c                                            ; $5bc9: $0d
	jp z, $ff04                                      ; $5bca: $ca $04 $ff

jr_010_5bcd:
	ld [hl], e                                       ; $5bcd: $73
	ld e, h                                          ; $5bce: $5c
	ld l, e                                          ; $5bcf: $6b

jr_010_5bd0:
	dec l                                            ; $5bd0: $2d
	ld e, e                                          ; $5bd1: $5b
	push hl                                          ; $5bd2: $e5
	db $10                                           ; $5bd3: $10
	rst $38                                          ; $5bd4: $ff
	ld [hl], e                                       ; $5bd5: $73
	adc l                                            ; $5bd6: $8d
	ld l, [hl]                                       ; $5bd7: $6e
	sbc $0c                                          ; $5bd8: $de $0c
	add h                                            ; $5bda: $84
	jr nz, @+$09                                     ; $5bdb: $20 $07

	rst $38                                          ; $5bdd: $ff
	ld a, a                                          ; $5bde: $7f
	ccf                                              ; $5bdf: $3f
	ld b, e                                          ; $5be0: $43
	sub h                                            ; $5be1: $94
	ld bc, $0000                                     ; $5be2: $01 $00 $00
	sbc a                                            ; $5be5: $9f
	ld [hl], e                                       ; $5be6: $73
	sbc h                                            ; $5be7: $9c
	db $10                                           ; $5be8: $10
	sub h                                            ; $5be9: $94
	ld bc, $0000                                     ; $5bea: $01 $00 $00
	sbc a                                            ; $5bed: $9f
	ld [hl], e                                       ; $5bee: $73
	add l                                            ; $5bef: $85
	ld h, l                                          ; $5bf0: $65
	sub h                                            ; $5bf1: $94

jr_010_5bf2:
	ld bc, $0000                                     ; $5bf2: $01 $00 $00
	sbc h                                            ; $5bf5: $9c
	ld [bc], a                                       ; $5bf6: $02

jr_010_5bf7:
	add hl, de                                       ; $5bf7: $19
	ld [bc], a                                       ; $5bf8: $02
	sub h                                            ; $5bf9: $94
	ld bc, $00ac                                     ; $5bfa: $01 $ac $00

jr_010_5bfd:
	sbc a                                            ; $5bfd: $9f
	ld [hl-], a                                      ; $5bfe: $32
	db $10                                           ; $5bff: $10
	ld b, d                                          ; $5c00: $42
	sub h                                            ; $5c01: $94
	ld bc, $00ac                                     ; $5c02: $01 $ac $00
	sbc h                                            ; $5c05: $9c
	ld [hl], e                                       ; $5c06: $73
	sbc a                                            ; $5c07: $9f
	ld [hl-], a                                      ; $5c08: $32
	and b                                            ; $5c09: $a0
	ld [hl], b                                       ; $5c0a: $70
	nop                                              ; $5c0b: $00
	nop                                              ; $5c0c: $00
	jr nz, jr_010_5c82                               ; $5c0d: $20 $73

	add b                                            ; $5c0f: $80
	ld [hl], c                                       ; $5c10: $71
	cp a                                             ; $5c11: $bf
	inc d                                            ; $5c12: $14
	add h                                            ; $5c13: $84
	ld [$7f99], sp                                   ; $5c14: $08 $99 $7f
	jr nz, jr_010_5c8c                               ; $5c17: $20 $73

	cp a                                             ; $5c19: $bf
	inc d                                            ; $5c1a: $14
	nop                                              ; $5c1b: $00
	nop                                              ; $5c1c: $00
	adc d                                            ; $5c1d: $8a
	cp a                                             ; $5c1e: $bf
	inc d                                            ; $5c1f: $14
	add hl, de                                       ; $5c20: $19
	nop                                              ; $5c21: $00
	add h                                            ; $5c22: $84
	ld [$7f99], sp                                   ; $5c23: $08 $99 $7f
	adc h                                            ; $5c26: $8c
	ld sp, $0884                                     ; $5c27: $31 $84 $08
	sbc c                                            ; $5c2a: $99
	ld a, a                                          ; $5c2b: $7f
	add hl, sp                                       ; $5c2c: $39
	ld h, a                                          ; $5c2d: $67
	add h                                            ; $5c2e: $84
	ld [$ff13], sp                                   ; $5c2f: $08 $13 $ff
	ld a, a                                          ; $5c32: $7f
	jr nc, jr_010_5c4c                               ; $5c33: $30 $17

	add [hl]                                         ; $5c35: $86
	ld bc, $0000                                     ; $5c36: $01 $00 $00
	rst $38                                          ; $5c39: $ff
	ld a, a                                          ; $5c3a: $7f
	nop                                              ; $5c3b: $00
	ld a, a                                          ; $5c3c: $7f
	ld b, b                                          ; $5c3d: $40
	ld h, l                                          ; $5c3e: $65
	nop                                              ; $5c3f: $00
	nop                                              ; $5c40: $00
	rst $38                                          ; $5c41: $ff
	ld a, a                                          ; $5c42: $7f
	ld a, a                                          ; $5c43: $7f
	dec h                                            ; $5c44: $25
	xor l                                            ; $5c45: $ad
	nop                                              ; $5c46: $00
	nop                                              ; $5c47: $00
	nop                                              ; $5c48: $00
	ld de, $7fff                                     ; $5c49: $11 $ff $7f

jr_010_5c4c:
	rst SubAFromDE                                          ; $5c4c: $df
	ld l, d                                          ; $5c4d: $6a
	sbc [hl]                                         ; $5c4e: $9e
	ld c, l                                          ; $5c4f: $4d
	nop                                              ; $5c50: $00
	nop                                              ; $5c51: $00
	ld [hl+], a                                      ; $5c52: $22
	rst $38                                          ; $5c53: $ff
	ld a, a                                          ; $5c54: $7f
	ld a, [bc]                                       ; $5c55: $0a
	ld e, e                                          ; $5c56: $5b
	ld b, h                                          ; $5c57: $44
	ld b, d                                          ; $5c58: $42
	nop                                              ; $5c59: $00
	nop                                              ; $5c5a: $00
	inc sp                                           ; $5c5b: $33
	rst $38                                          ; $5c5c: $ff
	ld a, a                                          ; $5c5d: $7f
	ld a, l                                          ; $5c5e: $7d
	daa                                              ; $5c5f: $27
	db $fd                                           ; $5c60: $fd
	ld d, $00                                        ; $5c61: $16 $00
	nop                                              ; $5c63: $00
	ld de, $7fff                                     ; $5c64: $11 $ff $7f
	rst SubAFromDE                                          ; $5c67: $df
	ld l, d                                          ; $5c68: $6a
	sbc [hl]                                         ; $5c69: $9e
	ld c, l                                          ; $5c6a: $4d
	nop                                              ; $5c6b: $00
	nop                                              ; $5c6c: $00
	ld [hl+], a                                      ; $5c6d: $22
	rst $38                                          ; $5c6e: $ff
	ld a, a                                          ; $5c6f: $7f
	ld a, [bc]                                       ; $5c70: $0a
	ld e, e                                          ; $5c71: $5b
	ld b, h                                          ; $5c72: $44
	ld b, d                                          ; $5c73: $42
	nop                                              ; $5c74: $00
	nop                                              ; $5c75: $00
	inc sp                                           ; $5c76: $33
	rst $38                                          ; $5c77: $ff
	ld a, a                                          ; $5c78: $7f
	ld a, l                                          ; $5c79: $7d
	daa                                              ; $5c7a: $27
	db $fd                                           ; $5c7b: $fd

Call_010_5c7c:
	ld d, $00                                        ; $5c7c: $16 $00
	nop                                              ; $5c7e: $00
	ld de, $7fff                                     ; $5c7f: $11 $ff $7f

jr_010_5c82:
	rst SubAFromDE                                          ; $5c82: $df
	ld l, d                                          ; $5c83: $6a
	sbc [hl]                                         ; $5c84: $9e
	ld c, l                                          ; $5c85: $4d
	nop                                              ; $5c86: $00
	nop                                              ; $5c87: $00
	ld [hl+], a                                      ; $5c88: $22
	rst $38                                          ; $5c89: $ff
	ld a, a                                          ; $5c8a: $7f
	ld a, [bc]                                       ; $5c8b: $0a

jr_010_5c8c:
	ld e, e                                          ; $5c8c: $5b
	ld b, h                                          ; $5c8d: $44
	ld b, d                                          ; $5c8e: $42
	nop                                              ; $5c8f: $00
	nop                                              ; $5c90: $00
	inc sp                                           ; $5c91: $33
	rst $38                                          ; $5c92: $ff
	ld a, a                                          ; $5c93: $7f
	ld a, l                                          ; $5c94: $7d
	daa                                              ; $5c95: $27
	db $fd                                           ; $5c96: $fd
	ld d, $00                                        ; $5c97: $16 $00
	nop                                              ; $5c99: $00
	ld de, $7fff                                     ; $5c9a: $11 $ff $7f
	rst SubAFromDE                                          ; $5c9d: $df
	ld l, d                                          ; $5c9e: $6a
	sbc [hl]                                         ; $5c9f: $9e
	ld c, l                                          ; $5ca0: $4d
	nop                                              ; $5ca1: $00
	nop                                              ; $5ca2: $00
	ld [hl+], a                                      ; $5ca3: $22
	rst $38                                          ; $5ca4: $ff
	ld a, a                                          ; $5ca5: $7f
	ld a, [bc]                                       ; $5ca6: $0a
	ld e, e                                          ; $5ca7: $5b
	ld b, h                                          ; $5ca8: $44
	ld b, d                                          ; $5ca9: $42
	nop                                              ; $5caa: $00
	nop                                              ; $5cab: $00
	inc sp                                           ; $5cac: $33
	rst $38                                          ; $5cad: $ff
	ld a, a                                          ; $5cae: $7f
	ld a, l                                          ; $5caf: $7d
	daa                                              ; $5cb0: $27
	db $fd                                           ; $5cb1: $fd
	ld d, $00                                        ; $5cb2: $16 $00
	nop                                              ; $5cb4: $00
	adc c                                            ; $5cb5: $89
	rra                                              ; $5cb6: $1f
	ld h, e                                          ; $5cb7: $63
	rra                                              ; $5cb8: $1f
	ld a, [hl+]                                      ; $5cb9: $2a
	nop                                              ; $5cba: $00
	inc b                                            ; $5cbb: $04
	sbc a                                            ; $5cbc: $9f
	ld d, [hl]                                       ; $5cbd: $56
	rla                                              ; $5cbe: $17
	nop                                              ; $5cbf: $00
	nop                                              ; $5cc0: $00
	inc b                                            ; $5cc1: $04
	adc c                                            ; $5cc2: $89
	ccf                                              ; $5cc3: $3f
	ld d, a                                          ; $5cc4: $57
	jp c, $0028                                     ; $5cc5: $da $28 $00

	inc b                                            ; $5cc8: $04
	rra                                              ; $5cc9: $1f
	ld h, e                                          ; $5cca: $63
	add l                                            ; $5ccb: $85
	ld a, [hl]                                       ; $5ccc: $7e
	nop                                              ; $5ccd: $00
	inc b                                            ; $5cce: $04
	adc c                                            ; $5ccf: $89
	ccf                                              ; $5cd0: $3f
	ld d, a                                          ; $5cd1: $57
	db $fd                                           ; $5cd2: $fd
	ld c, h                                          ; $5cd3: $4c
	nop                                              ; $5cd4: $00
	inc b                                            ; $5cd5: $04
	rra                                              ; $5cd6: $1f
	ld h, e                                          ; $5cd7: $63
	add l                                            ; $5cd8: $85
	ld a, [hl]                                       ; $5cd9: $7e
	nop                                              ; $5cda: $00
	inc b                                            ; $5cdb: $04
	adc c                                            ; $5cdc: $89
	ccf                                              ; $5cdd: $3f
	ld d, a                                          ; $5cde: $57
	ccf                                              ; $5cdf: $3f
	nop                                              ; $5ce0: $00
	nop                                              ; $5ce1: $00
	inc b                                            ; $5ce2: $04
	rra                                              ; $5ce3: $1f
	ld h, e                                          ; $5ce4: $63
	add l                                            ; $5ce5: $85
	ld a, [hl]                                       ; $5ce6: $7e
	nop                                              ; $5ce7: $00
	inc b                                            ; $5ce8: $04
	adc c                                            ; $5ce9: $89
	ccf                                              ; $5cea: $3f
	ld d, a                                          ; $5ceb: $57
	ret nz                                           ; $5cec: $c0

	ld a, l                                          ; $5ced: $7d
	nop                                              ; $5cee: $00
	inc b                                            ; $5cef: $04
	rra                                              ; $5cf0: $1f
	ld h, e                                          ; $5cf1: $63
	add l                                            ; $5cf2: $85
	ld a, [hl]                                       ; $5cf3: $7e
	nop                                              ; $5cf4: $00
	inc b                                            ; $5cf5: $04
	adc c                                            ; $5cf6: $89
	ccf                                              ; $5cf7: $3f
	ld d, a                                          ; $5cf8: $57
	rst $38                                          ; $5cf9: $ff
	ld a, [bc]                                       ; $5cfa: $0a
	nop                                              ; $5cfb: $00
	inc b                                            ; $5cfc: $04
	rra                                              ; $5cfd: $1f
	ld h, e                                          ; $5cfe: $63
	add l                                            ; $5cff: $85
	ld a, [hl]                                       ; $5d00: $7e
	nop                                              ; $5d01: $00
	inc b                                            ; $5d02: $04
	adc c                                            ; $5d03: $89
	ccf                                              ; $5d04: $3f
	ld d, a                                          ; $5d05: $57
	rra                                              ; $5d06: $1f
	ld [bc], a                                       ; $5d07: $02
	nop                                              ; $5d08: $00
	inc b                                            ; $5d09: $04
	rra                                              ; $5d0a: $1f
	ld h, e                                          ; $5d0b: $63
	add l                                            ; $5d0c: $85
	ld a, [hl]                                       ; $5d0d: $7e
	nop                                              ; $5d0e: $00
	inc b                                            ; $5d0f: $04
	adc c                                            ; $5d10: $89
	ccf                                              ; $5d11: $3f
	ld d, a                                          ; $5d12: $57
	ld [hl], $71                                     ; $5d13: $36 $71
	nop                                              ; $5d15: $00
	inc b                                            ; $5d16: $04
	rra                                              ; $5d17: $1f
	ld h, e                                          ; $5d18: $63
	add l                                            ; $5d19: $85
	ld a, [hl]                                       ; $5d1a: $7e
	nop                                              ; $5d1b: $00
	inc b                                            ; $5d1c: $04
	adc c                                            ; $5d1d: $89
	ccf                                              ; $5d1e: $3f
	ld d, a                                          ; $5d1f: $57
	adc h                                            ; $5d20: $8c
	ld b, c                                          ; $5d21: $41
	nop                                              ; $5d22: $00
	inc b                                            ; $5d23: $04
	rra                                              ; $5d24: $1f
	ld h, e                                          ; $5d25: $63
	add l                                            ; $5d26: $85
	ld a, [hl]                                       ; $5d27: $7e
	nop                                              ; $5d28: $00
	inc b                                            ; $5d29: $04
	adc c                                            ; $5d2a: $89
	ccf                                              ; $5d2b: $3f
	ld d, a                                          ; $5d2c: $57
	add l                                            ; $5d2d: $85
	ld b, d                                          ; $5d2e: $42
	nop                                              ; $5d2f: $00
	inc b                                            ; $5d30: $04
	rra                                              ; $5d31: $1f
	ld h, e                                          ; $5d32: $63
	add l                                            ; $5d33: $85
	ld a, [hl]                                       ; $5d34: $7e
	nop                                              ; $5d35: $00
	inc b                                            ; $5d36: $04
	adc c                                            ; $5d37: $89
	ccf                                              ; $5d38: $3f
	ld d, a                                          ; $5d39: $57
	ld b, e                                          ; $5d3a: $43
	dec sp                                           ; $5d3b: $3b
	nop                                              ; $5d3c: $00
	inc b                                            ; $5d3d: $04
	rra                                              ; $5d3e: $1f
	ld h, e                                          ; $5d3f: $63
	add l                                            ; $5d40: $85
	ld a, [hl]                                       ; $5d41: $7e
	nop                                              ; $5d42: $00
	inc b                                            ; $5d43: $04
	adc c                                            ; $5d44: $89
	ccf                                              ; $5d45: $3f
	ld d, a                                          ; $5d46: $57
	rst SubAFromHL                                          ; $5d47: $d7
	add hl, hl                                       ; $5d48: $29
	nop                                              ; $5d49: $00
	inc b                                            ; $5d4a: $04
	rra                                              ; $5d4b: $1f
	ld h, e                                          ; $5d4c: $63
	add l                                            ; $5d4d: $85
	ld a, [hl]                                       ; $5d4e: $7e
	nop                                              ; $5d4f: $00
	inc b                                            ; $5d50: $04
	adc c                                            ; $5d51: $89
	ccf                                              ; $5d52: $3f
	ld d, a                                          ; $5d53: $57
	db $fd                                           ; $5d54: $fd
	ld c, h                                          ; $5d55: $4c
	nop                                              ; $5d56: $00
	inc b                                            ; $5d57: $04
	rra                                              ; $5d58: $1f
	ld h, e                                          ; $5d59: $63
	ld h, a                                          ; $5d5a: $67
	ld [hl-], a                                      ; $5d5b: $32
	nop                                              ; $5d5c: $00
	inc b                                            ; $5d5d: $04
	adc c                                            ; $5d5e: $89
	ccf                                              ; $5d5f: $3f
	ld d, a                                          ; $5d60: $57
	ret nz                                           ; $5d61: $c0

	ld a, l                                          ; $5d62: $7d
	nop                                              ; $5d63: $00
	inc b                                            ; $5d64: $04
	rra                                              ; $5d65: $1f
	ld h, e                                          ; $5d66: $63
	add l                                            ; $5d67: $85
	ld a, [hl]                                       ; $5d68: $7e
	nop                                              ; $5d69: $00
	inc b                                            ; $5d6a: $04
	adc c                                            ; $5d6b: $89
	ccf                                              ; $5d6c: $3f
	ld d, a                                          ; $5d6d: $57
	rst $38                                          ; $5d6e: $ff
	ld a, [bc]                                       ; $5d6f: $0a
	nop                                              ; $5d70: $00
	inc b                                            ; $5d71: $04
	rra                                              ; $5d72: $1f
	ld h, e                                          ; $5d73: $63
	add l                                            ; $5d74: $85
	ld a, [hl]                                       ; $5d75: $7e
	nop                                              ; $5d76: $00
	inc b                                            ; $5d77: $04
	adc c                                            ; $5d78: $89
	ccf                                              ; $5d79: $3f
	ld d, a                                          ; $5d7a: $57
	ld b, e                                          ; $5d7b: $43
	dec sp                                           ; $5d7c: $3b
	ld bc, $1f04                                     ; $5d7d: $01 $04 $1f
	ld h, e                                          ; $5d80: $63
	add l                                            ; $5d81: $85
	ld a, [hl]                                       ; $5d82: $7e
	ld bc, $8904                                     ; $5d83: $01 $04 $89
	ccf                                              ; $5d86: $3f
	ld d, a                                          ; $5d87: $57
	rra                                              ; $5d88: $1f
	ld [bc], a                                       ; $5d89: $02
	nop                                              ; $5d8a: $00
	inc b                                            ; $5d8b: $04
	rra                                              ; $5d8c: $1f
	ld h, e                                          ; $5d8d: $63
	add l                                            ; $5d8e: $85
	ld a, [hl]                                       ; $5d8f: $7e
	nop                                              ; $5d90: $00
	inc b                                            ; $5d91: $04
	adc c                                            ; $5d92: $89
	ccf                                              ; $5d93: $3f
	ld b, e                                          ; $5d94: $43
	ld l, e                                          ; $5d95: $6b
	dec l                                            ; $5d96: $2d
	nop                                              ; $5d97: $00
	nop                                              ; $5d98: $00
	rra                                              ; $5d99: $1f
	ld [bc], a                                       ; $5d9a: $02
	ld l, e                                          ; $5d9b: $6b
	dec l                                            ; $5d9c: $2d
	nop                                              ; $5d9d: $00
	nop                                              ; $5d9e: $00
	adc b                                            ; $5d9f: $88
	rst $38                                          ; $5da0: $ff
	ld h, e                                          ; $5da1: $63
	xor l                                            ; $5da2: $ad
	ld hl, $2000                                     ; $5da3: $21 $00 $20
	xor e                                            ; $5da6: $ab
	ccf                                              ; $5da7: $3f
	ld b, e                                          ; $5da8: $43
	ld a, a                                          ; $5da9: $7f
	jr nz, jr_010_5dac                               ; $5daa: $20 $00

jr_010_5dac:
	inc b                                            ; $5dac: $04
	ccf                                              ; $5dad: $3f
	ld b, e                                          ; $5dae: $43
	ldh [$7d], a                                     ; $5daf: $e0 $7d
	nop                                              ; $5db1: $00
	nop                                              ; $5db2: $00
	xor e                                            ; $5db3: $ab
	ccf                                              ; $5db4: $3f
	ld b, e                                          ; $5db5: $43
	ccf                                              ; $5db6: $3f
	ld [hl], l                                       ; $5db7: $75
	nop                                              ; $5db8: $00
	inc b                                            ; $5db9: $04
	ccf                                              ; $5dba: $3f
	ld b, e                                          ; $5dbb: $43
	ldh [$7d], a                                     ; $5dbc: $e0 $7d
	nop                                              ; $5dbe: $00
	nop                                              ; $5dbf: $00
	xor e                                            ; $5dc0: $ab
	ccf                                              ; $5dc1: $3f
	ld b, e                                          ; $5dc2: $43
	ld a, a                                          ; $5dc3: $7f
	jr nz, jr_010_5dc6                               ; $5dc4: $20 $00

jr_010_5dc6:
	inc b                                            ; $5dc6: $04
	ccf                                              ; $5dc7: $3f
	ld b, e                                          ; $5dc8: $43
	ldh [$7d], a                                     ; $5dc9: $e0 $7d
	nop                                              ; $5dcb: $00
	inc b                                            ; $5dcc: $04
	xor e                                            ; $5dcd: $ab
	ccf                                              ; $5dce: $3f
	ld b, e                                          ; $5dcf: $43
	call nz, $007d                                   ; $5dd0: $c4 $7d $00
	nop                                              ; $5dd3: $00
	ccf                                              ; $5dd4: $3f
	ld b, e                                          ; $5dd5: $43
	ldh [$7d], a                                     ; $5dd6: $e0 $7d
	nop                                              ; $5dd8: $00
	inc b                                            ; $5dd9: $04
	xor e                                            ; $5dda: $ab
	ccf                                              ; $5ddb: $3f
	ld b, e                                          ; $5ddc: $43
	ld a, l                                          ; $5ddd: $7d
	rlca                                             ; $5dde: $07
	nop                                              ; $5ddf: $00
	inc b                                            ; $5de0: $04
	ccf                                              ; $5de1: $3f
	ld b, e                                          ; $5de2: $43
	ldh [$7d], a                                     ; $5de3: $e0 $7d
	nop                                              ; $5de5: $00
	inc b                                            ; $5de6: $04
	xor e                                            ; $5de7: $ab
	ccf                                              ; $5de8: $3f
	ld b, e                                          ; $5de9: $43
	or $25                                           ; $5dea: $f6 $25
	nop                                              ; $5dec: $00
	inc b                                            ; $5ded: $04
	ccf                                              ; $5dee: $3f
	ld b, e                                          ; $5def: $43
	ldh [$7d], a                                     ; $5df0: $e0 $7d
	nop                                              ; $5df2: $00
	inc b                                            ; $5df3: $04
	xor e                                            ; $5df4: $ab
	ccf                                              ; $5df5: $3f
	ld b, e                                          ; $5df6: $43
	inc [hl]                                         ; $5df7: $34
	ld a, l                                          ; $5df8: $7d
	nop                                              ; $5df9: $00
	inc b                                            ; $5dfa: $04
	ccf                                              ; $5dfb: $3f
	ld b, e                                          ; $5dfc: $43
	ldh [$7d], a                                     ; $5dfd: $e0 $7d
	nop                                              ; $5dff: $00
	nop                                              ; $5e00: $00
	xor e                                            ; $5e01: $ab
	ccf                                              ; $5e02: $3f
	ld b, e                                          ; $5e03: $43
	ld l, b                                          ; $5e04: $68
	ld d, c                                          ; $5e05: $51
	nop                                              ; $5e06: $00
	nop                                              ; $5e07: $00
	ccf                                              ; $5e08: $3f
	ld b, e                                          ; $5e09: $43
	ldh [$7d], a                                     ; $5e0a: $e0 $7d
	nop                                              ; $5e0c: $00
	inc b                                            ; $5e0d: $04
	xor e                                            ; $5e0e: $ab
	ccf                                              ; $5e0f: $3f
	ld b, e                                          ; $5e10: $43
	add [hl]                                         ; $5e11: $86
	ld c, d                                          ; $5e12: $4a
	ld bc, $3f00                                     ; $5e13: $01 $00 $3f
	ld b, e                                          ; $5e16: $43
	ldh [$7d], a                                     ; $5e17: $e0 $7d
	nop                                              ; $5e19: $00
	inc b                                            ; $5e1a: $04
	xor e                                            ; $5e1b: $ab
	ccf                                              ; $5e1c: $3f
	ld b, e                                          ; $5e1d: $43
	and $16                                          ; $5e1e: $e6 $16
	nop                                              ; $5e20: $00
	nop                                              ; $5e21: $00
	ccf                                              ; $5e22: $3f
	ld b, e                                          ; $5e23: $43
	ldh [$7d], a                                     ; $5e24: $e0 $7d
	nop                                              ; $5e26: $00
	inc b                                            ; $5e27: $04
	xor e                                            ; $5e28: $ab
	ccf                                              ; $5e29: $3f
	ld b, e                                          ; $5e2a: $43
	sub $1d                                          ; $5e2b: $d6 $1d
	ld bc, $3f00                                     ; $5e2d: $01 $00 $3f
	ld b, e                                          ; $5e30: $43
	ldh [$7d], a                                     ; $5e31: $e0 $7d
	ld bc, $ab00                                     ; $5e33: $01 $00 $ab
	ccf                                              ; $5e36: $3f
	ld b, e                                          ; $5e37: $43
	ld e, a                                          ; $5e38: $5f
	ld b, b                                          ; $5e39: $40
	nop                                              ; $5e3a: $00
	inc b                                            ; $5e3b: $04
	sbc a                                            ; $5e3c: $9f
	ld b, b                                          ; $5e3d: $40
	ccf                                              ; $5e3e: $3f
	ld d, e                                          ; $5e3f: $53
	nop                                              ; $5e40: $00
	inc b                                            ; $5e41: $04
	xor e                                            ; $5e42: $ab
	ccf                                              ; $5e43: $3f
	ld b, e                                          ; $5e44: $43
	ld c, b                                          ; $5e45: $48
	ld a, [hl]                                       ; $5e46: $7e
	nop                                              ; $5e47: $00
	inc b                                            ; $5e48: $04
	ccf                                              ; $5e49: $3f
	ld b, e                                          ; $5e4a: $43
	ldh [$7d], a                                     ; $5e4b: $e0 $7d
	nop                                              ; $5e4d: $00
	nop                                              ; $5e4e: $00
	xor e                                            ; $5e4f: $ab
	ccf                                              ; $5e50: $3f
	ld b, e                                          ; $5e51: $43
	ld a, a                                          ; $5e52: $7f
	rrca                                             ; $5e53: $0f
	nop                                              ; $5e54: $00
	inc b                                            ; $5e55: $04
	ccf                                              ; $5e56: $3f
	ld b, e                                          ; $5e57: $43
	ldh [$7d], a                                     ; $5e58: $e0 $7d
	nop                                              ; $5e5a: $00
	inc b                                            ; $5e5b: $04
	xor e                                            ; $5e5c: $ab
	ccf                                              ; $5e5d: $3f
	ld b, e                                          ; $5e5e: $43
	inc h                                            ; $5e5f: $24
	ld [hl+], a                                      ; $5e60: $22
	nop                                              ; $5e61: $00
	inc b                                            ; $5e62: $04
	ccf                                              ; $5e63: $3f
	ld b, e                                          ; $5e64: $43
	ldh [$7d], a                                     ; $5e65: $e0 $7d
	nop                                              ; $5e67: $00
	inc b                                            ; $5e68: $04
	xor e                                            ; $5e69: $ab
	ccf                                              ; $5e6a: $3f
	ld b, e                                          ; $5e6b: $43
	ld a, a                                          ; $5e6c: $7f
	ld hl, $0000                                     ; $5e6d: $21 $00 $00
	ccf                                              ; $5e70: $3f
	ld b, e                                          ; $5e71: $43
	ldh [$7d], a                                     ; $5e72: $e0 $7d
	nop                                              ; $5e74: $00
	inc b                                            ; $5e75: $04
	rst GetHLinHL                                          ; $5e76: $cf
	ccf                                              ; $5e77: $3f
	ld b, e                                          ; $5e78: $43
	ld l, e                                          ; $5e79: $6b
	dec l                                            ; $5e7a: $2d
	nop                                              ; $5e7b: $00
	nop                                              ; $5e7c: $00
	ccf                                              ; $5e7d: $3f
	ld b, e                                          ; $5e7e: $43
	rst SubAFromHL                                          ; $5e7f: $d7
	ld e, [hl]                                       ; $5e80: $5e
	nop                                              ; $5e81: $00
	nop                                              ; $5e82: $00
	ccf                                              ; $5e83: $3f
	ld b, e                                          ; $5e84: $43
	add b                                            ; $5e85: $80
	ld a, [hl]                                       ; $5e86: $7e
	nop                                              ; $5e87: $00
	nop                                              ; $5e88: $00
	ccf                                              ; $5e89: $3f
	ld b, e                                          ; $5e8a: $43
	ld a, a                                          ; $5e8b: $7f
	jr nz, jr_010_5e8e                               ; $5e8c: $20 $00

jr_010_5e8e:
	nop                                              ; $5e8e: $00
	rst GetHLinHL                                          ; $5e8f: $cf
	ccf                                              ; $5e90: $3f
	ld b, e                                          ; $5e91: $43
	ld l, e                                          ; $5e92: $6b
	dec l                                            ; $5e93: $2d
	nop                                              ; $5e94: $00
	nop                                              ; $5e95: $00
	ccf                                              ; $5e96: $3f
	ld b, e                                          ; $5e97: $43
	rst SubAFromHL                                          ; $5e98: $d7
	ld e, [hl]                                       ; $5e99: $5e
	nop                                              ; $5e9a: $00
	nop                                              ; $5e9b: $00
	ccf                                              ; $5e9c: $3f
	ld b, e                                          ; $5e9d: $43
	add b                                            ; $5e9e: $80
	ld a, [hl]                                       ; $5e9f: $7e
	nop                                              ; $5ea0: $00
	nop                                              ; $5ea1: $00
	ccf                                              ; $5ea2: $3f
	ld b, e                                          ; $5ea3: $43
	add [hl]                                         ; $5ea4: $86
	ld c, d                                          ; $5ea5: $4a
	nop                                              ; $5ea6: $00
	nop                                              ; $5ea7: $00
	rst GetHLinHL                                          ; $5ea8: $cf
	ccf                                              ; $5ea9: $3f
	ld b, e                                          ; $5eaa: $43
	ld l, e                                          ; $5eab: $6b
	dec l                                            ; $5eac: $2d
	nop                                              ; $5ead: $00
	nop                                              ; $5eae: $00
	ccf                                              ; $5eaf: $3f
	ld b, e                                          ; $5eb0: $43
	rst SubAFromHL                                          ; $5eb1: $d7
	ld e, [hl]                                       ; $5eb2: $5e
	nop                                              ; $5eb3: $00
	nop                                              ; $5eb4: $00
	ccf                                              ; $5eb5: $3f
	ld b, e                                          ; $5eb6: $43
	add c                                            ; $5eb7: $81
	ld l, [hl]                                       ; $5eb8: $6e
	nop                                              ; $5eb9: $00
	nop                                              ; $5eba: $00
	ccf                                              ; $5ebb: $3f
	ld b, e                                          ; $5ebc: $43
	rra                                              ; $5ebd: $1f
	nop                                              ; $5ebe: $00
	nop                                              ; $5ebf: $00
	nop                                              ; $5ec0: $00
	rst GetHLinHL                                          ; $5ec1: $cf
	ccf                                              ; $5ec2: $3f
	ld b, e                                          ; $5ec3: $43
	ld l, e                                          ; $5ec4: $6b
	dec l                                            ; $5ec5: $2d
	nop                                              ; $5ec6: $00
	nop                                              ; $5ec7: $00
	ccf                                              ; $5ec8: $3f
	ld b, e                                          ; $5ec9: $43
	rst SubAFromHL                                          ; $5eca: $d7
	ld e, [hl]                                       ; $5ecb: $5e
	nop                                              ; $5ecc: $00
	nop                                              ; $5ecd: $00
	rst SubAFromDE                                          ; $5ece: $df
	ld a, a                                          ; $5ecf: $7f
	add c                                            ; $5ed0: $81
	ld l, [hl]                                       ; $5ed1: $6e
	nop                                              ; $5ed2: $00
	nop                                              ; $5ed3: $00
	ccf                                              ; $5ed4: $3f
	ld b, e                                          ; $5ed5: $43
	call nz, $007d                                   ; $5ed6: $c4 $7d $00
	nop                                              ; $5ed9: $00
	rst GetHLinHL                                          ; $5eda: $cf
	ccf                                              ; $5edb: $3f
	ld b, e                                          ; $5edc: $43
	ld l, e                                          ; $5edd: $6b
	dec l                                            ; $5ede: $2d
	nop                                              ; $5edf: $00
	nop                                              ; $5ee0: $00
	ccf                                              ; $5ee1: $3f
	ld b, e                                          ; $5ee2: $43
	rst SubAFromHL                                          ; $5ee3: $d7
	ld e, [hl]                                       ; $5ee4: $5e
	nop                                              ; $5ee5: $00
	nop                                              ; $5ee6: $00
	ccf                                              ; $5ee7: $3f
	ld b, e                                          ; $5ee8: $43
	add c                                            ; $5ee9: $81
	ld l, [hl]                                       ; $5eea: $6e
	nop                                              ; $5eeb: $00
	nop                                              ; $5eec: $00
	ccf                                              ; $5eed: $3f
	ld b, e                                          ; $5eee: $43
	rra                                              ; $5eef: $1f
	nop                                              ; $5ef0: $00
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	rst GetHLinHL                                          ; $5ef3: $cf
	ccf                                              ; $5ef4: $3f
	ld b, e                                          ; $5ef5: $43
	ld l, e                                          ; $5ef6: $6b

Call_010_5ef7:
	dec l                                            ; $5ef7: $2d
	nop                                              ; $5ef8: $00
	nop                                              ; $5ef9: $00
	ccf                                              ; $5efa: $3f
	ld b, e                                          ; $5efb: $43
	rst SubAFromHL                                          ; $5efc: $d7
	ld e, [hl]                                       ; $5efd: $5e
	nop                                              ; $5efe: $00
	nop                                              ; $5eff: $00
	ccf                                              ; $5f00: $3f
	ld b, e                                          ; $5f01: $43
	add c                                            ; $5f02: $81
	ld l, [hl]                                       ; $5f03: $6e
	nop                                              ; $5f04: $00
	nop                                              ; $5f05: $00
	ccf                                              ; $5f06: $3f
	ld b, e                                          ; $5f07: $43
	ld l, b                                          ; $5f08: $68
	ld d, c                                          ; $5f09: $51
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	rst GetHLinHL                                          ; $5f0c: $cf
	ccf                                              ; $5f0d: $3f
	ld b, e                                          ; $5f0e: $43
	ld l, e                                          ; $5f0f: $6b
	dec l                                            ; $5f10: $2d
	nop                                              ; $5f11: $00
	nop                                              ; $5f12: $00
	ccf                                              ; $5f13: $3f
	ld b, e                                          ; $5f14: $43
	and $16                                          ; $5f15: $e6 $16
	nop                                              ; $5f17: $00
	nop                                              ; $5f18: $00
	ccf                                              ; $5f19: $3f
	ld b, e                                          ; $5f1a: $43
	add c                                            ; $5f1b: $81
	ld l, [hl]                                       ; $5f1c: $6e
	nop                                              ; $5f1d: $00
	nop                                              ; $5f1e: $00
	ccf                                              ; $5f1f: $3f
	ld b, e                                          ; $5f20: $43
	rra                                              ; $5f21: $1f
	nop                                              ; $5f22: $00
	nop                                              ; $5f23: $00
	nop                                              ; $5f24: $00
	rst GetHLinHL                                          ; $5f25: $cf
	ccf                                              ; $5f26: $3f
	ld b, e                                          ; $5f27: $43
	ld l, e                                          ; $5f28: $6b
	dec l                                            ; $5f29: $2d
	nop                                              ; $5f2a: $00
	nop                                              ; $5f2b: $00
	ccf                                              ; $5f2c: $3f
	ld b, e                                          ; $5f2d: $43
	and $16                                          ; $5f2e: $e6 $16
	nop                                              ; $5f30: $00
	nop                                              ; $5f31: $00
	ccf                                              ; $5f32: $3f
	ld b, e                                          ; $5f33: $43
	add c                                            ; $5f34: $81
	ld l, [hl]                                       ; $5f35: $6e
	nop                                              ; $5f36: $00
	nop                                              ; $5f37: $00
	ccf                                              ; $5f38: $3f
	ld b, e                                          ; $5f39: $43
	ccf                                              ; $5f3a: $3f
	ld [hl], l                                       ; $5f3b: $75
	nop                                              ; $5f3c: $00
	nop                                              ; $5f3d: $00
	rst GetHLinHL                                          ; $5f3e: $cf
	ccf                                              ; $5f3f: $3f
	ld b, e                                          ; $5f40: $43
	ld l, e                                          ; $5f41: $6b
	dec l                                            ; $5f42: $2d
	nop                                              ; $5f43: $00
	nop                                              ; $5f44: $00
	add h                                            ; $5f45: $84
	ld [hl], d                                       ; $5f46: $72
	jr nz, @+$53                                     ; $5f47: $20 $51

	nop                                              ; $5f49: $00
	nop                                              ; $5f4a: $00
	ccf                                              ; $5f4b: $3f
	ld b, e                                          ; $5f4c: $43
	rst SubAFromHL                                          ; $5f4d: $d7
	ld e, [hl]                                       ; $5f4e: $5e
	nop                                              ; $5f4f: $00
	nop                                              ; $5f50: $00
	ccf                                              ; $5f51: $3f
	ld b, e                                          ; $5f52: $43
	ld a, a                                          ; $5f53: $7f
	jr nz, jr_010_5f56                               ; $5f54: $20 $00

jr_010_5f56:
	nop                                              ; $5f56: $00
	rst GetHLinHL                                          ; $5f57: $cf
	ccf                                              ; $5f58: $3f
	ld b, e                                          ; $5f59: $43
	ld l, e                                          ; $5f5a: $6b
	dec l                                            ; $5f5b: $2d
	nop                                              ; $5f5c: $00
	nop                                              ; $5f5d: $00
	ccf                                              ; $5f5e: $3f
	ld b, e                                          ; $5f5f: $43
	add hl, sp                                       ; $5f60: $39
	ld h, a                                          ; $5f61: $67
	nop                                              ; $5f62: $00
	nop                                              ; $5f63: $00
	ccf                                              ; $5f64: $3f
	ld b, e                                          ; $5f65: $43
	add c                                            ; $5f66: $81
	ld l, [hl]                                       ; $5f67: $6e
	nop                                              ; $5f68: $00
	nop                                              ; $5f69: $00
	ccf                                              ; $5f6a: $3f
	ld b, e                                          ; $5f6b: $43
	ld a, a                                          ; $5f6c: $7f
	jr nz, jr_010_5f6f                               ; $5f6d: $20 $00

jr_010_5f6f:
	nop                                              ; $5f6f: $00
	rst GetHLinHL                                          ; $5f70: $cf
	ccf                                              ; $5f71: $3f
	ld b, e                                          ; $5f72: $43
	ld l, e                                          ; $5f73: $6b
	dec l                                            ; $5f74: $2d
	nop                                              ; $5f75: $00
	nop                                              ; $5f76: $00
	ccf                                              ; $5f77: $3f
	ld b, e                                          ; $5f78: $43
	add hl, sp                                       ; $5f79: $39
	ld h, a                                          ; $5f7a: $67
	nop                                              ; $5f7b: $00
	nop                                              ; $5f7c: $00
	ccf                                              ; $5f7d: $3f
	ld b, e                                          ; $5f7e: $43
	add c                                            ; $5f7f: $81
	ld l, [hl]                                       ; $5f80: $6e
	nop                                              ; $5f81: $00
	nop                                              ; $5f82: $00
	ccf                                              ; $5f83: $3f
	ld b, e                                          ; $5f84: $43
	inc [hl]                                         ; $5f85: $34
	ld a, l                                          ; $5f86: $7d
	nop                                              ; $5f87: $00
	nop                                              ; $5f88: $00
	rst GetHLinHL                                          ; $5f89: $cf
	ccf                                              ; $5f8a: $3f
	ld b, e                                          ; $5f8b: $43
	ld l, e                                          ; $5f8c: $6b
	dec l                                            ; $5f8d: $2d
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	ccf                                              ; $5f90: $3f
	ld b, e                                          ; $5f91: $43
	sbc b                                            ; $5f92: $98
	ld a, a                                          ; $5f93: $7f
	nop                                              ; $5f94: $00
	nop                                              ; $5f95: $00
	ccf                                              ; $5f96: $3f
	ld b, e                                          ; $5f97: $43
	cp a                                             ; $5f98: $bf
	ld bc, $0000                                     ; $5f99: $01 $00 $00
	ccf                                              ; $5f9c: $3f
	ld b, e                                          ; $5f9d: $43
	rra                                              ; $5f9e: $1f
	nop                                              ; $5f9f: $00
	nop                                              ; $5fa0: $00
	nop                                              ; $5fa1: $00
	rst GetHLinHL                                          ; $5fa2: $cf
	ccf                                              ; $5fa3: $3f
	ld b, e                                          ; $5fa4: $43
	ld l, e                                          ; $5fa5: $6b
	dec l                                            ; $5fa6: $2d
	nop                                              ; $5fa7: $00
	nop                                              ; $5fa8: $00
	ccf                                              ; $5fa9: $3f
	ld b, e                                          ; $5faa: $43
	rra                                              ; $5fab: $1f
	nop                                              ; $5fac: $00
	nop                                              ; $5fad: $00
	nop                                              ; $5fae: $00
	ccf                                              ; $5faf: $3f
	ld b, e                                          ; $5fb0: $43
	cp a                                             ; $5fb1: $bf
	ld bc, $0000                                     ; $5fb2: $01 $00 $00
	ccf                                              ; $5fb5: $3f
	ld b, e                                          ; $5fb6: $43
	ld a, [hl+]                                      ; $5fb7: $2a
	ld a, [de]                                       ; $5fb8: $1a
	nop                                              ; $5fb9: $00
	nop                                              ; $5fba: $00
	rst GetHLinHL                                          ; $5fbb: $cf
	ccf                                              ; $5fbc: $3f
	ld b, e                                          ; $5fbd: $43
	ld l, e                                          ; $5fbe: $6b
	dec l                                            ; $5fbf: $2d
	nop                                              ; $5fc0: $00
	nop                                              ; $5fc1: $00
	ccf                                              ; $5fc2: $3f
	ld b, e                                          ; $5fc3: $43
	call $007d                                       ; $5fc4: $cd $7d $00
	nop                                              ; $5fc7: $00
	ccf                                              ; $5fc8: $3f
	ld b, e                                          ; $5fc9: $43
	cp a                                             ; $5fca: $bf
	ld bc, $0000                                     ; $5fcb: $01 $00 $00
	ccf                                              ; $5fce: $3f
	ld b, e                                          ; $5fcf: $43
	rra                                              ; $5fd0: $1f
	nop                                              ; $5fd1: $00
	nop                                              ; $5fd2: $00
	nop                                              ; $5fd3: $00
	rst GetHLinHL                                          ; $5fd4: $cf
	ccf                                              ; $5fd5: $3f
	ld b, e                                          ; $5fd6: $43
	ld l, e                                          ; $5fd7: $6b
	dec l                                            ; $5fd8: $2d
	nop                                              ; $5fd9: $00
	nop                                              ; $5fda: $00
	ccf                                              ; $5fdb: $3f
	ld b, e                                          ; $5fdc: $43
	ld a, [bc]                                       ; $5fdd: $0a
	ld a, d                                          ; $5fde: $7a
	nop                                              ; $5fdf: $00
	nop                                              ; $5fe0: $00
	ccf                                              ; $5fe1: $3f
	ld b, e                                          ; $5fe2: $43
	db $db                                           ; $5fe3: $db
	nop                                              ; $5fe4: $00
	nop                                              ; $5fe5: $00
	nop                                              ; $5fe6: $00
	ccf                                              ; $5fe7: $3f
	ld b, e                                          ; $5fe8: $43
	rra                                              ; $5fe9: $1f
	ld d, $00                                        ; $5fea: $16 $00
	nop                                              ; $5fec: $00
	rst GetHLinHL                                          ; $5fed: $cf
	ccf                                              ; $5fee: $3f
	ld b, e                                          ; $5fef: $43
	ld l, e                                          ; $5ff0: $6b
	dec l                                            ; $5ff1: $2d
	nop                                              ; $5ff2: $00
	nop                                              ; $5ff3: $00
	cp a                                             ; $5ff4: $bf
	ld bc, $2d6b                                     ; $5ff5: $01 $6b $2d
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	inc de                                           ; $5ffa: $13
	ld a, [hl]                                       ; $5ffb: $7e
	ld l, e                                          ; $5ffc: $6b
	dec l                                            ; $5ffd: $2d
	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	ccf                                              ; $6000: $3f
	ld b, e                                          ; $6001: $43
	call $007d                                       ; $6002: $cd $7d $00
	nop                                              ; $6005: $00
	rst GetHLinHL                                          ; $6006: $cf
	ccf                                              ; $6007: $3f
	ld b, e                                          ; $6008: $43
	ld l, e                                          ; $6009: $6b
	dec l                                            ; $600a: $2d
	nop                                              ; $600b: $00
	nop                                              ; $600c: $00
	ccf                                              ; $600d: $3f
	ld b, e                                          ; $600e: $43
	rst SubAFromHL                                          ; $600f: $d7
	ld e, [hl]                                       ; $6010: $5e
	nop                                              ; $6011: $00
	nop                                              ; $6012: $00
	ccf                                              ; $6013: $3f
	ld b, e                                          ; $6014: $43
	add c                                            ; $6015: $81
	ld l, [hl]                                       ; $6016: $6e
	nop                                              ; $6017: $00
	nop                                              ; $6018: $00
	ccf                                              ; $6019: $3f
	ld b, e                                          ; $601a: $43
	call nz, $007d                                   ; $601b: $c4 $7d $00
	nop                                              ; $601e: $00
	rst GetHLinHL                                          ; $601f: $cf
	ccf                                              ; $6020: $3f
	ld b, e                                          ; $6021: $43
	ld l, e                                          ; $6022: $6b
	dec l                                            ; $6023: $2d
	nop                                              ; $6024: $00
	nop                                              ; $6025: $00
	ccf                                              ; $6026: $3f
	ld b, e                                          ; $6027: $43
	rst SubAFromHL                                          ; $6028: $d7
	ld e, [hl]                                       ; $6029: $5e
	nop                                              ; $602a: $00
	nop                                              ; $602b: $00
	rst $38                                          ; $602c: $ff
	ld a, a                                          ; $602d: $7f
	inc e                                            ; $602e: $1c
	inc de                                           ; $602f: $13
	jp c, $3f01                                      ; $6030: $da $01 $3f

	ld b, e                                          ; $6033: $43
	rst $38                                          ; $6034: $ff
	jr c, jr_010_6037                                ; $6035: $38 $00

jr_010_6037:
	nop                                              ; $6037: $00
	rst GetHLinHL                                          ; $6038: $cf
	ccf                                              ; $6039: $3f
	ld b, e                                          ; $603a: $43
	ld l, e                                          ; $603b: $6b
	dec l                                            ; $603c: $2d
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	rst FarCall                                          ; $603f: $f7
	ld h, e                                          ; $6040: $63
	jr nz, jr_010_6086                               ; $6041: $20 $43

	nop                                              ; $6043: $00
	nop                                              ; $6044: $00
	rst $38                                          ; $6045: $ff
	ld h, a                                          ; $6046: $67
	ccf                                              ; $6047: $3f
	ld b, e                                          ; $6048: $43
	rra                                              ; $6049: $1f
	ld d, $1f                                        ; $604a: $16 $1f
	ld a, h                                          ; $604c: $7c
	rra                                              ; $604d: $1f
	ld a, h                                          ; $604e: $7c
	nop                                              ; $604f: $00
	nop                                              ; $6050: $00
	rst GetHLinHL                                          ; $6051: $cf
	ccf                                              ; $6052: $3f
	ld b, e                                          ; $6053: $43
	ld l, e                                          ; $6054: $6b
	dec l                                            ; $6055: $2d
	nop                                              ; $6056: $00
	nop                                              ; $6057: $00
	ccf                                              ; $6058: $3f
	ld b, e                                          ; $6059: $43
	rst $38                                          ; $605a: $ff
	ld a, a                                          ; $605b: $7f
	nop                                              ; $605c: $00
	nop                                              ; $605d: $00
	ccf                                              ; $605e: $3f
	ld b, e                                          ; $605f: $43
	ccf                                              ; $6060: $3f
	ld [hl], l                                       ; $6061: $75
	nop                                              ; $6062: $00
	nop                                              ; $6063: $00
	ccf                                              ; $6064: $3f
	ld b, e                                          ; $6065: $43
	ld a, a                                          ; $6066: $7f
	jr nz, jr_010_6069                               ; $6067: $20 $00

jr_010_6069:
	nop                                              ; $6069: $00
	rst GetHLinHL                                          ; $606a: $cf
	ccf                                              ; $606b: $3f
	ld b, e                                          ; $606c: $43
	ld l, e                                          ; $606d: $6b
	dec l                                            ; $606e: $2d
	nop                                              ; $606f: $00
	nop                                              ; $6070: $00
	ccf                                              ; $6071: $3f
	ld b, e                                          ; $6072: $43
	ld a, a                                          ; $6073: $7f
	ld hl, $0000                                     ; $6074: $21 $00 $00
	ccf                                              ; $6077: $3f
	ld b, e                                          ; $6078: $43
	rst $38                                          ; $6079: $ff
	ld hl, $0000                                     ; $607a: $21 $00 $00
	ccf                                              ; $607d: $3f
	ld b, e                                          ; $607e: $43
	ld a, a                                          ; $607f: $7f
	jr nz, jr_010_6082                               ; $6080: $20 $00

jr_010_6082:
	nop                                              ; $6082: $00
	rst GetHLinHL                                          ; $6083: $cf
	ccf                                              ; $6084: $3f
	ld b, e                                          ; $6085: $43

jr_010_6086:
	ld l, e                                          ; $6086: $6b
	dec l                                            ; $6087: $2d
	nop                                              ; $6088: $00
	nop                                              ; $6089: $00
	rst $38                                          ; $608a: $ff
	ld a, a                                          ; $608b: $7f
	ld l, e                                          ; $608c: $6b
	dec l                                            ; $608d: $2d
	nop                                              ; $608e: $00
	nop                                              ; $608f: $00
	ccf                                              ; $6090: $3f
	ld b, e                                          ; $6091: $43
	add b                                            ; $6092: $80
	ld a, [hl]                                       ; $6093: $7e
	nop                                              ; $6094: $00
	nop                                              ; $6095: $00
	ccf                                              ; $6096: $3f
	ld b, e                                          ; $6097: $43
	ld a, a                                          ; $6098: $7f
	jr nz, jr_010_609b                               ; $6099: $20 $00

jr_010_609b:
	nop                                              ; $609b: $00
	rst GetHLinHL                                          ; $609c: $cf
	ccf                                              ; $609d: $3f
	ld b, e                                          ; $609e: $43
	ld l, e                                          ; $609f: $6b
	dec l                                            ; $60a0: $2d
	nop                                              ; $60a1: $00
	nop                                              ; $60a2: $00
	rst $38                                          ; $60a3: $ff
	ld a, a                                          ; $60a4: $7f
	ld l, e                                          ; $60a5: $6b
	dec l                                            ; $60a6: $2d
	nop                                              ; $60a7: $00
	nop                                              ; $60a8: $00
	ccf                                              ; $60a9: $3f
	ld b, e                                          ; $60aa: $43
	add b                                            ; $60ab: $80
	ld a, [hl]                                       ; $60ac: $7e
	nop                                              ; $60ad: $00
	nop                                              ; $60ae: $00
	ccf                                              ; $60af: $3f
	ld b, e                                          ; $60b0: $43
	ld a, a                                          ; $60b1: $7f
	jr nz, jr_010_60b4                               ; $60b2: $20 $00

jr_010_60b4:
	nop                                              ; $60b4: $00
	rst GetHLinHL                                          ; $60b5: $cf
	ccf                                              ; $60b6: $3f
	ld b, e                                          ; $60b7: $43
	ld l, e                                          ; $60b8: $6b
	dec l                                            ; $60b9: $2d
	nop                                              ; $60ba: $00
	nop                                              ; $60bb: $00
	jr nz, jr_010_613d                               ; $60bc: $20 $7f

	jr nz, jr_010_613e                               ; $60be: $20 $7e

	nop                                              ; $60c0: $00
	ld a, h                                          ; $60c1: $7c
	ccf                                              ; $60c2: $3f
	ld b, e                                          ; $60c3: $43
	add b                                            ; $60c4: $80
	inc bc                                           ; $60c5: $03
	nop                                              ; $60c6: $00
	nop                                              ; $60c7: $00
	ccf                                              ; $60c8: $3f
	ld b, e                                          ; $60c9: $43
	ld a, a                                          ; $60ca: $7f
	jr nz, jr_010_60cd                               ; $60cb: $20 $00

jr_010_60cd:
	nop                                              ; $60cd: $00
	rst GetHLinHL                                          ; $60ce: $cf
	ccf                                              ; $60cf: $3f
	ld b, e                                          ; $60d0: $43
	ld l, e                                          ; $60d1: $6b
	dec l                                            ; $60d2: $2d
	nop                                              ; $60d3: $00
	nop                                              ; $60d4: $00
	ccf                                              ; $60d5: $3f
	ld b, e                                          ; $60d6: $43
	add c                                            ; $60d7: $81
	ld l, [hl]                                       ; $60d8: $6e
	nop                                              ; $60d9: $00
	nop                                              ; $60da: $00
	rst SubAFromHL                                          ; $60db: $d7
	ld e, [hl]                                       ; $60dc: $5e
	ld l, e                                          ; $60dd: $6b
	dec l                                            ; $60de: $2d
	nop                                              ; $60df: $00
	nop                                              ; $60e0: $00
	ccf                                              ; $60e1: $3f
	ld b, e                                          ; $60e2: $43
	ld a, a                                          ; $60e3: $7f
	jr nz, jr_010_60e6                               ; $60e4: $20 $00

jr_010_60e6:
	nop                                              ; $60e6: $00
	rst GetHLinHL                                          ; $60e7: $cf
	ccf                                              ; $60e8: $3f
	ld b, e                                          ; $60e9: $43
	ld l, e                                          ; $60ea: $6b
	dec l                                            ; $60eb: $2d
	nop                                              ; $60ec: $00
	nop                                              ; $60ed: $00
	ccf                                              ; $60ee: $3f
	ld b, e                                          ; $60ef: $43
	add c                                            ; $60f0: $81
	ld l, [hl]                                       ; $60f1: $6e
	nop                                              ; $60f2: $00
	nop                                              ; $60f3: $00
	rst SubAFromHL                                          ; $60f4: $d7
	ld e, [hl]                                       ; $60f5: $5e
	ld l, e                                          ; $60f6: $6b
	dec l                                            ; $60f7: $2d
	nop                                              ; $60f8: $00
	nop                                              ; $60f9: $00
	ccf                                              ; $60fa: $3f
	ld b, e                                          ; $60fb: $43
	ld l, b                                          ; $60fc: $68
	ld d, c                                          ; $60fd: $51
	nop                                              ; $60fe: $00
	nop                                              ; $60ff: $00
	rst GetHLinHL                                          ; $6100: $cf
	ccf                                              ; $6101: $3f
	ld b, e                                          ; $6102: $43
	ld l, e                                          ; $6103: $6b
	dec l                                            ; $6104: $2d
	nop                                              ; $6105: $00
	nop                                              ; $6106: $00
	rst $38                                          ; $6107: $ff
	ld a, a                                          ; $6108: $7f
	ld l, e                                          ; $6109: $6b
	dec l                                            ; $610a: $2d
	nop                                              ; $610b: $00
	nop                                              ; $610c: $00
	rst $38                                          ; $610d: $ff
	ld a, a                                          ; $610e: $7f
	add c                                            ; $610f: $81
	ld l, [hl]                                       ; $6110: $6e
	nop                                              ; $6111: $00
	nop                                              ; $6112: $00
	ccf                                              ; $6113: $3f
	ld b, e                                          ; $6114: $43
	ld a, a                                          ; $6115: $7f
	jr nz, jr_010_6118                               ; $6116: $20 $00

jr_010_6118:
	nop                                              ; $6118: $00
	rst GetHLinHL                                          ; $6119: $cf
	ccf                                              ; $611a: $3f
	ld b, e                                          ; $611b: $43
	ld l, e                                          ; $611c: $6b
	dec l                                            ; $611d: $2d
	nop                                              ; $611e: $00
	nop                                              ; $611f: $00
	rst $38                                          ; $6120: $ff
	ld a, a                                          ; $6121: $7f
	ld l, e                                          ; $6122: $6b
	dec l                                            ; $6123: $2d
	nop                                              ; $6124: $00
	nop                                              ; $6125: $00
	rst $38                                          ; $6126: $ff
	ld a, a                                          ; $6127: $7f
	add c                                            ; $6128: $81
	ld l, [hl]                                       ; $6129: $6e
	nop                                              ; $612a: $00
	nop                                              ; $612b: $00
	ccf                                              ; $612c: $3f
	ld b, e                                          ; $612d: $43
	call nz, $007d                                   ; $612e: $c4 $7d $00
	nop                                              ; $6131: $00
	rst GetHLinHL                                          ; $6132: $cf
	ccf                                              ; $6133: $3f
	ld b, e                                          ; $6134: $43
	ld l, e                                          ; $6135: $6b
	dec l                                            ; $6136: $2d
	nop                                              ; $6137: $00
	nop                                              ; $6138: $00
	ccf                                              ; $6139: $3f
	ld b, e                                          ; $613a: $43
	add [hl]                                         ; $613b: $86
	ld c, d                                          ; $613c: $4a

jr_010_613d:
	nop                                              ; $613d: $00

jr_010_613e:
	nop                                              ; $613e: $00
	ccf                                              ; $613f: $3f
	ld b, e                                          ; $6140: $43
	add b                                            ; $6141: $80
	ld a, [hl]                                       ; $6142: $7e
	nop                                              ; $6143: $00
	nop                                              ; $6144: $00
	ccf                                              ; $6145: $3f
	ld b, e                                          ; $6146: $43
	cp a                                             ; $6147: $bf
	nop                                              ; $6148: $00
	nop                                              ; $6149: $00
	nop                                              ; $614a: $00
	rst GetHLinHL                                          ; $614b: $cf
	ccf                                              ; $614c: $3f
	ld b, e                                          ; $614d: $43
	ld l, e                                          ; $614e: $6b
	dec l                                            ; $614f: $2d
	nop                                              ; $6150: $00
	nop                                              ; $6151: $00
	ccf                                              ; $6152: $3f
	ld b, e                                          ; $6153: $43
	add b                                            ; $6154: $80
	ld a, [hl]                                       ; $6155: $7e
	nop                                              ; $6156: $00
	nop                                              ; $6157: $00
	ccf                                              ; $6158: $3f
	ld b, e                                          ; $6159: $43
	rst SubAFromHL                                          ; $615a: $d7
	ld e, [hl]                                       ; $615b: $5e
	nop                                              ; $615c: $00
	nop                                              ; $615d: $00
	ccf                                              ; $615e: $3f
	ld b, e                                          ; $615f: $43
	ld a, a                                          ; $6160: $7f
	jr nz, jr_010_6163                               ; $6161: $20 $00

jr_010_6163:
	nop                                              ; $6163: $00
	rst GetHLinHL                                          ; $6164: $cf
	ccf                                              ; $6165: $3f
	ld b, e                                          ; $6166: $43
	ld l, e                                          ; $6167: $6b
	dec l                                            ; $6168: $2d
	nop                                              ; $6169: $00
	nop                                              ; $616a: $00
	ccf                                              ; $616b: $3f
	ld b, e                                          ; $616c: $43
	add b                                            ; $616d: $80
	ld a, [hl]                                       ; $616e: $7e
	nop                                              ; $616f: $00
	nop                                              ; $6170: $00
	ccf                                              ; $6171: $3f
	ld b, e                                          ; $6172: $43
	rst SubAFromHL                                          ; $6173: $d7
	ld e, [hl]                                       ; $6174: $5e
	nop                                              ; $6175: $00
	nop                                              ; $6176: $00
	ccf                                              ; $6177: $3f
	ld b, e                                          ; $6178: $43
	ld l, b                                          ; $6179: $68
	ld d, c                                          ; $617a: $51
	nop                                              ; $617b: $00
	nop                                              ; $617c: $00
	rst GetHLinHL                                          ; $617d: $cf
	ccf                                              ; $617e: $3f
	ld b, e                                          ; $617f: $43
	ld l, e                                          ; $6180: $6b
	dec l                                            ; $6181: $2d
	nop                                              ; $6182: $00
	nop                                              ; $6183: $00
	ccf                                              ; $6184: $3f
	ld b, e                                          ; $6185: $43
	rst $38                                          ; $6186: $ff
	ld a, a                                          ; $6187: $7f
	nop                                              ; $6188: $00
	nop                                              ; $6189: $00
	ccf                                              ; $618a: $3f
	ld b, e                                          ; $618b: $43
	cp b                                             ; $618c: $b8
	add hl, de                                       ; $618d: $19
	nop                                              ; $618e: $00
	nop                                              ; $618f: $00
	ccf                                              ; $6190: $3f
	ld b, e                                          ; $6191: $43
	rra                                              ; $6192: $1f
	nop                                              ; $6193: $00
	nop                                              ; $6194: $00
	nop                                              ; $6195: $00
	rst GetHLinHL                                          ; $6196: $cf
	ccf                                              ; $6197: $3f
	ld b, e                                          ; $6198: $43
	ld l, e                                          ; $6199: $6b
	dec l                                            ; $619a: $2d
	nop                                              ; $619b: $00
	nop                                              ; $619c: $00
	ccf                                              ; $619d: $3f
	ld b, e                                          ; $619e: $43
	rst $38                                          ; $619f: $ff
	ld hl, $0000                                     ; $61a0: $21 $00 $00
	ccf                                              ; $61a3: $3f
	ld b, e                                          ; $61a4: $43
	rst $38                                          ; $61a5: $ff
	ld hl, $0000                                     ; $61a6: $21 $00 $00
	ccf                                              ; $61a9: $3f
	ld b, e                                          ; $61aa: $43
	ld a, a                                          ; $61ab: $7f
	jr nz, jr_010_61ae                               ; $61ac: $20 $00

jr_010_61ae:
	nop                                              ; $61ae: $00
	rst GetHLinHL                                          ; $61af: $cf
	ccf                                              ; $61b0: $3f
	ld b, e                                          ; $61b1: $43
	ld l, e                                          ; $61b2: $6b
	dec l                                            ; $61b3: $2d
	nop                                              ; $61b4: $00
	nop                                              ; $61b5: $00
	ccf                                              ; $61b6: $3f
	ld b, e                                          ; $61b7: $43
	dec de                                           ; $61b8: $1b
	nop                                              ; $61b9: $00
	nop                                              ; $61ba: $00
	nop                                              ; $61bb: $00
	ccf                                              ; $61bc: $3f
	ld b, e                                          ; $61bd: $43
	db $f4                                           ; $61be: $f4
	stop                                             ; $61bf: $10 $00
	nop                                              ; $61c1: $00
	ccf                                              ; $61c2: $3f
	ld b, e                                          ; $61c3: $43
	rst SubAFromBC                                          ; $61c4: $e7
	ld a, l                                          ; $61c5: $7d
	nop                                              ; $61c6: $00
	nop                                              ; $61c7: $00
	rst GetHLinHL                                          ; $61c8: $cf
	ccf                                              ; $61c9: $3f
	ld b, e                                          ; $61ca: $43
	ld l, e                                          ; $61cb: $6b
	dec l                                            ; $61cc: $2d
	nop                                              ; $61cd: $00
	nop                                              ; $61ce: $00
	rst $38                                          ; $61cf: $ff
	ld a, a                                          ; $61d0: $7f
	ccf                                              ; $61d1: $3f
	ld b, e                                          ; $61d2: $43
	nop                                              ; $61d3: $00
	nop                                              ; $61d4: $00
	ccf                                              ; $61d5: $3f
	ld b, e                                          ; $61d6: $43
	ld sp, hl                                        ; $61d7: $f9
	stop                                             ; $61d8: $10 $00
	nop                                              ; $61da: $00
	ccf                                              ; $61db: $3f
	ld b, e                                          ; $61dc: $43
	ld l, b                                          ; $61dd: $68
	ld [bc], a                                       ; $61de: $02
	nop                                              ; $61df: $00
	nop                                              ; $61e0: $00
	rst GetHLinHL                                          ; $61e1: $cf
	ccf                                              ; $61e2: $3f
	ld b, e                                          ; $61e3: $43
	ld l, e                                          ; $61e4: $6b
	dec l                                            ; $61e5: $2d
	nop                                              ; $61e6: $00
	nop                                              ; $61e7: $00
	jr nz, jr_010_6269                               ; $61e8: $20 $7f

	jr nz, jr_010_626a                               ; $61ea: $20 $7e

	nop                                              ; $61ec: $00
	ld a, h                                          ; $61ed: $7c
	rst $38                                          ; $61ee: $ff
	ld a, a                                          ; $61ef: $7f
	xor $3d                                          ; $61f0: $ee $3d
	nop                                              ; $61f2: $00
	nop                                              ; $61f3: $00
	ccf                                              ; $61f4: $3f
	ld b, e                                          ; $61f5: $43
	ld c, c                                          ; $61f6: $49
	ccf                                              ; $61f7: $3f
	nop                                              ; $61f8: $00
	nop                                              ; $61f9: $00
	rst GetHLinHL                                          ; $61fa: $cf
	ccf                                              ; $61fb: $3f
	ld b, e                                          ; $61fc: $43
	ld l, e                                          ; $61fd: $6b
	dec l                                            ; $61fe: $2d
	nop                                              ; $61ff: $00
	nop                                              ; $6200: $00
	ccf                                              ; $6201: $3f
	ld b, e                                          ; $6202: $43
	rst SubAFromHL                                          ; $6203: $d7
	ld e, [hl]                                       ; $6204: $5e
	nop                                              ; $6205: $00
	nop                                              ; $6206: $00
	ccf                                              ; $6207: $3f
	ld b, e                                          ; $6208: $43
	add l                                            ; $6209: $85
	ld a, [hl]                                       ; $620a: $7e
	nop                                              ; $620b: $00
	nop                                              ; $620c: $00
	ccf                                              ; $620d: $3f
	ld b, e                                          ; $620e: $43
	rra                                              ; $620f: $1f
	nop                                              ; $6210: $00
	nop                                              ; $6211: $00
	nop                                              ; $6212: $00
	rst GetHLinHL                                          ; $6213: $cf
	ccf                                              ; $6214: $3f
	ld b, e                                          ; $6215: $43
	ld l, e                                          ; $6216: $6b
	dec l                                            ; $6217: $2d
	nop                                              ; $6218: $00
	nop                                              ; $6219: $00
	ccf                                              ; $621a: $3f
	ld b, e                                          ; $621b: $43
	ld l, e                                          ; $621c: $6b
	dec l                                            ; $621d: $2d
	nop                                              ; $621e: $00
	nop                                              ; $621f: $00
	ccf                                              ; $6220: $3f
	ld b, e                                          ; $6221: $43
	add l                                            ; $6222: $85
	ld a, [hl]                                       ; $6223: $7e
	nop                                              ; $6224: $00
	nop                                              ; $6225: $00
	ccf                                              ; $6226: $3f
	ld b, e                                          ; $6227: $43
	rra                                              ; $6228: $1f
	nop                                              ; $6229: $00
	nop                                              ; $622a: $00
	nop                                              ; $622b: $00
	ld [hl], h                                       ; $622c: $74
	ld b, d                                          ; $622d: $42
	nop                                              ; $622e: $00
	nop                                              ; $622f: $00
	push de                                          ; $6230: $d5
	ld b, d                                          ; $6231: $42
	nop                                              ; $6232: $00
	nop                                              ; $6233: $00
	ld [hl], $43                                     ; $6234: $36 $43
	nop                                              ; $6236: $00
	nop                                              ; $6237: $00
	and a                                            ; $6238: $a7
	ld b, e                                          ; $6239: $43
	nop                                              ; $623a: $00
	nop                                              ; $623b: $00
	ret nc                                           ; $623c: $d0

	ld c, a                                          ; $623d: $4f
	nop                                              ; $623e: $00
	nop                                              ; $623f: $00
	ld sp, hl                                        ; $6240: $f9
	ld c, a                                          ; $6241: $4f
	nop                                              ; $6242: $00
	nop                                              ; $6243: $00
	ld [hl+], a                                      ; $6244: $22
	ld d, b                                          ; $6245: $50
	nop                                              ; $6246: $00
	nop                                              ; $6247: $00
	ld d, e                                          ; $6248: $53
	ld d, b                                          ; $6249: $50
	nop                                              ; $624a: $00
	nop                                              ; $624b: $00
	db $d3                                           ; $624c: $d3
	ld b, c                                          ; $624d: $41
	nop                                              ; $624e: $00
	nop                                              ; $624f: $00
	db $e4                                           ; $6250: $e4
	ld b, c                                          ; $6251: $41
	nop                                              ; $6252: $00
	nop                                              ; $6253: $00
	push af                                          ; $6254: $f5
	ld b, c                                          ; $6255: $41
	nop                                              ; $6256: $00
	nop                                              ; $6257: $00
	ld b, $42                                        ; $6258: $06 $42
	nop                                              ; $625a: $00
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	ld b, b                                          ; $625d: $40
	nop                                              ; $625e: $00
	nop                                              ; $625f: $00
	ld e, e                                          ; $6260: $5b
	ld b, d                                          ; $6261: $42
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	ld l, l                                          ; $6264: $6d
	ld b, d                                          ; $6265: $42
	nop                                              ; $6266: $00
	nop                                              ; $6267: $00
	ld c, c                                          ; $6268: $49

jr_010_6269:
	ld b, d                                          ; $6269: $42

jr_010_626a:
	ld d, d                                          ; $626a: $52
	ld b, d                                          ; $626b: $42
	nop                                              ; $626c: $00
	nop                                              ; $626d: $00
	ld c, c                                          ; $626e: $49
	ld b, d                                          ; $626f: $42
	ld h, h                                          ; $6270: $64
	ld b, d                                          ; $6271: $42
	nop                                              ; $6272: $00
	nop                                              ; $6273: $00
	jr jr_010_62ba                                   ; $6274: $18 $44

	ld d, c                                          ; $6276: $51
	ld b, h                                          ; $6277: $44
	nop                                              ; $6278: $00
	nop                                              ; $6279: $00
	ld [hl], b                                       ; $627a: $70
	ld b, h                                          ; $627b: $44
	nop                                              ; $627c: $00
	nop                                              ; $627d: $00
	adc c                                            ; $627e: $89
	ld b, h                                          ; $627f: $44
	nop                                              ; $6280: $00
	nop                                              ; $6281: $00
	xor d                                            ; $6282: $aa
	ld b, h                                          ; $6283: $44
	nop                                              ; $6284: $00
	nop                                              ; $6285: $00
	bit 0, h                                         ; $6286: $cb $44
	nop                                              ; $6288: $00
	nop                                              ; $6289: $00
	db $e4                                           ; $628a: $e4
	ld b, h                                          ; $628b: $44
	nop                                              ; $628c: $00
	nop                                              ; $628d: $00
	dec c                                            ; $628e: $0d
	ld b, l                                          ; $628f: $45
	nop                                              ; $6290: $00
	nop                                              ; $6291: $00
	ld l, $45                                        ; $6292: $2e $45
	nop                                              ; $6294: $00
	nop                                              ; $6295: $00
	ld d, a                                          ; $6296: $57
	ld b, l                                          ; $6297: $45
	nop                                              ; $6298: $00
	nop                                              ; $6299: $00
	add b                                            ; $629a: $80
	ld b, l                                          ; $629b: $45
	nop                                              ; $629c: $00
	nop                                              ; $629d: $00
	xor c                                            ; $629e: $a9
	ld b, l                                          ; $629f: $45
	nop                                              ; $62a0: $00
	nop                                              ; $62a1: $00
	jp nz, $0045                                     ; $62a2: $c2 $45 $00

	nop                                              ; $62a5: $00
	inc c                                            ; $62a6: $0c
	ld b, [hl]                                       ; $62a7: $46
	nop                                              ; $62a8: $00
	nop                                              ; $62a9: $00
	dec h                                            ; $62aa: $25
	ld b, [hl]                                       ; $62ab: $46
	nop                                              ; $62ac: $00
	nop                                              ; $62ad: $00
	ld a, $46                                        ; $62ae: $3e $46
	nop                                              ; $62b0: $00
	nop                                              ; $62b1: $00
	db $e3                                           ; $62b2: $e3
	ld b, l                                          ; $62b3: $45
	nop                                              ; $62b4: $00
	nop                                              ; $62b5: $00
	db $e3                                           ; $62b6: $e3
	ld b, l                                          ; $62b7: $45
	nop                                              ; $62b8: $00
	nop                                              ; $62b9: $00

jr_010_62ba:
	ld h, a                                          ; $62ba: $67
	ld b, [hl]                                       ; $62bb: $46
	nop                                              ; $62bc: $00
	nop                                              ; $62bd: $00
	ld [hl], a                                       ; $62be: $77
	ld b, b                                          ; $62bf: $40
	nop                                              ; $62c0: $00
	nop                                              ; $62c1: $00
	add sp, $40                                      ; $62c2: $e8 $40
	nop                                              ; $62c4: $00
	nop                                              ; $62c5: $00
	ld e, c                                          ; $62c6: $59
	ld b, c                                          ; $62c7: $41
	nop                                              ; $62c8: $00
	nop                                              ; $62c9: $00
	halt                                             ; $62ca: $76
	ld e, [hl]                                       ; $62cb: $5e
	nop                                              ; $62cc: $00
	nop                                              ; $62cd: $00
	adc a                                            ; $62ce: $8f
	ld e, [hl]                                       ; $62cf: $5e
	nop                                              ; $62d0: $00
	nop                                              ; $62d1: $00
	xor b                                            ; $62d2: $a8
	ld e, [hl]                                       ; $62d3: $5e
	nop                                              ; $62d4: $00
	nop                                              ; $62d5: $00
	pop bc                                           ; $62d6: $c1
	ld e, [hl]                                       ; $62d7: $5e
	nop                                              ; $62d8: $00
	nop                                              ; $62d9: $00
	jp c, $005e                                      ; $62da: $da $5e $00

	nop                                              ; $62dd: $00
	di                                               ; $62de: $f3
	ld e, [hl]                                       ; $62df: $5e
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	ld a, [$0061]                                    ; $62e2: $fa $61 $00
	nop                                              ; $62e5: $00
	ld d, a                                          ; $62e6: $57
	ld e, a                                          ; $62e7: $5f
	nop                                              ; $62e8: $00
	nop                                              ; $62e9: $00
	ld [hl], b                                       ; $62ea: $70
	ld e, a                                          ; $62eb: $5f
	nop                                              ; $62ec: $00
	nop                                              ; $62ed: $00
	inc c                                            ; $62ee: $0c
	ld e, a                                          ; $62ef: $5f
	nop                                              ; $62f0: $00
	nop                                              ; $62f1: $00
	dec h                                            ; $62f2: $25
	ld e, a                                          ; $62f3: $5f
	nop                                              ; $62f4: $00
	nop                                              ; $62f5: $00
	ld a, $5f                                        ; $62f6: $3e $5f
	nop                                              ; $62f8: $00
	nop                                              ; $62f9: $00
	jr c, jr_010_635c                                ; $62fa: $38 $60

	nop                                              ; $62fc: $00
	nop                                              ; $62fd: $00
	inc de                                           ; $62fe: $13
	ld h, d                                          ; $62ff: $62
	nop                                              ; $6300: $00
	nop                                              ; $6301: $00
	adc c                                            ; $6302: $89
	ld e, a                                          ; $6303: $5f
	nop                                              ; $6304: $00
	nop                                              ; $6305: $00
	and d                                            ; $6306: $a2
	ld e, a                                          ; $6307: $5f
	nop                                              ; $6308: $00
	nop                                              ; $6309: $00
	cp e                                             ; $630a: $bb
	ld e, a                                          ; $630b: $5f
	nop                                              ; $630c: $00
	nop                                              ; $630d: $00
	call nc, $005f                                   ; $630e: $d4 $5f $00
	nop                                              ; $6311: $00
	ld b, $60                                        ; $6312: $06 $60
	nop                                              ; $6314: $00
	nop                                              ; $6315: $00
	db $ed                                           ; $6316: $ed
	ld e, a                                          ; $6317: $5f
	nop                                              ; $6318: $00
	nop                                              ; $6319: $00
	ld [hl-], a                                      ; $631a: $32
	ld h, c                                          ; $631b: $61
	nop                                              ; $631c: $00
	nop                                              ; $631d: $00
	nop                                              ; $631e: $00
	ld h, c                                          ; $631f: $61
	nop                                              ; $6320: $00
	nop                                              ; $6321: $00
	add hl, de                                       ; $6322: $19
	ld h, c                                          ; $6323: $61
	nop                                              ; $6324: $00
	nop                                              ; $6325: $00
	adc $60                                          ; $6326: $ce $60
	nop                                              ; $6328: $00
	nop                                              ; $6329: $00
	rst SubAFromBC                                          ; $632a: $e7
	ld h, b                                          ; $632b: $60
	nop                                              ; $632c: $00
	nop                                              ; $632d: $00
	ld c, e                                          ; $632e: $4b
	ld h, c                                          ; $632f: $61
	nop                                              ; $6330: $00
	nop                                              ; $6331: $00
	ld h, h                                          ; $6332: $64
	ld h, c                                          ; $6333: $61
	nop                                              ; $6334: $00
	nop                                              ; $6335: $00
	sbc h                                            ; $6336: $9c
	ld h, b                                          ; $6337: $60
	nop                                              ; $6338: $00
	nop                                              ; $6339: $00
	add e                                            ; $633a: $83
	ld h, b                                          ; $633b: $60
	nop                                              ; $633c: $00
	nop                                              ; $633d: $00
	ld d, c                                          ; $633e: $51
	ld h, b                                          ; $633f: $60
	nop                                              ; $6340: $00
	nop                                              ; $6341: $00
	or l                                             ; $6342: $b5
	ld h, b                                          ; $6343: $60
	nop                                              ; $6344: $00
	nop                                              ; $6345: $00
	ld l, d                                          ; $6346: $6a
	ld h, b                                          ; $6347: $60
	nop                                              ; $6348: $00
	nop                                              ; $6349: $00
	sub [hl]                                         ; $634a: $96
	ld h, c                                          ; $634b: $61
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	xor a                                            ; $634e: $af
	ld h, c                                          ; $634f: $61
	nop                                              ; $6350: $00
	nop                                              ; $6351: $00
	ld a, l                                          ; $6352: $7d
	ld h, c                                          ; $6353: $61
	nop                                              ; $6354: $00
	nop                                              ; $6355: $00
	pop hl                                           ; $6356: $e1
	ld h, c                                          ; $6357: $61
	nop                                              ; $6358: $00
	nop                                              ; $6359: $00
	sub [hl]                                         ; $635a: $96
	ld h, c                                          ; $635b: $61

jr_010_635c:
	nop                                              ; $635c: $00
	nop                                              ; $635d: $00
	rra                                              ; $635e: $1f
	ld h, b                                          ; $635f: $60
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	rst $38                                          ; $6362: $ff
	ld d, b                                          ; $6363: $50
	nop                                              ; $6364: $00
	nop                                              ; $6365: $00
	jr nc, jr_010_63b9                               ; $6366: $30 $51

	nop                                              ; $6368: $00
	nop                                              ; $6369: $00
	ld h, c                                          ; $636a: $61
	ld d, c                                          ; $636b: $51
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	sub d                                            ; $636e: $92
	ld d, c                                          ; $636f: $51
	nop                                              ; $6370: $00
	nop                                              ; $6371: $00
	jp $0051                                         ; $6372: $c3 $51 $00


	nop                                              ; $6375: $00
	db $f4                                           ; $6376: $f4
	ld d, c                                          ; $6377: $51
	nop                                              ; $6378: $00
	nop                                              ; $6379: $00
	dec h                                            ; $637a: $25
	ld d, d                                          ; $637b: $52
	nop                                              ; $637c: $00
	nop                                              ; $637d: $00
	ld d, [hl]                                       ; $637e: $56
	ld d, d                                          ; $637f: $52
	nop                                              ; $6380: $00
	nop                                              ; $6381: $00
	or $52                                           ; $6382: $f6 $52
	nop                                              ; $6384: $00
	nop                                              ; $6385: $00
	inc bc                                           ; $6386: $03
	ld d, e                                          ; $6387: $53
	nop                                              ; $6388: $00
	nop                                              ; $6389: $00
	ld h, a                                          ; $638a: $67
	ld d, d                                          ; $638b: $52
	nop                                              ; $638c: $00
	nop                                              ; $638d: $00
	add c                                            ; $638e: $81
	ld d, d                                          ; $638f: $52
	nop                                              ; $6390: $00
	nop                                              ; $6391: $00
	ld [hl], h                                       ; $6392: $74
	ld d, d                                          ; $6393: $52
	nop                                              ; $6394: $00
	nop                                              ; $6395: $00
	or l                                             ; $6396: $b5
	ld d, d                                          ; $6397: $52
	nop                                              ; $6398: $00
	nop                                              ; $6399: $00
	xor b                                            ; $639a: $a8
	ld d, d                                          ; $639b: $52
	nop                                              ; $639c: $00
	nop                                              ; $639d: $00
	adc [hl]                                         ; $639e: $8e
	ld d, d                                          ; $639f: $52
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	rst GetHLinHL                                          ; $63a2: $cf
	ld d, d                                          ; $63a3: $52
	nop                                              ; $63a4: $00
	nop                                              ; $63a5: $00
	jp nz, $0052                                     ; $63a6: $c2 $52 $00

	nop                                              ; $63a9: $00
	jp hl                                            ; $63aa: $e9


	ld d, d                                          ; $63ab: $52
	nop                                              ; $63ac: $00
	nop                                              ; $63ad: $00
	inc a                                            ; $63ae: $3c
	ld d, e                                          ; $63af: $53
	nop                                              ; $63b0: $00
	nop                                              ; $63b1: $00
	ld c, c                                          ; $63b2: $49
	ld d, e                                          ; $63b3: $53
	nop                                              ; $63b4: $00
	nop                                              ; $63b5: $00
	dec c                                            ; $63b6: $0d
	ld d, h                                          ; $63b7: $54
	nop                                              ; $63b8: $00

jr_010_63b9:
	nop                                              ; $63b9: $00
	ld a, [de]                                       ; $63ba: $1a
	ld d, h                                          ; $63bb: $54
	nop                                              ; $63bc: $00
	nop                                              ; $63bd: $00
	daa                                              ; $63be: $27
	ld d, h                                          ; $63bf: $54
	nop                                              ; $63c0: $00
	nop                                              ; $63c1: $00
	dec sp                                           ; $63c2: $3b
	ld d, h                                          ; $63c3: $54
	nop                                              ; $63c4: $00
	nop                                              ; $63c5: $00
	db $10                                           ; $63c6: $10
	ld d, e                                          ; $63c7: $53
	nop                                              ; $63c8: $00
	nop                                              ; $63c9: $00
	sbc e                                            ; $63ca: $9b
	ld d, d                                          ; $63cb: $52
	nop                                              ; $63cc: $00
	nop                                              ; $63cd: $00
	call c, $0052                                    ; $63ce: $dc $52 $00
	nop                                              ; $63d1: $00
	ld d, [hl]                                       ; $63d2: $56
	ld d, e                                          ; $63d3: $53
	nop                                              ; $63d4: $00
	nop                                              ; $63d5: $00
	inc [hl]                                         ; $63d6: $34
	ld d, h                                          ; $63d7: $54
	nop                                              ; $63d8: $00
	nop                                              ; $63d9: $00
	ld h, e                                          ; $63da: $63
	ld d, e                                          ; $63db: $53
	nop                                              ; $63dc: $00
	nop                                              ; $63dd: $00
	ld [hl], b                                       ; $63de: $70
	ld d, e                                          ; $63df: $53
	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	ld a, l                                          ; $63e2: $7d
	ld d, e                                          ; $63e3: $53
	nop                                              ; $63e4: $00
	nop                                              ; $63e5: $00
	adc d                                            ; $63e6: $8a
	ld d, e                                          ; $63e7: $53
	nop                                              ; $63e8: $00
	nop                                              ; $63e9: $00
	sub a                                            ; $63ea: $97
	ld d, e                                          ; $63eb: $53
	nop                                              ; $63ec: $00
	nop                                              ; $63ed: $00
	and h                                            ; $63ee: $a4
	ld d, e                                          ; $63ef: $53
	nop                                              ; $63f0: $00
	nop                                              ; $63f1: $00
	or c                                             ; $63f2: $b1
	ld d, e                                          ; $63f3: $53
	nop                                              ; $63f4: $00
	nop                                              ; $63f5: $00
	cp [hl]                                          ; $63f6: $be
	ld d, e                                          ; $63f7: $53
	nop                                              ; $63f8: $00
	nop                                              ; $63f9: $00
	bit 2, e                                         ; $63fa: $cb $53
	nop                                              ; $63fc: $00
	nop                                              ; $63fd: $00
	ret c                                            ; $63fe: $d8

	ld d, e                                          ; $63ff: $53
	nop                                              ; $6400: $00
	nop                                              ; $6401: $00
	push hl                                          ; $6402: $e5
	ld d, e                                          ; $6403: $53
	nop                                              ; $6404: $00
	nop                                              ; $6405: $00
	db $ec                                           ; $6406: $ec
	ld d, e                                          ; $6407: $53
	nop                                              ; $6408: $00
	nop                                              ; $6409: $00
	ld sp, hl                                        ; $640a: $f9
	ld d, e                                          ; $640b: $53
	nop                                              ; $640c: $00
	nop                                              ; $640d: $00

Jump_010_640e:
	nop                                              ; $640e: $00
	ld d, h                                          ; $640f: $54
	nop                                              ; $6410: $00
	nop                                              ; $6411: $00
	ld c, b                                          ; $6412: $48
	ld d, h                                          ; $6413: $54
	ld d, l                                          ; $6414: $55
	ld d, h                                          ; $6415: $54
	nop                                              ; $6416: $00
	nop                                              ; $6417: $00
	ld e, h                                          ; $6418: $5c
	ld d, h                                          ; $6419: $54
	ld l, c                                          ; $641a: $69
	ld d, h                                          ; $641b: $54
	nop                                              ; $641c: $00
	nop                                              ; $641d: $00
	halt                                             ; $641e: $76
	ld d, h                                          ; $641f: $54
	add e                                            ; $6420: $83
	ld d, h                                          ; $6421: $54
	nop                                              ; $6422: $00
	nop                                              ; $6423: $00
	adc d                                            ; $6424: $8a
	ld d, h                                          ; $6425: $54
	sub a                                            ; $6426: $97
	ld d, h                                          ; $6427: $54
	nop                                              ; $6428: $00
	nop                                              ; $6429: $00
	sbc [hl]                                         ; $642a: $9e
	ld d, h                                          ; $642b: $54
	and l                                            ; $642c: $a5
	ld d, h                                          ; $642d: $54
	nop                                              ; $642e: $00
	nop                                              ; $642f: $00
	or d                                             ; $6430: $b2
	ld d, h                                          ; $6431: $54
	cp a                                             ; $6432: $bf
	ld d, h                                          ; $6433: $54
	nop                                              ; $6434: $00
	nop                                              ; $6435: $00
	call z, $0054                                    ; $6436: $cc $54 $00
	nop                                              ; $6439: $00
	reti                                             ; $643a: $d9


	ld d, h                                          ; $643b: $54
	ldh [rHDMA4], a                                  ; $643c: $e0 $54
	nop                                              ; $643e: $00
	nop                                              ; $643f: $00
	db $ed                                           ; $6440: $ed
	ld d, h                                          ; $6441: $54
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	db $f4                                           ; $6444: $f4
	ld d, h                                          ; $6445: $54
	nop                                              ; $6446: $00
	nop                                              ; $6447: $00
	ei                                               ; $6448: $fb
	ld d, h                                          ; $6449: $54
	ld [bc], a                                       ; $644a: $02
	ld d, l                                          ; $644b: $55
	nop                                              ; $644c: $00
	nop                                              ; $644d: $00
	rrca                                             ; $644e: $0f
	ld d, l                                          ; $644f: $55
	inc e                                            ; $6450: $1c
	ld d, l                                          ; $6451: $55
	nop                                              ; $6452: $00
	nop                                              ; $6453: $00
	inc hl                                           ; $6454: $23
	ld d, l                                          ; $6455: $55
	jr nc, jr_010_64ad                               ; $6456: $30 $55

	nop                                              ; $6458: $00
	nop                                              ; $6459: $00
	dec a                                            ; $645a: $3d
	ld d, l                                          ; $645b: $55
	nop                                              ; $645c: $00
	nop                                              ; $645d: $00
	ld b, h                                          ; $645e: $44
	ld d, l                                          ; $645f: $55
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	ld l, c                                          ; $6462: $69
	ld d, l                                          ; $6463: $55
	nop                                              ; $6464: $00
	nop                                              ; $6465: $00
	dec [hl]                                         ; $6466: $35
	ld d, [hl]                                       ; $6467: $56
	nop                                              ; $6468: $00
	nop                                              ; $6469: $00
	xor l                                            ; $646a: $ad
	ld d, l                                          ; $646b: $55
	nop                                              ; $646c: $00
	nop                                              ; $646d: $00
	db $10                                           ; $646e: $10
	ld d, [hl]                                       ; $646f: $56
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	db $eb                                           ; $6472: $eb
	ld d, l                                          ; $6473: $55
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	add d                                            ; $6476: $82
	ld d, l                                          ; $6477: $55
	nop                                              ; $6478: $00
	nop                                              ; $6479: $00
	ld h, [hl]                                       ; $647a: $66
	ld d, [hl]                                       ; $647b: $56
	nop                                              ; $647c: $00
	nop                                              ; $647d: $00
	ret nz                                           ; $647e: $c0

	ld d, l                                          ; $647f: $55
	nop                                              ; $6480: $00
	nop                                              ; $6481: $00
	rrca                                             ; $6482: $0f
	ld d, a                                          ; $6483: $57
	nop                                              ; $6484: $00
	nop                                              ; $6485: $00
	jr z, jr_010_64df                                ; $6486: $28 $57

	nop                                              ; $6488: $00
	nop                                              ; $6489: $00
	ld a, c                                          ; $648a: $79
	ld d, [hl]                                       ; $648b: $56
	nop                                              ; $648c: $00
	nop                                              ; $648d: $00
	sub d                                            ; $648e: $92
	ld d, [hl]                                       ; $648f: $56
	nop                                              ; $6490: $00
	nop                                              ; $6491: $00
	xor e                                            ; $6492: $ab
	ld d, [hl]                                       ; $6493: $56
	nop                                              ; $6494: $00
	nop                                              ; $6495: $00
	call nz, $0056                                   ; $6496: $c4 $56 $00
	nop                                              ; $6499: $00
	db $dd                                           ; $649a: $dd
	ld d, [hl]                                       ; $649b: $56
	nop                                              ; $649c: $00
	nop                                              ; $649d: $00
	or $56                                           ; $649e: $f6 $56
	nop                                              ; $64a0: $00
	nop                                              ; $64a1: $00
	ld b, c                                          ; $64a2: $41
	ld d, a                                          ; $64a3: $57
	nop                                              ; $64a4: $00
	nop                                              ; $64a5: $00
	ld [hl], d                                       ; $64a6: $72
	ld d, a                                          ; $64a7: $57
	nop                                              ; $64a8: $00
	nop                                              ; $64a9: $00
	and e                                            ; $64aa: $a3
	ld d, a                                          ; $64ab: $57
	nop                                              ; $64ac: $00

jr_010_64ad:
	nop                                              ; $64ad: $00
	call nc, $0057                                   ; $64ae: $d4 $57 $00
	nop                                              ; $64b1: $00
	dec b                                            ; $64b2: $05
	ld e, b                                          ; $64b3: $58
	nop                                              ; $64b4: $00
	nop                                              ; $64b5: $00
	ld [hl], $58                                     ; $64b6: $36 $58
	nop                                              ; $64b8: $00
	nop                                              ; $64b9: $00
	ld h, a                                          ; $64ba: $67
	ld e, b                                          ; $64bb: $58
	nop                                              ; $64bc: $00
	nop                                              ; $64bd: $00
	or l                                             ; $64be: $b5
	ld e, h                                          ; $64bf: $5c
	nop                                              ; $64c0: $00
	nop                                              ; $64c1: $00
	jp nz, $005c                                     ; $64c2: $c2 $5c $00

	nop                                              ; $64c5: $00
	rst GetHLinHL                                          ; $64c6: $cf
	ld e, h                                          ; $64c7: $5c
	nop                                              ; $64c8: $00
	nop                                              ; $64c9: $00
	call c, $005c                                    ; $64ca: $dc $5c $00
	nop                                              ; $64cd: $00
	jp hl                                            ; $64ce: $e9


	ld e, h                                          ; $64cf: $5c
	nop                                              ; $64d0: $00
	nop                                              ; $64d1: $00
	or $5c                                           ; $64d2: $f6 $5c
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	inc bc                                           ; $64d6: $03
	ld e, l                                          ; $64d7: $5d
	nop                                              ; $64d8: $00
	nop                                              ; $64d9: $00
	db $10                                           ; $64da: $10
	ld e, l                                          ; $64db: $5d
	nop                                              ; $64dc: $00
	nop                                              ; $64dd: $00
	dec e                                            ; $64de: $1d

jr_010_64df:
	ld e, l                                          ; $64df: $5d
	nop                                              ; $64e0: $00
	nop                                              ; $64e1: $00
	ld a, [hl+]                                      ; $64e2: $2a
	ld e, l                                          ; $64e3: $5d
	nop                                              ; $64e4: $00
	nop                                              ; $64e5: $00
	scf                                              ; $64e6: $37
	ld e, l                                          ; $64e7: $5d
	nop                                              ; $64e8: $00
	nop                                              ; $64e9: $00
	ld b, h                                          ; $64ea: $44
	ld e, l                                          ; $64eb: $5d
	nop                                              ; $64ec: $00
	nop                                              ; $64ed: $00
	ld d, c                                          ; $64ee: $51
	ld e, l                                          ; $64ef: $5d
	nop                                              ; $64f0: $00
	nop                                              ; $64f1: $00
	ld e, [hl]                                       ; $64f2: $5e
	ld e, l                                          ; $64f3: $5d
	nop                                              ; $64f4: $00
	nop                                              ; $64f5: $00
	ld l, e                                          ; $64f6: $6b
	ld e, l                                          ; $64f7: $5d
	nop                                              ; $64f8: $00
	nop                                              ; $64f9: $00
	ld a, b                                          ; $64fa: $78
	ld e, l                                          ; $64fb: $5d
	nop                                              ; $64fc: $00
	nop                                              ; $64fd: $00
	add l                                            ; $64fe: $85
	ld e, l                                          ; $64ff: $5d
	nop                                              ; $6500: $00
	nop                                              ; $6501: $00
	sub d                                            ; $6502: $92
	ld e, l                                          ; $6503: $5d
	nop                                              ; $6504: $00
	nop                                              ; $6505: $00
	and [hl]                                         ; $6506: $a6
	ld e, l                                          ; $6507: $5d
	nop                                              ; $6508: $00
	nop                                              ; $6509: $00
	or e                                             ; $650a: $b3
	ld e, l                                          ; $650b: $5d
	nop                                              ; $650c: $00
	nop                                              ; $650d: $00
	ret nz                                           ; $650e: $c0

	ld e, l                                          ; $650f: $5d
	nop                                              ; $6510: $00
	nop                                              ; $6511: $00
	call $005d                                       ; $6512: $cd $5d $00
	nop                                              ; $6515: $00
	jp c, $005d                                      ; $6516: $da $5d $00

	nop                                              ; $6519: $00
	rst SubAFromBC                                          ; $651a: $e7
	ld e, l                                          ; $651b: $5d
	nop                                              ; $651c: $00
	nop                                              ; $651d: $00
	db $f4                                           ; $651e: $f4
	ld e, l                                          ; $651f: $5d
	nop                                              ; $6520: $00
	nop                                              ; $6521: $00
	ld bc, $005e                                     ; $6522: $01 $5e $00
	nop                                              ; $6525: $00
	ld c, $5e                                        ; $6526: $0e $5e
	nop                                              ; $6528: $00
	nop                                              ; $6529: $00
	dec de                                           ; $652a: $1b
	ld e, [hl]                                       ; $652b: $5e
	nop                                              ; $652c: $00
	nop                                              ; $652d: $00
	jr z, jr_010_658e                                ; $652e: $28 $5e

	nop                                              ; $6530: $00
	nop                                              ; $6531: $00
	dec [hl]                                         ; $6532: $35
	ld e, [hl]                                       ; $6533: $5e
	nop                                              ; $6534: $00
	nop                                              ; $6535: $00
	ld b, d                                          ; $6536: $42
	ld e, [hl]                                       ; $6537: $5e
	nop                                              ; $6538: $00
	nop                                              ; $6539: $00
	ld c, a                                          ; $653a: $4f
	ld e, [hl]                                       ; $653b: $5e
	nop                                              ; $653c: $00
	nop                                              ; $653d: $00
	ld e, h                                          ; $653e: $5c
	ld e, [hl]                                       ; $653f: $5e
	nop                                              ; $6540: $00
	nop                                              ; $6541: $00
	ld l, c                                          ; $6542: $69
	ld e, [hl]                                       ; $6543: $5e
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	rla                                              ; $6546: $17
	ld e, c                                          ; $6547: $59
	nop                                              ; $6548: $00
	nop                                              ; $6549: $00
	jr nc, jr_010_65a5                               ; $654a: $30 $59

	nop                                              ; $654c: $00
	nop                                              ; $654d: $00
	ld h, a                                          ; $654e: $67
	ld e, c                                          ; $654f: $59
	ld a, b                                          ; $6550: $78
	ld e, c                                          ; $6551: $59
	nop                                              ; $6552: $00
	nop                                              ; $6553: $00
	sub h                                            ; $6554: $94
	ld e, c                                          ; $6555: $59
	add c                                            ; $6556: $81
	ld e, c                                          ; $6557: $59
	nop                                              ; $6558: $00
	nop                                              ; $6559: $00
	sub b                                            ; $655a: $90
	ld e, b                                          ; $655b: $58
	sub $59                                          ; $655c: $d6 $59
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	or l                                             ; $6560: $b5
	ld e, c                                          ; $6561: $59
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	ld l, [hl]                                       ; $6564: $6e
	ld e, b                                          ; $6565: $58
	nop                                              ; $6566: $00
	nop                                              ; $6567: $00
	ld a, a                                          ; $6568: $7f
	ld e, b                                          ; $6569: $58
	nop                                              ; $656a: $00
	nop                                              ; $656b: $00
	db $dd                                           ; $656c: $dd
	ld e, c                                          ; $656d: $59
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	ld b, $5a                                        ; $6570: $06 $5a
	nop                                              ; $6572: $00
	nop                                              ; $6573: $00
	rla                                              ; $6574: $17
	ld e, d                                          ; $6575: $5a
	nop                                              ; $6576: $00
	nop                                              ; $6577: $00
	ld b, c                                          ; $6578: $41
	ld e, d                                          ; $6579: $5a
	jr z, jr_010_65d6                                ; $657a: $28 $5a

	ld d, d                                          ; $657c: $52
	ld e, d                                          ; $657d: $5a
	nop                                              ; $657e: $00
	nop                                              ; $657f: $00
	add e                                            ; $6580: $83
	ld e, d                                          ; $6581: $5a
	ld c, $59                                        ; $6582: $0e $59
	nop                                              ; $6584: $00
	nop                                              ; $6585: $00
	cp h                                             ; $6586: $bc
	ld e, d                                          ; $6587: $5a
	xor c                                            ; $6588: $a9
	ld e, b                                          ; $6589: $58
	nop                                              ; $658a: $00
	nop                                              ; $658b: $00
	push hl                                          ; $658c: $e5
	ld e, d                                          ; $658d: $5a

jr_010_658e:
	ld c, $5b                                        ; $658e: $0e $5b
	dec b                                            ; $6590: $05
	ld e, c                                          ; $6591: $59
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	push hl                                          ; $6594: $e5
	ld e, d                                          ; $6595: $5a
	rst SubAFromBC                                          ; $6596: $e7
	ld e, b                                          ; $6597: $58
	dec b                                            ; $6598: $05
	ld e, c                                          ; $6599: $59
	nop                                              ; $659a: $00
	nop                                              ; $659b: $00
	xor e                                            ; $659c: $ab
	ld e, e                                          ; $659d: $5b
	ld l, d                                          ; $659e: $6a
	ld e, e                                          ; $659f: $5b
	ld a, l                                          ; $65a0: $7d
	ld e, e                                          ; $65a1: $5b
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	xor e                                            ; $65a4: $ab

jr_010_65a5:
	ld e, e                                          ; $65a5: $5b
	ld l, d                                          ; $65a6: $6a
	ld e, e                                          ; $65a7: $5b
	sub c                                            ; $65a8: $91
	ld e, e                                          ; $65a9: $5b
	sbc [hl]                                         ; $65aa: $9e
	ld e, e                                          ; $65ab: $5b
	nop                                              ; $65ac: $00
	nop                                              ; $65ad: $00
	xor e                                            ; $65ae: $ab
	ld e, e                                          ; $65af: $5b
	ld l, d                                          ; $65b0: $6a
	ld e, e                                          ; $65b1: $5b
	jp c, $9e58                                      ; $65b2: $da $58 $9e

	ld e, e                                          ; $65b5: $5b
	nop                                              ; $65b6: $00
	nop                                              ; $65b7: $00
	xor e                                            ; $65b8: $ab
	ld e, e                                          ; $65b9: $5b
	ld l, d                                          ; $65ba: $6a
	ld e, e                                          ; $65bb: $5b
	adc d                                            ; $65bc: $8a
	ld e, e                                          ; $65bd: $5b
	nop                                              ; $65be: $00
	nop                                              ; $65bf: $00
	call c, $1d5b                                    ; $65c0: $dc $5b $1d
	ld e, h                                          ; $65c3: $5c
	nop                                              ; $65c4: $00
	nop                                              ; $65c5: $00
	dec de                                           ; $65c6: $1b
	ld e, e                                          ; $65c7: $5b
	ld c, h                                          ; $65c8: $4c
	ld e, e                                          ; $65c9: $5b
	ld e, l                                          ; $65ca: $5d
	ld e, e                                          ; $65cb: $5b
	nop                                              ; $65cc: $00
	nop                                              ; $65cd: $00
	dec de                                           ; $65ce: $1b
	ld e, e                                          ; $65cf: $5b
	db $f4                                           ; $65d0: $f4
	ld e, b                                          ; $65d1: $58
	ld e, l                                          ; $65d2: $5d
	ld e, e                                          ; $65d3: $5b
	nop                                              ; $65d4: $00
	nop                                              ; $65d5: $00

jr_010_65d6:
	rst SubAFromHL                                          ; $65d6: $d7
	ld b, [hl]                                       ; $65d7: $46
	nop                                              ; $65d8: $00
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	ld b, a                                          ; $65db: $47
	nop                                              ; $65dc: $00
	nop                                              ; $65dd: $00
	ld b, c                                          ; $65de: $41
	ld b, a                                          ; $65df: $47
	add d                                            ; $65e0: $82
	ld b, a                                          ; $65e1: $47
	nop                                              ; $65e2: $00
	nop                                              ; $65e3: $00
	and c                                            ; $65e4: $a1
	ld b, a                                          ; $65e5: $47
	xor d                                            ; $65e6: $aa
	ld b, a                                          ; $65e7: $47
	nop                                              ; $65e8: $00
	nop                                              ; $65e9: $00
	jp $0047                                         ; $65ea: $c3 $47 $00


	nop                                              ; $65ed: $00
	inc b                                            ; $65ee: $04
	ld c, b                                          ; $65ef: $48
	ld b, l                                          ; $65f0: $45
	ld c, b                                          ; $65f1: $48
	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	halt                                             ; $65f4: $76
	ld c, b                                          ; $65f5: $48
	or a                                             ; $65f6: $b7
	ld c, b                                          ; $65f7: $48
	jp z, LCDCInterrupt                              ; $65f8: $ca $48 $00

	nop                                              ; $65fb: $00
	rst SubAFromHL                                          ; $65fc: $d7
	ld c, b                                          ; $65fd: $48
	jr jr_010_6649                                   ; $65fe: $18 $49

	nop                                              ; $6600: $00
	nop                                              ; $6601: $00
	ld b, e                                          ; $6602: $43
	ld c, c                                          ; $6603: $49
	ld e, h                                          ; $6604: $5c
	ld c, c                                          ; $6605: $49
	nop                                              ; $6606: $00
	nop                                              ; $6607: $00
	ld l, a                                          ; $6608: $6f
	ld c, c                                          ; $6609: $49
	ld a, b                                          ; $660a: $78
	ld c, c                                          ; $660b: $49
	nop                                              ; $660c: $00
	nop                                              ; $660d: $00
	ld a, a                                          ; $660e: $7f
	ld c, c                                          ; $660f: $49
	nop                                              ; $6610: $00
	nop                                              ; $6611: $00
	or b                                             ; $6612: $b0
	ld c, c                                          ; $6613: $49
	nop                                              ; $6614: $00
	nop                                              ; $6615: $00
	pop hl                                           ; $6616: $e1
	ld c, c                                          ; $6617: $49
	nop                                              ; $6618: $00
	nop                                              ; $6619: $00
	ld [de], a                                       ; $661a: $12
	ld c, d                                          ; $661b: $4a
	nop                                              ; $661c: $00
	nop                                              ; $661d: $00
	ld b, e                                          ; $661e: $43
	ld c, d                                          ; $661f: $4a
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	ld [hl], h                                       ; $6622: $74
	ld c, d                                          ; $6623: $4a
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	and l                                            ; $6626: $a5
	ld c, d                                          ; $6627: $4a
	nop                                              ; $6628: $00
	nop                                              ; $6629: $00
	sub $4a                                          ; $662a: $d6 $4a
	nop                                              ; $662c: $00
	nop                                              ; $662d: $00
	rlca                                             ; $662e: $07
	ld c, e                                          ; $662f: $4b
	nop                                              ; $6630: $00
	nop                                              ; $6631: $00
	jr c, jr_010_667f                                ; $6632: $38 $4b

	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	ld l, c                                          ; $6636: $69
	ld c, e                                          ; $6637: $4b
	nop                                              ; $6638: $00
	nop                                              ; $6639: $00
	sbc d                                            ; $663a: $9a
	ld c, e                                          ; $663b: $4b
	nop                                              ; $663c: $00
	nop                                              ; $663d: $00
	jp $004b                                         ; $663e: $c3 $4b $00


	nop                                              ; $6641: $00
	inc b                                            ; $6642: $04
	ld c, h                                          ; $6643: $4c
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	ld b, l                                          ; $6646: $45
	ld c, h                                          ; $6647: $4c
	nop                                              ; $6648: $00

jr_010_6649:
	nop                                              ; $6649: $00
	add [hl]                                         ; $664a: $86
	ld c, h                                          ; $664b: $4c
	nop                                              ; $664c: $00
	nop                                              ; $664d: $00
	rst JumpTable                                          ; $664e: $c7
	ld c, h                                          ; $664f: $4c
	nop                                              ; $6650: $00
	nop                                              ; $6651: $00
	ld [$004d], sp                                   ; $6652: $08 $4d $00
	nop                                              ; $6655: $00
	ld c, c                                          ; $6656: $49
	ld c, l                                          ; $6657: $4d
	nop                                              ; $6658: $00
	nop                                              ; $6659: $00
	adc d                                            ; $665a: $8a
	ld c, l                                          ; $665b: $4d
	nop                                              ; $665c: $00
	nop                                              ; $665d: $00
	bit 1, l                                         ; $665e: $cb $4d
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	inc c                                            ; $6662: $0c
	ld c, [hl]                                       ; $6663: $4e
	nop                                              ; $6664: $00
	nop                                              ; $6665: $00
	ld c, l                                          ; $6666: $4d
	ld c, [hl]                                       ; $6667: $4e
	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	adc [hl]                                         ; $666a: $8e
	ld c, [hl]                                       ; $666b: $4e
	nop                                              ; $666c: $00
	nop                                              ; $666d: $00
	rst GetHLinHL                                          ; $666e: $cf
	ld c, [hl]                                       ; $666f: $4e
	nop                                              ; $6670: $00
	nop                                              ; $6671: $00
	db $10                                           ; $6672: $10
	ld c, a                                          ; $6673: $4f
	nop                                              ; $6674: $00
	nop                                              ; $6675: $00
	ld h, l                                          ; $6676: $65
	ld c, a                                          ; $6677: $4f
	nop                                              ; $6678: $00
	nop                                              ; $6679: $00
	sbc [hl]                                         ; $667a: $9e
	ld c, a                                          ; $667b: $4f
	nop                                              ; $667c: $00
	nop                                              ; $667d: $00
	rst JumpTable                                          ; $667e: $c7

jr_010_667f:
	ld c, a                                          ; $667f: $4f
	nop                                              ; $6680: $00
	nop                                              ; $6681: $00
	nop                                              ; $6682: $00
	nop                                              ; $6683: $00
	jp z, $0041                                      ; $6684: $ca $41 $00

	nop                                              ; $6687: $00
	nop                                              ; $6688: $00
	nop                                              ; $6689: $00
	nop                                              ; $668a: $00
	ld c, c                                          ; $668b: $49
	ld b, b                                          ; $668c: $40
	inc c                                            ; $668d: $0c
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	nop                                              ; $6690: $00
	nop                                              ; $6691: $00
	ld d, b                                          ; $6692: $50
	ld b, b                                          ; $6693: $40
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	db $ec                                           ; $669a: $ec
	ld d, e                                          ; $669b: $53
	ld c, $00                                        ; $669c: $0e $00
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	nop                                              ; $66a0: $00
	nop                                              ; $66a1: $00
	jr nc, jr_010_6700                               ; $66a2: $30 $5c

	ld bc, $5d9f                                     ; $66a4: $01 $9f $5d
	dec bc                                           ; $66a7: $0b
	nop                                              ; $66a8: $00
	nop                                              ; $66a9: $00
	nop                                              ; $66aa: $00
	nop                                              ; $66ab: $00
	ld h, h                                          ; $66ac: $64
	ld e, h                                          ; $66ad: $5c
	ld bc, $0000                                     ; $66ae: $01 $00 $00
	nop                                              ; $66b1: $00
	nop                                              ; $66b2: $00
	ld l, l                                          ; $66b3: $6d
	ld e, h                                          ; $66b4: $5c
	ld bc, $0000                                     ; $66b5: $01 $00 $00
	nop                                              ; $66b8: $00
	nop                                              ; $66b9: $00
	halt                                             ; $66ba: $76
	ld e, h                                          ; $66bb: $5c
	ld bc, $0000                                     ; $66bc: $01 $00 $00
	nop                                              ; $66bf: $00
	nop                                              ; $66c0: $00
	ld a, a                                          ; $66c1: $7f
	ld e, h                                          ; $66c2: $5c
	ld bc, $0000                                     ; $66c3: $01 $00 $00
	nop                                              ; $66c6: $00
	nop                                              ; $66c7: $00
	adc b                                            ; $66c8: $88
	ld e, h                                          ; $66c9: $5c
	ld bc, $0000                                     ; $66ca: $01 $00 $00
	nop                                              ; $66cd: $00
	nop                                              ; $66ce: $00
	sub c                                            ; $66cf: $91
	ld e, h                                          ; $66d0: $5c
	ld bc, $0000                                     ; $66d1: $01 $00 $00
	nop                                              ; $66d4: $00
	nop                                              ; $66d5: $00
	ld c, c                                          ; $66d6: $49
	ld e, h                                          ; $66d7: $5c
	ld bc, $0000                                     ; $66d8: $01 $00 $00
	nop                                              ; $66db: $00
	nop                                              ; $66dc: $00
	ld d, d                                          ; $66dd: $52
	ld e, h                                          ; $66de: $5c
	ld bc, $0000                                     ; $66df: $01 $00 $00
	nop                                              ; $66e2: $00
	nop                                              ; $66e3: $00
	ld e, e                                          ; $66e4: $5b
	ld e, h                                          ; $66e5: $5c
	ld bc, $0000                                     ; $66e6: $01 $00 $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	sbc d                                            ; $66eb: $9a
	ld e, h                                          ; $66ec: $5c
	ld [bc], a                                       ; $66ed: $02
	nop                                              ; $66ee: $00
	nop                                              ; $66ef: $00
	nop                                              ; $66f0: $00
	nop                                              ; $66f1: $00
	and e                                            ; $66f2: $a3
	ld e, h                                          ; $66f3: $5c
	ld [bc], a                                       ; $66f4: $02
	nop                                              ; $66f5: $00
	nop                                              ; $66f6: $00
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	xor h                                            ; $66f9: $ac
	ld e, h                                          ; $66fa: $5c
	ld [bc], a                                       ; $66fb: $02
	nop                                              ; $66fc: $00
	nop                                              ; $66fd: $00
	nop                                              ; $66fe: $00
	nop                                              ; $66ff: $00

jr_010_6700:
	jp nz, $0a5c                                     ; $6700: $c2 $5c $0a

	nop                                              ; $6703: $00
	nop                                              ; $6704: $00
	nop                                              ; $6705: $00
	nop                                              ; $6706: $00
	rst GetHLinHL                                          ; $6707: $cf
	ld e, h                                          ; $6708: $5c
	ld a, [bc]                                       ; $6709: $0a
	nop                                              ; $670a: $00
	nop                                              ; $670b: $00
	nop                                              ; $670c: $00
	nop                                              ; $670d: $00
	call c, $0a5c                                    ; $670e: $dc $5c $0a
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	jp hl                                            ; $6715: $e9


	ld e, h                                          ; $6716: $5c
	ld a, [bc]                                       ; $6717: $0a
	nop                                              ; $6718: $00
	nop                                              ; $6719: $00
	nop                                              ; $671a: $00
	nop                                              ; $671b: $00
	or $5c                                           ; $671c: $f6 $5c
	ld a, [bc]                                       ; $671e: $0a
	nop                                              ; $671f: $00
	nop                                              ; $6720: $00
	nop                                              ; $6721: $00
	nop                                              ; $6722: $00
	inc bc                                           ; $6723: $03
	ld e, l                                          ; $6724: $5d
	ld a, [bc]                                       ; $6725: $0a
	nop                                              ; $6726: $00
	nop                                              ; $6727: $00
	nop                                              ; $6728: $00
	nop                                              ; $6729: $00
	db $10                                           ; $672a: $10
	ld e, l                                          ; $672b: $5d
	ld a, [bc]                                       ; $672c: $0a
	nop                                              ; $672d: $00
	nop                                              ; $672e: $00
	nop                                              ; $672f: $00
	nop                                              ; $6730: $00
	dec e                                            ; $6731: $1d
	ld e, l                                          ; $6732: $5d
	ld a, [bc]                                       ; $6733: $0a
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	nop                                              ; $6736: $00
	nop                                              ; $6737: $00
	ld a, [hl+]                                      ; $6738: $2a
	ld e, l                                          ; $6739: $5d
	ld a, [bc]                                       ; $673a: $0a
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	nop                                              ; $673d: $00
	nop                                              ; $673e: $00
	scf                                              ; $673f: $37
	ld e, l                                          ; $6740: $5d
	ld a, [bc]                                       ; $6741: $0a
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	nop                                              ; $6744: $00
	nop                                              ; $6745: $00
	ld b, h                                          ; $6746: $44
	ld e, l                                          ; $6747: $5d
	ld a, [bc]                                       ; $6748: $0a
	nop                                              ; $6749: $00
	nop                                              ; $674a: $00
	nop                                              ; $674b: $00
	nop                                              ; $674c: $00
	ld d, c                                          ; $674d: $51
	ld e, l                                          ; $674e: $5d
	ld a, [bc]                                       ; $674f: $0a
	nop                                              ; $6750: $00
	nop                                              ; $6751: $00
	nop                                              ; $6752: $00
	nop                                              ; $6753: $00
	ld e, [hl]                                       ; $6754: $5e
	ld e, l                                          ; $6755: $5d
	ld a, [bc]                                       ; $6756: $0a
	nop                                              ; $6757: $00
	nop                                              ; $6758: $00
	nop                                              ; $6759: $00
	nop                                              ; $675a: $00
	ld l, e                                          ; $675b: $6b
	ld e, l                                          ; $675c: $5d
	ld a, [bc]                                       ; $675d: $0a
	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	ld a, b                                          ; $6762: $78
	ld e, l                                          ; $6763: $5d
	ld a, [bc]                                       ; $6764: $0a
	nop                                              ; $6765: $00
	nop                                              ; $6766: $00
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	add l                                            ; $6769: $85
	ld e, l                                          ; $676a: $5d
	ld a, [bc]                                       ; $676b: $0a
	nop                                              ; $676c: $00
	nop                                              ; $676d: $00
	nop                                              ; $676e: $00
	nop                                              ; $676f: $00
	ld b, e                                          ; $6770: $43
	ld e, c                                          ; $6771: $59
	inc b                                            ; $6772: $04
	nop                                              ; $6773: $00
	nop                                              ; $6774: $00
	nop                                              ; $6775: $00
	nop                                              ; $6776: $00
	nop                                              ; $6777: $00
	ld c, h                                          ; $6778: $4c
	ld e, c                                          ; $6779: $59
	inc b                                            ; $677a: $04
	nop                                              ; $677b: $00
	nop                                              ; $677c: $00
	nop                                              ; $677d: $00
	nop                                              ; $677e: $00
	nop                                              ; $677f: $00
	ld d, l                                          ; $6780: $55
	ld e, c                                          ; $6781: $59
	inc b                                            ; $6782: $04
	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	nop                                              ; $6785: $00
	nop                                              ; $6786: $00
	nop                                              ; $6787: $00
	ld e, [hl]                                       ; $6788: $5e
	ld e, c                                          ; $6789: $59
	inc b                                            ; $678a: $04
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	nop                                              ; $678d: $00
	nop                                              ; $678e: $00
	nop                                              ; $678f: $00
	ld b, e                                          ; $6790: $43
	ld e, c                                          ; $6791: $59
	dec b                                            ; $6792: $05
	nop                                              ; $6793: $00
	nop                                              ; $6794: $00
	nop                                              ; $6795: $00
	nop                                              ; $6796: $00
	nop                                              ; $6797: $00
	ld c, h                                          ; $6798: $4c
	ld e, c                                          ; $6799: $59
	dec b                                            ; $679a: $05
	nop                                              ; $679b: $00
	nop                                              ; $679c: $00
	nop                                              ; $679d: $00
	nop                                              ; $679e: $00
	nop                                              ; $679f: $00
	ld d, l                                          ; $67a0: $55
	ld e, c                                          ; $67a1: $59
	dec b                                            ; $67a2: $05
	nop                                              ; $67a3: $00
	nop                                              ; $67a4: $00
	nop                                              ; $67a5: $00
	nop                                              ; $67a6: $00
	nop                                              ; $67a7: $00
	ld e, [hl]                                       ; $67a8: $5e
	ld e, c                                          ; $67a9: $59
	dec b                                            ; $67aa: $05
	nop                                              ; $67ab: $00
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	ld bc, $000f                                     ; $67ae: $01 $0f $00
	adc a                                            ; $67b1: $8f
	nop                                              ; $67b2: $00
	ld [hl+], a                                      ; $67b3: $22
	nop                                              ; $67b4: $00
	scf                                              ; $67b5: $37
	nop                                              ; $67b6: $00
	daa                                              ; $67b7: $27
	nop                                              ; $67b8: $00
	cpl                                              ; $67b9: $2f
	nop                                              ; $67ba: $00
	rrca                                             ; $67bb: $0f
	nop                                              ; $67bc: $00
	ld bc, $0f08                                     ; $67bd: $01 $08 $0f
	nop                                              ; $67c0: $00
	rrca                                             ; $67c1: $0f
	ld [bc], a                                       ; $67c2: $02
	inc bc                                           ; $67c3: $03
	db $10                                           ; $67c4: $10
	inc bc                                           ; $67c5: $03
	ld [bc], a                                       ; $67c6: $02
	rrca                                             ; $67c7: $0f
	ld b, d                                          ; $67c8: $42
	rrca                                             ; $67c9: $0f
	ld bc, $000f                                     ; $67ca: $01 $0f $00
	adc a                                            ; $67cd: $8f
	nop                                              ; $67ce: $00
	ld [hl+], a                                      ; $67cf: $22
	nop                                              ; $67d0: $00
	scf                                              ; $67d1: $37
	nop                                              ; $67d2: $00
	daa                                              ; $67d3: $27
	nop                                              ; $67d4: $00
	cpl                                              ; $67d5: $2f
	nop                                              ; $67d6: $00
	rrca                                             ; $67d7: $0f
	nop                                              ; $67d8: $00
	ld bc, $0300                                     ; $67d9: $01 $00 $03
	inc b                                            ; $67dc: $04
	inc bc                                           ; $67dd: $03
	nop                                              ; $67de: $00
	rrca                                             ; $67df: $0f
	ld [bc], a                                       ; $67e0: $02
	rrca                                             ; $67e1: $0f
	ld b, d                                          ; $67e2: $42
	rrca                                             ; $67e3: $0f
	ld b, d                                          ; $67e4: $42
	rrca                                             ; $67e5: $0f
	ld bc, $000f                                     ; $67e6: $01 $0f $00
	adc a                                            ; $67e9: $8f
	nop                                              ; $67ea: $00
	ld [hl+], a                                      ; $67eb: $22
	nop                                              ; $67ec: $00
	scf                                              ; $67ed: $37
	nop                                              ; $67ee: $00
	daa                                              ; $67ef: $27
	nop                                              ; $67f0: $00
	cpl                                              ; $67f1: $2f
	nop                                              ; $67f2: $00
	rrca                                             ; $67f3: $0f
	nop                                              ; $67f4: $00
	ld bc, $0f10                                     ; $67f5: $01 $10 $0f
	or b                                             ; $67f8: $b0
	cpl                                              ; $67f9: $2f
	nop                                              ; $67fa: $00
	cpl                                              ; $67fb: $2f
	nop                                              ; $67fc: $00
	rrca                                             ; $67fd: $0f
	ld [bc], a                                       ; $67fe: $02
	rrca                                             ; $67ff: $0f
	ld bc, $001f                                     ; $6800: $01 $1f $00
	rrca                                             ; $6803: $0f
	nop                                              ; $6804: $00
	adc a                                            ; $6805: $8f
	nop                                              ; $6806: $00
	ld [hl+], a                                      ; $6807: $22
	nop                                              ; $6808: $00
	scf                                              ; $6809: $37
	nop                                              ; $680a: $00
	daa                                              ; $680b: $27
	nop                                              ; $680c: $00
	cpl                                              ; $680d: $2f
	nop                                              ; $680e: $00
	rrca                                             ; $680f: $0f
	nop                                              ; $6810: $00
	ld bc, $2b80                                     ; $6811: $01 $80 $2b
	jr nc, jr_010_6825                               ; $6814: $30 $0f

	or b                                             ; $6816: $b0
	cpl                                              ; $6817: $2f
	nop                                              ; $6818: $00
	rrca                                             ; $6819: $0f
	nop                                              ; $681a: $00
	rrca                                             ; $681b: $0f
	nop                                              ; $681c: $00
	inc bc                                           ; $681d: $03
	ld [bc], a                                       ; $681e: $02
	rrca                                             ; $681f: $0f
	ld bc, $021f                                     ; $6820: $01 $1f $02
	adc a                                            ; $6823: $8f
	ld b, d                                          ; $6824: $42

jr_010_6825:
	rrca                                             ; $6825: $0f
	inc b                                            ; $6826: $04
	ld [de], a                                       ; $6827: $12
	nop                                              ; $6828: $00
	inc bc                                           ; $6829: $03
	db $ed                                           ; $682a: $ed
	ld [bc], a                                       ; $682b: $02
	rst $38                                          ; $682c: $ff
	rst SubAFromDE                                          ; $682d: $df
	dec a                                            ; $682e: $3d
	add b                                            ; $682f: $80
	inc de                                           ; $6830: $13
	rra                                              ; $6831: $1f
	ld sp, hl                                        ; $6832: $f9
	rst $38                                          ; $6833: $ff
	ld b, a                                          ; $6834: $47
	ld a, a                                          ; $6835: $7f
	ld [hl-], a                                      ; $6836: $32
	ccf                                              ; $6837: $3f
	dec h                                            ; $6838: $25
	ccf                                              ; $6839: $3f
	ld b, h                                          ; $683a: $44
	ld a, a                                          ; $683b: $7f
	ld b, b                                          ; $683c: $40
	ld a, a                                          ; $683d: $7f
	ld c, [hl]                                       ; $683e: $4e
	ld a, e                                          ; $683f: $7b
	ld a, a                                          ; $6840: $7f
	ld a, l                                          ; $6841: $7d
	dec hl                                           ; $6842: $2b
	ld [hl], $3f                                     ; $6843: $36 $3f
	ld h, $1f                                        ; $6845: $26 $1f
	ld d, $0e                                        ; $6847: $16 $0e
	add hl, bc                                       ; $6849: $09
	rlca                                             ; $684a: $07
	dec b                                            ; $684b: $05
	nop                                              ; $684c: $00
	nop                                              ; $684d: $00
	ret nz                                           ; $684e: $c0

	add d                                            ; $684f: $82
	ret nz                                           ; $6850: $c0

	inc [hl]                                         ; $6851: $34
	db $f4                                           ; $6852: $f4
	adc [hl]                                         ; $6853: $8e
	cp $fc                                           ; $6854: $fe $fc
	db $fc                                           ; $6856: $fc
	adc d                                            ; $6857: $8a
	cp $26                                           ; $6858: $fe $26
	cp $96                                           ; $685a: $fe $96
	cp $d5                                           ; $685c: $fe $d5
	rst $38                                          ; $685e: $ff
	db $fd                                           ; $685f: $fd
	cp a                                             ; $6860: $bf
	ld a, [$be6e]                                    ; $6861: $fa $6e $be
	ld [hl], d                                       ; $6864: $72
	cp $62                                           ; $6865: $fe $62
	db $fc                                           ; $6867: $fc
	ld h, h                                          ; $6868: $64
	ld hl, sp-$78                                    ; $6869: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $686b: $f0 $90
	rla                                              ; $686d: $17
	ret nz                                           ; $686e: $c0

	sbc e                                            ; $686f: $9b
	rrca                                             ; $6870: $0f
	add hl, bc                                       ; $6871: $09
	rlca                                             ; $6872: $07
	inc b                                            ; $6873: $04
	dec bc                                           ; $6874: $0b
	ret nz                                           ; $6875: $c0

	sbc [hl]                                         ; $6876: $9e
	db $10                                           ; $6877: $10
	inc sp                                           ; $6878: $33
	ret nz                                           ; $6879: $c0

	sub h                                            ; $687a: $94
	ld a, c                                          ; $687b: $79
	dec l                                            ; $687c: $2d
	ld [hl], $3f                                     ; $687d: $36 $3f
	ld l, $37                                        ; $687f: $2e $37
	ld a, [hl-]                                      ; $6881: $3a
	ccf                                              ; $6882: $3f
	add hl, hl                                       ; $6883: $29
	ld a, [hl]                                       ; $6884: $7e
	ld b, l                                          ; $6885: $45
	inc sp                                           ; $6886: $33
	ret nz                                           ; $6887: $c0

	sbc b                                            ; $6888: $98
	ld c, $ae                                        ; $6889: $0e $ae
	ld [hl], d                                       ; $688b: $72
	cp $72                                           ; $688c: $fe $72
	db $fc                                           ; $688e: $fc
	ld e, h                                          ; $688f: $5c
	daa                                              ; $6890: $27
	add b                                            ; $6891: $80
	sbc b                                            ; $6892: $98
	ld a, l                                          ; $6893: $7d
	ld a, a                                          ; $6894: $7f
	cpl                                              ; $6895: $2f
	jr nc, jr_010_68d7                               ; $6896: $30 $3f

	ld a, [hl+]                                      ; $6898: $2a
	dec e                                            ; $6899: $1d
	inc hl                                           ; $689a: $23
	add b                                            ; $689b: $80
	sbc b                                            ; $689c: $98
	jp c, $fe3e                                      ; $689d: $da $3e $fe

	ld [bc], a                                       ; $68a0: $02
	cp $52                                           ; $68a1: $fe $52
	cp h                                             ; $68a3: $bc
	ld [hl], e                                       ; $68a4: $73
	add b                                            ; $68a5: $80
	sub c                                            ; $68a6: $91
	ld b, $07                                        ; $68a7: $06 $07
	add hl, bc                                       ; $68a9: $09
	rrca                                             ; $68aa: $0f
	db $10                                           ; $68ab: $10
	rra                                              ; $68ac: $1f
	inc e                                            ; $68ad: $1c
	rla                                              ; $68ae: $17
	inc e                                            ; $68af: $1c
	inc de                                           ; $68b0: $13
	inc c                                            ; $68b1: $0c
	dec bc                                           ; $68b2: $0b
	rlca                                             ; $68b3: $07
	rlca                                             ; $68b4: $07
	rst SubAFromHL                                          ; $68b5: $d7
	inc bc                                           ; $68b6: $03
	rst SubAFromDE                                          ; $68b7: $df
	rrca                                             ; $68b8: $0f
	adc [hl]                                         ; $68b9: $8e
	dec de                                           ; $68ba: $1b
	rra                                              ; $68bb: $1f
	rst $38                                          ; $68bc: $ff
	rst $38                                          ; $68bd: $ff
	nop                                              ; $68be: $00
	nop                                              ; $68bf: $00
	and e                                            ; $68c0: $a3
	db $e3                                           ; $68c1: $e3
	ld d, a                                          ; $68c2: $57
	db $f4                                           ; $68c3: $f4
	rrca                                             ; $68c4: $0f
	pop af                                           ; $68c5: $f1
	ld e, $e2                                        ; $68c6: $1e $e2
	inc c                                            ; $68c8: $0c
	db $ec                                           ; $68c9: $ec
	nop                                              ; $68ca: $00
	jp c, $9ee0                                      ; $68cb: $da $e0 $9e

	ld h, b                                          ; $68ce: $60
	ld [hl], e                                       ; $68cf: $73
	cp $df                                           ; $68d0: $fe $df
	ldh a, [$9d]                                     ; $68d2: $f0 $9d
	sbc b                                            ; $68d4: $98
	ld hl, sp+$77                                    ; $68d5: $f8 $77

jr_010_68d7:
	ldh [hDisp1_OBP0], a                                     ; $68d7: $e0 $93
	or $d7                                           ; $68d9: $f6 $d7
	db $fd                                           ; $68db: $fd
	rra                                              ; $68dc: $1f
	ld hl, sp-$71                                    ; $68dd: $f8 $8f
	ld a, h                                          ; $68df: $7c
	ld h, e                                          ; $68e0: $63
	dec e                                            ; $68e1: $1d
	rra                                              ; $68e2: $1f
	ld bc, $d502                                     ; $68e3: $01 $02 $d5
	inc bc                                           ; $68e6: $03
	ld h, a                                          ; $68e7: $67
	ret nz                                           ; $68e8: $c0

	sub c                                            ; $68e9: $91
	and b                                            ; $68ea: $a0
	ldh [$50], a                                     ; $68eb: $e0 $50
	ldh a, [rAUD1SWEEP]                              ; $68ed: $f0 $10
	ldh a, [$78]                                     ; $68ef: $f0 $78
	ret z                                            ; $68f1: $c8

	ld hl, sp-$60                                    ; $68f2: $f8 $a0
	ld hl, sp+$08                                    ; $68f4: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $68f6: $f0 $10
	ccf                                              ; $68f8: $3f

jr_010_68f9:
	ret nz                                           ; $68f9: $c0

	sub a                                            ; $68fa: $97
	ld a, [hl]                                       ; $68fb: $7e
	ld c, a                                          ; $68fc: $4f
	ld a, c                                          ; $68fd: $79
	ld b, a                                          ; $68fe: $47
	jr c, jr_010_6928                                ; $68ff: $38 $27

	inc e                                            ; $6901: $1c
	rra                                              ; $6902: $1f
	cp a                                             ; $6903: $bf
	inc bc                                           ; $6904: $03
	inc bc                                           ; $6905: $03
	daa                                              ; $6906: $27
	ret nz                                           ; $6907: $c0

	sub l                                            ; $6908: $95
	ld [$1cf8], sp                                   ; $6909: $08 $f8 $1c
	db $e4                                           ; $690c: $e4
	inc e                                            ; $690d: $1c
	db $e4                                           ; $690e: $e4
	jr jr_010_68f9                                   ; $690f: $18 $e8

	ldh a, [$f0]                                     ; $6911: $f0 $f0
	ccf                                              ; $6913: $3f
	ret nz                                           ; $6914: $c0

	ld l, a                                          ; $6915: $6f
	ld b, b                                          ; $6916: $40
	sub l                                            ; $6917: $95
	inc a                                            ; $6918: $3c
	daa                                              ; $6919: $27
	inc a                                            ; $691a: $3c
	rrca                                             ; $691b: $0f
	ld a, $23                                        ; $691c: $3e $23
	rra                                              ; $691e: $1f
	inc de                                           ; $691f: $13
	rrca                                             ; $6920: $0f
	rrca                                             ; $6921: $0f
	ld b, a                                          ; $6922: $47
	ret nz                                           ; $6923: $c0

	sub h                                            ; $6924: $94
	xor b                                            ; $6925: $a8
	ldh [$5c], a                                     ; $6926: $e0 $5c

jr_010_6928:
	db $f4                                           ; $6928: $f4
	ld e, $f2                                        ; $6929: $1e $f2
	ld a, $d2                                        ; $692b: $3e $d2
	inc a                                            ; $692d: $3c
	call z, Call_010_7330                            ; $692e: $cc $30 $73
	jp nz, $c047                                     ; $6931: $c2 $47 $c0

	rst $38                                          ; $6934: $ff
	rst SubAFromDE                                          ; $6935: $df
	inc bc                                           ; $6936: $03
	adc c                                            ; $6937: $89
	inc l                                            ; $6938: $2c
	cpl                                              ; $6939: $2f
	ld [hl], c                                       ; $693a: $71
	ld a, a                                          ; $693b: $7f
	ccf                                              ; $693c: $3f
	ccf                                              ; $693d: $3f
	ld d, c                                          ; $693e: $51
	ld a, a                                          ; $693f: $7f
	ld h, h                                          ; $6940: $64
	ld a, a                                          ; $6941: $7f
	ld l, c                                          ; $6942: $69
	ld a, a                                          ; $6943: $7f
	and e                                            ; $6944: $a3
	db $fc                                           ; $6945: $fc
	or l                                             ; $6946: $b5
	cp $5b                                           ; $6947: $fe $5b
	ld [hl], h                                       ; $6949: $74
	ld a, l                                          ; $694a: $7d
	ld b, [hl]                                       ; $694b: $46
	ld a, a                                          ; $694c: $7f
	ld b, [hl]                                       ; $694d: $46
	ld a, d                                          ; $694e: $7a
	ld a, $84                                        ; $694f: $3e $84
	ld de, $090f                                     ; $6951: $11 $0f $09
	nop                                              ; $6954: $00
	nop                                              ; $6955: $00
	add b                                            ; $6956: $80
	add b                                            ; $6957: $80
	ld d, b                                          ; $6958: $50
	ldh a, [hDisp0_WY]                                     ; $6959: $f0 $88
	ld hl, sp-$1c                                    ; $695b: $f8 $e4
	db $fc                                           ; $695d: $fc
	ld c, b                                          ; $695e: $48
	ld hl, sp-$5c                                    ; $695f: $f8 $a4
	db $fc                                           ; $6961: $fc
	inc h                                            ; $6962: $24
	db $fc                                           ; $6963: $fc
	jp nc, $ba7e                                     ; $6964: $d2 $7e $ba

	ld a, [hl]                                       ; $6967: $7e
	or $1e                                           ; $6968: $f6 $1e
	call c, Call_010_7a64                            ; $696a: $dc $64 $7a
	ld b, d                                          ; $696d: $42
	sbc d                                            ; $696e: $9a
	ld l, b                                          ; $696f: $68
	ld [hl], b                                       ; $6970: $70
	sub b                                            ; $6971: $90
	ldh [$a0], a                                     ; $6972: $e0 $a0
	dec bc                                           ; $6974: $0b
	ret nz                                           ; $6975: $c0

	sbc [hl]                                         ; $6976: $9e
	ld [$c017], sp                                   ; $6977: $08 $17 $c0
	ld a, [hl]                                       ; $697a: $7e
	ld b, d                                          ; $697b: $42
	sbc l                                            ; $697c: $9d
	ldh [rAUD4LEN], a                                ; $697d: $e0 $20
	scf                                              ; $697f: $37
	ret nz                                           ; $6980: $c0

	sub a                                            ; $6981: $97
	ld e, a                                          ; $6982: $5f
	ld [hl], b                                       ; $6983: $70
	ld [hl], a                                       ; $6984: $77
	ld c, h                                          ; $6985: $4c
	ld a, a                                          ; $6986: $7f
	ld c, [hl]                                       ; $6987: $4e
	ccf                                              ; $6988: $3f
	ld a, [hl+]                                      ; $6989: $2a
	rra                                              ; $698a: $1f
	add b                                            ; $698b: $80
	sbc c                                            ; $698c: $99
	db $ec                                           ; $698d: $ec
	inc [hl]                                         ; $698e: $34
	db $fc                                           ; $698f: $fc
	ld [hl], h                                       ; $6990: $74
	ld hl, sp+$58                                    ; $6991: $f8 $58
	daa                                              ; $6993: $27
	add b                                            ; $6994: $80
	ld a, a                                          ; $6995: $7f
	ret nz                                           ; $6996: $c0

	ld a, c                                          ; $6997: $79
	ld sp, hl                                        ; $6998: $f9
	sbc d                                            ; $6999: $9a
	ld c, d                                          ; $699a: $4a
	dec a                                            ; $699b: $3d
	ld h, $1f                                        ; $699c: $26 $1f
	db $10                                           ; $699e: $10
	daa                                              ; $699f: $27
	ret nz                                           ; $69a0: $c0

	sbc d                                            ; $69a1: $9a
	db $fc                                           ; $69a2: $fc
	inc b                                            ; $69a3: $04
	db $fc                                           ; $69a4: $fc
	ld d, h                                          ; $69a5: $54
	cp b                                             ; $69a6: $b8
	ld l, e                                          ; $69a7: $6b
	add b                                            ; $69a8: $80
	rst SubAFromDE                                          ; $69a9: $df
	rlca                                             ; $69aa: $07
	adc e                                            ; $69ab: $8b
	jr jr_010_69cd                                   ; $69ac: $18 $1f

	daa                                              ; $69ae: $27
	jr c, @+$51                                      ; $69af: $38 $4f

	ld [hl], a                                       ; $69b1: $77
	ld c, b                                          ; $69b2: $48
	ld a, a                                          ; $69b3: $7f
	sub l                                            ; $69b4: $95
	rst $38                                          ; $69b5: $ff
	push hl                                          ; $69b6: $e5
	rst $38                                          ; $69b7: $ff
	xor l                                            ; $69b8: $ad
	cp d                                             ; $69b9: $ba
	rra                                              ; $69ba: $1f
	ld d, $0b                                        ; $69bb: $16 $0b
	ld d, $2f                                        ; $69bd: $16 $2f
	ld a, $7b                                        ; $69bf: $3e $7b
	cp $80                                           ; $69c1: $fe $80
	add hl, sp                                       ; $69c3: $39
	ld h, $3d                                        ; $69c4: $26 $3d
	rlca                                             ; $69c6: $07
	rra                                              ; $69c7: $1f
	nop                                              ; $69c8: $00
	nop                                              ; $69c9: $00
	ld a, b                                          ; $69ca: $78
	ld a, b                                          ; $69cb: $78
	add h                                            ; $69cc: $84

jr_010_69cd:
	db $fc                                           ; $69cd: $fc
	ldh [c], a                                       ; $69ce: $e2
	ld e, $f2                                        ; $69cf: $1e $f2
	xor $19                                          ; $69d1: $ee $19
	rst FarCall                                          ; $69d3: $f7
	add hl, hl                                       ; $69d4: $29
	rst $38                                          ; $69d5: $ff
	dec h                                            ; $69d6: $25
	rst $38                                          ; $69d7: $ff
	or l                                             ; $69d8: $b5
	rst SubAFromDE                                          ; $69d9: $df
	ld sp, hl                                        ; $69da: $f9
	ld l, a                                          ; $69db: $6f
	cp l                                             ; $69dc: $bd
	ld [hl], a                                       ; $69dd: $77
	db $fd                                           ; $69de: $fd
	ld h, a                                          ; $69df: $67
	db $fd                                           ; $69e0: $fd
	ld h, a                                          ; $69e1: $67
	adc [hl]                                         ; $69e2: $8e
	ld sp, hl                                        ; $69e3: $f9
	adc a                                            ; $69e4: $8f
	pop af                                           ; $69e5: $f1
	sbc a                                            ; $69e6: $9f
	ldh [c], a                                       ; $69e7: $e2
	cp $02                                           ; $69e8: $fe $02
	rlca                                             ; $69ea: $07
	dec bc                                           ; $69eb: $0b
	rrca                                             ; $69ec: $0f
	rrca                                             ; $69ed: $0f
	ld a, [bc]                                       ; $69ee: $0a
	rrca                                             ; $69ef: $0f
	dec bc                                           ; $69f0: $0b
	ld b, $07                                        ; $69f1: $06 $07
	ld [bc], a                                       ; $69f3: $02
	ld a, e                                          ; $69f4: $7b
	cp $7f                                           ; $69f5: $fe $7f
	ld a, [$03de]                                    ; $69f7: $fa $de $03
	ld a, c                                          ; $69fa: $79
	ld hl, sp+$7d                                    ; $69fb: $f8 $7d
	adc b                                            ; $69fd: $88
	sbc e                                            ; $69fe: $9b
	ld [$3f0f], sp                                   ; $69ff: $08 $0f $3f
	ccf                                              ; $6a02: $3f
	db $fd                                           ; $6a03: $fd
	sub h                                            ; $6a04: $94
	inc l                                            ; $6a05: $2c
	db $fc                                           ; $6a06: $fc
	call nz, Call_010_5c7c                           ; $6a07: $c4 $7c $5c
	or b                                             ; $6a0a: $b0
	db $fc                                           ; $6a0b: $fc
	db $f4                                           ; $6a0c: $f4
	cp b                                             ; $6a0d: $b8
	ld hl, sp-$58                                    ; $6a0e: $f8 $a8
	ld a, e                                          ; $6a10: $7b
	cp $7e                                           ; $6a11: $fe $7e
	adc h                                            ; $6a13: $8c
	ld a, d                                          ; $6a14: $7a
	inc a                                            ; $6a15: $3c
	ld a, [hl]                                       ; $6a16: $7e
	dec l                                            ; $6a17: $2d
	ld a, [hl]                                       ; $6a18: $7e
	add d                                            ; $6a19: $82
	sbc b                                            ; $6a1a: $98
	sub b                                            ; $6a1b: $90
	sbc b                                            ; $6a1c: $98
	ld hl, sp-$78                                    ; $6a1d: $f8 $88
	ld hl, sp-$04                                    ; $6a1f: $f8 $fc
	db $fc                                           ; $6a21: $fc
	db $fd                                           ; $6a22: $fd
	inc bc                                           ; $6a23: $03
	add b                                            ; $6a24: $80
	ld b, a                                          ; $6a25: $47
	add b                                            ; $6a26: $80
	sbc [hl]                                         ; $6a27: $9e
	rrca                                             ; $6a28: $0f
	ld a, e                                          ; $6a29: $7b
	add d                                            ; $6a2a: $82
	ld a, a                                          ; $6a2b: $7f
	ld a, [hl]                                       ; $6a2c: $7e
	sbc [hl]                                         ; $6a2d: $9e
	ld d, a                                          ; $6a2e: $57
	ld l, a                                          ; $6a2f: $6f
	add b                                            ; $6a30: $80
	dec sp                                           ; $6a31: $3b
	ret nz                                           ; $6a32: $c0

	ld a, a                                          ; $6a33: $7f
	ld a, [bc]                                       ; $6a34: $0a
	sub h                                            ; $6a35: $94
	ld d, $2d                                        ; $6a36: $16 $2d
	ld a, $2e                                        ; $6a38: $3e $2e
	ccf                                              ; $6a3a: $3f
	cpl                                              ; $6a3b: $2f
	add hl, sp                                       ; $6a3c: $39
	cpl                                              ; $6a3d: $2f
	inc a                                            ; $6a3e: $3c
	rra                                              ; $6a3f: $1f
	inc de                                           ; $6a40: $13
	inc sp                                           ; $6a41: $33
	ret nz                                           ; $6a42: $c0

	sbc d                                            ; $6a43: $9a
	ld [hl], a                                       ; $6a44: $77
	db $dd                                           ; $6a45: $dd
	ld h, a                                          ; $6a46: $67
	ld l, l                                          ; $6a47: $6d
	rst FarCall                                          ; $6a48: $f7
	ld a, e                                          ; $6a49: $7b
	ret nz                                           ; $6a4a: $c0

	sub h                                            ; $6a4b: $94
	rra                                              ; $6a4c: $1f
	ldh [c], a                                       ; $6a4d: $e2
	cp $0f                                           ; $6a4e: $fe $0f
	add hl, bc                                       ; $6a50: $09
	ld e, $13                                        ; $6a51: $1e $13
	rra                                              ; $6a53: $1f
	ld [de], a                                       ; $6a54: $12
	rrca                                             ; $6a55: $0f
	rrca                                             ; $6a56: $0f
	rla                                              ; $6a57: $17
	ld b, b                                          ; $6a58: $40
	sbc e                                            ; $6a59: $9b
	ld d, b                                          ; $6a5a: $50
	cp h                                             ; $6a5b: $bc
	db $f4                                           ; $6a5c: $f4
	db $fc                                           ; $6a5d: $fc
	rra                                              ; $6a5e: $1f
	ld b, b                                          ; $6a5f: $40
	rst SubAFromDE                                          ; $6a60: $df
	rrca                                             ; $6a61: $0f
	ld a, l                                          ; $6a62: $7d
	add b                                            ; $6a63: $80
	add [hl]                                         ; $6a64: $86
	inc hl                                           ; $6a65: $23
	inc a                                            ; $6a66: $3c
	daa                                              ; $6a67: $27
	dec sp                                           ; $6a68: $3b
	ld c, h                                          ; $6a69: $4c
	ld [hl], a                                       ; $6a6a: $77
	ld c, d                                          ; $6a6b: $4a
	ld a, a                                          ; $6a6c: $7f
	ld d, d                                          ; $6a6d: $52
	ld a, a                                          ; $6a6e: $7f
	ld d, [hl]                                       ; $6a6f: $56
	ld a, l                                          ; $6a70: $7d
	ld c, a                                          ; $6a71: $4f
	ld a, b                                          ; $6a72: $78
	ld e, a                                          ; $6a73: $5f
	ld [hl], a                                       ; $6a74: $77
	ld e, e                                          ; $6a75: $5b
	halt                                             ; $6a76: $76
	ld e, a                                          ; $6a77: $5f
	halt                                             ; $6a78: $76
	ld c, a                                          ; $6a79: $4f
	ld a, b                                          ; $6a7a: $78
	ld b, a                                          ; $6a7b: $47
	ld a, h                                          ; $6a7c: $7c
	daa                                              ; $6a7d: $27
	ld a, e                                          ; $6a7e: $7b
	cp h                                             ; $6a7f: $bc
	rst SubAFromDE                                          ; $6a80: $df
	ld [hl], b                                       ; $6a81: $70
	add h                                            ; $6a82: $84
	adc h                                            ; $6a83: $8c
	db $fc                                           ; $6a84: $fc
	ldh a, [c]                                       ; $6a85: $f2
	ld c, $f9                                        ; $6a86: $0e $f9
	rst FarCall                                          ; $6a88: $f7
	add hl, bc                                       ; $6a89: $09
	rst $38                                          ; $6a8a: $ff
	ld d, h                                          ; $6a8b: $54
	rst $38                                          ; $6a8c: $ff
	ld d, e                                          ; $6a8d: $53
	rst $38                                          ; $6a8e: $ff
	jp c, $fcae                                      ; $6a8f: $da $ae $fc

	inc b                                            ; $6a92: $04
	ld hl, sp+$74                                    ; $6a93: $f8 $74
	cp d                                             ; $6a95: $ba
	ld l, [hl]                                       ; $6a96: $6e
	ld a, [$fa6e]                                    ; $6a97: $fa $6e $fa
	adc $f2                                          ; $6a9a: $ce $f2
	ld e, $f0                                        ; $6a9c: $1e $f0
	ld [hl], e                                       ; $6a9e: $73
	cp [hl]                                          ; $6a9f: $be
	ldh [hDisp0_SCY], a                                     ; $6aa0: $e0 $83
	rst SubAFromDE                                          ; $6aa2: $df
	inc bc                                           ; $6aa3: $03
	sbc [hl]                                         ; $6aa4: $9e
	inc c                                            ; $6aa5: $0c
	ld a, e                                          ; $6aa6: $7b
	ld a, $96                                        ; $6aa7: $3e $96
	ld hl, $403f                                     ; $6aa9: $21 $3f $40
	ld a, a                                          ; $6aac: $7f
	ld b, c                                          ; $6aad: $41
	ld a, a                                          ; $6aae: $7f
	add b                                            ; $6aaf: $80
	rst $38                                          ; $6ab0: $ff
	add c                                            ; $6ab1: $81
	ld a, e                                          ; $6ab2: $7b
	cp $9b                                           ; $6ab3: $fe $9b
	ld b, e                                          ; $6ab5: $43
	ld a, [hl]                                       ; $6ab6: $7e
	ld b, e                                          ; $6ab7: $43
	ld a, [hl]                                       ; $6ab8: $7e
	ld [hl], a                                       ; $6ab9: $77
	ldh a, [$9b]                                     ; $6aba: $f0 $9b
	sbc h                                            ; $6abc: $9c
	rst $38                                          ; $6abd: $ff
	db $e3                                           ; $6abe: $e3
	db $e3                                           ; $6abf: $e3
	ld [hl], l                                       ; $6ac0: $75
	ret nz                                           ; $6ac1: $c0

	ld a, h                                          ; $6ac2: $7c
	jp nc, $3e7c                                     ; $6ac3: $d2 $7c $3e

	ld a, h                                          ; $6ac6: $7c
	ld a, h                                          ; $6ac7: $7c
	ld a, l                                          ; $6ac8: $7d
	call $fe7f                                       ; $6ac9: $cd $7f $fe
	sbc l                                            ; $6acc: $9d
	ld [bc], a                                       ; $6acd: $02
	cp $77                                           ; $6ace: $fe $77
	cp $7e                                           ; $6ad0: $fe $7e
	or b                                             ; $6ad2: $b0
	ld a, a                                          ; $6ad3: $7f
	cp $7f                                           ; $6ad4: $fe $7f
	ldh a, [$7f]                                     ; $6ad6: $f0 $7f
	db $ec                                           ; $6ad8: $ec
	ld a, a                                          ; $6ad9: $7f
	add sp, -$21                                     ; $6ada: $e8 $df
	add b                                            ; $6adc: $80
	ld l, a                                          ; $6add: $6f
	jp nz, $2082                                     ; $6ade: $c2 $82 $20

	ccf                                              ; $6ae1: $3f
	ld b, c                                          ; $6ae2: $41
	ld a, a                                          ; $6ae3: $7f
	ld b, e                                          ; $6ae4: $43
	ld a, [hl]                                       ; $6ae5: $7e
	add e                                            ; $6ae6: $83
	cp $87                                           ; $6ae7: $fe $87
	db $fd                                           ; $6ae9: $fd
	adc a                                            ; $6aea: $8f
	ld a, [$fd87]                                    ; $6aeb: $fa $87 $fd
	ld b, e                                          ; $6aee: $43
	ld a, [hl]                                       ; $6aef: $7e
	ld b, c                                          ; $6af0: $41
	ld a, a                                          ; $6af1: $7f
	jr nz, @+$41                                     ; $6af2: $20 $3f

	jr jr_010_6b15                                   ; $6af4: $18 $1f

	ld b, $07                                        ; $6af6: $06 $07
	ld bc, $c001                                     ; $6af8: $01 $01 $c0
	ret nz                                           ; $6afb: $c0

	jr nc, jr_010_6b71                               ; $6afc: $30 $73

	call nz, Call_010_448f                           ; $6afe: $c4 $8f $44
	db $fc                                           ; $6b01: $fc
	ldh [c], a                                       ; $6b02: $e2
	cp [hl]                                          ; $6b03: $be
	ldh [c], a                                       ; $6b04: $e2
	cp [hl]                                          ; $6b05: $be
	pop hl                                           ; $6b06: $e1
	ccf                                              ; $6b07: $3f
	pop hl                                           ; $6b08: $e1
	rst $38                                          ; $6b09: $ff
	pop hl                                           ; $6b0a: $e1
	ccf                                              ; $6b0b: $3f
	ldh [c], a                                       ; $6b0c: $e2
	ld a, $c2                                        ; $6b0d: $3e $c2
	cp $77                                           ; $6b0f: $fe $77
	or h                                             ; $6b11: $b4
	sbc e                                            ; $6b12: $9b
	add hl, de                                       ; $6b13: $19
	rst $38                                          ; $6b14: $ff

jr_010_6b15:
	rst SubAFromBC                                          ; $6b15: $e7
	rst SubAFromBC                                          ; $6b16: $e7
	ld l, d                                          ; $6b17: $6a
	inc bc                                           ; $6b18: $03
	rst $38                                          ; $6b19: $ff
	rst SubAFromDE                                          ; $6b1a: $df
	dec a                                            ; $6b1b: $3d
	add b                                            ; $6b1c: $80
	inc de                                           ; $6b1d: $13
	rra                                              ; $6b1e: $1f
	ld sp, hl                                        ; $6b1f: $f9
	rst $38                                          ; $6b20: $ff
	ld b, a                                          ; $6b21: $47
	ld a, a                                          ; $6b22: $7f
	ld [hl-], a                                      ; $6b23: $32
	ccf                                              ; $6b24: $3f
	dec h                                            ; $6b25: $25
	ccf                                              ; $6b26: $3f
	ld b, h                                          ; $6b27: $44
	ld a, a                                          ; $6b28: $7f
	ld b, b                                          ; $6b29: $40
	ld a, a                                          ; $6b2a: $7f
	ld c, [hl]                                       ; $6b2b: $4e
	ld a, e                                          ; $6b2c: $7b
	ld a, a                                          ; $6b2d: $7f
	ld a, l                                          ; $6b2e: $7d
	dec hl                                           ; $6b2f: $2b
	ld [hl], $3f                                     ; $6b30: $36 $3f
	ld h, $1f                                        ; $6b32: $26 $1f
	ld d, $0e                                        ; $6b34: $16 $0e
	add hl, bc                                       ; $6b36: $09
	rlca                                             ; $6b37: $07
	dec b                                            ; $6b38: $05
	nop                                              ; $6b39: $00
	nop                                              ; $6b3a: $00
	ret nz                                           ; $6b3b: $c0

	add d                                            ; $6b3c: $82
	ret nz                                           ; $6b3d: $c0

	inc [hl]                                         ; $6b3e: $34
	db $f4                                           ; $6b3f: $f4
	adc [hl]                                         ; $6b40: $8e
	cp $fc                                           ; $6b41: $fe $fc
	db $fc                                           ; $6b43: $fc
	adc d                                            ; $6b44: $8a
	cp $26                                           ; $6b45: $fe $26
	cp $96                                           ; $6b47: $fe $96
	cp $d5                                           ; $6b49: $fe $d5
	rst $38                                          ; $6b4b: $ff
	db $fd                                           ; $6b4c: $fd
	cp a                                             ; $6b4d: $bf
	ld a, [$be6e]                                    ; $6b4e: $fa $6e $be
	ld [hl], d                                       ; $6b51: $72
	cp $62                                           ; $6b52: $fe $62
	db $fc                                           ; $6b54: $fc
	ld h, h                                          ; $6b55: $64
	ld hl, sp-$78                                    ; $6b56: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $6b58: $f0 $90
	rla                                              ; $6b5a: $17
	ret nz                                           ; $6b5b: $c0

	sbc e                                            ; $6b5c: $9b
	rrca                                             ; $6b5d: $0f
	add hl, bc                                       ; $6b5e: $09
	rlca                                             ; $6b5f: $07
	inc b                                            ; $6b60: $04
	dec bc                                           ; $6b61: $0b
	ret nz                                           ; $6b62: $c0

	sbc [hl]                                         ; $6b63: $9e
	db $10                                           ; $6b64: $10
	inc sp                                           ; $6b65: $33
	ret nz                                           ; $6b66: $c0

	sub h                                            ; $6b67: $94
	ld a, c                                          ; $6b68: $79
	dec l                                            ; $6b69: $2d
	ld [hl], $3f                                     ; $6b6a: $36 $3f
	ld l, $3f                                        ; $6b6c: $2e $3f
	ld a, [hl+]                                      ; $6b6e: $2a
	ccf                                              ; $6b6f: $3f
	add hl, sp                                       ; $6b70: $39

jr_010_6b71:
	ld a, $2d                                        ; $6b71: $3e $2d
	inc sp                                           ; $6b73: $33
	ret nz                                           ; $6b74: $c0

	sbc b                                            ; $6b75: $98
	ld c, $ae                                        ; $6b76: $0e $ae
	ld [hl], d                                       ; $6b78: $72
	cp $72                                           ; $6b79: $fe $72
	db $fc                                           ; $6b7b: $fc
	ld e, h                                          ; $6b7c: $5c
	daa                                              ; $6b7d: $27
	add b                                            ; $6b7e: $80
	sbc b                                            ; $6b7f: $98
	ld a, l                                          ; $6b80: $7d
	ld a, a                                          ; $6b81: $7f
	cpl                                              ; $6b82: $2f
	jr nc, jr_010_6bc4                               ; $6b83: $30 $3f

	ld a, [hl+]                                      ; $6b85: $2a
	dec e                                            ; $6b86: $1d
	inc hl                                           ; $6b87: $23
	add b                                            ; $6b88: $80
	sbc b                                            ; $6b89: $98
	jp c, $fe3e                                      ; $6b8a: $da $3e $fe

	ld [bc], a                                       ; $6b8d: $02
	cp $52                                           ; $6b8e: $fe $52
	cp h                                             ; $6b90: $bc
	ld [hl], e                                       ; $6b91: $73
	add b                                            ; $6b92: $80
	sub c                                            ; $6b93: $91
	ld b, $07                                        ; $6b94: $06 $07
	add hl, bc                                       ; $6b96: $09
	rrca                                             ; $6b97: $0f
	db $10                                           ; $6b98: $10
	rra                                              ; $6b99: $1f
	inc e                                            ; $6b9a: $1c
	rla                                              ; $6b9b: $17
	inc e                                            ; $6b9c: $1c
	inc de                                           ; $6b9d: $13
	inc c                                            ; $6b9e: $0c
	dec bc                                           ; $6b9f: $0b
	rlca                                             ; $6ba0: $07
	rlca                                             ; $6ba1: $07
	rst SubAFromHL                                          ; $6ba2: $d7
	inc bc                                           ; $6ba3: $03
	rst SubAFromDE                                          ; $6ba4: $df
	rrca                                             ; $6ba5: $0f
	adc [hl]                                         ; $6ba6: $8e
	dec de                                           ; $6ba7: $1b
	rra                                              ; $6ba8: $1f
	rst $38                                          ; $6ba9: $ff
	rst $38                                          ; $6baa: $ff
	nop                                              ; $6bab: $00
	nop                                              ; $6bac: $00
	and e                                            ; $6bad: $a3
	db $e3                                           ; $6bae: $e3
	ld d, a                                          ; $6baf: $57
	db $f4                                           ; $6bb0: $f4
	rrca                                             ; $6bb1: $0f
	pop af                                           ; $6bb2: $f1
	ld e, $e2                                        ; $6bb3: $1e $e2
	inc c                                            ; $6bb5: $0c
	db $ec                                           ; $6bb6: $ec
	nop                                              ; $6bb7: $00
	jp c, $9ee0                                      ; $6bb8: $da $e0 $9e

	ld h, b                                          ; $6bbb: $60
	ld [hl], e                                       ; $6bbc: $73
	cp $df                                           ; $6bbd: $fe $df
	ldh a, [$9d]                                     ; $6bbf: $f0 $9d
	sbc b                                            ; $6bc1: $98
	ld hl, sp+$77                                    ; $6bc2: $f8 $77

jr_010_6bc4:
	ldh [hDisp1_OBP0], a                                     ; $6bc4: $e0 $93
	and $27                                          ; $6bc6: $e6 $27
	ld sp, hl                                        ; $6bc8: $f9
	rra                                              ; $6bc9: $1f
	ld hl, sp-$31                                    ; $6bca: $f8 $cf
	inc a                                            ; $6bcc: $3c
	inc hl                                           ; $6bcd: $23
	add hl, de                                       ; $6bce: $19
	dec de                                           ; $6bcf: $1b
	ld bc, $d502                                     ; $6bd0: $01 $02 $d5
	inc bc                                           ; $6bd3: $03
	ld h, a                                          ; $6bd4: $67
	ret nz                                           ; $6bd5: $c0

	sub c                                            ; $6bd6: $91
	and b                                            ; $6bd7: $a0
	ldh [$50], a                                     ; $6bd8: $e0 $50
	ldh a, [rAUD1SWEEP]                              ; $6bda: $f0 $10
	ldh a, [$78]                                     ; $6bdc: $f0 $78
	ret z                                            ; $6bde: $c8

	ld hl, sp-$60                                    ; $6bdf: $f8 $a0
	ld hl, sp+$08                                    ; $6be1: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $6be3: $f0 $10
	ccf                                              ; $6be5: $3f

jr_010_6be6:
	ret nz                                           ; $6be6: $c0

	sub a                                            ; $6be7: $97
	ld a, [hl]                                       ; $6be8: $7e
	ld c, a                                          ; $6be9: $4f
	ld a, c                                          ; $6bea: $79
	ld b, a                                          ; $6beb: $47
	jr c, jr_010_6c15                                ; $6bec: $38 $27

	inc e                                            ; $6bee: $1c
	rra                                              ; $6bef: $1f
	cp a                                             ; $6bf0: $bf
	inc bc                                           ; $6bf1: $03
	inc bc                                           ; $6bf2: $03
	daa                                              ; $6bf3: $27
	ret nz                                           ; $6bf4: $c0

	sub l                                            ; $6bf5: $95
	ld [$1cf8], sp                                   ; $6bf6: $08 $f8 $1c
	db $e4                                           ; $6bf9: $e4
	inc e                                            ; $6bfa: $1c
	db $e4                                           ; $6bfb: $e4
	jr jr_010_6be6                                   ; $6bfc: $18 $e8

	ldh a, [$f0]                                     ; $6bfe: $f0 $f0
	ccf                                              ; $6c00: $3f
	ret nz                                           ; $6c01: $c0

	adc a                                            ; $6c02: $8f
	dec b                                            ; $6c03: $05
	rlca                                             ; $6c04: $07
	ld [de], a                                       ; $6c05: $12
	rra                                              ; $6c06: $1f
	jr nc, jr_010_6c38                               ; $6c07: $30 $2f

	ld a, b                                          ; $6c09: $78
	ld c, a                                          ; $6c0a: $4f
	ld a, h                                          ; $6c0b: $7c
	ld c, a                                          ; $6c0c: $4f
	ld a, $23                                        ; $6c0d: $3e $23
	rra                                              ; $6c0f: $1f
	inc de                                           ; $6c10: $13
	rrca                                             ; $6c11: $0f
	rrca                                             ; $6c12: $0f
	reti                                             ; $6c13: $d9


	rlca                                             ; $6c14: $07

jr_010_6c15:
	rst SubAFromDE                                          ; $6c15: $df
	rrca                                             ; $6c16: $0f
	sbc [hl]                                         ; $6c17: $9e
	add hl, de                                       ; $6c18: $19
	ld [hl], e                                       ; $6c19: $73
	ret nz                                           ; $6c1a: $c0

	sub e                                            ; $6c1b: $93
	ld l, b                                          ; $6c1c: $68
	ldh [$9c], a                                     ; $6c1d: $e0 $9c
	db $f4                                           ; $6c1f: $f4
	ld e, $f2                                        ; $6c20: $1e $f2
	ld a, $d2                                        ; $6c22: $3e $d2
	inc a                                            ; $6c24: $3c
	call z, $f030                                    ; $6c25: $cc $30 $f0
	db $db                                           ; $6c28: $db
	ret nz                                           ; $6c29: $c0

	sbc [hl]                                         ; $6c2a: $9e
	ld b, b                                          ; $6c2b: $40
	ld [hl], e                                       ; $6c2c: $73
	cp $df                                           ; $6c2d: $fe $df
	ldh a, [$9e]                                     ; $6c2f: $f0 $9e
	ret c                                            ; $6c31: $d8

	ld [hl], e                                       ; $6c32: $73
	ret nz                                           ; $6c33: $c0

	rst $38                                          ; $6c34: $ff
	rst SubAFromDE                                          ; $6c35: $df
	inc bc                                           ; $6c36: $03
	adc c                                            ; $6c37: $89

jr_010_6c38:
	inc l                                            ; $6c38: $2c
	cpl                                              ; $6c39: $2f
	ld [hl], c                                       ; $6c3a: $71
	ld a, a                                          ; $6c3b: $7f
	ccf                                              ; $6c3c: $3f
	ccf                                              ; $6c3d: $3f
	ld d, c                                          ; $6c3e: $51
	ld a, a                                          ; $6c3f: $7f
	ld h, h                                          ; $6c40: $64
	ld a, a                                          ; $6c41: $7f
	ld l, c                                          ; $6c42: $69
	ld a, a                                          ; $6c43: $7f
	and e                                            ; $6c44: $a3
	db $fc                                           ; $6c45: $fc
	or l                                             ; $6c46: $b5
	cp $5b                                           ; $6c47: $fe $5b
	ld [hl], h                                       ; $6c49: $74
	ld a, l                                          ; $6c4a: $7d
	ld b, [hl]                                       ; $6c4b: $46
	ld a, a                                          ; $6c4c: $7f
	ld b, [hl]                                       ; $6c4d: $46
	ld a, d                                          ; $6c4e: $7a
	ld a, $84                                        ; $6c4f: $3e $84
	ld de, $090f                                     ; $6c51: $11 $0f $09
	nop                                              ; $6c54: $00
	nop                                              ; $6c55: $00
	add b                                            ; $6c56: $80
	add b                                            ; $6c57: $80
	ld d, b                                          ; $6c58: $50
	ldh a, [hDisp0_WY]                                     ; $6c59: $f0 $88
	ld hl, sp-$1c                                    ; $6c5b: $f8 $e4
	db $fc                                           ; $6c5d: $fc
	ld c, b                                          ; $6c5e: $48
	ld hl, sp-$5c                                    ; $6c5f: $f8 $a4
	db $fc                                           ; $6c61: $fc
	inc h                                            ; $6c62: $24
	db $fc                                           ; $6c63: $fc
	jp nc, $ba7e                                     ; $6c64: $d2 $7e $ba

	ld a, [hl]                                       ; $6c67: $7e
	or $1e                                           ; $6c68: $f6 $1e
	call c, Call_010_7a64                            ; $6c6a: $dc $64 $7a
	ld b, d                                          ; $6c6d: $42
	sbc d                                            ; $6c6e: $9a
	ld l, b                                          ; $6c6f: $68
	ld [hl], b                                       ; $6c70: $70
	sub b                                            ; $6c71: $90
	ldh [$a0], a                                     ; $6c72: $e0 $a0
	dec bc                                           ; $6c74: $0b
	ret nz                                           ; $6c75: $c0

	sbc [hl]                                         ; $6c76: $9e
	ld [$c017], sp                                   ; $6c77: $08 $17 $c0
	ld a, [hl]                                       ; $6c7a: $7e
	ld b, d                                          ; $6c7b: $42
	sbc l                                            ; $6c7c: $9d
	ldh [rAUD4LEN], a                                ; $6c7d: $e0 $20
	scf                                              ; $6c7f: $37
	ret nz                                           ; $6c80: $c0

	sub a                                            ; $6c81: $97
	ld e, a                                          ; $6c82: $5f
	ld [hl], b                                       ; $6c83: $70
	ld [hl], a                                       ; $6c84: $77
	ld c, h                                          ; $6c85: $4c
	ld a, a                                          ; $6c86: $7f
	ld c, [hl]                                       ; $6c87: $4e
	ccf                                              ; $6c88: $3f
	ld a, [hl+]                                      ; $6c89: $2a
	rra                                              ; $6c8a: $1f
	add b                                            ; $6c8b: $80
	sbc c                                            ; $6c8c: $99
	db $ec                                           ; $6c8d: $ec
	inc [hl]                                         ; $6c8e: $34
	db $fc                                           ; $6c8f: $fc
	ld [hl], h                                       ; $6c90: $74
	ld hl, sp+$58                                    ; $6c91: $f8 $58
	daa                                              ; $6c93: $27
	add b                                            ; $6c94: $80
	ld a, a                                          ; $6c95: $7f
	ret nz                                           ; $6c96: $c0

	ld a, c                                          ; $6c97: $79
	ld sp, hl                                        ; $6c98: $f9
	sbc d                                            ; $6c99: $9a
	ld c, d                                          ; $6c9a: $4a
	dec a                                            ; $6c9b: $3d
	ld h, $1f                                        ; $6c9c: $26 $1f
	db $10                                           ; $6c9e: $10
	daa                                              ; $6c9f: $27
	ret nz                                           ; $6ca0: $c0

	sbc d                                            ; $6ca1: $9a
	db $fc                                           ; $6ca2: $fc
	inc b                                            ; $6ca3: $04
	db $fc                                           ; $6ca4: $fc
	ld d, h                                          ; $6ca5: $54
	cp b                                             ; $6ca6: $b8
	ld [hl], e                                       ; $6ca7: $73
	add b                                            ; $6ca8: $80
	sub a                                            ; $6ca9: $97
	rra                                              ; $6caa: $1f
	add hl, de                                       ; $6cab: $19
	rra                                              ; $6cac: $1f
	inc de                                           ; $6cad: $13
	rra                                              ; $6cae: $1f
	inc de                                           ; $6caf: $13
	ld c, $0f                                        ; $6cb0: $0e $0f
	db $dd                                           ; $6cb2: $dd
	inc bc                                           ; $6cb3: $03
	sbc [hl]                                         ; $6cb4: $9e
	ld bc, $fe7b                                     ; $6cb5: $01 $7b $fe
	ld a, e                                          ; $6cb8: $7b
	ld a, [$01dc]                                    ; $6cb9: $fa $dc $01
	add b                                            ; $6cbc: $80
	inc bc                                           ; $6cbd: $03
	ld [bc], a                                       ; $6cbe: $02
	inc b                                            ; $6cbf: $04
	rlca                                             ; $6cc0: $07
	rra                                              ; $6cc1: $1f
	rra                                              ; $6cc2: $1f
	nop                                              ; $6cc3: $00
	nop                                              ; $6cc4: $00
	cp $f2                                           ; $6cc5: $fe $f2
	rra                                              ; $6cc7: $1f
	ld sp, hl                                        ; $6cc8: $f9
	rst AddAOntoHL                                          ; $6cc9: $ef
	cp l                                             ; $6cca: $bd
	xor e                                            ; $6ccb: $ab
	ld e, e                                          ; $6ccc: $5b
	ld hl, sp-$08                                    ; $6ccd: $f8 $f8
	ld e, b                                          ; $6ccf: $58
	ld hl, sp+$54                                    ; $6cd0: $f8 $54
	db $fc                                           ; $6cd2: $fc
	ld d, h                                          ; $6cd3: $54
	db $fc                                           ; $6cd4: $fc
	ld c, h                                          ; $6cd5: $4c
	db $fc                                           ; $6cd6: $fc
	ld hl, sp-$08                                    ; $6cd7: $f8 $f8
	ldh a, [$50]                                     ; $6cd9: $f0 $50
	ldh a, [hDisp1_WX]                                     ; $6cdb: $f0 $96
	ldh a, [$f8]                                     ; $6cdd: $f0 $f8
	ld c, b                                          ; $6cdf: $48
	ld c, h                                          ; $6ce0: $4c
	db $fc                                           ; $6ce1: $fc
	call nz, Call_010_7efc                           ; $6ce2: $c4 $fc $7e
	ld a, [hl]                                       ; $6ce5: $7e
	ld l, [hl]                                       ; $6ce6: $6e
	cp [hl]                                          ; $6ce7: $be
	ld a, a                                          ; $6ce8: $7f
	call nc, $0b9a                                   ; $6ce9: $d4 $9a $0b
	rrca                                             ; $6cec: $0f
	inc d                                            ; $6ced: $14
	rra                                              ; $6cee: $1f
	jr z, @+$7b                                      ; $6cef: $28 $79

	ld c, l                                          ; $6cf1: $4d
	ld a, [hl]                                       ; $6cf2: $7e
	ld [hl], d                                       ; $6cf3: $72
	sub c                                            ; $6cf4: $91
	ld h, $3d                                        ; $6cf5: $26 $3d
	ld e, a                                          ; $6cf7: $5f
	ld a, e                                          ; $6cf8: $7b
	ld [hl], $3f                                     ; $6cf9: $36 $3f
	rla                                              ; $6cfb: $17
	dec de                                           ; $6cfc: $1b
	rla                                              ; $6cfd: $17
	rra                                              ; $6cfe: $1f
	rra                                              ; $6cff: $1f
	add hl, de                                       ; $6d00: $19
	rrca                                             ; $6d01: $0f
	dec c                                            ; $6d02: $0d
	ld [hl], a                                       ; $6d03: $77
	add b                                            ; $6d04: $80
	sbc b                                            ; $6d05: $98
	ld a, h                                          ; $6d06: $7c
	db $fc                                           ; $6d07: $fc
	jp nz, $99fe                                     ; $6d08: $c2 $fe $99

	rst $38                                          ; $6d0b: $ff
	inc b                                            ; $6d0c: $04
	ld a, e                                          ; $6d0d: $7b
	cp $9e                                           ; $6d0e: $fe $9e
	sub d                                            ; $6d10: $92
	ld a, e                                          ; $6d11: $7b
	cp $91                                           ; $6d12: $fe $91
	reti                                             ; $6d14: $d9


	ld l, a                                          ; $6d15: $6f
	db $fc                                           ; $6d16: $fc
	scf                                              ; $6d17: $37
	rst AddAOntoHL                                          ; $6d18: $ef
	dec sp                                           ; $6d19: $3b
	cp $33                                           ; $6d1a: $fe $33
	cp $33                                           ; $6d1c: $fe $33
	db $fc                                           ; $6d1e: $fc
	rst GetHLinHL                                          ; $6d1f: $cf
	ld a, a                                          ; $6d20: $7f
	db $d3                                           ; $6d21: $d3
	rst FarCall                                          ; $6d22: $f7

jr_010_6d23:
	db $dd                                           ; $6d23: $dd
	add b                                            ; $6d24: $80
	ld l, [hl]                                       ; $6d25: $6e
	ld h, h                                          ; $6d26: $64
	rst SubAFromDE                                          ; $6d27: $df
	ret nz                                           ; $6d28: $c0

	ld a, [hl]                                       ; $6d29: $7e
	jr nz, @+$80                                     ; $6d2a: $20 $7e

	ld [$fe7f], sp                                   ; $6d2c: $08 $7f $fe
	ld a, d                                          ; $6d2f: $7a
	ld d, h                                          ; $6d30: $54
	sbc b                                            ; $6d31: $98
	ld b, b                                          ; $6d32: $40
	ccf                                              ; $6d33: $3f
	ld sp, $0c0f                                     ; $6d34: $31 $0f $0c
	inc bc                                           ; $6d37: $03
	inc bc                                           ; $6d38: $03
	jp hl                                            ; $6d39: $e9


	rst SubAFromDE                                          ; $6d3a: $df
	ld bc, $7f80                                     ; $6d3b: $01 $80 $7f
	rst $38                                          ; $6d3e: $ff
	ld b, [hl]                                       ; $6d3f: $46
	rst $38                                          ; $6d40: $ff
	cp b                                             ; $6d41: $b8
	rst AddAOntoHL                                          ; $6d42: $ef
	xor e                                            ; $6d43: $ab
	rst SubAFromHL                                          ; $6d44: $d7
	cp $fe                                           ; $6d45: $fe $fe
	sub $fe                                          ; $6d47: $d6 $fe
	ld d, l                                          ; $6d49: $55
	rst $38                                          ; $6d4a: $ff
	ld d, l                                          ; $6d4b: $55
	rst $38                                          ; $6d4c: $ff
	db $d3                                           ; $6d4d: $d3
	rst $38                                          ; $6d4e: $ff
	ld a, [hl]                                       ; $6d4f: $7e
	ld a, [hl]                                       ; $6d50: $7e
	ld a, l                                          ; $6d51: $7d
	ld d, a                                          ; $6d52: $57
	dec a                                            ; $6d53: $3d
	scf                                              ; $6d54: $37
	rra                                              ; $6d55: $1f
	rra                                              ; $6d56: $1f
	ld a, $32                                        ; $6d57: $3e $32
	ld b, d                                          ; $6d59: $42
	ld a, [hl]                                       ; $6d5a: $7e
	rst $38                                          ; $6d5b: $ff
	sbc [hl]                                         ; $6d5c: $9e
	rst $38                                          ; $6d5d: $ff
	ld a, c                                          ; $6d5e: $79
	adc d                                            ; $6d5f: $8a
	sbc h                                            ; $6d60: $9c
	jr nc, jr_010_6d23                               ; $6d61: $30 $c0

	ret nz                                           ; $6d63: $c0

	jp hl                                            ; $6d64: $e9


	ld h, a                                          ; $6d65: $67
	and $df                                          ; $6d66: $e6 $df
	ld bc, $437d                                     ; $6d68: $01 $7d $43
	ld a, l                                          ; $6d6b: $7d
	or [hl]                                          ; $6d6c: $b6
	sbc d                                            ; $6d6d: $9a
	ld a, [bc]                                       ; $6d6e: $0a
	rrca                                             ; $6d6f: $0f
	ld a, [bc]                                       ; $6d70: $0a
	rrca                                             ; $6d71: $0f
	inc b                                            ; $6d72: $04
	ld a, b                                          ; $6d73: $78
	ldh a, [hDisp0_WY]                                     ; $6d74: $f0 $88
	rla                                              ; $6d76: $17
	ld e, $1d                                        ; $6d77: $1e $1d
	ld c, $7d                                        ; $6d79: $0e $7d
	ld l, a                                          ; $6d7b: $6f
	db $fd                                           ; $6d7c: $fd
	adc a                                            ; $6d7d: $8f
	ld a, l                                          ; $6d7e: $7d
	ld d, a                                          ; $6d7f: $57
	ld a, [hl]                                       ; $6d80: $7e
	ld b, a                                          ; $6d81: $47
	nop                                              ; $6d82: $00
	nop                                              ; $6d83: $00
	jr nz, jr_010_6da6                               ; $6d84: $20 $20

	rst SubAFromDE                                          ; $6d86: $df
	rst $38                                          ; $6d87: $ff
	jr nc, @+$01                                     ; $6d88: $30 $ff

	and $ff                                          ; $6d8a: $e6 $ff
	ld bc, $fe7b                                     ; $6d8c: $01 $7b $fe
	sbc [hl]                                         ; $6d8f: $9e
	and h                                            ; $6d90: $a4
	ld a, e                                          ; $6d91: $7b
	cp $9d                                           ; $6d92: $fe $9d
	or [hl]                                          ; $6d94: $b6
	ld e, e                                          ; $6d95: $5b
	ld a, e                                          ; $6d96: $7b
	rst FarCall                                          ; $6d97: $f7
	sub [hl]                                         ; $6d98: $96
	call z, $ceff                                    ; $6d99: $cc $ff $ce
	rst $38                                          ; $6d9c: $ff
	ld c, d                                          ; $6d9d: $4a
	rst $38                                          ; $6d9e: $ff
	ld sp, $b3df                                     ; $6d9f: $31 $df $b3
	ld h, a                                          ; $6da2: $67
	ld b, h                                          ; $6da3: $44
	ld a, a                                          ; $6da4: $7f
	ld c, d                                          ; $6da5: $4a

jr_010_6da6:
	sbc b                                            ; $6da6: $98
	jr nz, @-$1e                                     ; $6da7: $20 $e0

	jr nz, @-$1e                                     ; $6da9: $20 $e0

	sub b                                            ; $6dab: $90
	ldh a, [hDisp1_SCY]                                     ; $6dac: $f0 $90
	ld a, d                                          ; $6dae: $7a
	db $e3                                           ; $6daf: $e3
	ld a, l                                          ; $6db0: $7d
	sub [hl]                                         ; $6db1: $96
	ld a, l                                          ; $6db2: $7d
	and h                                            ; $6db3: $a4
	sub a                                            ; $6db4: $97
	cp h                                             ; $6db5: $bc
	db $ec                                           ; $6db6: $ec
	cp $d2                                           ; $6db7: $fe $d2
	ld a, h                                          ; $6db9: $7c
	call nc, $c4fc                                   ; $6dba: $d4 $fc $c4
	ld [hl-], a                                      ; $6dbd: $32
	ldh [$9a], a                                     ; $6dbe: $e0 $9a
	ld a, b                                          ; $6dc0: $78
	scf                                              ; $6dc1: $37
	dec sp                                           ; $6dc2: $3b
	ld d, $1f                                        ; $6dc3: $16 $1f
	ld a, d                                          ; $6dc5: $7a
	sbc $9c                                          ; $6dc6: $de $9c
	inc e                                            ; $6dc8: $1c
	dec bc                                           ; $6dc9: $0b
	ld c, $32                                        ; $6dca: $0e $32
	ldh [$9b], a                                     ; $6dcc: $e0 $9b
	rlca                                             ; $6dce: $07
	rst $38                                          ; $6dcf: $ff
	inc sp                                           ; $6dd0: $33
	sbc $7a                                          ; $6dd1: $de $7a
	sbc $99                                          ; $6dd3: $de $99
	db $fc                                           ; $6dd5: $fc
	add a                                            ; $6dd6: $87
	ld sp, hl                                        ; $6dd7: $f9
	rrca                                             ; $6dd8: $0f
	ld c, $0e                                        ; $6dd9: $0e $0e
	ld a, c                                          ; $6ddb: $79
	ld a, [$0d9c]                                    ; $6ddc: $fa $9c $0d
	rlca                                             ; $6ddf: $07
	inc b                                            ; $6de0: $04
	ld a, $fc                                        ; $6de1: $3e $fc
	rst SubAFromDE                                          ; $6de3: $df
	ld bc, $07df                                     ; $6de4: $01 $df $07
	rst $38                                          ; $6de7: $ff
	ld [hl], a                                       ; $6de8: $77
	nop                                              ; $6de9: $00
	sbc e                                            ; $6dea: $9b
	cp c                                             ; $6deb: $b9
	ld l, [hl]                                       ; $6dec: $6e
	xor e                                            ; $6ded: $ab
	sub $57                                          ; $6dee: $d6 $57
	nop                                              ; $6df0: $00
	sub e                                            ; $6df1: $93
	ld a, h                                          ; $6df2: $7c
	ld d, h                                          ; $6df3: $54
	ld a, h                                          ; $6df4: $7c
	ld [hl], h                                       ; $6df5: $74
	cp $9e                                           ; $6df6: $fe $9e
	rra                                              ; $6df8: $1f
	di                                               ; $6df9: $f3
	pop af                                           ; $6dfa: $f1
	rst $38                                          ; $6dfb: $ff
	rra                                              ; $6dfc: $1f
	rra                                              ; $6dfd: $1f
	ld a, b                                          ; $6dfe: $78
	sub $7c                                          ; $6dff: $d6 $7c
	add c                                            ; $6e01: $81
	sbc e                                            ; $6e02: $9b
	ld b, b                                          ; $6e03: $40
	ldh a, [$50]                                     ; $6e04: $f0 $50
	and b                                            ; $6e06: $a0
	ld a, c                                          ; $6e07: $79
	sub $2f                                          ; $6e08: $d6 $2f
	nop                                              ; $6e0a: $00
	rst SubAFromDE                                          ; $6e0b: $df
	inc bc                                           ; $6e0c: $03
	sub d                                            ; $6e0d: $92
	inc c                                            ; $6e0e: $0c
	rrca                                             ; $6e0f: $0f
	db $10                                           ; $6e10: $10
	rra                                              ; $6e11: $1f
	ld hl, $403f                                     ; $6e12: $21 $3f $40
	ld a, a                                          ; $6e15: $7f
	ld b, c                                          ; $6e16: $41
	ld a, a                                          ; $6e17: $7f
	add b                                            ; $6e18: $80
	rst $38                                          ; $6e19: $ff
	add c                                            ; $6e1a: $81
	ld a, e                                          ; $6e1b: $7b
	cp $9b                                           ; $6e1c: $fe $9b
	ld b, e                                          ; $6e1e: $43
	ld a, [hl]                                       ; $6e1f: $7e
	ld b, e                                          ; $6e20: $43
	ld a, [hl]                                       ; $6e21: $7e
	ld [hl], a                                       ; $6e22: $77
	ldh a, [$9b]                                     ; $6e23: $f0 $9b
	sbc h                                            ; $6e25: $9c
	rst $38                                          ; $6e26: $ff
	db $e3                                           ; $6e27: $e3
	db $e3                                           ; $6e28: $e3
	ld [hl], a                                       ; $6e29: $77
	ld h, b                                          ; $6e2a: $60
	ld a, a                                          ; $6e2b: $7f
	cp h                                             ; $6e2c: $bc
	ld a, a                                          ; $6e2d: $7f
	cp l                                             ; $6e2e: $bd
	ld a, h                                          ; $6e2f: $7c
	ld a, h                                          ; $6e30: $7c
	ld a, l                                          ; $6e31: $7d
	call $fe7f                                       ; $6e32: $cd $7f $fe
	sbc l                                            ; $6e35: $9d
	ld [bc], a                                       ; $6e36: $02
	cp $77                                           ; $6e37: $fe $77
	cp $93                                           ; $6e39: $fe $93
	add h                                            ; $6e3b: $84
	db $fc                                           ; $6e3c: $fc
	add h                                            ; $6e3d: $84
	db $fc                                           ; $6e3e: $fc
	ld [$10f8], sp                                   ; $6e3f: $08 $f8 $10
	ldh a, [$60]                                     ; $6e42: $f0 $60
	ldh [$80], a                                     ; $6e44: $e0 $80
	add b                                            ; $6e46: $80
	ld l, a                                          ; $6e47: $6f
	jp nz, $2082                                     ; $6e48: $c2 $82 $20

	ccf                                              ; $6e4b: $3f
	ld b, c                                          ; $6e4c: $41
	ld a, a                                          ; $6e4d: $7f
	ld b, e                                          ; $6e4e: $43
	ld a, [hl]                                       ; $6e4f: $7e
	add e                                            ; $6e50: $83
	cp $87                                           ; $6e51: $fe $87
	db $fd                                           ; $6e53: $fd
	adc a                                            ; $6e54: $8f
	ld a, [$fd87]                                    ; $6e55: $fa $87 $fd
	ld b, e                                          ; $6e58: $43
	ld a, [hl]                                       ; $6e59: $7e
	ld b, c                                          ; $6e5a: $41
	ld a, a                                          ; $6e5b: $7f
	jr nz, @+$41                                     ; $6e5c: $20 $3f

	jr jr_010_6e7f                                   ; $6e5e: $18 $1f

	ld b, $07                                        ; $6e60: $06 $07
	ld bc, $c001                                     ; $6e62: $01 $01 $c0
	ret nz                                           ; $6e65: $c0

	jr nc, jr_010_6edb                               ; $6e66: $30 $73

	call nz, Call_010_448f                           ; $6e68: $c4 $8f $44
	db $fc                                           ; $6e6b: $fc
	ldh [c], a                                       ; $6e6c: $e2
	cp [hl]                                          ; $6e6d: $be
	ldh [c], a                                       ; $6e6e: $e2
	cp [hl]                                          ; $6e6f: $be
	pop hl                                           ; $6e70: $e1
	ccf                                              ; $6e71: $3f
	pop hl                                           ; $6e72: $e1
	rst $38                                          ; $6e73: $ff
	pop hl                                           ; $6e74: $e1
	ccf                                              ; $6e75: $3f
	ldh [c], a                                       ; $6e76: $e2
	ld a, $c2                                        ; $6e77: $3e $c2
	cp $77                                           ; $6e79: $fe $77
	or h                                             ; $6e7b: $b4
	sbc e                                            ; $6e7c: $9b
	add hl, de                                       ; $6e7d: $19
	rst $38                                          ; $6e7e: $ff

jr_010_6e7f:
	rst SubAFromBC                                          ; $6e7f: $e7
	rst SubAFromBC                                          ; $6e80: $e7
	di                                               ; $6e81: $f3
	ld [bc], a                                       ; $6e82: $02
	rst $38                                          ; $6e83: $ff
	rst SubAFromDE                                          ; $6e84: $df
	dec a                                            ; $6e85: $3d
	add b                                            ; $6e86: $80
	inc de                                           ; $6e87: $13
	rra                                              ; $6e88: $1f
	ld sp, hl                                        ; $6e89: $f9
	rst $38                                          ; $6e8a: $ff
	ld b, a                                          ; $6e8b: $47
	ld a, a                                          ; $6e8c: $7f
	ld [hl-], a                                      ; $6e8d: $32
	ccf                                              ; $6e8e: $3f
	dec h                                            ; $6e8f: $25
	ccf                                              ; $6e90: $3f
	ld b, h                                          ; $6e91: $44
	ld a, a                                          ; $6e92: $7f
	ld b, b                                          ; $6e93: $40
	ld a, a                                          ; $6e94: $7f
	ld c, [hl]                                       ; $6e95: $4e
	ld a, e                                          ; $6e96: $7b
	ld a, a                                          ; $6e97: $7f
	ld a, l                                          ; $6e98: $7d
	dec hl                                           ; $6e99: $2b
	ld [hl], $3f                                     ; $6e9a: $36 $3f
	ld h, $1f                                        ; $6e9c: $26 $1f
	ld d, $0e                                        ; $6e9e: $16 $0e
	add hl, bc                                       ; $6ea0: $09
	rlca                                             ; $6ea1: $07
	dec b                                            ; $6ea2: $05
	nop                                              ; $6ea3: $00
	nop                                              ; $6ea4: $00
	ret nz                                           ; $6ea5: $c0

	add d                                            ; $6ea6: $82
	ret nz                                           ; $6ea7: $c0

	inc [hl]                                         ; $6ea8: $34
	db $f4                                           ; $6ea9: $f4
	adc [hl]                                         ; $6eaa: $8e
	cp $fc                                           ; $6eab: $fe $fc
	db $fc                                           ; $6ead: $fc
	adc d                                            ; $6eae: $8a
	cp $26                                           ; $6eaf: $fe $26
	cp $96                                           ; $6eb1: $fe $96
	cp $d5                                           ; $6eb3: $fe $d5
	rst $38                                          ; $6eb5: $ff
	db $fd                                           ; $6eb6: $fd
	cp a                                             ; $6eb7: $bf
	ld a, [$be6e]                                    ; $6eb8: $fa $6e $be
	ld [hl], d                                       ; $6ebb: $72
	cp $62                                           ; $6ebc: $fe $62
	db $fc                                           ; $6ebe: $fc
	ld h, h                                          ; $6ebf: $64
	ld hl, sp-$78                                    ; $6ec0: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $6ec2: $f0 $90
	rla                                              ; $6ec4: $17
	ret nz                                           ; $6ec5: $c0

	sbc e                                            ; $6ec6: $9b
	rrca                                             ; $6ec7: $0f
	add hl, bc                                       ; $6ec8: $09
	rlca                                             ; $6ec9: $07
	inc b                                            ; $6eca: $04
	dec bc                                           ; $6ecb: $0b
	ret nz                                           ; $6ecc: $c0

	sbc [hl]                                         ; $6ecd: $9e
	db $10                                           ; $6ece: $10
	inc sp                                           ; $6ecf: $33
	ret nz                                           ; $6ed0: $c0

	sub h                                            ; $6ed1: $94
	ld a, c                                          ; $6ed2: $79
	dec l                                            ; $6ed3: $2d
	ld [hl], $3f                                     ; $6ed4: $36 $3f
	ld l, $3f                                        ; $6ed6: $2e $3f
	ld a, [hl+]                                      ; $6ed8: $2a
	ccf                                              ; $6ed9: $3f
	add hl, sp                                       ; $6eda: $39

jr_010_6edb:
	ld a, $2d                                        ; $6edb: $3e $2d
	inc sp                                           ; $6edd: $33
	ret nz                                           ; $6ede: $c0

	sbc b                                            ; $6edf: $98
	ld c, $ae                                        ; $6ee0: $0e $ae
	ld [hl], d                                       ; $6ee2: $72
	cp $72                                           ; $6ee3: $fe $72
	db $fc                                           ; $6ee5: $fc
	ld e, h                                          ; $6ee6: $5c
	daa                                              ; $6ee7: $27
	add b                                            ; $6ee8: $80
	sbc b                                            ; $6ee9: $98
	ld a, l                                          ; $6eea: $7d
	ld a, a                                          ; $6eeb: $7f
	cpl                                              ; $6eec: $2f
	jr nc, @+$41                                     ; $6eed: $30 $3f

	ld a, [hl+]                                      ; $6eef: $2a
	dec e                                            ; $6ef0: $1d
	inc hl                                           ; $6ef1: $23
	add b                                            ; $6ef2: $80
	sbc b                                            ; $6ef3: $98
	jp c, $fe3e                                      ; $6ef4: $da $3e $fe

	ld [bc], a                                       ; $6ef7: $02
	cp $52                                           ; $6ef8: $fe $52
	cp h                                             ; $6efa: $bc
	ld [hl], e                                       ; $6efb: $73
	add b                                            ; $6efc: $80
	sub b                                            ; $6efd: $90
	inc b                                            ; $6efe: $04
	rlca                                             ; $6eff: $07
	ld [$100f], sp                                   ; $6f00: $08 $0f $10
	rra                                              ; $6f03: $1f
	db $10                                           ; $6f04: $10
	rra                                              ; $6f05: $1f
	inc d                                            ; $6f06: $14
	rra                                              ; $6f07: $1f
	inc c                                            ; $6f08: $0c
	rrca                                             ; $6f09: $0f
	inc b                                            ; $6f0a: $04
	rlca                                             ; $6f0b: $07
	inc b                                            ; $6f0c: $04
	sbc $07                                          ; $6f0d: $de $07
	ld [hl], a                                       ; $6f0f: $77
	ld a, [$fe7f]                                    ; $6f10: $fa $7f $fe
	rst SubAFromDE                                          ; $6f13: $df
	rrca                                             ; $6f14: $0f
	add [hl]                                         ; $6f15: $86
	add hl, de                                       ; $6f16: $19
	rra                                              ; $6f17: $1f
	rst $38                                          ; $6f18: $ff
	rst $38                                          ; $6f19: $ff
	nop                                              ; $6f1a: $00
	nop                                              ; $6f1b: $00
	inc hl                                           ; $6f1c: $23
	db $e3                                           ; $6f1d: $e3
	sub a                                            ; $6f1e: $97
	db $f4                                           ; $6f1f: $f4
	ld bc, $82ff                                     ; $6f20: $01 $ff $82
	cp $1c                                           ; $6f23: $fe $1c
	db $fc                                           ; $6f25: $fc
	sub b                                            ; $6f26: $90
	ldh a, [rAUD1SWEEP]                              ; $6f27: $f0 $10
	ldh a, [hDisp1_SCY]                                     ; $6f29: $f0 $90

jr_010_6f2b:
	ldh a, [$e0]                                     ; $6f2b: $f0 $e0
	ldh [$a0], a                                     ; $6f2d: $e0 $a0
	ld [hl], e                                       ; $6f2f: $73
	cp $df                                           ; $6f30: $fe $df
	ldh a, [$9d]                                     ; $6f32: $f0 $9d
	sbc b                                            ; $6f34: $98
	ld hl, sp+$77                                    ; $6f35: $f8 $77
	ldh [hDisp1_BGP], a                                     ; $6f37: $e0 $92
	db $fc                                           ; $6f39: $fc
	sbc a                                            ; $6f3a: $9f
	ld hl, sp+$3f                                    ; $6f3b: $f8 $3f
	ret z                                            ; $6f3d: $c8

	rst $38                                          ; $6f3e: $ff
	ld b, b                                          ; $6f3f: $40
	ld a, a                                          ; $6f40: $7f
	dec h                                            ; $6f41: $25
	ccf                                              ; $6f42: $3f
	add hl, de                                       ; $6f43: $19
	ld e, $05                                        ; $6f44: $1e $05
	dec sp                                           ; $6f46: $3b
	ret nz                                           ; $6f47: $c0

	sbc l                                            ; $6f48: $9d
	jr nz, jr_010_6f2b                               ; $6f49: $20 $e0

	ld [hl], a                                       ; $6f4b: $77
	ret z                                            ; $6f4c: $c8

	sub [hl]                                         ; $6f4d: $96
	adc b                                            ; $6f4e: $88
	ld hl, sp-$18                                    ; $6f4f: $f8 $e8
	cp b                                             ; $6f51: $b8
	add sp, $18                                      ; $6f52: $e8 $18
	ld hl, sp+$18                                    ; $6f54: $f8 $18
	ldh a, [rSCX]                                    ; $6f56: $f0 $43
	ret nz                                           ; $6f58: $c0

	sub a                                            ; $6f59: $97
	ld c, h                                          ; $6f5a: $4c
	ld a, a                                          ; $6f5b: $7f
	ld b, h                                          ; $6f5c: $44
	ld a, a                                          ; $6f5d: $7f
	jr nz, jr_010_6f9f                               ; $6f5e: $20 $3f

	inc e                                            ; $6f60: $1c
	rra                                              ; $6f61: $1f
	ld l, a                                          ; $6f62: $6f
	jp z, $c03f                                      ; $6f63: $ca $3f $c0

	sbc [hl]                                         ; $6f66: $9e
	jr nc, jr_010_6fe4                               ; $6f67: $30 $7b

	call nz, $0497                                   ; $6f69: $c4 $97 $04
	db $fc                                           ; $6f6c: $fc
	sub h                                            ; $6f6d: $94
	db $fc                                           ; $6f6e: $fc
	inc d                                            ; $6f6f: $14
	db $fc                                           ; $6f70: $fc
	sbc b                                            ; $6f71: $98
	ld hl, sp+$37                                    ; $6f72: $f8 $37
	add b                                            ; $6f74: $80
	ld a, a                                          ; $6f75: $7f
	ld c, d                                          ; $6f76: $4a
	ld a, a                                          ; $6f77: $7f
	ld b, h                                          ; $6f78: $44
	ld a, a                                          ; $6f79: $7f
	ret nz                                           ; $6f7a: $c0

jr_010_6f7b:
	sub l                                            ; $6f7b: $95
	ld c, b                                          ; $6f7c: $48
	ld a, a                                          ; $6f7d: $7f
	ld c, h                                          ; $6f7e: $4c
	ld a, a                                          ; $6f7f: $7f
	ld l, $33                                        ; $6f80: $2e $33
	ld e, $13                                        ; $6f82: $1e $13
	inc c                                            ; $6f84: $0c
	rrca                                             ; $6f85: $0f
	ld b, a                                          ; $6f86: $47
	ret nz                                           ; $6f87: $c0

	sub h                                            ; $6f88: $94
	jr c, jr_010_6f7b                                ; $6f89: $38 $f0

	sbc h                                            ; $6f8b: $9c
	db $f4                                           ; $6f8c: $f4
	ld e, $f2                                        ; $6f8d: $1e $f2
	sbc [hl]                                         ; $6f8f: $9e
	ldh a, [c]                                       ; $6f90: $f2
	ld c, $fe                                        ; $6f91: $0e $fe
	sub d                                            ; $6f93: $92
	ld [hl], e                                       ; $6f94: $73
	inc a                                            ; $6f95: $3c
	ld b, a                                          ; $6f96: $47
	ret nz                                           ; $6f97: $c0

	rst $38                                          ; $6f98: $ff
	rst SubAFromDE                                          ; $6f99: $df
	inc bc                                           ; $6f9a: $03
	adc c                                            ; $6f9b: $89
	inc l                                            ; $6f9c: $2c
	cpl                                              ; $6f9d: $2f
	ld [hl], c                                       ; $6f9e: $71

jr_010_6f9f:
	ld a, a                                          ; $6f9f: $7f
	ccf                                              ; $6fa0: $3f
	ccf                                              ; $6fa1: $3f
	ld d, c                                          ; $6fa2: $51
	ld a, a                                          ; $6fa3: $7f
	ld h, h                                          ; $6fa4: $64
	ld a, a                                          ; $6fa5: $7f
	ld l, c                                          ; $6fa6: $69
	ld a, a                                          ; $6fa7: $7f
	and e                                            ; $6fa8: $a3
	db $fc                                           ; $6fa9: $fc
	or l                                             ; $6faa: $b5
	cp $5b                                           ; $6fab: $fe $5b
	ld [hl], h                                       ; $6fad: $74
	ld a, l                                          ; $6fae: $7d
	ld b, [hl]                                       ; $6faf: $46
	ld a, a                                          ; $6fb0: $7f
	ld b, [hl]                                       ; $6fb1: $46
	ld a, d                                          ; $6fb2: $7a
	ld a, $97                                        ; $6fb3: $3e $97
	ld de, $090f                                     ; $6fb5: $11 $0f $09
	nop                                              ; $6fb8: $00
	nop                                              ; $6fb9: $00
	add b                                            ; $6fba: $80
	add b                                            ; $6fbb: $80
	ld d, b                                          ; $6fbc: $50
	ld a, e                                          ; $6fbd: $7b
	ld a, h                                          ; $6fbe: $7c
	adc a                                            ; $6fbf: $8f
	db $e4                                           ; $6fc0: $e4
	db $fc                                           ; $6fc1: $fc
	ld c, b                                          ; $6fc2: $48
	ld hl, sp-$5c                                    ; $6fc3: $f8 $a4
	db $fc                                           ; $6fc5: $fc
	inc h                                            ; $6fc6: $24
	db $fc                                           ; $6fc7: $fc
	jp nc, $ba7e                                     ; $6fc8: $d2 $7e $ba

	ld a, [hl]                                       ; $6fcb: $7e
	or $1e                                           ; $6fcc: $f6 $1e
	call c, Call_010_7a64                            ; $6fce: $dc $64 $7a
	ld b, d                                          ; $6fd1: $42
	sbc d                                            ; $6fd2: $9a
	ld l, b                                          ; $6fd3: $68
	ld [hl], b                                       ; $6fd4: $70
	sub b                                            ; $6fd5: $90
	ldh [$a0], a                                     ; $6fd6: $e0 $a0
	dec bc                                           ; $6fd8: $0b
	ret nz                                           ; $6fd9: $c0

	sbc [hl]                                         ; $6fda: $9e
	ld [$c017], sp                                   ; $6fdb: $08 $17 $c0
	ld a, a                                          ; $6fde: $7f
	ld sp, $e09d                                     ; $6fdf: $31 $9d $e0
	jr nz, jr_010_701b                               ; $6fe2: $20 $37

jr_010_6fe4:
	ret nz                                           ; $6fe4: $c0

	sub a                                            ; $6fe5: $97
	ld e, a                                          ; $6fe6: $5f
	ld [hl], b                                       ; $6fe7: $70
	ld [hl], a                                       ; $6fe8: $77
	ld c, h                                          ; $6fe9: $4c
	ld a, a                                          ; $6fea: $7f
	ld c, [hl]                                       ; $6feb: $4e
	ccf                                              ; $6fec: $3f
	ld a, [hl+]                                      ; $6fed: $2a
	rra                                              ; $6fee: $1f
	add b                                            ; $6fef: $80
	sbc c                                            ; $6ff0: $99
	db $ec                                           ; $6ff1: $ec
	inc [hl]                                         ; $6ff2: $34
	db $fc                                           ; $6ff3: $fc
	ld [hl], h                                       ; $6ff4: $74
	ld hl, sp+$58                                    ; $6ff5: $f8 $58
	daa                                              ; $6ff7: $27
	add b                                            ; $6ff8: $80
	ld a, a                                          ; $6ff9: $7f
	ret nz                                           ; $6ffa: $c0

	ld a, c                                          ; $6ffb: $79
	ld sp, hl                                        ; $6ffc: $f9
	sbc d                                            ; $6ffd: $9a
	ld c, d                                          ; $6ffe: $4a
	dec a                                            ; $6fff: $3d
	ld h, $1f                                        ; $7000: $26 $1f
	db $10                                           ; $7002: $10
	daa                                              ; $7003: $27
	ret nz                                           ; $7004: $c0

	sbc d                                            ; $7005: $9a
	db $fc                                           ; $7006: $fc
	inc b                                            ; $7007: $04
	db $fc                                           ; $7008: $fc
	ld d, h                                          ; $7009: $54
	cp b                                             ; $700a: $b8
	ld l, e                                          ; $700b: $6b
	add b                                            ; $700c: $80
	rst SubAFromDE                                          ; $700d: $df
	rlca                                             ; $700e: $07
	adc e                                            ; $700f: $8b
	jr jr_010_7031                                   ; $7010: $18 $1f

	daa                                              ; $7012: $27
	jr c, jr_010_7064                                ; $7013: $38 $4f

	ld [hl], a                                       ; $7015: $77
	ld c, b                                          ; $7016: $48
	ld a, a                                          ; $7017: $7f
	sub l                                            ; $7018: $95
	rst $38                                          ; $7019: $ff
	push hl                                          ; $701a: $e5

jr_010_701b:
	rst $38                                          ; $701b: $ff
	xor l                                            ; $701c: $ad
	cp d                                             ; $701d: $ba
	rra                                              ; $701e: $1f
	ld d, $0b                                        ; $701f: $16 $0b
	ld d, $2f                                        ; $7021: $16 $2f
	ld a, $7b                                        ; $7023: $3e $7b
	cp $80                                           ; $7025: $fe $80
	add hl, sp                                       ; $7027: $39
	ld h, $3d                                        ; $7028: $26 $3d
	rlca                                             ; $702a: $07
	rra                                              ; $702b: $1f
	nop                                              ; $702c: $00
	nop                                              ; $702d: $00
	ld a, b                                          ; $702e: $78
	ld a, b                                          ; $702f: $78
	add h                                            ; $7030: $84

jr_010_7031:
	db $fc                                           ; $7031: $fc
	ldh [c], a                                       ; $7032: $e2
	ld e, $f2                                        ; $7033: $1e $f2
	xor $19                                          ; $7035: $ee $19
	rst FarCall                                          ; $7037: $f7
	add hl, hl                                       ; $7038: $29
	rst $38                                          ; $7039: $ff
	dec h                                            ; $703a: $25
	rst $38                                          ; $703b: $ff
	or l                                             ; $703c: $b5
	rst SubAFromDE                                          ; $703d: $df
	ld sp, hl                                        ; $703e: $f9
	ld l, a                                          ; $703f: $6f
	cp l                                             ; $7040: $bd
	ld [hl], a                                       ; $7041: $77
	db $fd                                           ; $7042: $fd
	ld h, a                                          ; $7043: $67
	db $fd                                           ; $7044: $fd
	ld h, a                                          ; $7045: $67
	adc [hl]                                         ; $7046: $8e
	ld sp, hl                                        ; $7047: $f9
	adc a                                            ; $7048: $8f
	pop af                                           ; $7049: $f1
	sbc a                                            ; $704a: $9f
	ldh [c], a                                       ; $704b: $e2
	cp $02                                           ; $704c: $fe $02
	rlca                                             ; $704e: $07
	dec bc                                           ; $704f: $0b
	rrca                                             ; $7050: $0f
	dec bc                                           ; $7051: $0b
	ld c, $0b                                        ; $7052: $0e $0b
	rrca                                             ; $7054: $0f
	ld b, $07                                        ; $7055: $06 $07
	ld [bc], a                                       ; $7057: $02
	ld a, e                                          ; $7058: $7b
	cp $7f                                           ; $7059: $fe $7f
	ld a, [$03de]                                    ; $705b: $fa $de $03
	sub [hl]                                         ; $705e: $96
	ld [bc], a                                       ; $705f: $02
	inc bc                                           ; $7060: $03
	inc bc                                           ; $7061: $03
	rlca                                             ; $7062: $07
	inc b                                            ; $7063: $04

jr_010_7064:
	ld [$3f0f], sp                                   ; $7064: $08 $0f $3f
	ccf                                              ; $7067: $3f
	db $fd                                           ; $7068: $fd
	sub h                                            ; $7069: $94
	inc l                                            ; $706a: $2c
	db $fc                                           ; $706b: $fc
	call nz, Call_010_507c                           ; $706c: $c4 $7c $50
	cp h                                             ; $706f: $bc
	db $f4                                           ; $7070: $f4
	db $fc                                           ; $7071: $fc
	cp b                                             ; $7072: $b8
	ld hl, sp-$58                                    ; $7073: $f8 $a8
	ld a, e                                          ; $7075: $7b
	cp $7e                                           ; $7076: $fe $7e
	adc h                                            ; $7078: $8c
	ld a, c                                          ; $7079: $79
	cp $7e                                           ; $707a: $fe $7e
	add e                                            ; $707c: $83
	ld a, [hl]                                       ; $707d: $7e
	add d                                            ; $707e: $82
	sbc b                                            ; $707f: $98
	sub b                                            ; $7080: $90
	sbc b                                            ; $7081: $98
	ld hl, sp-$78                                    ; $7082: $f8 $88
	ld hl, sp-$04                                    ; $7084: $f8 $fc
	db $fc                                           ; $7086: $fc
	db $fd                                           ; $7087: $fd
	inc bc                                           ; $7088: $03
	add b                                            ; $7089: $80
	ld b, a                                          ; $708a: $47
	add b                                            ; $708b: $80
	sbc [hl]                                         ; $708c: $9e
	rrca                                             ; $708d: $0f
	ld a, e                                          ; $708e: $7b
	add d                                            ; $708f: $82
	ld a, a                                          ; $7090: $7f
	ld a, [hl]                                       ; $7091: $7e
	sbc [hl]                                         ; $7092: $9e
	ld d, a                                          ; $7093: $57
	ld l, a                                          ; $7094: $6f
	add b                                            ; $7095: $80
	dec sp                                           ; $7096: $3b
	ret nz                                           ; $7097: $c0

	ld a, a                                          ; $7098: $7f
	ld a, [bc]                                       ; $7099: $0a
	sub h                                            ; $709a: $94
	ld d, $2d                                        ; $709b: $16 $2d
	ld a, $2e                                        ; $709d: $3e $2e
	ccf                                              ; $709f: $3f
	cpl                                              ; $70a0: $2f
	add hl, sp                                       ; $70a1: $39
	cpl                                              ; $70a2: $2f
	inc a                                            ; $70a3: $3c
	rra                                              ; $70a4: $1f
	inc de                                           ; $70a5: $13
	inc sp                                           ; $70a6: $33
	ret nz                                           ; $70a7: $c0

	sbc d                                            ; $70a8: $9a
	ld [hl], a                                       ; $70a9: $77
	db $dd                                           ; $70aa: $dd
	ld h, a                                          ; $70ab: $67
	ld l, l                                          ; $70ac: $6d
	rst FarCall                                          ; $70ad: $f7
	ld a, e                                          ; $70ae: $7b
	ret nz                                           ; $70af: $c0

	sub l                                            ; $70b0: $95
	rra                                              ; $70b1: $1f
	ldh [c], a                                       ; $70b2: $e2
	cp $0f                                           ; $70b3: $fe $0f
	add hl, bc                                       ; $70b5: $09
	ld [de], a                                       ; $70b6: $12
	rra                                              ; $70b7: $1f
	inc de                                           ; $70b8: $13
	ld e, $0f                                        ; $70b9: $1e $0f
	inc bc                                           ; $70bb: $03
	ld b, b                                          ; $70bc: $40
	rra                                              ; $70bd: $1f
	ld b, b                                          ; $70be: $40
	rst SubAFromDE                                          ; $70bf: $df
	rrca                                             ; $70c0: $0f
	ld a, l                                          ; $70c1: $7d
	ld a, [hl]                                       ; $70c2: $7e
	add [hl]                                         ; $70c3: $86
	inc hl                                           ; $70c4: $23
	inc a                                            ; $70c5: $3c
	daa                                              ; $70c6: $27
	dec sp                                           ; $70c7: $3b
	ld c, h                                          ; $70c8: $4c
	ld [hl], a                                       ; $70c9: $77
	ld c, d                                          ; $70ca: $4a
	ld a, a                                          ; $70cb: $7f
	ld d, d                                          ; $70cc: $52
	ld a, a                                          ; $70cd: $7f
	ld d, [hl]                                       ; $70ce: $56
	ld a, l                                          ; $70cf: $7d
	ld c, a                                          ; $70d0: $4f
	ld a, b                                          ; $70d1: $78
	ld e, a                                          ; $70d2: $5f
	ld [hl], a                                       ; $70d3: $77
	ld e, e                                          ; $70d4: $5b
	halt                                             ; $70d5: $76
	ld e, a                                          ; $70d6: $5f
	halt                                             ; $70d7: $76
	ld c, a                                          ; $70d8: $4f
	ld a, b                                          ; $70d9: $78
	ld b, a                                          ; $70da: $47
	ld a, h                                          ; $70db: $7c
	daa                                              ; $70dc: $27
	ld a, e                                          ; $70dd: $7b
	cp h                                             ; $70de: $bc
	rst SubAFromDE                                          ; $70df: $df
	ld [hl], b                                       ; $70e0: $70
	add h                                            ; $70e1: $84
	adc h                                            ; $70e2: $8c
	db $fc                                           ; $70e3: $fc
	ldh a, [c]                                       ; $70e4: $f2
	ld c, $f9                                        ; $70e5: $0e $f9
	rst FarCall                                          ; $70e7: $f7
	add hl, bc                                       ; $70e8: $09
	rst $38                                          ; $70e9: $ff
	ld d, h                                          ; $70ea: $54
	rst $38                                          ; $70eb: $ff
	ld d, e                                          ; $70ec: $53
	rst $38                                          ; $70ed: $ff
	jp c, $fcae                                      ; $70ee: $da $ae $fc

	inc b                                            ; $70f1: $04
	ld hl, sp+$74                                    ; $70f2: $f8 $74
	cp d                                             ; $70f4: $ba
	ld l, [hl]                                       ; $70f5: $6e
	ld a, [$fa6e]                                    ; $70f6: $fa $6e $fa
	adc $f2                                          ; $70f9: $ce $f2
	ld e, $f0                                        ; $70fb: $1e $f0
	ld [hl], e                                       ; $70fd: $73
	cp [hl]                                          ; $70fe: $be
	ldh [hDisp0_SCY], a                                     ; $70ff: $e0 $83
	rst SubAFromDE                                          ; $7101: $df
	inc bc                                           ; $7102: $03
	ld [hl], h                                       ; $7103: $74
	cp h                                             ; $7104: $bc
	sub [hl]                                         ; $7105: $96
	ld hl, $403f                                     ; $7106: $21 $3f $40
	ld a, a                                          ; $7109: $7f
	ld b, c                                          ; $710a: $41
	ld a, a                                          ; $710b: $7f
	add b                                            ; $710c: $80
	rst $38                                          ; $710d: $ff
	add c                                            ; $710e: $81
	ld a, e                                          ; $710f: $7b
	cp $9b                                           ; $7110: $fe $9b
	ld b, e                                          ; $7112: $43
	ld a, [hl]                                       ; $7113: $7e
	ld b, e                                          ; $7114: $43
	ld a, [hl]                                       ; $7115: $7e
	ld [hl], a                                       ; $7116: $77
	ldh a, [$9b]                                     ; $7117: $f0 $9b
	sbc h                                            ; $7119: $9c
	rst $38                                          ; $711a: $ff
	db $e3                                           ; $711b: $e3
	db $e3                                           ; $711c: $e3
	ld [hl], l                                       ; $711d: $75
	ret nz                                           ; $711e: $c0

	sbc d                                            ; $711f: $9a
	ld h, b                                          ; $7120: $60
	ldh [rAUD1SWEEP], a                              ; $7121: $e0 $10
	ldh a, [$08]                                     ; $7123: $f0 $08
	ld a, b                                          ; $7125: $78
	ld a, d                                          ; $7126: $7a
	ld a, a                                          ; $7127: $7f
	cp $9d                                           ; $7128: $fe $9d
	ld [bc], a                                       ; $712a: $02
	cp $77                                           ; $712b: $fe $77
	cp $7e                                           ; $712d: $fe $7e
	or b                                             ; $712f: $b0
	ld a, a                                          ; $7130: $7f
	cp $7f                                           ; $7131: $fe $7f
	ldh a, [$7f]                                     ; $7133: $f0 $7f
	db $ec                                           ; $7135: $ec
	ld a, a                                          ; $7136: $7f
	add sp, -$21                                     ; $7137: $e8 $df
	add b                                            ; $7139: $80
	ld l, a                                          ; $713a: $6f
	jp nz, Jump_010_7e7c                             ; $713b: $c2 $7c $7e

	ld a, a                                          ; $713e: $7f
	call nz, $cc7f                                   ; $713f: $c4 $7f $cc
	sub h                                            ; $7142: $94
	add e                                            ; $7143: $83
	cp $87                                           ; $7144: $fe $87
	db $fd                                           ; $7146: $fd
	adc a                                            ; $7147: $8f
	ld a, [$fd87]                                    ; $7148: $fa $87 $fd
	ld b, e                                          ; $714b: $43
	ld a, [hl]                                       ; $714c: $7e
	ld b, c                                          ; $714d: $41
	ld a, b                                          ; $714e: $78
	inc l                                            ; $714f: $2c
	ld a, [hl]                                       ; $7150: $7e
	ld l, d                                          ; $7151: $6a
	ld a, [hl]                                       ; $7152: $7e
	or d                                             ; $7153: $b2
	rst SubAFromDE                                          ; $7154: $df
	ld bc, $c0df                                     ; $7155: $01 $df $c0
	ld a, h                                          ; $7158: $7c
	ld a, $77                                        ; $7159: $3e $77
	call nz, Call_010_448f                           ; $715b: $c4 $8f $44
	db $fc                                           ; $715e: $fc
	ldh [c], a                                       ; $715f: $e2
	cp [hl]                                          ; $7160: $be
	ldh [c], a                                       ; $7161: $e2
	cp [hl]                                          ; $7162: $be
	pop hl                                           ; $7163: $e1
	ccf                                              ; $7164: $3f
	pop hl                                           ; $7165: $e1
	rst $38                                          ; $7166: $ff
	pop hl                                           ; $7167: $e1
	ccf                                              ; $7168: $3f
	ldh [c], a                                       ; $7169: $e2
	ld a, $c2                                        ; $716a: $3e $c2
	cp $77                                           ; $716c: $fe $77
	or h                                             ; $716e: $b4
	sbc e                                            ; $716f: $9b
	add hl, de                                       ; $7170: $19
	rst $38                                          ; $7171: $ff
	rst SubAFromBC                                          ; $7172: $e7
	rst SubAFromBC                                          ; $7173: $e7
	ld d, a                                          ; $7174: $57
	inc bc                                           ; $7175: $03
	rst $38                                          ; $7176: $ff
	rst SubAFromDE                                          ; $7177: $df
	dec a                                            ; $7178: $3d
	add b                                            ; $7179: $80
	inc de                                           ; $717a: $13
	rra                                              ; $717b: $1f
	ld sp, hl                                        ; $717c: $f9
	rst $38                                          ; $717d: $ff
	ld b, a                                          ; $717e: $47
	ld a, a                                          ; $717f: $7f
	ld [hl-], a                                      ; $7180: $32
	ccf                                              ; $7181: $3f
	dec h                                            ; $7182: $25
	ccf                                              ; $7183: $3f
	ld b, h                                          ; $7184: $44
	ld a, a                                          ; $7185: $7f
	ld b, b                                          ; $7186: $40
	ld a, a                                          ; $7187: $7f
	ld c, [hl]                                       ; $7188: $4e
	ld a, e                                          ; $7189: $7b
	ld a, a                                          ; $718a: $7f
	ld a, l                                          ; $718b: $7d
	dec hl                                           ; $718c: $2b
	ld [hl], $3f                                     ; $718d: $36 $3f
	ld h, $1f                                        ; $718f: $26 $1f
	ld d, $0e                                        ; $7191: $16 $0e
	add hl, bc                                       ; $7193: $09
	rlca                                             ; $7194: $07
	dec b                                            ; $7195: $05
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	ret nz                                           ; $7198: $c0

	add d                                            ; $7199: $82
	ret nz                                           ; $719a: $c0

	inc [hl]                                         ; $719b: $34
	db $f4                                           ; $719c: $f4
	adc [hl]                                         ; $719d: $8e
	cp $fc                                           ; $719e: $fe $fc
	db $fc                                           ; $71a0: $fc
	adc d                                            ; $71a1: $8a
	cp $26                                           ; $71a2: $fe $26
	cp $96                                           ; $71a4: $fe $96
	cp $d5                                           ; $71a6: $fe $d5
	rst $38                                          ; $71a8: $ff
	db $fd                                           ; $71a9: $fd
	cp a                                             ; $71aa: $bf
	ld a, [$be6e]                                    ; $71ab: $fa $6e $be
	ld [hl], d                                       ; $71ae: $72
	cp $62                                           ; $71af: $fe $62
	db $fc                                           ; $71b1: $fc
	ld h, h                                          ; $71b2: $64
	ld hl, sp-$78                                    ; $71b3: $f8 $88
	ldh a, [hDisp1_SCY]                                     ; $71b5: $f0 $90
	rla                                              ; $71b7: $17
	ret nz                                           ; $71b8: $c0

	sbc e                                            ; $71b9: $9b
	rrca                                             ; $71ba: $0f
	add hl, bc                                       ; $71bb: $09
	rlca                                             ; $71bc: $07
	inc b                                            ; $71bd: $04
	dec bc                                           ; $71be: $0b
	ret nz                                           ; $71bf: $c0

	sbc [hl]                                         ; $71c0: $9e
	db $10                                           ; $71c1: $10
	inc sp                                           ; $71c2: $33
	ret nz                                           ; $71c3: $c0

	sub h                                            ; $71c4: $94
	ld a, c                                          ; $71c5: $79
	dec l                                            ; $71c6: $2d
	ld [hl], $3f                                     ; $71c7: $36 $3f
	ld l, $3f                                        ; $71c9: $2e $3f
	ld a, [hl+]                                      ; $71cb: $2a
	ccf                                              ; $71cc: $3f
	add hl, sp                                       ; $71cd: $39
	ld a, $2d                                        ; $71ce: $3e $2d
	inc sp                                           ; $71d0: $33
	ret nz                                           ; $71d1: $c0

	sbc b                                            ; $71d2: $98
	ld c, $ae                                        ; $71d3: $0e $ae
	ld [hl], d                                       ; $71d5: $72
	cp $72                                           ; $71d6: $fe $72
	db $fc                                           ; $71d8: $fc
	ld e, h                                          ; $71d9: $5c
	daa                                              ; $71da: $27
	add b                                            ; $71db: $80
	sbc b                                            ; $71dc: $98
	ld a, l                                          ; $71dd: $7d
	ld a, a                                          ; $71de: $7f
	cpl                                              ; $71df: $2f
	jr nc, @+$41                                     ; $71e0: $30 $3f

	ld a, [hl+]                                      ; $71e2: $2a
	dec e                                            ; $71e3: $1d
	inc hl                                           ; $71e4: $23
	add b                                            ; $71e5: $80
	sbc b                                            ; $71e6: $98
	jp c, $fe3e                                      ; $71e7: $da $3e $fe

	ld [bc], a                                       ; $71ea: $02
	cp $52                                           ; $71eb: $fe $52
	cp h                                             ; $71ed: $bc
	ld [hl], e                                       ; $71ee: $73
	add b                                            ; $71ef: $80
	sub b                                            ; $71f0: $90
	inc b                                            ; $71f1: $04
	rlca                                             ; $71f2: $07
	ld [$100f], sp                                   ; $71f3: $08 $0f $10
	rra                                              ; $71f6: $1f
	db $10                                           ; $71f7: $10
	rra                                              ; $71f8: $1f
	inc d                                            ; $71f9: $14
	rra                                              ; $71fa: $1f
	inc c                                            ; $71fb: $0c
	rrca                                             ; $71fc: $0f
	inc b                                            ; $71fd: $04
	rlca                                             ; $71fe: $07
	inc b                                            ; $71ff: $04
	sbc $07                                          ; $7200: $de $07
	ld [hl], a                                       ; $7202: $77
	ld a, [$fe7f]                                    ; $7203: $fa $7f $fe
	rst SubAFromDE                                          ; $7206: $df
	rrca                                             ; $7207: $0f
	add [hl]                                         ; $7208: $86
	add hl, de                                       ; $7209: $19
	rra                                              ; $720a: $1f
	rst $38                                          ; $720b: $ff
	rst $38                                          ; $720c: $ff
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	inc hl                                           ; $720f: $23
	db $e3                                           ; $7210: $e3
	sub a                                            ; $7211: $97
	db $f4                                           ; $7212: $f4
	ld bc, $82ff                                     ; $7213: $01 $ff $82
	cp $1c                                           ; $7216: $fe $1c
	db $fc                                           ; $7218: $fc
	sub b                                            ; $7219: $90
	ldh a, [rAUD1SWEEP]                              ; $721a: $f0 $10
	ldh a, [hDisp1_SCY]                                     ; $721c: $f0 $90

jr_010_721e:
	ldh a, [$e0]                                     ; $721e: $f0 $e0
	ldh [$a0], a                                     ; $7220: $e0 $a0
	ld [hl], e                                       ; $7222: $73
	cp $df                                           ; $7223: $fe $df
	ldh a, [$9d]                                     ; $7225: $f0 $9d
	sbc b                                            ; $7227: $98
	ld hl, sp+$77                                    ; $7228: $f8 $77
	ldh [hDisp1_BGP], a                                     ; $722a: $e0 $92
	db $fc                                           ; $722c: $fc
	sbc a                                            ; $722d: $9f
	ld hl, sp+$3f                                    ; $722e: $f8 $3f
	ret z                                            ; $7230: $c8

	rst $38                                          ; $7231: $ff
	ld b, b                                          ; $7232: $40
	ld a, a                                          ; $7233: $7f
	dec h                                            ; $7234: $25
	ccf                                              ; $7235: $3f
	add hl, de                                       ; $7236: $19
	ld e, $05                                        ; $7237: $1e $05
	dec sp                                           ; $7239: $3b
	ret nz                                           ; $723a: $c0

	sbc l                                            ; $723b: $9d
	jr nz, jr_010_721e                               ; $723c: $20 $e0

	ld [hl], a                                       ; $723e: $77
	ret z                                            ; $723f: $c8

	sub [hl]                                         ; $7240: $96
	adc b                                            ; $7241: $88
	ld hl, sp-$18                                    ; $7242: $f8 $e8
	cp b                                             ; $7244: $b8
	add sp, $18                                      ; $7245: $e8 $18
	ld hl, sp+$18                                    ; $7247: $f8 $18
	ldh a, [rSCX]                                    ; $7249: $f0 $43
	ret nz                                           ; $724b: $c0

	sub a                                            ; $724c: $97
	ld c, h                                          ; $724d: $4c
	ld a, a                                          ; $724e: $7f
	ld b, h                                          ; $724f: $44
	ld a, a                                          ; $7250: $7f
	jr nz, jr_010_7292                               ; $7251: $20 $3f

	inc e                                            ; $7253: $1c
	rra                                              ; $7254: $1f
	ld l, a                                          ; $7255: $6f
	jp z, $c03f                                      ; $7256: $ca $3f $c0

	sbc [hl]                                         ; $7259: $9e
	jr nc, jr_010_72d7                               ; $725a: $30 $7b

	call nz, $0497                                   ; $725c: $c4 $97 $04
	db $fc                                           ; $725f: $fc
	sub h                                            ; $7260: $94
	db $fc                                           ; $7261: $fc
	inc d                                            ; $7262: $14
	db $fc                                           ; $7263: $fc
	sbc b                                            ; $7264: $98
	ld hl, sp+$37                                    ; $7265: $f8 $37
	add b                                            ; $7267: $80
	ld a, a                                          ; $7268: $7f
	ld c, d                                          ; $7269: $4a
	ld a, a                                          ; $726a: $7f
	ld b, h                                          ; $726b: $44
	ld a, a                                          ; $726c: $7f
	ret nz                                           ; $726d: $c0

jr_010_726e:
	sub l                                            ; $726e: $95
	ld c, b                                          ; $726f: $48
	ld a, a                                          ; $7270: $7f
	ld c, h                                          ; $7271: $4c
	ld a, a                                          ; $7272: $7f
	ld l, $33                                        ; $7273: $2e $33
	ld e, $13                                        ; $7275: $1e $13
	inc c                                            ; $7277: $0c
	rrca                                             ; $7278: $0f
	ld b, a                                          ; $7279: $47
	ret nz                                           ; $727a: $c0

	sub h                                            ; $727b: $94
	jr c, jr_010_726e                                ; $727c: $38 $f0

	sbc h                                            ; $727e: $9c
	db $f4                                           ; $727f: $f4
	ld e, $f2                                        ; $7280: $1e $f2
	sbc [hl]                                         ; $7282: $9e
	ldh a, [c]                                       ; $7283: $f2
	ld c, $fe                                        ; $7284: $0e $fe
	sub d                                            ; $7286: $92
	ld [hl], e                                       ; $7287: $73
	inc a                                            ; $7288: $3c
	ld b, a                                          ; $7289: $47
	ret nz                                           ; $728a: $c0

	rst $38                                          ; $728b: $ff
	rst SubAFromDE                                          ; $728c: $df
	inc bc                                           ; $728d: $03
	adc c                                            ; $728e: $89
	inc l                                            ; $728f: $2c
	cpl                                              ; $7290: $2f
	ld [hl], c                                       ; $7291: $71

jr_010_7292:
	ld a, a                                          ; $7292: $7f
	ccf                                              ; $7293: $3f
	ccf                                              ; $7294: $3f
	ld d, c                                          ; $7295: $51
	ld a, a                                          ; $7296: $7f
	ld h, h                                          ; $7297: $64
	ld a, a                                          ; $7298: $7f
	ld l, c                                          ; $7299: $69
	ld a, a                                          ; $729a: $7f
	and e                                            ; $729b: $a3
	db $fc                                           ; $729c: $fc
	or l                                             ; $729d: $b5
	cp $5b                                           ; $729e: $fe $5b
	ld [hl], h                                       ; $72a0: $74
	ld a, l                                          ; $72a1: $7d
	ld b, [hl]                                       ; $72a2: $46
	ld a, a                                          ; $72a3: $7f
	ld b, [hl]                                       ; $72a4: $46
	ld a, d                                          ; $72a5: $7a
	ld a, $97                                        ; $72a6: $3e $97
	ld de, $090f                                     ; $72a8: $11 $0f $09
	nop                                              ; $72ab: $00
	nop                                              ; $72ac: $00
	add b                                            ; $72ad: $80
	add b                                            ; $72ae: $80
	ld d, b                                          ; $72af: $50
	ld a, e                                          ; $72b0: $7b
	ld a, h                                          ; $72b1: $7c
	adc a                                            ; $72b2: $8f
	db $e4                                           ; $72b3: $e4
	db $fc                                           ; $72b4: $fc
	ld c, b                                          ; $72b5: $48
	ld hl, sp-$5c                                    ; $72b6: $f8 $a4
	db $fc                                           ; $72b8: $fc
	inc h                                            ; $72b9: $24
	db $fc                                           ; $72ba: $fc
	jp nc, $ba7e                                     ; $72bb: $d2 $7e $ba

	ld a, [hl]                                       ; $72be: $7e
	or $1e                                           ; $72bf: $f6 $1e
	call c, Call_010_7a64                            ; $72c1: $dc $64 $7a
	ld b, d                                          ; $72c4: $42
	sbc d                                            ; $72c5: $9a
	ld l, b                                          ; $72c6: $68
	ld [hl], b                                       ; $72c7: $70
	sub b                                            ; $72c8: $90
	ldh [$a0], a                                     ; $72c9: $e0 $a0
	dec bc                                           ; $72cb: $0b
	ret nz                                           ; $72cc: $c0

	sbc [hl]                                         ; $72cd: $9e
	ld [$c017], sp                                   ; $72ce: $08 $17 $c0
	ld a, a                                          ; $72d1: $7f
	ld sp, $e09d                                     ; $72d2: $31 $9d $e0
	jr nz, @+$39                                     ; $72d5: $20 $37

jr_010_72d7:
	ret nz                                           ; $72d7: $c0

	sub a                                            ; $72d8: $97
	ld e, a                                          ; $72d9: $5f
	ld [hl], b                                       ; $72da: $70
	ld [hl], a                                       ; $72db: $77
	ld c, h                                          ; $72dc: $4c
	ld a, a                                          ; $72dd: $7f
	ld c, [hl]                                       ; $72de: $4e
	ccf                                              ; $72df: $3f
	ld a, [hl+]                                      ; $72e0: $2a
	rra                                              ; $72e1: $1f
	add b                                            ; $72e2: $80
	sbc c                                            ; $72e3: $99
	db $ec                                           ; $72e4: $ec
	inc [hl]                                         ; $72e5: $34
	db $fc                                           ; $72e6: $fc
	ld [hl], h                                       ; $72e7: $74
	ld hl, sp+$58                                    ; $72e8: $f8 $58
	daa                                              ; $72ea: $27
	add b                                            ; $72eb: $80
	ld a, a                                          ; $72ec: $7f
	ret nz                                           ; $72ed: $c0

	ld a, c                                          ; $72ee: $79
	ld sp, hl                                        ; $72ef: $f9
	sbc d                                            ; $72f0: $9a
	ld c, d                                          ; $72f1: $4a
	dec a                                            ; $72f2: $3d
	ld h, $1f                                        ; $72f3: $26 $1f
	db $10                                           ; $72f5: $10
	daa                                              ; $72f6: $27
	ret nz                                           ; $72f7: $c0

	sbc d                                            ; $72f8: $9a
	db $fc                                           ; $72f9: $fc
	inc b                                            ; $72fa: $04
	db $fc                                           ; $72fb: $fc
	ld d, h                                          ; $72fc: $54
	cp b                                             ; $72fd: $b8
	ld [hl], e                                       ; $72fe: $73
	add b                                            ; $72ff: $80
	sub a                                            ; $7300: $97
	add hl, bc                                       ; $7301: $09
	rrca                                             ; $7302: $0f
	add hl, bc                                       ; $7303: $09
	rrca                                             ; $7304: $0f
	ld a, [bc]                                       ; $7305: $0a
	rrca                                             ; $7306: $0f
	ld b, $07                                        ; $7307: $06 $07
	db $dd                                           ; $7309: $dd
	inc bc                                           ; $730a: $03
	sbc [hl]                                         ; $730b: $9e
	ld bc, $fe7b                                     ; $730c: $01 $7b $fe
	ld a, e                                          ; $730f: $7b
	ld a, [$01dc]                                    ; $7310: $fa $dc $01
	add b                                            ; $7313: $80
	inc bc                                           ; $7314: $03
	ld [bc], a                                       ; $7315: $02
	inc b                                            ; $7316: $04
	rlca                                             ; $7317: $07
	rra                                              ; $7318: $1f
	rra                                              ; $7319: $1f
	nop                                              ; $731a: $00
	nop                                              ; $731b: $00
	cp $fe                                           ; $731c: $fe $fe
	add hl, de                                       ; $731e: $19
	rst $38                                          ; $731f: $ff
	jp hl                                            ; $7320: $e9


	cp a                                             ; $7321: $bf
	xor a                                            ; $7322: $af
	ld e, a                                          ; $7323: $5f
	ld hl, sp-$08                                    ; $7324: $f8 $f8
	ld e, b                                          ; $7326: $58
	ld hl, sp+$54                                    ; $7327: $f8 $54
	db $fc                                           ; $7329: $fc
	ld d, h                                          ; $732a: $54
	db $fc                                           ; $732b: $fc
	ld c, h                                          ; $732c: $4c
	db $fc                                           ; $732d: $fc
	ld hl, sp-$08                                    ; $732e: $f8 $f8

Call_010_7330:
	ldh a, [$50]                                     ; $7330: $f0 $50
	ldh a, [hDisp1_WX]                                     ; $7332: $f0 $96
	ldh a, [$f8]                                     ; $7334: $f0 $f8
	ld c, b                                          ; $7336: $48
	ld c, h                                          ; $7337: $4c
	db $fc                                           ; $7338: $fc
	call nz, Call_010_7efc                           ; $7339: $c4 $fc $7e
	ld a, [hl]                                       ; $733c: $7e
	ld l, [hl]                                       ; $733d: $6e
	cp [hl]                                          ; $733e: $be
	ld a, a                                          ; $733f: $7f
	call nc, $0b9a                                   ; $7340: $d4 $9a $0b
	rrca                                             ; $7343: $0f
	inc d                                            ; $7344: $14
	rra                                              ; $7345: $1f
	jr z, jr_010_73c1                                ; $7346: $28 $79

	ld c, l                                          ; $7348: $4d
	adc a                                            ; $7349: $8f
	ld [de], a                                       ; $734a: $12
	rra                                              ; $734b: $1f
	ld h, $3d                                        ; $734c: $26 $3d
	ld e, a                                          ; $734e: $5f
	ld a, e                                          ; $734f: $7b
	ld [hl], $3f                                     ; $7350: $36 $3f
	rla                                              ; $7352: $17
	dec de                                           ; $7353: $1b
	rla                                              ; $7354: $17
	rra                                              ; $7355: $1f
	rra                                              ; $7356: $1f
	add hl, de                                       ; $7357: $19
	rrca                                             ; $7358: $0f
	dec c                                            ; $7359: $0d
	ld [hl], a                                       ; $735a: $77
	add b                                            ; $735b: $80
	sbc b                                            ; $735c: $98
	ld a, h                                          ; $735d: $7c
	db $fc                                           ; $735e: $fc
	jp nz, $99fe                                     ; $735f: $c2 $fe $99

	rst $38                                          ; $7362: $ff
	inc b                                            ; $7363: $04
	ld a, e                                          ; $7364: $7b
	cp $9e                                           ; $7365: $fe $9e
	sub d                                            ; $7367: $92
	ld a, e                                          ; $7368: $7b
	cp $91                                           ; $7369: $fe $91
	reti                                             ; $736b: $d9


	ld l, a                                          ; $736c: $6f
	db $fc                                           ; $736d: $fc
	scf                                              ; $736e: $37
	rst AddAOntoHL                                          ; $736f: $ef
	dec sp                                           ; $7370: $3b
	cp $33                                           ; $7371: $fe $33
	cp $33                                           ; $7373: $fe $33
	db $fc                                           ; $7375: $fc
	rst GetHLinHL                                          ; $7376: $cf
	ld a, a                                          ; $7377: $7f
	db $d3                                           ; $7378: $d3
	rst FarCall                                          ; $7379: $f7
	db $dd                                           ; $737a: $dd
	add b                                            ; $737b: $80
	sbc l                                            ; $737c: $9d
	ld b, b                                          ; $737d: $40
	ret nz                                           ; $737e: $c0

	ld [hl], a                                       ; $737f: $77
	cp $df                                           ; $7380: $fe $df
	ret nz                                           ; $7382: $c0

	sbc [hl]                                         ; $7383: $9e
	ld h, b                                          ; $7384: $60
	ld [hl], d                                       ; $7385: $72
	ld e, h                                          ; $7386: $5c
	rst SubAFromDE                                          ; $7387: $df
	ret nz                                           ; $7388: $c0

	rst SubAFromDE                                          ; $7389: $df
	ld b, b                                          ; $738a: $40
	ld a, [hl]                                       ; $738b: $7e
	inc h                                            ; $738c: $24
	sbc c                                            ; $738d: $99
	jr jr_010_73af                                   ; $738e: $18 $1f

	ld b, $07                                        ; $7390: $06 $07
	ld bc, $eb01                                     ; $7392: $01 $01 $eb
	rst SubAFromDE                                          ; $7395: $df
	ld bc, $7f80                                     ; $7396: $01 $80 $7f
	rst $38                                          ; $7399: $ff
	ld b, [hl]                                       ; $739a: $46
	rst $38                                          ; $739b: $ff
	cp b                                             ; $739c: $b8
	rst AddAOntoHL                                          ; $739d: $ef
	xor e                                            ; $739e: $ab
	rst SubAFromHL                                          ; $739f: $d7
	cp $fe                                           ; $73a0: $fe $fe
	sub $fe                                          ; $73a2: $d6 $fe
	ld d, l                                          ; $73a4: $55
	rst $38                                          ; $73a5: $ff
	ld d, l                                          ; $73a6: $55
	rst $38                                          ; $73a7: $ff
	db $d3                                           ; $73a8: $d3
	rst $38                                          ; $73a9: $ff
	ld a, [hl]                                       ; $73aa: $7e
	ld a, [hl]                                       ; $73ab: $7e
	ld a, l                                          ; $73ac: $7d
	ld d, a                                          ; $73ad: $57
	dec a                                            ; $73ae: $3d

jr_010_73af:
	scf                                              ; $73af: $37
	rra                                              ; $73b0: $1f
	rra                                              ; $73b1: $1f
	ld e, $12                                        ; $73b2: $1e $12
	ld [hl+], a                                      ; $73b4: $22
	ld a, $ff                                        ; $73b5: $3e $ff
	sbc b                                            ; $73b7: $98
	rst $38                                          ; $73b8: $ff
	ld [$30f8], sp                                   ; $73b9: $08 $f8 $30
	ldh a, [$c0]                                     ; $73bc: $f0 $c0
	ret nz                                           ; $73be: $c0

	jp hl                                            ; $73bf: $e9


	rst SubAFromDE                                          ; $73c0: $df

jr_010_73c1:
	add b                                            ; $73c1: $80
	ld h, a                                          ; $73c2: $67
	cp b                                             ; $73c3: $b8
	sbc d                                            ; $73c4: $9a
	ld [bc], a                                       ; $73c5: $02
	inc bc                                           ; $73c6: $03
	dec b                                            ; $73c7: $05
	rlca                                             ; $73c8: $07
	ld a, [bc]                                       ; $73c9: $0a
	ld a, d                                          ; $73ca: $7a
	or $7f                                           ; $73cb: $f6 $7f
	ld [hl], $7e                                     ; $73cd: $36 $7e
	ldh a, [hDisp1_OBP0]                                     ; $73cf: $f0 $93
	rla                                              ; $73d1: $17
	ld e, $1d                                        ; $73d2: $1e $1d
	ld c, $7d                                        ; $73d4: $0e $7d
	ld l, a                                          ; $73d6: $6f
	db $fd                                           ; $73d7: $fd
	adc a                                            ; $73d8: $8f
	ld a, l                                          ; $73d9: $7d
	ld d, a                                          ; $73da: $57
	ld a, [hl]                                       ; $73db: $7e
	ld b, a                                          ; $73dc: $47
	ld a, c                                          ; $73dd: $79
	ld a, $97                                        ; $73de: $3e $97
	jr nz, jr_010_73c1                               ; $73e0: $20 $df

	rst $38                                          ; $73e2: $ff
	jr nc, @+$01                                     ; $73e3: $30 $ff

	and $ff                                          ; $73e5: $e6 $ff
	ld bc, $fe7b                                     ; $73e7: $01 $7b $fe
	sbc [hl]                                         ; $73ea: $9e
	and h                                            ; $73eb: $a4
	ld a, e                                          ; $73ec: $7b
	cp $9d                                           ; $73ed: $fe $9d
	or [hl]                                          ; $73ef: $b6
	ld e, e                                          ; $73f0: $5b
	ld a, e                                          ; $73f1: $7b
	rst FarCall                                          ; $73f2: $f7
	sub [hl]                                         ; $73f3: $96
	call z, $ceff                                    ; $73f4: $cc $ff $ce
	rst $38                                          ; $73f7: $ff
	ld c, d                                          ; $73f8: $4a
	rst $38                                          ; $73f9: $ff
	ld sp, $b3df                                     ; $73fa: $31 $df $b3
	ld h, a                                          ; $73fd: $67
	cp b                                             ; $73fe: $b8
	ld a, a                                          ; $73ff: $7f
	ld c, d                                          ; $7400: $4a
	ld a, l                                          ; $7401: $7d
	ld d, $75                                        ; $7402: $16 $75
	inc d                                            ; $7404: $14
	ld a, a                                          ; $7405: $7f
	cp $7e                                           ; $7406: $fe $7e
	db $e3                                           ; $7408: $e3
	ld a, a                                          ; $7409: $7f
	adc [hl]                                         ; $740a: $8e
	sub l                                            ; $740b: $95
	ret c                                            ; $740c: $d8

	ld hl, sp-$44                                    ; $740d: $f8 $bc
	db $ec                                           ; $740f: $ec
	cp $d2                                           ; $7410: $fe $d2
	ld a, h                                          ; $7412: $7c
	call nc, $c4fc                                   ; $7413: $d4 $fc $c4
	ld [hl-], a                                      ; $7416: $32
	ldh [$9a], a                                     ; $7417: $e0 $9a
	ld a, b                                          ; $7419: $78
	scf                                              ; $741a: $37
	dec sp                                           ; $741b: $3b
	ld d, $1f                                        ; $741c: $16 $1f
	ld a, d                                          ; $741e: $7a
	sbc $9c                                          ; $741f: $de $9c
	inc e                                            ; $7421: $1c
	dec bc                                           ; $7422: $0b
	ld c, $32                                        ; $7423: $0e $32
	ldh [$9b], a                                     ; $7425: $e0 $9b
	rlca                                             ; $7427: $07
	rst $38                                          ; $7428: $ff
	inc sp                                           ; $7429: $33
	sbc $7a                                          ; $742a: $de $7a
	sbc $99                                          ; $742c: $de $99
	db $fc                                           ; $742e: $fc
	add a                                            ; $742f: $87
	ld sp, hl                                        ; $7430: $f9
	rrca                                             ; $7431: $0f
	ld c, $0f                                        ; $7432: $0e $0f
	ld a, c                                          ; $7434: $79
	ld a, [$6a7b]                                    ; $7435: $fa $7b $6a
	rst SubAFromDE                                          ; $7438: $df
	inc bc                                           ; $7439: $03
	ccf                                              ; $743a: $3f
	inc b                                            ; $743b: $04
	rst SubAFromDE                                          ; $743c: $df
	ld bc, $07df                                     ; $743d: $01 $df $07
	scf                                              ; $7440: $37
	nop                                              ; $7441: $00
	sub [hl]                                         ; $7442: $96
	ld a, h                                          ; $7443: $7c
	ld d, h                                          ; $7444: $54
	ld a, h                                          ; $7445: $7c
	ld d, h                                          ; $7446: $54
	ld a, [hl]                                       ; $7447: $7e
	ld a, [hl]                                       ; $7448: $7e
	rst $38                                          ; $7449: $ff
	sub e                                            ; $744a: $93
	ld de, $ffde                                     ; $744b: $11 $de $ff
	ld a, [hl]                                       ; $744e: $7e
	or [hl]                                          ; $744f: $b6
	ld a, a                                          ; $7450: $7f
	ld l, l                                          ; $7451: $6d
	sbc d                                            ; $7452: $9a
	ld [hl], b                                       ; $7453: $70
	ret nz                                           ; $7454: $c0

	ld [hl], b                                       ; $7455: $70
	ret nc                                           ; $7456: $d0

	and b                                            ; $7457: $a0
	ld a, c                                          ; $7458: $79
	sub $ef                                          ; $7459: $d6 $ef
	rst SubAFromDE                                          ; $745b: $df
	ldh [rPCM34], a                                  ; $745c: $e0 $77
	ld h, d                                          ; $745e: $62
	ld [hl], h                                       ; $745f: $74
	cp h                                             ; $7460: $bc
	sub [hl]                                         ; $7461: $96
	ld hl, $403f                                     ; $7462: $21 $3f $40
	ld a, a                                          ; $7465: $7f
	ld b, c                                          ; $7466: $41
	ld a, a                                          ; $7467: $7f
	add b                                            ; $7468: $80
	rst $38                                          ; $7469: $ff
	add c                                            ; $746a: $81
	ld a, e                                          ; $746b: $7b
	cp $9b                                           ; $746c: $fe $9b
	ld b, e                                          ; $746e: $43
	ld a, [hl]                                       ; $746f: $7e
	ld b, e                                          ; $7470: $43
	ld a, [hl]                                       ; $7471: $7e
	ld [hl], a                                       ; $7472: $77
	ldh a, [$9b]                                     ; $7473: $f0 $9b
	sbc h                                            ; $7475: $9c
	rst $38                                          ; $7476: $ff
	db $e3                                           ; $7477: $e3
	db $e3                                           ; $7478: $e3
	ld [hl], a                                       ; $7479: $77
	ld h, b                                          ; $747a: $60
	ld a, a                                          ; $747b: $7f
	cp h                                             ; $747c: $bc
	ld a, h                                          ; $747d: $7c
	add [hl]                                         ; $747e: $86
	ld a, [hl]                                       ; $747f: $7e
	cp b                                             ; $7480: $b8
	ld a, l                                          ; $7481: $7d
	call $fe7f                                       ; $7482: $cd $7f $fe
	sbc l                                            ; $7485: $9d
	ld [bc], a                                       ; $7486: $02
	cp $77                                           ; $7487: $fe $77
	cp $9a                                           ; $7489: $fe $9a
	add h                                            ; $748b: $84
	db $fc                                           ; $748c: $fc
	add h                                            ; $748d: $84
	db $fc                                           ; $748e: $fc
	ld [$7278], sp                                   ; $748f: $08 $78 $72
	ld a, a                                          ; $7492: $7f
	add sp, -$21                                     ; $7493: $e8 $df
	add b                                            ; $7495: $80
	ld l, a                                          ; $7496: $6f
	jp nz, Jump_010_5a7e                             ; $7497: $c2 $7e $5a

	ld a, a                                          ; $749a: $7f
	call nz, $cc7f                                   ; $749b: $c4 $7f $cc
	sub h                                            ; $749e: $94
	add e                                            ; $749f: $83
	cp $87                                           ; $74a0: $fe $87
	db $fd                                           ; $74a2: $fd
	adc a                                            ; $74a3: $8f
	ld a, [$fd87]                                    ; $74a4: $fa $87 $fd
	ld b, e                                          ; $74a7: $43
	ld a, [hl]                                       ; $74a8: $7e
	ld b, c                                          ; $74a9: $41
	ld a, b                                          ; $74aa: $78
	inc l                                            ; $74ab: $2c
	ld l, [hl]                                       ; $74ac: $6e
	ld c, b                                          ; $74ad: $48
	rst SubAFromDE                                          ; $74ae: $df
	ret nz                                           ; $74af: $c0

	ld a, [hl]                                       ; $74b0: $7e
	ldh a, [c]                                       ; $74b1: $f2
	ld [hl], a                                       ; $74b2: $77
	call nz, Call_010_448f                           ; $74b3: $c4 $8f $44
	db $fc                                           ; $74b6: $fc
	ldh [c], a                                       ; $74b7: $e2
	cp [hl]                                          ; $74b8: $be
	ldh [c], a                                       ; $74b9: $e2
	cp [hl]                                          ; $74ba: $be
	pop hl                                           ; $74bb: $e1
	ccf                                              ; $74bc: $3f
	pop hl                                           ; $74bd: $e1
	rst $38                                          ; $74be: $ff
	pop hl                                           ; $74bf: $e1
	ccf                                              ; $74c0: $3f
	ldh [c], a                                       ; $74c1: $e2
	ld a, $c2                                        ; $74c2: $3e $c2
	cp $77                                           ; $74c4: $fe $77
	or h                                             ; $74c6: $b4
	ld a, l                                          ; $74c7: $7d
	and [hl]                                         ; $74c8: $a6
	rst SubAFromDE                                          ; $74c9: $df
	rst SubAFromBC                                          ; $74ca: $e7
	rrca                                             ; $74cb: $0f
	ld [bc], a                                       ; $74cc: $02
	db $ed                                           ; $74cd: $ed
	rst SubAFromDE                                          ; $74ce: $df
	inc e                                            ; $74cf: $1c
	sub l                                            ; $74d0: $95
	ccf                                              ; $74d1: $3f
	inc hl                                           ; $74d2: $23
	ld a, a                                          ; $74d3: $7f
	ld b, b                                          ; $74d4: $40
	ld a, a                                          ; $74d5: $7f
	ld b, d                                          ; $74d6: $42
	rst $38                                          ; $74d7: $ff
	add h                                            ; $74d8: $84
	rst $38                                          ; $74d9: $ff
	sbc b                                            ; $74da: $98
	rst FarCall                                          ; $74db: $f7
	rst SubAFromDE                                          ; $74dc: $df
	rlca                                             ; $74dd: $07
	sbc d                                            ; $74de: $9a
	jr jr_010_7500                                   ; $74df: $18 $1f

	jr nz, jr_010_7522                               ; $74e1: $20 $3f

	ld b, b                                          ; $74e3: $40
	ld a, e                                          ; $74e4: $7b
	rst SubAFromBC                                          ; $74e5: $e7
	sub h                                            ; $74e6: $94
	add b                                            ; $74e7: $80
	rst $38                                          ; $74e8: $ff
	ldh [rIE], a                                     ; $74e9: $e0 $ff
	ldh a, [rIE]                                     ; $74eb: $f0 $ff
	rst $38                                          ; $74ed: $ff
	rrca                                             ; $74ee: $0f
	rst $38                                          ; $74ef: $ff
	nop                                              ; $74f0: $00
	rst $38                                          ; $74f1: $ff
	or $df                                           ; $74f2: $f6 $df
	add b                                            ; $74f4: $80
	sub l                                            ; $74f5: $95
	ld h, b                                          ; $74f6: $60
	ldh [rAUD1SWEEP], a                              ; $74f7: $e0 $10
	ldh a, [$08]                                     ; $74f9: $f0 $08
	ld hl, sp+$08                                    ; $74fb: $f8 $08
	ld hl, sp+$04                                    ; $74fd: $f8 $04
	db $fc                                           ; $74ff: $fc

jr_010_7500:
	ld [hl], a                                       ; $7500: $77
	cp $7f                                           ; $7501: $fe $7f
	ld hl, sp-$21                                    ; $7503: $f8 $df
	ld hl, sp-$63                                    ; $7505: $f8 $9d
	db $fc                                           ; $7507: $fc
	inc c                                            ; $7508: $0c
	db $ed                                           ; $7509: $ed
	rst SubAFromDE                                          ; $750a: $df
	ld e, $95                                        ; $750b: $1e $95
	ccf                                              ; $750d: $3f
	ld hl, $407f                                     ; $750e: $21 $7f $40
	rst $38                                          ; $7511: $ff
	adc b                                            ; $7512: $88
	rst $38                                          ; $7513: $ff
	inc d                                            ; $7514: $14
	rst $38                                          ; $7515: $ff
	jr nz, @+$41                                     ; $7516: $20 $3f

	and b                                            ; $7518: $a0
	sub c                                            ; $7519: $91
	db $fc                                           ; $751a: $fc
	cp a                                             ; $751b: $bf
	cp $97                                           ; $751c: $fe $97
	db $eb                                           ; $751e: $eb
	or a                                             ; $751f: $b7
	rst FarCall                                          ; $7520: $f7
	cp [hl]                                          ; $7521: $be

jr_010_7522:
	rst $38                                          ; $7522: $ff
	sbc [hl]                                         ; $7523: $9e
	rst $38                                          ; $7524: $ff
	add a                                            ; $7525: $87
	db $fd                                           ; $7526: $fd
	ld d, [hl]                                       ; $7527: $56
	push af                                          ; $7528: $f5
	rst SubAFromDE                                          ; $7529: $df
	ret nz                                           ; $752a: $c0

	sbc [hl]                                         ; $752b: $9e
	jr nz, jr_010_75a9                               ; $752c: $20 $7b

	sbc [hl]                                         ; $752e: $9e
	ld l, a                                          ; $752f: $6f
	sbc h                                            ; $7530: $9c
	sub a                                            ; $7531: $97
	adc b                                            ; $7532: $88
	ld hl, sp-$38                                    ; $7533: $f8 $c8
	ld a, b                                          ; $7535: $78
	ret nc                                           ; $7536: $d0

	ldh a, [$60]                                     ; $7537: $f0 $60
	ldh [$f5], a                                     ; $7539: $e0 $f5
	db $db                                           ; $753b: $db
	ld bc, $039d                                     ; $753c: $01 $9d $03
	ld [bc], a                                       ; $753f: $02
	ld [hl], a                                       ; $7540: $77
	cp $97                                           ; $7541: $fe $97
	rlca                                             ; $7543: $07
	inc b                                            ; $7544: $04
	rlca                                             ; $7545: $07
	inc b                                            ; $7546: $04
	rrca                                             ; $7547: $0f
	ld [$101f], sp                                   ; $7548: $08 $1f $10
	ei                                               ; $754b: $fb
	rst SubAFromDE                                          ; $754c: $df
	ld a, [hl]                                       ; $754d: $7e
	adc b                                            ; $754e: $88
	rst $38                                          ; $754f: $ff
	add c                                            ; $7550: $81
	rst $38                                          ; $7551: $ff
	add b                                            ; $7552: $80
	rst $38                                          ; $7553: $ff
	ld a, [hl-]                                      ; $7554: $3a
	rst $38                                          ; $7555: $ff
	ld e, $fe                                        ; $7556: $1e $fe
	scf                                              ; $7558: $37
	db $eb                                           ; $7559: $eb
	scf                                              ; $755a: $37
	rst FarCall                                          ; $755b: $f7
	ld a, h                                          ; $755c: $7c
	rst $38                                          ; $755d: $ff
	ld c, a                                          ; $755e: $4f
	rst $38                                          ; $755f: $ff
	ld b, e                                          ; $7560: $43
	cp $5b                                           ; $7561: $fe $5b
	rst AddAOntoHL                                          ; $7563: $ef
	add hl, sp                                       ; $7564: $39
	rst $38                                          ; $7565: $ff
	ld l, e                                          ; $7566: $6b
	ldh [rPCM34], a                                  ; $7567: $e0 $77
	ld b, d                                          ; $7569: $42
	rst SubAFromDE                                          ; $756a: $df
	ldh [$9e], a                                     ; $756b: $e0 $9e
	sub b                                            ; $756d: $90
	ld l, e                                          ; $756e: $6b
	ld b, d                                          ; $756f: $42
	sub [hl]                                         ; $7570: $96
	add h                                            ; $7571: $84
	db $fc                                           ; $7572: $fc
	call nz, $e8fc                                   ; $7573: $c4 $fc $e8
	ld a, b                                          ; $7576: $78
	or b                                             ; $7577: $b0
	ld [hl], b                                       ; $7578: $70
	ld h, b                                          ; $7579: $60
	sbc $e0                                          ; $757a: $de $e0
	ccf                                              ; $757c: $3f
	add b                                            ; $757d: $80
	ld l, a                                          ; $757e: $6f
	call c, $059b                                    ; $757f: $dc $9b $05
	db $fd                                           ; $7582: $fd
	rrca                                             ; $7583: $0f
	rst $38                                          ; $7584: $ff
	ld a, d                                          ; $7585: $7a
	ei                                               ; $7586: $fb
	db $ec                                           ; $7587: $ec
	rst SubAFromDE                                          ; $7588: $df
	ld e, b                                          ; $7589: $58
	sbc l                                            ; $758a: $9d
	db $fc                                           ; $758b: $fc
	and h                                            ; $758c: $a4
	halt                                             ; $758d: $76
	db $fd                                           ; $758e: $fd
	ld a, a                                          ; $758f: $7f
	rst SubAFromHL                                          ; $7590: $d7
	add c                                            ; $7591: $81
	ldh a, [$30]                                     ; $7592: $f0 $30
	inc b                                            ; $7594: $04
	inc b                                            ; $7595: $04
	ld [bc], a                                       ; $7596: $02
	inc bc                                           ; $7597: $03
	ld bc, $3e01                                     ; $7598: $01 $01 $3e
	daa                                              ; $759b: $27
	ld a, a                                          ; $759c: $7f
	ld b, e                                          ; $759d: $43
	ld a, [hl]                                       ; $759e: $7e
	ld c, e                                          ; $759f: $4b
	ld a, $27                                        ; $75a0: $3e $27
	rra                                              ; $75a2: $1f
	inc de                                           ; $75a3: $13
	rra                                              ; $75a4: $1f
	inc de                                           ; $75a5: $13
	rrca                                             ; $75a6: $0f
	add hl, bc                                       ; $75a7: $09
	rrca                                             ; $75a8: $0f

jr_010_75a9:
	add hl, bc                                       ; $75a9: $09
	rlca                                             ; $75aa: $07
	inc b                                            ; $75ab: $04
	inc bc                                           ; $75ac: $03
	ld [bc], a                                       ; $75ad: $02
	ld bc, $fd01                                     ; $75ae: $01 $01 $fd
	add b                                            ; $75b1: $80
	rla                                              ; $75b2: $17
	scf                                              ; $75b3: $37
	jr @+$01                                         ; $75b4: $18 $ff

	add hl, hl                                       ; $75b6: $29

jr_010_75b7:
	rst $38                                          ; $75b7: $ff
	ld d, d                                          ; $75b8: $52
	rst $38                                          ; $75b9: $ff
	ld c, c                                          ; $75ba: $49
	rst $38                                          ; $75bb: $ff
	call z, $ceff                                    ; $75bc: $cc $ff $ce
	ei                                               ; $75bf: $fb
	rst AddAOntoHL                                          ; $75c0: $ef
	or l                                             ; $75c1: $b5
	cp e                                             ; $75c2: $bb
	ld l, [hl]                                       ; $75c3: $6e
	rst $38                                          ; $75c4: $ff
	ld h, [hl]                                       ; $75c5: $66
	rst $38                                          ; $75c6: $ff
	ld h, a                                          ; $75c7: $67
	rst $38                                          ; $75c8: $ff
	sbc c                                            ; $75c9: $99
	rst $38                                          ; $75ca: $ff
	jp z, $3cff                                      ; $75cb: $ca $ff $3c

	rst $38                                          ; $75ce: $ff
	add c                                            ; $75cf: $81
	ld a, [hl]                                       ; $75d0: $7e
	sbc d                                            ; $75d1: $9a
	ld b, d                                          ; $75d2: $42
	nop                                              ; $75d3: $00
	nop                                              ; $75d4: $00
	jr nz, jr_010_75b7                               ; $75d5: $20 $e0

	ld [hl], a                                       ; $75d7: $77
	adc b                                            ; $75d8: $88
	adc e                                            ; $75d9: $8b
	inc a                                            ; $75da: $3c
	db $e4                                           ; $75db: $e4
	cp $d2                                           ; $75dc: $fe $d2
	ld a, [hl]                                       ; $75de: $7e
	jp nz, $e2fe                                     ; $75df: $c2 $fe $e2

	db $fc                                           ; $75e2: $fc
	ld b, h                                          ; $75e3: $44
	ld hl, sp-$78                                    ; $75e4: $f8 $88
	ldh a, [rAUD1SWEEP]                              ; $75e6: $f0 $10
	ldh [rAUD4LEN], a                                ; $75e8: $e0 $20
	ret nz                                           ; $75ea: $c0

	ld b, b                                          ; $75eb: $40
	add b                                            ; $75ec: $80
	add b                                            ; $75ed: $80
	ld [hl], d                                       ; $75ee: $72

jr_010_75ef:
	or h                                             ; $75ef: $b4
	add [hl]                                         ; $75f0: $86
	rra                                              ; $75f1: $1f
	ld a, [hl+]                                      ; $75f2: $2a
	ccf                                              ; $75f3: $3f
	ld [hl], e                                       ; $75f4: $73
	ld a, a                                          ; $75f5: $7f
	inc h                                            ; $75f6: $24
	ccf                                              ; $75f7: $3f
	ld b, h                                          ; $75f8: $44
	ld a, a                                          ; $75f9: $7f
	ld b, h                                          ; $75fa: $44
	ld a, a                                          ; $75fb: $7f
	ld c, [hl]                                       ; $75fc: $4e
	ld a, a                                          ; $75fd: $7f
	cpl                                              ; $75fe: $2f
	ccf                                              ; $75ff: $3f
	ccf                                              ; $7600: $3f
	inc [hl]                                         ; $7601: $34
	cpl                                              ; $7602: $2f
	cpl                                              ; $7603: $2f
	rra                                              ; $7604: $1f
	db $10                                           ; $7605: $10
	ccf                                              ; $7606: $3f
	ld [hl+], a                                      ; $7607: $22
	ccf                                              ; $7608: $3f
	inc h                                            ; $7609: $24
	ld a, e                                          ; $760a: $7b
	sub [hl]                                         ; $760b: $96
	adc b                                            ; $760c: $88
	ld [$0407], sp                                   ; $760d: $08 $07 $04
	ld [hl], h                                       ; $7610: $74
	db $fc                                           ; $7611: $fc
	sbc d                                            ; $7612: $9a
	cp $06                                           ; $7613: $fe $06
	cp $a5                                           ; $7615: $fe $a5
	rst $38                                          ; $7617: $ff
	sub l                                            ; $7618: $95
	rst $38                                          ; $7619: $ff
	push de                                          ; $761a: $d5
	rst $38                                          ; $761b: $ff
	ld a, [$feee]                                    ; $761c: $fa $ee $fe
	ld a, [bc]                                       ; $761f: $0a
	cp $52                                           ; $7620: $fe $52
	cp h                                             ; $7622: $bc
	ld h, h                                          ; $7623: $64
	ld a, d                                          ; $7624: $7a
	jp $9896                                         ; $7625: $c3 $96 $98


	db $fc                                           ; $7628: $fc
	db $e4                                           ; $7629: $e4
	cp $02                                           ; $762a: $fe $02
	rst $38                                          ; $762c: $ff
	ld bc, $19ff                                     ; $762d: $01 $ff $19
	rst SubAFromBC                                          ; $7630: $e7
	rst SubAFromDE                                          ; $7631: $df
	ld a, l                                          ; $7632: $7d
	ld a, a                                          ; $7633: $7f
	cp e                                             ; $7634: $bb
	sub l                                            ; $7635: $95
	pop af                                           ; $7636: $f1
	rst $38                                          ; $7637: $ff
	db $10                                           ; $7638: $10
	db $10                                           ; $7639: $10
	jr c, @+$2a                                      ; $763a: $38 $28

	inc a                                            ; $763c: $3c
	inc h                                            ; $763d: $24
	inc e                                            ; $763e: $1c
	inc e                                            ; $763f: $1c
	rst FarCall                                          ; $7640: $f7
	rst SubAFromDE                                          ; $7641: $df
	jr jr_010_76bf                                   ; $7642: $18 $7b

	ldh a, [$9d]                                     ; $7644: $f0 $9d
	inc d                                            ; $7646: $14
	inc c                                            ; $7647: $0c
	ld d, d                                          ; $7648: $52
	ld h, $df                                        ; $7649: $26 $df
	ld [hl], b                                       ; $764b: $70
	sbc e                                            ; $764c: $9b
	ldh a, [hDisp1_SCY]                                     ; $764d: $f0 $90
	ld h, b                                          ; $764f: $60
	ld h, b                                          ; $7650: $60
	rst FarCall                                          ; $7651: $f7
	rst SubAFromDE                                          ; $7652: $df
	jr nc, jr_010_75ef                               ; $7653: $30 $9a

	ld a, b                                          ; $7655: $78
	ld c, b                                          ; $7656: $48
	ld [hl], b                                       ; $7657: $70
	ld d, b                                          ; $7658: $50
	jr nz, @+$5c                                     ; $7659: $20 $5a

	ld [hl+], a                                      ; $765b: $22
	ld bc, $01c0                                     ; $765c: $01 $c0 $01
	ret nz                                           ; $765f: $c0

	ld bc, $19e0                                     ; $7660: $01 $e0 $19
	ldh [rSC], a                                     ; $7663: $e0 $02
	nop                                              ; $7665: $00
	ld [bc], a                                       ; $7666: $02
	nop                                              ; $7667: $00
	sub l                                            ; $7668: $95
	rlca                                             ; $7669: $07
	rra                                              ; $766a: $1f
	add hl, bc                                       ; $766b: $09
	ld e, $06                                        ; $766c: $1e $06
	rra                                              ; $766e: $1f
	add hl, bc                                       ; $766f: $09
	rla                                              ; $7670: $17
	dec c                                            ; $7671: $0d
	inc de                                           ; $7672: $13
	ld [hl], a                                       ; $7673: $77
	cp $98                                           ; $7674: $fe $98
	dec d                                            ; $7676: $15
	dec de                                           ; $7677: $1b
	add hl, bc                                       ; $7678: $09
	rrca                                             ; $7679: $0f
	dec b                                            ; $767a: $05
	rlca                                             ; $767b: $07
	inc bc                                           ; $767c: $03
	ld a, d                                          ; $767d: $7a
	ld h, $e9                                        ; $767e: $26 $e9
	rst SubAFromDE                                          ; $7680: $df
	ret nz                                           ; $7681: $c0

	ld a, a                                          ; $7682: $7f
	ret nz                                           ; $7683: $c0

jr_010_7684:
	adc [hl]                                         ; $7684: $8e
	ret z                                            ; $7685: $c8

	jr c, jr_010_7684                                ; $7686: $38 $fc

	db $fc                                           ; $7688: $fc
	ld h, c                                          ; $7689: $61
	rst $38                                          ; $768a: $ff
	ld e, a                                          ; $768b: $5f
	ldh a, [rWX]                                     ; $768c: $f0 $4b
	db $fc                                           ; $768e: $fc
	ld d, l                                          ; $768f: $55
	xor $5a                                          ; $7690: $ee $5a
	rst SubAFromBC                                          ; $7692: $e7
	ld e, l                                          ; $7693: $5d
	db $e3                                           ; $7694: $e3
	db $dd                                           ; $7695: $dd
	ld a, e                                          ; $7696: $7b
	cp $9d                                           ; $7697: $fe $9d
	ld e, l                                          ; $7699: $5d
	ld h, e                                          ; $769a: $63
	ld [hl], a                                       ; $769b: $77
	cp $9d                                           ; $769c: $fe $9d
	dec l                                            ; $769e: $2d
	inc sp                                           ; $769f: $33
	ld h, a                                          ; $76a0: $67
	cp [hl]                                          ; $76a1: $be
	rst SubAFromDE                                          ; $76a2: $df
	add b                                            ; $76a3: $80
	sbc b                                            ; $76a4: $98
	ld b, b                                          ; $76a5: $40
	ldh [$b0], a                                     ; $76a6: $e0 $b0
	ld [hl], b                                       ; $76a8: $70
	db $ec                                           ; $76a9: $ec
	inc e                                            ; $76aa: $1c
	inc bc                                           ; $76ab: $03
	sbc $ff                                          ; $76ac: $de $ff
	ld a, [hl]                                       ; $76ae: $7e
	ld [hl], c                                       ; $76af: $71
	sbc l                                            ; $76b0: $9d
	ld a, l                                          ; $76b1: $7d
	add e                                            ; $76b2: $83
	ld d, a                                          ; $76b3: $57
	cp $7f                                           ; $76b4: $fe $7f
	ldh a, [$df]                                     ; $76b6: $f0 $df
	rst $38                                          ; $76b8: $ff
	sub e                                            ; $76b9: $93
	rlca                                             ; $76ba: $07
	ld a, [$8ef1]                                    ; $76bb: $fa $f1 $8e
	adc a                                            ; $76be: $8f

jr_010_76bf:
	di                                               ; $76bf: $f3
	ldh [$1f], a                                     ; $76c0: $e0 $1f
	db $fc                                           ; $76c2: $fc
	di                                               ; $76c3: $f3
	inc b                                            ; $76c4: $04
	db $e4                                           ; $76c5: $e4
	db $ed                                           ; $76c6: $ed
	sub [hl]                                         ; $76c7: $96
	sbc h                                            ; $76c8: $9c
	ld h, a                                          ; $76c9: $67
	cp $07                                           ; $76ca: $fe $07
	ld c, $fe                                        ; $76cc: $0e $fe
	ldh [$58], a                                     ; $76ce: $e0 $58
	jr nc, jr_010_7743                               ; $76d0: $30 $71

	ldh a, [c]                                       ; $76d2: $f2
	db $e3                                           ; $76d3: $e3
	ld bc, $e040                                     ; $76d4: $01 $40 $e0
	nop                                              ; $76d7: $00
	ldh [hDisp1_LCDC], a                                     ; $76d8: $e0 $8f
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

Call_010_7714:
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

jr_010_7743:
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

Call_010_7a64:
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

Call_010_7bdc:
	rst $38                                          ; $7bdc: $ff
	rst $38                                          ; $7bdd: $ff

Call_010_7bde:
	rst $38                                          ; $7bde: $ff

Call_010_7bdf:
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

Call_010_7dc6:
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

Jump_010_7e7c:
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

Call_010_7efc:
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

Call_010_7fdf:
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

Call_010_7fff:
	rst $38                                          ; $7fff: $ff
