; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02b", ROMX[$4000], BANK[$2b]

	db $30, $cf                                      ; $4000: $30 $cf
	rst $38                                          ; $4002: $ff
	rst $38                                          ; $4003: $ff
	rst $38                                          ; $4004: $ff
	rst $38                                          ; $4005: $ff
	rst $38                                          ; $4006: $ff
	rst $38                                          ; $4007: $ff
	db $fc                                           ; $4008: $fc
	rst $38                                          ; $4009: $ff
	rrca                                             ; $400a: $0f
	ret nz                                           ; $400b: $c0

	jr nc, jr_02b_404d                               ; $400c: $30 $3f

	rst $38                                          ; $400e: $ff
	rst $38                                          ; $400f: $ff
	rst $38                                          ; $4010: $ff
	rst $38                                          ; $4011: $ff
	rst $38                                          ; $4012: $ff
	rst SubAFromDE                                          ; $4013: $df
	ei                                               ; $4014: $fb
	rst $38                                          ; $4015: $ff
	ld bc, $00e0                                     ; $4016: $01 $e0 $00
	nop                                              ; $4019: $00
	inc a                                            ; $401a: $3c
	rrca                                             ; $401b: $0f
	rst $38                                          ; $401c: $ff
	rst $38                                          ; $401d: $ff
	rst $38                                          ; $401e: $ff
	rst $38                                          ; $401f: $ff
	rst $38                                          ; $4020: $ff
	di                                               ; $4021: $f3
	db $fc                                           ; $4022: $fc
	ccf                                              ; $4023: $3f
	rrca                                             ; $4024: $0f
	ret nz                                           ; $4025: $c0

	ldh a, [rAUD3LEN]                                ; $4026: $f0 $1b
	rst GetHLinHL                                          ; $4028: $cf
	rst $38                                          ; $4029: $ff
	rst $38                                          ; $402a: $ff
	rst $38                                          ; $402b: $ff
	rst $38                                          ; $402c: $ff
	rst $38                                          ; $402d: $ff
	rst $38                                          ; $402e: $ff
	db $fc                                           ; $402f: $fc
	rst $38                                          ; $4030: $ff
	nop                                              ; $4031: $00
	nop                                              ; $4032: $00
	nop                                              ; $4033: $00
	ccf                                              ; $4034: $3f
	rst $38                                          ; $4035: $ff
	rst $38                                          ; $4036: $ff
	rst $38                                          ; $4037: $ff
	rst $38                                          ; $4038: $ff
	rst $38                                          ; $4039: $ff
	rst $38                                          ; $403a: $ff
	di                                               ; $403b: $f3
	db $fc                                           ; $403c: $fc
	rst GetHLinHL                                          ; $403d: $cf
	inc bc                                           ; $403e: $03
	ret nz                                           ; $403f: $c0

	jr nc, jr_02b_4042                               ; $4040: $30 $00

jr_02b_4042:
	ret nz                                           ; $4042: $c0

	di                                               ; $4043: $f3
	rst $38                                          ; $4044: $ff
	rst $38                                          ; $4045: $ff
	rst $38                                          ; $4046: $ff
	rst $38                                          ; $4047: $ff
	rst $38                                          ; $4048: $ff
	rst $38                                          ; $4049: $ff
	rst $38                                          ; $404a: $ff
	ccf                                              ; $404b: $3f
	ret nz                                           ; $404c: $c0

jr_02b_404d:
	ldh a, [$03]                                     ; $404d: $f0 $03
	rst GetHLinHL                                          ; $404f: $cf
	rst $38                                          ; $4050: $ff
	rst $38                                          ; $4051: $ff
	rst $38                                          ; $4052: $ff
	rst $38                                          ; $4053: $ff
	rst $38                                          ; $4054: $ff
	rst $38                                          ; $4055: $ff
	db $fc                                           ; $4056: $fc
	rst $38                                          ; $4057: $ff
	nop                                              ; $4058: $00
	ret nz                                           ; $4059: $c0

	nop                                              ; $405a: $00
	inc sp                                           ; $405b: $33
	rst SubAFromDE                                          ; $405c: $df
	rst $38                                          ; $405d: $ff
	rst $38                                          ; $405e: $ff
	rst $38                                          ; $405f: $ff
	rst $38                                          ; $4060: $ff
	rst $38                                          ; $4061: $ff
	rst $38                                          ; $4062: $ff
	cp $7f                                           ; $4063: $fe $7f
	add b                                            ; $4065: $80
	nop                                              ; $4066: $00
	nop                                              ; $4067: $00
	nop                                              ; $4068: $00
	rst GetHLinHL                                          ; $4069: $cf
	rst $38                                          ; $406a: $ff
	rst $38                                          ; $406b: $ff
	rst $38                                          ; $406c: $ff
	rst $38                                          ; $406d: $ff
	rst $38                                          ; $406e: $ff
	rst $38                                          ; $406f: $ff
	db $fd                                           ; $4070: $fd
	rst $38                                          ; $4071: $ff
	add b                                            ; $4072: $80
	ldh a, [rP1]                                     ; $4073: $f0 $00
	rlca                                             ; $4075: $07
	add c                                            ; $4076: $81
	rst AddAOntoHL                                          ; $4077: $ef
	rst $38                                          ; $4078: $ff
	rst $38                                          ; $4079: $ff
	rst $38                                          ; $407a: $ff
	rst $38                                          ; $407b: $ff
	rst $38                                          ; $407c: $ff
	rst $38                                          ; $407d: $ff
	rst $38                                          ; $407e: $ff
	rst $38                                          ; $407f: $ff
	ret nz                                           ; $4080: $c0

	ld h, b                                          ; $4081: $60
	ccf                                              ; $4082: $3f
	rst $38                                          ; $4083: $ff
	rst $38                                          ; $4084: $ff
	rst $38                                          ; $4085: $ff
	rst $38                                          ; $4086: $ff
	rst $38                                          ; $4087: $ff
	rst $38                                          ; $4088: $ff
	di                                               ; $4089: $f3
	db $fc                                           ; $408a: $fc
	rst $38                                          ; $408b: $ff
	inc bc                                           ; $408c: $03
	ret nz                                           ; $408d: $c0

	nop                                              ; $408e: $00
	inc a                                            ; $408f: $3c
	rst $38                                          ; $4090: $ff
	rst $38                                          ; $4091: $ff
	rst $38                                          ; $4092: $ff
	rst $38                                          ; $4093: $ff
	rst $38                                          ; $4094: $ff
	rst $38                                          ; $4095: $ff
	rst $38                                          ; $4096: $ff
	db $fc                                           ; $4097: $fc
	ccf                                              ; $4098: $3f
	nop                                              ; $4099: $00
	ret nz                                           ; $409a: $c0

	nop                                              ; $409b: $00
	ccf                                              ; $409c: $3f
	rst $38                                          ; $409d: $ff
	rst $38                                          ; $409e: $ff
	rst $38                                          ; $409f: $ff
	rst $38                                          ; $40a0: $ff
	rst $38                                          ; $40a1: $ff
	rst $38                                          ; $40a2: $ff
	di                                               ; $40a3: $f3
	db $fc                                           ; $40a4: $fc
	inc bc                                           ; $40a5: $03
	nop                                              ; $40a6: $00
	ret nz                                           ; $40a7: $c0

	nop                                              ; $40a8: $00
	jr nc, @+$01                                     ; $40a9: $30 $ff

	rst $38                                          ; $40ab: $ff
	rst $38                                          ; $40ac: $ff
	rst $38                                          ; $40ad: $ff
	rst $38                                          ; $40ae: $ff
	rst $38                                          ; $40af: $ff
	di                                               ; $40b0: $f3
	db $fc                                           ; $40b1: $fc
	rst $38                                          ; $40b2: $ff
	inc bc                                           ; $40b3: $03
	ret nz                                           ; $40b4: $c0

	ldh a, [$3c]                                     ; $40b5: $f0 $3c
	ccf                                              ; $40b7: $3f
	rst $38                                          ; $40b8: $ff
	rst $38                                          ; $40b9: $ff
	rst $38                                          ; $40ba: $ff
	rst $38                                          ; $40bb: $ff
	rst $38                                          ; $40bc: $ff
	rst $38                                          ; $40bd: $ff
	db $fc                                           ; $40be: $fc
	ccf                                              ; $40bf: $3f
	inc bc                                           ; $40c0: $03
	ret nz                                           ; $40c1: $c0

	nop                                              ; $40c2: $00
	rst $38                                          ; $40c3: $ff
	rst $38                                          ; $40c4: $ff
	rst $38                                          ; $40c5: $ff
	rst $38                                          ; $40c6: $ff
	rst $38                                          ; $40c7: $ff
	rst $38                                          ; $40c8: $ff
	rst $38                                          ; $40c9: $ff
	di                                               ; $40ca: $f3
	db $fc                                           ; $40cb: $fc
	rrca                                             ; $40cc: $0f
	nop                                              ; $40cd: $00
	nop                                              ; $40ce: $00
	nop                                              ; $40cf: $00
	inc bc                                           ; $40d0: $03
	rst GetHLinHL                                          ; $40d1: $cf
	rst $38                                          ; $40d2: $ff
	rst $38                                          ; $40d3: $ff
	rst $38                                          ; $40d4: $ff
	rst $38                                          ; $40d5: $ff
	rst $38                                          ; $40d6: $ff
	rst $38                                          ; $40d7: $ff
	db $fc                                           ; $40d8: $fc
	rst $38                                          ; $40d9: $ff
	inc bc                                           ; $40da: $03
	ret nz                                           ; $40db: $c0

	jr nc, jr_02b_40de                               ; $40dc: $30 $00

jr_02b_40de:
	rst GetHLinHL                                          ; $40de: $cf
	ccf                                              ; $40df: $3f
	rst $38                                          ; $40e0: $ff
	rst $38                                          ; $40e1: $ff
	rst $38                                          ; $40e2: $ff
	rst $38                                          ; $40e3: $ff
	rst $38                                          ; $40e4: $ff
	rst $38                                          ; $40e5: $ff
	rst $38                                          ; $40e6: $ff
	ccf                                              ; $40e7: $3f
	ret nz                                           ; $40e8: $c0

	ldh a, [rP1]                                     ; $40e9: $f0 $00
	rst $38                                          ; $40eb: $ff
	rst $38                                          ; $40ec: $ff
	rst $38                                          ; $40ed: $ff
	rst $38                                          ; $40ee: $ff
	rst $38                                          ; $40ef: $ff
	rst $38                                          ; $40f0: $ff
	rst $38                                          ; $40f1: $ff
	db $fc                                           ; $40f2: $fc
	rst $38                                          ; $40f3: $ff
	nop                                              ; $40f4: $00
	ret nz                                           ; $40f5: $c0

	nop                                              ; $40f6: $00
	inc a                                            ; $40f7: $3c
	rst $38                                          ; $40f8: $ff
	rst $38                                          ; $40f9: $ff
	rst $38                                          ; $40fa: $ff
	rst $38                                          ; $40fb: $ff
	rst $38                                          ; $40fc: $ff
	rst $38                                          ; $40fd: $ff
	rst $38                                          ; $40fe: $ff
	db $fc                                           ; $40ff: $fc
	rst GetHLinHL                                          ; $4100: $cf
	nop                                              ; $4101: $00
	ret nz                                           ; $4102: $c0

	nop                                              ; $4103: $00
	inc bc                                           ; $4104: $03
	inc bc                                           ; $4105: $03
	ldh a, [$fc]                                     ; $4106: $f0 $fc
	rst $38                                          ; $4108: $ff
	rst $38                                          ; $4109: $ff
	rst $38                                          ; $410a: $ff
	rst $38                                          ; $410b: $ff
	rst $38                                          ; $410c: $ff
	rst $38                                          ; $410d: $ff
	rst $38                                          ; $410e: $ff
	rst GetHLinHL                                          ; $410f: $cf
	ldh a, [$30]                                     ; $4110: $f0 $30
	rst $38                                          ; $4112: $ff
	rst $38                                          ; $4113: $ff
	rst $38                                          ; $4114: $ff
	rst $38                                          ; $4115: $ff
	rst $38                                          ; $4116: $ff
	rst $38                                          ; $4117: $ff
	rst $38                                          ; $4118: $ff
	db $fc                                           ; $4119: $fc
	rst $38                                          ; $411a: $ff
	nop                                              ; $411b: $00
	ret nz                                           ; $411c: $c0

	nop                                              ; $411d: $00
	inc a                                            ; $411e: $3c
	rst $38                                          ; $411f: $ff
	rst $38                                          ; $4120: $ff
	rst $38                                          ; $4121: $ff
	rst $38                                          ; $4122: $ff
	rst $38                                          ; $4123: $ff
	rst $38                                          ; $4124: $ff
	di                                               ; $4125: $f3
	db $fc                                           ; $4126: $fc
	rrca                                             ; $4127: $0f
	nop                                              ; $4128: $00
	ret nz                                           ; $4129: $c0

	nop                                              ; $412a: $00
	rst $38                                          ; $412b: $ff
	rst $38                                          ; $412c: $ff
	rst $38                                          ; $412d: $ff
	rst $38                                          ; $412e: $ff
	rst $38                                          ; $412f: $ff
	rst $38                                          ; $4130: $ff
	rst $38                                          ; $4131: $ff
	di                                               ; $4132: $f3
	db $fc                                           ; $4133: $fc
	rrca                                             ; $4134: $0f
	nop                                              ; $4135: $00
	ret nz                                           ; $4136: $c0

	nop                                              ; $4137: $00
	nop                                              ; $4138: $00
	rst GetHLinHL                                          ; $4139: $cf
	rst $38                                          ; $413a: $ff
	rst $38                                          ; $413b: $ff
	rst $38                                          ; $413c: $ff
	rst $38                                          ; $413d: $ff
	rst $38                                          ; $413e: $ff
	rst $38                                          ; $413f: $ff
	rst $38                                          ; $4140: $ff
	di                                               ; $4141: $f3
	nop                                              ; $4142: $00
	ret nz                                           ; $4143: $c0

	nop                                              ; $4144: $00
	inc sp                                           ; $4145: $33
	rst $38                                          ; $4146: $ff
	rst $38                                          ; $4147: $ff
	rst $38                                          ; $4148: $ff
	rst $38                                          ; $4149: $ff
	rst $38                                          ; $414a: $ff
	rst $38                                          ; $414b: $ff
	rst $38                                          ; $414c: $ff
	db $fc                                           ; $414d: $fc
	rst $38                                          ; $414e: $ff
	inc bc                                           ; $414f: $03
	ret nz                                           ; $4150: $c0

	nop                                              ; $4151: $00
	nop                                              ; $4152: $00
	rst $38                                          ; $4153: $ff
	rst $38                                          ; $4154: $ff
	rst $38                                          ; $4155: $ff
	rst $38                                          ; $4156: $ff
	rst $38                                          ; $4157: $ff
	rst $38                                          ; $4158: $ff
	rst $38                                          ; $4159: $ff
	db $fc                                           ; $415a: $fc
	rst $38                                          ; $415b: $ff
	inc bc                                           ; $415c: $03
	ret nz                                           ; $415d: $c0

	nop                                              ; $415e: $00
	jr nc, @+$01                                     ; $415f: $30 $ff

	rst $38                                          ; $4161: $ff
	rst $38                                          ; $4162: $ff
	rst $38                                          ; $4163: $ff
	rst $38                                          ; $4164: $ff
	rst $38                                          ; $4165: $ff
	rst $38                                          ; $4166: $ff
	db $fc                                           ; $4167: $fc
	rst $38                                          ; $4168: $ff
	nop                                              ; $4169: $00
	ret nz                                           ; $416a: $c0

	nop                                              ; $416b: $00
	ccf                                              ; $416c: $3f
	rst $38                                          ; $416d: $ff
	rst $38                                          ; $416e: $ff
	rst $38                                          ; $416f: $ff
	rst $38                                          ; $4170: $ff
	rst $38                                          ; $4171: $ff
	rst $38                                          ; $4172: $ff
	rst $38                                          ; $4173: $ff
	db $fc                                           ; $4174: $fc
	rst GetHLinHL                                          ; $4175: $cf

jr_02b_4176:
	inc bc                                           ; $4176: $03
	ret nz                                           ; $4177: $c0

	jr nc, jr_02b_4176                               ; $4178: $30 $fc

	rst $38                                          ; $417a: $ff
	rst $38                                          ; $417b: $ff
	rst $38                                          ; $417c: $ff
	rst $38                                          ; $417d: $ff
	rst $38                                          ; $417e: $ff
	rst $38                                          ; $417f: $ff
	di                                               ; $4180: $f3
	db $fc                                           ; $4181: $fc
	inc bc                                           ; $4182: $03
	nop                                              ; $4183: $00
	nop                                              ; $4184: $00
	nop                                              ; $4185: $00
	ccf                                              ; $4186: $3f
	rst $38                                          ; $4187: $ff
	rst $38                                          ; $4188: $ff
	rst $38                                          ; $4189: $ff
	rst $38                                          ; $418a: $ff
	rst $38                                          ; $418b: $ff
	rst $38                                          ; $418c: $ff
	di                                               ; $418d: $f3
	db $fc                                           ; $418e: $fc
	rrca                                             ; $418f: $0f
	nop                                              ; $4190: $00
	nop                                              ; $4191: $00
	nop                                              ; $4192: $00
	nop                                              ; $4193: $00
	ret nz                                           ; $4194: $c0

	ccf                                              ; $4195: $3f
	rst $38                                          ; $4196: $ff
	rst $38                                          ; $4197: $ff
	rst $38                                          ; $4198: $ff
	rst $38                                          ; $4199: $ff
	rst $38                                          ; $419a: $ff
	rst $38                                          ; $419b: $ff
	rst $38                                          ; $419c: $ff
	rst $38                                          ; $419d: $ff
	ret nz                                           ; $419e: $c0

	ldh a, [$30]                                     ; $419f: $f0 $30
	rst $38                                          ; $41a1: $ff
	rst $38                                          ; $41a2: $ff
	rst $38                                          ; $41a3: $ff
	rst $38                                          ; $41a4: $ff
	rst $38                                          ; $41a5: $ff
	rst $38                                          ; $41a6: $ff
	rst $38                                          ; $41a7: $ff
	db $fc                                           ; $41a8: $fc
	di                                               ; $41a9: $f3
	nop                                              ; $41aa: $00

jr_02b_41ab:
	nop                                              ; $41ab: $00
	nop                                              ; $41ac: $00
	nop                                              ; $41ad: $00
	ret nz                                           ; $41ae: $c0

	di                                               ; $41af: $f3
	rst $38                                          ; $41b0: $ff
	rst $38                                          ; $41b1: $ff
	rst $38                                          ; $41b2: $ff
	rst $38                                          ; $41b3: $ff
	rst $38                                          ; $41b4: $ff
	rst $38                                          ; $41b5: $ff
	rst $38                                          ; $41b6: $ff
	rst $38                                          ; $41b7: $ff
	ret nz                                           ; $41b8: $c0

	jr nc, jr_02b_41ab                               ; $41b9: $30 $f0

	ccf                                              ; $41bb: $3f
	rst $38                                          ; $41bc: $ff
	rst $38                                          ; $41bd: $ff
	rst $38                                          ; $41be: $ff
	rst $38                                          ; $41bf: $ff
	rst $38                                          ; $41c0: $ff
	rst $38                                          ; $41c1: $ff
	db $fc                                           ; $41c2: $fc
	rrca                                             ; $41c3: $0f
	inc bc                                           ; $41c4: $03
	ret nz                                           ; $41c5: $c0

	jr nc, jr_02b_41c8                               ; $41c6: $30 $00

jr_02b_41c8:
	ret nz                                           ; $41c8: $c0

	rst $38                                          ; $41c9: $ff
	rst $38                                          ; $41ca: $ff
	rst $38                                          ; $41cb: $ff
	rst $38                                          ; $41cc: $ff
	rst $38                                          ; $41cd: $ff
	rst $38                                          ; $41ce: $ff
	rst $38                                          ; $41cf: $ff
	rst $38                                          ; $41d0: $ff
	inc a                                            ; $41d1: $3c
	nop                                              ; $41d2: $00
	nop                                              ; $41d3: $00
	nop                                              ; $41d4: $00
	ret nz                                           ; $41d5: $c0

	ccf                                              ; $41d6: $3f
	rst $38                                          ; $41d7: $ff
	rst $38                                          ; $41d8: $ff
	rst $38                                          ; $41d9: $ff
	rst $38                                          ; $41da: $ff
	rst $38                                          ; $41db: $ff
	rst $38                                          ; $41dc: $ff
	rst $38                                          ; $41dd: $ff
	rrca                                             ; $41de: $0f
	ret nz                                           ; $41df: $c0

	nop                                              ; $41e0: $00
	inc bc                                           ; $41e1: $03
	rst $38                                          ; $41e2: $ff
	rst $38                                          ; $41e3: $ff
	rst $38                                          ; $41e4: $ff
	rst $38                                          ; $41e5: $ff
	rst $38                                          ; $41e6: $ff
	rst $38                                          ; $41e7: $ff
	rst $38                                          ; $41e8: $ff
	rst $38                                          ; $41e9: $ff
	rst $38                                          ; $41ea: $ff
	inc bc                                           ; $41eb: $03
	ret nz                                           ; $41ec: $c0

	jr nc, @+$35                                     ; $41ed: $30 $33

	rst $38                                          ; $41ef: $ff
	rst $38                                          ; $41f0: $ff
	rst $38                                          ; $41f1: $ff
	rst $38                                          ; $41f2: $ff
	rst $38                                          ; $41f3: $ff
	rst $38                                          ; $41f4: $ff
	rst $38                                          ; $41f5: $ff
	db $fc                                           ; $41f6: $fc
	rrca                                             ; $41f7: $0f
	nop                                              ; $41f8: $00
	ret nz                                           ; $41f9: $c0

	nop                                              ; $41fa: $00
	nop                                              ; $41fb: $00
	rst GetHLinHL                                          ; $41fc: $cf
	rst $38                                          ; $41fd: $ff
	rst $38                                          ; $41fe: $ff
	rst $38                                          ; $41ff: $ff
	rst $38                                          ; $4200: $ff
	rst $38                                          ; $4201: $ff
	rst $38                                          ; $4202: $ff
	rst $38                                          ; $4203: $ff
	rst $38                                          ; $4204: $ff
	inc bc                                           ; $4205: $03
	ret nz                                           ; $4206: $c0

	nop                                              ; $4207: $00
	nop                                              ; $4208: $00
	rst GetHLinHL                                          ; $4209: $cf
	rst $38                                          ; $420a: $ff
	rst $38                                          ; $420b: $ff
	rst $38                                          ; $420c: $ff
	rst $38                                          ; $420d: $ff
	rst $38                                          ; $420e: $ff
	rst $38                                          ; $420f: $ff
	db $fc                                           ; $4210: $fc
	rst $38                                          ; $4211: $ff
	inc bc                                           ; $4212: $03
	ret nz                                           ; $4213: $c0

	ldh a, [rP1]                                     ; $4214: $f0 $00
	call z, rIE                                    ; $4216: $cc $ff $ff
	rst $38                                          ; $4219: $ff
	rst $38                                          ; $421a: $ff
	rst $38                                          ; $421b: $ff
	rst $38                                          ; $421c: $ff
	rst $38                                          ; $421d: $ff
	rst $38                                          ; $421e: $ff
	ccf                                              ; $421f: $3f
	ret nz                                           ; $4220: $c0

	jr nc, jr_02b_4223                               ; $4221: $30 $00

jr_02b_4223:
	ret nz                                           ; $4223: $c0

	ccf                                              ; $4224: $3f
	rst $38                                          ; $4225: $ff
	rst $38                                          ; $4226: $ff
	rst $38                                          ; $4227: $ff
	rst $38                                          ; $4228: $ff
	rst $38                                          ; $4229: $ff
	rst $38                                          ; $422a: $ff
	rst $38                                          ; $422b: $ff
	rst $38                                          ; $422c: $ff
	ret nz                                           ; $422d: $c0

	ldh a, [$3f]                                     ; $422e: $f0 $3f
	rst $38                                          ; $4230: $ff
	rst $38                                          ; $4231: $ff
	rst $38                                          ; $4232: $ff
	rst $38                                          ; $4233: $ff
	rst $38                                          ; $4234: $ff
	rst $38                                          ; $4235: $ff
	rst $38                                          ; $4236: $ff
	nop                                              ; $4237: $00
	nop                                              ; $4238: $00
	nop                                              ; $4239: $00
	nop                                              ; $423a: $00
	nop                                              ; $423b: $00
	ccf                                              ; $423c: $3f
	rst $38                                          ; $423d: $ff
	rst $38                                          ; $423e: $ff
	rst $38                                          ; $423f: $ff
	rst $38                                          ; $4240: $ff
	rst $38                                          ; $4241: $ff
	rst $38                                          ; $4242: $ff
	di                                               ; $4243: $f3
	db $fc                                           ; $4244: $fc
	inc bc                                           ; $4245: $03
	nop                                              ; $4246: $00
	nop                                              ; $4247: $00

Jump_02b_4248:
	nop                                              ; $4248: $00
	ccf                                              ; $4249: $3f
	rst $38                                          ; $424a: $ff
	rst $38                                          ; $424b: $ff
	rst $38                                          ; $424c: $ff
	rst $38                                          ; $424d: $ff
	rst $38                                          ; $424e: $ff
	rst $38                                          ; $424f: $ff
	rst $38                                          ; $4250: $ff
	db $fc                                           ; $4251: $fc
	inc bc                                           ; $4252: $03
	nop                                              ; $4253: $00

Jump_02b_4254:
	nop                                              ; $4254: $00
	nop                                              ; $4255: $00
	db $fc                                           ; $4256: $fc
	rst $38                                          ; $4257: $ff
	rst $38                                          ; $4258: $ff
	rst $38                                          ; $4259: $ff
	rst $38                                          ; $425a: $ff
	rst $38                                          ; $425b: $ff
	rst $38                                          ; $425c: $ff
	di                                               ; $425d: $f3
	db $fc                                           ; $425e: $fc
	jp $0000                                        ; $425f: $c3 $00 $00


	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	rst $38                                          ; $4264: $ff

Jump_02b_4265:
	rst $38                                          ; $4265: $ff
	rst $38                                          ; $4266: $ff
	rst $38                                          ; $4267: $ff
	rst $38                                          ; $4268: $ff
	rst $38                                          ; $4269: $ff
	rst $38                                          ; $426a: $ff
	rst $38                                          ; $426b: $ff
	di                                               ; $426c: $f3
	nop                                              ; $426d: $00
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	nop                                              ; $4270: $00
	rst GetHLinHL                                          ; $4271: $cf
	rst $38                                          ; $4272: $ff
	rst $38                                          ; $4273: $ff
	rst $38                                          ; $4274: $ff
	rst $38                                          ; $4275: $ff
	rst $38                                          ; $4276: $ff
	rst $38                                          ; $4277: $ff
	db $fc                                           ; $4278: $fc
	rst $38                                          ; $4279: $ff
	nop                                              ; $427a: $00
	ret nz                                           ; $427b: $c0

	nop                                              ; $427c: $00
	nop                                              ; $427d: $00
	rst $38                                          ; $427e: $ff
	rst $38                                          ; $427f: $ff
	rst $38                                          ; $4280: $ff
	rst $38                                          ; $4281: $ff
	rst $38                                          ; $4282: $ff
	rst $38                                          ; $4283: $ff
	di                                               ; $4284: $f3
	db $fc                                           ; $4285: $fc
	inc sp                                           ; $4286: $33
	inc bc                                           ; $4287: $03
	ret nz                                           ; $4288: $c0

	ldh a, [rP1]                                     ; $4289: $f0 $00
	rst GetHLinHL                                          ; $428b: $cf
	rst $38                                          ; $428c: $ff
	rst $38                                          ; $428d: $ff
	rst $38                                          ; $428e: $ff
	rst $38                                          ; $428f: $ff
	rst $38                                          ; $4290: $ff
	rst $38                                          ; $4291: $ff
	rst $38                                          ; $4292: $ff
	rst $38                                          ; $4293: $ff
	nop                                              ; $4294: $00
	ret nz                                           ; $4295: $c0

	nop                                              ; $4296: $00
	inc a                                            ; $4297: $3c
	rst $38                                          ; $4298: $ff
	rst $38                                          ; $4299: $ff
	rst $38                                          ; $429a: $ff
	rst $38                                          ; $429b: $ff
	rst $38                                          ; $429c: $ff
	rst $38                                          ; $429d: $ff
	di                                               ; $429e: $f3
	db $fc                                           ; $429f: $fc
	rst $38                                          ; $42a0: $ff
	ccf                                              ; $42a1: $3f
	nop                                              ; $42a2: $00
	nop                                              ; $42a3: $00
	jr nc, @+$01                                     ; $42a4: $30 $ff

	rst $38                                          ; $42a6: $ff
	rst $38                                          ; $42a7: $ff
	rst $38                                          ; $42a8: $ff
	rst $38                                          ; $42a9: $ff
	rst $38                                          ; $42aa: $ff
	di                                               ; $42ab: $f3
	db $fc                                           ; $42ac: $fc
	ccf                                              ; $42ad: $3f
	nop                                              ; $42ae: $00
	ret nz                                           ; $42af: $c0

	nop                                              ; $42b0: $00
	nop                                              ; $42b1: $00
	rst GetHLinHL                                          ; $42b2: $cf
	rst $38                                          ; $42b3: $ff
	rst $38                                          ; $42b4: $ff
	rst $38                                          ; $42b5: $ff
	rst $38                                          ; $42b6: $ff
	rst $38                                          ; $42b7: $ff
	rst $38                                          ; $42b8: $ff
	db $fc                                           ; $42b9: $fc
	rst $38                                          ; $42ba: $ff
	inc bc                                           ; $42bb: $03
	ret nz                                           ; $42bc: $c0

	jr nc, jr_02b_42fe                               ; $42bd: $30 $3f

	ccf                                              ; $42bf: $3f
	rst $38                                          ; $42c0: $ff
	rst $38                                          ; $42c1: $ff
	rst $38                                          ; $42c2: $ff
	rst $38                                          ; $42c3: $ff
	rst $38                                          ; $42c4: $ff
	rst $38                                          ; $42c5: $ff
	db $fc                                           ; $42c6: $fc
	rst $38                                          ; $42c7: $ff
	ccf                                              ; $42c8: $3f
	nop                                              ; $42c9: $00
	nop                                              ; $42ca: $00
	ccf                                              ; $42cb: $3f
	ccf                                              ; $42cc: $3f
	rst $38                                          ; $42cd: $ff
	rst $38                                          ; $42ce: $ff
	rst $38                                          ; $42cf: $ff
	rst $38                                          ; $42d0: $ff
	rst $38                                          ; $42d1: $ff
	rst $38                                          ; $42d2: $ff
	rst $38                                          ; $42d3: $ff
	rst GetHLinHL                                          ; $42d4: $cf
	ret nz                                           ; $42d5: $c0

	ret nz                                           ; $42d6: $c0

	nop                                              ; $42d7: $00
	ccf                                              ; $42d8: $3f
	rst $38                                          ; $42d9: $ff
	rst $38                                          ; $42da: $ff
	rst $38                                          ; $42db: $ff
	rst $38                                          ; $42dc: $ff
	rst $38                                          ; $42dd: $ff
	rst $38                                          ; $42de: $ff
	rst $38                                          ; $42df: $ff
	db $fc                                           ; $42e0: $fc
	rrca                                             ; $42e1: $0f
	nop                                              ; $42e2: $00
	nop                                              ; $42e3: $00
	nop                                              ; $42e4: $00
	rrca                                             ; $42e5: $0f
	jp $fff3                                         ; $42e6: $c3 $f3 $ff


	rst $38                                          ; $42e9: $ff
	rst $38                                          ; $42ea: $ff
	rst $38                                          ; $42eb: $ff
	rst $38                                          ; $42ec: $ff
	rst $38                                          ; $42ed: $ff
	rst $38                                          ; $42ee: $ff
	ccf                                              ; $42ef: $3f
	ret nz                                           ; $42f0: $c0

	jr nc, jr_02b_4332                               ; $42f1: $30 $3f

	ccf                                              ; $42f3: $3f
	rst $38                                          ; $42f4: $ff
	rst $38                                          ; $42f5: $ff
	rst $38                                          ; $42f6: $ff
	rst $38                                          ; $42f7: $ff
	rst $38                                          ; $42f8: $ff
	di                                               ; $42f9: $f3
	db $fc                                           ; $42fa: $fc
	ccf                                              ; $42fb: $3f
	rrca                                             ; $42fc: $0f
	ret nz                                           ; $42fd: $c0

jr_02b_42fe:
	nop                                              ; $42fe: $00
	ccf                                              ; $42ff: $3f
	rst $38                                          ; $4300: $ff
	rst $38                                          ; $4301: $ff
	rst $38                                          ; $4302: $ff
	rst $38                                          ; $4303: $ff
	rst $38                                          ; $4304: $ff
	rst $38                                          ; $4305: $ff
	di                                               ; $4306: $f3
	db $fc                                           ; $4307: $fc
	ccf                                              ; $4308: $3f
	inc bc                                           ; $4309: $03
	ret nz                                           ; $430a: $c0

	nop                                              ; $430b: $00
	inc bc                                           ; $430c: $03
	jp rIE                                         ; $430d: $c3 $ff $ff


	rst $38                                          ; $4310: $ff
	rst $38                                          ; $4311: $ff
	rst $38                                          ; $4312: $ff
	rst $38                                          ; $4313: $ff
	rst $38                                          ; $4314: $ff
	rst $38                                          ; $4315: $ff
	rrca                                             ; $4316: $0f
	ret nz                                           ; $4317: $c0

	jr nc, jr_02b_4329                               ; $4318: $30 $0f

	rst GetHLinHL                                          ; $431a: $cf
	rst $38                                          ; $431b: $ff
	rst $38                                          ; $431c: $ff
	rst $38                                          ; $431d: $ff
	rst $38                                          ; $431e: $ff
	rst $38                                          ; $431f: $ff
	rst $38                                          ; $4320: $ff
	rst $38                                          ; $4321: $ff
	rst $38                                          ; $4322: $ff
	inc bc                                           ; $4323: $03
	ret nz                                           ; $4324: $c0

	nop                                              ; $4325: $00
	inc bc                                           ; $4326: $03
	rst GetHLinHL                                          ; $4327: $cf
	rst $38                                          ; $4328: $ff

jr_02b_4329:
	rst $38                                          ; $4329: $ff
	rst $38                                          ; $432a: $ff
	rst $38                                          ; $432b: $ff
	rst $38                                          ; $432c: $ff
	rst $38                                          ; $432d: $ff
	db $fc                                           ; $432e: $fc
	rst $38                                          ; $432f: $ff
	rrca                                             ; $4330: $0f
	ret nz                                           ; $4331: $c0

jr_02b_4332:
	jr nc, jr_02b_4337                               ; $4332: $30 $03

	jp rIE                                         ; $4334: $c3 $ff $ff


jr_02b_4337:
	rst $38                                          ; $4337: $ff
	rst $38                                          ; $4338: $ff
	rst $38                                          ; $4339: $ff
	rst $38                                          ; $433a: $ff
	db $fc                                           ; $433b: $fc
	rst $38                                          ; $433c: $ff
	rrca                                             ; $433d: $0f
	ret nz                                           ; $433e: $c0

	nop                                              ; $433f: $00
	inc bc                                           ; $4340: $03
	rst GetHLinHL                                          ; $4341: $cf
	rst $38                                          ; $4342: $ff
	rst $38                                          ; $4343: $ff
	rst $38                                          ; $4344: $ff
	rst $38                                          ; $4345: $ff
	rst $38                                          ; $4346: $ff
	rst $38                                          ; $4347: $ff
	db $fc                                           ; $4348: $fc
	rst $38                                          ; $4349: $ff
	rrca                                             ; $434a: $0f
	ret nz                                           ; $434b: $c0

	nop                                              ; $434c: $00
	inc bc                                           ; $434d: $03
	inc bc                                           ; $434e: $03
	di                                               ; $434f: $f3
	rst $38                                          ; $4350: $ff
	rst $38                                          ; $4351: $ff
	rst $38                                          ; $4352: $ff
	rst $38                                          ; $4353: $ff
	rst $38                                          ; $4354: $ff
	db $fc                                           ; $4355: $fc
	rst $38                                          ; $4356: $ff
	rrca                                             ; $4357: $0f
	ret nz                                           ; $4358: $c0

	jr nc, jr_02b_435e                               ; $4359: $30 $03

	inc bc                                           ; $435b: $03
	di                                               ; $435c: $f3
	rst $38                                          ; $435d: $ff

jr_02b_435e:
	rst $38                                          ; $435e: $ff
	rst $38                                          ; $435f: $ff
	rst $38                                          ; $4360: $ff
	rst $38                                          ; $4361: $ff
	db $fc                                           ; $4362: $fc
	rst $38                                          ; $4363: $ff
	rrca                                             ; $4364: $0f
	ret nz                                           ; $4365: $c0

	jr nc, jr_02b_436b                               ; $4366: $30 $03

	inc bc                                           ; $4368: $03
	rst $38                                          ; $4369: $ff
	rst $38                                          ; $436a: $ff

jr_02b_436b:
	rst $38                                          ; $436b: $ff
	rst $38                                          ; $436c: $ff
	rst $38                                          ; $436d: $ff
	rst $38                                          ; $436e: $ff
	rst $38                                          ; $436f: $ff
	rst $38                                          ; $4370: $ff
	ccf                                              ; $4371: $3f
	ret nz                                           ; $4372: $c0

	jr nc, jr_02b_4384                               ; $4373: $30 $0f

	rst GetHLinHL                                          ; $4375: $cf
	rst $38                                          ; $4376: $ff
	rst $38                                          ; $4377: $ff
	rst $38                                          ; $4378: $ff
	rst $38                                          ; $4379: $ff
	rst $38                                          ; $437a: $ff
	rst $38                                          ; $437b: $ff
	db $fc                                           ; $437c: $fc
	rst $38                                          ; $437d: $ff
	ccf                                              ; $437e: $3f
	ret nz                                           ; $437f: $c0

	nop                                              ; $4380: $00
	ccf                                              ; $4381: $3f
	ccf                                              ; $4382: $3f
	rst $38                                          ; $4383: $ff

jr_02b_4384:
	rst $38                                          ; $4384: $ff
	rst $38                                          ; $4385: $ff
	rst $38                                          ; $4386: $ff
	rst $38                                          ; $4387: $ff
	rst $38                                          ; $4388: $ff
	db $fc                                           ; $4389: $fc
	rst $38                                          ; $438a: $ff
	rrca                                             ; $438b: $0f
	ret nz                                           ; $438c: $c0

	nop                                              ; $438d: $00
	nop                                              ; $438e: $00
	rst GetHLinHL                                          ; $438f: $cf
	rst $38                                          ; $4390: $ff
	rst $38                                          ; $4391: $ff
	rst $38                                          ; $4392: $ff
	rst $38                                          ; $4393: $ff
	rst $38                                          ; $4394: $ff
	rst $38                                          ; $4395: $ff
	rst $38                                          ; $4396: $ff
	rst $38                                          ; $4397: $ff
	ccf                                              ; $4398: $3f
	ret nz                                           ; $4399: $c0

	nop                                              ; $439a: $00
	ccf                                              ; $439b: $3f
	rst $38                                          ; $439c: $ff
	rst $38                                          ; $439d: $ff
	rst $38                                          ; $439e: $ff
	rst $38                                          ; $439f: $ff
	rst $38                                          ; $43a0: $ff
	rst $38                                          ; $43a1: $ff
	rst $38                                          ; $43a2: $ff
	db $fc                                           ; $43a3: $fc
	rst $38                                          ; $43a4: $ff
	inc a                                            ; $43a5: $3c
	nop                                              ; $43a6: $00
	nop                                              ; $43a7: $00
	ccf                                              ; $43a8: $3f
	rst $38                                          ; $43a9: $ff
	rst $38                                          ; $43aa: $ff
	rst $38                                          ; $43ab: $ff
	rst $38                                          ; $43ac: $ff
	rst $38                                          ; $43ad: $ff
	rst $38                                          ; $43ae: $ff
	rst $38                                          ; $43af: $ff
	db $fc                                           ; $43b0: $fc
	rst $38                                          ; $43b1: $ff
	nop                                              ; $43b2: $00
	ret nz                                           ; $43b3: $c0

	nop                                              ; $43b4: $00
	inc bc                                           ; $43b5: $03
	rst GetHLinHL                                          ; $43b6: $cf
	di                                               ; $43b7: $f3
	rst $38                                          ; $43b8: $ff
	rst $38                                          ; $43b9: $ff
	rst $38                                          ; $43ba: $ff
	rst $38                                          ; $43bb: $ff
	rst $38                                          ; $43bc: $ff
	rst $38                                          ; $43bd: $ff
	rst $38                                          ; $43be: $ff
	rrca                                             ; $43bf: $0f
	ret nz                                           ; $43c0: $c0

	jr nc, jr_02b_43c3                               ; $43c1: $30 $00

jr_02b_43c3:
	jp $fff3                                         ; $43c3: $c3 $f3 $ff


	rst $38                                          ; $43c6: $ff
	rst $38                                          ; $43c7: $ff
	rst $38                                          ; $43c8: $ff
	rst $38                                          ; $43c9: $ff
	rst $38                                          ; $43ca: $ff
	rst $38                                          ; $43cb: $ff
	rst $38                                          ; $43cc: $ff
	rst GetHLinHL                                          ; $43cd: $cf
	nop                                              ; $43ce: $00
	nop                                              ; $43cf: $00
	ret nz                                           ; $43d0: $c0

	di                                               ; $43d1: $f3
	rst $38                                          ; $43d2: $ff
	rst $38                                          ; $43d3: $ff
	rst $38                                          ; $43d4: $ff
	rst $38                                          ; $43d5: $ff
	rst $38                                          ; $43d6: $ff
	rst $38                                          ; $43d7: $ff
	rst $38                                          ; $43d8: $ff
	rst $38                                          ; $43d9: $ff
	jp $3ff0                                         ; $43da: $c3 $f0 $3f


	rst $38                                          ; $43dd: $ff
	rst $38                                          ; $43de: $ff
	rst $38                                          ; $43df: $ff
	rst $38                                          ; $43e0: $ff
	rst $38                                          ; $43e1: $ff
	rst $38                                          ; $43e2: $ff
	di                                               ; $43e3: $f3
	db $fc                                           ; $43e4: $fc
	ccf                                              ; $43e5: $3f
	nop                                              ; $43e6: $00
	ret nz                                           ; $43e7: $c0

	nop                                              ; $43e8: $00
	nop                                              ; $43e9: $00
	rst GetHLinHL                                          ; $43ea: $cf
	rst $38                                          ; $43eb: $ff
	rst $38                                          ; $43ec: $ff
	rst $38                                          ; $43ed: $ff
	rst $38                                          ; $43ee: $ff
	rst $38                                          ; $43ef: $ff
	rst $38                                          ; $43f0: $ff
	db $fc                                           ; $43f1: $fc
	rst $38                                          ; $43f2: $ff
	ccf                                              ; $43f3: $3f
	ret nz                                           ; $43f4: $c0

	nop                                              ; $43f5: $00
	inc a                                            ; $43f6: $3c
	rrca                                             ; $43f7: $0f
	inc bc                                           ; $43f8: $03
	db $fc                                           ; $43f9: $fc
	rst $38                                          ; $43fa: $ff
	rst $38                                          ; $43fb: $ff
	rst $38                                          ; $43fc: $ff
	rst $38                                          ; $43fd: $ff
	rst $38                                          ; $43fe: $ff
	rst $38                                          ; $43ff: $ff
	rst $38                                          ; $4400: $ff
	rst GetHLinHL                                          ; $4401: $cf
	ret nz                                           ; $4402: $c0

	inc a                                            ; $4403: $3c
	rrca                                             ; $4404: $0f
	inc bc                                           ; $4405: $03
	db $fc                                           ; $4406: $fc
	rst $38                                          ; $4407: $ff
	rst $38                                          ; $4408: $ff
	rst $38                                          ; $4409: $ff
	rst $38                                          ; $440a: $ff
	rst $38                                          ; $440b: $ff
	rst $38                                          ; $440c: $ff
	rst $38                                          ; $440d: $ff
	rst GetHLinHL                                          ; $440e: $cf
	ret nz                                           ; $440f: $c0

	inc a                                            ; $4410: $3c
	rrca                                             ; $4411: $0f
	inc bc                                           ; $4412: $03
	db $fc                                           ; $4413: $fc
	rst $38                                          ; $4414: $ff
	rst $38                                          ; $4415: $ff
	rst $38                                          ; $4416: $ff
	rst $38                                          ; $4417: $ff
	rst $38                                          ; $4418: $ff
	rst $38                                          ; $4419: $ff
	rst $38                                          ; $441a: $ff
	rst GetHLinHL                                          ; $441b: $cf
	ret nz                                           ; $441c: $c0

	db $fc                                           ; $441d: $fc
	rst $38                                          ; $441e: $ff
	rst $38                                          ; $441f: $ff
	rst $38                                          ; $4420: $ff
	rst $38                                          ; $4421: $ff
	rst $38                                          ; $4422: $ff
	rst $38                                          ; $4423: $ff
	di                                               ; $4424: $f3
	db $fc                                           ; $4425: $fc
	inc sp                                           ; $4426: $33
	nop                                              ; $4427: $00
	ret nz                                           ; $4428: $c0

	nop                                              ; $4429: $00
	nop                                              ; $442a: $00
	ret nz                                           ; $442b: $c0

	rst $38                                          ; $442c: $ff
	rst $38                                          ; $442d: $ff
	rst $38                                          ; $442e: $ff
	rst $38                                          ; $442f: $ff
	rst $38                                          ; $4430: $ff
	rst $38                                          ; $4431: $ff
	rst $38                                          ; $4432: $ff
	rst $38                                          ; $4433: $ff
	ccf                                              ; $4434: $3f
	rrca                                             ; $4435: $0f
	nop                                              ; $4436: $00
	inc a                                            ; $4437: $3c
	rst $38                                          ; $4438: $ff
	rst $38                                          ; $4439: $ff
	rst $38                                          ; $443a: $ff
	rst $38                                          ; $443b: $ff
	rst $38                                          ; $443c: $ff
	rst $38                                          ; $443d: $ff
	rst $38                                          ; $443e: $ff
	db $fc                                           ; $443f: $fc
	di                                               ; $4440: $f3
	nop                                              ; $4441: $00
	ret nz                                           ; $4442: $c0

	nop                                              ; $4443: $00
	rst $38                                          ; $4444: $ff
	rst $38                                          ; $4445: $ff
	rst $38                                          ; $4446: $ff
	rst $38                                          ; $4447: $ff
	rst $38                                          ; $4448: $ff
	rst $38                                          ; $4449: $ff
	rst $38                                          ; $444a: $ff
	rst $38                                          ; $444b: $ff
	db $fc                                           ; $444c: $fc
	inc bc                                           ; $444d: $03
	nop                                              ; $444e: $00
	nop                                              ; $444f: $00
	nop                                              ; $4450: $00
	inc a                                            ; $4451: $3c
	rst $38                                          ; $4452: $ff
	rst $38                                          ; $4453: $ff
	rst $38                                          ; $4454: $ff
	rst $38                                          ; $4455: $ff
	rst $38                                          ; $4456: $ff
	rst $38                                          ; $4457: $ff
	di                                               ; $4458: $f3
	db $fc                                           ; $4459: $fc
	rst $38                                          ; $445a: $ff
	nop                                              ; $445b: $00
	ret nz                                           ; $445c: $c0

	nop                                              ; $445d: $00
	nop                                              ; $445e: $00
	ret nz                                           ; $445f: $c0

	di                                               ; $4460: $f3
	rst $38                                          ; $4461: $ff
	rst $38                                          ; $4462: $ff
	rst $38                                          ; $4463: $ff
	rst $38                                          ; $4464: $ff
	rst $38                                          ; $4465: $ff
	rst $38                                          ; $4466: $ff
	rst $38                                          ; $4467: $ff
	rst $38                                          ; $4468: $ff
	ret nz                                           ; $4469: $c0

	nop                                              ; $446a: $00
	inc bc                                           ; $446b: $03
	ret nz                                           ; $446c: $c0

	ldh a, [$fc]                                     ; $446d: $f0 $fc
	ccf                                              ; $446f: $3f
	ccf                                              ; $4470: $3f
	rst $38                                          ; $4471: $ff
	rst $38                                          ; $4472: $ff
	rst $38                                          ; $4473: $ff
	rst $38                                          ; $4474: $ff
	rst $38                                          ; $4475: $ff
	rst GetHLinHL                                          ; $4476: $cf
	ldh a, [$c3]                                     ; $4477: $f0 $c3
	rst $38                                          ; $4479: $ff
	rst $38                                          ; $447a: $ff
	rst $38                                          ; $447b: $ff
	rst $38                                          ; $447c: $ff
	rst $38                                          ; $447d: $ff
	rst $38                                          ; $447e: $ff
	rst $38                                          ; $447f: $ff
	rst $38                                          ; $4480: $ff
	rst $38                                          ; $4481: $ff
	nop                                              ; $4482: $00
	nop                                              ; $4483: $00
	nop                                              ; $4484: $00
	inc bc                                           ; $4485: $03
	ret nz                                           ; $4486: $c0

	di                                               ; $4487: $f3
	rst $38                                          ; $4488: $ff
	rst $38                                          ; $4489: $ff
	rst $38                                          ; $448a: $ff
	rst $38                                          ; $448b: $ff
	rst $38                                          ; $448c: $ff
	rst $38                                          ; $448d: $ff
	rst $38                                          ; $448e: $ff
	rst $38                                          ; $448f: $ff
	ret nz                                           ; $4490: $c0

	jr nc, jr_02b_44c3                               ; $4491: $30 $30

	rrca                                             ; $4493: $0f
	rst GetHLinHL                                          ; $4494: $cf
	rst $38                                          ; $4495: $ff
	rst $38                                          ; $4496: $ff
	rst $38                                          ; $4497: $ff
	rst $38                                          ; $4498: $ff
	rst $38                                          ; $4499: $ff
	rst $38                                          ; $449a: $ff
	rst $38                                          ; $449b: $ff
	nop                                              ; $449c: $00
	ret nz                                           ; $449d: $c0

	nop                                              ; $449e: $00
	inc bc                                           ; $449f: $03
	jp $fff0                                         ; $44a0: $c3 $f0 $ff


	rst $38                                          ; $44a3: $ff
	rst $38                                          ; $44a4: $ff
	rst $38                                          ; $44a5: $ff
	rst $38                                          ; $44a6: $ff
	rst $38                                          ; $44a7: $ff
	rst $38                                          ; $44a8: $ff
	ccf                                              ; $44a9: $3f
	rst GetHLinHL                                          ; $44aa: $cf
	jr nc, jr_02b_44ec                               ; $44ab: $30 $3f

	rst $38                                          ; $44ad: $ff
	rst $38                                          ; $44ae: $ff
	rst $38                                          ; $44af: $ff
	rst $38                                          ; $44b0: $ff
	rst $38                                          ; $44b1: $ff
	rst $38                                          ; $44b2: $ff
	rst $38                                          ; $44b3: $ff
	db $fc                                           ; $44b4: $fc
	rst $38                                          ; $44b5: $ff
	nop                                              ; $44b6: $00
	nop                                              ; $44b7: $00
	nop                                              ; $44b8: $00
	rst $38                                          ; $44b9: $ff
	rst $38                                          ; $44ba: $ff
	rst $38                                          ; $44bb: $ff
	rst $38                                          ; $44bc: $ff
	rst $38                                          ; $44bd: $ff
	rst $38                                          ; $44be: $ff
	rst $38                                          ; $44bf: $ff
	di                                               ; $44c0: $f3
	db $fc                                           ; $44c1: $fc
	di                                               ; $44c2: $f3

jr_02b_44c3:
	nop                                              ; $44c3: $00
	nop                                              ; $44c4: $00
	nop                                              ; $44c5: $00
	inc c                                            ; $44c6: $0c
	rrca                                             ; $44c7: $0f
	rst $38                                          ; $44c8: $ff
	rst $38                                          ; $44c9: $ff
	rst $38                                          ; $44ca: $ff
	rst $38                                          ; $44cb: $ff
	rst $38                                          ; $44cc: $ff
	rst $38                                          ; $44cd: $ff
	rst $38                                          ; $44ce: $ff
	rst $38                                          ; $44cf: $ff
	ccf                                              ; $44d0: $3f
	ret nz                                           ; $44d1: $c0

	jr nc, jr_02b_44d4                               ; $44d2: $30 $00

jr_02b_44d4:
	rst GetHLinHL                                          ; $44d4: $cf
	di                                               ; $44d5: $f3
	rst $38                                          ; $44d6: $ff
	rst $38                                          ; $44d7: $ff
	rst $38                                          ; $44d8: $ff
	rst $38                                          ; $44d9: $ff
	rst $38                                          ; $44da: $ff
	rst $38                                          ; $44db: $ff
	rst $38                                          ; $44dc: $ff
	rrca                                             ; $44dd: $0f
	ret nz                                           ; $44de: $c0

	ldh a, [$0c]                                     ; $44df: $f0 $0c
	ccf                                              ; $44e1: $3f
	rst $38                                          ; $44e2: $ff
	rst $38                                          ; $44e3: $ff
	rst $38                                          ; $44e4: $ff
	rst $38                                          ; $44e5: $ff
	rst $38                                          ; $44e6: $ff
	di                                               ; $44e7: $f3
	db $fc                                           ; $44e8: $fc
	rst $38                                          ; $44e9: $ff
	inc bc                                           ; $44ea: $03
	ret nz                                           ; $44eb: $c0

jr_02b_44ec:
	nop                                              ; $44ec: $00
	ccf                                              ; $44ed: $3f
	rst $38                                          ; $44ee: $ff
	rst $38                                          ; $44ef: $ff
	rst $38                                          ; $44f0: $ff
	rst $38                                          ; $44f1: $ff
	rst $38                                          ; $44f2: $ff
	rst $38                                          ; $44f3: $ff
	rst $38                                          ; $44f4: $ff
	db $fc                                           ; $44f5: $fc
	rst $38                                          ; $44f6: $ff
	nop                                              ; $44f7: $00
	nop                                              ; $44f8: $00
	nop                                              ; $44f9: $00
	inc c                                            ; $44fa: $0c
	rst GetHLinHL                                          ; $44fb: $cf
	rst $38                                          ; $44fc: $ff
	rst $38                                          ; $44fd: $ff
	rst $38                                          ; $44fe: $ff
	rst $38                                          ; $44ff: $ff
	rst $38                                          ; $4500: $ff
	rst $38                                          ; $4501: $ff
	db $fc                                           ; $4502: $fc
	rst $38                                          ; $4503: $ff
	ccf                                              ; $4504: $3f
	ret nz                                           ; $4505: $c0

	jr nc, jr_02b_4544                               ; $4506: $30 $3c

	rst GetHLinHL                                          ; $4508: $cf
	rst $38                                          ; $4509: $ff
	rst $38                                          ; $450a: $ff
	rst $38                                          ; $450b: $ff
	rst $38                                          ; $450c: $ff
	rst $38                                          ; $450d: $ff
	rst $38                                          ; $450e: $ff
	rst $38                                          ; $450f: $ff
	rst $38                                          ; $4510: $ff
	nop                                              ; $4511: $00
	nop                                              ; $4512: $00
	nop                                              ; $4513: $00
	nop                                              ; $4514: $00
	rrca                                             ; $4515: $0f
	rrca                                             ; $4516: $0f
	rst $38                                          ; $4517: $ff
	rst $38                                          ; $4518: $ff
	rst $38                                          ; $4519: $ff
	rst $38                                          ; $451a: $ff
	rst $38                                          ; $451b: $ff
	db $fc                                           ; $451c: $fc
	rst $38                                          ; $451d: $ff
	ccf                                              ; $451e: $3f
	nop                                              ; $451f: $00
	nop                                              ; $4520: $00
	ccf                                              ; $4521: $3f
	rst $38                                          ; $4522: $ff
	rst $38                                          ; $4523: $ff
	rst $38                                          ; $4524: $ff
	rst $38                                          ; $4525: $ff
	rst $38                                          ; $4526: $ff
	rst $38                                          ; $4527: $ff
	rst $38                                          ; $4528: $ff
	db $fc                                           ; $4529: $fc
	rst $38                                          ; $452a: $ff
	nop                                              ; $452b: $00
	nop                                              ; $452c: $00
	nop                                              ; $452d: $00
	nop                                              ; $452e: $00
	rst $38                                          ; $452f: $ff
	rst $38                                          ; $4530: $ff
	rst $38                                          ; $4531: $ff
	rst $38                                          ; $4532: $ff
	rst $38                                          ; $4533: $ff
	rst $38                                          ; $4534: $ff
	di                                               ; $4535: $f3
	db $fc                                           ; $4536: $fc
	rst $38                                          ; $4537: $ff
	ccf                                              ; $4538: $3f
	rrca                                             ; $4539: $0f
	ret nz                                           ; $453a: $c0

	ldh a, [$3f]                                     ; $453b: $f0 $3f
	ccf                                              ; $453d: $3f
	rst $38                                          ; $453e: $ff
	rst $38                                          ; $453f: $ff
	rst $38                                          ; $4540: $ff
	rst $38                                          ; $4541: $ff
	rst $38                                          ; $4542: $ff
	db $fc                                           ; $4543: $fc

jr_02b_4544:
	rst $38                                          ; $4544: $ff
	inc a                                            ; $4545: $3c
	rst GetHLinHL                                          ; $4546: $cf
	nop                                              ; $4547: $00
	db $fc                                           ; $4548: $fc
	ccf                                              ; $4549: $3f
	rst $38                                          ; $454a: $ff
	rst $38                                          ; $454b: $ff
	rst $38                                          ; $454c: $ff
	rst $38                                          ; $454d: $ff
	rst $38                                          ; $454e: $ff
	di                                               ; $454f: $f3
	db $fc                                           ; $4550: $fc
	rst $38                                          ; $4551: $ff
	inc a                                            ; $4552: $3c
	rrca                                             ; $4553: $0f
	nop                                              ; $4554: $00
	inc a                                            ; $4555: $3c
	ccf                                              ; $4556: $3f
	ccf                                              ; $4557: $3f
	rst $38                                          ; $4558: $ff
	rst $38                                          ; $4559: $ff
	rst $38                                          ; $455a: $ff
	rst $38                                          ; $455b: $ff
	rst $38                                          ; $455c: $ff
	rst $38                                          ; $455d: $ff
	rst $38                                          ; $455e: $ff
	db $fc                                           ; $455f: $fc
	ret nz                                           ; $4560: $c0

	nop                                              ; $4561: $00
	jr nc, jr_02b_4573                               ; $4562: $30 $0f

	di                                               ; $4564: $f3
	db $fc                                           ; $4565: $fc
	rst $38                                          ; $4566: $ff
	rst $38                                          ; $4567: $ff
	rst $38                                          ; $4568: $ff
	rst $38                                          ; $4569: $ff
	rst $38                                          ; $456a: $ff
	rst $38                                          ; $456b: $ff
	rst $38                                          ; $456c: $ff
	call z, $0030                                   ; $456d: $cc $30 $00
	rst GetHLinHL                                          ; $4570: $cf
	ccf                                              ; $4571: $3f
	rst $38                                          ; $4572: $ff

jr_02b_4573:
	rst $38                                          ; $4573: $ff
	rst $38                                          ; $4574: $ff
	rst $38                                          ; $4575: $ff
	rst $38                                          ; $4576: $ff
	rst $38                                          ; $4577: $ff
	rst $38                                          ; $4578: $ff
	nop                                              ; $4579: $00
	ret nz                                           ; $457a: $c0

	jr nc, jr_02b_457d                               ; $457b: $30 $00

jr_02b_457d:
	rst GetHLinHL                                          ; $457d: $cf
	di                                               ; $457e: $f3
	rst $38                                          ; $457f: $ff
	rst $38                                          ; $4580: $ff
	rst $38                                          ; $4581: $ff
	rst $38                                          ; $4582: $ff
	rst $38                                          ; $4583: $ff
	db $fc                                           ; $4584: $fc
	rst $38                                          ; $4585: $ff
	inc bc                                           ; $4586: $03
	ret nz                                           ; $4587: $c0

	ldh a, [rP1]                                     ; $4588: $f0 $00
	rst GetHLinHL                                          ; $458a: $cf
	ccf                                              ; $458b: $3f
	rst $38                                          ; $458c: $ff
	rst $38                                          ; $458d: $ff
	rst $38                                          ; $458e: $ff
	rst $38                                          ; $458f: $ff
	rst $38                                          ; $4590: $ff
	db $fc                                           ; $4591: $fc
	rst $38                                          ; $4592: $ff
	inc bc                                           ; $4593: $03
	ret nz                                           ; $4594: $c0

	jr nc, jr_02b_45d3                               ; $4595: $30 $3c

	rst $38                                          ; $4597: $ff
	rst $38                                          ; $4598: $ff
	rst $38                                          ; $4599: $ff
	rst $38                                          ; $459a: $ff
	rst $38                                          ; $459b: $ff
	rst $38                                          ; $459c: $ff
	di                                               ; $459d: $f3
	db $fc                                           ; $459e: $fc
	ccf                                              ; $459f: $3f
	nop                                              ; $45a0: $00
	nop                                              ; $45a1: $00
	nop                                              ; $45a2: $00
	nop                                              ; $45a3: $00
	ret nz                                           ; $45a4: $c0

	di                                               ; $45a5: $f3
	rst $38                                          ; $45a6: $ff
	rst $38                                          ; $45a7: $ff
	rst $38                                          ; $45a8: $ff
	rst $38                                          ; $45a9: $ff
	rst $38                                          ; $45aa: $ff
	rst $38                                          ; $45ab: $ff
	rst $38                                          ; $45ac: $ff
	jr nc, @-$3e                                     ; $45ad: $30 $c0

	jr nc, jr_02b_45b1                               ; $45af: $30 $00

jr_02b_45b1:
	rst GetHLinHL                                          ; $45b1: $cf
	ccf                                              ; $45b2: $3f
	rst $38                                          ; $45b3: $ff
	rst $38                                          ; $45b4: $ff
	rst $38                                          ; $45b5: $ff
	rst $38                                          ; $45b6: $ff
	rst $38                                          ; $45b7: $ff
	db $fc                                           ; $45b8: $fc
	ret nz                                           ; $45b9: $c0

	nop                                              ; $45ba: $00
	nop                                              ; $45bb: $00
	nop                                              ; $45bc: $00
	inc bc                                           ; $45bd: $03
	rst GetHLinHL                                          ; $45be: $cf
	rst $38                                          ; $45bf: $ff
	rst $38                                          ; $45c0: $ff
	rst $38                                          ; $45c1: $ff
	rst $38                                          ; $45c2: $ff
	rst $38                                          ; $45c3: $ff
	rst $38                                          ; $45c4: $ff
	db $fc                                           ; $45c5: $fc
	rst $38                                          ; $45c6: $ff
	rrca                                             ; $45c7: $0f
	ret nz                                           ; $45c8: $c0

	jr nc, jr_02b_45cb                               ; $45c9: $30 $00

jr_02b_45cb:
	call z, $ff3f                                    ; $45cb: $cc $3f $ff
	rst $38                                          ; $45ce: $ff
	rst $38                                          ; $45cf: $ff
	rst $38                                          ; $45d0: $ff
	rst $38                                          ; $45d1: $ff
	db $fc                                           ; $45d2: $fc

jr_02b_45d3:
	rrca                                             ; $45d3: $0f
	inc bc                                           ; $45d4: $03
	ret nz                                           ; $45d5: $c0

	ldh a, [rP1]                                     ; $45d6: $f0 $00
	call z, $ff3f                                    ; $45d8: $cc $3f $ff
	rst $38                                          ; $45db: $ff
	rst $38                                          ; $45dc: $ff
	rst $38                                          ; $45dd: $ff
	rst $38                                          ; $45de: $ff
	db $fc                                           ; $45df: $fc
	rrca                                             ; $45e0: $0f
	inc bc                                           ; $45e1: $03
	ret nz                                           ; $45e2: $c0

	jr nc, jr_02b_45e5                               ; $45e3: $30 $00

jr_02b_45e5:
	ret nz                                           ; $45e5: $c0

	rst $38                                          ; $45e6: $ff
	rst $38                                          ; $45e7: $ff
	rst $38                                          ; $45e8: $ff
	rst $38                                          ; $45e9: $ff
	rst $38                                          ; $45ea: $ff
	rst $38                                          ; $45eb: $ff
	rst $38                                          ; $45ec: $ff
	rst $38                                          ; $45ed: $ff
	ccf                                              ; $45ee: $3f
	ret nz                                           ; $45ef: $c0

	jr nc, jr_02b_45f2                               ; $45f0: $30 $00

jr_02b_45f2:
	ret nz                                           ; $45f2: $c0

	ldh a, [rIE]                                     ; $45f3: $f0 $ff
	rst $38                                          ; $45f5: $ff
	rst $38                                          ; $45f6: $ff
	rst $38                                          ; $45f7: $ff
	rst $38                                          ; $45f8: $ff
	rst $38                                          ; $45f9: $ff
	rst $38                                          ; $45fa: $ff
	rrca                                             ; $45fb: $0f
	ret nz                                           ; $45fc: $c0

	ldh a, [$ea]                                     ; $45fd: $f0 $ea
	ld b, [hl]                                       ; $45ff: $46
	ld l, [hl]                                       ; $4600: $6e
	ld b, a                                          ; $4601: $47
	ldh a, [c]                                       ; $4602: $f2
	ld b, a                                          ; $4603: $47
	ld h, d                                          ; $4604: $62
	ld c, b                                          ; $4605: $48
	jp nc, Jump_02b_4248                             ; $4606: $d2 $48 $42

	ld c, c                                          ; $4609: $49
	or d                                             ; $460a: $b2
	ld c, c                                          ; $460b: $49
	ld [hl+], a                                      ; $460c: $22
	ld c, d                                          ; $460d: $4a
	sub d                                            ; $460e: $92
	ld c, d                                          ; $460f: $4a
	ld [bc], a                                       ; $4610: $02
	ld c, e                                          ; $4611: $4b
	ld [hl], d                                       ; $4612: $72
	ld c, e                                          ; $4613: $4b
	ldh [c], a                                       ; $4614: $e2
	ld c, e                                          ; $4615: $4b
	ld [bc], a                                       ; $4616: $02
	ld c, h                                          ; $4617: $4c
	ld [hl], d                                       ; $4618: $72
	ld c, h                                          ; $4619: $4c
	ldh [c], a                                       ; $461a: $e2
	ld c, h                                          ; $461b: $4c
	ld d, d                                          ; $461c: $52
	ld c, l                                          ; $461d: $4d
	ld [hl], d                                       ; $461e: $72
	ld c, l                                          ; $461f: $4d
	sub d                                            ; $4620: $92
	ld c, l                                          ; $4621: $4d
	ld d, $4e                                        ; $4622: $16 $4e
	sbc d                                            ; $4624: $9a
	ld c, [hl]                                       ; $4625: $4e
	ld a, [bc]                                       ; $4626: $0a
	ld c, a                                          ; $4627: $4f
	ld a, d                                          ; $4628: $7a
	ld c, a                                          ; $4629: $4f
	ld [$5a4f], a                                    ; $462a: $ea $4f $5a
	ld d, b                                          ; $462d: $50
	jp z, $3a50                                      ; $462e: $ca $50 $3a

	ld d, c                                          ; $4631: $51
	ld e, d                                          ; $4632: $5a
	ld d, c                                          ; $4633: $51
	jp z, $3a51                                      ; $4634: $ca $51 $3a

	ld d, d                                          ; $4637: $52
	xor d                                            ; $4638: $aa
	ld d, d                                          ; $4639: $52
	jp z, $ea52                                      ; $463a: $ca $52 $ea

	ld d, d                                          ; $463d: $52
	ld l, [hl]                                       ; $463e: $6e
	ld d, e                                          ; $463f: $53
	ldh a, [c]                                       ; $4640: $f2
	ld d, e                                          ; $4641: $53
	ld h, d                                          ; $4642: $62
	ld d, h                                          ; $4643: $54
	jp nc, Jump_02b_4254                             ; $4644: $d2 $54 $42

	ld d, l                                          ; $4647: $55
	or d                                             ; $4648: $b2
	ld d, l                                          ; $4649: $55
	ld [hl+], a                                      ; $464a: $22
	ld d, [hl]                                       ; $464b: $56
	ld b, d                                          ; $464c: $42
	ld d, [hl]                                       ; $464d: $56
	or d                                             ; $464e: $b2
	ld d, [hl]                                       ; $464f: $56
	ld [hl+], a                                      ; $4650: $22
	ld d, a                                          ; $4651: $57
	sub d                                            ; $4652: $92
	ld d, a                                          ; $4653: $57
	or d                                             ; $4654: $b2
	ld d, a                                          ; $4655: $57
	ld [hl], $58                                     ; $4656: $36 $58
	cp d                                             ; $4658: $ba
	ld e, b                                          ; $4659: $58
	ld a, [hl+]                                      ; $465a: $2a
	ld e, c                                          ; $465b: $59
	sbc d                                            ; $465c: $9a
	ld e, c                                          ; $465d: $59
	ld a, [bc]                                       ; $465e: $0a
	ld e, d                                          ; $465f: $5a
	ld a, d                                          ; $4660: $7a
	ld e, d                                          ; $4661: $5a
	cp $5a                                           ; $4662: $fe $5a
	ld l, [hl]                                       ; $4664: $6e
	ld e, e                                          ; $4665: $5b
	adc [hl]                                         ; $4666: $8e
	ld e, e                                          ; $4667: $5b
	cp $5b                                           ; $4668: $fe $5b
	ld l, [hl]                                       ; $466a: $6e
	ld e, h                                          ; $466b: $5c
	sbc $5c                                          ; $466c: $de $5c
	cp $5c                                           ; $466e: $fe $5c
	ld e, $5d                                        ; $4670: $1e $5d
	and d                                            ; $4672: $a2
	ld e, l                                          ; $4673: $5d
	ld h, $5e                                        ; $4674: $26 $5e
	sub [hl]                                         ; $4676: $96
	ld e, [hl]                                       ; $4677: $5e
	ld b, $5f                                        ; $4678: $06 $5f
	halt                                             ; $467a: $76
	ld e, a                                          ; $467b: $5f
	and $5f                                          ; $467c: $e6 $5f
	ld d, [hl]                                       ; $467e: $56
	ld h, b                                          ; $467f: $60
	add $60                                          ; $4680: $c6 $60
	ld c, d                                          ; $4682: $4a
	ld h, c                                          ; $4683: $61
	cp d                                             ; $4684: $ba
	ld h, c                                          ; $4685: $61
	ld a, [hl+]                                      ; $4686: $2a
	ld h, d                                          ; $4687: $62
	sbc d                                            ; $4688: $9a
	ld h, d                                          ; $4689: $62
	ld e, $63                                        ; $468a: $1e $63
	and d                                            ; $468c: $a2
	ld h, e                                          ; $468d: $63
	ld [de], a                                       ; $468e: $12
	ld h, h                                          ; $468f: $64
	add d                                            ; $4690: $82
	ld h, h                                          ; $4691: $64
	ldh a, [c]                                       ; $4692: $f2
	ld h, h                                          ; $4693: $64
	ld h, d                                          ; $4694: $62
	ld h, l                                          ; $4695: $65
	jp nc, Jump_02b_4265                             ; $4696: $d2 $65 $42

	ld h, [hl]                                       ; $4699: $66
	or d                                             ; $469a: $b2
	ld h, [hl]                                       ; $469b: $66
	ld [hl+], a                                      ; $469c: $22
	ld h, a                                          ; $469d: $67
	sub d                                            ; $469e: $92
	ld h, a                                          ; $469f: $67
	ld [bc], a                                       ; $46a0: $02
	ld l, b                                          ; $46a1: $68
	add [hl]                                         ; $46a2: $86
	ld l, b                                          ; $46a3: $68
	ld a, [bc]                                       ; $46a4: $0a
	ld l, c                                          ; $46a5: $69
	ld a, d                                          ; $46a6: $7a
	ld l, c                                          ; $46a7: $69
	ld [$5a69], a                                    ; $46a8: $ea $69 $5a
	ld l, d                                          ; $46ab: $6a
	jp z, $3a6a                                      ; $46ac: $ca $6a $3a

	ld l, e                                          ; $46af: $6b
	xor d                                            ; $46b0: $aa
	ld l, e                                          ; $46b1: $6b
	ld a, [de]                                       ; $46b2: $1a
	ld l, h                                          ; $46b3: $6c
	adc d                                            ; $46b4: $8a
	ld l, h                                          ; $46b5: $6c
	ld c, $6d                                        ; $46b6: $0e $6d
	sub d                                            ; $46b8: $92
	ld l, l                                          ; $46b9: $6d
	ld [bc], a                                       ; $46ba: $02
	ld l, [hl]                                       ; $46bb: $6e
	ld [hl], d                                       ; $46bc: $72
	ld l, [hl]                                       ; $46bd: $6e
	ldh [c], a                                       ; $46be: $e2
	ld l, [hl]                                       ; $46bf: $6e
	ld d, d                                          ; $46c0: $52
	ld l, a                                          ; $46c1: $6f
	jp nz, $326f                                     ; $46c2: $c2 $6f $32

	ld [hl], b                                       ; $46c5: $70
	and d                                            ; $46c6: $a2
	ld [hl], b                                       ; $46c7: $70
	ld [de], a                                       ; $46c8: $12
	ld [hl], c                                       ; $46c9: $71
	add d                                            ; $46ca: $82
	ld [hl], c                                       ; $46cb: $71
	and d                                            ; $46cc: $a2
	ld [hl], c                                       ; $46cd: $71
	jp nz, $e271                                     ; $46ce: $c2 $71 $e2

	ld [hl], c                                       ; $46d1: $71
	ld [bc], a                                       ; $46d2: $02
	ld [hl], d                                       ; $46d3: $72
	ld [hl+], a                                      ; $46d4: $22
	ld [hl], d                                       ; $46d5: $72
	ld b, d                                          ; $46d6: $42
	ld [hl], d                                       ; $46d7: $72
	halt                                             ; $46d8: $76
	ld [hl], d                                       ; $46d9: $72
	sub [hl]                                         ; $46da: $96
	ld [hl], d                                       ; $46db: $72
	ld b, $73                                        ; $46dc: $06 $73
	ld h, $73                                        ; $46de: $26 $73
	ld b, [hl]                                       ; $46e0: $46
	ld [hl], e                                       ; $46e1: $73
	ld h, [hl]                                       ; $46e2: $66
	ld [hl], e                                       ; $46e3: $73
	sbc d                                            ; $46e4: $9a
	ld [hl], e                                       ; $46e5: $73
	adc $73                                          ; $46e6: $ce $73
	xor $73                                          ; $46e8: $ee $73
	rst $38                                          ; $46ea: $ff
	call z, $0fff                                    ; $46eb: $cc $ff $0f
	call z, $0f0c                                    ; $46ee: $cc $0c $0f
	call z, $0f0c                                    ; $46f1: $cc $0c $0f
	call z, $000f                                    ; $46f4: $cc $0f $00
	db $10                                           ; $46f7: $10
	jr @+$22                                         ; $46f8: $18 $20

	jr z, @+$2e                                      ; $46fa: $28 $2c

	ld l, $30                                        ; $46fc: $2e $30
	rst $38                                          ; $46fe: $ff
	call z, $0fff                                    ; $46ff: $cc $ff $0f
	call z, $0f0c                                    ; $4702: $cc $0c $0f
	call z, $0c0c                                    ; $4705: $cc $0c $0c
	call z, $000c                                    ; $4708: $cc $0c $00
	db $10                                           ; $470b: $10
	jr @+$22                                         ; $470c: $18 $20

	ld h, $2a                                        ; $470e: $26 $2a
	inc l                                            ; $4710: $2c
	ld l, $ff                                        ; $4711: $2e $ff
	call z, $0fff                                    ; $4713: $cc $ff $0f
	call z, $0f0c                                    ; $4716: $cc $0c $0f
	call z, $0c0c                                    ; $4719: $cc $0c $0c
	call z, $000c                                    ; $471c: $cc $0c $00
	db $10                                           ; $471f: $10
	jr @+$22                                         ; $4720: $18 $20

	ld h, $2a                                        ; $4722: $26 $2a
	inc l                                            ; $4724: $2c
	ld l, $ff                                        ; $4725: $2e $ff
	call z, $0fff                                    ; $4727: $cc $ff $0f
	call z, $0f0c                                    ; $472a: $cc $0c $0f
	call z, $0c0c                                    ; $472d: $cc $0c $0c
	call z, $000c                                    ; $4730: $cc $0c $00
	db $10                                           ; $4733: $10
	jr @+$22                                         ; $4734: $18 $20

	ld h, $2a                                        ; $4736: $26 $2a
	inc l                                            ; $4738: $2c
	ld l, $ff                                        ; $4739: $2e $ff
	call z, $0fff                                    ; $473b: $cc $ff $0f
	call z, $0f0c                                    ; $473e: $cc $0c $0f
	call z, $0c0c                                    ; $4741: $cc $0c $0c
	call z, $000c                                    ; $4744: $cc $0c $00
	db $10                                           ; $4747: $10
	jr @+$22                                         ; $4748: $18 $20

	ld h, $2a                                        ; $474a: $26 $2a
	inc l                                            ; $474c: $2c
	ld l, $ff                                        ; $474d: $2e $ff
	call z, $0cff                                    ; $474f: $cc $ff $0c
	call z, $0fcc                                    ; $4752: $cc $cc $0f
	call z, $0f0c                                    ; $4755: $cc $0c $0f
	call z, $00cc                                    ; $4758: $cc $cc $00
	db $10                                           ; $475b: $10
	jr jr_02b_477e                                   ; $475c: $18 $20

	ld a, [hl+]                                      ; $475e: $2a
	ld l, $30                                        ; $475f: $2e $30
	ld [hl-], a                                      ; $4761: $32
	ld de, $1111                                     ; $4762: $11 $11 $11
	ld de, $1111                                     ; $4765: $11 $11 $11
	ld de, $1111                                     ; $4768: $11 $11 $11
	ld d, l                                          ; $476b: $55
	ld de, $ff11                                     ; $476c: $11 $11 $ff
	rst AddAOntoHL                                          ; $476f: $ef
	db $fc                                           ; $4770: $fc
	inc bc                                           ; $4771: $03
	xor $0c                                          ; $4772: $ee $0c
	inc sp                                           ; $4774: $33
	xor $0c                                          ; $4775: $ee $0c
	inc sp                                           ; $4777: $33
	ld [hl+], a                                      ; $4778: $22
	inc c                                            ; $4779: $0c
	nop                                              ; $477a: $00
	inc de                                           ; $477b: $13
	dec de                                           ; $477c: $1b
	dec h                                            ; $477d: $25

jr_02b_477e:
	dec hl                                           ; $477e: $2b
	dec l                                            ; $477f: $2d
	cpl                                              ; $4780: $2f
	ld sp, $efff                                     ; $4781: $31 $ff $ef
	db $fc                                           ; $4784: $fc
	inc sp                                           ; $4785: $33
	xor $0c                                          ; $4786: $ee $0c
	inc sp                                           ; $4788: $33
	xor $0c                                          ; $4789: $ee $0c
	inc sp                                           ; $478b: $33
	ld [hl+], a                                      ; $478c: $22
	inc c                                            ; $478d: $0c
	nop                                              ; $478e: $00
	inc de                                           ; $478f: $13
	dec e                                            ; $4790: $1d
	daa                                              ; $4791: $27
	dec l                                            ; $4792: $2d
	cpl                                              ; $4793: $2f
	ld sp, $ff33                                     ; $4794: $31 $33 $ff
	rst AddAOntoHL                                          ; $4797: $ef
	db $fc                                           ; $4798: $fc
	inc sp                                           ; $4799: $33
	xor $0c                                          ; $479a: $ee $0c
	inc sp                                           ; $479c: $33
	xor $0c                                          ; $479d: $ee $0c
	inc sp                                           ; $479f: $33
	xor $0c                                          ; $47a0: $ee $0c
	nop                                              ; $47a2: $00
	inc de                                           ; $47a3: $13
	dec e                                            ; $47a4: $1d
	daa                                              ; $47a5: $27
	ld sp, $3533                                     ; $47a6: $31 $33 $35
	scf                                              ; $47a9: $37
	rst $38                                          ; $47aa: $ff
	rst AddAOntoHL                                          ; $47ab: $ef
	db $fc                                           ; $47ac: $fc
	inc sp                                           ; $47ad: $33
	call z, $3f0c                                    ; $47ae: $cc $0c $3f
	xor $0c                                          ; $47b1: $ee $0c
	inc sp                                           ; $47b3: $33
	xor $0c                                          ; $47b4: $ee $0c
	nop                                              ; $47b6: $00
	inc de                                           ; $47b7: $13
	dec de                                           ; $47b8: $1b
	daa                                              ; $47b9: $27
	ld sp, $3533                                     ; $47ba: $31 $33 $35
	scf                                              ; $47bd: $37
	rst $38                                          ; $47be: $ff
	rst AddAOntoHL                                          ; $47bf: $ef
	db $fc                                           ; $47c0: $fc
	inc sp                                           ; $47c1: $33
	db $ec                                           ; $47c2: $ec
	inc c                                            ; $47c3: $0c
	ccf                                              ; $47c4: $3f
	xor $0c                                          ; $47c5: $ee $0c
	inc sp                                           ; $47c7: $33
	xor $0c                                          ; $47c8: $ee $0c
	nop                                              ; $47ca: $00
	inc de                                           ; $47cb: $13
	inc e                                            ; $47cc: $1c
	jr z, jr_02b_4801                                ; $47cd: $28 $32

	inc [hl]                                         ; $47cf: $34
	ld [hl], $38                                     ; $47d0: $36 $38
	rst $38                                          ; $47d2: $ff
	rst AddAOntoHL                                          ; $47d3: $ef
	db $fc                                           ; $47d4: $fc
	inc sp                                           ; $47d5: $33
	call z, $3f0c                                    ; $47d6: $cc $0c $3f
	xor $0c                                          ; $47d9: $ee $0c
	ccf                                              ; $47db: $3f
	xor $0c                                          ; $47dc: $ee $0c
	nop                                              ; $47de: $00
	inc de                                           ; $47df: $13
	dec de                                           ; $47e0: $1b
	daa                                              ; $47e1: $27
	inc sp                                           ; $47e2: $33
	dec [hl]                                         ; $47e3: $35
	scf                                              ; $47e4: $37
	add hl, sp                                       ; $47e5: $39
	ld b, h                                          ; $47e6: $44
	ld de, $1111                                     ; $47e7: $11 $11 $11
	ld de, $1111                                     ; $47ea: $11 $11 $11
	ld de, $9999                                     ; $47ed: $11 $99 $99
	sub c                                            ; $47f0: $91
	nop                                              ; $47f1: $00
	rst $38                                          ; $47f2: $ff
	rst GetHLinHL                                          ; $47f3: $cf
	db $fc                                           ; $47f4: $fc
	rst GetHLinHL                                          ; $47f5: $cf
	call z, $fc0c                                    ; $47f6: $cc $0c $fc
	call z, $ff0c                                    ; $47f9: $cc $0c $ff
	call z, $000c                                    ; $47fc: $cc $0c $00
	ld [de], a                                       ; $47ff: $12
	inc e                                            ; $4800: $1c

jr_02b_4801:
	ld h, $32                                        ; $4801: $26 $32
	inc [hl]                                         ; $4803: $34
	ld [hl], $38                                     ; $4804: $36 $38
	rst $38                                          ; $4806: $ff
	rst GetHLinHL                                          ; $4807: $cf
	db $fc                                           ; $4808: $fc
	call z, $0ccc                                    ; $4809: $cc $cc $0c
	rst $38                                          ; $480c: $ff
	call z, $3c0c                                    ; $480d: $cc $0c $3c
	call z, $000c                                    ; $4810: $cc $0c $00
	ld [de], a                                       ; $4813: $12
	ld a, [de]                                       ; $4814: $1a
	ld h, $2e                                        ; $4815: $26 $2e
	jr nc, @+$34                                     ; $4817: $30 $32

	inc [hl]                                         ; $4819: $34
	rst $38                                          ; $481a: $ff
	rst GetHLinHL                                          ; $481b: $cf
	db $fc                                           ; $481c: $fc
	call z, $0ccc                                    ; $481d: $cc $cc $0c
	rst $38                                          ; $4820: $ff
	call z, $ff0c                                    ; $4821: $cc $0c $ff
	call z, $000c                                    ; $4824: $cc $0c $00
	ld [de], a                                       ; $4827: $12
	ld a, [de]                                       ; $4828: $1a
	ld h, $32                                        ; $4829: $26 $32
	inc [hl]                                         ; $482b: $34
	ld [hl], $38                                     ; $482c: $36 $38
	rst $38                                          ; $482e: $ff
	rst GetHLinHL                                          ; $482f: $cf
	db $fc                                           ; $4830: $fc
	call z, $0ccc                                    ; $4831: $cc $cc $0c
	rst $38                                          ; $4834: $ff
	call z, $3f0c                                    ; $4835: $cc $0c $3f
	call z, $000c                                    ; $4838: $cc $0c $00
	ld [de], a                                       ; $483b: $12
	ld a, [de]                                       ; $483c: $1a
	ld h, $30                                        ; $483d: $26 $30
	ld [hl-], a                                      ; $483f: $32
	inc [hl]                                         ; $4840: $34
	ld [hl], $ff                                     ; $4841: $36 $ff
	rst GetHLinHL                                          ; $4843: $cf
	db $fc                                           ; $4844: $fc
	call z, $0ccc                                    ; $4845: $cc $cc $0c
	rst GetHLinHL                                          ; $4848: $cf
	call z, $ff0c                                    ; $4849: $cc $0c $ff
	call z, $000c                                    ; $484c: $cc $0c $00
	ld [de], a                                       ; $484f: $12
	ld a, [de]                                       ; $4850: $1a
	inc h                                            ; $4851: $24
	jr nc, jr_02b_4886                               ; $4852: $30 $32

	inc [hl]                                         ; $4854: $34
	ld [hl], $11                                     ; $4855: $36 $11
	ld de, $1111                                     ; $4857: $11 $11 $11
	ld de, $1111                                     ; $485a: $11 $11 $11
	ld de, $1111                                     ; $485d: $11 $11 $11
	ld de, $ff00                                     ; $4860: $11 $00 $ff
	rst $38                                          ; $4863: $ff
	rrca                                             ; $4864: $0f
	call z, $0fcc                                    ; $4865: $cc $cc $0f
	call z, $0fcc                                    ; $4868: $cc $cc $0f
	call z, $0fcc                                    ; $486b: $cc $cc $0f
	nop                                              ; $486e: $00
	db $10                                           ; $486f: $10
	jr jr_02b_4892                                   ; $4870: $18 $20

	jr z, jr_02b_48a0                                ; $4872: $28 $2c

	jr nc, jr_02b_48aa                               ; $4874: $30 $34

	rst $38                                          ; $4876: $ff
	rst $38                                          ; $4877: $ff
	rrca                                             ; $4878: $0f
	call z, $0fcc                                    ; $4879: $cc $cc $0f
	rst $38                                          ; $487c: $ff
	rst $38                                          ; $487d: $ff
	rrca                                             ; $487e: $0f
	call z, $0fcc                                    ; $487f: $cc $cc $0f
	nop                                              ; $4882: $00
	db $10                                           ; $4883: $10
	jr jr_02b_48ae                                   ; $4884: $18 $28

jr_02b_4886:
	jr nc, @+$36                                     ; $4886: $30 $34

	jr c, jr_02b_48c6                                ; $4888: $38 $3c

	rst $38                                          ; $488a: $ff
	rst $38                                          ; $488b: $ff
	rrca                                             ; $488c: $0f
	call z, $0fcc                                    ; $488d: $cc $cc $0f
	rst $38                                          ; $4890: $ff
	rst $38                                          ; $4891: $ff

jr_02b_4892:
	rrca                                             ; $4892: $0f
	call z, $0fcc                                    ; $4893: $cc $cc $0f
	nop                                              ; $4896: $00
	db $10                                           ; $4897: $10
	jr jr_02b_48c2                                   ; $4898: $18 $28

	jr nc, jr_02b_48d0                               ; $489a: $30 $34

	jr c, @+$3e                                      ; $489c: $38 $3c

	rst $38                                          ; $489e: $ff
	rst $38                                          ; $489f: $ff

jr_02b_48a0:
	rrca                                             ; $48a0: $0f
	call z, $0fcc                                    ; $48a1: $cc $cc $0f
	rst $38                                          ; $48a4: $ff
	rst $38                                          ; $48a5: $ff
	rrca                                             ; $48a6: $0f
	call z, $0fcc                                    ; $48a7: $cc $cc $0f

jr_02b_48aa:
	nop                                              ; $48aa: $00
	db $10                                           ; $48ab: $10
	jr jr_02b_48d6                                   ; $48ac: $18 $28

jr_02b_48ae:
	jr nc, jr_02b_48e4                               ; $48ae: $30 $34

	jr c, @+$3e                                      ; $48b0: $38 $3c

	rst $38                                          ; $48b2: $ff
	rst $38                                          ; $48b3: $ff
	rrca                                             ; $48b4: $0f
	call z, $0fcc                                    ; $48b5: $cc $cc $0f
	db $fc                                           ; $48b8: $fc
	rst $38                                          ; $48b9: $ff
	rrca                                             ; $48ba: $0f
	call z, $0fcc                                    ; $48bb: $cc $cc $0f
	nop                                              ; $48be: $00
	db $10                                           ; $48bf: $10
	jr @+$28                                         ; $48c0: $18 $26

jr_02b_48c2:
	ld l, $32                                        ; $48c2: $2e $32
	ld [hl], $3a                                     ; $48c4: $36 $3a

jr_02b_48c6:
	ld de, $1111                                     ; $48c6: $11 $11 $11
	ld de, $1111                                     ; $48c9: $11 $11 $11
	ld de, $dd11                                     ; $48cc: $11 $11 $dd
	db $dd                                           ; $48cf: $dd

jr_02b_48d0:
	db $dd                                           ; $48d0: $dd
	db $dd                                           ; $48d1: $dd
	rst $38                                          ; $48d2: $ff
	call z, $0cff                                    ; $48d3: $cc $ff $0c

jr_02b_48d6:
	call z, $0cc3                                    ; $48d6: $cc $c3 $0c
	call z, $0cc3                                    ; $48d9: $cc $c3 $0c
	call z, $00c3                                    ; $48dc: $cc $c3 $00
	db $10                                           ; $48df: $10
	jr @+$22                                         ; $48e0: $18 $20

	jr z, @+$2e                                      ; $48e2: $28 $2c

jr_02b_48e4:
	ld l, $30                                        ; $48e4: $2e $30
	rst $38                                          ; $48e6: $ff
	call z, $0cff                                    ; $48e7: $cc $ff $0c
	call z, $0ccf                                    ; $48ea: $cc $cf $0c
	call z, $0ccf                                    ; $48ed: $cc $cf $0c
	call z, $00cf                                    ; $48f0: $cc $cf $00
	db $10                                           ; $48f3: $10
	jr @+$22                                         ; $48f4: $18 $20

	jr z, @+$2e                                      ; $48f6: $28 $2c

	jr nc, @+$36                                     ; $48f8: $30 $34

	rst $38                                          ; $48fa: $ff
	call z, $0cff                                    ; $48fb: $cc $ff $0c
	call z, $0cc3                                    ; $48fe: $cc $c3 $0c
	call z, $0cc3                                    ; $4901: $cc $c3 $0c
	call z, $00c3                                    ; $4904: $cc $c3 $00
	db $10                                           ; $4907: $10
	jr @+$22                                         ; $4908: $18 $20

	jr z, @+$2e                                      ; $490a: $28 $2c

	ld l, $30                                        ; $490c: $2e $30
	rst $38                                          ; $490e: $ff
	call z, $0cff                                    ; $490f: $cc $ff $0c
	call z, $0cc3                                    ; $4912: $cc $c3 $0c
	call z, $0cc3                                    ; $4915: $cc $c3 $0c
	call z, $00cf                                    ; $4918: $cc $cf $00
	db $10                                           ; $491b: $10
	jr jr_02b_493e                                   ; $491c: $18 $20

	jr z, jr_02b_494c                                ; $491e: $28 $2c

	ld l, $30                                        ; $4920: $2e $30
	rst $38                                          ; $4922: $ff
	call z, $0cff                                    ; $4923: $cc $ff $0c
	call z, $0cc3                                    ; $4926: $cc $c3 $0c
	call z, $0cc3                                    ; $4929: $cc $c3 $0c
	call z, $00c3                                    ; $492c: $cc $c3 $00
	db $10                                           ; $492f: $10
	jr jr_02b_4952                                   ; $4930: $18 $20

	jr z, jr_02b_4960                                ; $4932: $28 $2c

	ld l, $30                                        ; $4934: $2e $30
	ld de, $1144                                     ; $4936: $11 $44 $11
	ld [hl+], a                                      ; $4939: $22
	ld de, $1122                                     ; $493a: $11 $22 $11
	ld [hl+], a                                      ; $493d: $22

jr_02b_493e:
	sbc c                                            ; $493e: $99
	call nz, $2222                                   ; $493f: $c4 $22 $22
	rst $38                                          ; $4942: $ff
	rst GetHLinHL                                          ; $4943: $cf
	db $fc                                           ; $4944: $fc
	call z, $cc0c                                    ; $4945: $cc $0c $cc
	call z, $cc0c                                    ; $4948: $cc $0c $cc
	inc c                                            ; $494b: $0c

jr_02b_494c:
	inc c                                            ; $494c: $0c
	inc c                                            ; $494d: $0c
	nop                                              ; $494e: $00
	ld [de], a                                       ; $494f: $12
	ld a, [de]                                       ; $4950: $1a
	ld [hl+], a                                      ; $4951: $22

jr_02b_4952:
	ld h, $28                                        ; $4952: $26 $28
	ld a, [hl+]                                      ; $4954: $2a
	inc l                                            ; $4955: $2c
	rst $38                                          ; $4956: $ff
	rst GetHLinHL                                          ; $4957: $cf
	db $fc                                           ; $4958: $fc
	call z, $0c0c                                    ; $4959: $cc $0c $0c
	call z, $0c0c                                    ; $495c: $cc $0c $0c
	inc c                                            ; $495f: $0c

jr_02b_4960:
	inc c                                            ; $4960: $0c
	inc c                                            ; $4961: $0c
	nop                                              ; $4962: $00
	ld [de], a                                       ; $4963: $12
	jr jr_02b_4984                                   ; $4964: $18 $1e

	ld [hl+], a                                      ; $4966: $22
	inc h                                            ; $4967: $24
	ld h, $28                                        ; $4968: $26 $28
	rst $38                                          ; $496a: $ff
	rst GetHLinHL                                          ; $496b: $cf
	db $fc                                           ; $496c: $fc
	call z, $0c0c                                    ; $496d: $cc $0c $0c
	call z, $cc0c                                    ; $4970: $cc $0c $cc
	inc c                                            ; $4973: $0c
	inc c                                            ; $4974: $0c
	inc c                                            ; $4975: $0c
	nop                                              ; $4976: $00
	ld [de], a                                       ; $4977: $12
	jr @+$22                                         ; $4978: $18 $20

	inc h                                            ; $497a: $24
	ld h, $28                                        ; $497b: $26 $28
	ld a, [hl+]                                      ; $497d: $2a
	rst $38                                          ; $497e: $ff
	rst GetHLinHL                                          ; $497f: $cf
	db $fc                                           ; $4980: $fc
	call z, $0c0c                                    ; $4981: $cc $0c $0c

jr_02b_4984:
	call z, $cc0c                                    ; $4984: $cc $0c $cc
	inc c                                            ; $4987: $0c
	inc c                                            ; $4988: $0c
	inc c                                            ; $4989: $0c
	nop                                              ; $498a: $00
	ld [de], a                                       ; $498b: $12
	jr jr_02b_49ae                                   ; $498c: $18 $20

	inc h                                            ; $498e: $24
	ld h, $28                                        ; $498f: $26 $28
	ld a, [hl+]                                      ; $4991: $2a
	rst $38                                          ; $4992: $ff
	rst GetHLinHL                                          ; $4993: $cf
	db $fc                                           ; $4994: $fc
	call z, $0c0c                                    ; $4995: $cc $0c $0c
	inc c                                            ; $4998: $0c
	call z, $0c0c                                    ; $4999: $cc $0c $0c
	inc c                                            ; $499c: $0c
	inc c                                            ; $499d: $0c
	nop                                              ; $499e: $00
	ld [de], a                                       ; $499f: $12
	jr jr_02b_49c0                                   ; $49a0: $18 $1e

	ld [hl+], a                                      ; $49a2: $22
	inc h                                            ; $49a3: $24
	ld h, $28                                        ; $49a4: $26 $28
	ld de, $1166                                     ; $49a6: $11 $66 $11
	inc sp                                           ; $49a9: $33
	ld de, $1100                                     ; $49aa: $11 $00 $11
	inc sp                                           ; $49ad: $33

jr_02b_49ae:
	ld de, $0011                                     ; $49ae: $11 $11 $00
	nop                                              ; $49b1: $00
	rst $38                                          ; $49b2: $ff
	rst GetHLinHL                                          ; $49b3: $cf
	db $fc                                           ; $49b4: $fc
	call z, $cccc                                    ; $49b5: $cc $cc $cc
	inc c                                            ; $49b8: $0c
	call z, $0ccc                                    ; $49b9: $cc $cc $0c
	call z, $000c                                    ; $49bc: $cc $0c $00
	ld [de], a                                       ; $49bf: $12

jr_02b_49c0:
	inc e                                            ; $49c0: $1c
	inc h                                            ; $49c1: $24
	ld a, [hl+]                                      ; $49c2: $2a
	inc l                                            ; $49c3: $2c
	ld l, $30                                        ; $49c4: $2e $30
	rst $38                                          ; $49c6: $ff
	rst GetHLinHL                                          ; $49c7: $cf
	db $fc                                           ; $49c8: $fc
	call z, $0c0c                                    ; $49c9: $cc $0c $0c
	call z, $cccc                                    ; $49cc: $cc $cc $cc
	inc c                                            ; $49cf: $0c
	call z, $000c                                    ; $49d0: $cc $0c $00
	ld [de], a                                       ; $49d3: $12
	jr jr_02b_49f8                                   ; $49d4: $18 $22

	jr z, jr_02b_4a02                                ; $49d6: $28 $2a

	inc l                                            ; $49d8: $2c
	ld l, $ff                                        ; $49d9: $2e $ff
	rst GetHLinHL                                          ; $49db: $cf
	db $fc                                           ; $49dc: $fc
	call z, $cc0c                                    ; $49dd: $cc $0c $cc
	inc c                                            ; $49e0: $0c
	inc c                                            ; $49e1: $0c
	call z, $0c0c                                    ; $49e2: $cc $0c $0c
	inc c                                            ; $49e5: $0c
	nop                                              ; $49e6: $00
	ld [de], a                                       ; $49e7: $12
	ld a, [de]                                       ; $49e8: $1a
	jr nz, jr_02b_4a0f                               ; $49e9: $20 $24

	ld h, $28                                        ; $49eb: $26 $28
	ld a, [hl+]                                      ; $49ed: $2a
	rst $38                                          ; $49ee: $ff
	rst GetHLinHL                                          ; $49ef: $cf
	db $fc                                           ; $49f0: $fc
	call z, $cc0c                                    ; $49f1: $cc $0c $cc
	inc c                                            ; $49f4: $0c
	inc c                                            ; $49f5: $0c
	inc c                                            ; $49f6: $0c
	inc c                                            ; $49f7: $0c

jr_02b_49f8:
	call z, $000c                                    ; $49f8: $cc $0c $00
	ld [de], a                                       ; $49fb: $12
	ld a, [de]                                       ; $49fc: $1a
	ld e, $24                                        ; $49fd: $1e $24
	ld h, $28                                        ; $49ff: $26 $28
	ld a, [hl+]                                      ; $4a01: $2a

jr_02b_4a02:
	rst $38                                          ; $4a02: $ff
	rst GetHLinHL                                          ; $4a03: $cf
	db $fc                                           ; $4a04: $fc
	call z, $cc0c                                    ; $4a05: $cc $0c $cc
	inc c                                            ; $4a08: $0c
	call z, $0c0c                                    ; $4a09: $cc $0c $0c
	call z, $000c                                    ; $4a0c: $cc $0c $00

jr_02b_4a0f:
	ld [de], a                                       ; $4a0f: $12
	ld a, [de]                                       ; $4a10: $1a
	jr nz, jr_02b_4a39                               ; $4a11: $20 $26

	jr z, jr_02b_4a3f                                ; $4a13: $28 $2a

	inc l                                            ; $4a15: $2c
	ld de, $1122                                     ; $4a16: $11 $22 $11
	ld de, $1111                                     ; $4a19: $11 $11 $11
	ld de, $1111                                     ; $4a1c: $11 $11 $11
	ld de, $0011                                     ; $4a1f: $11 $11 $00
	db $fc                                           ; $4a22: $fc
	rst $38                                          ; $4a23: $ff
	db $fc                                           ; $4a24: $fc
	call z, $0ccc                                    ; $4a25: $cc $cc $0c
	call z, $0ccc                                    ; $4a28: $cc $cc $0c
	call z, $0ccc                                    ; $4a2b: $cc $cc $0c
	nop                                              ; $4a2e: $00
	ld [de], a                                       ; $4a2f: $12
	ld a, [de]                                       ; $4a30: $1a
	ld [hl+], a                                      ; $4a31: $22
	ld a, [hl+]                                      ; $4a32: $2a
	inc l                                            ; $4a33: $2c
	ld l, $30                                        ; $4a34: $2e $30
	db $fc                                           ; $4a36: $fc
	rst $38                                          ; $4a37: $ff
	db $fc                                           ; $4a38: $fc

jr_02b_4a39:
	call z, $0ccc                                    ; $4a39: $cc $cc $0c
	call z, $0ccc                                    ; $4a3c: $cc $cc $0c

jr_02b_4a3f:
	call z, $0ccc                                    ; $4a3f: $cc $cc $0c
	nop                                              ; $4a42: $00
	ld [de], a                                       ; $4a43: $12
	ld a, [de]                                       ; $4a44: $1a
	ld [hl+], a                                      ; $4a45: $22
	ld a, [hl+]                                      ; $4a46: $2a
	inc l                                            ; $4a47: $2c
	ld l, $30                                        ; $4a48: $2e $30
	db $fc                                           ; $4a4a: $fc
	rst $38                                          ; $4a4b: $ff
	db $fc                                           ; $4a4c: $fc
	call z, $0cc0                                    ; $4a4d: $cc $c0 $0c
	call z, $0ccc                                    ; $4a50: $cc $cc $0c
	call z, $0ccc                                    ; $4a53: $cc $cc $0c
	nop                                              ; $4a56: $00
	ld [de], a                                       ; $4a57: $12
	jr @+$22                                         ; $4a58: $18 $20

	jr z, @+$2c                                      ; $4a5a: $28 $2a

	inc l                                            ; $4a5c: $2c
	ld l, $fc                                        ; $4a5d: $2e $fc
	rst $38                                          ; $4a5f: $ff
	db $fc                                           ; $4a60: $fc
	call z, $0ccc                                    ; $4a61: $cc $cc $0c
	call z, $0ccc                                    ; $4a64: $cc $cc $0c
	call z, $0ccc                                    ; $4a67: $cc $cc $0c
	nop                                              ; $4a6a: $00
	ld [de], a                                       ; $4a6b: $12
	ld a, [de]                                       ; $4a6c: $1a
	ld [hl+], a                                      ; $4a6d: $22
	ld a, [hl+]                                      ; $4a6e: $2a
	inc l                                            ; $4a6f: $2c
	ld l, $30                                        ; $4a70: $2e $30
	db $fc                                           ; $4a72: $fc
	rst $38                                          ; $4a73: $ff
	db $fc                                           ; $4a74: $fc
	call z, $0ccc                                    ; $4a75: $cc $cc $0c
	call z, $0cc0                                    ; $4a78: $cc $c0 $0c
	call z, $0ccc                                    ; $4a7b: $cc $cc $0c
	nop                                              ; $4a7e: $00
	ld [de], a                                       ; $4a7f: $12
	ld a, [de]                                       ; $4a80: $1a
	jr nz, @+$2a                                     ; $4a81: $20 $28

	ld a, [hl+]                                      ; $4a83: $2a
	inc l                                            ; $4a84: $2c
	ld l, $11                                        ; $4a85: $2e $11
	ld de, $1111                                     ; $4a87: $11 $11 $11
	ld de, $1100                                     ; $4a8a: $11 $00 $11
	ld de, $1111                                     ; $4a8d: $11 $11 $11
	ld de, $ff00                                     ; $4a90: $11 $00 $ff
	call z, $0cff                                    ; $4a93: $cc $ff $0c
	call z, $0ccf                                    ; $4a96: $cc $cf $0c
	call z, $0ccf                                    ; $4a99: $cc $cf $0c
	call z, $00cf                                    ; $4a9c: $cc $cf $00
	db $10                                           ; $4a9f: $10
	jr @+$22                                         ; $4aa0: $18 $20

	jr z, @+$2e                                      ; $4aa2: $28 $2c

	jr nc, @+$36                                     ; $4aa4: $30 $34

	rst $38                                          ; $4aa6: $ff
	call z, $0cff                                    ; $4aa7: $cc $ff $0c
	call z, $0ccf                                    ; $4aaa: $cc $cf $0c
	call z, $0ccf                                    ; $4aad: $cc $cf $0c
	call z, $00cf                                    ; $4ab0: $cc $cf $00
	db $10                                           ; $4ab3: $10
	jr @+$22                                         ; $4ab4: $18 $20

	jr z, @+$2e                                      ; $4ab6: $28 $2c

	jr nc, @+$36                                     ; $4ab8: $30 $34

	rst $38                                          ; $4aba: $ff
	call z, $0cff                                    ; $4abb: $cc $ff $0c
	call z, $0ccf                                    ; $4abe: $cc $cf $0c
	call z, $0ccf                                    ; $4ac1: $cc $cf $0c
	call z, $00cf                                    ; $4ac4: $cc $cf $00
	db $10                                           ; $4ac7: $10
	jr @+$22                                         ; $4ac8: $18 $20

	jr z, @+$2e                                      ; $4aca: $28 $2c

	jr nc, jr_02b_4b02                               ; $4acc: $30 $34

	rst $38                                          ; $4ace: $ff
	call z, $0cff                                    ; $4acf: $cc $ff $0c
	call z, $0ccf                                    ; $4ad2: $cc $cf $0c
	call z, $0ccf                                    ; $4ad5: $cc $cf $0c
	call z, $00cf                                    ; $4ad8: $cc $cf $00
	db $10                                           ; $4adb: $10
	jr jr_02b_4afe                                   ; $4adc: $18 $20

	jr z, jr_02b_4b0c                                ; $4ade: $28 $2c

	jr nc, @+$36                                     ; $4ae0: $30 $34

	rst $38                                          ; $4ae2: $ff
	call z, $0cff                                    ; $4ae3: $cc $ff $0c
	call z, $0ccf                                    ; $4ae6: $cc $cf $0c
	call z, $0ccf                                    ; $4ae9: $cc $cf $0c
	call z, $00cf                                    ; $4aec: $cc $cf $00
	db $10                                           ; $4aef: $10
	jr jr_02b_4b12                                   ; $4af0: $18 $20

	jr z, jr_02b_4b20                                ; $4af2: $28 $2c

	jr nc, jr_02b_4b2a                               ; $4af4: $30 $34

	sbc c                                            ; $4af6: $99
	call z, $bb11                                    ; $4af7: $cc $11 $bb
	ld de, $1100                                     ; $4afa: $11 $00 $11
	nop                                              ; $4afd: $00

jr_02b_4afe:
	ld de, $0000                                     ; $4afe: $11 $00 $00
	nop                                              ; $4b01: $00

jr_02b_4b02:
	rst $38                                          ; $4b02: $ff
	rst GetHLinHL                                          ; $4b03: $cf
	db $fc                                           ; $4b04: $fc
	inc c                                            ; $4b05: $0c
	rst GetHLinHL                                          ; $4b06: $cf
	inc a                                            ; $4b07: $3c
	rrca                                             ; $4b08: $0f
	rst GetHLinHL                                          ; $4b09: $cf
	db $fc                                           ; $4b0a: $fc
	inc c                                            ; $4b0b: $0c

jr_02b_4b0c:
	jp $000c                                         ; $4b0c: $c3 $0c $00


	ld [de], a                                       ; $4b0f: $12
	inc e                                            ; $4b10: $1c
	ld a, [hl+]                                      ; $4b11: $2a

jr_02b_4b12:
	jr nc, jr_02b_4b46                               ; $4b12: $30 $32

	inc [hl]                                         ; $4b14: $34
	ld [hl], $ff                                     ; $4b15: $36 $ff
	rst GetHLinHL                                          ; $4b17: $cf
	db $fc                                           ; $4b18: $fc
	inc c                                            ; $4b19: $0c
	rst GetHLinHL                                          ; $4b1a: $cf
	inc a                                            ; $4b1b: $3c
	rrca                                             ; $4b1c: $0f
	rst GetHLinHL                                          ; $4b1d: $cf
	inc a                                            ; $4b1e: $3c
	inc c                                            ; $4b1f: $0c

jr_02b_4b20:
	jp $000c                                         ; $4b20: $c3 $0c $00


	ld [de], a                                       ; $4b23: $12
	inc e                                            ; $4b24: $1c
	jr z, jr_02b_4b55                                ; $4b25: $28 $2e

	jr nc, jr_02b_4b5b                               ; $4b27: $30 $32

	inc [hl]                                         ; $4b29: $34

jr_02b_4b2a:
	rst $38                                          ; $4b2a: $ff
	rst GetHLinHL                                          ; $4b2b: $cf
	db $fc                                           ; $4b2c: $fc
	inc c                                            ; $4b2d: $0c
	rst GetHLinHL                                          ; $4b2e: $cf
	inc a                                            ; $4b2f: $3c
	rrca                                             ; $4b30: $0f
	rst GetHLinHL                                          ; $4b31: $cf
	inc a                                            ; $4b32: $3c
	inc c                                            ; $4b33: $0c
	jp $000c                                         ; $4b34: $c3 $0c $00


	ld [de], a                                       ; $4b37: $12
	inc e                                            ; $4b38: $1c
	jr z, @+$30                                      ; $4b39: $28 $2e

	jr nc, @+$34                                     ; $4b3b: $30 $32

	inc [hl]                                         ; $4b3d: $34
	rst $38                                          ; $4b3e: $ff
	rst GetHLinHL                                          ; $4b3f: $cf
	db $fc                                           ; $4b40: $fc
	inc c                                            ; $4b41: $0c
	rst GetHLinHL                                          ; $4b42: $cf
	inc a                                            ; $4b43: $3c
	rrca                                             ; $4b44: $0f
	rst GetHLinHL                                          ; $4b45: $cf

jr_02b_4b46:
	inc a                                            ; $4b46: $3c
	inc c                                            ; $4b47: $0c
	jp $000c                                         ; $4b48: $c3 $0c $00


	ld [de], a                                       ; $4b4b: $12
	inc e                                            ; $4b4c: $1c
	jr z, jr_02b_4b7d                                ; $4b4d: $28 $2e

	jr nc, jr_02b_4b83                               ; $4b4f: $30 $32

	inc [hl]                                         ; $4b51: $34
	rst $38                                          ; $4b52: $ff
	rst GetHLinHL                                          ; $4b53: $cf
	db $fc                                           ; $4b54: $fc

jr_02b_4b55:
	inc c                                            ; $4b55: $0c
	rst GetHLinHL                                          ; $4b56: $cf
	inc a                                            ; $4b57: $3c
	inc c                                            ; $4b58: $0c
	rst GetHLinHL                                          ; $4b59: $cf
	inc a                                            ; $4b5a: $3c

jr_02b_4b5b:
	rrca                                             ; $4b5b: $0f
	jp $000c                                         ; $4b5c: $c3 $0c $00


	ld [de], a                                       ; $4b5f: $12
	inc e                                            ; $4b60: $1c
	ld h, $2e                                        ; $4b61: $26 $2e
	jr nc, jr_02b_4b97                               ; $4b63: $30 $32

	inc [hl]                                         ; $4b65: $34
	sbc l                                            ; $4b66: $9d
	db $dd                                           ; $4b67: $dd
	ld de, $1111                                     ; $4b68: $11 $11 $11
	ld de, $1111                                     ; $4b6b: $11 $11 $11
	ld de, $1111                                     ; $4b6e: $11 $11 $11
	nop                                              ; $4b71: $00
	rst $38                                          ; $4b72: $ff
	rst GetHLinHL                                          ; $4b73: $cf
	db $fc                                           ; $4b74: $fc
	inc c                                            ; $4b75: $0c
	inc c                                            ; $4b76: $0c
	call z, $0c0c                                    ; $4b77: $cc $0c $0c
	call z, $0c0c                                    ; $4b7a: $cc $0c $0c

jr_02b_4b7d:
	call z, $1200                                    ; $4b7d: $cc $00 $12
	jr @+$20                                         ; $4b80: $18 $1e

	inc h                                            ; $4b82: $24

jr_02b_4b83:
	ld h, $28                                        ; $4b83: $26 $28
	ld a, [hl+]                                      ; $4b85: $2a
	rst $38                                          ; $4b86: $ff
	rst GetHLinHL                                          ; $4b87: $cf
	db $fc                                           ; $4b88: $fc
	inc c                                            ; $4b89: $0c
	inc c                                            ; $4b8a: $0c
	call z, $0c0c                                    ; $4b8b: $cc $0c $0c
	call z, $0c0c                                    ; $4b8e: $cc $0c $0c
	inc c                                            ; $4b91: $0c
	nop                                              ; $4b92: $00
	ld [de], a                                       ; $4b93: $12
	jr @+$20                                         ; $4b94: $18 $1e

	ld [hl+], a                                      ; $4b96: $22

jr_02b_4b97:
	inc h                                            ; $4b97: $24
	ld h, $28                                        ; $4b98: $26 $28
	rst $38                                          ; $4b9a: $ff
	rst GetHLinHL                                          ; $4b9b: $cf
	db $fc                                           ; $4b9c: $fc
	inc c                                            ; $4b9d: $0c
	inc c                                            ; $4b9e: $0c
	call z, $0c0c                                    ; $4b9f: $cc $0c $0c
	call z, $0c0c                                    ; $4ba2: $cc $0c $0c
	inc c                                            ; $4ba5: $0c
	nop                                              ; $4ba6: $00
	ld [de], a                                       ; $4ba7: $12
	jr @+$20                                         ; $4ba8: $18 $1e

	ld [hl+], a                                      ; $4baa: $22
	inc h                                            ; $4bab: $24
	ld h, $28                                        ; $4bac: $26 $28
	rst $38                                          ; $4bae: $ff
	rst GetHLinHL                                          ; $4baf: $cf
	db $fc                                           ; $4bb0: $fc
	inc c                                            ; $4bb1: $0c
	inc c                                            ; $4bb2: $0c
	call z, $0c0c                                    ; $4bb3: $cc $0c $0c
	call z, $0c0c                                    ; $4bb6: $cc $0c $0c
	inc c                                            ; $4bb9: $0c
	nop                                              ; $4bba: $00
	ld [de], a                                       ; $4bbb: $12
	jr jr_02b_4bdc                                   ; $4bbc: $18 $1e

	ld [hl+], a                                      ; $4bbe: $22
	inc h                                            ; $4bbf: $24
	ld h, $28                                        ; $4bc0: $26 $28
	rst $38                                          ; $4bc2: $ff
	rst GetHLinHL                                          ; $4bc3: $cf
	db $fc                                           ; $4bc4: $fc
	inc c                                            ; $4bc5: $0c
	inc c                                            ; $4bc6: $0c
	call z, $0c0c                                    ; $4bc7: $cc $0c $0c
	call z, $0c0c                                    ; $4bca: $cc $0c $0c
	inc c                                            ; $4bcd: $0c
	nop                                              ; $4bce: $00
	ld [de], a                                       ; $4bcf: $12
	jr jr_02b_4bf0                                   ; $4bd0: $18 $1e

	ld [hl+], a                                      ; $4bd2: $22
	inc h                                            ; $4bd3: $24
	ld h, $28                                        ; $4bd4: $26 $28
	ld de, $1122                                     ; $4bd6: $11 $22 $11
	ld de, $1111                                     ; $4bd9: $11 $11 $11

jr_02b_4bdc:
	ld de, $1111                                     ; $4bdc: $11 $11 $11
	ld de, $0011                                     ; $4bdf: $11 $11 $00
	rst $38                                          ; $4be2: $ff
	rst GetHLinHL                                          ; $4be3: $cf
	db $fc                                           ; $4be4: $fc
	inc a                                            ; $4be5: $3c
	call z, $3f0c                                    ; $4be6: $cc $0c $3f
	call z, $3f0c                                    ; $4be9: $cc $0c $3f
	rst GetHLinHL                                          ; $4bec: $cf
	inc c                                            ; $4bed: $0c
	nop                                              ; $4bee: $00
	ld [de], a                                       ; $4bef: $12

jr_02b_4bf0:
	ld a, [de]                                       ; $4bf0: $1a
	inc h                                            ; $4bf1: $24
	jr nc, jr_02b_4c26                               ; $4bf2: $30 $32

	inc [hl]                                         ; $4bf4: $34
	ld [hl], $99                                     ; $4bf5: $36 $99
	and $11                                          ; $4bf7: $e6 $11
	ld de, $1111                                     ; $4bf9: $11 $11 $11
	ld de, $1111                                     ; $4bfc: $11 $11 $11
	ld de, $0011                                     ; $4bff: $11 $11 $00
	rst $38                                          ; $4c02: $ff
	rst $38                                          ; $4c03: $ff
	rst $38                                          ; $4c04: $ff
	inc c                                            ; $4c05: $0c
	inc c                                            ; $4c06: $0c
	rst GetHLinHL                                          ; $4c07: $cf
	inc c                                            ; $4c08: $0c
	inc c                                            ; $4c09: $0c
	rst GetHLinHL                                          ; $4c0a: $cf
	inc c                                            ; $4c0b: $0c
	inc c                                            ; $4c0c: $0c
	rst GetHLinHL                                          ; $4c0d: $cf
	nop                                              ; $4c0e: $00
	inc d                                            ; $4c0f: $14
	ld a, [de]                                       ; $4c10: $1a
	jr nz, jr_02b_4c39                               ; $4c11: $20 $26

	ld a, [hl+]                                      ; $4c13: $2a
	ld l, $32                                        ; $4c14: $2e $32
	rst $38                                          ; $4c16: $ff
	rst $38                                          ; $4c17: $ff
	rst $38                                          ; $4c18: $ff
	inc c                                            ; $4c19: $0c
	inc c                                            ; $4c1a: $0c
	rst GetHLinHL                                          ; $4c1b: $cf
	call z, $cf0c                                    ; $4c1c: $cc $0c $cf
	inc c                                            ; $4c1f: $0c
	inc c                                            ; $4c20: $0c
	rst GetHLinHL                                          ; $4c21: $cf
	nop                                              ; $4c22: $00
	inc d                                            ; $4c23: $14
	ld a, [de]                                       ; $4c24: $1a
	ld [hl+], a                                      ; $4c25: $22

jr_02b_4c26:
	jr z, jr_02b_4c54                                ; $4c26: $28 $2c

	jr nc, jr_02b_4c5e                               ; $4c28: $30 $34

	rst $38                                          ; $4c2a: $ff
	rst $38                                          ; $4c2b: $ff
	rst $38                                          ; $4c2c: $ff
	inc c                                            ; $4c2d: $0c
	call z, $cccf                                    ; $4c2e: $cc $cf $cc
	call z, $0ccf                                    ; $4c31: $cc $cf $0c
	inc c                                            ; $4c34: $0c
	rst GetHLinHL                                          ; $4c35: $cf
	nop                                              ; $4c36: $00
	inc d                                            ; $4c37: $14
	inc e                                            ; $4c38: $1c

jr_02b_4c39:
	ld h, $2c                                        ; $4c39: $26 $2c
	jr nc, @+$36                                     ; $4c3b: $30 $34

	jr c, @+$01                                      ; $4c3d: $38 $ff

	rst $38                                          ; $4c3f: $ff
	rst $38                                          ; $4c40: $ff
	inc c                                            ; $4c41: $0c
	call z, $0ccf                                    ; $4c42: $cc $cf $0c
	call z, $0ccf                                    ; $4c45: $cc $cf $0c
	inc c                                            ; $4c48: $0c
	rst GetHLinHL                                          ; $4c49: $cf
	nop                                              ; $4c4a: $00
	inc d                                            ; $4c4b: $14
	inc e                                            ; $4c4c: $1c
	inc h                                            ; $4c4d: $24
	ld a, [hl+]                                      ; $4c4e: $2a
	ld l, $32                                        ; $4c4f: $2e $32
	ld [hl], $ff                                     ; $4c51: $36 $ff
	rst $38                                          ; $4c53: $ff

jr_02b_4c54:
	rst $38                                          ; $4c54: $ff
	inc c                                            ; $4c55: $0c
	call z, $cccf                                    ; $4c56: $cc $cf $cc
	call z, $0ccf                                    ; $4c59: $cc $cf $0c
	inc c                                            ; $4c5c: $0c
	rst GetHLinHL                                          ; $4c5d: $cf

jr_02b_4c5e:
	nop                                              ; $4c5e: $00
	inc d                                            ; $4c5f: $14
	inc e                                            ; $4c60: $1c
	ld h, $2c                                        ; $4c61: $26 $2c
	jr nc, @+$36                                     ; $4c63: $30 $34

	jr c, jr_02b_4c78                                ; $4c65: $38 $11

	ld de, $1111                                     ; $4c67: $11 $11 $11
	ld de, $1122                                     ; $4c6a: $11 $22 $11
	ld [hl+], a                                      ; $4c6d: $22
	ld b, h                                          ; $4c6e: $44
	ld de, $9999                                     ; $4c6f: $11 $99 $99
	db $fc                                           ; $4c72: $fc
	rst GetHLinHL                                          ; $4c73: $cf
	rst $38                                          ; $4c74: $ff
	call z, $03cc                                    ; $4c75: $cc $cc $03

jr_02b_4c78:
	call z, $0fcc                                    ; $4c78: $cc $cc $0f
	call z, $0fcc                                    ; $4c7b: $cc $cc $0f
	nop                                              ; $4c7e: $00
	db $10                                           ; $4c7f: $10
	jr @+$22                                         ; $4c80: $18 $20

	jr z, jr_02b_4cb0                                ; $4c82: $28 $2c

	ld l, $32                                        ; $4c84: $2e $32
	db $fc                                           ; $4c86: $fc
	rst GetHLinHL                                          ; $4c87: $cf
	rst $38                                          ; $4c88: $ff
	call z, $0fcc                                    ; $4c89: $cc $cc $0f
	call z, $0fcc                                    ; $4c8c: $cc $cc $0f
	call z, $0fcc                                    ; $4c8f: $cc $cc $0f
	nop                                              ; $4c92: $00
	db $10                                           ; $4c93: $10
	jr @+$22                                         ; $4c94: $18 $20

	jr z, jr_02b_4cc4                                ; $4c96: $28 $2c

	jr nc, jr_02b_4cce                               ; $4c98: $30 $34

	db $fc                                           ; $4c9a: $fc
	rst GetHLinHL                                          ; $4c9b: $cf
	rst $38                                          ; $4c9c: $ff
	call z, $0fcc                                    ; $4c9d: $cc $cc $0f
	call z, $0fcc                                    ; $4ca0: $cc $cc $0f
	call z, $0fcc                                    ; $4ca3: $cc $cc $0f
	nop                                              ; $4ca6: $00
	db $10                                           ; $4ca7: $10
	jr @+$22                                         ; $4ca8: $18 $20

	jr z, @+$2e                                      ; $4caa: $28 $2c

	jr nc, @+$36                                     ; $4cac: $30 $34

	db $fc                                           ; $4cae: $fc
	rst GetHLinHL                                          ; $4caf: $cf

jr_02b_4cb0:
	rst $38                                          ; $4cb0: $ff
	call z, $0fcc                                    ; $4cb1: $cc $cc $0f
	call z, $0fcc                                    ; $4cb4: $cc $cc $0f
	call z, $0fcc                                    ; $4cb7: $cc $cc $0f
	nop                                              ; $4cba: $00
	db $10                                           ; $4cbb: $10
	jr @+$22                                         ; $4cbc: $18 $20

	jr z, @+$2e                                      ; $4cbe: $28 $2c

	jr nc, jr_02b_4cf6                               ; $4cc0: $30 $34

	db $fc                                           ; $4cc2: $fc
	rst GetHLinHL                                          ; $4cc3: $cf

jr_02b_4cc4:
	rst $38                                          ; $4cc4: $ff
	call z, $0fcc                                    ; $4cc5: $cc $cc $0f
	call z, $0fcc                                    ; $4cc8: $cc $cc $0f
	call z, $0fcc                                    ; $4ccb: $cc $cc $0f

jr_02b_4cce:
	nop                                              ; $4cce: $00
	db $10                                           ; $4ccf: $10
	jr jr_02b_4cf2                                   ; $4cd0: $18 $20

	jr z, @+$2e                                      ; $4cd2: $28 $2c

	jr nc, jr_02b_4d0a                               ; $4cd4: $30 $34

	ld de, $1111                                     ; $4cd6: $11 $11 $11
	ld de, $0011                                     ; $4cd9: $11 $11 $00
	ld de, $1166                                     ; $4cdc: $11 $66 $11
	ld d, l                                          ; $4cdf: $55
	ld de, $ff00                                     ; $4ce0: $11 $00 $ff
	rst GetHLinHL                                          ; $4ce3: $cf
	db $fc                                           ; $4ce4: $fc
	inc c                                            ; $4ce5: $0c
	inc c                                            ; $4ce6: $0c
	call z, $0c0c                                    ; $4ce7: $cc $0c $0c
	call z, $0c0c                                    ; $4cea: $cc $0c $0c
	inc c                                            ; $4ced: $0c
	nop                                              ; $4cee: $00
	ld [de], a                                       ; $4cef: $12
	jr @+$20                                         ; $4cf0: $18 $1e

jr_02b_4cf2:
	ld [hl+], a                                      ; $4cf2: $22
	inc h                                            ; $4cf3: $24
	ld h, $28                                        ; $4cf4: $26 $28

jr_02b_4cf6:
	rst $38                                          ; $4cf6: $ff
	rst GetHLinHL                                          ; $4cf7: $cf
	db $fc                                           ; $4cf8: $fc
	inc c                                            ; $4cf9: $0c
	inc c                                            ; $4cfa: $0c
	call z, $0c0c                                    ; $4cfb: $cc $0c $0c
	call z, $0c0c                                    ; $4cfe: $cc $0c $0c
	inc c                                            ; $4d01: $0c
	nop                                              ; $4d02: $00
	ld [de], a                                       ; $4d03: $12
	jr @+$20                                         ; $4d04: $18 $1e

	ld [hl+], a                                      ; $4d06: $22
	inc h                                            ; $4d07: $24
	ld h, $28                                        ; $4d08: $26 $28

jr_02b_4d0a:
	rst $38                                          ; $4d0a: $ff
	rst GetHLinHL                                          ; $4d0b: $cf
	db $fc                                           ; $4d0c: $fc
	inc c                                            ; $4d0d: $0c
	inc c                                            ; $4d0e: $0c
	call z, $0c0c                                    ; $4d0f: $cc $0c $0c
	call z, $0c0c                                    ; $4d12: $cc $0c $0c
	inc c                                            ; $4d15: $0c
	nop                                              ; $4d16: $00
	ld [de], a                                       ; $4d17: $12
	jr @+$20                                         ; $4d18: $18 $1e

	ld [hl+], a                                      ; $4d1a: $22
	inc h                                            ; $4d1b: $24
	ld h, $28                                        ; $4d1c: $26 $28
	rst $38                                          ; $4d1e: $ff
	rst GetHLinHL                                          ; $4d1f: $cf
	db $fc                                           ; $4d20: $fc
	inc c                                            ; $4d21: $0c
	inc c                                            ; $4d22: $0c
	call z, $0c0c                                    ; $4d23: $cc $0c $0c
	call z, $0c0c                                    ; $4d26: $cc $0c $0c
	inc c                                            ; $4d29: $0c
	nop                                              ; $4d2a: $00
	ld [de], a                                       ; $4d2b: $12
	jr @+$20                                         ; $4d2c: $18 $1e

	ld [hl+], a                                      ; $4d2e: $22
	inc h                                            ; $4d2f: $24
	ld h, $28                                        ; $4d30: $26 $28
	rst $38                                          ; $4d32: $ff
	rst GetHLinHL                                          ; $4d33: $cf
	db $fc                                           ; $4d34: $fc
	inc c                                            ; $4d35: $0c
	inc c                                            ; $4d36: $0c
	call z, $cc0c                                    ; $4d37: $cc $0c $cc
	call z, $0c0c                                    ; $4d3a: $cc $0c $0c
	inc c                                            ; $4d3d: $0c
	nop                                              ; $4d3e: $00
	ld [de], a                                       ; $4d3f: $12
	jr jr_02b_4d62                                   ; $4d40: $18 $20

	inc h                                            ; $4d42: $24
	ld h, $28                                        ; $4d43: $26 $28
	ld a, [hl+]                                      ; $4d45: $2a
	sbc c                                            ; $4d46: $99
	sbc c                                            ; $4d47: $99
	ld de, $1111                                     ; $4d48: $11 $11 $11
	ld de, $1111                                     ; $4d4b: $11 $11 $11
	ld de, $1111                                     ; $4d4e: $11 $11 $11
	nop                                              ; $4d51: $00
	rst $38                                          ; $4d52: $ff
	rst GetHLinHL                                          ; $4d53: $cf
	db $fc                                           ; $4d54: $fc
	call z, $0ccc                                    ; $4d55: $cc $cc $0c
	call z, $0ccc                                    ; $4d58: $cc $cc $0c
	inc c                                            ; $4d5b: $0c
	inc c                                            ; $4d5c: $0c
	inc c                                            ; $4d5d: $0c
	nop                                              ; $4d5e: $00
	ld [de], a                                       ; $4d5f: $12
	ld a, [de]                                       ; $4d60: $1a
	ld [hl+], a                                      ; $4d61: $22

jr_02b_4d62:
	ld h, $28                                        ; $4d62: $26 $28
	ld a, [hl+]                                      ; $4d64: $2a
	inc l                                            ; $4d65: $2c
	ld de, $1111                                     ; $4d66: $11 $11 $11
	ld de, $1111                                     ; $4d69: $11 $11 $11
	ld de, $1111                                     ; $4d6c: $11 $11 $11
	ld d, l                                          ; $4d6f: $55
	ld de, $ff00                                     ; $4d70: $11 $00 $ff
	rst $38                                          ; $4d73: $ff
	rst $38                                          ; $4d74: $ff
	inc bc                                           ; $4d75: $03
	inc sp                                           ; $4d76: $33
	ccf                                              ; $4d77: $3f
	inc bc                                           ; $4d78: $03
	ccf                                              ; $4d79: $3f
	ccf                                              ; $4d7a: $3f
	inc bc                                           ; $4d7b: $03
	inc bc                                           ; $4d7c: $03
	rrca                                             ; $4d7d: $0f
	nop                                              ; $4d7e: $00
	inc d                                            ; $4d7f: $14
	inc e                                            ; $4d80: $1c
	ld h, $2a                                        ; $4d81: $26 $2a
	ld l, $32                                        ; $4d83: $2e $32
	ld [hl], $11                                     ; $4d85: $36 $11
	ld de, $1111                                     ; $4d87: $11 $11 $11
	ld de, $1111                                     ; $4d8a: $11 $11 $11
	ld de, $1166                                     ; $4d8d: $11 $66 $11
	sbc c                                            ; $4d90: $99
	sbc c                                            ; $4d91: $99
	db $fc                                           ; $4d92: $fc
	ldh a, [$0c]                                     ; $4d93: $f0 $0c
	call z, $0cc0                                    ; $4d95: $cc $c0 $0c
	call z, $0cc0                                    ; $4d98: $cc $c0 $0c
	call z, $0cc0                                    ; $4d9b: $cc $c0 $0c
	nop                                              ; $4d9e: $00
	ld a, [bc]                                       ; $4d9f: $0a
	db $10                                           ; $4da0: $10
	ld d, $1c                                        ; $4da1: $16 $1c
	ld e, $20                                        ; $4da3: $1e $20
	ld [hl+], a                                      ; $4da5: $22
	db $fc                                           ; $4da6: $fc
	ldh a, [$0c]                                     ; $4da7: $f0 $0c
	call z, $0cc0                                    ; $4da9: $cc $c0 $0c
	ret nz                                           ; $4dac: $c0

	ret nz                                           ; $4dad: $c0

	inc c                                            ; $4dae: $0c
	call z, $0cc0                                    ; $4daf: $cc $c0 $0c
	nop                                              ; $4db2: $00
	ld a, [bc]                                       ; $4db3: $0a
	db $10                                           ; $4db4: $10
	inc d                                            ; $4db5: $14
	ld a, [de]                                       ; $4db6: $1a
	inc e                                            ; $4db7: $1c
	ld e, $20                                        ; $4db8: $1e $20
	db $fc                                           ; $4dba: $fc
	ldh a, [$0c]                                     ; $4dbb: $f0 $0c
	ret nz                                           ; $4dbd: $c0

	ret nz                                           ; $4dbe: $c0

	inc c                                            ; $4dbf: $0c
	ret nz                                           ; $4dc0: $c0

	ret nz                                           ; $4dc1: $c0

	inc c                                            ; $4dc2: $0c
	call z, $0cc0                                    ; $4dc3: $cc $c0 $0c
	nop                                              ; $4dc6: $00
	ld a, [bc]                                       ; $4dc7: $0a
	ld c, $12                                        ; $4dc8: $0e $12
	jr @+$1c                                         ; $4dca: $18 $1a

	inc e                                            ; $4dcc: $1c
	ld e, $fc                                        ; $4dcd: $1e $fc
	ldh a, [$0c]                                     ; $4dcf: $f0 $0c
	ret nz                                           ; $4dd1: $c0

	ret nz                                           ; $4dd2: $c0

	inc c                                            ; $4dd3: $0c
	ret nz                                           ; $4dd4: $c0

	ret nz                                           ; $4dd5: $c0

	inc c                                            ; $4dd6: $0c
	call z, $0cc0                                    ; $4dd7: $cc $c0 $0c
	nop                                              ; $4dda: $00
	ld a, [bc]                                       ; $4ddb: $0a
	ld c, $12                                        ; $4ddc: $0e $12
	jr @+$1c                                         ; $4dde: $18 $1a

	inc e                                            ; $4de0: $1c
	ld e, $fc                                        ; $4de1: $1e $fc
	ldh a, [$0c]                                     ; $4de3: $f0 $0c
	call z, $0cc0                                    ; $4de5: $cc $c0 $0c
	call z, $0cc0                                    ; $4de8: $cc $c0 $0c
	call z, $0cc0                                    ; $4deb: $cc $c0 $0c
	nop                                              ; $4dee: $00
	ld a, [bc]                                       ; $4def: $0a
	db $10                                           ; $4df0: $10
	ld d, $1c                                        ; $4df1: $16 $1c
	ld e, $20                                        ; $4df3: $1e $20
	ld [hl+], a                                      ; $4df5: $22
	db $fc                                           ; $4df6: $fc
	ldh a, [$0c]                                     ; $4df7: $f0 $0c
	call z, $0cc0                                    ; $4df9: $cc $c0 $0c
	call z, $0cc0                                    ; $4dfc: $cc $c0 $0c
	call z, $0cc0                                    ; $4dff: $cc $c0 $0c
	nop                                              ; $4e02: $00
	ld a, [bc]                                       ; $4e03: $0a
	db $10                                           ; $4e04: $10
	ld d, $1c                                        ; $4e05: $16 $1c
	ld e, $20                                        ; $4e07: $1e $20
	ld [hl+], a                                      ; $4e09: $22
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	nop                                              ; $4e0c: $00
	nop                                              ; $4e0d: $00
	nop                                              ; $4e0e: $00
	nop                                              ; $4e0f: $00
	nop                                              ; $4e10: $00
	nop                                              ; $4e11: $00
	nop                                              ; $4e12: $00
	nop                                              ; $4e13: $00
	nop                                              ; $4e14: $00
	nop                                              ; $4e15: $00
	db $fc                                           ; $4e16: $fc
	ldh a, [$0c]                                     ; $4e17: $f0 $0c
	ret nz                                           ; $4e19: $c0

	ret nz                                           ; $4e1a: $c0

	inc c                                            ; $4e1b: $0c
	ret nz                                           ; $4e1c: $c0

	ret nz                                           ; $4e1d: $c0

	inc c                                            ; $4e1e: $0c
	ret nz                                           ; $4e1f: $c0

	ret nz                                           ; $4e20: $c0

	inc c                                            ; $4e21: $0c
	nop                                              ; $4e22: $00
	ld a, [bc]                                       ; $4e23: $0a
	ld c, $12                                        ; $4e24: $0e $12
	ld d, $18                                        ; $4e26: $16 $18
	ld a, [de]                                       ; $4e28: $1a
	inc e                                            ; $4e29: $1c
	db $fc                                           ; $4e2a: $fc
	ldh a, [$0c]                                     ; $4e2b: $f0 $0c
	ret nz                                           ; $4e2d: $c0

	ret nz                                           ; $4e2e: $c0

	inc c                                            ; $4e2f: $0c
	ret nz                                           ; $4e30: $c0

	ret nz                                           ; $4e31: $c0

	inc c                                            ; $4e32: $0c
	ret nz                                           ; $4e33: $c0

	ret nz                                           ; $4e34: $c0

	inc c                                            ; $4e35: $0c
	nop                                              ; $4e36: $00
	ld a, [bc]                                       ; $4e37: $0a
	ld c, $12                                        ; $4e38: $0e $12
	ld d, $18                                        ; $4e3a: $16 $18
	ld a, [de]                                       ; $4e3c: $1a
	inc e                                            ; $4e3d: $1c
	db $fc                                           ; $4e3e: $fc
	ldh a, [$0c]                                     ; $4e3f: $f0 $0c
	ret nz                                           ; $4e41: $c0

	ret nz                                           ; $4e42: $c0

	inc c                                            ; $4e43: $0c
	ret nz                                           ; $4e44: $c0

	ret nz                                           ; $4e45: $c0

	inc c                                            ; $4e46: $0c
	ret nz                                           ; $4e47: $c0

	ret nz                                           ; $4e48: $c0

	inc c                                            ; $4e49: $0c
	nop                                              ; $4e4a: $00
	ld a, [bc]                                       ; $4e4b: $0a
	ld c, $12                                        ; $4e4c: $0e $12
	ld d, $18                                        ; $4e4e: $16 $18
	ld a, [de]                                       ; $4e50: $1a
	inc e                                            ; $4e51: $1c
	db $fc                                           ; $4e52: $fc
	ldh a, [$0c]                                     ; $4e53: $f0 $0c
	ret nz                                           ; $4e55: $c0

	ret nz                                           ; $4e56: $c0

	inc c                                            ; $4e57: $0c
	ret nz                                           ; $4e58: $c0

	ret nz                                           ; $4e59: $c0

	inc c                                            ; $4e5a: $0c
	ret nz                                           ; $4e5b: $c0

	ret nz                                           ; $4e5c: $c0

	inc c                                            ; $4e5d: $0c
	nop                                              ; $4e5e: $00
	ld a, [bc]                                       ; $4e5f: $0a
	ld c, $12                                        ; $4e60: $0e $12
	ld d, $18                                        ; $4e62: $16 $18
	ld a, [de]                                       ; $4e64: $1a
	inc e                                            ; $4e65: $1c
	db $fc                                           ; $4e66: $fc
	ldh a, [$0c]                                     ; $4e67: $f0 $0c
	ret nz                                           ; $4e69: $c0

	ret nz                                           ; $4e6a: $c0

	inc c                                            ; $4e6b: $0c
	ret nz                                           ; $4e6c: $c0

	ret nz                                           ; $4e6d: $c0

	inc c                                            ; $4e6e: $0c
	ret nz                                           ; $4e6f: $c0

	ret nz                                           ; $4e70: $c0

	inc c                                            ; $4e71: $0c
	nop                                              ; $4e72: $00
	ld a, [bc]                                       ; $4e73: $0a
	ld c, $12                                        ; $4e74: $0e $12
	ld d, $18                                        ; $4e76: $16 $18
	ld a, [de]                                       ; $4e78: $1a
	inc e                                            ; $4e79: $1c
	db $fc                                           ; $4e7a: $fc
	ldh a, [$0c]                                     ; $4e7b: $f0 $0c
	ret nz                                           ; $4e7d: $c0

	ret nz                                           ; $4e7e: $c0

	inc c                                            ; $4e7f: $0c
	ret nz                                           ; $4e80: $c0

	ret nz                                           ; $4e81: $c0

	inc c                                            ; $4e82: $0c
	ret nz                                           ; $4e83: $c0

	ret nz                                           ; $4e84: $c0

	inc c                                            ; $4e85: $0c
	nop                                              ; $4e86: $00
	ld a, [bc]                                       ; $4e87: $0a
	ld c, $12                                        ; $4e88: $0e $12
	ld d, $18                                        ; $4e8a: $16 $18
	ld a, [de]                                       ; $4e8c: $1a
	inc e                                            ; $4e8d: $1c
	nop                                              ; $4e8e: $00
	nop                                              ; $4e8f: $00
	nop                                              ; $4e90: $00
	nop                                              ; $4e91: $00
	nop                                              ; $4e92: $00
	nop                                              ; $4e93: $00
	nop                                              ; $4e94: $00
	nop                                              ; $4e95: $00
	nop                                              ; $4e96: $00
	nop                                              ; $4e97: $00
	nop                                              ; $4e98: $00
	nop                                              ; $4e99: $00
	rst $38                                          ; $4e9a: $ff
	rst GetHLinHL                                          ; $4e9b: $cf
	inc c                                            ; $4e9c: $0c
	call z, $0c0c                                    ; $4e9d: $cc $0c $0c
	call z, $0c0c                                    ; $4ea0: $cc $0c $0c
	call z, $0c0c                                    ; $4ea3: $cc $0c $0c
	nop                                              ; $4ea6: $00
	ld c, $14                                        ; $4ea7: $0e $14
	ld a, [de]                                       ; $4ea9: $1a
	jr nz, jr_02b_4ece                               ; $4eaa: $20 $22

	inc h                                            ; $4eac: $24
	ld h, $ff                                        ; $4ead: $26 $ff
	rst GetHLinHL                                          ; $4eaf: $cf
	inc c                                            ; $4eb0: $0c
	call z, $0c0c                                    ; $4eb1: $cc $0c $0c
	call z, $0c0c                                    ; $4eb4: $cc $0c $0c
	call z, $0c0c                                    ; $4eb7: $cc $0c $0c
	nop                                              ; $4eba: $00
	ld c, $14                                        ; $4ebb: $0e $14
	ld a, [de]                                       ; $4ebd: $1a
	jr nz, jr_02b_4ee2                               ; $4ebe: $20 $22

	inc h                                            ; $4ec0: $24
	ld h, $ff                                        ; $4ec1: $26 $ff
	rst GetHLinHL                                          ; $4ec3: $cf
	inc c                                            ; $4ec4: $0c
	call z, $0c0c                                    ; $4ec5: $cc $0c $0c
	call z, $0c0c                                    ; $4ec8: $cc $0c $0c
	call z, $0c0c                                    ; $4ecb: $cc $0c $0c

jr_02b_4ece:
	nop                                              ; $4ece: $00
	ld c, $14                                        ; $4ecf: $0e $14
	ld a, [de]                                       ; $4ed1: $1a
	jr nz, jr_02b_4ef6                               ; $4ed2: $20 $22

	inc h                                            ; $4ed4: $24
	ld h, $ff                                        ; $4ed5: $26 $ff
	rst GetHLinHL                                          ; $4ed7: $cf
	inc c                                            ; $4ed8: $0c
	call z, $0c0c                                    ; $4ed9: $cc $0c $0c
	call z, $0c0c                                    ; $4edc: $cc $0c $0c
	call z, $0c0c                                    ; $4edf: $cc $0c $0c

jr_02b_4ee2:
	nop                                              ; $4ee2: $00
	ld c, $14                                        ; $4ee3: $0e $14
	ld a, [de]                                       ; $4ee5: $1a
	jr nz, jr_02b_4f0a                               ; $4ee6: $20 $22

	inc h                                            ; $4ee8: $24
	ld h, $ff                                        ; $4ee9: $26 $ff
	rst GetHLinHL                                          ; $4eeb: $cf
	inc c                                            ; $4eec: $0c
	call z, $0c0c                                    ; $4eed: $cc $0c $0c
	call z, $0c0c                                    ; $4ef0: $cc $0c $0c
	call z, $0c0c                                    ; $4ef3: $cc $0c $0c

jr_02b_4ef6:
	nop                                              ; $4ef6: $00
	ld c, $14                                        ; $4ef7: $0e $14
	ld a, [de]                                       ; $4ef9: $1a
	jr nz, @+$24                                     ; $4efa: $20 $22

	inc h                                            ; $4efc: $24
	ld h, $00                                        ; $4efd: $26 $00
	ld de, $0000                                     ; $4eff: $11 $00 $00
	nop                                              ; $4f02: $00
	nop                                              ; $4f03: $00
	nop                                              ; $4f04: $00
	nop                                              ; $4f05: $00
	nop                                              ; $4f06: $00
	nop                                              ; $4f07: $00
	nop                                              ; $4f08: $00
	nop                                              ; $4f09: $00

jr_02b_4f0a:
	db $fc                                           ; $4f0a: $fc
	rst GetHLinHL                                          ; $4f0b: $cf
	rrca                                             ; $4f0c: $0f
	call z, $0fcc                                    ; $4f0d: $cc $cc $0f
	call z, $0fcc                                    ; $4f10: $cc $cc $0f
	call z, $0fcc                                    ; $4f13: $cc $cc $0f
	nop                                              ; $4f16: $00
	inc c                                            ; $4f17: $0c
	inc d                                            ; $4f18: $14
	inc e                                            ; $4f19: $1c
	inc h                                            ; $4f1a: $24

jr_02b_4f1b:
	jr z, jr_02b_4f49                                ; $4f1b: $28 $2c

	jr nc, jr_02b_4f1b                               ; $4f1d: $30 $fc

	rst GetHLinHL                                          ; $4f1f: $cf
	rrca                                             ; $4f20: $0f
	call z, $0fcc                                    ; $4f21: $cc $cc $0f
	call z, $0fcc                                    ; $4f24: $cc $cc $0f
	call z, $0fcc                                    ; $4f27: $cc $cc $0f
	nop                                              ; $4f2a: $00
	inc c                                            ; $4f2b: $0c
	inc d                                            ; $4f2c: $14
	inc e                                            ; $4f2d: $1c
	inc h                                            ; $4f2e: $24

jr_02b_4f2f:
	jr z, jr_02b_4f5d                                ; $4f2f: $28 $2c

	jr nc, jr_02b_4f2f                               ; $4f31: $30 $fc

	rst GetHLinHL                                          ; $4f33: $cf
	rrca                                             ; $4f34: $0f
	call z, $0fcc                                    ; $4f35: $cc $cc $0f
	call z, $0fcc                                    ; $4f38: $cc $cc $0f
	call z, $0fcc                                    ; $4f3b: $cc $cc $0f
	nop                                              ; $4f3e: $00
	inc c                                            ; $4f3f: $0c
	inc d                                            ; $4f40: $14
	inc e                                            ; $4f41: $1c
	inc h                                            ; $4f42: $24

jr_02b_4f43:
	jr z, jr_02b_4f71                                ; $4f43: $28 $2c

	jr nc, jr_02b_4f43                               ; $4f45: $30 $fc

	rst GetHLinHL                                          ; $4f47: $cf
	rrca                                             ; $4f48: $0f

jr_02b_4f49:
	call z, $0fcc                                    ; $4f49: $cc $cc $0f
	call z, $0fcc                                    ; $4f4c: $cc $cc $0f
	call z, $0fcc                                    ; $4f4f: $cc $cc $0f
	nop                                              ; $4f52: $00
	inc c                                            ; $4f53: $0c
	inc d                                            ; $4f54: $14
	inc e                                            ; $4f55: $1c
	inc h                                            ; $4f56: $24

jr_02b_4f57:
	jr z, @+$2e                                      ; $4f57: $28 $2c

	jr nc, jr_02b_4f57                               ; $4f59: $30 $fc

	rst GetHLinHL                                          ; $4f5b: $cf
	rrca                                             ; $4f5c: $0f

jr_02b_4f5d:
	call z, $0fcc                                    ; $4f5d: $cc $cc $0f
	call z, $0fcc                                    ; $4f60: $cc $cc $0f
	call z, $0fcc                                    ; $4f63: $cc $cc $0f
	nop                                              ; $4f66: $00
	inc c                                            ; $4f67: $0c
	inc d                                            ; $4f68: $14
	inc e                                            ; $4f69: $1c
	inc h                                            ; $4f6a: $24
	jr z, @+$2e                                      ; $4f6b: $28 $2c

	jr nc, jr_02b_4f6f                               ; $4f6d: $30 $00

jr_02b_4f6f:
	adc b                                            ; $4f6f: $88
	nop                                              ; $4f70: $00

jr_02b_4f71:
	nop                                              ; $4f71: $00
	nop                                              ; $4f72: $00
	nop                                              ; $4f73: $00
	nop                                              ; $4f74: $00
	nop                                              ; $4f75: $00
	nop                                              ; $4f76: $00
	nop                                              ; $4f77: $00
	nop                                              ; $4f78: $00
	nop                                              ; $4f79: $00
	rst $38                                          ; $4f7a: $ff
	rst GetHLinHL                                          ; $4f7b: $cf
	inc c                                            ; $4f7c: $0c
	call z, $0ccc                                    ; $4f7d: $cc $cc $0c
	call z, $0ccc                                    ; $4f80: $cc $cc $0c
	call z, $0ccc                                    ; $4f83: $cc $cc $0c
	nop                                              ; $4f86: $00
	ld c, $16                                        ; $4f87: $0e $16
	ld e, $26                                        ; $4f89: $1e $26
	jr z, jr_02b_4fb7                                ; $4f8b: $28 $2a

	inc l                                            ; $4f8d: $2c
	rst $38                                          ; $4f8e: $ff
	rst GetHLinHL                                          ; $4f8f: $cf
	inc c                                            ; $4f90: $0c
	call z, $0ccc                                    ; $4f91: $cc $cc $0c
	call z, $0ccc                                    ; $4f94: $cc $cc $0c
	call z, $0ccc                                    ; $4f97: $cc $cc $0c
	nop                                              ; $4f9a: $00
	ld c, $16                                        ; $4f9b: $0e $16
	ld e, $26                                        ; $4f9d: $1e $26
	jr z, jr_02b_4fcb                                ; $4f9f: $28 $2a

	inc l                                            ; $4fa1: $2c
	rst $38                                          ; $4fa2: $ff
	rst GetHLinHL                                          ; $4fa3: $cf
	inc c                                            ; $4fa4: $0c
	call z, $0ccc                                    ; $4fa5: $cc $cc $0c
	call z, $0ccc                                    ; $4fa8: $cc $cc $0c
	call z, $0ccc                                    ; $4fab: $cc $cc $0c
	nop                                              ; $4fae: $00
	ld c, $16                                        ; $4faf: $0e $16
	ld e, $26                                        ; $4fb1: $1e $26
	jr z, jr_02b_4fdf                                ; $4fb3: $28 $2a

	inc l                                            ; $4fb5: $2c
	rst $38                                          ; $4fb6: $ff

jr_02b_4fb7:
	rst GetHLinHL                                          ; $4fb7: $cf
	inc c                                            ; $4fb8: $0c
	call z, $0c0c                                    ; $4fb9: $cc $0c $0c
	call z, $0ccc                                    ; $4fbc: $cc $cc $0c
	call z, $0ccc                                    ; $4fbf: $cc $cc $0c
	nop                                              ; $4fc2: $00
	ld c, $14                                        ; $4fc3: $0e $14
	inc e                                            ; $4fc5: $1c
	inc h                                            ; $4fc6: $24
	ld h, $28                                        ; $4fc7: $26 $28
	ld a, [hl+]                                      ; $4fc9: $2a
	rst $38                                          ; $4fca: $ff

jr_02b_4fcb:
	rst GetHLinHL                                          ; $4fcb: $cf
	inc c                                            ; $4fcc: $0c
	call z, $0c0c                                    ; $4fcd: $cc $0c $0c
	call z, $0ccc                                    ; $4fd0: $cc $cc $0c
	call z, $0ccc                                    ; $4fd3: $cc $cc $0c
	nop                                              ; $4fd6: $00
	ld c, $14                                        ; $4fd7: $0e $14
	inc e                                            ; $4fd9: $1c
	inc h                                            ; $4fda: $24
	ld h, $28                                        ; $4fdb: $26 $28
	ld a, [hl+]                                      ; $4fdd: $2a
	nop                                              ; $4fde: $00

jr_02b_4fdf:
	ld de, $0000                                     ; $4fdf: $11 $00 $00
	nop                                              ; $4fe2: $00
	nop                                              ; $4fe3: $00
	nop                                              ; $4fe4: $00
	nop                                              ; $4fe5: $00
	nop                                              ; $4fe6: $00
	nop                                              ; $4fe7: $00
	nop                                              ; $4fe8: $00
	nop                                              ; $4fe9: $00
	db $fc                                           ; $4fea: $fc
	ldh a, [$0c]                                     ; $4feb: $f0 $0c
	ret nz                                           ; $4fed: $c0

	ret nz                                           ; $4fee: $c0

	inc c                                            ; $4fef: $0c
	ret nz                                           ; $4ff0: $c0

	ret nz                                           ; $4ff1: $c0

	inc c                                            ; $4ff2: $0c
	ret nz                                           ; $4ff3: $c0

	ret nz                                           ; $4ff4: $c0

	inc c                                            ; $4ff5: $0c
	nop                                              ; $4ff6: $00
	ld a, [bc]                                       ; $4ff7: $0a
	ld c, $12                                        ; $4ff8: $0e $12
	ld d, $18                                        ; $4ffa: $16 $18
	ld a, [de]                                       ; $4ffc: $1a
	inc e                                            ; $4ffd: $1c
	db $fc                                           ; $4ffe: $fc
	ldh a, [$0c]                                     ; $4fff: $f0 $0c
	ret nz                                           ; $5001: $c0

	ret nz                                           ; $5002: $c0

	inc c                                            ; $5003: $0c
	ret nz                                           ; $5004: $c0

	ret nz                                           ; $5005: $c0

	inc c                                            ; $5006: $0c
	ret nz                                           ; $5007: $c0

	ret nz                                           ; $5008: $c0

	inc c                                            ; $5009: $0c
	nop                                              ; $500a: $00
	ld a, [bc]                                       ; $500b: $0a
	ld c, $12                                        ; $500c: $0e $12
	ld d, $18                                        ; $500e: $16 $18
	ld a, [de]                                       ; $5010: $1a
	inc e                                            ; $5011: $1c
	db $fc                                           ; $5012: $fc
	ldh a, [$0c]                                     ; $5013: $f0 $0c
	ret nz                                           ; $5015: $c0

	ret nz                                           ; $5016: $c0

	inc c                                            ; $5017: $0c
	ret nz                                           ; $5018: $c0

	ret nz                                           ; $5019: $c0

	inc c                                            ; $501a: $0c
	ret nz                                           ; $501b: $c0

	ret nz                                           ; $501c: $c0

	inc c                                            ; $501d: $0c
	nop                                              ; $501e: $00
	ld a, [bc]                                       ; $501f: $0a
	ld c, $12                                        ; $5020: $0e $12
	ld d, $18                                        ; $5022: $16 $18
	ld a, [de]                                       ; $5024: $1a
	inc e                                            ; $5025: $1c
	db $fc                                           ; $5026: $fc
	ldh a, [$0c]                                     ; $5027: $f0 $0c
	ret nz                                           ; $5029: $c0

	ret nz                                           ; $502a: $c0

	inc c                                            ; $502b: $0c
	ret nz                                           ; $502c: $c0

	ret nz                                           ; $502d: $c0

	inc c                                            ; $502e: $0c
	ret nz                                           ; $502f: $c0

	ret nz                                           ; $5030: $c0

	inc c                                            ; $5031: $0c
	nop                                              ; $5032: $00
	ld a, [bc]                                       ; $5033: $0a
	ld c, $12                                        ; $5034: $0e $12
	ld d, $18                                        ; $5036: $16 $18
	ld a, [de]                                       ; $5038: $1a
	inc e                                            ; $5039: $1c
	db $fc                                           ; $503a: $fc
	ldh a, [$0c]                                     ; $503b: $f0 $0c
	ret nz                                           ; $503d: $c0

	ret nz                                           ; $503e: $c0

	inc c                                            ; $503f: $0c
	ret nz                                           ; $5040: $c0

	ret nz                                           ; $5041: $c0

	inc c                                            ; $5042: $0c
	ret nz                                           ; $5043: $c0

	ret nz                                           ; $5044: $c0

	inc c                                            ; $5045: $0c
	nop                                              ; $5046: $00
	ld a, [bc]                                       ; $5047: $0a
	ld c, $12                                        ; $5048: $0e $12
	ld d, $18                                        ; $504a: $16 $18
	ld a, [de]                                       ; $504c: $1a
	inc e                                            ; $504d: $1c
	nop                                              ; $504e: $00
	nop                                              ; $504f: $00
	nop                                              ; $5050: $00
	nop                                              ; $5051: $00
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	nop                                              ; $5054: $00
	nop                                              ; $5055: $00
	nop                                              ; $5056: $00
	nop                                              ; $5057: $00
	nop                                              ; $5058: $00
	nop                                              ; $5059: $00
	db $fc                                           ; $505a: $fc
	ldh a, [$0c]                                     ; $505b: $f0 $0c
	ret nz                                           ; $505d: $c0

	ret nz                                           ; $505e: $c0

	inc c                                            ; $505f: $0c
	ret nz                                           ; $5060: $c0

	ret nz                                           ; $5061: $c0

	inc c                                            ; $5062: $0c
	ret nz                                           ; $5063: $c0

	ret nz                                           ; $5064: $c0

	inc c                                            ; $5065: $0c
	nop                                              ; $5066: $00
	ld a, [bc]                                       ; $5067: $0a
	ld c, $12                                        ; $5068: $0e $12
	ld d, $18                                        ; $506a: $16 $18
	ld a, [de]                                       ; $506c: $1a
	inc e                                            ; $506d: $1c
	db $fc                                           ; $506e: $fc
	ldh a, [$0c]                                     ; $506f: $f0 $0c
	ret nz                                           ; $5071: $c0

	ret nz                                           ; $5072: $c0

	inc c                                            ; $5073: $0c
	ret nz                                           ; $5074: $c0

	ret nz                                           ; $5075: $c0

	inc c                                            ; $5076: $0c
	ret nz                                           ; $5077: $c0

	ret nz                                           ; $5078: $c0

	inc c                                            ; $5079: $0c
	nop                                              ; $507a: $00
	ld a, [bc]                                       ; $507b: $0a
	ld c, $12                                        ; $507c: $0e $12
	ld d, $18                                        ; $507e: $16 $18
	ld a, [de]                                       ; $5080: $1a
	inc e                                            ; $5081: $1c
	db $fc                                           ; $5082: $fc
	ldh a, [$0c]                                     ; $5083: $f0 $0c
	ret nz                                           ; $5085: $c0

	ret nz                                           ; $5086: $c0

	inc c                                            ; $5087: $0c
	ret nz                                           ; $5088: $c0

	ret nz                                           ; $5089: $c0

	inc c                                            ; $508a: $0c
	ret nz                                           ; $508b: $c0

	ret nz                                           ; $508c: $c0

	inc c                                            ; $508d: $0c
	nop                                              ; $508e: $00
	ld a, [bc]                                       ; $508f: $0a
	ld c, $12                                        ; $5090: $0e $12
	ld d, $18                                        ; $5092: $16 $18
	ld a, [de]                                       ; $5094: $1a
	inc e                                            ; $5095: $1c
	db $fc                                           ; $5096: $fc
	ldh a, [$0c]                                     ; $5097: $f0 $0c
	ret nz                                           ; $5099: $c0

	ret nz                                           ; $509a: $c0

	inc c                                            ; $509b: $0c
	ret nz                                           ; $509c: $c0

	ret nz                                           ; $509d: $c0

	inc c                                            ; $509e: $0c
	ret nz                                           ; $509f: $c0

	ret nz                                           ; $50a0: $c0

	inc c                                            ; $50a1: $0c
	nop                                              ; $50a2: $00
	ld a, [bc]                                       ; $50a3: $0a
	ld c, $12                                        ; $50a4: $0e $12
	ld d, $18                                        ; $50a6: $16 $18
	ld a, [de]                                       ; $50a8: $1a
	inc e                                            ; $50a9: $1c
	db $fc                                           ; $50aa: $fc
	ldh a, [$0c]                                     ; $50ab: $f0 $0c
	ret nz                                           ; $50ad: $c0

	ret nz                                           ; $50ae: $c0

	inc c                                            ; $50af: $0c
	ret nz                                           ; $50b0: $c0

	ret nz                                           ; $50b1: $c0

	inc c                                            ; $50b2: $0c
	ret nz                                           ; $50b3: $c0

	ret nz                                           ; $50b4: $c0

	inc c                                            ; $50b5: $0c
	nop                                              ; $50b6: $00
	ld a, [bc]                                       ; $50b7: $0a
	ld c, $12                                        ; $50b8: $0e $12
	ld d, $18                                        ; $50ba: $16 $18
	ld a, [de]                                       ; $50bc: $1a
	inc e                                            ; $50bd: $1c
	nop                                              ; $50be: $00
	ld de, $0000                                     ; $50bf: $11 $00 $00
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	nop                                              ; $50c4: $00
	nop                                              ; $50c5: $00
	nop                                              ; $50c6: $00
	nop                                              ; $50c7: $00
	nop                                              ; $50c8: $00
	nop                                              ; $50c9: $00
	db $fc                                           ; $50ca: $fc
	ldh a, [$0c]                                     ; $50cb: $f0 $0c
	ret nz                                           ; $50cd: $c0

	ret nz                                           ; $50ce: $c0

	inc c                                            ; $50cf: $0c
	ret nz                                           ; $50d0: $c0

	ret nz                                           ; $50d1: $c0

	inc c                                            ; $50d2: $0c
	ret nz                                           ; $50d3: $c0

	ret nz                                           ; $50d4: $c0

	inc c                                            ; $50d5: $0c
	nop                                              ; $50d6: $00
	ld a, [bc]                                       ; $50d7: $0a
	ld c, $12                                        ; $50d8: $0e $12
	ld d, $18                                        ; $50da: $16 $18
	ld a, [de]                                       ; $50dc: $1a
	inc e                                            ; $50dd: $1c
	db $fc                                           ; $50de: $fc
	ldh a, [$0c]                                     ; $50df: $f0 $0c
	ret nz                                           ; $50e1: $c0

	ret nz                                           ; $50e2: $c0

	inc c                                            ; $50e3: $0c
	ret nz                                           ; $50e4: $c0

	ret nz                                           ; $50e5: $c0

	inc c                                            ; $50e6: $0c
	ret nz                                           ; $50e7: $c0

	ret nz                                           ; $50e8: $c0

	inc c                                            ; $50e9: $0c
	nop                                              ; $50ea: $00
	ld a, [bc]                                       ; $50eb: $0a
	ld c, $12                                        ; $50ec: $0e $12
	ld d, $18                                        ; $50ee: $16 $18
	ld a, [de]                                       ; $50f0: $1a
	inc e                                            ; $50f1: $1c
	db $fc                                           ; $50f2: $fc
	ldh a, [$0c]                                     ; $50f3: $f0 $0c
	ret nz                                           ; $50f5: $c0

	ret nz                                           ; $50f6: $c0

	inc c                                            ; $50f7: $0c
	ret nz                                           ; $50f8: $c0

	ret nz                                           ; $50f9: $c0

	inc c                                            ; $50fa: $0c
	ret nz                                           ; $50fb: $c0

	ret nz                                           ; $50fc: $c0

	inc c                                            ; $50fd: $0c
	nop                                              ; $50fe: $00
	ld a, [bc]                                       ; $50ff: $0a
	ld c, $12                                        ; $5100: $0e $12
	ld d, $18                                        ; $5102: $16 $18
	ld a, [de]                                       ; $5104: $1a
	inc e                                            ; $5105: $1c
	db $fc                                           ; $5106: $fc
	ldh a, [$0c]                                     ; $5107: $f0 $0c
	ret nz                                           ; $5109: $c0

	ret nz                                           ; $510a: $c0

	inc c                                            ; $510b: $0c
	ret nz                                           ; $510c: $c0

	ret nz                                           ; $510d: $c0

	inc c                                            ; $510e: $0c
	ret nz                                           ; $510f: $c0

	ret nz                                           ; $5110: $c0

	inc c                                            ; $5111: $0c
	nop                                              ; $5112: $00
	ld a, [bc]                                       ; $5113: $0a
	ld c, $12                                        ; $5114: $0e $12
	ld d, $18                                        ; $5116: $16 $18
	ld a, [de]                                       ; $5118: $1a
	inc e                                            ; $5119: $1c
	db $fc                                           ; $511a: $fc
	ldh a, [$0c]                                     ; $511b: $f0 $0c
	ret nz                                           ; $511d: $c0

	ret nz                                           ; $511e: $c0

	inc c                                            ; $511f: $0c
	call z, $0cc0                                    ; $5120: $cc $c0 $0c
	ret nz                                           ; $5123: $c0

	ret nz                                           ; $5124: $c0

	inc c                                            ; $5125: $0c
	nop                                              ; $5126: $00
	ld a, [bc]                                       ; $5127: $0a
	ld c, $14                                        ; $5128: $0e $14
	jr jr_02b_5146                                   ; $512a: $18 $1a

	inc e                                            ; $512c: $1c
	ld e, $00                                        ; $512d: $1e $00
	nop                                              ; $512f: $00
	nop                                              ; $5130: $00
	nop                                              ; $5131: $00
	nop                                              ; $5132: $00
	nop                                              ; $5133: $00
	nop                                              ; $5134: $00
	nop                                              ; $5135: $00
	nop                                              ; $5136: $00
	nop                                              ; $5137: $00
	nop                                              ; $5138: $00
	nop                                              ; $5139: $00
	db $fc                                           ; $513a: $fc
	ldh a, [$0c]                                     ; $513b: $f0 $0c
	nop                                              ; $513d: $00
	nop                                              ; $513e: $00
	inc c                                            ; $513f: $0c
	nop                                              ; $5140: $00
	nop                                              ; $5141: $00
	inc c                                            ; $5142: $0c
	nop                                              ; $5143: $00
	nop                                              ; $5144: $00
	inc c                                            ; $5145: $0c

jr_02b_5146:
	nop                                              ; $5146: $00
	ld a, [bc]                                       ; $5147: $0a
	ld a, [bc]                                       ; $5148: $0a
	ld a, [bc]                                       ; $5149: $0a
	ld a, [bc]                                       ; $514a: $0a
	inc c                                            ; $514b: $0c
	ld c, $10                                        ; $514c: $0e $10
	nop                                              ; $514e: $00
	nop                                              ; $514f: $00
	nop                                              ; $5150: $00
	nop                                              ; $5151: $00
	nop                                              ; $5152: $00
	nop                                              ; $5153: $00
	nop                                              ; $5154: $00
	nop                                              ; $5155: $00
	nop                                              ; $5156: $00
	nop                                              ; $5157: $00
	nop                                              ; $5158: $00
	nop                                              ; $5159: $00
	db $fc                                           ; $515a: $fc
	ldh a, [$0c]                                     ; $515b: $f0 $0c
	ret nz                                           ; $515d: $c0

	ret nz                                           ; $515e: $c0

	inc c                                            ; $515f: $0c
	ret nz                                           ; $5160: $c0

	ret nz                                           ; $5161: $c0

	inc c                                            ; $5162: $0c
	ret nz                                           ; $5163: $c0

	ret nz                                           ; $5164: $c0

	inc c                                            ; $5165: $0c
	nop                                              ; $5166: $00
	ld a, [bc]                                       ; $5167: $0a
	ld c, $12                                        ; $5168: $0e $12
	ld d, $18                                        ; $516a: $16 $18
	ld a, [de]                                       ; $516c: $1a
	inc e                                            ; $516d: $1c
	db $fc                                           ; $516e: $fc
	ldh a, [$0c]                                     ; $516f: $f0 $0c
	ret nz                                           ; $5171: $c0

	ret nz                                           ; $5172: $c0

	inc c                                            ; $5173: $0c
	ret nz                                           ; $5174: $c0

	ret nz                                           ; $5175: $c0

	inc c                                            ; $5176: $0c
	ret nz                                           ; $5177: $c0

	ret nz                                           ; $5178: $c0

	inc c                                            ; $5179: $0c
	nop                                              ; $517a: $00
	ld a, [bc]                                       ; $517b: $0a
	ld c, $12                                        ; $517c: $0e $12
	ld d, $18                                        ; $517e: $16 $18
	ld a, [de]                                       ; $5180: $1a
	inc e                                            ; $5181: $1c
	db $fc                                           ; $5182: $fc
	ldh a, [$0c]                                     ; $5183: $f0 $0c
	ret nz                                           ; $5185: $c0

	ret nz                                           ; $5186: $c0

	inc c                                            ; $5187: $0c
	ret nz                                           ; $5188: $c0

	ret nz                                           ; $5189: $c0

	inc c                                            ; $518a: $0c
	ret nz                                           ; $518b: $c0

	ret nz                                           ; $518c: $c0

	inc c                                            ; $518d: $0c
	nop                                              ; $518e: $00
	ld a, [bc]                                       ; $518f: $0a
	ld c, $12                                        ; $5190: $0e $12
	ld d, $18                                        ; $5192: $16 $18
	ld a, [de]                                       ; $5194: $1a
	inc e                                            ; $5195: $1c
	db $fc                                           ; $5196: $fc
	ldh a, [$0c]                                     ; $5197: $f0 $0c
	ret nz                                           ; $5199: $c0

	ret nz                                           ; $519a: $c0

	inc c                                            ; $519b: $0c
	ret nz                                           ; $519c: $c0

	ret nz                                           ; $519d: $c0

	inc c                                            ; $519e: $0c
	ret nz                                           ; $519f: $c0

	ret nz                                           ; $51a0: $c0

	inc c                                            ; $51a1: $0c
	nop                                              ; $51a2: $00
	ld a, [bc]                                       ; $51a3: $0a
	ld c, $12                                        ; $51a4: $0e $12
	ld d, $18                                        ; $51a6: $16 $18
	ld a, [de]                                       ; $51a8: $1a
	inc e                                            ; $51a9: $1c
	db $fc                                           ; $51aa: $fc
	ldh a, [$0c]                                     ; $51ab: $f0 $0c
	ret nz                                           ; $51ad: $c0

	ret nz                                           ; $51ae: $c0

	inc c                                            ; $51af: $0c
	ret nz                                           ; $51b0: $c0

	ret nz                                           ; $51b1: $c0

	inc c                                            ; $51b2: $0c
	ret nz                                           ; $51b3: $c0

	ret nz                                           ; $51b4: $c0

	inc c                                            ; $51b5: $0c
	nop                                              ; $51b6: $00
	ld a, [bc]                                       ; $51b7: $0a
	ld c, $12                                        ; $51b8: $0e $12
	ld d, $18                                        ; $51ba: $16 $18
	ld a, [de]                                       ; $51bc: $1a
	inc e                                            ; $51bd: $1c
	nop                                              ; $51be: $00
	inc sp                                           ; $51bf: $33
	nop                                              ; $51c0: $00
	inc sp                                           ; $51c1: $33
	nop                                              ; $51c2: $00
	inc sp                                           ; $51c3: $33
	nop                                              ; $51c4: $00
	nop                                              ; $51c5: $00
	nop                                              ; $51c6: $00
	nop                                              ; $51c7: $00
	inc sp                                           ; $51c8: $33
	nop                                              ; $51c9: $00
	db $fc                                           ; $51ca: $fc
	ldh a, [$0c]                                     ; $51cb: $f0 $0c
	ret nz                                           ; $51cd: $c0

	ret nz                                           ; $51ce: $c0

	inc c                                            ; $51cf: $0c
	ret nz                                           ; $51d0: $c0

	ret nz                                           ; $51d1: $c0

	inc c                                            ; $51d2: $0c
	ret nz                                           ; $51d3: $c0

	ret nz                                           ; $51d4: $c0

	inc c                                            ; $51d5: $0c
	nop                                              ; $51d6: $00
	ld a, [bc]                                       ; $51d7: $0a
	ld c, $12                                        ; $51d8: $0e $12
	ld d, $18                                        ; $51da: $16 $18
	ld a, [de]                                       ; $51dc: $1a
	inc e                                            ; $51dd: $1c
	db $fc                                           ; $51de: $fc
	ldh a, [$0c]                                     ; $51df: $f0 $0c
	ret nz                                           ; $51e1: $c0

	ret nz                                           ; $51e2: $c0

	inc c                                            ; $51e3: $0c
	ret nz                                           ; $51e4: $c0

	ret nz                                           ; $51e5: $c0

	inc c                                            ; $51e6: $0c
	ret nz                                           ; $51e7: $c0

	ret nz                                           ; $51e8: $c0

	inc c                                            ; $51e9: $0c
	nop                                              ; $51ea: $00
	ld a, [bc]                                       ; $51eb: $0a
	ld c, $12                                        ; $51ec: $0e $12
	ld d, $18                                        ; $51ee: $16 $18
	ld a, [de]                                       ; $51f0: $1a
	inc e                                            ; $51f1: $1c
	db $fc                                           ; $51f2: $fc
	ldh a, [$0c]                                     ; $51f3: $f0 $0c
	ret nz                                           ; $51f5: $c0

	ret nz                                           ; $51f6: $c0

	inc c                                            ; $51f7: $0c
	ret nz                                           ; $51f8: $c0

	ret nz                                           ; $51f9: $c0

	inc c                                            ; $51fa: $0c
	ret nz                                           ; $51fb: $c0

	ret nz                                           ; $51fc: $c0

	inc c                                            ; $51fd: $0c
	nop                                              ; $51fe: $00
	ld a, [bc]                                       ; $51ff: $0a
	ld c, $12                                        ; $5200: $0e $12
	ld d, $18                                        ; $5202: $16 $18
	ld a, [de]                                       ; $5204: $1a
	inc e                                            ; $5205: $1c
	db $fc                                           ; $5206: $fc
	ldh a, [$0c]                                     ; $5207: $f0 $0c
	ret nz                                           ; $5209: $c0

	ret nz                                           ; $520a: $c0

	inc c                                            ; $520b: $0c
	ret nz                                           ; $520c: $c0

	ret nz                                           ; $520d: $c0

	inc c                                            ; $520e: $0c
	ret nz                                           ; $520f: $c0

	ret nz                                           ; $5210: $c0

	inc c                                            ; $5211: $0c
	nop                                              ; $5212: $00
	ld a, [bc]                                       ; $5213: $0a
	ld c, $12                                        ; $5214: $0e $12
	ld d, $18                                        ; $5216: $16 $18
	ld a, [de]                                       ; $5218: $1a
	inc e                                            ; $5219: $1c
	db $fc                                           ; $521a: $fc
	ldh a, [$0c]                                     ; $521b: $f0 $0c
	ret nz                                           ; $521d: $c0

	ret nz                                           ; $521e: $c0

	inc c                                            ; $521f: $0c
	ret nz                                           ; $5220: $c0

	ret nz                                           ; $5221: $c0

	inc c                                            ; $5222: $0c
	ret nz                                           ; $5223: $c0

	ret nz                                           ; $5224: $c0

	inc c                                            ; $5225: $0c
	nop                                              ; $5226: $00
	ld a, [bc]                                       ; $5227: $0a
	ld c, $12                                        ; $5228: $0e $12
	ld d, $18                                        ; $522a: $16 $18
	ld a, [de]                                       ; $522c: $1a
	inc e                                            ; $522d: $1c
	nop                                              ; $522e: $00
	nop                                              ; $522f: $00
	nop                                              ; $5230: $00
	nop                                              ; $5231: $00
	nop                                              ; $5232: $00
	nop                                              ; $5233: $00
	nop                                              ; $5234: $00
	nop                                              ; $5235: $00
	nop                                              ; $5236: $00
	nop                                              ; $5237: $00
	nop                                              ; $5238: $00
	nop                                              ; $5239: $00
	rst $38                                          ; $523a: $ff
	rst GetHLinHL                                          ; $523b: $cf
	inc c                                            ; $523c: $0c
	call z, $0ccc                                    ; $523d: $cc $cc $0c
	call z, $0ccc                                    ; $5240: $cc $cc $0c
	call z, $0ccc                                    ; $5243: $cc $cc $0c
	nop                                              ; $5246: $00
	ld c, $16                                        ; $5247: $0e $16
	ld e, $26                                        ; $5249: $1e $26
	jr z, jr_02b_5277                                ; $524b: $28 $2a

	inc l                                            ; $524d: $2c
	rst $38                                          ; $524e: $ff
	rst GetHLinHL                                          ; $524f: $cf
	inc c                                            ; $5250: $0c
	call z, $0ccc                                    ; $5251: $cc $cc $0c
	call z, $08cc                                    ; $5254: $cc $cc $08
	call z, $0ccc                                    ; $5257: $cc $cc $0c
	nop                                              ; $525a: $00
	ld c, $16                                        ; $525b: $0e $16
	ld e, $26                                        ; $525d: $1e $26
	jr z, jr_02b_528b                                ; $525f: $28 $2a

	dec hl                                           ; $5261: $2b
	rst $38                                          ; $5262: $ff
	rst GetHLinHL                                          ; $5263: $cf
	inc c                                            ; $5264: $0c
	call z, $0ccc                                    ; $5265: $cc $cc $0c
	call z, $0ccc                                    ; $5268: $cc $cc $0c
	call z, $0ccc                                    ; $526b: $cc $cc $0c
	nop                                              ; $526e: $00
	ld c, $16                                        ; $526f: $0e $16
	ld e, $26                                        ; $5271: $1e $26
	jr z, jr_02b_529f                                ; $5273: $28 $2a

	inc l                                            ; $5275: $2c
	rst $38                                          ; $5276: $ff

jr_02b_5277:
	rst GetHLinHL                                          ; $5277: $cf
	inc c                                            ; $5278: $0c
	call z, $0ccc                                    ; $5279: $cc $cc $0c
	call z, $0ccc                                    ; $527c: $cc $cc $0c
	call z, $0ccc                                    ; $527f: $cc $cc $0c
	nop                                              ; $5282: $00
	ld c, $16                                        ; $5283: $0e $16
	ld e, $26                                        ; $5285: $1e $26
	jr z, jr_02b_52b3                                ; $5287: $28 $2a

	inc l                                            ; $5289: $2c
	rst $38                                          ; $528a: $ff

jr_02b_528b:
	rst GetHLinHL                                          ; $528b: $cf
	inc c                                            ; $528c: $0c
	call z, $0ccc                                    ; $528d: $cc $cc $0c
	call z, $0ccc                                    ; $5290: $cc $cc $0c
	call z, $0ccc                                    ; $5293: $cc $cc $0c
	nop                                              ; $5296: $00
	ld c, $16                                        ; $5297: $0e $16
	ld e, $26                                        ; $5299: $1e $26
	jr z, jr_02b_52c7                                ; $529b: $28 $2a

	inc l                                            ; $529d: $2c
	nop                                              ; $529e: $00

jr_02b_529f:
	ld de, $0000                                     ; $529f: $11 $00 $00
	nop                                              ; $52a2: $00
	nop                                              ; $52a3: $00
	nop                                              ; $52a4: $00
	nop                                              ; $52a5: $00
	nop                                              ; $52a6: $00
	nop                                              ; $52a7: $00
	nop                                              ; $52a8: $00
	nop                                              ; $52a9: $00
	db $fc                                           ; $52aa: $fc
	rst $38                                          ; $52ab: $ff
	inc c                                            ; $52ac: $0c
	call z, $0ccc                                    ; $52ad: $cc $cc $0c
	call z, $0ccc                                    ; $52b0: $cc $cc $0c

jr_02b_52b3:
	call z, $0ccc                                    ; $52b3: $cc $cc $0c
	nop                                              ; $52b6: $00
	ld c, $16                                        ; $52b7: $0e $16
	ld e, $26                                        ; $52b9: $1e $26
	jr z, jr_02b_52e7                                ; $52bb: $28 $2a

	inc l                                            ; $52bd: $2c
	nop                                              ; $52be: $00
	nop                                              ; $52bf: $00
	nop                                              ; $52c0: $00
	ld b, h                                          ; $52c1: $44
	nop                                              ; $52c2: $00
	nop                                              ; $52c3: $00
	nop                                              ; $52c4: $00
	ld h, [hl]                                       ; $52c5: $66
	nop                                              ; $52c6: $00

jr_02b_52c7:
	nop                                              ; $52c7: $00
	ld b, h                                          ; $52c8: $44
	nop                                              ; $52c9: $00
	db $fc                                           ; $52ca: $fc
	ldh a, [$0c]                                     ; $52cb: $f0 $0c
	nop                                              ; $52cd: $00
	nop                                              ; $52ce: $00
	inc c                                            ; $52cf: $0c
	nop                                              ; $52d0: $00
	nop                                              ; $52d1: $00
	inc c                                            ; $52d2: $0c
	nop                                              ; $52d3: $00
	nop                                              ; $52d4: $00
	inc c                                            ; $52d5: $0c
	nop                                              ; $52d6: $00
	ld a, [bc]                                       ; $52d7: $0a
	ld a, [bc]                                       ; $52d8: $0a
	ld a, [bc]                                       ; $52d9: $0a
	ld a, [bc]                                       ; $52da: $0a
	inc c                                            ; $52db: $0c
	ld c, $10                                        ; $52dc: $0e $10
	nop                                              ; $52de: $00
	ld de, $0000                                     ; $52df: $11 $00 $00
	nop                                              ; $52e2: $00
	ld de, $0000                                     ; $52e3: $11 $00 $00
	nop                                              ; $52e6: $00

jr_02b_52e7:
	nop                                              ; $52e7: $00
	nop                                              ; $52e8: $00
	nop                                              ; $52e9: $00
	rst $38                                          ; $52ea: $ff
	rst GetHLinHL                                          ; $52eb: $cf
	db $fc                                           ; $52ec: $fc
	nop                                              ; $52ed: $00
	rrca                                             ; $52ee: $0f
	db $fc                                           ; $52ef: $fc
	nop                                              ; $52f0: $00
	rrca                                             ; $52f1: $0f
	db $fc                                           ; $52f2: $fc
	nop                                              ; $52f3: $00
	rrca                                             ; $52f4: $0f
	db $fc                                           ; $52f5: $fc
	nop                                              ; $52f6: $00
	ld [de], a                                       ; $52f7: $12
	ld a, [de]                                       ; $52f8: $1a
	ld [hl+], a                                      ; $52f9: $22
	ld a, [hl+]                                      ; $52fa: $2a
	inc l                                            ; $52fb: $2c
	ld l, $30                                        ; $52fc: $2e $30
	rst $38                                          ; $52fe: $ff
	rst GetHLinHL                                          ; $52ff: $cf
	db $fc                                           ; $5300: $fc
	nop                                              ; $5301: $00
	rst GetHLinHL                                          ; $5302: $cf
	db $fc                                           ; $5303: $fc
	nop                                              ; $5304: $00
	rst GetHLinHL                                          ; $5305: $cf
	db $fc                                           ; $5306: $fc
	nop                                              ; $5307: $00
	rst GetHLinHL                                          ; $5308: $cf
	db $fc                                           ; $5309: $fc
	nop                                              ; $530a: $00
	ld [de], a                                       ; $530b: $12
	inc e                                            ; $530c: $1c
	ld h, $30                                        ; $530d: $26 $30
	ld [hl-], a                                      ; $530f: $32
	inc [hl]                                         ; $5310: $34
	ld [hl], $ff                                     ; $5311: $36 $ff
	rst GetHLinHL                                          ; $5313: $cf
	db $fc                                           ; $5314: $fc
	nop                                              ; $5315: $00
	rrca                                             ; $5316: $0f
	db $fc                                           ; $5317: $fc
	nop                                              ; $5318: $00
	rrca                                             ; $5319: $0f
	db $fc                                           ; $531a: $fc
	nop                                              ; $531b: $00
	rrca                                             ; $531c: $0f
	db $fc                                           ; $531d: $fc
	nop                                              ; $531e: $00
	ld [de], a                                       ; $531f: $12
	ld a, [de]                                       ; $5320: $1a
	ld [hl+], a                                      ; $5321: $22
	ld a, [hl+]                                      ; $5322: $2a
	inc l                                            ; $5323: $2c
	ld l, $30                                        ; $5324: $2e $30
	rst $38                                          ; $5326: $ff
	rst GetHLinHL                                          ; $5327: $cf
	db $fc                                           ; $5328: $fc
	nop                                              ; $5329: $00
	rrca                                             ; $532a: $0f
	db $fc                                           ; $532b: $fc
	nop                                              ; $532c: $00
	rrca                                             ; $532d: $0f
	db $fc                                           ; $532e: $fc
	nop                                              ; $532f: $00
	rrca                                             ; $5330: $0f
	db $fc                                           ; $5331: $fc
	nop                                              ; $5332: $00
	ld [de], a                                       ; $5333: $12
	ld a, [de]                                       ; $5334: $1a
	ld [hl+], a                                      ; $5335: $22
	ld a, [hl+]                                      ; $5336: $2a
	inc l                                            ; $5337: $2c
	ld l, $30                                        ; $5338: $2e $30
	rst $38                                          ; $533a: $ff
	rst GetHLinHL                                          ; $533b: $cf
	db $fc                                           ; $533c: $fc
	nop                                              ; $533d: $00
	rst GetHLinHL                                          ; $533e: $cf
	db $fc                                           ; $533f: $fc
	nop                                              ; $5340: $00
	rst GetHLinHL                                          ; $5341: $cf
	db $fc                                           ; $5342: $fc
	nop                                              ; $5343: $00
	rst GetHLinHL                                          ; $5344: $cf
	db $fc                                           ; $5345: $fc
	nop                                              ; $5346: $00
	ld [de], a                                       ; $5347: $12
	inc e                                            ; $5348: $1c
	ld h, $30                                        ; $5349: $26 $30
	ld [hl-], a                                      ; $534b: $32
	inc [hl]                                         ; $534c: $34
	ld [hl], $ff                                     ; $534d: $36 $ff
	rst GetHLinHL                                          ; $534f: $cf
	db $fc                                           ; $5350: $fc
	nop                                              ; $5351: $00
	rrca                                             ; $5352: $0f
	db $fc                                           ; $5353: $fc
	nop                                              ; $5354: $00
	rrca                                             ; $5355: $0f
	db $fc                                           ; $5356: $fc
	nop                                              ; $5357: $00
	rrca                                             ; $5358: $0f
	db $fc                                           ; $5359: $fc
	nop                                              ; $535a: $00
	ld [de], a                                       ; $535b: $12
	ld a, [de]                                       ; $535c: $1a
	ld [hl+], a                                      ; $535d: $22
	ld a, [hl+]                                      ; $535e: $2a
	inc l                                            ; $535f: $2c
	ld l, $30                                        ; $5360: $2e $30
	nop                                              ; $5362: $00
	ld [$1101], sp                                   ; $5363: $08 $01 $11
	ld bc, $0111                                     ; $5366: $01 $11 $01
	ld de, $1801                                     ; $5369: $11 $01 $18
	ld de, $ff00                                     ; $536c: $11 $00 $ff
	rst GetHLinHL                                          ; $536f: $cf
	db $fc                                           ; $5370: $fc
	nop                                              ; $5371: $00
	inc c                                            ; $5372: $0c
	call z, $0c00                                    ; $5373: $cc $00 $0c
	call z, $0c00                                    ; $5376: $cc $00 $0c
	call z, $1200                                    ; $5379: $cc $00 $12
	ld d, $1a                                        ; $537c: $16 $1a
	ld e, $20                                        ; $537e: $1e $20
	ld [hl+], a                                      ; $5380: $22
	inc h                                            ; $5381: $24
	rst $38                                          ; $5382: $ff
	rst GetHLinHL                                          ; $5383: $cf
	db $fc                                           ; $5384: $fc
	nop                                              ; $5385: $00
	inc c                                            ; $5386: $0c
	call z, $0c00                                    ; $5387: $cc $00 $0c
	call z, $0c00                                    ; $538a: $cc $00 $0c
	call z, $1200                                    ; $538d: $cc $00 $12
	ld d, $1a                                        ; $5390: $16 $1a
	ld e, $20                                        ; $5392: $1e $20
	ld [hl+], a                                      ; $5394: $22
	inc h                                            ; $5395: $24
	rst $38                                          ; $5396: $ff
	rst GetHLinHL                                          ; $5397: $cf
	db $fc                                           ; $5398: $fc
	nop                                              ; $5399: $00
	inc c                                            ; $539a: $0c
	call z, $0c00                                    ; $539b: $cc $00 $0c
	call z, $0c00                                    ; $539e: $cc $00 $0c
	call z, $1200                                    ; $53a1: $cc $00 $12
	ld d, $1a                                        ; $53a4: $16 $1a
	ld e, $20                                        ; $53a6: $1e $20
	ld [hl+], a                                      ; $53a8: $22
	inc h                                            ; $53a9: $24
	rst $38                                          ; $53aa: $ff
	rst GetHLinHL                                          ; $53ab: $cf
	db $fc                                           ; $53ac: $fc
	nop                                              ; $53ad: $00
	inc c                                            ; $53ae: $0c
	call z, $0c00                                    ; $53af: $cc $00 $0c
	call z, $0c00                                    ; $53b2: $cc $00 $0c
	call z, $1200                                    ; $53b5: $cc $00 $12
	ld d, $1a                                        ; $53b8: $16 $1a
	ld e, $20                                        ; $53ba: $1e $20
	ld [hl+], a                                      ; $53bc: $22
	inc h                                            ; $53bd: $24
	rst $38                                          ; $53be: $ff
	rst GetHLinHL                                          ; $53bf: $cf
	db $fc                                           ; $53c0: $fc
	nop                                              ; $53c1: $00
	inc c                                            ; $53c2: $0c
	call z, $0c00                                    ; $53c3: $cc $00 $0c
	call z, $0c00                                    ; $53c6: $cc $00 $0c
	call z, $1200                                    ; $53c9: $cc $00 $12
	ld d, $1a                                        ; $53cc: $16 $1a
	ld e, $20                                        ; $53ce: $1e $20
	ld [hl+], a                                      ; $53d0: $22
	inc h                                            ; $53d1: $24
	rst $38                                          ; $53d2: $ff
	rst GetHLinHL                                          ; $53d3: $cf
	db $fc                                           ; $53d4: $fc
	nop                                              ; $53d5: $00
	inc c                                            ; $53d6: $0c
	call z, $0c00                                    ; $53d7: $cc $00 $0c
	call z, $0c00                                    ; $53da: $cc $00 $0c
	call z, $1200                                    ; $53dd: $cc $00 $12
	ld d, $1a                                        ; $53e0: $16 $1a
	ld e, $20                                        ; $53e2: $1e $20
	ld [hl+], a                                      ; $53e4: $22
	inc h                                            ; $53e5: $24
	adc b                                            ; $53e6: $88
	sbc c                                            ; $53e7: $99
	ld de, $1111                                     ; $53e8: $11 $11 $11
	ld de, $1111                                     ; $53eb: $11 $11 $11
	ld de, $1100                                     ; $53ee: $11 $00 $11
	nop                                              ; $53f1: $00
	rst $38                                          ; $53f2: $ff
	rst GetHLinHL                                          ; $53f3: $cf
	db $fc                                           ; $53f4: $fc
	nop                                              ; $53f5: $00
	rst GetHLinHL                                          ; $53f6: $cf
	db $fc                                           ; $53f7: $fc
	nop                                              ; $53f8: $00
	rst GetHLinHL                                          ; $53f9: $cf
	db $fc                                           ; $53fa: $fc
	nop                                              ; $53fb: $00
	rst GetHLinHL                                          ; $53fc: $cf
	db $fc                                           ; $53fd: $fc
	nop                                              ; $53fe: $00
	ld [de], a                                       ; $53ff: $12
	inc e                                            ; $5400: $1c
	ld h, $30                                        ; $5401: $26 $30
	ld [hl-], a                                      ; $5403: $32
	inc [hl]                                         ; $5404: $34
	ld [hl], $ff                                     ; $5405: $36 $ff
	rst GetHLinHL                                          ; $5407: $cf
	db $fc                                           ; $5408: $fc
	nop                                              ; $5409: $00
	rst GetHLinHL                                          ; $540a: $cf
	db $fc                                           ; $540b: $fc
	nop                                              ; $540c: $00
	rst GetHLinHL                                          ; $540d: $cf
	db $fc                                           ; $540e: $fc
	nop                                              ; $540f: $00
	rst GetHLinHL                                          ; $5410: $cf
	db $fc                                           ; $5411: $fc
	nop                                              ; $5412: $00
	ld [de], a                                       ; $5413: $12
	inc e                                            ; $5414: $1c
	ld h, $30                                        ; $5415: $26 $30
	ld [hl-], a                                      ; $5417: $32
	inc [hl]                                         ; $5418: $34
	ld [hl], $ff                                     ; $5419: $36 $ff
	rst GetHLinHL                                          ; $541b: $cf
	db $fc                                           ; $541c: $fc
	nop                                              ; $541d: $00
	rst GetHLinHL                                          ; $541e: $cf
	db $fc                                           ; $541f: $fc
	nop                                              ; $5420: $00
	rst GetHLinHL                                          ; $5421: $cf
	db $fc                                           ; $5422: $fc
	nop                                              ; $5423: $00
	rst GetHLinHL                                          ; $5424: $cf
	db $fc                                           ; $5425: $fc
	nop                                              ; $5426: $00
	ld [de], a                                       ; $5427: $12
	inc e                                            ; $5428: $1c
	ld h, $30                                        ; $5429: $26 $30
	ld [hl-], a                                      ; $542b: $32
	inc [hl]                                         ; $542c: $34
	ld [hl], $ff                                     ; $542d: $36 $ff
	rst GetHLinHL                                          ; $542f: $cf
	db $fc                                           ; $5430: $fc
	nop                                              ; $5431: $00
	rst GetHLinHL                                          ; $5432: $cf
	db $fc                                           ; $5433: $fc
	nop                                              ; $5434: $00
	rst GetHLinHL                                          ; $5435: $cf
	db $fc                                           ; $5436: $fc
	nop                                              ; $5437: $00
	rst GetHLinHL                                          ; $5438: $cf
	db $fc                                           ; $5439: $fc
	nop                                              ; $543a: $00
	ld [de], a                                       ; $543b: $12
	inc e                                            ; $543c: $1c
	ld h, $30                                        ; $543d: $26 $30
	ld [hl-], a                                      ; $543f: $32
	inc [hl]                                         ; $5440: $34
	ld [hl], $ff                                     ; $5441: $36 $ff
	rst GetHLinHL                                          ; $5443: $cf
	db $fc                                           ; $5444: $fc
	nop                                              ; $5445: $00
	rst GetHLinHL                                          ; $5446: $cf
	db $fc                                           ; $5447: $fc
	nop                                              ; $5448: $00
	rst GetHLinHL                                          ; $5449: $cf
	db $fc                                           ; $544a: $fc
	nop                                              ; $544b: $00
	rst GetHLinHL                                          ; $544c: $cf
	db $fc                                           ; $544d: $fc
	nop                                              ; $544e: $00
	ld [de], a                                       ; $544f: $12
	inc e                                            ; $5450: $1c
	ld h, $30                                        ; $5451: $26 $30
	ld [hl-], a                                      ; $5453: $32
	inc [hl]                                         ; $5454: $34
	ld [hl], $00                                     ; $5455: $36 $00
	nop                                              ; $5457: $00
	ld bc, $0111                                     ; $5458: $01 $11 $01
	ld de, $1101                                     ; $545b: $11 $01 $11
	ld bc, $111c                                     ; $545e: $01 $1c $11
	nop                                              ; $5461: $00
	db $fc                                           ; $5462: $fc
	rst $38                                          ; $5463: $ff
	db $fc                                           ; $5464: $fc
	inc c                                            ; $5465: $0c
	db $fc                                           ; $5466: $fc
	inc c                                            ; $5467: $0c
	inc c                                            ; $5468: $0c
	db $fc                                           ; $5469: $fc
	inc c                                            ; $546a: $0c
	inc c                                            ; $546b: $0c
	db $fc                                           ; $546c: $fc
	inc c                                            ; $546d: $0c
	nop                                              ; $546e: $00
	ld [de], a                                       ; $546f: $12
	ld a, [de]                                       ; $5470: $1a
	ld [hl+], a                                      ; $5471: $22
	ld a, [hl+]                                      ; $5472: $2a
	inc l                                            ; $5473: $2c
	ld l, $30                                        ; $5474: $2e $30
	db $fc                                           ; $5476: $fc
	rst $38                                          ; $5477: $ff
	db $fc                                           ; $5478: $fc
	inc c                                            ; $5479: $0c
	db $fc                                           ; $547a: $fc
	inc c                                            ; $547b: $0c
	inc c                                            ; $547c: $0c
	db $fc                                           ; $547d: $fc
	inc c                                            ; $547e: $0c
	inc c                                            ; $547f: $0c
	db $fc                                           ; $5480: $fc
	inc c                                            ; $5481: $0c
	nop                                              ; $5482: $00
	ld [de], a                                       ; $5483: $12
	ld a, [de]                                       ; $5484: $1a
	ld [hl+], a                                      ; $5485: $22
	ld a, [hl+]                                      ; $5486: $2a
	inc l                                            ; $5487: $2c
	ld l, $30                                        ; $5488: $2e $30
	db $fc                                           ; $548a: $fc
	rst $38                                          ; $548b: $ff
	db $fc                                           ; $548c: $fc
	inc c                                            ; $548d: $0c
	db $fc                                           ; $548e: $fc
	inc c                                            ; $548f: $0c
	inc c                                            ; $5490: $0c
	db $fc                                           ; $5491: $fc
	inc c                                            ; $5492: $0c
	inc c                                            ; $5493: $0c
	db $fc                                           ; $5494: $fc
	inc c                                            ; $5495: $0c
	nop                                              ; $5496: $00
	ld [de], a                                       ; $5497: $12
	ld a, [de]                                       ; $5498: $1a
	ld [hl+], a                                      ; $5499: $22
	ld a, [hl+]                                      ; $549a: $2a
	inc l                                            ; $549b: $2c
	ld l, $30                                        ; $549c: $2e $30
	db $fc                                           ; $549e: $fc
	rst $38                                          ; $549f: $ff
	db $fc                                           ; $54a0: $fc
	inc c                                            ; $54a1: $0c
	db $fc                                           ; $54a2: $fc
	inc c                                            ; $54a3: $0c
	inc c                                            ; $54a4: $0c
	db $fc                                           ; $54a5: $fc
	inc c                                            ; $54a6: $0c
	inc c                                            ; $54a7: $0c
	db $fc                                           ; $54a8: $fc
	inc c                                            ; $54a9: $0c
	nop                                              ; $54aa: $00
	ld [de], a                                       ; $54ab: $12
	ld a, [de]                                       ; $54ac: $1a
	ld [hl+], a                                      ; $54ad: $22
	ld a, [hl+]                                      ; $54ae: $2a
	inc l                                            ; $54af: $2c
	ld l, $30                                        ; $54b0: $2e $30
	db $fc                                           ; $54b2: $fc
	rst $38                                          ; $54b3: $ff
	db $fc                                           ; $54b4: $fc
	inc c                                            ; $54b5: $0c
	db $fc                                           ; $54b6: $fc
	inc c                                            ; $54b7: $0c
	inc c                                            ; $54b8: $0c
	db $fc                                           ; $54b9: $fc
	inc c                                            ; $54ba: $0c
	inc c                                            ; $54bb: $0c
	db $fc                                           ; $54bc: $fc
	inc c                                            ; $54bd: $0c
	nop                                              ; $54be: $00
	ld [de], a                                       ; $54bf: $12
	ld a, [de]                                       ; $54c0: $1a
	ld [hl+], a                                      ; $54c1: $22
	ld a, [hl+]                                      ; $54c2: $2a
	inc l                                            ; $54c3: $2c
	ld l, $30                                        ; $54c4: $2e $30
	nop                                              ; $54c6: $00
	db $dd                                           ; $54c7: $dd
	ld de, $11bb                                     ; $54c8: $11 $bb $11
	ld de, $1111                                     ; $54cb: $11 $11 $11
	nop                                              ; $54ce: $00
	ld [$00bb], sp                                   ; $54cf: $08 $bb $00
	rst $38                                          ; $54d2: $ff
	rst GetHLinHL                                          ; $54d3: $cf
	db $fc                                           ; $54d4: $fc
	nop                                              ; $54d5: $00
	rrca                                             ; $54d6: $0f
	db $fc                                           ; $54d7: $fc
	nop                                              ; $54d8: $00
	rrca                                             ; $54d9: $0f
	db $fc                                           ; $54da: $fc
	nop                                              ; $54db: $00
	rrca                                             ; $54dc: $0f
	db $fc                                           ; $54dd: $fc
	nop                                              ; $54de: $00
	ld [de], a                                       ; $54df: $12
	ld a, [de]                                       ; $54e0: $1a
	ld [hl+], a                                      ; $54e1: $22
	ld a, [hl+]                                      ; $54e2: $2a
	inc l                                            ; $54e3: $2c
	ld l, $30                                        ; $54e4: $2e $30
	rst $38                                          ; $54e6: $ff
	rst GetHLinHL                                          ; $54e7: $cf
	db $fc                                           ; $54e8: $fc
	nop                                              ; $54e9: $00
	rrca                                             ; $54ea: $0f
	db $fc                                           ; $54eb: $fc
	nop                                              ; $54ec: $00
	rrca                                             ; $54ed: $0f
	db $fc                                           ; $54ee: $fc
	nop                                              ; $54ef: $00
	rrca                                             ; $54f0: $0f
	db $fc                                           ; $54f1: $fc
	nop                                              ; $54f2: $00
	ld [de], a                                       ; $54f3: $12
	ld a, [de]                                       ; $54f4: $1a
	ld [hl+], a                                      ; $54f5: $22
	ld a, [hl+]                                      ; $54f6: $2a
	inc l                                            ; $54f7: $2c
	ld l, $30                                        ; $54f8: $2e $30
	rst $38                                          ; $54fa: $ff
	rst GetHLinHL                                          ; $54fb: $cf
	db $fc                                           ; $54fc: $fc
	nop                                              ; $54fd: $00
	rrca                                             ; $54fe: $0f
	db $fc                                           ; $54ff: $fc
	nop                                              ; $5500: $00
	rrca                                             ; $5501: $0f
	db $fc                                           ; $5502: $fc
	nop                                              ; $5503: $00
	rrca                                             ; $5504: $0f
	db $fc                                           ; $5505: $fc
	nop                                              ; $5506: $00
	ld [de], a                                       ; $5507: $12
	ld a, [de]                                       ; $5508: $1a
	ld [hl+], a                                      ; $5509: $22
	ld a, [hl+]                                      ; $550a: $2a
	inc l                                            ; $550b: $2c
	ld l, $30                                        ; $550c: $2e $30
	rst $38                                          ; $550e: $ff
	rst GetHLinHL                                          ; $550f: $cf
	db $fc                                           ; $5510: $fc

Call_02b_5511:
	nop                                              ; $5511: $00
	rrca                                             ; $5512: $0f
	db $fc                                           ; $5513: $fc
	nop                                              ; $5514: $00
	rrca                                             ; $5515: $0f
	db $fc                                           ; $5516: $fc
	nop                                              ; $5517: $00
	rrca                                             ; $5518: $0f
	db $fc                                           ; $5519: $fc
	nop                                              ; $551a: $00
	ld [de], a                                       ; $551b: $12
	ld a, [de]                                       ; $551c: $1a
	ld [hl+], a                                      ; $551d: $22
	ld a, [hl+]                                      ; $551e: $2a
	inc l                                            ; $551f: $2c
	ld l, $30                                        ; $5520: $2e $30
	rst $38                                          ; $5522: $ff
	rst GetHLinHL                                          ; $5523: $cf
	db $fc                                           ; $5524: $fc
	nop                                              ; $5525: $00
	rrca                                             ; $5526: $0f
	db $fc                                           ; $5527: $fc
	nop                                              ; $5528: $00
	rrca                                             ; $5529: $0f
	db $fc                                           ; $552a: $fc
	nop                                              ; $552b: $00
	rrca                                             ; $552c: $0f
	db $fc                                           ; $552d: $fc
	nop                                              ; $552e: $00
	ld [de], a                                       ; $552f: $12
	ld a, [de]                                       ; $5530: $1a
	ld [hl+], a                                      ; $5531: $22
	ld a, [hl+]                                      ; $5532: $2a
	inc l                                            ; $5533: $2c
	ld l, $30                                        ; $5534: $2e $30
	xor d                                            ; $5536: $aa
	xor [hl]                                         ; $5537: $ae
	jr nz, jr_02b_553a                               ; $5538: $20 $00

jr_02b_553a:
	jr nz, @+$05                                     ; $553a: $20 $03

	nop                                              ; $553c: $00
	nop                                              ; $553d: $00
	jr nz, jr_02b_5542                               ; $553e: $20 $02

	inc bc                                           ; $5540: $03
	nop                                              ; $5541: $00

jr_02b_5542:
	rst $38                                          ; $5542: $ff
	rst GetHLinHL                                          ; $5543: $cf
	db $fc                                           ; $5544: $fc
	nop                                              ; $5545: $00
	rst GetHLinHL                                          ; $5546: $cf
	inc c                                            ; $5547: $0c
	nop                                              ; $5548: $00
	rst GetHLinHL                                          ; $5549: $cf
	inc c                                            ; $554a: $0c
	nop                                              ; $554b: $00
	rst GetHLinHL                                          ; $554c: $cf
	inc c                                            ; $554d: $0c
	nop                                              ; $554e: $00
	ld [de], a                                       ; $554f: $12
	jr jr_02b_5570                                   ; $5550: $18 $1e

	inc h                                            ; $5552: $24
	ld h, $28                                        ; $5553: $26 $28

Call_02b_5555:
	ld a, [hl+]                                      ; $5555: $2a
	rst $38                                          ; $5556: $ff
	rst GetHLinHL                                          ; $5557: $cf
	db $fc                                           ; $5558: $fc
	nop                                              ; $5559: $00
	rst GetHLinHL                                          ; $555a: $cf
	inc c                                            ; $555b: $0c
	nop                                              ; $555c: $00
	rst GetHLinHL                                          ; $555d: $cf
	inc c                                            ; $555e: $0c
	nop                                              ; $555f: $00
	rst GetHLinHL                                          ; $5560: $cf
	inc c                                            ; $5561: $0c
	nop                                              ; $5562: $00
	ld [de], a                                       ; $5563: $12
	jr jr_02b_5584                                   ; $5564: $18 $1e

	inc h                                            ; $5566: $24
	ld h, $28                                        ; $5567: $26 $28
	ld a, [hl+]                                      ; $5569: $2a
	rst $38                                          ; $556a: $ff
	rst GetHLinHL                                          ; $556b: $cf
	db $fc                                           ; $556c: $fc
	nop                                              ; $556d: $00
	rst GetHLinHL                                          ; $556e: $cf
	inc c                                            ; $556f: $0c

jr_02b_5570:
	nop                                              ; $5570: $00
	rst GetHLinHL                                          ; $5571: $cf
	inc c                                            ; $5572: $0c
	nop                                              ; $5573: $00
	rst GetHLinHL                                          ; $5574: $cf
	inc c                                            ; $5575: $0c
	nop                                              ; $5576: $00
	ld [de], a                                       ; $5577: $12
	jr jr_02b_5598                                   ; $5578: $18 $1e

	inc h                                            ; $557a: $24
	ld h, $28                                        ; $557b: $26 $28
	ld a, [hl+]                                      ; $557d: $2a
	rst $38                                          ; $557e: $ff
	rst GetHLinHL                                          ; $557f: $cf
	db $fc                                           ; $5580: $fc
	nop                                              ; $5581: $00
	rst GetHLinHL                                          ; $5582: $cf
	inc c                                            ; $5583: $0c

jr_02b_5584:
	nop                                              ; $5584: $00
	rst GetHLinHL                                          ; $5585: $cf
	inc c                                            ; $5586: $0c
	nop                                              ; $5587: $00
	rst GetHLinHL                                          ; $5588: $cf
	inc c                                            ; $5589: $0c
	nop                                              ; $558a: $00
	ld [de], a                                       ; $558b: $12
	jr @+$20                                         ; $558c: $18 $1e

	inc h                                            ; $558e: $24
	ld h, $28                                        ; $558f: $26 $28
	ld a, [hl+]                                      ; $5591: $2a
	rst $38                                          ; $5592: $ff
	rst GetHLinHL                                          ; $5593: $cf
	db $fc                                           ; $5594: $fc
	nop                                              ; $5595: $00
	rst GetHLinHL                                          ; $5596: $cf
	inc c                                            ; $5597: $0c

jr_02b_5598:
	nop                                              ; $5598: $00
	rst GetHLinHL                                          ; $5599: $cf
	inc c                                            ; $559a: $0c
	nop                                              ; $559b: $00
	rst GetHLinHL                                          ; $559c: $cf
	inc c                                            ; $559d: $0c
	nop                                              ; $559e: $00
	ld [de], a                                       ; $559f: $12
	jr jr_02b_55c0                                   ; $55a0: $18 $1e

	inc h                                            ; $55a2: $24
	ld h, $28                                        ; $55a3: $26 $28
	ld a, [hl+]                                      ; $55a5: $2a
	nop                                              ; $55a6: $00
	ld [bc], a                                       ; $55a7: $02
	nop                                              ; $55a8: $00
	inc bc                                           ; $55a9: $03
	ld de, $1111                                     ; $55aa: $11 $11 $11
	ld de, $9c89                                     ; $55ad: $11 $89 $9c
	ld de, $ff00                                     ; $55b0: $11 $00 $ff
	rst GetHLinHL                                          ; $55b3: $cf
	db $fc                                           ; $55b4: $fc
	nop                                              ; $55b5: $00
	rst GetHLinHL                                          ; $55b6: $cf
	call z, $cf00                                    ; $55b7: $cc $00 $cf
	call z, $cf00                                    ; $55ba: $cc $00 $cf
	call z, $1200                                    ; $55bd: $cc $00 $12

jr_02b_55c0:
	ld a, [de]                                       ; $55c0: $1a
	ld [hl+], a                                      ; $55c1: $22
	ld a, [hl+]                                      ; $55c2: $2a
	inc l                                            ; $55c3: $2c
	ld l, $30                                        ; $55c4: $2e $30
	rst $38                                          ; $55c6: $ff
	rst GetHLinHL                                          ; $55c7: $cf
	db $fc                                           ; $55c8: $fc
	nop                                              ; $55c9: $00
	rst GetHLinHL                                          ; $55ca: $cf
	call z, $cf00                                    ; $55cb: $cc $00 $cf
	call z, $cf00                                    ; $55ce: $cc $00 $cf
	call z, $1200                                    ; $55d1: $cc $00 $12
	ld a, [de]                                       ; $55d4: $1a
	ld [hl+], a                                      ; $55d5: $22
	ld a, [hl+]                                      ; $55d6: $2a
	inc l                                            ; $55d7: $2c
	ld l, $30                                        ; $55d8: $2e $30
	rst $38                                          ; $55da: $ff
	rst GetHLinHL                                          ; $55db: $cf
	db $fc                                           ; $55dc: $fc
	nop                                              ; $55dd: $00
	rst GetHLinHL                                          ; $55de: $cf
	call z, $cf00                                    ; $55df: $cc $00 $cf
	call z, $cf00                                    ; $55e2: $cc $00 $cf
	call z, $1200                                    ; $55e5: $cc $00 $12
	ld a, [de]                                       ; $55e8: $1a
	ld [hl+], a                                      ; $55e9: $22
	ld a, [hl+]                                      ; $55ea: $2a
	inc l                                            ; $55eb: $2c
	ld l, $30                                        ; $55ec: $2e $30
	rst $38                                          ; $55ee: $ff
	rst GetHLinHL                                          ; $55ef: $cf
	db $fc                                           ; $55f0: $fc
	nop                                              ; $55f1: $00
	rst GetHLinHL                                          ; $55f2: $cf
	call z, $cf00                                    ; $55f3: $cc $00 $cf
	call z, $cf00                                    ; $55f6: $cc $00 $cf
	call z, $1200                                    ; $55f9: $cc $00 $12
	ld a, [de]                                       ; $55fc: $1a
	ld [hl+], a                                      ; $55fd: $22
	ld a, [hl+]                                      ; $55fe: $2a
	inc l                                            ; $55ff: $2c
	ld l, $30                                        ; $5600: $2e $30
	rst $38                                          ; $5602: $ff
	rst GetHLinHL                                          ; $5603: $cf
	db $fc                                           ; $5604: $fc
	nop                                              ; $5605: $00
	rst GetHLinHL                                          ; $5606: $cf
	call z, $cf00                                    ; $5607: $cc $00 $cf
	call z, $cf00                                    ; $560a: $cc $00 $cf
	call z, $1200                                    ; $560d: $cc $00 $12
	ld a, [de]                                       ; $5610: $1a
	ld [hl+], a                                      ; $5611: $22
	ld a, [hl+]                                      ; $5612: $2a
	inc l                                            ; $5613: $2c
	ld l, $30                                        ; $5614: $2e $30
	cpl                                              ; $5616: $2f
	rst $38                                          ; $5617: $ff
	jr nz, jr_02b_561a                               ; $5618: $20 $00

jr_02b_561a:
	nop                                              ; $561a: $00
	inc bc                                           ; $561b: $03
	jr nz, jr_02b_561e                               ; $561c: $20 $00

jr_02b_561e:
	jr nz, jr_02b_562c                               ; $561e: $20 $0c

	inc bc                                           ; $5620: $03
	nop                                              ; $5621: $00
	rst $38                                          ; $5622: $ff
	rst GetHLinHL                                          ; $5623: $cf
	db $fc                                           ; $5624: $fc
	nop                                              ; $5625: $00
	rrca                                             ; $5626: $0f
	db $fc                                           ; $5627: $fc
	nop                                              ; $5628: $00
	rrca                                             ; $5629: $0f
	db $fc                                           ; $562a: $fc
	nop                                              ; $562b: $00

jr_02b_562c:
	rrca                                             ; $562c: $0f
	db $fc                                           ; $562d: $fc
	nop                                              ; $562e: $00
	ld [de], a                                       ; $562f: $12
	ld a, [de]                                       ; $5630: $1a
	ld [hl+], a                                      ; $5631: $22
	ld a, [hl+]                                      ; $5632: $2a
	inc l                                            ; $5633: $2c
	ld l, $30                                        ; $5634: $2e $30
	ld [$008e], sp                                   ; $5636: $08 $8e $00
	inc b                                            ; $5639: $04
	ld bc, $0111                                     ; $563a: $01 $11 $01
	ld de, $1101                                     ; $563d: $11 $01 $11
	ld de, $ff00                                     ; $5640: $11 $00 $ff
	rst GetHLinHL                                          ; $5643: $cf
	db $fc                                           ; $5644: $fc
	nop                                              ; $5645: $00
	rst GetHLinHL                                          ; $5646: $cf
	db $fc                                           ; $5647: $fc
	nop                                              ; $5648: $00
	rst GetHLinHL                                          ; $5649: $cf
	db $fc                                           ; $564a: $fc
	nop                                              ; $564b: $00
	rst GetHLinHL                                          ; $564c: $cf
	db $fc                                           ; $564d: $fc
	nop                                              ; $564e: $00
	ld [de], a                                       ; $564f: $12
	inc e                                            ; $5650: $1c
	ld h, $30                                        ; $5651: $26 $30
	ld [hl-], a                                      ; $5653: $32
	inc [hl]                                         ; $5654: $34
	ld [hl], $ff                                     ; $5655: $36 $ff
	rst GetHLinHL                                          ; $5657: $cf
	db $fc                                           ; $5658: $fc
	nop                                              ; $5659: $00
	rst GetHLinHL                                          ; $565a: $cf
	call z, $cf00                                    ; $565b: $cc $00 $cf
	call z, $cf00                                    ; $565e: $cc $00 $cf
	call z, $1200                                    ; $5661: $cc $00 $12
	ld a, [de]                                       ; $5664: $1a
	ld [hl+], a                                      ; $5665: $22
	ld a, [hl+]                                      ; $5666: $2a
	inc l                                            ; $5667: $2c
	ld l, $30                                        ; $5668: $2e $30
	rst $38                                          ; $566a: $ff
	rst GetHLinHL                                          ; $566b: $cf
	db $fc                                           ; $566c: $fc
	nop                                              ; $566d: $00
	rst GetHLinHL                                          ; $566e: $cf
	call z, $cf00                                    ; $566f: $cc $00 $cf
	call z, $cf00                                    ; $5672: $cc $00 $cf
	call z, $1200                                    ; $5675: $cc $00 $12
	ld a, [de]                                       ; $5678: $1a
	ld [hl+], a                                      ; $5679: $22
	ld a, [hl+]                                      ; $567a: $2a
	inc l                                            ; $567b: $2c
	ld l, $30                                        ; $567c: $2e $30
	rst $38                                          ; $567e: $ff
	rst GetHLinHL                                          ; $567f: $cf
	db $fc                                           ; $5680: $fc
	nop                                              ; $5681: $00
	rst GetHLinHL                                          ; $5682: $cf
	call z, $cf00                                    ; $5683: $cc $00 $cf
	call z, $cf00                                    ; $5686: $cc $00 $cf
	call z, $1200                                    ; $5689: $cc $00 $12
	ld a, [de]                                       ; $568c: $1a
	ld [hl+], a                                      ; $568d: $22
	ld a, [hl+]                                      ; $568e: $2a
	inc l                                            ; $568f: $2c
	ld l, $30                                        ; $5690: $2e $30
	rst $38                                          ; $5692: $ff
	rst GetHLinHL                                          ; $5693: $cf
	db $fc                                           ; $5694: $fc
	nop                                              ; $5695: $00
	rst GetHLinHL                                          ; $5696: $cf
	call z, $cf00                                    ; $5697: $cc $00 $cf
	call z, $cf00                                    ; $569a: $cc $00 $cf
	call z, $1200                                    ; $569d: $cc $00 $12
	ld a, [de]                                       ; $56a0: $1a
	ld [hl+], a                                      ; $56a1: $22
	ld a, [hl+]                                      ; $56a2: $2a
	inc l                                            ; $56a3: $2c
	ld l, $30                                        ; $56a4: $2e $30
	ld [$0089], sp                                   ; $56a6: $08 $89 $00
	ld bc, $1201                                     ; $56a9: $01 $01 $12
	ld bc, $0112                                     ; $56ac: $01 $12 $01
	ld de, $0012                                     ; $56af: $11 $12 $00
	rst $38                                          ; $56b2: $ff
	rst GetHLinHL                                          ; $56b3: $cf
	db $fc                                           ; $56b4: $fc
	nop                                              ; $56b5: $00
	rrca                                             ; $56b6: $0f
	call z, $0f00                                    ; $56b7: $cc $00 $0f
	call z, $0f00                                    ; $56ba: $cc $00 $0f
	call z, $1200                                    ; $56bd: $cc $00 $12
	jr @+$20                                         ; $56c0: $18 $1e

	inc h                                            ; $56c2: $24
	ld h, $28                                        ; $56c3: $26 $28
	ld a, [hl+]                                      ; $56c5: $2a
	rst $38                                          ; $56c6: $ff
	rst GetHLinHL                                          ; $56c7: $cf
	db $fc                                           ; $56c8: $fc
	nop                                              ; $56c9: $00
	rst GetHLinHL                                          ; $56ca: $cf
	call z, $cf00                                    ; $56cb: $cc $00 $cf
	call z, $cf00                                    ; $56ce: $cc $00 $cf
	call z, $1200                                    ; $56d1: $cc $00 $12
	ld a, [de]                                       ; $56d4: $1a
	ld [hl+], a                                      ; $56d5: $22
	ld a, [hl+]                                      ; $56d6: $2a
	inc l                                            ; $56d7: $2c
	ld l, $30                                        ; $56d8: $2e $30
	rst $38                                          ; $56da: $ff
	rst GetHLinHL                                          ; $56db: $cf
	db $fc                                           ; $56dc: $fc
	nop                                              ; $56dd: $00
	rst GetHLinHL                                          ; $56de: $cf
	call z, $cf00                                    ; $56df: $cc $00 $cf
	call z, $cf00                                    ; $56e2: $cc $00 $cf
	call z, $1200                                    ; $56e5: $cc $00 $12
	ld a, [de]                                       ; $56e8: $1a
	ld [hl+], a                                      ; $56e9: $22
	ld a, [hl+]                                      ; $56ea: $2a
	inc l                                            ; $56eb: $2c
	ld l, $30                                        ; $56ec: $2e $30
	rst $38                                          ; $56ee: $ff
	rst GetHLinHL                                          ; $56ef: $cf
	db $fc                                           ; $56f0: $fc
	nop                                              ; $56f1: $00
	rrca                                             ; $56f2: $0f
	call z, $0f00                                    ; $56f3: $cc $00 $0f
	call z, $0f00                                    ; $56f6: $cc $00 $0f
	call z, $1200                                    ; $56f9: $cc $00 $12
	jr @+$20                                         ; $56fc: $18 $1e

	inc h                                            ; $56fe: $24
	ld h, $28                                        ; $56ff: $26 $28
	ld a, [hl+]                                      ; $5701: $2a
	rst $38                                          ; $5702: $ff
	rst GetHLinHL                                          ; $5703: $cf
	db $fc                                           ; $5704: $fc
	nop                                              ; $5705: $00
	rst GetHLinHL                                          ; $5706: $cf
	call z, $cf00                                    ; $5707: $cc $00 $cf
	call z, $cf00                                    ; $570a: $cc $00 $cf
	call z, $1200                                    ; $570d: $cc $00 $12
	ld a, [de]                                       ; $5710: $1a
	ld [hl+], a                                      ; $5711: $22
	ld a, [hl+]                                      ; $5712: $2a
	inc l                                            ; $5713: $2c
	ld l, $30                                        ; $5714: $2e $30
	ld [$018b], sp                                   ; $5716: $08 $8b $01
	db $10                                           ; $5719: $10
	ld bc, $0111                                     ; $571a: $01 $11 $01
	ld de, $1801                                     ; $571d: $11 $01 $18
	ld de, $ff00                                     ; $5720: $11 $00 $ff
	rst GetHLinHL                                          ; $5723: $cf
	db $fc                                           ; $5724: $fc
	nop                                              ; $5725: $00
	rst GetHLinHL                                          ; $5726: $cf
	call z, $cf00                                    ; $5727: $cc $00 $cf
	call z, $cf00                                    ; $572a: $cc $00 $cf
	call z, $1200                                    ; $572d: $cc $00 $12
	ld a, [de]                                       ; $5730: $1a
	ld [hl+], a                                      ; $5731: $22
	ld a, [hl+]                                      ; $5732: $2a
	inc l                                            ; $5733: $2c
	ld l, $30                                        ; $5734: $2e $30
	rst $38                                          ; $5736: $ff
	rst GetHLinHL                                          ; $5737: $cf
	db $fc                                           ; $5738: $fc
	nop                                              ; $5739: $00
	rst GetHLinHL                                          ; $573a: $cf
	call z, $cf00                                    ; $573b: $cc $00 $cf
	call z, $cf00                                    ; $573e: $cc $00 $cf
	call z, $1200                                    ; $5741: $cc $00 $12
	ld a, [de]                                       ; $5744: $1a
	ld [hl+], a                                      ; $5745: $22
	ld a, [hl+]                                      ; $5746: $2a
	inc l                                            ; $5747: $2c
	ld l, $30                                        ; $5748: $2e $30
	rst $38                                          ; $574a: $ff
	rst GetHLinHL                                          ; $574b: $cf
	db $fc                                           ; $574c: $fc
	nop                                              ; $574d: $00
	rst GetHLinHL                                          ; $574e: $cf
	call z, $cf00                                    ; $574f: $cc $00 $cf
	call z, $cf00                                    ; $5752: $cc $00 $cf
	call z, $1200                                    ; $5755: $cc $00 $12
	ld a, [de]                                       ; $5758: $1a
	ld [hl+], a                                      ; $5759: $22
	ld a, [hl+]                                      ; $575a: $2a
	inc l                                            ; $575b: $2c
	ld l, $30                                        ; $575c: $2e $30
	rst $38                                          ; $575e: $ff
	rst GetHLinHL                                          ; $575f: $cf
	db $fc                                           ; $5760: $fc
	nop                                              ; $5761: $00
	rst GetHLinHL                                          ; $5762: $cf
	call z, $cf00                                    ; $5763: $cc $00 $cf
	call z, $cf00                                    ; $5766: $cc $00 $cf
	call z, $1200                                    ; $5769: $cc $00 $12
	ld a, [de]                                       ; $576c: $1a
	ld [hl+], a                                      ; $576d: $22
	ld a, [hl+]                                      ; $576e: $2a
	inc l                                            ; $576f: $2c
	ld l, $30                                        ; $5770: $2e $30
	rst $38                                          ; $5772: $ff
	rst GetHLinHL                                          ; $5773: $cf
	db $fc                                           ; $5774: $fc
	nop                                              ; $5775: $00
	rst GetHLinHL                                          ; $5776: $cf
	call z, $cf00                                    ; $5777: $cc $00 $cf
	call z, $cf00                                    ; $577a: $cc $00 $cf
	call z, $1200                                    ; $577d: $cc $00 $12
	ld a, [de]                                       ; $5780: $1a
	ld [hl+], a                                      ; $5781: $22
	ld a, [hl+]                                      ; $5782: $2a
	inc l                                            ; $5783: $2c
	ld l, $30                                        ; $5784: $2e $30
	ld [$0d8c], sp                                   ; $5786: $08 $8c $0d
	call c, $1201                                    ; $5789: $dc $01 $12
	ld bc, $0111                                     ; $578c: $01 $11 $01
	ld de, $0012                                     ; $578f: $11 $12 $00
	rst $38                                          ; $5792: $ff
	rst GetHLinHL                                          ; $5793: $cf
	db $fc                                           ; $5794: $fc
	nop                                              ; $5795: $00
	rst GetHLinHL                                          ; $5796: $cf
	call z, $cf00                                    ; $5797: $cc $00 $cf
	call z, $cf00                                    ; $579a: $cc $00 $cf
	call z, $1200                                    ; $579d: $cc $00 $12
	ld a, [de]                                       ; $57a0: $1a
	ld [hl+], a                                      ; $57a1: $22
	ld a, [hl+]                                      ; $57a2: $2a
	inc l                                            ; $57a3: $2c
	ld l, $30                                        ; $57a4: $2e $30
	nop                                              ; $57a6: $00
	inc c                                            ; $57a7: $0c
	ld bc, $0111                                     ; $57a8: $01 $11 $01
	ld de, $1101                                     ; $57ab: $11 $01 $11
	ld bc, $1118                                     ; $57ae: $01 $18 $11
	nop                                              ; $57b1: $00
	db $fc                                           ; $57b2: $fc
	rst $38                                          ; $57b3: $ff
	inc c                                            ; $57b4: $0c
	call z, $0ccc                                    ; $57b5: $cc $cc $0c
	call z, $0ccc                                    ; $57b8: $cc $cc $0c
	call z, $0ccc                                    ; $57bb: $cc $cc $0c
	nop                                              ; $57be: $00
	ld c, $16                                        ; $57bf: $0e $16
	ld e, $26                                        ; $57c1: $1e $26
	jr z, jr_02b_57ef                                ; $57c3: $28 $2a

	inc l                                            ; $57c5: $2c
	db $fc                                           ; $57c6: $fc
	rst $38                                          ; $57c7: $ff
	inc c                                            ; $57c8: $0c
	call z, $0ccc                                    ; $57c9: $cc $cc $0c
	call z, $0ccc                                    ; $57cc: $cc $cc $0c
	call z, $0ccc                                    ; $57cf: $cc $cc $0c
	nop                                              ; $57d2: $00
	ld c, $16                                        ; $57d3: $0e $16
	ld e, $26                                        ; $57d5: $1e $26
	jr z, jr_02b_5803                                ; $57d7: $28 $2a

	inc l                                            ; $57d9: $2c
	db $fc                                           ; $57da: $fc
	rst $38                                          ; $57db: $ff
	inc c                                            ; $57dc: $0c
	call z, $0ccc                                    ; $57dd: $cc $cc $0c
	call z, $0ccc                                    ; $57e0: $cc $cc $0c
	call z, $0ccc                                    ; $57e3: $cc $cc $0c
	nop                                              ; $57e6: $00
	ld c, $16                                        ; $57e7: $0e $16
	ld e, $26                                        ; $57e9: $1e $26
	jr z, jr_02b_5817                                ; $57eb: $28 $2a

	inc l                                            ; $57ed: $2c
	db $fc                                           ; $57ee: $fc

jr_02b_57ef:
	rst $38                                          ; $57ef: $ff
	inc c                                            ; $57f0: $0c
	call z, $0ccc                                    ; $57f1: $cc $cc $0c
	call z, $0ccc                                    ; $57f4: $cc $cc $0c
	call z, $0ccc                                    ; $57f7: $cc $cc $0c
	nop                                              ; $57fa: $00
	ld c, $16                                        ; $57fb: $0e $16
	ld e, $26                                        ; $57fd: $1e $26
	jr z, @+$2c                                      ; $57ff: $28 $2a

	inc l                                            ; $5801: $2c
	db $fc                                           ; $5802: $fc

jr_02b_5803:
	rst $38                                          ; $5803: $ff
	inc c                                            ; $5804: $0c
	call z, $0ccc                                    ; $5805: $cc $cc $0c
	call z, $0ccc                                    ; $5808: $cc $cc $0c
	call z, $0ccc                                    ; $580b: $cc $cc $0c
	nop                                              ; $580e: $00
	ld c, $16                                        ; $580f: $0e $16
	ld e, $26                                        ; $5811: $1e $26
	jr z, jr_02b_583f                                ; $5813: $28 $2a

	inc l                                            ; $5815: $2c
	db $fc                                           ; $5816: $fc

jr_02b_5817:
	rst $38                                          ; $5817: $ff
	inc c                                            ; $5818: $0c
	call z, $0ccc                                    ; $5819: $cc $cc $0c
	call z, $0ccc                                    ; $581c: $cc $cc $0c
	call z, $0ccc                                    ; $581f: $cc $cc $0c
	nop                                              ; $5822: $00
	ld c, $16                                        ; $5823: $0e $16
	ld e, $26                                        ; $5825: $1e $26
	jr z, jr_02b_5853                                ; $5827: $28 $2a

	inc l                                            ; $5829: $2c
	ld de, $0099                                     ; $582a: $11 $99 $00
	cp e                                             ; $582d: $bb
	nop                                              ; $582e: $00
	nop                                              ; $582f: $00
	nop                                              ; $5830: $00
	nop                                              ; $5831: $00
	nop                                              ; $5832: $00
	nop                                              ; $5833: $00
	cp e                                             ; $5834: $bb
	nop                                              ; $5835: $00
	db $fc                                           ; $5836: $fc
	ldh a, [$0c]                                     ; $5837: $f0 $0c
	ret nz                                           ; $5839: $c0

	ret nz                                           ; $583a: $c0

	inc c                                            ; $583b: $0c
	ret nz                                           ; $583c: $c0

	ret nz                                           ; $583d: $c0

	inc c                                            ; $583e: $0c

jr_02b_583f:
	call z, $0cc0                                    ; $583f: $cc $c0 $0c
	nop                                              ; $5842: $00
	ld a, [bc]                                       ; $5843: $0a
	ld c, $12                                        ; $5844: $0e $12
	jr jr_02b_5862                                   ; $5846: $18 $1a

	inc e                                            ; $5848: $1c
	ld e, $fc                                        ; $5849: $1e $fc
	ldh a, [$0c]                                     ; $584b: $f0 $0c
	ret nz                                           ; $584d: $c0

	ret nz                                           ; $584e: $c0

	inc c                                            ; $584f: $0c
	ret nz                                           ; $5850: $c0

	ret nz                                           ; $5851: $c0

	inc c                                            ; $5852: $0c

jr_02b_5853:
	ret nz                                           ; $5853: $c0

	ret nz                                           ; $5854: $c0

	inc c                                            ; $5855: $0c
	nop                                              ; $5856: $00
	ld a, [bc]                                       ; $5857: $0a
	ld c, $12                                        ; $5858: $0e $12
	ld d, $18                                        ; $585a: $16 $18
	ld a, [de]                                       ; $585c: $1a
	inc e                                            ; $585d: $1c
	db $fc                                           ; $585e: $fc
	ldh a, [$0c]                                     ; $585f: $f0 $0c
	ret nz                                           ; $5861: $c0

jr_02b_5862:
	ret nz                                           ; $5862: $c0

	inc c                                            ; $5863: $0c
	ret nz                                           ; $5864: $c0

	ret nz                                           ; $5865: $c0

	inc c                                            ; $5866: $0c
	ret nz                                           ; $5867: $c0

	ret nz                                           ; $5868: $c0

	inc c                                            ; $5869: $0c
	nop                                              ; $586a: $00
	ld a, [bc]                                       ; $586b: $0a
	ld c, $12                                        ; $586c: $0e $12
	ld d, $18                                        ; $586e: $16 $18
	ld a, [de]                                       ; $5870: $1a
	inc e                                            ; $5871: $1c
	db $fc                                           ; $5872: $fc
	ldh a, [$0c]                                     ; $5873: $f0 $0c
	ret nz                                           ; $5875: $c0

	ret nz                                           ; $5876: $c0

	inc c                                            ; $5877: $0c
	ret nz                                           ; $5878: $c0

	ret nz                                           ; $5879: $c0

	inc c                                            ; $587a: $0c
	ret nz                                           ; $587b: $c0

	ret nz                                           ; $587c: $c0

	inc c                                            ; $587d: $0c
	nop                                              ; $587e: $00
	ld a, [bc]                                       ; $587f: $0a
	ld c, $12                                        ; $5880: $0e $12
	ld d, $18                                        ; $5882: $16 $18
	ld a, [de]                                       ; $5884: $1a
	inc e                                            ; $5885: $1c
	db $fc                                           ; $5886: $fc
	ldh a, [$0c]                                     ; $5887: $f0 $0c
	ret nz                                           ; $5889: $c0

	ret nz                                           ; $588a: $c0

	inc c                                            ; $588b: $0c
	ret nz                                           ; $588c: $c0

	ret nz                                           ; $588d: $c0

	inc c                                            ; $588e: $0c
	ret nz                                           ; $588f: $c0

	ret nz                                           ; $5890: $c0

	inc c                                            ; $5891: $0c
	nop                                              ; $5892: $00
	ld a, [bc]                                       ; $5893: $0a
	ld c, $12                                        ; $5894: $0e $12
	ld d, $18                                        ; $5896: $16 $18
	ld a, [de]                                       ; $5898: $1a
	inc e                                            ; $5899: $1c
	db $fc                                           ; $589a: $fc
	ldh a, [$0c]                                     ; $589b: $f0 $0c
	ret nz                                           ; $589d: $c0

	ret nz                                           ; $589e: $c0

	inc c                                            ; $589f: $0c
	ret nz                                           ; $58a0: $c0

	ret nz                                           ; $58a1: $c0

	inc c                                            ; $58a2: $0c
	ret nz                                           ; $58a3: $c0

	ret nz                                           ; $58a4: $c0

	inc c                                            ; $58a5: $0c
	nop                                              ; $58a6: $00
	ld a, [bc]                                       ; $58a7: $0a
	ld c, $12                                        ; $58a8: $0e $12
	ld d, $18                                        ; $58aa: $16 $18
	ld a, [de]                                       ; $58ac: $1a
	inc e                                            ; $58ad: $1c
	nop                                              ; $58ae: $00
	cp e                                             ; $58af: $bb
	nop                                              ; $58b0: $00
	cp e                                             ; $58b1: $bb
	nop                                              ; $58b2: $00
	cp e                                             ; $58b3: $bb
	nop                                              ; $58b4: $00
	nop                                              ; $58b5: $00
	nop                                              ; $58b6: $00
	nop                                              ; $58b7: $00
	cp e                                             ; $58b8: $bb
	nop                                              ; $58b9: $00
	rst $38                                          ; $58ba: $ff
	rst GetHLinHL                                          ; $58bb: $cf
	inc c                                            ; $58bc: $0c
	call z, $0ccc                                    ; $58bd: $cc $cc $0c
	call z, $0ccc                                    ; $58c0: $cc $cc $0c
	rst GetHLinHL                                          ; $58c3: $cf
	rst GetHLinHL                                          ; $58c4: $cf
	inc c                                            ; $58c5: $0c
	nop                                              ; $58c6: $00
	ld c, $16                                        ; $58c7: $0e $16
	ld e, $2a                                        ; $58c9: $1e $2a
	inc l                                            ; $58cb: $2c
	ld l, $30                                        ; $58cc: $2e $30
	rst $38                                          ; $58ce: $ff
	rst GetHLinHL                                          ; $58cf: $cf
	inc c                                            ; $58d0: $0c
	call z, $0ccc                                    ; $58d1: $cc $cc $0c
	call z, $0ccc                                    ; $58d4: $cc $cc $0c
	rst GetHLinHL                                          ; $58d7: $cf
	rst GetHLinHL                                          ; $58d8: $cf
	inc c                                            ; $58d9: $0c
	nop                                              ; $58da: $00
	ld c, $16                                        ; $58db: $0e $16
	ld e, $2a                                        ; $58dd: $1e $2a
	inc l                                            ; $58df: $2c
	ld l, $30                                        ; $58e0: $2e $30
	rst $38                                          ; $58e2: $ff
	rst GetHLinHL                                          ; $58e3: $cf
	inc c                                            ; $58e4: $0c
	call z, $0ccc                                    ; $58e5: $cc $cc $0c
	rst GetHLinHL                                          ; $58e8: $cf
	rst GetHLinHL                                          ; $58e9: $cf
	inc c                                            ; $58ea: $0c
	rst GetHLinHL                                          ; $58eb: $cf
	rst GetHLinHL                                          ; $58ec: $cf
	inc c                                            ; $58ed: $0c
	nop                                              ; $58ee: $00
	ld c, $16                                        ; $58ef: $0e $16
	ld [hl+], a                                      ; $58f1: $22
	ld l, $30                                        ; $58f2: $2e $30
	ld [hl-], a                                      ; $58f4: $32
	inc [hl]                                         ; $58f5: $34
	rst $38                                          ; $58f6: $ff
	rst GetHLinHL                                          ; $58f7: $cf
	inc c                                            ; $58f8: $0c
	call z, $0ccc                                    ; $58f9: $cc $cc $0c
	call z, $0ccc                                    ; $58fc: $cc $cc $0c
	rst GetHLinHL                                          ; $58ff: $cf
	rst GetHLinHL                                          ; $5900: $cf
	inc c                                            ; $5901: $0c
	nop                                              ; $5902: $00
	ld c, $16                                        ; $5903: $0e $16
	ld e, $2a                                        ; $5905: $1e $2a
	inc l                                            ; $5907: $2c
	ld l, $30                                        ; $5908: $2e $30
	rst $38                                          ; $590a: $ff
	rst GetHLinHL                                          ; $590b: $cf
	inc c                                            ; $590c: $0c
	call z, $0ccc                                    ; $590d: $cc $cc $0c
	call z, $0ccc                                    ; $5910: $cc $cc $0c
	rst GetHLinHL                                          ; $5913: $cf
	rst GetHLinHL                                          ; $5914: $cf
	inc c                                            ; $5915: $0c
	nop                                              ; $5916: $00
	ld c, $16                                        ; $5917: $0e $16
	ld e, $2a                                        ; $5919: $1e $2a
	inc l                                            ; $591b: $2c
	ld l, $30                                        ; $591c: $2e $30
	nop                                              ; $591e: $00
	adc b                                            ; $591f: $88
	nop                                              ; $5920: $00
	cp e                                             ; $5921: $bb
	nop                                              ; $5922: $00
	nop                                              ; $5923: $00
	nop                                              ; $5924: $00
	cp e                                             ; $5925: $bb
	nop                                              ; $5926: $00
	nop                                              ; $5927: $00
	nop                                              ; $5928: $00
	nop                                              ; $5929: $00
	db $fc                                           ; $592a: $fc
	ret nz                                           ; $592b: $c0

	rrca                                             ; $592c: $0f
	call z, $0fc0                                    ; $592d: $cc $c0 $0f
	call z, $0fc0                                    ; $5930: $cc $c0 $0f
	call z, $0fc0                                    ; $5933: $cc $c0 $0f
	nop                                              ; $5936: $00
	ld [$140e], sp                                   ; $5937: $08 $0e $14
	ld a, [de]                                       ; $593a: $1a
	ld e, $22                                        ; $593b: $1e $22
	ld h, $fc                                        ; $593d: $26 $fc
	ret nz                                           ; $593f: $c0

	rrca                                             ; $5940: $0f
	call z, $0fc0                                    ; $5941: $cc $c0 $0f
	call z, $0fc0                                    ; $5944: $cc $c0 $0f
	db $fc                                           ; $5947: $fc
	ret nz                                           ; $5948: $c0

	rrca                                             ; $5949: $0f
	nop                                              ; $594a: $00
	ld [$140e], sp                                   ; $594b: $08 $0e $14
	inc e                                            ; $594e: $1c

jr_02b_594f:
	jr nz, @+$26                                     ; $594f: $20 $24

	jr z, jr_02b_594f                                ; $5951: $28 $fc

	ret nz                                           ; $5953: $c0

	rrca                                             ; $5954: $0f
	call z, $0fc0                                    ; $5955: $cc $c0 $0f
	db $fc                                           ; $5958: $fc
	ret nz                                           ; $5959: $c0

	rrca                                             ; $595a: $0f
	db $fc                                           ; $595b: $fc
	ret nz                                           ; $595c: $c0

	rrca                                             ; $595d: $0f
	nop                                              ; $595e: $00
	ld [$160e], sp                                   ; $595f: $08 $0e $16
	ld e, $22                                        ; $5962: $1e $22
	ld h, $2a                                        ; $5964: $26 $2a
	db $fc                                           ; $5966: $fc
	ret nz                                           ; $5967: $c0

	rrca                                             ; $5968: $0f
	call z, $0fc0                                    ; $5969: $cc $c0 $0f
	call z, $0fc0                                    ; $596c: $cc $c0 $0f
	db $fc                                           ; $596f: $fc
	ret nz                                           ; $5970: $c0

	rrca                                             ; $5971: $0f
	nop                                              ; $5972: $00
	ld [$140e], sp                                   ; $5973: $08 $0e $14
	inc e                                            ; $5976: $1c

jr_02b_5977:
	jr nz, jr_02b_599d                               ; $5977: $20 $24

	jr z, jr_02b_5977                                ; $5979: $28 $fc

	ret nz                                           ; $597b: $c0

	rrca                                             ; $597c: $0f
	call z, $0fc0                                    ; $597d: $cc $c0 $0f
	call z, $0fc0                                    ; $5980: $cc $c0 $0f
	call z, $0fc0                                    ; $5983: $cc $c0 $0f
	nop                                              ; $5986: $00
	ld [$140e], sp                                   ; $5987: $08 $0e $14
	ld a, [de]                                       ; $598a: $1a
	ld e, $22                                        ; $598b: $1e $22
	ld h, $00                                        ; $598d: $26 $00
	nop                                              ; $598f: $00
	nop                                              ; $5990: $00
	nop                                              ; $5991: $00
	nop                                              ; $5992: $00
	adc b                                            ; $5993: $88
	adc b                                            ; $5994: $88
	adc b                                            ; $5995: $88
	adc b                                            ; $5996: $88
	adc b                                            ; $5997: $88
	nop                                              ; $5998: $00
	adc b                                            ; $5999: $88
	db $fc                                           ; $599a: $fc
	rst $38                                          ; $599b: $ff
	inc c                                            ; $599c: $0c

jr_02b_599d:
	call z, $0cc0                                    ; $599d: $cc $c0 $0c
	call z, $0cc0                                    ; $59a0: $cc $c0 $0c
	call z, $0ccc                                    ; $59a3: $cc $cc $0c
	nop                                              ; $59a6: $00
	ld c, $14                                        ; $59a7: $0e $14
	ld a, [de]                                       ; $59a9: $1a
	ld [hl+], a                                      ; $59aa: $22
	inc h                                            ; $59ab: $24
	ld h, $28                                        ; $59ac: $26 $28
	db $fc                                           ; $59ae: $fc
	rst $38                                          ; $59af: $ff
	inc c                                            ; $59b0: $0c
	call z, $0ccc                                    ; $59b1: $cc $cc $0c
	call z, $0ccc                                    ; $59b4: $cc $cc $0c
	call z, $0ccc                                    ; $59b7: $cc $cc $0c
	nop                                              ; $59ba: $00
	ld c, $16                                        ; $59bb: $0e $16
	ld e, $26                                        ; $59bd: $1e $26
	jr z, jr_02b_59eb                                ; $59bf: $28 $2a

	inc l                                            ; $59c1: $2c
	db $fc                                           ; $59c2: $fc
	rst $38                                          ; $59c3: $ff
	inc c                                            ; $59c4: $0c
	call z, $0ccc                                    ; $59c5: $cc $cc $0c
	call z, $0ccc                                    ; $59c8: $cc $cc $0c
	call z, $0ccc                                    ; $59cb: $cc $cc $0c
	nop                                              ; $59ce: $00
	ld c, $16                                        ; $59cf: $0e $16
	ld e, $26                                        ; $59d1: $1e $26
	jr z, jr_02b_59ff                                ; $59d3: $28 $2a

	inc l                                            ; $59d5: $2c
	db $fc                                           ; $59d6: $fc
	rst $38                                          ; $59d7: $ff
	inc c                                            ; $59d8: $0c
	call z, $0ccc                                    ; $59d9: $cc $cc $0c
	call z, $0ccc                                    ; $59dc: $cc $cc $0c
	call z, $0ccc                                    ; $59df: $cc $cc $0c
	nop                                              ; $59e2: $00
	ld c, $16                                        ; $59e3: $0e $16
	ld e, $26                                        ; $59e5: $1e $26
	jr z, jr_02b_5a13                                ; $59e7: $28 $2a

	inc l                                            ; $59e9: $2c
	db $fc                                           ; $59ea: $fc

jr_02b_59eb:
	rst $38                                          ; $59eb: $ff
	inc c                                            ; $59ec: $0c
	call z, $0ccc                                    ; $59ed: $cc $cc $0c
	call z, $0ccc                                    ; $59f0: $cc $cc $0c
	call z, $0ccc                                    ; $59f3: $cc $cc $0c
	nop                                              ; $59f6: $00
	ld c, $16                                        ; $59f7: $0e $16
	ld e, $26                                        ; $59f9: $1e $26
	jr z, jr_02b_5a27                                ; $59fb: $28 $2a

	inc l                                            ; $59fd: $2c
	nop                                              ; $59fe: $00

jr_02b_59ff:
	cp e                                             ; $59ff: $bb
	nop                                              ; $5a00: $00
	nop                                              ; $5a01: $00
	nop                                              ; $5a02: $00
	nop                                              ; $5a03: $00
	nop                                              ; $5a04: $00
	nop                                              ; $5a05: $00
	nop                                              ; $5a06: $00
	nop                                              ; $5a07: $00
	nop                                              ; $5a08: $00
	nop                                              ; $5a09: $00
	rst $38                                          ; $5a0a: $ff
	rst GetHLinHL                                          ; $5a0b: $cf
	inc c                                            ; $5a0c: $0c
	call z, $0ccc                                    ; $5a0d: $cc $cc $0c
	call z, $0ccc                                    ; $5a10: $cc $cc $0c

jr_02b_5a13:
	call z, $0ccc                                    ; $5a13: $cc $cc $0c
	nop                                              ; $5a16: $00
	ld c, $16                                        ; $5a17: $0e $16
	ld e, $26                                        ; $5a19: $1e $26
	jr z, jr_02b_5a47                                ; $5a1b: $28 $2a

	inc l                                            ; $5a1d: $2c
	rst $38                                          ; $5a1e: $ff
	rst GetHLinHL                                          ; $5a1f: $cf
	inc c                                            ; $5a20: $0c
	call z, $0ccc                                    ; $5a21: $cc $cc $0c
	call z, $0ccc                                    ; $5a24: $cc $cc $0c

jr_02b_5a27:
	call z, $0ccc                                    ; $5a27: $cc $cc $0c
	nop                                              ; $5a2a: $00
	ld c, $16                                        ; $5a2b: $0e $16
	ld e, $26                                        ; $5a2d: $1e $26
	jr z, jr_02b_5a5b                                ; $5a2f: $28 $2a

	inc l                                            ; $5a31: $2c
	rst $38                                          ; $5a32: $ff
	rst GetHLinHL                                          ; $5a33: $cf
	inc c                                            ; $5a34: $0c
	call z, $0ccc                                    ; $5a35: $cc $cc $0c
	call z, $0ccc                                    ; $5a38: $cc $cc $0c
	call z, $0ccc                                    ; $5a3b: $cc $cc $0c
	nop                                              ; $5a3e: $00
	ld c, $16                                        ; $5a3f: $0e $16
	ld e, $26                                        ; $5a41: $1e $26
	jr z, jr_02b_5a6f                                ; $5a43: $28 $2a

	inc l                                            ; $5a45: $2c
	rst $38                                          ; $5a46: $ff

jr_02b_5a47:
	rst GetHLinHL                                          ; $5a47: $cf
	inc c                                            ; $5a48: $0c
	call z, $0ccc                                    ; $5a49: $cc $cc $0c
	call z, $0ccc                                    ; $5a4c: $cc $cc $0c
	call z, $0ccc                                    ; $5a4f: $cc $cc $0c
	nop                                              ; $5a52: $00
	ld c, $16                                        ; $5a53: $0e $16
	ld e, $26                                        ; $5a55: $1e $26
	jr z, jr_02b_5a83                                ; $5a57: $28 $2a

	inc l                                            ; $5a59: $2c
	rst $38                                          ; $5a5a: $ff

jr_02b_5a5b:
	rst GetHLinHL                                          ; $5a5b: $cf
	inc c                                            ; $5a5c: $0c
	call z, $0ccc                                    ; $5a5d: $cc $cc $0c
	call z, $0ccc                                    ; $5a60: $cc $cc $0c
	call z, $0ccc                                    ; $5a63: $cc $cc $0c
	nop                                              ; $5a66: $00
	ld c, $16                                        ; $5a67: $0e $16
	ld e, $26                                        ; $5a69: $1e $26
	jr z, jr_02b_5a97                                ; $5a6b: $28 $2a

	inc l                                            ; $5a6d: $2c
	nop                                              ; $5a6e: $00

jr_02b_5a6f:
	adc b                                            ; $5a6f: $88
	nop                                              ; $5a70: $00
	cp e                                             ; $5a71: $bb
	nop                                              ; $5a72: $00
	nop                                              ; $5a73: $00
	nop                                              ; $5a74: $00
	nop                                              ; $5a75: $00
	nop                                              ; $5a76: $00
	nop                                              ; $5a77: $00
	nop                                              ; $5a78: $00
	nop                                              ; $5a79: $00
	db $fc                                           ; $5a7a: $fc
	ldh a, [$0c]                                     ; $5a7b: $f0 $0c
	call z, $0cc0                                    ; $5a7d: $cc $c0 $0c
	call z, $0cc0                                    ; $5a80: $cc $c0 $0c

jr_02b_5a83:
	call z, $0cc0                                    ; $5a83: $cc $c0 $0c
	nop                                              ; $5a86: $00
	ld a, [bc]                                       ; $5a87: $0a
	db $10                                           ; $5a88: $10
	ld d, $1c                                        ; $5a89: $16 $1c
	ld e, $20                                        ; $5a8b: $1e $20
	ld [hl+], a                                      ; $5a8d: $22
	db $fc                                           ; $5a8e: $fc
	ldh a, [$0c]                                     ; $5a8f: $f0 $0c
	call z, $0cc0                                    ; $5a91: $cc $c0 $0c
	call z, $0cc0                                    ; $5a94: $cc $c0 $0c

jr_02b_5a97:
	call z, $0cc0                                    ; $5a97: $cc $c0 $0c
	nop                                              ; $5a9a: $00
	ld a, [bc]                                       ; $5a9b: $0a
	db $10                                           ; $5a9c: $10
	ld d, $1c                                        ; $5a9d: $16 $1c
	ld e, $20                                        ; $5a9f: $1e $20
	ld [hl+], a                                      ; $5aa1: $22
	db $fc                                           ; $5aa2: $fc
	ldh a, [$0c]                                     ; $5aa3: $f0 $0c
	call z, $0cc0                                    ; $5aa5: $cc $c0 $0c
	call z, $0cc0                                    ; $5aa8: $cc $c0 $0c
	call z, $0cc0                                    ; $5aab: $cc $c0 $0c
	nop                                              ; $5aae: $00
	ld a, [bc]                                       ; $5aaf: $0a
	db $10                                           ; $5ab0: $10
	ld d, $1c                                        ; $5ab1: $16 $1c
	ld e, $20                                        ; $5ab3: $1e $20
	ld [hl+], a                                      ; $5ab5: $22
	db $fc                                           ; $5ab6: $fc
	ldh a, [$0c]                                     ; $5ab7: $f0 $0c
	call z, $0cc0                                    ; $5ab9: $cc $c0 $0c
	call z, $0cc0                                    ; $5abc: $cc $c0 $0c
	call z, $0cc0                                    ; $5abf: $cc $c0 $0c
	nop                                              ; $5ac2: $00
	ld a, [bc]                                       ; $5ac3: $0a
	db $10                                           ; $5ac4: $10
	ld d, $1c                                        ; $5ac5: $16 $1c
	ld e, $20                                        ; $5ac7: $1e $20
	ld [hl+], a                                      ; $5ac9: $22
	db $fc                                           ; $5aca: $fc
	ldh a, [$0c]                                     ; $5acb: $f0 $0c
	call z, $0cc0                                    ; $5acd: $cc $c0 $0c
	call z, $0cc0                                    ; $5ad0: $cc $c0 $0c
	call z, $0cc0                                    ; $5ad3: $cc $c0 $0c
	nop                                              ; $5ad6: $00
	ld a, [bc]                                       ; $5ad7: $0a
	db $10                                           ; $5ad8: $10
	ld d, $1c                                        ; $5ad9: $16 $1c
	ld e, $20                                        ; $5adb: $1e $20
	ld [hl+], a                                      ; $5add: $22
	nop                                              ; $5ade: $00
	nop                                              ; $5adf: $00
	nop                                              ; $5ae0: $00
	nop                                              ; $5ae1: $00
	nop                                              ; $5ae2: $00
	nop                                              ; $5ae3: $00
	nop                                              ; $5ae4: $00
	nop                                              ; $5ae5: $00
	nop                                              ; $5ae6: $00
	nop                                              ; $5ae7: $00
	nop                                              ; $5ae8: $00
	nop                                              ; $5ae9: $00
	nop                                              ; $5aea: $00
	nop                                              ; $5aeb: $00
	nop                                              ; $5aec: $00
	nop                                              ; $5aed: $00
	nop                                              ; $5aee: $00
	nop                                              ; $5aef: $00
	nop                                              ; $5af0: $00
	nop                                              ; $5af1: $00
	nop                                              ; $5af2: $00
	ld [hl+], a                                      ; $5af3: $22
	nop                                              ; $5af4: $00
	nop                                              ; $5af5: $00
	nop                                              ; $5af6: $00
	nop                                              ; $5af7: $00
	nop                                              ; $5af8: $00
	nop                                              ; $5af9: $00
	nop                                              ; $5afa: $00
	nop                                              ; $5afb: $00
	nop                                              ; $5afc: $00
	nop                                              ; $5afd: $00
	rst $38                                          ; $5afe: $ff
	rst GetHLinHL                                          ; $5aff: $cf
	db $fc                                           ; $5b00: $fc
	call z, $cccc                                    ; $5b01: $cc $cc $cc
	call z, $cccc                                    ; $5b04: $cc $cc $cc
	call z, $cccc                                    ; $5b07: $cc $cc $cc
	nop                                              ; $5b0a: $00
	ld [de], a                                       ; $5b0b: $12
	inc e                                            ; $5b0c: $1c
	ld h, $30                                        ; $5b0d: $26 $30
	ld [hl-], a                                      ; $5b0f: $32
	inc [hl]                                         ; $5b10: $34
	ld [hl], $ff                                     ; $5b11: $36 $ff
	rst GetHLinHL                                          ; $5b13: $cf
	db $fc                                           ; $5b14: $fc
	call z, $cccc                                    ; $5b15: $cc $cc $cc
	call z, $cccc                                    ; $5b18: $cc $cc $cc
	call z, $cccc                                    ; $5b1b: $cc $cc $cc
	nop                                              ; $5b1e: $00
	ld [de], a                                       ; $5b1f: $12
	inc e                                            ; $5b20: $1c
	ld h, $30                                        ; $5b21: $26 $30
	ld [hl-], a                                      ; $5b23: $32
	inc [hl]                                         ; $5b24: $34
	ld [hl], $ff                                     ; $5b25: $36 $ff
	rst GetHLinHL                                          ; $5b27: $cf
	db $fc                                           ; $5b28: $fc
	call z, $cccc                                    ; $5b29: $cc $cc $cc
	call z, $cccc                                    ; $5b2c: $cc $cc $cc
	call z, $cccc                                    ; $5b2f: $cc $cc $cc
	nop                                              ; $5b32: $00
	ld [de], a                                       ; $5b33: $12
	inc e                                            ; $5b34: $1c
	ld h, $30                                        ; $5b35: $26 $30
	ld [hl-], a                                      ; $5b37: $32
	inc [hl]                                         ; $5b38: $34
	ld [hl], $ff                                     ; $5b39: $36 $ff
	rst GetHLinHL                                          ; $5b3b: $cf
	db $fc                                           ; $5b3c: $fc
	call z, $cccc                                    ; $5b3d: $cc $cc $cc
	call z, $cccc                                    ; $5b40: $cc $cc $cc
	call z, $cccc                                    ; $5b43: $cc $cc $cc
	nop                                              ; $5b46: $00
	ld [de], a                                       ; $5b47: $12
	inc e                                            ; $5b48: $1c
	ld h, $30                                        ; $5b49: $26 $30
	ld [hl-], a                                      ; $5b4b: $32
	inc [hl]                                         ; $5b4c: $34
	ld [hl], $ff                                     ; $5b4d: $36 $ff
	rst GetHLinHL                                          ; $5b4f: $cf
	db $fc                                           ; $5b50: $fc
	call z, $cccc                                    ; $5b51: $cc $cc $cc
	call z, $cccc                                    ; $5b54: $cc $cc $cc
	call z, $cccc                                    ; $5b57: $cc $cc $cc
	nop                                              ; $5b5a: $00
	ld [de], a                                       ; $5b5b: $12
	inc e                                            ; $5b5c: $1c
	ld h, $30                                        ; $5b5d: $26 $30
	ld [hl-], a                                      ; $5b5f: $32
	inc [hl]                                         ; $5b60: $34
	ld [hl], $00                                     ; $5b61: $36 $00
	sbc c                                            ; $5b63: $99
	nop                                              ; $5b64: $00
	cp e                                             ; $5b65: $bb
	nop                                              ; $5b66: $00
	nop                                              ; $5b67: $00
	nop                                              ; $5b68: $00
	nop                                              ; $5b69: $00
	nop                                              ; $5b6a: $00
	adc b                                            ; $5b6b: $88
	nop                                              ; $5b6c: $00
	nop                                              ; $5b6d: $00
	db $fc                                           ; $5b6e: $fc
	ret nz                                           ; $5b6f: $c0

	rrca                                             ; $5b70: $0f
	db $fc                                           ; $5b71: $fc
	ret nz                                           ; $5b72: $c0

	rrca                                             ; $5b73: $0f
	db $fc                                           ; $5b74: $fc
	ret nz                                           ; $5b75: $c0

	rrca                                             ; $5b76: $0f
	db $fc                                           ; $5b77: $fc
	ret nz                                           ; $5b78: $c0

	rrca                                             ; $5b79: $0f
	nop                                              ; $5b7a: $00
	ld [$1810], sp                                   ; $5b7b: $08 $10 $18
	jr nz, @+$26                                     ; $5b7e: $20 $24

	jr z, jr_02b_5bae                                ; $5b80: $28 $2c

	nop                                              ; $5b82: $00
	cp e                                             ; $5b83: $bb
	nop                                              ; $5b84: $00
	nop                                              ; $5b85: $00
	nop                                              ; $5b86: $00
	cp e                                             ; $5b87: $bb
	cp e                                             ; $5b88: $bb
	cp e                                             ; $5b89: $bb
	cp e                                             ; $5b8a: $bb
	cp e                                             ; $5b8b: $bb
	nop                                              ; $5b8c: $00
	cp e                                             ; $5b8d: $bb
	db $fc                                           ; $5b8e: $fc
	ldh a, [$0c]                                     ; $5b8f: $f0 $0c
	call z, $0cc0                                    ; $5b91: $cc $c0 $0c
	call z, $0cc0                                    ; $5b94: $cc $c0 $0c
	call z, $0cc0                                    ; $5b97: $cc $c0 $0c
	nop                                              ; $5b9a: $00
	ld a, [bc]                                       ; $5b9b: $0a
	db $10                                           ; $5b9c: $10
	ld d, $1c                                        ; $5b9d: $16 $1c
	ld e, $20                                        ; $5b9f: $1e $20
	ld [hl+], a                                      ; $5ba1: $22
	db $fc                                           ; $5ba2: $fc
	ldh a, [$0c]                                     ; $5ba3: $f0 $0c
	call z, $0cc0                                    ; $5ba5: $cc $c0 $0c
	call z, $0cc0                                    ; $5ba8: $cc $c0 $0c
	call z, $0cc0                                    ; $5bab: $cc $c0 $0c

jr_02b_5bae:
	nop                                              ; $5bae: $00
	ld a, [bc]                                       ; $5baf: $0a
	db $10                                           ; $5bb0: $10
	ld d, $1c                                        ; $5bb1: $16 $1c
	ld e, $20                                        ; $5bb3: $1e $20
	ld [hl+], a                                      ; $5bb5: $22
	db $fc                                           ; $5bb6: $fc
	ldh a, [$0c]                                     ; $5bb7: $f0 $0c
	ret nz                                           ; $5bb9: $c0

	ret nz                                           ; $5bba: $c0

	inc c                                            ; $5bbb: $0c
	ret nz                                           ; $5bbc: $c0

	ret nz                                           ; $5bbd: $c0

	inc c                                            ; $5bbe: $0c
	ret nz                                           ; $5bbf: $c0

	ret nz                                           ; $5bc0: $c0

	inc c                                            ; $5bc1: $0c
	nop                                              ; $5bc2: $00
	ld a, [bc]                                       ; $5bc3: $0a
	ld c, $12                                        ; $5bc4: $0e $12
	ld d, $18                                        ; $5bc6: $16 $18
	ld a, [de]                                       ; $5bc8: $1a
	inc e                                            ; $5bc9: $1c
	db $fc                                           ; $5bca: $fc
	ldh a, [$0c]                                     ; $5bcb: $f0 $0c
	ret nz                                           ; $5bcd: $c0

	ret nz                                           ; $5bce: $c0

	inc c                                            ; $5bcf: $0c
	ret nz                                           ; $5bd0: $c0

	ret nz                                           ; $5bd1: $c0

	inc c                                            ; $5bd2: $0c
	ret nz                                           ; $5bd3: $c0

	ret nz                                           ; $5bd4: $c0

	inc c                                            ; $5bd5: $0c
	nop                                              ; $5bd6: $00
	ld a, [bc]                                       ; $5bd7: $0a
	ld c, $12                                        ; $5bd8: $0e $12
	ld d, $18                                        ; $5bda: $16 $18
	ld a, [de]                                       ; $5bdc: $1a
	inc e                                            ; $5bdd: $1c
	db $fc                                           ; $5bde: $fc
	ldh a, [$0c]                                     ; $5bdf: $f0 $0c
	ret nz                                           ; $5be1: $c0

	ret nz                                           ; $5be2: $c0

	inc c                                            ; $5be3: $0c
	ret nz                                           ; $5be4: $c0

	ret nz                                           ; $5be5: $c0

	inc c                                            ; $5be6: $0c
	ret nz                                           ; $5be7: $c0

	ret nz                                           ; $5be8: $c0

	inc c                                            ; $5be9: $0c
	nop                                              ; $5bea: $00
	ld a, [bc]                                       ; $5beb: $0a
	ld c, $12                                        ; $5bec: $0e $12
	ld d, $18                                        ; $5bee: $16 $18
	ld a, [de]                                       ; $5bf0: $1a
	inc e                                            ; $5bf1: $1c
	nop                                              ; $5bf2: $00
	ld [hl+], a                                      ; $5bf3: $22
	nop                                              ; $5bf4: $00
	ld [hl+], a                                      ; $5bf5: $22
	nop                                              ; $5bf6: $00
	xor d                                            ; $5bf7: $aa
	nop                                              ; $5bf8: $00
	nop                                              ; $5bf9: $00
	nop                                              ; $5bfa: $00
	nop                                              ; $5bfb: $00
	ld [hl+], a                                      ; $5bfc: $22
	nop                                              ; $5bfd: $00
	db $fc                                           ; $5bfe: $fc
	rst $38                                          ; $5bff: $ff
	inc c                                            ; $5c00: $0c
	db $fc                                           ; $5c01: $fc
	rst $38                                          ; $5c02: $ff
	inc c                                            ; $5c03: $0c
	db $fc                                           ; $5c04: $fc
	rst $38                                          ; $5c05: $ff
	inc c                                            ; $5c06: $0c
	db $fc                                           ; $5c07: $fc
	rst $38                                          ; $5c08: $ff
	inc c                                            ; $5c09: $0c
	nop                                              ; $5c0a: $00
	ld c, $1c                                        ; $5c0b: $0e $1c
	ld a, [hl+]                                      ; $5c0d: $2a
	jr c, jr_02b_5c4a                                ; $5c0e: $38 $3a

	inc a                                            ; $5c10: $3c
	ld a, $fc                                        ; $5c11: $3e $fc
	rst $38                                          ; $5c13: $ff
	inc c                                            ; $5c14: $0c
	db $fc                                           ; $5c15: $fc
	rst $38                                          ; $5c16: $ff
	inc c                                            ; $5c17: $0c
	db $fc                                           ; $5c18: $fc
	rst $38                                          ; $5c19: $ff
	inc c                                            ; $5c1a: $0c
	db $fc                                           ; $5c1b: $fc
	rst $38                                          ; $5c1c: $ff
	inc c                                            ; $5c1d: $0c
	nop                                              ; $5c1e: $00
	ld c, $1c                                        ; $5c1f: $0e $1c
	ld a, [hl+]                                      ; $5c21: $2a
	jr c, jr_02b_5c5e                                ; $5c22: $38 $3a

	inc a                                            ; $5c24: $3c
	ld a, $fc                                        ; $5c25: $3e $fc
	rst $38                                          ; $5c27: $ff
	inc c                                            ; $5c28: $0c
	db $fc                                           ; $5c29: $fc
	rst $38                                          ; $5c2a: $ff
	inc c                                            ; $5c2b: $0c
	db $fc                                           ; $5c2c: $fc
	rst $38                                          ; $5c2d: $ff
	inc c                                            ; $5c2e: $0c
	db $fc                                           ; $5c2f: $fc
	rst $38                                          ; $5c30: $ff
	inc c                                            ; $5c31: $0c
	nop                                              ; $5c32: $00
	ld c, $1c                                        ; $5c33: $0e $1c
	ld a, [hl+]                                      ; $5c35: $2a
	jr c, @+$3c                                      ; $5c36: $38 $3a

	inc a                                            ; $5c38: $3c
	ld a, $fc                                        ; $5c39: $3e $fc
	rst $38                                          ; $5c3b: $ff
	inc c                                            ; $5c3c: $0c
	db $fc                                           ; $5c3d: $fc
	rst $38                                          ; $5c3e: $ff
	inc c                                            ; $5c3f: $0c
	db $fc                                           ; $5c40: $fc
	rst $38                                          ; $5c41: $ff
	inc c                                            ; $5c42: $0c
	db $fc                                           ; $5c43: $fc
	rst $38                                          ; $5c44: $ff
	inc c                                            ; $5c45: $0c
	nop                                              ; $5c46: $00
	ld c, $1c                                        ; $5c47: $0e $1c
	ld a, [hl+]                                      ; $5c49: $2a

jr_02b_5c4a:
	jr c, @+$3c                                      ; $5c4a: $38 $3a

	inc a                                            ; $5c4c: $3c
	ld a, $fc                                        ; $5c4d: $3e $fc
	rst $38                                          ; $5c4f: $ff
	inc c                                            ; $5c50: $0c
	db $fc                                           ; $5c51: $fc
	rst $38                                          ; $5c52: $ff
	inc c                                            ; $5c53: $0c
	db $fc                                           ; $5c54: $fc
	rst $38                                          ; $5c55: $ff
	inc c                                            ; $5c56: $0c
	db $fc                                           ; $5c57: $fc
	rst $38                                          ; $5c58: $ff
	inc c                                            ; $5c59: $0c
	nop                                              ; $5c5a: $00
	ld c, $1c                                        ; $5c5b: $0e $1c
	ld a, [hl+]                                      ; $5c5d: $2a

jr_02b_5c5e:
	jr c, @+$3c                                      ; $5c5e: $38 $3a

	inc a                                            ; $5c60: $3c
	ld a, $00                                        ; $5c61: $3e $00
	cp e                                             ; $5c63: $bb
	nop                                              ; $5c64: $00
	nop                                              ; $5c65: $00
	nop                                              ; $5c66: $00
	cp e                                             ; $5c67: $bb
	nop                                              ; $5c68: $00
	sbc c                                            ; $5c69: $99
	nop                                              ; $5c6a: $00
	nop                                              ; $5c6b: $00
	nop                                              ; $5c6c: $00
	nop                                              ; $5c6d: $00
	db $fc                                           ; $5c6e: $fc
	ldh a, [$0c]                                     ; $5c6f: $f0 $0c
	call z, $0cc0                                    ; $5c71: $cc $c0 $0c
	call z, $0cc0                                    ; $5c74: $cc $c0 $0c
	call z, $0cc0                                    ; $5c77: $cc $c0 $0c
	nop                                              ; $5c7a: $00
	ld a, [bc]                                       ; $5c7b: $0a
	db $10                                           ; $5c7c: $10
	ld d, $1c                                        ; $5c7d: $16 $1c
	ld e, $20                                        ; $5c7f: $1e $20
	ld [hl+], a                                      ; $5c81: $22
	db $fc                                           ; $5c82: $fc
	ldh a, [$0c]                                     ; $5c83: $f0 $0c
	call z, $0cc0                                    ; $5c85: $cc $c0 $0c
	call z, $0cc0                                    ; $5c88: $cc $c0 $0c
	call z, $0cc0                                    ; $5c8b: $cc $c0 $0c
	nop                                              ; $5c8e: $00
	ld a, [bc]                                       ; $5c8f: $0a
	db $10                                           ; $5c90: $10
	ld d, $1c                                        ; $5c91: $16 $1c
	ld e, $20                                        ; $5c93: $1e $20
	ld [hl+], a                                      ; $5c95: $22
	db $fc                                           ; $5c96: $fc
	ldh a, [$0c]                                     ; $5c97: $f0 $0c
	call z, $0cc0                                    ; $5c99: $cc $c0 $0c
	call z, $0cc0                                    ; $5c9c: $cc $c0 $0c
	call z, $0cc0                                    ; $5c9f: $cc $c0 $0c
	nop                                              ; $5ca2: $00
	ld a, [bc]                                       ; $5ca3: $0a
	db $10                                           ; $5ca4: $10
	ld d, $1c                                        ; $5ca5: $16 $1c
	ld e, $20                                        ; $5ca7: $1e $20
	ld [hl+], a                                      ; $5ca9: $22
	db $fc                                           ; $5caa: $fc
	ldh a, [$0c]                                     ; $5cab: $f0 $0c
	call z, $0cc0                                    ; $5cad: $cc $c0 $0c
	call z, $0cc0                                    ; $5cb0: $cc $c0 $0c
	call z, $0cc0                                    ; $5cb3: $cc $c0 $0c
	nop                                              ; $5cb6: $00
	ld a, [bc]                                       ; $5cb7: $0a
	db $10                                           ; $5cb8: $10
	ld d, $1c                                        ; $5cb9: $16 $1c
	ld e, $20                                        ; $5cbb: $1e $20
	ld [hl+], a                                      ; $5cbd: $22
	db $fc                                           ; $5cbe: $fc
	ldh a, [$0c]                                     ; $5cbf: $f0 $0c
	call z, $0cc0                                    ; $5cc1: $cc $c0 $0c
	call z, $0cc0                                    ; $5cc4: $cc $c0 $0c
	call z, $0cc0                                    ; $5cc7: $cc $c0 $0c
	nop                                              ; $5cca: $00
	ld a, [bc]                                       ; $5ccb: $0a
	db $10                                           ; $5ccc: $10
	ld d, $1c                                        ; $5ccd: $16 $1c
	ld e, $20                                        ; $5ccf: $1e $20
	ld [hl+], a                                      ; $5cd1: $22
	nop                                              ; $5cd2: $00
	cp e                                             ; $5cd3: $bb
	nop                                              ; $5cd4: $00
	nop                                              ; $5cd5: $00
	nop                                              ; $5cd6: $00
	cp e                                             ; $5cd7: $bb
	nop                                              ; $5cd8: $00
	nop                                              ; $5cd9: $00
	nop                                              ; $5cda: $00
	nop                                              ; $5cdb: $00
	nop                                              ; $5cdc: $00
	nop                                              ; $5cdd: $00
	cp $ff                                           ; $5cde: $fe $ff
	inc c                                            ; $5ce0: $0c
	cp $ff                                           ; $5ce1: $fe $ff
	inc c                                            ; $5ce3: $0c
	cp $ff                                           ; $5ce4: $fe $ff
	inc c                                            ; $5ce6: $0c
	cp $ff                                           ; $5ce7: $fe $ff
	inc c                                            ; $5ce9: $0c
	nop                                              ; $5cea: $00
	rrca                                             ; $5ceb: $0f
	ld e, $2d                                        ; $5cec: $1e $2d
	inc a                                            ; $5cee: $3c
	ld a, $40                                        ; $5cef: $3e $40
	ld b, d                                          ; $5cf1: $42
	adc b                                            ; $5cf2: $88
	nop                                              ; $5cf3: $00
	nop                                              ; $5cf4: $00
	nop                                              ; $5cf5: $00
	nop                                              ; $5cf6: $00
	nop                                              ; $5cf7: $00
	nop                                              ; $5cf8: $00
	nop                                              ; $5cf9: $00
	add b                                            ; $5cfa: $80
	nop                                              ; $5cfb: $00
	add b                                            ; $5cfc: $80
	nop                                              ; $5cfd: $00
	rst $38                                          ; $5cfe: $ff
	rst GetHLinHL                                          ; $5cff: $cf
	inc c                                            ; $5d00: $0c
	rst $38                                          ; $5d01: $ff
	rst GetHLinHL                                          ; $5d02: $cf
	inc c                                            ; $5d03: $0c
	rst $38                                          ; $5d04: $ff
	rst GetHLinHL                                          ; $5d05: $cf
	inc c                                            ; $5d06: $0c
	rst $38                                          ; $5d07: $ff
	rst GetHLinHL                                          ; $5d08: $cf
	inc c                                            ; $5d09: $0c
	nop                                              ; $5d0a: $00
	ld c, $1c                                        ; $5d0b: $0e $1c
	ld a, [hl+]                                      ; $5d0d: $2a
	jr c, jr_02b_5d4a                                ; $5d0e: $38 $3a

	inc a                                            ; $5d10: $3c
	ld a, $00                                        ; $5d11: $3e $00
	adc b                                            ; $5d13: $88
	nop                                              ; $5d14: $00
	cp e                                             ; $5d15: $bb
	nop                                              ; $5d16: $00
	nop                                              ; $5d17: $00
	nop                                              ; $5d18: $00
	nop                                              ; $5d19: $00
	nop                                              ; $5d1a: $00
	nop                                              ; $5d1b: $00
	nop                                              ; $5d1c: $00
	nop                                              ; $5d1d: $00
	rst $38                                          ; $5d1e: $ff
	call z, $0fff                                    ; $5d1f: $cc $ff $0f
	call z, $0fcc                                    ; $5d22: $cc $cc $0f
	call z, $0fcf                                    ; $5d25: $cc $cf $0f
	call z, $00cf                                    ; $5d28: $cc $cf $00
	db $10                                           ; $5d2b: $10
	ld a, [de]                                       ; $5d2c: $1a
	inc h                                            ; $5d2d: $24
	ld l, $32                                        ; $5d2e: $2e $32
	inc [hl]                                         ; $5d30: $34
	jr c, @+$01                                      ; $5d31: $38 $ff

	call z, $0fff                                    ; $5d33: $cc $ff $0f
	call z, $0fcc                                    ; $5d36: $cc $cc $0f
	call z, $0fcf                                    ; $5d39: $cc $cf $0f
	call z, $00cf                                    ; $5d3c: $cc $cf $00
	db $10                                           ; $5d3f: $10
	ld a, [de]                                       ; $5d40: $1a
	inc h                                            ; $5d41: $24
	ld l, $32                                        ; $5d42: $2e $32
	inc [hl]                                         ; $5d44: $34
	jr c, @+$01                                      ; $5d45: $38 $ff

	call z, $0fff                                    ; $5d47: $cc $ff $0f

jr_02b_5d4a:
	call z, $0fcc                                    ; $5d4a: $cc $cc $0f
	call z, $0fcf                                    ; $5d4d: $cc $cf $0f
	call z, $00cf                                    ; $5d50: $cc $cf $00
	db $10                                           ; $5d53: $10
	ld a, [de]                                       ; $5d54: $1a
	inc h                                            ; $5d55: $24
	ld l, $32                                        ; $5d56: $2e $32
	inc [hl]                                         ; $5d58: $34
	jr c, @+$01                                      ; $5d59: $38 $ff

	call z, $0fff                                    ; $5d5b: $cc $ff $0f
	call z, $0fcc                                    ; $5d5e: $cc $cc $0f
	call z, $0fcf                                    ; $5d61: $cc $cf $0f
	call z, $00cf                                    ; $5d64: $cc $cf $00
	db $10                                           ; $5d67: $10
	ld a, [de]                                       ; $5d68: $1a
	inc h                                            ; $5d69: $24
	ld l, $32                                        ; $5d6a: $2e $32
	inc [hl]                                         ; $5d6c: $34
	jr c, @+$01                                      ; $5d6d: $38 $ff

	call z, $0fff                                    ; $5d6f: $cc $ff $0f
	call z, $0fcc                                    ; $5d72: $cc $cc $0f
	call z, $0fcf                                    ; $5d75: $cc $cf $0f
	call z, $00cf                                    ; $5d78: $cc $cf $00
	db $10                                           ; $5d7b: $10
	ld a, [de]                                       ; $5d7c: $1a
	inc h                                            ; $5d7d: $24
	ld l, $32                                        ; $5d7e: $2e $32
	inc [hl]                                         ; $5d80: $34
	jr c, @+$01                                      ; $5d81: $38 $ff

	call z, $0fff                                    ; $5d83: $cc $ff $0f
	call z, $0fcc                                    ; $5d86: $cc $cc $0f
	call z, $0fcf                                    ; $5d89: $cc $cf $0f
	call z, $00cf                                    ; $5d8c: $cc $cf $00
	db $10                                           ; $5d8f: $10
	ld a, [de]                                       ; $5d90: $1a
	inc h                                            ; $5d91: $24
	ld l, $32                                        ; $5d92: $2e $32
	inc [hl]                                         ; $5d94: $34
	jr c, jr_02b_5db9                                ; $5d95: $38 $22

	ld [hl+], a                                      ; $5d97: $22
	ld de, $1111                                     ; $5d98: $11 $11 $11
	ld de, $1111                                     ; $5d9b: $11 $11 $11
	ld de, $1199                                     ; $5d9e: $11 $99 $11
	ld de, $cffc                                     ; $5da1: $11 $fc $cf
	rst $38                                          ; $5da4: $ff
	call z, $03cc                                    ; $5da5: $cc $cc $03
	call z, $03cc                                    ; $5da8: $cc $cc $03
	call z, $0fcc                                    ; $5dab: $cc $cc $0f
	nop                                              ; $5dae: $00
	db $10                                           ; $5daf: $10
	jr @+$22                                         ; $5db0: $18 $20

	jr z, jr_02b_5de0                                ; $5db2: $28 $2c

	ld l, $30                                        ; $5db4: $2e $30
	db $fc                                           ; $5db6: $fc
	rst GetHLinHL                                          ; $5db7: $cf
	rst $38                                          ; $5db8: $ff

jr_02b_5db9:
	call z, $0fcc                                    ; $5db9: $cc $cc $0f
	call z, $03cc                                    ; $5dbc: $cc $cc $03
	call z, $0fcc                                    ; $5dbf: $cc $cc $0f
	nop                                              ; $5dc2: $00
	db $10                                           ; $5dc3: $10
	jr @+$22                                         ; $5dc4: $18 $20

	jr z, jr_02b_5df4                                ; $5dc6: $28 $2c

	jr nc, @+$34                                     ; $5dc8: $30 $32

	db $fc                                           ; $5dca: $fc
	rst GetHLinHL                                          ; $5dcb: $cf
	rst $38                                          ; $5dcc: $ff
	call z, $03cc                                    ; $5dcd: $cc $cc $03
	call z, $03cc                                    ; $5dd0: $cc $cc $03
	call z, $0fcc                                    ; $5dd3: $cc $cc $0f
	nop                                              ; $5dd6: $00
	db $10                                           ; $5dd7: $10
	jr @+$22                                         ; $5dd8: $18 $20

	jr z, jr_02b_5e08                                ; $5dda: $28 $2c

	ld l, $30                                        ; $5ddc: $2e $30
	db $fc                                           ; $5dde: $fc
	rst GetHLinHL                                          ; $5ddf: $cf

jr_02b_5de0:
	rst $38                                          ; $5de0: $ff
	call z, $03cc                                    ; $5de1: $cc $cc $03
	call z, $03cc                                    ; $5de4: $cc $cc $03
	call z, $0fcc                                    ; $5de7: $cc $cc $0f
	nop                                              ; $5dea: $00
	db $10                                           ; $5deb: $10
	jr @+$22                                         ; $5dec: $18 $20

	jr z, jr_02b_5e1c                                ; $5dee: $28 $2c

	ld l, $30                                        ; $5df0: $2e $30
	db $fc                                           ; $5df2: $fc
	rst GetHLinHL                                          ; $5df3: $cf

jr_02b_5df4:
	rst $38                                          ; $5df4: $ff
	call z, $0fcc                                    ; $5df5: $cc $cc $0f
	call z, $0fcc                                    ; $5df8: $cc $cc $0f
	call z, $0fcc                                    ; $5dfb: $cc $cc $0f
	nop                                              ; $5dfe: $00
	db $10                                           ; $5dff: $10
	jr jr_02b_5e22                                   ; $5e00: $18 $20

	jr z, jr_02b_5e30                                ; $5e02: $28 $2c

	jr nc, jr_02b_5e3a                               ; $5e04: $30 $34

	db $fc                                           ; $5e06: $fc
	rst GetHLinHL                                          ; $5e07: $cf

jr_02b_5e08:
	rst $38                                          ; $5e08: $ff
	call z, $03cc                                    ; $5e09: $cc $cc $03
	call z, $03cc                                    ; $5e0c: $cc $cc $03
	call z, $0fcc                                    ; $5e0f: $cc $cc $0f
	nop                                              ; $5e12: $00
	db $10                                           ; $5e13: $10
	jr jr_02b_5e36                                   ; $5e14: $18 $20

	jr z, @+$2e                                      ; $5e16: $28 $2c

	ld l, $30                                        ; $5e18: $2e $30
	sbc c                                            ; $5e1a: $99
	nop                                              ; $5e1b: $00

jr_02b_5e1c:
	ld de, $1111                                     ; $5e1c: $11 $11 $11
	ld de, $6611                                     ; $5e1f: $11 $11 $66

jr_02b_5e22:
	ld de, $1144                                     ; $5e22: $11 $44 $11
	ld de, $cfff                                     ; $5e25: $11 $ff $cf
	db $fc                                           ; $5e28: $fc
	inc c                                            ; $5e29: $0c
	call z, $cc0c                                    ; $5e2a: $cc $0c $cc
	call z, $cccc                                    ; $5e2d: $cc $cc $cc

jr_02b_5e30:
	call z, $00cc                                    ; $5e30: $cc $cc $00
	ld [de], a                                       ; $5e33: $12
	jr jr_02b_5e58                                   ; $5e34: $18 $22

jr_02b_5e36:
	inc l                                            ; $5e36: $2c
	ld l, $30                                        ; $5e37: $2e $30
	ld [hl-], a                                      ; $5e39: $32

jr_02b_5e3a:
	rst $38                                          ; $5e3a: $ff
	rst GetHLinHL                                          ; $5e3b: $cf
	db $fc                                           ; $5e3c: $fc
	call z, $0ccc                                    ; $5e3d: $cc $cc $0c
	call z, $cccc                                    ; $5e40: $cc $cc $cc
	call z, $cccc                                    ; $5e43: $cc $cc $cc
	nop                                              ; $5e46: $00
	ld [de], a                                       ; $5e47: $12
	ld a, [de]                                       ; $5e48: $1a
	inc h                                            ; $5e49: $24
	ld l, $30                                        ; $5e4a: $2e $30
	ld [hl-], a                                      ; $5e4c: $32
	inc [hl]                                         ; $5e4d: $34
	rst $38                                          ; $5e4e: $ff
	rst GetHLinHL                                          ; $5e4f: $cf
	db $fc                                           ; $5e50: $fc
	inc c                                            ; $5e51: $0c
	call z, $0c0c                                    ; $5e52: $cc $0c $0c
	call z, $cc0c                                    ; $5e55: $cc $0c $cc

jr_02b_5e58:
	call z, $00cc                                    ; $5e58: $cc $cc $00
	ld [de], a                                       ; $5e5b: $12
	jr @+$20                                         ; $5e5c: $18 $1e

	jr z, @+$2c                                      ; $5e5e: $28 $2a

	inc l                                            ; $5e60: $2c
	ld l, $ff                                        ; $5e61: $2e $ff
	rst GetHLinHL                                          ; $5e63: $cf
	db $fc                                           ; $5e64: $fc
	inc c                                            ; $5e65: $0c
	call z, $0c0c                                    ; $5e66: $cc $0c $0c
	call z, $cc0c                                    ; $5e69: $cc $0c $cc
	call z, $00cc                                    ; $5e6c: $cc $cc $00
	ld [de], a                                       ; $5e6f: $12
	jr @+$20                                         ; $5e70: $18 $1e

	jr z, @+$2c                                      ; $5e72: $28 $2a

	inc l                                            ; $5e74: $2c
	ld l, $ff                                        ; $5e75: $2e $ff
	rst GetHLinHL                                          ; $5e77: $cf
	db $fc                                           ; $5e78: $fc
	inc c                                            ; $5e79: $0c
	call z, $0c0c                                    ; $5e7a: $cc $0c $0c
	call z, $cc0c                                    ; $5e7d: $cc $0c $cc
	call z, $00cc                                    ; $5e80: $cc $cc $00
	ld [de], a                                       ; $5e83: $12
	jr jr_02b_5ea4                                   ; $5e84: $18 $1e

	jr z, @+$2c                                      ; $5e86: $28 $2a

	inc l                                            ; $5e88: $2c
	ld l, $99                                        ; $5e89: $2e $99
	nop                                              ; $5e8b: $00
	ld de, $1111                                     ; $5e8c: $11 $11 $11
	ld de, $1111                                     ; $5e8f: $11 $11 $11
	ld de, $1111                                     ; $5e92: $11 $11 $11
	nop                                              ; $5e95: $00
	db $fc                                           ; $5e96: $fc
	rst GetHLinHL                                          ; $5e97: $cf
	rrca                                             ; $5e98: $0f
	call z, $0fcc                                    ; $5e99: $cc $cc $0f
	call z, $0fcc                                    ; $5e9c: $cc $cc $0f
	call z, $0fcc                                    ; $5e9f: $cc $cc $0f
	nop                                              ; $5ea2: $00
	inc c                                            ; $5ea3: $0c

jr_02b_5ea4:
	inc d                                            ; $5ea4: $14
	inc e                                            ; $5ea5: $1c
	inc h                                            ; $5ea6: $24

jr_02b_5ea7:
	jr z, jr_02b_5ed5                                ; $5ea7: $28 $2c

	jr nc, jr_02b_5ea7                               ; $5ea9: $30 $fc

	rst GetHLinHL                                          ; $5eab: $cf
	rrca                                             ; $5eac: $0f
	call z, $0fcc                                    ; $5ead: $cc $cc $0f
	call z, $0fcc                                    ; $5eb0: $cc $cc $0f
	call z, $0fcc                                    ; $5eb3: $cc $cc $0f
	nop                                              ; $5eb6: $00
	inc c                                            ; $5eb7: $0c
	inc d                                            ; $5eb8: $14
	inc e                                            ; $5eb9: $1c
	inc h                                            ; $5eba: $24

jr_02b_5ebb:
	jr z, jr_02b_5ee9                                ; $5ebb: $28 $2c

	jr nc, jr_02b_5ebb                               ; $5ebd: $30 $fc

	rst GetHLinHL                                          ; $5ebf: $cf
	rrca                                             ; $5ec0: $0f
	call z, $0fcc                                    ; $5ec1: $cc $cc $0f
	call z, $0fcc                                    ; $5ec4: $cc $cc $0f
	call z, $0fcc                                    ; $5ec7: $cc $cc $0f
	nop                                              ; $5eca: $00
	inc c                                            ; $5ecb: $0c
	inc d                                            ; $5ecc: $14
	inc e                                            ; $5ecd: $1c
	inc h                                            ; $5ece: $24

jr_02b_5ecf:
	jr z, @+$2e                                      ; $5ecf: $28 $2c

	jr nc, jr_02b_5ecf                               ; $5ed1: $30 $fc

	rst GetHLinHL                                          ; $5ed3: $cf
	rrca                                             ; $5ed4: $0f

jr_02b_5ed5:
	call z, $0fcc                                    ; $5ed5: $cc $cc $0f
	call z, $0fcc                                    ; $5ed8: $cc $cc $0f
	call z, $0fcc                                    ; $5edb: $cc $cc $0f
	nop                                              ; $5ede: $00
	inc c                                            ; $5edf: $0c
	inc d                                            ; $5ee0: $14
	inc e                                            ; $5ee1: $1c
	inc h                                            ; $5ee2: $24

jr_02b_5ee3:
	jr z, @+$2e                                      ; $5ee3: $28 $2c

	jr nc, jr_02b_5ee3                               ; $5ee5: $30 $fc

	rst GetHLinHL                                          ; $5ee7: $cf
	rrca                                             ; $5ee8: $0f

jr_02b_5ee9:
	call z, $0fcc                                    ; $5ee9: $cc $cc $0f
	call z, $0fcc                                    ; $5eec: $cc $cc $0f
	call z, $0fcc                                    ; $5eef: $cc $cc $0f
	nop                                              ; $5ef2: $00
	inc c                                            ; $5ef3: $0c
	inc d                                            ; $5ef4: $14
	inc e                                            ; $5ef5: $1c
	inc h                                            ; $5ef6: $24
	jr z, @+$2e                                      ; $5ef7: $28 $2c

	jr nc, jr_02b_5f0c                               ; $5ef9: $30 $11

	ld b, h                                          ; $5efb: $44
	ld de, $1111                                     ; $5efc: $11 $11 $11
	ld h, [hl]                                       ; $5eff: $66
	ld de, $6611                                     ; $5f00: $11 $11 $66
	ld h, [hl]                                       ; $5f03: $66
	ld de, $fc66                                     ; $5f04: $11 $66 $fc
	rst GetHLinHL                                          ; $5f07: $cf
	rrca                                             ; $5f08: $0f
	call z, $03cc                                    ; $5f09: $cc $cc $03

jr_02b_5f0c:
	call z, $03cc                                    ; $5f0c: $cc $cc $03
	call z, $03cc                                    ; $5f0f: $cc $cc $03
	nop                                              ; $5f12: $00
	inc c                                            ; $5f13: $0c
	inc d                                            ; $5f14: $14
	inc e                                            ; $5f15: $1c
	inc h                                            ; $5f16: $24
	jr z, jr_02b_5f43                                ; $5f17: $28 $2a

	inc l                                            ; $5f19: $2c
	db $fc                                           ; $5f1a: $fc
	rst GetHLinHL                                          ; $5f1b: $cf
	rrca                                             ; $5f1c: $0f
	call z, $03cc                                    ; $5f1d: $cc $cc $03
	call z, $03cc                                    ; $5f20: $cc $cc $03
	call z, $03cc                                    ; $5f23: $cc $cc $03
	nop                                              ; $5f26: $00
	inc c                                            ; $5f27: $0c
	inc d                                            ; $5f28: $14
	inc e                                            ; $5f29: $1c
	inc h                                            ; $5f2a: $24
	jr z, jr_02b_5f57                                ; $5f2b: $28 $2a

	inc l                                            ; $5f2d: $2c
	db $fc                                           ; $5f2e: $fc
	rst GetHLinHL                                          ; $5f2f: $cf
	rrca                                             ; $5f30: $0f
	call z, $03cc                                    ; $5f31: $cc $cc $03
	call z, $03cc                                    ; $5f34: $cc $cc $03
	call z, $03cc                                    ; $5f37: $cc $cc $03
	nop                                              ; $5f3a: $00
	inc c                                            ; $5f3b: $0c
	inc d                                            ; $5f3c: $14
	inc e                                            ; $5f3d: $1c
	inc h                                            ; $5f3e: $24
	jr z, jr_02b_5f6b                                ; $5f3f: $28 $2a

	inc l                                            ; $5f41: $2c
	db $fc                                           ; $5f42: $fc

jr_02b_5f43:
	rst GetHLinHL                                          ; $5f43: $cf
	rrca                                             ; $5f44: $0f
	call z, $03cc                                    ; $5f45: $cc $cc $03
	call z, $03cc                                    ; $5f48: $cc $cc $03
	call z, $03cc                                    ; $5f4b: $cc $cc $03
	nop                                              ; $5f4e: $00
	inc c                                            ; $5f4f: $0c
	inc d                                            ; $5f50: $14
	inc e                                            ; $5f51: $1c
	inc h                                            ; $5f52: $24
	jr z, jr_02b_5f7f                                ; $5f53: $28 $2a

	inc l                                            ; $5f55: $2c
	db $fc                                           ; $5f56: $fc

jr_02b_5f57:
	rst GetHLinHL                                          ; $5f57: $cf
	rrca                                             ; $5f58: $0f
	call z, $03cc                                    ; $5f59: $cc $cc $03
	call z, $03cc                                    ; $5f5c: $cc $cc $03
	call z, $03cc                                    ; $5f5f: $cc $cc $03
	nop                                              ; $5f62: $00
	inc c                                            ; $5f63: $0c
	inc d                                            ; $5f64: $14
	inc e                                            ; $5f65: $1c
	inc h                                            ; $5f66: $24
	jr z, @+$2c                                      ; $5f67: $28 $2a

	inc l                                            ; $5f69: $2c
	ld [hl+], a                                      ; $5f6a: $22

jr_02b_5f6b:
	ld de, $2222                                     ; $5f6b: $11 $22 $22
	ld [hl+], a                                      ; $5f6e: $22
	ld [hl+], a                                      ; $5f6f: $22
	ld [hl+], a                                      ; $5f70: $22
	ld [hl+], a                                      ; $5f71: $22
	ld [hl+], a                                      ; $5f72: $22
	ld [hl+], a                                      ; $5f73: $22
	ld [hl+], a                                      ; $5f74: $22
	ld [hl+], a                                      ; $5f75: $22
	db $fc                                           ; $5f76: $fc
	rst GetHLinHL                                          ; $5f77: $cf
	rrca                                             ; $5f78: $0f
	call z, $03cc                                    ; $5f79: $cc $cc $03
	call z, $03cc                                    ; $5f7c: $cc $cc $03

jr_02b_5f7f:
	call z, $03cc                                    ; $5f7f: $cc $cc $03
	nop                                              ; $5f82: $00
	inc c                                            ; $5f83: $0c
	inc d                                            ; $5f84: $14
	inc e                                            ; $5f85: $1c
	inc h                                            ; $5f86: $24
	jr z, jr_02b_5fb3                                ; $5f87: $28 $2a

	inc l                                            ; $5f89: $2c
	db $fc                                           ; $5f8a: $fc
	rst GetHLinHL                                          ; $5f8b: $cf
	rrca                                             ; $5f8c: $0f
	inc c                                            ; $5f8d: $0c
	call z, $cc0f                                    ; $5f8e: $cc $0f $cc
	call z, $cc0f                                    ; $5f91: $cc $0f $cc
	call z, $000f                                    ; $5f94: $cc $0f $00
	inc c                                            ; $5f97: $0c
	ld [de], a                                       ; $5f98: $12
	ld a, [de]                                       ; $5f99: $1a
	ld [hl+], a                                      ; $5f9a: $22
	ld h, $2a                                        ; $5f9b: $26 $2a
	ld l, $fc                                        ; $5f9d: $2e $fc
	rst GetHLinHL                                          ; $5f9f: $cf
	rrca                                             ; $5fa0: $0f
	inc c                                            ; $5fa1: $0c
	call z, $cc03                                    ; $5fa2: $cc $03 $cc
	call z, $cc03                                    ; $5fa5: $cc $03 $cc
	call z, $0003                                    ; $5fa8: $cc $03 $00
	inc c                                            ; $5fab: $0c
	ld [de], a                                       ; $5fac: $12
	ld a, [de]                                       ; $5fad: $1a
	ld [hl+], a                                      ; $5fae: $22
	ld h, $28                                        ; $5faf: $26 $28
	ld a, [hl+]                                      ; $5fb1: $2a
	db $fc                                           ; $5fb2: $fc

jr_02b_5fb3:
	rst GetHLinHL                                          ; $5fb3: $cf
	rrca                                             ; $5fb4: $0f
	inc c                                            ; $5fb5: $0c
	call z, $cc03                                    ; $5fb6: $cc $03 $cc
	call z, $cc03                                    ; $5fb9: $cc $03 $cc
	call z, $0003                                    ; $5fbc: $cc $03 $00
	inc c                                            ; $5fbf: $0c
	ld [de], a                                       ; $5fc0: $12
	ld a, [de]                                       ; $5fc1: $1a
	ld [hl+], a                                      ; $5fc2: $22
	ld h, $28                                        ; $5fc3: $26 $28
	ld a, [hl+]                                      ; $5fc5: $2a
	db $fc                                           ; $5fc6: $fc
	rst GetHLinHL                                          ; $5fc7: $cf
	rrca                                             ; $5fc8: $0f
	inc c                                            ; $5fc9: $0c
	call z, $cc03                                    ; $5fca: $cc $03 $cc
	call z, $cc03                                    ; $5fcd: $cc $03 $cc
	call z, $0003                                    ; $5fd0: $cc $03 $00
	inc c                                            ; $5fd3: $0c
	ld [de], a                                       ; $5fd4: $12
	ld a, [de]                                       ; $5fd5: $1a
	ld [hl+], a                                      ; $5fd6: $22
	ld h, $28                                        ; $5fd7: $26 $28
	ld a, [hl+]                                      ; $5fd9: $2a
	ld [hl+], a                                      ; $5fda: $22
	ld h, [hl]                                       ; $5fdb: $66
	ld [hl+], a                                      ; $5fdc: $22
	ld [hl+], a                                      ; $5fdd: $22
	ld [hl+], a                                      ; $5fde: $22
	ld [hl+], a                                      ; $5fdf: $22
	ld [hl+], a                                      ; $5fe0: $22
	inc sp                                           ; $5fe1: $33
	ld [hl+], a                                      ; $5fe2: $22
	ld [hl+], a                                      ; $5fe3: $22
	ld [hl+], a                                      ; $5fe4: $22
	ld [hl+], a                                      ; $5fe5: $22
	db $fc                                           ; $5fe6: $fc
	rst $38                                          ; $5fe7: $ff
	inc c                                            ; $5fe8: $0c
	call z, $0ccc                                    ; $5fe9: $cc $cc $0c
	call z, $0ccc                                    ; $5fec: $cc $cc $0c
	call z, $0ccc                                    ; $5fef: $cc $cc $0c
	nop                                              ; $5ff2: $00
	ld c, $16                                        ; $5ff3: $0e $16
	ld e, $26                                        ; $5ff5: $1e $26
	jr z, jr_02b_6023                                ; $5ff7: $28 $2a

	inc l                                            ; $5ff9: $2c
	db $fc                                           ; $5ffa: $fc
	rst $38                                          ; $5ffb: $ff
	inc c                                            ; $5ffc: $0c
	call z, $0ccc                                    ; $5ffd: $cc $cc $0c
	call z, $0ccc                                    ; $6000: $cc $cc $0c
	call z, $0ccc                                    ; $6003: $cc $cc $0c
	nop                                              ; $6006: $00
	ld c, $16                                        ; $6007: $0e $16
	ld e, $26                                        ; $6009: $1e $26
	jr z, jr_02b_6037                                ; $600b: $28 $2a

	inc l                                            ; $600d: $2c
	db $fc                                           ; $600e: $fc
	rst $38                                          ; $600f: $ff
	inc c                                            ; $6010: $0c
	call z, $0ccc                                    ; $6011: $cc $cc $0c
	call z, $0ccc                                    ; $6014: $cc $cc $0c
	call z, $0ccc                                    ; $6017: $cc $cc $0c
	nop                                              ; $601a: $00
	ld c, $16                                        ; $601b: $0e $16
	ld e, $26                                        ; $601d: $1e $26
	jr z, @+$2c                                      ; $601f: $28 $2a

	inc l                                            ; $6021: $2c
	db $fc                                           ; $6022: $fc

jr_02b_6023:
	rst $38                                          ; $6023: $ff
	inc c                                            ; $6024: $0c
	call z, $0ccc                                    ; $6025: $cc $cc $0c
	call z, $0ccc                                    ; $6028: $cc $cc $0c
	call z, $0ccc                                    ; $602b: $cc $cc $0c
	nop                                              ; $602e: $00
	ld c, $16                                        ; $602f: $0e $16
	ld e, $26                                        ; $6031: $1e $26
	jr z, jr_02b_605f                                ; $6033: $28 $2a

	inc l                                            ; $6035: $2c
	db $fc                                           ; $6036: $fc

jr_02b_6037:
	rst $38                                          ; $6037: $ff
	inc c                                            ; $6038: $0c
	call z, $0ccc                                    ; $6039: $cc $cc $0c
	call z, $0ccc                                    ; $603c: $cc $cc $0c
	call z, $0ccc                                    ; $603f: $cc $cc $0c
	nop                                              ; $6042: $00
	ld c, $16                                        ; $6043: $0e $16
	ld e, $26                                        ; $6045: $1e $26
	jr z, jr_02b_6073                                ; $6047: $28 $2a

	inc l                                            ; $6049: $2c
	ld de, $1111                                     ; $604a: $11 $11 $11
	ld de, $1111                                     ; $604d: $11 $11 $11
	ld de, $0011                                     ; $6050: $11 $11 $00
	nop                                              ; $6053: $00
	ld de, $fc00                                     ; $6054: $11 $00 $fc
	rst GetHLinHL                                          ; $6057: $cf
	rrca                                             ; $6058: $0f
	call z, $03cc                                    ; $6059: $cc $cc $03
	call z, $03cc                                    ; $605c: $cc $cc $03

jr_02b_605f:
	call z, $03cc                                    ; $605f: $cc $cc $03
	nop                                              ; $6062: $00
	inc c                                            ; $6063: $0c
	inc d                                            ; $6064: $14
	inc e                                            ; $6065: $1c
	inc h                                            ; $6066: $24
	jr z, jr_02b_6093                                ; $6067: $28 $2a

	inc l                                            ; $6069: $2c
	db $fc                                           ; $606a: $fc
	rst GetHLinHL                                          ; $606b: $cf
	rrca                                             ; $606c: $0f
	call z, $03cc                                    ; $606d: $cc $cc $03
	call z, $0fcc                                    ; $6070: $cc $cc $0f

jr_02b_6073:
	call z, $0fcc                                    ; $6073: $cc $cc $0f
	nop                                              ; $6076: $00
	inc c                                            ; $6077: $0c
	inc d                                            ; $6078: $14
	inc e                                            ; $6079: $1c
	inc h                                            ; $607a: $24
	jr z, jr_02b_60a7                                ; $607b: $28 $2a

	ld l, $fc                                        ; $607d: $2e $fc
	rst GetHLinHL                                          ; $607f: $cf
	rrca                                             ; $6080: $0f
	call z, $03cc                                    ; $6081: $cc $cc $03
	call z, $03cc                                    ; $6084: $cc $cc $03
	call z, $03cc                                    ; $6087: $cc $cc $03
	nop                                              ; $608a: $00
	inc c                                            ; $608b: $0c
	inc d                                            ; $608c: $14
	inc e                                            ; $608d: $1c
	inc h                                            ; $608e: $24
	jr z, jr_02b_60bb                                ; $608f: $28 $2a

	inc l                                            ; $6091: $2c
	db $fc                                           ; $6092: $fc

jr_02b_6093:
	rst GetHLinHL                                          ; $6093: $cf
	rrca                                             ; $6094: $0f
	call z, $03cc                                    ; $6095: $cc $cc $03
	call z, $03cc                                    ; $6098: $cc $cc $03
	call z, $03cc                                    ; $609b: $cc $cc $03
	nop                                              ; $609e: $00
	inc c                                            ; $609f: $0c
	inc d                                            ; $60a0: $14
	inc e                                            ; $60a1: $1c
	inc h                                            ; $60a2: $24
	jr z, jr_02b_60cf                                ; $60a3: $28 $2a

	inc l                                            ; $60a5: $2c
	db $fc                                           ; $60a6: $fc

jr_02b_60a7:
	rst GetHLinHL                                          ; $60a7: $cf
	rrca                                             ; $60a8: $0f
	call z, $03cc                                    ; $60a9: $cc $cc $03
	call z, $03cc                                    ; $60ac: $cc $cc $03
	call z, $03cc                                    ; $60af: $cc $cc $03
	nop                                              ; $60b2: $00
	inc c                                            ; $60b3: $0c
	inc d                                            ; $60b4: $14
	inc e                                            ; $60b5: $1c
	inc h                                            ; $60b6: $24
	jr z, jr_02b_60e3                                ; $60b7: $28 $2a

	inc l                                            ; $60b9: $2c
	ld h, [hl]                                       ; $60ba: $66

jr_02b_60bb:
	nop                                              ; $60bb: $00
	ld h, [hl]                                       ; $60bc: $66
	ld h, [hl]                                       ; $60bd: $66
	ld h, [hl]                                       ; $60be: $66
	ld de, $2266                                     ; $60bf: $11 $66 $22
	ld de, $6611                                     ; $60c2: $11 $11 $66
	ld de, $cffc                                     ; $60c5: $11 $fc $cf
	rrca                                             ; $60c8: $0f
	call z, $0fcc                                    ; $60c9: $cc $cc $0f
	call z, $0fcc                                    ; $60cc: $cc $cc $0f

jr_02b_60cf:
	call z, $0fcc                                    ; $60cf: $cc $cc $0f
	nop                                              ; $60d2: $00
	inc c                                            ; $60d3: $0c
	inc d                                            ; $60d4: $14
	inc e                                            ; $60d5: $1c
	inc h                                            ; $60d6: $24

jr_02b_60d7:
	jr z, jr_02b_6105                                ; $60d7: $28 $2c

	jr nc, jr_02b_60d7                               ; $60d9: $30 $fc

	rst GetHLinHL                                          ; $60db: $cf
	rrca                                             ; $60dc: $0f
	call z, $0fcc                                    ; $60dd: $cc $cc $0f
	call z, $0fcc                                    ; $60e0: $cc $cc $0f

jr_02b_60e3:
	call z, $0fcc                                    ; $60e3: $cc $cc $0f
	nop                                              ; $60e6: $00
	inc c                                            ; $60e7: $0c
	inc d                                            ; $60e8: $14
	inc e                                            ; $60e9: $1c
	inc h                                            ; $60ea: $24

jr_02b_60eb:
	jr z, jr_02b_6119                                ; $60eb: $28 $2c

	jr nc, jr_02b_60eb                               ; $60ed: $30 $fc

	rst GetHLinHL                                          ; $60ef: $cf
	rrca                                             ; $60f0: $0f
	call z, $0fcc                                    ; $60f1: $cc $cc $0f
	call z, $0fcc                                    ; $60f4: $cc $cc $0f
	call z, $0fcc                                    ; $60f7: $cc $cc $0f
	nop                                              ; $60fa: $00
	inc c                                            ; $60fb: $0c
	inc d                                            ; $60fc: $14
	inc e                                            ; $60fd: $1c
	inc h                                            ; $60fe: $24

jr_02b_60ff:
	jr z, jr_02b_612d                                ; $60ff: $28 $2c

	jr nc, jr_02b_60ff                               ; $6101: $30 $fc

	rst GetHLinHL                                          ; $6103: $cf
	rrca                                             ; $6104: $0f

jr_02b_6105:
	call z, $0fcc                                    ; $6105: $cc $cc $0f
	call z, $0fcc                                    ; $6108: $cc $cc $0f
	call z, $0fcc                                    ; $610b: $cc $cc $0f
	nop                                              ; $610e: $00
	inc c                                            ; $610f: $0c
	inc d                                            ; $6110: $14
	inc e                                            ; $6111: $1c
	inc h                                            ; $6112: $24

jr_02b_6113:
	jr z, @+$2e                                      ; $6113: $28 $2c

	jr nc, jr_02b_6113                               ; $6115: $30 $fc

	rst GetHLinHL                                          ; $6117: $cf
	rrca                                             ; $6118: $0f

jr_02b_6119:
	call z, $0fcc                                    ; $6119: $cc $cc $0f
	call z, $0fcc                                    ; $611c: $cc $cc $0f
	call z, $0fcc                                    ; $611f: $cc $cc $0f
	nop                                              ; $6122: $00
	inc c                                            ; $6123: $0c
	inc d                                            ; $6124: $14
	inc e                                            ; $6125: $1c
	inc h                                            ; $6126: $24

jr_02b_6127:
	jr z, @+$2e                                      ; $6127: $28 $2c

	jr nc, jr_02b_6127                               ; $6129: $30 $fc

	rst GetHLinHL                                          ; $612b: $cf
	rrca                                             ; $612c: $0f

jr_02b_612d:
	call z, $0fcc                                    ; $612d: $cc $cc $0f
	call z, $0fcc                                    ; $6130: $cc $cc $0f
	call z, $0fcc                                    ; $6133: $cc $cc $0f
	nop                                              ; $6136: $00
	inc c                                            ; $6137: $0c
	inc d                                            ; $6138: $14
	inc e                                            ; $6139: $1c
	inc h                                            ; $613a: $24
	jr z, @+$2e                                      ; $613b: $28 $2c

	jr nc, jr_02b_6150                               ; $613d: $30 $11

	ld [hl], a                                       ; $613f: $77
	ld de, $1111                                     ; $6140: $11 $11 $11
	ld de, $0011                                     ; $6143: $11 $11 $00
	ld de, $1111                                     ; $6146: $11 $11 $11
	ld de, $cffc                                     ; $6149: $11 $fc $cf
	rrca                                             ; $614c: $0f
	call z, $0fcc                                    ; $614d: $cc $cc $0f

jr_02b_6150:
	call z, $0fcc                                    ; $6150: $cc $cc $0f
	call z, $0fcc                                    ; $6153: $cc $cc $0f
	nop                                              ; $6156: $00
	inc c                                            ; $6157: $0c
	inc d                                            ; $6158: $14
	inc e                                            ; $6159: $1c
	inc h                                            ; $615a: $24

jr_02b_615b:
	jr z, jr_02b_6189                                ; $615b: $28 $2c

	jr nc, jr_02b_615b                               ; $615d: $30 $fc

	rst GetHLinHL                                          ; $615f: $cf
	rrca                                             ; $6160: $0f
	call z, $0fcc                                    ; $6161: $cc $cc $0f
	call z, $0fcc                                    ; $6164: $cc $cc $0f
	call z, $0fcc                                    ; $6167: $cc $cc $0f
	nop                                              ; $616a: $00
	inc c                                            ; $616b: $0c
	inc d                                            ; $616c: $14
	inc e                                            ; $616d: $1c
	inc h                                            ; $616e: $24

jr_02b_616f:
	jr z, jr_02b_619d                                ; $616f: $28 $2c

	jr nc, jr_02b_616f                               ; $6171: $30 $fc

	rst GetHLinHL                                          ; $6173: $cf
	rrca                                             ; $6174: $0f
	call z, $0fcc                                    ; $6175: $cc $cc $0f
	call z, $0fcc                                    ; $6178: $cc $cc $0f
	call z, $0fcc                                    ; $617b: $cc $cc $0f
	nop                                              ; $617e: $00
	inc c                                            ; $617f: $0c
	inc d                                            ; $6180: $14
	inc e                                            ; $6181: $1c
	inc h                                            ; $6182: $24

jr_02b_6183:
	jr z, @+$2e                                      ; $6183: $28 $2c

	jr nc, jr_02b_6183                               ; $6185: $30 $fc

	rst GetHLinHL                                          ; $6187: $cf
	rrca                                             ; $6188: $0f

jr_02b_6189:
	call z, $0fcc                                    ; $6189: $cc $cc $0f
	call z, $0fcc                                    ; $618c: $cc $cc $0f
	call z, $0fcc                                    ; $618f: $cc $cc $0f
	nop                                              ; $6192: $00
	inc c                                            ; $6193: $0c
	inc d                                            ; $6194: $14
	inc e                                            ; $6195: $1c
	inc h                                            ; $6196: $24

jr_02b_6197:
	jr z, @+$2e                                      ; $6197: $28 $2c

	jr nc, jr_02b_6197                               ; $6199: $30 $fc

	rst GetHLinHL                                          ; $619b: $cf
	rrca                                             ; $619c: $0f

jr_02b_619d:
	call z, $0fcc                                    ; $619d: $cc $cc $0f
	call z, $0fcc                                    ; $61a0: $cc $cc $0f
	call z, $0fcc                                    ; $61a3: $cc $cc $0f
	nop                                              ; $61a6: $00
	inc c                                            ; $61a7: $0c
	inc d                                            ; $61a8: $14
	inc e                                            ; $61a9: $1c
	inc h                                            ; $61aa: $24
	jr z, @+$2e                                      ; $61ab: $28 $2c

	jr nc, jr_02b_61c0                               ; $61ad: $30 $11

	ld h, [hl]                                       ; $61af: $66
	ld de, $1111                                     ; $61b0: $11 $11 $11
	ld de, $0011                                     ; $61b3: $11 $11 $00
	ld de, $1111                                     ; $61b6: $11 $11 $11
	ld de, $cffc                                     ; $61b9: $11 $fc $cf
	rrca                                             ; $61bc: $0f
	call z, $0fcc                                    ; $61bd: $cc $cc $0f

jr_02b_61c0:
	call z, $0fcc                                    ; $61c0: $cc $cc $0f
	call z, $0fcc                                    ; $61c3: $cc $cc $0f
	nop                                              ; $61c6: $00
	inc c                                            ; $61c7: $0c
	inc d                                            ; $61c8: $14
	inc e                                            ; $61c9: $1c
	inc h                                            ; $61ca: $24

jr_02b_61cb:
	jr z, jr_02b_61f9                                ; $61cb: $28 $2c

	jr nc, jr_02b_61cb                               ; $61cd: $30 $fc

	rst GetHLinHL                                          ; $61cf: $cf
	rrca                                             ; $61d0: $0f
	call z, $0fcc                                    ; $61d1: $cc $cc $0f
	call z, $0fcc                                    ; $61d4: $cc $cc $0f
	call z, $0fcc                                    ; $61d7: $cc $cc $0f
	nop                                              ; $61da: $00
	inc c                                            ; $61db: $0c
	inc d                                            ; $61dc: $14
	inc e                                            ; $61dd: $1c
	inc h                                            ; $61de: $24

jr_02b_61df:
	jr z, jr_02b_620d                                ; $61df: $28 $2c

	jr nc, jr_02b_61df                               ; $61e1: $30 $fc

	rst GetHLinHL                                          ; $61e3: $cf
	rrca                                             ; $61e4: $0f
	call z, $0fcc                                    ; $61e5: $cc $cc $0f
	call z, $0fcc                                    ; $61e8: $cc $cc $0f
	call z, $0fcc                                    ; $61eb: $cc $cc $0f
	nop                                              ; $61ee: $00
	inc c                                            ; $61ef: $0c
	inc d                                            ; $61f0: $14
	inc e                                            ; $61f1: $1c
	inc h                                            ; $61f2: $24

jr_02b_61f3:
	jr z, @+$2e                                      ; $61f3: $28 $2c

	jr nc, jr_02b_61f3                               ; $61f5: $30 $fc

	rst GetHLinHL                                          ; $61f7: $cf
	rrca                                             ; $61f8: $0f

jr_02b_61f9:
	call z, $0fcc                                    ; $61f9: $cc $cc $0f
	call z, $0fcc                                    ; $61fc: $cc $cc $0f
	call z, $0fcc                                    ; $61ff: $cc $cc $0f
	nop                                              ; $6202: $00
	inc c                                            ; $6203: $0c
	inc d                                            ; $6204: $14
	inc e                                            ; $6205: $1c
	inc h                                            ; $6206: $24

jr_02b_6207:
	jr z, @+$2e                                      ; $6207: $28 $2c

	jr nc, jr_02b_6207                               ; $6209: $30 $fc

	rst GetHLinHL                                          ; $620b: $cf
	rrca                                             ; $620c: $0f

jr_02b_620d:
	call z, $0fcc                                    ; $620d: $cc $cc $0f
	call z, $0fcc                                    ; $6210: $cc $cc $0f
	call z, $0fcc                                    ; $6213: $cc $cc $0f
	nop                                              ; $6216: $00
	inc c                                            ; $6217: $0c
	inc d                                            ; $6218: $14
	inc e                                            ; $6219: $1c
	inc h                                            ; $621a: $24
	jr z, @+$2e                                      ; $621b: $28 $2c

	jr nc, jr_02b_6230                               ; $621d: $30 $11

	ld de, $1111                                     ; $621f: $11 $11 $11
	ld de, $1111                                     ; $6222: $11 $11 $11
	ld de, $1111                                     ; $6225: $11 $11 $11
	ld de, $fc11                                     ; $6228: $11 $11 $fc
	ret nz                                           ; $622b: $c0

	rrca                                             ; $622c: $0f
	call z, $0cc0                                    ; $622d: $cc $c0 $0c

jr_02b_6230:
	call z, $0cc0                                    ; $6230: $cc $c0 $0c
	call z, $0cc0                                    ; $6233: $cc $c0 $0c
	nop                                              ; $6236: $00
	ld [$140e], sp                                   ; $6237: $08 $0e $14
	ld a, [de]                                       ; $623a: $1a
	ld e, $20                                        ; $623b: $1e $20
	ld [hl+], a                                      ; $623d: $22
	db $fc                                           ; $623e: $fc
	ret nz                                           ; $623f: $c0

	rrca                                             ; $6240: $0f
	call z, $0cc0                                    ; $6241: $cc $c0 $0c
	call z, $0cc0                                    ; $6244: $cc $c0 $0c
	call z, $0cc0                                    ; $6247: $cc $c0 $0c
	nop                                              ; $624a: $00
	ld [$140e], sp                                   ; $624b: $08 $0e $14
	ld a, [de]                                       ; $624e: $1a
	ld e, $20                                        ; $624f: $1e $20
	ld [hl+], a                                      ; $6251: $22
	db $fc                                           ; $6252: $fc
	ret nz                                           ; $6253: $c0

	rrca                                             ; $6254: $0f
	call z, $0cc0                                    ; $6255: $cc $c0 $0c
	call z, $0cc0                                    ; $6258: $cc $c0 $0c
	call z, $0cc0                                    ; $625b: $cc $c0 $0c
	nop                                              ; $625e: $00
	ld [$140e], sp                                   ; $625f: $08 $0e $14
	ld a, [de]                                       ; $6262: $1a
	ld e, $20                                        ; $6263: $1e $20
	ld [hl+], a                                      ; $6265: $22
	db $fc                                           ; $6266: $fc
	ret nz                                           ; $6267: $c0

	rrca                                             ; $6268: $0f
	call z, $0cc0                                    ; $6269: $cc $c0 $0c
	call z, $0fc0                                    ; $626c: $cc $c0 $0f
	call z, $0fc0                                    ; $626f: $cc $c0 $0f
	nop                                              ; $6272: $00
	ld [$140e], sp                                   ; $6273: $08 $0e $14
	ld a, [de]                                       ; $6276: $1a
	ld e, $20                                        ; $6277: $1e $20
	inc h                                            ; $6279: $24
	db $fc                                           ; $627a: $fc
	ret nz                                           ; $627b: $c0

	rrca                                             ; $627c: $0f
	call z, $0cc0                                    ; $627d: $cc $c0 $0c
	call z, $0cc0                                    ; $6280: $cc $c0 $0c
	call z, $0cc0                                    ; $6283: $cc $c0 $0c
	nop                                              ; $6286: $00
	ld [$140e], sp                                   ; $6287: $08 $0e $14
	ld a, [de]                                       ; $628a: $1a
	ld e, $20                                        ; $628b: $1e $20
	ld [hl+], a                                      ; $628d: $22
	ld de, $1111                                     ; $628e: $11 $11 $11
	ld de, $1111                                     ; $6291: $11 $11 $11
	ld de, $1111                                     ; $6294: $11 $11 $11
	ld de, $1111                                     ; $6297: $11 $11 $11
	rst $38                                          ; $629a: $ff
	db $fc                                           ; $629b: $fc
	rst GetHLinHL                                          ; $629c: $cf
	inc c                                            ; $629d: $0c
	call z, $0ccc                                    ; $629e: $cc $cc $0c
	call z, $0ccc                                    ; $62a1: $cc $cc $0c
	call z, $00cc                                    ; $62a4: $cc $cc $00
	db $10                                           ; $62a7: $10
	jr @+$22                                         ; $62a8: $18 $20

	jr z, jr_02b_62d8                                ; $62aa: $28 $2c

	ld l, $30                                        ; $62ac: $2e $30
	rst $38                                          ; $62ae: $ff
	db $fc                                           ; $62af: $fc
	rst GetHLinHL                                          ; $62b0: $cf
	inc c                                            ; $62b1: $0c
	call z, $0ccc                                    ; $62b2: $cc $cc $0c
	call z, $0ccc                                    ; $62b5: $cc $cc $0c
	call z, $00cc                                    ; $62b8: $cc $cc $00
	db $10                                           ; $62bb: $10
	jr jr_02b_62de                                   ; $62bc: $18 $20

	jr z, jr_02b_62ec                                ; $62be: $28 $2c

	ld l, $30                                        ; $62c0: $2e $30
	rst $38                                          ; $62c2: $ff
	db $fc                                           ; $62c3: $fc
	rst GetHLinHL                                          ; $62c4: $cf
	inc c                                            ; $62c5: $0c
	call z, $0ccc                                    ; $62c6: $cc $cc $0c
	call z, $0ccc                                    ; $62c9: $cc $cc $0c
	call z, $00cc                                    ; $62cc: $cc $cc $00
	db $10                                           ; $62cf: $10
	jr jr_02b_62f2                                   ; $62d0: $18 $20

	jr z, jr_02b_6300                                ; $62d2: $28 $2c

	ld l, $30                                        ; $62d4: $2e $30
	rst $38                                          ; $62d6: $ff
	db $fc                                           ; $62d7: $fc

jr_02b_62d8:
	rst GetHLinHL                                          ; $62d8: $cf
	rrca                                             ; $62d9: $0f
	db $fc                                           ; $62da: $fc
	call z, $fc0f                                    ; $62db: $cc $0f $fc

jr_02b_62de:
	call z, $fc0f                                    ; $62de: $cc $0f $fc
	call z, $1000                                    ; $62e1: $cc $00 $10
	inc e                                            ; $62e4: $1c
	jr z, jr_02b_631b                                ; $62e5: $28 $34

	jr c, @+$3c                                      ; $62e7: $38 $3a

	inc a                                            ; $62e9: $3c
	rst $38                                          ; $62ea: $ff
	db $fc                                           ; $62eb: $fc

jr_02b_62ec:
	rst GetHLinHL                                          ; $62ec: $cf
	rrca                                             ; $62ed: $0f
	db $fc                                           ; $62ee: $fc
	call z, $fc0f                                    ; $62ef: $cc $0f $fc

jr_02b_62f2:
	call z, $fc0f                                    ; $62f2: $cc $0f $fc
	call z, $1000                                    ; $62f5: $cc $00 $10
	inc e                                            ; $62f8: $1c
	jr z, @+$36                                      ; $62f9: $28 $34

	jr c, @+$3c                                      ; $62fb: $38 $3a

	inc a                                            ; $62fd: $3c
	rst $38                                          ; $62fe: $ff
	db $fc                                           ; $62ff: $fc

jr_02b_6300:
	rst GetHLinHL                                          ; $6300: $cf
	inc c                                            ; $6301: $0c
	call z, $0ccc                                    ; $6302: $cc $cc $0c
	call z, $0ccc                                    ; $6305: $cc $cc $0c
	call z, $00cc                                    ; $6308: $cc $cc $00
	db $10                                           ; $630b: $10
	jr jr_02b_632e                                   ; $630c: $18 $20

	jr z, jr_02b_633c                                ; $630e: $28 $2c

	ld l, $30                                        ; $6310: $2e $30
	ld de, $1133                                     ; $6312: $11 $33 $11
	ld de, $1111                                     ; $6315: $11 $11 $11
	ld de, $1100                                     ; $6318: $11 $00 $11

jr_02b_631b:
	inc sp                                           ; $631b: $33
	nop                                              ; $631c: $00
	inc sp                                           ; $631d: $33
	rst $38                                          ; $631e: $ff
	call z, $0cff                                    ; $631f: $cc $ff $0c
	call z, $0ccc                                    ; $6322: $cc $cc $0c
	call z, $0ccc                                    ; $6325: $cc $cc $0c
	call z, $00cc                                    ; $6328: $cc $cc $00
	db $10                                           ; $632b: $10
	jr @+$22                                         ; $632c: $18 $20

jr_02b_632e:
	jr z, @+$2e                                      ; $632e: $28 $2c

	ld l, $30                                        ; $6330: $2e $30
	rst $38                                          ; $6332: $ff
	call z, $0cff                                    ; $6333: $cc $ff $0c
	call z, $0ccc                                    ; $6336: $cc $cc $0c
	call z, $0ccc                                    ; $6339: $cc $cc $0c

jr_02b_633c:
	call z, $00cc                                    ; $633c: $cc $cc $00
	db $10                                           ; $633f: $10
	jr @+$22                                         ; $6340: $18 $20

	jr z, @+$2e                                      ; $6342: $28 $2c

	ld l, $30                                        ; $6344: $2e $30
	rst $38                                          ; $6346: $ff
	call z, $0cff                                    ; $6347: $cc $ff $0c
	call z, $0ccc                                    ; $634a: $cc $cc $0c
	call z, $0ccc                                    ; $634d: $cc $cc $0c
	call z, $00cc                                    ; $6350: $cc $cc $00
	db $10                                           ; $6353: $10
	jr @+$22                                         ; $6354: $18 $20

	jr z, @+$2e                                      ; $6356: $28 $2c

	ld l, $30                                        ; $6358: $2e $30
	rst $38                                          ; $635a: $ff
	call z, $0cff                                    ; $635b: $cc $ff $0c
	call z, $0ccc                                    ; $635e: $cc $cc $0c
	call z, $0ccc                                    ; $6361: $cc $cc $0c
	call z, $00cc                                    ; $6364: $cc $cc $00
	db $10                                           ; $6367: $10
	jr @+$22                                         ; $6368: $18 $20

	jr z, jr_02b_6398                                ; $636a: $28 $2c

	ld l, $30                                        ; $636c: $2e $30
	rst $38                                          ; $636e: $ff
	call z, $0cff                                    ; $636f: $cc $ff $0c
	call z, $0ccc                                    ; $6372: $cc $cc $0c
	call z, $0ccc                                    ; $6375: $cc $cc $0c
	call z, $00cc                                    ; $6378: $cc $cc $00
	db $10                                           ; $637b: $10
	jr jr_02b_639e                                   ; $637c: $18 $20

	jr z, @+$2e                                      ; $637e: $28 $2c

	ld l, $30                                        ; $6380: $2e $30
	rst $38                                          ; $6382: $ff
	call z, $0cff                                    ; $6383: $cc $ff $0c
	call z, $0ccc                                    ; $6386: $cc $cc $0c
	call z, $0ccc                                    ; $6389: $cc $cc $0c
	call z, $00cc                                    ; $638c: $cc $cc $00
	db $10                                           ; $638f: $10
	jr jr_02b_63b2                                   ; $6390: $18 $20

	jr z, @+$2e                                      ; $6392: $28 $2c

	ld l, $30                                        ; $6394: $2e $30
	sbc c                                            ; $6396: $99
	inc sp                                           ; $6397: $33

jr_02b_6398:
	ld de, $1166                                     ; $6398: $11 $66 $11
	ld de, $6611                                     ; $639b: $11 $11 $66

jr_02b_639e:
	ld de, $1111                                     ; $639e: $11 $11 $11
	ld h, [hl]                                       ; $63a1: $66
	db $fc                                           ; $63a2: $fc
	rst GetHLinHL                                          ; $63a3: $cf
	rst $38                                          ; $63a4: $ff
	call z, $0fcc                                    ; $63a5: $cc $cc $0f
	call z, $0fcc                                    ; $63a8: $cc $cc $0f
	call z, $0fcc                                    ; $63ab: $cc $cc $0f
	nop                                              ; $63ae: $00
	db $10                                           ; $63af: $10
	jr @+$22                                         ; $63b0: $18 $20

jr_02b_63b2:
	jr z, jr_02b_63e0                                ; $63b2: $28 $2c

	jr nc, jr_02b_63ea                               ; $63b4: $30 $34

	db $fc                                           ; $63b6: $fc
	rst GetHLinHL                                          ; $63b7: $cf
	rst $38                                          ; $63b8: $ff
	call z, $0fcc                                    ; $63b9: $cc $cc $0f
	call z, $0fcc                                    ; $63bc: $cc $cc $0f
	call z, $0fcc                                    ; $63bf: $cc $cc $0f
	nop                                              ; $63c2: $00
	db $10                                           ; $63c3: $10
	jr @+$22                                         ; $63c4: $18 $20

	jr z, jr_02b_63f4                                ; $63c6: $28 $2c

	jr nc, jr_02b_63fe                               ; $63c8: $30 $34

	db $fc                                           ; $63ca: $fc
	rst GetHLinHL                                          ; $63cb: $cf
	rst $38                                          ; $63cc: $ff
	call z, $0fcc                                    ; $63cd: $cc $cc $0f
	call z, $0fcc                                    ; $63d0: $cc $cc $0f
	call z, $0fcc                                    ; $63d3: $cc $cc $0f
	nop                                              ; $63d6: $00
	db $10                                           ; $63d7: $10
	jr @+$22                                         ; $63d8: $18 $20

	jr z, jr_02b_6408                                ; $63da: $28 $2c

	jr nc, jr_02b_6412                               ; $63dc: $30 $34

	db $fc                                           ; $63de: $fc
	rst GetHLinHL                                          ; $63df: $cf

jr_02b_63e0:
	rst $38                                          ; $63e0: $ff
	call z, $0fcc                                    ; $63e1: $cc $cc $0f
	call z, $0fcc                                    ; $63e4: $cc $cc $0f
	call z, $0fcc                                    ; $63e7: $cc $cc $0f

jr_02b_63ea:
	nop                                              ; $63ea: $00
	db $10                                           ; $63eb: $10
	jr jr_02b_640e                                   ; $63ec: $18 $20

	jr z, @+$2e                                      ; $63ee: $28 $2c

	jr nc, jr_02b_6426                               ; $63f0: $30 $34

	db $fc                                           ; $63f2: $fc
	rst GetHLinHL                                          ; $63f3: $cf

jr_02b_63f4:
	rst $38                                          ; $63f4: $ff
	call z, $0fcc                                    ; $63f5: $cc $cc $0f
	call z, $0fcc                                    ; $63f8: $cc $cc $0f
	call z, $0fcc                                    ; $63fb: $cc $cc $0f

jr_02b_63fe:
	nop                                              ; $63fe: $00
	db $10                                           ; $63ff: $10
	jr jr_02b_6422                                   ; $6400: $18 $20

	jr z, @+$2e                                      ; $6402: $28 $2c

	jr nc, jr_02b_643a                               ; $6404: $30 $34

	ld [hl+], a                                      ; $6406: $22
	ld [hl+], a                                      ; $6407: $22

jr_02b_6408:
	ld [hl+], a                                      ; $6408: $22
	ld [hl+], a                                      ; $6409: $22
	ld [hl+], a                                      ; $640a: $22
	ld [hl+], a                                      ; $640b: $22
	ld [hl+], a                                      ; $640c: $22
	ld [hl+], a                                      ; $640d: $22

jr_02b_640e:
	ld [hl+], a                                      ; $640e: $22
	inc sp                                           ; $640f: $33
	ld [hl+], a                                      ; $6410: $22
	ld [hl+], a                                      ; $6411: $22

jr_02b_6412:
	db $fc                                           ; $6412: $fc
	rst GetHLinHL                                          ; $6413: $cf
	rst $38                                          ; $6414: $ff
	call z, $03cc                                    ; $6415: $cc $cc $03
	call z, $0fcc                                    ; $6418: $cc $cc $0f
	call z, $0fcc                                    ; $641b: $cc $cc $0f
	nop                                              ; $641e: $00
	db $10                                           ; $641f: $10
	jr @+$22                                         ; $6420: $18 $20

jr_02b_6422:
	jr z, jr_02b_6450                                ; $6422: $28 $2c

	ld l, $32                                        ; $6424: $2e $32

jr_02b_6426:
	db $fc                                           ; $6426: $fc
	rst GetHLinHL                                          ; $6427: $cf
	rst $38                                          ; $6428: $ff
	call z, $0fcc                                    ; $6429: $cc $cc $0f
	call z, $0fcc                                    ; $642c: $cc $cc $0f
	call z, $0fcc                                    ; $642f: $cc $cc $0f
	nop                                              ; $6432: $00
	db $10                                           ; $6433: $10
	jr @+$22                                         ; $6434: $18 $20

	jr z, jr_02b_6464                                ; $6436: $28 $2c

	jr nc, jr_02b_646e                               ; $6438: $30 $34

jr_02b_643a:
	db $fc                                           ; $643a: $fc
	rst GetHLinHL                                          ; $643b: $cf
	rst $38                                          ; $643c: $ff
	call z, $0fcc                                    ; $643d: $cc $cc $0f
	call z, $0fcc                                    ; $6440: $cc $cc $0f
	call z, $03cc                                    ; $6443: $cc $cc $03
	nop                                              ; $6446: $00
	db $10                                           ; $6447: $10
	jr @+$22                                         ; $6448: $18 $20

	jr z, @+$2e                                      ; $644a: $28 $2c

	jr nc, @+$36                                     ; $644c: $30 $34

	db $fc                                           ; $644e: $fc
	rst GetHLinHL                                          ; $644f: $cf

jr_02b_6450:
	rst $38                                          ; $6450: $ff
	call z, $0fcc                                    ; $6451: $cc $cc $0f
	call z, $0fcc                                    ; $6454: $cc $cc $0f
	call z, $0fcc                                    ; $6457: $cc $cc $0f
	nop                                              ; $645a: $00
	db $10                                           ; $645b: $10
	jr @+$22                                         ; $645c: $18 $20

	jr z, jr_02b_648c                                ; $645e: $28 $2c

	jr nc, jr_02b_6496                               ; $6460: $30 $34

	db $fc                                           ; $6462: $fc
	rst GetHLinHL                                          ; $6463: $cf

jr_02b_6464:
	rst $38                                          ; $6464: $ff
	call z, $0fcc                                    ; $6465: $cc $cc $0f
	call z, $0fcc                                    ; $6468: $cc $cc $0f
	call z, $03cc                                    ; $646b: $cc $cc $03

jr_02b_646e:
	nop                                              ; $646e: $00
	db $10                                           ; $646f: $10
	jr jr_02b_6492                                   ; $6470: $18 $20

	jr z, jr_02b_64a0                                ; $6472: $28 $2c

	jr nc, jr_02b_64aa                               ; $6474: $30 $34

	ld de, $1111                                     ; $6476: $11 $11 $11
	ld de, $1111                                     ; $6479: $11 $11 $11
	ld de, $1111                                     ; $647c: $11 $11 $11
	sbc c                                            ; $647f: $99
	ld de, $ff11                                     ; $6480: $11 $11 $ff
	call z, $0cff                                    ; $6483: $cc $ff $0c
	call z, $0ccf                                    ; $6486: $cc $cf $0c
	call z, $0ccf                                    ; $6489: $cc $cf $0c

jr_02b_648c:
	call z, $00cf                                    ; $648c: $cc $cf $00
	db $10                                           ; $648f: $10
	jr @+$22                                         ; $6490: $18 $20

jr_02b_6492:
	jr z, @+$2e                                      ; $6492: $28 $2c

	jr nc, @+$36                                     ; $6494: $30 $34

jr_02b_6496:
	rst $38                                          ; $6496: $ff
	call z, $0cff                                    ; $6497: $cc $ff $0c
	call z, $0ccf                                    ; $649a: $cc $cf $0c
	call z, $0ccf                                    ; $649d: $cc $cf $0c

jr_02b_64a0:
	call z, $00cf                                    ; $64a0: $cc $cf $00
	db $10                                           ; $64a3: $10
	jr @+$22                                         ; $64a4: $18 $20

	jr z, @+$2e                                      ; $64a6: $28 $2c

	jr nc, @+$36                                     ; $64a8: $30 $34

jr_02b_64aa:
	rst $38                                          ; $64aa: $ff
	call z, $0cff                                    ; $64ab: $cc $ff $0c
	call z, $0ccf                                    ; $64ae: $cc $cf $0c
	call z, $0ccf                                    ; $64b1: $cc $cf $0c
	call z, $00cf                                    ; $64b4: $cc $cf $00
	db $10                                           ; $64b7: $10
	jr @+$22                                         ; $64b8: $18 $20

	jr z, @+$2e                                      ; $64ba: $28 $2c

	jr nc, jr_02b_64f2                               ; $64bc: $30 $34

	rst $38                                          ; $64be: $ff
	call z, $0cff                                    ; $64bf: $cc $ff $0c
	call z, $0ccf                                    ; $64c2: $cc $cf $0c
	call z, $0ccf                                    ; $64c5: $cc $cf $0c
	call z, $00cf                                    ; $64c8: $cc $cf $00
	db $10                                           ; $64cb: $10
	jr @+$22                                         ; $64cc: $18 $20

	jr z, jr_02b_64fc                                ; $64ce: $28 $2c

	jr nc, jr_02b_6506                               ; $64d0: $30 $34

	rst $38                                          ; $64d2: $ff
	call z, $0cff                                    ; $64d3: $cc $ff $0c
	call z, $0ccf                                    ; $64d6: $cc $cf $0c
	call z, $0ccf                                    ; $64d9: $cc $cf $0c
	call z, $00cf                                    ; $64dc: $cc $cf $00
	db $10                                           ; $64df: $10
	jr jr_02b_6502                                   ; $64e0: $18 $20

	jr z, jr_02b_6510                                ; $64e2: $28 $2c

	jr nc, jr_02b_651a                               ; $64e4: $30 $34

	ld de, $1100                                     ; $64e6: $11 $00 $11
	ld de, $1111                                     ; $64e9: $11 $11 $11
	ld de, $1111                                     ; $64ec: $11 $11 $11
	ld de, $1111                                     ; $64ef: $11 $11 $11

jr_02b_64f2:
	rst $38                                          ; $64f2: $ff
	call z, $0cff                                    ; $64f3: $cc $ff $0c
	call z, $0ccf                                    ; $64f6: $cc $cf $0c
	call z, $0ccf                                    ; $64f9: $cc $cf $0c

jr_02b_64fc:
	call z, $00cf                                    ; $64fc: $cc $cf $00
	db $10                                           ; $64ff: $10
	jr @+$22                                         ; $6500: $18 $20

jr_02b_6502:
	jr z, @+$2e                                      ; $6502: $28 $2c

	jr nc, @+$36                                     ; $6504: $30 $34

jr_02b_6506:
	rst $38                                          ; $6506: $ff
	call z, $0cff                                    ; $6507: $cc $ff $0c
	call z, $0ccf                                    ; $650a: $cc $cf $0c
	call z, $0ccf                                    ; $650d: $cc $cf $0c

jr_02b_6510:
	call z, $00cf                                    ; $6510: $cc $cf $00
	db $10                                           ; $6513: $10
	jr @+$22                                         ; $6514: $18 $20

	jr z, @+$2e                                      ; $6516: $28 $2c

	jr nc, @+$36                                     ; $6518: $30 $34

jr_02b_651a:
	rst $38                                          ; $651a: $ff
	call z, $0cff                                    ; $651b: $cc $ff $0c
	call z, $0ccf                                    ; $651e: $cc $cf $0c
	call z, $0ccf                                    ; $6521: $cc $cf $0c
	call z, $00cf                                    ; $6524: $cc $cf $00
	db $10                                           ; $6527: $10
	jr @+$22                                         ; $6528: $18 $20

	jr z, @+$2e                                      ; $652a: $28 $2c

	jr nc, jr_02b_6562                               ; $652c: $30 $34

	rst $38                                          ; $652e: $ff
	call z, $0cff                                    ; $652f: $cc $ff $0c
	call z, $0ccf                                    ; $6532: $cc $cf $0c
	call z, $0ccf                                    ; $6535: $cc $cf $0c
	call z, $00cf                                    ; $6538: $cc $cf $00
	db $10                                           ; $653b: $10
	jr jr_02b_655e                                   ; $653c: $18 $20

	jr z, @+$2e                                      ; $653e: $28 $2c

	jr nc, jr_02b_6576                               ; $6540: $30 $34

	rst $38                                          ; $6542: $ff
	call z, $0cff                                    ; $6543: $cc $ff $0c
	call z, $0ccf                                    ; $6546: $cc $cf $0c
	call z, $0ccf                                    ; $6549: $cc $cf $0c
	call z, $00cf                                    ; $654c: $cc $cf $00
	db $10                                           ; $654f: $10
	jr jr_02b_6572                                   ; $6550: $18 $20

	jr z, @+$2e                                      ; $6552: $28 $2c

	jr nc, jr_02b_658a                               ; $6554: $30 $34

	ld de, $1144                                     ; $6556: $11 $44 $11
	inc sp                                           ; $6559: $33
	ld de, $1177                                     ; $655a: $11 $77 $11
	ld [hl], a                                       ; $655d: $77

jr_02b_655e:
	ld de, $7766                                     ; $655e: $11 $66 $77
	ld [hl], a                                       ; $6561: $77

jr_02b_6562:
	db $fc                                           ; $6562: $fc
	rst GetHLinHL                                          ; $6563: $cf
	rst $38                                          ; $6564: $ff
	call z, $03cc                                    ; $6565: $cc $cc $03
	call z, $03cc                                    ; $6568: $cc $cc $03
	call z, $03cc                                    ; $656b: $cc $cc $03
	nop                                              ; $656e: $00
	db $10                                           ; $656f: $10
	jr @+$22                                         ; $6570: $18 $20

jr_02b_6572:
	jr z, jr_02b_65a0                                ; $6572: $28 $2c

	ld l, $30                                        ; $6574: $2e $30

jr_02b_6576:
	db $fc                                           ; $6576: $fc
	rst GetHLinHL                                          ; $6577: $cf
	rst $38                                          ; $6578: $ff
	call z, $03cc                                    ; $6579: $cc $cc $03
	call z, $03cc                                    ; $657c: $cc $cc $03
	call z, $03cc                                    ; $657f: $cc $cc $03
	nop                                              ; $6582: $00
	db $10                                           ; $6583: $10
	jr @+$22                                         ; $6584: $18 $20

	jr z, jr_02b_65b4                                ; $6586: $28 $2c

	ld l, $30                                        ; $6588: $2e $30

jr_02b_658a:
	db $fc                                           ; $658a: $fc
	rst GetHLinHL                                          ; $658b: $cf
	rst $38                                          ; $658c: $ff
	call z, $03cc                                    ; $658d: $cc $cc $03
	call z, $03cc                                    ; $6590: $cc $cc $03
	call z, $03cc                                    ; $6593: $cc $cc $03
	nop                                              ; $6596: $00
	db $10                                           ; $6597: $10
	jr @+$22                                         ; $6598: $18 $20

	jr z, @+$2e                                      ; $659a: $28 $2c

	ld l, $30                                        ; $659c: $2e $30
	db $fc                                           ; $659e: $fc
	rst GetHLinHL                                          ; $659f: $cf

jr_02b_65a0:
	rst $38                                          ; $65a0: $ff
	call z, $03cc                                    ; $65a1: $cc $cc $03
	call z, $03cc                                    ; $65a4: $cc $cc $03
	call z, $03cc                                    ; $65a7: $cc $cc $03
	nop                                              ; $65aa: $00
	db $10                                           ; $65ab: $10
	jr @+$22                                         ; $65ac: $18 $20

	jr z, jr_02b_65dc                                ; $65ae: $28 $2c

	ld l, $30                                        ; $65b0: $2e $30
	db $fc                                           ; $65b2: $fc
	rst GetHLinHL                                          ; $65b3: $cf

jr_02b_65b4:
	rst $38                                          ; $65b4: $ff
	call z, $03cc                                    ; $65b5: $cc $cc $03
	call z, $03cc                                    ; $65b8: $cc $cc $03
	call z, $03cc                                    ; $65bb: $cc $cc $03
	nop                                              ; $65be: $00
	db $10                                           ; $65bf: $10
	jr jr_02b_65e2                                   ; $65c0: $18 $20

	jr z, jr_02b_65f0                                ; $65c2: $28 $2c

	ld l, $30                                        ; $65c4: $2e $30
	ld de, $1111                                     ; $65c6: $11 $11 $11
	ld de, $1111                                     ; $65c9: $11 $11 $11
	ld de, $1111                                     ; $65cc: $11 $11 $11
	sbc c                                            ; $65cf: $99
	ld de, $ff11                                     ; $65d0: $11 $11 $ff
	call z, $ccff                                    ; $65d3: $cc $ff $cc
	call z, $cc0c                                    ; $65d6: $cc $0c $cc
	call z, $cc0c                                    ; $65d9: $cc $0c $cc

jr_02b_65dc:
	call z, $000c                                    ; $65dc: $cc $0c $00
	db $10                                           ; $65df: $10
	jr @+$22                                         ; $65e0: $18 $20

jr_02b_65e2:
	jr z, @+$2e                                      ; $65e2: $28 $2c

	ld l, $30                                        ; $65e4: $2e $30
	rst $38                                          ; $65e6: $ff
	call z, $ccff                                    ; $65e7: $cc $ff $cc
	call z, $cc0c                                    ; $65ea: $cc $0c $cc
	call z, $cc0c                                    ; $65ed: $cc $0c $cc

jr_02b_65f0:
	call z, $000c                                    ; $65f0: $cc $0c $00
	db $10                                           ; $65f3: $10
	jr @+$22                                         ; $65f4: $18 $20

	jr z, @+$2e                                      ; $65f6: $28 $2c

	ld l, $30                                        ; $65f8: $2e $30
	rst $38                                          ; $65fa: $ff
	call z, $ccff                                    ; $65fb: $cc $ff $cc
	call z, $cc0c                                    ; $65fe: $cc $0c $cc
	call z, $cc0c                                    ; $6601: $cc $0c $cc
	call z, $000c                                    ; $6604: $cc $0c $00
	db $10                                           ; $6607: $10
	jr @+$22                                         ; $6608: $18 $20

	jr z, @+$2e                                      ; $660a: $28 $2c

	ld l, $30                                        ; $660c: $2e $30
	rst $38                                          ; $660e: $ff
	call z, $ccff                                    ; $660f: $cc $ff $cc
	call z, $cc0c                                    ; $6612: $cc $0c $cc
	call z, $cc0c                                    ; $6615: $cc $0c $cc
	call z, $000c                                    ; $6618: $cc $0c $00
	db $10                                           ; $661b: $10
	jr @+$22                                         ; $661c: $18 $20

	jr z, jr_02b_664c                                ; $661e: $28 $2c

	ld l, $30                                        ; $6620: $2e $30
	rst $38                                          ; $6622: $ff
	call z, $ccff                                    ; $6623: $cc $ff $cc
	call z, $cc0c                                    ; $6626: $cc $0c $cc
	call z, $cc0c                                    ; $6629: $cc $0c $cc
	call z, $000c                                    ; $662c: $cc $0c $00
	db $10                                           ; $662f: $10
	jr @+$22                                         ; $6630: $18 $20

	jr z, jr_02b_6660                                ; $6632: $28 $2c

	ld l, $30                                        ; $6634: $2e $30
	ld de, $1111                                     ; $6636: $11 $11 $11
	ld b, h                                          ; $6639: $44
	ld de, $1144                                     ; $663a: $11 $44 $11
	ld de, $bb99                                     ; $663d: $11 $99 $bb
	ld b, h                                          ; $6640: $44
	ld de, $cffc                                     ; $6641: $11 $fc $cf
	rst $38                                          ; $6644: $ff
	inc c                                            ; $6645: $0c
	rst GetHLinHL                                          ; $6646: $cf
	di                                               ; $6647: $f3
	inc c                                            ; $6648: $0c
	rst GetHLinHL                                          ; $6649: $cf
	di                                               ; $664a: $f3
	inc c                                            ; $664b: $0c

jr_02b_664c:
	rst GetHLinHL                                          ; $664c: $cf
	di                                               ; $664d: $f3
	nop                                              ; $664e: $00
	db $10                                           ; $664f: $10
	inc e                                            ; $6650: $1c
	jr z, jr_02b_6687                                ; $6651: $28 $34

	jr c, jr_02b_668f                                ; $6653: $38 $3a

	inc a                                            ; $6655: $3c
	db $fc                                           ; $6656: $fc
	rst GetHLinHL                                          ; $6657: $cf
	rst $38                                          ; $6658: $ff
	inc c                                            ; $6659: $0c
	rst GetHLinHL                                          ; $665a: $cf
	di                                               ; $665b: $f3
	inc c                                            ; $665c: $0c
	rst GetHLinHL                                          ; $665d: $cf
	di                                               ; $665e: $f3
	inc c                                            ; $665f: $0c

jr_02b_6660:
	rst GetHLinHL                                          ; $6660: $cf
	di                                               ; $6661: $f3
	nop                                              ; $6662: $00
	db $10                                           ; $6663: $10
	inc e                                            ; $6664: $1c
	jr z, jr_02b_669b                                ; $6665: $28 $34

	jr c, jr_02b_66a3                                ; $6667: $38 $3a

	inc a                                            ; $6669: $3c
	db $fc                                           ; $666a: $fc
	rst GetHLinHL                                          ; $666b: $cf
	rst $38                                          ; $666c: $ff
	inc c                                            ; $666d: $0c
	rst GetHLinHL                                          ; $666e: $cf
	di                                               ; $666f: $f3
	inc c                                            ; $6670: $0c
	rst GetHLinHL                                          ; $6671: $cf
	di                                               ; $6672: $f3
	inc c                                            ; $6673: $0c
	rst GetHLinHL                                          ; $6674: $cf
	di                                               ; $6675: $f3
	nop                                              ; $6676: $00
	db $10                                           ; $6677: $10
	inc e                                            ; $6678: $1c
	jr z, jr_02b_66af                                ; $6679: $28 $34

	jr c, @+$3c                                      ; $667b: $38 $3a

	inc a                                            ; $667d: $3c
	db $fc                                           ; $667e: $fc
	rst GetHLinHL                                          ; $667f: $cf
	rst $38                                          ; $6680: $ff
	inc c                                            ; $6681: $0c
	rst GetHLinHL                                          ; $6682: $cf
	di                                               ; $6683: $f3
	inc c                                            ; $6684: $0c
	rst GetHLinHL                                          ; $6685: $cf
	di                                               ; $6686: $f3

jr_02b_6687:
	inc c                                            ; $6687: $0c
	rst GetHLinHL                                          ; $6688: $cf
	di                                               ; $6689: $f3
	nop                                              ; $668a: $00
	db $10                                           ; $668b: $10
	inc e                                            ; $668c: $1c
	jr z, @+$36                                      ; $668d: $28 $34

jr_02b_668f:
	jr c, @+$3c                                      ; $668f: $38 $3a

	inc a                                            ; $6691: $3c
	db $fc                                           ; $6692: $fc
	rst GetHLinHL                                          ; $6693: $cf
	rst $38                                          ; $6694: $ff
	inc c                                            ; $6695: $0c
	rst GetHLinHL                                          ; $6696: $cf
	di                                               ; $6697: $f3
	inc c                                            ; $6698: $0c
	rst GetHLinHL                                          ; $6699: $cf
	di                                               ; $669a: $f3

jr_02b_669b:
	inc c                                            ; $669b: $0c
	rst GetHLinHL                                          ; $669c: $cf
	di                                               ; $669d: $f3
	nop                                              ; $669e: $00
	db $10                                           ; $669f: $10
	inc e                                            ; $66a0: $1c
	jr z, @+$36                                      ; $66a1: $28 $34

jr_02b_66a3:
	jr c, @+$3c                                      ; $66a3: $38 $3a

	inc a                                            ; $66a5: $3c
	ld de, $1199                                     ; $66a6: $11 $99 $11
	ld de, $1111                                     ; $66a9: $11 $11 $11
	ld de, $1111                                     ; $66ac: $11 $11 $11

jr_02b_66af:
	sbc c                                            ; $66af: $99
	ld de, $ff11                                     ; $66b0: $11 $11 $ff
	call z, $0cff                                    ; $66b3: $cc $ff $0c
	call z, $0ccf                                    ; $66b6: $cc $cf $0c
	call z, $0ccf                                    ; $66b9: $cc $cf $0c
	call z, $00cf                                    ; $66bc: $cc $cf $00
	db $10                                           ; $66bf: $10
	jr @+$22                                         ; $66c0: $18 $20

	jr z, @+$2e                                      ; $66c2: $28 $2c

	jr nc, @+$36                                     ; $66c4: $30 $34

	rst $38                                          ; $66c6: $ff
	call z, $0cff                                    ; $66c7: $cc $ff $0c
	call z, $0ccf                                    ; $66ca: $cc $cf $0c
	call z, $0ccf                                    ; $66cd: $cc $cf $0c
	call z, $00cf                                    ; $66d0: $cc $cf $00
	db $10                                           ; $66d3: $10
	jr @+$22                                         ; $66d4: $18 $20

	jr z, @+$2e                                      ; $66d6: $28 $2c

	jr nc, @+$36                                     ; $66d8: $30 $34

	rst $38                                          ; $66da: $ff
	call z, $0cff                                    ; $66db: $cc $ff $0c
	call z, $0ccf                                    ; $66de: $cc $cf $0c
	call z, $0ccf                                    ; $66e1: $cc $cf $0c
	call z, $00cf                                    ; $66e4: $cc $cf $00
	db $10                                           ; $66e7: $10
	jr @+$22                                         ; $66e8: $18 $20

	jr z, @+$2e                                      ; $66ea: $28 $2c

	jr nc, @+$36                                     ; $66ec: $30 $34

	rst $38                                          ; $66ee: $ff
	call z, $0cff                                    ; $66ef: $cc $ff $0c
	call z, $0ccf                                    ; $66f2: $cc $cf $0c
	call z, $0ccf                                    ; $66f5: $cc $cf $0c
	call z, $00cf                                    ; $66f8: $cc $cf $00
	db $10                                           ; $66fb: $10
	jr @+$22                                         ; $66fc: $18 $20

	jr z, jr_02b_672c                                ; $66fe: $28 $2c

	jr nc, jr_02b_6736                               ; $6700: $30 $34

	rst $38                                          ; $6702: $ff
	call z, $0cff                                    ; $6703: $cc $ff $0c
	call z, $0ccf                                    ; $6706: $cc $cf $0c
	call z, $0ccf                                    ; $6709: $cc $cf $0c
	call z, $00cf                                    ; $670c: $cc $cf $00
	db $10                                           ; $670f: $10
	jr jr_02b_6732                                   ; $6710: $18 $20

	jr z, jr_02b_6740                                ; $6712: $28 $2c

	jr nc, jr_02b_674a                               ; $6714: $30 $34

	sbc c                                            ; $6716: $99
	ld de, $1111                                     ; $6717: $11 $11 $11
	ld de, $1111                                     ; $671a: $11 $11 $11
	ld de, $1111                                     ; $671d: $11 $11 $11
	ld de, $ff11                                     ; $6720: $11 $11 $ff
	call z, $0cff                                    ; $6723: $cc $ff $0c
	call z, $0ccf                                    ; $6726: $cc $cf $0c
	call z, $0ccf                                    ; $6729: $cc $cf $0c

jr_02b_672c:
	call z, $00cf                                    ; $672c: $cc $cf $00
	db $10                                           ; $672f: $10
	jr @+$22                                         ; $6730: $18 $20

jr_02b_6732:
	jr z, @+$2e                                      ; $6732: $28 $2c

	jr nc, @+$36                                     ; $6734: $30 $34

jr_02b_6736:
	rst $38                                          ; $6736: $ff
	call z, $0cff                                    ; $6737: $cc $ff $0c
	call z, $0ccf                                    ; $673a: $cc $cf $0c
	call z, $0ccf                                    ; $673d: $cc $cf $0c

jr_02b_6740:
	call z, $00cf                                    ; $6740: $cc $cf $00
	db $10                                           ; $6743: $10
	jr @+$22                                         ; $6744: $18 $20

	jr z, @+$2e                                      ; $6746: $28 $2c

	jr nc, @+$36                                     ; $6748: $30 $34

jr_02b_674a:
	rst $38                                          ; $674a: $ff
	call z, $0cff                                    ; $674b: $cc $ff $0c
	call z, $0ccf                                    ; $674e: $cc $cf $0c
	call z, $0ccf                                    ; $6751: $cc $cf $0c
	call z, $00cf                                    ; $6754: $cc $cf $00
	db $10                                           ; $6757: $10
	jr @+$22                                         ; $6758: $18 $20

	jr z, @+$2e                                      ; $675a: $28 $2c

	jr nc, @+$36                                     ; $675c: $30 $34

	rst $38                                          ; $675e: $ff
	call z, $0cff                                    ; $675f: $cc $ff $0c
	call z, $0ccf                                    ; $6762: $cc $cf $0c
	call z, $0ccf                                    ; $6765: $cc $cf $0c
	call z, $00cf                                    ; $6768: $cc $cf $00
	db $10                                           ; $676b: $10
	jr @+$22                                         ; $676c: $18 $20

	jr z, jr_02b_679c                                ; $676e: $28 $2c

	jr nc, jr_02b_67a6                               ; $6770: $30 $34

	rst $38                                          ; $6772: $ff
	call z, $0cff                                    ; $6773: $cc $ff $0c
	call z, $0ccf                                    ; $6776: $cc $cf $0c
	call z, $0ccf                                    ; $6779: $cc $cf $0c
	call z, $00cf                                    ; $677c: $cc $cf $00
	db $10                                           ; $677f: $10
	jr jr_02b_67a2                                   ; $6780: $18 $20

	jr z, jr_02b_67b0                                ; $6782: $28 $2c

	jr nc, jr_02b_67ba                               ; $6784: $30 $34

	sbc c                                            ; $6786: $99
	ld de, $1111                                     ; $6787: $11 $11 $11
	ld de, $1111                                     ; $678a: $11 $11 $11
	ld de, $4411                                     ; $678d: $11 $11 $44
	ld de, $ff11                                     ; $6790: $11 $11 $ff
	call z, $0cff                                    ; $6793: $cc $ff $0c
	call z, $0ccf                                    ; $6796: $cc $cf $0c
	call z, $0ccf                                    ; $6799: $cc $cf $0c

jr_02b_679c:
	call z, $00cf                                    ; $679c: $cc $cf $00
	db $10                                           ; $679f: $10
	jr @+$22                                         ; $67a0: $18 $20

jr_02b_67a2:
	jr z, @+$2e                                      ; $67a2: $28 $2c

	jr nc, @+$36                                     ; $67a4: $30 $34

jr_02b_67a6:
	rst $38                                          ; $67a6: $ff
	call z, $0cff                                    ; $67a7: $cc $ff $0c
	call z, $0ccf                                    ; $67aa: $cc $cf $0c
	call z, $0ccf                                    ; $67ad: $cc $cf $0c

jr_02b_67b0:
	call z, $00cf                                    ; $67b0: $cc $cf $00
	db $10                                           ; $67b3: $10
	jr @+$22                                         ; $67b4: $18 $20

	jr z, @+$2e                                      ; $67b6: $28 $2c

	jr nc, @+$36                                     ; $67b8: $30 $34

jr_02b_67ba:
	rst $38                                          ; $67ba: $ff
	call z, $0cff                                    ; $67bb: $cc $ff $0c
	call z, $0ccf                                    ; $67be: $cc $cf $0c
	call z, $0ccf                                    ; $67c1: $cc $cf $0c
	call z, $00cf                                    ; $67c4: $cc $cf $00
	db $10                                           ; $67c7: $10
	jr @+$22                                         ; $67c8: $18 $20

	jr z, @+$2e                                      ; $67ca: $28 $2c

	jr nc, @+$36                                     ; $67cc: $30 $34

	rst $38                                          ; $67ce: $ff
	call z, $0cff                                    ; $67cf: $cc $ff $0c
	call z, $0ccf                                    ; $67d2: $cc $cf $0c
	call z, $0ccf                                    ; $67d5: $cc $cf $0c
	call z, $00cf                                    ; $67d8: $cc $cf $00
	db $10                                           ; $67db: $10
	jr @+$22                                         ; $67dc: $18 $20

	jr z, jr_02b_680c                                ; $67de: $28 $2c

	jr nc, jr_02b_6816                               ; $67e0: $30 $34

	rst $38                                          ; $67e2: $ff
	call z, $0cff                                    ; $67e3: $cc $ff $0c
	call z, $0ccf                                    ; $67e6: $cc $cf $0c
	call z, $0ccf                                    ; $67e9: $cc $cf $0c
	call z, $00cf                                    ; $67ec: $cc $cf $00
	db $10                                           ; $67ef: $10
	jr @+$22                                         ; $67f0: $18 $20

	jr z, jr_02b_6820                                ; $67f2: $28 $2c

	jr nc, jr_02b_682a                               ; $67f4: $30 $34

	sbc c                                            ; $67f6: $99
	ld de, $1111                                     ; $67f7: $11 $11 $11
	ld de, $1111                                     ; $67fa: $11 $11 $11
	ld de, $1111                                     ; $67fd: $11 $11 $11
	ld de, $ff11                                     ; $6800: $11 $11 $ff
	rst GetHLinHL                                          ; $6803: $cf
	inc c                                            ; $6804: $0c
	rst $38                                          ; $6805: $ff
	call z, $ff0c                                    ; $6806: $cc $0c $ff
	call z, $ff0c                                    ; $6809: $cc $0c $ff

jr_02b_680c:
	call z, $000c                                    ; $680c: $cc $0c $00
	ld c, $1a                                        ; $680f: $0e $1a
	ld h, $32                                        ; $6811: $26 $32
	inc [hl]                                         ; $6813: $34
	ld [hl], $38                                     ; $6814: $36 $38

jr_02b_6816:
	rst $38                                          ; $6816: $ff
	rst GetHLinHL                                          ; $6817: $cf
	inc c                                            ; $6818: $0c
	rst $38                                          ; $6819: $ff
	call z, $ff0c                                    ; $681a: $cc $0c $ff
	call z, $ff0c                                    ; $681d: $cc $0c $ff

jr_02b_6820:
	call z, $000c                                    ; $6820: $cc $0c $00
	ld c, $1a                                        ; $6823: $0e $1a
	ld h, $32                                        ; $6825: $26 $32
	inc [hl]                                         ; $6827: $34
	ld [hl], $38                                     ; $6828: $36 $38

jr_02b_682a:
	rst $38                                          ; $682a: $ff
	rst GetHLinHL                                          ; $682b: $cf
	inc c                                            ; $682c: $0c
	rst $38                                          ; $682d: $ff
	call z, $ff0c                                    ; $682e: $cc $0c $ff
	call z, $ff0c                                    ; $6831: $cc $0c $ff
	call z, $000c                                    ; $6834: $cc $0c $00
	ld c, $1a                                        ; $6837: $0e $1a
	ld h, $32                                        ; $6839: $26 $32
	inc [hl]                                         ; $683b: $34
	ld [hl], $38                                     ; $683c: $36 $38
	rst $38                                          ; $683e: $ff
	rst GetHLinHL                                          ; $683f: $cf
	inc c                                            ; $6840: $0c
	rst $38                                          ; $6841: $ff
	call z, $ff0c                                    ; $6842: $cc $0c $ff
	call z, $ff0c                                    ; $6845: $cc $0c $ff
	call z, $000c                                    ; $6848: $cc $0c $00
	ld c, $1a                                        ; $684b: $0e $1a
	ld h, $32                                        ; $684d: $26 $32
	inc [hl]                                         ; $684f: $34
	ld [hl], $38                                     ; $6850: $36 $38
	rst $38                                          ; $6852: $ff
	rst GetHLinHL                                          ; $6853: $cf
	inc c                                            ; $6854: $0c
	rst $38                                          ; $6855: $ff
	call z, $ff0c                                    ; $6856: $cc $0c $ff
	call z, $ff0c                                    ; $6859: $cc $0c $ff
	call z, $000c                                    ; $685c: $cc $0c $00
	ld c, $1a                                        ; $685f: $0e $1a
	ld h, $32                                        ; $6861: $26 $32
	inc [hl]                                         ; $6863: $34
	ld [hl], $38                                     ; $6864: $36 $38
	rst $38                                          ; $6866: $ff
	rst GetHLinHL                                          ; $6867: $cf
	inc c                                            ; $6868: $0c
	nop                                              ; $6869: $00
	nop                                              ; $686a: $00
	inc c                                            ; $686b: $0c
	nop                                              ; $686c: $00
	nop                                              ; $686d: $00
	inc c                                            ; $686e: $0c
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	inc c                                            ; $6871: $0c
	nop                                              ; $6872: $00
	ld c, $0e                                        ; $6873: $0e $0e
	ld c, $0e                                        ; $6875: $0e $0e
	db $10                                           ; $6877: $10
	ld [de], a                                       ; $6878: $12
	inc d                                            ; $6879: $14
	nop                                              ; $687a: $00
	adc b                                            ; $687b: $88
	nop                                              ; $687c: $00
	ld b, h                                          ; $687d: $44
	nop                                              ; $687e: $00
	nop                                              ; $687f: $00
	nop                                              ; $6880: $00
	nop                                              ; $6881: $00
	nop                                              ; $6882: $00
	nop                                              ; $6883: $00
	nop                                              ; $6884: $00
	nop                                              ; $6885: $00
	rst $38                                          ; $6886: $ff
	rst GetHLinHL                                          ; $6887: $cf
	inc c                                            ; $6888: $0c
	rst $38                                          ; $6889: $ff
	rst GetHLinHL                                          ; $688a: $cf
	inc c                                            ; $688b: $0c
	rst $38                                          ; $688c: $ff
	rst GetHLinHL                                          ; $688d: $cf
	inc c                                            ; $688e: $0c
	rst $38                                          ; $688f: $ff
	rst GetHLinHL                                          ; $6890: $cf
	inc c                                            ; $6891: $0c
	nop                                              ; $6892: $00
	ld c, $1c                                        ; $6893: $0e $1c
	ld a, [hl+]                                      ; $6895: $2a
	jr c, jr_02b_68d2                                ; $6896: $38 $3a

	inc a                                            ; $6898: $3c
	ld a, $ff                                        ; $6899: $3e $ff
	rst GetHLinHL                                          ; $689b: $cf
	inc c                                            ; $689c: $0c
	rst $38                                          ; $689d: $ff
	rst GetHLinHL                                          ; $689e: $cf
	inc c                                            ; $689f: $0c
	rst $38                                          ; $68a0: $ff
	rst GetHLinHL                                          ; $68a1: $cf
	inc c                                            ; $68a2: $0c
	rst $38                                          ; $68a3: $ff
	rst GetHLinHL                                          ; $68a4: $cf
	inc c                                            ; $68a5: $0c
	nop                                              ; $68a6: $00
	ld c, $1c                                        ; $68a7: $0e $1c
	ld a, [hl+]                                      ; $68a9: $2a
	jr c, jr_02b_68e6                                ; $68aa: $38 $3a

	inc a                                            ; $68ac: $3c
	ld a, $ff                                        ; $68ad: $3e $ff
	rst GetHLinHL                                          ; $68af: $cf
	inc c                                            ; $68b0: $0c
	rst $38                                          ; $68b1: $ff
	rst GetHLinHL                                          ; $68b2: $cf
	inc c                                            ; $68b3: $0c
	rst $38                                          ; $68b4: $ff
	rst GetHLinHL                                          ; $68b5: $cf
	inc c                                            ; $68b6: $0c
	rst $38                                          ; $68b7: $ff
	rst GetHLinHL                                          ; $68b8: $cf
	inc c                                            ; $68b9: $0c
	nop                                              ; $68ba: $00
	ld c, $1c                                        ; $68bb: $0e $1c
	ld a, [hl+]                                      ; $68bd: $2a
	jr c, jr_02b_68fa                                ; $68be: $38 $3a

	inc a                                            ; $68c0: $3c
	ld a, $ff                                        ; $68c1: $3e $ff
	rst GetHLinHL                                          ; $68c3: $cf
	inc c                                            ; $68c4: $0c
	rst $38                                          ; $68c5: $ff
	rst GetHLinHL                                          ; $68c6: $cf
	inc c                                            ; $68c7: $0c
	rst $38                                          ; $68c8: $ff
	rst GetHLinHL                                          ; $68c9: $cf
	inc c                                            ; $68ca: $0c
	rst $38                                          ; $68cb: $ff
	rst GetHLinHL                                          ; $68cc: $cf
	inc c                                            ; $68cd: $0c
	nop                                              ; $68ce: $00
	ld c, $1c                                        ; $68cf: $0e $1c
	ld a, [hl+]                                      ; $68d1: $2a

jr_02b_68d2:
	jr c, jr_02b_690e                                ; $68d2: $38 $3a

	inc a                                            ; $68d4: $3c
	ld a, $ff                                        ; $68d5: $3e $ff
	rst GetHLinHL                                          ; $68d7: $cf
	inc c                                            ; $68d8: $0c
	rst $38                                          ; $68d9: $ff
	rst GetHLinHL                                          ; $68da: $cf
	inc c                                            ; $68db: $0c
	rst $38                                          ; $68dc: $ff
	rst GetHLinHL                                          ; $68dd: $cf
	inc c                                            ; $68de: $0c
	rst $38                                          ; $68df: $ff
	rst GetHLinHL                                          ; $68e0: $cf
	inc c                                            ; $68e1: $0c
	nop                                              ; $68e2: $00
	ld c, $1c                                        ; $68e3: $0e $1c
	ld a, [hl+]                                      ; $68e5: $2a

jr_02b_68e6:
	jr c, jr_02b_6922                                ; $68e6: $38 $3a

	inc a                                            ; $68e8: $3c
	ld a, $ff                                        ; $68e9: $3e $ff
	rst GetHLinHL                                          ; $68eb: $cf
	inc c                                            ; $68ec: $0c
	rst $38                                          ; $68ed: $ff
	rst GetHLinHL                                          ; $68ee: $cf
	inc c                                            ; $68ef: $0c
	rst $38                                          ; $68f0: $ff
	rst GetHLinHL                                          ; $68f1: $cf
	inc c                                            ; $68f2: $0c
	rst $38                                          ; $68f3: $ff
	rst AddAOntoHL                                          ; $68f4: $ef
	inc c                                            ; $68f5: $0c
	nop                                              ; $68f6: $00
	ld c, $1c                                        ; $68f7: $0e $1c
	ld a, [hl+]                                      ; $68f9: $2a

jr_02b_68fa:
	add hl, sp                                       ; $68fa: $39
	dec sp                                           ; $68fb: $3b
	dec a                                            ; $68fc: $3d
	ccf                                              ; $68fd: $3f
	nop                                              ; $68fe: $00
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	sbc c                                            ; $6901: $99
	nop                                              ; $6902: $00
	sbc c                                            ; $6903: $99
	nop                                              ; $6904: $00
	sbc c                                            ; $6905: $99
	nop                                              ; $6906: $00
	nop                                              ; $6907: $00
	sbc c                                            ; $6908: $99
	nop                                              ; $6909: $00
	rst $38                                          ; $690a: $ff
	rst GetHLinHL                                          ; $690b: $cf
	db $fc                                           ; $690c: $fc
	rst GetHLinHL                                          ; $690d: $cf

jr_02b_690e:
	rrca                                             ; $690e: $0f
	call z, $0fcf                                    ; $690f: $cc $cf $0f
	call z, $0fcf                                    ; $6912: $cc $cf $0f
	call z, $1200                                    ; $6915: $cc $00 $12
	ld e, $2a                                        ; $6918: $1e $2a
	ld [hl], $38                                     ; $691a: $36 $38
	ld a, [hl-]                                      ; $691c: $3a
	inc a                                            ; $691d: $3c
	rst $38                                          ; $691e: $ff
	rst GetHLinHL                                          ; $691f: $cf
	db $fc                                           ; $6920: $fc
	rst GetHLinHL                                          ; $6921: $cf

jr_02b_6922:
	rrca                                             ; $6922: $0f
	call z, $0fcf                                    ; $6923: $cc $cf $0f
	call z, $0fcf                                    ; $6926: $cc $cf $0f
	call z, $1200                                    ; $6929: $cc $00 $12
	ld e, $2a                                        ; $692c: $1e $2a
	ld [hl], $38                                     ; $692e: $36 $38
	ld a, [hl-]                                      ; $6930: $3a
	inc a                                            ; $6931: $3c
	rst $38                                          ; $6932: $ff
	rst GetHLinHL                                          ; $6933: $cf
	db $fc                                           ; $6934: $fc
	rst GetHLinHL                                          ; $6935: $cf
	rrca                                             ; $6936: $0f
	call z, $0fcf                                    ; $6937: $cc $cf $0f
	call z, $0fcf                                    ; $693a: $cc $cf $0f
	call z, $1200                                    ; $693d: $cc $00 $12
	ld e, $2a                                        ; $6940: $1e $2a
	ld [hl], $38                                     ; $6942: $36 $38
	ld a, [hl-]                                      ; $6944: $3a
	inc a                                            ; $6945: $3c
	rst $38                                          ; $6946: $ff
	rst GetHLinHL                                          ; $6947: $cf
	db $fc                                           ; $6948: $fc
	rst GetHLinHL                                          ; $6949: $cf
	rrca                                             ; $694a: $0f
	call z, $0fcf                                    ; $694b: $cc $cf $0f
	call z, $0fcf                                    ; $694e: $cc $cf $0f
	call z, $1200                                    ; $6951: $cc $00 $12
	ld e, $2a                                        ; $6954: $1e $2a
	ld [hl], $38                                     ; $6956: $36 $38
	ld a, [hl-]                                      ; $6958: $3a
	inc a                                            ; $6959: $3c
	rst $38                                          ; $695a: $ff
	rst GetHLinHL                                          ; $695b: $cf
	db $fc                                           ; $695c: $fc
	rst GetHLinHL                                          ; $695d: $cf
	rst GetHLinHL                                          ; $695e: $cf
	call z, $cfcf                                    ; $695f: $cc $cf $cf
	call z, $cfcf                                    ; $6962: $cc $cf $cf
	call z, $1200                                    ; $6965: $cc $00 $12
	jr nz, @+$30                                     ; $6968: $20 $2e

	inc a                                            ; $696a: $3c
	ld a, $40                                        ; $696b: $3e $40
	ld b, d                                          ; $696d: $42
	adc b                                            ; $696e: $88
	adc b                                            ; $696f: $88
	nop                                              ; $6970: $00
	sbc c                                            ; $6971: $99
	nop                                              ; $6972: $00
	nop                                              ; $6973: $00
	nop                                              ; $6974: $00
	nop                                              ; $6975: $00
	nop                                              ; $6976: $00
	adc b                                            ; $6977: $88
	nop                                              ; $6978: $00
	nop                                              ; $6979: $00
	rst $38                                          ; $697a: $ff
	rst GetHLinHL                                          ; $697b: $cf
	db $fc                                           ; $697c: $fc
	call z, $cc0c                                    ; $697d: $cc $0c $cc
	call z, $cc0c                                    ; $6980: $cc $0c $cc
	call z, $cc0c                                    ; $6983: $cc $0c $cc
	nop                                              ; $6986: $00
	ld [de], a                                       ; $6987: $12
	ld a, [de]                                       ; $6988: $1a
	ld [hl+], a                                      ; $6989: $22
	ld a, [hl+]                                      ; $698a: $2a
	inc l                                            ; $698b: $2c
	ld l, $30                                        ; $698c: $2e $30
	rst $38                                          ; $698e: $ff
	rst GetHLinHL                                          ; $698f: $cf
	db $fc                                           ; $6990: $fc
	call z, $cc0c                                    ; $6991: $cc $0c $cc
	call z, $cc0c                                    ; $6994: $cc $0c $cc
	call z, $cc0c                                    ; $6997: $cc $0c $cc
	nop                                              ; $699a: $00
	ld [de], a                                       ; $699b: $12
	ld a, [de]                                       ; $699c: $1a
	ld [hl+], a                                      ; $699d: $22
	ld a, [hl+]                                      ; $699e: $2a
	inc l                                            ; $699f: $2c
	ld l, $30                                        ; $69a0: $2e $30
	rst $38                                          ; $69a2: $ff
	rst GetHLinHL                                          ; $69a3: $cf
	db $fc                                           ; $69a4: $fc
	call z, $cc0c                                    ; $69a5: $cc $0c $cc
	call z, $cc0c                                    ; $69a8: $cc $0c $cc
	call z, $cc0c                                    ; $69ab: $cc $0c $cc
	nop                                              ; $69ae: $00
	ld [de], a                                       ; $69af: $12
	ld a, [de]                                       ; $69b0: $1a
	ld [hl+], a                                      ; $69b1: $22
	ld a, [hl+]                                      ; $69b2: $2a
	inc l                                            ; $69b3: $2c
	ld l, $30                                        ; $69b4: $2e $30
	rst $38                                          ; $69b6: $ff
	rst GetHLinHL                                          ; $69b7: $cf
	db $fc                                           ; $69b8: $fc
	call z, $cc0c                                    ; $69b9: $cc $0c $cc
	call z, $cc0c                                    ; $69bc: $cc $0c $cc
	call z, $cc0c                                    ; $69bf: $cc $0c $cc
	nop                                              ; $69c2: $00
	ld [de], a                                       ; $69c3: $12
	ld a, [de]                                       ; $69c4: $1a
	ld [hl+], a                                      ; $69c5: $22
	ld a, [hl+]                                      ; $69c6: $2a
	inc l                                            ; $69c7: $2c
	ld l, $30                                        ; $69c8: $2e $30
	rst $38                                          ; $69ca: $ff
	rst GetHLinHL                                          ; $69cb: $cf
	db $fc                                           ; $69cc: $fc
	call z, $cc0c                                    ; $69cd: $cc $0c $cc
	call z, $cc0c                                    ; $69d0: $cc $0c $cc
	call z, $cc0c                                    ; $69d3: $cc $0c $cc
	nop                                              ; $69d6: $00
	ld [de], a                                       ; $69d7: $12
	ld a, [de]                                       ; $69d8: $1a
	ld [hl+], a                                      ; $69d9: $22
	ld a, [hl+]                                      ; $69da: $2a
	inc l                                            ; $69db: $2c
	ld l, $30                                        ; $69dc: $2e $30
	nop                                              ; $69de: $00
	inc sp                                           ; $69df: $33
	nop                                              ; $69e0: $00
	ld h, [hl]                                       ; $69e1: $66
	nop                                              ; $69e2: $00
	ld h, [hl]                                       ; $69e3: $66
	nop                                              ; $69e4: $00
	ld h, [hl]                                       ; $69e5: $66
	ld h, [hl]                                       ; $69e6: $66
	inc sp                                           ; $69e7: $33
	ld h, [hl]                                       ; $69e8: $66
	nop                                              ; $69e9: $00
	rst $38                                          ; $69ea: $ff
	rst GetHLinHL                                          ; $69eb: $cf
	inc c                                            ; $69ec: $0c
	rst GetHLinHL                                          ; $69ed: $cf
	call z, $cf0c                                    ; $69ee: $cc $0c $cf
	call z, $cf0c                                    ; $69f1: $cc $0c $cf
	call z, $000c                                    ; $69f4: $cc $0c $00
	ld c, $18                                        ; $69f7: $0e $18
	ld [hl+], a                                      ; $69f9: $22
	inc l                                            ; $69fa: $2c
	ld l, $30                                        ; $69fb: $2e $30
	ld [hl-], a                                      ; $69fd: $32
	rst $38                                          ; $69fe: $ff
	rst GetHLinHL                                          ; $69ff: $cf
	inc c                                            ; $6a00: $0c
	rst GetHLinHL                                          ; $6a01: $cf
	call z, $cf0c                                    ; $6a02: $cc $0c $cf
	call z, $cf0c                                    ; $6a05: $cc $0c $cf
	call z, $000c                                    ; $6a08: $cc $0c $00
	ld c, $18                                        ; $6a0b: $0e $18
	ld [hl+], a                                      ; $6a0d: $22
	inc l                                            ; $6a0e: $2c
	ld l, $30                                        ; $6a0f: $2e $30
	ld [hl-], a                                      ; $6a11: $32
	rst $38                                          ; $6a12: $ff
	rst GetHLinHL                                          ; $6a13: $cf
	inc c                                            ; $6a14: $0c
	rst GetHLinHL                                          ; $6a15: $cf
	call z, $cf0c                                    ; $6a16: $cc $0c $cf
	call z, $cf0c                                    ; $6a19: $cc $0c $cf
	call z, $000c                                    ; $6a1c: $cc $0c $00
	ld c, $18                                        ; $6a1f: $0e $18
	ld [hl+], a                                      ; $6a21: $22
	inc l                                            ; $6a22: $2c
	ld l, $30                                        ; $6a23: $2e $30
	ld [hl-], a                                      ; $6a25: $32
	rst $38                                          ; $6a26: $ff
	rst GetHLinHL                                          ; $6a27: $cf
	inc c                                            ; $6a28: $0c
	rst GetHLinHL                                          ; $6a29: $cf
	call z, $cf0c                                    ; $6a2a: $cc $0c $cf
	call z, $cf0c                                    ; $6a2d: $cc $0c $cf
	call z, $000c                                    ; $6a30: $cc $0c $00
	ld c, $18                                        ; $6a33: $0e $18
	ld [hl+], a                                      ; $6a35: $22
	inc l                                            ; $6a36: $2c
	ld l, $30                                        ; $6a37: $2e $30
	ld [hl-], a                                      ; $6a39: $32
	rst $38                                          ; $6a3a: $ff
	rst GetHLinHL                                          ; $6a3b: $cf
	inc c                                            ; $6a3c: $0c
	rst GetHLinHL                                          ; $6a3d: $cf
	call z, $cf0c                                    ; $6a3e: $cc $0c $cf
	call z, $cf0c                                    ; $6a41: $cc $0c $cf
	call z, $000c                                    ; $6a44: $cc $0c $00
	ld c, $18                                        ; $6a47: $0e $18
	ld [hl+], a                                      ; $6a49: $22
	inc l                                            ; $6a4a: $2c
	ld l, $30                                        ; $6a4b: $2e $30
	ld [hl-], a                                      ; $6a4d: $32
	nop                                              ; $6a4e: $00
	ld [bc], a                                       ; $6a4f: $02
	nop                                              ; $6a50: $00
	ld [bc], a                                       ; $6a51: $02
	nop                                              ; $6a52: $00
	nop                                              ; $6a53: $00
	nop                                              ; $6a54: $00
	sbc c                                            ; $6a55: $99
	nop                                              ; $6a56: $00
	nop                                              ; $6a57: $00
	nop                                              ; $6a58: $00
	nop                                              ; $6a59: $00
	db $fc                                           ; $6a5a: $fc
	rst $38                                          ; $6a5b: $ff
	inc c                                            ; $6a5c: $0c
	call z, $0cfc                                    ; $6a5d: $cc $fc $0c
	call z, $0cfc                                    ; $6a60: $cc $fc $0c
	call z, $0cfc                                    ; $6a63: $cc $fc $0c
	nop                                              ; $6a66: $00
	ld c, $18                                        ; $6a67: $0e $18
	ld [hl+], a                                      ; $6a69: $22
	inc l                                            ; $6a6a: $2c
	ld l, $30                                        ; $6a6b: $2e $30
	ld [hl-], a                                      ; $6a6d: $32
	db $fc                                           ; $6a6e: $fc
	rst $38                                          ; $6a6f: $ff
	inc c                                            ; $6a70: $0c
	call z, $0cfc                                    ; $6a71: $cc $fc $0c
	call z, $0cfc                                    ; $6a74: $cc $fc $0c
	call z, $0cfc                                    ; $6a77: $cc $fc $0c
	nop                                              ; $6a7a: $00
	ld c, $18                                        ; $6a7b: $0e $18
	ld [hl+], a                                      ; $6a7d: $22
	inc l                                            ; $6a7e: $2c
	ld l, $30                                        ; $6a7f: $2e $30
	ld [hl-], a                                      ; $6a81: $32
	db $fc                                           ; $6a82: $fc
	rst $38                                          ; $6a83: $ff
	inc c                                            ; $6a84: $0c
	call z, $0cfc                                    ; $6a85: $cc $fc $0c
	call z, $0cfc                                    ; $6a88: $cc $fc $0c
	call z, $0cfc                                    ; $6a8b: $cc $fc $0c
	nop                                              ; $6a8e: $00
	ld c, $18                                        ; $6a8f: $0e $18
	ld [hl+], a                                      ; $6a91: $22
	inc l                                            ; $6a92: $2c
	ld l, $30                                        ; $6a93: $2e $30
	ld [hl-], a                                      ; $6a95: $32
	db $fc                                           ; $6a96: $fc
	rst $38                                          ; $6a97: $ff
	inc c                                            ; $6a98: $0c
	call z, $0cfc                                    ; $6a99: $cc $fc $0c
	call z, $0cfc                                    ; $6a9c: $cc $fc $0c
	call z, $0cfc                                    ; $6a9f: $cc $fc $0c
	nop                                              ; $6aa2: $00
	ld c, $18                                        ; $6aa3: $0e $18
	ld [hl+], a                                      ; $6aa5: $22
	inc l                                            ; $6aa6: $2c
	ld l, $30                                        ; $6aa7: $2e $30
	ld [hl-], a                                      ; $6aa9: $32
	db $fc                                           ; $6aaa: $fc
	rst $38                                          ; $6aab: $ff
	inc c                                            ; $6aac: $0c
	call z, $0cfc                                    ; $6aad: $cc $fc $0c
	call z, $0cfc                                    ; $6ab0: $cc $fc $0c
	call z, $0cfc                                    ; $6ab3: $cc $fc $0c
	nop                                              ; $6ab6: $00
	ld c, $18                                        ; $6ab7: $0e $18
	ld [hl+], a                                      ; $6ab9: $22
	inc l                                            ; $6aba: $2c
	ld l, $30                                        ; $6abb: $2e $30
	ld [hl-], a                                      ; $6abd: $32
	nop                                              ; $6abe: $00
	ld d, l                                          ; $6abf: $55
	nop                                              ; $6ac0: $00
	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	ld d, l                                          ; $6ac3: $55
	nop                                              ; $6ac4: $00
	ld d, l                                          ; $6ac5: $55
	nop                                              ; $6ac6: $00
	nop                                              ; $6ac7: $00
	nop                                              ; $6ac8: $00
	nop                                              ; $6ac9: $00
	db $fc                                           ; $6aca: $fc
	rst $38                                          ; $6acb: $ff
	inc c                                            ; $6acc: $0c
	call z, $0cff                                    ; $6acd: $cc $ff $0c
	call z, $0cff                                    ; $6ad0: $cc $ff $0c
	call z, $0cff                                    ; $6ad3: $cc $ff $0c
	nop                                              ; $6ad6: $00
	ld c, $1a                                        ; $6ad7: $0e $1a
	ld h, $32                                        ; $6ad9: $26 $32
	inc [hl]                                         ; $6adb: $34
	ld [hl], $38                                     ; $6adc: $36 $38
	db $fc                                           ; $6ade: $fc
	rst $38                                          ; $6adf: $ff
	inc c                                            ; $6ae0: $0c
	call z, $0cff                                    ; $6ae1: $cc $ff $0c
	call z, $0cff                                    ; $6ae4: $cc $ff $0c
	call z, $0cff                                    ; $6ae7: $cc $ff $0c
	nop                                              ; $6aea: $00
	ld c, $1a                                        ; $6aeb: $0e $1a
	ld h, $32                                        ; $6aed: $26 $32
	inc [hl]                                         ; $6aef: $34
	ld [hl], $38                                     ; $6af0: $36 $38
	db $fc                                           ; $6af2: $fc
	rst $38                                          ; $6af3: $ff
	inc c                                            ; $6af4: $0c
	call z, $0cff                                    ; $6af5: $cc $ff $0c
	call z, $0cff                                    ; $6af8: $cc $ff $0c
	call z, $0cff                                    ; $6afb: $cc $ff $0c
	nop                                              ; $6afe: $00
	ld c, $1a                                        ; $6aff: $0e $1a
	ld h, $32                                        ; $6b01: $26 $32
	inc [hl]                                         ; $6b03: $34
	ld [hl], $38                                     ; $6b04: $36 $38
	db $fc                                           ; $6b06: $fc
	rst $38                                          ; $6b07: $ff
	inc c                                            ; $6b08: $0c
	call z, $0cff                                    ; $6b09: $cc $ff $0c
	call z, $0cff                                    ; $6b0c: $cc $ff $0c
	call z, $0cff                                    ; $6b0f: $cc $ff $0c
	nop                                              ; $6b12: $00
	ld c, $1a                                        ; $6b13: $0e $1a
	ld h, $32                                        ; $6b15: $26 $32
	inc [hl]                                         ; $6b17: $34
	ld [hl], $38                                     ; $6b18: $36 $38
	db $fc                                           ; $6b1a: $fc
	rst $38                                          ; $6b1b: $ff
	inc c                                            ; $6b1c: $0c
	call z, $0cff                                    ; $6b1d: $cc $ff $0c
	call z, $0cff                                    ; $6b20: $cc $ff $0c
	call z, $0cff                                    ; $6b23: $cc $ff $0c
	nop                                              ; $6b26: $00
	ld c, $1a                                        ; $6b27: $0e $1a
	ld h, $32                                        ; $6b29: $26 $32
	inc [hl]                                         ; $6b2b: $34
	ld [hl], $38                                     ; $6b2c: $36 $38
	nop                                              ; $6b2e: $00
	nop                                              ; $6b2f: $00
	nop                                              ; $6b30: $00
	nop                                              ; $6b31: $00
	nop                                              ; $6b32: $00
	nop                                              ; $6b33: $00
	nop                                              ; $6b34: $00
	nop                                              ; $6b35: $00
	nop                                              ; $6b36: $00
	nop                                              ; $6b37: $00
	nop                                              ; $6b38: $00
	nop                                              ; $6b39: $00
	db $fc                                           ; $6b3a: $fc
	rst $38                                          ; $6b3b: $ff
	inc c                                            ; $6b3c: $0c
	ret nz                                           ; $6b3d: $c0

	db $fc                                           ; $6b3e: $fc
	inc c                                            ; $6b3f: $0c
	ret nz                                           ; $6b40: $c0

	db $fc                                           ; $6b41: $fc
	inc c                                            ; $6b42: $0c
	ret nz                                           ; $6b43: $c0

	db $fc                                           ; $6b44: $fc
	inc c                                            ; $6b45: $0c
	nop                                              ; $6b46: $00
	ld c, $16                                        ; $6b47: $0e $16
	ld e, $26                                        ; $6b49: $1e $26
	jr z, jr_02b_6b77                                ; $6b4b: $28 $2a

	inc l                                            ; $6b4d: $2c
	db $fc                                           ; $6b4e: $fc
	rst $38                                          ; $6b4f: $ff
	inc c                                            ; $6b50: $0c
	ret nz                                           ; $6b51: $c0

	db $fc                                           ; $6b52: $fc
	inc c                                            ; $6b53: $0c
	ret nz                                           ; $6b54: $c0

	db $fc                                           ; $6b55: $fc
	inc c                                            ; $6b56: $0c
	ret nz                                           ; $6b57: $c0

	db $fc                                           ; $6b58: $fc
	inc c                                            ; $6b59: $0c
	nop                                              ; $6b5a: $00
	ld c, $16                                        ; $6b5b: $0e $16
	ld e, $26                                        ; $6b5d: $1e $26
	jr z, jr_02b_6b8b                                ; $6b5f: $28 $2a

	inc l                                            ; $6b61: $2c
	db $fc                                           ; $6b62: $fc
	rst $38                                          ; $6b63: $ff
	inc c                                            ; $6b64: $0c
	ret nz                                           ; $6b65: $c0

	db $fc                                           ; $6b66: $fc
	inc c                                            ; $6b67: $0c
	ret nz                                           ; $6b68: $c0

	db $fc                                           ; $6b69: $fc
	inc c                                            ; $6b6a: $0c
	ret nz                                           ; $6b6b: $c0

	db $fc                                           ; $6b6c: $fc
	inc c                                            ; $6b6d: $0c
	nop                                              ; $6b6e: $00
	ld c, $16                                        ; $6b6f: $0e $16
	ld e, $26                                        ; $6b71: $1e $26
	jr z, jr_02b_6b9f                                ; $6b73: $28 $2a

	inc l                                            ; $6b75: $2c
	db $fc                                           ; $6b76: $fc

jr_02b_6b77:
	rst $38                                          ; $6b77: $ff
	inc c                                            ; $6b78: $0c
	ret nz                                           ; $6b79: $c0

	db $fc                                           ; $6b7a: $fc
	inc c                                            ; $6b7b: $0c
	ret nz                                           ; $6b7c: $c0

	db $fc                                           ; $6b7d: $fc
	inc c                                            ; $6b7e: $0c
	ret nz                                           ; $6b7f: $c0

	db $fc                                           ; $6b80: $fc
	inc c                                            ; $6b81: $0c
	nop                                              ; $6b82: $00
	ld c, $16                                        ; $6b83: $0e $16
	ld e, $26                                        ; $6b85: $1e $26
	jr z, jr_02b_6bb3                                ; $6b87: $28 $2a

	inc l                                            ; $6b89: $2c
	db $fc                                           ; $6b8a: $fc

jr_02b_6b8b:
	rst $38                                          ; $6b8b: $ff
	inc c                                            ; $6b8c: $0c
	ret nz                                           ; $6b8d: $c0

	db $fc                                           ; $6b8e: $fc
	inc c                                            ; $6b8f: $0c
	ret nz                                           ; $6b90: $c0

	db $fc                                           ; $6b91: $fc
	inc c                                            ; $6b92: $0c
	ret nz                                           ; $6b93: $c0

	db $fc                                           ; $6b94: $fc
	inc c                                            ; $6b95: $0c
	nop                                              ; $6b96: $00
	ld c, $16                                        ; $6b97: $0e $16
	ld e, $26                                        ; $6b99: $1e $26
	jr z, jr_02b_6bc7                                ; $6b9b: $28 $2a

	inc l                                            ; $6b9d: $2c
	nop                                              ; $6b9e: $00

jr_02b_6b9f:
	sbc c                                            ; $6b9f: $99
	nop                                              ; $6ba0: $00
	nop                                              ; $6ba1: $00
	nop                                              ; $6ba2: $00
	ld h, [hl]                                       ; $6ba3: $66
	nop                                              ; $6ba4: $00
	nop                                              ; $6ba5: $00
	nop                                              ; $6ba6: $00
	nop                                              ; $6ba7: $00
	nop                                              ; $6ba8: $00
	nop                                              ; $6ba9: $00
	rst $38                                          ; $6baa: $ff
	rst GetHLinHL                                          ; $6bab: $cf
	db $fc                                           ; $6bac: $fc
	call z, $cc0c                                    ; $6bad: $cc $0c $cc
	call z, $cc0c                                    ; $6bb0: $cc $0c $cc

jr_02b_6bb3:
	call z, $cc0c                                    ; $6bb3: $cc $0c $cc
	nop                                              ; $6bb6: $00
	ld [de], a                                       ; $6bb7: $12
	ld a, [de]                                       ; $6bb8: $1a
	ld [hl+], a                                      ; $6bb9: $22
	ld a, [hl+]                                      ; $6bba: $2a
	inc l                                            ; $6bbb: $2c
	ld l, $30                                        ; $6bbc: $2e $30
	rst $38                                          ; $6bbe: $ff
	rst GetHLinHL                                          ; $6bbf: $cf
	db $fc                                           ; $6bc0: $fc
	call z, $cc0c                                    ; $6bc1: $cc $0c $cc
	call z, $cc0c                                    ; $6bc4: $cc $0c $cc

jr_02b_6bc7:
	call z, $cc0c                                    ; $6bc7: $cc $0c $cc
	nop                                              ; $6bca: $00
	ld [de], a                                       ; $6bcb: $12
	ld a, [de]                                       ; $6bcc: $1a
	ld [hl+], a                                      ; $6bcd: $22
	ld a, [hl+]                                      ; $6bce: $2a
	inc l                                            ; $6bcf: $2c
	ld l, $30                                        ; $6bd0: $2e $30
	rst $38                                          ; $6bd2: $ff
	rst GetHLinHL                                          ; $6bd3: $cf
	db $fc                                           ; $6bd4: $fc
	call z, $cc0c                                    ; $6bd5: $cc $0c $cc
	call z, $cc0c                                    ; $6bd8: $cc $0c $cc
	call z, $cc0c                                    ; $6bdb: $cc $0c $cc
	nop                                              ; $6bde: $00
	ld [de], a                                       ; $6bdf: $12
	ld a, [de]                                       ; $6be0: $1a
	ld [hl+], a                                      ; $6be1: $22
	ld a, [hl+]                                      ; $6be2: $2a
	inc l                                            ; $6be3: $2c
	ld l, $30                                        ; $6be4: $2e $30
	rst $38                                          ; $6be6: $ff
	rst GetHLinHL                                          ; $6be7: $cf
	db $fc                                           ; $6be8: $fc
	call z, $cc0c                                    ; $6be9: $cc $0c $cc
	call z, $cc0c                                    ; $6bec: $cc $0c $cc
	call z, $cc0c                                    ; $6bef: $cc $0c $cc
	nop                                              ; $6bf2: $00
	ld [de], a                                       ; $6bf3: $12
	ld a, [de]                                       ; $6bf4: $1a
	ld [hl+], a                                      ; $6bf5: $22
	ld a, [hl+]                                      ; $6bf6: $2a
	inc l                                            ; $6bf7: $2c
	ld l, $30                                        ; $6bf8: $2e $30
	rst $38                                          ; $6bfa: $ff
	rst GetHLinHL                                          ; $6bfb: $cf
	db $fc                                           ; $6bfc: $fc
	call z, $cc0c                                    ; $6bfd: $cc $0c $cc
	call z, $cc0c                                    ; $6c00: $cc $0c $cc
	call z, $cc0c                                    ; $6c03: $cc $0c $cc
	nop                                              ; $6c06: $00
	ld [de], a                                       ; $6c07: $12
	ld a, [de]                                       ; $6c08: $1a
	ld [hl+], a                                      ; $6c09: $22
	ld a, [hl+]                                      ; $6c0a: $2a
	inc l                                            ; $6c0b: $2c
	ld l, $30                                        ; $6c0c: $2e $30
	adc b                                            ; $6c0e: $88
	call z, $9900                                    ; $6c0f: $cc $00 $99
	nop                                              ; $6c12: $00
	nop                                              ; $6c13: $00
	nop                                              ; $6c14: $00
	nop                                              ; $6c15: $00
	nop                                              ; $6c16: $00
	adc b                                            ; $6c17: $88
	nop                                              ; $6c18: $00
	nop                                              ; $6c19: $00
	db $fc                                           ; $6c1a: $fc
	rst $38                                          ; $6c1b: $ff
	inc c                                            ; $6c1c: $0c
	call z, $0ccc                                    ; $6c1d: $cc $cc $0c
	call z, $0ccc                                    ; $6c20: $cc $cc $0c
	call z, $0ccc                                    ; $6c23: $cc $cc $0c
	nop                                              ; $6c26: $00
	ld c, $16                                        ; $6c27: $0e $16
	ld e, $26                                        ; $6c29: $1e $26
	jr z, jr_02b_6c57                                ; $6c2b: $28 $2a

	inc l                                            ; $6c2d: $2c
	db $fc                                           ; $6c2e: $fc
	rst $38                                          ; $6c2f: $ff
	inc c                                            ; $6c30: $0c
	call z, $0ccc                                    ; $6c31: $cc $cc $0c
	call z, $0ccc                                    ; $6c34: $cc $cc $0c
	call z, $0ccc                                    ; $6c37: $cc $cc $0c
	nop                                              ; $6c3a: $00
	ld c, $16                                        ; $6c3b: $0e $16
	ld e, $26                                        ; $6c3d: $1e $26
	jr z, jr_02b_6c6b                                ; $6c3f: $28 $2a

	inc l                                            ; $6c41: $2c
	db $fc                                           ; $6c42: $fc
	rst $38                                          ; $6c43: $ff
	inc c                                            ; $6c44: $0c
	call z, $0ccc                                    ; $6c45: $cc $cc $0c
	call z, $0ccc                                    ; $6c48: $cc $cc $0c
	call z, $0ccc                                    ; $6c4b: $cc $cc $0c
	nop                                              ; $6c4e: $00
	ld c, $16                                        ; $6c4f: $0e $16
	ld e, $26                                        ; $6c51: $1e $26
	jr z, jr_02b_6c7f                                ; $6c53: $28 $2a

	inc l                                            ; $6c55: $2c
	db $fc                                           ; $6c56: $fc

jr_02b_6c57:
	rst $38                                          ; $6c57: $ff
	inc c                                            ; $6c58: $0c
	call z, $0ccc                                    ; $6c59: $cc $cc $0c
	call z, $0ccc                                    ; $6c5c: $cc $cc $0c
	call z, $0ccc                                    ; $6c5f: $cc $cc $0c
	nop                                              ; $6c62: $00
	ld c, $16                                        ; $6c63: $0e $16
	ld e, $26                                        ; $6c65: $1e $26
	jr z, jr_02b_6c93                                ; $6c67: $28 $2a

	inc l                                            ; $6c69: $2c
	db $fc                                           ; $6c6a: $fc

jr_02b_6c6b:
	rst $38                                          ; $6c6b: $ff
	inc c                                            ; $6c6c: $0c
	call z, $0ccc                                    ; $6c6d: $cc $cc $0c
	call z, $0ccc                                    ; $6c70: $cc $cc $0c
	call z, $0ccc                                    ; $6c73: $cc $cc $0c
	nop                                              ; $6c76: $00
	ld c, $16                                        ; $6c77: $0e $16
	ld e, $26                                        ; $6c79: $1e $26
	jr z, jr_02b_6ca7                                ; $6c7b: $28 $2a

	inc l                                            ; $6c7d: $2c
	sbc c                                            ; $6c7e: $99

jr_02b_6c7f:
	sbc c                                            ; $6c7f: $99
	nop                                              ; $6c80: $00
	sbc c                                            ; $6c81: $99
	nop                                              ; $6c82: $00
	nop                                              ; $6c83: $00
	nop                                              ; $6c84: $00
	nop                                              ; $6c85: $00
	nop                                              ; $6c86: $00
	nop                                              ; $6c87: $00
	sbc c                                            ; $6c88: $99
	nop                                              ; $6c89: $00
	db $fc                                           ; $6c8a: $fc
	rst GetHLinHL                                          ; $6c8b: $cf
	rrca                                             ; $6c8c: $0f
	call z, $0fc0                                    ; $6c8d: $cc $c0 $0f
	call z, $0fc0                                    ; $6c90: $cc $c0 $0f

jr_02b_6c93:
	call z, $0fc0                                    ; $6c93: $cc $c0 $0f
	nop                                              ; $6c96: $00
	inc c                                            ; $6c97: $0c
	ld [de], a                                       ; $6c98: $12
	jr @+$20                                         ; $6c99: $18 $1e

	ld [hl+], a                                      ; $6c9b: $22
	ld h, $2a                                        ; $6c9c: $26 $2a
	db $fc                                           ; $6c9e: $fc
	rst GetHLinHL                                          ; $6c9f: $cf
	rrca                                             ; $6ca0: $0f
	call z, $0fc0                                    ; $6ca1: $cc $c0 $0f
	call z, $0fc0                                    ; $6ca4: $cc $c0 $0f

jr_02b_6ca7:
	call z, $0fc0                                    ; $6ca7: $cc $c0 $0f
	nop                                              ; $6caa: $00
	inc c                                            ; $6cab: $0c
	ld [de], a                                       ; $6cac: $12
	jr @+$20                                         ; $6cad: $18 $1e

	ld [hl+], a                                      ; $6caf: $22
	ld h, $2a                                        ; $6cb0: $26 $2a
	db $fc                                           ; $6cb2: $fc
	rst GetHLinHL                                          ; $6cb3: $cf
	rrca                                             ; $6cb4: $0f
	call z, $0fc0                                    ; $6cb5: $cc $c0 $0f
	call z, $0fc0                                    ; $6cb8: $cc $c0 $0f
	call z, $0fc0                                    ; $6cbb: $cc $c0 $0f
	nop                                              ; $6cbe: $00
	inc c                                            ; $6cbf: $0c
	ld [de], a                                       ; $6cc0: $12
	jr @+$20                                         ; $6cc1: $18 $1e

	ld [hl+], a                                      ; $6cc3: $22
	ld h, $2a                                        ; $6cc4: $26 $2a
	db $fc                                           ; $6cc6: $fc
	rst GetHLinHL                                          ; $6cc7: $cf
	rrca                                             ; $6cc8: $0f
	call z, $0fc0                                    ; $6cc9: $cc $c0 $0f
	call z, $0fc0                                    ; $6ccc: $cc $c0 $0f
	call z, $0fc0                                    ; $6ccf: $cc $c0 $0f
	nop                                              ; $6cd2: $00
	inc c                                            ; $6cd3: $0c
	ld [de], a                                       ; $6cd4: $12
	jr jr_02b_6cf5                                   ; $6cd5: $18 $1e

	ld [hl+], a                                      ; $6cd7: $22
	ld h, $2a                                        ; $6cd8: $26 $2a
	db $fc                                           ; $6cda: $fc
	rst GetHLinHL                                          ; $6cdb: $cf
	rrca                                             ; $6cdc: $0f
	call z, $0fc0                                    ; $6cdd: $cc $c0 $0f
	call z, $0fc0                                    ; $6ce0: $cc $c0 $0f
	call z, $0fc0                                    ; $6ce3: $cc $c0 $0f
	nop                                              ; $6ce6: $00
	inc c                                            ; $6ce7: $0c
	ld [de], a                                       ; $6ce8: $12
	jr jr_02b_6d09                                   ; $6ce9: $18 $1e

	ld [hl+], a                                      ; $6ceb: $22
	ld h, $2a                                        ; $6cec: $26 $2a
	nop                                              ; $6cee: $00
	nop                                              ; $6cef: $00
	nop                                              ; $6cf0: $00
	nop                                              ; $6cf1: $00
	nop                                              ; $6cf2: $00
	nop                                              ; $6cf3: $00
	nop                                              ; $6cf4: $00

jr_02b_6cf5:
	nop                                              ; $6cf5: $00
	nop                                              ; $6cf6: $00
	nop                                              ; $6cf7: $00
	nop                                              ; $6cf8: $00
	nop                                              ; $6cf9: $00
	nop                                              ; $6cfa: $00
	nop                                              ; $6cfb: $00
	nop                                              ; $6cfc: $00
	nop                                              ; $6cfd: $00
	nop                                              ; $6cfe: $00
	nop                                              ; $6cff: $00
	nop                                              ; $6d00: $00
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	cp e                                             ; $6d03: $bb
	nop                                              ; $6d04: $00
	call z, Boot                                     ; $6d05: $cc $00 $01
	adc b                                            ; $6d08: $88

jr_02b_6d09:
	sbc c                                            ; $6d09: $99
	ld bc, $cc01                                     ; $6d0a: $01 $01 $cc
	ld bc, rIE                                     ; $6d0d: $01 $ff $ff
	rrca                                             ; $6d10: $0f
	rst $38                                          ; $6d11: $ff
	rst $38                                          ; $6d12: $ff
	rrca                                             ; $6d13: $0f
	rst $38                                          ; $6d14: $ff
	rst $38                                          ; $6d15: $ff
	rrca                                             ; $6d16: $0f
	rst $38                                          ; $6d17: $ff
	rst $38                                          ; $6d18: $ff
	rrca                                             ; $6d19: $0f
	nop                                              ; $6d1a: $00
	db $10                                           ; $6d1b: $10
	jr nz, jr_02b_6d4e                               ; $6d1c: $20 $30

	ld b, b                                          ; $6d1e: $40
	ld b, h                                          ; $6d1f: $44
	ld c, b                                          ; $6d20: $48
	ld c, h                                          ; $6d21: $4c
	rst $38                                          ; $6d22: $ff
	rst $38                                          ; $6d23: $ff
	rrca                                             ; $6d24: $0f
	rst $38                                          ; $6d25: $ff
	rst $38                                          ; $6d26: $ff
	rrca                                             ; $6d27: $0f
	rst $38                                          ; $6d28: $ff
	rst $38                                          ; $6d29: $ff
	rrca                                             ; $6d2a: $0f
	rst $38                                          ; $6d2b: $ff
	rst $38                                          ; $6d2c: $ff
	rrca                                             ; $6d2d: $0f
	nop                                              ; $6d2e: $00
	db $10                                           ; $6d2f: $10
	jr nz, jr_02b_6d62                               ; $6d30: $20 $30

	ld b, b                                          ; $6d32: $40
	ld b, h                                          ; $6d33: $44
	ld c, b                                          ; $6d34: $48
	ld c, h                                          ; $6d35: $4c
	rst $38                                          ; $6d36: $ff
	rst $38                                          ; $6d37: $ff
	rrca                                             ; $6d38: $0f
	rst $38                                          ; $6d39: $ff
	rst $38                                          ; $6d3a: $ff
	rrca                                             ; $6d3b: $0f
	rst $38                                          ; $6d3c: $ff
	rst $38                                          ; $6d3d: $ff
	rrca                                             ; $6d3e: $0f
	rst $38                                          ; $6d3f: $ff
	rst $38                                          ; $6d40: $ff
	rrca                                             ; $6d41: $0f
	nop                                              ; $6d42: $00
	db $10                                           ; $6d43: $10
	jr nz, jr_02b_6d76                               ; $6d44: $20 $30

	ld b, b                                          ; $6d46: $40
	ld b, h                                          ; $6d47: $44
	ld c, b                                          ; $6d48: $48
	ld c, h                                          ; $6d49: $4c
	rst $38                                          ; $6d4a: $ff
	rst $38                                          ; $6d4b: $ff
	rrca                                             ; $6d4c: $0f
	rst $38                                          ; $6d4d: $ff

jr_02b_6d4e:
	rst $38                                          ; $6d4e: $ff
	rrca                                             ; $6d4f: $0f
	rst $38                                          ; $6d50: $ff
	rst $38                                          ; $6d51: $ff
	rrca                                             ; $6d52: $0f
	rst $38                                          ; $6d53: $ff
	rst $38                                          ; $6d54: $ff
	rrca                                             ; $6d55: $0f
	nop                                              ; $6d56: $00
	db $10                                           ; $6d57: $10
	jr nz, jr_02b_6d8a                               ; $6d58: $20 $30

	ld b, b                                          ; $6d5a: $40
	ld b, h                                          ; $6d5b: $44
	ld c, b                                          ; $6d5c: $48
	ld c, h                                          ; $6d5d: $4c
	rst $38                                          ; $6d5e: $ff
	rst $38                                          ; $6d5f: $ff
	rrca                                             ; $6d60: $0f
	rst $38                                          ; $6d61: $ff

jr_02b_6d62:
	rst $38                                          ; $6d62: $ff
	rrca                                             ; $6d63: $0f
	rst $38                                          ; $6d64: $ff
	rst $38                                          ; $6d65: $ff
	rrca                                             ; $6d66: $0f
	rst $38                                          ; $6d67: $ff
	rst $38                                          ; $6d68: $ff
	rrca                                             ; $6d69: $0f
	nop                                              ; $6d6a: $00
	db $10                                           ; $6d6b: $10
	jr nz, jr_02b_6d9e                               ; $6d6c: $20 $30

	ld b, b                                          ; $6d6e: $40
	ld b, h                                          ; $6d6f: $44
	ld c, b                                          ; $6d70: $48
	ld c, h                                          ; $6d71: $4c
	rst $38                                          ; $6d72: $ff
	rst $38                                          ; $6d73: $ff
	rrca                                             ; $6d74: $0f
	rst $38                                          ; $6d75: $ff

jr_02b_6d76:
	rst $38                                          ; $6d76: $ff
	rrca                                             ; $6d77: $0f
	rst $38                                          ; $6d78: $ff
	rst $38                                          ; $6d79: $ff
	rrca                                             ; $6d7a: $0f
	rst $38                                          ; $6d7b: $ff
	rst $38                                          ; $6d7c: $ff
	rrca                                             ; $6d7d: $0f
	nop                                              ; $6d7e: $00
	db $10                                           ; $6d7f: $10
	jr nz, jr_02b_6db2                               ; $6d80: $20 $30

	ld b, b                                          ; $6d82: $40
	ld b, h                                          ; $6d83: $44
	ld c, b                                          ; $6d84: $48
	ld c, h                                          ; $6d85: $4c
	nop                                              ; $6d86: $00
	dec bc                                           ; $6d87: $0b
	nop                                              ; $6d88: $00
	nop                                              ; $6d89: $00

jr_02b_6d8a:
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	nop                                              ; $6d8c: $00
	ld a, [bc]                                       ; $6d8d: $0a
	adc b                                            ; $6d8e: $88
	adc b                                            ; $6d8f: $88
	adc b                                            ; $6d90: $88
	adc b                                            ; $6d91: $88
	rst $38                                          ; $6d92: $ff
	rst $38                                          ; $6d93: $ff
	rrca                                             ; $6d94: $0f
	rst GetHLinHL                                          ; $6d95: $cf
	rst $38                                          ; $6d96: $ff
	rrca                                             ; $6d97: $0f
	rst GetHLinHL                                          ; $6d98: $cf
	rst $38                                          ; $6d99: $ff
	rrca                                             ; $6d9a: $0f
	rst GetHLinHL                                          ; $6d9b: $cf
	rst $38                                          ; $6d9c: $ff
	rrca                                             ; $6d9d: $0f

jr_02b_6d9e:
	nop                                              ; $6d9e: $00
	db $10                                           ; $6d9f: $10
	ld e, $2c                                        ; $6da0: $1e $2c
	ld a, [hl-]                                      ; $6da2: $3a
	ld a, $42                                        ; $6da3: $3e $42
	ld b, [hl]                                       ; $6da5: $46
	rst $38                                          ; $6da6: $ff
	rst $38                                          ; $6da7: $ff
	rrca                                             ; $6da8: $0f
	rst GetHLinHL                                          ; $6da9: $cf
	rst $38                                          ; $6daa: $ff
	rrca                                             ; $6dab: $0f
	rst GetHLinHL                                          ; $6dac: $cf
	rst $38                                          ; $6dad: $ff
	rrca                                             ; $6dae: $0f
	rst GetHLinHL                                          ; $6daf: $cf
	rst $38                                          ; $6db0: $ff
	rrca                                             ; $6db1: $0f

jr_02b_6db2:
	nop                                              ; $6db2: $00
	db $10                                           ; $6db3: $10
	ld e, $2c                                        ; $6db4: $1e $2c
	ld a, [hl-]                                      ; $6db6: $3a
	ld a, $42                                        ; $6db7: $3e $42
	ld b, [hl]                                       ; $6db9: $46
	rst $38                                          ; $6dba: $ff
	rst $38                                          ; $6dbb: $ff
	rrca                                             ; $6dbc: $0f
	rst GetHLinHL                                          ; $6dbd: $cf
	rst $38                                          ; $6dbe: $ff
	rrca                                             ; $6dbf: $0f
	rst GetHLinHL                                          ; $6dc0: $cf
	rst $38                                          ; $6dc1: $ff
	rrca                                             ; $6dc2: $0f
	rst GetHLinHL                                          ; $6dc3: $cf
	rst $38                                          ; $6dc4: $ff
	rrca                                             ; $6dc5: $0f
	nop                                              ; $6dc6: $00
	db $10                                           ; $6dc7: $10
	ld e, $2c                                        ; $6dc8: $1e $2c
	ld a, [hl-]                                      ; $6dca: $3a
	ld a, $42                                        ; $6dcb: $3e $42
	ld b, [hl]                                       ; $6dcd: $46
	rst $38                                          ; $6dce: $ff
	rst $38                                          ; $6dcf: $ff
	rrca                                             ; $6dd0: $0f
	rst GetHLinHL                                          ; $6dd1: $cf
	rst $38                                          ; $6dd2: $ff
	rrca                                             ; $6dd3: $0f
	rst GetHLinHL                                          ; $6dd4: $cf
	rst $38                                          ; $6dd5: $ff
	rrca                                             ; $6dd6: $0f
	rst GetHLinHL                                          ; $6dd7: $cf
	rst $38                                          ; $6dd8: $ff
	rrca                                             ; $6dd9: $0f
	nop                                              ; $6dda: $00
	db $10                                           ; $6ddb: $10
	ld e, $2c                                        ; $6ddc: $1e $2c
	ld a, [hl-]                                      ; $6dde: $3a
	ld a, $42                                        ; $6ddf: $3e $42
	ld b, [hl]                                       ; $6de1: $46
	rst $38                                          ; $6de2: $ff
	rst $38                                          ; $6de3: $ff
	rrca                                             ; $6de4: $0f
	rst GetHLinHL                                          ; $6de5: $cf
	rst $38                                          ; $6de6: $ff
	rrca                                             ; $6de7: $0f
	rst GetHLinHL                                          ; $6de8: $cf
	rst $38                                          ; $6de9: $ff
	rrca                                             ; $6dea: $0f
	rst GetHLinHL                                          ; $6deb: $cf
	rst $38                                          ; $6dec: $ff
	rrca                                             ; $6ded: $0f
	nop                                              ; $6dee: $00
	db $10                                           ; $6def: $10
	ld e, $2c                                        ; $6df0: $1e $2c
	ld a, [hl-]                                      ; $6df2: $3a
	ld a, $42                                        ; $6df3: $3e $42
	ld b, [hl]                                       ; $6df5: $46
	adc h                                            ; $6df6: $8c
	rlc b                                            ; $6df7: $cb $00
	inc c                                            ; $6df9: $0c
	nop                                              ; $6dfa: $00
	nop                                              ; $6dfb: $00
	nop                                              ; $6dfc: $00
	nop                                              ; $6dfd: $00
	adc b                                            ; $6dfe: $88
	adc b                                            ; $6dff: $88
	adc b                                            ; $6e00: $88
	adc b                                            ; $6e01: $88
	rst $38                                          ; $6e02: $ff
	call z, rIF                                    ; $6e03: $cc $0f $ff
	call z, $ff0c                                    ; $6e06: $cc $0c $ff
	call z, $ff0c                                    ; $6e09: $cc $0c $ff
	call z, $000c                                    ; $6e0c: $cc $0c $00
	inc c                                            ; $6e0f: $0c
	jr @+$26                                         ; $6e10: $18 $24

	jr nc, jr_02b_6e48                               ; $6e12: $30 $34

	ld [hl], $38                                     ; $6e14: $36 $38
	rst $38                                          ; $6e16: $ff
	call z, rIF                                    ; $6e17: $cc $0f $ff
	call z, $ff0c                                    ; $6e1a: $cc $0c $ff
	call z, $ff0c                                    ; $6e1d: $cc $0c $ff
	call z, $000c                                    ; $6e20: $cc $0c $00
	inc c                                            ; $6e23: $0c
	jr @+$26                                         ; $6e24: $18 $24

	jr nc, jr_02b_6e5c                               ; $6e26: $30 $34

	ld [hl], $38                                     ; $6e28: $36 $38
	rst $38                                          ; $6e2a: $ff
	call z, rIF                                    ; $6e2b: $cc $0f $ff
	call z, $ff0c                                    ; $6e2e: $cc $0c $ff
	call z, $ff0c                                    ; $6e31: $cc $0c $ff
	call z, $000c                                    ; $6e34: $cc $0c $00
	inc c                                            ; $6e37: $0c
	jr @+$26                                         ; $6e38: $18 $24

	jr nc, jr_02b_6e70                               ; $6e3a: $30 $34

	ld [hl], $38                                     ; $6e3c: $36 $38
	rst $38                                          ; $6e3e: $ff
	call z, rIF                                    ; $6e3f: $cc $0f $ff
	call z, $ff0c                                    ; $6e42: $cc $0c $ff
	call z, $ff0c                                    ; $6e45: $cc $0c $ff

jr_02b_6e48:
	call z, $000c                                    ; $6e48: $cc $0c $00
	inc c                                            ; $6e4b: $0c
	jr jr_02b_6e72                                   ; $6e4c: $18 $24

	jr nc, jr_02b_6e84                               ; $6e4e: $30 $34

	ld [hl], $38                                     ; $6e50: $36 $38
	rst $38                                          ; $6e52: $ff
	call z, rIF                                    ; $6e53: $cc $0f $ff
	call z, $ff0c                                    ; $6e56: $cc $0c $ff
	call z, $ff0c                                    ; $6e59: $cc $0c $ff

jr_02b_6e5c:
	call z, $000c                                    ; $6e5c: $cc $0c $00
	inc c                                            ; $6e5f: $0c
	jr @+$26                                         ; $6e60: $18 $24

	jr nc, jr_02b_6e98                               ; $6e62: $30 $34

	ld [hl], $38                                     ; $6e64: $36 $38
	nop                                              ; $6e66: $00
	adc b                                            ; $6e67: $88
	nop                                              ; $6e68: $00
	ld b, h                                          ; $6e69: $44
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	ld a, [hl+]                                      ; $6e6c: $2a
	ld b, h                                          ; $6e6d: $44
	ld b, h                                          ; $6e6e: $44
	ld b, h                                          ; $6e6f: $44

jr_02b_6e70:
	nop                                              ; $6e70: $00
	ld b, h                                          ; $6e71: $44

jr_02b_6e72:
	db $fc                                           ; $6e72: $fc
	rst GetHLinHL                                          ; $6e73: $cf
	rrca                                             ; $6e74: $0f
	inc c                                            ; $6e75: $0c
	call z, $0c03                                    ; $6e76: $cc $03 $0c
	call z, $0c03                                    ; $6e79: $cc $03 $0c
	call z, $0003                                    ; $6e7c: $cc $03 $00
	inc c                                            ; $6e7f: $0c
	ld [de], a                                       ; $6e80: $12
	jr jr_02b_6ea1                                   ; $6e81: $18 $1e

	ld [hl+], a                                      ; $6e83: $22

jr_02b_6e84:
	inc h                                            ; $6e84: $24
	ld h, $fc                                        ; $6e85: $26 $fc
	rst GetHLinHL                                          ; $6e87: $cf
	rrca                                             ; $6e88: $0f
	inc c                                            ; $6e89: $0c
	call z, $0c0f                                    ; $6e8a: $cc $0f $0c
	call z, $0c0f                                    ; $6e8d: $cc $0f $0c
	call z, $000f                                    ; $6e90: $cc $0f $00
	inc c                                            ; $6e93: $0c
	ld [de], a                                       ; $6e94: $12
	jr jr_02b_6eb5                                   ; $6e95: $18 $1e

	ld [hl+], a                                      ; $6e97: $22

jr_02b_6e98:
	ld h, $2a                                        ; $6e98: $26 $2a
	db $fc                                           ; $6e9a: $fc
	rst GetHLinHL                                          ; $6e9b: $cf
	rrca                                             ; $6e9c: $0f
	inc c                                            ; $6e9d: $0c
	call z, $0c03                                    ; $6e9e: $cc $03 $0c

jr_02b_6ea1:
	call z, $0c03                                    ; $6ea1: $cc $03 $0c
	call z, $0003                                    ; $6ea4: $cc $03 $00
	inc c                                            ; $6ea7: $0c
	ld [de], a                                       ; $6ea8: $12
	jr jr_02b_6ec9                                   ; $6ea9: $18 $1e

	ld [hl+], a                                      ; $6eab: $22
	inc h                                            ; $6eac: $24
	ld h, $fc                                        ; $6ead: $26 $fc
	rst GetHLinHL                                          ; $6eaf: $cf
	rrca                                             ; $6eb0: $0f
	inc c                                            ; $6eb1: $0c
	call z, $0c03                                    ; $6eb2: $cc $03 $0c

jr_02b_6eb5:
	call z, $0c03                                    ; $6eb5: $cc $03 $0c
	call z, $0003                                    ; $6eb8: $cc $03 $00
	inc c                                            ; $6ebb: $0c
	ld [de], a                                       ; $6ebc: $12
	jr jr_02b_6edd                                   ; $6ebd: $18 $1e

	ld [hl+], a                                      ; $6ebf: $22
	inc h                                            ; $6ec0: $24
	ld h, $fc                                        ; $6ec1: $26 $fc
	rst GetHLinHL                                          ; $6ec3: $cf
	rrca                                             ; $6ec4: $0f
	inc c                                            ; $6ec5: $0c
	call z, $0c03                                    ; $6ec6: $cc $03 $0c

jr_02b_6ec9:
	call z, $0c03                                    ; $6ec9: $cc $03 $0c
	call z, $0003                                    ; $6ecc: $cc $03 $00
	inc c                                            ; $6ecf: $0c
	ld [de], a                                       ; $6ed0: $12
	jr jr_02b_6ef1                                   ; $6ed1: $18 $1e

	ld [hl+], a                                      ; $6ed3: $22
	inc h                                            ; $6ed4: $24
	ld h, $08                                        ; $6ed5: $26 $08
	sbc c                                            ; $6ed7: $99
	nop                                              ; $6ed8: $00
	ld de, $4400                                     ; $6ed9: $11 $00 $44
	nop                                              ; $6edc: $00

jr_02b_6edd:
	and d                                            ; $6edd: $a2
	ld b, h                                          ; $6ede: $44
	ld b, h                                          ; $6edf: $44
	ld de, $fc44                                     ; $6ee0: $11 $44 $fc
	rst GetHLinHL                                          ; $6ee3: $cf
	rrca                                             ; $6ee4: $0f
	call z, $0cc0                                    ; $6ee5: $cc $c0 $0c
	call z, $0cc0                                    ; $6ee8: $cc $c0 $0c
	call z, $0cc0                                    ; $6eeb: $cc $c0 $0c
	nop                                              ; $6eee: $00
	inc c                                            ; $6eef: $0c
	ld [de], a                                       ; $6ef0: $12

jr_02b_6ef1:
	jr @+$20                                         ; $6ef1: $18 $1e

	ld [hl+], a                                      ; $6ef3: $22
	inc h                                            ; $6ef4: $24
	ld h, $fc                                        ; $6ef5: $26 $fc
	rst GetHLinHL                                          ; $6ef7: $cf
	rrca                                             ; $6ef8: $0f
	call z, $0fc0                                    ; $6ef9: $cc $c0 $0f
	call z, $0fc0                                    ; $6efc: $cc $c0 $0f
	call z, $0fc0                                    ; $6eff: $cc $c0 $0f
	nop                                              ; $6f02: $00
	inc c                                            ; $6f03: $0c
	ld [de], a                                       ; $6f04: $12
	jr @+$20                                         ; $6f05: $18 $1e

	ld [hl+], a                                      ; $6f07: $22
	ld h, $2a                                        ; $6f08: $26 $2a
	db $fc                                           ; $6f0a: $fc
	rst GetHLinHL                                          ; $6f0b: $cf
	rrca                                             ; $6f0c: $0f
	call z, $0cc0                                    ; $6f0d: $cc $c0 $0c
	call z, $0cc0                                    ; $6f10: $cc $c0 $0c
	call z, $0cc0                                    ; $6f13: $cc $c0 $0c
	nop                                              ; $6f16: $00
	inc c                                            ; $6f17: $0c
	ld [de], a                                       ; $6f18: $12
	jr @+$20                                         ; $6f19: $18 $1e

	ld [hl+], a                                      ; $6f1b: $22
	inc h                                            ; $6f1c: $24
	ld h, $fc                                        ; $6f1d: $26 $fc
	rst GetHLinHL                                          ; $6f1f: $cf
	rrca                                             ; $6f20: $0f
	call z, $0cc0                                    ; $6f21: $cc $c0 $0c
	call z, $0cc0                                    ; $6f24: $cc $c0 $0c
	call z, $0cc0                                    ; $6f27: $cc $c0 $0c
	nop                                              ; $6f2a: $00
	inc c                                            ; $6f2b: $0c
	ld [de], a                                       ; $6f2c: $12
	jr @+$20                                         ; $6f2d: $18 $1e

	ld [hl+], a                                      ; $6f2f: $22
	inc h                                            ; $6f30: $24
	ld h, $fc                                        ; $6f31: $26 $fc
	rst GetHLinHL                                          ; $6f33: $cf
	rrca                                             ; $6f34: $0f
	call z, $0cc0                                    ; $6f35: $cc $c0 $0c
	call z, $0cc0                                    ; $6f38: $cc $c0 $0c
	call z, $0cc0                                    ; $6f3b: $cc $c0 $0c
	nop                                              ; $6f3e: $00
	inc c                                            ; $6f3f: $0c
	ld [de], a                                       ; $6f40: $12
	jr @+$20                                         ; $6f41: $18 $1e

	ld [hl+], a                                      ; $6f43: $22
	inc h                                            ; $6f44: $24
	ld h, $00                                        ; $6f45: $26 $00
	call z, $9900                                    ; $6f47: $cc $00 $99
	nop                                              ; $6f4a: $00
	ld b, h                                          ; $6f4b: $44
	ld [$4422], sp                                   ; $6f4c: $08 $22 $44
	ld b, h                                          ; $6f4f: $44
	sbc c                                            ; $6f50: $99
	ld b, h                                          ; $6f51: $44
	rst $38                                          ; $6f52: $ff
	rst $38                                          ; $6f53: $ff
	rrca                                             ; $6f54: $0f
	rst $38                                          ; $6f55: $ff
	rst $38                                          ; $6f56: $ff
	rrca                                             ; $6f57: $0f
	rst $38                                          ; $6f58: $ff
	rst $38                                          ; $6f59: $ff
	rrca                                             ; $6f5a: $0f
	rst $38                                          ; $6f5b: $ff
	rst $38                                          ; $6f5c: $ff
	rrca                                             ; $6f5d: $0f
	nop                                              ; $6f5e: $00
	db $10                                           ; $6f5f: $10
	jr nz, jr_02b_6f92                               ; $6f60: $20 $30

	ld b, b                                          ; $6f62: $40
	ld b, h                                          ; $6f63: $44
	ld c, b                                          ; $6f64: $48
	ld c, h                                          ; $6f65: $4c
	rst $38                                          ; $6f66: $ff
	rst $38                                          ; $6f67: $ff
	rrca                                             ; $6f68: $0f
	rst $38                                          ; $6f69: $ff
	rst $38                                          ; $6f6a: $ff
	rrca                                             ; $6f6b: $0f
	rst $38                                          ; $6f6c: $ff
	rst $38                                          ; $6f6d: $ff
	rrca                                             ; $6f6e: $0f
	rst $38                                          ; $6f6f: $ff
	rst $38                                          ; $6f70: $ff
	rrca                                             ; $6f71: $0f
	nop                                              ; $6f72: $00
	db $10                                           ; $6f73: $10
	jr nz, jr_02b_6fa6                               ; $6f74: $20 $30

	ld b, b                                          ; $6f76: $40
	ld b, h                                          ; $6f77: $44
	ld c, b                                          ; $6f78: $48
	ld c, h                                          ; $6f79: $4c
	rst $38                                          ; $6f7a: $ff
	rst $38                                          ; $6f7b: $ff
	rrca                                             ; $6f7c: $0f
	rst $38                                          ; $6f7d: $ff
	rst $38                                          ; $6f7e: $ff
	rrca                                             ; $6f7f: $0f
	rst $38                                          ; $6f80: $ff
	rst $38                                          ; $6f81: $ff
	rrca                                             ; $6f82: $0f
	rst $38                                          ; $6f83: $ff
	rst $38                                          ; $6f84: $ff
	rrca                                             ; $6f85: $0f
	nop                                              ; $6f86: $00
	db $10                                           ; $6f87: $10
	jr nz, jr_02b_6fba                               ; $6f88: $20 $30

	ld b, b                                          ; $6f8a: $40
	ld b, h                                          ; $6f8b: $44
	ld c, b                                          ; $6f8c: $48
	ld c, h                                          ; $6f8d: $4c
	rst $38                                          ; $6f8e: $ff
	rst $38                                          ; $6f8f: $ff
	rrca                                             ; $6f90: $0f
	rst $38                                          ; $6f91: $ff

jr_02b_6f92:
	rst $38                                          ; $6f92: $ff
	rrca                                             ; $6f93: $0f
	rst $38                                          ; $6f94: $ff
	rst $38                                          ; $6f95: $ff
	rrca                                             ; $6f96: $0f
	rst $38                                          ; $6f97: $ff
	rst $38                                          ; $6f98: $ff
	rrca                                             ; $6f99: $0f
	nop                                              ; $6f9a: $00
	db $10                                           ; $6f9b: $10
	jr nz, jr_02b_6fce                               ; $6f9c: $20 $30

	ld b, b                                          ; $6f9e: $40
	ld b, h                                          ; $6f9f: $44
	ld c, b                                          ; $6fa0: $48
	ld c, h                                          ; $6fa1: $4c
	rst $38                                          ; $6fa2: $ff
	rst $38                                          ; $6fa3: $ff
	rrca                                             ; $6fa4: $0f
	rst $38                                          ; $6fa5: $ff

jr_02b_6fa6:
	rst $38                                          ; $6fa6: $ff
	rrca                                             ; $6fa7: $0f
	rst $38                                          ; $6fa8: $ff
	rst $38                                          ; $6fa9: $ff
	rrca                                             ; $6faa: $0f
	rst $38                                          ; $6fab: $ff
	rst $38                                          ; $6fac: $ff
	rrca                                             ; $6fad: $0f
	nop                                              ; $6fae: $00
	db $10                                           ; $6faf: $10
	jr nz, jr_02b_6fe2                               ; $6fb0: $20 $30

	ld b, b                                          ; $6fb2: $40
	ld b, h                                          ; $6fb3: $44
	ld c, b                                          ; $6fb4: $48
	ld c, h                                          ; $6fb5: $4c
	ld b, b                                          ; $6fb6: $40
	ld [$0a00], sp                                   ; $6fb7: $08 $00 $0a

jr_02b_6fba:
	nop                                              ; $6fba: $00
	nop                                              ; $6fbb: $00
	nop                                              ; $6fbc: $00
	inc bc                                           ; $6fbd: $03
	adc b                                            ; $6fbe: $88
	adc b                                            ; $6fbf: $88
	adc b                                            ; $6fc0: $88
	adc b                                            ; $6fc1: $88
	db $fc                                           ; $6fc2: $fc
	rst GetHLinHL                                          ; $6fc3: $cf
	rrca                                             ; $6fc4: $0f
	call z, $0fcc                                    ; $6fc5: $cc $cc $0f
	call z, $0fcc                                    ; $6fc8: $cc $cc $0f
	call z, $0fcc                                    ; $6fcb: $cc $cc $0f

jr_02b_6fce:
	nop                                              ; $6fce: $00
	inc c                                            ; $6fcf: $0c
	inc d                                            ; $6fd0: $14
	inc e                                            ; $6fd1: $1c
	inc h                                            ; $6fd2: $24

jr_02b_6fd3:
	jr z, jr_02b_7001                                ; $6fd3: $28 $2c

	jr nc, jr_02b_6fd3                               ; $6fd5: $30 $fc

	rst GetHLinHL                                          ; $6fd7: $cf
	rrca                                             ; $6fd8: $0f
	call z, $0fcc                                    ; $6fd9: $cc $cc $0f
	call z, $0fcc                                    ; $6fdc: $cc $cc $0f
	call z, $0fcc                                    ; $6fdf: $cc $cc $0f

jr_02b_6fe2:
	nop                                              ; $6fe2: $00
	inc c                                            ; $6fe3: $0c
	inc d                                            ; $6fe4: $14
	inc e                                            ; $6fe5: $1c
	inc h                                            ; $6fe6: $24

jr_02b_6fe7:
	jr z, jr_02b_7015                                ; $6fe7: $28 $2c

	jr nc, jr_02b_6fe7                               ; $6fe9: $30 $fc

	rst GetHLinHL                                          ; $6feb: $cf
	rrca                                             ; $6fec: $0f
	call z, $0fcc                                    ; $6fed: $cc $cc $0f
	call z, $0fcc                                    ; $6ff0: $cc $cc $0f
	call z, $0fcc                                    ; $6ff3: $cc $cc $0f
	nop                                              ; $6ff6: $00
	inc c                                            ; $6ff7: $0c
	inc d                                            ; $6ff8: $14
	inc e                                            ; $6ff9: $1c
	inc h                                            ; $6ffa: $24

jr_02b_6ffb:
	jr z, jr_02b_7029                                ; $6ffb: $28 $2c

	jr nc, jr_02b_6ffb                               ; $6ffd: $30 $fc

	rst GetHLinHL                                          ; $6fff: $cf
	rrca                                             ; $7000: $0f

jr_02b_7001:
	call z, $0fcc                                    ; $7001: $cc $cc $0f
	call z, $0fcc                                    ; $7004: $cc $cc $0f
	call z, $0fcc                                    ; $7007: $cc $cc $0f
	nop                                              ; $700a: $00
	inc c                                            ; $700b: $0c
	inc d                                            ; $700c: $14
	inc e                                            ; $700d: $1c
	inc h                                            ; $700e: $24

jr_02b_700f:
	jr z, jr_02b_703d                                ; $700f: $28 $2c

	jr nc, jr_02b_700f                               ; $7011: $30 $fc

	rst GetHLinHL                                          ; $7013: $cf
	rrca                                             ; $7014: $0f

jr_02b_7015:
	call z, $0fcc                                    ; $7015: $cc $cc $0f
	call z, $0fcc                                    ; $7018: $cc $cc $0f
	call z, $0fcc                                    ; $701b: $cc $cc $0f
	nop                                              ; $701e: $00
	inc c                                            ; $701f: $0c
	inc d                                            ; $7020: $14
	inc e                                            ; $7021: $1c
	inc h                                            ; $7022: $24
	jr z, jr_02b_7051                                ; $7023: $28 $2c

	jr nc, jr_02b_7027                               ; $7025: $30 $00

jr_02b_7027:
	or e                                             ; $7027: $b3
	nop                                              ; $7028: $00

jr_02b_7029:
	ld d, l                                          ; $7029: $55
	nop                                              ; $702a: $00
	ld d, l                                          ; $702b: $55
	nop                                              ; $702c: $00
	call nz, Call_02b_5555                           ; $702d: $c4 $55 $55
	ld d, l                                          ; $7030: $55
	ld d, l                                          ; $7031: $55
	rst $38                                          ; $7032: $ff
	rst $38                                          ; $7033: $ff
	rrca                                             ; $7034: $0f
	rst $38                                          ; $7035: $ff
	db $fc                                           ; $7036: $fc
	rrca                                             ; $7037: $0f
	rst $38                                          ; $7038: $ff
	db $fc                                           ; $7039: $fc
	rrca                                             ; $703a: $0f
	rst $38                                          ; $703b: $ff
	db $fc                                           ; $703c: $fc

jr_02b_703d:
	rrca                                             ; $703d: $0f
	nop                                              ; $703e: $00
	db $10                                           ; $703f: $10
	ld e, $2c                                        ; $7040: $1e $2c
	ld a, [hl-]                                      ; $7042: $3a
	ld a, $42                                        ; $7043: $3e $42
	ld b, [hl]                                       ; $7045: $46
	rst $38                                          ; $7046: $ff
	rst $38                                          ; $7047: $ff
	rrca                                             ; $7048: $0f
	rst $38                                          ; $7049: $ff
	db $fc                                           ; $704a: $fc
	rrca                                             ; $704b: $0f
	rst $38                                          ; $704c: $ff
	db $fc                                           ; $704d: $fc
	rrca                                             ; $704e: $0f
	rst $38                                          ; $704f: $ff
	db $fc                                           ; $7050: $fc

jr_02b_7051:
	rrca                                             ; $7051: $0f
	nop                                              ; $7052: $00
	db $10                                           ; $7053: $10
	ld e, $2c                                        ; $7054: $1e $2c
	ld a, [hl-]                                      ; $7056: $3a
	ld a, $42                                        ; $7057: $3e $42
	ld b, [hl]                                       ; $7059: $46
	rst $38                                          ; $705a: $ff
	rst $38                                          ; $705b: $ff
	rrca                                             ; $705c: $0f
	rst $38                                          ; $705d: $ff
	db $fc                                           ; $705e: $fc
	rrca                                             ; $705f: $0f
	rst $38                                          ; $7060: $ff
	db $fc                                           ; $7061: $fc
	rrca                                             ; $7062: $0f
	rst $38                                          ; $7063: $ff
	db $fc                                           ; $7064: $fc
	rrca                                             ; $7065: $0f
	nop                                              ; $7066: $00
	db $10                                           ; $7067: $10
	ld e, $2c                                        ; $7068: $1e $2c
	ld a, [hl-]                                      ; $706a: $3a
	ld a, $42                                        ; $706b: $3e $42
	ld b, [hl]                                       ; $706d: $46
	rst $38                                          ; $706e: $ff
	rst $38                                          ; $706f: $ff
	rrca                                             ; $7070: $0f
	rst $38                                          ; $7071: $ff
	db $fc                                           ; $7072: $fc
	rrca                                             ; $7073: $0f
	rst $38                                          ; $7074: $ff
	db $fc                                           ; $7075: $fc
	rrca                                             ; $7076: $0f
	rst $38                                          ; $7077: $ff
	db $fc                                           ; $7078: $fc
	rrca                                             ; $7079: $0f
	nop                                              ; $707a: $00
	db $10                                           ; $707b: $10
	ld e, $2c                                        ; $707c: $1e $2c
	ld a, [hl-]                                      ; $707e: $3a
	ld a, $42                                        ; $707f: $3e $42
	ld b, [hl]                                       ; $7081: $46
	rst $38                                          ; $7082: $ff
	rst $38                                          ; $7083: $ff
	rrca                                             ; $7084: $0f
	rst $38                                          ; $7085: $ff
	db $fc                                           ; $7086: $fc
	rrca                                             ; $7087: $0f
	rst $38                                          ; $7088: $ff
	db $fc                                           ; $7089: $fc
	rrca                                             ; $708a: $0f
	rst $38                                          ; $708b: $ff
	db $fc                                           ; $708c: $fc
	rrca                                             ; $708d: $0f
	nop                                              ; $708e: $00
	db $10                                           ; $708f: $10
	ld e, $2c                                        ; $7090: $1e $2c
	ld a, [hl-]                                      ; $7092: $3a
	ld a, $42                                        ; $7093: $3e $42
	ld b, [hl]                                       ; $7095: $46
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	nop                                              ; $7098: $00
	nop                                              ; $7099: $00
	nop                                              ; $709a: $00
	inc c                                            ; $709b: $0c
	adc h                                            ; $709c: $8c
	ret z                                            ; $709d: $c8

	adc b                                            ; $709e: $88
	adc b                                            ; $709f: $88
	adc b                                            ; $70a0: $88
	adc b                                            ; $70a1: $88
	rst $38                                          ; $70a2: $ff
	rst $38                                          ; $70a3: $ff
	rrca                                             ; $70a4: $0f
	db $fc                                           ; $70a5: $fc
	rst $38                                          ; $70a6: $ff
	rrca                                             ; $70a7: $0f
	db $fc                                           ; $70a8: $fc
	rst $38                                          ; $70a9: $ff
	rrca                                             ; $70aa: $0f
	db $fc                                           ; $70ab: $fc
	rst $38                                          ; $70ac: $ff
	rrca                                             ; $70ad: $0f
	nop                                              ; $70ae: $00
	db $10                                           ; $70af: $10
	ld e, $2c                                        ; $70b0: $1e $2c
	ld a, [hl-]                                      ; $70b2: $3a
	ld a, $42                                        ; $70b3: $3e $42
	ld b, [hl]                                       ; $70b5: $46
	rst $38                                          ; $70b6: $ff
	rst $38                                          ; $70b7: $ff
	rrca                                             ; $70b8: $0f
	db $fc                                           ; $70b9: $fc
	rst $38                                          ; $70ba: $ff
	rrca                                             ; $70bb: $0f
	db $fc                                           ; $70bc: $fc
	rst $38                                          ; $70bd: $ff
	rrca                                             ; $70be: $0f
	db $fc                                           ; $70bf: $fc
	rst $38                                          ; $70c0: $ff
	rrca                                             ; $70c1: $0f
	nop                                              ; $70c2: $00
	db $10                                           ; $70c3: $10
	ld e, $2c                                        ; $70c4: $1e $2c
	ld a, [hl-]                                      ; $70c6: $3a
	ld a, $42                                        ; $70c7: $3e $42
	ld b, [hl]                                       ; $70c9: $46
	rst $38                                          ; $70ca: $ff
	rst $38                                          ; $70cb: $ff
	rrca                                             ; $70cc: $0f
	db $fc                                           ; $70cd: $fc
	rst $38                                          ; $70ce: $ff
	rrca                                             ; $70cf: $0f
	db $fc                                           ; $70d0: $fc
	rst $38                                          ; $70d1: $ff
	rrca                                             ; $70d2: $0f
	db $fc                                           ; $70d3: $fc
	rst $38                                          ; $70d4: $ff
	rrca                                             ; $70d5: $0f
	nop                                              ; $70d6: $00
	db $10                                           ; $70d7: $10
	ld e, $2c                                        ; $70d8: $1e $2c
	ld a, [hl-]                                      ; $70da: $3a
	ld a, $42                                        ; $70db: $3e $42
	ld b, [hl]                                       ; $70dd: $46
	rst $38                                          ; $70de: $ff
	rst $38                                          ; $70df: $ff
	rrca                                             ; $70e0: $0f
	db $fc                                           ; $70e1: $fc
	rst $38                                          ; $70e2: $ff
	rrca                                             ; $70e3: $0f
	db $fc                                           ; $70e4: $fc
	rst $38                                          ; $70e5: $ff
	rrca                                             ; $70e6: $0f
	db $fc                                           ; $70e7: $fc
	rst $38                                          ; $70e8: $ff
	rrca                                             ; $70e9: $0f
	nop                                              ; $70ea: $00
	db $10                                           ; $70eb: $10
	ld e, $2c                                        ; $70ec: $1e $2c
	ld a, [hl-]                                      ; $70ee: $3a
	ld a, $42                                        ; $70ef: $3e $42
	ld b, [hl]                                       ; $70f1: $46
	rst $38                                          ; $70f2: $ff
	rst $38                                          ; $70f3: $ff
	rrca                                             ; $70f4: $0f
	db $fc                                           ; $70f5: $fc
	rst $38                                          ; $70f6: $ff
	rrca                                             ; $70f7: $0f
	db $fc                                           ; $70f8: $fc
	rst $38                                          ; $70f9: $ff
	rrca                                             ; $70fa: $0f
	db $fc                                           ; $70fb: $fc
	rst $38                                          ; $70fc: $ff
	rrca                                             ; $70fd: $0f
	nop                                              ; $70fe: $00
	db $10                                           ; $70ff: $10
	ld e, $2c                                        ; $7100: $1e $2c
	ld a, [hl-]                                      ; $7102: $3a
	ld a, $42                                        ; $7103: $3e $42
	ld b, [hl]                                       ; $7105: $46
	nop                                              ; $7106: $00
	ld a, [bc]                                       ; $7107: $0a
	ld [hl], b                                       ; $7108: $70
	ld a, [bc]                                       ; $7109: $0a
	nop                                              ; $710a: $00
	ld b, $00                                        ; $710b: $06 $00
	ld c, $88                                        ; $710d: $0e $88
	adc b                                            ; $710f: $88
	adc b                                            ; $7110: $88
	adc b                                            ; $7111: $88
	rst $38                                          ; $7112: $ff
	rst $38                                          ; $7113: $ff
	rrca                                             ; $7114: $0f
	rst $38                                          ; $7115: $ff
	rst $38                                          ; $7116: $ff
	rrca                                             ; $7117: $0f
	rst $38                                          ; $7118: $ff
	rst $38                                          ; $7119: $ff
	rrca                                             ; $711a: $0f
	rst $38                                          ; $711b: $ff
	rst $38                                          ; $711c: $ff
	rrca                                             ; $711d: $0f
	nop                                              ; $711e: $00
	db $10                                           ; $711f: $10
	jr nz, jr_02b_7152                               ; $7120: $20 $30

	ld b, b                                          ; $7122: $40
	ld b, h                                          ; $7123: $44
	ld c, b                                          ; $7124: $48
	ld c, h                                          ; $7125: $4c
	rst $38                                          ; $7126: $ff
	rst $38                                          ; $7127: $ff
	rrca                                             ; $7128: $0f
	rst $38                                          ; $7129: $ff
	rst $38                                          ; $712a: $ff
	rrca                                             ; $712b: $0f
	rst $38                                          ; $712c: $ff
	rst $38                                          ; $712d: $ff
	rrca                                             ; $712e: $0f
	rst $38                                          ; $712f: $ff
	rst $38                                          ; $7130: $ff
	rrca                                             ; $7131: $0f
	nop                                              ; $7132: $00
	db $10                                           ; $7133: $10
	jr nz, jr_02b_7166                               ; $7134: $20 $30

	ld b, b                                          ; $7136: $40
	ld b, h                                          ; $7137: $44
	ld c, b                                          ; $7138: $48
	ld c, h                                          ; $7139: $4c
	rst $38                                          ; $713a: $ff
	rst $38                                          ; $713b: $ff
	rrca                                             ; $713c: $0f
	rst $38                                          ; $713d: $ff
	rst $38                                          ; $713e: $ff
	rrca                                             ; $713f: $0f
	rst $38                                          ; $7140: $ff
	rst $38                                          ; $7141: $ff
	rrca                                             ; $7142: $0f
	rst $38                                          ; $7143: $ff
	rst $38                                          ; $7144: $ff
	rrca                                             ; $7145: $0f
	nop                                              ; $7146: $00
	db $10                                           ; $7147: $10
	jr nz, jr_02b_717a                               ; $7148: $20 $30

	ld b, b                                          ; $714a: $40
	ld b, h                                          ; $714b: $44
	ld c, b                                          ; $714c: $48
	ld c, h                                          ; $714d: $4c
	rst $38                                          ; $714e: $ff
	rst $38                                          ; $714f: $ff
	rrca                                             ; $7150: $0f
	rst $38                                          ; $7151: $ff

jr_02b_7152:
	rst $38                                          ; $7152: $ff
	rrca                                             ; $7153: $0f
	rst $38                                          ; $7154: $ff
	rst $38                                          ; $7155: $ff
	rrca                                             ; $7156: $0f
	rst $38                                          ; $7157: $ff
	rst $38                                          ; $7158: $ff
	rrca                                             ; $7159: $0f
	nop                                              ; $715a: $00
	db $10                                           ; $715b: $10
	jr nz, jr_02b_718e                               ; $715c: $20 $30

	ld b, b                                          ; $715e: $40
	ld b, h                                          ; $715f: $44
	ld c, b                                          ; $7160: $48
	ld c, h                                          ; $7161: $4c
	rst $38                                          ; $7162: $ff
	rst $38                                          ; $7163: $ff
	rrca                                             ; $7164: $0f
	rst $38                                          ; $7165: $ff

jr_02b_7166:
	rst $38                                          ; $7166: $ff
	rrca                                             ; $7167: $0f
	rst $38                                          ; $7168: $ff
	rst $38                                          ; $7169: $ff
	rrca                                             ; $716a: $0f
	rst $38                                          ; $716b: $ff
	rst $38                                          ; $716c: $ff
	rrca                                             ; $716d: $0f
	nop                                              ; $716e: $00
	db $10                                           ; $716f: $10
	jr nz, jr_02b_71a2                               ; $7170: $20 $30

	ld b, b                                          ; $7172: $40
	ld b, h                                          ; $7173: $44
	ld c, b                                          ; $7174: $48
	ld c, h                                          ; $7175: $4c
	nop                                              ; $7176: $00
	inc c                                            ; $7177: $0c
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00

jr_02b_717a:
	nop                                              ; $717a: $00
	inc c                                            ; $717b: $0c
	ld b, b                                          ; $717c: $40
	ld [$8888], sp                                   ; $717d: $08 $88 $88
	adc b                                            ; $7180: $88
	adc b                                            ; $7181: $88
	rst GetHLinHL                                          ; $7182: $cf
	ldh a, [$0c]                                     ; $7183: $f0 $0c
	call z, $0cc0                                    ; $7185: $cc $c0 $0c
	rst GetHLinHL                                          ; $7188: $cf
	ldh a, [$0c]                                     ; $7189: $f0 $0c
	rst GetHLinHL                                          ; $718b: $cf
	ldh a, [$0c]                                     ; $718c: $f0 $0c

jr_02b_718e:
	nop                                              ; $718e: $00
	ld a, [bc]                                       ; $718f: $0a
	db $10                                           ; $7190: $10
	ld a, [de]                                       ; $7191: $1a
	inc h                                            ; $7192: $24
	ld h, $28                                        ; $7193: $26 $28
	ld a, [hl+]                                      ; $7195: $2a
	ld b, h                                          ; $7196: $44
	xor d                                            ; $7197: $aa
	ld b, h                                          ; $7198: $44
	ld de, $1144                                     ; $7199: $11 $44 $11
	nop                                              ; $719c: $00
	nop                                              ; $719d: $00
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	xor d                                            ; $71a0: $aa
	nop                                              ; $71a1: $00

jr_02b_71a2:
	db $fc                                           ; $71a2: $fc
	rst $38                                          ; $71a3: $ff
	inc c                                            ; $71a4: $0c
	call z, $0ccc                                    ; $71a5: $cc $cc $0c
	call z, $0ccc                                    ; $71a8: $cc $cc $0c
	call z, $0ccc                                    ; $71ab: $cc $cc $0c
	nop                                              ; $71ae: $00
	ld c, $16                                        ; $71af: $0e $16
	ld e, $26                                        ; $71b1: $1e $26
	jr z, jr_02b_71df                                ; $71b3: $28 $2a

	inc l                                            ; $71b5: $2c
	ld de, $1111                                     ; $71b6: $11 $11 $11
	ld h, [hl]                                       ; $71b9: $66
	ld de, $11ee                                     ; $71ba: $11 $ee $11
	db $dd                                           ; $71bd: $dd
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	ld h, [hl]                                       ; $71c0: $66
	nop                                              ; $71c1: $00
	rst $38                                          ; $71c2: $ff
	rst GetHLinHL                                          ; $71c3: $cf
	db $fc                                           ; $71c4: $fc
	call z, $cc0c                                    ; $71c5: $cc $0c $cc
	call z, $cc0c                                    ; $71c8: $cc $0c $cc
	call z, $cc0c                                    ; $71cb: $cc $0c $cc
	nop                                              ; $71ce: $00
	ld [de], a                                       ; $71cf: $12
	ld a, [de]                                       ; $71d0: $1a
	ld [hl+], a                                      ; $71d1: $22
	ld a, [hl+]                                      ; $71d2: $2a
	inc l                                            ; $71d3: $2c
	ld l, $30                                        ; $71d4: $2e $30
	sbc c                                            ; $71d6: $99
	rst $38                                          ; $71d7: $ff
	ld de, $1166                                     ; $71d8: $11 $66 $11
	ld h, [hl]                                       ; $71db: $66
	ld de, $1166                                     ; $71dc: $11 $66 $11

jr_02b_71df:
	xor $66                                          ; $71df: $ee $66
	nop                                              ; $71e1: $00
	db $fc                                           ; $71e2: $fc
	rst GetHLinHL                                          ; $71e3: $cf
	rrca                                             ; $71e4: $0f
	call z, $0fcc                                    ; $71e5: $cc $cc $0f
	call z, $0fcc                                    ; $71e8: $cc $cc $0f
	call z, $0fcc                                    ; $71eb: $cc $cc $0f
	nop                                              ; $71ee: $00
	inc c                                            ; $71ef: $0c
	inc d                                            ; $71f0: $14
	inc e                                            ; $71f1: $1c
	inc h                                            ; $71f2: $24
	jr z, @+$2e                                      ; $71f3: $28 $2c

	jr nc, jr_02b_7208                               ; $71f5: $30 $11

	call z, Call_02b_5511                            ; $71f7: $cc $11 $55
	ld de, $1155                                     ; $71fa: $11 $55 $11
	db $dd                                           ; $71fd: $dd
	ld d, l                                          ; $71fe: $55
	ld d, l                                          ; $71ff: $55
	ld d, l                                          ; $7200: $55
	ld d, l                                          ; $7201: $55
	rst $38                                          ; $7202: $ff
	rst GetHLinHL                                          ; $7203: $cf
	inc c                                            ; $7204: $0c
	call z, $0ccc                                    ; $7205: $cc $cc $0c

jr_02b_7208:
	call z, $0ccc                                    ; $7208: $cc $cc $0c
	call z, $0ccc                                    ; $720b: $cc $cc $0c
	nop                                              ; $720e: $00
	ld c, $16                                        ; $720f: $0e $16
	ld e, $26                                        ; $7211: $1e $26
	jr z, jr_02b_723f                                ; $7213: $28 $2a

	inc l                                            ; $7215: $2c
	ld de, $11ff                                     ; $7216: $11 $ff $11
	ld b, h                                          ; $7219: $44
	ld de, $1111                                     ; $721a: $11 $11 $11
	xor $00                                          ; $721d: $ee $00
	nop                                              ; $721f: $00
	ld de, $fc00                                     ; $7220: $11 $00 $fc
	rst GetHLinHL                                          ; $7223: $cf
	rrca                                             ; $7224: $0f
	call z, $0fcc                                    ; $7225: $cc $cc $0f
	call z, $0fcc                                    ; $7228: $cc $cc $0f
	call z, $0fcc                                    ; $722b: $cc $cc $0f
	nop                                              ; $722e: $00
	inc c                                            ; $722f: $0c
	inc d                                            ; $7230: $14
	inc e                                            ; $7231: $1c
	inc h                                            ; $7232: $24
	jr z, @+$2e                                      ; $7233: $28 $2c

	jr nc, @+$01                                     ; $7235: $30 $ff

	sbc c                                            ; $7237: $99
	ld d, l                                          ; $7238: $55
	nop                                              ; $7239: $00
	ld d, l                                          ; $723a: $55
	nop                                              ; $723b: $00
	ld d, l                                          ; $723c: $55
	sbc c                                            ; $723d: $99
	nop                                              ; $723e: $00

jr_02b_723f:
	nop                                              ; $723f: $00
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	db $fc                                           ; $7242: $fc
	ldh a, [$0c]                                     ; $7243: $f0 $0c
	inc c                                            ; $7245: $0c
	nop                                              ; $7246: $00
	inc c                                            ; $7247: $0c
	inc c                                            ; $7248: $0c
	nop                                              ; $7249: $00
	inc c                                            ; $724a: $0c
	inc c                                            ; $724b: $0c
	nop                                              ; $724c: $00
	inc c                                            ; $724d: $0c
	nop                                              ; $724e: $00
	ld a, [bc]                                       ; $724f: $0a
	inc c                                            ; $7250: $0c
	ld c, $10                                        ; $7251: $0e $10
	ld [de], a                                       ; $7253: $12
	inc d                                            ; $7254: $14
	ld d, $fc                                        ; $7255: $16 $fc
	ldh a, [$0c]                                     ; $7257: $f0 $0c
	inc c                                            ; $7259: $0c
	nop                                              ; $725a: $00
	inc c                                            ; $725b: $0c
	inc c                                            ; $725c: $0c
	nop                                              ; $725d: $00
	inc c                                            ; $725e: $0c
	inc c                                            ; $725f: $0c
	jr nc, jr_02b_726e                               ; $7260: $30 $0c

	nop                                              ; $7262: $00
	ld a, [bc]                                       ; $7263: $0a
	inc c                                            ; $7264: $0c
	ld c, $12                                        ; $7265: $0e $12
	inc d                                            ; $7267: $14
	ld d, $18                                        ; $7268: $16 $18
	xor d                                            ; $726a: $aa
	adc b                                            ; $726b: $88
	ld [hl+], a                                      ; $726c: $22
	cp e                                             ; $726d: $bb

jr_02b_726e:
	ld [hl+], a                                      ; $726e: $22
	ld h, [hl]                                       ; $726f: $66
	nop                                              ; $7270: $00
	nop                                              ; $7271: $00
	nop                                              ; $7272: $00
	nop                                              ; $7273: $00
	cp e                                             ; $7274: $bb
	nop                                              ; $7275: $00
	call z, $0ff0                                    ; $7276: $cc $f0 $0f
	call z, $0fc0                                    ; $7279: $cc $c0 $0f
	call z, $0fc0                                    ; $727c: $cc $c0 $0f
	call z, $0fc0                                    ; $727f: $cc $c0 $0f
	nop                                              ; $7282: $00
	ld [$140e], sp                                   ; $7283: $08 $0e $14
	ld a, [de]                                       ; $7286: $1a
	ld e, $22                                        ; $7287: $1e $22
	ld h, $ff                                        ; $7289: $26 $ff
	rst $38                                          ; $728b: $ff
	ld h, [hl]                                       ; $728c: $66
	rst $38                                          ; $728d: $ff
	ld h, [hl]                                       ; $728e: $66
	ld [hl+], a                                      ; $728f: $22
	rst $38                                          ; $7290: $ff
	rst $38                                          ; $7291: $ff
	rst $38                                          ; $7292: $ff
	rst $38                                          ; $7293: $ff
	rst $38                                          ; $7294: $ff
	rst $38                                          ; $7295: $ff
	db $fc                                           ; $7296: $fc
	rst GetHLinHL                                          ; $7297: $cf
	rrca                                             ; $7298: $0f
	call z, $0fcc                                    ; $7299: $cc $cc $0f
	call z, $0fcc                                    ; $729c: $cc $cc $0f
	call z, $0fcc                                    ; $729f: $cc $cc $0f
	nop                                              ; $72a2: $00
	inc c                                            ; $72a3: $0c
	inc d                                            ; $72a4: $14
	inc e                                            ; $72a5: $1c
	inc h                                            ; $72a6: $24

jr_02b_72a7:
	jr z, jr_02b_72d5                                ; $72a7: $28 $2c

	jr nc, jr_02b_72a7                               ; $72a9: $30 $fc

	rst GetHLinHL                                          ; $72ab: $cf
	rrca                                             ; $72ac: $0f
	call z, $0fcc                                    ; $72ad: $cc $cc $0f
	call z, $0fcc                                    ; $72b0: $cc $cc $0f
	call z, $0fcc                                    ; $72b3: $cc $cc $0f
	nop                                              ; $72b6: $00
	inc c                                            ; $72b7: $0c
	inc d                                            ; $72b8: $14
	inc e                                            ; $72b9: $1c
	inc h                                            ; $72ba: $24

jr_02b_72bb:
	jr z, jr_02b_72e9                                ; $72bb: $28 $2c

	jr nc, jr_02b_72bb                               ; $72bd: $30 $fc

	rst GetHLinHL                                          ; $72bf: $cf
	rrca                                             ; $72c0: $0f
	call z, $0fcc                                    ; $72c1: $cc $cc $0f
	call z, $0fcc                                    ; $72c4: $cc $cc $0f
	call z, $0fcc                                    ; $72c7: $cc $cc $0f
	nop                                              ; $72ca: $00
	inc c                                            ; $72cb: $0c
	inc d                                            ; $72cc: $14
	inc e                                            ; $72cd: $1c
	inc h                                            ; $72ce: $24

jr_02b_72cf:
	jr z, jr_02b_72fd                                ; $72cf: $28 $2c

	jr nc, jr_02b_72cf                               ; $72d1: $30 $fc

	rst GetHLinHL                                          ; $72d3: $cf
	rrca                                             ; $72d4: $0f

jr_02b_72d5:
	call z, $0fcc                                    ; $72d5: $cc $cc $0f

jr_02b_72d8:
	call z, $0fcc                                    ; $72d8: $cc $cc $0f
	call z, $0fcc                                    ; $72db: $cc $cc $0f
	nop                                              ; $72de: $00
	inc c                                            ; $72df: $0c
	inc d                                            ; $72e0: $14
	inc e                                            ; $72e1: $1c
	inc h                                            ; $72e2: $24

jr_02b_72e3:
	jr z, @+$2e                                      ; $72e3: $28 $2c

	jr nc, jr_02b_72e3                               ; $72e5: $30 $fc

	rst GetHLinHL                                          ; $72e7: $cf
	rrca                                             ; $72e8: $0f

jr_02b_72e9:
	call z, $0fcc                                    ; $72e9: $cc $cc $0f
	call z, $0fcc                                    ; $72ec: $cc $cc $0f
	call z, $0fcc                                    ; $72ef: $cc $cc $0f
	nop                                              ; $72f2: $00
	inc c                                            ; $72f3: $0c
	inc d                                            ; $72f4: $14
	inc e                                            ; $72f5: $1c
	inc h                                            ; $72f6: $24
	jr z, jr_02b_7325                                ; $72f7: $28 $2c

	jr nc, jr_02b_72d8                               ; $72f9: $30 $dd

	adc b                                            ; $72fb: $88
	ld h, [hl]                                       ; $72fc: $66

jr_02b_72fd:
	ld de, $0066                                     ; $72fd: $11 $66 $00
	ld h, [hl]                                       ; $7300: $66
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	ld de, $fc00                                     ; $7304: $11 $00 $fc
	rst GetHLinHL                                          ; $7307: $cf
	rrca                                             ; $7308: $0f
	call z, $0fcc                                    ; $7309: $cc $cc $0f
	call z, $0fcc                                    ; $730c: $cc $cc $0f
	call z, $0fcc                                    ; $730f: $cc $cc $0f
	nop                                              ; $7312: $00
	inc c                                            ; $7313: $0c
	inc d                                            ; $7314: $14
	inc e                                            ; $7315: $1c
	inc h                                            ; $7316: $24
	jr z, jr_02b_7345                                ; $7317: $28 $2c

	jr nc, @-$43                                     ; $7319: $30 $bb

	xor d                                            ; $731b: $aa
	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	nop                                              ; $7320: $00
	call z, $0000                                   ; $7321: $cc $00 $00
	nop                                              ; $7324: $00

jr_02b_7325:
	nop                                              ; $7325: $00
	db $fc                                           ; $7326: $fc
	rst GetHLinHL                                          ; $7327: $cf
	rrca                                             ; $7328: $0f
	call z, $0fcc                                    ; $7329: $cc $cc $0f
	call z, $0fcc                                    ; $732c: $cc $cc $0f
	call z, $0fcc                                    ; $732f: $cc $cc $0f
	nop                                              ; $7332: $00
	inc c                                            ; $7333: $0c
	inc d                                            ; $7334: $14
	inc e                                            ; $7335: $1c
	inc h                                            ; $7336: $24
	jr z, jr_02b_7365                                ; $7337: $28 $2c

	jr nc, jr_02b_733b                               ; $7339: $30 $00

jr_02b_733b:
	ld [hl+], a                                      ; $733b: $22
	nop                                              ; $733c: $00
	nop                                              ; $733d: $00
	nop                                              ; $733e: $00
	cp e                                             ; $733f: $bb
	adc b                                            ; $7340: $88
	adc b                                            ; $7341: $88
	cp e                                             ; $7342: $bb
	cp e                                             ; $7343: $bb
	nop                                              ; $7344: $00

jr_02b_7345:
	cp e                                             ; $7345: $bb
	db $fc                                           ; $7346: $fc
	ret nz                                           ; $7347: $c0

	rrca                                             ; $7348: $0f
	call z, $0fc0                                    ; $7349: $cc $c0 $0f
	call z, $0fc0                                    ; $734c: $cc $c0 $0f
	call z, $0fc0                                    ; $734f: $cc $c0 $0f
	nop                                              ; $7352: $00
	ld [$140e], sp                                   ; $7353: $08 $0e $14
	ld a, [de]                                       ; $7356: $1a
	ld e, $22                                        ; $7357: $1e $22
	ld h, $00                                        ; $7359: $26 $00
	call z, $0000                                   ; $735b: $cc $00 $00
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	nop                                              ; $7362: $00
	nop                                              ; $7363: $00
	nop                                              ; $7364: $00

jr_02b_7365:
	nop                                              ; $7365: $00
	call z, $0ff0                                    ; $7366: $cc $f0 $0f
	call z, $0fc0                                    ; $7369: $cc $c0 $0f
	call z, $0fc0                                    ; $736c: $cc $c0 $0f
	call z, $0fc0                                    ; $736f: $cc $c0 $0f
	nop                                              ; $7372: $00
	ld [$140e], sp                                   ; $7373: $08 $0e $14
	ld a, [de]                                       ; $7376: $1a
	ld e, $22                                        ; $7377: $1e $22
	ld h, $cc                                        ; $7379: $26 $cc
	ldh a, [rIF]                                     ; $737b: $f0 $0f
	call z, $0fc0                                    ; $737d: $cc $c0 $0f
	call z, $0fc0                                    ; $7380: $cc $c0 $0f
	call z, $0fc0                                    ; $7383: $cc $c0 $0f
	nop                                              ; $7386: $00
	ld [$140e], sp                                   ; $7387: $08 $0e $14
	ld a, [de]                                       ; $738a: $1a
	ld e, $22                                        ; $738b: $1e $22
	ld h, $11                                        ; $738d: $26 $11
	call z, $1111                                    ; $738f: $cc $11 $11
	ld de, $1144                                     ; $7392: $11 $44 $11
	ld de, $1111                                     ; $7395: $11 $11 $11
	call z, $cc11                                    ; $7398: $cc $11 $cc
	ldh a, [rIF]                                     ; $739b: $f0 $0f
	call z, $0fc0                                    ; $739d: $cc $c0 $0f
	call z, $0fc0                                    ; $73a0: $cc $c0 $0f
	call z, $0fc0                                    ; $73a3: $cc $c0 $0f
	nop                                              ; $73a6: $00
	ld [$140e], sp                                   ; $73a7: $08 $0e $14
	ld a, [de]                                       ; $73aa: $1a
	ld e, $22                                        ; $73ab: $1e $22
	ld h, $cc                                        ; $73ad: $26 $cc
	ldh a, [rIF]                                     ; $73af: $f0 $0f
	call z, $0fc0                                    ; $73b1: $cc $c0 $0f
	call z, $0fc0                                    ; $73b4: $cc $c0 $0f
	call z, $0fc0                                    ; $73b7: $cc $c0 $0f
	nop                                              ; $73ba: $00
	ld [$140e], sp                                   ; $73bb: $08 $0e $14
	ld a, [de]                                       ; $73be: $1a
	ld e, $22                                        ; $73bf: $1e $22
	ld h, $11                                        ; $73c1: $26 $11
	call z, $1111                                    ; $73c3: $cc $11 $11
	ld de, $1144                                     ; $73c6: $11 $44 $11
	ld de, $1111                                     ; $73c9: $11 $11 $11
	call z, $ff11                                    ; $73cc: $cc $11 $ff
	call z, $00ff                                    ; $73cf: $cc $ff $00
	nop                                              ; $73d2: $00
	rrca                                             ; $73d3: $0f
	nop                                              ; $73d4: $00
	nop                                              ; $73d5: $00
	rrca                                             ; $73d6: $0f
	nop                                              ; $73d7: $00
	nop                                              ; $73d8: $00
	rrca                                             ; $73d9: $0f
	nop                                              ; $73da: $00
	db $10                                           ; $73db: $10
	db $10                                           ; $73dc: $10
	db $10                                           ; $73dd: $10
	db $10                                           ; $73de: $10
	inc d                                            ; $73df: $14
	jr jr_02b_73fe                                   ; $73e0: $18 $1c

	rst FarCall                                          ; $73e2: $f7
	ld [hl], a                                       ; $73e3: $77
	ld [hl], a                                       ; $73e4: $77
	halt                                             ; $73e5: $76
	ld [hl], a                                       ; $73e6: $77
	ld [hl], a                                       ; $73e7: $77
	ld [hl], a                                       ; $73e8: $77
	ld [hl], a                                       ; $73e9: $77
	ld [hl], a                                       ; $73ea: $77
	halt                                             ; $73eb: $76
	ld [hl], a                                       ; $73ec: $77
	ld [hl], a                                       ; $73ed: $77
	rst $38                                          ; $73ee: $ff
	call z, $00ff                                    ; $73ef: $cc $ff $00
	nop                                              ; $73f2: $00
	rrca                                             ; $73f3: $0f
	nop                                              ; $73f4: $00
	nop                                              ; $73f5: $00
	rrca                                             ; $73f6: $0f
	nop                                              ; $73f7: $00
	nop                                              ; $73f8: $00
	rrca                                             ; $73f9: $0f
	nop                                              ; $73fa: $00
	db $10                                           ; $73fb: $10
	db $10                                           ; $73fc: $10
	db $10                                           ; $73fd: $10

jr_02b_73fe:
	db $10                                           ; $73fe: $10
	inc d                                            ; $73ff: $14
	jr jr_02b_741e                                   ; $7400: $18 $1c

	rst $38                                          ; $7402: $ff
	rst $38                                          ; $7403: $ff
	or $6f                                           ; $7404: $f6 $6f
	halt                                             ; $7406: $76
	ld l, [hl]                                       ; $7407: $6e
	or $6e                                           ; $7408: $f6 $6e
	rst $38                                          ; $740a: $ff
	db $fd                                           ; $740b: $fd
	ld l, [hl]                                       ; $740c: $6e
	ld l, [hl]                                       ; $740d: $6e
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

jr_02b_741e:
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
