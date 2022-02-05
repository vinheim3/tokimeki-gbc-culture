; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

	or h                                             ; $4000: $b4
	ld h, h                                          ; $4001: $64
	pop bc                                           ; $4002: $c1
	ld [bc], a                                       ; $4003: $02
	nop                                              ; $4004: $00

jr_02e_4005:
	jr jr_02e_4005                                   ; $4005: $18 $fe

	call z, Call_02e_4c97                            ; $4007: $cc $97 $4c
	jr z, jr_02e_4012                                ; $400a: $28 $06

	jp nz, $0097                                     ; $400c: $c2 $97 $00

	jr z, jr_02e_4017                                ; $400f: $28 $06

	sub a                                            ; $4011: $97

jr_02e_4012:
	ld c, h                                          ; $4012: $4c
	dec l                                            ; $4013: $2d
	ld b, $c2                                        ; $4014: $06 $c2
	sub a                                            ; $4016: $97

jr_02e_4017:
	nop                                              ; $4017: $00
	dec l                                            ; $4018: $2d
	ld b, $97                                        ; $4019: $06 $97
	ld c, h                                          ; $401b: $4c
	ld sp, $c206                                     ; $401c: $31 $06 $c2
	sub a                                            ; $401f: $97
	nop                                              ; $4020: $00
	ld sp, $9706                                     ; $4021: $31 $06 $97
	ld c, h                                          ; $4024: $4c
	dec l                                            ; $4025: $2d
	ld b, $c2                                        ; $4026: $06 $c2
	sub a                                            ; $4028: $97
	nop                                              ; $4029: $00
	dec l                                            ; $402a: $2d
	ld b, $97                                        ; $402b: $06 $97
	ld c, h                                          ; $402d: $4c
	ld [hl-], a                                      ; $402e: $32
	ld b, $c2                                        ; $402f: $06 $c2
	sub a                                            ; $4031: $97
	nop                                              ; $4032: $00
	ld [hl-], a                                      ; $4033: $32
	ld b, $97                                        ; $4034: $06 $97
	ld c, h                                          ; $4036: $4c
	ld sp, $c206                                     ; $4037: $31 $06 $c2
	sub a                                            ; $403a: $97
	nop                                              ; $403b: $00
	ld sp, $9706                                     ; $403c: $31 $06 $97
	ld c, h                                          ; $403f: $4c
	cpl                                              ; $4040: $2f
	ld b, $c2                                        ; $4041: $06 $c2
	sub a                                            ; $4043: $97
	nop                                              ; $4044: $00
	cpl                                              ; $4045: $2f
	ld b, $97                                        ; $4046: $06 $97
	ld c, h                                          ; $4048: $4c
	dec l                                            ; $4049: $2d
	ld b, $c2                                        ; $404a: $06 $c2
	sub a                                            ; $404c: $97
	nop                                              ; $404d: $00
	dec l                                            ; $404e: $2d
	ld b, $97                                        ; $404f: $06 $97
	ld c, h                                          ; $4051: $4c
	jr z, jr_02e_405a                                ; $4052: $28 $06

	jp nz, $0097                                     ; $4054: $c2 $97 $00

	jr z, jr_02e_405f                                ; $4057: $28 $06

	sub a                                            ; $4059: $97

jr_02e_405a:
	ld c, h                                          ; $405a: $4c
	dec l                                            ; $405b: $2d
	ld b, $c2                                        ; $405c: $06 $c2
	sub a                                            ; $405e: $97

jr_02e_405f:
	nop                                              ; $405f: $00
	dec l                                            ; $4060: $2d
	ld b, $97                                        ; $4061: $06 $97
	ld c, h                                          ; $4063: $4c
	ld sp, $c206                                     ; $4064: $31 $06 $c2
	sub a                                            ; $4067: $97
	nop                                              ; $4068: $00
	ld sp, $9706                                     ; $4069: $31 $06 $97
	ld c, h                                          ; $406c: $4c
	dec l                                            ; $406d: $2d
	ld b, $c2                                        ; $406e: $06 $c2
	sub a                                            ; $4070: $97
	nop                                              ; $4071: $00
	dec l                                            ; $4072: $2d
	ld b, $97                                        ; $4073: $06 $97
	ld c, h                                          ; $4075: $4c
	jr z, jr_02e_407e                                ; $4076: $28 $06

	jp nz, $0097                                     ; $4078: $c2 $97 $00

	jr z, jr_02e_4083                                ; $407b: $28 $06

	sub a                                            ; $407d: $97

jr_02e_407e:
	ld c, h                                          ; $407e: $4c
	inc [hl]                                         ; $407f: $34
	ld b, $c2                                        ; $4080: $06 $c2
	sub a                                            ; $4082: $97

jr_02e_4083:
	nop                                              ; $4083: $00
	inc [hl]                                         ; $4084: $34
	ld b, $97                                        ; $4085: $06 $97
	ld c, h                                          ; $4087: $4c
	ld [hl-], a                                      ; $4088: $32
	ld b, $c2                                        ; $4089: $06 $c2
	sub a                                            ; $408b: $97
	nop                                              ; $408c: $00
	ld [hl-], a                                      ; $408d: $32
	ld b, $97                                        ; $408e: $06 $97
	ld c, h                                          ; $4090: $4c
	ld sp, $c206                                     ; $4091: $31 $06 $c2
	sub a                                            ; $4094: $97
	nop                                              ; $4095: $00
	ld sp, $9706                                     ; $4096: $31 $06 $97
	ld c, h                                          ; $4099: $4c
	ld h, $06                                        ; $409a: $26 $06
	jp nz, $0097                                     ; $409c: $c2 $97 $00

	ld h, $06                                        ; $409f: $26 $06
	sub a                                            ; $40a1: $97
	ld c, h                                          ; $40a2: $4c
	ld a, [hl+]                                      ; $40a3: $2a
	ld b, $c2                                        ; $40a4: $06 $c2
	sub a                                            ; $40a6: $97
	nop                                              ; $40a7: $00
	ld a, [hl+]                                      ; $40a8: $2a
	ld b, $97                                        ; $40a9: $06 $97
	ld c, h                                          ; $40ab: $4c
	dec l                                            ; $40ac: $2d
	ld b, $c2                                        ; $40ad: $06 $c2
	sub a                                            ; $40af: $97
	nop                                              ; $40b0: $00
	dec l                                            ; $40b1: $2d
	ld b, $97                                        ; $40b2: $06 $97
	ld c, h                                          ; $40b4: $4c
	ld a, [hl+]                                      ; $40b5: $2a
	ld b, $c2                                        ; $40b6: $06 $c2
	sub a                                            ; $40b8: $97
	nop                                              ; $40b9: $00
	ld a, [hl+]                                      ; $40ba: $2a
	ld b, $97                                        ; $40bb: $06 $97
	ld c, h                                          ; $40bd: $4c
	ld sp, $c206                                     ; $40be: $31 $06 $c2
	sub a                                            ; $40c1: $97
	nop                                              ; $40c2: $00
	ld sp, $9706                                     ; $40c3: $31 $06 $97
	ld c, h                                          ; $40c6: $4c
	cpl                                              ; $40c7: $2f
	ld b, $c2                                        ; $40c8: $06 $c2
	sub a                                            ; $40ca: $97
	nop                                              ; $40cb: $00
	cpl                                              ; $40cc: $2f
	ld b, $97                                        ; $40cd: $06 $97
	ld c, h                                          ; $40cf: $4c
	dec l                                            ; $40d0: $2d
	ld b, $c2                                        ; $40d1: $06 $c2
	sub a                                            ; $40d3: $97
	nop                                              ; $40d4: $00
	dec l                                            ; $40d5: $2d
	ld b, $97                                        ; $40d6: $06 $97
	ld c, h                                          ; $40d8: $4c
	ld a, [hl+]                                      ; $40d9: $2a
	ld b, $c2                                        ; $40da: $06 $c2
	sub a                                            ; $40dc: $97
	nop                                              ; $40dd: $00
	ld a, [hl+]                                      ; $40de: $2a
	ld b, $97                                        ; $40df: $06 $97
	ld c, h                                          ; $40e1: $4c
	jr z, jr_02e_40ea                                ; $40e2: $28 $06

	jp nz, $0097                                     ; $40e4: $c2 $97 $00

	jr z, jr_02e_40ef                                ; $40e7: $28 $06

	sub a                                            ; $40e9: $97

jr_02e_40ea:
	ld c, h                                          ; $40ea: $4c
	inc l                                            ; $40eb: $2c
	ld b, $c2                                        ; $40ec: $06 $c2
	sub a                                            ; $40ee: $97

jr_02e_40ef:
	nop                                              ; $40ef: $00
	inc l                                            ; $40f0: $2c
	ld b, $97                                        ; $40f1: $06 $97
	ld c, h                                          ; $40f3: $4c
	cpl                                              ; $40f4: $2f
	ld b, $c2                                        ; $40f5: $06 $c2
	sub a                                            ; $40f7: $97
	nop                                              ; $40f8: $00
	cpl                                              ; $40f9: $2f
	ld b, $97                                        ; $40fa: $06 $97
	ld c, h                                          ; $40fc: $4c
	inc l                                            ; $40fd: $2c
	ld b, $c2                                        ; $40fe: $06 $c2
	sub a                                            ; $4100: $97
	nop                                              ; $4101: $00
	inc l                                            ; $4102: $2c
	ld b, $97                                        ; $4103: $06 $97
	ld c, h                                          ; $4105: $4c
	jr z, jr_02e_410e                                ; $4106: $28 $06

	jp nz, $0097                                     ; $4108: $c2 $97 $00

	jr z, jr_02e_4113                                ; $410b: $28 $06

	sub a                                            ; $410d: $97

jr_02e_410e:
	ld c, h                                          ; $410e: $4c
	ld [hl-], a                                      ; $410f: $32
	ld b, $c2                                        ; $4110: $06 $c2
	sub a                                            ; $4112: $97

jr_02e_4113:
	nop                                              ; $4113: $00
	ld [hl-], a                                      ; $4114: $32
	ld b, $97                                        ; $4115: $06 $97
	ld c, h                                          ; $4117: $4c
	ld sp, $c206                                     ; $4118: $31 $06 $c2
	sub a                                            ; $411b: $97
	nop                                              ; $411c: $00
	ld sp, $9706                                     ; $411d: $31 $06 $97
	ld c, h                                          ; $4120: $4c
	cpl                                              ; $4121: $2f
	ld b, $c2                                        ; $4122: $06 $c2
	sub a                                            ; $4124: $97
	nop                                              ; $4125: $00
	cpl                                              ; $4126: $2f
	ld b, $cc                                        ; $4127: $06 $cc
	sub d                                            ; $4129: $92
	sub a                                            ; $412a: $97
	ld c, h                                          ; $412b: $4c
	dec h                                            ; $412c: $25
	ld b, $c2                                        ; $412d: $06 $c2
	sub a                                            ; $412f: $97
	nop                                              ; $4130: $00
	dec h                                            ; $4131: $25
	ld b, $97                                        ; $4132: $06 $97
	ld c, h                                          ; $4134: $4c
	jr z, jr_02e_413d                                ; $4135: $28 $06

	jp nz, $0097                                     ; $4137: $c2 $97 $00

	jr z, jr_02e_4142                                ; $413a: $28 $06

	sub a                                            ; $413c: $97

jr_02e_413d:
	ld c, h                                          ; $413d: $4c
	inc l                                            ; $413e: $2c
	ld b, $c2                                        ; $413f: $06 $c2
	sub a                                            ; $4141: $97

jr_02e_4142:
	nop                                              ; $4142: $00
	inc l                                            ; $4143: $2c
	ld b, $97                                        ; $4144: $06 $97
	ld c, h                                          ; $4146: $4c
	jr z, jr_02e_414f                                ; $4147: $28 $06

	jp nz, $0097                                     ; $4149: $c2 $97 $00

	jr z, jr_02e_4154                                ; $414c: $28 $06

	sub a                                            ; $414e: $97

jr_02e_414f:
	ld c, h                                          ; $414f: $4c
	cpl                                              ; $4150: $2f
	ld b, $c2                                        ; $4151: $06 $c2
	sub a                                            ; $4153: $97

jr_02e_4154:
	nop                                              ; $4154: $00
	cpl                                              ; $4155: $2f
	ld b, $97                                        ; $4156: $06 $97
	ld c, h                                          ; $4158: $4c
	jr z, jr_02e_4161                                ; $4159: $28 $06

	jp nz, $0097                                     ; $415b: $c2 $97 $00

	jr z, jr_02e_4166                                ; $415e: $28 $06

	sub a                                            ; $4160: $97

jr_02e_4161:
	ld c, h                                          ; $4161: $4c
	ld a, [hl+]                                      ; $4162: $2a
	ld b, $c2                                        ; $4163: $06 $c2
	sub a                                            ; $4165: $97

jr_02e_4166:
	nop                                              ; $4166: $00
	ld a, [hl+]                                      ; $4167: $2a
	ld b, $97                                        ; $4168: $06 $97
	ld c, h                                          ; $416a: $4c
	inc l                                            ; $416b: $2c
	ld b, $c2                                        ; $416c: $06 $c2
	sub a                                            ; $416e: $97
	nop                                              ; $416f: $00
	inc l                                            ; $4170: $2c
	ld b, $97                                        ; $4171: $06 $97
	ld c, h                                          ; $4173: $4c
	ld a, [hl+]                                      ; $4174: $2a
	ld b, $c2                                        ; $4175: $06 $c2
	sub a                                            ; $4177: $97
	nop                                              ; $4178: $00
	ld a, [hl+]                                      ; $4179: $2a
	ld b, $97                                        ; $417a: $06 $97
	ld c, h                                          ; $417c: $4c
	dec l                                            ; $417d: $2d
	ld b, $c2                                        ; $417e: $06 $c2
	sub a                                            ; $4180: $97
	nop                                              ; $4181: $00
	dec l                                            ; $4182: $2d
	ld b, $97                                        ; $4183: $06 $97
	ld c, h                                          ; $4185: $4c
	ld sp, $c206                                     ; $4186: $31 $06 $c2
	sub a                                            ; $4189: $97
	nop                                              ; $418a: $00
	ld sp, $9706                                     ; $418b: $31 $06 $97
	ld c, h                                          ; $418e: $4c
	dec l                                            ; $418f: $2d
	ld b, $c2                                        ; $4190: $06 $c2
	sub a                                            ; $4192: $97
	nop                                              ; $4193: $00
	dec l                                            ; $4194: $2d
	ld b, $97                                        ; $4195: $06 $97
	ld c, h                                          ; $4197: $4c
	ld a, [hl+]                                      ; $4198: $2a
	ld b, $c2                                        ; $4199: $06 $c2
	sub a                                            ; $419b: $97
	nop                                              ; $419c: $00
	ld a, [hl+]                                      ; $419d: $2a
	ld b, $97                                        ; $419e: $06 $97
	ld c, h                                          ; $41a0: $4c
	jr z, jr_02e_41a9                                ; $41a1: $28 $06

	jp nz, $0097                                     ; $41a3: $c2 $97 $00

	jr z, @+$08                                      ; $41a6: $28 $06

	sub a                                            ; $41a8: $97

jr_02e_41a9:
	ld c, h                                          ; $41a9: $4c
	ld h, $06                                        ; $41aa: $26 $06
	jp nz, $0097                                     ; $41ac: $c2 $97 $00

	ld h, $06                                        ; $41af: $26 $06
	sub a                                            ; $41b1: $97
	ld c, h                                          ; $41b2: $4c
	dec h                                            ; $41b3: $25
	ld b, $c2                                        ; $41b4: $06 $c2
	sub a                                            ; $41b6: $97
	nop                                              ; $41b7: $00
	dec h                                            ; $41b8: $25
	ld b, $97                                        ; $41b9: $06 $97
	ld c, h                                          ; $41bb: $4c
	ld h, $06                                        ; $41bc: $26 $06
	jp nz, $0097                                     ; $41be: $c2 $97 $00

	ld h, $06                                        ; $41c1: $26 $06
	sub a                                            ; $41c3: $97
	ld c, h                                          ; $41c4: $4c
	ld a, [hl+]                                      ; $41c5: $2a
	ld b, $c2                                        ; $41c6: $06 $c2
	sub a                                            ; $41c8: $97
	nop                                              ; $41c9: $00
	ld a, [hl+]                                      ; $41ca: $2a
	ld b, $97                                        ; $41cb: $06 $97
	ld c, h                                          ; $41cd: $4c
	dec l                                            ; $41ce: $2d
	ld b, $c2                                        ; $41cf: $06 $c2
	sub a                                            ; $41d1: $97
	nop                                              ; $41d2: $00
	dec l                                            ; $41d3: $2d
	ld b, $97                                        ; $41d4: $06 $97
	ld c, h                                          ; $41d6: $4c
	ld a, [hl+]                                      ; $41d7: $2a
	ld b, $c2                                        ; $41d8: $06 $c2
	sub a                                            ; $41da: $97
	nop                                              ; $41db: $00
	ld a, [hl+]                                      ; $41dc: $2a
	ld b, $97                                        ; $41dd: $06 $97
	ld c, h                                          ; $41df: $4c
	daa                                              ; $41e0: $27
	ld b, $c2                                        ; $41e1: $06 $c2
	sub a                                            ; $41e3: $97
	nop                                              ; $41e4: $00
	daa                                              ; $41e5: $27
	ld b, $97                                        ; $41e6: $06 $97
	ld c, h                                          ; $41e8: $4c
	ld sp, $c206                                     ; $41e9: $31 $06 $c2
	sub a                                            ; $41ec: $97
	nop                                              ; $41ed: $00
	ld sp, $9706                                     ; $41ee: $31 $06 $97
	ld c, h                                          ; $41f1: $4c
	cpl                                              ; $41f2: $2f
	ld b, $c2                                        ; $41f3: $06 $c2
	sub a                                            ; $41f5: $97
	nop                                              ; $41f6: $00
	cpl                                              ; $41f7: $2f
	ld b, $97                                        ; $41f8: $06 $97
	ld c, h                                          ; $41fa: $4c
	dec l                                            ; $41fb: $2d
	ld b, $c2                                        ; $41fc: $06 $c2
	sub a                                            ; $41fe: $97
	nop                                              ; $41ff: $00

jr_02e_4200:
	dec l                                            ; $4200: $2d
	ld b, $97                                        ; $4201: $06 $97
	ld c, h                                          ; $4203: $4c
	jr z, jr_02e_420c                                ; $4204: $28 $06

	jp nz, $0097                                     ; $4206: $c2 $97 $00

	jr z, jr_02e_4211                                ; $4209: $28 $06

	sub a                                            ; $420b: $97

jr_02e_420c:
	ld c, h                                          ; $420c: $4c
	inc l                                            ; $420d: $2c
	ld b, $c2                                        ; $420e: $06 $c2
	sub a                                            ; $4210: $97

jr_02e_4211:
	nop                                              ; $4211: $00
	inc l                                            ; $4212: $2c
	ld b, $97                                        ; $4213: $06 $97
	ld c, h                                          ; $4215: $4c
	cpl                                              ; $4216: $2f
	ld b, $c2                                        ; $4217: $06 $c2
	sub a                                            ; $4219: $97
	nop                                              ; $421a: $00
	cpl                                              ; $421b: $2f
	ld b, $97                                        ; $421c: $06 $97
	ld c, h                                          ; $421e: $4c
	inc l                                            ; $421f: $2c
	ld b, $c2                                        ; $4220: $06 $c2
	sub a                                            ; $4222: $97
	nop                                              ; $4223: $00
	inc l                                            ; $4224: $2c
	ld b, $97                                        ; $4225: $06 $97
	ld c, h                                          ; $4227: $4c
	ld [hl-], a                                      ; $4228: $32
	ld b, $c2                                        ; $4229: $06 $c2
	sub a                                            ; $422b: $97
	nop                                              ; $422c: $00
	ld [hl-], a                                      ; $422d: $32
	ld b, $b5                                        ; $422e: $06 $b5
	ld d, c                                          ; $4230: $51
	ld bc, $06ff                                     ; $4231: $01 $ff $06
	ld a, l                                          ; $4234: $7d
	ld bc, $0e1c                                     ; $4235: $01 $1c $0e
	ld hl, $230c                                     ; $4238: $21 $0c $23
	ld a, [bc]                                       ; $423b: $0a
	ld a, l                                          ; $423c: $7d
	nop                                              ; $423d: $00
	or l                                             ; $423e: $b5
	pop de                                           ; $423f: $d1
	ld [bc], a                                       ; $4240: $02
	nop                                              ; $4241: $00
	nop                                              ; $4242: $00
	ei                                               ; $4243: $fb
	sub a                                            ; $4244: $97
	ld e, h                                          ; $4245: $5c
	dec l                                            ; $4246: $2d
	ld b, $97                                        ; $4247: $06 $97
	nop                                              ; $4249: $00
	jp $062d                                         ; $424a: $c3 $2d $06


	jp nz, $0c2d                                     ; $424d: $c2 $2d $0c

	ei                                               ; $4250: $fb
	inc b                                            ; $4251: $04
	sub a                                            ; $4252: $97
	inc a                                            ; $4253: $3c
	dec l                                            ; $4254: $2d
	inc c                                            ; $4255: $0c
	sub a                                            ; $4256: $97
	ld c, h                                          ; $4257: $4c
	jr z, @+$0d                                      ; $4258: $28 $0b

	nop                                              ; $425a: $00
	ld bc, $0b26                                     ; $425b: $01 $26 $0b
	nop                                              ; $425e: $00
	ld bc, $0b28                                     ; $425f: $01 $28 $0b
	nop                                              ; $4262: $00
	ld bc, $3f97                                     ; $4263: $01 $97 $3f
	dec h                                            ; $4266: $25
	jr jr_02e_4200                                   ; $4267: $18 $97

	ccf                                              ; $4269: $3f
	ld hl, $0017                                     ; $426a: $21 $17 $00
	ld bc, $97fb                                     ; $426d: $01 $fb $97
	ld e, h                                          ; $4270: $5c
	dec l                                            ; $4271: $2d
	ld b, $97                                        ; $4272: $06 $97
	nop                                              ; $4274: $00
	jp $062d                                         ; $4275: $c3 $2d $06


	jp nz, $0c2d                                     ; $4278: $c2 $2d $0c

	ei                                               ; $427b: $fb
	inc bc                                           ; $427c: $03
	sub a                                            ; $427d: $97
	inc a                                            ; $427e: $3c
	dec l                                            ; $427f: $2d
	ld b, $97                                        ; $4280: $06 $97
	nop                                              ; $4282: $00
	jp nz, $062d                                     ; $4283: $c2 $2d $06

	pop bc                                           ; $4286: $c1
	dec l                                            ; $4287: $2d
	inc c                                            ; $4288: $0c
	sub a                                            ; $4289: $97
	inc a                                            ; $428a: $3c
	dec l                                            ; $428b: $2d
	dec bc                                           ; $428c: $0b
	nop                                              ; $428d: $00
	ld bc, $4d97                                     ; $428e: $01 $97 $4d
	inc l                                            ; $4291: $2c
	dec bc                                           ; $4292: $0b
	nop                                              ; $4293: $00
	ld bc, $0b28                                     ; $4294: $01 $28 $0b
	nop                                              ; $4297: $00
	ld bc, $0b26                                     ; $4298: $01 $26 $0b
	nop                                              ; $429b: $00
	ld bc, $3f97                                     ; $429c: $01 $97 $3f
	jr z, @+$1a                                      ; $429f: $28 $18

	sub a                                            ; $42a1: $97
	ccf                                              ; $42a2: $3f
	inc hl                                           ; $42a3: $23
	rla                                              ; $42a4: $17
	nop                                              ; $42a5: $00
	ld bc, $92cd                                     ; $42a6: $01 $cd $92
	sub a                                            ; $42a9: $97
	ld c, a                                          ; $42aa: $4f
	dec h                                            ; $42ab: $25
	ld d, $97                                        ; $42ac: $16 $97
	nop                                              ; $42ae: $00
	jp $0225                                         ; $42af: $c3 $25 $02


	sub a                                            ; $42b2: $97
	ccf                                              ; $42b3: $3f
	inc l                                            ; $42b4: $2c
	dec bc                                           ; $42b5: $0b
	nop                                              ; $42b6: $00
	ld bc, $0b2d                                     ; $42b7: $01 $2d $0b
	nop                                              ; $42ba: $00
	ld bc, $3f97                                     ; $42bb: $01 $97 $3f
	inc l                                            ; $42be: $2c
	ld d, $97                                        ; $42bf: $16 $97
	nop                                              ; $42c1: $00
	jp nz, $022c                                     ; $42c2: $c2 $2c $02

	sub a                                            ; $42c5: $97
	ld a, $28                                        ; $42c6: $3e $28
	ld d, $97                                        ; $42c8: $16 $97
	nop                                              ; $42ca: $00
	jp nz, $0228                                     ; $42cb: $c2 $28 $02

	sub a                                            ; $42ce: $97
	ccf                                              ; $42cf: $3f
	ld a, [hl+]                                      ; $42d0: $2a
	ld d, $97                                        ; $42d1: $16 $97
	nop                                              ; $42d3: $00
	jp $022a                                         ; $42d4: $c3 $2a $02


	sub a                                            ; $42d7: $97
	ld c, a                                          ; $42d8: $4f
	dec h                                            ; $42d9: $25
	ld [$082a], sp                                   ; $42da: $08 $2a $08
	dec h                                            ; $42dd: $25
	ld [$017d], sp                                   ; $42de: $08 $7d $01
	sub a                                            ; $42e1: $97
	cpl                                              ; $42e2: $2f
	ld hl, $9716                                     ; $42e3: $21 $16 $97
	nop                                              ; $42e6: $00
	jp $0221                                         ; $42e7: $c3 $21 $02


	ld a, l                                          ; $42ea: $7d
	nop                                              ; $42eb: $00
	sub a                                            ; $42ec: $97
	ccf                                              ; $42ed: $3f
	ld e, $15                                        ; $42ee: $1e $15
	sub a                                            ; $42f0: $97
	nop                                              ; $42f1: $00
	jp $021e                                         ; $42f2: $c3 $1e $02


	nop                                              ; $42f5: $00
	ld bc, $017d                                     ; $42f6: $01 $7d $01
	sub a                                            ; $42f9: $97
	ccf                                              ; $42fa: $3f
	ld h, $16                                        ; $42fb: $26 $16
	sub a                                            ; $42fd: $97
	nop                                              ; $42fe: $00
	jp $0226                                         ; $42ff: $c3 $26 $02


	sub a                                            ; $4302: $97
	ccf                                              ; $4303: $3f
	dec h                                            ; $4304: $25
	ld d, $97                                        ; $4305: $16 $97
	nop                                              ; $4307: $00
	jp $0225                                         ; $4308: $c3 $25 $02


	sub a                                            ; $430b: $97
	ccf                                              ; $430c: $3f
	inc hl                                           ; $430d: $23
	dec bc                                           ; $430e: $0b
	nop                                              ; $430f: $00
	ld bc, $0b27                                     ; $4310: $01 $27 $0b
	nop                                              ; $4313: $00
	ld bc, $3e97                                     ; $4314: $01 $97 $3e
	ld a, [hl+]                                      ; $4317: $2a
	dec bc                                           ; $4318: $0b
	nop                                              ; $4319: $00
	ld bc, $0b2d                                     ; $431a: $01 $2d $0b
	nop                                              ; $431d: $00
	ld bc, $007d                                     ; $431e: $01 $7d $00
	sub a                                            ; $4321: $97
	ccf                                              ; $4322: $3f
	inc l                                            ; $4323: $2c
	ld d, $97                                        ; $4324: $16 $97
	nop                                              ; $4326: $00
	jp nz, $012c                                     ; $4327: $c2 $2c $01

	nop                                              ; $432a: $00
	ld bc, $4f97                                     ; $432b: $01 $97 $4f
	inc l                                            ; $432e: $2c
	rlca                                             ; $432f: $07
	nop                                              ; $4330: $00
	ld bc, $072d                                     ; $4331: $01 $2d $07
	nop                                              ; $4334: $00
	ld bc, $072f                                     ; $4335: $01 $2f $07
	nop                                              ; $4338: $00
	ld bc, $2f97                                     ; $4339: $01 $97 $2f
	ld [hl-], a                                      ; $433c: $32
	ld d, $97                                        ; $433d: $16 $97
	nop                                              ; $433f: $00
	push bc                                          ; $4340: $c5
	ld [hl-], a                                      ; $4341: $32
	inc c                                            ; $4342: $0c
	sub [hl]                                         ; $4343: $96
	ld c, $05                                        ; $4344: $0e $05
	ld [hl-], a                                      ; $4346: $32
	ld c, $96                                        ; $4347: $0e $96
	nop                                              ; $4349: $00
	nop                                              ; $434a: $00
	jp $9792                                         ; $434b: $c3 $92 $97


	ld e, e                                          ; $434e: $5b
	jr c, @+$0e                                      ; $434f: $38 $0c

	sub a                                            ; $4351: $97
	ld c, e                                          ; $4352: $4b
	cp [hl]                                          ; $4353: $be
	inc b                                            ; $4354: $04
	add hl, sp                                       ; $4355: $39
	jr c, jr_02e_4391                                ; $4356: $38 $39

	jr c, jr_02e_4393                                ; $4358: $38 $39

	jr c, @+$3b                                      ; $435a: $38 $39

	jr c, jr_02e_4397                                ; $435c: $38 $39

	cp [hl]                                          ; $435e: $be
	sub a                                            ; $435f: $97
	ld c, [hl]                                       ; $4360: $4e
	jr c, @+$0e                                      ; $4361: $38 $0c

	call nz, $0097                                   ; $4363: $c4 $97 $00
	ld a, [hl]                                       ; $4366: $7e
	ld bc, $a900                                     ; $4367: $01 $00 $a9
	jr c, jr_02e_437e                                ; $436a: $38 $12

	sub a                                            ; $436c: $97
	nop                                              ; $436d: $00
	jp $0638                                         ; $436e: $c3 $38 $06


	jp nz, $02bd                                     ; $4371: $c2 $bd $02

	jr c, jr_02e_4382                                ; $4374: $38 $0c

	inc c                                            ; $4376: $0c
	ld a, [hl]                                       ; $4377: $7e
	nop                                              ; $4378: $00
	sub a                                            ; $4379: $97
	ld a, e                                          ; $437a: $7b
	jr nz, @+$08                                     ; $437b: $20 $06

	sub a                                            ; $437d: $97

jr_02e_437e:
	nop                                              ; $437e: $00
	jp $0620                                         ; $437f: $c3 $20 $06


jr_02e_4382:
	jp nz, $0c20                                     ; $4382: $c2 $20 $0c

	sub a                                            ; $4385: $97
	ld a, e                                          ; $4386: $7b
	inc hl                                           ; $4387: $23
	ld b, $97                                        ; $4388: $06 $97
	nop                                              ; $438a: $00
	jp $0623                                         ; $438b: $c3 $23 $06


	sub a                                            ; $438e: $97
	ld a, e                                          ; $438f: $7b
	dec e                                            ; $4390: $1d

