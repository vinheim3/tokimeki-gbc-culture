; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $086", ROMX[$4000], BANK[$86]

	and b                                            ; $4000: $a0
	dec h                                            ; $4001: $25
	ret nc                                           ; $4002: $d0

	ret nc                                           ; $4003: $d0

	inc bc                                           ; $4004: $03
	ldh [rP1], a                                     ; $4005: $e0 $00
	ld b, $03                                        ; $4007: $06 $03
	db $e4                                           ; $4009: $e4
	inc b                                            ; $400a: $04
	pop af                                           ; $400b: $f1
	inc e                                            ; $400c: $1c
	ld h, b                                          ; $400d: $60
	add b                                            ; $400e: $80
	and b                                            ; $400f: $a0
	inc c                                            ; $4010: $0c
	dec bc                                           ; $4011: $0b
	or b                                             ; $4012: $b0
	call z, $e403                                    ; $4013: $cc $03 $e4
	inc b                                            ; $4016: $04
	push hl                                          ; $4017: $e5
	rst $38                                          ; $4018: $ff
	inc bc                                           ; $4019: $03
	db $e4                                           ; $401a: $e4
	dec b                                            ; $401b: $05
	cp e                                             ; $401c: $bb
	dec bc                                           ; $401d: $0b
	or b                                             ; $401e: $b0
	push hl                                          ; $401f: $e5
	inc bc                                           ; $4020: $03
	db $e4                                           ; $4021: $e4
	inc b                                            ; $4022: $04
	reti                                             ; $4023: $d9


	rst $38                                          ; $4024: $ff
	inc bc                                           ; $4025: $03
	db $e4                                           ; $4026: $e4
	dec b                                            ; $4027: $05
	xor a                                            ; $4028: $af
	add hl, bc                                       ; $4029: $09
	ld e, [hl]                                       ; $402a: $5e
	ret nc                                           ; $402b: $d0

	add h                                            ; $402c: $84
	and b                                            ; $402d: $a0
	dec h                                            ; $402e: $25
	pop bc                                           ; $402f: $c1
	inc [hl]                                         ; $4030: $34
	jp nc, $fc61                                     ; $4031: $d2 $61 $fc

	add h                                            ; $4034: $84
	and b                                            ; $4035: $a0
	dec h                                            ; $4036: $25
	jp nc, $6017                                     ; $4037: $d2 $17 $60

	cp $0c                                           ; $403a: $fe $0c
	db $fc                                           ; $403c: $fc
	pop bc                                           ; $403d: $c1
	db $38, $84                                      ; $403e: $38 $84
	and b                                            ; $4040: $a0
	dec h                                            ; $4041: $25
	pop de                                           ; $4042: $d1
	db $fc                                           ; $4043: $fc
	pop bc                                           ; $4044: $c1
	ld b, h                                          ; $4045: $44
	jp nc, $03d0                                     ; $4046: $d2 $d0 $03

	ldh [rP1], a                                     ; $4049: $e0 $00
	ccf                                              ; $404b: $3f
	inc bc                                           ; $404c: $03
	db $e4                                           ; $404d: $e4
	inc b                                            ; $404e: $04
	xor l                                            ; $404f: $ad
	db $fc                                           ; $4050: $fc
	add h                                            ; $4051: $84
	and b                                            ; $4052: $a0
	dec h                                            ; $4053: $25
	call c, $6017                                    ; $4054: $dc $17 $60
	cp $0c                                           ; $4057: $fe $0c
	db $fc                                           ; $4059: $fc
	pop bc                                           ; $405a: $c1
	db $38, $84                                      ; $405b: $38 $84
	and b                                            ; $405d: $a0
	dec h                                            ; $405e: $25
	pop de                                           ; $405f: $d1
	db $fc                                           ; $4060: $fc
	pop bc                                           ; $4061: $c1
	ld b, l                                          ; $4062: $45
	jp nc, $03d0                                     ; $4063: $d2 $d0 $03

	ldh [rP1], a                                     ; $4066: $e0 $00
	ld [hl+], a                                      ; $4068: $22
	inc bc                                           ; $4069: $03
	db $e4                                           ; $406a: $e4
	inc b                                            ; $406b: $04
	sub b                                            ; $406c: $90
	dec de                                           ; $406d: $1b
	ld h, b                                          ; $406e: $60
	cp $10                                           ; $406f: $fe $10
	db $fc                                           ; $4071: $fc

jr_086_4072:
	pop bc                                           ; $4072: $c1
	db $38, $84                                      ; $4073: $38 $84
	and b                                            ; $4075: $a0
	dec h                                            ; $4076: $25
	pop de                                           ; $4077: $d1
	db $fc                                           ; $4078: $fc
	pop bc                                           ; $4079: $c1
	ld b, c                                          ; $407a: $41
	jp nc, $a084                                     ; $407b: $d2 $84 $a0

	dec h                                            ; $407e: $25
	ret nc                                           ; $407f: $d0

	ret nc                                           ; $4080: $d0

	inc bc                                           ; $4081: $03
	ldh [rP1], a                                     ; $4082: $e0 $00
	ld b, $03                                        ; $4084: $06 $03
	db $e4                                           ; $4086: $e4
	inc b                                            ; $4087: $04
	ld [hl], h                                       ; $4088: $74
	inc e                                            ; $4089: $1c

jr_086_408a:
	ld h, b                                          ; $408a: $60
	add b                                            ; $408b: $80
	and b                                            ; $408c: $a0
	inc c                                            ; $408d: $0c
	dec bc                                           ; $408e: $0b
	or b                                             ; $408f: $b0
	call z, $e403                                    ; $4090: $cc $03 $e4
	inc b                                            ; $4093: $04
	ld l, b                                          ; $4094: $68
	rst $38                                          ; $4095: $ff
	inc bc                                           ; $4096: $03
	db $e4                                           ; $4097: $e4
	ld b, $10                                        ; $4098: $06 $10
	dec bc                                           ; $409a: $0b
	or b                                             ; $409b: $b0
	push hl                                          ; $409c: $e5
	inc bc                                           ; $409d: $03
	db $e4                                           ; $409e: $e4
	inc b                                            ; $409f: $04
	ld e, h                                          ; $40a0: $5c
	rst $38                                          ; $40a1: $ff
	inc bc                                           ; $40a2: $03
	db $e4                                           ; $40a3: $e4
	ld b, $04                                        ; $40a4: $06 $04
	add hl, bc                                       ; $40a6: $09
	ld [hl], d                                       ; $40a7: $72
	ld h, b                                          ; $40a8: $60
	cp $0a                                           ; $40a9: $fe $0a
	pop af                                           ; $40ab: $f1
	add b                                            ; $40ac: $80
	ld [bc], a                                       ; $40ad: $02
	ld [hl], l                                       ; $40ae: $75
	db $fc                                           ; $40af: $fc
	adc e                                            ; $40b0: $8b
	ld [bc], a                                       ; $40b1: $02
	ld b, d                                          ; $40b2: $42
	or b                                             ; $40b3: $b0
	ld [hl], e                                       ; $40b4: $73
	dec b                                            ; $40b5: $05
	ret nc                                           ; $40b6: $d0

	add h                                            ; $40b7: $84
	and b                                            ; $40b8: $a0
	dec h                                            ; $40b9: $25
	rst SubAFromHL                                          ; $40ba: $d7
	rlca                                             ; $40bb: $07
	ret nc                                           ; $40bc: $d0

	add h                                            ; $40bd: $84
	and b                                            ; $40be: $a0
	dec h                                            ; $40bf: $25
	pop bc                                           ; $40c0: $c1
	inc [hl]                                         ; $40c1: $34
	db $d3                                           ; $40c2: $d3
	ld h, c                                          ; $40c3: $61
	db $fc                                           ; $40c4: $fc
	add h                                            ; $40c5: $84
	and b                                            ; $40c6: $a0
	dec h                                            ; $40c7: $25
	jp nc, $6017                                     ; $40c8: $d2 $17 $60

	cp $0c                                           ; $40cb: $fe $0c
	db $fc                                           ; $40cd: $fc
	pop bc                                           ; $40ce: $c1
	jr c, @-$7a                                      ; $40cf: $38 $84

	and b                                            ; $40d1: $a0
	dec h                                            ; $40d2: $25
	pop de                                           ; $40d3: $d1
	db $fc                                           ; $40d4: $fc
	pop bc                                           ; $40d5: $c1
	ld b, h                                          ; $40d6: $44
	db $d3                                           ; $40d7: $d3
	ret nc                                           ; $40d8: $d0

	inc bc                                           ; $40d9: $03
	ldh [rP1], a                                     ; $40da: $e0 $00
	ccf                                              ; $40dc: $3f
	inc bc                                           ; $40dd: $03
	db $e4                                           ; $40de: $e4
	inc b                                            ; $40df: $04
	inc e                                            ; $40e0: $1c
	db $fc                                           ; $40e1: $fc
	add h                                            ; $40e2: $84
	and b                                            ; $40e3: $a0
	dec h                                            ; $40e4: $25
	call c, $6017                                    ; $40e5: $dc $17 $60
	cp $0c                                           ; $40e8: $fe $0c
	db $fc                                           ; $40ea: $fc
	pop bc                                           ; $40eb: $c1
	jr c, jr_086_4072                                ; $40ec: $38 $84

	and b                                            ; $40ee: $a0
	dec h                                            ; $40ef: $25
	pop de                                           ; $40f0: $d1
	db $fc                                           ; $40f1: $fc
	pop bc                                           ; $40f2: $c1
	ld b, l                                          ; $40f3: $45
	db $d3                                           ; $40f4: $d3
	ret nc                                           ; $40f5: $d0

	inc bc                                           ; $40f6: $03
	ldh [rP1], a                                     ; $40f7: $e0 $00
	ld [hl+], a                                      ; $40f9: $22
	inc bc                                           ; $40fa: $03
	db $e4                                           ; $40fb: $e4
	inc bc                                           ; $40fc: $03
	rst $38                                          ; $40fd: $ff
	dec de                                           ; $40fe: $1b
	ld h, b                                          ; $40ff: $60
	cp $10                                           ; $4100: $fe $10
	db $fc                                           ; $4102: $fc
	pop bc                                           ; $4103: $c1
	jr c, jr_086_408a                                ; $4104: $38 $84

	and b                                            ; $4106: $a0
	dec h                                            ; $4107: $25
	pop de                                           ; $4108: $d1
	db $fc                                           ; $4109: $fc
	pop bc                                           ; $410a: $c1
	ld b, c                                          ; $410b: $41
	db $d3                                           ; $410c: $d3
	add h                                            ; $410d: $84
	and b                                            ; $410e: $a0
	dec h                                            ; $410f: $25
	ret nc                                           ; $4110: $d0

	ret nc                                           ; $4111: $d0

	inc bc                                           ; $4112: $03
	ldh [rP1], a                                     ; $4113: $e0 $00
	ld b, $03                                        ; $4115: $06 $03
	db $e4                                           ; $4117: $e4
	inc bc                                           ; $4118: $03
	db $e3                                           ; $4119: $e3
	inc e                                            ; $411a: $1c
	ld h, b                                          ; $411b: $60
	add b                                            ; $411c: $80
	and b                                            ; $411d: $a0
	inc c                                            ; $411e: $0c

jr_086_411f:
	dec bc                                           ; $411f: $0b
	or b                                             ; $4120: $b0
	call z, $e403                                    ; $4121: $cc $03 $e4
	inc bc                                           ; $4124: $03
	rst SubAFromHL                                          ; $4125: $d7
	rst $38                                          ; $4126: $ff
	inc bc                                           ; $4127: $03
	db $e4                                           ; $4128: $e4
	ld b, $36                                        ; $4129: $06 $36
	dec bc                                           ; $412b: $0b
	or b                                             ; $412c: $b0
	push hl                                          ; $412d: $e5
	inc bc                                           ; $412e: $03
	db $e4                                           ; $412f: $e4
	inc bc                                           ; $4130: $03
	set 7, a                                         ; $4131: $cb $ff
	inc bc                                           ; $4133: $03
	db $e4                                           ; $4134: $e4
	ld b, $2a                                        ; $4135: $06 $2a
	add hl, bc                                       ; $4137: $09
	ld d, e                                          ; $4138: $53
	ld h, b                                          ; $4139: $60
	db $fc                                           ; $413a: $fc
	ret nz                                           ; $413b: $c0

jr_086_413c:
	ld l, d                                          ; $413c: $6a
	ret nc                                           ; $413d: $d0

	ld [$84d0], sp                                   ; $413e: $08 $d0 $84
	and b                                            ; $4141: $a0
	dec h                                            ; $4142: $25
	jp nc, $00e0                                     ; $4143: $d2 $e0 $00

	ld b, a                                          ; $4146: $47
	ld b, h                                          ; $4147: $44
	ret nc                                           ; $4148: $d0

	add h                                            ; $4149: $84
	and b                                            ; $414a: $a0
	dec h                                            ; $414b: $25
	pop bc                                           ; $414c: $c1
	inc [hl]                                         ; $414d: $34
	rst SubAFromHL                                          ; $414e: $d7
	add d                                            ; $414f: $82
	add h                                            ; $4150: $84
	and b                                            ; $4151: $a0
	dec h                                            ; $4152: $25
	inc b                                            ; $4153: $04

jr_086_4154:
	ldh [rAUD1SWEEP], a                              ; $4154: $e0 $10
	ldh [rAUD1LEN], a                                ; $4156: $e0 $11
	inc d                                            ; $4158: $14
	ld h, b                                          ; $4159: $60
	cp $09                                           ; $415a: $fe $09
	db $fc                                           ; $415c: $fc
	ret nz                                           ; $415d: $c0

	ld h, l                                          ; $415e: $65
	rst SubAFromHL                                          ; $415f: $d7
	ei                                               ; $4160: $fb
	ret nz                                           ; $4161: $c0

	ld h, [hl]                                       ; $4162: $66
	ldh [rAUD2LEN], a                                ; $4163: $e0 $16
	inc bc                                           ; $4165: $03
	ldh [rP1], a                                     ; $4166: $e0 $00
	dec h                                            ; $4168: $25
	inc bc                                           ; $4169: $03
	db $e4                                           ; $416a: $e4
	inc bc                                           ; $416b: $03
	sub b                                            ; $416c: $90
	inc b                                            ; $416d: $04
	ldh [rAUD1LOW], a                                ; $416e: $e0 $13
	ldh [rAUD1HIGH], a                               ; $4170: $e0 $14
	inc d                                            ; $4172: $14
	ld h, b                                          ; $4173: $60
	cp $09                                           ; $4174: $fe $09
	db $fc                                           ; $4176: $fc
	ret nz                                           ; $4177: $c0

	ld h, l                                          ; $4178: $65
	call c, $c0fb                                    ; $4179: $dc $fb $c0
	ld h, [hl]                                       ; $417c: $66
	ldh [rAUD2LEN], a                                ; $417d: $e0 $16
	inc bc                                           ; $417f: $03
	ldh [rP1], a                                     ; $4180: $e0 $00
	dec bc                                           ; $4182: $0b
	inc bc                                           ; $4183: $03
	db $e4                                           ; $4184: $e4
	inc bc                                           ; $4185: $03
	halt                                             ; $4186: $76
	nop                                              ; $4187: $00
	inc bc                                           ; $4188: $03
	ldh [rP1], a                                     ; $4189: $e0 $00
	ld [bc], a                                       ; $418b: $02
	ld d, a                                          ; $418c: $57
	ld h, c                                          ; $418d: $61
	db $fc                                           ; $418e: $fc
	add h                                            ; $418f: $84
	and b                                            ; $4190: $a0
	dec h                                            ; $4191: $25
	jp nc, $6017                                     ; $4192: $d2 $17 $60

	cp $0c                                           ; $4195: $fe $0c
	db $fc                                           ; $4197: $fc
	pop bc                                           ; $4198: $c1
	jr c, jr_086_411f                                ; $4199: $38 $84

	and b                                            ; $419b: $a0
	dec h                                            ; $419c: $25
	pop de                                           ; $419d: $d1
	db $fc                                           ; $419e: $fc
	pop bc                                           ; $419f: $c1
	ld b, h                                          ; $41a0: $44
	rst SubAFromHL                                          ; $41a1: $d7
	ret nc                                           ; $41a2: $d0

	inc bc                                           ; $41a3: $03
	ldh [rP1], a                                     ; $41a4: $e0 $00
	ccf                                              ; $41a6: $3f
	inc bc                                           ; $41a7: $03
	db $e4                                           ; $41a8: $e4
	inc bc                                           ; $41a9: $03
	ld d, d                                          ; $41aa: $52
	db $fc                                           ; $41ab: $fc
	add h                                            ; $41ac: $84
	and b                                            ; $41ad: $a0
	dec h                                            ; $41ae: $25
	call c, $6017                                    ; $41af: $dc $17 $60
	cp $0c                                           ; $41b2: $fe $0c
	db $fc                                           ; $41b4: $fc
	pop bc                                           ; $41b5: $c1
	jr c, jr_086_413c                                ; $41b6: $38 $84

	and b                                            ; $41b8: $a0
	dec h                                            ; $41b9: $25
	pop de                                           ; $41ba: $d1
	db $fc                                           ; $41bb: $fc
	pop bc                                           ; $41bc: $c1
	ld b, l                                          ; $41bd: $45
	rst SubAFromHL                                          ; $41be: $d7
	ret nc                                           ; $41bf: $d0

	inc bc                                           ; $41c0: $03
	ldh [rP1], a                                     ; $41c1: $e0 $00
	ld [hl+], a                                      ; $41c3: $22
	inc bc                                           ; $41c4: $03
	db $e4                                           ; $41c5: $e4
	inc bc                                           ; $41c6: $03
	dec [hl]                                         ; $41c7: $35
	dec de                                           ; $41c8: $1b
	ld h, b                                          ; $41c9: $60
	cp $10                                           ; $41ca: $fe $10
	db $fc                                           ; $41cc: $fc
	pop bc                                           ; $41cd: $c1
	jr c, jr_086_4154                                ; $41ce: $38 $84

	and b                                            ; $41d0: $a0
	dec h                                            ; $41d1: $25
	pop de                                           ; $41d2: $d1
	db $fc                                           ; $41d3: $fc
	pop bc                                           ; $41d4: $c1
	ld b, c                                          ; $41d5: $41
	rst SubAFromHL                                          ; $41d6: $d7
	add h                                            ; $41d7: $84
	and b                                            ; $41d8: $a0
	dec h                                            ; $41d9: $25
	ret nc                                           ; $41da: $d0

	ret nc                                           ; $41db: $d0

	inc bc                                           ; $41dc: $03
	ldh [rP1], a                                     ; $41dd: $e0 $00
	ld b, $03                                        ; $41df: $06 $03
	db $e4                                           ; $41e1: $e4
	inc bc                                           ; $41e2: $03
	add hl, de                                       ; $41e3: $19
	inc e                                            ; $41e4: $1c
	ld h, b                                          ; $41e5: $60
	add b                                            ; $41e6: $80
	and b                                            ; $41e7: $a0
	inc c                                            ; $41e8: $0c
	dec bc                                           ; $41e9: $0b
	or b                                             ; $41ea: $b0
	call z, $e403                                    ; $41eb: $cc $03 $e4
	inc bc                                           ; $41ee: $03
	dec c                                            ; $41ef: $0d
	rst $38                                          ; $41f0: $ff
	inc bc                                           ; $41f1: $03
	db $e4                                           ; $41f2: $e4
	ld b, $23                                        ; $41f3: $06 $23
	dec bc                                           ; $41f5: $0b
	or b                                             ; $41f6: $b0
	push hl                                          ; $41f7: $e5
	inc bc                                           ; $41f8: $03
	db $e4                                           ; $41f9: $e4
	inc bc                                           ; $41fa: $03
	ld bc, $03ff                                     ; $41fb: $01 $ff $03
	db $e4                                           ; $41fe: $e4
	ld b, $17                                        ; $41ff: $06 $17
	add hl, bc                                       ; $4201: $09
	ret nz                                           ; $4202: $c0

	and $fc                                          ; $4203: $e6 $fc
	ret nz                                           ; $4205: $c0

	db $e3                                           ; $4206: $e3
	cp $0c                                           ; $4207: $fe $0c
	pop af                                           ; $4209: $f1
	add b                                            ; $420a: $80
	ld [bc], a                                       ; $420b: $02
	ld a, c                                          ; $420c: $79
	db $fc                                           ; $420d: $fc
	ret nz                                           ; $420e: $c0

	add b                                            ; $420f: $80
	pop de                                           ; $4210: $d1
	db $fc                                           ; $4211: $fc
	ret nz                                           ; $4212: $c0

	ld l, d                                          ; $4213: $6a
	db $d3                                           ; $4214: $d3
	ld [$84d0], sp                                   ; $4215: $08 $d0 $84
	and b                                            ; $4218: $a0
	dec h                                            ; $4219: $25
	db $d3                                           ; $421a: $d3
	ldh [rP1], a                                     ; $421b: $e0 $00
	adc $fe                                          ; $421d: $ce $fe
	inc c                                            ; $421f: $0c
	pop af                                           ; $4220: $f1
	add b                                            ; $4221: $80
	ld [bc], a                                       ; $4222: $02
	ld a, d                                          ; $4223: $7a
	db $fc                                           ; $4224: $fc
	ret nz                                           ; $4225: $c0

	add b                                            ; $4226: $80
	jp nc, $c0fc                                     ; $4227: $d2 $fc $c0

	ld l, d                                          ; $422a: $6a
	pop de                                           ; $422b: $d1
	ld [$84d0], sp                                   ; $422c: $08 $d0 $84
	and b                                            ; $422f: $a0
	dec h                                            ; $4230: $25
	push de                                          ; $4231: $d5
	ldh [rP1], a                                     ; $4232: $e0 $00
	or a                                             ; $4234: $b7
	cp $0c                                           ; $4235: $fe $0c
	pop af                                           ; $4237: $f1
	add b                                            ; $4238: $80
	ld [bc], a                                       ; $4239: $02
	ld a, e                                          ; $423a: $7b
	db $fc                                           ; $423b: $fc
	ret nz                                           ; $423c: $c0

	add b                                            ; $423d: $80
	jp nc, $c0fc                                     ; $423e: $d2 $fc $c0

	ld l, d                                          ; $4241: $6a
	jp nc, $d008                                     ; $4242: $d2 $08 $d0

	add h                                            ; $4245: $84
	and b                                            ; $4246: $a0
	dec h                                            ; $4247: $25
	jp c, $00e0                                      ; $4248: $da $e0 $00

	and b                                            ; $424b: $a0
	cp $0a                                           ; $424c: $fe $0a
	pop af                                           ; $424e: $f1
	add b                                            ; $424f: $80
	ld [bc], a                                       ; $4250: $02
	xor b                                            ; $4251: $a8
	db $fc                                           ; $4252: $fc
	adc e                                            ; $4253: $8b
	ld bc, $b0f6                                     ; $4254: $01 $f6 $b0
	ld a, [hl-]                                      ; $4257: $3a
	ld [$84d0], sp                                   ; $4258: $08 $d0 $84
	and b                                            ; $425b: $a0
	dec h                                            ; $425c: $25
	rst SubAFromDE                                          ; $425d: $df
	ldh [rP1], a                                     ; $425e: $e0 $00
	adc e                                            ; $4260: $8b
	cp $0c                                           ; $4261: $fe $0c
	pop af                                           ; $4263: $f1
	add b                                            ; $4264: $80
	ld [bc], a                                       ; $4265: $02
	ld a, h                                          ; $4266: $7c
	db $fc                                           ; $4267: $fc
	ret nz                                           ; $4268: $c0

	add b                                            ; $4269: $80
	db $d3                                           ; $426a: $d3
	db $fc                                           ; $426b: $fc
	ret nz                                           ; $426c: $c0

	ld l, d                                          ; $426d: $6a
	ret nc                                           ; $426e: $d0

	ld [$84d0], sp                                   ; $426f: $08 $d0 $84
	and b                                            ; $4272: $a0
	dec h                                            ; $4273: $25
	db $db                                           ; $4274: $db
	ldh [rP1], a                                     ; $4275: $e0 $00
	ld [hl], h                                       ; $4277: $74
	cp $0a                                           ; $4278: $fe $0a
	pop af                                           ; $427a: $f1
	add b                                            ; $427b: $80
	ld [bc], a                                       ; $427c: $02

jr_086_427d:
	xor c                                            ; $427d: $a9
	db $fc                                           ; $427e: $fc
	adc e                                            ; $427f: $8b
	ld bc, $b0f6                                     ; $4280: $01 $f6 $b0
	ld a, $08                                        ; $4283: $3e $08
	ret nc                                           ; $4285: $d0

	add h                                            ; $4286: $84
	and b                                            ; $4287: $a0
	dec h                                            ; $4288: $25
	rst SubAFromDE                                          ; $4289: $df
	ldh [rP1], a                                     ; $428a: $e0 $00
	ld e, a                                          ; $428c: $5f
	cp $0c                                           ; $428d: $fe $0c
	pop af                                           ; $428f: $f1
	add b                                            ; $4290: $80
	ld [bc], a                                       ; $4291: $02
	ld a, l                                          ; $4292: $7d
	db $fc                                           ; $4293: $fc
	ret nz                                           ; $4294: $c0

	add b                                            ; $4295: $80
	db $d3                                           ; $4296: $d3
	db $fc                                           ; $4297: $fc
	ret nz                                           ; $4298: $c0

	ld l, d                                          ; $4299: $6a

jr_086_429a:
	db $d3                                           ; $429a: $d3
	ld [$84d0], sp                                   ; $429b: $08 $d0 $84
	and b                                            ; $429e: $a0
	dec h                                            ; $429f: $25
	call c, $00e0                                    ; $42a0: $dc $e0 $00
	ld c, b                                          ; $42a3: $48
	pop de                                           ; $42a4: $d1
	ld b, h                                          ; $42a5: $44
	ret nc                                           ; $42a6: $d0

	add h                                            ; $42a7: $84
	and b                                            ; $42a8: $a0
	dec h                                            ; $42a9: $25
	pop bc                                           ; $42aa: $c1
	inc [hl]                                         ; $42ab: $34
	ret c                                            ; $42ac: $d8

	add d                                            ; $42ad: $82
	add h                                            ; $42ae: $84
	and b                                            ; $42af: $a0
	dec h                                            ; $42b0: $25
	inc b                                            ; $42b1: $04
	ldh [rAUD1SWEEP], a                              ; $42b2: $e0 $10
	ldh [rAUD1LEN], a                                ; $42b4: $e0 $11
	inc d                                            ; $42b6: $14

jr_086_42b7:
	ld h, b                                          ; $42b7: $60
	cp $09                                           ; $42b8: $fe $09
	db $fc                                           ; $42ba: $fc
	ret nz                                           ; $42bb: $c0

	ld h, l                                          ; $42bc: $65
	rst SubAFromHL                                          ; $42bd: $d7
	ei                                               ; $42be: $fb
	ret nz                                           ; $42bf: $c0

	ld h, [hl]                                       ; $42c0: $66

Jump_086_42c1:
	ldh [rAUD2LEN], a                                ; $42c1: $e0 $16
	inc bc                                           ; $42c3: $03
	ldh [rP1], a                                     ; $42c4: $e0 $00
	dec h                                            ; $42c6: $25
	inc bc                                           ; $42c7: $03
	db $e4                                           ; $42c8: $e4
	ld [bc], a                                       ; $42c9: $02
	ld [hl-], a                                      ; $42ca: $32
	inc b                                            ; $42cb: $04
	ldh [rAUD1LOW], a                                ; $42cc: $e0 $13
	ldh [rAUD1HIGH], a                               ; $42ce: $e0 $14
	inc d                                            ; $42d0: $14
	ld h, b                                          ; $42d1: $60
	cp $09                                           ; $42d2: $fe $09
	db $fc                                           ; $42d4: $fc
	ret nz                                           ; $42d5: $c0

	ld h, l                                          ; $42d6: $65
	call c, $c0fb                                    ; $42d7: $dc $fb $c0
	ld h, [hl]                                       ; $42da: $66
	ldh [rAUD2LEN], a                                ; $42db: $e0 $16
	inc bc                                           ; $42dd: $03
	ldh [rP1], a                                     ; $42de: $e0 $00
	dec bc                                           ; $42e0: $0b
	inc bc                                           ; $42e1: $03
	db $e4                                           ; $42e2: $e4
	ld [bc], a                                       ; $42e3: $02
	jr jr_086_42e6                                   ; $42e4: $18 $00

jr_086_42e6:
	inc bc                                           ; $42e6: $03
	ldh [rP1], a                                     ; $42e7: $e0 $00
	ld [bc], a                                       ; $42e9: $02
	ld [hl], h                                       ; $42ea: $74
	ld h, d                                          ; $42eb: $62
	db $fc                                           ; $42ec: $fc
	add h                                            ; $42ed: $84
	and b                                            ; $42ee: $a0
	dec h                                            ; $42ef: $25
	jp nc, $6017                                     ; $42f0: $d2 $17 $60

	cp $0c                                           ; $42f3: $fe $0c
	db $fc                                           ; $42f5: $fc
	pop bc                                           ; $42f6: $c1
	jr c, jr_086_427d                                ; $42f7: $38 $84

	and b                                            ; $42f9: $a0
	dec h                                            ; $42fa: $25
	pop de                                           ; $42fb: $d1
	db $fc                                           ; $42fc: $fc
	pop bc                                           ; $42fd: $c1
	ld b, h                                          ; $42fe: $44
	ret c                                            ; $42ff: $d8

	ret nc                                           ; $4300: $d0

	inc bc                                           ; $4301: $03
	ldh [rP1], a                                     ; $4302: $e0 $00
	ld e, h                                          ; $4304: $5c
	inc bc                                           ; $4305: $03
	db $e4                                           ; $4306: $e4
	ld bc, $fcf4                                     ; $4307: $01 $f4 $fc
	add h                                            ; $430a: $84
	and b                                            ; $430b: $a0
	dec h                                            ; $430c: $25
	reti                                             ; $430d: $d9


	rla                                              ; $430e: $17
	ld h, b                                          ; $430f: $60
	cp $0c                                           ; $4310: $fe $0c
	db $fc                                           ; $4312: $fc
	pop bc                                           ; $4313: $c1
	jr c, jr_086_429a                                ; $4314: $38 $84

	and b                                            ; $4316: $a0
	dec h                                            ; $4317: $25
	pop de                                           ; $4318: $d1
	db $fc                                           ; $4319: $fc
	pop bc                                           ; $431a: $c1
	ld b, e                                          ; $431b: $43
	ret c                                            ; $431c: $d8

	ret nc                                           ; $431d: $d0

	inc bc                                           ; $431e: $03
	ldh [rP1], a                                     ; $431f: $e0 $00
	ccf                                              ; $4321: $3f
	inc bc                                           ; $4322: $03
	db $e4                                           ; $4323: $e4
	ld bc, $fcd7                                     ; $4324: $01 $d7 $fc
	add h                                            ; $4327: $84
	and b                                            ; $4328: $a0
	dec h                                            ; $4329: $25
	call c, $6017                                    ; $432a: $dc $17 $60
	cp $0c                                           ; $432d: $fe $0c
	db $fc                                           ; $432f: $fc
	pop bc                                           ; $4330: $c1
	jr c, jr_086_42b7                                ; $4331: $38 $84

	and b                                            ; $4333: $a0
	dec h                                            ; $4334: $25
	pop de                                           ; $4335: $d1
	db $fc                                           ; $4336: $fc
	pop bc                                           ; $4337: $c1
	ld b, l                                          ; $4338: $45
	ret c                                            ; $4339: $d8

	ret nc                                           ; $433a: $d0

	inc bc                                           ; $433b: $03
	ldh [rP1], a                                     ; $433c: $e0 $00
	ld [hl+], a                                      ; $433e: $22
	inc bc                                           ; $433f: $03
	db $e4                                           ; $4340: $e4
	ld bc, $1bba                                     ; $4341: $01 $ba $1b
	ld h, b                                          ; $4344: $60
	cp $10                                           ; $4345: $fe $10
	db $fc                                           ; $4347: $fc
	pop bc                                           ; $4348: $c1
	jr c, @-$7a                                      ; $4349: $38 $84

	and b                                            ; $434b: $a0
	dec h                                            ; $434c: $25
	pop de                                           ; $434d: $d1
	db $fc                                           ; $434e: $fc
	pop bc                                           ; $434f: $c1
	ld b, c                                          ; $4350: $41
	ret c                                            ; $4351: $d8

	add h                                            ; $4352: $84
	and b                                            ; $4353: $a0
	dec h                                            ; $4354: $25
	ret nc                                           ; $4355: $d0

	ret nc                                           ; $4356: $d0

	inc bc                                           ; $4357: $03
	ldh [rP1], a                                     ; $4358: $e0 $00
	ld b, $03                                        ; $435a: $06 $03
	db $e4                                           ; $435c: $e4
	ld bc, $1c9e                                     ; $435d: $01 $9e $1c
	ld h, b                                          ; $4360: $60
	add b                                            ; $4361: $80
	and b                                            ; $4362: $a0
	inc c                                            ; $4363: $0c
	dec bc                                           ; $4364: $0b
	or b                                             ; $4365: $b0
	call z, $e403                                    ; $4366: $cc $03 $e4
	ld bc, $ff92                                     ; $4369: $01 $92 $ff
	inc bc                                           ; $436c: $03
	db $e4                                           ; $436d: $e4
	dec b                                            ; $436e: $05
	ld h, d                                          ; $436f: $62
	dec bc                                           ; $4370: $0b
	or b                                             ; $4371: $b0
	push hl                                          ; $4372: $e5
	inc bc                                           ; $4373: $03

jr_086_4374:
	db $e4                                           ; $4374: $e4
	ld bc, $ff86                                     ; $4375: $01 $86 $ff
	inc bc                                           ; $4378: $03
	db $e4                                           ; $4379: $e4
	dec b                                            ; $437a: $05
	ld d, [hl]                                       ; $437b: $56
	add hl, bc                                       ; $437c: $09
	ld h, e                                          ; $437d: $63
	ld h, b                                          ; $437e: $60
	cp $0c                                           ; $437f: $fe $0c
	pop af                                           ; $4381: $f1
	add b                                            ; $4382: $80
	ld [bc], a                                       ; $4383: $02
	ld a, a                                          ; $4384: $7f
	db $fc                                           ; $4385: $fc
	ret nz                                           ; $4386: $c0

	ld h, l                                          ; $4387: $65
	db $db                                           ; $4388: $db
	ld hl, sp-$40                                    ; $4389: $f8 $c0
	ld l, c                                          ; $438b: $69
	db $d3                                           ; $438c: $d3
	ld [$84d0], sp                                   ; $438d: $08 $d0 $84
	and b                                            ; $4390: $a0

jr_086_4391:
	dec h                                            ; $4391: $25
	db $dd                                           ; $4392: $dd
	ldh [rP1], a                                     ; $4393: $e0 $00
	ld c, l                                          ; $4395: $4d
	ld c, d                                          ; $4396: $4a
	ret nc                                           ; $4397: $d0

	add h                                            ; $4398: $84
	and b                                            ; $4399: $a0
	dec h                                            ; $439a: $25
	pop bc                                           ; $439b: $c1
	inc [hl]                                         ; $439c: $34
	jp c, $8483                                      ; $439d: $da $83 $84

	and b                                            ; $43a0: $a0
	dec h                                            ; $43a1: $25
	ld bc, $03dd                                     ; $43a2: $01 $dd $03
	db $e4                                           ; $43a5: $e4
	ld bc, $0455                                     ; $43a6: $01 $55 $04
	ldh [rAUD1SWEEP], a                              ; $43a9: $e0 $10
	ldh [rAUD1LEN], a                                ; $43ab: $e0 $11
	inc d                                            ; $43ad: $14

jr_086_43ae:
	ld h, b                                          ; $43ae: $60
	cp $09                                           ; $43af: $fe $09
	db $fc                                           ; $43b1: $fc
	ret nz                                           ; $43b2: $c0

	ld h, l                                          ; $43b3: $65
	rst SubAFromHL                                          ; $43b4: $d7
	ei                                               ; $43b5: $fb
	ret nz                                           ; $43b6: $c0

	ld h, [hl]                                       ; $43b7: $66
	ldh [rAUD2LEN], a                                ; $43b8: $e0 $16
	inc bc                                           ; $43ba: $03
	ldh [rP1], a                                     ; $43bb: $e0 $00
	dec h                                            ; $43bd: $25
	inc bc                                           ; $43be: $03
	db $e4                                           ; $43bf: $e4
	ld bc, $043b                                     ; $43c0: $01 $3b $04
	ldh [rAUD1LOW], a                                ; $43c3: $e0 $13
	ldh [rAUD1HIGH], a                               ; $43c5: $e0 $14
	inc d                                            ; $43c7: $14
	ld h, b                                          ; $43c8: $60
	cp $09                                           ; $43c9: $fe $09
	db $fc                                           ; $43cb: $fc
	ret nz                                           ; $43cc: $c0

	ld h, l                                          ; $43cd: $65
	call c, $c0fb                                    ; $43ce: $dc $fb $c0
	ld h, [hl]                                       ; $43d1: $66
	ldh [rAUD2LEN], a                                ; $43d2: $e0 $16
	inc bc                                           ; $43d4: $03
	ldh [rP1], a                                     ; $43d5: $e0 $00
	dec bc                                           ; $43d7: $0b
	inc bc                                           ; $43d8: $03
	db $e4                                           ; $43d9: $e4
	ld bc, $0021                                     ; $43da: $01 $21 $00
	inc bc                                           ; $43dd: $03
	ldh [rP1], a                                     ; $43de: $e0 $00
	ld [bc], a                                       ; $43e0: $02
	ld a, a                                          ; $43e1: $7f
	ld h, d                                          ; $43e2: $62
	db $fc                                           ; $43e3: $fc
	add h                                            ; $43e4: $84
	and b                                            ; $43e5: $a0
	dec h                                            ; $43e6: $25
	jp nc, $6017                                     ; $43e7: $d2 $17 $60

	cp $0c                                           ; $43ea: $fe $0c
	db $fc                                           ; $43ec: $fc
	pop bc                                           ; $43ed: $c1
	jr c, jr_086_4374                                ; $43ee: $38 $84

	and b                                            ; $43f0: $a0
	dec h                                            ; $43f1: $25
	pop de                                           ; $43f2: $d1
	db $fc                                           ; $43f3: $fc
	pop bc                                           ; $43f4: $c1
	ld b, h                                          ; $43f5: $44
	jp c, $03d0                                      ; $43f6: $da $d0 $03

	ldh [rP1], a                                     ; $43f9: $e0 $00
	ld h, a                                          ; $43fb: $67
	inc bc                                           ; $43fc: $03
	db $e4                                           ; $43fd: $e4
	nop                                              ; $43fe: $00
	db $fd                                           ; $43ff: $fd
	db $fc                                           ; $4400: $fc
	add h                                            ; $4401: $84
	and b                                            ; $4402: $a0
	dec h                                            ; $4403: $25
	reti                                             ; $4404: $d9


	rla                                              ; $4405: $17
	ld h, b                                          ; $4406: $60
	cp $0c                                           ; $4407: $fe $0c
	db $fc                                           ; $4409: $fc
	pop bc                                           ; $440a: $c1
	jr c, jr_086_4391                                ; $440b: $38 $84

	and b                                            ; $440d: $a0
	dec h                                            ; $440e: $25
	pop de                                           ; $440f: $d1
	db $fc                                           ; $4410: $fc
	pop bc                                           ; $4411: $c1
	ld b, e                                          ; $4412: $43
	jp c, $03d0                                      ; $4413: $da $d0 $03

	ldh [rP1], a                                     ; $4416: $e0 $00
	ld c, d                                          ; $4418: $4a
	inc bc                                           ; $4419: $03
	db $e4                                           ; $441a: $e4
	nop                                              ; $441b: $00
	ldh [$fc], a                                     ; $441c: $e0 $fc
	add h                                            ; $441e: $84
	and b                                            ; $441f: $a0
	dec h                                            ; $4420: $25
	call c, $6017                                    ; $4421: $dc $17 $60
	cp $0c                                           ; $4424: $fe $0c
	db $fc                                           ; $4426: $fc
	pop bc                                           ; $4427: $c1
	jr c, jr_086_43ae                                ; $4428: $38 $84

	and b                                            ; $442a: $a0
	dec h                                            ; $442b: $25
	pop de                                           ; $442c: $d1
	db $fc                                           ; $442d: $fc
	pop bc                                           ; $442e: $c1
	ld b, l                                          ; $442f: $45
	jp c, $03d0                                      ; $4430: $da $d0 $03

	ldh [rP1], a                                     ; $4433: $e0 $00
	dec l                                            ; $4435: $2d
	inc bc                                           ; $4436: $03
	db $e4                                           ; $4437: $e4
	nop                                              ; $4438: $00
	jp Jump_086_6026                                 ; $4439: $c3 $26 $60


	cp $10                                           ; $443c: $fe $10
	db $fc                                           ; $443e: $fc
	pop bc                                           ; $443f: $c1
	jr c, @-$7a                                      ; $4440: $38 $84

	and b                                            ; $4442: $a0
	dec h                                            ; $4443: $25
	pop de                                           ; $4444: $d1
	db $fc                                           ; $4445: $fc
	pop bc                                           ; $4446: $c1
	ld b, c                                          ; $4447: $41
	jp c, $a084                                      ; $4448: $da $84 $a0

	dec h                                            ; $444b: $25
	ret nc                                           ; $444c: $d0

	ret nc                                           ; $444d: $d0

jr_086_444e:
	ld c, $60                                        ; $444e: $0e $60
	db $fc                                           ; $4450: $fc
	add h                                            ; $4451: $84
	and b                                            ; $4452: $a0
	dec h                                            ; $4453: $25
	db $dd                                           ; $4454: $dd
	inc bc                                           ; $4455: $03
	db $e4                                           ; $4456: $e4
	nop                                              ; $4457: $00
	and h                                            ; $4458: $a4
	inc bc                                           ; $4459: $03
	ldh [rP1], a                                     ; $445a: $e0 $00
	ld b, $03                                        ; $445c: $06 $03
	db $e4                                           ; $445e: $e4
	nop                                              ; $445f: $00
	sbc h                                            ; $4460: $9c
	inc e                                            ; $4461: $1c
	ld h, b                                          ; $4462: $60
	add b                                            ; $4463: $80
	and b                                            ; $4464: $a0
	inc c                                            ; $4465: $0c
	dec bc                                           ; $4466: $0b
	or b                                             ; $4467: $b0
	call z, $e403                                    ; $4468: $cc $03 $e4
	nop                                              ; $446b: $00
	sub b                                            ; $446c: $90
	rst $38                                          ; $446d: $ff
	inc bc                                           ; $446e: $03
	db $e4                                           ; $446f: $e4
	dec b                                            ; $4470: $05
	ld e, c                                          ; $4471: $59
	dec bc                                           ; $4472: $0b
	or b                                             ; $4473: $b0
	push hl                                          ; $4474: $e5
	inc bc                                           ; $4475: $03
	db $e4                                           ; $4476: $e4
	nop                                              ; $4477: $00
	add h                                            ; $4478: $84
	rst $38                                          ; $4479: $ff
	inc bc                                           ; $447a: $03
	db $e4                                           ; $447b: $e4
	dec b                                            ; $447c: $05
	ld c, l                                          ; $447d: $4d
	add hl, bc                                       ; $447e: $09
	ld b, d                                          ; $447f: $42
	ret nc                                           ; $4480: $d0

	add h                                            ; $4481: $84
	and b                                            ; $4482: $a0
	dec h                                            ; $4483: $25
	pop bc                                           ; $4484: $c1
	inc [hl]                                         ; $4485: $34
	db $dd                                           ; $4486: $dd
	add d                                            ; $4487: $82
	add h                                            ; $4488: $84
	and b                                            ; $4489: $a0
	dec h                                            ; $448a: $25
	ld [bc], a                                       ; $448b: $02
	ldh [rAUD1LEN], a                                ; $448c: $e0 $11
	inc d                                            ; $448e: $14
	ld h, b                                          ; $448f: $60
	cp $09                                           ; $4490: $fe $09
	db $fc                                           ; $4492: $fc
	ret nz                                           ; $4493: $c0

	ld h, l                                          ; $4494: $65
	rst SubAFromHL                                          ; $4495: $d7
	ei                                               ; $4496: $fb
	ret nz                                           ; $4497: $c0

	ld h, [hl]                                       ; $4498: $66
	ldh [rAUD2LEN], a                                ; $4499: $e0 $16
	inc bc                                           ; $449b: $03
	ldh [rP1], a                                     ; $449c: $e0 $00
	dec h                                            ; $449e: $25
	inc bc                                           ; $449f: $03
	db $e4                                           ; $44a0: $e4
	nop                                              ; $44a1: $00
	ld e, d                                          ; $44a2: $5a
	inc b                                            ; $44a3: $04
	ldh [rAUD1LOW], a                                ; $44a4: $e0 $13
	ldh [rAUD1HIGH], a                               ; $44a6: $e0 $14
	inc d                                            ; $44a8: $14
	ld h, b                                          ; $44a9: $60
	cp $09                                           ; $44aa: $fe $09
	db $fc                                           ; $44ac: $fc
	ret nz                                           ; $44ad: $c0

	ld h, l                                          ; $44ae: $65
	call c, $c0fb                                    ; $44af: $dc $fb $c0
	ld h, [hl]                                       ; $44b2: $66
	ldh [rAUD2LEN], a                                ; $44b3: $e0 $16
	inc bc                                           ; $44b5: $03
	ldh [rP1], a                                     ; $44b6: $e0 $00
	dec bc                                           ; $44b8: $0b
	inc bc                                           ; $44b9: $03
	db $e4                                           ; $44ba: $e4
	nop                                              ; $44bb: $00
	ld b, b                                          ; $44bc: $40
	nop                                              ; $44bd: $00
	inc bc                                           ; $44be: $03
	ldh [rP1], a                                     ; $44bf: $e0 $00
	ld [bc], a                                       ; $44c1: $02
	dec de                                           ; $44c2: $1b
	ld h, b                                          ; $44c3: $60
	cp $10                                           ; $44c4: $fe $10
	db $fc                                           ; $44c6: $fc
	pop bc                                           ; $44c7: $c1
	jr c, jr_086_444e                                ; $44c8: $38 $84

	and b                                            ; $44ca: $a0
	dec h                                            ; $44cb: $25
	pop de                                           ; $44cc: $d1
	db $fc                                           ; $44cd: $fc
	pop bc                                           ; $44ce: $c1
	ld b, c                                          ; $44cf: $41
	db $dd                                           ; $44d0: $dd
	add h                                            ; $44d1: $84
	and b                                            ; $44d2: $a0
	dec h                                            ; $44d3: $25
	ret nc                                           ; $44d4: $d0

	ret nc                                           ; $44d5: $d0

	inc bc                                           ; $44d6: $03
	ldh [rP1], a                                     ; $44d7: $e0 $00
	ld b, $03                                        ; $44d9: $06 $03
	db $e4                                           ; $44db: $e4
	nop                                              ; $44dc: $00
	rra                                              ; $44dd: $1f
	inc e                                            ; $44de: $1c
	ld h, b                                          ; $44df: $60
	add b                                            ; $44e0: $80
	and b                                            ; $44e1: $a0
	inc c                                            ; $44e2: $0c
	dec bc                                           ; $44e3: $0b
	or b                                             ; $44e4: $b0
	call z, $e403                                    ; $44e5: $cc $03 $e4
	nop                                              ; $44e8: $00
	inc de                                           ; $44e9: $13
	rst $38                                          ; $44ea: $ff
	inc bc                                           ; $44eb: $03
	db $e4                                           ; $44ec: $e4
	dec b                                            ; $44ed: $05
	db $db                                           ; $44ee: $db
	dec bc                                           ; $44ef: $0b
	or b                                             ; $44f0: $b0
	push hl                                          ; $44f1: $e5
	inc bc                                           ; $44f2: $03
	db $e4                                           ; $44f3: $e4
	nop                                              ; $44f4: $00
	rlca                                             ; $44f5: $07
	rst $38                                          ; $44f6: $ff
	inc bc                                           ; $44f7: $03
	db $e4                                           ; $44f8: $e4
	dec b                                            ; $44f9: $05
	rst GetHLinHL                                          ; $44fa: $cf
	add hl, bc                                       ; $44fb: $09
	inc b                                            ; $44fc: $04
	push hl                                          ; $44fd: $e5
	ld c, b                                          ; $44fe: $48
	nop                                              ; $44ff: $00
	nop                                              ; $4500: $00
	jr z, @+$31                                      ; $4501: $28 $2f

	ret nc                                           ; $4503: $d0

	add e                                            ; $4504: $83
	and b                                            ; $4505: $a0
	ld a, [hl+]                                      ; $4506: $2a
	ret nc                                           ; $4507: $d0

	ld h, b                                          ; $4508: $60
	add b                                            ; $4509: $80
	nop                                              ; $450a: $00
	inc [hl]                                         ; $450b: $34
	rrca                                             ; $450c: $0f
	ldh [rTMA], a                                    ; $450d: $e0 $06
	db $d3                                           ; $450f: $d3
	ret nz                                           ; $4510: $c0

	ld bc, $02a0                                     ; $4511: $01 $a0 $02
	nop                                              ; $4514: $00
	ld bc, $01c0                                     ; $4515: $01 $c0 $01
	and b                                            ; $4518: $a0
	ld bc, $0200                                     ; $4519: $01 $00 $02
	rrca                                             ; $451c: $0f
	ldh [rTMA], a                                    ; $451d: $e0 $06
	rst SubAFromBC                                          ; $451f: $e7
	ret nz                                           ; $4520: $c0

	ld bc, $02a0                                     ; $4521: $01 $a0 $02
	nop                                              ; $4524: $00
	ld [$01c0], sp                                   ; $4525: $08 $c0 $01
	and b                                            ; $4528: $a0
	ld bc, $0a00                                     ; $4529: $01 $00 $0a
	ret nz                                           ; $452c: $c0

	ld bc, $02a0                                     ; $452d: $01 $a0 $02
	nop                                              ; $4530: $00
	ld c, $3e                                        ; $4531: $0e $3e
	nop                                              ; $4533: $00
	add hl, de                                       ; $4534: $19
	jr z, jr_086_453a                                ; $4535: $28 $03

	ldh [rP1], a                                     ; $4537: $e0 $00
	add hl, sp                                       ; $4539: $39

jr_086_453a:
	inc l                                            ; $453a: $2c
	nop                                              ; $453b: $00
	ld e, $09                                        ; $453c: $1e $09
	ld e, $e1                                        ; $453e: $1e $e1
	ld [bc], a                                       ; $4540: $02
	inc bc                                           ; $4541: $03
	inc de                                           ; $4542: $13
	ret nz                                           ; $4543: $c0

	ld bc, $02a0                                     ; $4544: $01 $a0 $02
	nop                                              ; $4547: $00
	inc h                                            ; $4548: $24
	pop bc                                           ; $4549: $c1
	ld b, d                                          ; $454a: $42
	add h                                            ; $454b: $84
	and b                                            ; $454c: $a0
	dec h                                            ; $454d: $25
	ret nz                                           ; $454e: $c0

	ld bc, $01a0                                     ; $454f: $01 $a0 $01
	nop                                              ; $4552: $00
	dec hl                                           ; $4553: $2b
	ret nz                                           ; $4554: $c0

	ld bc, $02a0                                     ; $4555: $01 $a0 $02
	nop                                              ; $4558: $00
	ld [hl-], a                                      ; $4559: $32
	db $e4                                           ; $455a: $e4
	rlca                                             ; $455b: $07
	ld hl, $3900                                     ; $455c: $21 $00 $39
	add hl, bc                                       ; $455f: $09
	ld b, $e0                                        ; $4560: $06 $e0
	rlca                                             ; $4562: $07
	ld [de], a                                       ; $4563: $12
	db $e4                                           ; $4564: $e4
	nop                                              ; $4565: $00
	ld h, d                                          ; $4566: $62
	nop                                              ; $4567: $00
	dec sp                                           ; $4568: $3b
	add hl, bc                                       ; $4569: $09
	ld b, $e0                                        ; $456a: $06 $e0
	rlca                                             ; $456c: $07
	ld bc, $00e4                                     ; $456d: $01 $e4 $00
	ld e, b                                          ; $4570: $58
	ld d, l                                          ; $4571: $55
	db $fd                                           ; $4572: $fd
	ld c, [hl]                                       ; $4573: $4e
	add h                                            ; $4574: $84
	and b                                            ; $4575: $a0
	dec h                                            ; $4576: $25
	ld bc, $06d2                                     ; $4577: $01 $d2 $06
	ret nz                                           ; $457a: $c0

	ld bc, $02a0                                     ; $457b: $01 $a0 $02
	nop                                              ; $457e: $00
	ld b, l                                          ; $457f: $45
	ld bc, $06d3                                     ; $4580: $01 $d3 $06
	ret nz                                           ; $4583: $c0

	ld bc, $02a0                                     ; $4584: $01 $a0 $02
	nop                                              ; $4587: $00
	ld d, c                                          ; $4588: $51
	ld bc, $06d4                                     ; $4589: $01 $d4 $06
	ret nz                                           ; $458c: $c0

	ld bc, $02a0                                     ; $458d: $01 $a0 $02
	nop                                              ; $4590: $00
	ld e, c                                          ; $4591: $59
	ld bc, $06d6                                     ; $4592: $01 $d6 $06
	ret nz                                           ; $4595: $c0

	ld bc, $02a0                                     ; $4596: $01 $a0 $02
	nop                                              ; $4599: $00
	ld h, e                                          ; $459a: $63
	ld bc, $06dc                                     ; $459b: $01 $dc $06
	ret nz                                           ; $459e: $c0

	ld bc, $02a0                                     ; $459f: $01 $a0 $02
	nop                                              ; $45a2: $00
	ld l, d                                          ; $45a3: $6a
	ld [bc], a                                       ; $45a4: $02
	ldh [rAUD1SWEEP], a                              ; $45a5: $e0 $10
	ld b, $c0                                        ; $45a7: $06 $c0
	ld bc, $02a0                                     ; $45a9: $01 $a0 $02
	nop                                              ; $45ac: $00
	ld [hl], h                                       ; $45ad: $74
	ld [bc], a                                       ; $45ae: $02
	ldh [rAUD1LEN], a                                ; $45af: $e0 $11
	ld b, $c0                                        ; $45b1: $06 $c0
	ld bc, $02a0                                     ; $45b3: $01 $a0 $02
	nop                                              ; $45b6: $00
	ld a, h                                          ; $45b7: $7c
	ld [bc], a                                       ; $45b8: $02
	ldh [rAUD1HIGH], a                               ; $45b9: $e0 $14
	ld b, $c0                                        ; $45bb: $06 $c0
	ld bc, $02a0                                     ; $45bd: $01 $a0 $02
	nop                                              ; $45c0: $00
	add [hl]                                         ; $45c1: $86
	pop bc                                           ; $45c2: $c1
	jp nc, $a084                                     ; $45c3: $d2 $84 $a0

	dec h                                            ; $45c6: $25
	add hl, bc                                       ; $45c7: $09
	dec c                                            ; $45c8: $0d
	pop hl                                           ; $45c9: $e1
	ld [bc], a                                       ; $45ca: $02
	inc bc                                           ; $45cb: $03
	dec de                                           ; $45cc: $1b
	ret nz                                           ; $45cd: $c0

	ld bc, $02a0                                     ; $45ce: $01 $a0 $02
	nop                                              ; $45d1: $00
	adc a                                            ; $45d2: $8f
	ldh [rTIMA], a                                   ; $45d3: $e0 $05
	jp $2f28                                         ; $45d5: $c3 $28 $2f


	ret nc                                           ; $45d8: $d0

	add e                                            ; $45d9: $83
	and b                                            ; $45da: $a0
	ld a, [hl+]                                      ; $45db: $2a
	pop de                                           ; $45dc: $d1
	ld h, b                                          ; $45dd: $60
	add b                                            ; $45de: $80
	nop                                              ; $45df: $00
	inc [hl]                                         ; $45e0: $34
	rrca                                             ; $45e1: $0f
	ldh [rTIMA], a                                   ; $45e2: $e0 $05
	cp $c0                                           ; $45e4: $fe $c0
	ld bc, $03a0                                     ; $45e6: $01 $a0 $03
	nop                                              ; $45e9: $00
	ld bc, $01c0                                     ; $45ea: $01 $c0 $01
	and b                                            ; $45ed: $a0
	ld bc, $9900                                     ; $45ee: $01 $00 $99
	rrca                                             ; $45f1: $0f
	ldh [rTMA], a                                    ; $45f2: $e0 $06
	ld [de], a                                       ; $45f4: $12
	ret nz                                           ; $45f5: $c0

	ld bc, $03a0                                     ; $45f6: $01 $a0 $03
	nop                                              ; $45f9: $00
	sbc a                                            ; $45fa: $9f
	ret nz                                           ; $45fb: $c0

	ld bc, $01a0                                     ; $45fc: $01 $a0 $01
	nop                                              ; $45ff: $00
	and l                                            ; $4600: $a5
	ret nz                                           ; $4601: $c0

	ld bc, $03a0                                     ; $4602: $01 $a0 $03
	nop                                              ; $4605: $00
	xor c                                            ; $4606: $a9
	ld a, $00                                        ; $4607: $3e $00
	add hl, de                                       ; $4609: $19
	jr z, jr_086_460f                                ; $460a: $28 $03

	ldh [rP1], a                                     ; $460c: $e0 $00
	add hl, sp                                       ; $460e: $39

jr_086_460f:
	inc l                                            ; $460f: $2c
	nop                                              ; $4610: $00
	ld e, $09                                        ; $4611: $1e $09
	ld e, $e1                                        ; $4613: $1e $e1
	ld [bc], a                                       ; $4615: $02
	inc bc                                           ; $4616: $03
	inc de                                           ; $4617: $13
	ret nz                                           ; $4618: $c0

	ld bc, $03a0                                     ; $4619: $01 $a0 $03
	nop                                              ; $461c: $00
	or l                                             ; $461d: $b5
	pop bc                                           ; $461e: $c1
	ld b, d                                          ; $461f: $42
	add h                                            ; $4620: $84
	and b                                            ; $4621: $a0
	dec h                                            ; $4622: $25
	ret nz                                           ; $4623: $c0

	ld bc, $01a0                                     ; $4624: $01 $a0 $01
	nop                                              ; $4627: $00
	dec hl                                           ; $4628: $2b
	ret nz                                           ; $4629: $c0

	ld bc, $03a0                                     ; $462a: $01 $a0 $03
	nop                                              ; $462d: $00
	cp e                                             ; $462e: $bb
	db $e4                                           ; $462f: $e4
	ld b, $4c                                        ; $4630: $06 $4c
	nop                                              ; $4632: $00
	add hl, sp                                       ; $4633: $39
	add hl, bc                                       ; $4634: $09
	ld b, $e0                                        ; $4635: $06 $e0
	ld b, $3d                                        ; $4637: $06 $3d
	db $e4                                           ; $4639: $e4
	nop                                              ; $463a: $00
	ld e, a                                          ; $463b: $5f
	nop                                              ; $463c: $00
	dec sp                                           ; $463d: $3b
	add hl, bc                                       ; $463e: $09
	ld b, $e0                                        ; $463f: $06 $e0
	ld b, $2c                                        ; $4641: $06 $2c
	db $e4                                           ; $4643: $e4
	nop                                              ; $4644: $00
	ld d, l                                          ; $4645: $55
	ld d, d                                          ; $4646: $52
	db $fd                                           ; $4647: $fd
	ld c, e                                          ; $4648: $4b
	add h                                            ; $4649: $84
	and b                                            ; $464a: $a0
	dec h                                            ; $464b: $25
	ld bc, $06d2                                     ; $464c: $01 $d2 $06
	ret nz                                           ; $464f: $c0

	ld bc, $03a0                                     ; $4650: $01 $a0 $03
	nop                                              ; $4653: $00
	jp $d301                                         ; $4654: $c3 $01 $d3


	ld b, $c0                                        ; $4657: $06 $c0
	ld bc, $03a0                                     ; $4659: $01 $a0 $03
	nop                                              ; $465c: $00
	jp nc, $d401                                     ; $465d: $d2 $01 $d4

	ld b, $c0                                        ; $4660: $06 $c0
	ld bc, $03a0                                     ; $4662: $01 $a0 $03
	nop                                              ; $4665: $00
	reti                                             ; $4666: $d9


	ld bc, $06d5                                     ; $4667: $01 $d5 $06
	ret nz                                           ; $466a: $c0

	ld bc, $03a0                                     ; $466b: $01 $a0 $03
	nop                                              ; $466e: $00
	ldh [c], a                                       ; $466f: $e2
	ld bc, $06d6                                     ; $4670: $01 $d6 $06
	ret nz                                           ; $4673: $c0

	ld bc, $03a0                                     ; $4674: $01 $a0 $03
	nop                                              ; $4677: $00
	jp hl                                            ; $4678: $e9


	ld bc, $06d7                                     ; $4679: $01 $d7 $06
	ret nz                                           ; $467c: $c0

	ld bc, $03a0                                     ; $467d: $01 $a0 $03
	nop                                              ; $4680: $00
	xor $01                                          ; $4681: $ee $01
	ret c                                            ; $4683: $d8

	ld b, $c0                                        ; $4684: $06 $c0
	ld bc, $03a0                                     ; $4686: $01 $a0 $03
	nop                                              ; $4689: $00
	or $01                                           ; $468a: $f6 $01
	sbc $06                                          ; $468c: $de $06
	ret nz                                           ; $468e: $c0

	ld bc, $03a0                                     ; $468f: $01 $a0 $03
	nop                                              ; $4692: $00
	cp $c1                                           ; $4693: $fe $c1
	jp nc, $a084                                     ; $4695: $d2 $84 $a0

	dec h                                            ; $4698: $25
	add hl, bc                                       ; $4699: $09
	dec c                                            ; $469a: $0d
	pop hl                                           ; $469b: $e1
	ld [bc], a                                       ; $469c: $02
	inc bc                                           ; $469d: $03
	dec de                                           ; $469e: $1b
	ret nz                                           ; $469f: $c0

jr_086_46a0:
	ld bc, $03a0                                     ; $46a0: $01 $a0 $03
	ld bc, $e00e                                     ; $46a3: $01 $0e $e0
	inc b                                            ; $46a6: $04
	pop af                                           ; $46a7: $f1
	jr z, @+$31                                      ; $46a8: $28 $2f

	ret nc                                           ; $46aa: $d0

	add e                                            ; $46ab: $83
	and b                                            ; $46ac: $a0
	ld a, [hl+]                                      ; $46ad: $2a
	jp nc, $8060                                     ; $46ae: $d2 $60 $80

	nop                                              ; $46b1: $00
	inc [hl]                                         ; $46b2: $34
	rrca                                             ; $46b3: $0f
	ldh [rTIMA], a                                   ; $46b4: $e0 $05
	inc l                                            ; $46b6: $2c
	ret nz                                           ; $46b7: $c0

	ld bc, $04a0                                     ; $46b8: $01 $a0 $04
	ld bc, $c011                                     ; $46bb: $01 $11 $c0
	ld bc, $01a0                                     ; $46be: $01 $a0 $01
	ld bc, $0f14                                     ; $46c1: $01 $14 $0f
	ldh [rTIMA], a                                   ; $46c4: $e0 $05
	ld b, b                                          ; $46c6: $40
	ret nz                                           ; $46c7: $c0

	ld bc, $04a0                                     ; $46c8: $01 $a0 $04
	ld bc, $c01a                                     ; $46cb: $01 $1a $c0
	ld bc, $01a0                                     ; $46ce: $01 $a0 $01
	ld bc, $c01b                                     ; $46d1: $01 $1b $c0
	ld bc, $04a0                                     ; $46d4: $01 $a0 $04
	ld bc, $3e1f                                     ; $46d7: $01 $1f $3e
	nop                                              ; $46da: $00
	add hl, de                                       ; $46db: $19
	jr z, jr_086_46e1                                ; $46dc: $28 $03

	ldh [rP1], a                                     ; $46de: $e0 $00
	add hl, sp                                       ; $46e0: $39

jr_086_46e1:
	inc l                                            ; $46e1: $2c
	nop                                              ; $46e2: $00
	ld e, $09                                        ; $46e3: $1e $09
	ld e, $e1                                        ; $46e5: $1e $e1
	ld [bc], a                                       ; $46e7: $02
	inc bc                                           ; $46e8: $03
	inc de                                           ; $46e9: $13
	ret nz                                           ; $46ea: $c0

	ld bc, $04a0                                     ; $46eb: $01 $a0 $04
	ld bc, $c128                                     ; $46ee: $01 $28 $c1
	ld b, d                                          ; $46f1: $42
	add h                                            ; $46f2: $84
	and b                                            ; $46f3: $a0
	dec h                                            ; $46f4: $25
	ret nz                                           ; $46f5: $c0

	ld bc, $01a0                                     ; $46f6: $01 $a0 $01
	nop                                              ; $46f9: $00
	dec hl                                           ; $46fa: $2b
	ret nz                                           ; $46fb: $c0

	ld bc, $04a0                                     ; $46fc: $01 $a0 $04
	ld bc, $e42a                                     ; $46ff: $01 $2a $e4
	dec b                                            ; $4702: $05
	ld a, d                                          ; $4703: $7a
	nop                                              ; $4704: $00
	add hl, sp                                       ; $4705: $39
	add hl, bc                                       ; $4706: $09
	ld b, $e0                                        ; $4707: $06 $e0
	dec b                                            ; $4709: $05
	ld l, e                                          ; $470a: $6b
	db $e4                                           ; $470b: $e4
	nop                                              ; $470c: $00
	ld b, h                                          ; $470d: $44
	nop                                              ; $470e: $00
	dec sp                                           ; $470f: $3b
	add hl, bc                                       ; $4710: $09
	ld b, $e0                                        ; $4711: $06 $e0
	dec b                                            ; $4713: $05
	ld e, d                                          ; $4714: $5a
	db $e4                                           ; $4715: $e4
	nop                                              ; $4716: $00
	ld a, [hl-]                                      ; $4717: $3a
	scf                                              ; $4718: $37
	db $fd                                           ; $4719: $fd
	jr nc, jr_086_46a0                               ; $471a: $30 $84

	and b                                            ; $471c: $a0
	dec h                                            ; $471d: $25
	ld bc, $06d2                                     ; $471e: $01 $d2 $06
	ret nz                                           ; $4721: $c0

	ld bc, $04a0                                     ; $4722: $01 $a0 $04
	ld bc, $0134                               ; $4725: $01 $34 $01
	call nc, $c006                                   ; $4728: $d4 $06 $c0
	ld bc, $04a0                                     ; $472b: $01 $a0 $04
	ld bc, $013e                                     ; $472e: $01 $3e $01
	push de                                          ; $4731: $d5
	ld b, $c0                                        ; $4732: $06 $c0
	ld bc, $04a0                                     ; $4734: $01 $a0 $04
	ld bc, $0147                       ; $4737: $01 $47 $01
	sub $06                                          ; $473a: $d6 $06
	ret nz                                           ; $473c: $c0

	ld bc, $04a0                                     ; $473d: $01 $a0 $04
	ld bc, $014d                     ; $4740: $01 $4d $01
	ret c                                            ; $4743: $d8

	ld b, $c0                                        ; $4744: $06 $c0
	ld bc, $04a0                                     ; $4746: $01 $a0 $04
	ld bc, $c154                                     ; $4749: $01 $54 $c1
	jp nc, $a084                                     ; $474c: $d2 $84 $a0

	dec h                                            ; $474f: $25
	add hl, bc                                       ; $4750: $09
	dec c                                            ; $4751: $0d
	pop hl                                           ; $4752: $e1
	ld [bc], a                                       ; $4753: $02
	inc bc                                           ; $4754: $03
	rra                                              ; $4755: $1f
	ret nz                                           ; $4756: $c0

jr_086_4757:
	ld bc, $04a0                                     ; $4757: $01 $a0 $04
	ld bc, $e05b                                     ; $475a: $01 $5b $e0
	inc b                                            ; $475d: $04
	ld a, [hl-]                                      ; $475e: $3a
	jr z, @+$31                                      ; $475f: $28 $2f

	ret nc                                           ; $4761: $d0

	add e                                            ; $4762: $83
	and b                                            ; $4763: $a0
	ld a, [hl+]                                      ; $4764: $2a
	db $d3                                           ; $4765: $d3
	ld h, b                                          ; $4766: $60
	add b                                            ; $4767: $80
	nop                                              ; $4768: $00
	inc [hl]                                         ; $4769: $34
	rrca                                             ; $476a: $0f
	ldh [rDIV], a                                    ; $476b: $e0 $04
	ld [hl], l                                       ; $476d: $75
	ret nz                                           ; $476e: $c0

	ld bc, $05a0                                     ; $476f: $01 $a0 $05
	ld bc, $c067                                     ; $4772: $01 $67 $c0
	ld bc, $01a0                                     ; $4775: $01 $a0 $01
	ld bc, $0f6a                                     ; $4778: $01 $6a $0f
	ldh [rDIV], a                                    ; $477b: $e0 $04
	adc c                                            ; $477d: $89
	ret nz                                           ; $477e: $c0

	ld bc, $05a0                                     ; $477f: $01 $a0 $05
	nop                                              ; $4782: $00
	ld [$01c0], sp                                   ; $4783: $08 $c0 $01
	and b                                            ; $4786: $a0
	ld bc, $6f01                                     ; $4787: $01 $01 $6f
	ret nz                                           ; $478a: $c0

	ld bc, $05a0                                     ; $478b: $01 $a0 $05
	ld bc, $3e73                                     ; $478e: $01 $73 $3e
	nop                                              ; $4791: $00
	add hl, de                                       ; $4792: $19
	jr z, jr_086_4798                                ; $4793: $28 $03

	ldh [rP1], a                                     ; $4795: $e0 $00
	add hl, sp                                       ; $4797: $39

jr_086_4798:
	inc l                                            ; $4798: $2c
	nop                                              ; $4799: $00
	ld e, $09                                        ; $479a: $1e $09
	ld e, $e1                                        ; $479c: $1e $e1
	ld [bc], a                                       ; $479e: $02
	inc bc                                           ; $479f: $03
	inc de                                           ; $47a0: $13
	ret nz                                           ; $47a1: $c0

	ld bc, $05a0                                     ; $47a2: $01 $a0 $05
	ld bc, $c17c                                     ; $47a5: $01 $7c $c1
	ld b, d                                          ; $47a8: $42
	add h                                            ; $47a9: $84
	and b                                            ; $47aa: $a0
	dec h                                            ; $47ab: $25
	ret nz                                           ; $47ac: $c0

	ld bc, $01a0                                     ; $47ad: $01 $a0 $01
	nop                                              ; $47b0: $00
	dec hl                                           ; $47b1: $2b
	ret nz                                           ; $47b2: $c0

	ld bc, $05a0                                     ; $47b3: $01 $a0 $05
	ld bc, $e483                                     ; $47b6: $01 $83 $e4
	inc b                                            ; $47b9: $04
	jp $3900                                         ; $47ba: $c3 $00 $39


	add hl, bc                                       ; $47bd: $09
	ld b, $e0                                        ; $47be: $06 $e0
	inc b                                            ; $47c0: $04
	or h                                             ; $47c1: $b4
	db $e4                                           ; $47c2: $e4
	nop                                              ; $47c3: $00
	ld b, h                                          ; $47c4: $44
	nop                                              ; $47c5: $00
	dec sp                                           ; $47c6: $3b
	add hl, bc                                       ; $47c7: $09
	ld b, $e0                                        ; $47c8: $06 $e0
	inc b                                            ; $47ca: $04
	and e                                            ; $47cb: $a3
	db $e4                                           ; $47cc: $e4
	nop                                              ; $47cd: $00
	ld a, [hl-]                                      ; $47ce: $3a
	scf                                              ; $47cf: $37
	db $fd                                           ; $47d0: $fd
	jr nc, jr_086_4757                               ; $47d1: $30 $84

	and b                                            ; $47d3: $a0
	dec h                                            ; $47d4: $25
	ld bc, $06d4                                     ; $47d5: $01 $d4 $06
	ret nz                                           ; $47d8: $c0

	ld bc, $05a0                                     ; $47d9: $01 $a0 $05
	nop                                              ; $47dc: $00
	ld e, c                                          ; $47dd: $59
	ld bc, $06d6                                     ; $47de: $01 $d6 $06
	ret nz                                           ; $47e1: $c0

	ld bc, $05a0                                     ; $47e2: $01 $a0 $05
	nop                                              ; $47e5: $00
	ld h, e                                          ; $47e6: $63
	ld bc, $06d7                                     ; $47e7: $01 $d7 $06
	ret nz                                           ; $47ea: $c0

	ld bc, $05a0                                     ; $47eb: $01 $a0 $05
	ld bc, $0186                                     ; $47ee: $01 $86 $01
	jp c, $c006                                      ; $47f1: $da $06 $c0

	ld bc, $05a0                                     ; $47f4: $01 $a0 $05
	ld bc, $018e                                     ; $47f7: $01 $8e $01
	db $db                                           ; $47fa: $db
	ld b, $c0                                        ; $47fb: $06 $c0
	ld bc, $05a0                                     ; $47fd: $01 $a0 $05
	ld bc, $c195                                     ; $4800: $01 $95 $c1
	jp nc, $a084                                     ; $4803: $d2 $84 $a0

	dec h                                            ; $4806: $25
	add hl, bc                                       ; $4807: $09
	dec c                                            ; $4808: $0d
	pop hl                                           ; $4809: $e1
	ld [bc], a                                       ; $480a: $02
	inc bc                                           ; $480b: $03
	dec de                                           ; $480c: $1b
	ret nz                                           ; $480d: $c0

	ld bc, $05a0                                     ; $480e: $01 $a0 $05
	ld bc, $e0a0                                     ; $4811: $01 $a0 $e0
	inc bc                                           ; $4814: $03
	add e                                            ; $4815: $83
	jr z, @+$31                                      ; $4816: $28 $2f

	ret nc                                           ; $4818: $d0

	add e                                            ; $4819: $83
	and b                                            ; $481a: $a0
	ld a, [hl+]                                      ; $481b: $2a
	rst SubAFromHL                                          ; $481c: $d7
	ld h, b                                          ; $481d: $60
	add b                                            ; $481e: $80
	nop                                              ; $481f: $00
	inc [hl]                                         ; $4820: $34
	rrca                                             ; $4821: $0f
	ldh [$03], a                                     ; $4822: $e0 $03
	cp [hl]                                          ; $4824: $be
	ret nz                                           ; $4825: $c0

	ld bc, $08a0                                     ; $4826: $01 $a0 $08
	nop                                              ; $4829: $00
	ld bc, $01c0                                     ; $482a: $01 $c0 $01
	and b                                            ; $482d: $a0
	ld bc, $aa01                                     ; $482e: $01 $01 $aa
	rrca                                             ; $4831: $0f
	ldh [$03], a                                     ; $4832: $e0 $03
	jp nc, $01c0                                     ; $4834: $d2 $c0 $01

	and b                                            ; $4837: $a0
	ld [$b001], sp                                   ; $4838: $08 $01 $b0
	ret nz                                           ; $483b: $c0

	ld bc, $01a0                                     ; $483c: $01 $a0 $01
	ld bc, $c0b2                                     ; $483f: $01 $b2 $c0
	ld bc, $08a0                                     ; $4842: $01 $a0 $08
	ld bc, $3eb6                                     ; $4845: $01 $b6 $3e
	nop                                              ; $4848: $00
	add hl, de                                       ; $4849: $19
	jr z, jr_086_484f                                ; $484a: $28 $03

	ldh [rP1], a                                     ; $484c: $e0 $00
	add hl, sp                                       ; $484e: $39

jr_086_484f:
	inc l                                            ; $484f: $2c
	nop                                              ; $4850: $00
	ld e, $09                                        ; $4851: $1e $09
	ld e, $e1                                        ; $4853: $1e $e1
	ld [bc], a                                       ; $4855: $02
	inc bc                                           ; $4856: $03
	inc de                                           ; $4857: $13
	ret nz                                           ; $4858: $c0

	ld bc, $08a0                                     ; $4859: $01 $a0 $08
	ld bc, $c1bf                                     ; $485c: $01 $bf $c1
	ld b, d                                          ; $485f: $42
	add h                                            ; $4860: $84
	and b                                            ; $4861: $a0
	dec h                                            ; $4862: $25
	ret nz                                           ; $4863: $c0

	ld bc, $01a0                                     ; $4864: $01 $a0 $01
	nop                                              ; $4867: $00
	dec hl                                           ; $4868: $2b
	ret nz                                           ; $4869: $c0

	ld bc, $08a0                                     ; $486a: $01 $a0 $08
	ld bc, $e4ca                                     ; $486d: $01 $ca $e4
	inc b                                            ; $4870: $04
	inc c                                            ; $4871: $0c
	nop                                              ; $4872: $00
	add hl, sp                                       ; $4873: $39
	add hl, bc                                       ; $4874: $09
	ld b, $e0                                        ; $4875: $06 $e0
	inc bc                                           ; $4877: $03
	db $fd                                           ; $4878: $fd
	db $e4                                           ; $4879: $e4
	nop                                              ; $487a: $00
	ld b, a                                          ; $487b: $47
	nop                                              ; $487c: $00
	dec sp                                           ; $487d: $3b
	add hl, bc                                       ; $487e: $09
	ld b, $e0                                        ; $487f: $06 $e0
	inc bc                                           ; $4881: $03
	db $ec                                           ; $4882: $ec
	db $e4                                           ; $4883: $e4
	nop                                              ; $4884: $00
	dec a                                            ; $4885: $3d
	ld a, [hl-]                                      ; $4886: $3a
	db $fd                                           ; $4887: $fd
	inc sp                                           ; $4888: $33
	add h                                            ; $4889: $84
	and b                                            ; $488a: $a0
	dec h                                            ; $488b: $25
	ld bc, $06d2                                     ; $488c: $01 $d2 $06
	ret nz                                           ; $488f: $c0

	ld bc, $08a0                                     ; $4890: $01 $a0 $08
	ld bc, $01d1                                     ; $4893: $01 $d1 $01
	rst SubAFromHL                                          ; $4896: $d7
	ld b, $c0                                        ; $4897: $06 $c0
	ld bc, $08a0                                     ; $4899: $01 $a0 $08
	ld bc, $02de                                     ; $489c: $01 $de $02
	ldh [rAUD1SWEEP], a                              ; $489f: $e0 $10
	ld b, $c0                                        ; $48a1: $06 $c0
	ld bc, $08a0                                     ; $48a3: $01 $a0 $08
	ld bc, $02e9                                     ; $48a6: $01 $e9 $02
	ldh [rAUD1LEN], a                                ; $48a9: $e0 $11
	ld b, $c0                                        ; $48ab: $06 $c0
	ld bc, $08a0                                     ; $48ad: $01 $a0 $08

jr_086_48b0:
	ld bc, $02f4                                     ; $48b0: $01 $f4 $02
	ldh [rAUD1HIGH], a                               ; $48b3: $e0 $14
	ld b, $c0                                        ; $48b5: $06 $c0
	ld bc, $08a0                                     ; $48b7: $01 $a0 $08
	ld [bc], a                                       ; $48ba: $02
	ld [bc], a                                       ; $48bb: $02
	pop bc                                           ; $48bc: $c1
	jp nc, $a084                                     ; $48bd: $d2 $84 $a0

	dec h                                            ; $48c0: $25
	add hl, bc                                       ; $48c1: $09
	dec c                                            ; $48c2: $0d
	pop hl                                           ; $48c3: $e1
	ld [bc], a                                       ; $48c4: $02
	inc bc                                           ; $48c5: $03
	rra                                              ; $48c6: $1f
	ret nz                                           ; $48c7: $c0

	ld bc, $08a0                                     ; $48c8: $01 $a0 $08
	ld [bc], a                                       ; $48cb: $02
	ld c, $e0                                        ; $48cc: $0e $e0
	ld [bc], a                                       ; $48ce: $02
	ret                                              ; $48cf: $c9


	jr z, jr_086_4901                                ; $48d0: $28 $2f

	ret nc                                           ; $48d2: $d0

	add e                                            ; $48d3: $83
	and b                                            ; $48d4: $a0
	ld a, [hl+]                                      ; $48d5: $2a
	ret c                                            ; $48d6: $d8

	ld h, b                                          ; $48d7: $60
	add b                                            ; $48d8: $80
	nop                                              ; $48d9: $00
	inc [hl]                                         ; $48da: $34
	rrca                                             ; $48db: $0f
	ldh [$03], a                                     ; $48dc: $e0 $03
	inc b                                            ; $48de: $04
	ret nz                                           ; $48df: $c0

	ld bc, $09a0                                     ; $48e0: $01 $a0 $09
	ld [bc], a                                       ; $48e3: $02
	dec de                                           ; $48e4: $1b
	ret nz                                           ; $48e5: $c0

	ld bc, $01a0                                     ; $48e6: $01 $a0 $01
	ld [bc], a                                       ; $48e9: $02
	jr nz, jr_086_48fb                               ; $48ea: $20 $0f

	ldh [$03], a                                     ; $48ec: $e0 $03
	jr jr_086_48b0                                   ; $48ee: $18 $c0

	ld bc, $09a0                                     ; $48f0: $01 $a0 $09
	nop                                              ; $48f3: $00
	ld [$01c0], sp                                   ; $48f4: $08 $c0 $01
	and b                                            ; $48f7: $a0
	ld bc, $2602                                     ; $48f8: $01 $02 $26

jr_086_48fb:
	ret nz                                           ; $48fb: $c0

	ld bc, $09a0                                     ; $48fc: $01 $a0 $09
	ld [bc], a                                       ; $48ff: $02
	ld a, [hl+]                                      ; $4900: $2a

jr_086_4901:
	ld a, $00                                        ; $4901: $3e $00
	add hl, de                                       ; $4903: $19
	jr z, jr_086_4909                                ; $4904: $28 $03

	ldh [rP1], a                                     ; $4906: $e0 $00
	add hl, sp                                       ; $4908: $39

jr_086_4909:
	inc l                                            ; $4909: $2c
	nop                                              ; $490a: $00
	ld e, $09                                        ; $490b: $1e $09
	ld e, $e1                                        ; $490d: $1e $e1
	ld [bc], a                                       ; $490f: $02
	inc bc                                           ; $4910: $03
	inc de                                           ; $4911: $13
	ret nz                                           ; $4912: $c0

	ld bc, $09a0                                     ; $4913: $01 $a0 $09
	ld [bc], a                                       ; $4916: $02
	ld [hl], $c1                                     ; $4917: $36 $c1
	ld b, d                                          ; $4919: $42
	add h                                            ; $491a: $84
	and b                                            ; $491b: $a0
	dec h                                            ; $491c: $25
	ret nz                                           ; $491d: $c0

	ld bc, $01a0                                     ; $491e: $01 $a0 $01
	nop                                              ; $4921: $00
	dec hl                                           ; $4922: $2b
	ret nz                                           ; $4923: $c0

	ld bc, $09a0                                     ; $4924: $01 $a0 $09
	ld [bc], a                                       ; $4927: $02
	ld a, [hl-]                                      ; $4928: $3a
	db $e4                                           ; $4929: $e4
	inc bc                                           ; $492a: $03
	ld d, d                                          ; $492b: $52
	nop                                              ; $492c: $00
	add hl, sp                                       ; $492d: $39
	add hl, bc                                       ; $492e: $09
	ld b, $e0                                        ; $492f: $06 $e0
	inc bc                                           ; $4931: $03
	ld b, e                                          ; $4932: $43
	db $e4                                           ; $4933: $e4
	nop                                              ; $4934: $00
	add [hl]                                         ; $4935: $86
	nop                                              ; $4936: $00
	dec sp                                           ; $4937: $3b
	add hl, bc                                       ; $4938: $09
	ld b, $e0                                        ; $4939: $06 $e0
	inc bc                                           ; $493b: $03
	ld [hl-], a                                      ; $493c: $32
	db $e4                                           ; $493d: $e4
	nop                                              ; $493e: $00
	ld a, h                                          ; $493f: $7c
	ld a, c                                          ; $4940: $79
	db $fd                                           ; $4941: $fd
	ld [hl], d                                       ; $4942: $72
	add h                                            ; $4943: $84
	and b                                            ; $4944: $a0
	dec h                                            ; $4945: $25
	ld bc, $06d2                                     ; $4946: $01 $d2 $06
	ret nz                                           ; $4949: $c0

	ld bc, $09a0                                     ; $494a: $01 $a0 $09
	ld [bc], a                                       ; $494d: $02
	ld c, b                                          ; $494e: $48
	ld bc, $06d3                                     ; $494f: $01 $d3 $06
	ret nz                                           ; $4952: $c0

	ld bc, $09a0                                     ; $4953: $01 $a0 $09
	ld [bc], a                                       ; $4956: $02
	ld c, l                                          ; $4957: $4d
	ld bc, $06d4                                     ; $4958: $01 $d4 $06
	ret nz                                           ; $495b: $c0

	ld bc, $09a0                                     ; $495c: $01 $a0 $09
	ld [bc], a                                       ; $495f: $02
	ld d, e                                          ; $4960: $53
	ld bc, $06d5                                     ; $4961: $01 $d5 $06
	ret nz                                           ; $4964: $c0

	ld bc, $09a0                                     ; $4965: $01 $a0 $09
	ld [bc], a                                       ; $4968: $02
	ld e, d                                          ; $4969: $5a
	ld bc, $06d9                                     ; $496a: $01 $d9 $06
	ret nz                                           ; $496d: $c0

	ld bc, $09a0                                     ; $496e: $01 $a0 $09
	ld [bc], a                                       ; $4971: $02
	ld h, b                                          ; $4972: $60
	ld bc, $06da                                     ; $4973: $01 $da $06
	ret nz                                           ; $4976: $c0

	ld bc, $09a0                                     ; $4977: $01 $a0 $09
	ld [bc], a                                       ; $497a: $02
	ld h, h                                          ; $497b: $64
	ld bc, $06db                                     ; $497c: $01 $db $06
	ret nz                                           ; $497f: $c0

	ld bc, $09a0                                     ; $4980: $01 $a0 $09
	ld [bc], a                                       ; $4983: $02
	ld l, b                                          ; $4984: $68
	ld bc, $06dc                                     ; $4985: $01 $dc $06
	ret nz                                           ; $4988: $c0

	ld bc, $09a0                                     ; $4989: $01 $a0 $09
	ld [bc], a                                       ; $498c: $02
	ld [hl], b                                       ; $498d: $70
	ld bc, $06df                                     ; $498e: $01 $df $06
	ret nz                                           ; $4991: $c0

	ld bc, $09a0                                     ; $4992: $01 $a0 $09
	ld [bc], a                                       ; $4995: $02
	ld a, l                                          ; $4996: $7d
	ld [bc], a                                       ; $4997: $02
	ldh [rAUD1SWEEP], a                              ; $4998: $e0 $10
	ld b, $c0                                        ; $499a: $06 $c0
	ld bc, $09a0                                     ; $499c: $01 $a0 $09
	ld [bc], a                                       ; $499f: $02
	adc b                                            ; $49a0: $88
	ld [bc], a                                       ; $49a1: $02
	ldh [rAUD1LEN], a                                ; $49a2: $e0 $11
	ld b, $c0                                        ; $49a4: $06 $c0
	ld bc, $09a0                                     ; $49a6: $01 $a0 $09
	ld [bc], a                                       ; $49a9: $02
	adc l                                            ; $49aa: $8d
	ld [bc], a                                       ; $49ab: $02
	ldh [rAUD1HIGH], a                               ; $49ac: $e0 $14
	ld b, $c0                                        ; $49ae: $06 $c0
	ld bc, $09a0                                     ; $49b0: $01 $a0 $09
	ld [bc], a                                       ; $49b3: $02
	sub l                                            ; $49b4: $95
	pop bc                                           ; $49b5: $c1
	jp nc, $a084                                     ; $49b6: $d2 $84 $a0

	dec h                                            ; $49b9: $25
	add hl, bc                                       ; $49ba: $09
	dec c                                            ; $49bb: $0d
	pop hl                                           ; $49bc: $e1
	ld [bc], a                                       ; $49bd: $02
	inc bc                                           ; $49be: $03
	rra                                              ; $49bf: $1f
	ret nz                                           ; $49c0: $c0

	ld bc, $09a0                                     ; $49c1: $01 $a0 $09
	ld [bc], a                                       ; $49c4: $02
	sbc e                                            ; $49c5: $9b
	ldh [rSB], a                                     ; $49c6: $e0 $01
	ret nc                                           ; $49c8: $d0

	jr z, jr_086_49fa                                ; $49c9: $28 $2f

	ret nc                                           ; $49cb: $d0

	add e                                            ; $49cc: $83
	and b                                            ; $49cd: $a0
	ld a, [hl+]                                      ; $49ce: $2a
	jp c, $8060                                      ; $49cf: $da $60 $80

	nop                                              ; $49d2: $00
	inc [hl]                                         ; $49d3: $34
	rrca                                             ; $49d4: $0f
	ldh [rSC], a                                     ; $49d5: $e0 $02
	dec bc                                           ; $49d7: $0b
	ret nz                                           ; $49d8: $c0

	ld bc, $06a0                                     ; $49d9: $01 $a0 $06
	ld [bc], a                                       ; $49dc: $02
	and [hl]                                         ; $49dd: $a6
	ret nz                                           ; $49de: $c0

	ld bc, $01a0                                     ; $49df: $01 $a0 $01
	ld [bc], a                                       ; $49e2: $02
	xor b                                            ; $49e3: $a8
	rrca                                             ; $49e4: $0f
	ldh [rSC], a                                     ; $49e5: $e0 $02
	rra                                              ; $49e7: $1f
	ret nz                                           ; $49e8: $c0

	ld bc, $06a0                                     ; $49e9: $01 $a0 $06
	ld [bc], a                                       ; $49ec: $02
	xor [hl]                                         ; $49ed: $ae
	ret nz                                           ; $49ee: $c0

	ld bc, $01a0                                     ; $49ef: $01 $a0 $01
	ld [bc], a                                       ; $49f2: $02
	or [hl]                                          ; $49f3: $b6
	ret nz                                           ; $49f4: $c0

	ld bc, $06a0                                     ; $49f5: $01 $a0 $06
	ld [bc], a                                       ; $49f8: $02
	cp d                                             ; $49f9: $ba

jr_086_49fa:
	ld a, $00                                        ; $49fa: $3e $00
	add hl, de                                       ; $49fc: $19
	jr z, jr_086_4a02                                ; $49fd: $28 $03

	ldh [rP1], a                                     ; $49ff: $e0 $00
	add hl, sp                                       ; $4a01: $39

jr_086_4a02:
	inc l                                            ; $4a02: $2c
	nop                                              ; $4a03: $00
	ld e, $09                                        ; $4a04: $1e $09
	ld e, $e1                                        ; $4a06: $1e $e1
	ld [bc], a                                       ; $4a08: $02
	inc bc                                           ; $4a09: $03
	inc de                                           ; $4a0a: $13
	ret nz                                           ; $4a0b: $c0

	ld bc, $06a0                                     ; $4a0c: $01 $a0 $06
	ld [bc], a                                       ; $4a0f: $02
	jp Jump_086_42c1                                 ; $4a10: $c3 $c1 $42


	add h                                            ; $4a13: $84
	and b                                            ; $4a14: $a0
	dec h                                            ; $4a15: $25
	ret nz                                           ; $4a16: $c0

	ld bc, $01a0                                     ; $4a17: $01 $a0 $01
	nop                                              ; $4a1a: $00
	dec hl                                           ; $4a1b: $2b
	ret nz                                           ; $4a1c: $c0

	ld bc, $06a0                                     ; $4a1d: $01 $a0 $06
	ld [bc], a                                       ; $4a20: $02
	call $02e4                                       ; $4a21: $cd $e4 $02
	ld e, c                                          ; $4a24: $59
	nop                                              ; $4a25: $00
	add hl, sp                                       ; $4a26: $39
	add hl, bc                                       ; $4a27: $09
	ld b, $e0                                        ; $4a28: $06 $e0
	ld [bc], a                                       ; $4a2a: $02
	ld c, d                                          ; $4a2b: $4a
	db $e4                                           ; $4a2c: $e4
	nop                                              ; $4a2d: $00
	adc h                                            ; $4a2e: $8c
	nop                                              ; $4a2f: $00
	dec sp                                           ; $4a30: $3b
	add hl, bc                                       ; $4a31: $09
	ld b, $e0                                        ; $4a32: $06 $e0
	ld [bc], a                                       ; $4a34: $02
	add hl, sp                                       ; $4a35: $39
	db $e4                                           ; $4a36: $e4
	nop                                              ; $4a37: $00
	add d                                            ; $4a38: $82
	ld a, a                                          ; $4a39: $7f
	db $fd                                           ; $4a3a: $fd
	ld a, b                                          ; $4a3b: $78
	add h                                            ; $4a3c: $84
	and b                                            ; $4a3d: $a0
	dec h                                            ; $4a3e: $25
	ld bc, $06d3                                     ; $4a3f: $01 $d3 $06
	ret nz                                           ; $4a42: $c0

	ld bc, $06a0                                     ; $4a43: $01 $a0 $06
	ld [bc], a                                       ; $4a46: $02
	push de                                          ; $4a47: $d5
	ld bc, $06d4                                     ; $4a48: $01 $d4 $06
	ret nz                                           ; $4a4b: $c0

	ld bc, $06a0                                     ; $4a4c: $01 $a0 $06
	ld [bc], a                                       ; $4a4f: $02
	sbc $01                                          ; $4a50: $de $01
	reti                                             ; $4a52: $d9


	ld b, $c0                                        ; $4a53: $06 $c0
	ld bc, $06a0                                     ; $4a55: $01 $a0 $06
	ld [bc], a                                       ; $4a58: $02
	ld [$da01], a                                    ; $4a59: $ea $01 $da
	ld b, $c0                                        ; $4a5c: $06 $c0
	ld bc, $06a0                                     ; $4a5e: $01 $a0 $06
	ld [bc], a                                       ; $4a61: $02
	db $f4                                           ; $4a62: $f4
	ld bc, $06dc                                     ; $4a63: $01 $dc $06
	ret nz                                           ; $4a66: $c0

	ld bc, $06a0                                     ; $4a67: $01 $a0 $06
	ld [bc], a                                       ; $4a6a: $02
	cp $01                                           ; $4a6b: $fe $01
	db $dd                                           ; $4a6d: $dd
	dec e                                            ; $4a6e: $1d
	add c                                            ; $4a6f: $81
	pop bc                                           ; $4a70: $c1
	db $d3                                           ; $4a71: $d3
	ld b, $d4                                        ; $4a72: $06 $d4
	push de                                          ; $4a74: $d5
	rst SubAFromHL                                          ; $4a75: $d7
	ret c                                            ; $4a76: $d8

	reti                                             ; $4a77: $d9


	jp c, $c006                                      ; $4a78: $da $06 $c0

	ld bc, $06a0                                     ; $4a7b: $01 $a0 $06
	inc bc                                           ; $4a7e: $03
	ld c, $04                                        ; $4a7f: $0e $04
	pop de                                           ; $4a81: $d1
	db $d3                                           ; $4a82: $d3
	sub $db                                          ; $4a83: $d6 $db
	ld b, $c0                                        ; $4a85: $06 $c0
	ld bc, $06a0                                     ; $4a87: $01 $a0 $06
	inc bc                                           ; $4a8a: $03
	dec de                                           ; $4a8b: $1b
	ld [bc], a                                       ; $4a8c: $02
	ldh [rAUD1SWEEP], a                              ; $4a8d: $e0 $10
	ld b, $c0                                        ; $4a8f: $06 $c0
	ld bc, $06a0                                     ; $4a91: $01 $a0 $06
	inc bc                                           ; $4a94: $03
	jr z, jr_086_4a99                                ; $4a95: $28 $02

	ldh [rAUD1LEN], a                                ; $4a97: $e0 $11

jr_086_4a99:
	ld b, $c0                                        ; $4a99: $06 $c0
	ld bc, $06a0                                     ; $4a9b: $01 $a0 $06
	inc bc                                           ; $4a9e: $03
	ld sp, $e002                                     ; $4a9f: $31 $02 $e0
	inc de                                           ; $4aa2: $13
	ld b, $c0                                        ; $4aa3: $06 $c0
	ld bc, $06a0                                     ; $4aa5: $01 $a0 $06

jr_086_4aa8:
	inc bc                                           ; $4aa8: $03
	dec sp                                           ; $4aa9: $3b
	ld [bc], a                                       ; $4aaa: $02
	ldh [rAUD1HIGH], a                               ; $4aab: $e0 $14
	ld b, $c0                                        ; $4aad: $06 $c0
	ld bc, $06a0                                     ; $4aaf: $01 $a0 $06
	inc bc                                           ; $4ab2: $03
	ld b, [hl]                                       ; $4ab3: $46
	pop bc                                           ; $4ab4: $c1
	jp nc, $a084                                     ; $4ab5: $d2 $84 $a0

	dec h                                            ; $4ab8: $25
	add hl, bc                                       ; $4ab9: $09
	dec c                                            ; $4aba: $0d
	pop hl                                           ; $4abb: $e1
	ld [bc], a                                       ; $4abc: $02
	inc bc                                           ; $4abd: $03
	rra                                              ; $4abe: $1f
	ret nz                                           ; $4abf: $c0

	ld bc, $06a0                                     ; $4ac0: $01 $a0 $06
	inc bc                                           ; $4ac3: $03
	ld d, b                                          ; $4ac4: $50
	ldh [rP1], a                                     ; $4ac5: $e0 $00
	pop de                                           ; $4ac7: $d1
	jr z, jr_086_4b05                                ; $4ac8: $28 $3b

	ret nc                                           ; $4aca: $d0

	add e                                            ; $4acb: $83
	and b                                            ; $4acc: $a0
	ld a, [hl+]                                      ; $4acd: $2a
	db $dd                                           ; $4ace: $dd
	ld h, b                                          ; $4acf: $60
	add b                                            ; $4ad0: $80
	nop                                              ; $4ad1: $00
	inc [hl]                                         ; $4ad2: $34
	rrca                                             ; $4ad3: $0f
	ldh [rSB], a                                     ; $4ad4: $e0 $01
	inc c                                            ; $4ad6: $0c
	ret nz                                           ; $4ad7: $c0

	ld bc, $0aa0                                     ; $4ad8: $01 $a0 $0a
	nop                                              ; $4adb: $00
	ld bc, $01c0                                     ; $4adc: $01 $c0 $01
	and b                                            ; $4adf: $a0
	ld bc, $5803                                     ; $4ae0: $01 $03 $58
	dec de                                           ; $4ae3: $1b
	ldh [rSB], a                                     ; $4ae4: $e0 $01
	jr nz, jr_086_4aa8                               ; $4ae6: $20 $c0

	ld bc, $0aa0                                     ; $4ae8: $01 $a0 $0a
	nop                                              ; $4aeb: $00
	ld [$01c0], sp                                   ; $4aec: $08 $c0 $01
	and b                                            ; $4aef: $a0
	ld bc, $5e03                                     ; $4af0: $01 $03 $5e
	ret nz                                           ; $4af3: $c0

	ld bc, $0aa0                                     ; $4af4: $01 $a0 $0a
	inc bc                                           ; $4af7: $03
	ld h, d                                          ; $4af8: $62
	ret nz                                           ; $4af9: $c0

	ld bc, $01a0                                     ; $4afa: $01 $a0 $01
	inc bc                                           ; $4afd: $03
	ld h, h                                          ; $4afe: $64
	ret nz                                           ; $4aff: $c0

	ld bc, $0aa0                                     ; $4b00: $01 $a0 $0a
	inc bc                                           ; $4b03: $03
	ld h, a                                          ; $4b04: $67

jr_086_4b05:
	ld a, $00                                        ; $4b05: $3e $00
	add hl, de                                       ; $4b07: $19
	jr z, jr_086_4b0d                                ; $4b08: $28 $03

	ldh [rP1], a                                     ; $4b0a: $e0 $00
	add hl, sp                                       ; $4b0c: $39

jr_086_4b0d:
	inc l                                            ; $4b0d: $2c
	nop                                              ; $4b0e: $00
	ld e, $09                                        ; $4b0f: $1e $09
	ld e, $e1                                        ; $4b11: $1e $e1
	ld [bc], a                                       ; $4b13: $02
	inc bc                                           ; $4b14: $03
	inc de                                           ; $4b15: $13
	ret nz                                           ; $4b16: $c0

	ld bc, $0aa0                                     ; $4b17: $01 $a0 $0a
	inc bc                                           ; $4b1a: $03
	ld [hl], b                                       ; $4b1b: $70
	pop bc                                           ; $4b1c: $c1
	ld b, d                                          ; $4b1d: $42
	add h                                            ; $4b1e: $84
	and b                                            ; $4b1f: $a0
	dec h                                            ; $4b20: $25
	ret nz                                           ; $4b21: $c0

	ld bc, $01a0                                     ; $4b22: $01 $a0 $01
	nop                                              ; $4b25: $00
	dec hl                                           ; $4b26: $2b
	ret nz                                           ; $4b27: $c0

	ld bc, $0aa0                                     ; $4b28: $01 $a0 $0a
	inc bc                                           ; $4b2b: $03
	ld [hl], h                                       ; $4b2c: $74
	db $e4                                           ; $4b2d: $e4
	ld bc, $004e                                     ; $4b2e: $01 $4e $00
	add hl, sp                                       ; $4b31: $39
	add hl, bc                                       ; $4b32: $09
	ld b, $e0                                        ; $4b33: $06 $e0
	ld bc, $e43f                                     ; $4b35: $01 $3f $e4
	nop                                              ; $4b38: $00
	ld d, b                                          ; $4b39: $50
	nop                                              ; $4b3a: $00
	dec sp                                           ; $4b3b: $3b
	add hl, bc                                       ; $4b3c: $09
	ld b, $e0                                        ; $4b3d: $06 $e0
	ld bc, $e42e                                     ; $4b3f: $01 $2e $e4
	nop                                              ; $4b42: $00
	ld b, [hl]                                       ; $4b43: $46
	ld b, e                                          ; $4b44: $43
	db $fd                                           ; $4b45: $fd
	inc a                                            ; $4b46: $3c
	add h                                            ; $4b47: $84
	and b                                            ; $4b48: $a0
	dec h                                            ; $4b49: $25
	ld bc, $06d3                                     ; $4b4a: $01 $d3 $06
	ret nz                                           ; $4b4d: $c0

	ld bc, $0aa0                                     ; $4b4e: $01 $a0 $0a
	inc bc                                           ; $4b51: $03
	ld a, d                                          ; $4b52: $7a
	ld bc, $06d4                                     ; $4b53: $01 $d4 $06
	ret nz                                           ; $4b56: $c0

	ld bc, $0aa0                                     ; $4b57: $01 $a0 $0a
	inc bc                                           ; $4b5a: $03
	add c                                            ; $4b5b: $81
	ld bc, $06d6                                     ; $4b5c: $01 $d6 $06
	ret nz                                           ; $4b5f: $c0

	ld bc, $0aa0                                     ; $4b60: $01 $a0 $0a
	inc bc                                           ; $4b63: $03
	adc d                                            ; $4b64: $8a
	ld [bc], a                                       ; $4b65: $02
	ldh [rAUD1LEN], a                                ; $4b66: $e0 $11
	ld b, $c0                                        ; $4b68: $06 $c0
	ld bc, $0aa0                                     ; $4b6a: $01 $a0 $0a
	inc bc                                           ; $4b6d: $03
	adc a                                            ; $4b6e: $8f
	ld [bc], a                                       ; $4b6f: $02
	ldh [rAUD1LOW], a                                ; $4b70: $e0 $13
	ld b, $c0                                        ; $4b72: $06 $c0
	ld bc, $0aa0                                     ; $4b74: $01 $a0 $0a
	inc bc                                           ; $4b77: $03
	sbc b                                            ; $4b78: $98
	ld [bc], a                                       ; $4b79: $02
	ldh [rAUD1HIGH], a                               ; $4b7a: $e0 $14
	ld b, $c0                                        ; $4b7c: $06 $c0
	ld bc, $0aa0                                     ; $4b7e: $01 $a0 $0a
	inc bc                                           ; $4b81: $03
	and c                                            ; $4b82: $a1
	pop bc                                           ; $4b83: $c1
	jp nc, $a084                                     ; $4b84: $d2 $84 $a0

	dec h                                            ; $4b87: $25
	add hl, bc                                       ; $4b88: $09
	dec c                                            ; $4b89: $0d
	pop hl                                           ; $4b8a: $e1
	ld [bc], a                                       ; $4b8b: $02
	inc bc                                           ; $4b8c: $03
	dec de                                           ; $4b8d: $1b
	ret nz                                           ; $4b8e: $c0

	ld bc, $0aa0                                     ; $4b8f: $01 $a0 $0a
	inc bc                                           ; $4b92: $03
	xor c                                            ; $4b93: $a9
	ldh [rP1], a                                     ; $4b94: $e0 $00
	ld [bc], a                                       ; $4b96: $02
	ld c, c                                          ; $4b97: $49
	pop bc                                           ; $4b98: $c1
	ld e, e                                          ; $4b99: $5b
	ld h, e                                          ; $4b9a: $63
	ei                                               ; $4b9b: $fb
	ret nz                                           ; $4b9c: $c0

	rla                                              ; $4b9d: $17
	add e                                            ; $4b9e: $83
	and b                                            ; $4b9f: $a0
	ld a, [hl+]                                      ; $4ba0: $2a
	ldh [$5a], a                                     ; $4ba1: $e0 $5a
	ld b, $c0                                        ; $4ba3: $06 $c0
	ld bc, $01a0                                     ; $4ba5: $01 $a0 $01
	inc bc                                           ; $4ba8: $03
	or b                                             ; $4ba9: $b0
	ei                                               ; $4baa: $fb
	ret nz                                           ; $4bab: $c0

	rla                                              ; $4bac: $17
	add e                                            ; $4bad: $83
	and b                                            ; $4bae: $a0
	ld a, [hl+]                                      ; $4baf: $2a
	ldh [rDMA], a                                    ; $4bb0: $e0 $46
	ld b, $c0                                        ; $4bb2: $06 $c0
	ld bc, $01a0                                     ; $4bb4: $01 $a0 $01
	inc bc                                           ; $4bb7: $03
	ret nz                                           ; $4bb8: $c0

	ei                                               ; $4bb9: $fb
	ret nz                                           ; $4bba: $c0

	rla                                              ; $4bbb: $17
	add e                                            ; $4bbc: $83
	and b                                            ; $4bbd: $a0
	ld a, [hl+]                                      ; $4bbe: $2a
	ldh [$32], a                                     ; $4bbf: $e0 $32
	ld b, $c0                                        ; $4bc1: $06 $c0
	ld bc, $01a0                                     ; $4bc3: $01 $a0 $01
	inc bc                                           ; $4bc6: $03
	pop de                                           ; $4bc7: $d1
	ei                                               ; $4bc8: $fb
	ret nz                                           ; $4bc9: $c0

	rla                                              ; $4bca: $17
	add e                                            ; $4bcb: $83
	and b                                            ; $4bcc: $a0
	ld a, [hl+]                                      ; $4bcd: $2a
	ldh [rAUD3HIGH], a                               ; $4bce: $e0 $1e
	ld b, $c0                                        ; $4bd0: $06 $c0
	ld bc, $01a0                                     ; $4bd2: $01 $a0 $01
	inc bc                                           ; $4bd5: $03
	push hl                                          ; $4bd6: $e5
	ld b, $c0                                        ; $4bd7: $06 $c0
	ld bc, $01a0                                     ; $4bd9: $01 $a0 $01
	inc bc                                           ; $4bdc: $03
	or $e4                                           ; $4bdd: $f6 $e4
	nop                                              ; $4bdf: $00
	ret nz                                           ; $4be0: $c0

	inc hl                                           ; $4be1: $23
	pop bc                                           ; $4be2: $c1
	ld e, c                                          ; $4be3: $59
	db $e3                                           ; $4be4: $e3
	nop                                              ; $4be5: $00
	ld e, a                                          ; $4be6: $5f
	ret nz                                           ; $4be7: $c0

	dec bc                                           ; $4be8: $0b
	db $e3                                           ; $4be9: $e3
	nop                                              ; $4bea: $00
	ld [de], a                                       ; $4beb: $12
	ret nz                                           ; $4bec: $c0

	nop                                              ; $4bed: $00
	inc bc                                           ; $4bee: $03
	ld a, [$01c0]                                    ; $4bef: $fa $c0 $01
	and b                                            ; $4bf2: $a0
	ld bc, $ff03                                     ; $4bf3: $01 $03 $ff
	ret nz                                           ; $4bf6: $c0

	inc c                                            ; $4bf7: $0c
	ldh [$50], a                                     ; $4bf8: $e0 $50
	ldh [rP1], a                                     ; $4bfa: $e0 $00
	ld a, [hl+]                                      ; $4bfc: $2a
	ret nz                                           ; $4bfd: $c0

	xor c                                            ; $4bfe: $a9
	add e                                            ; $4bff: $83
	and b                                            ; $4c00: $a0
	ld a, [hl+]                                      ; $4c01: $2a
	ldh [rP1], a                                     ; $4c02: $e0 $00
	dec e                                            ; $4c04: $1d
	ld a, [de]                                       ; $4c05: $1a
	or b                                             ; $4c06: $b0
	rst SubAFromDE                                          ; $4c07: $df
	dec b                                            ; $4c08: $05
	pop bc                                           ; $4c09: $c1
	ld e, c                                          ; $4c0a: $59
	db $e3                                           ; $4c0b: $e3
	nop                                              ; $4c0c: $00
	inc a                                            ; $4c0d: $3c
	rst $38                                          ; $4c0e: $ff
	dec b                                            ; $4c0f: $05
	pop bc                                           ; $4c10: $c1
	ld e, c                                          ; $4c11: $59
	db $e3                                           ; $4c12: $e3
	nop                                              ; $4c13: $00
	ld c, d                                          ; $4c14: $4a
	ldh [rP1], a                                     ; $4c15: $e0 $00
	rrca                                             ; $4c17: $0f
	ret nz                                           ; $4c18: $c0

	xor b                                            ; $4c19: $a8
	add e                                            ; $4c1a: $83
	and b                                            ; $4c1b: $a0
	ld a, [hl+]                                      ; $4c1c: $2a
	ldh [rP1], a                                     ; $4c1d: $e0 $00
	ld [bc], a                                       ; $4c1f: $02
	inc b                                            ; $4c20: $04
	ret nz                                           ; $4c21: $c0

	xor h                                            ; $4c22: $ac
	ret nz                                           ; $4c23: $c0

	and l                                            ; $4c24: $a5
	ld b, a                                          ; $4c25: $47
	pop bc                                           ; $4c26: $c1
	dec sp                                           ; $4c27: $3b
	db $fd                                           ; $4c28: $fd
	ld b, e                                          ; $4c29: $43
	add e                                            ; $4c2a: $83
	and b                                            ; $4c2b: $a0
	ld a, [hl+]                                      ; $4c2c: $2a
	ld bc, $05d0                                     ; $4c2d: $01 $d0 $05
	ret nz                                           ; $4c30: $c0

	add hl, bc                                       ; $4c31: $09
	db $e3                                           ; $4c32: $e3
	nop                                              ; $4c33: $00
	ld c, d                                          ; $4c34: $4a
	ld bc, $05d1                                     ; $4c35: $01 $d1 $05
	ret nz                                           ; $4c38: $c0

	add hl, bc                                       ; $4c39: $09
	db $e3                                           ; $4c3a: $e3
	nop                                              ; $4c3b: $00
	ld b, $01                                        ; $4c3c: $06 $01
	jp nc, $c005                                     ; $4c3e: $d2 $05 $c0

	add hl, bc                                       ; $4c41: $09
	db $e3                                           ; $4c42: $e3
	nop                                              ; $4c43: $00
	dec b                                            ; $4c44: $05
	ld bc, $05d3                                     ; $4c45: $01 $d3 $05
	ret nz                                           ; $4c48: $c0

	add hl, bc                                       ; $4c49: $09
	db $e3                                           ; $4c4a: $e3
	nop                                              ; $4c4b: $00
	inc b                                            ; $4c4c: $04
	ld bc, $05d7                                     ; $4c4d: $01 $d7 $05
	ret nz                                           ; $4c50: $c0

	add hl, bc                                       ; $4c51: $09
	db $e3                                           ; $4c52: $e3
	nop                                              ; $4c53: $00
	inc bc                                           ; $4c54: $03
	ld bc, $05d8                                     ; $4c55: $01 $d8 $05
	ret nz                                           ; $4c58: $c0

	add hl, bc                                       ; $4c59: $09
	db $e3                                           ; $4c5a: $e3
	nop                                              ; $4c5b: $00
	ld bc, $da01                                     ; $4c5c: $01 $01 $da
	dec b                                            ; $4c5f: $05
	ret nz                                           ; $4c60: $c0

	add hl, bc                                       ; $4c61: $09

jr_086_4c62:
	db $e3                                           ; $4c62: $e3
	nop                                              ; $4c63: $00
	ld [bc], a                                       ; $4c64: $02
	ld bc, $05dd                                     ; $4c65: $01 $dd $05
	ret nz                                           ; $4c68: $c0

	add hl, bc                                       ; $4c69: $09
	db $e3                                           ; $4c6a: $e3
	nop                                              ; $4c6b: $00
	rlca                                             ; $4c6c: $07
	ld b, $c0                                        ; $4c6d: $06 $c0
	inc hl                                           ; $4c6f: $23
	rst SubAFromDE                                          ; $4c70: $df
	add e                                            ; $4c71: $83
	and b                                            ; $4c72: $a0
	ld a, [hl+]                                      ; $4c73: $2a
	rlca                                             ; $4c74: $07
	ret nz                                           ; $4c75: $c0

	inc hl                                           ; $4c76: $23
	ldh [rAUD1HIGH], a                               ; $4c77: $e0 $14
	add e                                            ; $4c79: $83
	and b                                            ; $4c7a: $a0
	ld a, [hl+]                                      ; $4c7b: $2a
	add hl, bc                                       ; $4c7c: $09
	ld hl, $5bc1                                     ; $4c7d: $21 $c1 $5b
	ret nz                                           ; $4c80: $c0

	ld bc, $01a0                                     ; $4c81: $01 $a0 $01
	inc b                                            ; $4c84: $04
	ld [$39c1], sp                                   ; $4c85: $08 $c1 $39
	add e                                            ; $4c88: $83
	and b                                            ; $4c89: $a0
	ld a, [hl+]                                      ; $4c8a: $2a
	add h                                            ; $4c8b: $84
	and b                                            ; $4c8c: $a0
	dec h                                            ; $4c8d: $25
	ret nz                                           ; $4c8e: $c0

	ret c                                            ; $4c8f: $d8

	sub $83                                          ; $4c90: $d6 $83
	and b                                            ; $4c92: $a0
	ld a, [hl+]                                      ; $4c93: $2a
	nop                                              ; $4c94: $00
	add b                                            ; $4c95: $80
	nop                                              ; $4c96: $00
	bit 0, b                                         ; $4c97: $cb $40
	add c                                            ; $4c99: $81
	nop                                              ; $4c9a: $00
	ret z                                            ; $4c9b: $c8

	db $e4                                           ; $4c9c: $e4
	nop                                              ; $4c9d: $00
	ld [bc], a                                       ; $4c9e: $02
	add hl, bc                                       ; $4c9f: $09
	ld d, $c1                                        ; $4ca0: $16 $c1
	dec sp                                           ; $4ca2: $3b
	ret nz                                           ; $4ca3: $c0

	res 0, c                                         ; $4ca4: $cb $81
	adc e                                            ; $4ca6: $8b
	ld bc, $0266                                     ; $4ca7: $01 $66 $02
	or b                                             ; $4caa: $b0
	inc bc                                           ; $4cab: $03
	inc b                                            ; $4cac: $04
	push hl                                          ; $4cad: $e5
	ld bc, $6015                                     ; $4cae: $01 $15 $60
	nop                                              ; $4cb1: $00
	inc b                                            ; $4cb2: $04
	push hl                                          ; $4cb3: $e5
	ld bc, $b119                                     ; $4cb4: $01 $19 $b1
	ld l, c                                          ; $4cb7: $69
	rlca                                             ; $4cb8: $07
	add hl, bc                                       ; $4cb9: $09
	pop bc                                           ; $4cba: $c1
	jr nz, jr_086_4d1d                               ; $4cbb: $20 $60

	rst $38                                          ; $4cbd: $ff
	jr @-$7e                                         ; $4cbe: $18 $80

	ld [bc], a                                       ; $4cc0: $02
	inc bc                                           ; $4cc1: $03
	add b                                            ; $4cc2: $80
	ld [bc], a                                       ; $4cc3: $02
	dec b                                            ; $4cc4: $05
	add b                                            ; $4cc5: $80
	ld [bc], a                                       ; $4cc6: $02
	rlca                                             ; $4cc7: $07
	add b                                            ; $4cc8: $80
	ld [bc], a                                       ; $4cc9: $02
	add hl, bc                                       ; $4cca: $09
	add b                                            ; $4ccb: $80
	ld [bc], a                                       ; $4ccc: $02
	dec bc                                           ; $4ccd: $0b
	add b                                            ; $4cce: $80
	ld [bc], a                                       ; $4ccf: $02
	dec c                                            ; $4cd0: $0d
	add b                                            ; $4cd1: $80
	ld [bc], a                                       ; $4cd2: $02
	rrca                                             ; $4cd3: $0f
	add b                                            ; $4cd4: $80
	ld [bc], a                                       ; $4cd5: $02
	ld de, $ffc0                                     ; $4cd6: $11 $c0 $ff
	ret nc                                           ; $4cd9: $d0

	add a                                            ; $4cda: $87
	and b                                            ; $4cdb: $a0
	nop                                              ; $4cdc: $00
	ret nz                                           ; $4cdd: $c0

	ld [bc], a                                       ; $4cde: $02
	rst FarCall                                          ; $4cdf: $f7
	jr jr_086_4c62                                   ; $4ce0: $18 $80

	ld [bc], a                                       ; $4ce2: $02
	inc bc                                           ; $4ce3: $03
	add b                                            ; $4ce4: $80
	ld [bc], a                                       ; $4ce5: $02
	dec b                                            ; $4ce6: $05
	add b                                            ; $4ce7: $80
	ld [bc], a                                       ; $4ce8: $02
	rlca                                             ; $4ce9: $07
	add b                                            ; $4cea: $80
	ld [bc], a                                       ; $4ceb: $02
	add hl, bc                                       ; $4cec: $09
	add b                                            ; $4ced: $80
	ld [bc], a                                       ; $4cee: $02
	dec bc                                           ; $4cef: $0b
	add b                                            ; $4cf0: $80
	ld [bc], a                                       ; $4cf1: $02
	dec c                                            ; $4cf2: $0d
	add b                                            ; $4cf3: $80
	ld [bc], a                                       ; $4cf4: $02
	rrca                                             ; $4cf5: $0f
	add b                                            ; $4cf6: $80
	ld [bc], a                                       ; $4cf7: $02
	ld de, $8f40                                     ; $4cf8: $11 $40 $8f
	and b                                            ; $4cfb: $a0
	ld [$fefb], sp                                   ; $4cfc: $08 $fb $fe
	rlca                                             ; $4cff: $07
	pop af                                           ; $4d00: $f1
	add b                                            ; $4d01: $80
	nop                                              ; $4d02: $00
	sub h                                            ; $4d03: $94
	add b                                            ; $4d04: $80
	ld [bc], a                                       ; $4d05: $02
	inc bc                                           ; $4d06: $03
	db $10                                           ; $4d07: $10
	ei                                               ; $4d08: $fb
	db $fc                                           ; $4d09: $fc
	add a                                            ; $4d0a: $87
	and b                                            ; $4d0b: $a0
	nop                                              ; $4d0c: $00
	adc a                                            ; $4d0d: $8f
	and b                                            ; $4d0e: $a0
	ld [$e403], sp                                   ; $4d0f: $08 $03 $e4
	nop                                              ; $4d12: $00
	jp z, $8f20                                      ; $4d13: $ca $20 $8f

	and b                                            ; $4d16: $a0
	ld [$fefb], sp                                   ; $4d17: $08 $fb $fe
	rlca                                             ; $4d1a: $07
	pop af                                           ; $4d1b: $f1
	add b                                            ; $4d1c: $80

jr_086_4d1d:
	nop                                              ; $4d1d: $00
	and d                                            ; $4d1e: $a2
	add b                                            ; $4d1f: $80
	ld [bc], a                                       ; $4d20: $02
	dec b                                            ; $4d21: $05
	db $10                                           ; $4d22: $10
	ei                                               ; $4d23: $fb
	db $fc                                           ; $4d24: $fc
	add a                                            ; $4d25: $87
	and b                                            ; $4d26: $a0
	nop                                              ; $4d27: $00
	adc a                                            ; $4d28: $8f
	and b                                            ; $4d29: $a0
	ld [$e403], sp                                   ; $4d2a: $08 $03 $e4
	nop                                              ; $4d2d: $00
	add sp, $20                                      ; $4d2e: $e8 $20
	adc a                                            ; $4d30: $8f
	and b                                            ; $4d31: $a0
	ld [$fefb], sp                                   ; $4d32: $08 $fb $fe
	rlca                                             ; $4d35: $07
	pop af                                           ; $4d36: $f1
	add b                                            ; $4d37: $80
	nop                                              ; $4d38: $00
	and h                                            ; $4d39: $a4
	add b                                            ; $4d3a: $80
	ld [bc], a                                       ; $4d3b: $02
	rlca                                             ; $4d3c: $07
	db $10                                           ; $4d3d: $10
	ei                                               ; $4d3e: $fb
	db $fc                                           ; $4d3f: $fc
	add a                                            ; $4d40: $87
	and b                                            ; $4d41: $a0
	nop                                              ; $4d42: $00
	adc a                                            ; $4d43: $8f
	and b                                            ; $4d44: $a0
	ld [$e403], sp                                   ; $4d45: $08 $03 $e4
	ld bc, $2006                                     ; $4d48: $01 $06 $20
	adc a                                            ; $4d4b: $8f
	and b                                            ; $4d4c: $a0
	ld [$fefb], sp                                   ; $4d4d: $08 $fb $fe
	rlca                                             ; $4d50: $07
	pop af                                           ; $4d51: $f1
	add b                                            ; $4d52: $80
	nop                                              ; $4d53: $00
	and [hl]                                         ; $4d54: $a6
	add b                                            ; $4d55: $80
	ld [bc], a                                       ; $4d56: $02
	add hl, bc                                       ; $4d57: $09
	db $10                                           ; $4d58: $10
	ei                                               ; $4d59: $fb
	db $fc                                           ; $4d5a: $fc
	add a                                            ; $4d5b: $87
	and b                                            ; $4d5c: $a0
	nop                                              ; $4d5d: $00
	adc a                                            ; $4d5e: $8f
	and b                                            ; $4d5f: $a0
	ld [$e403], sp                                   ; $4d60: $08 $03 $e4
	ld bc, $2024                                     ; $4d63: $01 $24 $20
	adc a                                            ; $4d66: $8f
	and b                                            ; $4d67: $a0
	ld [$fefb], sp                                   ; $4d68: $08 $fb $fe
	rlca                                             ; $4d6b: $07
	pop af                                           ; $4d6c: $f1
	add b                                            ; $4d6d: $80
	nop                                              ; $4d6e: $00
	xor b                                            ; $4d6f: $a8
	add b                                            ; $4d70: $80
	ld [bc], a                                       ; $4d71: $02
	dec bc                                           ; $4d72: $0b
	db $10                                           ; $4d73: $10
	ei                                               ; $4d74: $fb
	db $fc                                           ; $4d75: $fc
	add a                                            ; $4d76: $87
	and b                                            ; $4d77: $a0
	nop                                              ; $4d78: $00
	adc a                                            ; $4d79: $8f
	and b                                            ; $4d7a: $a0
	ld [$e403], sp                                   ; $4d7b: $08 $03 $e4
	ld bc, $2042                                     ; $4d7e: $01 $42 $20
	adc a                                            ; $4d81: $8f
	and b                                            ; $4d82: $a0
	ld [$fefb], sp                                   ; $4d83: $08 $fb $fe
	rlca                                             ; $4d86: $07
	pop af                                           ; $4d87: $f1
	add b                                            ; $4d88: $80
	nop                                              ; $4d89: $00
	xor d                                            ; $4d8a: $aa
	add b                                            ; $4d8b: $80
	ld [bc], a                                       ; $4d8c: $02
	dec c                                            ; $4d8d: $0d
	db $10                                           ; $4d8e: $10
	ei                                               ; $4d8f: $fb
	db $fc                                           ; $4d90: $fc
	add a                                            ; $4d91: $87
	and b                                            ; $4d92: $a0
	nop                                              ; $4d93: $00
	adc a                                            ; $4d94: $8f
	and b                                            ; $4d95: $a0
	ld [$e403], sp                                   ; $4d96: $08 $03 $e4
	ld bc, $2060                                     ; $4d99: $01 $60 $20
	adc a                                            ; $4d9c: $8f
	and b                                            ; $4d9d: $a0
	ld [$fefb], sp                                   ; $4d9e: $08 $fb $fe
	rlca                                             ; $4da1: $07
	pop af                                           ; $4da2: $f1
	add b                                            ; $4da3: $80
	nop                                              ; $4da4: $00
	xor h                                            ; $4da5: $ac
	add b                                            ; $4da6: $80
	ld [bc], a                                       ; $4da7: $02
	rrca                                             ; $4da8: $0f
	db $10                                           ; $4da9: $10
	ei                                               ; $4daa: $fb
	db $fc                                           ; $4dab: $fc
	add a                                            ; $4dac: $87
	and b                                            ; $4dad: $a0
	nop                                              ; $4dae: $00
	adc a                                            ; $4daf: $8f
	and b                                            ; $4db0: $a0
	ld [$e403], sp                                   ; $4db1: $08 $03 $e4
	ld bc, $207e                                     ; $4db4: $01 $7e $20
	adc a                                            ; $4db7: $8f
	and b                                            ; $4db8: $a0
	ld [$fefb], sp                                   ; $4db9: $08 $fb $fe
	rlca                                             ; $4dbc: $07
	pop af                                           ; $4dbd: $f1
	add b                                            ; $4dbe: $80
	nop                                              ; $4dbf: $00
	xor [hl]                                         ; $4dc0: $ae
	add b                                            ; $4dc1: $80
	ld [bc], a                                       ; $4dc2: $02
	ld de, $fb10                                     ; $4dc3: $11 $10 $fb
	db $fc                                           ; $4dc6: $fc
	add a                                            ; $4dc7: $87
	and b                                            ; $4dc8: $a0
	nop                                              ; $4dc9: $00
	adc a                                            ; $4dca: $8f
	and b                                            ; $4dcb: $a0
	ld [$e403], sp                                   ; $4dcc: $08 $03 $e4
	ld bc, $209c                                     ; $4dcf: $01 $9c $20
	adc a                                            ; $4dd2: $8f
	and b                                            ; $4dd3: $a0
	ld [$01e4], sp                                   ; $4dd4: $08 $e4 $01
	call nc, $e403                                   ; $4dd7: $d4 $03 $e4
	ld bc, $09d0                                     ; $4dda: $01 $d0 $09
	scf                                              ; $4ddd: $37
	ldh [rAUD3LEVEL], a                              ; $4dde: $e0 $1c
	ld d, b                                          ; $4de0: $50
	ret nz                                           ; $4de1: $c0

	add hl, bc                                       ; $4de2: $09
	db $e3                                           ; $4de3: $e3
	nop                                              ; $4de4: $00
	ld c, d                                          ; $4de5: $4a
	ret nz                                           ; $4de6: $c0

	ld bc, $01a0                                     ; $4de7: $01 $a0 $01
	nop                                              ; $4dea: $00
	ld bc, $a8c0                                     ; $4deb: $01 $c0 $a8
	ret nc                                           ; $4dee: $d0

	ldh [rSB], a                                     ; $4def: $e0 $01
	or h                                             ; $4df1: $b4
	ret nz                                           ; $4df2: $c0

	ld bc, $01a0                                     ; $4df3: $01 $a0 $01
	nop                                              ; $4df6: $00
	ld b, $c0                                        ; $4df7: $06 $c0
	ld bc, $02a0                                     ; $4df9: $01 $a0 $02
	nop                                              ; $4dfc: $00
	ld a, [bc]                                       ; $4dfd: $0a
	pop bc                                           ; $4dfe: $c1
	ld e, e                                          ; $4dff: $5b
	ret nz                                           ; $4e00: $c0

	dec bc                                           ; $4e01: $0b
	db $e3                                           ; $4e02: $e3
	nop                                              ; $4e03: $00
	daa                                              ; $4e04: $27
	ret nz                                           ; $4e05: $c0

	ld bc, $01a0                                     ; $4e06: $01 $a0 $01
	nop                                              ; $4e09: $00
	inc c                                            ; $4e0a: $0c
	ld b, b                                          ; $4e0b: $40
	add b                                            ; $4e0c: $80
	ld [bc], a                                       ; $4e0d: $02
	inc bc                                           ; $4e0e: $03
	pop bc                                           ; $4e0f: $c1
	inc a                                            ; $4e10: $3c
	push hl                                          ; $4e11: $e5
	ld bc, $b119                                     ; $4e12: $01 $19 $b1
	add hl, bc                                       ; $4e15: $09
	scf                                              ; $4e16: $37
	ldh [rAUD3LEVEL], a                              ; $4e17: $e0 $1c
	rla                                              ; $4e19: $17
	ret nz                                           ; $4e1a: $c0

	add hl, bc                                       ; $4e1b: $09
	db $e3                                           ; $4e1c: $e3
	nop                                              ; $4e1d: $00
	ld b, $c0                                        ; $4e1e: $06 $c0
	ld bc, $01a0                                     ; $4e20: $01 $a0 $01
	nop                                              ; $4e23: $00
	inc de                                           ; $4e24: $13
	ret nz                                           ; $4e25: $c0

	ld bc, $01a0                                     ; $4e26: $01 $a0 $01
	nop                                              ; $4e29: $00
	jr @-$3e                                         ; $4e2a: $18 $c0

	xor b                                            ; $4e2c: $a8
	pop de                                           ; $4e2d: $d1
	ldh [rSB], a                                     ; $4e2e: $e0 $01
	ld [hl], l                                       ; $4e30: $75
	ret nz                                           ; $4e31: $c0

	ld bc, $03a0                                     ; $4e32: $01 $a0 $03
	nop                                              ; $4e35: $00
	ld a, [bc]                                       ; $4e36: $0a
	pop bc                                           ; $4e37: $c1
	ld e, e                                          ; $4e38: $5b
	ret nz                                           ; $4e39: $c0

	dec bc                                           ; $4e3a: $0b
	db $e3                                           ; $4e3b: $e3
	nop                                              ; $4e3c: $00
	daa                                              ; $4e3d: $27
	ret nz                                           ; $4e3e: $c0

	ld bc, $01a0                                     ; $4e3f: $01 $a0 $01
	nop                                              ; $4e42: $00
	inc c                                            ; $4e43: $0c
	ld b, b                                          ; $4e44: $40
	add b                                            ; $4e45: $80
	ld [bc], a                                       ; $4e46: $02
	dec b                                            ; $4e47: $05
	pop bc                                           ; $4e48: $c1
	inc a                                            ; $4e49: $3c
	push hl                                          ; $4e4a: $e5
	ld bc, $b119                                     ; $4e4b: $01 $19 $b1
	add hl, bc                                       ; $4e4e: $09
	scf                                              ; $4e4f: $37
	ldh [rAUD3LEN], a                                ; $4e50: $e0 $1b
	sbc $c0                                          ; $4e52: $de $c0
	add hl, bc                                       ; $4e54: $09
	db $e3                                           ; $4e55: $e3
	nop                                              ; $4e56: $00
	dec b                                            ; $4e57: $05
	ret nz                                           ; $4e58: $c0

	ld bc, $01a0                                     ; $4e59: $01 $a0 $01
	nop                                              ; $4e5c: $00
	dec e                                            ; $4e5d: $1d
	ret nz                                           ; $4e5e: $c0

	ld bc, $01a0                                     ; $4e5f: $01 $a0 $01
	nop                                              ; $4e62: $00
	ld [hl+], a                                      ; $4e63: $22
	ret nz                                           ; $4e64: $c0

	xor b                                            ; $4e65: $a8
	jp nc, $01e0                                     ; $4e66: $d2 $e0 $01

	inc a                                            ; $4e69: $3c
	ret nz                                           ; $4e6a: $c0

	ld bc, $04a0                                     ; $4e6b: $01 $a0 $04
	nop                                              ; $4e6e: $00
	ld a, [bc]                                       ; $4e6f: $0a
	pop bc                                           ; $4e70: $c1
	ld e, e                                          ; $4e71: $5b
	ret nz                                           ; $4e72: $c0

	dec bc                                           ; $4e73: $0b
	db $e3                                           ; $4e74: $e3
	nop                                              ; $4e75: $00
	daa                                              ; $4e76: $27
	ret nz                                           ; $4e77: $c0

	ld bc, $01a0                                     ; $4e78: $01 $a0 $01
	nop                                              ; $4e7b: $00
	inc c                                            ; $4e7c: $0c
	ld b, b                                          ; $4e7d: $40
	add b                                            ; $4e7e: $80
	ld [bc], a                                       ; $4e7f: $02
	rlca                                             ; $4e80: $07
	pop bc                                           ; $4e81: $c1
	inc a                                            ; $4e82: $3c
	push hl                                          ; $4e83: $e5
	ld bc, $b119                                     ; $4e84: $01 $19 $b1
	add hl, bc                                       ; $4e87: $09
	scf                                              ; $4e88: $37
	ldh [rAUD3LEN], a                                ; $4e89: $e0 $1b
	and l                                            ; $4e8b: $a5
	ret nz                                           ; $4e8c: $c0

	add hl, bc                                       ; $4e8d: $09
	db $e3                                           ; $4e8e: $e3
	nop                                              ; $4e8f: $00
	inc b                                            ; $4e90: $04

jr_086_4e91:
	ret nz                                           ; $4e91: $c0

	ld bc, $01a0                                     ; $4e92: $01 $a0 $01
	nop                                              ; $4e95: $00
	ld h, $c0                                        ; $4e96: $26 $c0
	ld bc, $01a0                                     ; $4e98: $01 $a0 $01
	nop                                              ; $4e9b: $00
	dec hl                                           ; $4e9c: $2b
	ret nz                                           ; $4e9d: $c0

	xor b                                            ; $4e9e: $a8
	db $d3                                           ; $4e9f: $d3
	ldh [rSB], a                                     ; $4ea0: $e0 $01
	inc bc                                           ; $4ea2: $03
	ret nz                                           ; $4ea3: $c0

	ld bc, $05a0                                     ; $4ea4: $01 $a0 $05
	nop                                              ; $4ea7: $00
	ld a, [bc]                                       ; $4ea8: $0a
	pop bc                                           ; $4ea9: $c1
	ld e, e                                          ; $4eaa: $5b
	ret nz                                           ; $4eab: $c0

	dec bc                                           ; $4eac: $0b
	db $e3                                           ; $4ead: $e3
	nop                                              ; $4eae: $00
	daa                                              ; $4eaf: $27
	ret nz                                           ; $4eb0: $c0

	ld bc, $01a0                                     ; $4eb1: $01 $a0 $01
	nop                                              ; $4eb4: $00
	inc c                                            ; $4eb5: $0c
	ld b, b                                          ; $4eb6: $40
	add b                                            ; $4eb7: $80
	ld [bc], a                                       ; $4eb8: $02
	add hl, bc                                       ; $4eb9: $09
	pop bc                                           ; $4eba: $c1
	inc a                                            ; $4ebb: $3c
	push hl                                          ; $4ebc: $e5
	ld bc, $b119                                     ; $4ebd: $01 $19 $b1
	add hl, bc                                       ; $4ec0: $09
	scf                                              ; $4ec1: $37
	ldh [rAUD3LEN], a                                ; $4ec2: $e0 $1b
	ld l, h                                          ; $4ec4: $6c
	ret nz                                           ; $4ec5: $c0

	add hl, bc                                       ; $4ec6: $09
	db $e3                                           ; $4ec7: $e3
	nop                                              ; $4ec8: $00
	inc bc                                           ; $4ec9: $03
	ret nz                                           ; $4eca: $c0

	ld bc, $01a0                                     ; $4ecb: $01 $a0 $01
	nop                                              ; $4ece: $00
	jr nc, jr_086_4e91                               ; $4ecf: $30 $c0

	ld bc, $01a0                                     ; $4ed1: $01 $a0 $01
	nop                                              ; $4ed4: $00
	dec [hl]                                         ; $4ed5: $35
	ret nz                                           ; $4ed6: $c0

	xor b                                            ; $4ed7: $a8
	rst SubAFromHL                                          ; $4ed8: $d7
	ldh [rP1], a                                     ; $4ed9: $e0 $00
	jp z, $01c0                                      ; $4edb: $ca $c0 $01

	and b                                            ; $4ede: $a0
	ld [$3900], sp                                   ; $4edf: $08 $00 $39
	pop bc                                           ; $4ee2: $c1
	ld e, e                                          ; $4ee3: $5b
	ret nz                                           ; $4ee4: $c0

	dec bc                                           ; $4ee5: $0b
	db $e3                                           ; $4ee6: $e3
	nop                                              ; $4ee7: $00
	daa                                              ; $4ee8: $27
	ret nz                                           ; $4ee9: $c0

	ld bc, $01a0                                     ; $4eea: $01 $a0 $01
	nop                                              ; $4eed: $00
	ld b, d                                          ; $4eee: $42
	ld b, b                                          ; $4eef: $40
	add b                                            ; $4ef0: $80
	ld [bc], a                                       ; $4ef1: $02
	dec bc                                           ; $4ef2: $0b
	pop bc                                           ; $4ef3: $c1
	inc a                                            ; $4ef4: $3c
	push hl                                          ; $4ef5: $e5
	ld bc, $b119                                     ; $4ef6: $01 $19 $b1
	add hl, bc                                       ; $4ef9: $09
	scf                                              ; $4efa: $37
	ldh [rAUD3LEN], a                                ; $4efb: $e0 $1b
	inc sp                                           ; $4efd: $33
	ret nz                                           ; $4efe: $c0

	add hl, bc                                       ; $4eff: $09
	db $e3                                           ; $4f00: $e3
	nop                                              ; $4f01: $00
	ld bc, $01c0                                     ; $4f02: $01 $c0 $01
	and b                                            ; $4f05: $a0
	ld bc, $4600                                     ; $4f06: $01 $00 $46
	ret nz                                           ; $4f09: $c0

	ld bc, $01a0                                     ; $4f0a: $01 $a0 $01
	nop                                              ; $4f0d: $00
	ld c, e                                          ; $4f0e: $4b
	ret nz                                           ; $4f0f: $c0

	xor b                                            ; $4f10: $a8
	ret c                                            ; $4f11: $d8

	ldh [rP1], a                                     ; $4f12: $e0 $00
	sub c                                            ; $4f14: $91
	ret nz                                           ; $4f15: $c0

	ld bc, $09a0                                     ; $4f16: $01 $a0 $09
	nop                                              ; $4f19: $00
	ld d, b                                          ; $4f1a: $50
	pop bc                                           ; $4f1b: $c1
	ld e, e                                          ; $4f1c: $5b
	ret nz                                           ; $4f1d: $c0

	dec bc                                           ; $4f1e: $0b
	db $e3                                           ; $4f1f: $e3
	nop                                              ; $4f20: $00
	daa                                              ; $4f21: $27
	ret nz                                           ; $4f22: $c0

	ld bc, $01a0                                     ; $4f23: $01 $a0 $01
	nop                                              ; $4f26: $00
	inc c                                            ; $4f27: $0c
	ld b, b                                          ; $4f28: $40
	add b                                            ; $4f29: $80
	ld [bc], a                                       ; $4f2a: $02
	dec c                                            ; $4f2b: $0d
	pop bc                                           ; $4f2c: $c1
	inc a                                            ; $4f2d: $3c
	push hl                                          ; $4f2e: $e5
	ld bc, $b119                                     ; $4f2f: $01 $19 $b1
	add hl, bc                                       ; $4f32: $09
	scf                                              ; $4f33: $37
	ldh [rAUD3ENA], a                                ; $4f34: $e0 $1a
	ld a, [$09c0]                                    ; $4f36: $fa $c0 $09
	db $e3                                           ; $4f39: $e3
	nop                                              ; $4f3a: $00
	ld [bc], a                                       ; $4f3b: $02
	ret nz                                           ; $4f3c: $c0

	ld bc, $01a0                                     ; $4f3d: $01 $a0 $01
	nop                                              ; $4f40: $00
	ld d, a                                          ; $4f41: $57
	ret nz                                           ; $4f42: $c0

	ld bc, $01a0                                     ; $4f43: $01 $a0 $01
	nop                                              ; $4f46: $00
	ld e, h                                          ; $4f47: $5c
	ret nz                                           ; $4f48: $c0

	xor b                                            ; $4f49: $a8
	jp c, $00e0                                      ; $4f4a: $da $e0 $00

	ld e, b                                          ; $4f4d: $58
	ret nz                                           ; $4f4e: $c0

	ld bc, $06a0                                     ; $4f4f: $01 $a0 $06
	nop                                              ; $4f52: $00
	ld h, b                                          ; $4f53: $60
	pop bc                                           ; $4f54: $c1
	ld e, e                                          ; $4f55: $5b
	ret nz                                           ; $4f56: $c0

	dec bc                                           ; $4f57: $0b
	db $e3                                           ; $4f58: $e3
	nop                                              ; $4f59: $00
	daa                                              ; $4f5a: $27
	ret nz                                           ; $4f5b: $c0

	ld bc, $01a0                                     ; $4f5c: $01 $a0 $01
	nop                                              ; $4f5f: $00
	inc c                                            ; $4f60: $0c
	ld b, b                                          ; $4f61: $40
	add b                                            ; $4f62: $80
	ld [bc], a                                       ; $4f63: $02
	rrca                                             ; $4f64: $0f
	pop bc                                           ; $4f65: $c1
	inc a                                            ; $4f66: $3c
	push hl                                          ; $4f67: $e5
	ld bc, $b119                                     ; $4f68: $01 $19 $b1
	add hl, bc                                       ; $4f6b: $09
	scf                                              ; $4f6c: $37
	ldh [rAUD3ENA], a                                ; $4f6d: $e0 $1a
	pop bc                                           ; $4f6f: $c1
	ret nz                                           ; $4f70: $c0

	add hl, bc                                       ; $4f71: $09
	db $e3                                           ; $4f72: $e3
	nop                                              ; $4f73: $00
	rlca                                             ; $4f74: $07
	ret nz                                           ; $4f75: $c0

	ld bc, $01a0                                     ; $4f76: $01 $a0 $01
	nop                                              ; $4f79: $00
	ld h, e                                          ; $4f7a: $63
	ret nz                                           ; $4f7b: $c0

	ld bc, $01a0                                     ; $4f7c: $01 $a0 $01
	nop                                              ; $4f7f: $00
	ld l, b                                          ; $4f80: $68
	ret nz                                           ; $4f81: $c0

	xor b                                            ; $4f82: $a8
	db $dd                                           ; $4f83: $dd
	ldh [rP1], a                                     ; $4f84: $e0 $00
	rra                                              ; $4f86: $1f
	ret nz                                           ; $4f87: $c0

jr_086_4f88:
	ld bc, $0aa0                                     ; $4f88: $01 $a0 $0a
	nop                                              ; $4f8b: $00
	ld h, b                                          ; $4f8c: $60
	pop bc                                           ; $4f8d: $c1
	ld e, e                                          ; $4f8e: $5b
	ret nz                                           ; $4f8f: $c0

	dec bc                                           ; $4f90: $0b
	db $e3                                           ; $4f91: $e3
	nop                                              ; $4f92: $00
	daa                                              ; $4f93: $27

jr_086_4f94:
	ret nz                                           ; $4f94: $c0

	ld bc, $01a0                                     ; $4f95: $01 $a0 $01
	nop                                              ; $4f98: $00
	inc c                                            ; $4f99: $0c
	ld b, b                                          ; $4f9a: $40
	add b                                            ; $4f9b: $80
	ld [bc], a                                       ; $4f9c: $02
	ld de, $3cc1                                     ; $4f9d: $11 $c1 $3c

jr_086_4fa0:
	push hl                                          ; $4fa0: $e5
	ld bc, $b119                                     ; $4fa1: $01 $19 $b1
	dec b                                            ; $4fa4: $05
	ret nz                                           ; $4fa5: $c0

	xor e                                            ; $4fa6: $ab
	call nc, $a5c0                                   ; $4fa7: $d4 $c0 $a5
	add hl, bc                                       ; $4faa: $09
	ld l, h                                          ; $4fab: $6c

jr_086_4fac:
	db $fd                                           ; $4fac: $fd
	ld e, d                                          ; $4fad: $5a
	pop bc                                           ; $4fae: $c1
	ld c, $01                                        ; $4faf: $0e $01
	ret nc                                           ; $4fb1: $d0

	ld [$83d0], sp                                   ; $4fb2: $08 $d0 $83
	and b                                            ; $4fb5: $a0
	jr jr_086_4f88                                   ; $4fb6: $18 $d0

	db $e4                                           ; $4fb8: $e4
	ld bc, $0147                       ; $4fb9: $01 $47 $01
	pop de                                           ; $4fbc: $d1
	ld [$83d0], sp                                   ; $4fbd: $08 $d0 $83
	and b                                            ; $4fc0: $a0
	jr jr_086_4f94                                   ; $4fc1: $18 $d1

	db $e4                                           ; $4fc3: $e4
	inc b                                            ; $4fc4: $04
	adc e                                            ; $4fc5: $8b
	ld bc, $08d2                                     ; $4fc6: $01 $d2 $08
	ret nc                                           ; $4fc9: $d0

	add e                                            ; $4fca: $83
	and b                                            ; $4fcb: $a0
	jr jr_086_4fa0                                   ; $4fcc: $18 $d2

	db $e4                                           ; $4fce: $e4
	rlca                                             ; $4fcf: $07
	sub [hl]                                         ; $4fd0: $96
	ld bc, $08d3                                     ; $4fd1: $01 $d3 $08

jr_086_4fd4:
	ret nc                                           ; $4fd4: $d0

	add e                                            ; $4fd5: $83
	and b                                            ; $4fd6: $a0
	jr jr_086_4fac                                   ; $4fd7: $18 $d3

	db $e4                                           ; $4fd9: $e4
	ld a, [bc]                                       ; $4fda: $0a
	halt                                             ; $4fdb: $76
	ld bc, $08d7                                     ; $4fdc: $01 $d7 $08
	ret nc                                           ; $4fdf: $d0

	add e                                            ; $4fe0: $83
	and b                                            ; $4fe1: $a0

jr_086_4fe2:
	jr @-$27                                         ; $4fe2: $18 $d7

	db $e4                                           ; $4fe4: $e4
	dec c                                            ; $4fe5: $0d
	ld l, e                                          ; $4fe6: $6b
	ld bc, $08d8                                     ; $4fe7: $01 $d8 $08
	ret nc                                           ; $4fea: $d0

	add e                                            ; $4feb: $83
	and b                                            ; $4fec: $a0
	jr @-$26                                         ; $4fed: $18 $d8

	db $e4                                           ; $4fef: $e4
	db $10                                           ; $4ff0: $10
	adc l                                            ; $4ff1: $8d
	ld bc, $08da                                     ; $4ff2: $01 $da $08
	ret nc                                           ; $4ff5: $d0

	add e                                            ; $4ff6: $83
	and b                                            ; $4ff7: $a0
	jr jr_086_4fd4                                   ; $4ff8: $18 $da

	db $e4                                           ; $4ffa: $e4
	inc de                                           ; $4ffb: $13
	jp z, $dd01                                      ; $4ffc: $ca $01 $dd

	ld [$83d0], sp                                   ; $4fff: $08 $d0 $83
	and b                                            ; $5002: $a0
	jr jr_086_4fe2                                   ; $5003: $18 $dd

	db $e4                                           ; $5005: $e4
	ld d, $d7                                        ; $5006: $16 $d7
	ldh [rP1], a                                     ; $5008: $e0 $00
	rrca                                             ; $500a: $0f
	ld h, b                                          ; $500b: $60
	add b                                            ; $500c: $80
	ld [bc], a                                       ; $500d: $02
	xor d                                            ; $500e: $aa
	inc b                                            ; $500f: $04
	push hl                                          ; $5010: $e5
	ld bc, $b119                                     ; $5011: $01 $19 $b1
	inc bc                                           ; $5014: $03
	db $e4                                           ; $5015: $e4
	ld a, [de]                                       ; $5016: $1a
	ld [hl], c                                       ; $5017: $71
	add hl, de                                       ; $5018: $19
	ei                                               ; $5019: $fb
	cp $0d                                           ; $501a: $fe $0d
	db $fc                                           ; $501c: $fc
	ret nz                                           ; $501d: $c0

	ld h, h                                          ; $501e: $64
	ldh [$61], a                                     ; $501f: $e0 $61
	ld sp, hl                                        ; $5021: $f9
	ret nz                                           ; $5022: $c0

	ld h, l                                          ; $5023: $65
	call nc, $80f1                                   ; $5024: $d4 $f1 $80
	ld [bc], a                                       ; $5027: $02
	xor e                                            ; $5028: $ab
	ld [$4cb0], sp                                   ; $5029: $08 $b0 $4c
	inc bc                                           ; $502c: $03
	db $e4                                           ; $502d: $e4
	nop                                              ; $502e: $00
	inc b                                            ; $502f: $04
	rst $38                                          ; $5030: $ff
	nop                                              ; $5031: $00
	add hl, bc                                       ; $5032: $09
	ld a, $c1                                        ; $5033: $3e $c1
	ld d, e                                          ; $5035: $53
	or c                                             ; $5036: $b1
	ld d, h                                          ; $5037: $54
	dec b                                            ; $5038: $05
	ret nz                                           ; $5039: $c0

	inc d                                            ; $503a: $14
	db $e3                                           ; $503b: $e3
	nop                                              ; $503c: $00
	inc a                                            ; $503d: $3c
	xor d                                            ; $503e: $aa
	add hl, de                                       ; $503f: $19
	add c                                            ; $5040: $81
	ret nz                                           ; $5041: $c0

	ld h, l                                          ; $5042: $65
	ld [$d2d1], sp                                   ; $5043: $08 $d1 $d2
	db $d3                                           ; $5046: $d3
	call nc, $dad5                                   ; $5047: $d4 $d5 $da
	db $db                                           ; $504a: $db
	call c, $c005                                    ; $504b: $dc $05 $c0
	inc d                                            ; $504e: $14
	db $e3                                           ; $504f: $e3
	nop                                              ; $5050: $00
	ld c, c                                          ; $5051: $49
	nop                                              ; $5052: $00
	dec b                                            ; $5053: $05
	ret nz                                           ; $5054: $c0

	inc d                                            ; $5055: $14
	db $e3                                           ; $5056: $e3
	nop                                              ; $5057: $00
	ld c, b                                          ; $5058: $48
	rst $38                                          ; $5059: $ff
	dec b                                            ; $505a: $05
	ret nz                                           ; $505b: $c0

	inc d                                            ; $505c: $14
	db $e3                                           ; $505d: $e3
	nop                                              ; $505e: $00
	dec a                                            ; $505f: $3d
	ret nz                                           ; $5060: $c0

	add hl, bc                                       ; $5061: $09
	db $e3                                           ; $5062: $e3
	nop                                              ; $5063: $00
	ld l, d                                          ; $5064: $6a
	pop hl                                           ; $5065: $e1
	ld [bc], a                                       ; $5066: $02
	ld [bc], a                                       ; $5067: $02
	call z, $01c0                                    ; $5068: $cc $c0 $01
	and b                                            ; $506b: $a0
	rlca                                             ; $506c: $07
	nop                                              ; $506d: $00
	ld l, l                                          ; $506e: $6d
	db $e4                                           ; $506f: $e4
	nop                                              ; $5070: $00
	ld [bc], a                                       ; $5071: $02
	ld [$008c], sp                                   ; $5072: $08 $8c $00
	ld a, a                                          ; $5075: $7f
	add hl, bc                                       ; $5076: $09
	db $10                                           ; $5077: $10
	ret nz                                           ; $5078: $c0

	ld bc, $07a0                                     ; $5079: $01 $a0 $07
	nop                                              ; $507c: $00
	add d                                            ; $507d: $82
	pop bc                                           ; $507e: $c1
	ld e, e                                          ; $507f: $5b
	nop                                              ; $5080: $00
	add b                                            ; $5081: $80
	ld [bc], a                                       ; $5082: $02
	xor e                                            ; $5083: $ab
	push hl                                          ; $5084: $e5
	ld bc, $b119                                     ; $5085: $01 $19 $b1
	nop                                              ; $5088: $00
	add a                                            ; $5089: $87
	add hl, bc                                       ; $508a: $09
	ld [hl], h                                       ; $508b: $74
	ret nz                                           ; $508c: $c0

	ld bc, $07a0                                     ; $508d: $01 $a0 $07
	nop                                              ; $5090: $00
	adc c                                            ; $5091: $89
	ret nz                                           ; $5092: $c0

	ld bc, $07a0                                     ; $5093: $01 $a0 $07
	nop                                              ; $5096: $00
	sbc l                                            ; $5097: $9d
	ret nz                                           ; $5098: $c0

	ld bc, $07a0                                     ; $5099: $01 $a0 $07
	nop                                              ; $509c: $00
	xor d                                            ; $509d: $aa
	ret nz                                           ; $509e: $c0

	ld bc, $07a0                                     ; $509f: $01 $a0 $07
	nop                                              ; $50a2: $00
	cp b                                             ; $50a3: $b8
	pop hl                                           ; $50a4: $e1
	ld [bc], a                                       ; $50a5: $02
	rlca                                             ; $50a6: $07
	cp a                                             ; $50a7: $bf
	ret nz                                           ; $50a8: $c0

	ld bc, $07a0                                     ; $50a9: $01 $a0 $07
	nop                                              ; $50ac: $00
	cp [hl]                                          ; $50ad: $be
	ret nz                                           ; $50ae: $c0

	ld bc, $07a0                                     ; $50af: $01 $a0 $07
	nop                                              ; $50b2: $00
	rst JumpTable                                          ; $50b3: $c7
	ret nz                                           ; $50b4: $c0

	ld bc, $07a0                                     ; $50b5: $01 $a0 $07
	nop                                              ; $50b8: $00
	call z, $01c0                                    ; $50b9: $cc $c0 $01
	and b                                            ; $50bc: $a0
	rlca                                             ; $50bd: $07
	nop                                              ; $50be: $00
	ldh [c], a                                       ; $50bf: $e2
	ret nz                                           ; $50c0: $c0

	ld bc, $07a0                                     ; $50c1: $01 $a0 $07
	nop                                              ; $50c4: $00
	rst FarCall                                          ; $50c5: $f7
	ret nz                                           ; $50c6: $c0

	ld bc, $07a0                                     ; $50c7: $01 $a0 $07
	ld bc, $e103                                     ; $50ca: $01 $03 $e1
	ld [bc], a                                       ; $50cd: $02
	rlca                                             ; $50ce: $07
	cp a                                             ; $50cf: $bf
	ret nz                                           ; $50d0: $c0

	ld bc, $07a0                                     ; $50d1: $01 $a0 $07
	ld bc, $c00f                                     ; $50d4: $01 $0f $c0
	ld bc, $07a0                                     ; $50d7: $01 $a0 $07
	ld bc, $c01a                                     ; $50da: $01 $1a $c0
	ld bc, $07a0                                     ; $50dd: $01 $a0 $07
	ld bc, $c026                                     ; $50e0: $01 $26 $c0
	ld bc, $07a0                                     ; $50e3: $01 $a0 $07
	ld bc, $c033                                     ; $50e6: $01 $33 $c0
	ld bc, $07a0                                     ; $50e9: $01 $a0 $07
	ld bc, $c13f                                     ; $50ec: $01 $3f $c1
	ld e, e                                          ; $50ef: $5b
	ret nz                                           ; $50f0: $c0

	ld bc, $01a0                                     ; $50f1: $01 $a0 $01
	ld bc, wPastTitleScreen                                     ; $50f4: $01 $41 $c1
	dec b                                            ; $50f7: $05
	nop                                              ; $50f8: $00
	add b                                            ; $50f9: $80
	ld [bc], a                                       ; $50fa: $02
	xor e                                            ; $50fb: $ab
	push hl                                          ; $50fc: $e5
	ld bc, $b119                                     ; $50fd: $01 $19 $b1
	dec a                                            ; $5100: $3d
	ld c, $d0                                        ; $5101: $0e $d0
	add e                                            ; $5103: $83
	and b                                            ; $5104: $a0
	inc e                                            ; $5105: $1c
	ret nz                                           ; $5106: $c0

	sbc [hl]                                         ; $5107: $9e
	ret nc                                           ; $5108: $d0

	ldh [rAUD2HIGH], a                               ; $5109: $e0 $19
	ld bc, $21c0                                     ; $510b: $01 $c0 $21
	jp nc, $c0d0                                     ; $510e: $d2 $d0 $c0

	db $eb                                           ; $5111: $eb
	ret nz                                           ; $5112: $c0

	dec de                                           ; $5113: $1b
	ret nc                                           ; $5114: $d0

	ld [bc], a                                       ; $5115: $02
	ret nc                                           ; $5116: $d0

	pop de                                           ; $5117: $d1
	jr z, @+$27                                      ; $5118: $28 $25

	pop hl                                           ; $511a: $e1
	ld [bc], a                                       ; $511b: $02
	nop                                              ; $511c: $00
	ret nz                                           ; $511d: $c0

	pop bc                                           ; $511e: $c1
	or d                                             ; $511f: $b2
	db $e3                                           ; $5120: $e3
	nop                                              ; $5121: $00
	dec bc                                           ; $5122: $0b
	ret nz                                           ; $5123: $c0

	add hl, bc                                       ; $5124: $09
	db $e3                                           ; $5125: $e3
	nop                                              ; $5126: $00
	ld c, d                                          ; $5127: $4a
	ret nz                                           ; $5128: $c0

	ld bc, $02a0                                     ; $5129: $01 $a0 $02
	ld bc, $c04a                                     ; $512c: $01 $4a $c0
	ld bc, $01a0                                     ; $512f: $01 $a0 $01
	ld bc, $c14c                                     ; $5132: $01 $4c $c1
	or d                                             ; $5135: $b2
	db $e3                                           ; $5136: $e3
	nop                                              ; $5137: $00
	inc c                                            ; $5138: $0c
	ret nz                                           ; $5139: $c0

	ld bc, $02a0                                     ; $513a: $01 $a0 $02
	ld bc, $2d50                                     ; $513d: $01 $50 $2d
	ld bc, $095f                                     ; $5140: $01 $5f $09
	ld c, $c1                                        ; $5143: $0e $c1
	or d                                             ; $5145: $b2
	db $e3                                           ; $5146: $e3
	nop                                              ; $5147: $00
	dec c                                            ; $5148: $0d
	ret nz                                           ; $5149: $c0

	ld bc, $02a0                                     ; $514a: $01 $a0 $02
	ld bc, $e064                                     ; $514d: $01 $64 $e0
	nop                                              ; $5150: $00
	or [hl]                                          ; $5151: $b6
	ld bc, $0967                                     ; $5152: $01 $67 $09
	rla                                              ; $5155: $17
	pop hl                                           ; $5156: $e1
	ld [bc], a                                       ; $5157: $02
	inc bc                                           ; $5158: $03
	dec de                                           ; $5159: $1b
	ret nz                                           ; $515a: $c0

	ld bc, $02a0                                     ; $515b: $01 $a0 $02
	ld bc, $c16c                                     ; $515e: $01 $6c $c1
	ld e, e                                          ; $5161: $5b
	ret nz                                           ; $5162: $c0

	inc hl                                           ; $5163: $23
	push af                                          ; $5164: $f5
	jp c, $a083                                      ; $5165: $da $83 $a0

	inc e                                            ; $5168: $1c
	ret nc                                           ; $5169: $d0

	ldh [rAUD2LOW], a                                ; $516a: $e0 $18
	rst SubAFromHL                                          ; $516c: $d7
	ld [bc], a                                       ; $516d: $02
	jp nc, $28d3                                     ; $516e: $d2 $d3 $28

	dec de                                           ; $5171: $1b
	ret nz                                           ; $5172: $c0

	add hl, bc                                       ; $5173: $09
	db $e3                                           ; $5174: $e3
	nop                                              ; $5175: $00
	ld c, d                                          ; $5176: $4a
	ret nz                                           ; $5177: $c0

	ld bc, $01a0                                     ; $5178: $01 $a0 $01
	nop                                              ; $517b: $00
	ld bc, $01c0                                     ; $517c: $01 $c0 $01
	and b                                            ; $517f: $a0
	ld bc, $0600                                     ; $5180: $01 $00 $06
	pop hl                                           ; $5183: $e1
	ld [bc], a                                       ; $5184: $02
	nop                                              ; $5185: $00
	ret nz                                           ; $5186: $c0

	ret nz                                           ; $5187: $c0

	ld bc, $02a0                                     ; $5188: $01 $a0 $02
	ld bc, $2074                                     ; $518b: $01 $74 $20
	ld bc, $0979                                     ; $518e: $01 $79 $09
	rrca                                             ; $5191: $0f
	ret nz                                           ; $5192: $c0

	ld bc, $02a0                                     ; $5193: $01 $a0 $02
	ld bc, $c07e                                     ; $5196: $01 $7e $c0
	ld bc, $01a0                                     ; $5199: $01 $a0 $01
	ld bc, $e087                                     ; $519c: $01 $87 $e0
	nop                                              ; $519f: $00
	ld h, a                                          ; $51a0: $67
	ld bc, $0989                                     ; $51a1: $01 $89 $09
	add hl, bc                                       ; $51a4: $09
	ret nz                                           ; $51a5: $c0

	ld bc, $02a0                                     ; $51a6: $01 $a0 $02
	ld bc, $e090                                     ; $51a9: $01 $90 $e0
	ld [bc], a                                       ; $51ac: $02
	sbc b                                            ; $51ad: $98
	ld bc, $28d4                                     ; $51ae: $01 $d4 $28
	dec de                                           ; $51b1: $1b
	ret nz                                           ; $51b2: $c0

	add hl, bc                                       ; $51b3: $09
	db $e3                                           ; $51b4: $e3
	nop                                              ; $51b5: $00
	ld c, d                                          ; $51b6: $4a
	ret nz                                           ; $51b7: $c0

	ld bc, $01a0                                     ; $51b8: $01 $a0 $01
	nop                                              ; $51bb: $00
	ld bc, $01c0                                     ; $51bc: $01 $c0 $01
	and b                                            ; $51bf: $a0
	ld bc, $0600                                     ; $51c0: $01 $00 $06
	pop hl                                           ; $51c3: $e1
	ld [bc], a                                       ; $51c4: $02
	nop                                              ; $51c5: $00
	ret nz                                           ; $51c6: $c0

	ret nz                                           ; $51c7: $c0

	ld bc, $02a0                                     ; $51c8: $01 $a0 $02
	ld bc, $2f74                                     ; $51cb: $01 $74 $2f
	ld bc, $0979                                     ; $51ce: $01 $79 $09
	ld e, $c0                                        ; $51d1: $1e $c0
	ld bc, $02a0                                     ; $51d3: $01 $a0 $02
	ld bc, $c092                                     ; $51d6: $01 $92 $c0
	ld bc, $01a0                                     ; $51d9: $01 $a0 $01
	ld bc, $c09e                                     ; $51dc: $01 $9e $c0
	ld bc, $02a0                                     ; $51df: $01 $a0 $02
	ld bc, $c0a5                                     ; $51e2: $01 $a5 $c0
	ret c                                            ; $51e5: $d8

	ret nc                                           ; $51e6: $d0

	ret nc                                           ; $51e7: $d0

	pop bc                                           ; $51e8: $c1
	ld e, e                                          ; $51e9: $5b
	ret nz                                           ; $51ea: $c0

	ld bc, $01a0                                     ; $51eb: $01 $a0 $01
	ld bc, $01aa                                     ; $51ee: $01 $aa $01
	adc c                                            ; $51f1: $89
	add hl, bc                                       ; $51f2: $09
	add hl, bc                                       ; $51f3: $09
	ret nz                                           ; $51f4: $c0

	ld bc, $02a0                                     ; $51f5: $01 $a0 $02
	ld bc, $e090                                     ; $51f8: $01 $90 $e0
	ld [bc], a                                       ; $51fb: $02
	ld c, c                                          ; $51fc: $49
	ld [$cbc0], sp                                   ; $51fd: $08 $c0 $cb
	pop bc                                           ; $5200: $c1
	ld e, e                                          ; $5201: $5b
	push hl                                          ; $5202: $e5
	ld bc, $b119                                     ; $5203: $01 $19 $b1
	and b                                            ; $5206: $a0
	ld h, b                                          ; $5207: $60
	db $fc                                           ; $5208: $fc
	adc e                                            ; $5209: $8b
	nop                                              ; $520a: $00
	inc c                                            ; $520b: $0c
	or b                                             ; $520c: $b0
	ld bc, $c006                                     ; $520d: $01 $06 $c0
	ld bc, $01a0                                     ; $5210: $01 $a0 $01
	ld bc, $8daf                                     ; $5213: $01 $af $8d
	ret nz                                           ; $5216: $c0

	nop                                              ; $5217: $00
	ld bc, $c1b4                                     ; $5218: $01 $b4 $c1
	ld e, c                                          ; $521b: $59
	db $e3                                           ; $521c: $e3
	nop                                              ; $521d: $00
	ld a, [hl]                                       ; $521e: $7e
	db $fd                                           ; $521f: $fd
	ld a, [hl]                                       ; $5220: $7e
	adc e                                            ; $5221: $8b
	nop                                              ; $5222: $00
	inc c                                            ; $5223: $0c
	ld [bc], a                                       ; $5224: $02
	or b                                             ; $5225: $b0
	ld l, d                                          ; $5226: $6a
	inc bc                                           ; $5227: $03
	ldh [rP1], a                                     ; $5228: $e0 $00
	ld a, [hl]                                       ; $522a: $7e
	ld [bc], a                                       ; $522b: $02
	or b                                             ; $522c: $b0
	ld l, l                                          ; $522d: $6d
	inc bc                                           ; $522e: $03
	ldh [rP1], a                                     ; $522f: $e0 $00
	sub b                                            ; $5231: $90
	ld [bc], a                                       ; $5232: $02
	or b                                             ; $5233: $b0
	ld l, c                                          ; $5234: $69
	inc bc                                           ; $5235: $03
	ldh [rP1], a                                     ; $5236: $e0 $00
	ei                                               ; $5238: $fb
	ld [bc], a                                       ; $5239: $02
	or b                                             ; $523a: $b0
	ld [hl], b                                       ; $523b: $70
	inc bc                                           ; $523c: $03
	ldh [rSB], a                                     ; $523d: $e0 $01
	dec c                                            ; $523f: $0d
	ld [bc], a                                       ; $5240: $02
	or b                                             ; $5241: $b0
	ld l, e                                          ; $5242: $6b
	inc bc                                           ; $5243: $03
	ldh [rSB], a                                     ; $5244: $e0 $01
	dec [hl]                                         ; $5246: $35
	ld [bc], a                                       ; $5247: $02
	or b                                             ; $5248: $b0
	ld l, [hl]                                       ; $5249: $6e
	dec bc                                           ; $524a: $0b
	or b                                             ; $524b: $b0
	ld a, a                                          ; $524c: $7f
	inc bc                                           ; $524d: $03
	ldh [rSB], a                                     ; $524e: $e0 $01
	ret                                              ; $5250: $c9


	rst $38                                          ; $5251: $ff
	inc bc                                           ; $5252: $03
	ldh [rSB], a                                     ; $5253: $e0 $01
	ccf                                              ; $5255: $3f
	ld [bc], a                                       ; $5256: $02
	or b                                             ; $5257: $b0
	ld l, b                                          ; $5258: $68
	dec bc                                           ; $5259: $0b
	or b                                             ; $525a: $b0
	ld a, a                                          ; $525b: $7f
	inc bc                                           ; $525c: $03
	ldh [rSB], a                                     ; $525d: $e0 $01
	ld c, [hl]                                       ; $525f: $4e
	rst $38                                          ; $5260: $ff
	inc bc                                           ; $5261: $03
	ldh [rSB], a                                     ; $5262: $e0 $01
	ld h, d                                          ; $5264: $62
	ld [bc], a                                       ; $5265: $02
	or b                                             ; $5266: $b0
	ld [hl], c                                       ; $5267: $71
	inc bc                                           ; $5268: $03
	ldh [rSB], a                                     ; $5269: $e0 $01
	sub l                                            ; $526b: $95
	nop                                              ; $526c: $00
	ld sp, $02e1                                     ; $526d: $31 $e1 $02
	dec c                                            ; $5270: $0d
	call nz, $fe62                                   ; $5271: $c4 $62 $fe
	ld a, [bc]                                       ; $5274: $0a
	db $fc                                           ; $5275: $fc
	ret nz                                           ; $5276: $c0

	ld h, l                                          ; $5277: $65
	ret nz                                           ; $5278: $c0

	ld [hl], h                                       ; $5279: $74
	ld hl, sp-$40                                    ; $527a: $f8 $c0
	ld h, [hl]                                       ; $527c: $66
	ret nz                                           ; $527d: $c0

	ld [hl], l                                       ; $527e: $75
	inc bc                                           ; $527f: $03
	ldh [rSB], a                                     ; $5280: $e0 $01
	or b                                             ; $5282: $b0
	db $fc                                           ; $5283: $fc
	ret nz                                           ; $5284: $c0

	ld h, l                                          ; $5285: $65
	add e                                            ; $5286: $83
	ld [bc], a                                       ; $5287: $02
	ld d, $03                                        ; $5288: $16 $03
	ldh [rSB], a                                     ; $528a: $e0 $01
	and [hl]                                         ; $528c: $a6
	cp $0b                                           ; $528d: $fe $0b
	db $fc                                           ; $528f: $fc
	ret nz                                           ; $5290: $c0

	ld h, l                                          ; $5291: $65
	add e                                            ; $5292: $83
	ld [bc], a                                       ; $5293: $02
	ld [de], a                                       ; $5294: $12
	ei                                               ; $5295: $fb
	ret nz                                           ; $5296: $c0

	ld h, [hl]                                       ; $5297: $66
	ret nz                                           ; $5298: $c0

	ld [hl], l                                       ; $5299: $75
	inc bc                                           ; $529a: $03
	ldh [rSB], a                                     ; $529b: $e0 $01
	sub l                                            ; $529d: $95
	nop                                              ; $529e: $00
	ret nz                                           ; $529f: $c0

	nop                                              ; $52a0: $00
	ld bc, $c0ba                                     ; $52a1: $01 $ba $c0
	ret c                                            ; $52a4: $d8

	call nc, $18d0                                   ; $52a5: $d4 $d0 $18
	ret nz                                           ; $52a8: $c0

	ld bc, $02a0                                     ; $52a9: $01 $a0 $02
	ld bc, $c0c7                                     ; $52ac: $01 $c7 $c0
	ld bc, $01a0                                     ; $52af: $01 $a0 $01
	ld bc, $c0cd                                     ; $52b2: $01 $cd $c0
	ld bc, $02a0                                     ; $52b5: $01 $a0 $02
	ld bc, $c0d3                                     ; $52b8: $01 $d3 $c0
	ld bc, $01a0                                     ; $52bb: $01 $a0 $01
	ld bc, $71da                                     ; $52be: $01 $da $71
	ret nz                                           ; $52c1: $c0

	ld bc, $02a0                                     ; $52c2: $01 $a0 $02
	ld bc, $c0dd                                     ; $52c5: $01 $dd $c0
	ld bc, $01a0                                     ; $52c8: $01 $a0 $01
	ld bc, $81e3                                     ; $52cb: $01 $e3 $81
	adc e                                            ; $52ce: $8b
	nop                                              ; $52cf: $00
	nop                                              ; $52d0: $00
	ld [$0fb0], sp                                   ; $52d1: $08 $b0 $0f
	or b                                             ; $52d4: $b0
	ld c, $b0                                        ; $52d5: $0e $b0
	db $10                                           ; $52d7: $10
	or b                                             ; $52d8: $b0
	ld de, $6139                                     ; $52d9: $11 $39 $61
	add b                                            ; $52dc: $80
	nop                                              ; $52dd: $00
	ld l, c                                          ; $52de: $69
	inc c                                            ; $52df: $0c
	ret nz                                           ; $52e0: $c0

	ld bc, $02a0                                     ; $52e1: $01 $a0 $02
	ld bc, wGenericTileDataFinalDest+1                                     ; $52e4: $01 $e7 $c0
	ld bc, $01a0                                     ; $52e7: $01 $a0 $01
	ld bc, $ffeb                                     ; $52ea: $01 $eb $ff
	inc c                                            ; $52ed: $0c
	add b                                            ; $52ee: $80
	ld [bc], a                                       ; $52ef: $02
	adc l                                            ; $52f0: $8d
	add b                                            ; $52f1: $80
	ld [bc], a                                       ; $52f2: $02
	adc [hl]                                         ; $52f3: $8e
	add b                                            ; $52f4: $80
	ld [bc], a                                       ; $52f5: $02
	adc a                                            ; $52f6: $8f
	add b                                            ; $52f7: $80
	nop                                              ; $52f8: $00
	ld [hl], d                                       ; $52f9: $72
	inc c                                            ; $52fa: $0c
	ret nz                                           ; $52fb: $c0

	ld bc, $02a0                                     ; $52fc: $01 $a0 $02
	ld bc, $c0f0                                     ; $52ff: $01 $f0 $c0
	ld bc, $01a0                                     ; $5302: $01 $a0 $01
	ld bc, $0ceb                                     ; $5305: $01 $eb $0c
	ret nz                                           ; $5308: $c0

	ld bc, $02a0                                     ; $5309: $01 $a0 $02
	ld bc, $c0f4                                     ; $530c: $01 $f4 $c0
	ld bc, $01a0                                     ; $530f: $01 $a0 $01
	ld bc, $00fa                                     ; $5312: $01 $fa $00
	inc e                                            ; $5315: $1c
	ei                                               ; $5316: $fb
	rst $38                                          ; $5317: $ff
	inc c                                            ; $5318: $0c
	add b                                            ; $5319: $80
	ld [bc], a                                       ; $531a: $02
	adc l                                            ; $531b: $8d
	add b                                            ; $531c: $80
	ld [bc], a                                       ; $531d: $02
	adc [hl]                                         ; $531e: $8e
	add b                                            ; $531f: $80
	ld [bc], a                                       ; $5320: $02
	adc a                                            ; $5321: $8f
	add b                                            ; $5322: $80
	nop                                              ; $5323: $00
	ld [hl], d                                       ; $5324: $72
	inc c                                            ; $5325: $0c
	ret nz                                           ; $5326: $c0

	ld bc, $02a0                                     ; $5327: $01 $a0 $02
	ld [bc], a                                       ; $532a: $02
	nop                                              ; $532b: $00
	ret nz                                           ; $532c: $c0

	ld bc, $01a0                                     ; $532d: $01 $a0 $01
	ld [bc], a                                       ; $5330: $02
	ld [$c018], sp                                   ; $5331: $08 $18 $c0
	ld bc, $02a0                                     ; $5334: $01 $a0 $02
	ld [bc], a                                       ; $5337: $02
	ld c, $c0                                        ; $5338: $0e $c0
	ld bc, $01a0                                     ; $533a: $01 $a0 $01
	ld [bc], a                                       ; $533d: $02
	dec d                                            ; $533e: $15
	ret nz                                           ; $533f: $c0

	ld bc, $02a0                                     ; $5340: $01 $a0 $02
	ld [bc], a                                       ; $5343: $02
	jr @-$3e                                         ; $5344: $18 $c0

	ld bc, $01a0                                     ; $5346: $01 $a0 $01
	ld [bc], a                                       ; $5349: $02
	dec e                                            ; $534a: $1d
	ld l, $c0                                        ; $534b: $2e $c0
	ld bc, $02a0                                     ; $534d: $01 $a0 $02
	ld [bc], a                                       ; $5350: $02
	ld h, $c0                                        ; $5351: $26 $c0
	ld bc, $01a0                                     ; $5353: $01 $a0 $01
	ld [bc], a                                       ; $5356: $02
	dec hl                                           ; $5357: $2b
	add c                                            ; $5358: $81
	ret nz                                           ; $5359: $c0

	dec de                                           ; $535a: $1b
	ret nc                                           ; $535b: $d0

	ld [bc], a                                       ; $535c: $02
	ret nc                                           ; $535d: $d0

	pop de                                           ; $535e: $d1
	inc c                                            ; $535f: $0c
	ret nz                                           ; $5360: $c0

	ld bc, $02a0                                     ; $5361: $01 $a0 $02
	ld [bc], a                                       ; $5364: $02
	scf                                              ; $5365: $37
	ret nz                                           ; $5366: $c0

	ld bc, $01a0                                     ; $5367: $01 $a0 $01
	ld bc, $00da                                     ; $536a: $01 $da $00
	inc c                                            ; $536d: $0c

jr_086_536e:
	ret nz                                           ; $536e: $c0

	ld bc, $02a0                                     ; $536f: $01 $a0 $02
	ld [bc], a                                       ; $5372: $02
	dec a                                            ; $5373: $3d
	ret nz                                           ; $5374: $c0

	ld bc, $01a0                                     ; $5375: $01 $a0 $01
	ld bc, $18da                                     ; $5378: $01 $da $18
	ret nz                                           ; $537b: $c0

	ld bc, $02a0                                     ; $537c: $01 $a0 $02
	ld [bc], a                                       ; $537f: $02
	ld b, b                                          ; $5380: $40
	ret nz                                           ; $5381: $c0

	ld bc, $01a0                                     ; $5382: $01 $a0 $01
	ld [bc], a                                       ; $5385: $02
	ld c, h                                          ; $5386: $4c
	ret nz                                           ; $5387: $c0

	ld bc, $02a0                                     ; $5388: $01 $a0 $02
	ld [bc], a                                       ; $538b: $02
	ld d, [hl]                                       ; $538c: $56
	ret nz                                           ; $538d: $c0

	ld bc, $01a0                                     ; $538e: $01 $a0 $01
	ld [bc], a                                       ; $5391: $02
	ld e, l                                          ; $5392: $5d
	jr @-$3e                                         ; $5393: $18 $c0

	ld bc, $02a0                                     ; $5395: $01 $a0 $02
	ld [bc], a                                       ; $5398: $02
	ld h, l                                          ; $5399: $65
	ret nz                                           ; $539a: $c0

	ld bc, $01a0                                     ; $539b: $01 $a0 $01
	ld [bc], a                                       ; $539e: $02
	ld [hl], d                                       ; $539f: $72
	ret nz                                           ; $53a0: $c0

	ld bc, $02a0                                     ; $53a1: $01 $a0 $02
	ld [bc], a                                       ; $53a4: $02
	ld a, e                                          ; $53a5: $7b
	ret nz                                           ; $53a6: $c0

	ld bc, $01a0                                     ; $53a7: $01 $a0 $01
	ld [bc], a                                       ; $53aa: $02
	add h                                            ; $53ab: $84
	jr jr_086_536e                                   ; $53ac: $18 $c0

	ld bc, $02a0                                     ; $53ae: $01 $a0 $02
	ld [bc], a                                       ; $53b1: $02
	adc h                                            ; $53b2: $8c
	ret nz                                           ; $53b3: $c0

	ld bc, $01a0                                     ; $53b4: $01 $a0 $01
	ld [bc], a                                       ; $53b7: $02
	ld c, h                                          ; $53b8: $4c
	ret nz                                           ; $53b9: $c0

	ld bc, $02a0                                     ; $53ba: $01 $a0 $02
	ld [bc], a                                       ; $53bd: $02
	sbc c                                            ; $53be: $99
	ret nz                                           ; $53bf: $c0

	ld bc, $01a0                                     ; $53c0: $01 $a0 $01
	ld [bc], a                                       ; $53c3: $02
	sbc l                                            ; $53c4: $9d
	add hl, sp                                       ; $53c5: $39
	add c                                            ; $53c6: $81
	ret nz                                           ; $53c7: $c0

	add b                                            ; $53c8: $80
	ld bc, $18d1                                     ; $53c9: $01 $d1 $18
	ret nz                                           ; $53cc: $c0

	ld bc, $02a0                                     ; $53cd: $01 $a0 $02
	ld [bc], a                                       ; $53d0: $02
	and h                                            ; $53d1: $a4
	ret nz                                           ; $53d2: $c0

	ld bc, $01a0                                     ; $53d3: $01 $a0 $01
	ld [bc], a                                       ; $53d6: $02
	xor e                                            ; $53d7: $ab
	ret nz                                           ; $53d8: $c0

	ld bc, $02a0                                     ; $53d9: $01 $a0 $02
	ld [bc], a                                       ; $53dc: $02
	or l                                             ; $53dd: $b5
	ret nz                                           ; $53de: $c0

	ld bc, $01a0                                     ; $53df: $01 $a0 $01
	ld [bc], a                                       ; $53e2: $02
	dec d                                            ; $53e3: $15
	ld bc, $18d2                                     ; $53e4: $01 $d2 $18
	ret nz                                           ; $53e7: $c0

	ld bc, $02a0                                     ; $53e8: $01 $a0 $02
	ld [bc], a                                       ; $53eb: $02
	ret nz                                           ; $53ec: $c0

	ret nz                                           ; $53ed: $c0

	ld bc, $01a0                                     ; $53ee: $01 $a0 $01
	ld [bc], a                                       ; $53f1: $02
	rst JumpTable                                          ; $53f2: $c7
	ret nz                                           ; $53f3: $c0

	ld bc, $02a0                                     ; $53f4: $01 $a0 $02
	ld [bc], a                                       ; $53f7: $02
	pop de                                           ; $53f8: $d1

jr_086_53f9:
	ret nz                                           ; $53f9: $c0

	ld bc, $01a0                                     ; $53fa: $01 $a0 $01
	ld [bc], a                                       ; $53fd: $02
	dec d                                            ; $53fe: $15
	jr @-$3e                                         ; $53ff: $18 $c0

	ld bc, $02a0                                     ; $5401: $01 $a0 $02
	ld [bc], a                                       ; $5404: $02
	ldh [c], a                                       ; $5405: $e2
	ret nz                                           ; $5406: $c0

	ld bc, $01a0                                     ; $5407: $01 $a0 $01
	ld [bc], a                                       ; $540a: $02
	rst SubAFromBC                                          ; $540b: $e7
	ret nz                                           ; $540c: $c0

	ld bc, $02a0                                     ; $540d: $01 $a0 $02
	ld [bc], a                                       ; $5410: $02
	rst AddAOntoHL                                          ; $5411: $ef
	ret nz                                           ; $5412: $c0

	ld bc, $01a0                                     ; $5413: $01 $a0 $01
	ld [bc], a                                       ; $5416: $02
	dec d                                            ; $5417: $15
	jr @-$3e                                         ; $5418: $18 $c0

	ld bc, $02a0                                     ; $541a: $01 $a0 $02
	ld [bc], a                                       ; $541d: $02
	ld hl, sp-$40                                    ; $541e: $f8 $c0
	ld bc, $01a0                                     ; $5420: $01 $a0 $01
	inc bc                                           ; $5423: $03
	ld [$01c0], sp                                   ; $5424: $08 $c0 $01
	and b                                            ; $5427: $a0
	ld [bc], a                                       ; $5428: $02
	inc bc                                           ; $5429: $03
	rrca                                             ; $542a: $0f
	ret nz                                           ; $542b: $c0

	ld bc, $01a0                                     ; $542c: $01 $a0 $01
	ld [bc], a                                       ; $542f: $02
	dec d                                            ; $5430: $15
	ld [de], a                                       ; $5431: $12
	ret nz                                           ; $5432: $c0

	ld bc, $02a0                                     ; $5433: $01 $a0 $02
	inc bc                                           ; $5436: $03
	jr jr_086_53f9                                   ; $5437: $18 $c0

	ld bc, $01a0                                     ; $5439: $01 $a0 $01
	inc bc                                           ; $543c: $03
	ld [hl+], a                                      ; $543d: $22
	ret nz                                           ; $543e: $c0

	ld bc, $02a0                                     ; $543f: $01 $a0 $02
	inc bc                                           ; $5442: $03
	dec hl                                           ; $5443: $2b
	ld a, [bc]                                       ; $5444: $0a
	pop bc                                           ; $5445: $c1
	ld e, e                                          ; $5446: $5b
	ret nz                                           ; $5447: $c0

	inc hl                                           ; $5448: $23
	push af                                          ; $5449: $f5
	sub $83                                          ; $544a: $d6 $83
	and b                                            ; $544c: $a0
	inc e                                            ; $544d: $1c
	ret nc                                           ; $544e: $d0

	dec a                                            ; $544f: $3d
	inc de                                           ; $5450: $13
	ret nc                                           ; $5451: $d0

	add e                                            ; $5452: $83
	and b                                            ; $5453: $a0
	inc e                                            ; $5454: $1c
	ret nz                                           ; $5455: $c0

	sbc [hl]                                         ; $5456: $9e
	pop de                                           ; $5457: $d1
	ldh [$15], a                                     ; $5458: $e0 $15
	or d                                             ; $545a: $b2
	ret nz                                           ; $545b: $c0

	add hl, bc                                       ; $545c: $09
	db $e3                                           ; $545d: $e3
	nop                                              ; $545e: $00
	ld b, $c0                                        ; $545f: $06 $c0
	ld hl, $d1d2                                     ; $5461: $21 $d2 $d1
	ret nz                                           ; $5464: $c0

	rst SubAFromHL                                          ; $5465: $d7
	ret nz                                           ; $5466: $c0

	dec de                                           ; $5467: $1b
	pop de                                           ; $5468: $d1
	ld [bc], a                                       ; $5469: $02
	ret nc                                           ; $546a: $d0

	pop de                                           ; $546b: $d1
	jr z, jr_086_5489                                ; $546c: $28 $1b

	pop hl                                           ; $546e: $e1
	ld [bc], a                                       ; $546f: $02
	ld bc, $c008                                     ; $5470: $01 $08 $c0
	ld bc, $03a0                                     ; $5473: $01 $a0 $03
	ld bc, $c04a                                     ; $5476: $01 $4a $c0
	ld bc, $01a0                                     ; $5479: $01 $a0 $01
	inc bc                                           ; $547c: $03
	cpl                                              ; $547d: $2f
	pop bc                                           ; $547e: $c1
	or d                                             ; $547f: $b2
	db $e3                                           ; $5480: $e3
	nop                                              ; $5481: $00
	dec hl                                           ; $5482: $2b
	ret nz                                           ; $5483: $c0

	ld bc, $03a0                                     ; $5484: $01 $a0 $03
	inc bc                                           ; $5487: $03
	inc sp                                           ; $5488: $33

jr_086_5489:
	dec l                                            ; $5489: $2d
	ld bc, $095f                                     ; $548a: $01 $5f $09
	ld c, $c1                                        ; $548d: $0e $c1
	or d                                             ; $548f: $b2
	db $e3                                           ; $5490: $e3
	nop                                              ; $5491: $00
	inc l                                            ; $5492: $2c
	ret nz                                           ; $5493: $c0

	ld bc, $03a0                                     ; $5494: $01 $a0 $03
	inc bc                                           ; $5497: $03
	inc a                                            ; $5498: $3c
	ldh [rP1], a                                     ; $5499: $e0 $00
	xor h                                            ; $549b: $ac
	ld bc, $0967                                     ; $549c: $01 $67 $09
	rla                                              ; $549f: $17
	pop hl                                           ; $54a0: $e1
	ld [bc], a                                       ; $54a1: $02
	inc bc                                           ; $54a2: $03
	dec de                                           ; $54a3: $1b
	ret nz                                           ; $54a4: $c0

	ld bc, $03a0                                     ; $54a5: $01 $a0 $03
	inc bc                                           ; $54a8: $03
	ld b, b                                          ; $54a9: $40

jr_086_54aa:
	pop bc                                           ; $54aa: $c1
	ld e, e                                          ; $54ab: $5b
	ret nz                                           ; $54ac: $c0

	inc hl                                           ; $54ad: $23
	push af                                          ; $54ae: $f5
	jp c, $a083                                      ; $54af: $da $83 $a0

	inc e                                            ; $54b2: $1c
	pop de                                           ; $54b3: $d1
	ldh [$15], a                                     ; $54b4: $e0 $15
	adc l                                            ; $54b6: $8d
	ld [bc], a                                       ; $54b7: $02
	jp nc, $28d3                                     ; $54b8: $d2 $d3 $28

	ld d, $c0                                        ; $54bb: $16 $c0
	ld bc, $01a0                                     ; $54bd: $01 $a0 $01
	nop                                              ; $54c0: $00
	inc de                                           ; $54c1: $13
	ret nz                                           ; $54c2: $c0

	ld bc, $01a0                                     ; $54c3: $01 $a0 $01
	nop                                              ; $54c6: $00
	jr jr_086_54aa                                   ; $54c7: $18 $e1

	ld [bc], a                                       ; $54c9: $02
	ld bc, $c008                                     ; $54ca: $01 $08 $c0
	ld bc, $03a0                                     ; $54cd: $01 $a0 $03
	inc bc                                           ; $54d0: $03
	ld b, a                                          ; $54d1: $47
	jr nz, jr_086_54d7                               ; $54d2: $20 $03

	ld c, l                                          ; $54d4: $4d
	add hl, bc                                       ; $54d5: $09
	rrca                                             ; $54d6: $0f

jr_086_54d7:
	ret nz                                           ; $54d7: $c0

	ld bc, $03a0                                     ; $54d8: $01 $a0 $03
	inc bc                                           ; $54db: $03
	ld d, c                                          ; $54dc: $51
	ret nz                                           ; $54dd: $c0

	ld bc, $01a0                                     ; $54de: $01 $a0 $01
	ld bc, $e087                                     ; $54e1: $01 $87 $e0
	nop                                              ; $54e4: $00

jr_086_54e5:
	ld h, d                                          ; $54e5: $62
	ld bc, $0989                                     ; $54e6: $01 $89 $09
	add hl, bc                                       ; $54e9: $09
	ret nz                                           ; $54ea: $c0

	ld bc, $03a0                                     ; $54eb: $01 $a0 $03
	inc bc                                           ; $54ee: $03
	ld d, l                                          ; $54ef: $55
	ldh [rSC], a                                     ; $54f0: $e0 $02
	ld l, c                                          ; $54f2: $69
	ld bc, $28d4                                     ; $54f3: $01 $d4 $28
	ld d, $c0                                        ; $54f6: $16 $c0
	ld bc, $01a0                                     ; $54f8: $01 $a0 $01
	nop                                              ; $54fb: $00
	inc de                                           ; $54fc: $13
	ret nz                                           ; $54fd: $c0

	ld bc, $01a0                                     ; $54fe: $01 $a0 $01
	nop                                              ; $5501: $00
	jr jr_086_54e5                                   ; $5502: $18 $e1

	ld [bc], a                                       ; $5504: $02
	ld bc, $c008                                     ; $5505: $01 $08 $c0
	ld bc, $03a0                                     ; $5508: $01 $a0 $03
	inc bc                                           ; $550b: $03
	ld b, a                                          ; $550c: $47
	cpl                                              ; $550d: $2f
	inc bc                                           ; $550e: $03
	ld c, l                                          ; $550f: $4d
	add hl, bc                                       ; $5510: $09
	ld e, $c0                                        ; $5511: $1e $c0
	ld bc, $03a0                                     ; $5513: $01 $a0 $03
	inc bc                                           ; $5516: $03
	ld d, [hl]                                       ; $5517: $56
	ret nz                                           ; $5518: $c0

	ld bc, $01a0                                     ; $5519: $01 $a0 $01
	ld bc, $c09e                                     ; $551c: $01 $9e $c0
	ld bc, $03a0                                     ; $551f: $01 $a0 $03
	inc bc                                           ; $5522: $03
	ld e, [hl]                                       ; $5523: $5e
	pop bc                                           ; $5524: $c1
	ld e, e                                          ; $5525: $5b
	ret nz                                           ; $5526: $c0

	ret c                                            ; $5527: $d8

	ret nc                                           ; $5528: $d0

	pop de                                           ; $5529: $d1
	ret nz                                           ; $552a: $c0

	ld bc, $01a0                                     ; $552b: $01 $a0 $01
	ld bc, $01aa                                     ; $552e: $01 $aa $01
	adc c                                            ; $5531: $89
	add hl, bc                                       ; $5532: $09
	add hl, bc                                       ; $5533: $09
	ret nz                                           ; $5534: $c0

	ld bc, $03a0                                     ; $5535: $01 $a0 $03
	inc bc                                           ; $5538: $03
	ld d, l                                          ; $5539: $55
	ldh [rSC], a                                     ; $553a: $e0 $02
	rra                                              ; $553c: $1f
	ld [$cbc0], sp                                   ; $553d: $08 $c0 $cb
	pop bc                                           ; $5540: $c1
	ld e, e                                          ; $5541: $5b
	push hl                                          ; $5542: $e5
	ld bc, $b119                                     ; $5543: $01 $19 $b1
	sub h                                            ; $5546: $94
	ld h, b                                          ; $5547: $60
	db $fc                                           ; $5548: $fc
	adc e                                            ; $5549: $8b
	nop                                              ; $554a: $00
	inc c                                            ; $554b: $0c
	or b                                             ; $554c: $b0
	ld bc, $c006                                     ; $554d: $01 $06 $c0
	ld bc, $01a0                                     ; $5550: $01 $a0 $01
	inc bc                                           ; $5553: $03
	ld h, c                                          ; $5554: $61
	add c                                            ; $5555: $81
	ret nz                                           ; $5556: $c0

	nop                                              ; $5557: $00
	ld bc, $c1b4                                     ; $5558: $01 $b4 $c1
	ld e, c                                          ; $555b: $59
	db $e3                                           ; $555c: $e3
	nop                                              ; $555d: $00
	ld a, [hl]                                       ; $555e: $7e
	db $fd                                           ; $555f: $fd
	ld [hl], d                                       ; $5560: $72
	adc e                                            ; $5561: $8b
	nop                                              ; $5562: $00
	inc c                                            ; $5563: $0c
	ld [bc], a                                       ; $5564: $02
	or b                                             ; $5565: $b0
	ld l, d                                          ; $5566: $6a
	inc bc                                           ; $5567: $03
	ldh [rP1], a                                     ; $5568: $e0 $00
	ld [hl], d                                       ; $556a: $72
	ld [bc], a                                       ; $556b: $02
	or b                                             ; $556c: $b0
	ld l, l                                          ; $556d: $6d
	inc bc                                           ; $556e: $03
	ldh [rP1], a                                     ; $556f: $e0 $00
	add h                                            ; $5571: $84
	ld [bc], a                                       ; $5572: $02
	or b                                             ; $5573: $b0
	ld l, c                                          ; $5574: $69
	inc bc                                           ; $5575: $03
	ldh [rP1], a                                     ; $5576: $e0 $00
	rlc d                                            ; $5578: $cb $02
	or b                                             ; $557a: $b0
	ld [hl], b                                       ; $557b: $70
	inc bc                                           ; $557c: $03
	ldh [rP1], a                                     ; $557d: $e0 $00
	db $e3                                           ; $557f: $e3
	ld [bc], a                                       ; $5580: $02
	or b                                             ; $5581: $b0
	ld l, e                                          ; $5582: $6b
	inc bc                                           ; $5583: $03
	ldh [rSB], a                                     ; $5584: $e0 $01
	dec bc                                           ; $5586: $0b
	ld [bc], a                                       ; $5587: $02
	or b                                             ; $5588: $b0
	ld l, [hl]                                       ; $5589: $6e
	dec bc                                           ; $558a: $0b
	or b                                             ; $558b: $b0
	ld a, a                                          ; $558c: $7f
	inc bc                                           ; $558d: $03
	ldh [rSB], a                                     ; $558e: $e0 $01
	sbc a                                            ; $5590: $9f
	rst $38                                          ; $5591: $ff
	inc bc                                           ; $5592: $03
	ldh [rSB], a                                     ; $5593: $e0 $01
	dec d                                            ; $5595: $15
	ld [bc], a                                       ; $5596: $02
	or b                                             ; $5597: $b0
	ld l, b                                          ; $5598: $68
	dec bc                                           ; $5599: $0b
	or b                                             ; $559a: $b0
	ld a, a                                          ; $559b: $7f
	inc bc                                           ; $559c: $03
	ldh [rSB], a                                     ; $559d: $e0 $01
	inc h                                            ; $559f: $24
	rst $38                                          ; $55a0: $ff
	inc bc                                           ; $55a1: $03
	ldh [rSB], a                                     ; $55a2: $e0 $01
	jr c, jr_086_55a8                                ; $55a4: $38 $02

	or b                                             ; $55a6: $b0
	ld [hl], c                                       ; $55a7: $71

jr_086_55a8:
	inc bc                                           ; $55a8: $03
	ldh [rSB], a                                     ; $55a9: $e0 $01
	ld l, e                                          ; $55ab: $6b
	nop                                              ; $55ac: $00
	dec h                                            ; $55ad: $25
	ld h, c                                          ; $55ae: $61
	cp $0b                                           ; $55af: $fe $0b
	db $fc                                           ; $55b1: $fc
	ret nz                                           ; $55b2: $c0

	ld h, l                                          ; $55b3: $65
	jp nc, $c0f8                                     ; $55b4: $d2 $f8 $c0

	ld h, [hl]                                       ; $55b7: $66
	db $d3                                           ; $55b8: $d3
	add b                                            ; $55b9: $80
	nop                                              ; $55ba: $00
	ld [hl], h                                       ; $55bb: $74
	inc bc                                           ; $55bc: $03
	ldh [rSB], a                                     ; $55bd: $e0 $01
	add e                                            ; $55bf: $83
	cp $0c                                           ; $55c0: $fe $0c
	db $fc                                           ; $55c2: $fc
	ret nz                                           ; $55c3: $c0

	ld h, l                                          ; $55c4: $65
	pop de                                           ; $55c5: $d1
	ei                                               ; $55c6: $fb
	ret nz                                           ; $55c7: $c0

	ld h, [hl]                                       ; $55c8: $66
	ldh [$15], a                                     ; $55c9: $e0 $15
	add b                                            ; $55cb: $80
	nop                                              ; $55cc: $00
	ld [hl], h                                       ; $55cd: $74
	inc bc                                           ; $55ce: $03
	ldh [rSB], a                                     ; $55cf: $e0 $01
	ld [hl], c                                       ; $55d1: $71
	nop                                              ; $55d2: $00
	ret nz                                           ; $55d3: $c0

	nop                                              ; $55d4: $00
	inc bc                                           ; $55d5: $03
	ld h, [hl]                                       ; $55d6: $66
	ret nz                                           ; $55d7: $c0

	ret c                                            ; $55d8: $d8

	call nc, $18d1                                   ; $55d9: $d4 $d1 $18
	ret nz                                           ; $55dc: $c0

	ld bc, $03a0                                     ; $55dd: $01 $a0 $03
	inc bc                                           ; $55e0: $03
	ld [hl], h                                       ; $55e1: $74
	ret nz                                           ; $55e2: $c0

	ld bc, $01a0                                     ; $55e3: $01 $a0 $01
	ld bc, $c0cd                                     ; $55e6: $01 $cd $c0
	ld bc, $03a0                                     ; $55e9: $01 $a0 $03
	inc bc                                           ; $55ec: $03
	ld a, e                                          ; $55ed: $7b
	ret nz                                           ; $55ee: $c0

	ld bc, $01a0                                     ; $55ef: $01 $a0 $01
	inc bc                                           ; $55f2: $03
	add e                                            ; $55f3: $83
	ld b, b                                          ; $55f4: $40
	ret nz                                           ; $55f5: $c0

	ld bc, $03a0                                     ; $55f6: $01 $a0 $03
	inc bc                                           ; $55f9: $03
	adc e                                            ; $55fa: $8b
	ret nz                                           ; $55fb: $c0

	ld bc, $01a0                                     ; $55fc: $01 $a0 $01
	ld bc, $60e3                                     ; $55ff: $01 $e3 $60
	db $fc                                           ; $5602: $fc
	adc e                                            ; $5603: $8b
	nop                                              ; $5604: $00
	nop                                              ; $5605: $00
	or b                                             ; $5606: $b0
	rrca                                             ; $5607: $0f
	inc bc                                           ; $5608: $03
	ldh [rP1], a                                     ; $5609: $e0 $00
	dec hl                                           ; $560b: $2b
	jr z, @-$7d                                      ; $560c: $28 $81

	adc e                                            ; $560e: $8b
	nop                                              ; $560f: $00
	nop                                              ; $5610: $00
	ld [$0fb0], sp                                   ; $5611: $08 $b0 $0f
	or b                                             ; $5614: $b0
	ld c, $b0                                        ; $5615: $0e $b0
	db $10                                           ; $5617: $10
	or b                                             ; $5618: $b0
	ld de, $c00c                                     ; $5619: $11 $0c $c0
	ld bc, $03a0                                     ; $561c: $01 $a0 $03
	ld bc, $c0f0                                     ; $561f: $01 $f0 $c0
	ld bc, $01a0                                     ; $5622: $01 $a0 $01
	ld bc, $00eb                                     ; $5625: $01 $eb $00
	inc c                                            ; $5628: $0c
	ret nz                                           ; $5629: $c0

	ld bc, $03a0                                     ; $562a: $01 $a0 $03
	inc bc                                           ; $562d: $03
	sub c                                            ; $562e: $91
	ret nz                                           ; $562f: $c0

	ld bc, $01a0                                     ; $5630: $01 $a0 $01
	ld [bc], a                                       ; $5633: $02
	ld [$c00c], sp                                   ; $5634: $08 $0c $c0
	ld bc, $03a0                                     ; $5637: $01 $a0 $03
	ld bc, wGenericTileDataFinalDest+1                                     ; $563a: $01 $e7 $c0
	ld bc, $01a0                                     ; $563d: $01 $a0 $01
	ld bc, $1eeb                                     ; $5640: $01 $eb $1e
	ret nz                                           ; $5643: $c0

	ld bc, $03a0                                     ; $5644: $01 $a0 $03
	inc bc                                           ; $5647: $03
	sbc l                                            ; $5648: $9d
	ret nz                                           ; $5649: $c0

	ld bc, $01a0                                     ; $564a: $01 $a0 $01
	ld [bc], a                                       ; $564d: $02
	dec d                                            ; $564e: $15
	ret nz                                           ; $564f: $c0

	ld bc, $03a0                                     ; $5650: $01 $a0 $03
	inc bc                                           ; $5653: $03
	and h                                            ; $5654: $a4
	ret nz                                           ; $5655: $c0

	ld bc, $01a0                                     ; $5656: $01 $a0 $01
	inc bc                                           ; $5659: $03
	or c                                             ; $565a: $b1
	ret nz                                           ; $565b: $c0

	ld bc, $03a0                                     ; $565c: $01 $a0 $03
	inc bc                                           ; $565f: $03
	cp b                                             ; $5660: $b8
	ld l, $c0                                        ; $5661: $2e $c0
	ld bc, $03a0                                     ; $5663: $01 $a0 $03
	inc bc                                           ; $5666: $03
	cp [hl]                                          ; $5667: $be
	ret nz                                           ; $5668: $c0

	ld bc, $01a0                                     ; $5669: $01 $a0 $01
	ld [bc], a                                       ; $566c: $02
	dec hl                                           ; $566d: $2b
	add c                                            ; $566e: $81
	ret nz                                           ; $566f: $c0

	dec de                                           ; $5670: $1b
	pop de                                           ; $5671: $d1
	ld [bc], a                                       ; $5672: $02
	ret nc                                           ; $5673: $d0

	pop de                                           ; $5674: $d1
	inc c                                            ; $5675: $0c
	ret nz                                           ; $5676: $c0

	ld bc, $03a0                                     ; $5677: $01 $a0 $03
	inc bc                                           ; $567a: $03
	call nz, $01c0                                   ; $567b: $c4 $c0 $01
	and b                                            ; $567e: $a0
	ld bc, $da01                                     ; $567f: $01 $01 $da
	nop                                              ; $5682: $00
	inc c                                            ; $5683: $0c

jr_086_5684:
	ret nz                                           ; $5684: $c0

	ld bc, $03a0                                     ; $5685: $01 $a0 $03
	inc bc                                           ; $5688: $03
	set 0, b                                         ; $5689: $cb $c0
	ld bc, $01a0                                     ; $568b: $01 $a0 $01
	inc bc                                           ; $568e: $03
	rst GetHLinHL                                          ; $568f: $cf
	jr @-$3e                                         ; $5690: $18 $c0

	ld bc, $03a0                                     ; $5692: $01 $a0 $03
	inc bc                                           ; $5695: $03
	call nc, $01c0                                   ; $5696: $d4 $c0 $01
	and b                                            ; $5699: $a0
	ld bc, $e303                                     ; $569a: $01 $03 $e3
	ret nz                                           ; $569d: $c0

	ld bc, $03a0                                     ; $569e: $01 $a0 $03
	inc bc                                           ; $56a1: $03
	db $ed                                           ; $56a2: $ed
	ret nz                                           ; $56a3: $c0

	ld bc, $01a0                                     ; $56a4: $01 $a0 $01
	inc bc                                           ; $56a7: $03
	ei                                               ; $56a8: $fb
	jr @-$3e                                         ; $56a9: $18 $c0

	ld bc, $03a0                                     ; $56ab: $01 $a0 $03
	inc b                                            ; $56ae: $04
	inc bc                                           ; $56af: $03
	ret nz                                           ; $56b0: $c0

	ld bc, $01a0                                     ; $56b1: $01 $a0 $01
	inc bc                                           ; $56b4: $03
	db $e3                                           ; $56b5: $e3
	ret nz                                           ; $56b6: $c0

	ld bc, $03a0                                     ; $56b7: $01 $a0 $03
	inc b                                            ; $56ba: $04
	ld de, $01c0                                     ; $56bb: $11 $c0 $01
	and b                                            ; $56be: $a0
	ld bc, $2104                                     ; $56bf: $01 $04 $21
	jr jr_086_5684                                   ; $56c2: $18 $c0

	ld bc, $03a0                                     ; $56c4: $01 $a0 $03
	inc b                                            ; $56c7: $04
	jr z, @-$3e                                      ; $56c8: $28 $c0

	ld bc, $01a0                                     ; $56ca: $01 $a0 $01
	inc bc                                           ; $56cd: $03
	db $e3                                           ; $56ce: $e3
	ret nz                                           ; $56cf: $c0

	ld bc, $03a0                                     ; $56d0: $01 $a0 $03
	inc b                                            ; $56d3: $04
	ld de, $01c0                                     ; $56d4: $11 $c0 $01

jr_086_56d7:
	and b                                            ; $56d7: $a0
	ld bc, $9d02                                     ; $56d8: $01 $02 $9d
	add hl, sp                                       ; $56db: $39
	add c                                            ; $56dc: $81
	ret nz                                           ; $56dd: $c0

	add b                                            ; $56de: $80
	ld bc, $18d1                                     ; $56df: $01 $d1 $18
	ret nz                                           ; $56e2: $c0

	ld bc, $03a0                                     ; $56e3: $01 $a0 $03
	inc b                                            ; $56e6: $04
	ld [hl], $c0                                     ; $56e7: $36 $c0
	ld bc, $01a0                                     ; $56e9: $01 $a0 $01
	inc b                                            ; $56ec: $04
	ccf                                              ; $56ed: $3f
	ret nz                                           ; $56ee: $c0

	ld bc, $03a0                                     ; $56ef: $01 $a0 $03
	inc b                                            ; $56f2: $04
	ld c, b                                          ; $56f3: $48
	ret nz                                           ; $56f4: $c0

	ld bc, $01a0                                     ; $56f5: $01 $a0 $01
	ld [bc], a                                       ; $56f8: $02
	dec d                                            ; $56f9: $15
	ld bc, $18d2                                     ; $56fa: $01 $d2 $18
	ret nz                                           ; $56fd: $c0

	ld bc, $03a0                                     ; $56fe: $01 $a0 $03
	inc b                                            ; $5701: $04
	ld d, [hl]                                       ; $5702: $56

jr_086_5703:
	ret nz                                           ; $5703: $c0

	ld bc, $01a0                                     ; $5704: $01 $a0 $01
	inc b                                            ; $5707: $04
	ld e, a                                          ; $5708: $5f
	ret nz                                           ; $5709: $c0

	ld bc, $03a0                                     ; $570a: $01 $a0 $03
	inc b                                            ; $570d: $04
	ld l, b                                          ; $570e: $68
	ret nz                                           ; $570f: $c0

	ld bc, $01a0                                     ; $5710: $01 $a0 $01
	ld [bc], a                                       ; $5713: $02
	dec d                                            ; $5714: $15
	jr jr_086_56d7                                   ; $5715: $18 $c0

	ld bc, $03a0                                     ; $5717: $01 $a0 $03
	inc b                                            ; $571a: $04
	ld [hl], l                                       ; $571b: $75
	ret nz                                           ; $571c: $c0

	ld bc, $01a0                                     ; $571d: $01 $a0 $01
	inc b                                            ; $5720: $04
	ld a, e                                          ; $5721: $7b
	ret nz                                           ; $5722: $c0

	ld bc, $03a0                                     ; $5723: $01 $a0 $03
	inc b                                            ; $5726: $04
	add e                                            ; $5727: $83
	ret nz                                           ; $5728: $c0

	ld bc, $01a0                                     ; $5729: $01 $a0 $01
	ld [bc], a                                       ; $572c: $02
	dec d                                            ; $572d: $15
	ld [de], a                                       ; $572e: $12
	ret nz                                           ; $572f: $c0

	ld bc, $03a0                                     ; $5730: $01 $a0 $03
	inc b                                            ; $5733: $04
	adc [hl]                                         ; $5734: $8e
	ret nz                                           ; $5735: $c0

	ld bc, $01a0                                     ; $5736: $01 $a0 $01
	inc b                                            ; $5739: $04
	sub a                                            ; $573a: $97
	ret nz                                           ; $573b: $c0

	ld bc, $03a0                                     ; $573c: $01 $a0 $03
	inc b                                            ; $573f: $04
	and d                                            ; $5740: $a2
	jr jr_086_5703                                   ; $5741: $18 $c0

	ld bc, $01a0                                     ; $5743: $01 $a0 $01
	inc b                                            ; $5746: $04
	and e                                            ; $5747: $a3
	ret nz                                           ; $5748: $c0

	ld bc, $03a0                                     ; $5749: $01 $a0 $03
	inc b                                            ; $574c: $04
	xor e                                            ; $574d: $ab
	ret nz                                           ; $574e: $c0

	ld bc, $01a0                                     ; $574f: $01 $a0 $01
	inc b                                            ; $5752: $04
	or h                                             ; $5753: $b4
	ret nz                                           ; $5754: $c0

	ld bc, $03a0                                     ; $5755: $01 $a0 $03
	inc b                                            ; $5758: $04
	cp [hl]                                          ; $5759: $be

jr_086_575a:
	ld a, [bc]                                       ; $575a: $0a
	pop bc                                           ; $575b: $c1
	ld e, e                                          ; $575c: $5b
	ret nz                                           ; $575d: $c0

	inc hl                                           ; $575e: $23
	push af                                          ; $575f: $f5
	sub $83                                          ; $5760: $d6 $83
	and b                                            ; $5762: $a0
	inc e                                            ; $5763: $1c
	pop de                                           ; $5764: $d1
	dec a                                            ; $5765: $3d
	inc de                                           ; $5766: $13
	ret nc                                           ; $5767: $d0

	add e                                            ; $5768: $83
	and b                                            ; $5769: $a0
	inc e                                            ; $576a: $1c
	ret nz                                           ; $576b: $c0

	sbc [hl]                                         ; $576c: $9e
	jp nc, $12e0                                     ; $576d: $d2 $e0 $12

	sbc h                                            ; $5770: $9c
	ret nz                                           ; $5771: $c0

	add hl, bc                                       ; $5772: $09
	db $e3                                           ; $5773: $e3
	nop                                              ; $5774: $00
	dec b                                            ; $5775: $05
	ret nz                                           ; $5776: $c0

	ld hl, $d2d2                                     ; $5777: $21 $d2 $d2
	ret nz                                           ; $577a: $c0

	call z, $1bc0                                    ; $577b: $cc $c0 $1b
	jp nc, $d002                                     ; $577e: $d2 $02 $d0

	pop de                                           ; $5781: $d1
	jr z, jr_086_579f                                ; $5782: $28 $1b

	pop hl                                           ; $5784: $e1
	ld [bc], a                                       ; $5785: $02
	ld bc, $c050                                     ; $5786: $01 $50 $c0
	ld bc, $04a0                                     ; $5789: $01 $a0 $04
	ld bc, $c04a                                     ; $578c: $01 $4a $c0
	ld bc, $01a0                                     ; $578f: $01 $a0 $01
	inc b                                            ; $5792: $04
	jp $b2c1                                         ; $5793: $c3 $c1 $b2


	db $e3                                           ; $5796: $e3
	nop                                              ; $5797: $00
	jr c, jr_086_575a                                ; $5798: $38 $c0

	ld bc, $04a0                                     ; $579a: $01 $a0 $04
	inc b                                            ; $579d: $04
	rst JumpTable                                          ; $579e: $c7

jr_086_579f:
	jr z, jr_086_57a2                                ; $579f: $28 $01

	ld e, a                                          ; $57a1: $5f

jr_086_57a2:
	add hl, bc                                       ; $57a2: $09
	add hl, bc                                       ; $57a3: $09
	ret nz                                           ; $57a4: $c0

	ld bc, $04a0                                     ; $57a5: $01 $a0 $04
	inc b                                            ; $57a8: $04
	jp z, $00e0                                      ; $57a9: $ca $e0 $00

	and [hl]                                         ; $57ac: $a6
	ld bc, $0967                                     ; $57ad: $01 $67 $09
	rla                                              ; $57b0: $17
	pop hl                                           ; $57b1: $e1
	ld [bc], a                                       ; $57b2: $02
	inc bc                                           ; $57b3: $03
	dec de                                           ; $57b4: $1b
	ret nz                                           ; $57b5: $c0

	ld bc, $04a0                                     ; $57b6: $01 $a0 $04
	inc b                                            ; $57b9: $04
	adc $c1                                          ; $57ba: $ce $c1
	ld e, e                                          ; $57bc: $5b
	ret nz                                           ; $57bd: $c0

	inc hl                                           ; $57be: $23
	push af                                          ; $57bf: $f5
	jp c, $a083                                      ; $57c0: $da $83 $a0

	inc e                                            ; $57c3: $1c
	jp nc, $12e0                                     ; $57c4: $d2 $e0 $12

	ld a, h                                          ; $57c7: $7c
	ld [bc], a                                       ; $57c8: $02
	jp nc, $28d3                                     ; $57c9: $d2 $d3 $28

	ld d, $c0                                        ; $57cc: $16 $c0
	ld bc, $01a0                                     ; $57ce: $01 $a0 $01
	nop                                              ; $57d1: $00
	dec e                                            ; $57d2: $1d
	ret nz                                           ; $57d3: $c0

	ld bc, $01a0                                     ; $57d4: $01 $a0 $01
	nop                                              ; $57d7: $00
	ld [hl+], a                                      ; $57d8: $22
	pop hl                                           ; $57d9: $e1
	ld [bc], a                                       ; $57da: $02
	ld bc, $c050                                     ; $57db: $01 $50 $c0
	ld bc, $04a0                                     ; $57de: $01 $a0 $04
	inc b                                            ; $57e1: $04
	sub $20                                          ; $57e2: $d6 $20

jr_086_57e4:
	ld bc, $0979                                     ; $57e4: $01 $79 $09
	rrca                                             ; $57e7: $0f
	ret nz                                           ; $57e8: $c0

	ld bc, $04a0                                     ; $57e9: $01 $a0 $04
	inc b                                            ; $57ec: $04
	jp c, $01c0                                      ; $57ed: $da $c0 $01

	and b                                            ; $57f0: $a0
	ld bc, $8701                                     ; $57f1: $01 $01 $87
	ldh [rP1], a                                     ; $57f4: $e0 $00
	ld e, h                                          ; $57f6: $5c
	ld bc, $0989                                     ; $57f7: $01 $89 $09
	add hl, bc                                       ; $57fa: $09
	ret nz                                           ; $57fb: $c0

	ld bc, $04a0                                     ; $57fc: $01 $a0 $04
	inc bc                                           ; $57ff: $03
	ld d, l                                          ; $5800: $55
	ldh [rSC], a                                     ; $5801: $e0 $02
	ld b, e                                          ; $5803: $43
	ld bc, $28d4                                     ; $5804: $01 $d4 $28
	ld d, $c0                                        ; $5807: $16 $c0
	ld bc, $01a0                                     ; $5809: $01 $a0 $01
	nop                                              ; $580c: $00
	dec e                                            ; $580d: $1d
	ret nz                                           ; $580e: $c0

	ld bc, $01a0                                     ; $580f: $01 $a0 $01
	nop                                              ; $5812: $00
	ld [hl+], a                                      ; $5813: $22
	pop hl                                           ; $5814: $e1
	ld [bc], a                                       ; $5815: $02
	ld bc, $c050                                     ; $5816: $01 $50 $c0
	ld bc, $04a0                                     ; $5819: $01 $a0 $04
	inc b                                            ; $581c: $04
	sub $29                                          ; $581d: $d6 $29
	ld bc, $0979                                     ; $581f: $01 $79 $09
	jr jr_086_57e4                                   ; $5822: $18 $c0

	ld bc, $04a0                                     ; $5824: $01 $a0 $04
	inc b                                            ; $5827: $04
	ldh [$c0], a                                     ; $5828: $e0 $c0
	ld bc, $01a0                                     ; $582a: $01 $a0 $01
	inc b                                            ; $582d: $04
	ld [$5bc1], a                                    ; $582e: $ea $c1 $5b
	ret nz                                           ; $5831: $c0

	ret c                                            ; $5832: $d8

	ret nc                                           ; $5833: $d0

	jp nc, $01c0                                     ; $5834: $d2 $c0 $01

	and b                                            ; $5837: $a0
	ld bc, $aa01                                     ; $5838: $01 $01 $aa
	ld bc, $0989                                     ; $583b: $01 $89 $09
	add hl, bc                                       ; $583e: $09
	ret nz                                           ; $583f: $c0

	ld bc, $04a0                                     ; $5840: $01 $a0 $04
	ld bc, $e090                                     ; $5843: $01 $90 $e0
	ld bc, $08ff                                     ; $5846: $01 $ff $08
	ret nz                                           ; $5849: $c0

	set 0, c                                         ; $584a: $cb $c1
	ld e, e                                          ; $584c: $5b
	push hl                                          ; $584d: $e5
	ld bc, $b119                                     ; $584e: $01 $19 $b1
	sub d                                            ; $5851: $92
	ld h, b                                          ; $5852: $60
	db $fc                                           ; $5853: $fc
	adc e                                            ; $5854: $8b
	nop                                              ; $5855: $00
	inc c                                            ; $5856: $0c
	or b                                             ; $5857: $b0
	ld bc, $c006                                     ; $5858: $01 $06 $c0
	ld bc, $01a0                                     ; $585b: $01 $a0 $01
	inc b                                            ; $585e: $04
	pop af                                           ; $585f: $f1
	ld a, a                                          ; $5860: $7f
	ret nz                                           ; $5861: $c0

	nop                                              ; $5862: $00
	ld bc, $c1b4                                     ; $5863: $01 $b4 $c1
	ld e, c                                          ; $5866: $59
	db $e3                                           ; $5867: $e3
	nop                                              ; $5868: $00
	ld a, [hl]                                       ; $5869: $7e
	db $fd                                           ; $586a: $fd
	ld [hl], b                                       ; $586b: $70
	adc e                                            ; $586c: $8b
	nop                                              ; $586d: $00
	inc c                                            ; $586e: $0c
	ld [bc], a                                       ; $586f: $02
	or b                                             ; $5870: $b0
	ld l, d                                          ; $5871: $6a
	jr z, jr_086_58d4                                ; $5872: $28 $60

	rst $38                                          ; $5874: $ff
	dec d                                            ; $5875: $15
	cp $09                                           ; $5876: $fe $09
	db $fc                                           ; $5878: $fc
	ret nz                                           ; $5879: $c0

	ld h, l                                          ; $587a: $65
	sub $fb                                          ; $587b: $d6 $fb
	ret nz                                           ; $587d: $c0

	ld h, [hl]                                       ; $587e: $66
	ldh [$15], a                                     ; $587f: $e0 $15
	cp $08                                           ; $5881: $fe $08
	db $fc                                           ; $5883: $fc
	ret nz                                           ; $5884: $c0

	ld h, l                                          ; $5885: $65
	rst SubAFromHL                                          ; $5886: $d7
	ld hl, sp-$40                                    ; $5887: $f8 $c0
	ld h, [hl]                                       ; $5889: $66
	rst SubAFromHL                                          ; $588a: $d7
	dec bc                                           ; $588b: $0b
	or b                                             ; $588c: $b0
	ld a, a                                          ; $588d: $7f
	inc bc                                           ; $588e: $03
	ldh [rSB], a                                     ; $588f: $e0 $01
	and d                                            ; $5891: $a2
	rst $38                                          ; $5892: $ff
	inc bc                                           ; $5893: $03
	ldh [rP1], a                                     ; $5894: $e0 $00
	ld c, a                                          ; $5896: $4f
	inc bc                                           ; $5897: $03
	ldh [rP1], a                                     ; $5898: $e0 $00
	ld c, e                                          ; $589a: $4b
	ld [bc], a                                       ; $589b: $02
	or b                                             ; $589c: $b0

jr_086_589d:
	ld l, l                                          ; $589d: $6d
	inc bc                                           ; $589e: $03
	ldh [rP1], a                                     ; $589f: $e0 $00
	ld e, l                                          ; $58a1: $5d
	ld [bc], a                                       ; $58a2: $02
	or b                                             ; $58a3: $b0
	ld l, c                                          ; $58a4: $69
	inc bc                                           ; $58a5: $03
	ldh [rP1], a                                     ; $58a6: $e0 $00
	sbc [hl]                                         ; $58a8: $9e
	ld [bc], a                                       ; $58a9: $02
	or b                                             ; $58aa: $b0
	ld [hl], b                                       ; $58ab: $70
	inc bc                                           ; $58ac: $03
	ldh [rP1], a                                     ; $58ad: $e0 $00
	or b                                             ; $58af: $b0
	ld [bc], a                                       ; $58b0: $02
	or b                                             ; $58b1: $b0
	ld l, e                                          ; $58b2: $6b
	inc bc                                           ; $58b3: $03
	ldh [rP1], a                                     ; $58b4: $e0 $00
	jp nz, $b002                                     ; $58b6: $c2 $02 $b0

	ld l, [hl]                                       ; $58b9: $6e
	dec bc                                           ; $58ba: $0b
	or b                                             ; $58bb: $b0
	ld a, a                                          ; $58bc: $7f
	inc bc                                           ; $58bd: $03
	ldh [rSB], a                                     ; $58be: $e0 $01
	ld e, d                                          ; $58c0: $5a
	rst $38                                          ; $58c1: $ff
	inc bc                                           ; $58c2: $03
	ldh [rP1], a                                     ; $58c3: $e0 $00
	jp $b002                                         ; $58c5: $c3 $02 $b0


	ld l, b                                          ; $58c8: $68
	dec bc                                           ; $58c9: $0b
	or b                                             ; $58ca: $b0
	ld a, a                                          ; $58cb: $7f
	inc bc                                           ; $58cc: $03
	ldh [rP1], a                                     ; $58cd: $e0 $00
	ret                                              ; $58cf: $c9


	rst $38                                          ; $58d0: $ff
	inc bc                                           ; $58d1: $03
	ldh [rP1], a                                     ; $58d2: $e0 $00

jr_086_58d4:
	pop hl                                           ; $58d4: $e1

Call_086_58d5:
	ld [bc], a                                       ; $58d5: $02
	or b                                             ; $58d6: $b0
	ld [hl], c                                       ; $58d7: $71
	inc bc                                           ; $58d8: $03
	ldh [rSB], a                                     ; $58d9: $e0 $01
	jr nz, jr_086_589d                               ; $58db: $20 $c0

	nop                                              ; $58dd: $00
	inc bc                                           ; $58de: $03
	ld h, [hl]                                       ; $58df: $66
	ret nz                                           ; $58e0: $c0

	ret c                                            ; $58e1: $d8

	call nc, $18d2                                   ; $58e2: $d4 $d2 $18
	ret nz                                           ; $58e5: $c0

	ld bc, $04a0                                     ; $58e6: $01 $a0 $04
	inc b                                            ; $58e9: $04
	or $c0                                           ; $58ea: $f6 $c0
	ld bc, $01a0                                     ; $58ec: $01 $a0 $01
	inc b                                            ; $58ef: $04
	cp $c0                                           ; $58f0: $fe $c0
	ld bc, $04a0                                     ; $58f2: $01 $a0 $04
	dec b                                            ; $58f5: $05
	dec bc                                           ; $58f6: $0b
	ret nz                                           ; $58f7: $c0

	ld bc, $01a0                                     ; $58f8: $01 $a0 $01
	dec b                                            ; $58fb: $05
	inc de                                           ; $58fc: $13
	ld b, a                                          ; $58fd: $47
	ret nz                                           ; $58fe: $c0

	ld bc, $04a0                                     ; $58ff: $01 $a0 $04
	ld bc, $c0dd                                     ; $5902: $01 $dd $c0
	ld bc, $01a0                                     ; $5905: $01 $a0 $01
	ld bc, $fbe3                                     ; $5908: $01 $e3 $fb
	add b                                            ; $590b: $80
	nop                                              ; $590c: $00
	adc a                                            ; $590d: $8f
	ld [hl], $82                                     ; $590e: $36 $82
	adc e                                            ; $5910: $8b
	nop                                              ; $5911: $00
	nop                                              ; $5912: $00
	ld [bc], a                                       ; $5913: $02
	or b                                             ; $5914: $b0
	ld c, $0c                                        ; $5915: $0e $0c
	ret nz                                           ; $5917: $c0

	ld bc, $04a0                                     ; $5918: $01 $a0 $04
	dec b                                            ; $591b: $05
	rla                                              ; $591c: $17
	ret nz                                           ; $591d: $c0

	ld bc, $01a0                                     ; $591e: $01 $a0 $01
	dec b                                            ; $5921: $05
	inc hl                                           ; $5922: $23
	ld b, $b0                                        ; $5923: $06 $b0
	rrca                                             ; $5925: $0f
	or b                                             ; $5926: $b0
	db $10                                           ; $5927: $10
	or b                                             ; $5928: $b0
	ld de, $c00c                                     ; $5929: $11 $0c $c0
	ld bc, $04a0                                     ; $592c: $01 $a0 $04
	dec b                                            ; $592f: $05
	add hl, hl                                       ; $5930: $29
	ret nz                                           ; $5931: $c0

	ld bc, $01a0                                     ; $5932: $01 $a0 $01
	ld bc, $00eb                                     ; $5935: $01 $eb $00
	inc c                                            ; $5938: $0c
	ret nz                                           ; $5939: $c0

	ld bc, $04a0                                     ; $593a: $01 $a0 $04
	dec b                                            ; $593d: $05
	dec [hl]                                         ; $593e: $35
	ret nz                                           ; $593f: $c0

	ld bc, $01a0                                     ; $5940: $01 $a0 $01
	ld [bc], a                                       ; $5943: $02
	ld [$c018], sp                                   ; $5944: $08 $18 $c0
	ld bc, $04a0                                     ; $5947: $01 $a0 $04
	dec b                                            ; $594a: $05
	ld b, [hl]                                       ; $594b: $46
	ret nz                                           ; $594c: $c0

	ld bc, $01a0                                     ; $594d: $01 $a0 $01
	ld bc, $c0da                                     ; $5950: $01 $da $c0
	ld bc, $04a0                                     ; $5953: $01 $a0 $04
	dec b                                            ; $5956: $05
	ld c, [hl]                                       ; $5957: $4e
	ret nz                                           ; $5958: $c0

	ld bc, $01a0                                     ; $5959: $01 $a0 $01
	dec b                                            ; $595c: $05
	ld e, c                                          ; $595d: $59
	jr @-$3e                                         ; $595e: $18 $c0

	ld bc, $04a0                                     ; $5960: $01 $a0 $04
	dec b                                            ; $5963: $05
	ld h, a                                          ; $5964: $67
	ret nz                                           ; $5965: $c0

	ld bc, $01a0                                     ; $5966: $01 $a0 $01
	ld [bc], a                                       ; $5969: $02
	dec hl                                           ; $596a: $2b
	ret nz                                           ; $596b: $c0

	ld bc, $04a0                                     ; $596c: $01 $a0 $04
	dec b                                            ; $596f: $05
	ld l, l                                          ; $5970: $6d
	ret nz                                           ; $5971: $c0

	ld bc, $01a0                                     ; $5972: $01 $a0 $01
	ld bc, $0fda                                     ; $5975: $01 $da $0f
	ret nz                                           ; $5978: $c0

	ld bc, $04a0                                     ; $5979: $01 $a0 $04
	dec b                                            ; $597c: $05
	ld a, b                                          ; $597d: $78
	ret nz                                           ; $597e: $c0

	ld bc, $01a0                                     ; $597f: $01 $a0 $01
	dec b                                            ; $5982: $05
	ld a, a                                          ; $5983: $7f
	ldh [rP1], a                                     ; $5984: $e0 $00
	ld [hl+], a                                      ; $5986: $22
	rrca                                             ; $5987: $0f
	ret nz                                           ; $5988: $c0

	ld bc, $04a0                                     ; $5989: $01 $a0 $04
	dec b                                            ; $598c: $05
	adc d                                            ; $598d: $8a
	ret nz                                           ; $598e: $c0

	ld bc, $01a0                                     ; $598f: $01 $a0 $01
	dec b                                            ; $5992: $05
	sub c                                            ; $5993: $91
	ldh [rP1], a                                     ; $5994: $e0 $00
	ld [de], a                                       ; $5996: $12
	rrca                                             ; $5997: $0f
	ret nz                                           ; $5998: $c0

	ld bc, $04a0                                     ; $5999: $01 $a0 $04
	dec b                                            ; $599c: $05
	sbc h                                            ; $599d: $9c
	ret nz                                           ; $599e: $c0

	ld bc, $01a0                                     ; $599f: $01 $a0 $01
	dec b                                            ; $59a2: $05
	and e                                            ; $59a3: $a3
	ldh [rP1], a                                     ; $59a4: $e0 $00
	ld [bc], a                                       ; $59a6: $02
	inc c                                            ; $59a7: $0c
	ret nz                                           ; $59a8: $c0

	ld bc, $04a0                                     ; $59a9: $01 $a0 $04
	dec b                                            ; $59ac: $05
	xor [hl]                                         ; $59ad: $ae
	ret nz                                           ; $59ae: $c0

	ld bc, $01a0                                     ; $59af: $01 $a0 $01
	dec b                                            ; $59b2: $05
	or d                                             ; $59b3: $b2
	ld b, l                                          ; $59b4: $45
	add c                                            ; $59b5: $81
	ret nz                                           ; $59b6: $c0

	add b                                            ; $59b7: $80
	ld bc, $18d1                                     ; $59b8: $01 $d1 $18
	ret nz                                           ; $59bb: $c0

	ld bc, $04a0                                     ; $59bc: $01 $a0 $04
	ld [bc], a                                       ; $59bf: $02
	and h                                            ; $59c0: $a4
	ret nz                                           ; $59c1: $c0

	ld bc, $01a0                                     ; $59c2: $01 $a0 $01
	inc b                                            ; $59c5: $04
	ccf                                              ; $59c6: $3f
	ret nz                                           ; $59c7: $c0

	ld bc, $04a0                                     ; $59c8: $01 $a0 $04
	dec b                                            ; $59cb: $05
	cp e                                             ; $59cc: $bb
	ret nz                                           ; $59cd: $c0

	ld bc, $01a0                                     ; $59ce: $01 $a0 $01
	dec b                                            ; $59d1: $05
	inc de                                           ; $59d2: $13
	ld bc, $24d2                                     ; $59d3: $01 $d2 $24
	ret nz                                           ; $59d6: $c0

	ld bc, $04a0                                     ; $59d7: $01 $a0 $04
	ld [bc], a                                       ; $59da: $02
	ret nz                                           ; $59db: $c0

	ret nz                                           ; $59dc: $c0

	ld bc, $01a0                                     ; $59dd: $01 $a0 $01
	inc b                                            ; $59e0: $04
	ld e, a                                          ; $59e1: $5f
	ret nz                                           ; $59e2: $c0

	ld bc, $04a0                                     ; $59e3: $01 $a0 $04
	dec b                                            ; $59e6: $05
	push bc                                          ; $59e7: $c5
	ret nz                                           ; $59e8: $c0

	ld bc, $01a0                                     ; $59e9: $01 $a0 $01
	dec b                                            ; $59ec: $05
	ret nc                                           ; $59ed: $d0

	ret nz                                           ; $59ee: $c0

	ld bc, $04a0                                     ; $59ef: $01 $a0 $04
	dec b                                            ; $59f2: $05
	push de                                          ; $59f3: $d5
	ret nz                                           ; $59f4: $c0

	ld bc, $01a0                                     ; $59f5: $01 $a0 $01
	dec b                                            ; $59f8: $05
	pop hl                                           ; $59f9: $e1
	ld e, $c0                                        ; $59fa: $1e $c0
	ld bc, $04a0                                     ; $59fc: $01 $a0 $04
	ld [bc], a                                       ; $59ff: $02
	ldh [c], a                                       ; $5a00: $e2
	ret nz                                           ; $5a01: $c0

	ld bc, $01a0                                     ; $5a02: $01 $a0 $01
	inc b                                            ; $5a05: $04
	ld a, e                                          ; $5a06: $7b
	ret nz                                           ; $5a07: $c0

	ld bc, $04a0                                     ; $5a08: $01 $a0 $04
	dec b                                            ; $5a0b: $05
	db $e3                                           ; $5a0c: $e3
	ret nz                                           ; $5a0d: $c0

	ld bc, $01a0                                     ; $5a0e: $01 $a0 $01
	dec b                                            ; $5a11: $05
	di                                               ; $5a12: $f3
	ret nz                                           ; $5a13: $c0

	ld bc, $04a0                                     ; $5a14: $01 $a0 $04
	dec b                                            ; $5a17: $05
	ld hl, sp+$18                                    ; $5a18: $f8 $18
	ret nz                                           ; $5a1a: $c0

	ld bc, $04a0                                     ; $5a1b: $01 $a0 $04
	dec b                                            ; $5a1e: $05
	ld a, [$01c0]                                    ; $5a1f: $fa $c0 $01
	and b                                            ; $5a22: $a0
	ld bc, $0106                                     ; $5a23: $01 $06 $01
	ret nz                                           ; $5a26: $c0

	ld bc, $04a0                                     ; $5a27: $01 $a0 $04
	ld b, $0c                                        ; $5a2a: $06 $0c
	ret nz                                           ; $5a2c: $c0

	ld bc, $01a0                                     ; $5a2d: $01 $a0 $01
	ld b, $19                                        ; $5a30: $06 $19
	ld [de], a                                       ; $5a32: $12
	ret nz                                           ; $5a33: $c0

	ld bc, $04a0                                     ; $5a34: $01 $a0 $04
	ld b, $20                                        ; $5a37: $06 $20
	ret nz                                           ; $5a39: $c0

	ld bc, $01a0                                     ; $5a3a: $01 $a0 $01
	inc bc                                           ; $5a3d: $03
	ld [hl+], a                                      ; $5a3e: $22
	ret nz                                           ; $5a3f: $c0

	ld bc, $04a0                                     ; $5a40: $01 $a0 $04
	ld b, $26                                        ; $5a43: $06 $26
	ld a, [bc]                                       ; $5a45: $0a
	pop bc                                           ; $5a46: $c1
	ld e, e                                          ; $5a47: $5b
	ret nz                                           ; $5a48: $c0

	inc hl                                           ; $5a49: $23
	push af                                          ; $5a4a: $f5
	sub $83                                          ; $5a4b: $d6 $83
	and b                                            ; $5a4d: $a0
	inc e                                            ; $5a4e: $1c
	jp nc, $133d                                     ; $5a4f: $d2 $3d $13

	ret nc                                           ; $5a52: $d0

	add e                                            ; $5a53: $83
	and b                                            ; $5a54: $a0
	inc e                                            ; $5a55: $1c
	ret nz                                           ; $5a56: $c0

	sbc [hl]                                         ; $5a57: $9e
	db $d3                                           ; $5a58: $d3
	ldh [rIF], a                                     ; $5a59: $e0 $0f
	or c                                             ; $5a5b: $b1
	ret nz                                           ; $5a5c: $c0

	add hl, bc                                       ; $5a5d: $09
	db $e3                                           ; $5a5e: $e3
	nop                                              ; $5a5f: $00
	inc b                                            ; $5a60: $04
	ret nz                                           ; $5a61: $c0

	ld hl, $d3d2                                     ; $5a62: $21 $d2 $d3
	ret nz                                           ; $5a65: $c0

	ret z                                            ; $5a66: $c8

	ret nz                                           ; $5a67: $c0

	dec de                                           ; $5a68: $1b
	db $d3                                           ; $5a69: $d3
	ld [bc], a                                       ; $5a6a: $02
	ret nc                                           ; $5a6b: $d0

	pop de                                           ; $5a6c: $d1
	jr z, jr_086_5a8a                                ; $5a6d: $28 $1b

	pop hl                                           ; $5a6f: $e1
	ld [bc], a                                       ; $5a70: $02
	ld bc, $c098                                     ; $5a71: $01 $98 $c0
	ld bc, $05a0                                     ; $5a74: $01 $a0 $05
	ld bc, $c04a                                     ; $5a77: $01 $4a $c0
	ld bc, $01a0                                     ; $5a7a: $01 $a0 $01
	ld b, $2b                                        ; $5a7d: $06 $2b
	pop bc                                           ; $5a7f: $c1
	or d                                             ; $5a80: $b2
	db $e3                                           ; $5a81: $e3
	nop                                              ; $5a82: $00
	ld b, a                                          ; $5a83: $47
	ret nz                                           ; $5a84: $c0

	ld bc, $05a0                                     ; $5a85: $01 $a0 $05
	ld b, $2f                                        ; $5a88: $06 $2f

jr_086_5a8a:
	dec l                                            ; $5a8a: $2d
	ld bc, $095f                                     ; $5a8b: $01 $5f $09
	ld c, $c1                                        ; $5a8e: $0e $c1
	or d                                             ; $5a90: $b2
	db $e3                                           ; $5a91: $e3
	nop                                              ; $5a92: $00
	ld c, b                                          ; $5a93: $48
	ret nz                                           ; $5a94: $c0

	ld bc, $05a0                                     ; $5a95: $01 $a0 $05
	ld b, $36                                        ; $5a98: $06 $36
	ldh [rP1], a                                     ; $5a9a: $e0 $00
	sbc l                                            ; $5a9c: $9d
	ld bc, $0967                                     ; $5a9d: $01 $67 $09
	rla                                              ; $5aa0: $17
	pop hl                                           ; $5aa1: $e1
	ld [bc], a                                       ; $5aa2: $02
	inc bc                                           ; $5aa3: $03
	dec de                                           ; $5aa4: $1b
	ret nz                                           ; $5aa5: $c0

	ld bc, $05a0                                     ; $5aa6: $01 $a0 $05
	ld b, $39                                        ; $5aa9: $06 $39
	pop bc                                           ; $5aab: $c1
	ld e, e                                          ; $5aac: $5b
	ret nz                                           ; $5aad: $c0

	inc hl                                           ; $5aae: $23
	push af                                          ; $5aaf: $f5
	jp c, $a083                                      ; $5ab0: $da $83 $a0

	inc e                                            ; $5ab3: $1c
	db $d3                                           ; $5ab4: $d3
	ldh [rIF], a                                     ; $5ab5: $e0 $0f
	adc h                                            ; $5ab7: $8c
	ld [bc], a                                       ; $5ab8: $02
	jp nc, $28d3                                     ; $5ab9: $d2 $d3 $28

	ld d, $c0                                        ; $5abc: $16 $c0
	ld bc, $01a0                                     ; $5abe: $01 $a0 $01
	nop                                              ; $5ac1: $00
	ld h, $c0                                        ; $5ac2: $26 $c0
	ld bc, $01a0                                     ; $5ac4: $01 $a0 $01
	nop                                              ; $5ac7: $00
	dec hl                                           ; $5ac8: $2b
	pop hl                                           ; $5ac9: $e1
	ld [bc], a                                       ; $5aca: $02
	ld bc, $c098                                     ; $5acb: $01 $98 $c0
	ld bc, $05a0                                     ; $5ace: $01 $a0 $05
	ld b, $44                                        ; $5ad1: $06 $44
	jr nz, jr_086_5ad6                               ; $5ad3: $20 $01

	ld a, c                                          ; $5ad5: $79

jr_086_5ad6:
	add hl, bc                                       ; $5ad6: $09
	rrca                                             ; $5ad7: $0f
	ret nz                                           ; $5ad8: $c0

	ld bc, $05a0                                     ; $5ad9: $01 $a0 $05
	ld b, $49                                        ; $5adc: $06 $49
	ret nz                                           ; $5ade: $c0

	ld bc, $01a0                                     ; $5adf: $01 $a0 $01
	ld bc, $e087                                     ; $5ae2: $01 $87 $e0
	nop                                              ; $5ae5: $00
	ld d, e                                          ; $5ae6: $53
	ld bc, $0989                                     ; $5ae7: $01 $89 $09
	add hl, bc                                       ; $5aea: $09
	ret nz                                           ; $5aeb: $c0

	ld bc, $05a0                                     ; $5aec: $01 $a0 $05
	ld b, $4c                                        ; $5aef: $06 $4c
	ldh [rSC], a                                     ; $5af1: $e0 $02
	ld d, e                                          ; $5af3: $53
	ld bc, $28d4                                     ; $5af4: $01 $d4 $28
	ld d, $c0                                        ; $5af7: $16 $c0
	ld bc, $01a0                                     ; $5af9: $01 $a0 $01
	nop                                              ; $5afc: $00
	ld h, $c0                                        ; $5afd: $26 $c0
	ld bc, $01a0                                     ; $5aff: $01 $a0 $01
	nop                                              ; $5b02: $00
	dec hl                                           ; $5b03: $2b
	pop hl                                           ; $5b04: $e1
	ld [bc], a                                       ; $5b05: $02
	ld bc, $c098                                     ; $5b06: $01 $98 $c0
	ld bc, $05a0                                     ; $5b09: $01 $a0 $05
	ld b, $44                                        ; $5b0c: $06 $44
	jr nz, jr_086_5b11                               ; $5b0e: $20 $01

	ld a, c                                          ; $5b10: $79

jr_086_5b11:
	add hl, bc                                       ; $5b11: $09
	rrca                                             ; $5b12: $0f
	ret nz                                           ; $5b13: $c0

	ld bc, $05a0                                     ; $5b14: $01 $a0 $05
	ld b, $4e                                        ; $5b17: $06 $4e
	ret nz                                           ; $5b19: $c0

	ld bc, $01a0                                     ; $5b1a: $01 $a0 $01
	ld bc, $e087                                     ; $5b1d: $01 $87 $e0
	nop                                              ; $5b20: $00
	jr jr_086_5b24                                   ; $5b21: $18 $01

	adc c                                            ; $5b23: $89

jr_086_5b24:
	add hl, bc                                       ; $5b24: $09
	add hl, bc                                       ; $5b25: $09
	ret nz                                           ; $5b26: $c0

	ld bc, $05a0                                     ; $5b27: $01 $a0 $05
	ld bc, $e090                                     ; $5b2a: $01 $90 $e0
	ld [bc], a                                       ; $5b2d: $02
	jr jr_086_5b38                                   ; $5b2e: $18 $08

	ret nz                                           ; $5b30: $c0

	set 0, c                                         ; $5b31: $cb $c1
	ld e, e                                          ; $5b33: $5b
	push hl                                          ; $5b34: $e5
	ld bc, $b119                                     ; $5b35: $01 $19 $b1

jr_086_5b38:
	adc c                                            ; $5b38: $89
	ld h, b                                          ; $5b39: $60
	db $fc                                           ; $5b3a: $fc
	adc e                                            ; $5b3b: $8b
	nop                                              ; $5b3c: $00
	inc c                                            ; $5b3d: $0c
	or b                                             ; $5b3e: $b0
	ld bc, $c006                                     ; $5b3f: $01 $06 $c0
	ld bc, $01a0                                     ; $5b42: $01 $a0 $01
	ld b, $51                                        ; $5b45: $06 $51
	halt                                             ; $5b47: $76
	ret nz                                           ; $5b48: $c0

	nop                                              ; $5b49: $00
	ld bc, $c1b4                                     ; $5b4a: $01 $b4 $c1
	ld e, c                                          ; $5b4d: $59
	db $e3                                           ; $5b4e: $e3
	nop                                              ; $5b4f: $00
	ld a, [hl]                                       ; $5b50: $7e
	db $fd                                           ; $5b51: $fd
	ld h, a                                          ; $5b52: $67
	adc e                                            ; $5b53: $8b
	nop                                              ; $5b54: $00
	inc c                                            ; $5b55: $0c
	ld [bc], a                                       ; $5b56: $02
	or b                                             ; $5b57: $b0
	ld l, d                                          ; $5b58: $6a
	inc bc                                           ; $5b59: $03
	ldh [rP1], a                                     ; $5b5a: $e0 $00
	ld h, a                                          ; $5b5c: $67
	ld [bc], a                                       ; $5b5d: $02
	or b                                             ; $5b5e: $b0
	ld l, l                                          ; $5b5f: $6d
	rra                                              ; $5b60: $1f
	ld h, b                                          ; $5b61: $60
	cp $0c                                           ; $5b62: $fe $0c
	db $fc                                           ; $5b64: $fc
	ret nz                                           ; $5b65: $c0

	ld h, l                                          ; $5b66: $65
	reti                                             ; $5b67: $d9


	ld hl, sp-$40                                    ; $5b68: $f8 $c0
	ld h, [hl]                                       ; $5b6a: $66
	ldh [rAUD3HIGH], a                               ; $5b6b: $e0 $1e
	add b                                            ; $5b6d: $80
	nop                                              ; $5b6e: $00
	ld a, b                                          ; $5b6f: $78
	dec bc                                           ; $5b70: $0b
	or b                                             ; $5b71: $b0
	ld a, a                                          ; $5b72: $7f
	inc bc                                           ; $5b73: $03
	ldh [rSB], a                                     ; $5b74: $e0 $01

jr_086_5b76:
	or e                                             ; $5b76: $b3
	rst $38                                          ; $5b77: $ff
	inc bc                                           ; $5b78: $03
	ldh [rP1], a                                     ; $5b79: $e0 $00
	ld h, c                                          ; $5b7b: $61
	inc bc                                           ; $5b7c: $03
	ldh [rP1], a                                     ; $5b7d: $e0 $00
	ld e, l                                          ; $5b7f: $5d
	ld [bc], a                                       ; $5b80: $02
	or b                                             ; $5b81: $b0
	ld l, c                                          ; $5b82: $69
	inc bc                                           ; $5b83: $03
	ldh [rP1], a                                     ; $5b84: $e0 $00
	and h                                            ; $5b86: $a4
	ld [bc], a                                       ; $5b87: $02
	or b                                             ; $5b88: $b0
	ld [hl], b                                       ; $5b89: $70
	inc bc                                           ; $5b8a: $03
	ldh [rP1], a                                     ; $5b8b: $e0 $00
	or [hl]                                          ; $5b8d: $b6
	ld [bc], a                                       ; $5b8e: $02
	or b                                             ; $5b8f: $b0
	ld l, e                                          ; $5b90: $6b
	inc bc                                           ; $5b91: $03
	ldh [rP1], a                                     ; $5b92: $e0 $00
	sbc $02                                          ; $5b94: $de $02
	or b                                             ; $5b96: $b0
	ld l, [hl]                                       ; $5b97: $6e
	dec bc                                           ; $5b98: $0b
	or b                                             ; $5b99: $b0
	ld a, a                                          ; $5b9a: $7f
	inc bc                                           ; $5b9b: $03
	ldh [rSB], a                                     ; $5b9c: $e0 $01
	ld [hl], d                                       ; $5b9e: $72
	rst $38                                          ; $5b9f: $ff
	inc bc                                           ; $5ba0: $03
	ldh [rP1], a                                     ; $5ba1: $e0 $00
	add sp, $02                                      ; $5ba3: $e8 $02
	or b                                             ; $5ba5: $b0
	ld l, b                                          ; $5ba6: $68
	dec bc                                           ; $5ba7: $0b
	or b                                             ; $5ba8: $b0
	ld a, a                                          ; $5ba9: $7f
	inc bc                                           ; $5baa: $03
	ldh [rP1], a                                     ; $5bab: $e0 $00
	rst FarCall                                          ; $5bad: $f7
	rst $38                                          ; $5bae: $ff
	inc bc                                           ; $5baf: $03
	ldh [rSB], a                                     ; $5bb0: $e0 $01
	dec bc                                           ; $5bb2: $0b
	ld [bc], a                                       ; $5bb3: $02
	or b                                             ; $5bb4: $b0
	ld [hl], c                                       ; $5bb5: $71
	inc bc                                           ; $5bb6: $03
	ldh [rSB], a                                     ; $5bb7: $e0 $01
	ld a, $c0                                        ; $5bb9: $3e $c0
	nop                                              ; $5bbb: $00
	ld bc, $c0ba                                     ; $5bbc: $01 $ba $c0
	ret c                                            ; $5bbf: $d8

	call nc, $18d3                                   ; $5bc0: $d4 $d3 $18
	ret nz                                           ; $5bc3: $c0

	ld bc, $05a0                                     ; $5bc4: $01 $a0 $05
	ld bc, $c0c7                                     ; $5bc7: $01 $c7 $c0
	ld bc, $01a0                                     ; $5bca: $01 $a0 $01
	ld bc, $c0cd                                     ; $5bcd: $01 $cd $c0
	ld bc, $05a0                                     ; $5bd0: $01 $a0 $05
	ld b, $56                                        ; $5bd3: $06 $56
	ret nz                                           ; $5bd5: $c0

	ld bc, $01a0                                     ; $5bd6: $01 $a0 $01
	ld b, $61                                        ; $5bd9: $06 $61
	ld b, b                                          ; $5bdb: $40
	ret nz                                           ; $5bdc: $c0

	ld bc, $05a0                                     ; $5bdd: $01 $a0 $05
	ld bc, $c0dd                                     ; $5be0: $01 $dd $c0
	ld bc, $01a0                                     ; $5be3: $01 $a0 $01
	ld bc, $60e3                                     ; $5be6: $01 $e3 $60
	db $fc                                           ; $5be9: $fc
	adc e                                            ; $5bea: $8b
	nop                                              ; $5beb: $00
	nop                                              ; $5bec: $00
	or b                                             ; $5bed: $b0
	db $10                                           ; $5bee: $10
	inc bc                                           ; $5bef: $03
	ldh [rP1], a                                     ; $5bf0: $e0 $00
	dec hl                                           ; $5bf2: $2b
	jr z, jr_086_5b76                                ; $5bf3: $28 $81

	adc e                                            ; $5bf5: $8b
	nop                                              ; $5bf6: $00
	nop                                              ; $5bf7: $00
	ld [$0fb0], sp                                   ; $5bf8: $08 $b0 $0f
	or b                                             ; $5bfb: $b0
	ld c, $b0                                        ; $5bfc: $0e $b0
	db $10                                           ; $5bfe: $10
	or b                                             ; $5bff: $b0
	ld de, $c00c                                     ; $5c00: $11 $0c $c0
	ld bc, $05a0                                     ; $5c03: $01 $a0 $05
	ld b, $6a                                        ; $5c06: $06 $6a
	ret nz                                           ; $5c08: $c0

	ld bc, $01a0                                     ; $5c09: $01 $a0 $01
	ld bc, $00eb                                     ; $5c0c: $01 $eb $00
	inc c                                            ; $5c0f: $0c
	ret nz                                           ; $5c10: $c0

	ld bc, $05a0                                     ; $5c11: $01 $a0 $05
	ld [bc], a                                       ; $5c14: $02
	nop                                              ; $5c15: $00
	ret nz                                           ; $5c16: $c0

	ld bc, $01a0                                     ; $5c17: $01 $a0 $01
	ld [bc], a                                       ; $5c1a: $02
	ld [$c00c], sp                                   ; $5c1b: $08 $0c $c0
	ld bc, $05a0                                     ; $5c1e: $01 $a0 $05
	ld b, $73                                        ; $5c21: $06 $73
	ret nz                                           ; $5c23: $c0

	ld bc, $01a0                                     ; $5c24: $01 $a0 $01
	ld bc, $18eb                                     ; $5c27: $01 $eb $18
	ret nz                                           ; $5c2a: $c0

	ld bc, $05a0                                     ; $5c2b: $01 $a0 $05
	ld [bc], a                                       ; $5c2e: $02
	ld c, $c0                                        ; $5c2f: $0e $c0
	ld bc, $01a0                                     ; $5c31: $01 $a0 $01
	ld [bc], a                                       ; $5c34: $02
	dec d                                            ; $5c35: $15
	ret nz                                           ; $5c36: $c0

	ld bc, $05a0                                     ; $5c37: $01 $a0 $05
	ld b, $75                                        ; $5c3a: $06 $75
	ret nz                                           ; $5c3c: $c0

	ld bc, $01a0                                     ; $5c3d: $01 $a0 $01
	ld b, $7c                                        ; $5c40: $06 $7c
	ld l, $c0                                        ; $5c42: $2e $c0
	ld bc, $05a0                                     ; $5c44: $01 $a0 $05
	ld [bc], a                                       ; $5c47: $02
	ld h, $c0                                        ; $5c48: $26 $c0
	ld bc, $01a0                                     ; $5c4a: $01 $a0 $01
	ld [bc], a                                       ; $5c4d: $02
	dec hl                                           ; $5c4e: $2b
	add c                                            ; $5c4f: $81
	ret nz                                           ; $5c50: $c0

	dec de                                           ; $5c51: $1b
	db $d3                                           ; $5c52: $d3
	ld [bc], a                                       ; $5c53: $02
	ret nc                                           ; $5c54: $d0

	pop de                                           ; $5c55: $d1
	inc c                                            ; $5c56: $0c
	ret nz                                           ; $5c57: $c0

	ld bc, $05a0                                     ; $5c58: $01 $a0 $05
	ld b, $8a                                        ; $5c5b: $06 $8a
	ret nz                                           ; $5c5d: $c0

	ld bc, $01a0                                     ; $5c5e: $01 $a0 $01
	ld bc, $00da                                     ; $5c61: $01 $da $00
	inc c                                            ; $5c64: $0c

jr_086_5c65:
	ret nz                                           ; $5c65: $c0

	ld bc, $05a0                                     ; $5c66: $01 $a0 $05
	ld [bc], a                                       ; $5c69: $02
	dec a                                            ; $5c6a: $3d
	ret nz                                           ; $5c6b: $c0

	ld bc, $01a0                                     ; $5c6c: $01 $a0 $01
	ld bc, $18da                                     ; $5c6f: $01 $da $18
	ret nz                                           ; $5c72: $c0

	ld bc, $05a0                                     ; $5c73: $01 $a0 $05
	ld [bc], a                                       ; $5c76: $02
	ld b, b                                          ; $5c77: $40
	ret nz                                           ; $5c78: $c0

	ld bc, $01a0                                     ; $5c79: $01 $a0 $01
	ld b, $90                                        ; $5c7c: $06 $90
	ret nz                                           ; $5c7e: $c0

	ld bc, $05a0                                     ; $5c7f: $01 $a0 $05
	ld b, $9a                                        ; $5c82: $06 $9a
	ret nz                                           ; $5c84: $c0

	ld bc, $01a0                                     ; $5c85: $01 $a0 $01
	ld b, $a2                                        ; $5c88: $06 $a2
	jr @-$3e                                         ; $5c8a: $18 $c0

	ld bc, $05a0                                     ; $5c8c: $01 $a0 $05
	ld [bc], a                                       ; $5c8f: $02
	ld h, l                                          ; $5c90: $65
	ret nz                                           ; $5c91: $c0

	ld bc, $01a0                                     ; $5c92: $01 $a0 $01
	ld b, $90                                        ; $5c95: $06 $90
	ret nz                                           ; $5c97: $c0

	ld bc, $05a0                                     ; $5c98: $01 $a0 $05
	ld [bc], a                                       ; $5c9b: $02
	sbc c                                            ; $5c9c: $99
	ret nz                                           ; $5c9d: $c0

	ld bc, $01a0                                     ; $5c9e: $01 $a0 $01
	ld b, $b1                                        ; $5ca1: $06 $b1
	jr jr_086_5c65                                   ; $5ca3: $18 $c0

	ld bc, $05a0                                     ; $5ca5: $01 $a0 $05
	ld [bc], a                                       ; $5ca8: $02
	adc h                                            ; $5ca9: $8c
	ret nz                                           ; $5caa: $c0

	ld bc, $01a0                                     ; $5cab: $01 $a0 $01
	ld b, $90                                        ; $5cae: $06 $90
	ret nz                                           ; $5cb0: $c0

	ld bc, $05a0                                     ; $5cb1: $01 $a0 $05
	ld [bc], a                                       ; $5cb4: $02
	sbc c                                            ; $5cb5: $99
	ret nz                                           ; $5cb6: $c0

	ld bc, $01a0                                     ; $5cb7: $01 $a0 $01
	ld [bc], a                                       ; $5cba: $02
	sbc l                                            ; $5cbb: $9d
	add hl, sp                                       ; $5cbc: $39
	add c                                            ; $5cbd: $81
	ret nz                                           ; $5cbe: $c0

	add b                                            ; $5cbf: $80
	ld bc, $18d1                                     ; $5cc0: $01 $d1 $18
	ret nz                                           ; $5cc3: $c0

	ld bc, $05a0                                     ; $5cc4: $01 $a0 $05
	ld [bc], a                                       ; $5cc7: $02
	and h                                            ; $5cc8: $a4
	ret nz                                           ; $5cc9: $c0

	ld bc, $01a0                                     ; $5cca: $01 $a0 $01
	inc b                                            ; $5ccd: $04
	ccf                                              ; $5cce: $3f
	ret nz                                           ; $5ccf: $c0

	ld bc, $05a0                                     ; $5cd0: $01 $a0 $05
	ld b, $b3                                        ; $5cd3: $06 $b3
	ret nz                                           ; $5cd5: $c0

	ld bc, $01a0                                     ; $5cd6: $01 $a0 $01
	ld [bc], a                                       ; $5cd9: $02
	dec d                                            ; $5cda: $15
	ld bc, $18d2                                     ; $5cdb: $01 $d2 $18
	ret nz                                           ; $5cde: $c0

	ld bc, $05a0                                     ; $5cdf: $01 $a0 $05
	ld [bc], a                                       ; $5ce2: $02
	ret nz                                           ; $5ce3: $c0

	ret nz                                           ; $5ce4: $c0

	ld bc, $01a0                                     ; $5ce5: $01 $a0 $01
	inc b                                            ; $5ce8: $04
	ld e, a                                          ; $5ce9: $5f
	ret nz                                           ; $5cea: $c0

	ld bc, $05a0                                     ; $5ceb: $01 $a0 $05
	ld b, $be                                        ; $5cee: $06 $be
	ret nz                                           ; $5cf0: $c0

	ld bc, $01a0                                     ; $5cf1: $01 $a0 $01
	ld b, $c3                                        ; $5cf4: $06 $c3
	jr @-$3e                                         ; $5cf6: $18 $c0

	ld bc, $05a0                                     ; $5cf8: $01 $a0 $05
	ld [bc], a                                       ; $5cfb: $02
	ldh [c], a                                       ; $5cfc: $e2
	ret nz                                           ; $5cfd: $c0

	ld bc, $01a0                                     ; $5cfe: $01 $a0 $01
	inc b                                            ; $5d01: $04
	ld a, e                                          ; $5d02: $7b
	ret nz                                           ; $5d03: $c0

	ld bc, $05a0                                     ; $5d04: $01 $a0 $05
	ld b, $c8                                        ; $5d07: $06 $c8
	ret nz                                           ; $5d09: $c0

	ld bc, $01a0                                     ; $5d0a: $01 $a0 $01
	ld [bc], a                                       ; $5d0d: $02
	dec d                                            ; $5d0e: $15
	jr @-$3e                                         ; $5d0f: $18 $c0

	ld bc, $05a0                                     ; $5d11: $01 $a0 $05
	dec b                                            ; $5d14: $05
	ld a, [$01c0]                                    ; $5d15: $fa $c0 $01
	and b                                            ; $5d18: $a0
	ld bc, $1502                                     ; $5d19: $01 $02 $15
	ret nz                                           ; $5d1c: $c0

	ld bc, $05a0                                     ; $5d1d: $01 $a0 $05
	ld b, $d3                                        ; $5d20: $06 $d3
	ret nz                                           ; $5d22: $c0

	ld bc, $01a0                                     ; $5d23: $01 $a0 $01
	ld b, $db                                        ; $5d26: $06 $db
	inc e                                            ; $5d28: $1c
	ret nz                                           ; $5d29: $c0

	ld bc, $05a0                                     ; $5d2a: $01 $a0 $05
	ld b, $e1                                        ; $5d2d: $06 $e1
	ret nz                                           ; $5d2f: $c0

	ld bc, $01a0                                     ; $5d30: $01 $a0 $01
	ld b, $e9                                        ; $5d33: $06 $e9
	ret nz                                           ; $5d35: $c0

	ld bc, $05a0                                     ; $5d36: $01 $a0 $05
	ld b, $f2                                        ; $5d39: $06 $f2
	ret nz                                           ; $5d3b: $c0

	ld bc, $01a0                                     ; $5d3c: $01 $a0 $01
	rlca                                             ; $5d3f: $07
	nop                                              ; $5d40: $00
	nop                                              ; $5d41: $00
	add b                                            ; $5d42: $80
	ld bc, $0a90                                     ; $5d43: $01 $90 $0a
	pop bc                                           ; $5d46: $c1
	ld e, e                                          ; $5d47: $5b
	ret nz                                           ; $5d48: $c0

	inc hl                                           ; $5d49: $23
	push af                                          ; $5d4a: $f5
	sub $83                                          ; $5d4b: $d6 $83
	and b                                            ; $5d4d: $a0
	inc e                                            ; $5d4e: $1c
	db $d3                                           ; $5d4f: $d3
	dec a                                            ; $5d50: $3d
	inc de                                           ; $5d51: $13
	ret nc                                           ; $5d52: $d0

	add e                                            ; $5d53: $83
	and b                                            ; $5d54: $a0
	inc e                                            ; $5d55: $1c
	ret nz                                           ; $5d56: $c0

	sbc [hl]                                         ; $5d57: $9e
	rst SubAFromHL                                          ; $5d58: $d7
	ldh [$0c], a                                     ; $5d59: $e0 $0c
	or c                                             ; $5d5b: $b1
	ret nz                                           ; $5d5c: $c0

	add hl, bc                                       ; $5d5d: $09
	db $e3                                           ; $5d5e: $e3
	nop                                              ; $5d5f: $00
	inc bc                                           ; $5d60: $03
	ret nz                                           ; $5d61: $c0

	ld hl, $d7d2                                     ; $5d62: $21 $d2 $d7
	ret nz                                           ; $5d65: $c0

	rst SubAFromHL                                          ; $5d66: $d7
	ret nz                                           ; $5d67: $c0

	dec de                                           ; $5d68: $1b
	rst SubAFromHL                                          ; $5d69: $d7
	ld [bc], a                                       ; $5d6a: $02
	ret nc                                           ; $5d6b: $d0

	pop de                                           ; $5d6c: $d1

jr_086_5d6d:
	jr z, jr_086_5d8a                                ; $5d6d: $28 $1b

	pop hl                                           ; $5d6f: $e1
	ld [bc], a                                       ; $5d70: $02
	ld bc, $c0e0                                     ; $5d71: $01 $e0 $c0
	ld bc, $08a0                                     ; $5d74: $01 $a0 $08
	ld bc, $c04a                                     ; $5d77: $01 $4a $c0
	ld bc, $01a0                                     ; $5d7a: $01 $a0 $01
	rlca                                             ; $5d7d: $07
	ld [$b2c1], sp                                   ; $5d7e: $08 $c1 $b2
	db $e3                                           ; $5d81: $e3
	nop                                              ; $5d82: $00
	ld d, l                                          ; $5d83: $55

jr_086_5d84:
	ret nz                                           ; $5d84: $c0

	ld bc, $08a0                                     ; $5d85: $01 $a0 $08
	rlca                                             ; $5d88: $07
	inc c                                            ; $5d89: $0c

jr_086_5d8a:
	dec l                                            ; $5d8a: $2d
	rlca                                             ; $5d8b: $07
	ld d, $09                                        ; $5d8c: $16 $09
	ld c, $c1                                        ; $5d8e: $0e $c1
	or d                                             ; $5d90: $b2
	db $e3                                           ; $5d91: $e3
	nop                                              ; $5d92: $00
	ld d, [hl]                                       ; $5d93: $56
	ret nz                                           ; $5d94: $c0

	ld bc, $08a0                                     ; $5d95: $01 $a0 $08
	rlca                                             ; $5d98: $07
	inc e                                            ; $5d99: $1c
	ldh [rP1], a                                     ; $5d9a: $e0 $00
	xor h                                            ; $5d9c: $ac
	rlca                                             ; $5d9d: $07
	add hl, hl                                       ; $5d9e: $29
	add hl, bc                                       ; $5d9f: $09
	rla                                              ; $5da0: $17
	pop hl                                           ; $5da1: $e1
	ld [bc], a                                       ; $5da2: $02
	inc bc                                           ; $5da3: $03
	dec de                                           ; $5da4: $1b
	ret nz                                           ; $5da5: $c0

	ld bc, $08a0                                     ; $5da6: $01 $a0 $08
	rlca                                             ; $5da9: $07
	jr nc, jr_086_5d6d                               ; $5daa: $30 $c1

	ld e, e                                          ; $5dac: $5b
	ret nz                                           ; $5dad: $c0

	inc hl                                           ; $5dae: $23
	push af                                          ; $5daf: $f5
	jp c, $a083                                      ; $5db0: $da $83 $a0

	inc e                                            ; $5db3: $1c
	rst SubAFromHL                                          ; $5db4: $d7
	ldh [$0c], a                                     ; $5db5: $e0 $0c
	adc h                                            ; $5db7: $8c
	ld [bc], a                                       ; $5db8: $02
	jp nc, $28d3                                     ; $5db9: $d2 $d3 $28

	ld d, $c0                                        ; $5dbc: $16 $c0
	ld bc, $01a0                                     ; $5dbe: $01 $a0 $01
	nop                                              ; $5dc1: $00
	jr nc, jr_086_5d84                               ; $5dc2: $30 $c0

	ld bc, $01a0                                     ; $5dc4: $01 $a0 $01
	nop                                              ; $5dc7: $00
	dec [hl]                                         ; $5dc8: $35
	pop hl                                           ; $5dc9: $e1
	ld [bc], a                                       ; $5dca: $02
	ld bc, $c0e0                                     ; $5dcb: $01 $e0 $c0
	ld bc, $08a0                                     ; $5dce: $01 $a0 $08
	rlca                                             ; $5dd1: $07
	ld a, $20                                        ; $5dd2: $3e $20
	ld bc, $0979                                     ; $5dd4: $01 $79 $09
	rrca                                             ; $5dd7: $0f
	ret nz                                           ; $5dd8: $c0

	ld bc, $08a0                                     ; $5dd9: $01 $a0 $08
	rlca                                             ; $5ddc: $07
	ld b, h                                          ; $5ddd: $44
	ret nz                                           ; $5dde: $c0

	ld bc, $01a0                                     ; $5ddf: $01 $a0 $01
	rlca                                             ; $5de2: $07
	ld c, d                                          ; $5de3: $4a
	ldh [rP1], a                                     ; $5de4: $e0 $00
	ld h, d                                          ; $5de6: $62
	ld bc, $0989                                     ; $5de7: $01 $89 $09
	add hl, bc                                       ; $5dea: $09
	ret nz                                           ; $5deb: $c0

	ld bc, $08a0                                     ; $5dec: $01 $a0 $08
	rlca                                             ; $5def: $07
	ld c, a                                          ; $5df0: $4f
	ldh [rSC], a                                     ; $5df1: $e0 $02
	add b                                            ; $5df3: $80
	ld bc, $28d4                                     ; $5df4: $01 $d4 $28
	ld d, $c0                                        ; $5df7: $16 $c0
	ld bc, $01a0                                     ; $5df9: $01 $a0 $01
	nop                                              ; $5dfc: $00
	jr nc, @-$3e                                     ; $5dfd: $30 $c0

	ld bc, $01a0                                     ; $5dff: $01 $a0 $01
	nop                                              ; $5e02: $00
	dec [hl]                                         ; $5e03: $35
	pop hl                                           ; $5e04: $e1
	ld [bc], a                                       ; $5e05: $02
	ld bc, $c0e0                                     ; $5e06: $01 $e0 $c0
	ld bc, $08a0                                     ; $5e09: $01 $a0 $08
	rlca                                             ; $5e0c: $07
	ld d, e                                          ; $5e0d: $53
	cpl                                              ; $5e0e: $2f
	ld bc, $0979                                     ; $5e0f: $01 $79 $09
	ld e, $c0                                        ; $5e12: $1e $c0
	ld bc, $08a0                                     ; $5e14: $01 $a0 $08
	rlca                                             ; $5e17: $07
	ld e, c                                          ; $5e18: $59
	ret nz                                           ; $5e19: $c0

	ld bc, $01a0                                     ; $5e1a: $01 $a0 $01
	rlca                                             ; $5e1d: $07
	ld h, b                                          ; $5e1e: $60
	ret nz                                           ; $5e1f: $c0

	ld bc, $08a0                                     ; $5e20: $01 $a0 $08
	ld bc, $c190                                     ; $5e23: $01 $90 $c1
	ld e, e                                          ; $5e26: $5b
	ret nz                                           ; $5e27: $c0

	ret c                                            ; $5e28: $d8

	ret nc                                           ; $5e29: $d0

	rst SubAFromHL                                          ; $5e2a: $d7
	ret nz                                           ; $5e2b: $c0

	ld bc, $01a0                                     ; $5e2c: $01 $a0 $01
	ld bc, $01aa                                     ; $5e2f: $01 $aa $01
	adc c                                            ; $5e32: $89
	add hl, bc                                       ; $5e33: $09
	add hl, bc                                       ; $5e34: $09
	ret nz                                           ; $5e35: $c0

	ld bc, $08a0                                     ; $5e36: $01 $a0 $08
	rlca                                             ; $5e39: $07
	ld c, a                                          ; $5e3a: $4f
	ldh [rSC], a                                     ; $5e3b: $e0 $02
	ld [hl], $08                                     ; $5e3d: $36 $08
	ret nz                                           ; $5e3f: $c0

	set 0, c                                         ; $5e40: $cb $c1
	ld e, e                                          ; $5e42: $5b
	push hl                                          ; $5e43: $e5
	ld bc, $b119                                     ; $5e44: $01 $19 $b1
	sbc b                                            ; $5e47: $98
	ld h, b                                          ; $5e48: $60
	db $fc                                           ; $5e49: $fc
	adc e                                            ; $5e4a: $8b
	nop                                              ; $5e4b: $00
	inc c                                            ; $5e4c: $0c
	or b                                             ; $5e4d: $b0
	ld bc, $c00a                                     ; $5e4e: $01 $0a $c0
	ld bc, $01a0                                     ; $5e51: $01 $a0 $01
	rlca                                             ; $5e54: $07
	ld h, [hl]                                       ; $5e55: $66
	ret nz                                           ; $5e56: $c0

	ret c                                            ; $5e57: $d8

	call nc, $85d7                                   ; $5e58: $d4 $d7 $85
	ret nz                                           ; $5e5b: $c0

	nop                                              ; $5e5c: $00
	ld bc, $c1b4                                     ; $5e5d: $01 $b4 $c1
	ld e, c                                          ; $5e60: $59
	db $e3                                           ; $5e61: $e3
	nop                                              ; $5e62: $00
	ld a, [hl]                                       ; $5e63: $7e
	db $fd                                           ; $5e64: $fd
	ld h, b                                          ; $5e65: $60
	adc e                                            ; $5e66: $8b
	nop                                              ; $5e67: $00
	inc c                                            ; $5e68: $0c
	ld [bc], a                                       ; $5e69: $02
	or b                                             ; $5e6a: $b0
	ld l, d                                          ; $5e6b: $6a
	inc bc                                           ; $5e6c: $03
	ldh [rP1], a                                     ; $5e6d: $e0 $00
	ld [hl], d                                       ; $5e6f: $72
	ld [bc], a                                       ; $5e70: $02
	or b                                             ; $5e71: $b0
	ld l, l                                          ; $5e72: $6d
	inc bc                                           ; $5e73: $03
	ldh [rP1], a                                     ; $5e74: $e0 $00
	adc d                                            ; $5e76: $8a
	ld [bc], a                                       ; $5e77: $02
	or b                                             ; $5e78: $b0
	ld l, c                                          ; $5e79: $69
	inc bc                                           ; $5e7a: $03
	ldh [rP1], a                                     ; $5e7b: $e0 $00
	db $e4                                           ; $5e7d: $e4
	ld [bc], a                                       ; $5e7e: $02
	or b                                             ; $5e7f: $b0
	ld [hl], b                                       ; $5e80: $70
	inc bc                                           ; $5e81: $03
	ldh [rP1], a                                     ; $5e82: $e0 $00
	or $02                                           ; $5e84: $f6 $02
	or b                                             ; $5e86: $b0
	ld l, e                                          ; $5e87: $6b
	inc bc                                           ; $5e88: $03
	ldh [rSB], a                                     ; $5e89: $e0 $01
	ld e, $02                                        ; $5e8b: $1e $02
	or b                                             ; $5e8d: $b0
	ld l, [hl]                                       ; $5e8e: $6e
	dec bc                                           ; $5e8f: $0b
	or b                                             ; $5e90: $b0
	ld a, a                                          ; $5e91: $7f
	inc bc                                           ; $5e92: $03
	ldh [rSB], a                                     ; $5e93: $e0 $01
	and [hl]                                         ; $5e95: $a6
	rst $38                                          ; $5e96: $ff
	inc bc                                           ; $5e97: $03
	ldh [rSB], a                                     ; $5e98: $e0 $01
	jr z, jr_086_5e9e                                ; $5e9a: $28 $02

	or b                                             ; $5e9c: $b0
	ld l, b                                          ; $5e9d: $68

jr_086_5e9e:
	dec bc                                           ; $5e9e: $0b
	or b                                             ; $5e9f: $b0
	ld a, a                                          ; $5ea0: $7f
	inc bc                                           ; $5ea1: $03
	ldh [rSB], a                                     ; $5ea2: $e0 $01
	scf                                              ; $5ea4: $37
	rst $38                                          ; $5ea5: $ff
	inc bc                                           ; $5ea6: $03
	ldh [rSB], a                                     ; $5ea7: $e0 $01
	ld c, e                                          ; $5ea9: $4b
	ld [bc], a                                       ; $5eaa: $02
	or b                                             ; $5eab: $b0
	ld [hl], c                                       ; $5eac: $71
	inc bc                                           ; $5ead: $03
	ldh [rSB], a                                     ; $5eae: $e0 $01
	ld [hl], d                                       ; $5eb0: $72
	nop                                              ; $5eb1: $00
	inc de                                           ; $5eb2: $13
	ei                                               ; $5eb3: $fb
	cp $0c                                           ; $5eb4: $fe $0c
	db $fc                                           ; $5eb6: $fc
	ret nz                                           ; $5eb7: $c0

	ld h, l                                          ; $5eb8: $65
	jp c, $c0f8                                      ; $5eb9: $da $f8 $c0

	ld h, [hl]                                       ; $5ebc: $66
	ldh [rAUD1LEN], a                                ; $5ebd: $e0 $11
	add b                                            ; $5ebf: $80
	nop                                              ; $5ec0: $00
	ld a, d                                          ; $5ec1: $7a
	inc bc                                           ; $5ec2: $03
	ldh [rSB], a                                     ; $5ec3: $e0 $01
	adc a                                            ; $5ec5: $8f
	ret nz                                           ; $5ec6: $c0

	ld bc, $08a0                                     ; $5ec7: $01 $a0 $08
	rlca                                             ; $5eca: $07
	ld l, e                                          ; $5ecb: $6b
	pop bc                                           ; $5ecc: $c1
	ld e, e                                          ; $5ecd: $5b
	ret nz                                           ; $5ece: $c0

	ret c                                            ; $5ecf: $d8

	call nc, $a0d7                                   ; $5ed0: $d4 $d7 $a0
	add c                                            ; $5ed3: $81
	and b                                            ; $5ed4: $a0
	jr nz, jr_086_5ed8                               ; $5ed5: $20 $01

	nop                                              ; $5ed7: $00

jr_086_5ed8:
	rst $38                                          ; $5ed8: $ff
	ld b, $c0                                        ; $5ed9: $06 $c0
	ld bc, $01a0                                     ; $5edb: $01 $a0 $01
	rlca                                             ; $5ede: $07
	halt                                             ; $5edf: $76
	ld e, $c0                                        ; $5ee0: $1e $c0
	ld bc, $01a0                                     ; $5ee2: $01 $a0 $01
	rlca                                             ; $5ee5: $07
	add e                                            ; $5ee6: $83
	ret nz                                           ; $5ee7: $c0

	ld bc, $08a0                                     ; $5ee8: $01 $a0 $08
	rlca                                             ; $5eeb: $07
	adc e                                            ; $5eec: $8b
	ret nz                                           ; $5eed: $c0

	ld bc, $01a0                                     ; $5eee: $01 $a0 $01
	rlca                                             ; $5ef1: $07
	sub d                                            ; $5ef2: $92
	ret nz                                           ; $5ef3: $c0

	ld bc, $08a0                                     ; $5ef4: $01 $a0 $08
	rlca                                             ; $5ef7: $07
	sub [hl]                                         ; $5ef8: $96
	ret nz                                           ; $5ef9: $c0

	ld bc, $01a0                                     ; $5efa: $01 $a0 $01
	rlca                                             ; $5efd: $07
	xor c                                            ; $5efe: $a9
	ld d, e                                          ; $5eff: $53
	ret nz                                           ; $5f00: $c0

	ld bc, $08a0                                     ; $5f01: $01 $a0 $08
	ld bc, $fddd                                     ; $5f04: $01 $dd $fd
	ld c, e                                          ; $5f07: $4b
	adc e                                            ; $5f08: $8b
	nop                                              ; $5f09: $00
	nop                                              ; $5f0a: $00
	ld [bc], a                                       ; $5f0b: $02
	or b                                             ; $5f0c: $b0
	rrca                                             ; $5f0d: $0f
	add hl, bc                                       ; $5f0e: $09
	ret nz                                           ; $5f0f: $c0

	ld bc, $01a0                                     ; $5f10: $01 $a0 $01
	rlca                                             ; $5f13: $07
	xor l                                            ; $5f14: $ad
	ldh [rP1], a                                     ; $5f15: $e0 $00
	dec a                                            ; $5f17: $3d
	ld [bc], a                                       ; $5f18: $02
	or b                                             ; $5f19: $b0
	ld c, $09                                        ; $5f1a: $0e $09
	ret nz                                           ; $5f1c: $c0

	ld bc, $01a0                                     ; $5f1d: $01 $a0 $01
	rlca                                             ; $5f20: $07
	or e                                             ; $5f21: $b3

jr_086_5f22:
	ldh [rP1], a                                     ; $5f22: $e0 $00
	jr nc, jr_086_5f28                               ; $5f24: $30 $02

	or b                                             ; $5f26: $b0
	db $10                                           ; $5f27: $10

jr_086_5f28:
	add hl, bc                                       ; $5f28: $09
	ret nz                                           ; $5f29: $c0

	ld bc, $01a0                                     ; $5f2a: $01 $a0 $01
	rlca                                             ; $5f2d: $07
	cp b                                             ; $5f2e: $b8
	ldh [rP1], a                                     ; $5f2f: $e0 $00
	inc hl                                           ; $5f31: $23
	ld [bc], a                                       ; $5f32: $02
	or b                                             ; $5f33: $b0
	ld de, $c009                                     ; $5f34: $11 $09 $c0
	ld bc, $01a0                                     ; $5f37: $01 $a0 $01
	rlca                                             ; $5f3a: $07
	cp [hl]                                          ; $5f3b: $be
	ldh [rP1], a                                     ; $5f3c: $e0 $00
	ld d, $00                                        ; $5f3e: $16 $00
	ld [de], a                                       ; $5f40: $12
	ret nz                                           ; $5f41: $c0

	ld bc, $01a0                                     ; $5f42: $01 $a0 $01
	ld bc, wGenericTileDataDest+1                                     ; $5f45: $01 $e3 $c0
	ld bc, $08a0                                     ; $5f48: $01 $a0 $08
	rlca                                             ; $5f4b: $07
	jp nz, $01c0                                     ; $5f4c: $c2 $c0 $01

	and b                                            ; $5f4f: $a0
	ld bc, $da01                                     ; $5f50: $01 $01 $da
	inc c                                            ; $5f53: $0c
	ret nz                                           ; $5f54: $c0

	ld bc, $08a0                                     ; $5f55: $01 $a0 $08
	rlca                                             ; $5f58: $07
	call $01c0                                       ; $5f59: $cd $c0 $01
	and b                                            ; $5f5c: $a0
	ld bc, $d907                                     ; $5f5d: $01 $07 $d9
	jr jr_086_5f22                                   ; $5f60: $18 $c0

	ld bc, $08a0                                     ; $5f62: $01 $a0 $08
	ld [bc], a                                       ; $5f65: $02
	ld c, $c0                                        ; $5f66: $0e $c0
	ld bc, $01a0                                     ; $5f68: $01 $a0 $01
	ld [bc], a                                       ; $5f6b: $02
	dec d                                            ; $5f6c: $15
	ret nz                                           ; $5f6d: $c0

	ld bc, $08a0                                     ; $5f6e: $01 $a0 $08
	rlca                                             ; $5f71: $07
	rst SubAFromDE                                          ; $5f72: $df
	ret nz                                           ; $5f73: $c0

	ld bc, $01a0                                     ; $5f74: $01 $a0 $01
	rlca                                             ; $5f77: $07
	ld [$c02e], a                                    ; $5f78: $ea $2e $c0
	ld bc, $08a0                                     ; $5f7b: $01 $a0 $08
	ld [bc], a                                       ; $5f7e: $02
	ld h, $c0                                        ; $5f7f: $26 $c0
	ld bc, $01a0                                     ; $5f81: $01 $a0 $01
	ld [bc], a                                       ; $5f84: $02
	dec hl                                           ; $5f85: $2b
	add c                                            ; $5f86: $81
	ret nz                                           ; $5f87: $c0

	dec de                                           ; $5f88: $1b
	rst SubAFromHL                                          ; $5f89: $d7
	ld [bc], a                                       ; $5f8a: $02
	ret nc                                           ; $5f8b: $d0

	pop de                                           ; $5f8c: $d1
	inc c                                            ; $5f8d: $0c
	ret nz                                           ; $5f8e: $c0

	ld bc, $08a0                                     ; $5f8f: $01 $a0 $08
	rlca                                             ; $5f92: $07
	ld hl, sp-$40                                    ; $5f93: $f8 $c0
	ld bc, $01a0                                     ; $5f95: $01 $a0 $01
	ld [rRAMG], sp                                   ; $5f98: $08 $00 $00
	inc c                                            ; $5f9b: $0c
	ret nz                                           ; $5f9c: $c0

	ld bc, $08a0                                     ; $5f9d: $01 $a0 $08
	ld [$c005], sp                                   ; $5fa0: $08 $05 $c0
	ld bc, $01a0                                     ; $5fa3: $01 $a0 $01
	ld bc, $18da                                     ; $5fa6: $01 $da $18
	ret nz                                           ; $5fa9: $c0

	ld bc, $08a0                                     ; $5faa: $01 $a0 $08
	ld [$c00f], sp                                   ; $5fad: $08 $0f $c0
	ld bc, $01a0                                     ; $5fb0: $01 $a0 $01
	ld [$c016], sp                                   ; $5fb3: $08 $16 $c0
	ld bc, $08a0                                     ; $5fb6: $01 $a0 $08
	ld [$c01b], sp                                   ; $5fb9: $08 $1b $c0
	ld bc, $01a0                                     ; $5fbc: $01 $a0 $01
	ld [$1822], sp                                   ; $5fbf: $08 $22 $18
	ret nz                                           ; $5fc2: $c0

	ld bc, $08a0                                     ; $5fc3: $01 $a0 $08
	ld [$c028], sp                                   ; $5fc6: $08 $28 $c0
	ld bc, $01a0                                     ; $5fc9: $01 $a0 $01
	ld [$c016], sp                                   ; $5fcc: $08 $16 $c0
	ld bc, $08a0                                     ; $5fcf: $01 $a0 $08
	ld [$c02e], sp                                   ; $5fd2: $08 $2e $c0
	ld bc, $01a0                                     ; $5fd5: $01 $a0 $01
	ld [$1836], sp                                   ; $5fd8: $08 $36 $18
	ret nz                                           ; $5fdb: $c0

	ld bc, $08a0                                     ; $5fdc: $01 $a0 $08
	ld [$c03c], sp                                   ; $5fdf: $08 $3c $c0
	ld bc, $01a0                                     ; $5fe2: $01 $a0 $01
	ld [$c043], sp                                   ; $5fe5: $08 $43 $c0
	ld bc, $08a0                                     ; $5fe8: $01 $a0 $08
	ld [$c04a], sp                                   ; $5feb: $08 $4a $c0
	ld bc, $01a0                                     ; $5fee: $01 $a0 $01
	dec b                                            ; $5ff1: $05
	pop hl                                           ; $5ff2: $e1
	dec l                                            ; $5ff3: $2d
	add c                                            ; $5ff4: $81
	ret nz                                           ; $5ff5: $c0

	add b                                            ; $5ff6: $80
	ld bc, $06d1                                     ; $5ff7: $01 $d1 $06
	ret nz                                           ; $5ffa: $c0

	ld bc, $01a0                                     ; $5ffb: $01 $a0 $01
	ld [$0150], sp                                   ; $5ffe: $08 $50 $01
	jp nc, $c006                                     ; $6001: $d2 $06 $c0

	ld bc, $01a0                                     ; $6004: $01 $a0 $01
	ld [$c059], sp                                   ; $6007: $08 $59 $c0
	ld bc, $08a0                                     ; $600a: $01 $a0 $08
	ld [$c063], sp                                   ; $600d: $08 $63 $c0
	ld bc, $01a0                                     ; $6010: $01 $a0 $01
	ld [$c071], sp                                   ; $6013: $08 $71 $c0
	ld bc, $08a0                                     ; $6016: $01 $a0 $08
	ld [$c078], sp                                   ; $6019: $08 $78 $c0
	ld bc, $01a0                                     ; $601c: $01 $a0 $01
	rlca                                             ; $601f: $07
	xor c                                            ; $6020: $a9
	jr @-$3e                                         ; $6021: $18 $c0

	ld bc, $01a0                                     ; $6023: $01 $a0 $01

Jump_086_6026:
	ld [$c081], sp                                   ; $6026: $08 $81 $c0
	ld bc, $08a0                                     ; $6029: $01 $a0 $08
	ld [$c089], sp                                   ; $602c: $08 $89 $c0
	ld bc, $01a0                                     ; $602f: $01 $a0 $01
	ld bc, $c0da                                     ; $6032: $01 $da $c0
	ld bc, $08a0                                     ; $6035: $01 $a0 $08
	ld [$1899], sp                                   ; $6038: $08 $99 $18
	ret nz                                           ; $603b: $c0

	ld bc, $08a0                                     ; $603c: $01 $a0 $08
	dec b                                            ; $603f: $05
	ld a, [$01c0]                                    ; $6040: $fa $c0 $01
	and b                                            ; $6043: $a0
	ld bc, $1502                                     ; $6044: $01 $02 $15
	ret nz                                           ; $6047: $c0

	ld bc, $08a0                                     ; $6048: $01 $a0 $08
	ld [$c09d], sp                                   ; $604b: $08 $9d $c0
	ld bc, $01a0                                     ; $604e: $01 $a0 $01
	ld [$1eac], sp                                   ; $6051: $08 $ac $1e
	ret nz                                           ; $6054: $c0

	ld bc, $01a0                                     ; $6055: $01 $a0 $01
	ld [$c0b7], sp                                   ; $6058: $08 $b7 $c0
	ld bc, $08a0                                     ; $605b: $01 $a0 $08
	ld [$c0c0], sp                                   ; $605e: $08 $c0 $c0
	ld bc, $01a0                                     ; $6061: $01 $a0 $01
	ld [$c0c9], sp                                   ; $6064: $08 $c9 $c0
	ld bc, $08a0                                     ; $6067: $01 $a0 $08
	ld [$c0ce], sp                                   ; $606a: $08 $ce $c0
	ld bc, $01a0                                     ; $606d: $01 $a0 $01
	ld [$0ad6], sp                                   ; $6070: $08 $d6 $0a
	pop bc                                           ; $6073: $c1
	ld e, e                                          ; $6074: $5b
	ret nz                                           ; $6075: $c0

	inc hl                                           ; $6076: $23
	push af                                          ; $6077: $f5
	sub $83                                          ; $6078: $d6 $83
	and b                                            ; $607a: $a0
	inc e                                            ; $607b: $1c
	rst SubAFromHL                                          ; $607c: $d7
	dec a                                            ; $607d: $3d
	inc de                                           ; $607e: $13
	ret nc                                           ; $607f: $d0

	add e                                            ; $6080: $83
	and b                                            ; $6081: $a0
	inc e                                            ; $6082: $1c
	ret nz                                           ; $6083: $c0

	sbc [hl]                                         ; $6084: $9e
	ret c                                            ; $6085: $d8

	ldh [$09], a                                     ; $6086: $e0 $09
	add h                                            ; $6088: $84
	ret nz                                           ; $6089: $c0

	add hl, bc                                       ; $608a: $09
	db $e3                                           ; $608b: $e3
	nop                                              ; $608c: $00
	ld bc, $21c0                                     ; $608d: $01 $c0 $21
	jp nc, $c0d8                                     ; $6090: $d2 $d8 $c0

	rst SubAFromHL                                          ; $6093: $d7
	ret nz                                           ; $6094: $c0

	dec de                                           ; $6095: $1b
	ret c                                            ; $6096: $d8

	ld [bc], a                                       ; $6097: $02
	ret nc                                           ; $6098: $d0

	pop de                                           ; $6099: $d1
	jr z, @+$1d                                      ; $609a: $28 $1b

	pop hl                                           ; $609c: $e1
	ld [bc], a                                       ; $609d: $02
	ld [bc], a                                       ; $609e: $02
	db $10                                           ; $609f: $10
	ret nz                                           ; $60a0: $c0

	ld bc, $09a0                                     ; $60a1: $01 $a0 $09
	ld bc, $c04a                                     ; $60a4: $01 $4a $c0
	ld bc, $01a0                                     ; $60a7: $01 $a0 $01
	ld [$c1dc], sp                                   ; $60aa: $08 $dc $c1
	or d                                             ; $60ad: $b2
	db $e3                                           ; $60ae: $e3
	nop                                              ; $60af: $00
	ld h, a                                          ; $60b0: $67
	ret nz                                           ; $60b1: $c0

	ld bc, $09a0                                     ; $60b2: $01 $a0 $09
	ld [$28e0], sp                                   ; $60b5: $08 $e0 $28
	ld [$09e6], sp                                   ; $60b8: $08 $e6 $09
	add hl, bc                                       ; $60bb: $09
	ret nz                                           ; $60bc: $c0

	ld bc, $09a0                                     ; $60bd: $01 $a0 $09
	ld [$e0ea], sp                                   ; $60c0: $08 $ea $e0
	nop                                              ; $60c3: $00
	or c                                             ; $60c4: $b1
	ld [$09ef], sp                                   ; $60c5: $08 $ef $09
	rla                                              ; $60c8: $17
	pop hl                                           ; $60c9: $e1
	ld [bc], a                                       ; $60ca: $02
	inc bc                                           ; $60cb: $03
	dec de                                           ; $60cc: $1b
	ret nz                                           ; $60cd: $c0

	ld bc, $09a0                                     ; $60ce: $01 $a0 $09
	ld [$c1f5], sp                                   ; $60d1: $08 $f5 $c1
	ld e, e                                          ; $60d4: $5b
	ret nz                                           ; $60d5: $c0

	inc hl                                           ; $60d6: $23
	push af                                          ; $60d7: $f5
	jp c, $a083                                      ; $60d8: $da $83 $a0

	inc e                                            ; $60db: $1c
	ret c                                            ; $60dc: $d8

	ldh [$09], a                                     ; $60dd: $e0 $09
	ld h, h                                          ; $60df: $64
	ld [bc], a                                       ; $60e0: $02
	jp nc, $28d3                                     ; $60e1: $d2 $d3 $28

	ld d, $c0                                        ; $60e4: $16 $c0
	ld bc, $01a0                                     ; $60e6: $01 $a0 $01
	nop                                              ; $60e9: $00
	ld b, [hl]                                       ; $60ea: $46
	ret nz                                           ; $60eb: $c0

	ld bc, $01a0                                     ; $60ec: $01 $a0 $01
	nop                                              ; $60ef: $00
	ld c, e                                          ; $60f0: $4b
	pop hl                                           ; $60f1: $e1
	ld [bc], a                                       ; $60f2: $02
	ld [bc], a                                       ; $60f3: $02
	db $10                                           ; $60f4: $10
	ret nz                                           ; $60f5: $c0

	ld bc, $09a0                                     ; $60f6: $01 $a0 $09
	ld bc, $2574                                     ; $60f9: $01 $74 $25
	ld bc, $0979                                     ; $60fc: $01 $79 $09
	inc d                                            ; $60ff: $14
	pop bc                                           ; $6100: $c1
	or d                                             ; $6101: $b2
	db $e3                                           ; $6102: $e3
	nop                                              ; $6103: $00
	ld l, b                                          ; $6104: $68
	ret nz                                           ; $6105: $c0

	ld bc, $09a0                                     ; $6106: $01 $a0 $09
	ld [$c0fc], sp                                   ; $6109: $08 $fc $c0
	ld bc, $01a0                                     ; $610c: $01 $a0 $01
	add hl, bc                                       ; $610f: $09
	ld [bc], a                                       ; $6110: $02
	ldh [rP1], a                                     ; $6111: $e0 $00
	ld h, d                                          ; $6113: $62
	ld bc, $0989                                     ; $6114: $01 $89 $09
	add hl, bc                                       ; $6117: $09
	ret nz                                           ; $6118: $c0

	ld bc, $09a0                                     ; $6119: $01 $a0 $09
	add hl, bc                                       ; $611c: $09
	add hl, bc                                       ; $611d: $09
	ldh [rSC], a                                     ; $611e: $e0 $02
	sbc e                                            ; $6120: $9b
	ld bc, $28d4                                     ; $6121: $01 $d4 $28
	ld d, $c0                                        ; $6124: $16 $c0
	ld bc, $01a0                                     ; $6126: $01 $a0 $01
	nop                                              ; $6129: $00
	ld b, [hl]                                       ; $612a: $46
	ret nz                                           ; $612b: $c0

	ld bc, $01a0                                     ; $612c: $01 $a0 $01
	nop                                              ; $612f: $00
	ld c, e                                          ; $6130: $4b
	pop hl                                           ; $6131: $e1
	ld [bc], a                                       ; $6132: $02
	ld [bc], a                                       ; $6133: $02
	db $10                                           ; $6134: $10
	ret nz                                           ; $6135: $c0

	ld bc, $09a0                                     ; $6136: $01 $a0 $09
	ld bc, $2f74                                     ; $6139: $01 $74 $2f
	ld bc, $0979                                     ; $613c: $01 $79 $09
	ld e, $c0                                        ; $613f: $1e $c0
	ld bc, $09a0                                     ; $6141: $01 $a0 $09
	add hl, bc                                       ; $6144: $09
	dec bc                                           ; $6145: $0b
	ret nz                                           ; $6146: $c0

	ld bc, $01a0                                     ; $6147: $01 $a0 $01
	rlca                                             ; $614a: $07
	ld h, b                                          ; $614b: $60
	ret nz                                           ; $614c: $c0

	ld bc, $09a0                                     ; $614d: $01 $a0 $09
	add hl, bc                                       ; $6150: $09
	add hl, bc                                       ; $6151: $09
	pop bc                                           ; $6152: $c1
	ld e, e                                          ; $6153: $5b
	ret nz                                           ; $6154: $c0

	ret c                                            ; $6155: $d8

	ret nc                                           ; $6156: $d0

	ret c                                            ; $6157: $d8

	ret nz                                           ; $6158: $c0

	ld bc, $01a0                                     ; $6159: $01 $a0 $01
	ld bc, $01aa                                     ; $615c: $01 $aa $01
	adc c                                            ; $615f: $89
	add hl, bc                                       ; $6160: $09
	add hl, bc                                       ; $6161: $09
	ret nz                                           ; $6162: $c0

	ld bc, $09a0                                     ; $6163: $01 $a0 $09
	add hl, bc                                       ; $6166: $09
	add hl, bc                                       ; $6167: $09
	ldh [rSC], a                                     ; $6168: $e0 $02
	ld d, c                                          ; $616a: $51
	ld [$cbc0], sp                                   ; $616b: $08 $c0 $cb
	pop bc                                           ; $616e: $c1
	ld e, e                                          ; $616f: $5b
	push hl                                          ; $6170: $e5
	ld bc, $b119                                     ; $6171: $01 $19 $b1
	sub c                                            ; $6174: $91
	ld h, b                                          ; $6175: $60
	db $fc                                           ; $6176: $fc
	adc e                                            ; $6177: $8b
	nop                                              ; $6178: $00
	inc c                                            ; $6179: $0c
	or b                                             ; $617a: $b0
	ld bc, $c006                                     ; $617b: $01 $06 $c0
	ld bc, $01a0                                     ; $617e: $01 $a0 $01
	add hl, bc                                       ; $6181: $09
	rla                                              ; $6182: $17
	ld a, [hl]                                       ; $6183: $7e
	ret nz                                           ; $6184: $c0

	nop                                              ; $6185: $00
	ld bc, $c1b4                                     ; $6186: $01 $b4 $c1
	ld e, c                                          ; $6189: $59
	db $e3                                           ; $618a: $e3
	nop                                              ; $618b: $00
	ld a, [hl]                                       ; $618c: $7e
	db $fd                                           ; $618d: $fd
	ld l, a                                          ; $618e: $6f
	adc e                                            ; $618f: $8b
	nop                                              ; $6190: $00
	inc c                                            ; $6191: $0c
	ld [bc], a                                       ; $6192: $02
	or b                                             ; $6193: $b0
	ld l, d                                          ; $6194: $6a
	inc bc                                           ; $6195: $03
	ldh [rP1], a                                     ; $6196: $e0 $00
	ld l, a                                          ; $6198: $6f
	ld [bc], a                                       ; $6199: $02
	or b                                             ; $619a: $b0
	ld l, l                                          ; $619b: $6d
	inc bc                                           ; $619c: $03
	ldh [rP1], a                                     ; $619d: $e0 $00
	add l                                            ; $619f: $85
	ld [bc], a                                       ; $61a0: $02
	or b                                             ; $61a1: $b0
	ld l, c                                          ; $61a2: $69
	inc bc                                           ; $61a3: $03
	ldh [rP1], a                                     ; $61a4: $e0 $00
	rst SubAFromDE                                          ; $61a6: $df
	ld [bc], a                                       ; $61a7: $02
	or b                                             ; $61a8: $b0
	ld [hl], b                                       ; $61a9: $70
	inc bc                                           ; $61aa: $03
	ldh [rP1], a                                     ; $61ab: $e0 $00
	pop af                                           ; $61ad: $f1
	ld [bc], a                                       ; $61ae: $02
	or b                                             ; $61af: $b0
	ld l, e                                          ; $61b0: $6b
	inc bc                                           ; $61b1: $03
	ldh [rSB], a                                     ; $61b2: $e0 $01
	dec h                                            ; $61b4: $25
	ld [bc], a                                       ; $61b5: $02
	or b                                             ; $61b6: $b0
	ld l, [hl]                                       ; $61b7: $6e
	dec bc                                           ; $61b8: $0b
	or b                                             ; $61b9: $b0
	ld a, a                                          ; $61ba: $7f
	inc bc                                           ; $61bb: $03
	ldh [rSB], a                                     ; $61bc: $e0 $01
	set 7, a                                         ; $61be: $cb $ff
	inc bc                                           ; $61c0: $03
	ldh [rSB], a                                     ; $61c1: $e0 $01
	cpl                                              ; $61c3: $2f
	ld [bc], a                                       ; $61c4: $02
	or b                                             ; $61c5: $b0
	ld l, b                                          ; $61c6: $68
	dec bc                                           ; $61c7: $0b
	or b                                             ; $61c8: $b0
	ld a, a                                          ; $61c9: $7f
	inc bc                                           ; $61ca: $03
	ldh [rSB], a                                     ; $61cb: $e0 $01
	ld a, $ff                                        ; $61cd: $3e $ff
	inc bc                                           ; $61cf: $03
	ldh [rSB], a                                     ; $61d0: $e0 $01
	ld d, d                                          ; $61d2: $52
	ld [bc], a                                       ; $61d3: $02
	or b                                             ; $61d4: $b0
	ld [hl], c                                       ; $61d5: $71
	inc bc                                           ; $61d6: $03
	ldh [rSB], a                                     ; $61d7: $e0 $01
	sub c                                            ; $61d9: $91
	nop                                              ; $61da: $00
	ld [hl+], a                                      ; $61db: $22
	ei                                               ; $61dc: $fb
	cp $07                                           ; $61dd: $fe $07
	db $fc                                           ; $61df: $fc
	ret nz                                           ; $61e0: $c0

	ld h, l                                          ; $61e1: $65
	jp c, $0080                                      ; $61e2: $da $80 $00

	ld a, e                                          ; $61e5: $7b
	rla                                              ; $61e6: $17
	add b                                            ; $61e7: $80
	ret nz                                           ; $61e8: $c0

	ld h, [hl]                                       ; $61e9: $66
	rrca                                             ; $61ea: $0f
	db $d3                                           ; $61eb: $d3
	call nc, $d6d5                                   ; $61ec: $d4 $d5 $d6
	rst SubAFromHL                                          ; $61ef: $d7
	ret c                                            ; $61f0: $d8

	reti                                             ; $61f1: $d9


	jp c, $dcdb                                      ; $61f2: $da $db $dc

	db $dd                                           ; $61f5: $dd
	sbc $df                                          ; $61f6: $de $df
	ldh [rAUD1SWEEP], a                              ; $61f8: $e0 $10
	inc bc                                           ; $61fa: $03
	ldh [rSB], a                                     ; $61fb: $e0 $01
	and l                                            ; $61fd: $a5
	ret nz                                           ; $61fe: $c0

	nop                                              ; $61ff: $00
	ld bc, $c0ba                                     ; $6200: $01 $ba $c0
	ret c                                            ; $6203: $d8

	call nc, $1cd8                                   ; $6204: $d4 $d8 $1c
	ret nz                                           ; $6207: $c0

	ld bc, $01a0                                     ; $6208: $01 $a0 $01
	rlca                                             ; $620b: $07
	add e                                            ; $620c: $83
	pop hl                                           ; $620d: $e1
	ld [bc], a                                       ; $620e: $02
	inc bc                                           ; $620f: $03
	dec de                                           ; $6210: $1b
	ret nz                                           ; $6211: $c0

	ld bc, $09a0                                     ; $6212: $01 $a0 $09
	add hl, bc                                       ; $6215: $09
	inc e                                            ; $6216: $1c
	ret nz                                           ; $6217: $c0

	ld bc, $01a0                                     ; $6218: $01 $a0 $01
	add hl, bc                                       ; $621b: $09
	ld h, $c0                                        ; $621c: $26 $c0
	ld bc, $09a0                                     ; $621e: $01 $a0 $09
	add hl, bc                                       ; $6221: $09
	dec l                                            ; $6222: $2d
	ld d, e                                          ; $6223: $53
	ret nz                                           ; $6224: $c0

	ld bc, $09a0                                     ; $6225: $01 $a0 $09

jr_086_6228:
	add hl, bc                                       ; $6228: $09
	jr c, jr_086_6228                                ; $6229: $38 $fd

	ld c, e                                          ; $622b: $4b
	adc e                                            ; $622c: $8b
	nop                                              ; $622d: $00
	nop                                              ; $622e: $00
	ld [bc], a                                       ; $622f: $02
	or b                                             ; $6230: $b0
	rrca                                             ; $6231: $0f
	add hl, bc                                       ; $6232: $09
	ret nz                                           ; $6233: $c0

	ld bc, $01a0                                     ; $6234: $01 $a0 $01
	rlca                                             ; $6237: $07
	xor l                                            ; $6238: $ad
	ldh [rP1], a                                     ; $6239: $e0 $00
	dec a                                            ; $623b: $3d
	ld [bc], a                                       ; $623c: $02
	or b                                             ; $623d: $b0
	ld c, $09                                        ; $623e: $0e $09
	ret nz                                           ; $6240: $c0

	ld bc, $01a0                                     ; $6241: $01 $a0 $01
	rlca                                             ; $6244: $07
	or e                                             ; $6245: $b3

jr_086_6246:
	ldh [rP1], a                                     ; $6246: $e0 $00
	jr nc, jr_086_624c                               ; $6248: $30 $02

	or b                                             ; $624a: $b0
	db $10                                           ; $624b: $10

jr_086_624c:
	add hl, bc                                       ; $624c: $09
	ret nz                                           ; $624d: $c0

	ld bc, $01a0                                     ; $624e: $01 $a0 $01
	rlca                                             ; $6251: $07
	cp b                                             ; $6252: $b8
	ldh [rP1], a                                     ; $6253: $e0 $00
	inc hl                                           ; $6255: $23
	ld [bc], a                                       ; $6256: $02
	or b                                             ; $6257: $b0
	ld de, $c009                                     ; $6258: $11 $09 $c0
	ld bc, $01a0                                     ; $625b: $01 $a0 $01
	rlca                                             ; $625e: $07
	cp [hl]                                          ; $625f: $be
	ldh [rP1], a                                     ; $6260: $e0 $00
	ld d, $00                                        ; $6262: $16 $00
	ld [de], a                                       ; $6264: $12
	ret nz                                           ; $6265: $c0

	ld bc, $01a0                                     ; $6266: $01 $a0 $01
	ld bc, wGenericTileDataDest+1                                     ; $6269: $01 $e3 $c0
	ld bc, $09a0                                     ; $626c: $01 $a0 $09
	add hl, bc                                       ; $626f: $09
	ld a, $c0                                        ; $6270: $3e $c0
	ld bc, $01a0                                     ; $6272: $01 $a0 $01
	ld [bc], a                                       ; $6275: $02
	dec d                                            ; $6276: $15
	inc c                                            ; $6277: $0c
	ret nz                                           ; $6278: $c0

	ld bc, $09a0                                     ; $6279: $01 $a0 $09
	add hl, bc                                       ; $627c: $09
	ld b, [hl]                                       ; $627d: $46
	ret nz                                           ; $627e: $c0

	ld bc, $01a0                                     ; $627f: $01 $a0 $01
	rlca                                             ; $6282: $07
	reti                                             ; $6283: $d9


	jr jr_086_6246                                   ; $6284: $18 $c0

	ld bc, $09a0                                     ; $6286: $01 $a0 $09
	add hl, bc                                       ; $6289: $09
	ld c, h                                          ; $628a: $4c
	ret nz                                           ; $628b: $c0

	ld bc, $01a0                                     ; $628c: $01 $a0 $01
	ld [bc], a                                       ; $628f: $02
	dec d                                            ; $6290: $15
	ret nz                                           ; $6291: $c0

	ld bc, $09a0                                     ; $6292: $01 $a0 $09
	add hl, bc                                       ; $6295: $09
	ld d, e                                          ; $6296: $53
	ret nz                                           ; $6297: $c0

	ld bc, $01a0                                     ; $6298: $01 $a0 $01
	rlca                                             ; $629b: $07
	ld [$813a], a                                    ; $629c: $ea $3a $81
	ret nz                                           ; $629f: $c0

	dec de                                           ; $62a0: $1b
	ret c                                            ; $62a1: $d8

	ld [bc], a                                       ; $62a2: $02
	ret nc                                           ; $62a3: $d0

	pop de                                           ; $62a4: $d1
	jr @-$3e                                         ; $62a5: $18 $c0

	ld bc, $09a0                                     ; $62a7: $01 $a0 $09
	add hl, bc                                       ; $62aa: $09
	ld h, b                                          ; $62ab: $60
	ret nz                                           ; $62ac: $c0

	ld bc, $01a0                                     ; $62ad: $01 $a0 $01
	ld [bc], a                                       ; $62b0: $02
	dec hl                                           ; $62b1: $2b
	ret nz                                           ; $62b2: $c0

jr_086_62b3:
	ld bc, $09a0                                     ; $62b3: $01 $a0 $09
	add hl, bc                                       ; $62b6: $09
	ld h, [hl]                                       ; $62b7: $66
	ret nz                                           ; $62b8: $c0

	ld bc, $01a0                                     ; $62b9: $01 $a0 $01
	ld bc, $00da                                     ; $62bc: $01 $da $00
	jr @-$3e                                         ; $62bf: $18 $c0

	ld bc, $09a0                                     ; $62c1: $01 $a0 $09
	ld [bc], a                                       ; $62c4: $02
	ld h, $c0                                        ; $62c5: $26 $c0
	ld bc, $01a0                                     ; $62c7: $01 $a0 $01
	ld [bc], a                                       ; $62ca: $02
	dec hl                                           ; $62cb: $2b

jr_086_62cc:
	ret nz                                           ; $62cc: $c0

	ld bc, $09a0                                     ; $62cd: $01 $a0 $09
	add hl, bc                                       ; $62d0: $09
	ld l, a                                          ; $62d1: $6f
	ret nz                                           ; $62d2: $c0

	ld bc, $01a0                                     ; $62d3: $01 $a0 $01
	ld bc, $18da                                     ; $62d6: $01 $da $18
	ret nz                                           ; $62d9: $c0

	ld bc, $09a0                                     ; $62da: $01 $a0 $09
	add hl, bc                                       ; $62dd: $09
	ld [hl], e                                       ; $62de: $73
	ret nz                                           ; $62df: $c0

	ld bc, $01a0                                     ; $62e0: $01 $a0 $01
	add hl, bc                                       ; $62e3: $09
	ld a, [hl]                                       ; $62e4: $7e
	ret nz                                           ; $62e5: $c0

	ld bc, $09a0                                     ; $62e6: $01 $a0 $09
	add hl, bc                                       ; $62e9: $09
	add e                                            ; $62ea: $83
	ret nz                                           ; $62eb: $c0

	ld bc, $01a0                                     ; $62ec: $01 $a0 $01
	add hl, bc                                       ; $62ef: $09
	sub a                                            ; $62f0: $97
	jr jr_086_62b3                                   ; $62f1: $18 $c0

	ld bc, $09a0                                     ; $62f3: $01 $a0 $09
	add hl, bc                                       ; $62f6: $09
	and e                                            ; $62f7: $a3
	ret nz                                           ; $62f8: $c0

	ld bc, $01a0                                     ; $62f9: $01 $a0 $01
	add hl, bc                                       ; $62fc: $09
	ld a, [hl]                                       ; $62fd: $7e
	ret nz                                           ; $62fe: $c0

	ld bc, $09a0                                     ; $62ff: $01 $a0 $09
	add hl, bc                                       ; $6302: $09
	xor [hl]                                         ; $6303: $ae
	ret nz                                           ; $6304: $c0

	ld bc, $01a0                                     ; $6305: $01 $a0 $01
	add hl, bc                                       ; $6308: $09
	sub a                                            ; $6309: $97
	jr jr_086_62cc                                   ; $630a: $18 $c0

	ld bc, $09a0                                     ; $630c: $01 $a0 $09
	add hl, bc                                       ; $630f: $09
	push bc                                          ; $6310: $c5
	ret nz                                           ; $6311: $c0

	ld bc, $01a0                                     ; $6312: $01 $a0 $01
	ld [$c043], sp                                   ; $6315: $08 $43 $c0
	ld bc, $09a0                                     ; $6318: $01 $a0 $09
	add hl, bc                                       ; $631b: $09
	ret nc                                           ; $631c: $d0

	ret nz                                           ; $631d: $c0

	ld bc, $01a0                                     ; $631e: $01 $a0 $01
	dec b                                            ; $6321: $05
	pop hl                                           ; $6322: $e1
	ld b, l                                          ; $6323: $45
	add c                                            ; $6324: $81
	ret nz                                           ; $6325: $c0

	add b                                            ; $6326: $80
	ld bc, $1ed1                                     ; $6327: $01 $d1 $1e
	ret nz                                           ; $632a: $c0

	ld bc, $01a0                                     ; $632b: $01 $a0 $01
	ld [$c050], sp                                   ; $632e: $08 $50 $c0
	ld bc, $09a0                                     ; $6331: $01 $a0 $09
	add hl, bc                                       ; $6334: $09
	ret c                                            ; $6335: $d8

	ret nz                                           ; $6336: $c0

	ld bc, $01a0                                     ; $6337: $01 $a0 $01
	add hl, bc                                       ; $633a: $09
	ldh [$c0], a                                     ; $633b: $e0 $c0
	ld bc, $09a0                                     ; $633d: $01 $a0 $09
	add hl, bc                                       ; $6340: $09
	push hl                                          ; $6341: $e5
	ret nz                                           ; $6342: $c0

	ld bc, $01a0                                     ; $6343: $01 $a0 $01
	add hl, bc                                       ; $6346: $09
	or $01                                           ; $6347: $f6 $01
	jp nc, $c01e                                     ; $6349: $d2 $1e $c0

	ld bc, $01a0                                     ; $634c: $01 $a0 $01
	ld [$c059], sp                                   ; $634f: $08 $59 $c0
	ld bc, $09a0                                     ; $6352: $01 $a0 $09
	add hl, bc                                       ; $6355: $09
	ret c                                            ; $6356: $d8

	ret nz                                           ; $6357: $c0

	ld bc, $01a0                                     ; $6358: $01 $a0 $01
	add hl, bc                                       ; $635b: $09
	ldh [$c0], a                                     ; $635c: $e0 $c0
	ld bc, $09a0                                     ; $635e: $01 $a0 $09
	add hl, bc                                       ; $6361: $09
	db $fc                                           ; $6362: $fc
	ret nz                                           ; $6363: $c0

	ld bc, $01a0                                     ; $6364: $01 $a0 $01
	add hl, bc                                       ; $6367: $09
	or $1e                                           ; $6368: $f6 $1e
	ret nz                                           ; $636a: $c0

	ld bc, $01a0                                     ; $636b: $01 $a0 $01
	ld [$c081], sp                                   ; $636e: $08 $81 $c0
	ld bc, $09a0                                     ; $6371: $01 $a0 $09
	ld a, [bc]                                       ; $6374: $0a
	inc bc                                           ; $6375: $03
	ret nz                                           ; $6376: $c0

	ld bc, $01a0                                     ; $6377: $01 $a0 $01
	ld a, [bc]                                       ; $637a: $0a
	inc c                                            ; $637b: $0c
	ret nz                                           ; $637c: $c0

	ld bc, $09a0                                     ; $637d: $01 $a0 $09
	ld a, [bc]                                       ; $6380: $0a
	ld de, $01c0                                     ; $6381: $11 $c0 $01
	and b                                            ; $6384: $a0
	ld bc, $1c0a                                     ; $6385: $01 $0a $1c
	jr @-$3e                                         ; $6388: $18 $c0

	ld bc, $09a0                                     ; $638a: $01 $a0 $09
	ld a, [bc]                                       ; $638d: $0a
	inc hl                                           ; $638e: $23
	ret nz                                           ; $638f: $c0

	ld bc, $01a0                                     ; $6390: $01 $a0 $01
	ld [bc], a                                       ; $6393: $02
	dec d                                            ; $6394: $15
	ret nz                                           ; $6395: $c0

	ld bc, $09a0                                     ; $6396: $01 $a0 $09
	ld a, [bc]                                       ; $6399: $0a
	dec hl                                           ; $639a: $2b
	ret nz                                           ; $639b: $c0

	ld bc, $01a0                                     ; $639c: $01 $a0 $01
	ld a, [bc]                                       ; $639f: $0a
	ld sp, $c018                                     ; $63a0: $31 $18 $c0
	ld bc, $09a0                                     ; $63a3: $01 $a0 $09
	ld a, [bc]                                       ; $63a6: $0a
	dec [hl]                                         ; $63a7: $35
	ret nz                                           ; $63a8: $c0

	ld bc, $01a0                                     ; $63a9: $01 $a0 $01
	ld a, [bc]                                       ; $63ac: $0a
	inc a                                            ; $63ad: $3c
	ret nz                                           ; $63ae: $c0

	ld bc, $09a0                                     ; $63af: $01 $a0 $09
	ld a, [bc]                                       ; $63b2: $0a
	ld b, d                                          ; $63b3: $42
	ret nz                                           ; $63b4: $c0

	ld bc, $01a0                                     ; $63b5: $01 $a0 $01
	ld a, [bc]                                       ; $63b8: $0a
	ld c, [hl]                                       ; $63b9: $4e
	ld a, [bc]                                       ; $63ba: $0a
	pop bc                                           ; $63bb: $c1
	ld e, e                                          ; $63bc: $5b
	ret nz                                           ; $63bd: $c0

	inc hl                                           ; $63be: $23
	push af                                          ; $63bf: $f5
	sub $83                                          ; $63c0: $d6 $83
	and b                                            ; $63c2: $a0
	inc e                                            ; $63c3: $1c
	ret c                                            ; $63c4: $d8

	dec a                                            ; $63c5: $3d
	inc de                                           ; $63c6: $13
	ret nc                                           ; $63c7: $d0

	add e                                            ; $63c8: $83
	and b                                            ; $63c9: $a0
	inc e                                            ; $63ca: $1c
	ret nz                                           ; $63cb: $c0

	sbc [hl]                                         ; $63cc: $9e
	jp c, $06e0                                      ; $63cd: $da $e0 $06

	inc a                                            ; $63d0: $3c
	ret nz                                           ; $63d1: $c0

	add hl, bc                                       ; $63d2: $09
	db $e3                                           ; $63d3: $e3
	nop                                              ; $63d4: $00
	ld [bc], a                                       ; $63d5: $02
	ret nz                                           ; $63d6: $c0

	ld hl, $dad2                                     ; $63d7: $21 $d2 $da
	ret nz                                           ; $63da: $c0

	ret z                                            ; $63db: $c8

	ret nz                                           ; $63dc: $c0

	dec de                                           ; $63dd: $1b
	jp c, $d002                                      ; $63de: $da $02 $d0

	pop de                                           ; $63e1: $d1
	jr z, jr_086_63ff                                ; $63e2: $28 $1b

	pop hl                                           ; $63e4: $e1
	ld [bc], a                                       ; $63e5: $02
	ld [bc], a                                       ; $63e6: $02
	ld b, b                                          ; $63e7: $40
	ret nz                                           ; $63e8: $c0

	ld bc, $06a0                                     ; $63e9: $01 $a0 $06
	ld bc, $c04a                                     ; $63ec: $01 $4a $c0
	ld bc, $01a0                                     ; $63ef: $01 $a0 $01
	ld a, [bc]                                       ; $63f2: $0a
	ld d, a                                          ; $63f3: $57
	pop bc                                           ; $63f4: $c1
	or d                                             ; $63f5: $b2
	db $e3                                           ; $63f6: $e3
	nop                                              ; $63f7: $00
	ld [hl], d                                       ; $63f8: $72
	ret nz                                           ; $63f9: $c0

	ld bc, $06a0                                     ; $63fa: $01 $a0 $06
	ld a, [bc]                                       ; $63fd: $0a
	ld e, e                                          ; $63fe: $5b

jr_086_63ff:
	dec l                                            ; $63ff: $2d
	ld bc, $095f                                     ; $6400: $01 $5f $09
	ld c, $c1                                        ; $6403: $0e $c1
	or d                                             ; $6405: $b2
	db $e3                                           ; $6406: $e3
	nop                                              ; $6407: $00
	ld [hl], e                                       ; $6408: $73
	ret nz                                           ; $6409: $c0

	ld bc, $06a0                                     ; $640a: $01 $a0 $06
	ld a, [bc]                                       ; $640d: $0a
	ld h, d                                          ; $640e: $62
	ldh [rP1], a                                     ; $640f: $e0 $00
	sbc l                                            ; $6411: $9d
	ld bc, $0967                                     ; $6412: $01 $67 $09
	rla                                              ; $6415: $17
	pop hl                                           ; $6416: $e1
	ld [bc], a                                       ; $6417: $02
	inc bc                                           ; $6418: $03
	dec de                                           ; $6419: $1b
	ret nz                                           ; $641a: $c0

	ld bc, $06a0                                     ; $641b: $01 $a0 $06
	ld a, [bc]                                       ; $641e: $0a
	ld l, d                                          ; $641f: $6a
	pop bc                                           ; $6420: $c1
	ld e, e                                          ; $6421: $5b
	ret nz                                           ; $6422: $c0

	inc hl                                           ; $6423: $23
	push af                                          ; $6424: $f5
	jp c, $a083                                      ; $6425: $da $83 $a0

	inc e                                            ; $6428: $1c
	jp c, $06e0                                      ; $6429: $da $e0 $06

	rla                                              ; $642c: $17
	ld [bc], a                                       ; $642d: $02
	jp nc, $28d3                                     ; $642e: $d2 $d3 $28

	ld d, $c0                                        ; $6431: $16 $c0
	ld bc, $01a0                                     ; $6433: $01 $a0 $01
	nop                                              ; $6436: $00
	ld d, a                                          ; $6437: $57
	ret nz                                           ; $6438: $c0

	ld bc, $01a0                                     ; $6439: $01 $a0 $01
	nop                                              ; $643c: $00
	ld e, h                                          ; $643d: $5c
	pop hl                                           ; $643e: $e1
	ld [bc], a                                       ; $643f: $02
	ld [bc], a                                       ; $6440: $02
	ld b, b                                          ; $6441: $40
	ret nz                                           ; $6442: $c0

	ld bc, $06a0                                     ; $6443: $01 $a0 $06
	ld bc, $2074                                     ; $6446: $01 $74 $20
	inc bc                                           ; $6449: $03
	ld c, l                                          ; $644a: $4d
	add hl, bc                                       ; $644b: $09
	rrca                                             ; $644c: $0f
	ret nz                                           ; $644d: $c0

	ld bc, $06a0                                     ; $644e: $01 $a0 $06
	ld a, [bc]                                       ; $6451: $0a
	ld [hl], a                                       ; $6452: $77
	ret nz                                           ; $6453: $c0

	ld bc, $01a0                                     ; $6454: $01 $a0 $01
	ld bc, $e087                                     ; $6457: $01 $87 $e0
	nop                                              ; $645a: $00
	ld d, e                                          ; $645b: $53
	ld bc, $0989                                     ; $645c: $01 $89 $09
	add hl, bc                                       ; $645f: $09
	ret nz                                           ; $6460: $c0

	ld bc, $06a0                                     ; $6461: $01 $a0 $06
	inc bc                                           ; $6464: $03
	ld d, l                                          ; $6465: $55
	ldh [rSC], a                                     ; $6466: $e0 $02
	ld l, e                                          ; $6468: $6b
	ld bc, $28d4                                     ; $6469: $01 $d4 $28
	ld d, $c0                                        ; $646c: $16 $c0
	ld bc, $01a0                                     ; $646e: $01 $a0 $01
	nop                                              ; $6471: $00
	ld d, a                                          ; $6472: $57
	ret nz                                           ; $6473: $c0

	ld bc, $01a0                                     ; $6474: $01 $a0 $01
	nop                                              ; $6477: $00
	ld e, h                                          ; $6478: $5c
	pop hl                                           ; $6479: $e1
	ld [bc], a                                       ; $647a: $02
	ld [bc], a                                       ; $647b: $02
	ld b, b                                          ; $647c: $40
	ret nz                                           ; $647d: $c0

	ld bc, $06a0                                     ; $647e: $01 $a0 $06
	ld a, [bc]                                       ; $6481: $0a
	ld a, a                                          ; $6482: $7f
	jr nz, jr_086_6488                               ; $6483: $20 $03

	ld c, l                                          ; $6485: $4d
	add hl, bc                                       ; $6486: $09
	rrca                                             ; $6487: $0f

jr_086_6488:
	ret nz                                           ; $6488: $c0

	ld bc, $06a0                                     ; $6489: $01 $a0 $06
	ld a, [bc]                                       ; $648c: $0a
	add [hl]                                         ; $648d: $86
	ret nz                                           ; $648e: $c0

	ld bc, $01a0                                     ; $648f: $01 $a0 $01
	ld bc, $e087                                     ; $6492: $01 $87 $e0
	nop                                              ; $6495: $00
	jr jr_086_6499                                   ; $6496: $18 $01

	adc c                                            ; $6498: $89

jr_086_6499:
	add hl, bc                                       ; $6499: $09
	add hl, bc                                       ; $649a: $09
	ret nz                                           ; $649b: $c0

	ld bc, $06a0                                     ; $649c: $01 $a0 $06
	inc bc                                           ; $649f: $03
	ld d, l                                          ; $64a0: $55
	ldh [rSC], a                                     ; $64a1: $e0 $02
	jr nc, jr_086_64ad                               ; $64a3: $30 $08

	ret nz                                           ; $64a5: $c0

	set 0, c                                         ; $64a6: $cb $c1
	ld e, e                                          ; $64a8: $5b
	push hl                                          ; $64a9: $e5
	ld bc, $b119                                     ; $64aa: $01 $19 $b1

jr_086_64ad:
	sub d                                            ; $64ad: $92
	ld h, b                                          ; $64ae: $60
	db $fc                                           ; $64af: $fc
	adc e                                            ; $64b0: $8b
	nop                                              ; $64b1: $00
	inc c                                            ; $64b2: $0c
	or b                                             ; $64b3: $b0
	ld bc, $c006                                     ; $64b4: $01 $06 $c0
	ld bc, $01a0                                     ; $64b7: $01 $a0 $01
	ld a, [bc]                                       ; $64ba: $0a
	adc l                                            ; $64bb: $8d
	ld a, a                                          ; $64bc: $7f
	ret nz                                           ; $64bd: $c0

	nop                                              ; $64be: $00
	ld bc, $c1b4                                     ; $64bf: $01 $b4 $c1
	ld e, c                                          ; $64c2: $59
	db $e3                                           ; $64c3: $e3
	nop                                              ; $64c4: $00
	ld a, [hl]                                       ; $64c5: $7e
	db $fd                                           ; $64c6: $fd
	ld [hl], b                                       ; $64c7: $70
	adc e                                            ; $64c8: $8b
	nop                                              ; $64c9: $00
	inc c                                            ; $64ca: $0c
	ld [bc], a                                       ; $64cb: $02
	or b                                             ; $64cc: $b0
	ld l, d                                          ; $64cd: $6a
	inc bc                                           ; $64ce: $03
	ldh [rP1], a                                     ; $64cf: $e0 $00
	ld [hl], b                                       ; $64d1: $70
	ld [bc], a                                       ; $64d2: $02
	or b                                             ; $64d3: $b0
	ld l, l                                          ; $64d4: $6d
	inc bc                                           ; $64d5: $03
	ldh [rP1], a                                     ; $64d6: $e0 $00
	adc h                                            ; $64d8: $8c
	ld [bc], a                                       ; $64d9: $02
	or b                                             ; $64da: $b0
	ld l, c                                          ; $64db: $69
	inc bc                                           ; $64dc: $03
	ldh [rP1], a                                     ; $64dd: $e0 $00
	db $fc                                           ; $64df: $fc
	ld [bc], a                                       ; $64e0: $02
	or b                                             ; $64e1: $b0
	ld [hl], b                                       ; $64e2: $70
	inc bc                                           ; $64e3: $03
	ldh [rSB], a                                     ; $64e4: $e0 $01
	ld c, $02                                        ; $64e6: $0e $02
	or b                                             ; $64e8: $b0
	ld [hl], d                                       ; $64e9: $72
	inc bc                                           ; $64ea: $03
	ldh [rSB], a                                     ; $64eb: $e0 $01
	jr nz, jr_086_64f1                               ; $64ed: $20 $02

	or b                                             ; $64ef: $b0
	ld l, e                                          ; $64f0: $6b

jr_086_64f1:
	inc bc                                           ; $64f1: $03
	ldh [rSB], a                                     ; $64f2: $e0 $01
	ld [hl-], a                                      ; $64f4: $32
	ld [bc], a                                       ; $64f5: $02
	or b                                             ; $64f6: $b0
	ld l, [hl]                                       ; $64f7: $6e
	dec bc                                           ; $64f8: $0b
	or b                                             ; $64f9: $b0
	ld a, a                                          ; $64fa: $7f
	inc bc                                           ; $64fb: $03
	ldh [rSB], a                                     ; $64fc: $e0 $01
	xor a                                            ; $64fe: $af
	rst $38                                          ; $64ff: $ff
	inc bc                                           ; $6500: $03
	ldh [rSB], a                                     ; $6501: $e0 $01
	inc a                                            ; $6503: $3c
	ld [bc], a                                       ; $6504: $02
	or b                                             ; $6505: $b0
	ld l, b                                          ; $6506: $68
	dec bc                                           ; $6507: $0b
	or b                                             ; $6508: $b0
	ld a, a                                          ; $6509: $7f
	inc bc                                           ; $650a: $03
	ldh [rSB], a                                     ; $650b: $e0 $01
	ld c, e                                          ; $650d: $4b
	rst $38                                          ; $650e: $ff
	inc bc                                           ; $650f: $03
	ldh [rSB], a                                     ; $6510: $e0 $01
	ld e, a                                          ; $6512: $5f
	ld [bc], a                                       ; $6513: $02
	or b                                             ; $6514: $b0
	ld [hl], c                                       ; $6515: $71
	inc bc                                           ; $6516: $03
	ldh [rSB], a                                     ; $6517: $e0 $01
	ld [hl], c                                       ; $6519: $71
	nop                                              ; $651a: $00
	inc e                                            ; $651b: $1c
	ei                                               ; $651c: $fb
	cp $07                                           ; $651d: $fe $07
	db $fc                                           ; $651f: $fc
	ret nz                                           ; $6520: $c0

	ld h, l                                          ; $6521: $65
	push de                                          ; $6522: $d5
	add b                                            ; $6523: $80
	nop                                              ; $6524: $00
	sub c                                            ; $6525: $91
	ld de, $c080                                     ; $6526: $11 $80 $c0
	ld h, [hl]                                       ; $6529: $66
	add hl, bc                                       ; $652a: $09
	rst SubAFromHL                                          ; $652b: $d7
	ret c                                            ; $652c: $d8

	reti                                             ; $652d: $d9


	jp c, $dcdb                                      ; $652e: $da $db $dc

	db $dd                                           ; $6531: $dd
	sbc $df                                          ; $6532: $de $df
	inc bc                                           ; $6534: $03
	ldh [rSB], a                                     ; $6535: $e0 $01
	adc c                                            ; $6537: $89
	ret nz                                           ; $6538: $c0

	nop                                              ; $6539: $00
	ld a, [bc]                                       ; $653a: $0a
	sub e                                            ; $653b: $93
	ret nz                                           ; $653c: $c0

	ret c                                            ; $653d: $d8

	call nc, $22da                                   ; $653e: $d4 $da $22
	ret nz                                           ; $6541: $c0

	ld bc, $06a0                                     ; $6542: $01 $a0 $06
	ld a, [bc]                                       ; $6545: $0a
	sbc a                                            ; $6546: $9f
	ret nz                                           ; $6547: $c0

	ld bc, $01a0                                     ; $6548: $01 $a0 $01
	ld a, [bc]                                       ; $654b: $0a
	and [hl]                                         ; $654c: $a6
	pop hl                                           ; $654d: $e1
	ld [bc], a                                       ; $654e: $02
	inc bc                                           ; $654f: $03
	dec de                                           ; $6550: $1b
	ret nz                                           ; $6551: $c0

	ld bc, $06a0                                     ; $6552: $01 $a0 $06
	ld a, [bc]                                       ; $6555: $0a
	xor e                                            ; $6556: $ab
	ret nz                                           ; $6557: $c0

	ld bc, $01a0                                     ; $6558: $01 $a0 $01
	ld a, [bc]                                       ; $655b: $0a
	or h                                             ; $655c: $b4
	ret nz                                           ; $655d: $c0

	ld bc, $06a0                                     ; $655e: $01 $a0 $06
	ld a, [bc]                                       ; $6561: $0a
	cp e                                             ; $6562: $bb
	ld l, c                                          ; $6563: $69
	ret nz                                           ; $6564: $c0

	ld bc, $06a0                                     ; $6565: $01 $a0 $06
	inc bc                                           ; $6568: $03
	adc e                                            ; $6569: $8b
	db $fd                                           ; $656a: $fd
	ld h, c                                          ; $656b: $61
	adc e                                            ; $656c: $8b
	nop                                              ; $656d: $00
	nop                                              ; $656e: $00
	ld [bc], a                                       ; $656f: $02
	or b                                             ; $6570: $b0
	rrca                                             ; $6571: $0f
	add hl, bc                                       ; $6572: $09
	ret nz                                           ; $6573: $c0

	ld bc, $01a0                                     ; $6574: $01 $a0 $01
	rlca                                             ; $6577: $07
	xor l                                            ; $6578: $ad
	ldh [rP1], a                                     ; $6579: $e0 $00
	ld d, e                                          ; $657b: $53
	ld [bc], a                                       ; $657c: $02
	or b                                             ; $657d: $b0
	ld c, $09                                        ; $657e: $0e $09
	ret nz                                           ; $6580: $c0

	ld bc, $01a0                                     ; $6581: $01 $a0 $01
	rlca                                             ; $6584: $07
	or e                                             ; $6585: $b3
	ldh [rP1], a                                     ; $6586: $e0 $00
	ld b, [hl]                                       ; $6588: $46
	ld [bc], a                                       ; $6589: $02
	or b                                             ; $658a: $b0
	db $10                                           ; $658b: $10
	add hl, bc                                       ; $658c: $09
	ret nz                                           ; $658d: $c0

	ld bc, $01a0                                     ; $658e: $01 $a0 $01
	rlca                                             ; $6591: $07
	cp b                                             ; $6592: $b8
	ldh [rP1], a                                     ; $6593: $e0 $00
	add hl, sp                                       ; $6595: $39
	ld [bc], a                                       ; $6596: $02
	or b                                             ; $6597: $b0
	ld de, $c009                                     ; $6598: $11 $09 $c0
	ld bc, $01a0                                     ; $659b: $01 $a0 $01
	rlca                                             ; $659e: $07
	cp [hl]                                          ; $659f: $be
	ldh [rP1], a                                     ; $65a0: $e0 $00
	inc l                                            ; $65a2: $2c
	nop                                              ; $65a3: $00
	jr z, @-$3e                                      ; $65a4: $28 $c0

	ld bc, $01a0                                     ; $65a6: $01 $a0 $01
	ld bc, $81e3                                     ; $65a9: $01 $e3 $81
	ret nz                                           ; $65ac: $c0

	dec de                                           ; $65ad: $1b
	jp c, $d002                                      ; $65ae: $da $02 $d0

	pop de                                           ; $65b1: $d1
	inc c                                            ; $65b2: $0c
	ret nz                                           ; $65b3: $c0

	ld bc, $06a0                                     ; $65b4: $01 $a0 $06
	ld a, [bc]                                       ; $65b7: $0a
	pop bc                                           ; $65b8: $c1
	ret nz                                           ; $65b9: $c0

	ld bc, $01a0                                     ; $65ba: $01 $a0 $01
	ld a, [bc]                                       ; $65bd: $0a
	push bc                                          ; $65be: $c5
	nop                                              ; $65bf: $00
	inc c                                            ; $65c0: $0c
	ret nz                                           ; $65c1: $c0

	ld bc, $06a0                                     ; $65c2: $01 $a0 $06
	ld a, [bc]                                       ; $65c5: $0a
	jp z, $01c0                                      ; $65c6: $ca $c0 $01

	and b                                            ; $65c9: $a0
	ld bc, $cd0a                                     ; $65ca: $01 $0a $cd
	inc c                                            ; $65cd: $0c

jr_086_65ce:
	ret nz                                           ; $65ce: $c0

	ld bc, $06a0                                     ; $65cf: $01 $a0 $06
	ld a, [bc]                                       ; $65d2: $0a
	db $d3                                           ; $65d3: $d3
	ret nz                                           ; $65d4: $c0

	ld bc, $01a0                                     ; $65d5: $01 $a0 $01
	ld a, [bc]                                       ; $65d8: $0a
	ret c                                            ; $65d9: $d8

	jr @-$3e                                         ; $65da: $18 $c0

	ld bc, $06a0                                     ; $65dc: $01 $a0 $06
	inc bc                                           ; $65df: $03
	sbc l                                            ; $65e0: $9d
	ret nz                                           ; $65e1: $c0

	ld bc, $01a0                                     ; $65e2: $01 $a0 $01
	ld bc, wGenericTileDataDest+1                                     ; $65e5: $01 $e3 $c0
	ld bc, $06a0                                     ; $65e8: $01 $a0 $06
	ld a, [bc]                                       ; $65eb: $0a
	pop hl                                           ; $65ec: $e1
	ret nz                                           ; $65ed: $c0

	ld bc, $01a0                                     ; $65ee: $01 $a0 $01
	ld a, [bc]                                       ; $65f1: $0a
	add sp, $18                                      ; $65f2: $e8 $18
	ret nz                                           ; $65f4: $c0

	ld bc, $06a0                                     ; $65f5: $01 $a0 $06
	ld a, [bc]                                       ; $65f8: $0a
	ld hl, sp-$40                                    ; $65f9: $f8 $c0
	ld bc, $01a0                                     ; $65fb: $01 $a0 $01
	ld [bc], a                                       ; $65fe: $02
	dec hl                                           ; $65ff: $2b

jr_086_6600:
	ret nz                                           ; $6600: $c0

	ld bc, $06a0                                     ; $6601: $01 $a0 $06
	ld a, [bc]                                       ; $6604: $0a
	rst $38                                          ; $6605: $ff
	ret nz                                           ; $6606: $c0

	ld bc, $01a0                                     ; $6607: $01 $a0 $01
	dec bc                                           ; $660a: $0b
	rlca                                             ; $660b: $07
	jr jr_086_65ce                                   ; $660c: $18 $c0

	ld bc, $06a0                                     ; $660e: $01 $a0 $06
	dec bc                                           ; $6611: $0b
	dec bc                                           ; $6612: $0b
	ret nz                                           ; $6613: $c0

	ld bc, $01a0                                     ; $6614: $01 $a0 $01
	ld b, $b1                                        ; $6617: $06 $b1

jr_086_6619:
	ret nz                                           ; $6619: $c0

	ld bc, $06a0                                     ; $661a: $01 $a0 $06
	dec bc                                           ; $661d: $0b
	inc d                                            ; $661e: $14
	ret nz                                           ; $661f: $c0

	ld bc, $01a0                                     ; $6620: $01 $a0 $01
	dec bc                                           ; $6623: $0b
	ld e, $18                                        ; $6624: $1e $18
	ret nz                                           ; $6626: $c0

	ld bc, $06a0                                     ; $6627: $01 $a0 $06
	dec bc                                           ; $662a: $0b
	dec h                                            ; $662b: $25
	ret nz                                           ; $662c: $c0

	ld bc, $01a0                                     ; $662d: $01 $a0 $01
	dec bc                                           ; $6630: $0b
	inc [hl]                                         ; $6631: $34

jr_086_6632:
	ret nz                                           ; $6632: $c0

	ld bc, $06a0                                     ; $6633: $01 $a0 $06
	dec bc                                           ; $6636: $0b
	ld a, $c0                                        ; $6637: $3e $c0
	ld bc, $01a0                                     ; $6639: $01 $a0 $01
	dec bc                                           ; $663c: $0b
	ld b, a                                          ; $663d: $47
	jr jr_086_6600                                   ; $663e: $18 $c0

	ld bc, $06a0                                     ; $6640: $01 $a0 $06
	dec bc                                           ; $6643: $0b
	ld c, h                                          ; $6644: $4c
	ret nz                                           ; $6645: $c0

	ld bc, $01a0                                     ; $6646: $01 $a0 $01
	dec bc                                           ; $6649: $0b
	inc [hl]                                         ; $664a: $34
	ret nz                                           ; $664b: $c0

	ld bc, $06a0                                     ; $664c: $01 $a0 $06
	dec bc                                           ; $664f: $0b
	ld e, e                                          ; $6650: $5b
	ret nz                                           ; $6651: $c0

	ld bc, $01a0                                     ; $6652: $01 $a0 $01
	dec bc                                           ; $6655: $0b
	ld h, e                                          ; $6656: $63
	jr jr_086_6619                                   ; $6657: $18 $c0

	ld bc, $06a0                                     ; $6659: $01 $a0 $06
	dec bc                                           ; $665c: $0b
	ld l, d                                          ; $665d: $6a
	ret nz                                           ; $665e: $c0

	ld bc, $01a0                                     ; $665f: $01 $a0 $01
	dec bc                                           ; $6662: $0b
	inc [hl]                                         ; $6663: $34
	ret nz                                           ; $6664: $c0

	ld bc, $06a0                                     ; $6665: $01 $a0 $06
	dec bc                                           ; $6668: $0b
	ld a, c                                          ; $6669: $79
	ret nz                                           ; $666a: $c0

	ld bc, $01a0                                     ; $666b: $01 $a0 $01
	dec bc                                           ; $666e: $0b
	ld a, l                                          ; $666f: $7d
	jr jr_086_6632                                   ; $6670: $18 $c0

	ld bc, $06a0                                     ; $6672: $01 $a0 $06
	dec bc                                           ; $6675: $0b
	add l                                            ; $6676: $85
	ret nz                                           ; $6677: $c0

	ld bc, $01a0                                     ; $6678: $01 $a0 $01
	dec bc                                           ; $667b: $0b
	adc [hl]                                         ; $667c: $8e
	ret nz                                           ; $667d: $c0

	ld bc, $06a0                                     ; $667e: $01 $a0 $06
	dec bc                                           ; $6681: $0b
	sub a                                            ; $6682: $97
	ret nz                                           ; $6683: $c0

	ld bc, $01a0                                     ; $6684: $01 $a0 $01
	ld [bc], a                                       ; $6687: $02
	dec d                                            ; $6688: $15
	ld [hl+], a                                      ; $6689: $22
	ret nz                                           ; $668a: $c0

	ld bc, $06a0                                     ; $668b: $01 $a0 $06
	dec bc                                           ; $668e: $0b
	sbc a                                            ; $668f: $9f
	ret nz                                           ; $6690: $c0

	ld bc, $01a0                                     ; $6691: $01 $a0 $01
	ld [bc], a                                       ; $6694: $02
	dec d                                            ; $6695: $15
	ret nz                                           ; $6696: $c0

	ld bc, $06a0                                     ; $6697: $01 $a0 $06
	dec bc                                           ; $669a: $0b
	and l                                            ; $669b: $a5
	ret nz                                           ; $669c: $c0

	ld bc, $01a0                                     ; $669d: $01 $a0 $01
	dec bc                                           ; $66a0: $0b
	xor h                                            ; $66a1: $ac
	pop hl                                           ; $66a2: $e1
	ld [bc], a                                       ; $66a3: $02
	inc bc                                           ; $66a4: $03
	dec de                                           ; $66a5: $1b
	ret nz                                           ; $66a6: $c0

	ld bc, $06a0                                     ; $66a7: $01 $a0 $06
	dec bc                                           ; $66aa: $0b
	or l                                             ; $66ab: $b5
	ld [de], a                                       ; $66ac: $12
	ret nz                                           ; $66ad: $c0

	ld bc, $06a0                                     ; $66ae: $01 $a0 $06
	dec bc                                           ; $66b1: $0b
	cp e                                             ; $66b2: $bb
	ret nz                                           ; $66b3: $c0

	ld bc, $01a0                                     ; $66b4: $01 $a0 $01
	ld [bc], a                                       ; $66b7: $02
	dec d                                            ; $66b8: $15
	ret nz                                           ; $66b9: $c0

	ld bc, $06a0                                     ; $66ba: $01 $a0 $06
	dec bc                                           ; $66bd: $0b
	jp nz, $c012                                     ; $66be: $c2 $12 $c0

	ld bc, $06a0                                     ; $66c1: $01 $a0 $06
	dec bc                                           ; $66c4: $0b
	ret z                                            ; $66c5: $c8

	ret nz                                           ; $66c6: $c0

	ld bc, $01a0                                     ; $66c7: $01 $a0 $01
	dec bc                                           ; $66ca: $0b
	ret nc                                           ; $66cb: $d0

	ret nz                                           ; $66cc: $c0

	ld bc, $06a0                                     ; $66cd: $01 $a0 $06
	dec bc                                           ; $66d0: $0b
	db $dd                                           ; $66d1: $dd
	ld a, [bc]                                       ; $66d2: $0a
	pop bc                                           ; $66d3: $c1
	ld e, e                                          ; $66d4: $5b
	ret nz                                           ; $66d5: $c0

	inc hl                                           ; $66d6: $23
	push af                                          ; $66d7: $f5
	sub $83                                          ; $66d8: $d6 $83
	and b                                            ; $66da: $a0
	inc e                                            ; $66db: $1c
	jp c, $133d                                      ; $66dc: $da $3d $13

	ret nc                                           ; $66df: $d0

	add e                                            ; $66e0: $83
	and b                                            ; $66e1: $a0
	inc e                                            ; $66e2: $1c
	ret nz                                           ; $66e3: $c0

	sbc [hl]                                         ; $66e4: $9e
	db $dd                                           ; $66e5: $dd
	ldh [$03], a                                     ; $66e6: $e0 $03
	inc h                                            ; $66e8: $24
	ret nz                                           ; $66e9: $c0

	add hl, bc                                       ; $66ea: $09
	db $e3                                           ; $66eb: $e3
	nop                                              ; $66ec: $00
	rlca                                             ; $66ed: $07
	ret nz                                           ; $66ee: $c0

	ld hl, $ddd2                                     ; $66ef: $21 $d2 $dd
	ret nz                                           ; $66f2: $c0

	call z, $1bc0                                    ; $66f3: $cc $c0 $1b
	db $dd                                           ; $66f6: $dd
	ld [bc], a                                       ; $66f7: $02
	ret nc                                           ; $66f8: $d0

	pop de                                           ; $66f9: $d1
	jr z, @+$1d                                      ; $66fa: $28 $1b

	pop hl                                           ; $66fc: $e1
	ld [bc], a                                       ; $66fd: $02
	ld [bc], a                                       ; $66fe: $02
	ld [hl], b                                       ; $66ff: $70
	ret nz                                           ; $6700: $c0

	ld bc, $0aa0                                     ; $6701: $01 $a0 $0a
	dec bc                                           ; $6704: $0b
	ldh [c], a                                       ; $6705: $e2
	ret nz                                           ; $6706: $c0

	ld bc, $01a0                                     ; $6707: $01 $a0 $01
	dec bc                                           ; $670a: $0b
	db $e4                                           ; $670b: $e4
	pop bc                                           ; $670c: $c1
	or d                                             ; $670d: $b2
	db $e3                                           ; $670e: $e3
	nop                                              ; $670f: $00
	sub b                                            ; $6710: $90
	ret nz                                           ; $6711: $c0

	ld bc, $0aa0                                     ; $6712: $01 $a0 $0a
	dec bc                                           ; $6715: $0b
	add sp, $31                                      ; $6716: $e8 $31
	ld bc, $095f                                     ; $6718: $01 $5f $09
	ld [de], a                                       ; $671b: $12
	pop hl                                           ; $671c: $e1
	ld [bc], a                                       ; $671d: $02
	inc bc                                           ; $671e: $03
	inc de                                           ; $671f: $13
	pop bc                                           ; $6720: $c1
	or d                                             ; $6721: $b2
	db $e3                                           ; $6722: $e3
	nop                                              ; $6723: $00
	sub c                                            ; $6724: $91
	ret nz                                           ; $6725: $c0

	ld bc, $0aa0                                     ; $6726: $01 $a0 $0a
	dec bc                                           ; $6729: $0b
	db $ed                                           ; $672a: $ed
	ldh [rP1], a                                     ; $672b: $e0 $00
	sbc l                                            ; $672d: $9d
	ld bc, $0967                                     ; $672e: $01 $67 $09
	rla                                              ; $6731: $17
	pop hl                                           ; $6732: $e1
	ld [bc], a                                       ; $6733: $02
	inc bc                                           ; $6734: $03
	dec de                                           ; $6735: $1b
	ret nz                                           ; $6736: $c0

	ld bc, $0aa0                                     ; $6737: $01 $a0 $0a
	dec bc                                           ; $673a: $0b
	ldh a, [$c1]                                     ; $673b: $f0 $c1
	ld e, e                                          ; $673d: $5b
	ret nz                                           ; $673e: $c0

	inc hl                                           ; $673f: $23
	push af                                          ; $6740: $f5
	jp c, $a083                                      ; $6741: $da $83 $a0

	inc e                                            ; $6744: $1c
	db $dd                                           ; $6745: $dd
	ldh [rSC], a                                     ; $6746: $e0 $02
	ei                                               ; $6748: $fb
	ld [bc], a                                       ; $6749: $02
	jp nc, $28d3                                     ; $674a: $d2 $d3 $28

	ld d, $c0                                        ; $674d: $16 $c0
	ld bc, $01a0                                     ; $674f: $01 $a0 $01
	nop                                              ; $6752: $00
	ld h, e                                          ; $6753: $63
	ret nz                                           ; $6754: $c0

	ld bc, $01a0                                     ; $6755: $01 $a0 $01
	nop                                              ; $6758: $00
	ld l, b                                          ; $6759: $68
	pop hl                                           ; $675a: $e1
	ld [bc], a                                       ; $675b: $02
	ld [bc], a                                       ; $675c: $02
	ld [hl], b                                       ; $675d: $70
	ret nz                                           ; $675e: $c0

	ld bc, $0aa0                                     ; $675f: $01 $a0 $0a
	ld bc, $2074                                     ; $6762: $01 $74 $20
	inc bc                                           ; $6765: $03
	ld c, l                                          ; $6766: $4d
	add hl, bc                                       ; $6767: $09
	rrca                                             ; $6768: $0f
	ret nz                                           ; $6769: $c0

	ld bc, $0aa0                                     ; $676a: $01 $a0 $0a
	dec bc                                           ; $676d: $0b
	di                                               ; $676e: $f3
	ret nz                                           ; $676f: $c0

	ld bc, $01a0                                     ; $6770: $01 $a0 $01
	ld bc, $e087                                     ; $6773: $01 $87 $e0
	nop                                              ; $6776: $00
	ld d, e                                          ; $6777: $53
	ld bc, $0989                                     ; $6778: $01 $89 $09
	add hl, bc                                       ; $677b: $09
	ret nz                                           ; $677c: $c0

	ld bc, $0aa0                                     ; $677d: $01 $a0 $0a
	dec bc                                           ; $6780: $0b
	ld a, [$00e0]                                    ; $6781: $fa $e0 $00
	ret                                              ; $6784: $c9


	ld bc, $28d4                                     ; $6785: $01 $d4 $28
	ld d, $c0                                        ; $6788: $16 $c0
	ld bc, $01a0                                     ; $678a: $01 $a0 $01
	nop                                              ; $678d: $00
	ld h, e                                          ; $678e: $63
	ret nz                                           ; $678f: $c0

	ld bc, $01a0                                     ; $6790: $01 $a0 $01
	nop                                              ; $6793: $00
	ld l, b                                          ; $6794: $68
	pop hl                                           ; $6795: $e1
	ld [bc], a                                       ; $6796: $02
	ld [bc], a                                       ; $6797: $02
	ld [hl], b                                       ; $6798: $70
	ret nz                                           ; $6799: $c0

	ld bc, $0aa0                                     ; $679a: $01 $a0 $0a
	dec bc                                           ; $679d: $0b
	rst $38                                          ; $679e: $ff
	jr nz, jr_086_67a4                               ; $679f: $20 $03

	ld c, l                                          ; $67a1: $4d
	add hl, bc                                       ; $67a2: $09
	rrca                                             ; $67a3: $0f

jr_086_67a4:
	ret nz                                           ; $67a4: $c0

	ld bc, $0aa0                                     ; $67a5: $01 $a0 $0a
	inc c                                            ; $67a8: $0c
	inc bc                                           ; $67a9: $03
	ret nz                                           ; $67aa: $c0

	ld bc, $01a0                                     ; $67ab: $01 $a0 $01
	ld bc, $e087                                     ; $67ae: $01 $87 $e0
	nop                                              ; $67b1: $00
	jr jr_086_67b5                                   ; $67b2: $18 $01

	adc c                                            ; $67b4: $89

jr_086_67b5:
	add hl, bc                                       ; $67b5: $09
	add hl, bc                                       ; $67b6: $09
	ret nz                                           ; $67b7: $c0

	ld bc, $0aa0                                     ; $67b8: $01 $a0 $0a
	inc c                                            ; $67bb: $0c
	dec b                                            ; $67bc: $05
	ldh [rP1], a                                     ; $67bd: $e0 $00
	adc [hl]                                         ; $67bf: $8e
	ld [$cbc0], sp                                   ; $67c0: $08 $c0 $cb
	pop bc                                           ; $67c3: $c1
	ld e, e                                          ; $67c4: $5b
	push hl                                          ; $67c5: $e5
	ld bc, $b119                                     ; $67c6: $01 $19 $b1
	add d                                            ; $67c9: $82
	ld h, b                                          ; $67ca: $60
	db $fc                                           ; $67cb: $fc
	adc e                                            ; $67cc: $8b
	nop                                              ; $67cd: $00
	inc c                                            ; $67ce: $0c
	or b                                             ; $67cf: $b0
	ld bc, $c006                                     ; $67d0: $01 $06 $c0
	ld bc, $01a0                                     ; $67d3: $01 $a0 $01
	inc c                                            ; $67d6: $0c
	add hl, bc                                       ; $67d7: $09
	ld l, a                                          ; $67d8: $6f
	ret nz                                           ; $67d9: $c0

	nop                                              ; $67da: $00
	ld bc, $c1b4                                     ; $67db: $01 $b4 $c1
	ld e, c                                          ; $67de: $59
	db $e3                                           ; $67df: $e3
	nop                                              ; $67e0: $00
	ld a, [hl]                                       ; $67e1: $7e
	db $fd                                           ; $67e2: $fd
	ld h, b                                          ; $67e3: $60
	adc e                                            ; $67e4: $8b
	nop                                              ; $67e5: $00
	inc c                                            ; $67e6: $0c
	ld [bc], a                                       ; $67e7: $02
	or b                                             ; $67e8: $b0
	ld l, d                                          ; $67e9: $6a
	inc bc                                           ; $67ea: $03
	ldh [rP1], a                                     ; $67eb: $e0 $00
	ld l, e                                          ; $67ed: $6b
	ld [bc], a                                       ; $67ee: $02
	or b                                             ; $67ef: $b0
	ld l, l                                          ; $67f0: $6d
	inc bc                                           ; $67f1: $03
	ldh [rP1], a                                     ; $67f2: $e0 $00
	ld a, l                                          ; $67f4: $7d
	ld [bc], a                                       ; $67f5: $02
	or b                                             ; $67f6: $b0
	ld l, c                                          ; $67f7: $69
	inc bc                                           ; $67f8: $03
	ldh [rP1], a                                     ; $67f9: $e0 $00
	db $ed                                           ; $67fb: $ed
	ld [bc], a                                       ; $67fc: $02
	or b                                             ; $67fd: $b0
	ld [hl], b                                       ; $67fe: $70
	inc bc                                           ; $67ff: $03
	ldh [rSB], a                                     ; $6800: $e0 $01
	dec b                                            ; $6802: $05
	ld [bc], a                                       ; $6803: $02
	or b                                             ; $6804: $b0
	ld l, e                                          ; $6805: $6b
	inc bc                                           ; $6806: $03
	ldh [rSB], a                                     ; $6807: $e0 $01
	add hl, sp                                       ; $6809: $39
	ld [bc], a                                       ; $680a: $02
	or b                                             ; $680b: $b0
	ld l, [hl]                                       ; $680c: $6e
	dec bc                                           ; $680d: $0b
	or b                                             ; $680e: $b0
	ld a, a                                          ; $680f: $7f
	inc bc                                           ; $6810: $03
	ldh [rSB], a                                     ; $6811: $e0 $01
	call $03ff                                       ; $6813: $cd $ff $03
	ldh [rSB], a                                     ; $6816: $e0 $01
	ld b, e                                          ; $6818: $43

jr_086_6819:
	ld [bc], a                                       ; $6819: $02
	or b                                             ; $681a: $b0
	ld l, b                                          ; $681b: $68
	dec bc                                           ; $681c: $0b
	or b                                             ; $681d: $b0
	ld a, a                                          ; $681e: $7f
	inc bc                                           ; $681f: $03
	ldh [rSB], a                                     ; $6820: $e0 $01
	ld d, d                                          ; $6822: $52
	rst $38                                          ; $6823: $ff
	inc bc                                           ; $6824: $03
	ldh [rSB], a                                     ; $6825: $e0 $01
	ld h, [hl]                                       ; $6827: $66
	ld [bc], a                                       ; $6828: $02
	or b                                             ; $6829: $b0
	ld [hl], c                                       ; $682a: $71
	inc bc                                           ; $682b: $03
	ldh [rSB], a                                     ; $682c: $e0 $01
	sbc c                                            ; $682e: $99
	nop                                              ; $682f: $00
	inc de                                           ; $6830: $13
	ei                                               ; $6831: $fb
	cp $0c                                           ; $6832: $fe $0c
	db $fc                                           ; $6834: $fc
	ret nz                                           ; $6835: $c0

	ld h, l                                          ; $6836: $65
	pop de                                           ; $6837: $d1
	ld hl, sp-$40                                    ; $6838: $f8 $c0
	ld h, [hl]                                       ; $683a: $66
	ldh [rAUD2LEN], a                                ; $683b: $e0 $16
	add b                                            ; $683d: $80
	nop                                              ; $683e: $00
	sub d                                            ; $683f: $92
	inc bc                                           ; $6840: $03
	ldh [rSB], a                                     ; $6841: $e0 $01
	or b                                             ; $6843: $b0
	ret nz                                           ; $6844: $c0

	nop                                              ; $6845: $00
	ld bc, $c0ba                                     ; $6846: $01 $ba $c0
	ret c                                            ; $6849: $d8

	call nc, $0add                                   ; $684a: $d4 $dd $0a
	pop bc                                           ; $684d: $c1
	ld e, e                                          ; $684e: $5b
	ret nz                                           ; $684f: $c0

	inc hl                                           ; $6850: $23
	push af                                          ; $6851: $f5
	sub $83                                          ; $6852: $d6 $83
	and b                                            ; $6854: $a0
	inc e                                            ; $6855: $1c
	db $dd                                           ; $6856: $dd
	jr jr_086_6819                                   ; $6857: $18 $c0

	ld bc, $0aa0                                     ; $6859: $01 $a0 $0a
	inc c                                            ; $685c: $0c
	ld c, $c0                                        ; $685d: $0e $c0
	ld bc, $01a0                                     ; $685f: $01 $a0 $01
	ld bc, $c0cd                                     ; $6862: $01 $cd $c0
	ld bc, $0aa0                                     ; $6865: $01 $a0 $0a
	inc c                                            ; $6868: $0c
	dec d                                            ; $6869: $15
	ret nz                                           ; $686a: $c0

	ld bc, $01a0                                     ; $686b: $01 $a0 $01
	inc c                                            ; $686e: $0c
	dec e                                            ; $686f: $1d
	ld l, c                                          ; $6870: $69
	ret nz                                           ; $6871: $c0

	ld bc, $0aa0                                     ; $6872: $01 $a0 $0a

jr_086_6875:
	add hl, bc                                       ; $6875: $09
	jr c, jr_086_6875                                ; $6876: $38 $fd

	ld h, c                                          ; $6878: $61
	adc e                                            ; $6879: $8b
	nop                                              ; $687a: $00
	nop                                              ; $687b: $00
	ld [bc], a                                       ; $687c: $02
	or b                                             ; $687d: $b0
	rrca                                             ; $687e: $0f
	add hl, bc                                       ; $687f: $09
	ret nz                                           ; $6880: $c0

	ld bc, $01a0                                     ; $6881: $01 $a0 $01
	rlca                                             ; $6884: $07
	xor l                                            ; $6885: $ad
	ldh [rP1], a                                     ; $6886: $e0 $00
	ld d, e                                          ; $6888: $53
	ld [bc], a                                       ; $6889: $02
	or b                                             ; $688a: $b0
	ld c, $09                                        ; $688b: $0e $09
	ret nz                                           ; $688d: $c0

	ld bc, $01a0                                     ; $688e: $01 $a0 $01
	rlca                                             ; $6891: $07
	or e                                             ; $6892: $b3
	ldh [rP1], a                                     ; $6893: $e0 $00
	ld b, [hl]                                       ; $6895: $46
	ld [bc], a                                       ; $6896: $02
	or b                                             ; $6897: $b0
	db $10                                           ; $6898: $10
	add hl, bc                                       ; $6899: $09
	ret nz                                           ; $689a: $c0

	ld bc, $01a0                                     ; $689b: $01 $a0 $01
	rlca                                             ; $689e: $07
	cp b                                             ; $689f: $b8
	ldh [rP1], a                                     ; $68a0: $e0 $00
	add hl, sp                                       ; $68a2: $39
	ld [bc], a                                       ; $68a3: $02
	or b                                             ; $68a4: $b0
	ld de, $c009                                     ; $68a5: $11 $09 $c0
	ld bc, $01a0                                     ; $68a8: $01 $a0 $01
	rlca                                             ; $68ab: $07
	cp [hl]                                          ; $68ac: $be
	ldh [rP1], a                                     ; $68ad: $e0 $00
	inc l                                            ; $68af: $2c
	nop                                              ; $68b0: $00
	jr z, @-$3e                                      ; $68b1: $28 $c0

	ld bc, $01a0                                     ; $68b3: $01 $a0 $01
	ld bc, $81e3                                     ; $68b6: $01 $e3 $81
	ret nz                                           ; $68b9: $c0

	dec de                                           ; $68ba: $1b
	db $dd                                           ; $68bb: $dd
	ld [bc], a                                       ; $68bc: $02
	ret nc                                           ; $68bd: $d0

	pop de                                           ; $68be: $d1
	inc c                                            ; $68bf: $0c
	ret nz                                           ; $68c0: $c0

	ld bc, $0aa0                                     ; $68c1: $01 $a0 $0a
	inc c                                            ; $68c4: $0c
	rra                                              ; $68c5: $1f
	ret nz                                           ; $68c6: $c0

	ld bc, $01a0                                     ; $68c7: $01 $a0 $01
	ld [bc], a                                       ; $68ca: $02
	dec d                                            ; $68cb: $15
	nop                                              ; $68cc: $00
	inc c                                            ; $68cd: $0c
	ret nz                                           ; $68ce: $c0

	ld bc, $0aa0                                     ; $68cf: $01 $a0 $0a
	inc c                                            ; $68d2: $0c
	ld h, $c0                                        ; $68d3: $26 $c0
	ld bc, $01a0                                     ; $68d5: $01 $a0 $01
	inc c                                            ; $68d8: $0c
	add hl, hl                                       ; $68d9: $29
	inc c                                            ; $68da: $0c
	ret nz                                           ; $68db: $c0

jr_086_68dc:
	ld bc, $0aa0                                     ; $68dc: $01 $a0 $0a
	inc c                                            ; $68df: $0c
	ld l, $c0                                        ; $68e0: $2e $c0
	ld bc, $01a0                                     ; $68e2: $01 $a0 $01
	ld a, [bc]                                       ; $68e5: $0a
	ret c                                            ; $68e6: $d8

	ld e, $c0                                        ; $68e7: $1e $c0
	ld bc, $0aa0                                     ; $68e9: $01 $a0 $0a
	add hl, bc                                       ; $68ec: $09
	ld c, h                                          ; $68ed: $4c
	ret nz                                           ; $68ee: $c0

	ld bc, $01a0                                     ; $68ef: $01 $a0 $01
	ld [bc], a                                       ; $68f2: $02
	dec d                                            ; $68f3: $15
	ret nz                                           ; $68f4: $c0

	ld bc, $0aa0                                     ; $68f5: $01 $a0 $0a
	inc c                                            ; $68f8: $0c
	inc sp                                           ; $68f9: $33
	ret nz                                           ; $68fa: $c0

	ld bc, $01a0                                     ; $68fb: $01 $a0 $01
	inc c                                            ; $68fe: $0c
	inc a                                            ; $68ff: $3c
	ret nz                                           ; $6900: $c0

	ld bc, $0aa0                                     ; $6901: $01 $a0 $0a
	inc c                                            ; $6904: $0c
	ld b, a                                          ; $6905: $47
	ld a, [hl-]                                      ; $6906: $3a
	ret nz                                           ; $6907: $c0

	ld bc, $0aa0                                     ; $6908: $01 $a0 $0a
	add hl, bc                                       ; $690b: $09
	ld h, b                                          ; $690c: $60
	ret nz                                           ; $690d: $c0

	ld bc, $01a0                                     ; $690e: $01 $a0 $01
	ld [bc], a                                       ; $6911: $02
	dec hl                                           ; $6912: $2b
	add c                                            ; $6913: $81
	ret nz                                           ; $6914: $c0

	dec de                                           ; $6915: $1b
	db $dd                                           ; $6916: $dd
	ld [bc], a                                       ; $6917: $02
	ret nc                                           ; $6918: $d0

	pop de                                           ; $6919: $d1
	jr jr_086_68dc                                   ; $691a: $18 $c0

jr_086_691c:
	ld bc, $0aa0                                     ; $691c: $01 $a0 $0a
	inc c                                            ; $691f: $0c
	ld c, h                                          ; $6920: $4c
	ret nz                                           ; $6921: $c0

	ld bc, $01a0                                     ; $6922: $01 $a0 $01
	inc c                                            ; $6925: $0c
	ld c, a                                          ; $6926: $4f
	ret nz                                           ; $6927: $c0

	ld bc, $0aa0                                     ; $6928: $01 $a0 $0a
	inc c                                            ; $692b: $0c
	ld d, c                                          ; $692c: $51
	ret nz                                           ; $692d: $c0

	ld bc, $01a0                                     ; $692e: $01 $a0 $01
	ld [bc], a                                       ; $6931: $02
	dec d                                            ; $6932: $15
	nop                                              ; $6933: $00
	inc c                                            ; $6934: $0c

jr_086_6935:
	ret nz                                           ; $6935: $c0

	ld bc, $0aa0                                     ; $6936: $01 $a0 $0a
	inc c                                            ; $6939: $0c
	ld h, $c0                                        ; $693a: $26 $c0
	ld bc, $01a0                                     ; $693c: $01 $a0 $01
	inc bc                                           ; $693f: $03
	rst GetHLinHL                                          ; $6940: $cf
	jr @-$3e                                         ; $6941: $18 $c0

	ld bc, $0aa0                                     ; $6943: $01 $a0 $0a
	inc c                                            ; $6946: $0c
	ld e, d                                          ; $6947: $5a
	ret nz                                           ; $6948: $c0

	ld bc, $01a0                                     ; $6949: $01 $a0 $01
	inc c                                            ; $694c: $0c
	ld h, a                                          ; $694d: $67
	ret nz                                           ; $694e: $c0

	ld bc, $0aa0                                     ; $694f: $01 $a0 $0a
	inc c                                            ; $6952: $0c
	ld [hl], c                                       ; $6953: $71
	ret nz                                           ; $6954: $c0

	ld bc, $01a0                                     ; $6955: $01 $a0 $01
	inc c                                            ; $6958: $0c
	add b                                            ; $6959: $80
	jr jr_086_691c                                   ; $695a: $18 $c0

	ld bc, $0aa0                                     ; $695c: $01 $a0 $0a
	inc c                                            ; $695f: $0c
	add l                                            ; $6960: $85
	ret nz                                           ; $6961: $c0

	ld bc, $01a0                                     ; $6962: $01 $a0 $01
	inc c                                            ; $6965: $0c
	ld h, a                                          ; $6966: $67
	ret nz                                           ; $6967: $c0

	ld bc, $0aa0                                     ; $6968: $01 $a0 $0a
	inc c                                            ; $696b: $0c
	sub c                                            ; $696c: $91
	ret nz                                           ; $696d: $c0

	ld bc, $01a0                                     ; $696e: $01 $a0 $01
	dec bc                                           ; $6971: $0b
	ld h, e                                          ; $6972: $63
	jr jr_086_6935                                   ; $6973: $18 $c0

	ld bc, $0aa0                                     ; $6975: $01 $a0 $0a
	inc c                                            ; $6978: $0c
	sbc b                                            ; $6979: $98
	ret nz                                           ; $697a: $c0

	ld bc, $01a0                                     ; $697b: $01 $a0 $01
	inc c                                            ; $697e: $0c
	ld h, a                                          ; $697f: $67
	ret nz                                           ; $6980: $c0

	ld bc, $0aa0                                     ; $6981: $01 $a0 $0a
	inc c                                            ; $6984: $0c
	and h                                            ; $6985: $a4
	ret nz                                           ; $6986: $c0

	ld bc, $01a0                                     ; $6987: $01 $a0 $01
	ld [bc], a                                       ; $698a: $02
	dec d                                            ; $698b: $15
	add hl, sp                                       ; $698c: $39
	add c                                            ; $698d: $81
	ret nz                                           ; $698e: $c0

	add b                                            ; $698f: $80
	ld bc, $18d1                                     ; $6990: $01 $d1 $18
	ret nz                                           ; $6993: $c0

	ld bc, $0aa0                                     ; $6994: $01 $a0 $0a
	inc c                                            ; $6997: $0c
	xor [hl]                                         ; $6998: $ae
	ret nz                                           ; $6999: $c0

	ld bc, $01a0                                     ; $699a: $01 $a0 $01
	inc b                                            ; $699d: $04
	ccf                                              ; $699e: $3f
	ret nz                                           ; $699f: $c0

	ld bc, $0aa0                                     ; $69a0: $01 $a0 $0a
	inc c                                            ; $69a3: $0c
	or h                                             ; $69a4: $b4
	ret nz                                           ; $69a5: $c0

	ld bc, $01a0                                     ; $69a6: $01 $a0 $01
	ld [bc], a                                       ; $69a9: $02
	dec d                                            ; $69aa: $15
	ld bc, $18d2                                     ; $69ab: $01 $d2 $18
	ret nz                                           ; $69ae: $c0

	ld bc, $0aa0                                     ; $69af: $01 $a0 $0a
	inc c                                            ; $69b2: $0c
	cp d                                             ; $69b3: $ba

jr_086_69b4:
	ret nz                                           ; $69b4: $c0

	ld bc, $01a0                                     ; $69b5: $01 $a0 $01
	inc b                                            ; $69b8: $04
	ld e, a                                          ; $69b9: $5f
	ret nz                                           ; $69ba: $c0

	ld bc, $0aa0                                     ; $69bb: $01 $a0 $0a
	inc c                                            ; $69be: $0c
	pop bc                                           ; $69bf: $c1
	ret nz                                           ; $69c0: $c0

	ld bc, $01a0                                     ; $69c1: $01 $a0 $01
	ld [bc], a                                       ; $69c4: $02
	dec d                                            ; $69c5: $15
	jr @-$3e                                         ; $69c6: $18 $c0

	ld bc, $0aa0                                     ; $69c8: $01 $a0 $0a
	inc c                                            ; $69cb: $0c
	jp z, $01c0                                      ; $69cc: $ca $c0 $01

	and b                                            ; $69cf: $a0
	ld bc, $cf0c                                     ; $69d0: $01 $0c $cf
	ret nz                                           ; $69d3: $c0

	ld bc, $0aa0                                     ; $69d4: $01 $a0 $0a
	inc c                                            ; $69d7: $0c
	call nc, $01c0                                   ; $69d8: $d4 $c0 $01
	and b                                            ; $69db: $a0
	ld bc, $d80c                                     ; $69dc: $01 $0c $d8
	ld [de], a                                       ; $69df: $12
	ret nz                                           ; $69e0: $c0

	ld bc, $0aa0                                     ; $69e1: $01 $a0 $0a
	inc c                                            ; $69e4: $0c
	call c, $01c0                                    ; $69e5: $dc $c0 $01
	and b                                            ; $69e8: $a0
	ld bc, $e90c                                     ; $69e9: $01 $0c $e9
	ret nz                                           ; $69ec: $c0

	ld bc, $0aa0                                     ; $69ed: $01 $a0 $0a
	inc c                                            ; $69f0: $0c
	rst AddAOntoHL                                          ; $69f1: $ef
	jr jr_086_69b4                                   ; $69f2: $18 $c0

	ld bc, $01a0                                     ; $69f4: $01 $a0 $01
	inc c                                            ; $69f7: $0c
	ld hl, sp-$40                                    ; $69f8: $f8 $c0
	ld bc, $0aa0                                     ; $69fa: $01 $a0 $0a
	dec c                                            ; $69fd: $0d
	ld bc, $01c0                                     ; $69fe: $01 $c0 $01
	and b                                            ; $6a01: $a0
	ld bc, $b404                                     ; $6a02: $01 $04 $b4
	ret nz                                           ; $6a05: $c0

	ld bc, $0aa0                                     ; $6a06: $01 $a0 $0a
	dec c                                            ; $6a09: $0d
	ld [$c112], sp                                   ; $6a0a: $08 $12 $c1
	ld d, e                                          ; $6a0d: $53
	ret nz                                           ; $6a0e: $c0

	inc d                                            ; $6a0f: $14
	db $e3                                           ; $6a10: $e3
	nop                                              ; $6a11: $00
	ld c, l                                          ; $6a12: $4d
	ldh [rP1], a                                     ; $6a13: $e0 $00
	ld a, [bc]                                       ; $6a15: $0a
	ret nz                                           ; $6a16: $c0

	ld bc, $01a0                                     ; $6a17: $01 $a0 $01
	dec c                                            ; $6a1a: $0d
	inc de                                           ; $6a1b: $13
	pop bc                                           ; $6a1c: $c1
	dec sp                                           ; $6a1d: $3b
	db $10                                           ; $6a1e: $10
	or b                                             ; $6a1f: $b0
	sbc c                                            ; $6a20: $99
	nop                                              ; $6a21: $00
	rst $38                                          ; $6a22: $ff
	dec bc                                           ; $6a23: $0b
	pop bc                                           ; $6a24: $c1
	add a                                            ; $6a25: $87
	ret nz                                           ; $6a26: $c0

	dec bc                                           ; $6a27: $0b
	db $e3                                           ; $6a28: $e3
	nop                                              ; $6a29: $00
	dec de                                           ; $6a2a: $1b

jr_086_6a2b:
	ret nz                                           ; $6a2b: $c0

	inc c                                            ; $6a2c: $0c
	ldh [$f0], a                                     ; $6a2d: $e0 $f0
	ld [de], a                                       ; $6a2f: $12
	pop bc                                           ; $6a30: $c1
	ld d, e                                          ; $6a31: $53
	ret nz                                           ; $6a32: $c0

	inc d                                            ; $6a33: $14
	db $e3                                           ; $6a34: $e3
	nop                                              ; $6a35: $00
	ld c, l                                          ; $6a36: $4d
	ldh [rIE], a                                     ; $6a37: $e0 $ff
	and $c0                                          ; $6a39: $e6 $c0
	ld bc, $01a0                                     ; $6a3b: $01 $a0 $01
	dec c                                            ; $6a3e: $0d
	rra                                              ; $6a3f: $1f
	pop bc                                           ; $6a40: $c1
	dec sp                                           ; $6a41: $3b
	ld b, h                                          ; $6a42: $44
	ld h, e                                          ; $6a43: $63
	ei                                               ; $6a44: $fb
	ret nz                                           ; $6a45: $c0

	rla                                              ; $6a46: $17
	add e                                            ; $6a47: $83
	and b                                            ; $6a48: $a0

jr_086_6a49:
	jr jr_086_6a2b                                   ; $6a49: $18 $e0

	ld e, d                                          ; $6a4b: $5a
	ld b, $c0                                        ; $6a4c: $06 $c0
	ld bc, $01a0                                     ; $6a4e: $01 $a0 $01
	dec c                                            ; $6a51: $0d
	inc l                                            ; $6a52: $2c
	ei                                               ; $6a53: $fb
	ret nz                                           ; $6a54: $c0

	rla                                              ; $6a55: $17
	add e                                            ; $6a56: $83
	and b                                            ; $6a57: $a0

jr_086_6a58:
	jr @-$1e                                         ; $6a58: $18 $e0

	ld b, [hl]                                       ; $6a5a: $46
	ld b, $c0                                        ; $6a5b: $06 $c0
	ld bc, $01a0                                     ; $6a5d: $01 $a0 $01
	dec c                                            ; $6a60: $0d
	inc a                                            ; $6a61: $3c
	ei                                               ; $6a62: $fb
	ret nz                                           ; $6a63: $c0

	rla                                              ; $6a64: $17
	add e                                            ; $6a65: $83
	and b                                            ; $6a66: $a0
	jr jr_086_6a49                                   ; $6a67: $18 $e0

	ld [hl-], a                                      ; $6a69: $32
	ld b, $c0                                        ; $6a6a: $06 $c0
	ld bc, $01a0                                     ; $6a6c: $01 $a0 $01
	dec c                                            ; $6a6f: $0d
	ld c, d                                          ; $6a70: $4a
	ei                                               ; $6a71: $fb
	ret nz                                           ; $6a72: $c0

	rla                                              ; $6a73: $17
	add e                                            ; $6a74: $83
	and b                                            ; $6a75: $a0
	jr jr_086_6a58                                   ; $6a76: $18 $e0

	ld e, $06                                        ; $6a78: $1e $06
	ret nz                                           ; $6a7a: $c0

	ld bc, $01a0                                     ; $6a7b: $01 $a0 $01
	dec c                                            ; $6a7e: $0d
	ld e, h                                          ; $6a7f: $5c
	ld b, $c0                                        ; $6a80: $06 $c0
	ld bc, $01a0                                     ; $6a82: $01 $a0 $01
	dec c                                            ; $6a85: $0d
	ld l, d                                          ; $6a86: $6a
	add hl, bc                                       ; $6a87: $09
	daa                                              ; $6a88: $27
	add c                                            ; $6a89: $81
	ret nz                                           ; $6a8a: $c0

	add b                                            ; $6a8b: $80
	ld bc, $11d1                                     ; $6a8c: $01 $d1 $11
	add c                                            ; $6a8f: $81
	ret nz                                           ; $6a90: $c0

	ld h, l                                          ; $6a91: $65
	ld [bc], a                                       ; $6a92: $02

jr_086_6a93:
	call nc, $00d5                                   ; $6a93: $d4 $d5 $00
	nop                                              ; $6a96: $00
	ld [$e5b0], sp                                   ; $6a97: $08 $b0 $e5
	nop                                              ; $6a9a: $00
	rst $38                                          ; $6a9b: $ff
	inc bc                                           ; $6a9c: $03
	ldh [rP1], a                                     ; $6a9d: $e0 $00
	ld [de], a                                       ; $6a9f: $12
	ld [bc], a                                       ; $6aa0: $02
	jp nc, $08d3                                     ; $6aa1: $d2 $d3 $08

	or b                                             ; $6aa4: $b0
	or d                                             ; $6aa5: $b2
	nop                                              ; $6aa6: $00
	rst $38                                          ; $6aa7: $ff
	inc bc                                           ; $6aa8: $03
	ldh [rP1], a                                     ; $6aa9: $e0 $00
	ld b, $e5                                        ; $6aab: $06 $e5
	ld c, [hl]                                       ; $6aad: $4e
	nop                                              ; $6aae: $00
	nop                                              ; $6aaf: $00
	ld b, a                                          ; $6ab0: $47
	ei                                               ; $6ab1: $fb
	db $fc                                           ; $6ab2: $fc
	adc a                                            ; $6ab3: $8f
	ld [bc], a                                       ; $6ab4: $02
	ld e, e                                          ; $6ab5: $5b
	ret nc                                           ; $6ab6: $d0

	ld b, b                                          ; $6ab7: $40
	cp $32                                           ; $6ab8: $fe $32
	add d                                            ; $6aba: $82
	and b                                            ; $6abb: $a0
	ld [hl+], a                                      ; $6abc: $22
	nop                                              ; $6abd: $00
	add hl, bc                                       ; $6abe: $09
	ldh [rP1], a                                     ; $6abf: $e0 $00
	jr c, jr_086_6a93                                ; $6ac1: $38 $d0

	adc a                                            ; $6ac3: $8f
	ld [bc], a                                       ; $6ac4: $02
	ld e, e                                          ; $6ac5: $5b
	ldh [rAUD2LOW], a                                ; $6ac6: $e0 $18
	ld bc, $e009                                     ; $6ac8: $01 $09 $e0
	nop                                              ; $6acb: $00
	ld e, [hl]                                       ; $6acc: $5e
	ret nc                                           ; $6acd: $d0

	adc a                                            ; $6ace: $8f
	ld [bc], a                                       ; $6acf: $02
	ld e, e                                          ; $6ad0: $5b
	ldh [rAUD1ENV], a                                ; $6ad1: $e0 $12
	ld [bc], a                                       ; $6ad3: $02
	ld [$00e0], sp                                   ; $6ad4: $08 $e0 $00
	add b                                            ; $6ad7: $80
	ret nc                                           ; $6ad8: $d0

	adc a                                            ; $6ad9: $8f

jr_086_6ada:
	ld [bc], a                                       ; $6ada: $02
	ld e, e                                          ; $6adb: $5b
	rst SubAFromDE                                          ; $6adc: $df
	inc bc                                           ; $6add: $03
	ld [$00e0], sp                                   ; $6ade: $08 $e0 $00
	jp nc, $8fd0                                     ; $6ae1: $d2 $d0 $8f

	ld [bc], a                                       ; $6ae4: $02
	ld e, e                                          ; $6ae5: $5b
	call c, $03ff                                    ; $6ae6: $dc $ff $03
	ldh [rP1], a                                     ; $6ae9: $e0 $00
	ldh a, [$c1]                                     ; $6aeb: $f0 $c1
	add l                                            ; $6aed: $85
	nop                                              ; $6aee: $00
	add b                                            ; $6aef: $80
	ld bc, $c1c1                                     ; $6af0: $01 $c1 $c1
	inc a                                            ; $6af3: $3c
	push hl                                          ; $6af4: $e5
	ld bc, $b119                                     ; $6af5: $01 $19 $b1
	jr nc, jr_086_6ada                               ; $6af8: $30 $e0

	ld bc, $c115                                     ; $6afa: $01 $15 $c1
	or d                                             ; $6afd: $b2
	db $e3                                           ; $6afe: $e3
	nop                                              ; $6aff: $00
	inc de                                           ; $6b00: $13
	ret nz                                           ; $6b01: $c0

	add hl, bc                                       ; $6b02: $09
	db $e3                                           ; $6b03: $e3
	nop                                              ; $6b04: $00
	ld [hl], b                                       ; $6b05: $70
	ret nz                                           ; $6b06: $c0

	ld bc, $1da0                                     ; $6b07: $01 $a0 $1d
	dec c                                            ; $6b0a: $0d
	halt                                             ; $6b0b: $76
	ret nz                                           ; $6b0c: $c0

	ld bc, $01a0                                     ; $6b0d: $01 $a0 $01
	dec c                                            ; $6b10: $0d
	ld a, c                                          ; $6b11: $79
	pop bc                                           ; $6b12: $c1
	or d                                             ; $6b13: $b2
	db $e3                                           ; $6b14: $e3
	nop                                              ; $6b15: $00
	inc d                                            ; $6b16: $14
	ret nz                                           ; $6b17: $c0

	ld bc, $1da0                                     ; $6b18: $01 $a0 $1d
	dec c                                            ; $6b1b: $0d
	ld a, [hl]                                       ; $6b1c: $7e
	pop bc                                           ; $6b1d: $c1
	ld e, e                                          ; $6b1e: $5b
	ret nz                                           ; $6b1f: $c0

	ld bc, $01a0                                     ; $6b20: $01 $a0 $01
	dec c                                            ; $6b23: $0d
	add e                                            ; $6b24: $83
	nop                                              ; $6b25: $00
	add b                                            ; $6b26: $80
	ld bc, $2cac                                     ; $6b27: $01 $ac $2c
	ldh [rP1], a                                     ; $6b2a: $e0 $00
	db $e4                                           ; $6b2c: $e4
	pop bc                                           ; $6b2d: $c1
	or d                                             ; $6b2e: $b2
	db $e3                                           ; $6b2f: $e3
	nop                                              ; $6b30: $00
	inc de                                           ; $6b31: $13
	ret nz                                           ; $6b32: $c0

	add hl, bc                                       ; $6b33: $09
	db $e3                                           ; $6b34: $e3
	nop                                              ; $6b35: $00
	ld [hl], b                                       ; $6b36: $70
	ret nz                                           ; $6b37: $c0

	ld bc, $1da0                                     ; $6b38: $01 $a0 $1d
	dec c                                            ; $6b3b: $0d
	halt                                             ; $6b3c: $76
	ret nz                                           ; $6b3d: $c0

	ld bc, $01a0                                     ; $6b3e: $01 $a0 $01
	dec c                                            ; $6b41: $0d
	adc b                                            ; $6b42: $88
	pop bc                                           ; $6b43: $c1
	or d                                             ; $6b44: $b2
	db $e3                                           ; $6b45: $e3
	nop                                              ; $6b46: $00
	dec d                                            ; $6b47: $15
	ret nz                                           ; $6b48: $c0

	ld bc, $1da0                                     ; $6b49: $01 $a0 $1d
	dec c                                            ; $6b4c: $0d
	sub c                                            ; $6b4d: $91
	pop bc                                           ; $6b4e: $c1
	ld e, e                                          ; $6b4f: $5b
	ret nz                                           ; $6b50: $c0

	ld bc, $01a0                                     ; $6b51: $01 $a0 $01
	dec c                                            ; $6b54: $0d
	sbc l                                            ; $6b55: $9d
	ld e, e                                          ; $6b56: $5b
	pop bc                                           ; $6b57: $c1
	ld l, l                                          ; $6b58: $6d
	sbc $b0                                          ; $6b59: $de $b0
	ld a, a                                          ; $6b5b: $7f
	inc l                                            ; $6b5c: $2c
	ldh [rP1], a                                     ; $6b5d: $e0 $00
	or c                                             ; $6b5f: $b1
	pop bc                                           ; $6b60: $c1
	or d                                             ; $6b61: $b2
	db $e3                                           ; $6b62: $e3
	nop                                              ; $6b63: $00
	ld d, $c0                                        ; $6b64: $16 $c0
	add hl, bc                                       ; $6b66: $09
	db $e3                                           ; $6b67: $e3
	nop                                              ; $6b68: $00
	ld [hl], b                                       ; $6b69: $70
	ret nz                                           ; $6b6a: $c0

	ld bc, $1da0                                     ; $6b6b: $01 $a0 $1d
	dec c                                            ; $6b6e: $0d
	and e                                            ; $6b6f: $a3
	ret nz                                           ; $6b70: $c0

	ld bc, $01a0                                     ; $6b71: $01 $a0 $01
	dec c                                            ; $6b74: $0d
	xor l                                            ; $6b75: $ad
	pop bc                                           ; $6b76: $c1
	or d                                             ; $6b77: $b2
	db $e3                                           ; $6b78: $e3
	nop                                              ; $6b79: $00
	inc d                                            ; $6b7a: $14
	ret nz                                           ; $6b7b: $c0

	ld bc, $1da0                                     ; $6b7c: $01 $a0 $1d
	dec c                                            ; $6b7f: $0d
	ld a, [hl]                                       ; $6b80: $7e
	pop bc                                           ; $6b81: $c1
	ld e, e                                          ; $6b82: $5b
	ret nz                                           ; $6b83: $c0

	ld bc, $01a0                                     ; $6b84: $01 $a0 $01
	dec c                                            ; $6b87: $0d
	or [hl]                                          ; $6b88: $b6
	rst $38                                          ; $6b89: $ff
	daa                                              ; $6b8a: $27
	ldh [rP1], a                                     ; $6b8b: $e0 $00
	add e                                            ; $6b8d: $83
	pop bc                                           ; $6b8e: $c1
	or d                                             ; $6b8f: $b2
	db $e3                                           ; $6b90: $e3
	nop                                              ; $6b91: $00
	ld d, $c0                                        ; $6b92: $16 $c0
	add hl, bc                                       ; $6b94: $09
	db $e3                                           ; $6b95: $e3
	nop                                              ; $6b96: $00
	ld [hl], b                                       ; $6b97: $70
	ret nz                                           ; $6b98: $c0

	ld bc, $1da0                                     ; $6b99: $01 $a0 $1d
	dec c                                            ; $6b9c: $0d
	and e                                            ; $6b9d: $a3
	ret nz                                           ; $6b9e: $c0

	ld bc, $01a0                                     ; $6b9f: $01 $a0 $01
	dec c                                            ; $6ba2: $0d
	cp [hl]                                          ; $6ba3: $be

jr_086_6ba4:
	ret nz                                           ; $6ba4: $c0

	ld bc, $1da0                                     ; $6ba5: $01 $a0 $1d
	dec c                                            ; $6ba8: $0d
	rst JumpTable                                          ; $6ba9: $c7
	pop bc                                           ; $6baa: $c1
	ld e, e                                          ; $6bab: $5b
	ret nz                                           ; $6bac: $c0

	ld bc, $01a0                                     ; $6bad: $01 $a0 $01
	dec c                                            ; $6bb0: $0d
	pop de                                           ; $6bb1: $d1
	daa                                              ; $6bb2: $27
	ldh [rP1], a                                     ; $6bb3: $e0 $00
	ld e, e                                          ; $6bb5: $5b
	ret nz                                           ; $6bb6: $c0

	add hl, bc                                       ; $6bb7: $09
	db $e3                                           ; $6bb8: $e3
	nop                                              ; $6bb9: $00
	ld [hl], b                                       ; $6bba: $70
	ret nz                                           ; $6bbb: $c0

	ld bc, $1da0                                     ; $6bbc: $01 $a0 $1d
	dec c                                            ; $6bbf: $0d
	ret c                                            ; $6bc0: $d8

	ret nz                                           ; $6bc1: $c0

	ld bc, $01a0                                     ; $6bc2: $01 $a0 $01
	dec c                                            ; $6bc5: $0d
	ldh [$c1], a                                     ; $6bc6: $e0 $c1
	or d                                             ; $6bc8: $b2
	db $e3                                           ; $6bc9: $e3
	nop                                              ; $6bca: $00
	rla                                              ; $6bcb: $17
	ret nz                                           ; $6bcc: $c0

	ld bc, $1da0                                     ; $6bcd: $01 $a0 $1d
	dec c                                            ; $6bd0: $0d
	db $ec                                           ; $6bd1: $ec
	pop bc                                           ; $6bd2: $c1
	ld e, e                                          ; $6bd3: $5b
	ret nz                                           ; $6bd4: $c0

	ld bc, $01a0                                     ; $6bd5: $01 $a0 $01
	dec c                                            ; $6bd8: $0d
	ld hl, sp+$34                                    ; $6bd9: $f8 $34
	ldh [rP1], a                                     ; $6bdb: $e0 $00
	inc sp                                           ; $6bdd: $33
	pop bc                                           ; $6bde: $c1
	or d                                             ; $6bdf: $b2
	db $e3                                           ; $6be0: $e3
	nop                                              ; $6be1: $00
	jr jr_086_6ba4                                   ; $6be2: $18 $c0

	add hl, bc                                       ; $6be4: $09
	db $e3                                           ; $6be5: $e3
	nop                                              ; $6be6: $00
	ld [hl], b                                       ; $6be7: $70
	ret nz                                           ; $6be8: $c0

	ld bc, $1da0                                     ; $6be9: $01 $a0 $1d
	ld c, $02                                        ; $6bec: $0e $02
	ret nz                                           ; $6bee: $c0

	ld bc, $01a0                                     ; $6bef: $01 $a0 $01
	ld c, $09                                        ; $6bf2: $0e $09
	pop bc                                           ; $6bf4: $c1
	or d                                             ; $6bf5: $b2
	db $e3                                           ; $6bf6: $e3
	nop                                              ; $6bf7: $00
	add hl, de                                       ; $6bf8: $19
	ret nz                                           ; $6bf9: $c0

	ld bc, $1da0                                     ; $6bfa: $01 $a0 $1d
	ld c, $15                                        ; $6bfd: $0e $15
	pop bc                                           ; $6bff: $c1
	ld e, e                                          ; $6c00: $5b
	ret nz                                           ; $6c01: $c0

	ld bc, $01a0                                     ; $6c02: $01 $a0 $01
	ld c, $22                                        ; $6c05: $0e $22
	pop bc                                           ; $6c07: $c1
	ld l, e                                          ; $6c08: $6b
	pop de                                           ; $6c09: $d1
	sbc $00                                          ; $6c0a: $de $00
	add b                                            ; $6c0c: $80
	ld [bc], a                                       ; $6c0d: $02
	xor d                                            ; $6c0e: $aa
	inc hl                                           ; $6c0f: $23
	pop bc                                           ; $6c10: $c1
	ld d, e                                          ; $6c11: $53
	ret nz                                           ; $6c12: $c0

	inc d                                            ; $6c13: $14
	db $e3                                           ; $6c14: $e3
	nop                                              ; $6c15: $00
	inc a                                            ; $6c16: $3c
	ret nz                                           ; $6c17: $c0

	inc c                                            ; $6c18: $0c
	ldh [$3c], a                                     ; $6c19: $e0 $3c
	ret nz                                           ; $6c1b: $c0

	dec bc                                           ; $6c1c: $0b
	db $e3                                           ; $6c1d: $e3
	nop                                              ; $6c1e: $00
	db $10                                           ; $6c1f: $10
	pop bc                                           ; $6c20: $c1
	ld d, l                                          ; $6c21: $55
	pop de                                           ; $6c22: $d1
	ret nz                                           ; $6c23: $c0

	nop                                              ; $6c24: $00
	ld c, $29                                        ; $6c25: $0e $29
	ret nz                                           ; $6c27: $c0

	ld bc, $01a0                                     ; $6c28: $01 $a0 $01
	ld c, $2d                                        ; $6c2b: $0e $2d
	pop bc                                           ; $6c2d: $c1
	dec sp                                           ; $6c2e: $3b
	pop hl                                           ; $6c2f: $e1
	ld [bc], a                                       ; $6c30: $02
	ld [bc], a                                       ; $6c31: $02
	sbc [hl]                                         ; $6c32: $9e
	sub a                                            ; $6c33: $97
	rlca                                             ; $6c34: $07
	add hl, bc                                       ; $6c35: $09
	inc a                                            ; $6c36: $3c
	ld h, d                                          ; $6c37: $62
	cp $06                                           ; $6c38: $fe $06
	add b                                            ; $6c3a: $80
	nop                                              ; $6c3b: $00
	or b                                             ; $6c3c: $b0
	add b                                            ; $6c3d: $80
	and b                                            ; $6c3e: $a0
	nop                                              ; $6c3f: $00
	inc c                                            ; $6c40: $0c
	or b                                             ; $6c41: $b0
	cp a                                             ; $6c42: $bf
	inc b                                            ; $6c43: $04
	push hl                                          ; $6c44: $e5
	ld bc, $b119                                     ; $6c45: $01 $19 $b1
	rst $38                                          ; $6c48: $ff
	inc bc                                           ; $6c49: $03
	db $e4                                           ; $6c4a: $e4
	ld [bc], a                                       ; $6c4b: $02
	ld [$06fe], sp                                   ; $6c4c: $08 $fe $06
	add b                                            ; $6c4f: $80
	nop                                              ; $6c50: $00
	or c                                             ; $6c51: $b1
	add b                                            ; $6c52: $80
	and b                                            ; $6c53: $a0
	ld bc, $b00c                                     ; $6c54: $01 $0c $b0
	xor d                                            ; $6c57: $aa
	inc b                                            ; $6c58: $04
	push hl                                          ; $6c59: $e5
	ld bc, $b119                                     ; $6c5a: $01 $19 $b1
	rst $38                                          ; $6c5d: $ff
	inc bc                                           ; $6c5e: $03
	db $e4                                           ; $6c5f: $e4
	nop                                              ; $6c60: $00
	ld [hl], a                                       ; $6c61: $77
	add b                                            ; $6c62: $80
	nop                                              ; $6c63: $00
	or d                                             ; $6c64: $b2
	inc c                                            ; $6c65: $0c
	or b                                             ; $6c66: $b0
	ld a, a                                          ; $6c67: $7f
	inc b                                            ; $6c68: $04
	push hl                                          ; $6c69: $e5
	ld bc, $b119                                     ; $6c6a: $01 $19 $b1
	rst $38                                          ; $6c6d: $ff
	inc bc                                           ; $6c6e: $03
	db $e4                                           ; $6c6f: $e4
	nop                                              ; $6c70: $00
	inc bc                                           ; $6c71: $03
	nop                                              ; $6c72: $00
	add hl, bc                                       ; $6c73: $09
	ld h, d                                          ; $6c74: $62
	pop bc                                           ; $6c75: $c1
	ld d, e                                          ; $6c76: $53
	ret nz                                           ; $6c77: $c0

	inc d                                            ; $6c78: $14
	db $e3                                           ; $6c79: $e3
	nop                                              ; $6c7a: $00
	inc a                                            ; $6c7b: $3c
	ret nz                                           ; $6c7c: $c0

	ld bc, $01a0                                     ; $6c7d: $01 $a0 $01
	nop                                              ; $6c80: $00
	ld bc, $0bc0                                     ; $6c81: $01 $c0 $0b
	db $e3                                           ; $6c84: $e3
	nop                                              ; $6c85: $00
	db $10                                           ; $6c86: $10
	pop bc                                           ; $6c87: $c1
	ld d, l                                          ; $6c88: $55
	pop de                                           ; $6c89: $d1
	ret nz                                           ; $6c8a: $c0

	ld bc, $0ba0                                     ; $6c8b: $01 $a0 $0b
	nop                                              ; $6c8e: $00
	ld [$59c1], sp                                   ; $6c8f: $08 $c1 $59
	db $e3                                           ; $6c92: $e3
	ld bc, $c016                                     ; $6c93: $01 $16 $c0
	ld bc, $01a0                                     ; $6c96: $01 $a0 $01
	nop                                              ; $6c99: $00
	ld a, [bc]                                       ; $6c9a: $0a
	ret nz                                           ; $6c9b: $c0

	add hl, bc                                       ; $6c9c: $09
	db $e3                                           ; $6c9d: $e3
	nop                                              ; $6c9e: $00
	ld d, a                                          ; $6c9f: $57
	ret nz                                           ; $6ca0: $c0

	set 0, b                                         ; $6ca1: $cb $c0
	ld de, $00e3                                     ; $6ca3: $11 $e3 $00
	inc a                                            ; $6ca6: $3c
	pop hl                                           ; $6ca7: $e1
	ld [bc], a                                       ; $6ca8: $02
	ld [bc], a                                       ; $6ca9: $02
	cp b                                             ; $6caa: $b8
	ret nz                                           ; $6cab: $c0

	ld bc, $0ba0                                     ; $6cac: $01 $a0 $0b
	nop                                              ; $6caf: $00
	dec de                                           ; $6cb0: $1b
	ret nz                                           ; $6cb1: $c0

	ld bc, $01a0                                     ; $6cb2: $01 $a0 $01
	nop                                              ; $6cb5: $00
	dec h                                            ; $6cb6: $25
	ret nz                                           ; $6cb7: $c0

	ld bc, $0ba0                                     ; $6cb8: $01 $a0 $0b
	nop                                              ; $6cbb: $00
	dec hl                                           ; $6cbc: $2b
	pop bc                                           ; $6cbd: $c1
	ld e, e                                          ; $6cbe: $5b
	ret nz                                           ; $6cbf: $c0

	ld bc, $01a0                                     ; $6cc0: $01 $a0 $01
	nop                                              ; $6cc3: $00
	ld a, [hl-]                                      ; $6cc4: $3a
	ld b, b                                          ; $6cc5: $40
	add b                                            ; $6cc6: $80
	nop                                              ; $6cc7: $00
	or d                                             ; $6cc8: $b2
	nop                                              ; $6cc9: $00
	add b                                            ; $6cca: $80
	and b                                            ; $6ccb: $a0
	ld bc, $6bc1                                     ; $6ccc: $01 $c1 $6b
	pop de                                           ; $6ccf: $d1
	rst SubAFromDE                                          ; $6cd0: $df
	ret nz                                           ; $6cd1: $c0

	set 4, l                                         ; $6cd2: $cb $e5
	ld bc, $b119                                     ; $6cd4: $01 $19 $b1
	jr z, jr_086_6d1b                                ; $6cd7: $28 $42

	pop bc                                           ; $6cd9: $c1
	ld d, e                                          ; $6cda: $53
	ret nz                                           ; $6cdb: $c0

	inc d                                            ; $6cdc: $14
	db $e3                                           ; $6cdd: $e3
	nop                                              ; $6cde: $00
	inc a                                            ; $6cdf: $3c
	ld b, b                                          ; $6ce0: $40
	add b                                            ; $6ce1: $80
	nop                                              ; $6ce2: $00
	or c                                             ; $6ce3: $b1
	nop                                              ; $6ce4: $00
	add b                                            ; $6ce5: $80
	and b                                            ; $6ce6: $a0
	nop                                              ; $6ce7: $00
	ret nz                                           ; $6ce8: $c0

	ld bc, $01a0                                     ; $6ce9: $01 $a0 $01
	nop                                              ; $6cec: $00
	ld b, [hl]                                       ; $6ced: $46
	ret nz                                           ; $6cee: $c0

	add hl, bc                                       ; $6cef: $09
	db $e3                                           ; $6cf0: $e3
	nop                                              ; $6cf1: $00
	ld l, d                                          ; $6cf2: $6a
	ret nz                                           ; $6cf3: $c0

	ld bc, $07a0                                     ; $6cf4: $01 $a0 $07
	nop                                              ; $6cf7: $00
	ld e, d                                          ; $6cf8: $5a
	pop hl                                           ; $6cf9: $e1
	ld [bc], a                                       ; $6cfa: $02
	ld [bc], a                                       ; $6cfb: $02
	call z, $01c0                                    ; $6cfc: $cc $c0 $01
	and b                                            ; $6cff: $a0
	ld bc, $5e00                                     ; $6d00: $01 $00 $5e
	ret nz                                           ; $6d03: $c0

	ld bc, $07a0                                     ; $6d04: $01 $a0 $07
	nop                                              ; $6d07: $00
	ld l, b                                          ; $6d08: $68
	ret nz                                           ; $6d09: $c0

	ld bc, $01a0                                     ; $6d0a: $01 $a0 $01
	nop                                              ; $6d0d: $00
	ld [hl], l                                       ; $6d0e: $75
	ret nz                                           ; $6d0f: $c0

	ld bc, $07a0                                     ; $6d10: $01 $a0 $07
	nop                                              ; $6d13: $00
	add [hl]                                         ; $6d14: $86
	ret nz                                           ; $6d15: $c0

	ld bc, $01a0                                     ; $6d16: $01 $a0 $01
	nop                                              ; $6d19: $00
	sub e                                            ; $6d1a: $93

jr_086_6d1b:
	ld c, $00                                        ; $6d1b: $0e $00
	sbc h                                            ; $6d1d: $9c
	add hl, bc                                       ; $6d1e: $09
	inc bc                                           ; $6d1f: $03
	db $e4                                           ; $6d20: $e4
	nop                                              ; $6d21: $00
	add hl, bc                                       ; $6d22: $09
	nop                                              ; $6d23: $00
	and d                                            ; $6d24: $a2
	add hl, bc                                       ; $6d25: $09
	inc bc                                           ; $6d26: $03
	db $e4                                           ; $6d27: $e4
	nop                                              ; $6d28: $00
	and h                                            ; $6d29: $a4
	add hl, bc                                       ; $6d2a: $09
	and b                                            ; $6d2b: $a0
	ret nz                                           ; $6d2c: $c0

	ld bc, $07a0                                     ; $6d2d: $01 $a0 $07
	nop                                              ; $6d30: $00
	and l                                            ; $6d31: $a5
	ret nz                                           ; $6d32: $c0

	ld bc, $01a0                                     ; $6d33: $01 $a0 $01
	nop                                              ; $6d36: $00
	or a                                             ; $6d37: $b7
	ret nz                                           ; $6d38: $c0

	ld bc, $07a0                                     ; $6d39: $01 $a0 $07
	nop                                              ; $6d3c: $00
	cp a                                             ; $6d3d: $bf
	pop bc                                           ; $6d3e: $c1
	ld e, e                                          ; $6d3f: $5b
	ret nz                                           ; $6d40: $c0

	ld bc, $01a0                                     ; $6d41: $01 $a0 $01
	nop                                              ; $6d44: $00
	call z, $3cc1                                    ; $6d45: $cc $c1 $3c
	pop bc                                           ; $6d48: $c1
	ld e, c                                          ; $6d49: $59
	db $e3                                           ; $6d4a: $e3
	nop                                              ; $6d4b: $00
	ld h, l                                          ; $6d4c: $65
	ret nz                                           ; $6d4d: $c0

	ld bc, $01a0                                     ; $6d4e: $01 $a0 $01
	nop                                              ; $6d51: $00
	sub $c0                                          ; $6d52: $d6 $c0
	ld bc, $01a0                                     ; $6d54: $01 $a0 $01
	nop                                              ; $6d57: $00
	ldh [c], a                                       ; $6d58: $e2
	ret nz                                           ; $6d59: $c0

	ld bc, $0ba0                                     ; $6d5a: $01 $a0 $0b
	nop                                              ; $6d5d: $00
	db $eb                                           ; $6d5e: $eb
	ret nz                                           ; $6d5f: $c0

	add hl, bc                                       ; $6d60: $09
	db $e3                                           ; $6d61: $e3
	nop                                              ; $6d62: $00
	ld d, a                                          ; $6d63: $57
	pop hl                                           ; $6d64: $e1
	ld [bc], a                                       ; $6d65: $02
	ld [bc], a                                       ; $6d66: $02
	or d                                             ; $6d67: $b2
	ret nz                                           ; $6d68: $c0

	ld bc, $01a0                                     ; $6d69: $01 $a0 $01
	nop                                              ; $6d6c: $00
	db $ed                                           ; $6d6d: $ed
	ret nz                                           ; $6d6e: $c0

	ld bc, $0ba0                                     ; $6d6f: $01 $a0 $0b
	nop                                              ; $6d72: $00
	ld hl, sp-$40                                    ; $6d73: $f8 $c0
	ld bc, $01a0                                     ; $6d75: $01 $a0 $01
	ld bc, $c006                                     ; $6d78: $01 $06 $c0
	ld bc, $0ba0                                     ; $6d7b: $01 $a0 $0b
	ld bc, $c00d                                     ; $6d7e: $01 $0d $c0
	ld bc, $01a0                                     ; $6d81: $01 $a0 $01
	ld bc, $c018                                     ; $6d84: $01 $18 $c0
	ld bc, $0ba0                                     ; $6d87: $01 $a0 $0b
	ld bc, $c020                                     ; $6d8a: $01 $20 $c0
	ld bc, $01a0                                     ; $6d8d: $01 $a0 $01
	ld bc, $c035                                     ; $6d90: $01 $35 $c0
	ld bc, $0ba0                                     ; $6d93: $01 $a0 $0b
	ld bc, $c043                                     ; $6d96: $01 $43 $c0
	ld bc, $01a0                                     ; $6d99: $01 $a0 $01
	ld bc, $c050                                     ; $6d9c: $01 $50 $c0
	ld bc, $0ba0                                     ; $6d9f: $01 $a0 $0b
	ld bc, $c059                                     ; $6da2: $01 $59 $c0
	ld bc, $01a0                                     ; $6da5: $01 $a0 $01
	ld bc, $c06f                                     ; $6da8: $01 $6f $c0
	ld bc, $0ba0                                     ; $6dab: $01 $a0 $0b
	ld bc, $c176                                     ; $6dae: $01 $76 $c1
	ld e, e                                          ; $6db1: $5b
	ret nz                                           ; $6db2: $c0

	ld bc, $01a0                                     ; $6db3: $01 $a0 $01
	ld bc, $c08e                                     ; $6db6: $01 $8e $c0
	reti                                             ; $6db9: $d9


	push de                                          ; $6dba: $d5
	ret c                                            ; $6dbb: $d8

	pop bc                                           ; $6dbc: $c1
	inc a                                            ; $6dbd: $3c
	nop                                              ; $6dbe: $00
	add b                                            ; $6dbf: $80
	ld [bc], a                                       ; $6dc0: $02
	xor h                                            ; $6dc1: $ac
	pop bc                                           ; $6dc2: $c1
	ld l, e                                          ; $6dc3: $6b
	jp nc, $c0df                                     ; $6dc4: $d2 $df $c0

	set 4, l                                         ; $6dc7: $cb $e5
	ld bc, $b119                                     ; $6dc9: $01 $19 $b1
	add hl, bc                                       ; $6dcc: $09
	add l                                            ; $6dcd: $85
	ret nz                                           ; $6dce: $c0

	ld bc, $07a0                                     ; $6dcf: $01 $a0 $07
	ld bc, $c0a8                                     ; $6dd2: $01 $a8 $c0
	ld bc, $01a0                                     ; $6dd5: $01 $a0 $01
	ld bc, $c0bb                                     ; $6dd8: $01 $bb $c0
	ld bc, $07a0                                     ; $6ddb: $01 $a0 $07
	ld bc, $c0ce                                     ; $6dde: $01 $ce $c0
	ld bc, $01a0                                     ; $6de1: $01 $a0 $01
	ld bc, $c0d6                                     ; $6de4: $01 $d6 $c0
	ld bc, $07a0                                     ; $6de7: $01 $a0 $07
	ld bc, wGenericTileDataFinalDest+1                                     ; $6dea: $01 $e7 $c0
	ld bc, $01a0                                     ; $6ded: $01 $a0 $01
	ld bc, $c0e9                                     ; $6df0: $01 $e9 $c0
	ld bc, $07a0                                     ; $6df3: $01 $a0 $07
	ld bc, $c0fd                                     ; $6df6: $01 $fd $c0
	ld bc, $01a0                                     ; $6df9: $01 $a0 $01
	ld [bc], a                                       ; $6dfc: $02
	ld [$01c0], sp                                   ; $6dfd: $08 $c0 $01
	and b                                            ; $6e00: $a0
	rlca                                             ; $6e01: $07
	ld [bc], a                                       ; $6e02: $02
	jr @-$3d                                         ; $6e03: $18 $c1

	ld e, e                                          ; $6e05: $5b
	ret nz                                           ; $6e06: $c0

	add hl, bc                                       ; $6e07: $09
	db $e3                                           ; $6e08: $e3
	nop                                              ; $6e09: $00
	ld d, a                                          ; $6e0a: $57
	ret nz                                           ; $6e0b: $c0

	ld bc, $0ba0                                     ; $6e0c: $01 $a0 $0b
	ld [bc], a                                       ; $6e0f: $02
	ld [hl+], a                                      ; $6e10: $22
	pop hl                                           ; $6e11: $e1
	ld [bc], a                                       ; $6e12: $02
	ld [bc], a                                       ; $6e13: $02
	or d                                             ; $6e14: $b2
	ret nz                                           ; $6e15: $c0

	ld bc, $01a0                                     ; $6e16: $01 $a0 $01
	nop                                              ; $6e19: $00
	db $ed                                           ; $6e1a: $ed
	ret nz                                           ; $6e1b: $c0

	ld bc, $0ba0                                     ; $6e1c: $01 $a0 $0b
	ld [bc], a                                       ; $6e1f: $02
	cpl                                              ; $6e20: $2f
	ret nz                                           ; $6e21: $c0

	ld bc, $01a0                                     ; $6e22: $01 $a0 $01
	ld [bc], a                                       ; $6e25: $02
	dec [hl]                                         ; $6e26: $35
	ret nz                                           ; $6e27: $c0

	ld bc, $0ba0                                     ; $6e28: $01 $a0 $0b
	ld [bc], a                                       ; $6e2b: $02
	ccf                                              ; $6e2c: $3f
	ret nz                                           ; $6e2d: $c0

	ld bc, $01a0                                     ; $6e2e: $01 $a0 $01
	ld [bc], a                                       ; $6e31: $02
	ld c, a                                          ; $6e32: $4f
	ret nz                                           ; $6e33: $c0

	ld bc, $0ba0                                     ; $6e34: $01 $a0 $0b
	ld [bc], a                                       ; $6e37: $02
	ld e, d                                          ; $6e38: $5a
	ret nz                                           ; $6e39: $c0

	ld bc, $01a0                                     ; $6e3a: $01 $a0 $01
	ld [bc], a                                       ; $6e3d: $02
	ld [hl], d                                       ; $6e3e: $72
	ret nz                                           ; $6e3f: $c0

	ld bc, $0ba0                                     ; $6e40: $01 $a0 $0b
	ld [bc], a                                       ; $6e43: $02
	ld [hl], l                                       ; $6e44: $75
	pop bc                                           ; $6e45: $c1
	ld e, e                                          ; $6e46: $5b
	ret nz                                           ; $6e47: $c0

	ld bc, $01a0                                     ; $6e48: $01 $a0 $01
	ld [bc], a                                       ; $6e4b: $02
	ld a, l                                          ; $6e4c: $7d
	ret nz                                           ; $6e4d: $c0

	set 4, l                                         ; $6e4e: $cb $e5
	ld bc, $b119                                     ; $6e50: $01 $19 $b1
	add hl, bc                                       ; $6e53: $09
	ret nz                                           ; $6e54: $c0

	rst SubAFromBC                                          ; $6e55: $e7
	pop bc                                           ; $6e56: $c1
	dec sp                                           ; $6e57: $3b
	pop bc                                           ; $6e58: $c1
	ld d, e                                          ; $6e59: $53
	ret nz                                           ; $6e5a: $c0

	inc d                                            ; $6e5b: $14
	db $e3                                           ; $6e5c: $e3
	nop                                              ; $6e5d: $00
	inc a                                            ; $6e5e: $3c
	ret nz                                           ; $6e5f: $c0

	add hl, bc                                       ; $6e60: $09
	db $e3                                           ; $6e61: $e3
	nop                                              ; $6e62: $00
	ld l, d                                          ; $6e63: $6a
	pop hl                                           ; $6e64: $e1
	ld [bc], a                                       ; $6e65: $02
	ld [bc], a                                       ; $6e66: $02
	call z, $01c0                                    ; $6e67: $cc $c0 $01
	and b                                            ; $6e6a: $a0
	rlca                                             ; $6e6b: $07
	ld [bc], a                                       ; $6e6c: $02
	add a                                            ; $6e6d: $87
	ret nz                                           ; $6e6e: $c0

	ld bc, $01a0                                     ; $6e6f: $01 $a0 $01
	ld [bc], a                                       ; $6e72: $02
	adc a                                            ; $6e73: $8f
	ret nz                                           ; $6e74: $c0

	ld bc, $07a0                                     ; $6e75: $01 $a0 $07
	ld [bc], a                                       ; $6e78: $02
	sbc c                                            ; $6e79: $99
	ret nz                                           ; $6e7a: $c0

	ld bc, $01a0                                     ; $6e7b: $01 $a0 $01
	ld [bc], a                                       ; $6e7e: $02
	and e                                            ; $6e7f: $a3
	ret nz                                           ; $6e80: $c0

	ld bc, $07a0                                     ; $6e81: $01 $a0 $07
	ld [bc], a                                       ; $6e84: $02
	xor e                                            ; $6e85: $ab
	ret nz                                           ; $6e86: $c0

	ld bc, $01a0                                     ; $6e87: $01 $a0 $01
	ld [bc], a                                       ; $6e8a: $02
	or e                                             ; $6e8b: $b3
	ret nz                                           ; $6e8c: $c0

	ld bc, $07a0                                     ; $6e8d: $01 $a0 $07
	ld [bc], a                                       ; $6e90: $02
	or [hl]                                          ; $6e91: $b6
	ret nz                                           ; $6e92: $c0

	ld bc, $01a0                                     ; $6e93: $01 $a0 $01
	ld [bc], a                                       ; $6e96: $02
	cp d                                             ; $6e97: $ba
	ret nz                                           ; $6e98: $c0

	ld bc, $07a0                                     ; $6e99: $01 $a0 $07
	ld [bc], a                                       ; $6e9c: $02
	cp l                                             ; $6e9d: $bd
	pop bc                                           ; $6e9e: $c1
	add a                                            ; $6e9f: $87
	ret nz                                           ; $6ea0: $c0

	dec bc                                           ; $6ea1: $0b
	db $e3                                           ; $6ea2: $e3
	nop                                              ; $6ea3: $00
	ld b, b                                          ; $6ea4: $40
	ret nz                                           ; $6ea5: $c0

	nop                                              ; $6ea6: $00
	ld [bc], a                                       ; $6ea7: $02
	pop bc                                           ; $6ea8: $c1
	pop bc                                           ; $6ea9: $c1
	ld e, e                                          ; $6eaa: $5b
	ret nz                                           ; $6eab: $c0

	ld bc, $01a0                                     ; $6eac: $01 $a0 $01
	ld [bc], a                                       ; $6eaf: $02
	add $c0                                          ; $6eb0: $c6 $c0
	add hl, bc                                       ; $6eb2: $09
	db $e3                                           ; $6eb3: $e3
	nop                                              ; $6eb4: $00
	ld d, a                                          ; $6eb5: $57
	pop hl                                           ; $6eb6: $e1
	ld [bc], a                                       ; $6eb7: $02
	ld [bc], a                                       ; $6eb8: $02
	or d                                             ; $6eb9: $b2
	ret nz                                           ; $6eba: $c0

	ld bc, $0ba0                                     ; $6ebb: $01 $a0 $0b
	ld [bc], a                                       ; $6ebe: $02
	ret nc                                           ; $6ebf: $d0

	ret nz                                           ; $6ec0: $c0

	ld bc, $01a0                                     ; $6ec1: $01 $a0 $01
	ld [bc], a                                       ; $6ec4: $02
	reti                                             ; $6ec5: $d9


	ret nz                                           ; $6ec6: $c0

	ld bc, $0ba0                                     ; $6ec7: $01 $a0 $0b
	ld [bc], a                                       ; $6eca: $02
	ldh [c], a                                       ; $6ecb: $e2
	pop hl                                           ; $6ecc: $e1
	ld [bc], a                                       ; $6ecd: $02
	rlca                                             ; $6ece: $07
	sbc e                                            ; $6ecf: $9b
	ret nz                                           ; $6ed0: $c0

	ld bc, $01a0                                     ; $6ed1: $01 $a0 $01
	ld [bc], a                                       ; $6ed4: $02
	db $f4                                           ; $6ed5: $f4
	ret nz                                           ; $6ed6: $c0

	ld bc, $0ba0                                     ; $6ed7: $01 $a0 $0b
	ld [bc], a                                       ; $6eda: $02
	db $fd                                           ; $6edb: $fd
	pop bc                                           ; $6edc: $c1
	ld e, e                                          ; $6edd: $5b
	pop bc                                           ; $6ede: $c1
	dec sp                                           ; $6edf: $3b
	ret nz                                           ; $6ee0: $c0

	inc c                                            ; $6ee1: $0c
	ldh [$3c], a                                     ; $6ee2: $e0 $3c
	pop hl                                           ; $6ee4: $e1
	ld [bc], a                                       ; $6ee5: $02
	rlca                                             ; $6ee6: $07
	sbc e                                            ; $6ee7: $9b
	ret nz                                           ; $6ee8: $c0

	ld bc, $01a0                                     ; $6ee9: $01 $a0 $01
	inc bc                                           ; $6eec: $03
	ld c, $c0                                        ; $6eed: $0e $c0
	add hl, bc                                       ; $6eef: $09
	db $e3                                           ; $6ef0: $e3
	nop                                              ; $6ef1: $00
	ld l, d                                          ; $6ef2: $6a
	pop hl                                           ; $6ef3: $e1
	ld [bc], a                                       ; $6ef4: $02
	ld [bc], a                                       ; $6ef5: $02
	call z, $01c0                                    ; $6ef6: $cc $c0 $01
	and b                                            ; $6ef9: $a0
	rlca                                             ; $6efa: $07
	inc bc                                           ; $6efb: $03
	ld a, [de]                                       ; $6efc: $1a
	ret nz                                           ; $6efd: $c0

	ld bc, $01a0                                     ; $6efe: $01 $a0 $01
	inc bc                                           ; $6f01: $03
	inc e                                            ; $6f02: $1c
	ret nz                                           ; $6f03: $c0

	ld bc, $07a0                                     ; $6f04: $01 $a0 $07
	inc bc                                           ; $6f07: $03
	inc hl                                           ; $6f08: $23
	ret nz                                           ; $6f09: $c0

	ld bc, $01a0                                     ; $6f0a: $01 $a0 $01
	inc bc                                           ; $6f0d: $03
	daa                                              ; $6f0e: $27
	ret nz                                           ; $6f0f: $c0

	ld bc, $07a0                                     ; $6f10: $01 $a0 $07
	inc bc                                           ; $6f13: $03
	dec [hl]                                         ; $6f14: $35
	ret nz                                           ; $6f15: $c0

	ld bc, $01a0                                     ; $6f16: $01 $a0 $01
	inc bc                                           ; $6f19: $03
	dec sp                                           ; $6f1a: $3b
	ret nz                                           ; $6f1b: $c0

	ld bc, $07a0                                     ; $6f1c: $01 $a0 $07
	inc bc                                           ; $6f1f: $03
	ld b, l                                          ; $6f20: $45
	pop bc                                           ; $6f21: $c1
	ld e, e                                          ; $6f22: $5b
	ret nz                                           ; $6f23: $c0

	ld bc, $01a0                                     ; $6f24: $01 $a0 $01
	inc bc                                           ; $6f27: $03
	ld d, b                                          ; $6f28: $50
	ld b, b                                          ; $6f29: $40
	add b                                            ; $6f2a: $80
	nop                                              ; $6f2b: $00
	or b                                             ; $6f2c: $b0
	nop                                              ; $6f2d: $00
	add b                                            ; $6f2e: $80
	nop                                              ; $6f2f: $00
	ld e, d                                          ; $6f30: $5a
	pop bc                                           ; $6f31: $c1
	dec sp                                           ; $6f32: $3b
	pop bc                                           ; $6f33: $c1
	ld l, e                                          ; $6f34: $6b
	db $d3                                           ; $6f35: $d3
	rst SubAFromDE                                          ; $6f36: $df
	ret nz                                           ; $6f37: $c0

	set 4, l                                         ; $6f38: $cb $e5
	ld bc, $b119                                     ; $6f3a: $01 $19 $b1
	cp h                                             ; $6f3d: $bc
	rlca                                             ; $6f3e: $07
	add hl, bc                                       ; $6f3f: $09
	pop bc                                           ; $6f40: $c1
	ld a, l                                          ; $6f41: $7d
	or b                                             ; $6f42: $b0
	xor d                                            ; $6f43: $aa
	nop                                              ; $6f44: $00
	rst $38                                          ; $6f45: $ff
	pop bc                                           ; $6f46: $c1
	ld [hl], h                                       ; $6f47: $74
	ei                                               ; $6f48: $fb
	rst $38                                          ; $6f49: $ff
	ld d, $fe                                        ; $6f4a: $16 $fe
	add hl, bc                                       ; $6f4c: $09
	db $fc                                           ; $6f4d: $fc
	ret nz                                           ; $6f4e: $c0

	ld h, h                                          ; $6f4f: $64
	ldh [$61], a                                     ; $6f50: $e0 $61
	ei                                               ; $6f52: $fb
	ret nz                                           ; $6f53: $c0

	ld h, l                                          ; $6f54: $65
	jp c, $09fe                                      ; $6f55: $da $fe $09

	db $fc                                           ; $6f58: $fc
	ret nz                                           ; $6f59: $c0

	ld h, h                                          ; $6f5a: $64
	ldh [$62], a                                     ; $6f5b: $e0 $62
	ld a, [$65c0]                                    ; $6f5d: $fa $c0 $65
	call nc, $fb17                                   ; $6f60: $d4 $17 $fb
	cp $10                                           ; $6f63: $fe $10
	pop af                                           ; $6f65: $f1
	add b                                            ; $6f66: $80
	and b                                            ; $6f67: $a0
	nop                                              ; $6f68: $00
	ei                                               ; $6f69: $fb
	ret nz                                           ; $6f6a: $c0

	dec d                                            ; $6f6b: $15
	db $dd                                           ; $6f6c: $dd
	ldh [$32], a                                     ; $6f6d: $e0 $32
	ld hl, sp-$40                                    ; $6f6f: $f8 $c0
	rla                                              ; $6f71: $17
	db $dd                                           ; $6f72: $dd
	ldh [$3c], a                                     ; $6f73: $e0 $3c
	inc bc                                           ; $6f75: $03
	ldh [$08], a                                     ; $6f76: $e0 $08
	sub d                                            ; $6f78: $92
	ei                                               ; $6f79: $fb
	cp $09                                           ; $6f7a: $fe $09
	db $fc                                           ; $6f7c: $fc
	ret nz                                           ; $6f7d: $c0

	ld h, h                                          ; $6f7e: $64
	ldh [$63], a                                     ; $6f7f: $e0 $63
	db $fc                                           ; $6f81: $fc
	ret nz                                           ; $6f82: $c0

	ld l, d                                          ; $6f83: $6a
	ret nc                                           ; $6f84: $d0

	ld a, [de]                                       ; $6f85: $1a
	ei                                               ; $6f86: $fb
	cp $13                                           ; $6f87: $fe $13
	pop af                                           ; $6f89: $f1
	add b                                            ; $6f8a: $80
	and b                                            ; $6f8b: $a0
	ld bc, $c0fb                                     ; $6f8c: $01 $fb $c0
	dec d                                            ; $6f8f: $15
	db $dd                                           ; $6f90: $dd
	ldh [$32], a                                     ; $6f91: $e0 $32
	ld hl, sp-$40                                    ; $6f93: $f8 $c0
	rla                                              ; $6f95: $17
	db $dd                                           ; $6f96: $dd
	ldh [$3c], a                                     ; $6f97: $e0 $3c
	add b                                            ; $6f99: $80
	nop                                              ; $6f9a: $00
	ld l, a                                          ; $6f9b: $6f
	inc bc                                           ; $6f9c: $03
	ldh [$09], a                                     ; $6f9d: $e0 $09
	ld e, h                                          ; $6f9f: $5c
	add c                                            ; $6fa0: $81
	ret nz                                           ; $6fa1: $c0

	ld h, l                                          ; $6fa2: $65
	inc b                                            ; $6fa3: $04
	sub $d7                                          ; $6fa4: $d6 $d7
	ret c                                            ; $6fa6: $d8

	reti                                             ; $6fa7: $d9


	or c                                             ; $6fa8: $b1
	ei                                               ; $6fa9: $fb
	cp $18                                           ; $6faa: $fe $18
	pop af                                           ; $6fac: $f1
	add b                                            ; $6fad: $80
	and b                                            ; $6fae: $a0
	ld [bc], a                                       ; $6faf: $02
	ei                                               ; $6fb0: $fb
	ret nz                                           ; $6fb1: $c0

	dec d                                            ; $6fb2: $15
	ret nc                                           ; $6fb3: $d0

	ldh [$32], a                                     ; $6fb4: $e0 $32
	add b                                            ; $6fb6: $80
	ld [bc], a                                       ; $6fb7: $02
	ld l, e                                          ; $6fb8: $6b
	ld hl, sp-$40                                    ; $6fb9: $f8 $c0
	rla                                              ; $6fbb: $17
	ret nc                                           ; $6fbc: $d0

	ldh [$3c], a                                     ; $6fbd: $e0 $3c
	ld a, [$1bc0]                                    ; $6fbf: $fa $c0 $1b
	ret nc                                           ; $6fc2: $d0

	pop de                                           ; $6fc3: $d1

jr_086_6fc4:
	inc bc                                           ; $6fc4: $03
	ldh [rSB], a                                     ; $6fc5: $e0 $01
	jr z, jr_086_6fc4                                ; $6fc7: $28 $fb

	cp $18                                           ; $6fc9: $fe $18
	pop af                                           ; $6fcb: $f1
	add b                                            ; $6fcc: $80
	and b                                            ; $6fcd: $a0
	inc bc                                           ; $6fce: $03
	ei                                               ; $6fcf: $fb
	ret nz                                           ; $6fd0: $c0

	dec d                                            ; $6fd1: $15
	db $d3                                           ; $6fd2: $d3
	ldh [$32], a                                     ; $6fd3: $e0 $32
	add b                                            ; $6fd5: $80
	ld [bc], a                                       ; $6fd6: $02
	ld [hl], h                                       ; $6fd7: $74
	ld hl, sp-$40                                    ; $6fd8: $f8 $c0
	rla                                              ; $6fda: $17
	db $d3                                           ; $6fdb: $d3
	ldh [$3c], a                                     ; $6fdc: $e0 $3c
	ld a, [$1bc0]                                    ; $6fde: $fa $c0 $1b
	db $d3                                           ; $6fe1: $d3
	pop de                                           ; $6fe2: $d1
	inc bc                                           ; $6fe3: $03
	ldh [$03], a                                     ; $6fe4: $e0 $03
	ld c, [hl]                                       ; $6fe6: $4e
	ei                                               ; $6fe7: $fb
	cp $18                                           ; $6fe8: $fe $18
	pop af                                           ; $6fea: $f1
	add b                                            ; $6feb: $80
	and b                                            ; $6fec: $a0
	inc b                                            ; $6fed: $04
	ei                                               ; $6fee: $fb
	ret nz                                           ; $6fef: $c0

	dec d                                            ; $6ff0: $15
	rst SubAFromHL                                          ; $6ff1: $d7
	ldh [$32], a                                     ; $6ff2: $e0 $32
	add b                                            ; $6ff4: $80
	ld [bc], a                                       ; $6ff5: $02
	halt                                             ; $6ff6: $76
	ld hl, sp-$40                                    ; $6ff7: $f8 $c0
	rla                                              ; $6ff9: $17
	rst SubAFromHL                                          ; $6ffa: $d7
	ldh [$3c], a                                     ; $6ffb: $e0 $3c
	ld a, [$1bc0]                                    ; $6ffd: $fa $c0 $1b
	rst SubAFromHL                                          ; $7000: $d7
	pop de                                           ; $7001: $d1
	inc bc                                           ; $7002: $03
	ldh [$03], a                                     ; $7003: $e0 $03
	jp nc, $fefb                                     ; $7005: $d2 $fb $fe

	rrca                                             ; $7008: $0f
	ei                                               ; $7009: $fb
	ret nz                                           ; $700a: $c0

	dec d                                            ; $700b: $15
	jp c, $32e0                                      ; $700c: $da $e0 $32

	add b                                            ; $700f: $80
	ld [bc], a                                       ; $7010: $02
	ld a, [hl]                                       ; $7011: $7e
	ld hl, sp-$40                                    ; $7012: $f8 $c0
	rla                                              ; $7014: $17
	jp c, $3ce0                                      ; $7015: $da $e0 $3c

	ld hl, $fe60                                     ; $7018: $21 $60 $fe
	ld de, $80f1                                     ; $701b: $11 $f1 $80
	and b                                            ; $701e: $a0
	dec b                                            ; $701f: $05
	db $fc                                           ; $7020: $fc
	ret nz                                           ; $7021: $c0

	ld h, h                                          ; $7022: $64
	ldh [$63], a                                     ; $7023: $e0 $63
	db $fc                                           ; $7025: $fc
	ret nz                                           ; $7026: $c0

	ld h, l                                          ; $7027: $65
	reti                                             ; $7028: $d9


	ei                                               ; $7029: $fb
	ret nz                                           ; $702a: $c0

	ld h, [hl]                                       ; $702b: $66
	db $dd                                           ; $702c: $dd
	ld [$3fb0], sp                                   ; $702d: $08 $b0 $3f
	inc bc                                           ; $7030: $03
	db $e4                                           ; $7031: $e4
	ld b, $4a                                        ; $7032: $06 $4a
	rst $38                                          ; $7034: $ff
	nop                                              ; $7035: $00
	inc bc                                           ; $7036: $03
	ldh [rP1], a                                     ; $7037: $e0 $00
	add a                                            ; $7039: $87
	ei                                               ; $703a: $fb
	cp $12                                           ; $703b: $fe $12
	pop af                                           ; $703d: $f1
	add b                                            ; $703e: $80
	and b                                            ; $703f: $a0
	ld b, $80                                        ; $7040: $06 $80
	ld [bc], a                                       ; $7042: $02
	add b                                            ; $7043: $80
	ld hl, sp-$40                                    ; $7044: $f8 $c0
	rla                                              ; $7046: $17
	db $dd                                           ; $7047: $dd
	ldh [$3c], a                                     ; $7048: $e0 $3c
	ld a, [$1bc0]                                    ; $704a: $fa $c0 $1b
	db $dd                                           ; $704d: $dd
	pop de                                           ; $704e: $d1
	ld a, [bc]                                       ; $704f: $0a
	ei                                               ; $7050: $fb
	ei                                               ; $7051: $fb
	add c                                            ; $7052: $81
	ld bc, $d291                                     ; $7053: $01 $91 $d2
	inc bc                                           ; $7056: $03
	ldh [rTMA], a                                    ; $7057: $e0 $06
	jp $da08                                         ; $7059: $c3 $08 $da


	db $db                                           ; $705c: $db
	call c, $d2d1                                    ; $705d: $dc $d1 $d2
	db $d3                                           ; $7060: $d3
	call nc, Call_086_58d5                           ; $7061: $d4 $d5 $58
	ei                                               ; $7064: $fb
	cp $18                                           ; $7065: $fe $18
	pop af                                           ; $7067: $f1
	add b                                            ; $7068: $80
	and b                                            ; $7069: $a0
	rlca                                             ; $706a: $07
	ei                                               ; $706b: $fb
	ret nz                                           ; $706c: $c0

	dec d                                            ; $706d: $15
	pop de                                           ; $706e: $d1
	ldh [$32], a                                     ; $706f: $e0 $32
	add b                                            ; $7071: $80
	ld [bc], a                                       ; $7072: $02
	ld [hl], c                                       ; $7073: $71
	ld hl, sp-$40                                    ; $7074: $f8 $c0
	rla                                              ; $7076: $17
	pop de                                           ; $7077: $d1
	ldh [$3c], a                                     ; $7078: $e0 $3c
	ld a, [$1bc0]                                    ; $707a: $fa $c0 $1b
	pop de                                           ; $707d: $d1
	pop de                                           ; $707e: $d1
	inc bc                                           ; $707f: $03
	ldh [rSB], a                                     ; $7080: $e0 $01
	ld c, h                                          ; $7082: $4c
	ei                                               ; $7083: $fb
	cp $18                                           ; $7084: $fe $18
	pop af                                           ; $7086: $f1
	add b                                            ; $7087: $80
	and b                                            ; $7088: $a0
	ld [$c0fb], sp                                   ; $7089: $08 $fb $c0
	dec d                                            ; $708c: $15
	jp nc, $32e0                                     ; $708d: $d2 $e0 $32

	add b                                            ; $7090: $80
	ld [bc], a                                       ; $7091: $02
	ld [hl], e                                       ; $7092: $73
	ld hl, sp-$40                                    ; $7093: $f8 $c0
	rla                                              ; $7095: $17
	jp nc, $3ce0                                     ; $7096: $d2 $e0 $3c

	ld a, [$1bc0]                                    ; $7099: $fa $c0 $1b
	jp nc, $03d1                                     ; $709c: $d2 $d1 $03

	ldh [rSB], a                                     ; $709f: $e0 $01
	sbc $fb                                          ; $70a1: $de $fb
	cp $13                                           ; $70a3: $fe $13
	pop af                                           ; $70a5: $f1
	add b                                            ; $70a6: $80
	and b                                            ; $70a7: $a0
	add hl, bc                                       ; $70a8: $09
	ei                                               ; $70a9: $fb
	ret nz                                           ; $70aa: $c0

	dec d                                            ; $70ab: $15
	ret c                                            ; $70ac: $d8

	ldh [$32], a                                     ; $70ad: $e0 $32
	add b                                            ; $70af: $80
	ld [bc], a                                       ; $70b0: $02
	ld a, b                                          ; $70b1: $78
	ld hl, sp-$40                                    ; $70b2: $f8 $c0
	rla                                              ; $70b4: $17
	ret c                                            ; $70b5: $d8

	ldh [$3c], a                                     ; $70b6: $e0 $3c
	inc bc                                           ; $70b8: $03
	ldh [$03], a                                     ; $70b9: $e0 $03
	and h                                            ; $70bb: $a4
	db $e4                                           ; $70bc: $e4
	dec bc                                           ; $70bd: $0b
	dec [hl]                                         ; $70be: $35
	ld l, $fb                                        ; $70bf: $2e $fb
	cp $0c                                           ; $70c1: $fe $0c
	db $fd                                           ; $70c3: $fd
	ret nz                                           ; $70c4: $c0

	ld h, l                                          ; $70c5: $65
	add e                                            ; $70c6: $83
	and b                                            ; $70c7: $a0
	ld a, [bc]                                       ; $70c8: $0a
	db $fd                                           ; $70c9: $fd
	ret nz                                           ; $70ca: $c0

	ld h, l                                          ; $70cb: $65
	add e                                            ; $70cc: $83
	and b                                            ; $70cd: $a0
	ld c, $1e                                        ; $70ce: $0e $1e
	add b                                            ; $70d0: $80
	ret nz                                           ; $70d1: $c0

	dec de                                           ; $70d2: $1b
	jp c, $d002                                      ; $70d3: $da $02 $d0

	pop de                                           ; $70d6: $d1
	ld d, $b0                                        ; $70d7: $16 $b0
	rlca                                             ; $70d9: $07
	ld de, $83d0                                     ; $70da: $11 $d0 $83
	and b                                            ; $70dd: $a0
	ld a, [bc]                                       ; $70de: $0a
	ret nz                                           ; $70df: $c0

	ld h, l                                          ; $70e0: $65
	ret nc                                           ; $70e1: $d0

	add e                                            ; $70e2: $83
	and b                                            ; $70e3: $a0
	ld c, $f5                                        ; $70e4: $0e $f5

jr_086_70e6:
	ret nz                                           ; $70e6: $c0

	ld h, l                                          ; $70e7: $65
	pop de                                           ; $70e8: $d1
	db $e4                                           ; $70e9: $e4
	inc b                                            ; $70ea: $04
	ld d, [hl]                                       ; $70eb: $56

jr_086_70ec:
	rst $38                                          ; $70ec: $ff
	nop                                              ; $70ed: $00
	ld [$07b0], sp                                   ; $70ee: $08 $b0 $07
	inc bc                                           ; $70f1: $03
	db $e4                                           ; $70f2: $e4
	nop                                              ; $70f3: $00
	inc b                                            ; $70f4: $04
	rst $38                                          ; $70f5: $ff
	nop                                              ; $70f6: $00
	add hl, bc                                       ; $70f7: $09
	ret nz                                           ; $70f8: $c0

	db $d3                                           ; $70f9: $d3
	pop bc                                           ; $70fa: $c1
	ld d, e                                          ; $70fb: $53
	ret nz                                           ; $70fc: $c0

	inc d                                            ; $70fd: $14
	db $e3                                           ; $70fe: $e3
	nop                                              ; $70ff: $00
	ld c, d                                          ; $7100: $4a
	ret nz                                           ; $7101: $c0

	ld bc, $01a0                                     ; $7102: $01 $a0 $01
	nop                                              ; $7105: $00
	ld bc, $01c0                                     ; $7106: $01 $c0 $01
	and b                                            ; $7109: $a0
	ld bc, $1400                                     ; $710a: $01 $00 $14
	ret nz                                           ; $710d: $c0

	add hl, bc                                       ; $710e: $09
	db $e3                                           ; $710f: $e3
	nop                                              ; $7110: $00
	ld c, d                                          ; $7111: $4a
	ret nz                                           ; $7112: $c0

	xor b                                            ; $7113: $a8
	ret nc                                           ; $7114: $d0

	ret nz                                           ; $7115: $c0

	xor h                                            ; $7116: $ac
	ret nz                                           ; $7117: $c0

	and l                                            ; $7118: $a5
	ret nz                                           ; $7119: $c0

	ld bc, $02a0                                     ; $711a: $01 $a0 $02
	nop                                              ; $711d: $00
	ld a, [de]                                       ; $711e: $1a
	ret nz                                           ; $711f: $c0

	ld bc, $01a0                                     ; $7120: $01 $a0 $01
	nop                                              ; $7123: $00
	jr nc, jr_086_70e6                               ; $7124: $30 $c0

	ld bc, $02a0                                     ; $7126: $01 $a0 $02
	nop                                              ; $7129: $00
	jr c, jr_086_70ec                                ; $712a: $38 $c0

	ld bc, $01a0                                     ; $712c: $01 $a0 $01
	nop                                              ; $712f: $00
	ld a, [hl-]                                      ; $7130: $3a
	ret nz                                           ; $7131: $c0

	ld bc, $02a0                                     ; $7132: $01 $a0 $02
	nop                                              ; $7135: $00
	ld b, d                                          ; $7136: $42
	ret nz                                           ; $7137: $c0

	ld bc, $01a0                                     ; $7138: $01 $a0 $01
	nop                                              ; $713b: $00
	ld c, c                                          ; $713c: $49
	pop hl                                           ; $713d: $e1
	ld [bc], a                                       ; $713e: $02
	inc bc                                           ; $713f: $03
	inc de                                           ; $7140: $13
	ret nz                                           ; $7141: $c0

	ld bc, $02a0                                     ; $7142: $01 $a0 $02
	nop                                              ; $7145: $00
	ld d, e                                          ; $7146: $53
	ret nz                                           ; $7147: $c0

	ld bc, $01a0                                     ; $7148: $01 $a0 $01
	nop                                              ; $714b: $00
	ld e, l                                          ; $714c: $5d
	pop hl                                           ; $714d: $e1
	ld [bc], a                                       ; $714e: $02
	inc bc                                           ; $714f: $03
	dec de                                           ; $7150: $1b
	ret nz                                           ; $7151: $c0

	ld bc, $02a0                                     ; $7152: $01 $a0 $02
	nop                                              ; $7155: $00
	ld l, d                                          ; $7156: $6a
	pop hl                                           ; $7157: $e1
	ld [bc], a                                       ; $7158: $02
	inc bc                                           ; $7159: $03
	rrca                                             ; $715a: $0f
	ret nz                                           ; $715b: $c0

	ld bc, $02a0                                     ; $715c: $01 $a0 $02
	nop                                              ; $715f: $00
	ld [hl], b                                       ; $7160: $70
	ret nz                                           ; $7161: $c0

	ld bc, $01a0                                     ; $7162: $01 $a0 $01
	nop                                              ; $7165: $00
	ld [hl], e                                       ; $7166: $73
	ret nz                                           ; $7167: $c0

	set 0, c                                         ; $7168: $cb $c1
	ld e, e                                          ; $716a: $5b
	ret nz                                           ; $716b: $c0

	dec bc                                           ; $716c: $0b
	db $e3                                           ; $716d: $e3
	nop                                              ; $716e: $00
	ld bc, $0fc0                                     ; $716f: $01 $c0 $0f
	db $e3                                           ; $7172: $e3
	nop                                              ; $7173: $00
	sub $c0                                          ; $7174: $d6 $c0
	ld bc, $02a0                                     ; $7176: $01 $a0 $02
	nop                                              ; $7179: $00
	ld a, b                                          ; $717a: $78
	ret nz                                           ; $717b: $c0

	ld bc, $01a0                                     ; $717c: $01 $a0 $01
	nop                                              ; $717f: $00
	ld a, h                                          ; $7180: $7c
	pop bc                                           ; $7181: $c1
	or d                                             ; $7182: $b2
	db $e3                                           ; $7183: $e3
	nop                                              ; $7184: $00
	dec b                                            ; $7185: $05
	ret nz                                           ; $7186: $c0

	dec bc                                           ; $7187: $0b
	db $e3                                           ; $7188: $e3
	nop                                              ; $7189: $00
	ld bc, $01c0                                     ; $718a: $01 $c0 $01
	and b                                            ; $718d: $a0
	ld [bc], a                                       ; $718e: $02
	nop                                              ; $718f: $00
	adc d                                            ; $7190: $8a
	ret nz                                           ; $7191: $c0

	ld bc, $01a0                                     ; $7192: $01 $a0 $01
	nop                                              ; $7195: $00
	sub c                                            ; $7196: $91
	ret nz                                           ; $7197: $c0

	ld bc, $02a0                                     ; $7198: $01 $a0 $02
	nop                                              ; $719b: $00
	and c                                            ; $719c: $a1
	ret nz                                           ; $719d: $c0

	ld bc, $01a0                                     ; $719e: $01 $a0 $01
	nop                                              ; $71a1: $00
	xor c                                            ; $71a2: $a9
	ret nz                                           ; $71a3: $c0

	ld bc, $02a0                                     ; $71a4: $01 $a0 $02
	nop                                              ; $71a7: $00
	or d                                             ; $71a8: $b2
	ret nz                                           ; $71a9: $c0

	ld bc, $01a0                                     ; $71aa: $01 $a0 $01
	nop                                              ; $71ad: $00
	cp e                                             ; $71ae: $bb
	ret nz                                           ; $71af: $c0

	ld bc, $01a0                                     ; $71b0: $01 $a0 $01
	nop                                              ; $71b3: $00
	cp a                                             ; $71b4: $bf
	nop                                              ; $71b5: $00
	add b                                            ; $71b6: $80
	and b                                            ; $71b7: $a0
	ld [bc], a                                       ; $71b8: $02
	ret nz                                           ; $71b9: $c0

	ld hl, $d0d1                                     ; $71ba: $21 $d1 $d0
	ret nz                                           ; $71bd: $c0

	ld [hl+], a                                      ; $71be: $22
	jp nc, $c1d0                                     ; $71bf: $d2 $d0 $c1

	dec sp                                           ; $71c2: $3b
	pop bc                                           ; $71c3: $c1
	ld l, e                                          ; $71c4: $6b
	push de                                          ; $71c5: $d5
	ret nc                                           ; $71c6: $d0

	pop bc                                           ; $71c7: $c1
	ld d, a                                          ; $71c8: $57
	push hl                                          ; $71c9: $e5
	ld bc, $b119                                     ; $71ca: $01 $19 $b1
	ld [$07b0], sp                                   ; $71cd: $08 $b0 $07
	inc bc                                           ; $71d0: $03
	db $e4                                           ; $71d1: $e4
	nop                                              ; $71d2: $00
	inc b                                            ; $71d3: $04
	rst $38                                          ; $71d4: $ff
	nop                                              ; $71d5: $00
	add hl, bc                                       ; $71d6: $09
	and [hl]                                         ; $71d7: $a6
	pop bc                                           ; $71d8: $c1
	dec sp                                           ; $71d9: $3b
	ret nz                                           ; $71da: $c0

	add hl, bc                                       ; $71db: $09
	db $e3                                           ; $71dc: $e3
	nop                                              ; $71dd: $00
	ld b, $c1                                        ; $71de: $06 $c1
	ld e, c                                          ; $71e0: $59
	db $e3                                           ; $71e1: $e3
	nop                                              ; $71e2: $00
	db $e3                                           ; $71e3: $e3
	ret nz                                           ; $71e4: $c0

	ld bc, $01a0                                     ; $71e5: $01 $a0 $01
	nop                                              ; $71e8: $00
	ret                                              ; $71e9: $c9


	ret nz                                           ; $71ea: $c0

	ld bc, $01a0                                     ; $71eb: $01 $a0 $01
	nop                                              ; $71ee: $00
	reti                                             ; $71ef: $d9


	ret nz                                           ; $71f0: $c0

	ld bc, $03a0                                     ; $71f1: $01 $a0 $03
	nop                                              ; $71f4: $00
	rst SubAFromDE                                          ; $71f5: $df
	ret nz                                           ; $71f6: $c0

	ld bc, $01a0                                     ; $71f7: $01 $a0 $01
	nop                                              ; $71fa: $00
	add sp, -$40                                     ; $71fb: $e8 $c0
	ld bc, $03a0                                     ; $71fd: $01 $a0 $03
	nop                                              ; $7200: $00
	ldh a, [c]                                       ; $7201: $f2
	ret nz                                           ; $7202: $c0

	ld bc, $01a0                                     ; $7203: $01 $a0 $01
	nop                                              ; $7206: $00
	rst $38                                          ; $7207: $ff
	ret nz                                           ; $7208: $c0

	ld bc, $03a0                                     ; $7209: $01 $a0 $03
	ld bc, $c00b                                     ; $720c: $01 $0b $c0
	ld bc, $01a0                                     ; $720f: $01 $a0 $01
	ld bc, $c00e                                     ; $7212: $01 $0e $c0
	set 0, b                                         ; $7215: $cb $c0
	ld de, $00e3                                     ; $7217: $11 $e3 $00
	inc a                                            ; $721a: $3c
	ret nz                                           ; $721b: $c0

	xor b                                            ; $721c: $a8
	pop de                                           ; $721d: $d1
	ret nz                                           ; $721e: $c0

	xor e                                            ; $721f: $ab
	pop de                                           ; $7220: $d1
	pop bc                                           ; $7221: $c1
	ld e, h                                          ; $7222: $5c
	ret nz                                           ; $7223: $c0

	jp z, $01c0                                      ; $7224: $ca $c0 $01

	and b                                            ; $7227: $a0
	inc bc                                           ; $7228: $03
	ld bc, $c018                                     ; $7229: $01 $18 $c0
	ld bc, $01a0                                     ; $722c: $01 $a0 $01
	ld bc, $c025                                     ; $722f: $01 $25 $c0
	ld bc, $03a0                                     ; $7232: $01 $a0 $03
	ld bc, $c031                                     ; $7235: $01 $31 $c0
	ld bc, $01a0                                     ; $7238: $01 $a0 $01
	ld bc, $c03f                                     ; $723b: $01 $3f $c0
	ld bc, $03a0                                     ; $723e: $01 $a0 $03
	ld bc, $c045                                     ; $7241: $01 $45 $c0
	ld bc, $01a0                                     ; $7244: $01 $a0 $01
	ld bc, $e14b                                     ; $7247: $01 $4b $e1
	ld [bc], a                                       ; $724a: $02
	inc bc                                           ; $724b: $03
	rrca                                             ; $724c: $0f
	pop bc                                           ; $724d: $c1
	or d                                             ; $724e: $b2
	db $e3                                           ; $724f: $e3
	nop                                              ; $7250: $00
	add hl, hl                                       ; $7251: $29
	ret nz                                           ; $7252: $c0

	ld bc, $03a0                                     ; $7253: $01 $a0 $03
	ld bc, $c05b                                     ; $7256: $01 $5b $c0
	ld bc, $01a0                                     ; $7259: $01 $a0 $01
	ld bc, $c068                                     ; $725c: $01 $68 $c0
	ld bc, $03a0                                     ; $725f: $01 $a0 $03
	ld bc, $c078                                     ; $7262: $01 $78 $c0
	set 0, c                                         ; $7265: $cb $c1
	ld e, e                                          ; $7267: $5b
	nop                                              ; $7268: $00
	add b                                            ; $7269: $80
	and b                                            ; $726a: $a0
	rlca                                             ; $726b: $07
	ret nz                                           ; $726c: $c0

	ld [hl+], a                                      ; $726d: $22
	pop de                                           ; $726e: $d1
	pop de                                           ; $726f: $d1
	ret nz                                           ; $7270: $c0

	ld hl, $d1d2                                     ; $7271: $21 $d2 $d1
	pop bc                                           ; $7274: $c1
	dec sp                                           ; $7275: $3b
	pop bc                                           ; $7276: $c1
	ld l, e                                          ; $7277: $6b
	push de                                          ; $7278: $d5
	pop de                                           ; $7279: $d1
	push hl                                          ; $727a: $e5
	ld bc, $b119                                     ; $727b: $01 $19 $b1
	ld [$07b0], sp                                   ; $727e: $08 $b0 $07
	inc bc                                           ; $7281: $03
	db $e4                                           ; $7282: $e4
	nop                                              ; $7283: $00
	inc b                                            ; $7284: $04
	rst $38                                          ; $7285: $ff
	nop                                              ; $7286: $00
	add hl, bc                                       ; $7287: $09
	xor d                                            ; $7288: $aa
	pop bc                                           ; $7289: $c1
	ld d, e                                          ; $728a: $53
	ret nz                                           ; $728b: $c0

	inc d                                            ; $728c: $14
	db $e3                                           ; $728d: $e3
	nop                                              ; $728e: $00
	ld d, b                                          ; $728f: $50
	ret nz                                           ; $7290: $c0

	ld bc, $01a0                                     ; $7291: $01 $a0 $01
	ld bc, $c07d                                     ; $7294: $01 $7d $c0
	ld bc, $01a0                                     ; $7297: $01 $a0 $01
	ld bc, $c086                                     ; $729a: $01 $86 $c0
	set 0, b                                         ; $729d: $cb $c0
	add hl, bc                                       ; $729f: $09
	db $e3                                           ; $72a0: $e3
	nop                                              ; $72a1: $00
	ld d, $c0                                        ; $72a2: $16 $c0
	rrca                                             ; $72a4: $0f
	db $e3                                           ; $72a5: $e3
	nop                                              ; $72a6: $00
	db $ec                                           ; $72a7: $ec
	ret nz                                           ; $72a8: $c0

	inc c                                            ; $72a9: $0c
	ldh [$50], a                                     ; $72aa: $e0 $50
	ret nz                                           ; $72ac: $c0

	ld bc, $04a0                                     ; $72ad: $01 $a0 $04
	ld bc, $c090                                     ; $72b0: $01 $90 $c0
	inc c                                            ; $72b3: $0c
	ldh [$3c], a                                     ; $72b4: $e0 $3c
	ret nz                                           ; $72b6: $c0

	ld bc, $01a0                                     ; $72b7: $01 $a0 $01
	ld bc, $c092                                     ; $72ba: $01 $92 $c0
	set 0, b                                         ; $72bd: $cb $c0
	ld de, $00e3                                     ; $72bf: $11 $e3 $00
	ld d, b                                          ; $72c2: $50
	ret nz                                           ; $72c3: $c0

	xor b                                            ; $72c4: $a8
	jp nc, $abc0                                     ; $72c5: $d2 $c0 $ab

	db $d3                                           ; $72c8: $d3
	pop bc                                           ; $72c9: $c1
	ld e, h                                          ; $72ca: $5c
	ret nz                                           ; $72cb: $c0

	jp z, $01c0                                      ; $72cc: $ca $c0 $01

	and b                                            ; $72cf: $a0
	inc b                                            ; $72d0: $04
	ld bc, $c09b                                     ; $72d1: $01 $9b $c0
	ld bc, $01a0                                     ; $72d4: $01 $a0 $01
	ld bc, $c0a5                                     ; $72d7: $01 $a5 $c0
	ld bc, $04a0                                     ; $72da: $01 $a0 $04
	ld bc, $c0ad                                     ; $72dd: $01 $ad $c0
	ld bc, $01a0                                     ; $72e0: $01 $a0 $01
	ld bc, $c0bb                                     ; $72e3: $01 $bb $c0
	ld bc, $04a0                                     ; $72e6: $01 $a0 $04
	ld bc, $c0c0                                     ; $72e9: $01 $c0 $c0
	ld bc, $01a0                                     ; $72ec: $01 $a0 $01
	ld bc, $c0c8                                     ; $72ef: $01 $c8 $c0
	ld bc, $04a0                                     ; $72f2: $01 $a0 $04
	ld bc, $c0d2                                     ; $72f5: $01 $d2 $c0
	ld bc, $01a0                                     ; $72f8: $01 $a0 $01
	ld bc, $e1dd                                     ; $72fb: $01 $dd $e1
	ld [bc], a                                       ; $72fe: $02
	inc bc                                           ; $72ff: $03
	inc de                                           ; $7300: $13
	ret nz                                           ; $7301: $c0

	ld bc, $04a0                                     ; $7302: $01 $a0 $04
	ld bc, $c1e9                                     ; $7305: $01 $e9 $c1
	ld e, e                                          ; $7308: $5b
	ret nz                                           ; $7309: $c0

	ld bc, $01a0                                     ; $730a: $01 $a0 $01
	ld bc, $c0f3                                     ; $730d: $01 $f3 $c0
	ld bc, $04a0                                     ; $7310: $01 $a0 $04
	ld [bc], a                                       ; $7313: $02
	inc bc                                           ; $7314: $03
	ret nz                                           ; $7315: $c0

	ld bc, $01a0                                     ; $7316: $01 $a0 $01
	ld [bc], a                                       ; $7319: $02
	inc d                                            ; $731a: $14
	nop                                              ; $731b: $00
	add b                                            ; $731c: $80
	and b                                            ; $731d: $a0
	ld [$22c0], sp                                   ; $731e: $08 $c0 $22
	pop de                                           ; $7321: $d1
	jp nc, $21c0                                     ; $7322: $d2 $c0 $21

	jp nc, $c1d2                                     ; $7325: $d2 $d2 $c1

	dec sp                                           ; $7328: $3b
	pop bc                                           ; $7329: $c1
	ld l, e                                          ; $732a: $6b
	rst SubAFromHL                                          ; $732b: $d7
	jp nc, $cbc0                                     ; $732c: $d2 $c0 $cb

	push hl                                          ; $732f: $e5
	ld bc, $b119                                     ; $7330: $01 $19 $b1
	ld [$07b0], sp                                   ; $7333: $08 $b0 $07
	inc bc                                           ; $7336: $03
	db $e4                                           ; $7337: $e4
	nop                                              ; $7338: $00
	inc b                                            ; $7339: $04
	rst $38                                          ; $733a: $ff
	nop                                              ; $733b: $00
	add hl, bc                                       ; $733c: $09
	sbc b                                            ; $733d: $98
	ret nz                                           ; $733e: $c0

	set 0, b                                         ; $733f: $cb $c0
	ld bc, $01a0                                     ; $7341: $01 $a0 $01
	ld [bc], a                                       ; $7344: $02
	ld [hl+], a                                      ; $7345: $22
	ret nz                                           ; $7346: $c0

	add hl, bc                                       ; $7347: $09
	db $e3                                           ; $7348: $e3
	nop                                              ; $7349: $00
	inc b                                            ; $734a: $04
	ret nz                                           ; $734b: $c0

	rrca                                             ; $734c: $0f
	db $e3                                           ; $734d: $e3
	nop                                              ; $734e: $00
	ldh a, [$c0]                                     ; $734f: $f0 $c0
	ld bc, $05a0                                     ; $7351: $01 $a0 $05
	ld [bc], a                                       ; $7354: $02
	jr nc, @-$3e                                     ; $7355: $30 $c0

	ld bc, $01a0                                     ; $7357: $01 $a0 $01
	ld [bc], a                                       ; $735a: $02
	ld [hl-], a                                      ; $735b: $32
	ret nz                                           ; $735c: $c0

	ld bc, $05a0                                     ; $735d: $01 $a0 $05
	ld [bc], a                                       ; $7360: $02
	dec a                                            ; $7361: $3d
	ret nz                                           ; $7362: $c0

	ld bc, $01a0                                     ; $7363: $01 $a0 $01
	ld [bc], a                                       ; $7366: $02
	ld b, d                                          ; $7367: $42
	ret nz                                           ; $7368: $c0

	ld bc, $05a0                                     ; $7369: $01 $a0 $05
	ld [bc], a                                       ; $736c: $02
	ld d, l                                          ; $736d: $55
	ret nz                                           ; $736e: $c0

	ld bc, $01a0                                     ; $736f: $01 $a0 $01
	ld [bc], a                                       ; $7372: $02
	ld h, h                                          ; $7373: $64
	ret nz                                           ; $7374: $c0

	ld bc, $05a0                                     ; $7375: $01 $a0 $05
	ld [bc], a                                       ; $7378: $02
	ld [hl], l                                       ; $7379: $75
	ret nz                                           ; $737a: $c0

	ld bc, $01a0                                     ; $737b: $01 $a0 $01
	ld [bc], a                                       ; $737e: $02
	add h                                            ; $737f: $84
	ret nz                                           ; $7380: $c0

	ld bc, $05a0                                     ; $7381: $01 $a0 $05
	ld [bc], a                                       ; $7384: $02
	sub d                                            ; $7385: $92
	ret nz                                           ; $7386: $c0

	ld bc, $01a0                                     ; $7387: $01 $a0 $01
	ld [bc], a                                       ; $738a: $02
	sbc e                                            ; $738b: $9b
	ret nz                                           ; $738c: $c0

	ld bc, $05a0                                     ; $738d: $01 $a0 $05
	ld [bc], a                                       ; $7390: $02
	and [hl]                                         ; $7391: $a6
	ret nz                                           ; $7392: $c0

	ld bc, $01a0                                     ; $7393: $01 $a0 $01
	ld [bc], a                                       ; $7396: $02
	or d                                             ; $7397: $b2
	ret nz                                           ; $7398: $c0

	ld bc, $05a0                                     ; $7399: $01 $a0 $05
	ld [bc], a                                       ; $739c: $02
	pop bc                                           ; $739d: $c1
	ret nz                                           ; $739e: $c0

	ld bc, $01a0                                     ; $739f: $01 $a0 $01
	ld [bc], a                                       ; $73a2: $02
	jp z, $01c0                                      ; $73a3: $ca $c0 $01

	and b                                            ; $73a6: $a0
	daa                                              ; $73a7: $27
	ld [bc], a                                       ; $73a8: $02
	rst GetHLinHL                                          ; $73a9: $cf
	ret nz                                           ; $73aa: $c0

	ld bc, $07a0                                     ; $73ab: $01 $a0 $07
	ld [bc], a                                       ; $73ae: $02
	ret c                                            ; $73af: $d8

	ret nz                                           ; $73b0: $c0

	ld bc, $05a0                                     ; $73b1: $01 $a0 $05
	ld [bc], a                                       ; $73b4: $02
	db $e3                                           ; $73b5: $e3
	ret nz                                           ; $73b6: $c0

	ld bc, $01a0                                     ; $73b7: $01 $a0 $01
	ld [bc], a                                       ; $73ba: $02
	ld [$01c0], a                                    ; $73bb: $ea $c0 $01
	and b                                            ; $73be: $a0
	dec b                                            ; $73bf: $05
	ld [bc], a                                       ; $73c0: $02
	rst FarCall                                          ; $73c1: $f7
	nop                                              ; $73c2: $00
	add b                                            ; $73c3: $80
	and b                                            ; $73c4: $a0
	inc bc                                           ; $73c5: $03
	ret nz                                           ; $73c6: $c0

	ld hl, $d3d2                                     ; $73c7: $21 $d2 $d3
	pop bc                                           ; $73ca: $c1
	dec sp                                           ; $73cb: $3b
	pop bc                                           ; $73cc: $c1
	ld l, e                                          ; $73cd: $6b
	sub $d3                                          ; $73ce: $d6 $d3
	ret nz                                           ; $73d0: $c0

	set 4, l                                         ; $73d1: $cb $e5
	ld bc, $b119                                     ; $73d3: $01 $19 $b1
	ld [$07b0], sp                                   ; $73d6: $08 $b0 $07
	inc bc                                           ; $73d9: $03
	db $e4                                           ; $73da: $e4
	nop                                              ; $73db: $00
	inc b                                            ; $73dc: $04
	rst $38                                          ; $73dd: $ff
	nop                                              ; $73de: $00
	add hl, bc                                       ; $73df: $09
	ld a, l                                          ; $73e0: $7d
	pop bc                                           ; $73e1: $c1
	dec sp                                           ; $73e2: $3b
	pop bc                                           ; $73e3: $c1
	ld d, e                                          ; $73e4: $53
	ret nz                                           ; $73e5: $c0

	inc d                                            ; $73e6: $14
	db $e3                                           ; $73e7: $e3
	nop                                              ; $73e8: $00
	inc a                                            ; $73e9: $3c
	ret nz                                           ; $73ea: $c0

	ld bc, $01a0                                     ; $73eb: $01 $a0 $01
	ld [bc], a                                       ; $73ee: $02
	cp $c0                                           ; $73ef: $fe $c0
	set 0, b                                         ; $73f1: $cb $c0
	add hl, bc                                       ; $73f3: $09
	db $e3                                           ; $73f4: $e3
	nop                                              ; $73f5: $00
	inc bc                                           ; $73f6: $03
	ret nz                                           ; $73f7: $c0

	rrca                                             ; $73f8: $0f
	db $e3                                           ; $73f9: $e3
	nop                                              ; $73fa: $00
	rst FarCall                                          ; $73fb: $f7
	ret nz                                           ; $73fc: $c0

	ld bc, $08a0                                     ; $73fd: $01 $a0 $08
	inc bc                                           ; $7400: $03
	ld b, $c0                                        ; $7401: $06 $c0
	ld bc, $01a0                                     ; $7403: $01 $a0 $01
	inc bc                                           ; $7406: $03
	dec bc                                           ; $7407: $0b
	ret nz                                           ; $7408: $c0

	ld bc, $08a0                                     ; $7409: $01 $a0 $08
	inc bc                                           ; $740c: $03
	jr @-$3e                                         ; $740d: $18 $c0

	ld bc, $01a0                                     ; $740f: $01 $a0 $01
	inc bc                                           ; $7412: $03
	daa                                              ; $7413: $27
	ret nz                                           ; $7414: $c0

	ld bc, $08a0                                     ; $7415: $01 $a0 $08
	inc bc                                           ; $7418: $03
	ld [hl-], a                                      ; $7419: $32
	ret nz                                           ; $741a: $c0

	ld bc, $01a0                                     ; $741b: $01 $a0 $01
	inc bc                                           ; $741e: $03
	ld b, c                                          ; $741f: $41
	ret nz                                           ; $7420: $c0

	ld bc, $08a0                                     ; $7421: $01 $a0 $08
	inc bc                                           ; $7424: $03
	ld c, l                                          ; $7425: $4d
	ret nz                                           ; $7426: $c0

	ld bc, $28a0                                     ; $7427: $01 $a0 $28
	inc bc                                           ; $742a: $03
	ld d, e                                          ; $742b: $53
	ret nz                                           ; $742c: $c0

	ld bc, $29a0                                     ; $742d: $01 $a0 $29
	inc bc                                           ; $7430: $03
	ld e, a                                          ; $7431: $5f
	ret nz                                           ; $7432: $c0

	ld bc, $08a0                                     ; $7433: $01 $a0 $08
	inc bc                                           ; $7436: $03
	ld h, e                                          ; $7437: $63
	ret nz                                           ; $7438: $c0

	ld bc, $01a0                                     ; $7439: $01 $a0 $01
	inc bc                                           ; $743c: $03
	ld [hl], h                                       ; $743d: $74
	ret nz                                           ; $743e: $c0

	ld bc, $08a0                                     ; $743f: $01 $a0 $08
	inc bc                                           ; $7442: $03
	ld a, [hl]                                       ; $7443: $7e
	ret nz                                           ; $7444: $c0

	set 0, b                                         ; $7445: $cb $c0
	ld bc, $01a0                                     ; $7447: $01 $a0 $01
	inc bc                                           ; $744a: $03
	add a                                            ; $744b: $87
	nop                                              ; $744c: $00
	add b                                            ; $744d: $80
	and b                                            ; $744e: $a0
	inc b                                            ; $744f: $04
	ret nz                                           ; $7450: $c0

	ld hl, $d7d1                                     ; $7451: $21 $d1 $d7
	pop bc                                           ; $7454: $c1
	dec sp                                           ; $7455: $3b
	pop bc                                           ; $7456: $c1
	ld l, e                                          ; $7457: $6b
	db $d3                                           ; $7458: $d3
	rst SubAFromHL                                          ; $7459: $d7
	push hl                                          ; $745a: $e5
	ld bc, $b119                                     ; $745b: $01 $19 $b1
	ld [$07b0], sp                                   ; $745e: $08 $b0 $07
	inc bc                                           ; $7461: $03
	db $e4                                           ; $7462: $e4
	nop                                              ; $7463: $00
	inc b                                            ; $7464: $04
	rst $38                                          ; $7465: $ff
	nop                                              ; $7466: $00
	add hl, bc                                       ; $7467: $09
	ret nz                                           ; $7468: $c0

	sub $c1                                          ; $7469: $d6 $c1
	ld d, e                                          ; $746b: $53
	ret nz                                           ; $746c: $c0

	inc d                                            ; $746d: $14
	db $e3                                           ; $746e: $e3
	nop                                              ; $746f: $00
	inc a                                            ; $7470: $3c
	ret nz                                           ; $7471: $c0

	ld bc, $01a0                                     ; $7472: $01 $a0 $01
	inc bc                                           ; $7475: $03
	sub b                                            ; $7476: $90
	ret nz                                           ; $7477: $c0

	dec bc                                           ; $7478: $0b
	db $e3                                           ; $7479: $e3
	nop                                              ; $747a: $00
	adc b                                            ; $747b: $88
	ret nz                                           ; $747c: $c0

	ld bc, $01a0                                     ; $747d: $01 $a0 $01
	inc bc                                           ; $7480: $03
	sub a                                            ; $7481: $97
	pop bc                                           ; $7482: $c1
	ld e, c                                          ; $7483: $59
	db $e3                                           ; $7484: $e3
	nop                                              ; $7485: $00
	ld d, c                                          ; $7486: $51
	ret nz                                           ; $7487: $c0

	inc c                                            ; $7488: $0c
	ldh [$50], a                                     ; $7489: $e0 $50
	ret nz                                           ; $748b: $c0

	ld bc, $01a0                                     ; $748c: $01 $a0 $01
	inc bc                                           ; $748f: $03
	sbc c                                            ; $7490: $99
	ret nz                                           ; $7491: $c0

	add hl, bc                                       ; $7492: $09
	db $e3                                           ; $7493: $e3
	nop                                              ; $7494: $00
	ld bc, $cbc0                                     ; $7495: $01 $c0 $cb
	ret nz                                           ; $7498: $c0

	rrca                                             ; $7499: $0f
	db $e3                                           ; $749a: $e3
	nop                                              ; $749b: $00
	rst $38                                          ; $749c: $ff
	ret nz                                           ; $749d: $c0

	ld bc, $01a0                                     ; $749e: $01 $a0 $01
	inc bc                                           ; $74a1: $03
	sbc h                                            ; $74a2: $9c
	ret nz                                           ; $74a3: $c0

	ld bc, $27a0                                     ; $74a4: $01 $a0 $27
	inc bc                                           ; $74a7: $03
	and l                                            ; $74a8: $a5
	ret nz                                           ; $74a9: $c0

	ld bc, $01a0                                     ; $74aa: $01 $a0 $01
	inc bc                                           ; $74ad: $03
	xor d                                            ; $74ae: $aa
	ret nz                                           ; $74af: $c0

	set 4, c                                         ; $74b0: $cb $e1
	ld [bc], a                                       ; $74b2: $02
	rlca                                             ; $74b3: $07
	cp a                                             ; $74b4: $bf
	ret nz                                           ; $74b5: $c0

	ld bc, $01a0                                     ; $74b6: $01 $a0 $01
	inc bc                                           ; $74b9: $03
	or h                                             ; $74ba: $b4
	ret nz                                           ; $74bb: $c0

	ld bc, $01a0                                     ; $74bc: $01 $a0 $01
	inc bc                                           ; $74bf: $03
	call nz, $0bc0                                   ; $74c0: $c4 $c0 $0b
	db $e3                                           ; $74c3: $e3
	nop                                              ; $74c4: $00
	adc b                                            ; $74c5: $88
	ret nz                                           ; $74c6: $c0

	inc c                                            ; $74c7: $0c
	ldh [$3c], a                                     ; $74c8: $e0 $3c
	ret nz                                           ; $74ca: $c0

	ld de, $00e3                                     ; $74cb: $11 $e3 $00
	inc a                                            ; $74ce: $3c
	ret nz                                           ; $74cf: $c0

	xor b                                            ; $74d0: $a8
	ret c                                            ; $74d1: $d8

	ret nz                                           ; $74d2: $c0

	xor h                                            ; $74d3: $ac
	pop bc                                           ; $74d4: $c1
	ld e, h                                          ; $74d5: $5c
	ret nz                                           ; $74d6: $c0

	jp z, $01c0                                      ; $74d7: $ca $c0 $01

	and b                                            ; $74da: $a0
	ld bc, $c903                                     ; $74db: $01 $03 $c9
	ret nz                                           ; $74de: $c0

	ld bc, $09a0                                     ; $74df: $01 $a0 $09
	inc bc                                           ; $74e2: $03
	call $01c0                                       ; $74e3: $cd $c0 $01
	and b                                            ; $74e6: $a0
	ld bc, $d203                                     ; $74e7: $01 $03 $d2
	pop hl                                           ; $74ea: $e1
	ld [bc], a                                       ; $74eb: $02
	inc bc                                           ; $74ec: $03
	dec de                                           ; $74ed: $1b
	ret nz                                           ; $74ee: $c0

	ld bc, $09a0                                     ; $74ef: $01 $a0 $09
	inc bc                                           ; $74f2: $03
	jp c, $01c0                                      ; $74f3: $da $c0 $01

	and b                                            ; $74f6: $a0
	ld bc, $e403                                     ; $74f7: $01 $03 $e4
	pop hl                                           ; $74fa: $e1
	ld [bc], a                                       ; $74fb: $02
	inc bc                                           ; $74fc: $03
	rrca                                             ; $74fd: $0f
	ret nz                                           ; $74fe: $c0

	ld bc, $09a0                                     ; $74ff: $01 $a0 $09
	inc bc                                           ; $7502: $03
	ld [$01c0], a                                    ; $7503: $ea $c0 $01
	and b                                            ; $7506: $a0
	ld bc, $f003                                     ; $7507: $01 $03 $f0
	pop hl                                           ; $750a: $e1
	ld [bc], a                                       ; $750b: $02
	inc bc                                           ; $750c: $03
	inc de                                           ; $750d: $13
	ret nz                                           ; $750e: $c0

	ld bc, $09a0                                     ; $750f: $01 $a0 $09
	inc bc                                           ; $7512: $03
	rst $38                                          ; $7513: $ff
	ret nz                                           ; $7514: $c0

	ld bc, $01a0                                     ; $7515: $01 $a0 $01
	inc b                                            ; $7518: $04
	ld a, [bc]                                       ; $7519: $0a
	ret nz                                           ; $751a: $c0

	ld bc, $09a0                                     ; $751b: $01 $a0 $09
	inc b                                            ; $751e: $04
	ld [de], a                                       ; $751f: $12
	ret nz                                           ; $7520: $c0

	ld bc, $01a0                                     ; $7521: $01 $a0 $01
	inc b                                            ; $7524: $04
	inc h                                            ; $7525: $24
	ret nz                                           ; $7526: $c0

	ld bc, $09a0                                     ; $7527: $01 $a0 $09
	inc b                                            ; $752a: $04
	inc l                                            ; $752b: $2c
	pop bc                                           ; $752c: $c1
	ld e, e                                          ; $752d: $5b
	nop                                              ; $752e: $00
	add b                                            ; $752f: $80
	and b                                            ; $7530: $a0
	add hl, bc                                       ; $7531: $09
	ret nz                                           ; $7532: $c0

	ld hl, $d8d1                                     ; $7533: $21 $d1 $d8
	pop bc                                           ; $7536: $c1
	ld l, e                                          ; $7537: $6b
	push de                                          ; $7538: $d5
	ret c                                            ; $7539: $d8

	ret nz                                           ; $753a: $c0

	set 4, l                                         ; $753b: $cb $e5
	ld bc, $b119                                     ; $753d: $01 $19 $b1
	add hl, bc                                       ; $7540: $09
	pop bc                                           ; $7541: $c1
	cpl                                              ; $7542: $2f
	pop bc                                           ; $7543: $c1
	ld d, e                                          ; $7544: $53
	ret nz                                           ; $7545: $c0

	inc d                                            ; $7546: $14
	db $e3                                           ; $7547: $e3
	nop                                              ; $7548: $00
	inc a                                            ; $7549: $3c
	ret nz                                           ; $754a: $c0

	ld bc, $01a0                                     ; $754b: $01 $a0 $01
	inc b                                            ; $754e: $04
	ld [hl-], a                                      ; $754f: $32
	ret nz                                           ; $7550: $c0

	add hl, bc                                       ; $7551: $09
	db $e3                                           ; $7552: $e3
	nop                                              ; $7553: $00
	ld [bc], a                                       ; $7554: $02
	ret nz                                           ; $7555: $c0

	ld bc, $06a0                                     ; $7556: $01 $a0 $06
	inc b                                            ; $7559: $04
	ccf                                              ; $755a: $3f
	pop hl                                           ; $755b: $e1
	ld [bc], a                                       ; $755c: $02
	ld [bc], a                                       ; $755d: $02
	ld b, b                                          ; $755e: $40
	ret nz                                           ; $755f: $c0

	ld bc, $01a0                                     ; $7560: $01 $a0 $01
	inc b                                            ; $7563: $04
	ld b, d                                          ; $7564: $42
	pop bc                                           ; $7565: $c1
	ld l, e                                          ; $7566: $6b
	call nc, $a0da                                   ; $7567: $d4 $da $a0
	add b                                            ; $756a: $80
	and b                                            ; $756b: $a0
	ld [de], a                                       ; $756c: $12
	nop                                              ; $756d: $00
	sbc [hl]                                         ; $756e: $9e
	ret nz                                           ; $756f: $c0

	ld bc, $06a0                                     ; $7570: $01 $a0 $06
	inc b                                            ; $7573: $04
	ld b, [hl]                                       ; $7574: $46
	ret nz                                           ; $7575: $c0

	ld bc, $01a0                                     ; $7576: $01 $a0 $01
	inc b                                            ; $7579: $04
	ld d, c                                          ; $757a: $51
	ret nz                                           ; $757b: $c0

	ld bc, $06a0                                     ; $757c: $01 $a0 $06
	inc b                                            ; $757f: $04
	ld e, d                                          ; $7580: $5a
	ret nz                                           ; $7581: $c0

	ld bc, $01a0                                     ; $7582: $01 $a0 $01
	inc b                                            ; $7585: $04
	ld h, [hl]                                       ; $7586: $66
	ldh [rP1], a                                     ; $7587: $e0 $00
	ld [$01c0], a                                    ; $7589: $ea $c0 $01
	and b                                            ; $758c: $a0
	ld b, $04                                        ; $758d: $06 $04
	ld l, l                                          ; $758f: $6d
	ret nz                                           ; $7590: $c0

	ld bc, $01a0                                     ; $7591: $01 $a0 $01
	inc b                                            ; $7594: $04
	ld [hl], a                                       ; $7595: $77
	ret nz                                           ; $7596: $c0

	nop                                              ; $7597: $00
	inc b                                            ; $7598: $04
	add d                                            ; $7599: $82
	ret nz                                           ; $759a: $c0

	ld bc, $06a0                                     ; $759b: $01 $a0 $06
	inc b                                            ; $759e: $04
	adc e                                            ; $759f: $8b
	ret nz                                           ; $75a0: $c0

	ld bc, $01a0                                     ; $75a1: $01 $a0 $01
	inc b                                            ; $75a4: $04
	adc a                                            ; $75a5: $8f
	ret nz                                           ; $75a6: $c0

	ld bc, $06a0                                     ; $75a7: $01 $a0 $06
	inc b                                            ; $75aa: $04
	sbc l                                            ; $75ab: $9d
	ret nz                                           ; $75ac: $c0

	ld bc, $01a0                                     ; $75ad: $01 $a0 $01
	inc b                                            ; $75b0: $04
	and d                                            ; $75b1: $a2
	ret nz                                           ; $75b2: $c0

	ld bc, $06a0                                     ; $75b3: $01 $a0 $06
	inc b                                            ; $75b6: $04
	xor a                                            ; $75b7: $af
	ret nz                                           ; $75b8: $c0

	ld bc, $01a0                                     ; $75b9: $01 $a0 $01
	inc b                                            ; $75bc: $04
	cp [hl]                                          ; $75bd: $be
	ret nz                                           ; $75be: $c0

	ld bc, $06a0                                     ; $75bf: $01 $a0 $06
	inc b                                            ; $75c2: $04
	pop de                                           ; $75c3: $d1
	ret nz                                           ; $75c4: $c0

	ld bc, $01a0                                     ; $75c5: $01 $a0 $01
	inc b                                            ; $75c8: $04
	sbc $c0                                          ; $75c9: $de $c0
	ld bc, $06a0                                     ; $75cb: $01 $a0 $06
	inc b                                            ; $75ce: $04
	add sp, -$40                                     ; $75cf: $e8 $c0
	ld bc, $01a0                                     ; $75d1: $01 $a0 $01
	inc b                                            ; $75d4: $04
	rst AddAOntoHL                                          ; $75d5: $ef
	ret nz                                           ; $75d6: $c0

	ld bc, $01a0                                     ; $75d7: $01 $a0 $01
	dec b                                            ; $75da: $05
	nop                                              ; $75db: $00

jr_086_75dc:
	pop hl                                           ; $75dc: $e1
	ld [bc], a                                       ; $75dd: $02
	rlca                                             ; $75de: $07
	cp a                                             ; $75df: $bf
	ret nz                                           ; $75e0: $c0

	set 0, b                                         ; $75e1: $cb $c0
	ld de, $00e3                                     ; $75e3: $11 $e3 $00
	ld c, a                                          ; $75e6: $4f
	ret nz                                           ; $75e7: $c0

	xor b                                            ; $75e8: $a8
	jp c, $abc0                                      ; $75e9: $da $c0 $ab

	jp nc, $5cc1                                     ; $75ec: $d2 $c1 $5c

	ret nz                                           ; $75ef: $c0

	jp z, $01c0                                      ; $75f0: $ca $c0 $01

	and b                                            ; $75f3: $a0
	ld b, $05                                        ; $75f4: $06 $05
	add hl, bc                                       ; $75f6: $09
	ret nz                                           ; $75f7: $c0

	ld bc, $01a0                                     ; $75f8: $01 $a0 $01
	dec b                                            ; $75fb: $05
	db $10                                           ; $75fc: $10
	ret nz                                           ; $75fd: $c0

	ld bc, $06a0                                     ; $75fe: $01 $a0 $06
	dec b                                            ; $7601: $05
	inc e                                            ; $7602: $1c
	ret nz                                           ; $7603: $c0

	ld bc, $01a0                                     ; $7604: $01 $a0 $01
	dec b                                            ; $7607: $05
	ld h, $c0                                        ; $7608: $26 $c0
	set 0, c                                         ; $760a: $cb $c1
	ld e, e                                          ; $760c: $5b
	rst $38                                          ; $760d: $ff
	ld c, l                                          ; $760e: $4d
	ret nz                                           ; $760f: $c0

	ld bc, $06a0                                     ; $7610: $01 $a0 $06
	dec b                                            ; $7613: $05
	add hl, hl                                       ; $7614: $29
	ret nz                                           ; $7615: $c0

	ld bc, $01a0                                     ; $7616: $01 $a0 $01
	dec b                                            ; $7619: $05
	jr c, jr_086_75dc                                ; $761a: $38 $c0

	ld bc, $06a0                                     ; $761c: $01 $a0 $06
	dec b                                            ; $761f: $05
	ld b, c                                          ; $7620: $41
	ret nz                                           ; $7621: $c0

	ld bc, $01a0                                     ; $7622: $01 $a0 $01
	dec b                                            ; $7625: $05
	ld c, e                                          ; $7626: $4b
	ret nz                                           ; $7627: $c0

	ld bc, $06a0                                     ; $7628: $01 $a0 $06
	dec b                                            ; $762b: $05
	ld e, c                                          ; $762c: $59
	ret nz                                           ; $762d: $c0

	ld bc, $01a0                                     ; $762e: $01 $a0 $01
	dec b                                            ; $7631: $05
	ld e, a                                          ; $7632: $5f
	ldh [rP1], a                                     ; $7633: $e0 $00
	ld a, $c0                                        ; $7635: $3e $c0
	ld bc, $06a0                                     ; $7637: $01 $a0 $06
	dec b                                            ; $763a: $05
	ld h, h                                          ; $763b: $64
	ret nz                                           ; $763c: $c0

	ld bc, $01a0                                     ; $763d: $01 $a0 $01
	dec b                                            ; $7640: $05
	ld [hl], c                                       ; $7641: $71
	ret nz                                           ; $7642: $c0

	ld bc, $06a0                                     ; $7643: $01 $a0 $06
	dec b                                            ; $7646: $05
	ld a, b                                          ; $7647: $78
	ret nz                                           ; $7648: $c0

	ld bc, $01a0                                     ; $7649: $01 $a0 $01
	dec b                                            ; $764c: $05
	ld a, e                                          ; $764d: $7b
	ret nz                                           ; $764e: $c0

	ld bc, $06a0                                     ; $764f: $01 $a0 $06
	dec b                                            ; $7652: $05
	adc c                                            ; $7653: $89
	ret nz                                           ; $7654: $c0

	ld bc, $01a0                                     ; $7655: $01 $a0 $01
	dec b                                            ; $7658: $05
	ld h, $c0                                        ; $7659: $26 $c0
	set 0, b                                         ; $765b: $cb $c0
	ld [hl+], a                                      ; $765d: $22
	pop de                                           ; $765e: $d1
	jp c, $21c0                                      ; $765f: $da $c0 $21

	jp nc, $c0da                                     ; $7662: $d2 $da $c0

	jp c, $d0d5                                      ; $7665: $da $d5 $d0

	ret nz                                           ; $7668: $c0

	reti                                             ; $7669: $d9


	push de                                          ; $766a: $d5
	rst SubAFromHL                                          ; $766b: $d7
	pop bc                                           ; $766c: $c1
	dec sp                                           ; $766d: $3b
	push hl                                          ; $766e: $e5
	ld bc, $b119                                     ; $766f: $01 $19 $b1
	add hl, bc                                       ; $7672: $09
	ret nz                                           ; $7673: $c0

	set 0, c                                         ; $7674: $cb $c1
	ld e, e                                          ; $7676: $5b
	ret nz                                           ; $7677: $c0

	rrca                                             ; $7678: $0f
	db $e3                                           ; $7679: $e3
	ld bc, $0905                                     ; $767a: $01 $05 $09
	sbc l                                            ; $767d: $9d
	pop bc                                           ; $767e: $c1
	ld d, e                                          ; $767f: $53
	ret nz                                           ; $7680: $c0

	inc d                                            ; $7681: $14
	db $e3                                           ; $7682: $e3
	nop                                              ; $7683: $00
	ld c, d                                          ; $7684: $4a
	ret nz                                           ; $7685: $c0

	add hl, bc                                       ; $7686: $09
	db $e3                                           ; $7687: $e3
	nop                                              ; $7688: $00
	ld [bc], a                                       ; $7689: $02
	ret nz                                           ; $768a: $c0

	xor b                                            ; $768b: $a8
	jp c, $acc0                                      ; $768c: $da $c0 $ac

	ret nz                                           ; $768f: $c0

	and l                                            ; $7690: $a5
	ret nz                                           ; $7691: $c0

	ld bc, $06a0                                     ; $7692: $01 $a0 $06
	inc b                                            ; $7695: $04
	ccf                                              ; $7696: $3f
	ret nz                                           ; $7697: $c0

	ld bc, $01a0                                     ; $7698: $01 $a0 $01
	dec b                                            ; $769b: $05

jr_086_769c:
	sub b                                            ; $769c: $90
	add c                                            ; $769d: $81
	ret nz                                           ; $769e: $c0

	dec de                                           ; $769f: $1b
	jp c, $d002                                      ; $76a0: $da $02 $d0

	pop de                                           ; $76a3: $d1
	inc [hl]                                         ; $76a4: $34
	ret nz                                           ; $76a5: $c0

	ld bc, $06a0                                     ; $76a6: $01 $a0 $06
	dec b                                            ; $76a9: $05
	sub [hl]                                         ; $76aa: $96
	ret nz                                           ; $76ab: $c0

	ld bc, $01a0                                     ; $76ac: $01 $a0 $01
	dec b                                            ; $76af: $05
	sbc a                                            ; $76b0: $9f
	ret nz                                           ; $76b1: $c0

	ld bc, $06a0                                     ; $76b2: $01 $a0 $06
	dec b                                            ; $76b5: $05
	and [hl]                                         ; $76b6: $a6
	ret nz                                           ; $76b7: $c0

	ld bc, $01a0                                     ; $76b8: $01 $a0 $01
	dec b                                            ; $76bb: $05
	xor [hl]                                         ; $76bc: $ae
	ret nz                                           ; $76bd: $c0

	ld bc, $06a0                                     ; $76be: $01 $a0 $06
	dec b                                            ; $76c1: $05
	or b                                             ; $76c2: $b0
	ret nz                                           ; $76c3: $c0

	ld bc, $01a0                                     ; $76c4: $01 $a0 $01
	dec b                                            ; $76c7: $05
	cp h                                             ; $76c8: $bc
	ret nz                                           ; $76c9: $c0

	ld bc, $06a0                                     ; $76ca: $01 $a0 $06
	dec b                                            ; $76cd: $05
	call nz, $5bc1                                   ; $76ce: $c4 $c1 $5b
	ret nz                                           ; $76d1: $c0

	ld [hl+], a                                      ; $76d2: $22
	pop de                                           ; $76d3: $d1
	jp c, $21c0                                      ; $76d4: $da $c0 $21

	jp nc, $00da                                     ; $76d7: $d2 $da $00

	jr nc, jr_086_769c                               ; $76da: $30 $c0

	ld bc, $06a0                                     ; $76dc: $01 $a0 $06
	dec b                                            ; $76df: $05
	call $01c0                                       ; $76e0: $cd $c0 $01
	and b                                            ; $76e3: $a0
	ld bc, $d505                                     ; $76e4: $01 $05 $d5
	ret nz                                           ; $76e7: $c0

	ld bc, $01a0                                     ; $76e8: $01 $a0 $01
	dec b                                            ; $76eb: $05
	call c, $01c0                                    ; $76ec: $dc $c0 $01
	and b                                            ; $76ef: $a0
	ld b, $05                                        ; $76f0: $06 $05
	ld [$01c0], a                                    ; $76f2: $ea $c0 $01
	and b                                            ; $76f5: $a0
	ld bc, $f605                                     ; $76f6: $01 $05 $f6
	ret nz                                           ; $76f9: $c0

	ld bc, $06a0                                     ; $76fa: $01 $a0 $06
	dec b                                            ; $76fd: $05
	cp $c1                                           ; $76fe: $fe $c1
	ld e, e                                          ; $7700: $5b
	ret nz                                           ; $7701: $c0

	ld bc, $01a0                                     ; $7702: $01 $a0 $01
	ld b, $09                                        ; $7705: $06 $09
	ret nz                                           ; $7707: $c0

	ld hl, $dad2                                     ; $7708: $21 $d2 $da
	nop                                              ; $770b: $00
	add b                                            ; $770c: $80
	and b                                            ; $770d: $a0
	dec b                                            ; $770e: $05
	pop bc                                           ; $770f: $c1
	dec sp                                           ; $7710: $3b
	pop bc                                           ; $7711: $c1
	ld l, e                                          ; $7712: $6b
	push de                                          ; $7713: $d5
	jp c, $cbc0                                      ; $7714: $da $c0 $cb

	push hl                                          ; $7717: $e5
	ld bc, $b119                                     ; $7718: $01 $19 $b1
	ld [$07b0], sp                                   ; $771b: $08 $b0 $07
	inc bc                                           ; $771e: $03
	db $e4                                           ; $771f: $e4
	nop                                              ; $7720: $00
	inc b                                            ; $7721: $04
	rst $38                                          ; $7722: $ff
	nop                                              ; $7723: $00
	add hl, bc                                       ; $7724: $09
	ret nz                                           ; $7725: $c0

	ldh [c], a                                       ; $7726: $e2
	nop                                              ; $7727: $00
	add b                                            ; $7728: $80
	and b                                            ; $7729: $a0
	ld b, $c1                                        ; $772a: $06 $c1
	ld d, e                                          ; $772c: $53
	ret nz                                           ; $772d: $c0

	inc d                                            ; $772e: $14
	db $e3                                           ; $772f: $e3
	nop                                              ; $7730: $00
	inc a                                            ; $7731: $3c
	ret nz                                           ; $7732: $c0

	ld bc, $01a0                                     ; $7733: $01 $a0 $01
	ld b, $12                                        ; $7736: $06 $12
	ret nz                                           ; $7738: $c0

	inc c                                            ; $7739: $0c
	ldh [rAUD3HIGH], a                               ; $773a: $e0 $1e
	ret nz                                           ; $773c: $c0

jr_086_773d:
	ld bc, $01a0                                     ; $773d: $01 $a0 $01
	ld b, $19                                        ; $7740: $06 $19
	pop bc                                           ; $7742: $c1
	dec sp                                           ; $7743: $3b
	ret nz                                           ; $7744: $c0

	set 0, c                                         ; $7745: $cb $c1
	ld e, e                                          ; $7747: $5b
	ret nz                                           ; $7748: $c0

	add hl, bc                                       ; $7749: $09
	db $e3                                           ; $774a: $e3
	nop                                              ; $774b: $00
	ld d, $c0                                        ; $774c: $16 $c0
	rrca                                             ; $774e: $0f
	db $e3                                           ; $774f: $e3
	ld bc, $c00d                                     ; $7750: $01 $0d $c0
	ld bc, $0aa0                                     ; $7753: $01 $a0 $0a
	ld bc, $c090                                     ; $7756: $01 $90 $c0
	ld bc, $01a0                                     ; $7759: $01 $a0 $01
	ld b, $1f                                        ; $775c: $06 $1f
	ret nz                                           ; $775e: $c0

	ld bc, $0aa0                                     ; $775f: $01 $a0 $0a
	ld b, $22                                        ; $7762: $06 $22
	ret nz                                           ; $7764: $c0

	ld bc, $01a0                                     ; $7765: $01 $a0 $01
	ld b, $24                                        ; $7768: $06 $24
	ret nz                                           ; $776a: $c0

	ld bc, $0aa0                                     ; $776b: $01 $a0 $0a
	ld b, $27                                        ; $776e: $06 $27
	ret nz                                           ; $7770: $c0

	ld bc, $01a0                                     ; $7771: $01 $a0 $01
	ld b, $29                                        ; $7774: $06 $29
	ret nz                                           ; $7776: $c0

	ld bc, $0aa0                                     ; $7777: $01 $a0 $0a
	nop                                              ; $777a: $00
	jr c, jr_086_773d                                ; $777b: $38 $c0

	ld bc, $01a0                                     ; $777d: $01 $a0 $01
	ld b, $34                                        ; $7780: $06 $34
	ret nz                                           ; $7782: $c0

	ld bc, $0aa0                                     ; $7783: $01 $a0 $0a
	ld b, $3b                                        ; $7786: $06 $3b
	ret nz                                           ; $7788: $c0

	ld bc, $01a0                                     ; $7789: $01 $a0 $01
	ld b, $49                                        ; $778c: $06 $49
	ret nz                                           ; $778e: $c0

	ld bc, $0aa0                                     ; $778f: $01 $a0 $0a
	ld b, $4d                                        ; $7792: $06 $4d
	ret nz                                           ; $7794: $c0

	ld bc, $01a0                                     ; $7795: $01 $a0 $01
	ld b, $60                                        ; $7798: $06 $60
	ret nz                                           ; $779a: $c0

	ld bc, $0aa0                                     ; $779b: $01 $a0 $0a
	ld b, $69                                        ; $779e: $06 $69
	ret nz                                           ; $77a0: $c0

	ld bc, $01a0                                     ; $77a1: $01 $a0 $01
	ld b, $74                                        ; $77a4: $06 $74
	ret nz                                           ; $77a6: $c0

	ld bc, $0aa0                                     ; $77a7: $01 $a0 $0a
	ld b, $8e                                        ; $77aa: $06 $8e
	ret nz                                           ; $77ac: $c0

	ld bc, $01a0                                     ; $77ad: $01 $a0 $01
	ld b, $96                                        ; $77b0: $06 $96
	ret nz                                           ; $77b2: $c0

	set 0, b                                         ; $77b3: $cb $c0
	ld de, $00e3                                     ; $77b5: $11 $e3 $00
	inc a                                            ; $77b8: $3c
	ret nz                                           ; $77b9: $c0

	xor b                                            ; $77ba: $a8
	db $dd                                           ; $77bb: $dd
	ret nz                                           ; $77bc: $c0

	xor e                                            ; $77bd: $ab
	ret nc                                           ; $77be: $d0

	pop bc                                           ; $77bf: $c1
	ld e, h                                          ; $77c0: $5c
	ret nz                                           ; $77c1: $c0

	jp z, $01c0                                      ; $77c2: $ca $c0 $01

	and b                                            ; $77c5: $a0
	ld a, [bc]                                       ; $77c6: $0a
	ld b, $9a                                        ; $77c7: $06 $9a
	ret nz                                           ; $77c9: $c0

	ld bc, $01a0                                     ; $77ca: $01 $a0 $01
	ld b, $9d                                        ; $77cd: $06 $9d
	ret nz                                           ; $77cf: $c0

	ld bc, $0aa0                                     ; $77d0: $01 $a0 $0a
	ld b, $ae                                        ; $77d3: $06 $ae
	pop hl                                           ; $77d5: $e1
	ld [bc], a                                       ; $77d6: $02
	inc bc                                           ; $77d7: $03
	rrca                                             ; $77d8: $0f
	ret nz                                           ; $77d9: $c0

	ld bc, $01a0                                     ; $77da: $01 $a0 $01
	ld b, $b0                                        ; $77dd: $06 $b0
	ret nz                                           ; $77df: $c0

	ld bc, $0aa0                                     ; $77e0: $01 $a0 $0a
	ld b, $b8                                        ; $77e3: $06 $b8
	ret nz                                           ; $77e5: $c0

	ld bc, $01a0                                     ; $77e6: $01 $a0 $01
	ld b, $c0                                        ; $77e9: $06 $c0
	pop hl                                           ; $77eb: $e1
	ld [bc], a                                       ; $77ec: $02
	inc bc                                           ; $77ed: $03
	inc de                                           ; $77ee: $13
	ret nz                                           ; $77ef: $c0

	inc c                                            ; $77f0: $0c
	ldh [$3c], a                                     ; $77f1: $e0 $3c
	pop bc                                           ; $77f3: $c1
	ld e, e                                          ; $77f4: $5b
	ret nz                                           ; $77f5: $c0

	ld hl, $ddd2                                     ; $77f6: $21 $d2 $dd
	ret nz                                           ; $77f9: $c0

	ld [hl+], a                                      ; $77fa: $22
	jp nc, $c1dd                                     ; $77fb: $d2 $dd $c1

	dec sp                                           ; $77fe: $3b
	pop bc                                           ; $77ff: $c1
	ld l, e                                          ; $7800: $6b
	call nc, $c0dd                                   ; $7801: $d4 $dd $c0
	set 4, l                                         ; $7804: $cb $e5
	ld bc, $b119                                     ; $7806: $01 $19 $b1
	ld [$07b0], sp                                   ; $7809: $08 $b0 $07
	inc bc                                           ; $780c: $03
	db $e4                                           ; $780d: $e4
	nop                                              ; $780e: $00
	inc b                                            ; $780f: $04
	rst $38                                          ; $7810: $ff
	nop                                              ; $7811: $00
	add hl, bc                                       ; $7812: $09
	ret nz                                           ; $7813: $c0

	push hl                                          ; $7814: $e5
	nop                                              ; $7815: $00
	add b                                            ; $7816: $80
	and b                                            ; $7817: $a0
	nop                                              ; $7818: $00
	pop bc                                           ; $7819: $c1
	ld d, e                                          ; $781a: $53
	ret nz                                           ; $781b: $c0

	inc d                                            ; $781c: $14
	db $e3                                           ; $781d: $e3
	nop                                              ; $781e: $00
	ld a, l                                          ; $781f: $7d
	ret nz                                           ; $7820: $c0

	ld bc, $01a0                                     ; $7821: $01 $a0 $01
	ld b, $c5                                        ; $7824: $06 $c5
	ret nz                                           ; $7826: $c0

	inc c                                            ; $7827: $0c
	ldh [rAUD3HIGH], a                               ; $7828: $e0 $1e
	ret nz                                           ; $782a: $c0

	nop                                              ; $782b: $00
	ld b, $d5                                        ; $782c: $06 $d5
	ret nz                                           ; $782e: $c0

	ld bc, $01a0                                     ; $782f: $01 $a0 $01
	ld b, $e8                                        ; $7832: $06 $e8
	pop bc                                           ; $7834: $c1
	ld e, c                                          ; $7835: $59
	db $e3                                           ; $7836: $e3
	ld bc, $c00e                                     ; $7837: $01 $0e $c0
	ld bc, $01a0                                     ; $783a: $01 $a0 $01
	ld b, $ec                                        ; $783d: $06 $ec
	ret nz                                           ; $783f: $c0

	nop                                              ; $7840: $00
	ld b, $f6                                        ; $7841: $06 $f6
	ret nz                                           ; $7843: $c0

	ld bc, $01a0                                     ; $7844: $01 $a0 $01
	rlca                                             ; $7847: $07
	ld [bc], a                                       ; $7848: $02
	ret nz                                           ; $7849: $c0

	inc c                                            ; $784a: $0c
	ldh [rAUD3HIGH], a                               ; $784b: $e0 $1e
	ret nz                                           ; $784d: $c0

	ld bc, $0aa0                                     ; $784e: $01 $a0 $0a
	rlca                                             ; $7851: $07
	rrca                                             ; $7852: $0f
	pop bc                                           ; $7853: $c1
	dec sp                                           ; $7854: $3b
	ret nz                                           ; $7855: $c0

	ld bc, $01a0                                     ; $7856: $01 $a0 $01
	rlca                                             ; $7859: $07
	inc de                                           ; $785a: $13
	ret nz                                           ; $785b: $c0

	set 0, b                                         ; $785c: $cb $c0
	add hl, bc                                       ; $785e: $09
	db $e3                                           ; $785f: $e3
	nop                                              ; $7860: $00
	rlca                                             ; $7861: $07
	ret nz                                           ; $7862: $c0

	rrca                                             ; $7863: $0f
	db $e3                                           ; $7864: $e3
	ld bc, $c00c                                     ; $7865: $01 $0c $c0
	ld bc, $0aa0                                     ; $7868: $01 $a0 $0a
	rlca                                             ; $786b: $07
	dec d                                            ; $786c: $15
	ret nz                                           ; $786d: $c0

	ld bc, $01a0                                     ; $786e: $01 $a0 $01
	rlca                                             ; $7871: $07
	rra                                              ; $7872: $1f
	ret nz                                           ; $7873: $c0

	inc c                                            ; $7874: $0c
	ldh [rAUD3HIGH], a                               ; $7875: $e0 $1e
	ret nz                                           ; $7877: $c0

	ld bc, $0aa0                                     ; $7878: $01 $a0 $0a
	rlca                                             ; $787b: $07
	ld a, [hl+]                                      ; $787c: $2a
	ret nz                                           ; $787d: $c0

	ld bc, $0aa0                                     ; $787e: $01 $a0 $0a
	rlca                                             ; $7881: $07
	inc sp                                           ; $7882: $33
	ret nz                                           ; $7883: $c0

	ld bc, $01a0                                     ; $7884: $01 $a0 $01
	rlca                                             ; $7887: $07
	add hl, sp                                       ; $7888: $39
	ret nz                                           ; $7889: $c0

	set 0, b                                         ; $788a: $cb $c0
	ld de, $00e3                                     ; $788c: $11 $e3 $00
	ld a, [hl]                                       ; $788f: $7e
	pop hl                                           ; $7890: $e1
	ld [bc], a                                       ; $7891: $02
	ld [bc], a                                       ; $7892: $02
	ld a, b                                          ; $7893: $78
	ret nz                                           ; $7894: $c0

	ld bc, $0aa0                                     ; $7895: $01 $a0 $0a
	rlca                                             ; $7898: $07
	ld b, e                                          ; $7899: $43
	ret nz                                           ; $789a: $c0

	ld bc, $0aa0                                     ; $789b: $01 $a0 $0a
	rlca                                             ; $789e: $07
	ld b, l                                          ; $789f: $45
	pop hl                                           ; $78a0: $e1
	ld [bc], a                                       ; $78a1: $02
	inc bc                                           ; $78a2: $03
	dec de                                           ; $78a3: $1b
	ret nz                                           ; $78a4: $c0

	ld bc, $01a0                                     ; $78a5: $01 $a0 $01
	rlca                                             ; $78a8: $07
	ld c, c                                          ; $78a9: $49
	pop hl                                           ; $78aa: $e1
	ld [bc], a                                       ; $78ab: $02
	inc bc                                           ; $78ac: $03
	inc de                                           ; $78ad: $13
	ret nz                                           ; $78ae: $c0

	ld bc, $0aa0                                     ; $78af: $01 $a0 $0a
	rlca                                             ; $78b2: $07
	ld c, a                                          ; $78b3: $4f
	ret nz                                           ; $78b4: $c0

	ld bc, $01a0                                     ; $78b5: $01 $a0 $01
	rlca                                             ; $78b8: $07
	ld d, h                                          ; $78b9: $54
	ret nz                                           ; $78ba: $c0

	ld bc, $0aa0                                     ; $78bb: $01 $a0 $0a
	rlca                                             ; $78be: $07
	ld e, [hl]                                       ; $78bf: $5e
	ret nz                                           ; $78c0: $c0

	ld bc, $01a0                                     ; $78c1: $01 $a0 $01
	rlca                                             ; $78c4: $07
	halt                                             ; $78c5: $76
	pop hl                                           ; $78c6: $e1
	ld [bc], a                                       ; $78c7: $02
	inc bc                                           ; $78c8: $03
	rrca                                             ; $78c9: $0f
	ret nz                                           ; $78ca: $c0

	ld bc, $0aa0                                     ; $78cb: $01 $a0 $0a
	rlca                                             ; $78ce: $07
	ld a, h                                          ; $78cf: $7c
	pop hl                                           ; $78d0: $e1
	ld [bc], a                                       ; $78d1: $02
	inc bc                                           ; $78d2: $03
	inc de                                           ; $78d3: $13
	ret nz                                           ; $78d4: $c0

	ld bc, $0aa0                                     ; $78d5: $01 $a0 $0a
	rlca                                             ; $78d8: $07
	add [hl]                                         ; $78d9: $86
	pop bc                                           ; $78da: $c1
	ld e, e                                          ; $78db: $5b
	ret nz                                           ; $78dc: $c0

	ld bc, $01a0                                     ; $78dd: $01 $a0 $01
	rlca                                             ; $78e0: $07
	adc e                                            ; $78e1: $8b
	ret nz                                           ; $78e2: $c0

	ld bc, $01a0                                     ; $78e3: $01 $a0 $01
	rlca                                             ; $78e6: $07
	sub c                                            ; $78e7: $91
	ret nz                                           ; $78e8: $c0

	ld hl, $ddd2                                     ; $78e9: $21 $d2 $dd
	jr nz, @-$7d                                     ; $78ec: $20 $81

	ld bc, $c191                                     ; $78ee: $01 $91 $c1
	ld l, e                                          ; $78f1: $6b
	db $d3                                           ; $78f2: $d3
	db $dd                                           ; $78f3: $dd
	ret nz                                           ; $78f4: $c0

	set 4, l                                         ; $78f5: $cb $e5
	ld bc, $b119                                     ; $78f7: $01 $19 $b1
	inc bc                                           ; $78fa: $03
	db $e4                                           ; $78fb: $e4
	nop                                              ; $78fc: $00
	ld [bc], a                                       ; $78fd: $02
	add hl, bc                                       ; $78fe: $09
	pop bc                                           ; $78ff: $c1
	ld d, d                                          ; $7900: $52
	nop                                              ; $7901: $00
	add b                                            ; $7902: $80
	and b                                            ; $7903: $a0
	ld bc, $53c1                                     ; $7904: $01 $c1 $53
	ret nz                                           ; $7907: $c0

	inc d                                            ; $7908: $14
	db $e3                                           ; $7909: $e3
	nop                                              ; $790a: $00
	ld c, l                                          ; $790b: $4d
	ret nz                                           ; $790c: $c0

	ld bc, $01a0                                     ; $790d: $01 $a0 $01
	rlca                                             ; $7910: $07
	sbc d                                            ; $7911: $9a
	ret nz                                           ; $7912: $c0

	inc c                                            ; $7913: $0c
	ldh [rAUD3HIGH], a                               ; $7914: $e0 $1e
	ret nz                                           ; $7916: $c0

	set 0, c                                         ; $7917: $cb $c1
	ld e, e                                          ; $7919: $5b
	ret nz                                           ; $791a: $c0

	ld bc, $01a0                                     ; $791b: $01 $a0 $01
	rlca                                             ; $791e: $07
	and a                                            ; $791f: $a7
	ret nz                                           ; $7920: $c0

	add hl, bc                                       ; $7921: $09
	db $e3                                           ; $7922: $e3
	nop                                              ; $7923: $00
	ld h, h                                          ; $7924: $64
	ret nz                                           ; $7925: $c0

	rrca                                             ; $7926: $0f
	db $e3                                           ; $7927: $e3
	ld bc, $c011                                     ; $7928: $01 $11 $c0
	ld bc, $01a0                                     ; $792b: $01 $a0 $01
	rlca                                             ; $792e: $07
	xor [hl]                                         ; $792f: $ae
	ret nz                                           ; $7930: $c0

	inc c                                            ; $7931: $0c
	ldh [rAUD3HIGH], a                               ; $7932: $e0 $1e
	ret nz                                           ; $7934: $c0

	ld bc, $0aa0                                     ; $7935: $01 $a0 $0a
	rlca                                             ; $7938: $07
	or h                                             ; $7939: $b4
	ret nz                                           ; $793a: $c0

	ld bc, $01a0                                     ; $793b: $01 $a0 $01
	rlca                                             ; $793e: $07
	cp h                                             ; $793f: $bc
	ret nz                                           ; $7940: $c0

	dec bc                                           ; $7941: $0b
	db $e3                                           ; $7942: $e3
	nop                                              ; $7943: $00
	rrca                                             ; $7944: $0f
	pop bc                                           ; $7945: $c1
	ld d, l                                          ; $7946: $55
	ret nc                                           ; $7947: $d0

	ret nz                                           ; $7948: $c0

	inc c                                            ; $7949: $0c
	ldh [$3c], a                                     ; $794a: $e0 $3c
	ret nz                                           ; $794c: $c0

	dec bc                                           ; $794d: $0b
	db $e3                                           ; $794e: $e3
	nop                                              ; $794f: $00
	rrca                                             ; $7950: $0f
	pop bc                                           ; $7951: $c1
	ld d, l                                          ; $7952: $55
	ret nc                                           ; $7953: $d0

	ret nz                                           ; $7954: $c0

	ld bc, $01a0                                     ; $7955: $01 $a0 $01
	rlca                                             ; $7958: $07
	adc $c0                                          ; $7959: $ce $c0
	inc c                                            ; $795b: $0c
	ldh [$3c], a                                     ; $795c: $e0 $3c
	ret nz                                           ; $795e: $c0

	dec bc                                           ; $795f: $0b
	db $e3                                           ; $7960: $e3
	nop                                              ; $7961: $00
	rrca                                             ; $7962: $0f
	pop bc                                           ; $7963: $c1
	ld d, l                                          ; $7964: $55
	ret nc                                           ; $7965: $d0

	ret nz                                           ; $7966: $c0

	ld bc, $01a0                                     ; $7967: $01 $a0 $01
	rlca                                             ; $796a: $07
	pop de                                           ; $796b: $d1
	ret nz                                           ; $796c: $c0

	inc c                                            ; $796d: $0c
	ldh [$3c], a                                     ; $796e: $e0 $3c
	ret nz                                           ; $7970: $c0

	dec bc                                           ; $7971: $0b
	db $e3                                           ; $7972: $e3
	nop                                              ; $7973: $00
	ld b, [hl]                                       ; $7974: $46
	pop bc                                           ; $7975: $c1
	ld d, l                                          ; $7976: $55
	pop de                                           ; $7977: $d1
	ret nz                                           ; $7978: $c0

	inc c                                            ; $7979: $0c
	ldh [$3c], a                                     ; $797a: $e0 $3c
	ret nz                                           ; $797c: $c0

	dec bc                                           ; $797d: $0b
	db $e3                                           ; $797e: $e3
	nop                                              ; $797f: $00
	ld b, [hl]                                       ; $7980: $46
	pop bc                                           ; $7981: $c1
	ld d, l                                          ; $7982: $55
	pop de                                           ; $7983: $d1
	ret nz                                           ; $7984: $c0

	ld bc, $01a0                                     ; $7985: $01 $a0 $01
	rlca                                             ; $7988: $07
	call nc, $0cc0                                   ; $7989: $d4 $c0 $0c
	ldh [$3c], a                                     ; $798c: $e0 $3c
	ret nz                                           ; $798e: $c0

	dec bc                                           ; $798f: $0b
	db $e3                                           ; $7990: $e3
	nop                                              ; $7991: $00
	ld b, [hl]                                       ; $7992: $46
	pop bc                                           ; $7993: $c1
	ld d, l                                          ; $7994: $55
	pop de                                           ; $7995: $d1
	ret nz                                           ; $7996: $c0

	inc c                                            ; $7997: $0c
	ldh [$5a], a                                     ; $7998: $e0 $5a
	pop bc                                           ; $799a: $c1
	dec sp                                           ; $799b: $3b
	ret nz                                           ; $799c: $c0

	set 0, c                                         ; $799d: $cb $c1
	or d                                             ; $799f: $b2
	db $e3                                           ; $79a0: $e3
	nop                                              ; $79a1: $00
	adc l                                            ; $79a2: $8d
	ret nz                                           ; $79a3: $c0

	ld bc, $0aa0                                     ; $79a4: $01 $a0 $0a
	rlca                                             ; $79a7: $07
	db $db                                           ; $79a8: $db
	ret nz                                           ; $79a9: $c0

	ld bc, $01a0                                     ; $79aa: $01 $a0 $01
	rlca                                             ; $79ad: $07
	sbc $c0                                          ; $79ae: $de $c0
	add hl, bc                                       ; $79b0: $09
	db $e3                                           ; $79b1: $e3
	nop                                              ; $79b2: $00
	dec b                                            ; $79b3: $05
	ret nz                                           ; $79b4: $c0

	rrca                                             ; $79b5: $0f
	db $e3                                           ; $79b6: $e3
	ld bc, $c012                                     ; $79b7: $01 $12 $c0
	ld bc, $01a0                                     ; $79ba: $01 $a0 $01
	rlca                                             ; $79bd: $07
	pop hl                                           ; $79be: $e1
	pop bc                                           ; $79bf: $c1
	or d                                             ; $79c0: $b2
	db $e3                                           ; $79c1: $e3
	nop                                              ; $79c2: $00
	adc [hl]                                         ; $79c3: $8e
	ret nz                                           ; $79c4: $c0

	ld bc, $0aa0                                     ; $79c5: $01 $a0 $0a
	rlca                                             ; $79c8: $07
	push hl                                          ; $79c9: $e5
	ret nz                                           ; $79ca: $c0

	ld bc, $2aa0                                     ; $79cb: $01 $a0 $2a
	rlca                                             ; $79ce: $07
	pop af                                           ; $79cf: $f1
	ret nz                                           ; $79d0: $c0

	ld bc, $04a0                                     ; $79d1: $01 $a0 $04
	rlca                                             ; $79d4: $07
	db $f4                                           ; $79d5: $f4
	ret nz                                           ; $79d6: $c0

	ld bc, $2aa0                                     ; $79d7: $01 $a0 $2a
	rlca                                             ; $79da: $07
	pop af                                           ; $79db: $f1
	ret nz                                           ; $79dc: $c0

	ld bc, $04a0                                     ; $79dd: $01 $a0 $04
	ld [$c005], sp                                   ; $79e0: $08 $05 $c0
	set 0, b                                         ; $79e3: $cb $c0
	dec bc                                           ; $79e5: $0b
	db $e3                                           ; $79e6: $e3
	nop                                              ; $79e7: $00
	rrca                                             ; $79e8: $0f
	ret nz                                           ; $79e9: $c0

	inc c                                            ; $79ea: $0c
	ldh [$3c], a                                     ; $79eb: $e0 $3c
	ret nz                                           ; $79ed: $c0

	dec bc                                           ; $79ee: $0b
	db $e3                                           ; $79ef: $e3
	nop                                              ; $79f0: $00
	rrca                                             ; $79f1: $0f
	ret nz                                           ; $79f2: $c0

	inc c                                            ; $79f3: $0c
	ldh [$3c], a                                     ; $79f4: $e0 $3c
	ret nz                                           ; $79f6: $c0

	dec bc                                           ; $79f7: $0b
	db $e3                                           ; $79f8: $e3
	nop                                              ; $79f9: $00
	rrca                                             ; $79fa: $0f
	ret nz                                           ; $79fb: $c0

	inc c                                            ; $79fc: $0c
	ldh [$3c], a                                     ; $79fd: $e0 $3c
	ret nz                                           ; $79ff: $c0

	dec bc                                           ; $7a00: $0b
	db $e3                                           ; $7a01: $e3
	nop                                              ; $7a02: $00
	rrca                                             ; $7a03: $0f
	ret nz                                           ; $7a04: $c0

	inc c                                            ; $7a05: $0c
	ldh [$3c], a                                     ; $7a06: $e0 $3c
	pop bc                                           ; $7a08: $c1
	dec sp                                           ; $7a09: $3b
	ret nz                                           ; $7a0a: $c0

	rrca                                             ; $7a0b: $0f
	db $e3                                           ; $7a0c: $e3
	nop                                              ; $7a0d: $00
	ld a, l                                          ; $7a0e: $7d
	ret nz                                           ; $7a0f: $c0

	ld bc, $01a0                                     ; $7a10: $01 $a0 $01
	ld [$c013], sp                                   ; $7a13: $08 $13 $c0
	xor b                                            ; $7a16: $a8
	db $dd                                           ; $7a17: $dd
	pop hl                                           ; $7a18: $e1
	ld [bc], a                                       ; $7a19: $02
	inc bc                                           ; $7a1a: $03
	rra                                              ; $7a1b: $1f
	ret nz                                           ; $7a1c: $c0

	and l                                            ; $7a1d: $a5
	ret nz                                           ; $7a1e: $c0

	ld bc, $0aa0                                     ; $7a1f: $01 $a0 $0a
	ld [$c021], sp                                   ; $7a22: $08 $21 $c0
	ld bc, $01a0                                     ; $7a25: $01 $a0 $01
	ld [$e12d], sp                                   ; $7a28: $08 $2d $e1
	ld [bc], a                                       ; $7a2b: $02
	inc bc                                           ; $7a2c: $03
	rrca                                             ; $7a2d: $0f
	ret nz                                           ; $7a2e: $c0

	ld bc, $0aa0                                     ; $7a2f: $01 $a0 $0a
	ld [$c033], sp                                   ; $7a32: $08 $33 $c0
	dec bc                                           ; $7a35: $0b
	db $e3                                           ; $7a36: $e3
	nop                                              ; $7a37: $00
	daa                                              ; $7a38: $27
	pop bc                                           ; $7a39: $c1
	ld e, e                                          ; $7a3a: $5b
	ret nz                                           ; $7a3b: $c0

	ld bc, $01a0                                     ; $7a3c: $01 $a0 $01
	ld [$c03c], sp                                   ; $7a3f: $08 $3c $c0
	inc hl                                           ; $7a42: $23
	jp nc, $20dd                                     ; $7a43: $d2 $dd $20

	add c                                            ; $7a46: $81
	ld bc, $c191                                     ; $7a47: $01 $91 $c1
	ld l, e                                          ; $7a4a: $6b
	ret c                                            ; $7a4b: $d8

	db $dd                                           ; $7a4c: $dd
	ret nz                                           ; $7a4d: $c0

	set 4, l                                         ; $7a4e: $cb $e5
	ld bc, $b119                                     ; $7a50: $01 $19 $b1
	add hl, bc                                       ; $7a53: $09
	ret nz                                           ; $7a54: $c0

	jp z, $8000                                      ; $7a55: $ca $00 $80

	ld [bc], a                                       ; $7a58: $02
	xor l                                            ; $7a59: $ad
	pop bc                                           ; $7a5a: $c1
	ld d, e                                          ; $7a5b: $53
	ret nz                                           ; $7a5c: $c0

	inc d                                            ; $7a5d: $14
	db $e3                                           ; $7a5e: $e3
	nop                                              ; $7a5f: $00
	ld b, d                                          ; $7a60: $42
	ret nz                                           ; $7a61: $c0

	add hl, bc                                       ; $7a62: $09
	db $e3                                           ; $7a63: $e3
	nop                                              ; $7a64: $00
	dec b                                            ; $7a65: $05
	ret nz                                           ; $7a66: $c0

	ld bc, $04a0                                     ; $7a67: $01 $a0 $04
	ld [$c044], sp                                   ; $7a6a: $08 $44 $c0
	ld bc, $04a0                                     ; $7a6d: $01 $a0 $04
	ld [$c054], sp                                   ; $7a70: $08 $54 $c0
	ld bc, $04a0                                     ; $7a73: $01 $a0 $04
	ld [$c17b], sp                                   ; $7a76: $08 $7b $c1
	dec sp                                           ; $7a79: $3b
	pop bc                                           ; $7a7a: $c1
	ld d, a                                          ; $7a7b: $57
	ret nz                                           ; $7a7c: $c0

	inc c                                            ; $7a7d: $0c
	ldh [rAUD3HIGH], a                               ; $7a7e: $e0 $1e
	pop bc                                           ; $7a80: $c1
	dec b                                            ; $7a81: $05
	ret nz                                           ; $7a82: $c0

	rrca                                             ; $7a83: $0f
	db $e3                                           ; $7a84: $e3
	nop                                              ; $7a85: $00
	ld c, l                                          ; $7a86: $4d
	ret nz                                           ; $7a87: $c0

	ld bc, $01a0                                     ; $7a88: $01 $a0 $01
	ld [$c093], sp                                   ; $7a8b: $08 $93 $c0
	ld bc, $0aa0                                     ; $7a8e: $01 $a0 $0a
	ld [$c098], sp                                   ; $7a91: $08 $98 $c0
	add hl, bc                                       ; $7a94: $09
	db $e3                                           ; $7a95: $e3
	nop                                              ; $7a96: $00
	rlca                                             ; $7a97: $07
	ret nz                                           ; $7a98: $c0

	xor b                                            ; $7a99: $a8
	db $dd                                           ; $7a9a: $dd
	pop hl                                           ; $7a9b: $e1
	ld [bc], a                                       ; $7a9c: $02
	inc bc                                           ; $7a9d: $03
	rla                                              ; $7a9e: $17
	ret nz                                           ; $7a9f: $c0

	and l                                            ; $7aa0: $a5
	ret nz                                           ; $7aa1: $c0

	ld bc, $01a0                                     ; $7aa2: $01 $a0 $01
	ld [$c099], sp                                   ; $7aa5: $08 $99 $c0
	ld bc, $0aa0                                     ; $7aa8: $01 $a0 $0a
	ld [$c09f], sp                                   ; $7aab: $08 $9f $c0
	ld bc, $01a0                                     ; $7aae: $01 $a0 $01
	ld [$c0a7], sp                                   ; $7ab1: $08 $a7 $c0
	ld bc, $0aa0                                     ; $7ab4: $01 $a0 $0a
	ld [$c0aa], sp                                   ; $7ab7: $08 $aa $c0
	ld bc, $01a0                                     ; $7aba: $01 $a0 $01
	ld [$c0b4], sp                                   ; $7abd: $08 $b4 $c0
	set 0, c                                         ; $7ac0: $cb $c1
	ld e, e                                          ; $7ac2: $5b
	ret nz                                           ; $7ac3: $c0

	ld bc, $0aa0                                     ; $7ac4: $01 $a0 $0a
	ld [$c1b9], sp                                   ; $7ac7: $08 $b9 $c1
	dec sp                                           ; $7aca: $3b
	ret nz                                           ; $7acb: $c0

	rrca                                             ; $7acc: $0f
	db $e3                                           ; $7acd: $e3
	ld bc, $c010                                     ; $7ace: $01 $10 $c0
	add hl, bc                                       ; $7ad1: $09
	db $e3                                           ; $7ad2: $e3
	nop                                              ; $7ad3: $00
	ld h, h                                          ; $7ad4: $64
	ret nz                                           ; $7ad5: $c0

	ld bc, $04a0                                     ; $7ad6: $01 $a0 $04
	ld [$c0bf], sp                                   ; $7ad9: $08 $bf $c0
	ld bc, $0aa0                                     ; $7adc: $01 $a0 $0a
	ld [$c0c2], sp                                   ; $7adf: $08 $c2 $c0
	ld bc, $04a0                                     ; $7ae2: $01 $a0 $04
	ld [$c0d1], sp                                   ; $7ae5: $08 $d1 $c0
	ld bc, $0aa0                                     ; $7ae8: $01 $a0 $0a
	ld [$c0de], sp                                   ; $7aeb: $08 $de $c0
	ld bc, $04a0                                     ; $7aee: $01 $a0 $04
	ld [wGenericTileDataDest+1], sp                                   ; $7af1: $08 $e3 $c0
	ld bc, $0aa0                                     ; $7af4: $01 $a0 $0a
	ld [$c0f6], sp                                   ; $7af7: $08 $f6 $c0
	ld bc, $04a0                                     ; $7afa: $01 $a0 $04
	add hl, bc                                       ; $7afd: $09
	nop                                              ; $7afe: $00
	ret nz                                           ; $7aff: $c0

	ld bc, $01a0                                     ; $7b00: $01 $a0 $01
	add hl, bc                                       ; $7b03: $09
	add hl, bc                                       ; $7b04: $09
	ret nz                                           ; $7b05: $c0

	ld bc, $0aa0                                     ; $7b06: $01 $a0 $0a
	add hl, bc                                       ; $7b09: $09
	ld c, $c0                                        ; $7b0a: $0e $c0
	ld bc, $04a0                                     ; $7b0c: $01 $a0 $04
	add hl, bc                                       ; $7b0f: $09
	ld [de], a                                       ; $7b10: $12
	ret nz                                           ; $7b11: $c0

	ld bc, $01a0                                     ; $7b12: $01 $a0 $01
	add hl, bc                                       ; $7b15: $09
	rla                                              ; $7b16: $17
	ret nz                                           ; $7b17: $c0

	ld bc, $01a0                                     ; $7b18: $01 $a0 $01
	add hl, bc                                       ; $7b1b: $09
	ld a, [de]                                       ; $7b1c: $1a
	db $e4                                           ; $7b1d: $e4
	nop                                              ; $7b1e: $00
	ld [bc], a                                       ; $7b1f: $02
	add hl, bc                                       ; $7b20: $09
	ld d, $c1                                        ; $7b21: $16 $c1
	cp b                                             ; $7b23: $b8
	ret nc                                           ; $7b24: $d0

	add b                                            ; $7b25: $80
	ld [bc], a                                       ; $7b26: $02
	xor [hl]                                         ; $7b27: $ae
	pop bc                                           ; $7b28: $c1
	ld hl, $11c0                                     ; $7b29: $21 $c0 $11
	db $e3                                           ; $7b2c: $e3
	nop                                              ; $7b2d: $00
	ld a, [hl]                                       ; $7b2e: $7e
	ret nz                                           ; $7b2f: $c0

	ld bc, $01a0                                     ; $7b30: $01 $a0 $01
	add hl, bc                                       ; $7b33: $09
	jr z, @-$1a                                      ; $7b34: $28 $e4

	nop                                              ; $7b36: $00
	ld [bc], a                                       ; $7b37: $02
	add hl, bc                                       ; $7b38: $09
	cp b                                             ; $7b39: $b8
	ret nz                                           ; $7b3a: $c0

	add hl, bc                                       ; $7b3b: $09
	db $e3                                           ; $7b3c: $e3
	nop                                              ; $7b3d: $00
	dec b                                            ; $7b3e: $05
	pop hl                                           ; $7b3f: $e1
	ld [bc], a                                       ; $7b40: $02
	ld bc, $e14a                                     ; $7b41: $01 $4a $e1
	ld [bc], a                                       ; $7b44: $02
	inc bc                                           ; $7b45: $03
	rra                                              ; $7b46: $1f
	pop bc                                           ; $7b47: $c1
	ld e, h                                          ; $7b48: $5c
	ret nz                                           ; $7b49: $c0

	jp z, $fc60                                      ; $7b4a: $ca $60 $fc

	add b                                            ; $7b4d: $80
	ld [bc], a                                       ; $7b4e: $02
	xor [hl]                                         ; $7b4f: $ae
	ret nc                                           ; $7b50: $d0

	inc c                                            ; $7b51: $0c
	ret nz                                           ; $7b52: $c0

	ld bc, $04a0                                     ; $7b53: $01 $a0 $04
	add hl, bc                                       ; $7b56: $09
	dec [hl]                                         ; $7b57: $35
	ret nz                                           ; $7b58: $c0

	ld bc, $04a0                                     ; $7b59: $01 $a0 $04
	add hl, bc                                       ; $7b5c: $09
	ld c, b                                          ; $7b5d: $48
	inc c                                            ; $7b5e: $0c
	ret nz                                           ; $7b5f: $c0

	ld bc, $04a0                                     ; $7b60: $01 $a0 $04
	add hl, bc                                       ; $7b63: $09
	ld c, h                                          ; $7b64: $4c
	ret nz                                           ; $7b65: $c0

	ld bc, $04a0                                     ; $7b66: $01 $a0 $04
	add hl, bc                                       ; $7b69: $09
	ld c, b                                          ; $7b6a: $48
	pop bc                                           ; $7b6b: $c1
	ld e, e                                          ; $7b6c: $5b
	ret nz                                           ; $7b6d: $c0

	ld bc, $01a0                                     ; $7b6e: $01 $a0 $01
	add hl, bc                                       ; $7b71: $09
	ld h, [hl]                                       ; $7b72: $66
	ld b, b                                          ; $7b73: $40
	add b                                            ; $7b74: $80
	ld [bc], a                                       ; $7b75: $02
	xor [hl]                                         ; $7b76: $ae
	ret nz                                           ; $7b77: $c0

	add hl, bc                                       ; $7b78: $09
	db $e3                                           ; $7b79: $e3
	nop                                              ; $7b7a: $00
	rlca                                             ; $7b7b: $07
	pop hl                                           ; $7b7c: $e1
	ld [bc], a                                       ; $7b7d: $02
	ld [bc], a                                       ; $7b7e: $02
	ld [hl], b                                       ; $7b7f: $70
	pop hl                                           ; $7b80: $e1
	ld [bc], a                                       ; $7b81: $02
	inc bc                                           ; $7b82: $03
	dec de                                           ; $7b83: $1b
	ret nz                                           ; $7b84: $c0

	ld bc, $0aa0                                     ; $7b85: $01 $a0 $0a
	add hl, bc                                       ; $7b88: $09
	ld a, l                                          ; $7b89: $7d
	ret nz                                           ; $7b8a: $c0

	ld bc, $01a0                                     ; $7b8b: $01 $a0 $01
	add hl, bc                                       ; $7b8e: $09

jr_086_7b8f:
	adc c                                            ; $7b8f: $89
	pop hl                                           ; $7b90: $e1
	ld [bc], a                                       ; $7b91: $02
	inc bc                                           ; $7b92: $03
	inc de                                           ; $7b93: $13
	ret nz                                           ; $7b94: $c0

	ld bc, $0aa0                                     ; $7b95: $01 $a0 $0a
	add hl, bc                                       ; $7b98: $09
	sub [hl]                                         ; $7b99: $96
	ret nz                                           ; $7b9a: $c0

	ld bc, $01a0                                     ; $7b9b: $01 $a0 $01
	add hl, bc                                       ; $7b9e: $09
	sbc c                                            ; $7b9f: $99
	ret nz                                           ; $7ba0: $c0

	ld bc, $0aa0                                     ; $7ba1: $01 $a0 $0a
	add hl, bc                                       ; $7ba4: $09
	sbc a                                            ; $7ba5: $9f
	ret nz                                           ; $7ba6: $c0

	ld bc, $01a0                                     ; $7ba7: $01 $a0 $01
	add hl, bc                                       ; $7baa: $09
	xor e                                            ; $7bab: $ab
	ret nz                                           ; $7bac: $c0

	ld bc, $0aa0                                     ; $7bad: $01 $a0 $0a
	add hl, bc                                       ; $7bb0: $09
	xor [hl]                                         ; $7bb1: $ae
	ret nz                                           ; $7bb2: $c0

	ld [hl+], a                                      ; $7bb3: $22
	jp nc, $c0dd                                     ; $7bb4: $d2 $dd $c0

	ld hl, $ddd2                                     ; $7bb7: $21 $d2 $dd
	ret nz                                           ; $7bba: $c0

	ld h, $da                                        ; $7bbb: $26 $da
	db $dd                                           ; $7bbd: $dd
	pop bc                                           ; $7bbe: $c1
	ld l, e                                          ; $7bbf: $6b
	reti                                             ; $7bc0: $d9


	db $dd                                           ; $7bc1: $dd
	ret nz                                           ; $7bc2: $c0

	set 0, c                                         ; $7bc3: $cb $c1
	ld e, e                                          ; $7bc5: $5b
	ei                                               ; $7bc6: $fb
	db $fc                                           ; $7bc7: $fc
	adc e                                            ; $7bc8: $8b
	ld bc, $b066                                     ; $7bc9: $01 $66 $b0
	dec b                                            ; $7bcc: $05
	jr nz, jr_086_7b8f                               ; $7bcd: $20 $c0

	push af                                          ; $7bcf: $f5
	nop                                              ; $7bd0: $00
	add b                                            ; $7bd1: $80
	nop                                              ; $7bd2: $00
	jp z, $01c0                                      ; $7bd3: $ca $c0 $01

	and b                                            ; $7bd6: $a0
	ld bc, $b609                                     ; $7bd7: $01 $09 $b6
	ret nz                                           ; $7bda: $c0

	ld bc, $01a0                                     ; $7bdb: $01 $a0 $01
	add hl, bc                                       ; $7bde: $09
	cp l                                             ; $7bdf: $bd
	ret nz                                           ; $7be0: $c0

	ld bc, $01a0                                     ; $7be1: $01 $a0 $01
	add hl, bc                                       ; $7be4: $09
	ret nc                                           ; $7be5: $d0

	ret nz                                           ; $7be6: $c0

	inc h                                            ; $7be7: $24
	pop de                                           ; $7be8: $d1
	jp nc, $23c0                                     ; $7be9: $d2 $c0 $23

	push de                                          ; $7bec: $d5
	jp nc, $01e5                                     ; $7bed: $d2 $e5 $01

	add hl, de                                       ; $7bf0: $19
	or c                                             ; $7bf1: $b1
	add hl, bc                                       ; $7bf2: $09
	rrca                                             ; $7bf3: $0f
	ld h, b                                          ; $7bf4: $60
	db $fc                                           ; $7bf5: $fc
	ret nz                                           ; $7bf6: $c0

	ld h, h                                          ; $7bf7: $64
	ret nc                                           ; $7bf8: $d0

	inc b                                            ; $7bf9: $04
	push hl                                          ; $7bfa: $e5
	ld c, b                                          ; $7bfb: $48
	nop                                              ; $7bfc: $00
	nop                                              ; $7bfd: $00
	inc b                                            ; $7bfe: $04
	push hl                                          ; $7bff: $e5
	ld b, a                                          ; $7c00: $47
	nop                                              ; $7c01: $00
	nop                                              ; $7c02: $00
	cp [hl]                                          ; $7c03: $be
	rlca                                             ; $7c04: $07
	add hl, bc                                       ; $7c05: $09
	ld a, l                                          ; $7c06: $7d
	ld b, b                                          ; $7c07: $40
	add b                                            ; $7c08: $80
	ld [bc], a                                       ; $7c09: $02
	sbc a                                            ; $7c0a: $9f
	ld b, e                                          ; $7c0b: $43
	add b                                            ; $7c0c: $80
	ld [bc], a                                       ; $7c0d: $02
	and b                                            ; $7c0e: $a0
	add b                                            ; $7c0f: $80
	ld [bc], a                                       ; $7c10: $02
	and c                                            ; $7c11: $a1
	add b                                            ; $7c12: $80
	ld [bc], a                                       ; $7c13: $02
	and d                                            ; $7c14: $a2
	add b                                            ; $7c15: $80
	ld [bc], a                                       ; $7c16: $02
	and e                                            ; $7c17: $a3
	ld b, d                                          ; $7c18: $42
	add b                                            ; $7c19: $80
	ld [bc], a                                       ; $7c1a: $02
	and h                                            ; $7c1b: $a4
	add b                                            ; $7c1c: $80
	ld [bc], a                                       ; $7c1d: $02
	and l                                            ; $7c1e: $a5
	add b                                            ; $7c1f: $80
	ld [bc], a                                       ; $7c20: $02
	and [hl]                                         ; $7c21: $a6
	ld h, b                                          ; $7c22: $60
	cp $0a                                           ; $7c23: $fe $0a
	db $fc                                           ; $7c25: $fc
	ret nz                                           ; $7c26: $c0

	ld h, l                                          ; $7c27: $65
	ret nz                                           ; $7c28: $c0

	ld [hl], c                                       ; $7c29: $71
	db $fc                                           ; $7c2a: $fc
	ret nz                                           ; $7c2b: $c0

	ld h, [hl]                                       ; $7c2c: $66
	ret nz                                           ; $7c2d: $c0

	ld [hl], d                                       ; $7c2e: $72
	inc b                                            ; $7c2f: $04
	nop                                              ; $7c30: $00
	add b                                            ; $7c31: $80
	ld [bc], a                                       ; $7c32: $02
	sbc [hl]                                         ; $7c33: $9e
	inc b                                            ; $7c34: $04
	ld b, b                                          ; $7c35: $40
	add b                                            ; $7c36: $80
	ld [bc], a                                       ; $7c37: $02
	sbc [hl]                                         ; $7c38: $9e
	ret nz                                           ; $7c39: $c0

	sub $c0                                          ; $7c3a: $d6 $c0
	add hl, bc                                       ; $7c3c: $09
	db $e3                                           ; $7c3d: $e3
	nop                                              ; $7c3e: $00
	ld a, e                                          ; $7c3f: $7b
	pop bc                                           ; $7c40: $c1
	ld e, c                                          ; $7c41: $59
	db $e3                                           ; $7c42: $e3
	nop                                              ; $7c43: $00
	inc a                                            ; $7c44: $3c
	ei                                               ; $7c45: $fb
	db $fc                                           ; $7c46: $fc
	ret nz                                           ; $7c47: $c0

	add b                                            ; $7c48: $80
	jp nc, $c006                                     ; $7c49: $d2 $06 $c0

	ld bc, $01a0                                     ; $7c4c: $01 $a0 $01
	nop                                              ; $7c4f: $00
	ld bc, $02e1                                     ; $7c50: $01 $e1 $02
	ld [bc], a                                       ; $7c53: $02
	or d                                             ; $7c54: $b2
	pop bc                                           ; $7c55: $c1
	or d                                             ; $7c56: $b2
	db $e3                                           ; $7c57: $e3
	nop                                              ; $7c58: $00
	ld e, $c0                                        ; $7c59: $1e $c0
	ld bc, $0ba0                                     ; $7c5b: $01 $a0 $0b
	nop                                              ; $7c5e: $00
	inc de                                           ; $7c5f: $13
	add d                                            ; $7c60: $82
	ret nz                                           ; $7c61: $c0

	add b                                            ; $7c62: $80
	ld bc, $03d3                                     ; $7c63: $01 $d3 $03
	ldh [rP1], a                                     ; $7c66: $e0 $00
	adc c                                            ; $7c68: $89
	ld bc, $03d2                                     ; $7c69: $01 $d2 $03
	ldh [rP1], a                                     ; $7c6c: $e0 $00
	ld c, l                                          ; $7c6e: $4d
	ld bc, $03d1                                     ; $7c6f: $01 $d1 $03
	ldh [rP1], a                                     ; $7c72: $e0 $00
	ld de, $8bd0                                     ; $7c74: $11 $d0 $8b
	ld [bc], a                                       ; $7c77: $02
	xor a                                            ; $7c78: $af
	or b                                             ; $7c79: $b0
	adc l                                            ; $7c7a: $8d
	ret nc                                           ; $7c7b: $d0

	add h                                            ; $7c7c: $84
	ld [bc], a                                       ; $7c7d: $02
	cp e                                             ; $7c7e: $bb
	ldh [rAUD1ENV], a                                ; $7c7f: $e0 $12
	db $e4                                           ; $7c81: $e4
	nop                                              ; $7c82: $00
	or c                                             ; $7c83: $b1
	dec [hl]                                         ; $7c84: $35
	ret nz                                           ; $7c85: $c0

	ld bc, $01a0                                     ; $7c86: $01 $a0 $01
	nop                                              ; $7c89: $00
	rla                                              ; $7c8a: $17
	ret nz                                           ; $7c8b: $c0

	ld bc, $0ba0                                     ; $7c8c: $01 $a0 $0b
	nop                                              ; $7c8f: $00
	inc e                                            ; $7c90: $1c
	ret nz                                           ; $7c91: $c0

	ld bc, $01a0                                     ; $7c92: $01 $a0 $01
	nop                                              ; $7c95: $00
	inc l                                            ; $7c96: $2c
	ret nz                                           ; $7c97: $c0

	ld bc, $0ba0                                     ; $7c98: $01 $a0 $0b
	nop                                              ; $7c9b: $00
	ld sp, $00e0                                     ; $7c9c: $31 $e0 $00
	halt                                             ; $7c9f: $76
	ret nz                                           ; $7ca0: $c0

	ld bc, $0ba0                                     ; $7ca1: $01 $a0 $0b
	nop                                              ; $7ca4: $00
	dec sp                                           ; $7ca5: $3b
	ret nz                                           ; $7ca6: $c0

	ld bc, $01a0                                     ; $7ca7: $01 $a0 $01
	nop                                              ; $7caa: $00
	ld c, h                                          ; $7cab: $4c
	ret nz                                           ; $7cac: $c0

	ld bc, $0ba0                                     ; $7cad: $01 $a0 $0b
	nop                                              ; $7cb0: $00
	ld c, a                                          ; $7cb1: $4f
	pop bc                                           ; $7cb2: $c1
	ld e, e                                          ; $7cb3: $5b
	ret nz                                           ; $7cb4: $c0

	ld bc, $01a0                                     ; $7cb5: $01 $a0 $01
	nop                                              ; $7cb8: $00
	ld h, h                                          ; $7cb9: $64
	dec [hl]                                         ; $7cba: $35
	ret nz                                           ; $7cbb: $c0

	ld bc, $01a0                                     ; $7cbc: $01 $a0 $01
	nop                                              ; $7cbf: $00
	rla                                              ; $7cc0: $17
	ret nz                                           ; $7cc1: $c0

	ld bc, $0ba0                                     ; $7cc2: $01 $a0 $0b
	nop                                              ; $7cc5: $00
	ld l, c                                          ; $7cc6: $69
	ret nz                                           ; $7cc7: $c0

	ld bc, $01a0                                     ; $7cc8: $01 $a0 $01
	nop                                              ; $7ccb: $00
	inc l                                            ; $7ccc: $2c
	ret nz                                           ; $7ccd: $c0

	ld bc, $0ba0                                     ; $7cce: $01 $a0 $0b
	nop                                              ; $7cd1: $00
	ld a, b                                          ; $7cd2: $78
	ldh [rP1], a                                     ; $7cd3: $e0 $00
	ld b, b                                          ; $7cd5: $40
	ret nz                                           ; $7cd6: $c0

	ld bc, $0ba0                                     ; $7cd7: $01 $a0 $0b
	nop                                              ; $7cda: $00
	add c                                            ; $7cdb: $81
	ret nz                                           ; $7cdc: $c0

	ld bc, $01a0                                     ; $7cdd: $01 $a0 $01
	nop                                              ; $7ce0: $00
	sub e                                            ; $7ce1: $93
	ret nz                                           ; $7ce2: $c0

	ld bc, $0ba0                                     ; $7ce3: $01 $a0 $0b
	nop                                              ; $7ce6: $00
	sub a                                            ; $7ce7: $97
	pop bc                                           ; $7ce8: $c1
	ld e, e                                          ; $7ce9: $5b
	ret nz                                           ; $7cea: $c0

	ld bc, $01a0                                     ; $7ceb: $01 $a0 $01
	nop                                              ; $7cee: $00
	xor h                                            ; $7cef: $ac
	inc hl                                           ; $7cf0: $23
	ret nz                                           ; $7cf1: $c0

	ld bc, $01a0                                     ; $7cf2: $01 $a0 $01
	nop                                              ; $7cf5: $00
	or e                                             ; $7cf6: $b3
	ret nz                                           ; $7cf7: $c0

	ld bc, $0ba0                                     ; $7cf8: $01 $a0 $0b
	nop                                              ; $7cfb: $00
	cp e                                             ; $7cfc: $bb
	ret nz                                           ; $7cfd: $c0

	ld bc, $01a0                                     ; $7cfe: $01 $a0 $01
	nop                                              ; $7d01: $00
	jp $00e0                                         ; $7d02: $c3 $e0 $00


	db $10                                           ; $7d05: $10
	ret nz                                           ; $7d06: $c0

	ld bc, $0ba0                                     ; $7d07: $01 $a0 $0b
	nop                                              ; $7d0a: $00
	adc $c1                                          ; $7d0b: $ce $c1
	ld e, e                                          ; $7d0d: $5b
	ret nz                                           ; $7d0e: $c0

	ld bc, $01a0                                     ; $7d0f: $01 $a0 $01
	nop                                              ; $7d12: $00
	db $dd                                           ; $7d13: $dd
	ld e, $c0                                        ; $7d14: $1e $c0
	set 0, c                                         ; $7d16: $cb $c1
	ld e, e                                          ; $7d18: $5b
	ret nz                                           ; $7d19: $c0

	inc c                                            ; $7d1a: $0c
	ldh [rAUD3HIGH], a                               ; $7d1b: $e0 $1e
	ret nz                                           ; $7d1d: $c0

	rrca                                             ; $7d1e: $0f
	db $e3                                           ; $7d1f: $e3
	nop                                              ; $7d20: $00
	ld h, h                                          ; $7d21: $64
	ret nz                                           ; $7d22: $c0

	ld bc, $01a0                                     ; $7d23: $01 $a0 $01
	nop                                              ; $7d26: $00
	db $dd                                           ; $7d27: $dd
	pop bc                                           ; $7d28: $c1
	ld d, a                                          ; $7d29: $57
	ret nz                                           ; $7d2a: $c0

	ld de, $00e3                                     ; $7d2b: $11 $e3 $00
	inc a                                            ; $7d2e: $3c
	pop hl                                           ; $7d2f: $e1
	ld [bc], a                                       ; $7d30: $02
	ld [bc], a                                       ; $7d31: $02
	cp b                                             ; $7d32: $b8
	add hl, bc                                       ; $7d33: $09
	ld a, $e0                                        ; $7d34: $3e $e0
	nop                                              ; $7d36: $00
	dec a                                            ; $7d37: $3d
	ei                                               ; $7d38: $fb
	add b                                            ; $7d39: $80
	nop                                              ; $7d3a: $00
	ld l, l                                          ; $7d3b: $6d
	inc bc                                           ; $7d3c: $03
	ldh [rP1], a                                     ; $7d3d: $e0 $00
	ld d, d                                          ; $7d3f: $52
	ei                                               ; $7d40: $fb
	add b                                            ; $7d41: $80
	nop                                              ; $7d42: $00
	ld l, a                                          ; $7d43: $6f
	inc bc                                           ; $7d44: $03
	ldh [rP1], a                                     ; $7d45: $e0 $00
	ld l, d                                          ; $7d47: $6a
	ei                                               ; $7d48: $fb
	add b                                            ; $7d49: $80
	nop                                              ; $7d4a: $00
	ld [hl], b                                       ; $7d4b: $70
	inc bc                                           ; $7d4c: $03
	ldh [rP1], a                                     ; $7d4d: $e0 $00
	add d                                            ; $7d4f: $82
	ei                                               ; $7d50: $fb
	add b                                            ; $7d51: $80
	nop                                              ; $7d52: $00
	adc h                                            ; $7d53: $8c
	inc bc                                           ; $7d54: $03
	ldh [rP1], a                                     ; $7d55: $e0 $00
	sbc d                                            ; $7d57: $9a
	ei                                               ; $7d58: $fb
	add b                                            ; $7d59: $80
	nop                                              ; $7d5a: $00
	adc l                                            ; $7d5b: $8d
	inc bc                                           ; $7d5c: $03
	ldh [rP1], a                                     ; $7d5d: $e0 $00
	or d                                             ; $7d5f: $b2
	ei                                               ; $7d60: $fb
	add b                                            ; $7d61: $80
	nop                                              ; $7d62: $00
	ld a, h                                          ; $7d63: $7c
	inc bc                                           ; $7d64: $03
	ldh [rP1], a                                     ; $7d65: $e0 $00
	jp z, $80fb                                      ; $7d67: $ca $fb $80

	nop                                              ; $7d6a: $00
	ld a, l                                          ; $7d6b: $7d
	inc bc                                           ; $7d6c: $03
	ldh [rP1], a                                     ; $7d6d: $e0 $00
	ldh [c], a                                       ; $7d6f: $e2
	db $e4                                           ; $7d70: $e4
	nop                                              ; $7d71: $00
	rst $38                                          ; $7d72: $ff
	inc e                                            ; $7d73: $1c
	add d                                            ; $7d74: $82
	ret nz                                           ; $7d75: $c0

	dec de                                           ; $7d76: $1b
	ret nc                                           ; $7d77: $d0

	ld [bc], a                                       ; $7d78: $02
	ret nc                                           ; $7d79: $d0

	pop de                                           ; $7d7a: $d1
	rlca                                             ; $7d7b: $07
	ld bc, $0280                                     ; $7d7c: $01 $80 $02
	sbc a                                            ; $7d7f: $9f
	add b                                            ; $7d80: $80
	ld [bc], a                                       ; $7d81: $02
	ret nz                                           ; $7d82: $c0

	ld [bc], a                                       ; $7d83: $02
	jp nc, $07d3                                     ; $7d84: $d2 $d3 $07

	ld bc, $0280                                     ; $7d87: $01 $80 $02
	sbc a                                            ; $7d8a: $9f
	add b                                            ; $7d8b: $80
	ld [bc], a                                       ; $7d8c: $02
	pop bc                                           ; $7d8d: $c1
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	rra                                              ; $7d90: $1f
	add d                                            ; $7d91: $82
	ret nz                                           ; $7d92: $c0

	dec de                                           ; $7d93: $1b
	pop de                                           ; $7d94: $d1
	ld [bc], a                                       ; $7d95: $02
	ret nc                                           ; $7d96: $d0

	pop de                                           ; $7d97: $d1
	ld a, [bc]                                       ; $7d98: $0a
	ld [bc], a                                       ; $7d99: $02
	add b                                            ; $7d9a: $80
	ld [bc], a                                       ; $7d9b: $02
	and b                                            ; $7d9c: $a0
	add b                                            ; $7d9d: $80
	ld [bc], a                                       ; $7d9e: $02
	jp nz, $0280                                     ; $7d9f: $c2 $80 $02

	jp $d202                                         ; $7da2: $c3 $02 $d2


	db $d3                                           ; $7da5: $d3
	rlca                                             ; $7da6: $07
	ld bc, $0280                                     ; $7da7: $01 $80 $02
	and b                                            ; $7daa: $a0
	add b                                            ; $7dab: $80
	ld [bc], a                                       ; $7dac: $02
	jp nz, $0000                                    ; $7dad: $c2 $00 $00

	rra                                              ; $7db0: $1f
	add d                                            ; $7db1: $82
	ret nz                                           ; $7db2: $c0

	dec de                                           ; $7db3: $1b
	jp nc, $d002                                     ; $7db4: $d2 $02 $d0

	pop de                                           ; $7db7: $d1
	ld a, [bc]                                       ; $7db8: $0a
	ld [bc], a                                       ; $7db9: $02
	add b                                            ; $7dba: $80
	ld [bc], a                                       ; $7dbb: $02
	and c                                            ; $7dbc: $a1
	add b                                            ; $7dbd: $80
	ld [bc], a                                       ; $7dbe: $02
	call nz, $0280                                   ; $7dbf: $c4 $80 $02
	push bc                                          ; $7dc2: $c5
	ld [bc], a                                       ; $7dc3: $02
	jp nc, $07d3                                     ; $7dc4: $d2 $d3 $07

	ld bc, $0280                                     ; $7dc7: $01 $80 $02
	and c                                            ; $7dca: $a1
	add b                                            ; $7dcb: $80
	ld [bc], a                                       ; $7dcc: $02
	call nz, $0000                                  ; $7dcd: $c4 $00 $00
	rra                                              ; $7dd0: $1f
	add d                                            ; $7dd1: $82
	ret nz                                           ; $7dd2: $c0

	dec de                                           ; $7dd3: $1b
	db $d3                                           ; $7dd4: $d3
	ld [bc], a                                       ; $7dd5: $02
	ret nc                                           ; $7dd6: $d0

	pop de                                           ; $7dd7: $d1
	ld a, [bc]                                       ; $7dd8: $0a
	ld [bc], a                                       ; $7dd9: $02
	add b                                            ; $7dda: $80
	ld [bc], a                                       ; $7ddb: $02
	and d                                            ; $7ddc: $a2
	add b                                            ; $7ddd: $80
	ld [bc], a                                       ; $7dde: $02
	add $80                                          ; $7ddf: $c6 $80
	ld [bc], a                                       ; $7de1: $02
	rst JumpTable                                          ; $7de2: $c7
	ld [bc], a                                       ; $7de3: $02
	jp nc, $07d3                                     ; $7de4: $d2 $d3 $07

	ld bc, $0280                                     ; $7de7: $01 $80 $02
	and d                                            ; $7dea: $a2
	add b                                            ; $7deb: $80
	ld [bc], a                                       ; $7dec: $02
	add $00                                          ; $7ded: $c6 $00
	nop                                              ; $7def: $00
	rra                                              ; $7df0: $1f
	add d                                            ; $7df1: $82
	ret nz                                           ; $7df2: $c0

	dec de                                           ; $7df3: $1b
	rst SubAFromHL                                          ; $7df4: $d7
	ld [bc], a                                       ; $7df5: $02
	ret nc                                           ; $7df6: $d0

	pop de                                           ; $7df7: $d1
	ld a, [bc]                                       ; $7df8: $0a
	ld [bc], a                                       ; $7df9: $02
	add b                                            ; $7dfa: $80
	ld [bc], a                                       ; $7dfb: $02
	and e                                            ; $7dfc: $a3
	add b                                            ; $7dfd: $80
	ld [bc], a                                       ; $7dfe: $02
	ret z                                            ; $7dff: $c8

	add b                                            ; $7e00: $80
	ld [bc], a                                       ; $7e01: $02
	ret                                              ; $7e02: $c9


	ld [bc], a                                       ; $7e03: $02
	jp nc, $07d3                                     ; $7e04: $d2 $d3 $07

	ld bc, $0280                                     ; $7e07: $01 $80 $02
	and e                                            ; $7e0a: $a3
	add b                                            ; $7e0b: $80
	ld [bc], a                                       ; $7e0c: $02
	ret z                                            ; $7e0d: $c8

	nop                                              ; $7e0e: $00
	nop                                              ; $7e0f: $00
	rra                                              ; $7e10: $1f
	add d                                            ; $7e11: $82
	ret nz                                           ; $7e12: $c0

	dec de                                           ; $7e13: $1b
	ret c                                            ; $7e14: $d8

	ld [bc], a                                       ; $7e15: $02
	ret nc                                           ; $7e16: $d0

	pop de                                           ; $7e17: $d1
	ld a, [bc]                                       ; $7e18: $0a
	ld [bc], a                                       ; $7e19: $02
	add b                                            ; $7e1a: $80
	ld [bc], a                                       ; $7e1b: $02
	and h                                            ; $7e1c: $a4
	add b                                            ; $7e1d: $80
	ld [bc], a                                       ; $7e1e: $02
	jp z, $0280                                      ; $7e1f: $ca $80 $02

	rlc d                                            ; $7e22: $cb $02
	jp nc, $07d3                                     ; $7e24: $d2 $d3 $07

	ld bc, $0280                                     ; $7e27: $01 $80 $02
	and h                                            ; $7e2a: $a4
	add b                                            ; $7e2b: $80
	ld [bc], a                                       ; $7e2c: $02
	jp z, $0000                                     ; $7e2d: $ca $00 $00

	rra                                              ; $7e30: $1f
	add d                                            ; $7e31: $82
	ret nz                                           ; $7e32: $c0

	dec de                                           ; $7e33: $1b
	jp c, $d002                                      ; $7e34: $da $02 $d0

	pop de                                           ; $7e37: $d1
	ld a, [bc]                                       ; $7e38: $0a
	ld [bc], a                                       ; $7e39: $02
	add b                                            ; $7e3a: $80
	ld [bc], a                                       ; $7e3b: $02
	and l                                            ; $7e3c: $a5
	add b                                            ; $7e3d: $80
	ld [bc], a                                       ; $7e3e: $02
	call z, $0280                                    ; $7e3f: $cc $80 $02
	call $d202                                       ; $7e42: $cd $02 $d2
	db $d3                                           ; $7e45: $d3
	rlca                                             ; $7e46: $07
	ld bc, $0280                                     ; $7e47: $01 $80 $02
	and l                                            ; $7e4a: $a5
	add b                                            ; $7e4b: $80
	ld [bc], a                                       ; $7e4c: $02
	call z, $0000                                   ; $7e4d: $cc $00 $00
	rra                                              ; $7e50: $1f
	add d                                            ; $7e51: $82

jr_086_7e52:
	ret nz                                           ; $7e52: $c0

	dec de                                           ; $7e53: $1b
	db $dd                                           ; $7e54: $dd
	ld [bc], a                                       ; $7e55: $02
	ret nc                                           ; $7e56: $d0

	pop de                                           ; $7e57: $d1
	ld a, [bc]                                       ; $7e58: $0a
	ld [bc], a                                       ; $7e59: $02
	add b                                            ; $7e5a: $80
	ld [bc], a                                       ; $7e5b: $02
	and [hl]                                         ; $7e5c: $a6
	add b                                            ; $7e5d: $80
	ld [bc], a                                       ; $7e5e: $02
	adc $80                                          ; $7e5f: $ce $80
	ld [bc], a                                       ; $7e61: $02
	rst GetHLinHL                                          ; $7e62: $cf
	ld [bc], a                                       ; $7e63: $02
	jp nc, $07d3                                     ; $7e64: $d2 $d3 $07

jr_086_7e67:
	ld bc, $0280                                     ; $7e67: $01 $80 $02
	and [hl]                                         ; $7e6a: $a6
	add b                                            ; $7e6b: $80
	ld [bc], a                                       ; $7e6c: $02
	adc $00                                          ; $7e6d: $ce $00
	nop                                              ; $7e6f: $00
	add hl, bc                                       ; $7e70: $09
	ld a, [de]                                       ; $7e71: $1a
	ei                                               ; $7e72: $fb
	add b                                            ; $7e73: $80
	ld [bc], a                                       ; $7e74: $02
	pop bc                                           ; $7e75: $c1
	ld [de], a                                       ; $7e76: $12
	pop bc                                           ; $7e77: $c1
	ld e, c                                          ; $7e78: $59
	db $e3                                           ; $7e79: $e3
	nop                                              ; $7e7a: $00
	ld c, d                                          ; $7e7b: $4a

jr_086_7e7c:
	ldh [rTIMA], a                                   ; $7e7c: $e0 $05
	ld c, $d0                                        ; $7e7e: $0e $d0
	adc e                                            ; $7e80: $8b
	ld [bc], a                                       ; $7e81: $02
	xor a                                            ; $7e82: $af
	or b                                             ; $7e83: $b0
	adc [hl]                                         ; $7e84: $8e
	jr nz, @-$7c                                     ; $7e85: $20 $82

	ld [bc], a                                       ; $7e87: $02
	ret nc                                           ; $7e88: $d0

	db $e4                                           ; $7e89: $e4
	nop                                              ; $7e8a: $00
	ld [bc], a                                       ; $7e8b: $02
	add hl, bc                                       ; $7e8c: $09
	ret nz                                           ; $7e8d: $c0

	sub $40                                          ; $7e8e: $d6 $40
	adc a                                            ; $7e90: $8f

jr_086_7e91:
	and b                                            ; $7e91: $a0
	nop                                              ; $7e92: $00
	ret nc                                           ; $7e93: $d0

	add a                                            ; $7e94: $87
	and b                                            ; $7e95: $a0
	db $10                                           ; $7e96: $10
	ret nz                                           ; $7e97: $c0

	ld [bc], a                                       ; $7e98: $02
	rst FarCall                                          ; $7e99: $f7
	dec d                                            ; $7e9a: $15
	add b                                            ; $7e9b: $80
	ld [bc], a                                       ; $7e9c: $02
	jp nz, $0280                                     ; $7e9d: $c2 $80 $02

	call nz, $0280                                   ; $7ea0: $c4 $80 $02
	add $80                                          ; $7ea3: $c6 $80
	ld [bc], a                                       ; $7ea5: $02

jr_086_7ea6:
	ret z                                            ; $7ea6: $c8

	add b                                            ; $7ea7: $80
	ld [bc], a                                       ; $7ea8: $02
	jp z, $0280                                      ; $7ea9: $ca $80 $02

	call z, $0280                                    ; $7eac: $cc $80 $02
	adc $fb                                          ; $7eaf: $ce $fb
	add b                                            ; $7eb1: $80
	ld [bc], a                                       ; $7eb2: $02
	jp nz, $fb10                                     ; $7eb3: $c2 $10 $fb

	db $fc                                           ; $7eb6: $fc
	add a                                            ; $7eb7: $87
	and b                                            ; $7eb8: $a0
	db $10                                           ; $7eb9: $10
	adc a                                            ; $7eba: $8f

jr_086_7ebb:
	and b                                            ; $7ebb: $a0
	nop                                              ; $7ebc: $00
	inc bc                                           ; $7ebd: $03
	ldh [rP1], a                                     ; $7ebe: $e0 $00
	and [hl]                                         ; $7ec0: $a6
	jr nz, jr_086_7e52                               ; $7ec1: $20 $8f

	and b                                            ; $7ec3: $a0
	nop                                              ; $7ec4: $00
	ei                                               ; $7ec5: $fb
	add b                                            ; $7ec6: $80
	ld [bc], a                                       ; $7ec7: $02
	call nz, $fb10                                   ; $7ec8: $c4 $10 $fb
	db $fc                                           ; $7ecb: $fc
	add a                                            ; $7ecc: $87
	and b                                            ; $7ecd: $a0
	db $10                                           ; $7ece: $10
	adc a                                            ; $7ecf: $8f

jr_086_7ed0:
	and b                                            ; $7ed0: $a0
	nop                                              ; $7ed1: $00
	inc bc                                           ; $7ed2: $03
	ldh [rP1], a                                     ; $7ed3: $e0 $00
	ei                                               ; $7ed5: $fb
	jr nz, jr_086_7e67                               ; $7ed6: $20 $8f

	and b                                            ; $7ed8: $a0
	nop                                              ; $7ed9: $00
	ei                                               ; $7eda: $fb
	add b                                            ; $7edb: $80
	ld [bc], a                                       ; $7edc: $02
	add $10                                          ; $7edd: $c6 $10
	ei                                               ; $7edf: $fb
	db $fc                                           ; $7ee0: $fc
	add a                                            ; $7ee1: $87
	and b                                            ; $7ee2: $a0
	db $10                                           ; $7ee3: $10
	adc a                                            ; $7ee4: $8f
	and b                                            ; $7ee5: $a0
	nop                                              ; $7ee6: $00
	inc bc                                           ; $7ee7: $03
	ldh [rSB], a                                     ; $7ee8: $e0 $01
	ld h, l                                          ; $7eea: $65
	jr nz, jr_086_7e7c                               ; $7eeb: $20 $8f

	and b                                            ; $7eed: $a0
	nop                                              ; $7eee: $00
	ei                                               ; $7eef: $fb
	add b                                            ; $7ef0: $80
	ld [bc], a                                       ; $7ef1: $02
	ret z                                            ; $7ef2: $c8

	db $10                                           ; $7ef3: $10
	ei                                               ; $7ef4: $fb
	db $fc                                           ; $7ef5: $fc
	add a                                            ; $7ef6: $87
	and b                                            ; $7ef7: $a0
	db $10                                           ; $7ef8: $10
	adc a                                            ; $7ef9: $8f
	and b                                            ; $7efa: $a0
	nop                                              ; $7efb: $00
	inc bc                                           ; $7efc: $03
	ldh [rSB], a                                     ; $7efd: $e0 $01
	xor d                                            ; $7eff: $aa
	jr nz, jr_086_7e91                               ; $7f00: $20 $8f

	and b                                            ; $7f02: $a0
	nop                                              ; $7f03: $00
	ei                                               ; $7f04: $fb
	add b                                            ; $7f05: $80
	ld [bc], a                                       ; $7f06: $02
	jp z, $fb10                                      ; $7f07: $ca $10 $fb

	db $fc                                           ; $7f0a: $fc
	add a                                            ; $7f0b: $87
	and b                                            ; $7f0c: $a0
	db $10                                           ; $7f0d: $10
	adc a                                            ; $7f0e: $8f
	and b                                            ; $7f0f: $a0
	nop                                              ; $7f10: $00
	inc bc                                           ; $7f11: $03
	ldh [rSC], a                                     ; $7f12: $e0 $02
	rrca                                             ; $7f14: $0f
	jr nz, jr_086_7ea6                               ; $7f15: $20 $8f

	and b                                            ; $7f17: $a0
	nop                                              ; $7f18: $00
	ei                                               ; $7f19: $fb
	add b                                            ; $7f1a: $80
	ld [bc], a                                       ; $7f1b: $02
	call z, $fb10                                    ; $7f1c: $cc $10 $fb
	db $fc                                           ; $7f1f: $fc
	add a                                            ; $7f20: $87
	and b                                            ; $7f21: $a0
	db $10                                           ; $7f22: $10
	adc a                                            ; $7f23: $8f
	and b                                            ; $7f24: $a0
	nop                                              ; $7f25: $00
	inc bc                                           ; $7f26: $03
	ldh [rSC], a                                     ; $7f27: $e0 $02
	ld [hl], d                                       ; $7f29: $72
	jr nz, jr_086_7ebb                               ; $7f2a: $20 $8f

	and b                                            ; $7f2c: $a0
	nop                                              ; $7f2d: $00
	ei                                               ; $7f2e: $fb
	add b                                            ; $7f2f: $80
	ld [bc], a                                       ; $7f30: $02
	adc $10                                          ; $7f31: $ce $10
	ei                                               ; $7f33: $fb
	db $fc                                           ; $7f34: $fc
	add a                                            ; $7f35: $87
	and b                                            ; $7f36: $a0
	db $10                                           ; $7f37: $10
	adc a                                            ; $7f38: $8f
	and b                                            ; $7f39: $a0
	nop                                              ; $7f3a: $00
	inc bc                                           ; $7f3b: $03
	ldh [rSC], a                                     ; $7f3c: $e0 $02
	or a                                             ; $7f3e: $b7
	jr nz, jr_086_7ed0                               ; $7f3f: $20 $8f

	and b                                            ; $7f41: $a0
	nop                                              ; $7f42: $00
	ld h, b                                          ; $7f43: $60
	db $fc                                           ; $7f44: $fc
	rst FarCall                                          ; $7f45: $f7
	dec d                                            ; $7f46: $15
	add b                                            ; $7f47: $80
	ld [bc], a                                       ; $7f48: $02
	jp nz, $0280                                     ; $7f49: $c2 $80 $02

	call nz, $0280                                   ; $7f4c: $c4 $80 $02

jr_086_7f4f:
	add $80                                          ; $7f4f: $c6 $80
	ld [bc], a                                       ; $7f51: $02
	ret z                                            ; $7f52: $c8

	add b                                            ; $7f53: $80
	ld [bc], a                                       ; $7f54: $02
	jp z, $0280                                      ; $7f55: $ca $80 $02

	call z, $0280                                    ; $7f58: $cc $80 $02
	adc $d0                                          ; $7f5b: $ce $d0
	inc bc                                           ; $7f5d: $03
	db $e4                                           ; $7f5e: $e4
	inc bc                                           ; $7f5f: $03
	jp nc, $e403                                     ; $7f60: $d2 $03 $e4

	rst $38                                          ; $7f63: $ff
	add hl, hl                                       ; $7f64: $29
	ld l, c                                          ; $7f65: $69
	ldh [rSC], a                                     ; $7f66: $e0 $02
	rst AddAOntoHL                                          ; $7f68: $ef
	ret nz                                           ; $7f69: $c0

	xor b                                            ; $7f6a: $a8
	pop de                                           ; $7f6b: $d1
	ld h, b                                          ; $7f6c: $60
	add b                                            ; $7f6d: $80
	ld [bc], a                                       ; $7f6e: $02
	jp $c03b                                         ; $7f6f: $c3 $3b $c0


	xor e                                            ; $7f72: $ab
	jp nc, $a5c0                                     ; $7f73: $d2 $c0 $a5

	ret nz                                           ; $7f76: $c0

	ld bc, $03a0                                     ; $7f77: $01 $a0 $03
	nop                                              ; $7f7a: $00
	pop hl                                           ; $7f7b: $e1
	ret nz                                           ; $7f7c: $c0

	ld bc, $01a0                                     ; $7f7d: $01 $a0 $01
	nop                                              ; $7f80: $00
	db $ec                                           ; $7f81: $ec
	ret nz                                           ; $7f82: $c0

	ld bc, $03a0                                     ; $7f83: $01 $a0 $03
	nop                                              ; $7f86: $00
	db $f4                                           ; $7f87: $f4
	ret nz                                           ; $7f88: $c0

	ld bc, $01a0                                     ; $7f89: $01 $a0 $01
	nop                                              ; $7f8c: $00
	ld hl, sp-$40                                    ; $7f8d: $f8 $c0
	ld bc, $03a0                                     ; $7f8f: $01 $a0 $03
	nop                                              ; $7f92: $00
	ei                                               ; $7f93: $fb
	pop bc                                           ; $7f94: $c1
	ld e, e                                          ; $7f95: $5b
	ret nz                                           ; $7f96: $c0

	ld bc, $01a0                                     ; $7f97: $01 $a0 $01
	ld bc, $c004                                     ; $7f9a: $01 $04 $c0
	nop                                              ; $7f9d: $00
	ld bc, $c00a                                     ; $7f9e: $01 $0a $c0
	ld bc, $01a0                                     ; $7fa1: $01 $a0 $01
	ld bc, $c00d                                     ; $7fa4: $01 $0d $c0
	ld bc, $01a0                                     ; $7fa7: $01 $a0 $01
	ld bc, $1220                                     ; $7faa: $01 $20 $12
	ret nz                                           ; $7fad: $c0

	xor h                                            ; $7fae: $ac
	ret nz                                           ; $7faf: $c0

	and l                                            ; $7fb0: $a5
	ret nz                                           ; $7fb1: $c0

	ld bc, $03a0                                     ; $7fb2: $01 $a0 $03
	ld bc, $c029                                     ; $7fb5: $01 $29 $c0
	ld bc, $01a0                                     ; $7fb8: $01 $a0 $01
	ld bc, $c12f                                     ; $7fbb: $01 $2f $c1
	ld e, e                                          ; $7fbe: $5b
	ret nc                                           ; $7fbf: $d0

	add h                                            ; $7fc0: $84
	ld [bc], a                                       ; $7fc1: $02
	cp e                                             ; $7fc2: $bb
	pop de                                           ; $7fc3: $d1
	ld b, b                                          ; $7fc4: $40
	add b                                            ; $7fc5: $80
	ld [bc], a                                       ; $7fc6: $02
	jp nz, $c2c0                                     ; $7fc7: $c2 $c0 $c2

	pop de                                           ; $7fca: $d1
	jr nz, jr_086_7f4f                               ; $7fcb: $20 $82

	ld [bc], a                                       ; $7fcd: $02
	ret nc                                           ; $7fce: $d0

	ld a, [hl]                                       ; $7fcf: $7e
	ldh [rSC], a                                     ; $7fd0: $e0 $02
	add l                                            ; $7fd2: $85
	ret nz                                           ; $7fd3: $c0

	xor b                                            ; $7fd4: $a8
	jp nc, $8060                                     ; $7fd5: $d2 $60 $80

	ld [bc], a                                       ; $7fd8: $02
	push bc                                          ; $7fd9: $c5
	ld b, b                                          ; $7fda: $40
	ret nz                                           ; $7fdb: $c0

	xor e                                            ; $7fdc: $ab
	jp nc, $a5c0                                     ; $7fdd: $d2 $c0 $a5

	ret nz                                           ; $7fe0: $c0

	ld bc, $04a0                                     ; $7fe1: $01 $a0 $04
	ld bc, $c039                                     ; $7fe4: $01 $39 $c0
	ld bc, $01a0                                     ; $7fe7: $01 $a0 $01
	nop                                              ; $7fea: $00
	db $ec                                           ; $7feb: $ec
	ret nz                                           ; $7fec: $c0

	ld bc, $04a0                                     ; $7fed: $01 $a0 $04
	ld bc, $c045                                     ; $7ff0: $01 $45 $c0
	ld bc, $01a0                                     ; $7ff3: $01 $a0 $01
	ld bc, $c157                                     ; $7ff6: $01 $57 $c1
	or d                                             ; $7ff9: $b2
	db $e3                                           ; $7ffa: $e3
	nop                                              ; $7ffb: $00
	ld a, $c0                                        ; $7ffc: $3e $c0
	db $01                                           ; $7ffe: $01
	and b                                            ; $7fff: $a0