jr_02e_4391:
	ld b, $97                                        ; $4391: $06 $97

jr_02e_4393:
	nop                                              ; $4393: $00
	jp $061d                                         ; $4394: $c3 $1d $06


jr_02e_4397:
	jp nz, $0c1d                                     ; $4397: $c2 $1d $0c

	sub a                                            ; $439a: $97
	ld e, [hl]                                       ; $439b: $5e
	ld h, $16                                        ; $439c: $26 $16
	sub a                                            ; $439e: $97
	nop                                              ; $439f: $00
	jp $0226                                         ; $43a0: $c3 $26 $02


	sub d                                            ; $43a3: $92
	add $be                                          ; $43a4: $c6 $be
	jr jr_02e_43ca                                   ; $43a6: $18 $22

	add hl, de                                       ; $43a8: $19
	ld e, $22                                        ; $43a9: $1e $22
	cp [hl]                                          ; $43ab: $be
	or c                                             ; $43ac: $b1
	add c                                            ; $43ad: $81
	ld [$2305], sp                                   ; $43ae: $08 $05 $23
	ld [$0825], sp                                   ; $43b1: $08 $25 $08
	inc hl                                           ; $43b4: $23
	ld [$0c96], sp                                   ; $43b5: $08 $96 $0c
	inc b                                            ; $43b8: $04
	ld [hl+], a                                      ; $43b9: $22
	inc c                                            ; $43ba: $0c

jr_02e_43bb:
	ld [hl+], a                                      ; $43bb: $22
	inc c                                            ; $43bc: $0c
	sub [hl]                                         ; $43bd: $96
	inc h                                            ; $43be: $24
	rlca                                             ; $43bf: $07
	inc hl                                           ; $43c0: $23
	inc h                                            ; $43c1: $24
	or c                                             ; $43c2: $b1
	ld hl, $0000                                     ; $43c3: $21 $00 $00
	cp l                                             ; $43c6: $bd
	ld [bc], a                                       ; $43c7: $02
	inc hl                                           ; $43c8: $23
	inc c                                            ; $43c9: $0c

jr_02e_43ca:
	inc c                                            ; $43ca: $0c
	call $9792                                       ; $43cb: $cd $92 $97
	ld c, h                                          ; $43ce: $4c
	inc l                                            ; $43cf: $2c
	dec bc                                           ; $43d0: $0b
	nop                                              ; $43d1: $00
	ld bc, $0b2a                                     ; $43d2: $01 $2a $0b
	nop                                              ; $43d5: $00
	ld bc, $0b2c                                     ; $43d6: $01 $2c $0b
	nop                                              ; $43d9: $00
	ld bc, $3d97                                     ; $43da: $01 $97 $3d
	jr z, jr_02e_43f5                                ; $43dd: $28 $16

	jp nz, $0097                                     ; $43df: $c2 $97 $00

	jr z, jr_02e_43e6                                ; $43e2: $28 $02

	sub a                                            ; $43e4: $97
	dec a                                            ; $43e5: $3d

jr_02e_43e6:
	ld a, [hl+]                                      ; $43e6: $2a
	dec bc                                           ; $43e7: $0b
	nop                                              ; $43e8: $00
	ld bc, $4d97                                     ; $43e9: $01 $97 $4d
	inc l                                            ; $43ec: $2c
	dec bc                                           ; $43ed: $0b
	nop                                              ; $43ee: $00
	ld bc, $3e97                                     ; $43ef: $01 $97 $3e
	dec l                                            ; $43f2: $2d
	jr jr_02e_43bb                                   ; $43f3: $18 $c6

jr_02e_43f5:
	sub a                                            ; $43f5: $97
	nop                                              ; $43f6: $00
	dec l                                            ; $43f7: $2d
	inc c                                            ; $43f8: $0c
	jp $0c2d                                         ; $43f9: $c3 $2d $0c


	sub a                                            ; $43fc: $97
	ld c, h                                          ; $43fd: $4c
	dec l                                            ; $43fe: $2d
	ld a, [bc]                                       ; $43ff: $0a
	sub a                                            ; $4400: $97
	nop                                              ; $4401: $00
	jp $022d                                         ; $4402: $c3 $2d $02


	sub a                                            ; $4405: $97
	ld c, h                                          ; $4406: $4c
	jr z, jr_02e_4413                                ; $4407: $28 $0a

	sub a                                            ; $4409: $97
	nop                                              ; $440a: $00
	jp $0228                                         ; $440b: $c3 $28 $02


	sub a                                            ; $440e: $97
	ld c, l                                          ; $440f: $4d
	inc h                                            ; $4410: $24
	ld a, [bc]                                       ; $4411: $0a
	sub a                                            ; $4412: $97

jr_02e_4413:
	nop                                              ; $4413: $00
	jp $0224                                         ; $4414: $c3 $24 $02


	sub a                                            ; $4417: $97
	ld c, l                                          ; $4418: $4d
	dec h                                            ; $4419: $25
	ld a, [bc]                                       ; $441a: $0a
	sub a                                            ; $441b: $97
	nop                                              ; $441c: $00
	jp nz, $0225                                     ; $441d: $c2 $25 $02

	sub a                                            ; $4420: $97
	dec a                                            ; $4421: $3d
	ld h, $16                                        ; $4422: $26 $16
	jp nz, $0097                                     ; $4424: $c2 $97 $00

	ld h, $02                                        ; $4427: $26 $02
	sub a                                            ; $4429: $97
	ld c, l                                          ; $442a: $4d
	ld a, [hl+]                                      ; $442b: $2a
	ld a, [bc]                                       ; $442c: $0a
	sub a                                            ; $442d: $97
	nop                                              ; $442e: $00
	jp $022a                                         ; $442f: $c3 $2a $02


	sub a                                            ; $4432: $97
	ld c, l                                          ; $4433: $4d
	dec l                                            ; $4434: $2d
	ld a, [bc]                                       ; $4435: $0a
	sub a                                            ; $4436: $97
	nop                                              ; $4437: $00
	jp nz, $022d                                     ; $4438: $c2 $2d $02

	sub a                                            ; $443b: $97
	ld c, e                                          ; $443c: $4b
	cp [hl]                                          ; $443d: $be
	ld b, $2c                                        ; $443e: $06 $2c
	dec l                                            ; $4440: $2d
	inc l                                            ; $4441: $2c
	dec l                                            ; $4442: $2d
	cp [hl]                                          ; $4443: $be
	inc l                                            ; $4444: $2c
	inc b                                            ; $4445: $04
	dec l                                            ; $4446: $2d
	inc b                                            ; $4447: $04
	inc l                                            ; $4448: $2c
	inc b                                            ; $4449: $04
	inc l                                            ; $444a: $2c
	ld b, $2a                                        ; $444b: $06 $2a
	inc bc                                           ; $444d: $03
	inc l                                            ; $444e: $2c
	inc bc                                           ; $444f: $03
	ld a, l                                          ; $4450: $7d
	ld bc, $3e97                                     ; $4451: $01 $97 $3e
	dec l                                            ; $4454: $2d
	ld a, [bc]                                       ; $4455: $0a
	sub a                                            ; $4456: $97
	nop                                              ; $4457: $00
	jp nz, $022d                                     ; $4458: $c2 $2d $02

	rst JumpTable                                          ; $445b: $c7
	ld a, l                                          ; $445c: $7d
	nop                                              ; $445d: $00
	sub [hl]                                         ; $445e: $96
	rst $38                                          ; $445f: $ff
	inc bc                                           ; $4460: $03
	jr z, jr_02e_446d                                ; $4461: $28 $0a

	or c                                             ; $4463: $b1
	ld b, c                                          ; $4464: $41
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	jr z, jr_02e_446b                                ; $4467: $28 $02

	or c                                             ; $4469: $b1
	add c                                            ; $446a: $81

jr_02e_446b:
	rst $38                                          ; $446b: $ff
	inc bc                                           ; $446c: $03

jr_02e_446d:
	ld h, $0a                                        ; $446d: $26 $0a
	or c                                             ; $446f: $b1
	ld b, c                                          ; $4470: $41
	nop                                              ; $4471: $00
	nop                                              ; $4472: $00
	ld h, $02                                        ; $4473: $26 $02
	or c                                             ; $4475: $b1
	add c                                            ; $4476: $81
	rst $38                                          ; $4477: $ff
	inc bc                                           ; $4478: $03
	jr z, jr_02e_4485                                ; $4479: $28 $0a

	or c                                             ; $447b: $b1

jr_02e_447c:
	ld sp, $0000                                     ; $447c: $31 $00 $00
	jr z, jr_02e_4483                                ; $447f: $28 $02

	or c                                             ; $4481: $b1
	ld [hl], c                                       ; $4482: $71

jr_02e_4483:
	rst $38                                          ; $4483: $ff
	ld [bc], a                                       ; $4484: $02

jr_02e_4485:
	dec h                                            ; $4485: $25
	ld [$0096], sp                                   ; $4486: $08 $96 $00
	nop                                              ; $4489: $00
	sub a                                            ; $448a: $97
	dec hl                                           ; $448b: $2b
	dec h                                            ; $448c: $25
	ld [$2b97], sp                                   ; $448d: $08 $97 $2b
	dec h                                            ; $4490: $25
	ld [$2e97], sp                                   ; $4491: $08 $97 $2e
	dec h                                            ; $4494: $25
	ld [$1e97], sp                                   ; $4495: $08 $97 $1e
	dec h                                            ; $4498: $25
	ld [$1f97], sp                                   ; $4499: $08 $97 $1f
	dec h                                            ; $449c: $25
	ld [$0097], sp                                   ; $449d: $08 $97 $00
	cp $ff                                           ; $44a0: $fe $ff
	or [hl]                                          ; $44a2: $b6
	ld h, h                                          ; $44a3: $64
	pop af                                           ; $44a4: $f1
	nop                                              ; $44a5: $00
	rst $38                                          ; $44a6: $ff
	inc bc                                           ; $44a7: $03
	ld hl, $230c                                     ; $44a8: $21 $0c $23
	inc c                                            ; $44ab: $0c
	cp $96                                           ; $44ac: $fe $96
	rst $38                                          ; $44ae: $ff
	dec b                                            ; $44af: $05
	dec h                                            ; $44b0: $25
	jr jr_02e_447c                                   ; $44b1: $18 $c9

	ld a, [hl]                                       ; $44b3: $7e
	ld bc, $a90c                                     ; $44b4: $01 $0c $a9
	sub [hl]                                         ; $44b7: $96
	nop                                              ; $44b8: $00
	nop                                              ; $44b9: $00
	dec h                                            ; $44ba: $25
	inc h                                            ; $44bb: $24
	jp $0c25                                         ; $44bc: $c3 $25 $0c


	adc $7e                                          ; $44bf: $ce $7e
	nop                                              ; $44c1: $00
	sub [hl]                                         ; $44c2: $96
	rst $38                                          ; $44c3: $ff
	ld b, $20                                        ; $44c4: $06 $20
	jr @-$2f                                         ; $44c6: $18 $cf

	ld hl, $b118                                     ; $44c8: $21 $18 $b1
	add c                                            ; $44cb: $81
	nop                                              ; $44cc: $00
	nop                                              ; $44cd: $00
	ld a, [hl]                                       ; $44ce: $7e
	ld bc, $a90c                                     ; $44cf: $01 $0c $a9
	ld hl, $b124                                     ; $44d2: $21 $24 $b1
	ld hl, $0000                                     ; $44d5: $21 $00 $00
	ld hl, $b10c                                     ; $44d8: $21 $0c $b1
	pop af                                           ; $44db: $f1
	rst $38                                          ; $44dc: $ff
	dec b                                            ; $44dd: $05
	ld a, [hl]                                       ; $44de: $7e
	nop                                              ; $44df: $00
	inc hl                                           ; $44e0: $23
	inc c                                            ; $44e1: $0c
	dec h                                            ; $44e2: $25
	inc c                                            ; $44e3: $0c
	ld a, l                                          ; $44e4: $7d
	ld bc, $1826                                     ; $44e5: $01 $26 $18
	or c                                             ; $44e8: $b1
	sub c                                            ; $44e9: $91
	nop                                              ; $44ea: $00
	nop                                              ; $44eb: $00
	ld a, [hl]                                       ; $44ec: $7e
	ld bc, $a90c                                     ; $44ed: $01 $0c $a9
	ld h, $24                                        ; $44f0: $26 $24
	jp $0c26                                         ; $44f2: $c3 $26 $0c


	or c                                             ; $44f5: $b1

jr_02e_44f6:
	pop hl                                           ; $44f6: $e1
	rst $38                                          ; $44f7: $ff
	dec b                                            ; $44f8: $05
	ld a, l                                          ; $44f9: $7d
	nop                                              ; $44fa: $00
	ld a, [hl]                                       ; $44fb: $7e
	nop                                              ; $44fc: $00
	ld hl, $9618                                     ; $44fd: $21 $18 $96
	rst $38                                          ; $4500: $ff
	ld b, $23                                        ; $4501: $06 $23
	jr @-$4d                                         ; $4503: $18 $b1

	and c                                            ; $4505: $a1
	nop                                              ; $4506: $00
	nop                                              ; $4507: $00
	ld a, [hl]                                       ; $4508: $7e
	ld bc, $a90c                                     ; $4509: $01 $0c $a9
	inc hl                                           ; $450c: $23
	inc h                                            ; $450d: $24
	or c                                             ; $450e: $b1
	ld hl, $0000                                     ; $450f: $21 $00 $00
	inc hl                                           ; $4512: $23
	inc c                                            ; $4513: $0c
	ld a, [hl]                                       ; $4514: $7e
	nop                                              ; $4515: $00
	or c                                             ; $4516: $b1
	pop af                                           ; $4517: $f1
	rst $38                                          ; $4518: $ff

jr_02e_4519:
	inc b                                            ; $4519: $04
	dec h                                            ; $451a: $25
	inc c                                            ; $451b: $0c
	ld h, $0c                                        ; $451c: $26 $0c
	or l                                             ; $451e: $b5
	pop hl                                           ; $451f: $e1
	nop                                              ; $4520: $00
	rst $38                                          ; $4521: $ff
	ld b, $28                                        ; $4522: $06 $28
	jr @-$4d                                         ; $4524: $18 $b1

	add c                                            ; $4526: $81
	nop                                              ; $4527: $00
	nop                                              ; $4528: $00
	ld a, [hl]                                       ; $4529: $7e
	ld bc, $a900                                     ; $452a: $01 $00 $a9
	jr z, jr_02e_4547                                ; $452d: $28 $18

	jp $0c28                                         ; $452f: $c3 $28 $0c


	or c                                             ; $4532: $b1
	pop hl                                           ; $4533: $e1
	rst $38                                          ; $4534: $ff
	inc bc                                           ; $4535: $03
	ld a, [hl]                                       ; $4536: $7e
	nop                                              ; $4537: $00
	jr nz, jr_02e_4546                               ; $4538: $20 $0c

	ld hl, $cf0c                                     ; $453a: $21 $0c $cf
	inc hl                                           ; $453d: $23
	inc c                                            ; $453e: $0c
	sub [hl]                                         ; $453f: $96
	rst $38                                          ; $4540: $ff
	ld b, $21                                        ; $4541: $06 $21
	jr jr_02e_44f6                                   ; $4543: $18 $b1

	add c                                            ; $4545: $81

jr_02e_4546:
	nop                                              ; $4546: $00

jr_02e_4547:
	nop                                              ; $4547: $00
	ld a, [hl]                                       ; $4548: $7e
	ld bc, $a900                                     ; $4549: $01 $00 $a9
	ld hl, $c718                                     ; $454c: $21 $18 $c7
	ld hl, $b10c                                     ; $454f: $21 $0c $b1
	ld hl, $0000                                     ; $4552: $21 $00 $00
	ld hl, $b10c                                     ; $4555: $21 $0c $b1
	pop hl                                           ; $4558: $e1
	rst $38                                          ; $4559: $ff
	inc bc                                           ; $455a: $03
	ld a, [hl]                                       ; $455b: $7e
	nop                                              ; $455c: $00
	ld h, $0c                                        ; $455d: $26 $0c
	jr z, @+$0e                                      ; $455f: $28 $0c

	or c                                             ; $4561: $b1
	pop de                                           ; $4562: $d1
	rst $38                                          ; $4563: $ff
	dec b                                            ; $4564: $05
	ld a, [hl+]                                      ; $4565: $2a
	jr jr_02e_4519                                   ; $4566: $18 $b1

	ld [hl], c                                       ; $4568: $71
	nop                                              ; $4569: $00
	nop                                              ; $456a: $00
	ld a, [hl]                                       ; $456b: $7e
	ld bc, $a90c                                     ; $456c: $01 $0c $a9
	ld a, [hl+]                                      ; $456f: $2a
	inc h                                            ; $4570: $24
	jp $0c2a                                         ; $4571: $c3 $2a $0c


	or c                                             ; $4574: $b1
	pop de                                           ; $4575: $d1
	rst $38                                          ; $4576: $ff
	ld b, $7e                                        ; $4577: $06 $7e
	nop                                              ; $4579: $00
	ld hl, $2018                                     ; $457a: $21 $18 $20
	jr jr_02e_45a0                                   ; $457d: $18 $21

	jr jr_02e_45a4                                   ; $457f: $18 $23

	ld b, $c3                                        ; $4581: $06 $c3
	inc hl                                           ; $4583: $23
	ld b, $b5                                        ; $4584: $06 $b5
	pop bc                                           ; $4586: $c1
	ld bc, $04ff                                     ; $4587: $01 $ff $04
	inc e                                            ; $458a: $1c
	inc c                                            ; $458b: $0c

jr_02e_458c:
	ld hl, $230c                                     ; $458c: $21 $0c $23
	inc c                                            ; $458f: $0c
	or l                                             ; $4590: $b5
	or c                                             ; $4591: $b1
	ld bc, $06ff                                     ; $4592: $01 $ff $06
	ld a, [hl]                                       ; $4595: $7e
	ld bc, $a900                                     ; $4596: $01 $00 $a9
	dec h                                            ; $4599: $25
	jr @-$4d                                         ; $459a: $18 $b1

	ld [hl], c                                       ; $459c: $71
	nop                                              ; $459d: $00
	nop                                              ; $459e: $00
	dec h                                            ; $459f: $25

jr_02e_45a0:
	inc h                                            ; $45a0: $24
	jp $0c25                                         ; $45a1: $c3 $25 $0c


jr_02e_45a4:
	or c                                             ; $45a4: $b1
	pop hl                                           ; $45a5: $e1
	rst $38                                          ; $45a6: $ff
	ld b, $20                                        ; $45a7: $06 $20
	jr jr_02e_45cc                                   ; $45a9: $18 $21

	jr @-$4d                                         ; $45ab: $18 $b1

	ld [hl], c                                       ; $45ad: $71
	nop                                              ; $45ae: $00
	nop                                              ; $45af: $00
	ld hl, $b124                                     ; $45b0: $21 $24 $b1
	ld hl, $0000                                     ; $45b3: $21 $00 $00
	ld hl, $b10c                                     ; $45b6: $21 $0c $b1
	pop hl                                           ; $45b9: $e1
	rst $38                                          ; $45ba: $ff
	ld b, $7e                                        ; $45bb: $06 $7e
	nop                                              ; $45bd: $00
	inc hl                                           ; $45be: $23
	inc c                                            ; $45bf: $0c
	dec h                                            ; $45c0: $25
	inc c                                            ; $45c1: $0c
	call z, $017e                                    ; $45c2: $cc $7e $01
	nop                                              ; $45c5: $00
	xor c                                            ; $45c6: $a9
	ld h, $18                                        ; $45c7: $26 $18
	or c                                             ; $45c9: $b1
	ld [hl], c                                       ; $45ca: $71
	nop                                              ; $45cb: $00

jr_02e_45cc:
	nop                                              ; $45cc: $00
	ld h, $24                                        ; $45cd: $26 $24
	jp $0c26                                         ; $45cf: $c3 $26 $0c


	or c                                             ; $45d2: $b1
	pop hl                                           ; $45d3: $e1
	rst $38                                          ; $45d4: $ff
	ld b, $21                                        ; $45d5: $06 $21
	jr jr_02e_45fc                                   ; $45d7: $18 $23

	jr jr_02e_458c                                   ; $45d9: $18 $b1

	ld [hl], c                                       ; $45db: $71
	nop                                              ; $45dc: $00
	nop                                              ; $45dd: $00
	inc hl                                           ; $45de: $23
	inc h                                            ; $45df: $24
	or c                                             ; $45e0: $b1
	ld hl, $0000                                     ; $45e1: $21 $00 $00
	inc hl                                           ; $45e4: $23
	inc c                                            ; $45e5: $0c
	or c                                             ; $45e6: $b1
	pop de                                           ; $45e7: $d1
	rst $38                                          ; $45e8: $ff
	ld b, $7e                                        ; $45e9: $06 $7e
	nop                                              ; $45eb: $00
	dec h                                            ; $45ec: $25
	inc c                                            ; $45ed: $0c
	ld h, $0c                                        ; $45ee: $26 $0c

jr_02e_45f0:
	or l                                             ; $45f0: $b5
	or c                                             ; $45f1: $b1
	ld bc, $06ff                                     ; $45f2: $01 $ff $06
	ld a, [hl]                                       ; $45f5: $7e
	ld bc, $a900                                     ; $45f6: $01 $00 $a9
	jr z, jr_02e_4613                                ; $45f9: $28 $18

	or c                                             ; $45fb: $b1

jr_02e_45fc:
	ld h, c                                          ; $45fc: $61
	nop                                              ; $45fd: $00
	nop                                              ; $45fe: $00
	jr z, @+$1a                                      ; $45ff: $28 $18

	jp nz, $0c28                                     ; $4601: $c2 $28 $0c

	or c                                             ; $4604: $b1
	pop hl                                           ; $4605: $e1
	rst $38                                          ; $4606: $ff
	ld b, $20                                        ; $4607: $06 $20
	inc c                                            ; $4609: $0c
	ld hl, $230c                                     ; $460a: $21 $0c $23
	inc c                                            ; $460d: $0c
	ld hl, $b118                                     ; $460e: $21 $18 $b1
	ld [hl], c                                       ; $4611: $71
	nop                                              ; $4612: $00

jr_02e_4613:
	nop                                              ; $4613: $00
	ld hl, $b124                                     ; $4614: $21 $24 $b1
	ld hl, $0000                                     ; $4617: $21 $00 $00
	ld hl, $b10c                                     ; $461a: $21 $0c $b1
	pop bc                                           ; $461d: $c1
	rst $38                                          ; $461e: $ff
	ld b, $7e                                        ; $461f: $06 $7e
	nop                                              ; $4621: $00
	ld h, $0c                                        ; $4622: $26 $0c
	jr z, jr_02e_4632                                ; $4624: $28 $0c

	or c                                             ; $4626: $b1
	sub c                                            ; $4627: $91
	nop                                              ; $4628: $00
	nop                                              ; $4629: $00
	ld a, [hl]                                       ; $462a: $7e
	ld bc, $a900                                     ; $462b: $01 $00 $a9
	ld a, [hl+]                                      ; $462e: $2a
	inc h                                            ; $462f: $24
	add $2a                                          ; $4630: $c6 $2a

jr_02e_4632:
	jr @-$3a                                         ; $4632: $18 $c4

	ld a, [hl+]                                      ; $4634: $2a
	inc c                                            ; $4635: $0c
	or c                                             ; $4636: $b1
	pop hl                                           ; $4637: $e1
	rst $38                                          ; $4638: $ff
	ld b, $21                                        ; $4639: $06 $21
	jr jr_02e_4660                                   ; $463b: $18 $23

	jr jr_02e_45f0                                   ; $463d: $18 $b1

	ld [hl], c                                       ; $463f: $71

jr_02e_4640:
	nop                                              ; $4640: $00
	nop                                              ; $4641: $00
	inc hl                                           ; $4642: $23
	inc h                                            ; $4643: $24
	or c                                             ; $4644: $b1
	ld sp, $0000                                     ; $4645: $31 $00 $00
	inc hl                                           ; $4648: $23
	inc c                                            ; $4649: $0c
	nop                                              ; $464a: $00
	jr @+$80                                         ; $464b: $18 $7e

	nop                                              ; $464d: $00
	jp $9792                                         ; $464e: $c3 $92 $97


	ld e, e                                          ; $4651: $5b
	dec sp                                           ; $4652: $3b
	inc c                                            ; $4653: $0c
	sub a                                            ; $4654: $97
	ld c, e                                          ; $4655: $4b
	cp [hl]                                          ; $4656: $be
	inc b                                            ; $4657: $04
	dec a                                            ; $4658: $3d
	dec sp                                           ; $4659: $3b
	dec a                                            ; $465a: $3d
	dec sp                                           ; $465b: $3b
	dec a                                            ; $465c: $3d
	dec sp                                           ; $465d: $3b
	dec a                                            ; $465e: $3d
	dec sp                                           ; $465f: $3b

jr_02e_4660:
	dec a                                            ; $4660: $3d
	cp [hl]                                          ; $4661: $be
	sub a                                            ; $4662: $97
	ld c, [hl]                                       ; $4663: $4e
	dec sp                                           ; $4664: $3b
	inc c                                            ; $4665: $0c
	call nz, $0097                                   ; $4666: $c4 $97 $00
	dec sp                                           ; $4669: $3b
	ld [de], a                                       ; $466a: $12
	jp $063b                                         ; $466b: $c3 $3b $06


	jp nz, $0c3b                                     ; $466e: $c2 $3b $0c

	rst JumpTable                                          ; $4671: $c7
	jr z, jr_02e_468a                                ; $4672: $28 $16

	jp nz, $0228                                     ; $4674: $c2 $28 $02

	ld a, [hl]                                       ; $4677: $7e
	db $10                                           ; $4678: $10
	inc c                                            ; $4679: $0c
	xor c                                            ; $467a: $a9
	rst JumpTable                                          ; $467b: $c7
	ld h, $16                                        ; $467c: $26 $16
	jp nz, $0226                                     ; $467e: $c2 $26 $02

	ld a, [hl]                                       ; $4681: $7e
	nop                                              ; $4682: $00
	ret z                                            ; $4683: $c8

	dec h                                            ; $4684: $25
	ld b, $c3                                        ; $4685: $06 $c3
	dec h                                            ; $4687: $25
	dec bc                                           ; $4688: $0b
	or l                                             ; $4689: $b5

jr_02e_468a:
	sub c                                            ; $468a: $91
	ld bc, $04ff                                     ; $468b: $01 $ff $04
	add hl, de                                       ; $468e: $19
	ld [bc], a                                       ; $468f: $02
	ret                                              ; $4690: $c9


	ld a, [de]                                       ; $4691: $1a
	ld [bc], a                                       ; $4692: $02
	ld e, $03                                        ; $4693: $1e $03
	or l                                             ; $4695: $b5
	sub c                                            ; $4696: $91
	ld bc, $05ff                                     ; $4697: $01 $ff $05
	jr nz, jr_02e_46b4                               ; $469a: $20 $18

	or c                                             ; $469c: $b1
	pop de                                           ; $469d: $d1
	rst $38                                          ; $469e: $ff
	dec b                                            ; $469f: $05
	ld e, $18                                        ; $46a0: $1e $18
	ld [hl+], a                                      ; $46a2: $22
	jr @-$34                                         ; $46a3: $18 $ca

	ld a, [hl+]                                      ; $46a5: $2a
	jr @+$27                                         ; $46a6: $18 $25

	jr jr_02e_4640                                   ; $46a8: $18 $96

	ld [$2804], sp                                   ; $46aa: $08 $04 $28
	ld [$082a], sp                                   ; $46ad: $08 $2a $08
	jr z, jr_02e_46ba                                ; $46b0: $28 $08

	sub [hl]                                         ; $46b2: $96
	inc c                                            ; $46b3: $0c

jr_02e_46b4:
	inc bc                                           ; $46b4: $03
	ld h, $0c                                        ; $46b5: $26 $0c
	dec h                                            ; $46b7: $25
	inc c                                            ; $46b8: $0c
	sub [hl]                                         ; $46b9: $96

jr_02e_46ba:
	inc h                                            ; $46ba: $24
	rlca                                             ; $46bb: $07
	ld h, $24                                        ; $46bc: $26 $24
	or c                                             ; $46be: $b1
	ld sp, $0000                                     ; $46bf: $31 $00 $00
	ld h, $0c                                        ; $46c2: $26 $0c
	or l                                             ; $46c4: $b5
	pop bc                                           ; $46c5: $c1
	ld bc, $0000                                     ; $46c6: $01 $00 $00
	inc hl                                           ; $46c9: $23
	jr @+$80                                         ; $46ca: $18 $7e

	ld bc, $a900                                     ; $46cc: $01 $00 $a9
	sub [hl]                                         ; $46cf: $96
	jr jr_02e_46d9                                   ; $46d0: $18 $07

	inc hl                                           ; $46d2: $23
	jr @-$4d                                         ; $46d3: $18 $b1

	ld sp, $0000                                     ; $46d5: $31 $00 $00
	inc hl                                           ; $46d8: $23

jr_02e_46d9:
	inc c                                            ; $46d9: $0c
	or c                                             ; $46da: $b1
	or c                                             ; $46db: $b1
	rst $38                                          ; $46dc: $ff
	inc b                                            ; $46dd: $04
	ld a, [hl]                                       ; $46de: $7e
	nop                                              ; $46df: $00
	inc hl                                           ; $46e0: $23
	inc c                                            ; $46e1: $0c
	jr z, jr_02e_46f0                                ; $46e2: $28 $0c

	inc hl                                           ; $46e4: $23
	inc c                                            ; $46e5: $0c
	sub [hl]                                         ; $46e6: $96
	rst $38                                          ; $46e7: $ff
	ld b, $7e                                        ; $46e8: $06 $7e
	ld bc, $a900                                     ; $46ea: $01 $00 $a9
	ld h, $18                                        ; $46ed: $26 $18
	ld a, [hl]                                       ; $46ef: $7e

jr_02e_46f0:
	nop                                              ; $46f0: $00
	dec h                                            ; $46f1: $25
	inc c                                            ; $46f2: $0c
	inc hl                                           ; $46f3: $23
	inc c                                            ; $46f4: $0c
	sub [hl]                                         ; $46f5: $96
	rst $38                                          ; $46f6: $ff
	ld b, $7e                                        ; $46f7: $06 $7e
	ld bc, $a900                                     ; $46f9: $01 $00 $a9
	dec h                                            ; $46fc: $25
	jr jr_02e_477d                                   ; $46fd: $18 $7e

	nop                                              ; $46ff: $00
	jr nz, jr_02e_470e                               ; $4700: $20 $0c

	ld hl, $7e0c                                     ; $4702: $21 $0c $7e
	ld bc, $a900                                     ; $4705: $01 $00 $a9
	ld e, $18                                        ; $4708: $1e $18
	ld a, [hl]                                       ; $470a: $7e
	nop                                              ; $470b: $00
	ld h, $0c                                        ; $470c: $26 $0c

jr_02e_470e:
	dec h                                            ; $470e: $25
	inc c                                            ; $470f: $0c
	sub [hl]                                         ; $4710: $96
	nop                                              ; $4711: $00
	nop                                              ; $4712: $00
	sub a                                            ; $4713: $97
	adc h                                            ; $4714: $8c
	cp [hl]                                          ; $4715: $be
	ld b, $23                                        ; $4716: $06 $23
	dec h                                            ; $4718: $25
	inc hl                                           ; $4719: $23
	dec h                                            ; $471a: $25
	cp [hl]                                          ; $471b: $be
	inc hl                                           ; $471c: $23
	inc b                                            ; $471d: $04
	dec h                                            ; $471e: $25
	inc b                                            ; $471f: $04
	inc hl                                           ; $4720: $23
	inc bc                                           ; $4721: $03
	nop                                              ; $4722: $00
	ld bc, $ab97                                     ; $4723: $01 $97 $ab
	inc hl                                           ; $4726: $23
	ld b, $97                                        ; $4727: $06 $97
	xor d                                            ; $4729: $aa
	ld hl, $0004                                     ; $472a: $21 $04 $00
	ld [bc], a                                       ; $472d: $02
	sub a                                            ; $472e: $97
	nop                                              ; $472f: $00
	bit 7, l                                         ; $4730: $cb $7d
	ld bc, $ff96                                     ; $4732: $01 $96 $ff
	rlca                                             ; $4735: $07
	ld hl, $b118                                     ; $4736: $21 $18 $b1
	ld [hl], c                                       ; $4739: $71
	nop                                              ; $473a: $00
	nop                                              ; $473b: $00
	ld hl, $b120                                     ; $473c: $21 $20 $b1
	ld sp, $0000                                     ; $473f: $31 $00 $00
	ld hl, $b510                                     ; $4742: $21 $10 $b5
	pop hl                                           ; $4745: $e1
	nop                                              ; $4746: $00
	rst $38                                          ; $4747: $ff
	inc bc                                           ; $4748: $03
	ld hl, $230c                                     ; $4749: $21 $0c $23
	inc c                                            ; $474c: $0c
	cp $ff                                           ; $474d: $fe $ff
	or h                                             ; $474f: $b4
	ld h, h                                          ; $4750: $64
	ld b, c                                          ; $4751: $41
	dec bc                                           ; $4752: $0b
	nop                                              ; $4753: $00

jr_02e_4754:
	jr jr_02e_4754                                   ; $4754: $18 $fe

	call nz, $007e                                   ; $4756: $c4 $7e $00
	dec l                                            ; $4759: $2d
	jr nc, @+$80                                     ; $475a: $30 $7e

	dec b                                            ; $475c: $05
	nop                                              ; $475d: $00
	xor c                                            ; $475e: $a9
	inc l                                            ; $475f: $2c
	jr nc, @+$2c                                     ; $4760: $30 $2a

	jr nc, @+$80                                     ; $4762: $30 $7e

	ld bc, $a900                                     ; $4764: $01 $00 $a9
	jr z, @+$30                                      ; $4767: $28 $2e

	add $28                                          ; $4769: $c6 $28
	ld [bc], a                                       ; $476b: $02
	ld a, [hl]                                       ; $476c: $7e
	nop                                              ; $476d: $00
	call nz, $3026                                   ; $476e: $c4 $26 $30
	cpl                                              ; $4771: $2f
	jr jr_02e_47f2                                   ; $4772: $18 $7e

	dec b                                            ; $4774: $05
	nop                                              ; $4775: $00
	xor c                                            ; $4776: $a9
	ld a, [hl+]                                      ; $4777: $2a
	jr @+$80                                         ; $4778: $18 $7e

	dec b                                            ; $477a: $05
	nop                                              ; $477b: $00
	xor c                                            ; $477c: $a9

jr_02e_477d:
	cp [hl]                                          ; $477d: $be
	jr jr_02e_47a8                                   ; $477e: $18 $28

	ld a, [hl+]                                      ; $4780: $2a
	jr z, jr_02e_47a9                                ; $4781: $28 $26

	cp [hl]                                          ; $4783: $be
	call nz, Call_02e_7e8b                           ; $4784: $c4 $8b $7e
	dec b                                            ; $4787: $05
	nop                                              ; $4788: $00
	xor c                                            ; $4789: $a9
	cpl                                              ; $478a: $2f
	jr nc, jr_02e_47be                               ; $478b: $30 $31

	jr @+$34                                         ; $478d: $18 $32

	dec d                                            ; $478f: $15
	ld a, [hl]                                       ; $4790: $7e
	nop                                              ; $4791: $00
	add $32                                          ; $4792: $c6 $32
	ld [bc], a                                       ; $4794: $02
	call nz, $0130                                   ; $4795: $c4 $30 $01

jr_02e_4798:
	ld a, [hl]                                       ; $4798: $7e
	dec b                                            ; $4799: $05
	nop                                              ; $479a: $00
	xor c                                            ; $479b: $a9
	ld sp, $2d0c                                     ; $479c: $31 $0c $2d
	inc c                                            ; $479f: $0c
	ld a, [hl+]                                      ; $47a0: $2a
	jr @+$27                                         ; $47a1: $18 $25

	ld [de], a                                       ; $47a3: $12

jr_02e_47a4:
	add $25                                          ; $47a4: $c6 $25
	ld b, $c4                                        ; $47a6: $06 $c4

jr_02e_47a8:
	inc l                                            ; $47a8: $2c

jr_02e_47a9:
	inc c                                            ; $47a9: $0c
	dec l                                            ; $47aa: $2d
	inc c                                            ; $47ab: $0c
	ld h, $18                                        ; $47ac: $26 $18
	ld a, [hl]                                       ; $47ae: $7e
	nop                                              ; $47af: $00
	cpl                                              ; $47b0: $2f
	jr @+$80                                         ; $47b1: $18 $7e

	dec b                                            ; $47b3: $05
	nop                                              ; $47b4: $00
	xor c                                            ; $47b5: $a9
	daa                                              ; $47b6: $27
	jr @+$80                                         ; $47b7: $18 $7e

	nop                                              ; $47b9: $00
	cpl                                              ; $47ba: $2f
	jr jr_02e_483b                                   ; $47bb: $18 $7e

	dec b                                            ; $47bd: $05

jr_02e_47be:
	nop                                              ; $47be: $00
	xor c                                            ; $47bf: $a9
	jr z, @+$1a                                      ; $47c0: $28 $18

	ld a, [hl+]                                      ; $47c2: $2a
	jr @+$80                                         ; $47c3: $18 $7e

	nop                                              ; $47c5: $00
	inc l                                            ; $47c6: $2c
	ld b, $c6                                        ; $47c7: $06 $c6
	inc l                                            ; $47c9: $2c
	ld b, $00                                        ; $47ca: $06 $00
	inc h                                            ; $47cc: $24
	jp nz, $1581                                     ; $47cd: $c2 $81 $15

	jr jr_02e_4798                                   ; $47d0: $18 $c6

	dec d                                            ; $47d2: $15
	inc c                                            ; $47d3: $0c
	jp nz, $0b15                                     ; $47d4: $c2 $15 $0b

	add $15                                          ; $47d7: $c6 $15
	ld bc, $14c2                                     ; $47d9: $01 $c2 $14
	jr jr_02e_47a4                                   ; $47dc: $18 $c6

	inc d                                            ; $47de: $14
	inc c                                            ; $47df: $0c
	jp nz, $0a14                                     ; $47e0: $c2 $14 $0a

	add $14                                          ; $47e3: $c6 $14
	ld [bc], a                                       ; $47e5: $02
	jp nz, $0a12                                     ; $47e6: $c2 $12 $0a

	add $12                                          ; $47e9: $c6 $12
	ld [bc], a                                       ; $47eb: $02
	jp nz, $0c12                                     ; $47ec: $c2 $12 $0c

	add $12                                          ; $47ef: $c6 $12
	inc c                                            ; $47f1: $0c

jr_02e_47f2:
	nop                                              ; $47f2: $00
	inc c                                            ; $47f3: $0c
	jp nz, $2410                                     ; $47f4: $c2 $10 $24

	call nz, $0610                                   ; $47f7: $c4 $10 $06
	add $10                                          ; $47fa: $c6 $10
	ld b, $c2                                        ; $47fc: $06 $c2
	ld c, $18                                        ; $47fe: $0e $18
	add $0e                                          ; $4800: $c6 $0e
	inc c                                            ; $4802: $0c
	jp nz, $0c0e                                     ; $4803: $c2 $0e $0c

	rla                                              ; $4806: $17
	jr @-$38                                         ; $4807: $18 $c6

	rla                                              ; $4809: $17
	inc c                                            ; $480a: $0c
	jp nz, $0c12                                     ; $480b: $c2 $12 $0c

	jp nz, $0a10                                     ; $480e: $c2 $10 $0a

	add $10                                          ; $4811: $c6 $10
	ld [bc], a                                       ; $4813: $02

Jump_02e_4814:
	jp nz, $0c10                                     ; $4814: $c2 $10 $0c

	add $10                                          ; $4817: $c6 $10
	inc c                                            ; $4819: $0c
	nop                                              ; $481a: $00
	inc c                                            ; $481b: $0c
	jp nz, $1610                                     ; $481c: $c2 $10 $16

	add $10                                          ; $481f: $c6 $10
	ld [bc], a                                       ; $4821: $02
	jp nz, $121a                                     ; $4822: $c2 $1a $12

	add $1a                                          ; $4825: $c6 $1a
	ld b, $c2                                        ; $4827: $06 $c2
	add c                                            ; $4829: $81
	add hl, de                                       ; $482a: $19
	ld d, $c4                                        ; $482b: $16 $c4
	add hl, de                                       ; $482d: $19
	ld [bc], a                                       ; $482e: $02
	jp nz, $1614                                     ; $482f: $c2 $14 $16

	call nz, $0214                                   ; $4832: $c4 $14 $02
	jp nz, $1610                                     ; $4835: $c2 $10 $16

	call nz, $0210                                   ; $4838: $c4 $10 $02

jr_02e_483b:
	jp nz, $1619                                     ; $483b: $c2 $19 $16

	call nz, $0219                                   ; $483e: $c4 $19 $02
	jp nz, $0a12                                     ; $4841: $c2 $12 $0a

	call nz, $0212                                   ; $4844: $c4 $12 $02
	jp nz, $0c12                                     ; $4847: $c2 $12 $0c

	add $12                                          ; $484a: $c6 $12
	jr @-$3c                                         ; $484c: $18 $c2

	db $10                                           ; $484e: $10
	inc h                                            ; $484f: $24
	call nz, $0c10                                   ; $4850: $c4 $10 $0c
	jp nz, $180e                                     ; $4853: $c2 $0e $18

	call nz, $0c0e                                   ; $4856: $c4 $0e $0c
	jp nz, $0c0e                                     ; $4859: $c2 $0e $0c

	rrca                                             ; $485c: $0f
	jr @-$3a                                         ; $485d: $18 $c4

	rrca                                             ; $485f: $0f
	inc c                                            ; $4860: $0c
	jp nz, $0c0f                                     ; $4861: $c2 $0f $0c

	jp nz, $1810                                     ; $4864: $c2 $10 $18

	call nz, $0c10                                   ; $4867: $c4 $10 $0c
	jp nz, $0a10                                     ; $486a: $c2 $10 $0a

	add $10                                          ; $486d: $c6 $10
	ld [bc], a                                       ; $486f: $02
	jp nz, $0a10                                     ; $4870: $c2 $10 $0a

	call nz, $0210                                   ; $4873: $c4 $10 $02
	add e                                            ; $4876: $83
	jp nz, $0a17                                     ; $4877: $c2 $17 $0a

	call nz, $0217                                   ; $487a: $c4 $17 $02
	jp nz, $0a15                                     ; $487d: $c2 $15 $0a

	call nz, $0215                                   ; $4880: $c4 $15 $02
	jp nz, $0a14                                     ; $4883: $c2 $14 $0a

	call nz, $0214                                   ; $4886: $c4 $14 $02
	jp nz, $83c2                                     ; $4889: $c2 $c2 $83

	db $10                                           ; $488c: $10
	inc a                                            ; $488d: $3c
	add $10                                          ; $488e: $c6 $10
	inc c                                            ; $4890: $0c
	jp nz, $1610                                     ; $4891: $c2 $10 $16

	add $10                                          ; $4894: $c6 $10
	ld [bc], a                                       ; $4896: $02
	jp nz, $161c                                     ; $4897: $c2 $1c $16

	add $1c                                          ; $489a: $c6 $1c
	ld [bc], a                                       ; $489c: $02
	jp nz, $161a                                     ; $489d: $c2 $1a $16

	add $1a                                          ; $48a0: $c6 $1a
	ld [bc], a                                       ; $48a2: $02
	jp nz, $0619                                     ; $48a3: $c2 $19 $06

	call nz, $0619                                   ; $48a6: $c4 $19 $06
	add $19                                          ; $48a9: $c6 $19
	inc c                                            ; $48ab: $0c
	add c                                            ; $48ac: $81
	jp nz, $1610                                     ; $48ad: $c2 $10 $16

	call nz, $0210                                   ; $48b0: $c4 $10 $02
	jp nz, $1812                                     ; $48b3: $c2 $12 $18

	call nz, $0812                                   ; $48b6: $c4 $12 $08
	add $12                                          ; $48b9: $c6 $12
	ld [$12c2], sp                                   ; $48bb: $08 $c2 $12
	rlca                                             ; $48be: $07
	nop                                              ; $48bf: $00
	ld bc, $16c2                                     ; $48c0: $01 $c2 $16
	ld d, $c4                                        ; $48c3: $16 $c4
	ld d, $02                                        ; $48c5: $16 $02
	jp nz, $161e                                     ; $48c7: $c2 $1e $16

	call nz, $021e                                   ; $48ca: $c4 $1e $02
	jp nz, $1617                                     ; $48cd: $c2 $17 $16

	call nz, $0217                                   ; $48d0: $c4 $17 $02
	jp nz, $1619                                     ; $48d3: $c2 $19 $16

	call nz, $0219                                   ; $48d6: $c4 $19 $02
	jp nz, $161a                                     ; $48d9: $c2 $1a $16

	call nz, $021a                                   ; $48dc: $c4 $1a $02
	jp nz, $1617                                     ; $48df: $c2 $17 $16

	call nz, $0217                                   ; $48e2: $c4 $17 $02
	jp nz, $1081                                     ; $48e5: $c2 $81 $10

	jr @-$3a                                         ; $48e8: $18 $c4

	db $10                                           ; $48ea: $10
	ld [$10c6], sp                                   ; $48eb: $08 $c6 $10
	ld [$17c2], sp                                   ; $48ee: $08 $c2 $17
	rlca                                             ; $48f1: $07
	nop                                              ; $48f2: $00
	ld bc, $10c2                                     ; $48f3: $01 $c2 $10
	ld d, $c4                                        ; $48f6: $16 $c4
	db $10                                           ; $48f8: $10
	ld [bc], a                                       ; $48f9: $02
	jp nz, $1614                                     ; $48fa: $c2 $14 $16

	call nz, $0214                                   ; $48fd: $c4 $14 $02
	jp nz, $1615                                     ; $4900: $c2 $15 $16

	call nz, $0215                                   ; $4903: $c4 $15 $02
	jp nz, $1619                                     ; $4906: $c2 $19 $16

	call nz, $0219                                   ; $4909: $c4 $19 $02
	jp nz, $1615                                     ; $490c: $c2 $15 $16

	call nz, $0215                                   ; $490f: $c4 $15 $02
	jp nz, $1619                                     ; $4912: $c2 $19 $16

	call nz, $0219                                   ; $4915: $c4 $19 $02
	jp nz, $161a                                     ; $4918: $c2 $1a $16

	call nz, $021a                                   ; $491b: $c4 $1a $02
	jp nz, $1612                                     ; $491e: $c2 $12 $16

	call nz, $0212                                   ; $4921: $c4 $12 $02
	jp nz, $1610                                     ; $4924: $c2 $10 $16

	call nz, $0210                                   ; $4927: $c4 $10 $02
	jp nz, $1614                                     ; $492a: $c2 $14 $16

	call nz, $0214                                   ; $492d: $c4 $14 $02
	jp nz, $1615                                     ; $4930: $c2 $15 $16

	add $15                                          ; $4933: $c6 $15
	ld [bc], a                                       ; $4935: $02
	jp nz, $1610                                     ; $4936: $c2 $10 $16

	add $10                                          ; $4939: $c6 $10
	ld [bc], a                                       ; $493b: $02
	jp nz, $1815                                     ; $493c: $c2 $15 $18

	call nz, $0c15                                   ; $493f: $c4 $15 $0c
	add $15                                          ; $4942: $c6 $15
	inc c                                            ; $4944: $0c
	adc b                                            ; $4945: $88
	cp $ff                                           ; $4946: $fe $ff
	ret nc                                           ; $4948: $d0

	ld h, h                                          ; $4949: $64
	nop                                              ; $494a: $00

jr_02e_494b:
	jr jr_02e_494b                                   ; $494b: $18 $fe

	ei                                               ; $494d: $fb
	cp [hl]                                          ; $494e: $be
	jr jr_02e_4951                                   ; $494f: $18 $00

jr_02e_4951:
	stop                                             ; $4951: $10 $00
	ld de, $fbbe                                     ; $4953: $11 $be $fb
	inc b                                            ; $4956: $04
	ei                                               ; $4957: $fb
	cp [hl]                                          ; $4958: $be
	jr jr_02e_495b                                   ; $4959: $18 $00

jr_02e_495b:
	stop                                             ; $495b: $10 $00
	ld de, $fbbe                                     ; $495d: $11 $be $fb
	inc bc                                           ; $4960: $03
	cp [hl]                                          ; $4961: $be
	jr jr_02e_4964                                   ; $4962: $18 $00

jr_02e_4964:
	add hl, bc                                       ; $4964: $09
	add hl, bc                                       ; $4965: $09
	nop                                              ; $4966: $00
	cp [hl]                                          ; $4967: $be
	ei                                               ; $4968: $fb

jr_02e_4969:
	cp [hl]                                          ; $4969: $be
	inc c                                            ; $496a: $0c
	jr jr_02e_497f                                   ; $496b: $18 $12

	ld [de], a                                       ; $496d: $12
	ld [de], a                                       ; $496e: $12
	dec c                                            ; $496f: $0d
	ld [de], a                                       ; $4970: $12
	add hl, bc                                       ; $4971: $09
	ld [de], a                                       ; $4972: $12
	cp [hl]                                          ; $4973: $be
	ei                                               ; $4974: $fb
	inc bc                                           ; $4975: $03
	cp [hl]                                          ; $4976: $be
	inc c                                            ; $4977: $0c
	jr jr_02e_498c                                   ; $4978: $18 $12

	ld [de], a                                       ; $497a: $12
	ld [de], a                                       ; $497b: $12
	jr jr_02e_498b                                   ; $497c: $18 $0d

	ld [de], a                                       ; $497e: $12

jr_02e_497f:
	add hl, bc                                       ; $497f: $09
	cp [hl]                                          ; $4980: $be
	ei                                               ; $4981: $fb
	cp [hl]                                          ; $4982: $be
	inc c                                            ; $4983: $0c
	add hl, bc                                       ; $4984: $09
	ld [de], a                                       ; $4985: $12
	ld [de], a                                       ; $4986: $12
	jr jr_02e_4996                                   ; $4987: $18 $0d

	ld [de], a                                       ; $4989: $12
	add hl, bc                                       ; $498a: $09

jr_02e_498b:
	ld [de], a                                       ; $498b: $12

jr_02e_498c:
	cp [hl]                                          ; $498c: $be
	ei                                               ; $498d: $fb
	inc bc                                           ; $498e: $03
	cp [hl]                                          ; $498f: $be
	inc c                                            ; $4990: $0c
	add hl, bc                                       ; $4991: $09
	ld [de], a                                       ; $4992: $12
	ld [de], a                                       ; $4993: $12
	jr @-$40                                         ; $4994: $18 $be

jr_02e_4996:
	dec c                                            ; $4996: $0d
	db $10                                           ; $4997: $10
	ld [de], a                                       ; $4998: $12
	inc b                                            ; $4999: $04
	ld [de], a                                       ; $499a: $12
	inc b                                            ; $499b: $04
	dec c                                            ; $499c: $0d
	inc c                                            ; $499d: $0c
	dec c                                            ; $499e: $0d
	inc c                                            ; $499f: $0c
	cp [hl]                                          ; $49a0: $be
	jr jr_02e_49bb                                   ; $49a1: $18 $18

	add hl, bc                                       ; $49a3: $09
	nop                                              ; $49a4: $00
	add hl, bc                                       ; $49a5: $09
	nop                                              ; $49a6: $00
	add hl, bc                                       ; $49a7: $09
	nop                                              ; $49a8: $00
	jr jr_02e_4969                                   ; $49a9: $18 $be

	add hl, bc                                       ; $49ab: $09
	db $10                                           ; $49ac: $10
	ld c, $08                                        ; $49ad: $0e $08
	inc de                                           ; $49af: $13
	jr jr_02e_49bb                                   ; $49b0: $18 $09

	db $10                                           ; $49b2: $10
	ld c, $08                                        ; $49b3: $0e $08
	inc de                                           ; $49b5: $13
	jr jr_02e_49c1                                   ; $49b6: $18 $09

	db $10                                           ; $49b8: $10
	ld c, $08                                        ; $49b9: $0e $08

jr_02e_49bb:
	inc de                                           ; $49bb: $13

jr_02e_49bc:
	db $10                                           ; $49bc: $10
	add hl, bc                                       ; $49bd: $09
	inc b                                            ; $49be: $04
	ld [de], a                                       ; $49bf: $12
	inc b                                            ; $49c0: $04

jr_02e_49c1:
	dec c                                            ; $49c1: $0d
	ld [$0812], sp                                   ; $49c2: $08 $12 $08
	ld [de], a                                       ; $49c5: $12
	ld [$1813], sp                                   ; $49c6: $08 $13 $18
	jr jr_02e_49e3                                   ; $49c9: $18 $18

	dec c                                            ; $49cb: $0d
	ld [$0809], sp                                   ; $49cc: $08 $09 $08
	ld [de], a                                       ; $49cf: $12
	ld [$1009], sp                                   ; $49d0: $08 $09 $10
	ld c, $08                                        ; $49d3: $0e $08
	inc de                                           ; $49d5: $13
	jr jr_02e_49e5                                   ; $49d6: $18 $0d

	ld [$0809], sp                                   ; $49d8: $08 $09 $08
	ld c, $08                                        ; $49db: $0e $08
	inc de                                           ; $49dd: $13
	jr jr_02e_49e9                                   ; $49de: $18 $09

	db $10                                           ; $49e0: $10
	ld c, $08                                        ; $49e1: $0e $08

jr_02e_49e3:
	jr @+$1a                                         ; $49e3: $18 $18

jr_02e_49e5:
	dec c                                            ; $49e5: $0d
	ld [$0809], sp                                   ; $49e6: $08 $09 $08

jr_02e_49e9:
	ld c, $08                                        ; $49e9: $0e $08
	inc de                                           ; $49eb: $13
	jr jr_02e_49fb                                   ; $49ec: $18 $0d

	ld [$080e], sp                                   ; $49ee: $08 $0e $08
	dec c                                            ; $49f1: $0d
	ld [$1818], sp                                   ; $49f2: $08 $18 $18
	ld c, $08                                        ; $49f5: $0e $08
	ld [de], a                                       ; $49f7: $12
	ld [$0812], sp                                   ; $49f8: $08 $12 $08

jr_02e_49fb:
	inc c                                            ; $49fb: $0c
	jr jr_02e_49bc                                   ; $49fc: $18 $be

	ld [$160c], sp                                   ; $49fe: $08 $0c $16
	ld d, $17                                        ; $4a01: $16 $17
	rla                                              ; $4a03: $17
	rla                                              ; $4a04: $17
	cp [hl]                                          ; $4a05: $be
	cp $ff                                           ; $4a06: $fe $ff
	ret nc                                           ; $4a08: $d0

	add a                                            ; $4a09: $87
	cp $d1                                           ; $4a0a: $fe $d1
	sub b                                            ; $4a0c: $90
	ei                                               ; $4a0d: $fb
	ret z                                            ; $4a0e: $c8

	jr nz, jr_02e_4a1d                               ; $4a0f: $20 $0c

	jp nz, $0c20                                     ; $4a11: $c2 $20 $0c

	ei                                               ; $4a14: $fb
	inc bc                                           ; $4a15: $03
	pop bc                                           ; $4a16: $c1
	jr nz, @+$0e                                     ; $4a17: $20 $0c

	ret z                                            ; $4a19: $c8

	add hl, de                                       ; $4a1a: $19
	ld b, $1b                                        ; $4a1b: $06 $1b

jr_02e_4a1d:
	ld b, $fb                                        ; $4a1d: $06 $fb
	ret z                                            ; $4a1f: $c8

	rra                                              ; $4a20: $1f
	ld b, $c2                                        ; $4a21: $06 $c2
	rra                                              ; $4a23: $1f
	ld b, $fb                                        ; $4a24: $06 $fb
	ld [bc], a                                       ; $4a26: $02
	pop bc                                           ; $4a27: $c1
	rra                                              ; $4a28: $1f
	inc c                                            ; $4a29: $0c
	ret z                                            ; $4a2a: $c8

	rra                                              ; $4a2b: $1f
	inc c                                            ; $4a2c: $0c
	jp nz, $0c1f                                     ; $4a2d: $c2 $1f $0c

	rst JumpTable                                          ; $4a30: $c7
	ld a, [hl]                                       ; $4a31: $7e
	dec de                                           ; $4a32: $1b
	nop                                              ; $4a33: $00
	xor c                                            ; $4a34: $a9
	ld [hl+], a                                      ; $4a35: $22
	inc c                                            ; $4a36: $0c
	ld a, [hl]                                       ; $4a37: $7e
	nop                                              ; $4a38: $00
	and b                                            ; $4a39: $a0
	jr nz, jr_02e_4a48                               ; $4a3a: $20 $0c

	rra                                              ; $4a3c: $1f
	inc c                                            ; $4a3d: $0c
	jp nz, $0c1f                                     ; $4a3e: $c2 $1f $0c

	ret z                                            ; $4a41: $c8

	ld [hl+], a                                      ; $4a42: $22
	ld [bc], a                                       ; $4a43: $02
	nop                                              ; $4a44: $00
	ld a, [bc]                                       ; $4a45: $0a
	ei                                               ; $4a46: $fb
	ret z                                            ; $4a47: $c8

jr_02e_4a48:
	ld e, $0c                                        ; $4a48: $1e $0c
	jp nz, $0c1e                                     ; $4a4a: $c2 $1e $0c

	ei                                               ; $4a4d: $fb
	ld [bc], a                                       ; $4a4e: $02
	pop bc                                           ; $4a4f: $c1
	ld e, $0c                                        ; $4a50: $1e $0c
	ret z                                            ; $4a52: $c8

	add hl, de                                       ; $4a53: $19
	ld b, $1b                                        ; $4a54: $06 $1b
	ld b, $fb                                        ; $4a56: $06 $fb
	ret z                                            ; $4a58: $c8

	dec e                                            ; $4a59: $1d
	ld b, $c2                                        ; $4a5a: $06 $c2
	dec e                                            ; $4a5c: $1d
	ld b, $fb                                        ; $4a5d: $06 $fb
	ld [bc], a                                       ; $4a5f: $02
	pop bc                                           ; $4a60: $c1
	dec e                                            ; $4a61: $1d
	inc c                                            ; $4a62: $0c
	ret z                                            ; $4a63: $c8

	dec e                                            ; $4a64: $1d
	inc c                                            ; $4a65: $0c
	jp nz, $0c1d                                     ; $4a66: $c2 $1d $0c

	ret z                                            ; $4a69: $c8

	add hl, de                                       ; $4a6a: $19
	inc c                                            ; $4a6b: $0c
	dec de                                           ; $4a6c: $1b
	inc c                                            ; $4a6d: $0c
	dec e                                            ; $4a6e: $1d
	inc c                                            ; $4a6f: $0c
	jp nz, $0c1d                                     ; $4a70: $c2 $1d $0c

	sub c                                            ; $4a73: $91
	ret z                                            ; $4a74: $c8

	jr nz, jr_02e_4a79                               ; $4a75: $20 $02

	nop                                              ; $4a77: $00
	ld a, [bc]                                       ; $4a78: $0a

jr_02e_4a79:
	ei                                               ; $4a79: $fb
	ret z                                            ; $4a7a: $c8

	jr nz, jr_02e_4a89                               ; $4a7b: $20 $0c

	jp nz, $0c20                                     ; $4a7d: $c2 $20 $0c

	ei                                               ; $4a80: $fb
	ld [bc], a                                       ; $4a81: $02
	pop bc                                           ; $4a82: $c1
	jr nz, @+$0e                                     ; $4a83: $20 $0c

	ret z                                            ; $4a85: $c8

	add hl, de                                       ; $4a86: $19
	ld b, $1b                                        ; $4a87: $06 $1b

jr_02e_4a89:
	ld b, $fb                                        ; $4a89: $06 $fb
	ret z                                            ; $4a8b: $c8

	rra                                              ; $4a8c: $1f
	ld b, $c2                                        ; $4a8d: $06 $c2
	rra                                              ; $4a8f: $1f
	ld b, $fb                                        ; $4a90: $06 $fb
	ld [bc], a                                       ; $4a92: $02
	pop bc                                           ; $4a93: $c1
	rra                                              ; $4a94: $1f
	inc c                                            ; $4a95: $0c
	ret z                                            ; $4a96: $c8

	rra                                              ; $4a97: $1f

jr_02e_4a98:
	inc c                                            ; $4a98: $0c
	jp nz, $0c1f                                     ; $4a99: $c2 $1f $0c

	rst JumpTable                                          ; $4a9c: $c7
	ld a, [hl]                                       ; $4a9d: $7e
	dec de                                           ; $4a9e: $1b
	nop                                              ; $4a9f: $00
	xor c                                            ; $4aa0: $a9
	ld [hl+], a                                      ; $4aa1: $22
	inc c                                            ; $4aa2: $0c
	ld a, [hl]                                       ; $4aa3: $7e
	nop                                              ; $4aa4: $00
	and b                                            ; $4aa5: $a0
	jr nz, jr_02e_4ab4                               ; $4aa6: $20 $0c

	rra                                              ; $4aa8: $1f
	inc c                                            ; $4aa9: $0c
	jp nz, $0c1f                                     ; $4aaa: $c2 $1f $0c

	ret z                                            ; $4aad: $c8

	ld [hl+], a                                      ; $4aae: $22
	ld [bc], a                                       ; $4aaf: $02
	nop                                              ; $4ab0: $00
	ld a, [bc]                                       ; $4ab1: $0a
	ei                                               ; $4ab2: $fb
	ret z                                            ; $4ab3: $c8

jr_02e_4ab4:
	ld e, $0c                                        ; $4ab4: $1e $0c
	jp nz, $0c1e                                     ; $4ab6: $c2 $1e $0c

	ei                                               ; $4ab9: $fb
	ld [bc], a                                       ; $4aba: $02
	pop bc                                           ; $4abb: $c1
	ld e, $0c                                        ; $4abc: $1e $0c
	ret z                                            ; $4abe: $c8

	add hl, de                                       ; $4abf: $19
	ld b, $1b                                        ; $4ac0: $06 $1b
	ld b, $fb                                        ; $4ac2: $06 $fb
	ret z                                            ; $4ac4: $c8

	dec e                                            ; $4ac5: $1d
	ld b, $c2                                        ; $4ac6: $06 $c2
	dec e                                            ; $4ac8: $1d
	ld b, $fb                                        ; $4ac9: $06 $fb
	ld [bc], a                                       ; $4acb: $02
	pop bc                                           ; $4acc: $c1
	dec e                                            ; $4acd: $1d
	inc c                                            ; $4ace: $0c
	ret z                                            ; $4acf: $c8

	dec e                                            ; $4ad0: $1d
	inc c                                            ; $4ad1: $0c
	jp nz, $0c1d                                     ; $4ad2: $c2 $1d $0c

	sub b                                            ; $4ad5: $90
	jp nz, $1d7e                                     ; $4ad6: $c2 $7e $1d

	nop                                              ; $4ad9: $00
	and b                                            ; $4ada: $a0
	nop                                              ; $4adb: $00
	inc c                                            ; $4adc: $0c
	inc sp                                           ; $4add: $33
	inc c                                            ; $4ade: $0c
	ld sp, $7e0c                                     ; $4adf: $31 $0c $7e
	nop                                              ; $4ae2: $00
	and b                                            ; $4ae3: $a0
	pop de                                           ; $4ae4: $d1
	sub b                                            ; $4ae5: $90
	ld a, h                                          ; $4ae6: $7c
	ei                                               ; $4ae7: $fb
	add $29                                          ; $4ae8: $c6 $29
	inc c                                            ; $4aea: $0c
	nop                                              ; $4aeb: $00
	inc c                                            ; $4aec: $0c
	ei                                               ; $4aed: $fb
	inc bc                                           ; $4aee: $03
	nop                                              ; $4aef: $00
	inc c                                            ; $4af0: $0c
	daa                                              ; $4af1: $27
	ld d, $00                                        ; $4af2: $16 $00
	ld [bc], a                                       ; $4af4: $02
	daa                                              ; $4af5: $27
	ld a, [bc]                                       ; $4af6: $0a
	nop                                              ; $4af7: $00
	ld [bc], a                                       ; $4af8: $02
	daa                                              ; $4af9: $27
	inc c                                            ; $4afa: $0c
	nop                                              ; $4afb: $00
	inc c                                            ; $4afc: $0c
	ei                                               ; $4afd: $fb
	daa                                              ; $4afe: $27
	inc c                                            ; $4aff: $0c
	nop                                              ; $4b00: $00
	inc c                                            ; $4b01: $0c
	ei                                               ; $4b02: $fb
	ld [bc], a                                       ; $4b03: $02
	nop                                              ; $4b04: $00
	jr jr_02e_4a98                                   ; $4b05: $18 $91

	add $31                                          ; $4b07: $c6 $31
	inc c                                            ; $4b09: $0c
	jp nz, $0c31                                     ; $4b0a: $c2 $31 $0c

	push bc                                          ; $4b0d: $c5
	ld a, [hl+]                                      ; $4b0e: $2a
	inc c                                            ; $4b0f: $0c
	jp nz, $182a                                     ; $4b10: $c2 $2a $18

	add $35                                          ; $4b13: $c6 $35
	inc c                                            ; $4b15: $0c
	jp nz, $0c35                                     ; $4b16: $c2 $35 $0c

	add $35                                          ; $4b19: $c6 $35
	inc c                                            ; $4b1b: $0c
	add $33                                          ; $4b1c: $c6 $33
	inc c                                            ; $4b1e: $0c
	jp nz, $0c33                                     ; $4b1f: $c2 $33 $0c

	add $31                                          ; $4b22: $c6 $31
	inc c                                            ; $4b24: $0c
	jp nz, $0c31                                     ; $4b25: $c2 $31 $0c

	add $30                                          ; $4b28: $c6 $30
	inc c                                            ; $4b2a: $0c
	jp nz, $0c30                                     ; $4b2b: $c2 $30 $0c

	sub b                                            ; $4b2e: $90
	ei                                               ; $4b2f: $fb
	add $2c                                          ; $4b30: $c6 $2c
	inc c                                            ; $4b32: $0c
	nop                                              ; $4b33: $00
	inc c                                            ; $4b34: $0c
	ei                                               ; $4b35: $fb
	inc bc                                           ; $4b36: $03
	nop                                              ; $4b37: $00
	inc c                                            ; $4b38: $0c
	push bc                                          ; $4b39: $c5
	jr nc, jr_02e_4b52                               ; $4b3a: $30 $16

	nop                                              ; $4b3c: $00
	ld [bc], a                                       ; $4b3d: $02
	jr nc, jr_02e_4b4a                               ; $4b3e: $30 $0a

	nop                                              ; $4b40: $00
	ld [bc], a                                       ; $4b41: $02
	jr nc, jr_02e_4b50                               ; $4b42: $30 $0c

	nop                                              ; $4b44: $00
	inc c                                            ; $4b45: $0c
	ei                                               ; $4b46: $fb
	jr nc, @+$0e                                     ; $4b47: $30 $0c

	nop                                              ; $4b49: $00

jr_02e_4b4a:
	inc c                                            ; $4b4a: $0c
	ei                                               ; $4b4b: $fb
	ld [bc], a                                       ; $4b4c: $02
	nop                                              ; $4b4d: $00
	jr @-$6d                                         ; $4b4e: $18 $91

jr_02e_4b50:
	add $31                                          ; $4b50: $c6 $31

jr_02e_4b52:
	inc c                                            ; $4b52: $0c
	pop bc                                           ; $4b53: $c1
	ld sp, $c50c                                     ; $4b54: $31 $0c $c5
	ld l, $0c                                        ; $4b57: $2e $0c
	pop bc                                           ; $4b59: $c1
	ld l, $18                                        ; $4b5a: $2e $18
	push bc                                          ; $4b5c: $c5
	ld [hl], $0c                                     ; $4b5d: $36 $0c
	pop bc                                           ; $4b5f: $c1
	ld [hl], $0c                                     ; $4b60: $36 $0c
	push bc                                          ; $4b62: $c5
	ld [hl], $0c                                     ; $4b63: $36 $0c
	add $35                                          ; $4b65: $c6 $35
	inc c                                            ; $4b67: $0c
	pop bc                                           ; $4b68: $c1
	dec [hl]                                         ; $4b69: $35
	inc c                                            ; $4b6a: $0c
	add $31                                          ; $4b6b: $c6 $31
	inc c                                            ; $4b6d: $0c
	jp nz, $0c31                                     ; $4b6e: $c2 $31 $0c

	add $33                                          ; $4b71: $c6 $33
	inc c                                            ; $4b73: $0c
	pop bc                                           ; $4b74: $c1
	inc sp                                           ; $4b75: $33
	inc c                                            ; $4b76: $0c
	ld [hl], b                                       ; $4b77: $70
	pop de                                           ; $4b78: $d1
	sub b                                            ; $4b79: $90
	pop bc                                           ; $4b7a: $c1
	daa                                              ; $4b7b: $27
	inc c                                            ; $4b7c: $0c
	sub b                                            ; $4b7d: $90
	push bc                                          ; $4b7e: $c5
	ld a, [hl]                                       ; $4b7f: $7e
	dec e                                            ; $4b80: $1d
	ld [de], a                                       ; $4b81: $12
	xor c                                            ; $4b82: $a9
	dec h                                            ; $4b83: $25
	jr @+$80                                         ; $4b84: $18 $7e

	dec e                                            ; $4b86: $1d
	nop                                              ; $4b87: $00
	xor c                                            ; $4b88: $a9
	jp nz, $0c25                                     ; $4b89: $c2 $25 $0c

	ld a, [hl]                                       ; $4b8c: $7e
	nop                                              ; $4b8d: $00
	and b                                            ; $4b8e: $a0
	push bc                                          ; $4b8f: $c5
	dec h                                            ; $4b90: $25
	ld [$25c2], sp                                   ; $4b91: $08 $c2 $25
	inc b                                            ; $4b94: $04
	push bc                                          ; $4b95: $c5
	inc h                                            ; $4b96: $24
	ld [$24c2], sp                                   ; $4b97: $08 $c2 $24
	inc b                                            ; $4b9a: $04
	pop bc                                           ; $4b9b: $c1
	inc h                                            ; $4b9c: $24
	inc c                                            ; $4b9d: $0c
	push bc                                          ; $4b9e: $c5
	ld a, [hl]                                       ; $4b9f: $7e
	inc e                                            ; $4ba0: $1c
	inc b                                            ; $4ba1: $04
	and b                                            ; $4ba2: $a0
	inc h                                            ; $4ba3: $24
	jr nc, @+$80                                     ; $4ba4: $30 $7e

	nop                                              ; $4ba6: $00
	and b                                            ; $4ba7: $a0
	pop bc                                           ; $4ba8: $c1
	inc h                                            ; $4ba9: $24
	inc c                                            ; $4baa: $0c
	push bc                                          ; $4bab: $c5
	jr nz, jr_02e_4bb8                               ; $4bac: $20 $0a

	jp nz, $0620                                     ; $4bae: $c2 $20 $06

	push bc                                          ; $4bb1: $c5
	ld [hl+], a                                      ; $4bb2: $22
	ld a, [bc]                                       ; $4bb3: $0a
	jp nz, $0622                                     ; $4bb4: $c2 $22 $06

	push bc                                          ; $4bb7: $c5

jr_02e_4bb8:
	inc hl                                           ; $4bb8: $23
	ld a, [bc]                                       ; $4bb9: $0a
	jp nz, $0623                                     ; $4bba: $c2 $23 $06

	push bc                                          ; $4bbd: $c5
	ld a, [hl]                                       ; $4bbe: $7e
	dec e                                            ; $4bbf: $1d
	inc h                                            ; $4bc0: $24
	xor c                                            ; $4bc1: $a9
	inc h                                            ; $4bc2: $24
	jr nc, @+$80                                     ; $4bc3: $30 $7e

	dec e                                            ; $4bc5: $1d
	nop                                              ; $4bc6: $00
	xor c                                            ; $4bc7: $a9
	jp nz, $0c24                                     ; $4bc8: $c2 $24 $0c

	ld a, [hl]                                       ; $4bcb: $7e
	nop                                              ; $4bcc: $00
	and b                                            ; $4bcd: $a0
	push bc                                          ; $4bce: $c5
	dec h                                            ; $4bcf: $25
	inc c                                            ; $4bd0: $0c
	daa                                              ; $4bd1: $27
	ld b, $c1                                        ; $4bd2: $06 $c1
	daa                                              ; $4bd4: $27
	ld b, $c4                                        ; $4bd5: $06 $c4
	ld a, [hl]                                       ; $4bd7: $7e
	inc e                                            ; $4bd8: $1c
	ld [$25a0], sp                                   ; $4bd9: $08 $a0 $25
	jr nc, jr_02e_4c5c                               ; $4bdc: $30 $7e

	nop                                              ; $4bde: $00
	and b                                            ; $4bdf: $a0
	pop bc                                           ; $4be0: $c1
	dec h                                            ; $4be1: $25
	inc c                                            ; $4be2: $0c
	push bc                                          ; $4be3: $c5
	inc h                                            ; $4be4: $24
	ld a, [bc]                                       ; $4be5: $0a
	jp nz, $0624                                     ; $4be6: $c2 $24 $06

	push bc                                          ; $4be9: $c5
	dec h                                            ; $4bea: $25
	ld a, [bc]                                       ; $4beb: $0a
	jp nz, $0625                                     ; $4bec: $c2 $25 $06

	push bc                                          ; $4bef: $c5
	add hl, hl                                       ; $4bf0: $29
	ld a, [bc]                                       ; $4bf1: $0a
	jp nz, $0629                                     ; $4bf2: $c2 $29 $06

	jp nz, $0c25                                     ; $4bf5: $c2 $25 $0c

	push bc                                          ; $4bf8: $c5
	ld a, [hl]                                       ; $4bf9: $7e
	dec e                                            ; $4bfa: $1d
	ld [de], a                                       ; $4bfb: $12
	xor c                                            ; $4bfc: $a9
	dec h                                            ; $4bfd: $25
	jr @+$80                                         ; $4bfe: $18 $7e

	dec e                                            ; $4c00: $1d
	nop                                              ; $4c01: $00
	xor c                                            ; $4c02: $a9
	jp nz, $0c25                                     ; $4c03: $c2 $25 $0c

	ld a, [hl]                                       ; $4c06: $7e
	nop                                              ; $4c07: $00
	and b                                            ; $4c08: $a0
	push bc                                          ; $4c09: $c5
	dec h                                            ; $4c0a: $25
	ld [$25c2], sp                                   ; $4c0b: $08 $c2 $25
	inc b                                            ; $4c0e: $04
	push bc                                          ; $4c0f: $c5
	inc h                                            ; $4c10: $24
	ld [$24c2], sp                                   ; $4c11: $08 $c2 $24
	inc b                                            ; $4c14: $04
	pop bc                                           ; $4c15: $c1
	inc h                                            ; $4c16: $24
	inc c                                            ; $4c17: $0c
	call nz, $1c7e                                   ; $4c18: $c4 $7e $1c
	ld [$20a0], sp                                   ; $4c1b: $08 $a0 $20
	jr nc, @+$80                                     ; $4c1e: $30 $7e

	nop                                              ; $4c20: $00
	and b                                            ; $4c21: $a0
	jp nz, $0c20                                     ; $4c22: $c2 $20 $0c

	push bc                                          ; $4c25: $c5
	jr nz, @+$0c                                     ; $4c26: $20 $0a

	jp nz, $0620                                     ; $4c28: $c2 $20 $06

	push bc                                          ; $4c2b: $c5
	rra                                              ; $4c2c: $1f
	ld a, [bc]                                       ; $4c2d: $0a
	jp nz, $061f                                     ; $4c2e: $c2 $1f $06

	call nz, $0a20                                   ; $4c31: $c4 $20 $0a
	jp nz, $0620                                     ; $4c34: $c2 $20 $06

	ei                                               ; $4c37: $fb
	sub b                                            ; $4c38: $90
	ret z                                            ; $4c39: $c8

	jr nz, @+$0e                                     ; $4c3a: $20 $0c

	jp nz, $0c20                                     ; $4c3c: $c2 $20 $0c

	ei                                               ; $4c3f: $fb
	ld [bc], a                                       ; $4c40: $02
	pop bc                                           ; $4c41: $c1
	jr nz, jr_02e_4c68                               ; $4c42: $20 $24

	rst JumpTable                                          ; $4c44: $c7
	jr nz, jr_02e_4c53                               ; $4c45: $20 $0c

	jp nz, $0c20                                     ; $4c47: $c2 $20 $0c

	rst JumpTable                                          ; $4c4a: $c7
	jr nz, jr_02e_4c53                               ; $4c4b: $20 $06

	jp nz, $0620                                     ; $4c4d: $c2 $20 $06

	rst JumpTable                                          ; $4c50: $c7
	ld a, [hl]                                       ; $4c51: $7e
	dec de                                           ; $4c52: $1b

jr_02e_4c53:
	nop                                              ; $4c53: $00
	xor e                                            ; $4c54: $ab
	jr nz, jr_02e_4c6f                               ; $4c55: $20 $18

	ld a, [hl]                                       ; $4c57: $7e
	nop                                              ; $4c58: $00
	and b                                            ; $4c59: $a0
	jr nz, jr_02e_4c68                               ; $4c5a: $20 $0c

jr_02e_4c5c:
	pop bc                                           ; $4c5c: $c1
	jr nz, @+$0e                                     ; $4c5d: $20 $0c

	nop                                              ; $4c5f: $00

jr_02e_4c60:
	jr jr_02e_4c60                                   ; $4c60: $18 $fe

	rst $38                                          ; $4c62: $ff
	ret nc                                           ; $4c63: $d0

	add a                                            ; $4c64: $87
	cp $d1                                           ; $4c65: $fe $d1
	sub b                                            ; $4c67: $90

jr_02e_4c68:
	ei                                               ; $4c68: $fb
	call z, $0c25                                    ; $4c69: $cc $25 $0c
	jp nz, $0c25                                     ; $4c6c: $c2 $25 $0c

jr_02e_4c6f:
	ei                                               ; $4c6f: $fb
	inc bc                                           ; $4c70: $03
	pop bc                                           ; $4c71: $c1
	dec h                                            ; $4c72: $25
	inc c                                            ; $4c73: $0c
	call z, $0620                                    ; $4c74: $cc $20 $06
	ld [hl+], a                                      ; $4c77: $22
	ld b, $fb                                        ; $4c78: $06 $fb
	call z, $0625                                    ; $4c7a: $cc $25 $06
	call nz, $0625                                   ; $4c7d: $c4 $25 $06
	ei                                               ; $4c80: $fb
	ld [bc], a                                       ; $4c81: $02
	jp nz, $0c25                                     ; $4c82: $c2 $25 $0c

	call z, $0c25                                    ; $4c85: $cc $25 $0c
	jp nz, $0c25                                     ; $4c88: $c2 $25 $0c

	ret z                                            ; $4c8b: $c8

	ld a, [hl]                                       ; $4c8c: $7e
	dec de                                           ; $4c8d: $1b
	nop                                              ; $4c8e: $00
	xor d                                            ; $4c8f: $aa
	add hl, hl                                       ; $4c90: $29
	inc c                                            ; $4c91: $0c
	ld a, [hl]                                       ; $4c92: $7e
	nop                                              ; $4c93: $00
	and b                                            ; $4c94: $a0
	sla a                                            ; $4c95: $cb $27

Call_02e_4c97:
	inc c                                            ; $4c97: $0c
	dec h                                            ; $4c98: $25
	inc c                                            ; $4c99: $0c
	jp nz, $0c25                                     ; $4c9a: $c2 $25 $0c

	call z, $021e                                    ; $4c9d: $cc $1e $02
	nop                                              ; $4ca0: $00
	ld a, [bc]                                       ; $4ca1: $0a
	ei                                               ; $4ca2: $fb
	call z, $0c25                                    ; $4ca3: $cc $25 $0c
	jp nz, $0c25                                     ; $4ca6: $c2 $25 $0c

	ei                                               ; $4ca9: $fb
	ld [bc], a                                       ; $4caa: $02
	pop bc                                           ; $4cab: $c1
	dec h                                            ; $4cac: $25
	inc c                                            ; $4cad: $0c
	call z, $0620                                    ; $4cae: $cc $20 $06
	ld [hl+], a                                      ; $4cb1: $22
	ld b, $fb                                        ; $4cb2: $06 $fb
	call z, $0625                                    ; $4cb4: $cc $25 $06
	call nz, $0625                                   ; $4cb7: $c4 $25 $06
	ei                                               ; $4cba: $fb
	ld [bc], a                                       ; $4cbb: $02
	jp nz, $0c25                                     ; $4cbc: $c2 $25 $0c

	call z, $0c25                                    ; $4cbf: $cc $25 $0c
	jp nz, $0c25                                     ; $4cc2: $c2 $25 $0c

	call z, $0c20                                    ; $4cc5: $cc $20 $0c
	ld [hl+], a                                      ; $4cc8: $22
	inc c                                            ; $4cc9: $0c
	dec h                                            ; $4cca: $25
	inc c                                            ; $4ccb: $0c
	jp nz, $0c25                                     ; $4ccc: $c2 $25 $0c

	call z, $0219                                    ; $4ccf: $cc $19 $02
	nop                                              ; $4cd2: $00
	ld a, [bc]                                       ; $4cd3: $0a
	ei                                               ; $4cd4: $fb
	call z, $0c25                                    ; $4cd5: $cc $25 $0c
	jp nz, $0c25                                     ; $4cd8: $c2 $25 $0c

	ei                                               ; $4cdb: $fb
	ld [bc], a                                       ; $4cdc: $02
	pop bc                                           ; $4cdd: $c1
	dec h                                            ; $4cde: $25
	inc c                                            ; $4cdf: $0c
	call z, $0620                                    ; $4ce0: $cc $20 $06
	ld [hl+], a                                      ; $4ce3: $22
	ld b, $fb                                        ; $4ce4: $06 $fb
	call z, $0625                                    ; $4ce6: $cc $25 $06
	jp nz, $0625                                     ; $4ce9: $c2 $25 $06

	ei                                               ; $4cec: $fb
	ld [bc], a                                       ; $4ced: $02
	pop bc                                           ; $4cee: $c1
	dec h                                            ; $4cef: $25
	inc c                                            ; $4cf0: $0c
	call z, $0c25                                    ; $4cf1: $cc $25 $0c
	jp nz, $0c25                                     ; $4cf4: $c2 $25 $0c

	ret z                                            ; $4cf7: $c8

	ld a, [hl]                                       ; $4cf8: $7e
	dec de                                           ; $4cf9: $1b
	nop                                              ; $4cfa: $00
	xor d                                            ; $4cfb: $aa
	add hl, hl                                       ; $4cfc: $29
	inc c                                            ; $4cfd: $0c
	ld a, [hl]                                       ; $4cfe: $7e
	nop                                              ; $4cff: $00
	and b                                            ; $4d00: $a0
	sla a                                            ; $4d01: $cb $27
	inc c                                            ; $4d03: $0c
	dec h                                            ; $4d04: $25
	inc c                                            ; $4d05: $0c
	jp nz, $0c25                                     ; $4d06: $c2 $25 $0c

	call z, $021e                                    ; $4d09: $cc $1e $02
	nop                                              ; $4d0c: $00
	ld a, [bc]                                       ; $4d0d: $0a
	ei                                               ; $4d0e: $fb
	call z, $0c25                                    ; $4d0f: $cc $25 $0c
	jp nz, $0c25                                     ; $4d12: $c2 $25 $0c

	ei                                               ; $4d15: $fb
	ld [bc], a                                       ; $4d16: $02
	pop bc                                           ; $4d17: $c1
	dec h                                            ; $4d18: $25
	inc c                                            ; $4d19: $0c
	call z, $0620                                    ; $4d1a: $cc $20 $06
	ld [hl+], a                                      ; $4d1d: $22
	ld b, $fb                                        ; $4d1e: $06 $fb
	call z, $0625                                    ; $4d20: $cc $25 $06
	jp nz, $0625                                     ; $4d23: $c2 $25 $06

	ei                                               ; $4d26: $fb
	ld [bc], a                                       ; $4d27: $02
	pop bc                                           ; $4d28: $c1
	dec h                                            ; $4d29: $25
	inc c                                            ; $4d2a: $0c
	call z, $0c25                                    ; $4d2b: $cc $25 $0c
	jp nz, $0c25                                     ; $4d2e: $c2 $25 $0c

	push bc                                          ; $4d31: $c5
	inc sp                                           ; $4d32: $33
	ld b, $c1                                        ; $4d33: $06 $c1
	inc sp                                           ; $4d35: $33
	ld b, $c6                                        ; $4d36: $06 $c6
	ld sp, $c406                                     ; $4d38: $31 $06 $c4
	ld sp, $c20c                                     ; $4d3b: $31 $0c $c2
	ld sp, $d106                                     ; $4d3e: $31 $06 $d1
	sub b                                            ; $4d41: $90
	pop bc                                           ; $4d42: $c1
	ld sp, $fd24                                     ; $4d43: $31 $24 $fd
	ld h, [hl]                                       ; $4d46: $66
	ld c, [hl]                                       ; $4d47: $4e
	jp nz, Jump_02e_7e91                             ; $4d48: $c2 $91 $7e

	dec e                                            ; $4d4b: $1d
	nop                                              ; $4d4c: $00
	xor c                                            ; $4d4d: $a9
	jr nz, jr_02e_4d62                               ; $4d4e: $20 $12

	cp [hl]                                          ; $4d50: $be
	inc c                                            ; $4d51: $0c
	add hl, hl                                       ; $4d52: $29
	add hl, hl                                       ; $4d53: $29
	daa                                              ; $4d54: $27
	daa                                              ; $4d55: $27
	dec h                                            ; $4d56: $25
	dec h                                            ; $4d57: $25
	cp [hl]                                          ; $4d58: $be
	inc h                                            ; $4d59: $24
	ld b, $7e                                        ; $4d5a: $06 $7e
	nop                                              ; $4d5c: $00
	and b                                            ; $4d5d: $a0
	nop                                              ; $4d5e: $00
	inc h                                            ; $4d5f: $24
	sub d                                            ; $4d60: $92
	db $fd                                           ; $4d61: $fd

jr_02e_4d62:
	ld h, [hl]                                       ; $4d62: $66
	ld c, [hl]                                       ; $4d63: $4e
	jp nz, Jump_02e_7e91                             ; $4d64: $c2 $91 $7e

	dec e                                            ; $4d67: $1d
	nop                                              ; $4d68: $00
	xor c                                            ; $4d69: $a9
	jr nz, @+$14                                     ; $4d6a: $20 $12

	cp [hl]                                          ; $4d6c: $be
	inc c                                            ; $4d6d: $0c
	ld a, [hl+]                                      ; $4d6e: $2a
	ld a, [hl+]                                      ; $4d6f: $2a
	add hl, hl                                       ; $4d70: $29
	add hl, hl                                       ; $4d71: $29
	dec h                                            ; $4d72: $25
	dec h                                            ; $4d73: $25
	cp [hl]                                          ; $4d74: $be
	daa                                              ; $4d75: $27
	ld b, $7e                                        ; $4d76: $06 $7e
	nop                                              ; $4d78: $00
	and b                                            ; $4d79: $a0
	pop de                                           ; $4d7a: $d1
	sub b                                            ; $4d7b: $90
	jp nz, $0c27                                     ; $4d7c: $c2 $27 $0c

	sub c                                            ; $4d7f: $91
	ret z                                            ; $4d80: $c8

	ld a, [hl]                                       ; $4d81: $7e
	dec e                                            ; $4d82: $1d
	ld [de], a                                       ; $4d83: $12
	xor c                                            ; $4d84: $a9
	ld a, [hl+]                                      ; $4d85: $2a
	jr jr_02e_4e06                                   ; $4d86: $18 $7e

	dec e                                            ; $4d88: $1d
	nop                                              ; $4d89: $00
	xor c                                            ; $4d8a: $a9
	jp nz, $0c2a                                     ; $4d8b: $c2 $2a $0c

	ld a, [hl]                                       ; $4d8e: $7e
	nop                                              ; $4d8f: $00
	and b                                            ; $4d90: $a0
	ret z                                            ; $4d91: $c8

	ld a, [hl+]                                      ; $4d92: $2a
	ld [$2ac2], sp                                   ; $4d93: $08 $c2 $2a
	inc b                                            ; $4d96: $04
	ret z                                            ; $4d97: $c8

	add hl, hl                                       ; $4d98: $29
	ld [$29c2], sp                                   ; $4d99: $08 $c2 $29
	inc b                                            ; $4d9c: $04
	pop bc                                           ; $4d9d: $c1
	add hl, hl                                       ; $4d9e: $29
	inc c                                            ; $4d9f: $0c
	rst JumpTable                                          ; $4da0: $c7
	ld a, [hl]                                       ; $4da1: $7e
	inc e                                            ; $4da2: $1c
	inc b                                            ; $4da3: $04
	and b                                            ; $4da4: $a0
	daa                                              ; $4da5: $27
	jr nc, jr_02e_4e26                               ; $4da6: $30 $7e

	nop                                              ; $4da8: $00
	and b                                            ; $4da9: $a0
	pop bc                                           ; $4daa: $c1
	daa                                              ; $4dab: $27
	inc c                                            ; $4dac: $0c
	ret z                                            ; $4dad: $c8

	dec h                                            ; $4dae: $25
	ld a, [bc]                                       ; $4daf: $0a
	jp nz, $0625                                     ; $4db0: $c2 $25 $06

	ret z                                            ; $4db3: $c8

	daa                                              ; $4db4: $27
	ld a, [bc]                                       ; $4db5: $0a
	jp nz, $0627                                     ; $4db6: $c2 $27 $06

	rst JumpTable                                          ; $4db9: $c7
	jr z, @+$0c                                      ; $4dba: $28 $0a

	jp nz, $0628                                     ; $4dbc: $c2 $28 $06

	ret z                                            ; $4dbf: $c8

	ld a, [hl]                                       ; $4dc0: $7e
	dec e                                            ; $4dc1: $1d
	inc h                                            ; $4dc2: $24
	xor c                                            ; $4dc3: $a9
	add hl, hl                                       ; $4dc4: $29
	jr nc, jr_02e_4e45                               ; $4dc5: $30 $7e

	dec e                                            ; $4dc7: $1d
	nop                                              ; $4dc8: $00
	xor c                                            ; $4dc9: $a9
	jp nz, $0c29                                     ; $4dca: $c2 $29 $0c

	ld a, [hl]                                       ; $4dcd: $7e
	nop                                              ; $4dce: $00
	and b                                            ; $4dcf: $a0
	ret z                                            ; $4dd0: $c8

	ld a, [hl+]                                      ; $4dd1: $2a
	inc c                                            ; $4dd2: $0c
	rst JumpTable                                          ; $4dd3: $c7
	inc l                                            ; $4dd4: $2c
	ld b, $c2                                        ; $4dd5: $06 $c2
	inc l                                            ; $4dd7: $2c
	ld b, $c8                                        ; $4dd8: $06 $c8
	ld a, [hl]                                       ; $4dda: $7e
	inc e                                            ; $4ddb: $1c
	ld [$29a0], sp                                   ; $4ddc: $08 $a0 $29
	jr nc, jr_02e_4e5f                               ; $4ddf: $30 $7e

	nop                                              ; $4de1: $00
	and b                                            ; $4de2: $a0
	pop bc                                           ; $4de3: $c1
	add hl, hl                                       ; $4de4: $29
	inc c                                            ; $4de5: $0c
	ret                                              ; $4de6: $c9


	daa                                              ; $4de7: $27
	ld a, [bc]                                       ; $4de8: $0a
	jp nz, $0627                                     ; $4de9: $c2 $27 $06

	ret z                                            ; $4dec: $c8

	add hl, hl                                       ; $4ded: $29
	ld a, [bc]                                       ; $4dee: $0a
	jp nz, $0629                                     ; $4def: $c2 $29 $06

	rst JumpTable                                          ; $4df2: $c7
	inc l                                            ; $4df3: $2c
	ld a, [bc]                                       ; $4df4: $0a
	jp nz, $062c                                     ; $4df5: $c2 $2c $06

	pop bc                                           ; $4df8: $c1
	inc l                                            ; $4df9: $2c
	inc c                                            ; $4dfa: $0c
	ret z                                            ; $4dfb: $c8

	ld a, [hl]                                       ; $4dfc: $7e
	dec e                                            ; $4dfd: $1d
	ld [de], a                                       ; $4dfe: $12
	xor c                                            ; $4dff: $a9
	ld a, [hl+]                                      ; $4e00: $2a
	jr jr_02e_4e81                                   ; $4e01: $18 $7e

	dec e                                            ; $4e03: $1d
	nop                                              ; $4e04: $00
	xor c                                            ; $4e05: $a9

jr_02e_4e06:
	jp nz, $0c2a                                     ; $4e06: $c2 $2a $0c

	ld a, [hl]                                       ; $4e09: $7e
	nop                                              ; $4e0a: $00
	and b                                            ; $4e0b: $a0
	ret z                                            ; $4e0c: $c8

	ld a, [hl+]                                      ; $4e0d: $2a
	ld [$2ac2], sp                                   ; $4e0e: $08 $c2 $2a
	inc b                                            ; $4e11: $04
	ret z                                            ; $4e12: $c8

	add hl, hl                                       ; $4e13: $29
	ld [$29c2], sp                                   ; $4e14: $08 $c2 $29
	inc b                                            ; $4e17: $04
	pop bc                                           ; $4e18: $c1
	add hl, hl                                       ; $4e19: $29
	inc c                                            ; $4e1a: $0c
	rst JumpTable                                          ; $4e1b: $c7
	ld a, [hl]                                       ; $4e1c: $7e
	inc e                                            ; $4e1d: $1c
	inc b                                            ; $4e1e: $04
	and b                                            ; $4e1f: $a0
	daa                                              ; $4e20: $27
	jr nc, jr_02e_4ea1                               ; $4e21: $30 $7e

	nop                                              ; $4e23: $00
	and b                                            ; $4e24: $a0
	pop bc                                           ; $4e25: $c1

jr_02e_4e26:
	daa                                              ; $4e26: $27
	inc c                                            ; $4e27: $0c
	ret z                                            ; $4e28: $c8

	dec h                                            ; $4e29: $25
	ld a, [bc]                                       ; $4e2a: $0a
	jp nz, $0625                                     ; $4e2b: $c2 $25 $06

	ret z                                            ; $4e2e: $c8

	inc h                                            ; $4e2f: $24
	ld a, [bc]                                       ; $4e30: $0a
	jp nz, $0624                                     ; $4e31: $c2 $24 $06

	ret z                                            ; $4e34: $c8

	daa                                              ; $4e35: $27
	ld a, [bc]                                       ; $4e36: $0a
	jp nz, $0627                                     ; $4e37: $c2 $27 $06

	ei                                               ; $4e3a: $fb
	sub b                                            ; $4e3b: $90
	jp z, $0c25                                      ; $4e3c: $ca $25 $0c

	jp nz, $0c25                                     ; $4e3f: $c2 $25 $0c

	ei                                               ; $4e42: $fb
	ld [bc], a                                       ; $4e43: $02
	pop bc                                           ; $4e44: $c1

jr_02e_4e45:
	dec h                                            ; $4e45: $25
	inc h                                            ; $4e46: $24
	ret                                              ; $4e47: $c9


	daa                                              ; $4e48: $27
	inc c                                            ; $4e49: $0c
	jp nz, $0c27                                     ; $4e4a: $c2 $27 $0c

	ret                                              ; $4e4d: $c9


	daa                                              ; $4e4e: $27
	ld b, $c2                                        ; $4e4f: $06 $c2
	daa                                              ; $4e51: $27
	ld b, $c8                                        ; $4e52: $06 $c8
	ld a, [hl]                                       ; $4e54: $7e
	dec de                                           ; $4e55: $1b
	nop                                              ; $4e56: $00
	xor e                                            ; $4e57: $ab
	daa                                              ; $4e58: $27

jr_02e_4e59:
	jr jr_02e_4ed9                                   ; $4e59: $18 $7e

	nop                                              ; $4e5b: $00
	and b                                            ; $4e5c: $a0
	dec h                                            ; $4e5d: $25
	inc c                                            ; $4e5e: $0c

jr_02e_4e5f:
	pop bc                                           ; $4e5f: $c1
	dec h                                            ; $4e60: $25
	inc c                                            ; $4e61: $0c
	nop                                              ; $4e62: $00

jr_02e_4e63:
	jr jr_02e_4e63                                   ; $4e63: $18 $fe

	rst $38                                          ; $4e65: $ff
	sub d                                            ; $4e66: $92
	pop de                                           ; $4e67: $d1
	call $0619                                       ; $4e68: $cd $19 $06
	call nz, $0619                                   ; $4e6b: $c4 $19 $06
	call $1b7e                                       ; $4e6e: $cd $7e $1b
	nop                                              ; $4e71: $00
	xor e                                            ; $4e72: $ab
	dec e                                            ; $4e73: $1d
	inc c                                            ; $4e74: $0c
	ld a, [hl]                                       ; $4e75: $7e
	nop                                              ; $4e76: $00
	and b                                            ; $4e77: $a0
	call nz, $0c1d                                   ; $4e78: $c4 $1d $0c
	call $061e                                       ; $4e7b: $cd $1e $06
	jp nz, $061e                                     ; $4e7e: $c2 $1e $06

jr_02e_4e81:
	call $1d7e                                       ; $4e81: $cd $7e $1d
	ld [de], a                                       ; $4e84: $12
	and b                                            ; $4e85: $a0
	jr nz, jr_02e_4eac                               ; $4e86: $20 $24

	ld a, [hl]                                       ; $4e88: $7e
	dec e                                            ; $4e89: $1d
	nop                                              ; $4e8a: $00
	and b                                            ; $4e8b: $a0
	call nz, $0a20                                   ; $4e8c: $c4 $20 $0a
	pop bc                                           ; $4e8f: $c1
	jr nz, jr_02e_4e94                               ; $4e90: $20 $02

	ld a, [hl]                                       ; $4e92: $7e
	nop                                              ; $4e93: $00

jr_02e_4e94:
	and b                                            ; $4e94: $a0
	call $0620                                       ; $4e95: $cd $20 $06
	jp nz, $0620                                     ; $4e98: $c2 $20 $06

	bit 7, [hl]                                      ; $4e9b: $cb $7e
	dec de                                           ; $4e9d: $1b
	nop                                              ; $4e9e: $00
	xor e                                            ; $4e9f: $ab
	daa                                              ; $4ea0: $27

jr_02e_4ea1:
	inc c                                            ; $4ea1: $0c
	ld a, [hl]                                       ; $4ea2: $7e
	nop                                              ; $4ea3: $00
	and b                                            ; $4ea4: $a0
	call nz, $0c27                                   ; $4ea5: $c4 $27 $0c
	sla h                                            ; $4ea8: $cb $24
	ld b, $c2                                        ; $4eaa: $06 $c2

jr_02e_4eac:
	inc h                                            ; $4eac: $24
	ld b, $cb                                        ; $4ead: $06 $cb
	dec h                                            ; $4eaf: $25
	inc c                                            ; $4eb0: $0c
	jp nz, $0c25                                     ; $4eb1: $c2 $25 $0c

	bit 7, [hl]                                      ; $4eb4: $cb $7e
	dec e                                            ; $4eb6: $1d
	jr jr_02e_4e59                                   ; $4eb7: $18 $a0

	ld [hl+], a                                      ; $4eb9: $22
	jr nc, jr_02e_4f3a                               ; $4eba: $30 $7e

	dec e                                            ; $4ebc: $1d
	nop                                              ; $4ebd: $00
	and b                                            ; $4ebe: $a0
	jp nz, $2422                                     ; $4ebf: $c2 $22 $24

	ld a, [hl]                                       ; $4ec2: $7e
	nop                                              ; $4ec3: $00
	and b                                            ; $4ec4: $a0
	db $fd                                           ; $4ec5: $fd
	ret nc                                           ; $4ec6: $d0

	add a                                            ; $4ec7: $87
	cp $d1                                           ; $4ec8: $fe $d1
	ld a, a                                          ; $4eca: $7f
	ld hl, $c2fb                                     ; $4ecb: $21 $fb $c2
	dec c                                            ; $4ece: $0d
	inc c                                            ; $4ecf: $0c
	nop                                              ; $4ed0: $00
	inc c                                            ; $4ed1: $0c
	ei                                               ; $4ed2: $fb
	inc bc                                           ; $4ed3: $03
	nop                                              ; $4ed4: $00
	inc c                                            ; $4ed5: $0c
	ld [$fb0c], sp                                   ; $4ed6: $08 $0c $fb

jr_02e_4ed9:
	dec c                                            ; $4ed9: $0d
	ld b, $00                                        ; $4eda: $06 $00
	ld b, $fb                                        ; $4edc: $06 $fb
	ld [bc], a                                       ; $4ede: $02
	cp [hl]                                          ; $4edf: $be
	inc c                                            ; $4ee0: $0c
	nop                                              ; $4ee1: $00
	dec c                                            ; $4ee2: $0d
	nop                                              ; $4ee3: $00
	dec c                                            ; $4ee4: $0d
	inc c                                            ; $4ee5: $0c
	dec c                                            ; $4ee6: $0d
	cp [hl]                                          ; $4ee7: $be
	nop                                              ; $4ee8: $00
	inc c                                            ; $4ee9: $0c
	dec c                                            ; $4eea: $0d
	ld [bc], a                                       ; $4eeb: $02
	nop                                              ; $4eec: $00
	ld a, [bc]                                       ; $4eed: $0a
	ei                                               ; $4eee: $fb
	dec c                                            ; $4eef: $0d
	inc c                                            ; $4ef0: $0c
	nop                                              ; $4ef1: $00
	inc c                                            ; $4ef2: $0c
	ei                                               ; $4ef3: $fb
	ld [bc], a                                       ; $4ef4: $02
	nop                                              ; $4ef5: $00
	inc c                                            ; $4ef6: $0c
	jp nz, $0c08                                     ; $4ef7: $c2 $08 $0c

	ei                                               ; $4efa: $fb
	jp nz, $060d                                     ; $4efb: $c2 $0d $06

	nop                                              ; $4efe: $00
	ld b, $fb                                        ; $4eff: $06 $fb
	ld [bc], a                                       ; $4f01: $02
	nop                                              ; $4f02: $00
	inc c                                            ; $4f03: $0c
	jp nz, $0cbe                                     ; $4f04: $c2 $be $0c

	dec c                                            ; $4f07: $0d
	nop                                              ; $4f08: $00
	dec c                                            ; $4f09: $0d
	inc c                                            ; $4f0a: $0c
	dec c                                            ; $4f0b: $0d
	cp [hl]                                          ; $4f0c: $be
	nop                                              ; $4f0d: $00
	inc c                                            ; $4f0e: $0c
	dec c                                            ; $4f0f: $0d
	ld [bc], a                                       ; $4f10: $02
	nop                                              ; $4f11: $00
	ld a, [bc]                                       ; $4f12: $0a
	ei                                               ; $4f13: $fb
	dec c                                            ; $4f14: $0d
	inc c                                            ; $4f15: $0c
	nop                                              ; $4f16: $00
	inc c                                            ; $4f17: $0c
	ei                                               ; $4f18: $fb
	ld [bc], a                                       ; $4f19: $02
	nop                                              ; $4f1a: $00
	inc c                                            ; $4f1b: $0c
	jp nz, $0c08                                     ; $4f1c: $c2 $08 $0c

	ei                                               ; $4f1f: $fb
	dec c                                            ; $4f20: $0d
	ld b, $00                                        ; $4f21: $06 $00
	ld b, $fb                                        ; $4f23: $06 $fb
	ld [bc], a                                       ; $4f25: $02
	cp [hl]                                          ; $4f26: $be
	inc c                                            ; $4f27: $0c
	nop                                              ; $4f28: $00
	dec c                                            ; $4f29: $0d
	nop                                              ; $4f2a: $00
	dec c                                            ; $4f2b: $0d
	inc c                                            ; $4f2c: $0c
	dec c                                            ; $4f2d: $0d
	cp [hl]                                          ; $4f2e: $be
	nop                                              ; $4f2f: $00
	inc c                                            ; $4f30: $0c
	dec c                                            ; $4f31: $0d
	ld [bc], a                                       ; $4f32: $02
	nop                                              ; $4f33: $00
	ld a, [bc]                                       ; $4f34: $0a
	ei                                               ; $4f35: $fb
	dec c                                            ; $4f36: $0d
	inc c                                            ; $4f37: $0c
	nop                                              ; $4f38: $00
	inc c                                            ; $4f39: $0c

jr_02e_4f3a:
	ei                                               ; $4f3a: $fb
	ld [bc], a                                       ; $4f3b: $02
	nop                                              ; $4f3c: $00
	inc c                                            ; $4f3d: $0c
	jp nz, $0c08                                     ; $4f3e: $c2 $08 $0c

	ei                                               ; $4f41: $fb
	jp nz, $060d                                     ; $4f42: $c2 $0d $06

	nop                                              ; $4f45: $00
	ld b, $fb                                        ; $4f46: $06 $fb
	ld [bc], a                                       ; $4f48: $02
	nop                                              ; $4f49: $00
	inc c                                            ; $4f4a: $0c
	jp nz, $0cbe                                     ; $4f4b: $c2 $be $0c

	dec c                                            ; $4f4e: $0d
	nop                                              ; $4f4f: $00
	ld [$0c0a], sp                                   ; $4f50: $08 $0a $0c
	cp [hl]                                          ; $4f53: $be
	pop de                                           ; $4f54: $d1
	ld a, a                                          ; $4f55: $7f
	ld hl, $c2fc                                     ; $4f56: $21 $fc $c2
	cp [hl]                                          ; $4f59: $be
	inc c                                            ; $4f5a: $0c
	dec c                                            ; $4f5b: $0d

jr_02e_4f5c:
	nop                                              ; $4f5c: $00
	ld de, $1400                                     ; $4f5d: $11 $00 $14
	nop                                              ; $4f60: $00
	dec c                                            ; $4f61: $0d
	ld [$c6be], sp                                   ; $4f62: $08 $be $c6
	ld [$c20c], sp                                   ; $4f65: $08 $0c $c2
	cp [hl]                                          ; $4f68: $be
	inc c                                            ; $4f69: $0c
	ld [$0c00], sp                                   ; $4f6a: $08 $00 $0c
	rrca                                             ; $4f6d: $0f
	nop                                              ; $4f6e: $00
	ld [$be00], sp                                   ; $4f6f: $08 $00 $be
	cp [hl]                                          ; $4f72: $be
	inc c                                            ; $4f73: $0c
	ld b, $00                                        ; $4f74: $06 $00
	ld a, [bc]                                       ; $4f76: $0a
	nop                                              ; $4f77: $00
	dec c                                            ; $4f78: $0d
	nop                                              ; $4f79: $00
	ld a, [bc]                                       ; $4f7a: $0a
	add hl, bc                                       ; $4f7b: $09
	cp [hl]                                          ; $4f7c: $be
	add $09                                          ; $4f7d: $c6 $09
	inc c                                            ; $4f7f: $0c
	jp nz, $0cbe                                     ; $4f80: $c2 $be $0c

	add hl, bc                                       ; $4f83: $09
	nop                                              ; $4f84: $00
	ld b, $08                                        ; $4f85: $06 $08
	nop                                              ; $4f87: $00

jr_02e_4f88:
	cp [hl]                                          ; $4f88: $be
	jp nz, $0c08                                     ; $4f89: $c2 $08 $0c

	jp nz, $0c08                                     ; $4f8c: $c2 $08 $0c

	db $fc                                           ; $4f8f: $fc
	ld [bc], a                                       ; $4f90: $02
	pop de                                           ; $4f91: $d1
	ld a, a                                          ; $4f92: $7f
	ld hl, $06c2                                     ; $4f93: $21 $c2 $06
	jr nc, jr_02e_4f5c                               ; $4f96: $30 $c4

	ld b, $18                                        ; $4f98: $06 $18
	add $06                                          ; $4f9a: $c6 $06
	inc c                                            ; $4f9c: $0c
	ei                                               ; $4f9d: $fb
	jp nz, $0306                                     ; $4f9e: $c2 $06 $03

	nop                                              ; $4fa1: $00
	inc bc                                           ; $4fa2: $03
	ei                                               ; $4fa3: $fb
	ld [bc], a                                       ; $4fa4: $02
	jp nz, $1808                                     ; $4fa5: $c2 $08 $18

	jp nz, $0c08                                     ; $4fa8: $c2 $08 $0c

	call nz, $0c08                                   ; $4fab: $c4 $08 $0c
	jp nz, $0a08                                     ; $4fae: $c2 $08 $0a

	add $08                                          ; $4fb1: $c6 $08
	ld b, $c2                                        ; $4fb3: $06 $c2
	ld b, $0a                                        ; $4fb5: $06 $0a
	add $06                                          ; $4fb7: $c6 $06

jr_02e_4fb9:
	ld b, $c2                                        ; $4fb9: $06 $c2
	ld [$c60a], sp                                   ; $4fbb: $08 $0a $c6
	ld [$c206], sp                                   ; $4fbe: $08 $06 $c2
	dec b                                            ; $4fc1: $05
	jr nc, jr_02e_4f88                               ; $4fc2: $30 $c4

	dec b                                            ; $4fc4: $05
	jr @-$38                                         ; $4fc5: $18 $c6

	dec b                                            ; $4fc7: $05
	inc c                                            ; $4fc8: $0c
	ei                                               ; $4fc9: $fb
	jp nz, $0305                                     ; $4fca: $c2 $05 $03

	nop                                              ; $4fcd: $00
	inc bc                                           ; $4fce: $03
	ei                                               ; $4fcf: $fb
	ld [bc], a                                       ; $4fd0: $02
	jp nz, $180a                                     ; $4fd1: $c2 $0a $18

	jp nz, $0c0a                                     ; $4fd4: $c2 $0a $0c

	call nz, $0c0a                                   ; $4fd7: $c4 $0a $0c
	jp nz, $0a0a                                     ; $4fda: $c2 $0a $0a

	add $0a                                          ; $4fdd: $c6 $0a
	ld b, $c2                                        ; $4fdf: $06 $c2
	ld de, $c60a                                     ; $4fe1: $11 $0a $c6
	ld de, $c206                                     ; $4fe4: $11 $06 $c2
	db $10                                           ; $4fe7: $10
	ld a, [bc]                                       ; $4fe8: $0a
	add $10                                          ; $4fe9: $c6 $10
	ld b, $c2                                        ; $4feb: $06 $c2
	rrca                                             ; $4fed: $0f
	jr nc, @-$3a                                     ; $4fee: $30 $c4

	rrca                                             ; $4ff0: $0f
	jr jr_02e_4fb9                                   ; $4ff1: $18 $c6

	rrca                                             ; $4ff3: $0f
	inc c                                            ; $4ff4: $0c
	ei                                               ; $4ff5: $fb
	jp nz, $030f                                     ; $4ff6: $c2 $0f $03

	nop                                              ; $4ff9: $00
	inc bc                                           ; $4ffa: $03
	ei                                               ; $4ffb: $fb
	ld [bc], a                                       ; $4ffc: $02
	jp nz, $1808                                     ; $4ffd: $c2 $08 $18

	jp nz, $0c08                                     ; $5000: $c2 $08 $0c

	call nz, $0c08                                   ; $5003: $c4 $08 $0c
	jp nz, $0a08                                     ; $5006: $c2 $08 $0a

	add $08                                          ; $5009: $c6 $08
	ld b, $c2                                        ; $500b: $06 $c2
	ld a, [bc]                                       ; $500d: $0a
	ld a, [bc]                                       ; $500e: $0a
	add $0a                                          ; $500f: $c6 $0a
	ld b, $c2                                        ; $5011: $06 $c2
	inc c                                            ; $5013: $0c
	ld a, [bc]                                       ; $5014: $0a
	add $0c                                          ; $5015: $c6 $0c
	ld b, $fb                                        ; $5017: $06 $fb
	jp nz, $0c0d                                     ; $5019: $c2 $0d $0c

	nop                                              ; $501c: $00
	inc c                                            ; $501d: $0c
	ei                                               ; $501e: $fb
	ld [bc], a                                       ; $501f: $02
	nop                                              ; $5020: $00
	inc h                                            ; $5021: $24
	ld [$000c], sp                                   ; $5022: $08 $0c $00
	inc c                                            ; $5025: $0c
	ld [$0006], sp                                   ; $5026: $08 $06 $00
	ld b, $08                                        ; $5029: $06 $08
	jr jr_02e_503a                                   ; $502b: $18 $0d

	inc c                                            ; $502d: $0c
	add $0d                                          ; $502e: $c6 $0d
	inc c                                            ; $5030: $0c
	jp nz, $1d7e                                     ; $5031: $c2 $7e $1d

	nop                                              ; $5034: $00
	and e                                            ; $5035: $a3
	ld [$7e18], sp                                   ; $5036: $08 $18 $7e
	nop                                              ; $5039: $00

jr_02e_503a:
	and b                                            ; $503a: $a0
	cp $ff                                           ; $503b: $fe $ff
	ret nc                                           ; $503d: $d0

	add a                                            ; $503e: $87

jr_02e_503f:
	cp $fc                                           ; $503f: $fe $fc
	ei                                               ; $5041: $fb
	cp [hl]                                          ; $5042: $be
	inc c                                            ; $5043: $0c
	jr nz, jr_02e_5063                               ; $5044: $20 $1d

	jr nz, jr_02e_5065                               ; $5046: $20 $1d

	jr nz, @+$21                                     ; $5048: $20 $1f

	jr nz, jr_02e_506b                               ; $504a: $20 $1f

	cp [hl]                                          ; $504c: $be
	ei                                               ; $504d: $fb
	inc bc                                           ; $504e: $03
	cp [hl]                                          ; $504f: $be
	inc c                                            ; $5050: $0c
	jr nz, jr_02e_5070                               ; $5051: $20 $1d

	jr nz, @+$1f                                     ; $5053: $20 $1d

	jr nz, jr_02e_5077                               ; $5055: $20 $20

	dec e                                            ; $5057: $1d
	jr nz, @-$40                                     ; $5058: $20 $be

	db $fc                                           ; $505a: $fc
	ld [bc], a                                       ; $505b: $02
	db $fd                                           ; $505c: $fd
	or c                                             ; $505d: $b1
	ld d, b                                          ; $505e: $50
	cp [hl]                                          ; $505f: $be
	inc c                                            ; $5060: $0c
	rra                                              ; $5061: $1f
	dec e                                            ; $5062: $1d

jr_02e_5063:
	jr nz, jr_02e_5082                               ; $5063: $20 $1d

jr_02e_5065:
	rra                                              ; $5065: $1f
	jr nz, jr_02e_5085                               ; $5066: $20 $1d

	jr nz, @-$40                                     ; $5068: $20 $be

	db $fd                                           ; $506a: $fd

jr_02e_506b:
	or c                                             ; $506b: $b1
	ld d, b                                          ; $506c: $50
	cp [hl]                                          ; $506d: $be
	inc c                                            ; $506e: $0c
	rra                                              ; $506f: $1f

jr_02e_5070:
	dec e                                            ; $5070: $1d
	jr nz, jr_02e_5090                               ; $5071: $20 $1d

	jr nz, jr_02e_5095                               ; $5073: $20 $20

	rra                                              ; $5075: $1f
	cp [hl]                                          ; $5076: $be

jr_02e_5077:
	jr nz, jr_02e_507f                               ; $5077: $20 $06

	jr nz, jr_02e_5081                               ; $5079: $20 $06

	ei                                               ; $507b: $fb
	rra                                              ; $507c: $1f
	jr @+$1f                                         ; $507d: $18 $1d

jr_02e_507f:
	jr jr_02e_503f                                   ; $507f: $18 $be

jr_02e_5081:
	inc c                                            ; $5081: $0c

jr_02e_5082:
	jr nz, jr_02e_50a3                               ; $5082: $20 $1f

	dec e                                            ; $5084: $1d

jr_02e_5085:
	rra                                              ; $5085: $1f
	cp [hl]                                          ; $5086: $be
	rra                                              ; $5087: $1f
	jr jr_02e_50a7                                   ; $5088: $18 $1d

	jr jr_02e_50ac                                   ; $508a: $18 $20

	db $10                                           ; $508c: $10
	jr nz, jr_02e_509f                               ; $508d: $20 $10

	dec e                                            ; $508f: $1d

jr_02e_5090:
	db $10                                           ; $5090: $10
	ei                                               ; $5091: $fb
	inc bc                                           ; $5092: $03
	cp [hl]                                          ; $5093: $be
	inc c                                            ; $5094: $0c

jr_02e_5095:
	jr nz, jr_02e_50b4                               ; $5095: $20 $1d

	jr nz, jr_02e_50b6                               ; $5097: $20 $1d

	jr nz, @-$40                                     ; $5099: $20 $be

	jr nz, jr_02e_50a3                               ; $509b: $20 $06

	jr nz, jr_02e_50a5                               ; $509d: $20 $06

jr_02e_509f:
	ld e, $0c                                        ; $509f: $1e $0c
	jr nz, jr_02e_50bb                               ; $50a1: $20 $18

jr_02e_50a3:
	dec e                                            ; $50a3: $1d
	inc c                                            ; $50a4: $0c

jr_02e_50a5:
	dec e                                            ; $50a5: $1d
	inc c                                            ; $50a6: $0c

jr_02e_50a7:
	inc hl                                           ; $50a7: $23
	inc b                                            ; $50a8: $04
	inc hl                                           ; $50a9: $23
	inc b                                            ; $50aa: $04
	inc hl                                           ; $50ab: $23

jr_02e_50ac:
	inc b                                            ; $50ac: $04
	jr nz, @+$32                                     ; $50ad: $20 $30

	cp $ff                                           ; $50af: $fe $ff
	ei                                               ; $50b1: $fb
	cp [hl]                                          ; $50b2: $be
	inc c                                            ; $50b3: $0c

jr_02e_50b4:
	rra                                              ; $50b4: $1f
	dec e                                            ; $50b5: $1d

jr_02e_50b6:
	jr nz, @+$1f                                     ; $50b6: $20 $1d

	cp [hl]                                          ; $50b8: $be
	ei                                               ; $50b9: $fb
	ld [bc], a                                       ; $50ba: $02

jr_02e_50bb:
	cp [hl]                                          ; $50bb: $be
	inc c                                            ; $50bc: $0c
	rra                                              ; $50bd: $1f
	dec e                                            ; $50be: $1d
	jr nz, jr_02e_50de                               ; $50bf: $20 $1d

	rra                                              ; $50c1: $1f
	dec e                                            ; $50c2: $1d
	jr nz, jr_02e_50e5                               ; $50c3: $20 $20

	cp [hl]                                          ; $50c5: $be
	ei                                               ; $50c6: $fb
	cp [hl]                                          ; $50c7: $be
	inc c                                            ; $50c8: $0c
	rra                                              ; $50c9: $1f
	dec e                                            ; $50ca: $1d
	jr nz, jr_02e_50ea                               ; $50cb: $20 $1d

	cp [hl]                                          ; $50cd: $be
	ei                                               ; $50ce: $fb
	ld [bc], a                                       ; $50cf: $02
	db $fd                                           ; $50d0: $fd
	or [hl]                                          ; $50d1: $b6
	cp c                                             ; $50d2: $b9
	sub c                                            ; $50d3: $91
	ld bc, $02c8                                     ; $50d4: $01 $c8 $02
	inc h                                            ; $50d7: $24
	jr jr_02e_50fe                                   ; $50d8: $18 $24

jr_02e_50da:
	jr jr_02e_50da                                   ; $50da: $18 $fe

	or l                                             ; $50dc: $b5
	sub c                                            ; $50dd: $91

jr_02e_50de:
	ld bc, $02c8                                     ; $50de: $01 $c8 $02
	dec h                                            ; $50e1: $25
	jr jr_02e_5104                                   ; $50e2: $18 $20

	inc c                                            ; $50e4: $0c

jr_02e_50e5:
	inc h                                            ; $50e5: $24
	inc c                                            ; $50e6: $0c
	cp [hl]                                          ; $50e7: $be
	jr jr_02e_5113                                   ; $50e8: $18 $29

jr_02e_50ea:
	dec h                                            ; $50ea: $25
	dec l                                            ; $50eb: $2d
	add hl, hl                                       ; $50ec: $29
	daa                                              ; $50ed: $27
	inc h                                            ; $50ee: $24
	cp [hl]                                          ; $50ef: $be
	ld [hl+], a                                      ; $50f0: $22
	jr jr_02e_5113                                   ; $50f1: $18 $20

	inc c                                            ; $50f3: $0c
	dec h                                            ; $50f4: $25
	inc c                                            ; $50f5: $0c
	cp [hl]                                          ; $50f6: $be
	jr jr_02e_5122                                   ; $50f7: $18 $29

	dec h                                            ; $50f9: $25
	cpl                                              ; $50fa: $2f
	inc l                                            ; $50fb: $2c
	add hl, hl                                       ; $50fc: $29
	dec h                                            ; $50fd: $25

jr_02e_50fe:
	cp [hl]                                          ; $50fe: $be
	ld [hl+], a                                      ; $50ff: $22
	jr @+$20                                         ; $5100: $18 $1e

	inc c                                            ; $5102: $0c
	dec h                                            ; $5103: $25

jr_02e_5104:
	inc c                                            ; $5104: $0c
	cp [hl]                                          ; $5105: $be
	jr @+$2b                                         ; $5106: $18 $29

	dec h                                            ; $5108: $25
	ld sp, $2b2e                                     ; $5109: $31 $2e $2b
	dec h                                            ; $510c: $25
	cp [hl]                                          ; $510d: $be
	add hl, hl                                       ; $510e: $29
	jr @+$22                                         ; $510f: $18 $20

	inc c                                            ; $5111: $0c
	inc h                                            ; $5112: $24

jr_02e_5113:
	inc c                                            ; $5113: $0c
	cp [hl]                                          ; $5114: $be
	jr jr_02e_513e                                   ; $5115: $18 $27

	inc h                                            ; $5117: $24
	inc l                                            ; $5118: $2c
	add hl, hl                                       ; $5119: $29
	ld h, $22                                        ; $511a: $26 $22
	cp [hl]                                          ; $511c: $be
	or l                                             ; $511d: $b5
	sub c                                            ; $511e: $91
	ld bc, $02c8                                     ; $511f: $01 $c8 $02

jr_02e_5122:
	daa                                              ; $5122: $27
	jr jr_02e_5143                                   ; $5123: $18 $1e

	inc c                                            ; $5125: $0c
	ld [hl+], a                                      ; $5126: $22
	inc c                                            ; $5127: $0c
	cp [hl]                                          ; $5128: $be
	jr jr_02e_5150                                   ; $5129: $18 $25

	ld [hl+], a                                      ; $512b: $22
	ld a, [hl+]                                      ; $512c: $2a
	daa                                              ; $512d: $27
	inc h                                            ; $512e: $24
	ld hl, $22be                                     ; $512f: $21 $be $22
	jr @+$1f                                         ; $5132: $18 $1d

	inc c                                            ; $5134: $0c
	dec h                                            ; $5135: $25
	inc c                                            ; $5136: $0c
	cp [hl]                                          ; $5137: $be
	jr jr_02e_5163                                   ; $5138: $18 $29

	dec h                                            ; $513a: $25
	ld l, $29                                        ; $513b: $2e $29
	dec h                                            ; $513d: $25

jr_02e_513e:
	ld [hl+], a                                      ; $513e: $22
	cp [hl]                                          ; $513f: $be
	dec h                                            ; $5140: $25
	jr @+$21                                         ; $5141: $18 $1f

jr_02e_5143:
	inc c                                            ; $5143: $0c
	ld [hl+], a                                      ; $5144: $22
	inc c                                            ; $5145: $0c
	cp [hl]                                          ; $5146: $be
	jr jr_02e_516e                                   ; $5147: $18 $25

	ld [hl+], a                                      ; $5149: $22
	dec hl                                           ; $514a: $2b
	dec h                                            ; $514b: $25
	ld [hl+], a                                      ; $514c: $22
	rra                                              ; $514d: $1f
	cp [hl]                                          ; $514e: $be
	dec h                                            ; $514f: $25

jr_02e_5150:
	jr jr_02e_5170                                   ; $5150: $18 $1e

	inc c                                            ; $5152: $0c
	jr nz, @+$0e                                     ; $5153: $20 $0c

	cp [hl]                                          ; $5155: $be
	jr jr_02e_517d                                   ; $5156: $18 $25

	jr nz, jr_02e_5181                               ; $5158: $20 $27

	inc h                                            ; $515a: $24
	jr nz, jr_02e_517b                               ; $515b: $20 $1e

	cp [hl]                                          ; $515d: $be
	or l                                             ; $515e: $b5
	sub c                                            ; $515f: $91
	ld bc, $02c8                                     ; $5160: $01 $c8 $02

jr_02e_5163:
	dec h                                            ; $5163: $25
	jr jr_02e_5186                                   ; $5164: $18 $20

	inc c                                            ; $5166: $0c
	inc h                                            ; $5167: $24
	inc c                                            ; $5168: $0c
	cp [hl]                                          ; $5169: $be
	jr jr_02e_5195                                   ; $516a: $18 $29

	dec h                                            ; $516c: $25
	dec l                                            ; $516d: $2d

jr_02e_516e:
	add hl, hl                                       ; $516e: $29
	daa                                              ; $516f: $27

jr_02e_5170:
	inc h                                            ; $5170: $24
	cp [hl]                                          ; $5171: $be
	ld [hl+], a                                      ; $5172: $22
	jr jr_02e_5195                                   ; $5173: $18 $20

	inc c                                            ; $5175: $0c
	dec h                                            ; $5176: $25
	inc c                                            ; $5177: $0c
	cp [hl]                                          ; $5178: $be
	jr jr_02e_51a4                                   ; $5179: $18 $29

jr_02e_517b:
	dec h                                            ; $517b: $25
	cpl                                              ; $517c: $2f

jr_02e_517d:
	inc l                                            ; $517d: $2c
	add hl, hl                                       ; $517e: $29
	dec h                                            ; $517f: $25
	cp [hl]                                          ; $5180: $be

jr_02e_5181:
	ld [hl+], a                                      ; $5181: $22
	jr @+$20                                         ; $5182: $18 $1e

	inc c                                            ; $5184: $0c
	dec h                                            ; $5185: $25

jr_02e_5186:
	inc c                                            ; $5186: $0c
	cp [hl]                                          ; $5187: $be
	jr @+$2b                                         ; $5188: $18 $29

	dec h                                            ; $518a: $25
	ld sp, $2e2e                                     ; $518b: $31 $2e $2e
	dec hl                                           ; $518e: $2b
	cp [hl]                                          ; $518f: $be
	inc l                                            ; $5190: $2c
	jr @+$22                                         ; $5191: $18 $20

	inc c                                            ; $5193: $0c
	inc hl                                           ; $5194: $23

jr_02e_5195:
	inc c                                            ; $5195: $0c
	cp [hl]                                          ; $5196: $be
	jr jr_02e_51c0                                   ; $5197: $18 $27

	inc hl                                           ; $5199: $23
	inc l                                            ; $519a: $2c
	add hl, hl                                       ; $519b: $29
	ld h, $22                                        ; $519c: $26 $22
	cp [hl]                                          ; $519e: $be
	or l                                             ; $519f: $b5
	sub c                                            ; $51a0: $91
	ld bc, $02c8                                     ; $51a1: $01 $c8 $02

jr_02e_51a4:
	daa                                              ; $51a4: $27
	jr jr_02e_51c5                                   ; $51a5: $18 $1e

	inc c                                            ; $51a7: $0c
	ld [hl+], a                                      ; $51a8: $22
	inc c                                            ; $51a9: $0c
	cp [hl]                                          ; $51aa: $be
	jr jr_02e_51d2                                   ; $51ab: $18 $25

	ld [hl+], a                                      ; $51ad: $22
	ld a, [hl+]                                      ; $51ae: $2a
	daa                                              ; $51af: $27
	inc h                                            ; $51b0: $24
	ld hl, $22be                                     ; $51b1: $21 $be $22
	jr jr_02e_51d3                                   ; $51b4: $18 $1d

	inc c                                            ; $51b6: $0c
	dec h                                            ; $51b7: $25
	inc c                                            ; $51b8: $0c
	cp [hl]                                          ; $51b9: $be
	jr jr_02e_51e5                                   ; $51ba: $18 $29

	dec h                                            ; $51bc: $25
	ld l, $29                                        ; $51bd: $2e $29
	dec h                                            ; $51bf: $25

jr_02e_51c0:
	ld [hl+], a                                      ; $51c0: $22
	cp [hl]                                          ; $51c1: $be
	dec h                                            ; $51c2: $25
	jr jr_02e_51e4                                   ; $51c3: $18 $1f

jr_02e_51c5:
	inc c                                            ; $51c5: $0c
	dec h                                            ; $51c6: $25
	inc c                                            ; $51c7: $0c
	add hl, hl                                       ; $51c8: $29
	jr jr_02e_51f0                                   ; $51c9: $18 $25

	inc c                                            ; $51cb: $0c
	add hl, hl                                       ; $51cc: $29
	inc c                                            ; $51cd: $0c
	ld l, $18                                        ; $51ce: $2e $18
	sub [hl]                                         ; $51d0: $96
	ret z                                            ; $51d1: $c8

jr_02e_51d2:
	inc b                                            ; $51d2: $04

jr_02e_51d3:
	cp [hl]                                          ; $51d3: $be
	inc c                                            ; $51d4: $0c
	dec l                                            ; $51d5: $2d
	ld a, [hl+]                                      ; $51d6: $2a
	ld a, [hl+]                                      ; $51d7: $2a
	daa                                              ; $51d8: $27
	daa                                              ; $51d9: $27
	inc h                                            ; $51da: $24
	cp [hl]                                          ; $51db: $be
	sub [hl]                                         ; $51dc: $96
	ret z                                            ; $51dd: $c8

	ld [bc], a                                       ; $51de: $02
	dec h                                            ; $51df: $25
	jr jr_02e_5202                                   ; $51e0: $18 $20

	inc c                                            ; $51e2: $0c
	inc h                                            ; $51e3: $24

jr_02e_51e4:
	inc c                                            ; $51e4: $0c

jr_02e_51e5:
	cp [hl]                                          ; $51e5: $be
	jr jr_02e_5211                                   ; $51e6: $18 $29

	inc h                                            ; $51e8: $24
	inc l                                            ; $51e9: $2c
	add hl, hl                                       ; $51ea: $29
	cp [hl]                                          ; $51eb: $be
	or l                                             ; $51ec: $b5
	jp nz, $5002                                     ; $51ed: $c2 $02 $50

jr_02e_51f0:
	rlca                                             ; $51f0: $07
	cp [hl]                                          ; $51f1: $be
	inc c                                            ; $51f2: $0c
	inc l                                            ; $51f3: $2c
	ld a, [hl+]                                      ; $51f4: $2a
	add hl, hl                                       ; $51f5: $29
	dec h                                            ; $51f6: $25
	cp [hl]                                          ; $51f7: $be
	or l                                             ; $51f8: $b5
	pop bc                                           ; $51f9: $c1
	ld [bc], a                                       ; $51fa: $02
	nop                                              ; $51fb: $00
	nop                                              ; $51fc: $00
	ld [hl], h                                       ; $51fd: $74
	db $fd                                           ; $51fe: $fd
	ei                                               ; $51ff: $fb
	ld d, d                                          ; $5200: $52
	ld [hl], b                                       ; $5201: $70

jr_02e_5202:
	db $fd                                           ; $5202: $fd
	ei                                               ; $5203: $fb
	ld d, d                                          ; $5204: $52
	ld h, l                                          ; $5205: $65
	db $fd                                           ; $5206: $fd
	ei                                               ; $5207: $fb
	ld d, d                                          ; $5208: $52
	ld [hl], b                                       ; $5209: $70
	db $fd                                           ; $520a: $fd
	ei                                               ; $520b: $fb
	ld d, d                                          ; $520c: $52
	ld [hl], d                                       ; $520d: $72
	db $fd                                           ; $520e: $fd
	ei                                               ; $520f: $fb
	ld d, d                                          ; $5210: $52

jr_02e_5211:
	ld h, d                                          ; $5211: $62
	db $fd                                           ; $5212: $fd
	ei                                               ; $5213: $fb
	ld d, d                                          ; $5214: $52
	ld h, l                                          ; $5215: $65
	db $fd                                           ; $5216: $fd
	ei                                               ; $5217: $fb
	ld d, d                                          ; $5218: $52
	ld h, d                                          ; $5219: $62
	db $fd                                           ; $521a: $fd
	ei                                               ; $521b: $fb
	ld d, d                                          ; $521c: $52
	ld [hl], d                                       ; $521d: $72
	db $fd                                           ; $521e: $fd
	ei                                               ; $521f: $fb
	ld d, d                                          ; $5220: $52
	ld h, e                                          ; $5221: $63
	db $fd                                           ; $5222: $fd
	ei                                               ; $5223: $fb
	ld d, d                                          ; $5224: $52
	ld h, a                                          ; $5225: $67
	db $fd                                           ; $5226: $fd
	ei                                               ; $5227: $fb
	ld d, d                                          ; $5228: $52
	ld h, e                                          ; $5229: $63
	db $fd                                           ; $522a: $fd
	ei                                               ; $522b: $fb
	ld d, d                                          ; $522c: $52
	or c                                             ; $522d: $b1
	add c                                            ; $522e: $81
	ret z                                            ; $522f: $c8

	inc b                                            ; $5230: $04
	ld [hl], b                                       ; $5231: $70
	cp [hl]                                          ; $5232: $be
	inc c                                            ; $5233: $0c
	inc l                                            ; $5234: $2c
	add hl, hl                                       ; $5235: $29
	add hl, hl                                       ; $5236: $29
	dec h                                            ; $5237: $25
	cp [hl]                                          ; $5238: $be
	or c                                             ; $5239: $b1
	and c                                            ; $523a: $a1
	ret z                                            ; $523b: $c8

	ld b, $20                                        ; $523c: $06 $20
	jr jr_02e_525d                                   ; $523e: $18 $1d

	jr jr_02e_52b6                                   ; $5240: $18 $74

	db $fd                                           ; $5242: $fd
	ei                                               ; $5243: $fb
	ld d, d                                          ; $5244: $52
	ld [hl], b                                       ; $5245: $70
	db $fd                                           ; $5246: $fd
	ei                                               ; $5247: $fb
	ld d, d                                          ; $5248: $52
	ld h, l                                          ; $5249: $65
	db $fd                                           ; $524a: $fd
	ei                                               ; $524b: $fb
	ld d, d                                          ; $524c: $52
	ld [hl], b                                       ; $524d: $70
	db $fd                                           ; $524e: $fd
	ei                                               ; $524f: $fb
	ld d, d                                          ; $5250: $52
	ld [hl], d                                       ; $5251: $72
	db $fd                                           ; $5252: $fd
	ei                                               ; $5253: $fb
	ld d, d                                          ; $5254: $52
	ld h, d                                          ; $5255: $62
	db $fd                                           ; $5256: $fd
	ei                                               ; $5257: $fb
	ld d, d                                          ; $5258: $52
	ld h, l                                          ; $5259: $65
	db $fd                                           ; $525a: $fd
	ei                                               ; $525b: $fb
	ld d, d                                          ; $525c: $52

jr_02e_525d:
	ld h, d                                          ; $525d: $62
	db $fd                                           ; $525e: $fd
	ei                                               ; $525f: $fb
	ld d, d                                          ; $5260: $52
	ret z                                            ; $5261: $c8

	ld [hl], b                                       ; $5262: $70
	jr nz, jr_02e_5295                               ; $5263: $20 $30

	jr nz, jr_02e_5297                               ; $5265: $20 $30

	or c                                             ; $5267: $b1
	and c                                            ; $5268: $a1
	ld h, h                                          ; $5269: $64
	ld [bc], a                                       ; $526a: $02
	cp [hl]                                          ; $526b: $be
	inc c                                            ; $526c: $0c
	dec h                                            ; $526d: $25
	jr nz, jr_02e_5290                               ; $526e: $20 $20

	dec h                                            ; $5270: $25
	dec h                                            ; $5271: $25
	add hl, hl                                       ; $5272: $29
	add hl, hl                                       ; $5273: $29
	inc l                                            ; $5274: $2c
	cp [hl]                                          ; $5275: $be
	or l                                             ; $5276: $b5
	and c                                            ; $5277: $a1

jr_02e_5278:
	ld [bc], a                                       ; $5278: $02
	nop                                              ; $5279: $00
	nop                                              ; $527a: $00
	ld [hl], e                                       ; $527b: $73
	db $fd                                           ; $527c: $fd
	ei                                               ; $527d: $fb
	ld d, d                                          ; $527e: $52
	ld [hl], b                                       ; $527f: $70
	db $fd                                           ; $5280: $fd
	ei                                               ; $5281: $fb
	ld d, d                                          ; $5282: $52

jr_02e_5283:
	ld h, l                                          ; $5283: $65
	db $fd                                           ; $5284: $fd
	ei                                               ; $5285: $fb
	ld d, d                                          ; $5286: $52
	ld [hl], b                                       ; $5287: $70
	db $fd                                           ; $5288: $fd
	ei                                               ; $5289: $fb
	ld d, d                                          ; $528a: $52
	ld h, l                                          ; $528b: $65
	db $fd                                           ; $528c: $fd
	ei                                               ; $528d: $fb
	ld d, d                                          ; $528e: $52
	ld [hl], b                                       ; $528f: $70

jr_02e_5290:
	db $fd                                           ; $5290: $fd
	ei                                               ; $5291: $fb
	ld d, d                                          ; $5292: $52
	ld h, l                                          ; $5293: $65
	db $fd                                           ; $5294: $fd

jr_02e_5295:
	ei                                               ; $5295: $fb
	ld d, d                                          ; $5296: $52

jr_02e_5297:
	ld [hl], b                                       ; $5297: $70
	rst JumpTable                                          ; $5298: $c7
	dec hl                                           ; $5299: $2b
	inc c                                            ; $529a: $0c
	push bc                                          ; $529b: $c5
	dec hl                                           ; $529c: $2b
	ld b, $c3                                        ; $529d: $06 $c3
	dec hl                                           ; $529f: $2b
	ld b, $c5                                        ; $52a0: $06 $c5

jr_02e_52a2:
	inc l                                            ; $52a2: $2c
	inc c                                            ; $52a3: $0c

jr_02e_52a4:
	call nz, $062c                                   ; $52a4: $c4 $2c $06
	jp $062c                                         ; $52a7: $c3 $2c $06


	ld h, l                                          ; $52aa: $65
	db $fd                                           ; $52ab: $fd
	ei                                               ; $52ac: $fb
	ld d, d                                          ; $52ad: $52
	ld h, d                                          ; $52ae: $62
	db $fd                                           ; $52af: $fd
	ei                                               ; $52b0: $fb
	ld d, d                                          ; $52b1: $52
	ld h, l                                          ; $52b2: $65
	db $fd                                           ; $52b3: $fd
	ei                                               ; $52b4: $fb
	ld d, d                                          ; $52b5: $52

jr_02e_52b6:
	ld [hl], d                                       ; $52b6: $72
	db $fd                                           ; $52b7: $fd
	ei                                               ; $52b8: $fb
	ld d, d                                          ; $52b9: $52
	ld h, d                                          ; $52ba: $62
	db $fd                                           ; $52bb: $fd
	ei                                               ; $52bc: $fb
	ld d, d                                          ; $52bd: $52
	ld [hl], b                                       ; $52be: $70
	rst JumpTable                                          ; $52bf: $c7
	daa                                              ; $52c0: $27
	jr nc, jr_02e_5278                               ; $52c1: $30 $b5

	or e                                             ; $52c3: $b3
	inc bc                                           ; $52c4: $03
	nop                                              ; $52c5: $00
	nop                                              ; $52c6: $00
	sub a                                            ; $52c7: $97
	ld l, a                                          ; $52c8: $6f
	inc l                                            ; $52c9: $2c
	jr nc, @-$2c                                     ; $52ca: $30 $d2

	ld a, [hl+]                                      ; $52cc: $2a
	jr nc, jr_02e_52a2                               ; $52cd: $30 $d3

	add hl, hl                                       ; $52cf: $29
	jr nc, jr_02e_52a4                               ; $52d0: $30 $d2

	jr z, jr_02e_5304                                ; $52d2: $28 $30

	pop de                                           ; $52d4: $d1
	sub a                                            ; $52d5: $97
	ccf                                              ; $52d6: $3f
	ld a, [hl+]                                      ; $52d7: $2a
	scf                                              ; $52d8: $37
	sub a                                            ; $52d9: $97
	nop                                              ; $52da: $00
	rst JumpTable                                          ; $52db: $c7
	ld a, [hl+]                                      ; $52dc: $2a
	ld a, [bc]                                       ; $52dd: $0a
	push bc                                          ; $52de: $c5
	ld a, [hl+]                                      ; $52df: $2a
	rlca                                             ; $52e0: $07

jr_02e_52e1:
	sub a                                            ; $52e1: $97
	ld l, d                                          ; $52e2: $6a
	daa                                              ; $52e3: $27
	inc c                                            ; $52e4: $0c
	daa                                              ; $52e5: $27
	inc c                                            ; $52e6: $0c
	sub a                                            ; $52e7: $97
	ld c, a                                          ; $52e8: $4f
	inc h                                            ; $52e9: $24
	jr z, jr_02e_5283                                ; $52ea: $28 $97

	nop                                              ; $52ec: $00
	add $24                                          ; $52ed: $c6 $24
	ld [$a1b5], sp                                   ; $52ef: $08 $b5 $a1
	ld bc, $0750                                     ; $52f2: $01 $50 $07
	inc h                                            ; $52f5: $24
	jr jr_02e_531c                                   ; $52f6: $18 $24

jr_02e_52f8:
	jr jr_02e_52f8                                   ; $52f8: $18 $fe

	rst $38                                          ; $52fa: $ff
	jp z, $22d1                                      ; $52fb: $ca $d1 $22

	inc c                                            ; $52fe: $0c
	ret z                                            ; $52ff: $c8

	pop de                                           ; $5300: $d1
	ld [hl+], a                                      ; $5301: $22
	ld b, $c6                                        ; $5302: $06 $c6

jr_02e_5304:
	pop de                                           ; $5304: $d1
	ld [hl+], a                                      ; $5305: $22
	ld b, $fd                                        ; $5306: $06 $fd
	or [hl]                                          ; $5308: $b6
	cp c                                             ; $5309: $b9
	ld [hl], c                                       ; $530a: $71
	ld [bc], a                                       ; $530b: $02

jr_02e_530c:
	ret z                                            ; $530c: $c8

	ld [bc], a                                       ; $530d: $02
	ld a, [hl]                                       ; $530e: $7e

jr_02e_530f:
	inc l                                            ; $530f: $2c
	add hl, hl                                       ; $5310: $29
	xor c                                            ; $5311: $a9

jr_02e_5312:
	inc l                                            ; $5312: $2c
	jr jr_02e_5341                                   ; $5313: $18 $2c

jr_02e_5315:
	jr jr_02e_5315                                   ; $5315: $18 $fe

	or l                                             ; $5317: $b5
	sub c                                            ; $5318: $91
	ld [bc], a                                       ; $5319: $02
	ret z                                            ; $531a: $c8

	dec b                                            ; $531b: $05

jr_02e_531c:
	ld a, [hl]                                       ; $531c: $7e
	inc l                                            ; $531d: $2c
	inc a                                            ; $531e: $3c
	xor c                                            ; $531f: $a9
	scf                                              ; $5320: $37
	inc bc                                           ; $5321: $03
	jr c, jr_02e_5351                                ; $5322: $38 $2d

	dec [hl]                                         ; $5324: $35
	jr nc, @-$35                                     ; $5325: $30 $c9

	ld sp, $3130                                     ; $5327: $31 $30 $31
	ld [bc], a                                       ; $532a: $02
	ret z                                            ; $532b: $c8

	inc sp                                           ; $532c: $33
	ld l, $b1                                        ; $532d: $2e $b1
	ld [hl], c                                       ; $532f: $71
	inc a                                            ; $5330: $3c
	dec b                                            ; $5331: $05
	ld sp, $b190                                     ; $5332: $31 $90 $b1
	sub c                                            ; $5335: $91
	ret z                                            ; $5336: $c8

	ld [bc], a                                       ; $5337: $02
	ld sp, $3118                                     ; $5338: $31 $18 $31
	jr @-$4d                                         ; $533b: $18 $b1

	sub c                                            ; $533d: $91
	ret z                                            ; $533e: $c8

	dec b                                            ; $533f: $05
	dec a                                            ; $5340: $3d

jr_02e_5341:
	jr nc, jr_02e_530c                               ; $5341: $30 $c9

	ld a, [hl-]                                      ; $5343: $3a
	jr nc, jr_02e_537e                               ; $5344: $30 $38

	jr nc, jr_02e_5380                               ; $5346: $30 $38

	ld [bc], a                                       ; $5348: $02
	ld a, [hl-]                                      ; $5349: $3a
	ld l, $b1                                        ; $534a: $2e $b1
	ld [hl], c                                       ; $534c: $71
	ld d, b                                          ; $534d: $50
	rlca                                             ; $534e: $07

jr_02e_534f:
	jr c, jr_02e_52e1                                ; $534f: $38 $90

jr_02e_5351:
	or c                                             ; $5351: $b1
	and c                                            ; $5352: $a1
	ret z                                            ; $5353: $c8

	ld [bc], a                                       ; $5354: $02
	dec [hl]                                         ; $5355: $35
	jr jr_02e_538d                                   ; $5356: $18 $35

	jr jr_02e_530f                                   ; $5358: $18 $b5

	sub c                                            ; $535a: $91

jr_02e_535b:
	ld [bc], a                                       ; $535b: $02
	ret z                                            ; $535c: $c8

	ld b, $7e                                        ; $535d: $06 $7e
	inc l                                            ; $535f: $2c
	inc a                                            ; $5360: $3c
	xor c                                            ; $5361: $a9
	dec [hl]                                         ; $5362: $35
	inc bc                                           ; $5363: $03
	ld [hl], $45                                     ; $5364: $36 $45
	sub [hl]                                         ; $5366: $96
	ret z                                            ; $5367: $c8

	inc b                                            ; $5368: $04
	ld [hl], $18                                     ; $5369: $36 $18
	jr c, jr_02e_539d                                ; $536b: $38 $30

	inc sp                                           ; $536d: $33
	jr nc, jr_02e_53a3                               ; $536e: $30 $33

	inc bc                                           ; $5370: $03
	dec [hl]                                         ; $5371: $35
	dec l                                            ; $5372: $2d
	inc sp                                           ; $5373: $33
	jr nc, jr_02e_53a7                               ; $5374: $30 $31

	jr nc, jr_02e_53ab                               ; $5376: $30 $33

	jr jr_02e_53af                                   ; $5378: $18 $35

	jr jr_02e_5312                                   ; $537a: $18 $96

	ret z                                            ; $537c: $c8

	dec b                                            ; $537d: $05

jr_02e_537e:
	dec [hl]                                         ; $537e: $35
	ld c, b                                          ; $537f: $48

jr_02e_5380:
	inc sp                                           ; $5380: $33
	jr @-$4d                                         ; $5381: $18 $b1

	add c                                            ; $5383: $81
	ld h, h                                          ; $5384: $64
	rlca                                             ; $5385: $07
	inc sp                                           ; $5386: $33
	ld h, b                                          ; $5387: $60
	jp z, $483a                                      ; $5388: $ca $3a $48

	sub [hl]                                         ; $538b: $96
	ret z                                            ; $538c: $c8

jr_02e_538d:
	dec b                                            ; $538d: $05
	jr c, @+$1a                                      ; $538e: $38 $18

	jr c, @+$32                                      ; $5390: $38 $30

	sub [hl]                                         ; $5392: $96
	ret z                                            ; $5393: $c8

	ld [bc], a                                       ; $5394: $02
	inc l                                            ; $5395: $2c
	jr @+$2e                                         ; $5396: $18 $2c

	jr jr_02e_534f                                   ; $5398: $18 $b5

	and c                                            ; $539a: $a1
	ld [bc], a                                       ; $539b: $02
	ret z                                            ; $539c: $c8

jr_02e_539d:
	dec b                                            ; $539d: $05
	ld a, [hl]                                       ; $539e: $7e
	inc l                                            ; $539f: $2c
	ld [hl-], a                                      ; $53a0: $32
	xor c                                            ; $53a1: $a9
	scf                                              ; $53a2: $37

jr_02e_53a3:
	inc b                                            ; $53a3: $04
	jr c, jr_02e_53ea                                ; $53a4: $38 $44

	dec [hl]                                         ; $53a6: $35

jr_02e_53a7:
	jr jr_02e_53da                                   ; $53a7: $18 $31

	jr nc, jr_02e_53dd                               ; $53a9: $30 $32

jr_02e_53ab:
	inc b                                            ; $53ab: $04
	ret z                                            ; $53ac: $c8

	inc sp                                           ; $53ad: $33
	inc l                                            ; $53ae: $2c

jr_02e_53af:
	inc sp                                           ; $53af: $33
	inc c                                            ; $53b0: $0c
	dec [hl]                                         ; $53b1: $35
	inc c                                            ; $53b2: $0c
	inc sp                                           ; $53b3: $33
	inc c                                            ; $53b4: $0c
	sub [hl]                                         ; $53b5: $96
	inc a                                            ; $53b6: $3c
	ld b, $31                                        ; $53b7: $06 $31
	ld l, h                                          ; $53b9: $6c
	jr nc, jr_02e_53bf                               ; $53ba: $30 $03

	or c                                             ; $53bc: $b1
	and c                                            ; $53bd: $a1
	ret z                                            ; $53be: $c8

jr_02e_53bf:
	ld [bc], a                                       ; $53bf: $02
	ld sp, $3115                                     ; $53c0: $31 $15 $31
	jr jr_02e_535b                                   ; $53c3: $18 $96

	ld h, h                                          ; $53c5: $64
	rlca                                             ; $53c6: $07
	dec a                                            ; $53c7: $3d
	ld c, b                                          ; $53c8: $48
	sub [hl]                                         ; $53c9: $96
	ret z                                            ; $53ca: $c8

	dec b                                            ; $53cb: $05
	ld a, [hl-]                                      ; $53cc: $3a
	jr @+$3a                                         ; $53cd: $18 $38

	jr nc, jr_02e_540a                               ; $53cf: $30 $39

	inc b                                            ; $53d1: $04
	ld a, [hl-]                                      ; $53d2: $3a
	inc l                                            ; $53d3: $2c
	dec sp                                           ; $53d4: $3b
	dec c                                            ; $53d5: $0d
	ret                                              ; $53d6: $c9


	ld a, [hl-]                                      ; $53d7: $3a
	ld c, $38                                        ; $53d8: $0e $38

jr_02e_53da:
	ld a, [bc]                                       ; $53da: $0a
	ld a, [hl-]                                      ; $53db: $3a
	dec bc                                           ; $53dc: $0b

jr_02e_53dd:
	or c                                             ; $53dd: $b1
	and c                                            ; $53de: $a1
	inc a                                            ; $53df: $3c
	ld b, $38                                        ; $53e0: $06 $38
	ld c, b                                          ; $53e2: $48
	inc [hl]                                         ; $53e3: $34
	inc b                                            ; $53e4: $04
	or c                                             ; $53e5: $b1
	or c                                             ; $53e6: $b1
	ret z                                            ; $53e7: $c8

	inc bc                                           ; $53e8: $03
	dec [hl]                                         ; $53e9: $35

jr_02e_53ea:
	inc l                                            ; $53ea: $2c
	dec [hl]                                         ; $53eb: $35
	jr jr_02e_53a3                                   ; $53ec: $18 $b5

	sub c                                            ; $53ee: $91
	ld [bc], a                                       ; $53ef: $02
	inc a                                            ; $53f0: $3c
	dec b                                            ; $53f1: $05
	ld a, [hl]                                       ; $53f2: $7e
	inc l                                            ; $53f3: $2c
	inc a                                            ; $53f4: $3c
	xor c                                            ; $53f5: $a9
	dec [hl]                                         ; $53f6: $35
	inc b                                            ; $53f7: $04
	ld [hl], $44                                     ; $53f8: $36 $44
	sub [hl]                                         ; $53fa: $96
	ret z                                            ; $53fb: $c8

	dec b                                            ; $53fc: $05
	ld [hl], $0c                                     ; $53fd: $36 $0c
	scf                                              ; $53ff: $37
	inc c                                            ; $5400: $0c
	jr c, @+$1a                                      ; $5401: $38 $18

	or c                                             ; $5403: $b1
	add c                                            ; $5404: $81
	ld d, b                                          ; $5405: $50
	ld b, $33                                        ; $5406: $06 $33
	ld c, b                                          ; $5408: $48
	or c                                             ; $5409: $b1

jr_02e_540a:
	sub c                                            ; $540a: $91
	ret z                                            ; $540b: $c8

	dec b                                            ; $540c: $05
	inc sp                                           ; $540d: $33
	dec b                                            ; $540e: $05
	dec [hl]                                         ; $540f: $35
	dec hl                                           ; $5410: $2b
	inc sp                                           ; $5411: $33
	jr jr_02e_5445                                   ; $5412: $18 $31

	inc c                                            ; $5414: $0c
	inc sp                                           ; $5415: $33
	inc c                                            ; $5416: $0c
	ld sp, $3330                                     ; $5417: $31 $30 $33
	jr @+$37                                         ; $541a: $18 $35

	jr @+$36                                         ; $541c: $18 $34

	dec b                                            ; $541e: $05
	dec [hl]                                         ; $541f: $35
	dec hl                                           ; $5420: $2b
	inc sp                                           ; $5421: $33
	jr nc, jr_02e_5455                               ; $5422: $30 $31

	inc c                                            ; $5424: $0c
	or c                                             ; $5425: $b1
	ld h, c                                          ; $5426: $61
	ret z                                            ; $5427: $c8

	rlca                                             ; $5428: $07
	ld sp, $ca0c                                     ; $5429: $31 $0c $ca
	ld [hl-], a                                      ; $542c: $32

jr_02e_542d:
	inc b                                            ; $542d: $04
	inc sp                                           ; $542e: $33
	inc l                                            ; $542f: $2c
	dec [hl]                                         ; $5430: $35
	inc c                                            ; $5431: $0c
	inc sp                                           ; $5432: $33
	inc c                                            ; $5433: $0c
	sub [hl]                                         ; $5434: $96
	ld d, b                                          ; $5435: $50
	rlca                                             ; $5436: $07
	ld sp, $9290                                     ; $5437: $31 $90 $92
	jp nc, $becc                                     ; $543a: $d2 $cc $be

	inc c                                            ; $543d: $0c
	cpl                                              ; $543e: $2f
	ld l, $2c                                        ; $543f: $2e $2c
	add hl, hl                                       ; $5441: $29
	cp [hl]                                          ; $5442: $be
	or l                                             ; $5443: $b5
	or c                                             ; $5444: $b1

jr_02e_5445:
	inc bc                                           ; $5445: $03
	ld d, b                                          ; $5446: $50
	rlca                                             ; $5447: $07
	ld a, [hl]                                       ; $5448: $7e
	inc l                                            ; $5449: $2c
	ld [hl-], a                                      ; $544a: $32
	xor c                                            ; $544b: $a9
	daa                                              ; $544c: $27
	ld h, b                                          ; $544d: $60
	inc l                                            ; $544e: $2c
	ld h, b                                          ; $544f: $60
	jp z, $9029                                      ; $5450: $ca $29 $90

	sla a                                            ; $5453: $cb $27

jr_02e_5455:
	jr @+$27                                         ; $5455: $18 $25

	jr jr_02e_5480                                   ; $5457: $18 $27

	ld h, b                                          ; $5459: $60
	inc l                                            ; $545a: $2c
	ld h, b                                          ; $545b: $60
	daa                                              ; $545c: $27
	jr nc, jr_02e_5488                               ; $545d: $30 $29

	ld h, b                                          ; $545f: $60
	add hl, hl                                       ; $5460: $29
	jr nc, @-$49                                     ; $5461: $30 $b5

	or c                                             ; $5463: $b1
	inc bc                                           ; $5464: $03
	ld d, b                                          ; $5465: $50
	rlca                                             ; $5466: $07
	ld a, [hl]                                       ; $5467: $7e
	inc l                                            ; $5468: $2c
	ld [hl-], a                                      ; $5469: $32
	xor c                                            ; $546a: $a9
	dec hl                                           ; $546b: $2b
	ld h, b                                          ; $546c: $60
	ld l, $60                                        ; $546d: $2e $60
	inc l                                            ; $546f: $2c
	sub b                                            ; $5470: $90
	sub [hl]                                         ; $5471: $96
	nop                                              ; $5472: $00
	nop                                              ; $5473: $00
	sub a                                            ; $5474: $97
	ld e, a                                          ; $5475: $5f
	ld l, $30                                        ; $5476: $2e $30
	cp [hl]                                          ; $5478: $be
	jr nc, jr_02e_54ab                               ; $5479: $30 $30

	ld l, $2c                                        ; $547b: $2e $2c
	dec hl                                           ; $547d: $2b
	cp [hl]                                          ; $547e: $be
	sub a                                            ; $547f: $97

jr_02e_5480:
	ccf                                              ; $5480: $3f
	ld l, $37                                        ; $5481: $2e $37
	sub a                                            ; $5483: $97
	nop                                              ; $5484: $00
	rst JumpTable                                          ; $5485: $c7

jr_02e_5486:
	ld l, $0a                                        ; $5486: $2e $0a

jr_02e_5488:
	push bc                                          ; $5488: $c5
	ld l, $07                                        ; $5489: $2e $07
	sub a                                            ; $548b: $97

jr_02e_548c:
	ld l, d                                          ; $548c: $6a
	inc l                                            ; $548d: $2c
	inc c                                            ; $548e: $0c
	dec hl                                           ; $548f: $2b
	inc c                                            ; $5490: $0c
	sub a                                            ; $5491: $97
	ld c, a                                          ; $5492: $4f
	inc l                                            ; $5493: $2c
	jr z, jr_02e_542d                                ; $5494: $28 $97

	nop                                              ; $5496: $00
	add $2c                                          ; $5497: $c6 $2c
	ld [$91b5], sp                                   ; $5499: $08 $b5 $91
	ld [bc], a                                       ; $549c: $02
	ret z                                            ; $549d: $c8

	ld [bc], a                                       ; $549e: $02
	inc l                                            ; $549f: $2c
	jr @+$2e                                         ; $54a0: $18 $2c

jr_02e_54a2:
	jr jr_02e_54a2                                   ; $54a2: $18 $fe

	rst $38                                          ; $54a4: $ff
	or h                                             ; $54a5: $b4
	cp c                                             ; $54a6: $b9
	ld hl, $1422                                     ; $54a7: $21 $22 $14
	inc h                                            ; $54aa: $24

jr_02e_54ab:
	call nz, $0714                                   ; $54ab: $c4 $14 $07
	add $14                                          ; $54ae: $c6 $14
	dec b                                            ; $54b0: $05
	cp $7f                                           ; $54b1: $fe $7f
	ld [hl+], a                                      ; $54b3: $22
	jp nz, $3d19                                     ; $54b4: $c2 $19 $3d

	call nz, $0b19                                   ; $54b7: $c4 $19 $0b
	jp nz, $0c1b                                     ; $54ba: $c2 $1b $0c

	inc e                                            ; $54bd: $1c
	inc c                                            ; $54be: $0c
	dec e                                            ; $54bf: $1d
	jr z, jr_02e_5486                                ; $54c0: $28 $c4

	dec e                                            ; $54c2: $1d
	ld [$11c2], sp                                   ; $54c3: $08 $c2 $11
	jr z, jr_02e_548c                                ; $54c6: $28 $c4

	ld de, $c208                                     ; $54c8: $11 $08 $c2
	ld d, $3d                                        ; $54cb: $16 $3d
	call nz, $0b16                                   ; $54cd: $c4 $16 $0b
	jp nz, $1115                                     ; $54d0: $c2 $15 $11

jr_02e_54d3:
	call nz, $0715                                   ; $54d3: $c4 $15 $07
	jp nz, $2614                                     ; $54d6: $c2 $14 $26

jr_02e_54d9:
	call nz, $0a14                                   ; $54d9: $c4 $14 $0a
	jp nz, $2e7e                                     ; $54dc: $c2 $7e $2e

	ld a, [bc]                                       ; $54df: $0a
	and b                                            ; $54e0: $a0
	add hl, de                                       ; $54e1: $19

jr_02e_54e2:
	cpl                                              ; $54e2: $2f
	nop                                              ; $54e3: $00
	ld bc, $007e                                     ; $54e4: $01 $7e $00
	sub [hl]                                         ; $54e7: $96
	nop                                              ; $54e8: $00
	nop                                              ; $54e9: $00
	ld [de], a                                       ; $54ea: $12
	dec a                                            ; $54eb: $3d
	call nz, $0b12                                   ; $54ec: $c4 $12 $0b
	jp nz, $3d12                                     ; $54ef: $c2 $12 $3d

	call nz, $0b12                                   ; $54f2: $c4 $12 $0b

jr_02e_54f5:
	jp nz, $261c                                     ; $54f5: $c2 $1c $26

	call nz, $0a1c                                   ; $54f8: $c4 $1c $0a

jr_02e_54fb:
	jp nz, $3c1d                                     ; $54fb: $c2 $1d $3c

	call nz, $0c1d                                   ; $54fe: $c4 $1d $0c

jr_02e_5501:
	or c                                             ; $5501: $b1
	ld hl, $0101                                     ; $5502: $21 $01 $01
	inc e                                            ; $5505: $1c
	inc c                                            ; $5506: $0c
	dec de                                           ; $5507: $1b
	inc c                                            ; $5508: $0c
	sub [hl]                                         ; $5509: $96
	nop                                              ; $550a: $00
	nop                                              ; $550b: $00
	ld a, [de]                                       ; $550c: $1a
	jr z, jr_02e_54d3                                ; $550d: $28 $c4

	ld a, [de]                                       ; $550f: $1a
	ld [$16c2], sp                                   ; $5510: $08 $c2 $16
	jr z, jr_02e_54d9                                ; $5513: $28 $c4

	ld d, $08                                        ; $5515: $16 $08
	pop de                                           ; $5517: $d1
	jp nz, $227f                                     ; $5518: $c2 $7f $22

	dec de                                           ; $551b: $1b
	jr c, jr_02e_54e2                                ; $551c: $38 $c4

	dec de                                           ; $551e: $1b
	ld a, [bc]                                       ; $551f: $0a
	add $1b                                          ; $5520: $c6 $1b
	ld b, $b1                                        ; $5522: $06 $b1
	ld hl, $0101                                     ; $5524: $21 $01 $01

jr_02e_5527:
	ld [de], a                                       ; $5527: $12
	inc c                                            ; $5528: $0c
	inc de                                           ; $5529: $13
	inc c                                            ; $552a: $0c
	sub [hl]                                         ; $552b: $96
	nop                                              ; $552c: $00
	nop                                              ; $552d: $00
	inc d                                            ; $552e: $14
	jr z, jr_02e_54f5                                ; $552f: $28 $c4

	inc d                                            ; $5531: $14
	ld [$15c2], sp                                   ; $5532: $08 $c2 $15
	jr z, jr_02e_54fb                                ; $5535: $28 $c4

	dec d                                            ; $5537: $15
	ld [$16c2], sp                                   ; $5538: $08 $c2 $16
	jr z, jr_02e_5501                                ; $553b: $28 $c4

	ld d, $08                                        ; $553d: $16 $08
	jp nz, $2815                                     ; $553f: $c2 $15 $28

	call nz, $0815                                   ; $5542: $c4 $15 $08
	jp nz, $2814                                     ; $5545: $c2 $14 $28

	call nz, $0814                                   ; $5548: $c4 $14 $08
	jp nz, $2813                                     ; $554b: $c2 $13 $28

	call nz, $0813                                   ; $554e: $c4 $13 $08
	jp nz, $3c1b                                     ; $5551: $c2 $1b $3c

	call nz, $0c1b                                   ; $5554: $c4 $1b $0c
	jp nz, $2e7e                                     ; $5557: $c2 $7e $2e

	inc d                                            ; $555a: $14
	and b                                            ; $555b: $a0
	dec de                                           ; $555c: $1b
	jr nc, jr_02e_55dd                               ; $555d: $30 $7e

	nop                                              ; $555f: $00
	rrca                                             ; $5560: $0f
	jr z, jr_02e_5527                                ; $5561: $28 $c4

	rrca                                             ; $5563: $0f
	ld [$21b1], sp                                   ; $5564: $08 $b1 $21
	ld bc, $1601                                     ; $5567: $01 $01 $16
	inc c                                            ; $556a: $0c
	dec d                                            ; $556b: $15
	inc c                                            ; $556c: $0c
	sub [hl]                                         ; $556d: $96
	nop                                              ; $556e: $00
	nop                                              ; $556f: $00
	inc d                                            ; $5570: $14
	inc a                                            ; $5571: $3c
	call nz, $0c14                                   ; $5572: $c4 $14 $0c
	jp nz, $0c16                                     ; $5575: $c2 $16 $0c

	rla                                              ; $5578: $17
	inc c                                            ; $5579: $0c
	jr @+$1a                                         ; $557a: $18 $18

	rla                                              ; $557c: $17
	inc c                                            ; $557d: $0c
	ld d, $0c                                        ; $557e: $16 $0c
	dec d                                            ; $5580: $15
	ld a, [bc]                                       ; $5581: $0a
	call nz, $0215                                   ; $5582: $c4 $15 $02
	jp nz, $2114                                     ; $5585: $c2 $14 $21

	call nz, $0314                                   ; $5588: $c4 $14 $03
	or l                                             ; $558b: $b5
	ld hl, $0122                                     ; $558c: $21 $22 $01
	ld bc, $19c2                                     ; $558f: $01 $c2 $19
	dec a                                            ; $5592: $3d
	call nz, $0b19                                   ; $5593: $c4 $19 $0b
	jp nz, $0c1b                                     ; $5596: $c2 $1b $0c

	inc e                                            ; $5599: $1c
	inc c                                            ; $559a: $0c
	dec e                                            ; $559b: $1d
	inc h                                            ; $559c: $24
	call nz, $0c1d                                   ; $559d: $c4 $1d $0c
	jp nz, $2411                                     ; $55a0: $c2 $11 $24

	call nz, $0c11                                   ; $55a3: $c4 $11 $0c
	jp nz, $3c16                                     ; $55a6: $c2 $16 $3c

	call nz, $0c16                                   ; $55a9: $c4 $16 $0c
	jp nz, $0b16                                     ; $55ac: $c2 $16 $0b

	call nz, $0116                                   ; $55af: $c4 $16 $01
	jp nz, $0b15                                     ; $55b2: $c2 $15 $0b

	call nz, $0115                                   ; $55b5: $c4 $15 $01
	jp nz, $2814                                     ; $55b8: $c2 $14 $28

	call nz, $0814                                   ; $55bb: $c4 $14 $08
	jp nz, $2e7e                                     ; $55be: $c2 $7e $2e

	ld a, [bc]                                       ; $55c1: $0a
	and b                                            ; $55c2: $a0
	add hl, de                                       ; $55c3: $19
	cpl                                              ; $55c4: $2f
	nop                                              ; $55c5: $00
	ld bc, $007e                                     ; $55c6: $01 $7e $00
	ld [de], a                                       ; $55c9: $12
	inc a                                            ; $55ca: $3c
	call nz, $0c12                                   ; $55cb: $c4 $12 $0c
	jp nz, $2412                                     ; $55ce: $c2 $12 $24

	call nz, $0c12                                   ; $55d1: $c4 $12 $0c
	jp nz, $1619                                     ; $55d4: $c2 $19 $16

	call nz, $0219                                   ; $55d7: $c4 $19 $02
	jp nz, $161b                                     ; $55da: $c2 $1b $16

jr_02e_55dd:
	call nz, $021b                                   ; $55dd: $c4 $1b $02
	jp nz, $161c                                     ; $55e0: $c2 $1c $16

	call nz, $021c                                   ; $55e3: $c4 $1c $02
	or c                                             ; $55e6: $b1
	ld hl, $0000                                     ; $55e7: $21 $00 $00
	dec e                                            ; $55ea: $1d
	inc a                                            ; $55eb: $3c
	call nz, $0c1d                                   ; $55ec: $c4 $1d $0c
	or c                                             ; $55ef: $b1
	ld hl, $0101                                     ; $55f0: $21 $01 $01
	dec e                                            ; $55f3: $1d
	inc c                                            ; $55f4: $0c
	rla                                              ; $55f5: $17
	inc c                                            ; $55f6: $0c
	sub [hl]                                         ; $55f7: $96
	nop                                              ; $55f8: $00
	nop                                              ; $55f9: $00
	ld d, $2a                                        ; $55fa: $16 $2a
	call nz, $0616                                   ; $55fc: $c4 $16 $06
	jp nz, $1620                                     ; $55ff: $c2 $20 $16

	call nz, $0220                                   ; $5602: $c4 $20 $02
	jp nz, $161d                                     ; $5605: $c2 $1d $16

	call nz, $021d                                   ; $5608: $c4 $1d $02
	or l                                             ; $560b: $b5
	ld hl, $0222                                     ; $560c: $21 $22 $02
	ld bc, $181b                                     ; $560f: $01 $1b $18
	rrca                                             ; $5612: $0f
	inc h                                            ; $5613: $24
	call nz, $0c0f                                   ; $5614: $c4 $0f $0c
	jp nz, $0c12                                     ; $5617: $c2 $12 $0c

	inc de                                           ; $561a: $13
	inc c                                            ; $561b: $0c
	inc d                                            ; $561c: $14
	daa                                              ; $561d: $27
	call nz, $0914                                   ; $561e: $c4 $14 $09
	jp nz, $1815                                     ; $5621: $c2 $15 $18

	ld de, $1618                                     ; $5624: $11 $18 $16
	jr z, @-$3a                                      ; $5627: $28 $c4

	ld d, $08                                        ; $5629: $16 $08
	jp nz, $2815                                     ; $562b: $c2 $15 $28

	call nz, $0815                                   ; $562e: $c4 $15 $08
	jp nz, $2814                                     ; $5631: $c2 $14 $28

	call nz, $0814                                   ; $5634: $c4 $14 $08
	jp nz, $2813                                     ; $5637: $c2 $13 $28

	call nz, $0813                                   ; $563a: $c4 $13 $08
	or c                                             ; $563d: $b1
	ld hl, $0000                                     ; $563e: $21 $00 $00
	dec de                                           ; $5641: $1b
	inc a                                            ; $5642: $3c
	call nz, $0c1b                                   ; $5643: $c4 $1b $0c
	jp nz, $2e7e                                     ; $5646: $c2 $7e $2e

	inc d                                            ; $5649: $14
	and b                                            ; $564a: $a0
	dec de                                           ; $564b: $1b
	jr @-$3c                                         ; $564c: $18 $c2

	ld a, [hl]                                       ; $564e: $7e
	nop                                              ; $564f: $00
	rrca                                             ; $5650: $0f
	jr @+$16                                         ; $5651: $18 $14

	inc a                                            ; $5653: $3c
	call nz, $0c14                                   ; $5654: $c4 $14 $0c
	jp nz, $2a0d                                     ; $5657: $c2 $0d $2a

	call nz, $060d                                   ; $565a: $c4 $0d $06
	jp nz, $2a0f                                     ; $565d: $c2 $0f $2a

	call nz, $060f                                   ; $5660: $c4 $0f $06
	jp nz, $2a10                                     ; $5663: $c2 $10 $2a

	call nz, $0610                                   ; $5666: $c4 $10 $06
	jp nz, $2a11                                     ; $5669: $c2 $11 $2a

	call nz, $0611                                   ; $566c: $c4 $11 $06
	or l                                             ; $566f: $b5
	ld hl, $0022                                     ; $5670: $21 $22 $00
	nop                                              ; $5673: $00
	ld [de], a                                       ; $5674: $12
	inc a                                            ; $5675: $3c
	call nz, $0c12                                   ; $5676: $c4 $12 $0c
	jp nz, $1613                                     ; $5679: $c2 $13 $16

	call nz, $0213                                   ; $567c: $c4 $13 $02
	jp nz, Jump_02e_4814                             ; $567f: $c2 $14 $48

	call nz, $0c14                                   ; $5682: $c4 $14 $0c
	add $14                                          ; $5685: $c6 $14
	inc c                                            ; $5687: $0c
	jp nz, $3c19                                     ; $5688: $c2 $19 $3c

	call nz, $0c19                                   ; $568b: $c4 $19 $0c
	jp nz, $1618                                     ; $568e: $c2 $18 $16

	call nz, $0218                                   ; $5691: $c4 $18 $02
	jp nz, $1616                                     ; $5694: $c2 $16 $16

	call nz, $0216                                   ; $5697: $c4 $16 $02
	jp nz, $1614                                     ; $569a: $c2 $14 $16

	call nz, $0214                                   ; $569d: $c4 $14 $02
	jp nz, $1611                                     ; $56a0: $c2 $11 $16

	call nz, $0211                                   ; $56a3: $c4 $11 $02
	jp nz, $1610                                     ; $56a6: $c2 $10 $16

	call nz, $0210                                   ; $56a9: $c4 $10 $02
	jp nz, $3c0f                                     ; $56ac: $c2 $0f $3c

	call nz, $0c0f                                   ; $56af: $c4 $0f $0c
	jp nz, $0c12                                     ; $56b2: $c2 $12 $0c

	inc de                                           ; $56b5: $13
	inc c                                            ; $56b6: $0c
	inc d                                            ; $56b7: $14
	ld c, b                                          ; $56b8: $48
	call nz, $0c14                                   ; $56b9: $c4 $14 $0c
	add $14                                          ; $56bc: $c6 $14
	inc c                                            ; $56be: $0c
	jp nz, $2a18                                     ; $56bf: $c2 $18 $2a

	call nz, $0618                                   ; $56c2: $c4 $18 $06
	jp nz, $3019                                     ; $56c5: $c2 $19 $30

	call nz, $0c19                                   ; $56c8: $c4 $19 $0c
	or c                                             ; $56cb: $b1
	ld hl, $0103                                     ; $56cc: $21 $03 $01
	inc d                                            ; $56cf: $14
	jr jr_02e_56e6                                   ; $56d0: $18 $14

	inc c                                            ; $56d2: $0c
	inc d                                            ; $56d3: $14
	inc c                                            ; $56d4: $0c
	ld d, $0c                                        ; $56d5: $16 $0c
	inc d                                            ; $56d7: $14
	jr @-$49                                         ; $56d8: $18 $b5

	ld hl, $0022                                     ; $56da: $21 $22 $00
	nop                                              ; $56dd: $00
	dec de                                           ; $56de: $1b
	inc a                                            ; $56df: $3c
	call nz, $0c1b                                   ; $56e0: $c4 $1b $0c
	jp nz, $161a                                     ; $56e3: $c2 $1a $16

jr_02e_56e6:
	call nz, $021a                                   ; $56e6: $c4 $1a $02
	jp nz, $2a19                                     ; $56e9: $c2 $19 $2a

	call nz, $0619                                   ; $56ec: $c4 $19 $06
	jp nz, $1618                                     ; $56ef: $c2 $18 $16

	call nz, $0218                                   ; $56f2: $c4 $18 $02
	jp nz, $1616                                     ; $56f5: $c2 $16 $16

	call nz, $0216                                   ; $56f8: $c4 $16 $02
	jp nz, $3c14                                     ; $56fb: $c2 $14 $3c

	call nz, $0c14                                   ; $56fe: $c4 $14 $0c
	jp nz, $160f                                     ; $5701: $c2 $0f $16

	call nz, $020f                                   ; $5704: $c4 $0f $02
	jp nz, $2a14                                     ; $5707: $c2 $14 $2a

	call nz, $0614                                   ; $570a: $c4 $14 $06
	jp nz, $2a13                                     ; $570d: $c2 $13 $2a

	call nz, $0613                                   ; $5710: $c4 $13 $06
	jp nz, $2814                                     ; $5713: $c2 $14 $28

	call nz, $0814                                   ; $5716: $c4 $14 $08
	jp nz, $2812                                     ; $5719: $c2 $12 $28

	call nz, $0812                                   ; $571c: $c4 $12 $08
	jp nz, $2811                                     ; $571f: $c2 $11 $28

	call nz, $0811                                   ; $5722: $c4 $11 $08
	jp nz, $2810                                     ; $5725: $c2 $10 $28

	call nz, $0810                                   ; $5728: $c4 $10 $08
	jp nz, $3c0f                                     ; $572b: $c2 $0f $3c

	call nz, $0c0f                                   ; $572e: $c4 $0f $0c
	or c                                             ; $5731: $b1
	ld hl, $0102                                     ; $5732: $21 $02 $01
	ld [de], a                                       ; $5735: $12
	inc c                                            ; $5736: $0c
	inc de                                           ; $5737: $13
	inc c                                            ; $5738: $0c
	sub [hl]                                         ; $5739: $96
	nop                                              ; $573a: $00
	nop                                              ; $573b: $00
	inc d                                            ; $573c: $14
	ld a, [hl+]                                      ; $573d: $2a
	call nz, $0614                                   ; $573e: $c4 $14 $06
	jp nz, $247f                                     ; $5741: $c2 $7f $24

	ld a, [hl]                                       ; $5744: $7e
	ld l, $08                                        ; $5745: $2e $08
	and b                                            ; $5747: $a0
	jr nz, jr_02e_577a                               ; $5748: $20 $30

	ld a, [hl]                                       ; $574a: $7e
	nop                                              ; $574b: $00
	cp $ff                                           ; $574c: $fe $ff
	ret nc                                           ; $574e: $d0

	cp c                                             ; $574f: $b9
	inc de                                           ; $5750: $13
	jr jr_02e_5784                                   ; $5751: $18 $31

	ld [$0832], sp                                   ; $5753: $08 $32 $08
	inc sp                                           ; $5756: $33
	ld [$fbfe], sp                                   ; $5757: $08 $fe $fb
	db $fd                                           ; $575a: $fd
	rst SubAFromDE                                          ; $575b: $df
	ld d, a                                          ; $575c: $57
	ei                                               ; $575d: $fb
	inc bc                                           ; $575e: $03
	db $fd                                           ; $575f: $fd
	ldh a, [c]                                       ; $5760: $f2
	ld d, a                                          ; $5761: $57

jr_02e_5762:
	ei                                               ; $5762: $fb
	db $fd                                           ; $5763: $fd
	rst SubAFromDE                                          ; $5764: $df
	ld d, a                                          ; $5765: $57
	ei                                               ; $5766: $fb
	inc bc                                           ; $5767: $03
	ld sp, $3318                                     ; $5768: $31 $18 $33
	jr jr_02e_579f                                   ; $576b: $18 $32

	rla                                              ; $576d: $17
	ld b, h                                          ; $576e: $44
	dec bc                                           ; $576f: $0b
	ld b, e                                          ; $5770: $43
	inc c                                            ; $5771: $0c
	ld b, d                                          ; $5772: $42
	ld a, [de]                                       ; $5773: $1a
	inc sp                                           ; $5774: $33
	rla                                              ; $5775: $17
	ld sp, $0c0d                                     ; $5776: $31 $0d $0c
	inc c                                            ; $5779: $0c

jr_02e_577a:
	ld e, $18                                        ; $577a: $1e $18
	ei                                               ; $577c: $fb
	db $fd                                           ; $577d: $fd

jr_02e_577e:
	rst SubAFromDE                                          ; $577e: $df
	ld d, a                                          ; $577f: $57
	ei                                               ; $5780: $fb
	inc bc                                           ; $5781: $03
	db $fd                                           ; $5782: $fd
	ldh a, [c]                                       ; $5783: $f2

jr_02e_5784:
	ld d, a                                          ; $5784: $57
	ei                                               ; $5785: $fb
	db $fd                                           ; $5786: $fd
	rst SubAFromDE                                          ; $5787: $df
	ld d, a                                          ; $5788: $57
	ei                                               ; $5789: $fb
	ld [bc], a                                       ; $578a: $02
	ld sp, $3218                                     ; $578b: $31 $18 $32
	jr @+$33                                         ; $578e: $18 $31

	jr jr_02e_57d6                                   ; $5790: $18 $44

	inc c                                            ; $5792: $0c
	ld b, e                                          ; $5793: $43
	inc c                                            ; $5794: $0c
	ld b, d                                          ; $5795: $42
	jr jr_02e_57cd                                   ; $5796: $18 $35

	jr nc, @+$3f                                     ; $5798: $30 $3d

	jr @+$36                                         ; $579a: $18 $34

	jr @+$34                                         ; $579c: $18 $32

	inc c                                            ; $579e: $0c

jr_02e_579f:
	ld sp, $340c                                     ; $579f: $31 $0c $34
	jr jr_02e_5762                                   ; $57a2: $18 $be

	inc c                                            ; $57a4: $0c
	ld [hl-], a                                      ; $57a5: $32
	ld sp, $4344                                     ; $57a6: $31 $44 $43
	cp [hl]                                          ; $57a9: $be
	dec a                                            ; $57aa: $3d
	jr jr_02e_57ea                                   ; $57ab: $18 $3d

	jr @+$36                                         ; $57ad: $18 $34

	jr @-$01                                         ; $57af: $18 $fd

	add hl, bc                                       ; $57b1: $09
	ld e, b                                          ; $57b2: $58
	db $fd                                           ; $57b3: $fd
	add hl, de                                       ; $57b4: $19
	ld e, b                                          ; $57b5: $58
	db $fd                                           ; $57b6: $fd
	add hl, bc                                       ; $57b7: $09
	ld e, b                                          ; $57b8: $58
	inc [hl]                                         ; $57b9: $34
	jr jr_02e_57ee                                   ; $57ba: $18 $32

	jr jr_02e_57dc                                   ; $57bc: $18 $1e

	jr nc, jr_02e_577e                               ; $57be: $30 $be

	jr jr_02e_57ce                                   ; $57c0: $18 $0c

	inc sp                                           ; $57c2: $33
	dec a                                            ; $57c3: $3d
	dec a                                            ; $57c4: $3d
	cp [hl]                                          ; $57c5: $be
	db $fd                                           ; $57c6: $fd
	add hl, bc                                       ; $57c7: $09
	ld e, b                                          ; $57c8: $58
	db $fd                                           ; $57c9: $fd
	add hl, de                                       ; $57ca: $19
	ld e, b                                          ; $57cb: $58
	db $fd                                           ; $57cc: $fd

jr_02e_57cd:
	add hl, bc                                       ; $57cd: $09

jr_02e_57ce:
	ld e, b                                          ; $57ce: $58
	ld sp, $130c                                     ; $57cf: $31 $0c $13
	inc c                                            ; $57d2: $0c
	cp [hl]                                          ; $57d3: $be
	jr jr_02e_5809                                   ; $57d4: $18 $33

jr_02e_57d6:
	ld sp, $3134                                     ; $57d6: $31 $34 $31
	dec a                                            ; $57d9: $3d
	dec a                                            ; $57da: $3d
	dec a                                            ; $57db: $3d

jr_02e_57dc:
	cp [hl]                                          ; $57dc: $be
	cp $ff                                           ; $57dd: $fe $ff
	ld sp, $3218                                     ; $57df: $31 $18 $32
	jr jr_02e_5815                                   ; $57e2: $18 $31

	rla                                              ; $57e4: $17
	ld b, h                                          ; $57e5: $44
	dec bc                                           ; $57e6: $0b
	ld b, e                                          ; $57e7: $43
	inc c                                            ; $57e8: $0c
	ld b, d                                          ; $57e9: $42

jr_02e_57ea:
	ld a, [de]                                       ; $57ea: $1a
	ld [hl-], a                                      ; $57eb: $32
	rla                                              ; $57ec: $17
	dec a                                            ; $57ed: $3d

jr_02e_57ee:
	add hl, de                                       ; $57ee: $19
	ld sp, $fd18                                     ; $57ef: $31 $18 $fd

jr_02e_57f2:
	ld sp, $3318                                     ; $57f2: $31 $18 $33
	jr jr_02e_5829                                   ; $57f5: $18 $32

jr_02e_57f7:
	rla                                              ; $57f7: $17
	ld b, h                                          ; $57f8: $44
	dec bc                                           ; $57f9: $0b
	ld b, e                                          ; $57fa: $43
	inc c                                            ; $57fb: $0c
	ld b, d                                          ; $57fc: $42

jr_02e_57fd:
	ld a, [de]                                       ; $57fd: $1a
	inc sp                                           ; $57fe: $33
	rla                                              ; $57ff: $17
	dec a                                            ; $5800: $3d
	jr jr_02e_5845                                   ; $5801: $18 $42

jr_02e_5803:
	ld [$0843], sp                                   ; $5803: $08 $43 $08
	ld b, h                                          ; $5806: $44
	add hl, bc                                       ; $5807: $09
	db $fd                                           ; $5808: $fd

jr_02e_5809:
	ei                                               ; $5809: $fb
	ld sp, $3318                                     ; $580a: $31 $18 $33
	jr jr_02e_5841                                   ; $580d: $18 $32

	jr @-$03                                         ; $580f: $18 $fb

	ld [bc], a                                       ; $5811: $02
	dec a                                            ; $5812: $3d
	ld d, $43                                        ; $5813: $16 $43

jr_02e_5815:
	dec c                                            ; $5815: $0d

jr_02e_5816:
	ld b, h                                          ; $5816: $44
	dec c                                            ; $5817: $0d
	db $fd                                           ; $5818: $fd
	ei                                               ; $5819: $fb

jr_02e_581a:
	ld sp, $3318                                     ; $581a: $31 $18 $33
	jr jr_02e_5851                                   ; $581d: $18 $32

jr_02e_581f:
	jr @-$03                                         ; $581f: $18 $fb

	ld [bc], a                                       ; $5821: $02
	dec a                                            ; $5822: $3d
	jr jr_02e_5859                                   ; $5823: $18 $34

	jr @-$01                                         ; $5825: $18 $fd

	or h                                             ; $5827: $b4
	adc h                                            ; $5828: $8c

jr_02e_5829:
	sub c                                            ; $5829: $91
	ld bc, $5a97                                     ; $582a: $01 $97 $5a
	ld [hl], e                                       ; $582d: $73
	inc d                                            ; $582e: $14
	dec bc                                           ; $582f: $0b
	sub a                                            ; $5830: $97
	nop                                              ; $5831: $00
	call nz, $0d14                                   ; $5832: $c4 $14 $0d
	sub a                                            ; $5835: $97
	ld e, l                                          ; $5836: $5d

jr_02e_5837:
	inc d                                            ; $5837: $14
	jr jr_02e_5803                                   ; $5838: $18 $c9

	sub a                                            ; $583a: $97
	nop                                              ; $583b: $00
	inc d                                            ; $583c: $14
	inc c                                            ; $583d: $0c
	or c                                             ; $583e: $b1
	ld [hl], c                                       ; $583f: $71
	rst $38                                          ; $5840: $ff

jr_02e_5841:
	ld b, $14                                        ; $5841: $06 $14
	inc c                                            ; $5843: $0c
	sub [hl]                                         ; $5844: $96

jr_02e_5845:
	nop                                              ; $5845: $00
	nop                                              ; $5846: $00
	sub a                                            ; $5847: $97
	ld e, h                                          ; $5848: $5c
	add hl, de                                       ; $5849: $19
	jr jr_02e_57fd                                   ; $584a: $18 $b1

	and c                                            ; $584c: $a1
	nop                                              ; $584d: $00
	nop                                              ; $584e: $00
	sub a                                            ; $584f: $97
	nop                                              ; $5850: $00

jr_02e_5851:
	add hl, de                                       ; $5851: $19
	jr nc, jr_02e_586d                               ; $5852: $30 $19

	ld c, b                                          ; $5854: $48
	rst JumpTable                                          ; $5855: $c7
	add hl, de                                       ; $5856: $19
	jr jr_02e_581f                                   ; $5857: $18 $c6

jr_02e_5859:
	add hl, de                                       ; $5859: $19
	jr jr_02e_57f2                                   ; $585a: $18 $96

	rst $38                                          ; $585c: $ff
	rlca                                             ; $585d: $07
	add hl, de                                       ; $585e: $19
	jr jr_02e_57f7                                   ; $585f: $18 $96

	nop                                              ; $5861: $00
	nop                                              ; $5862: $00

jr_02e_5863:
	ret z                                            ; $5863: $c8

	sub c                                            ; $5864: $91
	sub a                                            ; $5865: $97
	ld c, l                                          ; $5866: $4d
	ld [hl], e                                       ; $5867: $73
	add hl, de                                       ; $5868: $19
	jr @-$36                                         ; $5869: $18 $c8

	sub a                                            ; $586b: $97
	nop                                              ; $586c: $00

jr_02e_586d:
	add hl, de                                       ; $586d: $19

jr_02e_586e:
	jr nc, @+$1b                                     ; $586e: $30 $19

	jr nc, jr_02e_5809                               ; $5870: $30 $97

	ld c, e                                          ; $5872: $4b
	ld d, $18                                        ; $5873: $16 $18
	sub a                                            ; $5875: $97
	ld c, l                                          ; $5876: $4d
	add hl, de                                       ; $5877: $19
	jr @-$36                                         ; $5878: $18 $c8

	sub a                                            ; $587a: $97
	nop                                              ; $587b: $00

jr_02e_587c:
	add hl, de                                       ; $587c: $19
	jr nc, jr_02e_5816                               ; $587d: $30 $97

	dec a                                            ; $587f: $3d
	add hl, de                                       ; $5880: $19
	jr nc, jr_02e_581a                               ; $5881: $30 $97

	ld a, h                                          ; $5883: $7c
	jr jr_02e_588e                                   ; $5884: $18 $08

	add hl, de                                       ; $5886: $19
	ld [$081b], sp                                   ; $5887: $08 $1b $08
	ret z                                            ; $588a: $c8

	sub c                                            ; $588b: $91
	sub a                                            ; $588c: $97

jr_02e_588d:
	ld c, a                                          ; $588d: $4f

jr_02e_588e:
	ld [hl], e                                       ; $588e: $73
	jr jr_02e_58a9                                   ; $588f: $18 $18

	ret z                                            ; $5891: $c8

	sub a                                            ; $5892: $97
	nop                                              ; $5893: $00
	jr jr_02e_58c6                                   ; $5894: $18 $30

	sub a                                            ; $5896: $97
	ld e, h                                          ; $5897: $5c
	dec de                                           ; $5898: $1b
	jr jr_02e_5863                                   ; $5899: $18 $c8

	sub a                                            ; $589b: $97
	nop                                              ; $589c: $00
	add hl, de                                       ; $589d: $19
	jr nc, jr_02e_5837                               ; $589e: $30 $97

jr_02e_58a0:
	ld c, e                                          ; $58a0: $4b
	ld [hl+], a                                      ; $58a1: $22
	jr jr_02e_586e                                   ; $58a2: $18 $ca

jr_02e_58a4:
	sub a                                            ; $58a4: $97
	nop                                              ; $58a5: $00
	ld [hl+], a                                      ; $58a6: $22
	jr nc, jr_02e_587c                               ; $58a7: $30 $d3

jr_02e_58a9:
	call z, $0f92                                    ; $58a9: $cc $92 $0f
	ld [de], a                                       ; $58ac: $12
	push bc                                          ; $58ad: $c5
	rrca                                             ; $58ae: $0f
	dec b                                            ; $58af: $05
	jp z, $16d1                                      ; $58b0: $ca $d1 $16

	ld [de], a                                       ; $58b3: $12
	call nz, $0716                                   ; $58b4: $c4 $16 $07
	jp nc, Jump_02e_7dc9                             ; $58b7: $d2 $c9 $7d

	ld [bc], a                                       ; $58ba: $02
	ld e, $12                                        ; $58bb: $1e $12
	push bc                                          ; $58bd: $c5
	ld e, $06                                        ; $58be: $1e $06

jr_02e_58c0:
	ld a, l                                          ; $58c0: $7d
	nop                                              ; $58c1: $00
	pop de                                           ; $58c2: $d1
	jp z, Jump_02e_6991                              ; $58c3: $ca $91 $69

jr_02e_58c6:
	ld [de], a                                       ; $58c6: $12
	ld [$12c3], sp                                   ; $58c7: $08 $c3 $12
	jr z, jr_02e_5949                                ; $58ca: $28 $7d

	ld [bc], a                                       ; $58cc: $02
	ret z                                            ; $58cd: $c8

	ld [de], a                                       ; $58ce: $12
	ld [$12c2], sp                                   ; $58cf: $08 $c2 $12
	db $10                                           ; $58d2: $10
	ld a, l                                          ; $58d3: $7d
	nop                                              ; $58d4: $00
	jp z, $0819                                      ; $58d5: $ca $19 $08

	jp $2819                                         ; $58d8: $c3 $19 $28


	jp nz, $1819                                     ; $58db: $c2 $19 $18

	ret nc                                           ; $58de: $d0

	add b                                            ; $58df: $80
	sub a                                            ; $58e0: $97
	ld a, e                                          ; $58e1: $7b
	jr jr_02e_58ec                                   ; $58e2: $18 $08

	sub a                                            ; $58e4: $97
	nop                                              ; $58e5: $00
	jp $1018                                         ; $58e6: $c3 $18 $10


	ret nc                                           ; $58e9: $d0

	ld [hl], e                                       ; $58ea: $73
	sub a                                            ; $58eb: $97

jr_02e_58ec:
	ccf                                              ; $58ec: $3f
	rrca                                             ; $58ed: $0f
	jr jr_02e_58c0                                   ; $58ee: $18 $d0

	ld h, h                                          ; $58f0: $64
	sub a                                            ; $58f1: $97
	ld e, a                                          ; $58f2: $5f

jr_02e_58f3:
	ld [de], a                                       ; $58f3: $12
	jr jr_02e_588d                                   ; $58f4: $18 $97

	ld c, a                                          ; $58f6: $4f
	ld a, [hl]                                       ; $58f7: $7e
	ld [bc], a                                       ; $58f8: $02
	jr jr_02e_58a4                                   ; $58f9: $18 $a9

	dec d                                            ; $58fb: $15
	jr @-$67                                         ; $58fc: $18 $97

	nop                                              ; $58fe: $00
	ret z                                            ; $58ff: $c8

	dec d                                            ; $5900: $15
	jr nz, @-$67                                     ; $5901: $20 $97

	nop                                              ; $5903: $00
	sub [hl]                                         ; $5904: $96
	jr @+$09                                         ; $5905: $18 $07

	dec d                                            ; $5907: $15
	jr jr_02e_58a0                                   ; $5908: $18 $96

	nop                                              ; $590a: $00
	nop                                              ; $590b: $00
	call nz, Call_02e_7814                           ; $590c: $c4 $14 $78
	jp $0c14                                         ; $590f: $c3 $14 $0c


	jp nz, $0c14                                     ; $5912: $c2 $14 $0c

jr_02e_5915:
	pop bc                                           ; $5915: $c1
	add hl, de                                       ; $5916: $19
	inc c                                            ; $5917: $0c
	pop bc                                           ; $5918: $c1
	add hl, de                                       ; $5919: $19
	inc c                                            ; $591a: $0c
	rst $38                                          ; $591b: $ff
	or h                                             ; $591c: $b4

jr_02e_591d:
	adc h                                            ; $591d: $8c
	and c                                            ; $591e: $a1
	ld bc, $7a97                                     ; $591f: $01 $97 $7a
	ld l, c                                          ; $5922: $69
	dec de                                           ; $5923: $1b
	dec bc                                           ; $5924: $0b
	sub a                                            ; $5925: $97
	nop                                              ; $5926: $00
	jp $0d1b                                         ; $5927: $c3 $1b $0d


	jp z, Jump_02e_6b97                              ; $592a: $ca $97 $6b

	dec de                                           ; $592d: $1b
	jr jr_02e_5949                                   ; $592e: $18 $19

	jr @-$67                                         ; $5930: $18 $97

	ld l, e                                          ; $5932: $6b
	dec e                                            ; $5933: $1d
	jr @-$4d                                         ; $5934: $18 $b1

	or c                                             ; $5936: $b1

jr_02e_5937:
	rst $38                                          ; $5937: $ff
	ld b, $97                                        ; $5938: $06 $97
	nop                                              ; $593a: $00
	ld a, [hl]                                       ; $593b: $7e
	ld [bc], a                                       ; $593c: $02
	ld a, [bc]                                       ; $593d: $0a
	and b                                            ; $593e: $a0

jr_02e_593f:
	dec e                                            ; $593f: $1d
	jr jr_02e_58f3                                   ; $5940: $18 $b1

	and c                                            ; $5942: $a1
	nop                                              ; $5943: $00
	nop                                              ; $5944: $00
	sub a                                            ; $5945: $97
	ld l, e                                          ; $5946: $6b
	ld a, [hl]                                       ; $5947: $7e
	nop                                              ; $5948: $00

jr_02e_5949:
	dec de                                           ; $5949: $1b
	jr @-$67                                         ; $594a: $18 $97

	ld l, e                                          ; $594c: $6b
	ld e, $18                                        ; $594d: $1e $18
	or c                                             ; $594f: $b1
	pop bc                                           ; $5950: $c1
	rst $38                                          ; $5951: $ff
	rlca                                             ; $5952: $07
	sub a                                            ; $5953: $97
	nop                                              ; $5954: $00
	ld a, [hl]                                       ; $5955: $7e
	ld bc, $a00c                                     ; $5956: $01 $0c $a0
	ld e, $18                                        ; $5959: $1e $18
	ret z                                            ; $595b: $c8

	ld a, [hl]                                       ; $595c: $7e
	ld bc, $a000                                     ; $595d: $01 $00 $a0
	ld e, $18                                        ; $5960: $1e $18
	ld a, [hl]                                       ; $5962: $7e
	nop                                              ; $5963: $00
	sub [hl]                                         ; $5964: $96

jr_02e_5965:
	nop                                              ; $5965: $00
	nop                                              ; $5966: $00
	sub a                                            ; $5967: $97
	ld l, e                                          ; $5968: $6b
	dec e                                            ; $5969: $1d
	jr jr_02e_591d                                   ; $596a: $18 $b1

	or c                                             ; $596c: $b1
	rst $38                                          ; $596d: $ff
	rlca                                             ; $596e: $07
	sub a                                            ; $596f: $97
	nop                                              ; $5970: $00
	ld a, [hl]                                       ; $5971: $7e
	ld bc, $a00c                                     ; $5972: $01 $0c $a0
	dec e                                            ; $5975: $1d
	jr jr_02e_593f                                   ; $5976: $18 $c7

	ld a, [hl]                                       ; $5978: $7e
	ld [bc], a                                       ; $5979: $02
	nop                                              ; $597a: $00
	and b                                            ; $597b: $a0
	dec e                                            ; $597c: $1d
	jr jr_02e_5915                                   ; $597d: $18 $96

	nop                                              ; $597f: $00
	nop                                              ; $5980: $00

jr_02e_5981:
	ld a, [hl]                                       ; $5981: $7e
	nop                                              ; $5982: $00
	ret                                              ; $5983: $c9


	sub c                                            ; $5984: $91
	sub a                                            ; $5985: $97
	ld l, l                                          ; $5986: $6d

jr_02e_5987:
	ld l, c                                          ; $5987: $69
	ld e, $18                                        ; $5988: $1e $18
	or c                                             ; $598a: $b1
	and c                                            ; $598b: $a1
	rst $38                                          ; $598c: $ff
	ld b, $97                                        ; $598d: $06 $97
	nop                                              ; $598f: $00
	ld a, [hl]                                       ; $5990: $7e
	ld [bc], a                                       ; $5991: $02
	nop                                              ; $5992: $00
	xor c                                            ; $5993: $a9
	ld e, $18                                        ; $5994: $1e $18
	ld a, [hl]                                       ; $5996: $7e
	nop                                              ; $5997: $00
	sub [hl]                                         ; $5998: $96
	nop                                              ; $5999: $00
	nop                                              ; $599a: $00
	sub a                                            ; $599b: $97
	ld a, l                                          ; $599c: $7d
	dec e                                            ; $599d: $1d
	jr jr_02e_5937                                   ; $599e: $18 $97

	ld a, h                                          ; $59a0: $7c
	ld a, [hl]                                       ; $59a1: $7e
	ld [bc], a                                       ; $59a2: $02
	nop                                              ; $59a3: $00

jr_02e_59a4:
	xor c                                            ; $59a4: $a9
	dec e                                            ; $59a5: $1d
	jr jr_02e_593f                                   ; $59a6: $18 $97

	ld a, l                                          ; $59a8: $7d
	dec de                                           ; $59a9: $1b
	jr jr_02e_59c5                                   ; $59aa: $18 $19

	jr jr_02e_5a2c                                   ; $59ac: $18 $7e

	nop                                              ; $59ae: $00
	sub a                                            ; $59af: $97
	ld l, h                                          ; $59b0: $6c
	dec e                                            ; $59b1: $1d
	jr jr_02e_5965                                   ; $59b2: $18 $b1

	or c                                             ; $59b4: $b1
	rst $38                                          ; $59b5: $ff
	rlca                                             ; $59b6: $07
	sub a                                            ; $59b7: $97
	nop                                              ; $59b8: $00
	ld a, [hl]                                       ; $59b9: $7e
	ld bc, $a00c                                     ; $59ba: $01 $0c $a0
	dec e                                            ; $59bd: $1d
	jr jr_02e_5987                                   ; $59be: $18 $c7

	ld a, [hl]                                       ; $59c0: $7e
	ld bc, $a000                                     ; $59c1: $01 $00 $a0
	dec e                                            ; $59c4: $1d

jr_02e_59c5:
	jr jr_02e_5a45                                   ; $59c5: $18 $7e

	nop                                              ; $59c7: $00
	sub [hl]                                         ; $59c8: $96
	nop                                              ; $59c9: $00
	nop                                              ; $59ca: $00
	sub a                                            ; $59cb: $97
	ld l, l                                          ; $59cc: $6d
	dec de                                           ; $59cd: $1b
	jr jr_02e_5981                                   ; $59ce: $18 $b1

	or c                                             ; $59d0: $b1
	rst $38                                          ; $59d1: $ff
	rlca                                             ; $59d2: $07
	sub a                                            ; $59d3: $97
	nop                                              ; $59d4: $00
	ld a, [hl]                                       ; $59d5: $7e
	ld bc, $a00c                                     ; $59d6: $01 $0c $a0
	dec de                                           ; $59d9: $1b
	jr jr_02e_59a4                                   ; $59da: $18 $c8

	ld a, [hl]                                       ; $59dc: $7e
	ld [bc], a                                       ; $59dd: $02
	nop                                              ; $59de: $00
	and b                                            ; $59df: $a0
	dec de                                           ; $59e0: $1b
	jr jr_02e_5a61                                   ; $59e1: $18 $7e

	nop                                              ; $59e3: $00
	sub [hl]                                         ; $59e4: $96
	nop                                              ; $59e5: $00
	nop                                              ; $59e6: $00
	sub c                                            ; $59e7: $91
	sub a                                            ; $59e8: $97
	ld e, a                                          ; $59e9: $5f
	ld l, c                                          ; $59ea: $69
	ld a, [hl]                                       ; $59eb: $7e
	ld [bc], a                                       ; $59ec: $02
	ld a, [hl+]                                      ; $59ed: $2a
	xor c                                            ; $59ee: $a9
	ld hl, $7e3c                                     ; $59ef: $21 $3c $7e
	nop                                              ; $59f2: $00
	sub a                                            ; $59f3: $97
	ld a, l                                          ; $59f4: $7d
	inc h                                            ; $59f5: $24
	inc c                                            ; $59f6: $0c
	ld a, [hl]                                       ; $59f7: $7e
	nop                                              ; $59f8: $00
	sub a                                            ; $59f9: $97
	ld l, l                                          ; $59fa: $6d
	ld [hl+], a                                      ; $59fb: $22
	jr nc, jr_02e_5a7c                               ; $59fc: $30 $7e

	ld [bc], a                                       ; $59fe: $02
	nop                                              ; $59ff: $00
	xor c                                            ; $5a00: $a9
	res 2, a                                         ; $5a01: $cb $97
	nop                                              ; $5a03: $00
	ld [hl+], a                                      ; $5a04: $22
	inc c                                            ; $5a05: $0c
	call nz, $0c22                                   ; $5a06: $c4 $22 $0c
	ld a, [hl]                                       ; $5a09: $7e
	nop                                              ; $5a0a: $00
	sub a                                            ; $5a0b: $97
	ld c, a                                          ; $5a0c: $4f
	ld h, $3c                                        ; $5a0d: $26 $3c
	sub a                                            ; $5a0f: $97
	ld l, d                                          ; $5a10: $6a
	add hl, hl                                       ; $5a11: $29
	inc c                                            ; $5a12: $0c
	ld a, [hl]                                       ; $5a13: $7e
	ld bc, $aa00                                     ; $5a14: $01 $00 $aa

jr_02e_5a17:
	sub a                                            ; $5a17: $97
	ld e, [hl]                                       ; $5a18: $5e
	daa                                              ; $5a19: $27
	inc h                                            ; $5a1a: $24
	ld a, [hl]                                       ; $5a1b: $7e
	ld bc, $a100                                     ; $5a1c: $01 $00 $a1
	sub a                                            ; $5a1f: $97

jr_02e_5a20:
	nop                                              ; $5a20: $00
	push bc                                          ; $5a21: $c5
	daa                                              ; $5a22: $27
	inc c                                            ; $5a23: $0c
	ld a, [hl]                                       ; $5a24: $7e
	nop                                              ; $5a25: $00

jr_02e_5a26:
	sub c                                            ; $5a26: $91
	sub a                                            ; $5a27: $97
	sbc l                                            ; $5a28: $9d
	ld [hl+], a                                      ; $5a29: $22
	inc c                                            ; $5a2a: $0c
	inc h                                            ; $5a2b: $24

jr_02e_5a2c:
	inc c                                            ; $5a2c: $0c
	sub [hl]                                         ; $5a2d: $96
	nop                                              ; $5a2e: $00
	nop                                              ; $5a2f: $00
	adc $91                                          ; $5a30: $ce $91
	sub a                                            ; $5a32: $97
	adc h                                            ; $5a33: $8c
	ld l, c                                          ; $5a34: $69
	dec h                                            ; $5a35: $25
	ld [$0097], sp                                   ; $5a36: $08 $97 $00
	push bc                                          ; $5a39: $c5
	dec h                                            ; $5a3a: $25
	db $10                                           ; $5a3b: $10
	jp $1825                                         ; $5a3c: $c3 $25 $18


	sub a                                            ; $5a3f: $97
	adc h                                            ; $5a40: $8c
	ld [hl+], a                                      ; $5a41: $22
	ld [$0097], sp                                   ; $5a42: $08 $97 $00

jr_02e_5a45:
	jp $1022                                         ; $5a45: $c3 $22 $10


	sub a                                            ; $5a48: $97
	sbc [hl]                                         ; $5a49: $9e
	dec de                                           ; $5a4a: $1b
	ld [$0097], sp                                   ; $5a4b: $08 $97 $00
	jp $281b                                         ; $5a4e: $c3 $1b $28


	sub a                                            ; $5a51: $97
	adc [hl]                                         ; $5a52: $8e
	ld e, $08                                        ; $5a53: $1e $08
	sub a                                            ; $5a55: $97
	nop                                              ; $5a56: $00
	jp $101e                                         ; $5a57: $c3 $1e $10


	ret nc                                           ; $5a5a: $d0

	add b                                            ; $5a5b: $80
	sub a                                            ; $5a5c: $97
	ld a, h                                          ; $5a5d: $7c
	jr nz, jr_02e_5a68                               ; $5a5e: $20 $08

	sub a                                            ; $5a60: $97

jr_02e_5a61:
	nop                                              ; $5a61: $00
	jp $1020                                         ; $5a62: $c3 $20 $10


	sub a                                            ; $5a65: $97
	xor a                                            ; $5a66: $af
	ret nc                                           ; $5a67: $d0

jr_02e_5a68:
	ld a, b                                          ; $5a68: $78
	inc d                                            ; $5a69: $14
	ld [$0097], sp                                   ; $5a6a: $08 $97 $00
	jp $1014                                         ; $5a6d: $c3 $14 $10


	sub a                                            ; $5a70: $97
	xor a                                            ; $5a71: $af
	ret nc                                           ; $5a72: $d0

	ld h, h                                          ; $5a73: $64
	dec de                                           ; $5a74: $1b
	ld [$0097], sp                                   ; $5a75: $08 $97 $00
	jp $101b                                         ; $5a78: $c3 $1b $10


	sub a                                            ; $5a7b: $97

jr_02e_5a7c:
	ld e, l                                          ; $5a7c: $5d
	dec de                                           ; $5a7d: $1b
	jr jr_02e_5a17                                   ; $5a7e: $18 $97

	nop                                              ; $5a80: $00
	ret                                              ; $5a81: $c9


	ld a, [hl]                                       ; $5a82: $7e
	ld bc, $a000                                     ; $5a83: $01 $00 $a0
	dec de                                           ; $5a86: $1b
	jr nz, jr_02e_5a20                               ; $5a87: $20 $97

	nop                                              ; $5a89: $00
	sub [hl]                                         ; $5a8a: $96
	jr jr_02e_5a94                                   ; $5a8b: $18 $07

	dec de                                           ; $5a8d: $1b
	jr jr_02e_5a26                                   ; $5a8e: $18 $96

	nop                                              ; $5a90: $00
	nop                                              ; $5a91: $00
	push bc                                          ; $5a92: $c5
	ld a, [hl]                                       ; $5a93: $7e

jr_02e_5a94:
	ld bc, $a030                                     ; $5a94: $01 $30 $a0
	add hl, de                                       ; $5a97: $19
	ld a, b                                          ; $5a98: $78
	ld a, [hl]                                       ; $5a99: $7e
	ld bc, $a000                                     ; $5a9a: $01 $00 $a0
	call nz, $0c19                                   ; $5a9d: $c4 $19 $0c
	jp $0c19                                         ; $5aa0: $c3 $19 $0c


	jp nz, $0c19                                     ; $5aa3: $c2 $19 $0c

	pop bc                                           ; $5aa6: $c1
	add hl, de                                       ; $5aa7: $19
	inc c                                            ; $5aa8: $0c
	rst $38                                          ; $5aa9: $ff
	or h                                             ; $5aaa: $b4
	adc h                                            ; $5aab: $8c
	ld hl, $0a00                                     ; $5aac: $21 $00 $0a
	dec c                                            ; $5aaf: $0d
	call nz, $3b0a                                   ; $5ab0: $c4 $0a $3b
	jp nz, $0c0e                                     ; $5ab3: $c2 $0e $0c

	call nz, $3c0e                                   ; $5ab6: $c4 $0e $3c
	jp nz, $0f0c                                     ; $5ab9: $c2 $0c $0f

	call nz, $390c                                   ; $5abc: $c4 $0c $39
	jp nz, $0f0a                                     ; $5abf: $c2 $0a $0f

	call nz, $390a                                   ; $5ac2: $c4 $0a $39
	jp nz, $c280                                     ; $5ac5: $c2 $80 $c2

	rrca                                             ; $5ac8: $0f
	ld a, [bc]                                       ; $5ac9: $0a
	call nz, $3e0f                                   ; $5aca: $c4 $0f $3e
	jp nz, $0a10                                     ; $5acd: $c2 $10 $0a

	call nz, $3e10                                   ; $5ad0: $c4 $10 $3e
	jp nz, $0a11                                     ; $5ad3: $c2 $11 $0a

	call nz, $3e11                                   ; $5ad6: $c4 $11 $3e

jr_02e_5ad9:
	jp nz, $0b05                                     ; $5ad9: $c2 $05 $0b

	call nz, $0d05                                   ; $5adc: $c4 $05 $0d
	jp nz, $1611                                     ; $5adf: $c2 $11 $16

	call nz, $0211                                   ; $5ae2: $c4 $11 $02
	jp nz, $180f                                     ; $5ae5: $c2 $0f $18

	jp nz, $1a81                                     ; $5ae8: $c2 $81 $1a

	inc a                                            ; $5aeb: $3c
	call nz, $0c1a                                   ; $5aec: $c4 $1a $0c
	jp nz, $3c1b                                     ; $5aef: $c2 $1b $3c

	call nz, $0c1b                                   ; $5af2: $c4 $1b $0c
	jp nz, $141d                                     ; $5af5: $c2 $1d $14

	call nz, $041d                                   ; $5af8: $c4 $1d $04
	jp nz, $1811                                     ; $5afb: $c2 $11 $18

	jp nz, $161d                                     ; $5afe: $c2 $1d $16

	nop                                              ; $5b01: $00
	ld [bc], a                                       ; $5b02: $02
	jp nz, $141b                                     ; $5b03: $c2 $1b $14

	call nz, $041b                                   ; $5b06: $c4 $1b $04
	jp nz, $241b                                     ; $5b09: $c2 $1b $24

	call nz, $0c1b                                   ; $5b0c: $c4 $1b $0c
	jp nz, $1881                                     ; $5b0f: $c2 $81 $18

	ld [$18c4], sp                                   ; $5b12: $08 $c4 $18

jr_02e_5b15:
	jr z, jr_02e_5ad9                                ; $5b15: $28 $c2

	dec de                                           ; $5b17: $1b
	inc c                                            ; $5b18: $0c
	call nz, $0c1b                                   ; $5b19: $c4 $1b $0c
	jp nz, $081b                                     ; $5b1c: $c2 $1b $08

	call nz, $281b                                   ; $5b1f: $c4 $1b $28
	add $1b                                          ; $5b22: $c6 $1b
	jr @-$1d                                         ; $5b24: $18 $e1

	add b                                            ; $5b26: $80
	ld hl, $081d                                     ; $5b27: $21 $1d $08
	call nz, $101d                                   ; $5b2a: $c4 $1d $10
	or h                                             ; $5b2d: $b4
	ld [hl], e                                       ; $5b2e: $73
	ld hl, $1107                                     ; $5b2f: $21 $07 $11
	jr jr_02e_5b15                                   ; $5b32: $18 $e1

	ld h, h                                          ; $5b34: $64
	ld hl, $1611                                     ; $5b35: $21 $11 $16
	call nz, $0211                                   ; $5b38: $c4 $11 $02
	jp nz, $380f                                     ; $5b3b: $c2 $0f $38

	call nz, $180f                                   ; $5b3e: $c4 $0f $18
	call nz, $900e                                   ; $5b41: $c4 $0e $90
	add $0e                                          ; $5b44: $c6 $0e
	jr @+$01                                         ; $5b46: $18 $ff

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

Jump_02e_6991:
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

Jump_02e_6b97:
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

Call_02e_7814:
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

Jump_02e_7dc9:
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

Call_02e_7e8b:
	rst $38                                          ; $7e8b: $ff
	rst $38                                          ; $7e8c: $ff
	rst $38                                          ; $7e8d: $ff
	rst $38                                          ; $7e8e: $ff
	rst $38                                          ; $7e8f: $ff
	rst $38                                          ; $7e90: $ff

Jump_02e_7e91:
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
