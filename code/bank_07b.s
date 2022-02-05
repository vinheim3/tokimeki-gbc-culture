; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07b", ROMX[$4000], BANK[$7b]

	ld a, [bc]                                       ; $4000: $0a
	inc c                                            ; $4001: $0c
	cp d                                             ; $4002: $ba
	ldh [rP1], a                                     ; $4003: $e0 $00
	ld [hl+], a                                      ; $4005: $22
	ld bc, $0fd5                                     ; $4006: $01 $d5 $0f
	ldh [rP1], a                                     ; $4009: $e0 $00
	ld c, [hl]                                       ; $400b: $4e
	ret nz                                           ; $400c: $c0

	ld bc, $07a0                                     ; $400d: $01 $a0 $07
	inc c                                            ; $4010: $0c
	jp $00e0                                         ; $4011: $c3 $e0 $00


	inc de                                           ; $4014: $13
	ldh [rP1], a                                     ; $4015: $e0 $00
	ld l, b                                          ; $4017: $68
	ret nz                                           ; $4018: $c0

	inc h                                            ; $4019: $24
	ldh [$28], a                                     ; $401a: $e0 $28
	db $dd                                           ; $401c: $dd
	ret nz                                           ; $401d: $c0

	dec h                                            ; $401e: $25
	ldh [$32], a                                     ; $401f: $e0 $32
	db $dd                                           ; $4021: $dd
	ret nz                                           ; $4022: $c0

	inc hl                                           ; $4023: $23
	jp c, $0fdd                                      ; $4024: $da $dd $0f

	ld h, b                                          ; $4027: $60
	add b                                            ; $4028: $80
	nop                                              ; $4029: $00
	db $db                                           ; $402a: $db
	inc bc                                           ; $402b: $03
	ldh [rP1], a                                     ; $402c: $e0 $00
	add hl, bc                                       ; $402e: $09
	ld b, $c1                                        ; $402f: $06 $c1
	ld b, a                                          ; $4031: $47
	db $dd                                           ; $4032: $dd
	ldh [rP1], a                                     ; $4033: $e0 $00
	db $10                                           ; $4035: $10
	dec c                                            ; $4036: $0d
	pop bc                                           ; $4037: $c1
	add a                                            ; $4038: $87
	ret nz                                           ; $4039: $c0

	dec bc                                           ; $403a: $0b
	db $e3                                           ; $403b: $e3
	nop                                              ; $403c: $00
	ld l, [hl]                                       ; $403d: $6e
	ret nz                                           ; $403e: $c0

	ld bc, $01a0                                     ; $403f: $01 $a0 $01
	inc c                                            ; $4042: $0c
	ret                                              ; $4043: $c9


	inc de                                           ; $4044: $13
	ret nz                                           ; $4045: $c0

	ld bc, $01a0                                     ; $4046: $01 $a0 $01
	inc c                                            ; $4049: $0c
	pop hl                                           ; $404a: $e1
	pop bc                                           ; $404b: $c1
	add a                                            ; $404c: $87
	ret nz                                           ; $404d: $c0

	dec bc                                           ; $404e: $0b
	db $e3                                           ; $404f: $e3
	nop                                              ; $4050: $00
	ld l, [hl]                                       ; $4051: $6e
	ret nz                                           ; $4052: $c0

	ld bc, $01a0                                     ; $4053: $01 $a0 $01
	inc c                                            ; $4056: $0c
	add sp, $25                                      ; $4057: $e8 $25
	ldh [$08], a                                     ; $4059: $e0 $08
	ld e, h                                          ; $405b: $5c
	pop bc                                           ; $405c: $c1
	ld [$d0d2], sp                                   ; $405d: $08 $d2 $d0
	ret nz                                           ; $4060: $c0

	ld bc, $07a0                                     ; $4061: $01 $a0 $07
	inc c                                            ; $4064: $0c
	add h                                            ; $4065: $84
	ret nz                                           ; $4066: $c0

	ld bc, $01a0                                     ; $4067: $01 $a0 $01
	inc c                                            ; $406a: $0c
	adc c                                            ; $406b: $89
	ret nz                                           ; $406c: $c0

	ld bc, $07a0                                     ; $406d: $01 $a0 $07
	inc c                                            ; $4070: $0c
	db $ec                                           ; $4071: $ec
	ret nz                                           ; $4072: $c0

	ld bc, $01a0                                     ; $4073: $01 $a0 $01
	inc c                                            ; $4076: $0c
	ldh a, [c]                                       ; $4077: $f2
	ret nz                                           ; $4078: $c0

	ld bc, $07a0                                     ; $4079: $01 $a0 $07
	inc c                                            ; $407c: $0c
	or $06                                           ; $407d: $f6 $06
	ret nz                                           ; $407f: $c0

	ld bc, $07a0                                     ; $4080: $01 $a0 $07
	inc c                                            ; $4083: $0c
	rst $38                                          ; $4084: $ff
	inc l                                            ; $4085: $2c
	ld a, c                                          ; $4086: $79
	pop bc                                           ; $4087: $c1
	cp l                                             ; $4088: $bd
	ret nc                                           ; $4089: $d0

	ld b, b                                          ; $408a: $40
	add b                                            ; $408b: $80
	nop                                              ; $408c: $00
	set 2, b                                         ; $408d: $cb $d0
	adc e                                            ; $408f: $8b
	and b                                            ; $4090: $a0
	inc [hl]                                         ; $4091: $34
	or b                                             ; $4092: $b0
	dec de                                           ; $4093: $1b
	ei                                               ; $4094: $fb
	db $fd                                           ; $4095: $fd
	adc e                                            ; $4096: $8b
	nop                                              ; $4097: $00
	ld a, [hl-]                                      ; $4098: $3a
	or b                                             ; $4099: $b0
	ld bc, $c00c                                     ; $409a: $01 $0c $c0
	push af                                          ; $409d: $f5
	nop                                              ; $409e: $00
	add b                                            ; $409f: $80
	nop                                              ; $40a0: $00
	jp z, $8bd0                                      ; $40a1: $ca $d0 $8b

	nop                                              ; $40a4: $00
	ld a, [hl-]                                      ; $40a5: $3a
	or b                                             ; $40a6: $b0
	ld bc, $fefb                                     ; $40a7: $01 $fb $fe
	ld c, $fc                                        ; $40aa: $0e $fc
	ret nz                                           ; $40ac: $c0

	ld h, h                                          ; $40ad: $64
	ldh [$63], a                                     ; $40ae: $e0 $63
	db $fc                                           ; $40b0: $fc
	ret nz                                           ; $40b1: $c0

	ld h, l                                          ; $40b2: $65
	rst SubAFromHL                                          ; $40b3: $d7
	db $fc                                           ; $40b4: $fc
	ret nz                                           ; $40b5: $c0

	ld h, [hl]                                       ; $40b6: $66
	ldh [rAUD2HIGH], a                               ; $40b7: $e0 $19
	ld hl, $07e0                                     ; $40b9: $21 $e0 $07
	sbc $c0                                          ; $40bc: $de $c0
	ld bc, $0ca0                                     ; $40be: $01 $a0 $0c
	dec c                                            ; $40c1: $0d
	ld a, [bc]                                       ; $40c2: $0a
	ret nz                                           ; $40c3: $c0

	ld bc, $01a0                                     ; $40c4: $01 $a0 $01
	dec c                                            ; $40c7: $0d
	db $10                                           ; $40c8: $10
	ret nz                                           ; $40c9: $c0

	ld bc, $0ca0                                     ; $40ca: $01 $a0 $0c
	dec c                                            ; $40cd: $0d
	inc de                                           ; $40ce: $13
	ret nz                                           ; $40cf: $c0

	ld bc, $01a0                                     ; $40d0: $01 $a0 $01
	dec c                                            ; $40d3: $0d
	daa                                              ; $40d4: $27
	ret nc                                           ; $40d5: $d0

	adc e                                            ; $40d6: $8b
	and b                                            ; $40d7: $a0
	inc [hl]                                         ; $40d8: $34
	or b                                             ; $40d9: $b0
	inc e                                            ; $40da: $1c
	ei                                               ; $40db: $fb
	pop af                                           ; $40dc: $f1
	add b                                            ; $40dd: $80
	nop                                              ; $40de: $00
	call c, $e104                                    ; $40df: $dc $04 $e1
	ld [bc], a                                       ; $40e2: $02
	add hl, bc                                       ; $40e3: $09
	ret nz                                           ; $40e4: $c0

	ei                                               ; $40e5: $fb

jr_07b_40e6:
	cp $0e                                           ; $40e6: $fe $0e
	db $fc                                           ; $40e8: $fc
	ret nz                                           ; $40e9: $c0

	ld h, l                                          ; $40ea: $65
	jp c, $08ff                                      ; $40eb: $da $ff $08

	db $fc                                           ; $40ee: $fc
	ret nz                                           ; $40ef: $c0

	ld h, [hl]                                       ; $40f0: $66
	push de                                          ; $40f1: $d5
	db $fc                                           ; $40f2: $fc
	ret nz                                           ; $40f3: $c0

	ld h, [hl]                                       ; $40f4: $66
	call nc, $d009                                   ; $40f5: $d4 $09 $d0
	adc e                                            ; $40f8: $8b
	and b                                            ; $40f9: $a0
	inc [hl]                                         ; $40fa: $34
	or b                                             ; $40fb: $b0
	inc e                                            ; $40fc: $1c
	ldh [rP1], a                                     ; $40fd: $e0 $00
	ld e, e                                          ; $40ff: $5b
	ld e, b                                          ; $4100: $58
	cp $0e                                           ; $4101: $fe $0e
	pop af                                           ; $4103: $f1
	add b                                            ; $4104: $80
	nop                                              ; $4105: $00
	db $dd                                           ; $4106: $dd
	db $fc                                           ; $4107: $fc
	ret nz                                           ; $4108: $c0

	ld h, l                                          ; $4109: $65
	ret nz                                           ; $410a: $c0

	ld [hl], h                                       ; $410b: $74
	db $fc                                           ; $410c: $fc
	ret nz                                           ; $410d: $c0

	ld h, [hl]                                       ; $410e: $66
	ret nz                                           ; $410f: $c0

	ld [hl], l                                       ; $4110: $75
	jr z, jr_07b_412b                                ; $4111: $28 $18

	ldh [rTAC], a                                    ; $4113: $e0 $07
	and d                                            ; $4115: $a2
	ret nc                                           ; $4116: $d0

	adc e                                            ; $4117: $8b
	and b                                            ; $4118: $a0
	inc [hl]                                         ; $4119: $34
	or b                                             ; $411a: $b0
	inc e                                            ; $411b: $1c
	ret nz                                           ; $411c: $c0

	ld bc, $01a0                                     ; $411d: $01 $a0 $01
	dec c                                            ; $4120: $0d
	dec l                                            ; $4121: $2d
	ret nz                                           ; $4122: $c0

	ld bc, $01a0                                     ; $4123: $01 $a0 $01
	dec c                                            ; $4126: $0d
	ld sp, $bdc1                                     ; $4127: $31 $c1 $bd
	ret nc                                           ; $412a: $d0

jr_07b_412b:
	inc hl                                           ; $412b: $23
	dec c                                            ; $412c: $0d
	inc [hl]                                         ; $412d: $34
	add hl, bc                                       ; $412e: $09
	ld a, [bc]                                       ; $412f: $0a
	ret nc                                           ; $4130: $d0

jr_07b_4131:
	adc e                                            ; $4131: $8b
	nop                                              ; $4132: $00
	sbc $b0                                          ; $4133: $de $b0
	dec e                                            ; $4135: $1d
	push hl                                          ; $4136: $e5
	ld b, l                                          ; $4137: $45
	nop                                              ; $4138: $00
	nop                                              ; $4139: $00
	dec c                                            ; $413a: $0d
	ld [hl], $09                                     ; $413b: $36 $09
	ld de, $24c0                                     ; $413d: $11 $c0 $24
	pop de                                           ; $4140: $d1
	ret nc                                           ; $4141: $d0

	ret nz                                           ; $4142: $c0

	inc hl                                           ; $4143: $23
	push de                                          ; $4144: $d5
	ret nc                                           ; $4145: $d0

	ret nz                                           ; $4146: $c0

	ld bc, $01a0                                     ; $4147: $01 $a0 $01
	dec c                                            ; $414a: $0d
	jr c, jr_07b_4131                                ; $414b: $38 $e4

	inc bc                                           ; $414d: $03
	inc a                                            ; $414e: $3c
	pop de                                           ; $414f: $d1
	add hl, bc                                       ; $4150: $09
	rlca                                             ; $4151: $07
	ld b, b                                          ; $4152: $40
	add b                                            ; $4153: $80
	nop                                              ; $4154: $00
	db $dd                                           ; $4155: $dd
	db $e4                                           ; $4156: $e4
	inc bc                                           ; $4157: $03
	ld [hl-], a                                      ; $4158: $32
	jp Jump_07b_6119                                 ; $4159: $c3 $19 $61


	add b                                            ; $415c: $80
	nop                                              ; $415d: $00
	call z, $e02d                                    ; $415e: $cc $2d $e0
	rlca                                             ; $4161: $07
	jr c, jr_07b_40e6                                ; $4162: $38 $82

	ret nz                                           ; $4164: $c0

	dec de                                           ; $4165: $1b
	ret nc                                           ; $4166: $d0

	ld [bc], a                                       ; $4167: $02
	ret nc                                           ; $4168: $d0

	pop de                                           ; $4169: $d1
	add hl, bc                                       ; $416a: $09
	ret nz                                           ; $416b: $c0

	ld bc, $02a0                                     ; $416c: $01 $a0 $02
	dec c                                            ; $416f: $0d
	inc a                                            ; $4170: $3c
	ldh [$03], a                                     ; $4171: $e0 $03
	ld [bc], a                                       ; $4173: $02
	ld [bc], a                                       ; $4174: $02
	jp nc, $09d3                                     ; $4175: $d2 $d3 $09

	ret nz                                           ; $4178: $c0

	ld bc, $02a0                                     ; $4179: $01 $a0 $02
	dec c                                            ; $417c: $0d
	ld b, a                                          ; $417d: $47
	ldh [rSC], a                                     ; $417e: $e0 $02
	db $fc                                           ; $4180: $fc
	ld bc, $09d4                                     ; $4181: $01 $d4 $09
	ret nz                                           ; $4184: $c0

	ld bc, $02a0                                     ; $4185: $01 $a0 $02
	dec c                                            ; $4188: $0d
	ld c, [hl]                                       ; $4189: $4e
	ldh [rSC], a                                     ; $418a: $e0 $02
	rst FarCall                                          ; $418c: $f7
	add b                                            ; $418d: $80
	nop                                              ; $418e: $00
	call $e02d                                       ; $418f: $cd $2d $e0
	rlca                                             ; $4192: $07
	rlca                                             ; $4193: $07
	add d                                            ; $4194: $82
	ret nz                                           ; $4195: $c0

	dec de                                           ; $4196: $1b
	ret nc                                           ; $4197: $d0

	ld [bc], a                                       ; $4198: $02
	ret nc                                           ; $4199: $d0

	pop de                                           ; $419a: $d1
	add hl, bc                                       ; $419b: $09
	ret nz                                           ; $419c: $c0

	ld bc, $02a0                                     ; $419d: $01 $a0 $02
	dec c                                            ; $41a0: $0d
	ld d, [hl]                                       ; $41a1: $56
	ldh [rSC], a                                     ; $41a2: $e0 $02
	pop de                                           ; $41a4: $d1
	ld [bc], a                                       ; $41a5: $02
	jp nc, $09d3                                     ; $41a6: $d2 $d3 $09

	ret nz                                           ; $41a9: $c0

	ld bc, $02a0                                     ; $41aa: $01 $a0 $02
	dec c                                            ; $41ad: $0d
	ld e, a                                          ; $41ae: $5f
	ldh [rSC], a                                     ; $41af: $e0 $02
	rlc c                                            ; $41b1: $cb $01
	call nc, $c009                                   ; $41b3: $d4 $09 $c0
	ld bc, $02a0                                     ; $41b6: $01 $a0 $02
	dec c                                            ; $41b9: $0d
	ld h, [hl]                                       ; $41ba: $66
	ldh [rSC], a                                     ; $41bb: $e0 $02
	add $00                                          ; $41bd: $c6 $00
	ld h, c                                          ; $41bf: $61
	add b                                            ; $41c0: $80
	nop                                              ; $41c1: $00
	adc $25                                          ; $41c2: $ce $25
	ldh [rTMA], a                                    ; $41c4: $e0 $06
	call nc, $01c0                                   ; $41c6: $d4 $c0 $01
	and b                                            ; $41c9: $a0
	inc bc                                           ; $41ca: $03
	dec c                                            ; $41cb: $0d
	ld [hl], c                                       ; $41cc: $71
	add c                                            ; $41cd: $81
	ret nz                                           ; $41ce: $c0

	dec de                                           ; $41cf: $1b
	pop de                                           ; $41d0: $d1
	ld [bc], a                                       ; $41d1: $02
	ret nc                                           ; $41d2: $d0

	pop de                                           ; $41d3: $d1
	add hl, bc                                       ; $41d4: $09
	ret nz                                           ; $41d5: $c0

	ld bc, $03a0                                     ; $41d6: $01 $a0 $03
	dec c                                            ; $41d9: $0d
	ld [hl], l                                       ; $41da: $75
	ldh [rSC], a                                     ; $41db: $e0 $02
	sbc b                                            ; $41dd: $98
	nop                                              ; $41de: $00
	add hl, bc                                       ; $41df: $09
	ret nz                                           ; $41e0: $c0

	ld bc, $03a0                                     ; $41e1: $01 $a0 $03
	dec c                                            ; $41e4: $0d
	add c                                            ; $41e5: $81
	ldh [rSC], a                                     ; $41e6: $e0 $02
	sub h                                            ; $41e8: $94
	add b                                            ; $41e9: $80
	nop                                              ; $41ea: $00
	rst GetHLinHL                                          ; $41eb: $cf
	dec h                                            ; $41ec: $25
	ldh [rTMA], a                                    ; $41ed: $e0 $06
	xor e                                            ; $41ef: $ab
	ret nz                                           ; $41f0: $c0

	ld bc, $03a0                                     ; $41f1: $01 $a0 $03
	dec c                                            ; $41f4: $0d
	ld [hl], c                                       ; $41f5: $71
	add c                                            ; $41f6: $81
	ret nz                                           ; $41f7: $c0

	dec de                                           ; $41f8: $1b
	pop de                                           ; $41f9: $d1
	ld [bc], a                                       ; $41fa: $02
	ret nc                                           ; $41fb: $d0

	pop de                                           ; $41fc: $d1
	add hl, bc                                       ; $41fd: $09
	ret nz                                           ; $41fe: $c0

	ld bc, $03a0                                     ; $41ff: $01 $a0 $03
	dec c                                            ; $4202: $0d
	add a                                            ; $4203: $87
	ldh [rSC], a                                     ; $4204: $e0 $02
	halt                                             ; $4206: $76
	nop                                              ; $4207: $00
	add hl, bc                                       ; $4208: $09
	ret nz                                           ; $4209: $c0

	ld bc, $03a0                                     ; $420a: $01 $a0 $03
	dec c                                            ; $420d: $0d
	adc l                                            ; $420e: $8d
	ldh [rSC], a                                     ; $420f: $e0 $02
	ld [hl], d                                       ; $4211: $72
	nop                                              ; $4212: $00
	ld h, c                                          ; $4213: $61
	add b                                            ; $4214: $80
	nop                                              ; $4215: $00
	ret nc                                           ; $4216: $d0

	inc sp                                           ; $4217: $33
	ldh [rTMA], a                                    ; $4218: $e0 $06
	add b                                            ; $421a: $80
	ret nz                                           ; $421b: $c0

	ld bc, $04a0                                     ; $421c: $01 $a0 $04
	dec c                                            ; $421f: $0d
	sub b                                            ; $4220: $90
	add d                                            ; $4221: $82
	ret nz                                           ; $4222: $c0

	dec de                                           ; $4223: $1b
	jp nc, $d002                                     ; $4224: $d2 $02 $d0

	pop de                                           ; $4227: $d1
	add hl, bc                                       ; $4228: $09
	ret nz                                           ; $4229: $c0

	ld bc, $04a0                                     ; $422a: $01 $a0 $04
	dec c                                            ; $422d: $0d
	sub h                                            ; $422e: $94
	ldh [rSC], a                                     ; $422f: $e0 $02
	ld b, h                                          ; $4231: $44
	ld [bc], a                                       ; $4232: $02
	jp nc, $09d3                                     ; $4233: $d2 $d3 $09

	ret nz                                           ; $4236: $c0

	ld bc, $04a0                                     ; $4237: $01 $a0 $04
	dec c                                            ; $423a: $0d
	sbc c                                            ; $423b: $99
	ldh [rSC], a                                     ; $423c: $e0 $02
	ld a, $01                                        ; $423e: $3e $01
	call nc, $c009                                   ; $4240: $d4 $09 $c0
	ld bc, $04a0                                     ; $4243: $01 $a0 $04
	dec c                                            ; $4246: $0d
	and b                                            ; $4247: $a0
	ldh [rSC], a                                     ; $4248: $e0 $02
	add hl, sp                                       ; $424a: $39
	add b                                            ; $424b: $80
	nop                                              ; $424c: $00
	pop de                                           ; $424d: $d1
	inc sp                                           ; $424e: $33
	ldh [rTMA], a                                    ; $424f: $e0 $06
	ld c, c                                          ; $4251: $49
	ret nz                                           ; $4252: $c0

	ld bc, $04a0                                     ; $4253: $01 $a0 $04
	dec c                                            ; $4256: $0d
	sub b                                            ; $4257: $90
	add d                                            ; $4258: $82
	ret nz                                           ; $4259: $c0

	dec de                                           ; $425a: $1b
	jp nc, $d002                                     ; $425b: $d2 $02 $d0

	pop de                                           ; $425e: $d1
	add hl, bc                                       ; $425f: $09
	ret nz                                           ; $4260: $c0

	ld bc, $04a0                                     ; $4261: $01 $a0 $04
	dec c                                            ; $4264: $0d
	and [hl]                                         ; $4265: $a6
	ldh [rSC], a                                     ; $4266: $e0 $02
	dec c                                            ; $4268: $0d
	ld [bc], a                                       ; $4269: $02
	jp nc, $09d3                                     ; $426a: $d2 $d3 $09

	ret nz                                           ; $426d: $c0

	ld bc, $04a0                                     ; $426e: $01 $a0 $04
	dec c                                            ; $4271: $0d
	xor e                                            ; $4272: $ab
	ldh [rSC], a                                     ; $4273: $e0 $02
	rlca                                             ; $4275: $07
	ld bc, $09d4                                     ; $4276: $01 $d4 $09
	ret nz                                           ; $4279: $c0

	ld bc, $04a0                                     ; $427a: $01 $a0 $04
	dec c                                            ; $427d: $0d
	or e                                             ; $427e: $b3
	ldh [rSC], a                                     ; $427f: $e0 $02
	ld [bc], a                                       ; $4281: $02
	nop                                              ; $4282: $00
	ld h, c                                          ; $4283: $61
	add b                                            ; $4284: $80
	nop                                              ; $4285: $00
	jp nc, $e033                                     ; $4286: $d2 $33 $e0

	ld b, $10                                        ; $4289: $06 $10
	ret nz                                           ; $428b: $c0

	ld bc, $05a0                                     ; $428c: $01 $a0 $05
	dec c                                            ; $428f: $0d
	cp c                                             ; $4290: $b9
	add d                                            ; $4291: $82
	ret nz                                           ; $4292: $c0

	dec de                                           ; $4293: $1b
	db $d3                                           ; $4294: $d3
	ld [bc], a                                       ; $4295: $02
	ret nc                                           ; $4296: $d0

	pop de                                           ; $4297: $d1
	add hl, bc                                       ; $4298: $09
	ret nz                                           ; $4299: $c0

	ld bc, $05a0                                     ; $429a: $01 $a0 $05
	dec c                                            ; $429d: $0d
	cp l                                             ; $429e: $bd
	ldh [rSB], a                                     ; $429f: $e0 $01
	call nc, $d202                                   ; $42a1: $d4 $02 $d2
	db $d3                                           ; $42a4: $d3
	add hl, bc                                       ; $42a5: $09
	ret nz                                           ; $42a6: $c0

	ld bc, $05a0                                     ; $42a7: $01 $a0 $05
	dec c                                            ; $42aa: $0d
	jp z, $01e0                                      ; $42ab: $ca $e0 $01

	adc $01                                          ; $42ae: $ce $01
	call nc, $c009                                   ; $42b0: $d4 $09 $c0
	ld bc, $05a0                                     ; $42b3: $01 $a0 $05
	dec c                                            ; $42b6: $0d
	rst GetHLinHL                                          ; $42b7: $cf
	ldh [rSB], a                                     ; $42b8: $e0 $01
	ret                                              ; $42ba: $c9


	add b                                            ; $42bb: $80
	nop                                              ; $42bc: $00
	db $d3                                           ; $42bd: $d3
	dec h                                            ; $42be: $25
	ldh [rTIMA], a                                   ; $42bf: $e0 $05
	reti                                             ; $42c1: $d9


	ret nz                                           ; $42c2: $c0

	ld bc, $05a0                                     ; $42c3: $01 $a0 $05
	dec c                                            ; $42c6: $0d
	cp c                                             ; $42c7: $b9
	add c                                            ; $42c8: $81
	ret nz                                           ; $42c9: $c0

	dec de                                           ; $42ca: $1b
	db $d3                                           ; $42cb: $d3
	ld [bc], a                                       ; $42cc: $02
	ret nc                                           ; $42cd: $d0

	pop de                                           ; $42ce: $d1
	add hl, bc                                       ; $42cf: $09
	ret nz                                           ; $42d0: $c0

	ld bc, $05a0                                     ; $42d1: $01 $a0 $05
	dec c                                            ; $42d4: $0d
	call nc, $01e0                                   ; $42d5: $d4 $e0 $01
	sbc l                                            ; $42d8: $9d
	nop                                              ; $42d9: $00
	add hl, bc                                       ; $42da: $09
	ret nz                                           ; $42db: $c0

	ld bc, $05a0                                     ; $42dc: $01 $a0 $05
	dec c                                            ; $42df: $0d
	ld e, a                                          ; $42e0: $5f
	ldh [rSB], a                                     ; $42e1: $e0 $01
	sbc c                                            ; $42e3: $99
	nop                                              ; $42e4: $00
	ld h, c                                          ; $42e5: $61
	add b                                            ; $42e6: $80
	nop                                              ; $42e7: $00
	call nc, $e033                                   ; $42e8: $d4 $33 $e0
	dec b                                            ; $42eb: $05
	xor [hl]                                         ; $42ec: $ae
	ret nz                                           ; $42ed: $c0

	ld bc, $08a0                                     ; $42ee: $01 $a0 $08
	dec c                                            ; $42f1: $0d
	rst SubAFromDE                                          ; $42f2: $df
	add d                                            ; $42f3: $82
	ret nz                                           ; $42f4: $c0

	dec de                                           ; $42f5: $1b
	rst SubAFromHL                                          ; $42f6: $d7
	ld [bc], a                                       ; $42f7: $02
	ret nc                                           ; $42f8: $d0

	pop de                                           ; $42f9: $d1
	add hl, bc                                       ; $42fa: $09
	ret nz                                           ; $42fb: $c0

	ld bc, $08a0                                     ; $42fc: $01 $a0 $08
	dec c                                            ; $42ff: $0d
	db $e4                                           ; $4300: $e4
	ldh [rSB], a                                     ; $4301: $e0 $01
	ld [hl], d                                       ; $4303: $72
	ld [bc], a                                       ; $4304: $02
	jp nc, $09d3                                     ; $4305: $d2 $d3 $09

	ret nz                                           ; $4308: $c0

	ld bc, $08a0                                     ; $4309: $01 $a0 $08
	dec c                                            ; $430c: $0d
	ld [$01e0], a                                    ; $430d: $ea $e0 $01
	ld l, h                                          ; $4310: $6c
	ld bc, $09d4                                     ; $4311: $01 $d4 $09
	ret nz                                           ; $4314: $c0

	ld bc, $08a0                                     ; $4315: $01 $a0 $08
	dec c                                            ; $4318: $0d
	xor $e0                                          ; $4319: $ee $e0
	ld bc, $8067                                     ; $431b: $01 $67 $80
	nop                                              ; $431e: $00
	push de                                          ; $431f: $d5
	inc sp                                           ; $4320: $33
	ldh [rTIMA], a                                   ; $4321: $e0 $05
	ld [hl], a                                       ; $4323: $77
	ret nz                                           ; $4324: $c0

	ld bc, $08a0                                     ; $4325: $01 $a0 $08
	dec c                                            ; $4328: $0d
	rst SubAFromDE                                          ; $4329: $df
	add d                                            ; $432a: $82
	ret nz                                           ; $432b: $c0

	dec de                                           ; $432c: $1b
	rst SubAFromHL                                          ; $432d: $d7
	ld [bc], a                                       ; $432e: $02
	ret nc                                           ; $432f: $d0

	pop de                                           ; $4330: $d1
	add hl, bc                                       ; $4331: $09
	ret nz                                           ; $4332: $c0

	ld bc, $08a0                                     ; $4333: $01 $a0 $08
	dec c                                            ; $4336: $0d
	push af                                          ; $4337: $f5
	ldh [rSB], a                                     ; $4338: $e0 $01
	dec sp                                           ; $433a: $3b
	ld [bc], a                                       ; $433b: $02
	jp nc, $09d3                                     ; $433c: $d2 $d3 $09

	ret nz                                           ; $433f: $c0

	ld bc, $08a0                                     ; $4340: $01 $a0 $08
	dec c                                            ; $4343: $0d
	ld sp, hl                                        ; $4344: $f9
	ldh [rSB], a                                     ; $4345: $e0 $01
	dec [hl]                                         ; $4347: $35
	ld bc, $09d4                                     ; $4348: $01 $d4 $09
	ret nz                                           ; $434b: $c0

	ld bc, $08a0                                     ; $434c: $01 $a0 $08
	ld c, $00                                        ; $434f: $0e $00
	ldh [rSB], a                                     ; $4351: $e0 $01
	jr nc, jr_07b_4355                               ; $4353: $30 $00

jr_07b_4355:
	ld h, c                                          ; $4355: $61
	add b                                            ; $4356: $80
	nop                                              ; $4357: $00
	sub $33                                          ; $4358: $d6 $33
	ldh [rTIMA], a                                   ; $435a: $e0 $05
	ld a, $c0                                        ; $435c: $3e $c0
	ld bc, $09a0                                     ; $435e: $01 $a0 $09
	ld c, $08                                        ; $4361: $0e $08
	add d                                            ; $4363: $82
	ret nz                                           ; $4364: $c0

	dec de                                           ; $4365: $1b
	ret c                                            ; $4366: $d8

	ld [bc], a                                       ; $4367: $02
	ret nc                                           ; $4368: $d0

	pop de                                           ; $4369: $d1
	add hl, bc                                       ; $436a: $09
	ret nz                                           ; $436b: $c0

	ld bc, $09a0                                     ; $436c: $01 $a0 $09
	ld c, $0d                                        ; $436f: $0e $0d
	ldh [rSB], a                                     ; $4371: $e0 $01
	ld [bc], a                                       ; $4373: $02
	ld [bc], a                                       ; $4374: $02
	jp nc, $09d3                                     ; $4375: $d2 $d3 $09

	ret nz                                           ; $4378: $c0

	ld bc, $09a0                                     ; $4379: $01 $a0 $09
	ld c, $13                                        ; $437c: $0e $13
	ldh [rP1], a                                     ; $437e: $e0 $00
	db $fc                                           ; $4380: $fc
	ld bc, $09d4                                     ; $4381: $01 $d4 $09
	ret nz                                           ; $4384: $c0

	ld bc, $09a0                                     ; $4385: $01 $a0 $09
	ld c, $19                                        ; $4388: $0e $19
	ldh [rP1], a                                     ; $438a: $e0 $00
	rst FarCall                                          ; $438c: $f7
	add b                                            ; $438d: $80
	nop                                              ; $438e: $00
	rst SubAFromHL                                          ; $438f: $d7
	inc sp                                           ; $4390: $33
	ldh [rTIMA], a                                   ; $4391: $e0 $05
	rlca                                             ; $4393: $07
	ret nz                                           ; $4394: $c0

	ld bc, $09a0                                     ; $4395: $01 $a0 $09
	ld c, $08                                        ; $4398: $0e $08
	add d                                            ; $439a: $82
	ret nz                                           ; $439b: $c0

	dec de                                           ; $439c: $1b
	ret c                                            ; $439d: $d8

	ld [bc], a                                       ; $439e: $02
	ret nc                                           ; $439f: $d0

	pop de                                           ; $43a0: $d1
	add hl, bc                                       ; $43a1: $09
	ret nz                                           ; $43a2: $c0

	ld bc, $09a0                                     ; $43a3: $01 $a0 $09
	ld c, $20                                        ; $43a6: $0e $20
	ldh [rP1], a                                     ; $43a8: $e0 $00
	rlc d                                            ; $43aa: $cb $02
	jp nc, $09d3                                     ; $43ac: $d2 $d3 $09

	ret nz                                           ; $43af: $c0

	ld bc, $09a0                                     ; $43b0: $01 $a0 $09
	ld c, $26                                        ; $43b3: $0e $26
	ldh [rP1], a                                     ; $43b5: $e0 $00
	push bc                                          ; $43b7: $c5
	ld bc, $09d4                                     ; $43b8: $01 $d4 $09
	ret nz                                           ; $43bb: $c0

	ld bc, $09a0                                     ; $43bc: $01 $a0 $09
	ld c, $2d                                        ; $43bf: $0e $2d
	ldh [rP1], a                                     ; $43c1: $e0 $00
	ret nz                                           ; $43c3: $c0

	nop                                              ; $43c4: $00
	ei                                               ; $43c5: $fb
	add b                                            ; $43c6: $80
	nop                                              ; $43c7: $00
	ret c                                            ; $43c8: $d8

	dec h                                            ; $43c9: $25
	ldh [rDIV], a                                    ; $43ca: $e0 $04
	adc $c0                                          ; $43cc: $ce $c0
	ld bc, $06a0                                     ; $43ce: $01 $a0 $06
	ld c, $34                                        ; $43d1: $0e $34
	add c                                            ; $43d3: $81
	ret nz                                           ; $43d4: $c0

	dec de                                           ; $43d5: $1b
	jp c, $d002                                      ; $43d6: $da $02 $d0

	pop de                                           ; $43d9: $d1
	add hl, bc                                       ; $43da: $09
	ret nz                                           ; $43db: $c0

	ld bc, $06a0                                     ; $43dc: $01 $a0 $06
	ld c, $38                                        ; $43df: $0e $38
	ldh [rP1], a                                     ; $43e1: $e0 $00
	sub d                                            ; $43e3: $92
	nop                                              ; $43e4: $00
	add hl, bc                                       ; $43e5: $09
	ret nz                                           ; $43e6: $c0

	ld bc, $06a0                                     ; $43e7: $01 $a0 $06
	ld c, $40                                        ; $43ea: $0e $40
	ldh [rP1], a                                     ; $43ec: $e0 $00
	adc [hl]                                         ; $43ee: $8e
	ld h, c                                          ; $43ef: $61
	add b                                            ; $43f0: $80
	nop                                              ; $43f1: $00
	reti                                             ; $43f2: $d9


	dec h                                            ; $43f3: $25
	ldh [rDIV], a                                    ; $43f4: $e0 $04
	and h                                            ; $43f6: $a4
	ret nz                                           ; $43f7: $c0

	ld bc, $0aa0                                     ; $43f8: $01 $a0 $0a
	ld c, $45                                        ; $43fb: $0e $45
	add c                                            ; $43fd: $81
	ret nz                                           ; $43fe: $c0

	dec de                                           ; $43ff: $1b
	db $dd                                           ; $4400: $dd
	ld [bc], a                                       ; $4401: $02
	ret nc                                           ; $4402: $d0

	pop de                                           ; $4403: $d1
	add hl, bc                                       ; $4404: $09
	ret nz                                           ; $4405: $c0

	ld bc, $0aa0                                     ; $4406: $01 $a0 $0a
	ld c, $49                                        ; $4409: $0e $49
	ldh [rP1], a                                     ; $440b: $e0 $00
	ld l, b                                          ; $440d: $68
	nop                                              ; $440e: $00
	add hl, bc                                       ; $440f: $09
	ret nz                                           ; $4410: $c0

	ld bc, $0aa0                                     ; $4411: $01 $a0 $0a
	ld c, $56                                        ; $4414: $0e $56
	ldh [rP1], a                                     ; $4416: $e0 $00
	ld h, h                                          ; $4418: $64
	add b                                            ; $4419: $80
	nop                                              ; $441a: $00
	jp c, $e025                                      ; $441b: $da $25 $e0

	inc b                                            ; $441e: $04
	ld a, e                                          ; $441f: $7b
	ret nz                                           ; $4420: $c0

	ld bc, $0aa0                                     ; $4421: $01 $a0 $0a
	ld c, $45                                        ; $4424: $0e $45
	add c                                            ; $4426: $81
	ret nz                                           ; $4427: $c0

	dec de                                           ; $4428: $1b
	db $dd                                           ; $4429: $dd
	ld [bc], a                                       ; $442a: $02
	ret nc                                           ; $442b: $d0

	pop de                                           ; $442c: $d1
	add hl, bc                                       ; $442d: $09
	ret nz                                           ; $442e: $c0

	ld bc, $0aa0                                     ; $442f: $01 $a0 $0a
	ld c, $5d                                        ; $4432: $0e $5d
	ldh [rP1], a                                     ; $4434: $e0 $00
	ld b, [hl]                                       ; $4436: $46
	nop                                              ; $4437: $00
	add hl, bc                                       ; $4438: $09
	ret nz                                           ; $4439: $c0

	ld bc, $0aa0                                     ; $443a: $01 $a0 $0a
	ld c, $65                                        ; $443d: $0e $65
	ldh [rP1], a                                     ; $443f: $e0 $00
	ld b, d                                          ; $4441: $42
	nop                                              ; $4442: $00
	ld b, e                                          ; $4443: $43
	add b                                            ; $4444: $80
	nop                                              ; $4445: $00
	call z, $0080                                    ; $4446: $cc $80 $00
	call $0080                                       ; $4449: $cd $80 $00
	adc $80                                          ; $444c: $ce $80
	nop                                              ; $444e: $00
	rst GetHLinHL                                          ; $444f: $cf
	ld b, e                                          ; $4450: $43
	add b                                            ; $4451: $80
	nop                                              ; $4452: $00
	ret nc                                           ; $4453: $d0

	add b                                            ; $4454: $80
	nop                                              ; $4455: $00
	pop de                                           ; $4456: $d1
	add b                                            ; $4457: $80
	nop                                              ; $4458: $00
	jp nc, $0080                                     ; $4459: $d2 $80 $00

	db $d3                                           ; $445c: $d3
	ld b, e                                          ; $445d: $43
	add b                                            ; $445e: $80
	nop                                              ; $445f: $00
	call nc, $0080                                   ; $4460: $d4 $80 $00
	push de                                          ; $4463: $d5
	add b                                            ; $4464: $80
	nop                                              ; $4465: $00
	sub $80                                          ; $4466: $d6 $80
	nop                                              ; $4468: $00
	rst SubAFromHL                                          ; $4469: $d7
	ld b, d                                          ; $446a: $42
	add b                                            ; $446b: $80
	nop                                              ; $446c: $00
	ret c                                            ; $446d: $d8

	add b                                            ; $446e: $80
	nop                                              ; $446f: $00
	reti                                             ; $4470: $d9


	add b                                            ; $4471: $80
	nop                                              ; $4472: $00
	jp c, $c006                                      ; $4473: $da $06 $c0

	ld bc, $01a0                                     ; $4476: $01 $a0 $01
	ld c, $6a                                        ; $4479: $0e $6a
	ld b, $c0                                        ; $447b: $06 $c0
	ld bc, $01a0                                     ; $447d: $01 $a0 $01
	ld c, $70                                        ; $4480: $0e $70
	ld b, $c0                                        ; $4482: $06 $c0
	ld bc, $01a0                                     ; $4484: $01 $a0 $01
	ld c, $7a                                        ; $4487: $0e $7a
	inc l                                            ; $4489: $2c
	add hl, bc                                       ; $448a: $09
	pop bc                                           ; $448b: $c1
	cp l                                             ; $448c: $bd
	ret nc                                           ; $448d: $d0

	ret nc                                           ; $448e: $d0

	adc e                                            ; $448f: $8b
	nop                                              ; $4490: $00

jr_07b_4491:
	ld [$1eb0], a                                    ; $4491: $ea $b0 $1e
	pop bc                                           ; $4494: $c1
	dec hl                                           ; $4495: $2b
	cp $0f                                           ; $4496: $fe $0f
	pop af                                           ; $4498: $f1
	add b                                            ; $4499: $80
	nop                                              ; $449a: $00
	ld e, h                                          ; $449b: $5c
	add b                                            ; $449c: $80
	nop                                              ; $449d: $00
	ld a, d                                          ; $449e: $7a
	db $fc                                           ; $449f: $fc
	ret nz                                           ; $44a0: $c0

	ld h, l                                          ; $44a1: $65
	db $db                                           ; $44a2: $db
	db $fc                                           ; $44a3: $fc
	ret nz                                           ; $44a4: $c0

	ld h, [hl]                                       ; $44a5: $66
	rst SubAFromDE                                          ; $44a6: $df
	jr z, @+$11                                      ; $44a7: $28 $0f

	ldh [rDIV], a                                    ; $44a9: $e0 $04
	inc c                                            ; $44ab: $0c
	ret nz                                           ; $44ac: $c0

	ld bc, $01a0                                     ; $44ad: $01 $a0 $01
	ld c, $7e                                        ; $44b0: $0e $7e
	ret nz                                           ; $44b2: $c0

	ld bc, $01a0                                     ; $44b3: $01 $a0 $01
	dec c                                            ; $44b6: $0d
	ld sp, $0d2f                                     ; $44b7: $31 $2f $0d
	inc [hl]                                         ; $44ba: $34
	add hl, bc                                       ; $44bb: $09
	rrca                                             ; $44bc: $0f
	ret nc                                           ; $44bd: $d0

	adc e                                            ; $44be: $8b
	nop                                              ; $44bf: $00
	or $b0                                           ; $44c0: $f6 $b0
	dec e                                            ; $44c2: $1d
	ret nz                                           ; $44c3: $c0

	add hl, bc                                       ; $44c4: $09
	db $e3                                           ; $44c5: $e3
	nop                                              ; $44c6: $00
	dec c                                            ; $44c7: $0d
	push hl                                          ; $44c8: $e5
	ld b, [hl]                                       ; $44c9: $46
	ld [$0d62], sp                                   ; $44ca: $08 $62 $0d
	ld [hl], $09                                     ; $44cd: $36 $09
	jr jr_07b_4491                                   ; $44cf: $18 $c0

	inc h                                            ; $44d1: $24
	pop de                                           ; $44d2: $d1
	rst SubAFromHL                                          ; $44d3: $d7
	ret nz                                           ; $44d4: $c0

	inc hl                                           ; $44d5: $23
	push de                                          ; $44d6: $d5
	rst SubAFromHL                                          ; $44d7: $d7
	ret nz                                           ; $44d8: $c0

	ld bc, $01a0                                     ; $44d9: $01 $a0 $01
	dec c                                            ; $44dc: $0d
	jr c, @-$2e                                      ; $44dd: $38 $d0

	adc e                                            ; $44df: $8b
	nop                                              ; $44e0: $00
	ld [$1eb0], a                                    ; $44e1: $ea $b0 $1e

jr_07b_44e4:
	push hl                                          ; $44e4: $e5
	ld b, [hl]                                       ; $44e5: $46
	nop                                              ; $44e6: $00
	nop                                              ; $44e7: $00
	cp $10                                           ; $44e8: $fe $10
	pop af                                           ; $44ea: $f1
	add b                                            ; $44eb: $80
	nop                                              ; $44ec: $00
	ld e, l                                          ; $44ed: $5d
	add b                                            ; $44ee: $80
	nop                                              ; $44ef: $00
	ld a, e                                          ; $44f0: $7b
	db $fc                                           ; $44f1: $fc
	ret nz                                           ; $44f2: $c0

	ld h, l                                          ; $44f3: $65
	jp c, $c0fc                                      ; $44f4: $da $fc $c0

	ld h, [hl]                                       ; $44f7: $66
	ldh [rAUD1LEN], a                                ; $44f8: $e0 $11
	jr z, @+$11                                      ; $44fa: $28 $0f

	ldh [$03], a                                     ; $44fc: $e0 $03
	cp c                                             ; $44fe: $b9
	ret nz                                           ; $44ff: $c0

	ld bc, $01a0                                     ; $4500: $01 $a0 $01
	ld c, $85                                        ; $4503: $0e $85
	ret nz                                           ; $4505: $c0

	ld bc, $01a0                                     ; $4506: $01 $a0 $01
	dec c                                            ; $4509: $0d
	ld sp, $0d2f                                     ; $450a: $31 $2f $0d
	inc [hl]                                         ; $450d: $34
	add hl, bc                                       ; $450e: $09
	rrca                                             ; $450f: $0f
	ret nc                                           ; $4510: $d0

	adc e                                            ; $4511: $8b
	ld bc, $b002                                     ; $4512: $01 $02 $b0
	dec e                                            ; $4515: $1d
	ret nz                                           ; $4516: $c0

	add hl, bc                                       ; $4517: $09
	db $e3                                           ; $4518: $e3
	nop                                              ; $4519: $00
	dec c                                            ; $451a: $0d
	push hl                                          ; $451b: $e5
	ld b, [hl]                                       ; $451c: $46
	dec bc                                           ; $451d: $0b
	ld h, a                                          ; $451e: $67
	dec c                                            ; $451f: $0d
	ld [hl], $09                                     ; $4520: $36 $09
	jr jr_07b_44e4                                   ; $4522: $18 $c0

	inc h                                            ; $4524: $24
	pop de                                           ; $4525: $d1
	ret c                                            ; $4526: $d8

	ret nz                                           ; $4527: $c0

	inc hl                                           ; $4528: $23
	push de                                          ; $4529: $d5
	ret c                                            ; $452a: $d8

	ret nz                                           ; $452b: $c0

	ld bc, $01a0                                     ; $452c: $01 $a0 $01
	dec c                                            ; $452f: $0d
	jr c, @-$2e                                      ; $4530: $38 $d0

	adc e                                            ; $4532: $8b
	nop                                              ; $4533: $00
	ld [$1eb0], a                                    ; $4534: $ea $b0 $1e

jr_07b_4537:
	push hl                                          ; $4537: $e5
	ld b, [hl]                                       ; $4538: $46
	nop                                              ; $4539: $00
	nop                                              ; $453a: $00
	cp $10                                           ; $453b: $fe $10
	pop af                                           ; $453d: $f1
	add b                                            ; $453e: $80
	ld bc, $800e                                     ; $453f: $01 $0e $80
	nop                                              ; $4542: $00
	sub c                                            ; $4543: $91
	db $fc                                           ; $4544: $fc
	ret nz                                           ; $4545: $c0

	ld h, l                                          ; $4546: $65
	push de                                          ; $4547: $d5
	db $fc                                           ; $4548: $fc
	ret nz                                           ; $4549: $c0

	ld h, [hl]                                       ; $454a: $66
	ldh [rAUD1SWEEP], a                              ; $454b: $e0 $10
	jr z, @+$11                                      ; $454d: $28 $0f

	ldh [$03], a                                     ; $454f: $e0 $03
	ld h, [hl]                                       ; $4551: $66
	ret nz                                           ; $4552: $c0

	ld bc, $01a0                                     ; $4553: $01 $a0 $01
	ld c, $8c                                        ; $4556: $0e $8c
	ret nz                                           ; $4558: $c0

	ld bc, $01a0                                     ; $4559: $01 $a0 $01
	dec c                                            ; $455c: $0d
	ld sp, $0d2f                                     ; $455d: $31 $2f $0d
	inc [hl]                                         ; $4560: $34
	add hl, bc                                       ; $4561: $09
	rrca                                             ; $4562: $0f
	ret nc                                           ; $4563: $d0

	adc e                                            ; $4564: $8b
	ld bc, $b00f                                     ; $4565: $01 $0f $b0
	dec e                                            ; $4568: $1d
	ret nz                                           ; $4569: $c0

	add hl, bc                                       ; $456a: $09
	db $e3                                           ; $456b: $e3
	nop                                              ; $456c: $00
	dec c                                            ; $456d: $0d
	push hl                                          ; $456e: $e5
	ld b, [hl]                                       ; $456f: $46
	ld c, $6b                                        ; $4570: $0e $6b

jr_07b_4572:
	dec c                                            ; $4572: $0d
	ld [hl], $09                                     ; $4573: $36 $09
	jr jr_07b_4537                                   ; $4575: $18 $c0

	inc h                                            ; $4577: $24
	pop de                                           ; $4578: $d1
	jp c, $23c0                                      ; $4579: $da $c0 $23

	push de                                          ; $457c: $d5
	jp c, $01c0                                      ; $457d: $da $c0 $01

	and b                                            ; $4580: $a0
	ld bc, $380d                                     ; $4581: $01 $0d $38
	ret nc                                           ; $4584: $d0

	adc e                                            ; $4585: $8b
	nop                                              ; $4586: $00
	ld [$1eb0], a                                    ; $4587: $ea $b0 $1e
	push hl                                          ; $458a: $e5
	ld b, [hl]                                       ; $458b: $46
	nop                                              ; $458c: $00
	nop                                              ; $458d: $00
	pop de                                           ; $458e: $d1
	add hl, bc                                       ; $458f: $09
	jr nc, jr_07b_4572                               ; $4590: $30 $e0

	nop                                              ; $4592: $00
	cpl                                              ; $4593: $2f
	ei                                               ; $4594: $fb
	cp $0f                                           ; $4595: $fe $0f
	add b                                            ; $4597: $80
	ld bc, $fc1b                                     ; $4598: $01 $1b $fc
	adc e                                            ; $459b: $8b
	and b                                            ; $459c: $a0
	inc [hl]                                         ; $459d: $34
	or b                                             ; $459e: $b0
	dec de                                           ; $459f: $1b
	db $fd                                           ; $45a0: $fd
	adc e                                            ; $45a1: $8b
	nop                                              ; $45a2: $00
	jr z, @-$4e                                      ; $45a3: $28 $b0

	dec bc                                           ; $45a5: $0b
	inc bc                                           ; $45a6: $03
	ldh [rSB], a                                     ; $45a7: $e0 $01
	ld [hl], e                                       ; $45a9: $73
	ret nc                                           ; $45aa: $d0

	adc e                                            ; $45ab: $8b
	nop                                              ; $45ac: $00
	ld [$1eb0], a                                    ; $45ad: $ea $b0 $1e
	ei                                               ; $45b0: $fb
	add b                                            ; $45b1: $80
	nop                                              ; $45b2: $00
	inc [hl]                                         ; $45b3: $34
	ld [$8040], sp                                   ; $45b4: $08 $40 $80

jr_07b_45b7:
	nop                                              ; $45b7: $00
	inc [hl]                                         ; $45b8: $34
	push hl                                          ; $45b9: $e5
	ld bc, $b119                                     ; $45ba: $01 $19 $b1
	push hl                                          ; $45bd: $e5
	ld b, [hl]                                       ; $45be: $46
	nop                                              ; $45bf: $00
	nop                                              ; $45c0: $00
	ld b, h                                          ; $45c1: $44
	ldh [rP1], a                                     ; $45c2: $e0 $00
	pop hl                                           ; $45c4: $e1
	ld h, b                                          ; $45c5: $60
	ei                                               ; $45c6: $fb
	adc a                                            ; $45c7: $8f
	ld bc, $d11c                                     ; $45c8: $01 $1c $d1
	add hl, bc                                       ; $45cb: $09
	ret nc                                           ; $45cc: $d0

	adc a                                            ; $45cd: $8f
	ld bc, $f61c                                     ; $45ce: $01 $1c $f6
	adc a                                            ; $45d1: $8f
	ld bc, $d11c                                     ; $45d2: $01 $1c $d1
	jr nc, jr_07b_45b7                               ; $45d5: $30 $e0

	nop                                              ; $45d7: $00
	cpl                                              ; $45d8: $2f
	ld h, c                                          ; $45d9: $61
	cp $0a                                           ; $45da: $fe $0a
	pop af                                           ; $45dc: $f1
	add b                                            ; $45dd: $80
	nop                                              ; $45de: $00
	ld b, a                                          ; $45df: $47
	add b                                            ; $45e0: $80
	ld bc, $802c                                     ; $45e1: $01 $2c $80
	ld bc, $162d                                     ; $45e4: $01 $2d $16
	ldh [rSC], a                                     ; $45e7: $e0 $02
	adc $c0                                          ; $45e9: $ce $c0
	dec bc                                           ; $45eb: $0b
	db $e3                                           ; $45ec: $e3
	nop                                              ; $45ed: $00
	ld l, e                                          ; $45ee: $6b
	ret nz                                           ; $45ef: $c0

	nop                                              ; $45f0: $00
	ld c, $93                                        ; $45f1: $0e $93
	ret nz                                           ; $45f3: $c0

	ld e, a                                          ; $45f4: $5f
	ret nz                                           ; $45f5: $c0

	ld h, c                                          ; $45f6: $61
	ret nz                                           ; $45f7: $c0

	ld h, d                                          ; $45f8: $62
	nop                                              ; $45f9: $00
	add b                                            ; $45fa: $80
	nop                                              ; $45fb: $00
	ld b, a                                          ; $45fc: $47
	pop af                                           ; $45fd: $f1
	add b                                            ; $45fe: $80
	nop                                              ; $45ff: $00
	ld b, a                                          ; $4600: $47
	inc bc                                           ; $4601: $03
	ldh [rP1], a                                     ; $4602: $e0 $00
	ld h, b                                          ; $4604: $60
	nop                                              ; $4605: $00
	ld e, h                                          ; $4606: $5c
	add c                                            ; $4607: $81
	adc e                                            ; $4608: $8b
	and b                                            ; $4609: $a0
	dec bc                                           ; $460a: $0b
	ld [bc], a                                       ; $460b: $02
	or b                                             ; $460c: $b0
	inc c                                            ; $460d: $0c
	ld [de], a                                       ; $460e: $12
	ei                                               ; $460f: $fb
	cp $0a                                           ; $4610: $fe $0a
	pop af                                           ; $4612: $f1
	add b                                            ; $4613: $80
	ld bc, $fb2c                                     ; $4614: $01 $2c $fb
	ret nz                                           ; $4617: $c0

	add e                                            ; $4618: $83
	ret c                                            ; $4619: $d8

	ldh [$50], a                                     ; $461a: $e0 $50
	inc b                                            ; $461c: $04
	nop                                              ; $461d: $00
	add b                                            ; $461e: $80
	ld bc, $022c                                     ; $461f: $01 $2c $02
	or b                                             ; $4622: $b0
	dec c                                            ; $4623: $0d
	ld a, $60                                        ; $4624: $3e $60
	ld sp, hl                                        ; $4626: $f9
	ret nz                                           ; $4627: $c0

	add e                                            ; $4628: $83
	rst SubAFromHL                                          ; $4629: $d7
	ldh [$74], a                                     ; $462a: $e0 $74
	dec b                                            ; $462c: $05
	ret nc                                           ; $462d: $d0

	adc c                                            ; $462e: $89
	and b                                            ; $462f: $a0
	ld b, b                                          ; $4630: $40
	pop de                                           ; $4631: $d1
	inc c                                            ; $4632: $0c
	ret nc                                           ; $4633: $d0

	adc c                                            ; $4634: $89
	and b                                            ; $4635: $a0
	ld b, b                                          ; $4636: $40
	or $e0                                           ; $4637: $f6 $e0
	ld e, $f3                                        ; $4639: $1e $f3
	ret nz                                           ; $463b: $c0

	add e                                            ; $463c: $83
	rst SubAFromHL                                          ; $463d: $d7
	call nc, $fefb                                   ; $463e: $d4 $fb $fe
	dec bc                                           ; $4641: $0b
	pop af                                           ; $4642: $f1
	add b                                            ; $4643: $80
	ld bc, $f82d                                     ; $4644: $01 $2d $f8
	ret nz                                           ; $4647: $c0

	add e                                            ; $4648: $83
	ret nc                                           ; $4649: $d0

	adc c                                            ; $464a: $89
	and b                                            ; $464b: $a0
	ld b, b                                          ; $464c: $40
	dec d                                            ; $464d: $15
	ld h, b                                          ; $464e: $60
	db $fc                                           ; $464f: $fc
	ret nz                                           ; $4650: $c0

	add e                                            ; $4651: $83
	ret nc                                           ; $4652: $d0

	ret nc                                           ; $4653: $d0

	inc b                                            ; $4654: $04
	nop                                              ; $4655: $00
	add b                                            ; $4656: $80
	ld bc, $092d                                     ; $4657: $01 $2d $09
	or b                                             ; $465a: $b0
	xor d                                            ; $465b: $aa
	inc b                                            ; $465c: $04
	nop                                              ; $465d: $00
	add b                                            ; $465e: $80
	ld bc, $ff2d                                     ; $465f: $01 $2d $ff
	nop                                              ; $4662: $00
	ld b, b                                          ; $4663: $40
	add c                                            ; $4664: $81
	adc e                                            ; $4665: $8b
	and b                                            ; $4666: $a0
	dec bc                                           ; $4667: $0b
	ld [bc], a                                       ; $4668: $02
	or b                                             ; $4669: $b0
	inc c                                            ; $466a: $0c
	ld a, [de]                                       ; $466b: $1a
	ei                                               ; $466c: $fb
	cp $07                                           ; $466d: $fe $07
	pop af                                           ; $466f: $f1
	add b                                            ; $4670: $80
	ld bc, $802e                                     ; $4671: $01 $2e $80
	ld bc, $0f2c                                     ; $4674: $01 $2c $0f
	ret nz                                           ; $4677: $c0

	dec bc                                           ; $4678: $0b
	db $e3                                           ; $4679: $e3
	nop                                              ; $467a: $00
	ld l, e                                          ; $467b: $6b
	ret nz                                           ; $467c: $c0

	nop                                              ; $467d: $00
	ld c, $99                                        ; $467e: $0e $99
	nop                                              ; $4680: $00
	add b                                            ; $4681: $80
	ld bc, $c02e                                     ; $4682: $01 $2e $c0
	ld h, b                                          ; $4685: $60
	ld [bc], a                                       ; $4686: $02
	or b                                             ; $4687: $b0
	dec c                                            ; $4688: $0d
	ld a, [de]                                       ; $4689: $1a
	ei                                               ; $468a: $fb
	cp $07                                           ; $468b: $fe $07
	pop af                                           ; $468d: $f1
	add b                                            ; $468e: $80
	ld bc, $802f                                     ; $468f: $01 $2f $80
	ld bc, $0f2d                                     ; $4692: $01 $2d $0f
	ret nz                                           ; $4695: $c0

	dec bc                                           ; $4696: $0b
	db $e3                                           ; $4697: $e3
	nop                                              ; $4698: $00
	ld l, e                                          ; $4699: $6b
	ret nz                                           ; $469a: $c0

	nop                                              ; $469b: $00
	ld c, $a2                                        ; $469c: $0e $a2
	nop                                              ; $469e: $00
	add b                                            ; $469f: $80
	ld bc, $c02f                                     ; $46a0: $01 $2f $c0
	ld e, [hl]                                       ; $46a3: $5e
	halt                                             ; $46a4: $76
	ei                                               ; $46a5: $fb
	ld hl, sp-$40                                    ; $46a6: $f8 $c0
	add e                                            ; $46a8: $83
	ret c                                            ; $46a9: $d8

	ldh [$50], a                                     ; $46aa: $e0 $50
	ld [hl+], a                                      ; $46ac: $22
	ei                                               ; $46ad: $fb
	cp $07                                           ; $46ae: $fe $07
	pop af                                           ; $46b0: $f1
	add b                                            ; $46b1: $80
	nop                                              ; $46b2: $00
	ld b, a                                          ; $46b3: $47
	add b                                            ; $46b4: $80
	ld bc, $102e                                     ; $46b5: $01 $2e $10
	ret nz                                           ; $46b8: $c0

	dec bc                                           ; $46b9: $0b
	db $e3                                           ; $46ba: $e3
	nop                                              ; $46bb: $00
	inc l                                            ; $46bc: $2c
	ret nz                                           ; $46bd: $c0

	nop                                              ; $46be: $00
	ld c, $a8                                        ; $46bf: $0e $a8
	ret nz                                           ; $46c1: $c0

	ld h, c                                          ; $46c2: $61
	ret nc                                           ; $46c3: $d0

	adc a                                            ; $46c4: $8f
	ld bc, $d81c                                     ; $46c5: $01 $1c $d8
	ld b, c                                          ; $46c8: $41
	add b                                            ; $46c9: $80
	ld bc, $802c                                     ; $46ca: $01 $2c $80
	ld bc, $602e                                     ; $46cd: $01 $2e $60
	ld sp, hl                                        ; $46d0: $f9
	ret nz                                           ; $46d1: $c0

	add e                                            ; $46d2: $83
	rst SubAFromHL                                          ; $46d3: $d7
	ldh [$db], a                                     ; $46d4: $e0 $db
	dec b                                            ; $46d6: $05
	ret nc                                           ; $46d7: $d0

	adc c                                            ; $46d8: $89
	and b                                            ; $46d9: $a0
	ld c, d                                          ; $46da: $4a
	rst SubAFromDE                                          ; $46db: $df

jr_07b_46dc:
	inc c                                            ; $46dc: $0c
	ret nc                                           ; $46dd: $d0

	adc c                                            ; $46de: $89
	and b                                            ; $46df: $a0

Call_07b_46e0:
	ld c, d                                          ; $46e0: $4a
	or $e0                                           ; $46e1: $f6 $e0
	scf                                              ; $46e3: $37
	di                                               ; $46e4: $f3
	ret nz                                           ; $46e5: $c0

	add e                                            ; $46e6: $83
	rst SubAFromHL                                          ; $46e7: $d7
	call nc, $fefb                                   ; $46e8: $d4 $fb $fe
	inc c                                            ; $46eb: $0c
	ld sp, hl                                        ; $46ec: $f9
	ret nz                                           ; $46ed: $c0

	add e                                            ; $46ee: $83
	ret nc                                           ; $46ef: $d0

	adc c                                            ; $46f0: $89
	and b                                            ; $46f1: $a0
	ld c, d                                          ; $46f2: $4a
	ei                                               ; $46f3: $fb
	ret nz                                           ; $46f4: $c0

	add e                                            ; $46f5: $83
	ret nc                                           ; $46f6: $d0

	rst SubAFromDE                                          ; $46f7: $df
	ld [hl+], a                                      ; $46f8: $22
	ei                                               ; $46f9: $fb
	cp $07                                           ; $46fa: $fe $07
	pop af                                           ; $46fc: $f1
	add b                                            ; $46fd: $80
	nop                                              ; $46fe: $00
	ld b, a                                          ; $46ff: $47
	add b                                            ; $4700: $80
	ld bc, $102f                                     ; $4701: $01 $2f $10
	ret nz                                           ; $4704: $c0

	dec bc                                           ; $4705: $0b
	db $e3                                           ; $4706: $e3
	nop                                              ; $4707: $00
	inc l                                            ; $4708: $2c
	ret nz                                           ; $4709: $c0

	nop                                              ; $470a: $00
	ld c, $b0                                        ; $470b: $0e $b0
	ret nz                                           ; $470d: $c0

	ld e, a                                          ; $470e: $5f
	ret nc                                           ; $470f: $d0

	adc a                                            ; $4710: $8f
	ld bc, $d81c                                     ; $4711: $01 $1c $d8
	ld b, c                                          ; $4714: $41
	add b                                            ; $4715: $80
	ld bc, $802d                                     ; $4716: $01 $2d $80
	ld bc, $1a2f                                     ; $4719: $01 $2f $1a
	ei                                               ; $471c: $fb
	cp $0e                                           ; $471d: $fe $0e
	add b                                            ; $471f: $80
	ld bc, $fc1b                                     ; $4720: $01 $1b $fc
	adc a                                            ; $4723: $8f
	ld bc, $d030                                     ; $4724: $01 $30 $d0
	db $fd                                           ; $4727: $fd
	adc e                                            ; $4728: $8b
	nop                                              ; $4729: $00
	jr z, jr_07b_46dc                                ; $472a: $28 $b0

	dec bc                                           ; $472c: $0b
	ld [$f2b0], sp                                   ; $472d: $08 $b0 $f2
	nop                                              ; $4730: $00
	rst $38                                          ; $4731: $ff
	inc bc                                           ; $4732: $03
	ldh [rP1], a                                     ; $4733: $e0 $00
	ld [bc], a                                       ; $4735: $02
	pop bc                                           ; $4736: $c1
	ld h, c                                          ; $4737: $61
	db $fc                                           ; $4738: $fc
	pop bc                                           ; $4739: $c1
	ld e, b                                          ; $473a: $58
	ei                                               ; $473b: $fb
	add e                                            ; $473c: $83
	ld bc, $d940                                     ; $473d: $01 $40 $d9
	nop                                              ; $4740: $00
	db $fc                                           ; $4741: $fc
	add e                                            ; $4742: $83
	ld bc, $d840                                     ; $4743: $01 $40 $d8
	dec de                                           ; $4746: $1b
	ldh [rSB], a                                     ; $4747: $e0 $01

jr_07b_4749:
	ld d, c                                          ; $4749: $51
	ret nz                                           ; $474a: $c0

	ld bc, $0da0                                     ; $474b: $01 $a0 $0d
	ld c, $b7                                        ; $474e: $0e $b7
	ret nz                                           ; $4750: $c0

	ld bc, $01a0                                     ; $4751: $01 $a0 $01
	ld c, $bb                                        ; $4754: $0e $bb
	ret nz                                           ; $4756: $c0

	ld bc, $0da0                                     ; $4757: $01 $a0 $0d
	ld c, $c0                                        ; $475a: $0e $c0
	ret nz                                           ; $475c: $c0

	ld bc, $01a0                                     ; $475d: $01 $a0 $01
	ld c, $ca                                        ; $4760: $0e $ca
	db $fc                                           ; $4762: $fc
	add e                                            ; $4763: $83
	ld bc, $d740                                     ; $4764: $01 $40 $d7
	jr nz, jr_07b_4749                               ; $4767: $20 $e0

	ld bc, $c030                                     ; $4769: $01 $30 $c0
	ld bc, $0da0                                     ; $476c: $01 $a0 $0d

jr_07b_476f:
	ld c, $b7                                        ; $476f: $0e $b7
	ret nz                                           ; $4771: $c0

	ld bc, $01a0                                     ; $4772: $01 $a0 $01
	ld c, $d2                                        ; $4775: $0e $d2
	ret nz                                           ; $4777: $c0

	ld bc, $0da0                                     ; $4778: $01 $a0 $0d
	ld c, $d8                                        ; $477b: $0e $d8
	ret nz                                           ; $477d: $c0

	ld bc, $01a0                                     ; $477e: $01 $a0 $01
	ld c, $e6                                        ; $4781: $0e $e6
	ret nc                                           ; $4783: $d0

	adc a                                            ; $4784: $8f
	ld bc, $d830                                     ; $4785: $01 $30 $d8
	db $fc                                           ; $4788: $fc
	add e                                            ; $4789: $83
	ld bc, $d640                                     ; $478a: $01 $40 $d6
	jr nz, jr_07b_476f                               ; $478d: $20 $e0

	ld bc, $c00a                                     ; $478f: $01 $0a $c0
	ld bc, $0da0                                     ; $4792: $01 $a0 $0d

jr_07b_4795:
	ld c, $b7                                        ; $4795: $0e $b7
	ret nz                                           ; $4797: $c0

	ld bc, $01a0                                     ; $4798: $01 $a0 $01
	ld c, $bb                                        ; $479b: $0e $bb
	ret nz                                           ; $479d: $c0

	ld bc, $0da0                                     ; $479e: $01 $a0 $0d
	ld c, $ee                                        ; $47a1: $0e $ee
	ret nz                                           ; $47a3: $c0

	ld bc, $01a0                                     ; $47a4: $01 $a0 $01
	ld c, $ff                                        ; $47a7: $0e $ff
	ret nc                                           ; $47a9: $d0

	adc a                                            ; $47aa: $8f
	ld bc, $dc30                                     ; $47ab: $01 $30 $dc
	db $fc                                           ; $47ae: $fc
	add e                                            ; $47af: $83
	ld bc, $d540                                     ; $47b0: $01 $40 $d5
	jr nz, jr_07b_4795                               ; $47b3: $20 $e0

	nop                                              ; $47b5: $00
	db $e4                                           ; $47b6: $e4
	ret nz                                           ; $47b7: $c0

	ld bc, $0da0                                     ; $47b8: $01 $a0 $0d

jr_07b_47bb:
	ld c, $b7                                        ; $47bb: $0e $b7
	ret nz                                           ; $47bd: $c0

	ld bc, $01a0                                     ; $47be: $01 $a0 $01
	rrca                                             ; $47c1: $0f
	ld [bc], a                                       ; $47c2: $02
	ret nz                                           ; $47c3: $c0

	ld bc, $0da0                                     ; $47c4: $01 $a0 $0d
	rrca                                             ; $47c7: $0f
	dec bc                                           ; $47c8: $0b
	ret nz                                           ; $47c9: $c0

	ld bc, $01a0                                     ; $47ca: $01 $a0 $01
	rrca                                             ; $47cd: $0f
	rra                                              ; $47ce: $1f
	ret nc                                           ; $47cf: $d0

	adc a                                            ; $47d0: $8f
	ld bc, $dc30                                     ; $47d1: $01 $30 $dc
	db $fc                                           ; $47d4: $fc
	add e                                            ; $47d5: $83
	ld bc, $d440                                     ; $47d6: $01 $40 $d4
	jr nz, jr_07b_47bb                               ; $47d9: $20 $e0

	nop                                              ; $47db: $00
	cp [hl]                                          ; $47dc: $be
	ret nz                                           ; $47dd: $c0

	ld bc, $0da0                                     ; $47de: $01 $a0 $0d

jr_07b_47e1:
	ld c, $b7                                        ; $47e1: $0e $b7
	ret nz                                           ; $47e3: $c0

	ld bc, $01a0                                     ; $47e4: $01 $a0 $01
	rrca                                             ; $47e7: $0f
	inc h                                            ; $47e8: $24
	ret nz                                           ; $47e9: $c0

	ld bc, $0da0                                     ; $47ea: $01 $a0 $0d
	rrca                                             ; $47ed: $0f
	dec hl                                           ; $47ee: $2b
	ret nz                                           ; $47ef: $c0

	ld bc, $01a0                                     ; $47f0: $01 $a0 $01
	rrca                                             ; $47f3: $0f
	inc a                                            ; $47f4: $3c
	ret nc                                           ; $47f5: $d0

	adc a                                            ; $47f6: $8f
	ld bc, $dc30                                     ; $47f7: $01 $30 $dc
	db $fc                                           ; $47fa: $fc
	add e                                            ; $47fb: $83
	ld bc, $d340                                     ; $47fc: $01 $40 $d3
	jr nz, jr_07b_47e1                               ; $47ff: $20 $e0

	nop                                              ; $4801: $00
	sbc b                                            ; $4802: $98
	ret nz                                           ; $4803: $c0

	ld bc, $0da0                                     ; $4804: $01 $a0 $0d

jr_07b_4807:
	ld c, $b7                                        ; $4807: $0e $b7
	ret nz                                           ; $4809: $c0

	ld bc, $01a0                                     ; $480a: $01 $a0 $01
	rrca                                             ; $480d: $0f
	ld b, d                                          ; $480e: $42
	ret nz                                           ; $480f: $c0

	ld bc, $0da0                                     ; $4810: $01 $a0 $0d
	rrca                                             ; $4813: $0f
	ld c, [hl]                                       ; $4814: $4e
	ret nz                                           ; $4815: $c0

	ld bc, $01a0                                     ; $4816: $01 $a0 $01
	rrca                                             ; $4819: $0f
	ld h, h                                          ; $481a: $64
	ret nc                                           ; $481b: $d0

	adc a                                            ; $481c: $8f
	ld bc, $dd30                                     ; $481d: $01 $30 $dd
	db $fc                                           ; $4820: $fc
	add e                                            ; $4821: $83
	ld bc, $d240                                     ; $4822: $01 $40 $d2
	jr nz, jr_07b_4807                               ; $4825: $20 $e0

	nop                                              ; $4827: $00
	ld [hl], d                                       ; $4828: $72
	ret nz                                           ; $4829: $c0

	ld bc, $0da0                                     ; $482a: $01 $a0 $0d

jr_07b_482d:
	ld c, $b7                                        ; $482d: $0e $b7
	ret nz                                           ; $482f: $c0

	ld bc, $01a0                                     ; $4830: $01 $a0 $01
	rrca                                             ; $4833: $0f
	ld l, h                                          ; $4834: $6c
	ret nz                                           ; $4835: $c0

	ld bc, $0da0                                     ; $4836: $01 $a0 $0d
	rrca                                             ; $4839: $0f
	ld [hl], c                                       ; $483a: $71
	ret nz                                           ; $483b: $c0

	ld bc, $01a0                                     ; $483c: $01 $a0 $01
	rrca                                             ; $483f: $0f
	ld a, [hl]                                       ; $4840: $7e
	ret nc                                           ; $4841: $d0

	adc a                                            ; $4842: $8f
	ld bc, $de30                                     ; $4843: $01 $30 $de
	db $fc                                           ; $4846: $fc
	add e                                            ; $4847: $83
	ld bc, $d140                                     ; $4848: $01 $40 $d1
	jr nz, jr_07b_482d                               ; $484b: $20 $e0

	nop                                              ; $484d: $00
	ld c, h                                          ; $484e: $4c
	ret nz                                           ; $484f: $c0

	ld bc, $0da0                                     ; $4850: $01 $a0 $0d
	ld c, $b7                                        ; $4853: $0e $b7
	ret nz                                           ; $4855: $c0

	ld bc, $01a0                                     ; $4856: $01 $a0 $01
	rrca                                             ; $4859: $0f
	add a                                            ; $485a: $87
	ret nz                                           ; $485b: $c0

	ld bc, $0da0                                     ; $485c: $01 $a0 $0d
	rrca                                             ; $485f: $0f
	adc [hl]                                         ; $4860: $8e
	ret nz                                           ; $4861: $c0

	ld bc, $01a0                                     ; $4862: $01 $a0 $01
	rrca                                             ; $4865: $0f
	sbc l                                            ; $4866: $9d
	ret nc                                           ; $4867: $d0

	adc a                                            ; $4868: $8f
	ld bc, $df30                                     ; $4869: $01 $30 $df
	pop de                                           ; $486c: $d1
	dec h                                            ; $486d: $25
	ldh [rP1], a                                     ; $486e: $e0 $00
	ld a, [hl+]                                      ; $4870: $2a
	ret nz                                           ; $4871: $c0

	ld bc, $0da0                                     ; $4872: $01 $a0 $0d
	ld c, $b7                                        ; $4875: $0e $b7
	ret nz                                           ; $4877: $c0

	ld bc, $01a0                                     ; $4878: $01 $a0 $01
	rrca                                             ; $487b: $0f
	and e                                            ; $487c: $a3
	ret nz                                           ; $487d: $c0

	ld bc, $0da0                                     ; $487e: $01 $a0 $0d
	rrca                                             ; $4881: $0f
	and a                                            ; $4882: $a7
	ret nz                                           ; $4883: $c0

	ld bc, $01a0                                     ; $4884: $01 $a0 $01
	rrca                                             ; $4887: $0f
	or h                                             ; $4888: $b4
	ret nc                                           ; $4889: $d0

	adc a                                            ; $488a: $8f
	ld bc, $e030                                     ; $488b: $01 $30 $e0
	stop                                             ; $488e: $10 $00
	add b                                            ; $4890: $80
	ld bc, $2044                                     ; $4891: $01 $44 $20
	add e                                            ; $4894: $83
	ld bc, $c140                                     ; $4895: $01 $40 $c1
	add [hl]                                         ; $4898: $86
	ld [de], a                                       ; $4899: $12
	ldh [rP1], a                                     ; $489a: $e0 $00
	dec de                                           ; $489c: $1b
	ret nz                                           ; $489d: $c0

	ld bc, $01a0                                     ; $489e: $01 $a0 $01
	rrca                                             ; $48a1: $0f
	cp d                                             ; $48a2: $ba
	ret nz                                           ; $48a3: $c0

	dec bc                                           ; $48a4: $0b
	db $e3                                           ; $48a5: $e3
	nop                                              ; $48a6: $00
	ld h, d                                          ; $48a7: $62
	ret nz                                           ; $48a8: $c0

	inc c                                            ; $48a9: $0c
	ldh [$3c], a                                     ; $48aa: $e0 $3c
	add hl, bc                                       ; $48ac: $09
	ret nz                                           ; $48ad: $c0

	dec bc                                           ; $48ae: $0b
	db $e3                                           ; $48af: $e3
	nop                                              ; $48b0: $00
	ld a, a                                          ; $48b1: $7f
	ret nz                                           ; $48b2: $c0

	nop                                              ; $48b3: $00
	rrca                                             ; $48b4: $0f
	ret                                              ; $48b5: $c9


	inc c                                            ; $48b6: $0c
	ei                                               ; $48b7: $fb
	pop af                                           ; $48b8: $f1
	add b                                            ; $48b9: $80
	nop                                              ; $48ba: $00
	jp z, $c006                                      ; $48bb: $ca $06 $c0

	push af                                          ; $48be: $f5
	nop                                              ; $48bf: $00
	add b                                            ; $48c0: $80
	nop                                              ; $48c1: $00
	jp z, Jump_07b_5b09                              ; $48c2: $ca $09 $5b

	nop                                              ; $48c5: $00
	add b                                            ; $48c6: $80
	and b                                            ; $48c7: $a0
	add hl, bc                                       ; $48c8: $09
	nop                                              ; $48c9: $00
	add b                                            ; $48ca: $80
	nop                                              ; $48cb: $00
	db $dd                                           ; $48cc: $dd
	pop bc                                           ; $48cd: $c1
	ld [$d0d2], sp                                   ; $48ce: $08 $d2 $d0
	ret nz                                           ; $48d1: $c0

	ld bc, $01a0                                     ; $48d2: $01 $a0 $01
	rrca                                             ; $48d5: $0f
	call z, $01c0                                    ; $48d6: $cc $c0 $01
	and b                                            ; $48d9: $a0
	ld [bc], a                                       ; $48da: $02
	rrca                                             ; $48db: $0f
	jp nc, $01c0                                     ; $48dc: $d2 $c0 $01

	and b                                            ; $48df: $a0
	ld bc, $d90f                                     ; $48e0: $01 $0f $d9
	ret nz                                           ; $48e3: $c0

	ld bc, $02a0                                     ; $48e4: $01 $a0 $02
	rrca                                             ; $48e7: $0f
	ldh [$c0], a                                     ; $48e8: $e0 $c0
	ld bc, $01a0                                     ; $48ea: $01 $a0 $01
	rrca                                             ; $48ed: $0f
	ld [$01c0], a                                    ; $48ee: $ea $c0 $01
	and b                                            ; $48f1: $a0
	ld [bc], a                                       ; $48f2: $02
	rrca                                             ; $48f3: $0f
	pop af                                           ; $48f4: $f1
	ret nz                                           ; $48f5: $c0

	ld bc, $01a0                                     ; $48f6: $01 $a0 $01
	rrca                                             ; $48f9: $0f
	db $fc                                           ; $48fa: $fc
	ret nz                                           ; $48fb: $c0

	ld bc, $02a0                                     ; $48fc: $01 $a0 $02
	db $10                                           ; $48ff: $10
	ld bc, $01c0                                     ; $4900: $01 $c0 $01
	and b                                            ; $4903: $a0
	ld bc, $1010                                     ; $4904: $01 $10 $10
	ret nz                                           ; $4907: $c0

	dec bc                                           ; $4908: $0b
	db $e3                                           ; $4909: $e3
	nop                                              ; $490a: $00
	ld a, a                                          ; $490b: $7f
	ret nz                                           ; $490c: $c0

	nop                                              ; $490d: $00
	rrca                                             ; $490e: $0f
	ret                                              ; $490f: $c9


	ret nz                                           ; $4910: $c0

	ld bc, $01a0                                     ; $4911: $01 $a0 $01
	db $10                                           ; $4914: $10
	inc d                                            ; $4915: $14
	ret nc                                           ; $4916: $d0

	adc e                                            ; $4917: $8b
	nop                                              ; $4918: $00
	sbc $b0                                          ; $4919: $de $b0
	rra                                              ; $491b: $1f
	push hl                                          ; $491c: $e5
	ld b, l                                          ; $491d: $45
	nop                                              ; $491e: $00
	nop                                              ; $491f: $00
	add hl, bc                                       ; $4920: $09
	inc a                                            ; $4921: $3c
	ret nz                                           ; $4922: $c0

	set 0, b                                         ; $4923: $cb $c0
	inc c                                            ; $4925: $0c
	ldh [$3c], a                                     ; $4926: $e0 $3c
	ret nz                                           ; $4928: $c0

	ld bc, $01a0                                     ; $4929: $01 $a0 $01
	db $10                                           ; $492c: $10
	dec de                                           ; $492d: $1b
	ret nz                                           ; $492e: $c0

	ld bc, $02a0                                     ; $492f: $01 $a0 $02
	inc bc                                           ; $4932: $03
	ret nc                                           ; $4933: $d0

	ret nz                                           ; $4934: $c0

	ld de, $00e3                                     ; $4935: $11 $e3 $00
	adc $c0                                          ; $4938: $ce $c0
	and a                                            ; $493a: $a7
	ret nc                                           ; $493b: $d0

	db $d3                                           ; $493c: $d3
	sbc $c1                                          ; $493d: $de $c1
	ld e, h                                          ; $493f: $5c
	ret nz                                           ; $4940: $c0

	jp z, $01c0                                      ; $4941: $ca $c0 $01

	and b                                            ; $4944: $a0
	ld [bc], a                                       ; $4945: $02
	db $10                                           ; $4946: $10
	ld hl, $01c0                                     ; $4947: $21 $c0 $01
	and b                                            ; $494a: $a0
	ld bc, $2610                                     ; $494b: $01 $10 $26
	ret nz                                           ; $494e: $c0

	ld bc, $02a0                                     ; $494f: $01 $a0 $02
	db $10                                           ; $4952: $10
	add hl, sp                                       ; $4953: $39
	ret nz                                           ; $4954: $c0

	ld bc, $01a0                                     ; $4955: $01 $a0 $01
	db $10                                           ; $4958: $10
	dec sp                                           ; $4959: $3b
	push hl                                          ; $495a: $e5
	ld b, l                                          ; $495b: $45
	nop                                              ; $495c: $00
	pop de                                           ; $495d: $d1
	add hl, bc                                       ; $495e: $09
	and d                                            ; $495f: $a2
	ret nz                                           ; $4960: $c0

	ld bc, $02a0                                     ; $4961: $01 $a0 $02
	db $10                                           ; $4964: $10
	ld b, h                                          ; $4965: $44
	ret nz                                           ; $4966: $c0

	ld bc, $01a0                                     ; $4967: $01 $a0 $01
	db $10                                           ; $496a: $10
	ld c, b                                          ; $496b: $48
	ret nz                                           ; $496c: $c0

	ld bc, $02a0                                     ; $496d: $01 $a0 $02
	db $10                                           ; $4970: $10
	ld d, b                                          ; $4971: $50
	ret nz                                           ; $4972: $c0

	ld bc, $01a0                                     ; $4973: $01 $a0 $01
	db $10                                           ; $4976: $10
	ld l, c                                          ; $4977: $69
	ret nz                                           ; $4978: $c0

	inc c                                            ; $4979: $0c
	ldh [rAUD3HIGH], a                               ; $497a: $e0 $1e
	ret nz                                           ; $497c: $c0

	ld bc, $02a0                                     ; $497d: $01 $a0 $02
	db $10                                           ; $4980: $10
	ld l, [hl]                                       ; $4981: $6e
	pop bc                                           ; $4982: $c1
	ld e, e                                          ; $4983: $5b
	pop bc                                           ; $4984: $c1
	ld e, c                                          ; $4985: $59
	db $e3                                           ; $4986: $e3
	nop                                              ; $4987: $00
	push de                                          ; $4988: $d5
	ret nz                                           ; $4989: $c0

	ld bc, $02a0                                     ; $498a: $01 $a0 $02
	db $10                                           ; $498d: $10
	ld [hl], d                                       ; $498e: $72
	ret nz                                           ; $498f: $c0

	ld bc, $01a0                                     ; $4990: $01 $a0 $01
	db $10                                           ; $4993: $10
	ld a, b                                          ; $4994: $78
	ret nz                                           ; $4995: $c0

	ld bc, $02a0                                     ; $4996: $01 $a0 $02
	db $10                                           ; $4999: $10
	add h                                            ; $499a: $84
	ret nz                                           ; $499b: $c0

	ld bc, $01a0                                     ; $499c: $01 $a0 $01
	db $10                                           ; $499f: $10
	adc h                                            ; $49a0: $8c
	ret nz                                           ; $49a1: $c0

	ld bc, $02a0                                     ; $49a2: $01 $a0 $02
	db $10                                           ; $49a5: $10
	sub b                                            ; $49a6: $90
	ret nz                                           ; $49a7: $c0

	ld bc, $01a0                                     ; $49a8: $01 $a0 $01
	db $10                                           ; $49ab: $10
	and b                                            ; $49ac: $a0
	ret nz                                           ; $49ad: $c0

	ld bc, $02a0                                     ; $49ae: $01 $a0 $02
	db $10                                           ; $49b1: $10
	and e                                            ; $49b2: $a3
	ret nz                                           ; $49b3: $c0

	ld bc, $01a0                                     ; $49b4: $01 $a0 $01
	db $10                                           ; $49b7: $10
	xor l                                            ; $49b8: $ad
	ret nz                                           ; $49b9: $c0

	ld bc, $02a0                                     ; $49ba: $01 $a0 $02
	db $10                                           ; $49bd: $10
	or h                                             ; $49be: $b4
	ret nz                                           ; $49bf: $c0

	ld bc, $01a0                                     ; $49c0: $01 $a0 $01
	db $10                                           ; $49c3: $10
	jp nz, $01c0                                     ; $49c4: $c2 $c0 $01

	and b                                            ; $49c7: $a0
	ld [bc], a                                       ; $49c8: $02
	db $10                                           ; $49c9: $10
	call nz, $cbc0                                   ; $49ca: $c4 $c0 $cb
	ret nz                                           ; $49cd: $c0

	ld de, $00e3                                     ; $49ce: $11 $e3 $00
	ld h, c                                          ; $49d1: $61
	pop bc                                           ; $49d2: $c1
	ld e, h                                          ; $49d3: $5c
	ret nz                                           ; $49d4: $c0

	jp z, $01c0                                      ; $49d5: $ca $c0 $01

	and b                                            ; $49d8: $a0
	ld [bc], a                                       ; $49d9: $02
	db $10                                           ; $49da: $10
	set 0, b                                         ; $49db: $cb $c0
	ld bc, $01a0                                     ; $49dd: $01 $a0 $01
	db $10                                           ; $49e0: $10
	rst SubAFromHL                                          ; $49e1: $d7
	ret nz                                           ; $49e2: $c0

	ld bc, $02a0                                     ; $49e3: $01 $a0 $02
	db $10                                           ; $49e6: $10
	call c, $21c0                                    ; $49e7: $dc $c0 $21
	jp nc, $c0d0                                     ; $49ea: $d2 $d0 $c0

	ld [hl+], a                                      ; $49ed: $22
	jp nc, $c0d0                                     ; $49ee: $d2 $d0 $c0

	ld h, $e0                                        ; $49f1: $26 $e0
	inc d                                            ; $49f3: $14
	ret nc                                           ; $49f4: $d0

	pop bc                                           ; $49f5: $c1
	dec b                                            ; $49f6: $05
	pop bc                                           ; $49f7: $c1
	ld l, e                                          ; $49f8: $6b
	reti                                             ; $49f9: $d9


	ret nc                                           ; $49fa: $d0

	nop                                              ; $49fb: $00
	add b                                            ; $49fc: $80
	nop                                              ; $49fd: $00
	dec [hl]                                         ; $49fe: $35
	db $e4                                           ; $49ff: $e4
	or $85                                           ; $4a00: $f6 $85
	add hl, bc                                       ; $4a02: $09
	pop bc                                           ; $4a03: $c1
	ccf                                              ; $4a04: $3f
	nop                                              ; $4a05: $00
	add b                                            ; $4a06: $80
	ld bc, $c145                                     ; $4a07: $01 $45 $c1
	ld [$d0d2], sp                                   ; $4a0a: $08 $d2 $d0
	ret nz                                           ; $4a0d: $c0

	ld bc, $01a0                                     ; $4a0e: $01 $a0 $01
	rrca                                             ; $4a11: $0f
	call z, $01c0                                    ; $4a12: $cc $c0 $01
	and b                                            ; $4a15: $a0
	dec c                                            ; $4a16: $0d
	ld c, $b7                                        ; $4a17: $0e $b7
	ret nz                                           ; $4a19: $c0

	ld bc, $01a0                                     ; $4a1a: $01 $a0 $01
	inc c                                            ; $4a1d: $0c
	sbc c                                            ; $4a1e: $99
	ret nz                                           ; $4a1f: $c0

	ld bc, $0da0                                     ; $4a20: $01 $a0 $0d
	db $10                                           ; $4a23: $10
	pop hl                                           ; $4a24: $e1
	ret nz                                           ; $4a25: $c0

	ld bc, $01a0                                     ; $4a26: $01 $a0 $01
	inc c                                            ; $4a29: $0c
	sbc c                                            ; $4a2a: $99
	ret nz                                           ; $4a2b: $c0

	ld bc, $0da0                                     ; $4a2c: $01 $a0 $0d
	db $10                                           ; $4a2f: $10
	push af                                          ; $4a30: $f5
	ret nz                                           ; $4a31: $c0

	ld bc, $01a0                                     ; $4a32: $01 $a0 $01
	db $10                                           ; $4a35: $10
	ld a, [$0bc0]                                    ; $4a36: $fa $c0 $0b
	db $e3                                           ; $4a39: $e3
	nop                                              ; $4a3a: $00
	ld a, a                                          ; $4a3b: $7f
	ret nz                                           ; $4a3c: $c0

	nop                                              ; $4a3d: $00
	rrca                                             ; $4a3e: $0f
	ret                                              ; $4a3f: $c9


	ret nz                                           ; $4a40: $c0

	ld bc, $01a0                                     ; $4a41: $01 $a0 $01
	db $10                                           ; $4a44: $10
	cp $c1                                           ; $4a45: $fe $c1
	ld e, c                                          ; $4a47: $59
	db $e3                                           ; $4a48: $e3
	nop                                              ; $4a49: $00
	add [hl]                                         ; $4a4a: $86
	ret nz                                           ; $4a4b: $c0

	inc c                                            ; $4a4c: $0c
	jp c, $01c0                                      ; $4a4d: $da $c0 $01

	and b                                            ; $4a50: $a0
	ld bc, $0b11                                     ; $4a51: $01 $11 $0b
	ret nz                                           ; $4a54: $c0

	dec bc                                           ; $4a55: $0b
	db $e3                                           ; $4a56: $e3
	nop                                              ; $4a57: $00
	db $10                                           ; $4a58: $10
	pop bc                                           ; $4a59: $c1
	ld d, l                                          ; $4a5a: $55
	pop de                                           ; $4a5b: $d1
	ret nz                                           ; $4a5c: $c0

	nop                                              ; $4a5d: $00
	ld de, $c016                                     ; $4a5e: $11 $16 $c0
	ld bc, $01a0                                     ; $4a61: $01 $a0 $01
	inc c                                            ; $4a64: $0c
	sbc c                                            ; $4a65: $99
	pop hl                                           ; $4a66: $e1
	ld [bc], a                                       ; $4a67: $02
	ld [bc], a                                       ; $4a68: $02
	xor b                                            ; $4a69: $a8
	ret nz                                           ; $4a6a: $c0

	add hl, bc                                       ; $4a6b: $09
	db $e3                                           ; $4a6c: $e3
	nop                                              ; $4a6d: $00
	ld [hl], b                                       ; $4a6e: $70
	ret nz                                           ; $4a6f: $c0

	ld bc, $0da0                                     ; $4a70: $01 $a0 $0d
	ld de, $c01a                                     ; $4a73: $11 $1a $c0
	ld bc, $01a0                                     ; $4a76: $01 $a0 $01
	ld de, $c020                                     ; $4a79: $11 $20 $c0
	ld bc, $0da0                                     ; $4a7c: $01 $a0 $0d
	ld de, $c025                                     ; $4a7f: $11 $25 $c0
	ld bc, $01a0                                     ; $4a82: $01 $a0 $01
	ld de, $c030                                     ; $4a85: $11 $30 $c0
	ld bc, $0da0                                     ; $4a88: $01 $a0 $0d
	ld de, $c035                                     ; $4a8b: $11 $35 $c0
	ld bc, $01a0                                     ; $4a8e: $01 $a0 $01
	ld de, $c049                                     ; $4a91: $11 $49 $c0
	ld bc, $0da0                                     ; $4a94: $01 $a0 $0d
	ld de, $c04e                                     ; $4a97: $11 $4e $c0
	ld bc, $01a0                                     ; $4a9a: $01 $a0 $01
	ld de, $c050                                     ; $4a9d: $11 $50 $c0
	ld bc, $0da0                                     ; $4aa0: $01 $a0 $0d
	ld de, $c052                                     ; $4aa3: $11 $52 $c0
	ld bc, $01a0                                     ; $4aa6: $01 $a0 $01
	ld de, wMenuOptionSelected                                     ; $4aa9: $11 $5f $c1
	ld e, c                                          ; $4aac: $59
	db $e3                                           ; $4aad: $e3
	nop                                              ; $4aae: $00
	adc b                                            ; $4aaf: $88
	ret nz                                           ; $4ab0: $c0

	ld bc, $0da0                                     ; $4ab1: $01 $a0 $0d
	ld de, $c065                                     ; $4ab4: $11 $65 $c0
	ld bc, $01a0                                     ; $4ab7: $01 $a0 $01
	ld de, $c072                                     ; $4aba: $11 $72 $c0
	ld bc, $0da0                                     ; $4abd: $01 $a0 $0d
	ld de, $c14e                                     ; $4ac0: $11 $4e $c1
	ld e, e                                          ; $4ac3: $5b
	pop bc                                           ; $4ac4: $c1
	ld d, l                                          ; $4ac5: $55
	ret nc                                           ; $4ac6: $d0

	ret nz                                           ; $4ac7: $c0

	nop                                              ; $4ac8: $00
	ld de, $c074                                     ; $4ac9: $11 $74 $c0
	ld bc, $01a0                                     ; $4acc: $01 $a0 $01
	ld de, $c177                                     ; $4acf: $11 $77 $c1
	ld e, c                                          ; $4ad2: $59
	db $e3                                           ; $4ad3: $e3
	ld bc, $c015                                     ; $4ad4: $01 $15 $c0
	ld bc, $0da0                                     ; $4ad7: $01 $a0 $0d
	ld de, $c07a                                     ; $4ada: $11 $7a $c0
	inc c                                            ; $4add: $0c
	ldh [$3c], a                                     ; $4ade: $e0 $3c
	ret nz                                           ; $4ae0: $c0

	set 0, b                                         ; $4ae1: $cb $c0
	ld de, $00e3                                     ; $4ae3: $11 $e3 $00
	add [hl]                                         ; $4ae6: $86
	pop bc                                           ; $4ae7: $c1
	ld e, h                                          ; $4ae8: $5c
	ret nz                                           ; $4ae9: $c0

	jp z, $01c0                                      ; $4aea: $ca $c0 $01

	and b                                            ; $4aed: $a0
	dec c                                            ; $4aee: $0d
	ld de, $c081                                     ; $4aef: $11 $81 $c0
	ld bc, $01a0                                     ; $4af2: $01 $a0 $01
	ld de, $c089                                     ; $4af5: $11 $89 $c0
	ld bc, $0da0                                     ; $4af8: $01 $a0 $0d
	ld de, $c08e                                     ; $4afb: $11 $8e $c0
	ld bc, $01a0                                     ; $4afe: $01 $a0 $01
	ld de, $c092                                     ; $4b01: $11 $92 $c0
	ld bc, $0da0                                     ; $4b04: $01 $a0 $0d
	ld de, $c094                                     ; $4b07: $11 $94 $c0
	ld bc, $0da0                                     ; $4b0a: $01 $a0 $0d
	ld de, $c096                                     ; $4b0d: $11 $96 $c0
	ld bc, $01a0                                     ; $4b10: $01 $a0 $01
	nop                                              ; $4b13: $00
	jp $01c0                                         ; $4b14: $c3 $c0 $01


	and b                                            ; $4b17: $a0
	dec c                                            ; $4b18: $0d
	ld de, $c0a6                                     ; $4b19: $11 $a6 $c0
	ld bc, $0da0                                     ; $4b1c: $01 $a0 $0d
	ld de, $c0ae                                     ; $4b1f: $11 $ae $c0
	ld bc, $0da0                                     ; $4b22: $01 $a0 $0d
	ld de, $c0b3                                     ; $4b25: $11 $b3 $c0
	ld bc, $01a0                                     ; $4b28: $01 $a0 $01
	inc c                                            ; $4b2b: $0c
	sbc c                                            ; $4b2c: $99
	ret nz                                           ; $4b2d: $c0

	ld bc, $0da0                                     ; $4b2e: $01 $a0 $0d
	ld de, $c0b6                                     ; $4b31: $11 $b6 $c0
	ld bc, $01a0                                     ; $4b34: $01 $a0 $01
	ld de, $c0b9                                     ; $4b37: $11 $b9 $c0
	set 0, c                                         ; $4b3a: $cb $c1
	dec b                                            ; $4b3c: $05
	pop bc                                           ; $4b3d: $c1
	ld l, e                                          ; $4b3e: $6b
	push de                                          ; $4b3f: $d5
	sbc $e4                                          ; $4b40: $de $e4
	push af                                          ; $4b42: $f5
	ld b, e                                          ; $4b43: $43
	add hl, bc                                       ; $4b44: $09
	ret nz                                           ; $4b45: $c0

	db $db                                           ; $4b46: $db
	nop                                              ; $4b47: $00
	add b                                            ; $4b48: $80
	nop                                              ; $4b49: $00
	ld e, e                                          ; $4b4a: $5b
	ret nz                                           ; $4b4b: $c0

	ld bc, $01a0                                     ; $4b4c: $01 $a0 $01
	ld de, $c0c1                                     ; $4b4f: $11 $c1 $c0
	dec bc                                           ; $4b52: $0b
	db $e3                                           ; $4b53: $e3
	nop                                              ; $4b54: $00
	ld [de], a                                       ; $4b55: $12
	ret nz                                           ; $4b56: $c0

	nop                                              ; $4b57: $00
	ld de, $c0cd                                     ; $4b58: $11 $cd $c0
	ld bc, $01a0                                     ; $4b5b: $01 $a0 $01
	ld de, $c1d2                                     ; $4b5e: $11 $d2 $c1
	ld d, e                                          ; $4b61: $53
	ret nz                                           ; $4b62: $c0

	inc d                                            ; $4b63: $14
	db $e3                                           ; $4b64: $e3
	nop                                              ; $4b65: $00
	ld e, a                                          ; $4b66: $5f
	ret nz                                           ; $4b67: $c0

	add hl, bc                                       ; $4b68: $09
	db $e3                                           ; $4b69: $e3
	nop                                              ; $4b6a: $00
	ld [bc], a                                       ; $4b6b: $02
	pop hl                                           ; $4b6c: $e1
	ld [bc], a                                       ; $4b6d: $02
	ld [bc], a                                       ; $4b6e: $02
	ld e, b                                          ; $4b6f: $58
	ret nz                                           ; $4b70: $c0

	ld bc, $06a0                                     ; $4b71: $01 $a0 $06
	ld de, $c0da                                     ; $4b74: $11 $da $c0
	ld bc, $01a0                                     ; $4b77: $01 $a0 $01
	ld de, $c0de                                     ; $4b7a: $11 $de $c0
	ld bc, $06a0                                     ; $4b7d: $01 $a0 $06
	ld de, wGenericTileDataDest+1                                     ; $4b80: $11 $e3 $c0
	ld bc, $01a0                                     ; $4b83: $01 $a0 $01
	ld de, $c0ef                                     ; $4b86: $11 $ef $c0
	ld bc, $06a0                                     ; $4b89: $01 $a0 $06
	ld de, $c0f2                                     ; $4b8c: $11 $f2 $c0
	ld bc, $01a0                                     ; $4b8f: $01 $a0 $01
	ld de, $c0f6                                     ; $4b92: $11 $f6 $c0
	set 0, c                                         ; $4b95: $cb $c1

jr_07b_4b97:
	ld e, e                                          ; $4b97: $5b
	ret nz                                           ; $4b98: $c0

	rrca                                             ; $4b99: $0f
	db $e3                                           ; $4b9a: $e3
	ld bc, $c00b                                     ; $4b9b: $01 $0b $c0
	ld bc, $01a0                                     ; $4b9e: $01 $a0 $01
	ld de, $c1fe                                     ; $4ba1: $11 $fe $c1
	adc d                                            ; $4ba4: $8a
	pop de                                           ; $4ba5: $d1
	ret nz                                           ; $4ba6: $c0

	dec bc                                           ; $4ba7: $0b
	db $e3                                           ; $4ba8: $e3
	nop                                              ; $4ba9: $00
	db $10                                           ; $4baa: $10
	pop bc                                           ; $4bab: $c1
	ld d, l                                          ; $4bac: $55
	ret nc                                           ; $4bad: $d0

	pop bc                                           ; $4bae: $c1
	ld d, e                                          ; $4baf: $53
	ret nz                                           ; $4bb0: $c0

	nop                                              ; $4bb1: $00
	ld [de], a                                       ; $4bb2: $12
	dec b                                            ; $4bb3: $05
	ret nz                                           ; $4bb4: $c0

	ld bc, $01a0                                     ; $4bb5: $01 $a0 $01
	ld [de], a                                       ; $4bb8: $12
	ld a, [bc]                                       ; $4bb9: $0a
	pop bc                                           ; $4bba: $c1
	or d                                             ; $4bbb: $b2
	db $e3                                           ; $4bbc: $e3
	nop                                              ; $4bbd: $00
	ld [hl], b                                       ; $4bbe: $70
	ret nz                                           ; $4bbf: $c0

	ld bc, $06a0                                     ; $4bc0: $01 $a0 $06
	ld [de], a                                       ; $4bc3: $12
	dec c                                            ; $4bc4: $0d
	ret nz                                           ; $4bc5: $c0

	rrca                                             ; $4bc6: $0f
	db $e3                                           ; $4bc7: $e3
	ld bc, $c006                                     ; $4bc8: $01 $06 $c0
	ld bc, $01a0                                     ; $4bcb: $01 $a0 $01
	ld [de], a                                       ; $4bce: $12
	inc de                                           ; $4bcf: $13
	ret nz                                           ; $4bd0: $c0

	ld bc, $06a0                                     ; $4bd1: $01 $a0 $06
	ld [de], a                                       ; $4bd4: $12
	jr jr_07b_4b97                                   ; $4bd5: $18 $c0

	ld bc, $01a0                                     ; $4bd7: $01 $a0 $01
	ld [de], a                                       ; $4bda: $12
	inc hl                                           ; $4bdb: $23
	ret nz                                           ; $4bdc: $c0

	ld bc, $06a0                                     ; $4bdd: $01 $a0 $06
	ld [de], a                                       ; $4be0: $12
	cpl                                              ; $4be1: $2f
	ret nz                                           ; $4be2: $c0

	ld bc, $01a0                                     ; $4be3: $01 $a0 $01
	ld [de], a                                       ; $4be6: $12
	scf                                              ; $4be7: $37
	ret nz                                           ; $4be8: $c0

	ld bc, $01a0                                     ; $4be9: $01 $a0 $01
	ld [de], a                                       ; $4bec: $12
	dec sp                                           ; $4bed: $3b
	ret nz                                           ; $4bee: $c0

	set 0, b                                         ; $4bef: $cb $c0
	ld de, $00e3                                     ; $4bf1: $11 $e3 $00
	ld e, a                                          ; $4bf4: $5f
	pop hl                                           ; $4bf5: $e1
	ld [bc], a                                       ; $4bf6: $02
	ld [bc], a                                       ; $4bf7: $02
	ld h, b                                          ; $4bf8: $60
	ret nz                                           ; $4bf9: $c0

	ld bc, $06a0                                     ; $4bfa: $01 $a0 $06
	ld [de], a                                       ; $4bfd: $12
	ld b, e                                          ; $4bfe: $43
	ret nz                                           ; $4bff: $c0

	ld bc, $01a0                                     ; $4c00: $01 $a0 $01
	ld [de], a                                       ; $4c03: $12
	ld c, e                                          ; $4c04: $4b
	ret nz                                           ; $4c05: $c0

	ld bc, $06a0                                     ; $4c06: $01 $a0 $06
	ld [de], a                                       ; $4c09: $12
	ld c, [hl]                                       ; $4c0a: $4e
	ret nz                                           ; $4c0b: $c0

	ld hl, $dad1                                     ; $4c0c: $21 $d1 $da
	ret nz                                           ; $4c0f: $c0

	ld [hl+], a                                      ; $4c10: $22
	pop de                                           ; $4c11: $d1
	jp c, $26c0                                      ; $4c12: $da $c0 $26

	jp c, $c0da                                      ; $4c15: $da $da $c0

	set 0, c                                         ; $4c18: $cb $c1
	dec b                                            ; $4c1a: $05
	pop bc                                           ; $4c1b: $c1
	ld l, e                                          ; $4c1c: $6b
	db $d3                                           ; $4c1d: $d3
	jp c, $f4e4                                      ; $4c1e: $da $e4 $f4

	ld h, l                                          ; $4c21: $65


; --------------------------------------------------------------------

; from 7a:5fdd

; CONTINUE

	add hl, bc                                       ; $4c22: $09
	ld b, e                                          ; $4c23: $43
	ret nc                                           ; $4c24: $d0

	add a                                            ; $4c25: $87
	and b                                            ; $4c26: $a0
	ld d, h                                          ; $4c27: $54
	pop bc                                           ; $4c28: $c1
	and h                                            ; $4c29: $a4
	ret nc                                           ; $4c2a: $d0

	add e                                            ; $4c2b: $83
	add a                                            ; $4c2c: $87
	and b                                            ; $4c2d: $a0
	ld d, h                                          ; $4c2e: $54
	ld [bc], a                                       ; $4c2f: $02
	ldh [rIE], a                                     ; $4c30: $e0 $ff
	inc bc                                           ; $4c32: $03
	db $e4                                           ; $4c33: $e4
	db $d3                                           ; $4c34: $d3
	ld a, c                                          ; $4c35: $79
	ld [bc], a                                       ; $4c36: $02
	ldh [$fe], a                                     ; $4c37: $e0 $fe
	add hl, bc                                       ; $4c39: $09
	ret nz                                           ; $4c3a: $c0

	nop                                              ; $4c3b: $00
	ld [de], a                                       ; $4c3c: $12
	ld d, d                                          ; $4c3d: $52
	pop bc                                           ; $4c3e: $c1
	and l                                            ; $4c3f: $a5
	db $e4                                           ; $4c40: $e4
	db $d3                                           ; $4c41: $d3
	cp a                                             ; $4c42: $bf
	ld [bc], a                                       ; $4c43: $02
	ldh [$fd], a                                     ; $4c44: $e0 $fd
	add hl, bc                                       ; $4c46: $09
	ret nz                                           ; $4c47: $c0

	nop                                              ; $4c48: $00
	ld [de], a                                       ; $4c49: $12
	ld h, e                                          ; $4c4a: $63
	pop bc                                           ; $4c4b: $c1
	and l                                            ; $4c4c: $a5
	db $e4                                           ; $4c4d: $e4
	db $d3                                           ; $4c4e: $d3
	or d                                             ; $4c4f: $b2
	nop                                              ; $4c50: $00
	dec d                                            ; $4c51: $15
	ret nz                                           ; $4c52: $c0

	nop                                              ; $4c53: $00
	ld [de], a                                       ; $4c54: $12
	ld [hl], a                                       ; $4c55: $77
	ei                                               ; $4c56: $fb
	add b                                            ; $4c57: $80
	and b                                            ; $4c58: $a0
	nop                                              ; $4c59: $00
	dec b                                            ; $4c5a: $05
	pop bc                                           ; $4c5b: $c1
	or d                                             ; $4c5c: $b2
	db $e3                                           ; $4c5d: $e3
	nop                                              ; $4c5e: $00
	sub h                                            ; $4c5f: $94
	ret nz                                           ; $4c60: $c0

	nop                                              ; $4c61: $00
	ld [de], a                                       ; $4c62: $12
	ld a, b                                          ; $4c63: $78
	db $e4                                           ; $4c64: $e4
	nop                                              ; $4c65: $00
	ld [bc], a                                       ; $4c66: $02
	ld [$121d], sp                                   ; $4c67: $08 $1d $12
	ld a, d                                          ; $4c6a: $7a
	add hl, bc                                       ; $4c6b: $09
	ld [de], a                                       ; $4c6c: $12
	pop bc                                           ; $4c6d: $c1
	and [hl]                                         ; $4c6e: $a6
	add a                                            ; $4c6f: $87
	and b                                            ; $4c70: $a0
	ld d, h                                          ; $4c71: $54
	ret nz                                           ; $4c72: $c0

	dec bc                                           ; $4c73: $0b
	db $e3                                           ; $4c74: $e3
	nop                                              ; $4c75: $00
	add a                                            ; $4c76: $87
	ret nz                                           ; $4c77: $c0

	set 0, c                                         ; $4c78: $cb $c1
	dec sp                                           ; $4c7a: $3b
	push hl                                          ; $4c7b: $e5
	ld bc, $0000                                     ; $4c7c: $01 $00 $00
	ld [de], a                                       ; $4c7f: $12
	ld a, h                                          ; $4c80: $7c
	add hl, bc                                       ; $4c81: $09

jr_07b_4c82:
	inc bc                                           ; $4c82: $03
	db $e4                                           ; $4c83: $e4
	rst $38                                          ; $4c84: $ff
	sbc [hl]                                         ; $4c85: $9e


; --------------------------------------------------------------------

; from 7a:5ff2

; DELETE

; text 127e goes to 4cab
	ld [$1223], sp                                   ; $4c86: $08 $23 $12
	ld a, [hl]                                       ; $4c89: $7e
	add hl, bc                                       ; $4c8a: $09
	inc bc                                           ; $4c8b: $03
	db $e4                                           ; $4c8c: $e4
	nop                                              ; $4c8d: $00
	db $1e
	
; text 1285 execs below from $fb
	db $12
	add l                                            ; $4c90: $85
	add hl, bc                                       ; $4c91: $09
	jr @-$03                                         ; $4c92: $18 $fb

	add b                                            ; $4c94: $80
	and b                                            ; $4c95: $a0
	nop                                              ; $4c96: $00
	dec b                                            ; $4c97: $05
	pop bc                                           ; $4c98: $c1
	or d                                             ; $4c99: $b2
	db $e3                                           ; $4c9a: $e3
	nop                                              ; $4c9b: $00
	adc d                                            ; $4c9c: $8a
	ret nz                                           ; $4c9d: $c0

	nop                                              ; $4c9e: $00
	ld [de], a                                       ; $4c9f: $12
	adc c                                            ; $4ca0: $89

jr_07b_4ca1:
	ret nz                                           ; $4ca1: $c0

	nop                                              ; $4ca2: $00
	ld [de], a                                       ; $4ca3: $12
	sbc b                                            ; $4ca4: $98
	pop bc                                           ; $4ca5: $c1
	cp [hl]                                          ; $4ca6: $be
	pop de                                           ; $4ca7: $d1

; to 4cfe
	db $e4                                           ; $4ca8: $e4
	nop                                              ; $4ca9: $00
	ld d, l                                          ; $4caa: $55


; --------------------------------------------------------------------

; DELETE OPT 1 - FILE ERASE

	add hl, bc                                       ; $4cab: $09
	inc l                                            ; $4cac: $2c

; 1 b:hl, 1 task params
	ret nc                                           ; $4cad: $d0

	add a                                            ; $4cae: $87
	and b                                            ; $4caf: $a0
	ld d, h                                          ; $4cb0: $54
	pop bc                                           ; $4cb1: $c1
	and h                                            ; $4cb2: $a4
	db $d2
	
	
; exec 1 of 2 scripts, task param $87 pulls a0,54
	db $81, $87

	and b                                            ; $4cb6: $a0
	ld d, h                                          ; $4cb7: $54

; script 1/2 - to MainScript00
	ld [bc], a                                       ; $4cb8: $02
	ldh [rIE], a                                     ; $4cb9: $e0 $ff

	inc bc                                           ; $4cbb: $03
	db $e4                                           ; $4cbc: $e4
	db $d2, $f0
	
; script 2/2, start text 1277 (text byte $14)
	db $00

	jr jr_07b_4c82                                   ; $4cc0: $18 $c0

	nop                                              ; $4cc2: $00
	ld [de], a                                       ; $4cc3: $12
	ld [hl], a                                       ; $4cc4: $77

; task params, then script
	ei                                               ; $4cc5: $fb
	add b                                            ; $4cc6: $80
	and b                                            ; $4cc7: $a0
	nop                                              ; $4cc8: $00

	dec b                                            ; $4cc9: $05
	pop bc                                           ; $4cca: $c1
	or d                                             ; $4ccb: $b2
	db $e3                                           ; $4ccc: $e3
	nop                                              ; $4ccd: $00
	adc b                                            ; $4cce: $88

; text 12a7 - erase this file
	ret nz                                           ; $4ccf: $c0

	nop                                              ; $4cd0: $00
	ld [de], a                                       ; $4cd1: $12
	and a                                            ; $4cd2: $a7

	pop bc                                           ; $4cd3: $c1
	cp [hl]                                          ; $4cd4: $be
	pop de                                           ; $4cd5: $d1

	db $e4                                           ; $4cd6: $e4
	nop                                              ; $4cd7: $00
	ld [bc], a                                       ; $4cd8: $02


; --------------------------------------------------------------------

; text 127a - Yes
	ld [$1223], sp                                   ; $4cd9: $08 $23 $12
	ld a, d                                          ; $4cdc: $7a
	add hl, bc                                       ; $4cdd: $09
	jr jr_07b_4ca1                                   ; $4cde: $18 $c1

	xor c                                            ; $4ce0: $a9
	add a                                            ; $4ce1: $87
	and b                                            ; $4ce2: $a0
	ld d, h                                          ; $4ce3: $54

; 1 loop
	ld h, b                                          ; $4ce4: $60 <-- trouble

; each loop, get task params
	add b                                            ; $4ce5: $80
	and b                                            ; $4ce6: $a0
	nop                                              ; $4ce7: $00

;
	dec b                                            ; $4ce8: $05
	pop bc                                           ; $4ce9: $c1
	or d                                             ; $4cea: $b2
	db $e3                                           ; $4ceb: $e3
	nop                                              ; $4cec: $00
	adc c                                            ; $4ced: $89

;
	dec b                                            ; $4cee: $05
	ret nz                                           ; $4cef: $c0

	dec bc                                           ; $4cf0: $0b
	db $e3                                           ; $4cf1: $e3
	nop                                              ; $4cf2: $00
	inc d                                            ; $4cf3: $14

; to ; DELETE OPT 1 - FILE ERASE
	db $e4                                           ; $4cf4: $e4
	rst $38                                          ; $4cf5: $ff
	or [hl]                                          ; $4cf6: $b6

; text 127c - No
	ld [de], a                                       ; $4cf7: $12
	ld a, h                                          ; $4cf8: $7c

; to ; DELETE OPT 1 - FILE ERASE
	add hl, bc                                       ; $4cf9: $09
	inc bc                                           ; $4cfa: $03
	db $e4                                           ; $4cfb: $e4
	rst $38                                          ; $4cfc: $ff
	xor a                                            ; $4cfd: $af


; --------------------------------------------------------------------

; text 127a - Yes
	ld [$1215], sp                                   ; $4cfe: $08 $15 $12
	ld a, d                                          ; $4d01: $7a
	add hl, bc                                       ; $4d02: $09
	ld a, [bc]                                       ; $4d03: $0a
	pop bc                                           ; $4d04: $c1
	xor d                                            ; $4d05: $aa
	ret nz                                           ; $4d06: $c0

	dec bc                                           ; $4d07: $0b
	db $e3                                           ; $4d08: $e3
	nop                                              ; $4d09: $00
	inc d                                            ; $4d0a: $14

; to MainScript00
	db $e4                                           ; $4d0b: $e4

; text 127c - No
	jp nc, $12a1                                     ; $4d0c: $d2 $a1 $12

	ld a, h                                          ; $4d0f: $7c
	add hl, bc                                       ; $4d10: $09
	inc bc                                           ; $4d11: $03

; to MainScript00
	db $e4                                           ; $4d12: $e4
	db $d2, $9a
	
	
; --------------------------------------------------------------------


; from 7a:5feb

; COPY

	db $09

	ld b, h                                          ; $4d16: $44
	ei                                               ; $4d17: $fb
	add b                                            ; $4d18: $80
	and b                                            ; $4d19: $a0
	nop                                              ; $4d1a: $00
	dec b                                            ; $4d1b: $05
	pop bc                                           ; $4d1c: $c1
	or d                                             ; $4d1d: $b2
	db $e3                                           ; $4d1e: $e3
	nop                                              ; $4d1f: $00
	add b                                            ; $4d20: $80
	ret nc                                           ; $4d21: $d0

	add a                                            ; $4d22: $87
	and b                                            ; $4d23: $a0
	ld e, h                                          ; $4d24: $5c
	pop bc                                           ; $4d25: $c1
	and h                                            ; $4d26: $a4
	db $d3                                           ; $4d27: $d3
	add c                                            ; $4d28: $81
	add a                                            ; $4d29: $87
	and b                                            ; $4d2a: $a0
	ld e, h                                          ; $4d2b: $5c
	ld [bc], a                                       ; $4d2c: $02
	ldh [rIE], a                                     ; $4d2d: $e0 $ff
	inc bc                                           ; $4d2f: $03
	db $e4                                           ; $4d30: $e4
	jp nc, $007c                                     ; $4d31: $d2 $7c $00

	ld h, $c0                                        ; $4d34: $26 $c0
	nop                                              ; $4d36: $00
	ld [de], a                                       ; $4d37: $12
	ld [hl], a                                       ; $4d38: $77
	ei                                               ; $4d39: $fb
	add b                                            ; $4d3a: $80
	and b                                            ; $4d3b: $a0
	nop                                              ; $4d3c: $00
	dec b                                            ; $4d3d: $05
	pop bc                                           ; $4d3e: $c1
	or d                                             ; $4d3f: $b2
	db $e3                                           ; $4d40: $e3
	nop                                              ; $4d41: $00
	add d                                            ; $4d42: $82
	ret nc                                           ; $4d43: $d0

	add a                                            ; $4d44: $87
	and b                                            ; $4d45: $a0
	ld h, h                                          ; $4d46: $64
	pop bc                                           ; $4d47: $c1
	and h                                            ; $4d48: $a4
	call nc, $80fb                                   ; $4d49: $d4 $fb $80
	and b                                            ; $4d4c: $a0
	nop                                              ; $4d4d: $00
	dec b                                            ; $4d4e: $05
	pop bc                                           ; $4d4f: $c1
	or d                                             ; $4d50: $b2
	db $e3                                           ; $4d51: $e3
	nop                                              ; $4d52: $00
	ld a, a                                          ; $4d53: $7f
	ret nz                                           ; $4d54: $c0

	nop                                              ; $4d55: $00
	ld [de], a                                       ; $4d56: $12
	or c                                             ; $4d57: $b1
	db $e4                                           ; $4d58: $e4
	nop                                              ; $4d59: $00
	ld [bc], a                                       ; $4d5a: $02
	ld [$125d], sp                                   ; $4d5b: $08 $5d $12
	ld a, h                                          ; $4d5e: $7c
	add hl, bc                                       ; $4d5f: $09
	inc bc                                           ; $4d60: $03
	db $e4                                           ; $4d61: $e4
	jp nc, $124b                                     ; $4d62: $d2 $4b $12

	ld a, d                                          ; $4d65: $7a
	add hl, bc                                       ; $4d66: $09
	ld d, d                                          ; $4d67: $52
	add d                                            ; $4d68: $82
	pop bc                                           ; $4d69: $c1
	xor b                                            ; $4d6a: $a8
	add a                                            ; $4d6b: $87
	and b                                            ; $4d6c: $a0
	ld e, h                                          ; $4d6d: $5c
	add a                                            ; $4d6e: $87
	and b                                            ; $4d6f: $a0
	ld h, h                                          ; $4d70: $64
	ret nc                                           ; $4d71: $d0

	ld bc, $1bd0                                     ; $4d72: $01 $d0 $1b
	ret nz                                           ; $4d75: $c0

	nop                                              ; $4d76: $00
	ld [de], a                                       ; $4d77: $12
	ld [hl], a                                       ; $4d78: $77
	ld h, b                                          ; $4d79: $60
	add b                                            ; $4d7a: $80
	and b                                            ; $4d7b: $a0
	nop                                              ; $4d7c: $00
	dec b                                            ; $4d7d: $05
	pop bc                                           ; $4d7e: $c1
	or d                                             ; $4d7f: $b2
	db $e3                                           ; $4d80: $e3
	nop                                              ; $4d81: $00
	add c                                            ; $4d82: $81
	dec b                                            ; $4d83: $05
	ret nz                                           ; $4d84: $c0

	dec bc                                           ; $4d85: $0b
	db $e3                                           ; $4d86: $e3
	nop                                              ; $4d87: $00
	inc d                                            ; $4d88: $14
	ret nz                                           ; $4d89: $c0

	nop                                              ; $4d8a: $00
	ld [de], a                                       ; $4d8b: $12
	cp e                                             ; $4d8c: $bb
	db $e4                                           ; $4d8d: $e4
	jp nc, $011f                                     ; $4d8e: $d2 $1f $01

	pop de                                           ; $4d91: $d1
	rlca                                             ; $4d92: $07
	ret nz                                           ; $4d93: $c0

	nop                                              ; $4d94: $00
	ld [de], a                                       ; $4d95: $12
	pop bc                                           ; $4d96: $c1
	db $e4                                           ; $4d97: $e4
	jp nc, $0115                                     ; $4d98: $d2 $15 $01

	jp nc, $c01d                                     ; $4d9b: $d2 $1d $c0

	nop                                              ; $4d9e: $00
	ld [de], a                                       ; $4d9f: $12
	ld [hl], a                                       ; $4da0: $77
	ei                                               ; $4da1: $fb
	add b                                            ; $4da2: $80
	and b                                            ; $4da3: $a0
	nop                                              ; $4da4: $00
	dec b                                            ; $4da5: $05
	pop bc                                           ; $4da6: $c1
	or d                                             ; $4da7: $b2
	db $e3                                           ; $4da8: $e3
	nop                                              ; $4da9: $00
	add e                                            ; $4daa: $83
	ret nz                                           ; $4dab: $c0

	nop                                              ; $4dac: $00
	ld [de], a                                       ; $4dad: $12
	jp z, $00c0                                      ; $4dae: $ca $c0 $00

	ld [de], a                                       ; $4db1: $12
	db $dd                                           ; $4db2: $dd
	ret nz                                           ; $4db3: $c0

	nop                                              ; $4db4: $00
	ld [de], a                                       ; $4db5: $12
	or c                                             ; $4db6: $b1
	db $e4                                           ; $4db7: $e4
	nop                                              ; $4db8: $00
	ld [bc], a                                       ; $4db9: $02
	ld [$1239], sp                                   ; $4dba: $08 $39 $12
	ld a, h                                          ; $4dbd: $7c
	add hl, bc                                       ; $4dbe: $09
	inc bc                                           ; $4dbf: $03
	db $e4                                           ; $4dc0: $e4
	pop de                                           ; $4dc1: $d1
	db $ec                                           ; $4dc2: $ec
	ld [de], a                                       ; $4dc3: $12
	ld a, d                                          ; $4dc4: $7a
	add hl, bc                                       ; $4dc5: $09
	ld l, $81                                        ; $4dc6: $2e $81
	pop bc                                           ; $4dc8: $c1
	xor b                                            ; $4dc9: $a8
	add a                                            ; $4dca: $87
	and b                                            ; $4dcb: $a0
	ld e, h                                          ; $4dcc: $5c
	add a                                            ; $4dcd: $87
	and b                                            ; $4dce: $a0
	ld h, h                                          ; $4dcf: $64
	pop de                                           ; $4dd0: $d1
	ld bc, $1bd0                                     ; $4dd1: $01 $d0 $1b
	ret nz                                           ; $4dd4: $c0

	nop                                              ; $4dd5: $00
	ld [de], a                                       ; $4dd6: $12
	ld [hl], a                                       ; $4dd7: $77
	ld h, b                                          ; $4dd8: $60
	add b                                            ; $4dd9: $80
	and b                                            ; $4dda: $a0
	nop                                              ; $4ddb: $00
	dec b                                            ; $4ddc: $05
	pop bc                                           ; $4ddd: $c1
	or d                                             ; $4dde: $b2
	db $e3                                           ; $4ddf: $e3
	nop                                              ; $4de0: $00
	add c                                            ; $4de1: $81
	dec b                                            ; $4de2: $05
	ret nz                                           ; $4de3: $c0

	dec bc                                           ; $4de4: $0b
	db $e3                                           ; $4de5: $e3
	nop                                              ; $4de6: $00
	inc d                                            ; $4de7: $14
	ret nz                                           ; $4de8: $c0

	nop                                              ; $4de9: $00
	ld [de], a                                       ; $4dea: $12
	cp e                                             ; $4deb: $bb
	db $e4                                           ; $4dec: $e4
	pop de                                           ; $4ded: $d1
	ret nz                                           ; $4dee: $c0

	ld bc, $03d1                                     ; $4def: $01 $d1 $03
	db $e4                                           ; $4df2: $e4
	pop de                                           ; $4df3: $d1
	cp d                                             ; $4df4: $ba


; --------------------------------------------------------------------

; from 7a:5fc2

	add hl, bc                                       ; $4df5: $09
	sbc c                                            ; $4df6: $99
	ret nc                                           ; $4df7: $d0

	add a                                            ; $4df8: $87
	and b                                            ; $4df9: $a0
	ld l, h                                          ; $4dfa: $6c
	ret nz                                           ; $4dfb: $c0

	call c, $fdd9                                    ; $4dfc: $dc $d9 $fd
	add c                                            ; $4dff: $81
	add a                                            ; $4e00: $87
	and b                                            ; $4e01: $a0
	ld l, h                                          ; $4e02: $6c
	ld bc, $06d0                                     ; $4e03: $01 $d0 $06
	pop bc                                           ; $4e06: $c1
	or a                                             ; $4e07: $b7
	pop hl                                           ; $4e08: $e1
	ld [hl], c                                       ; $4e09: $71
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	ld bc, $0ad1                                     ; $4e0c: $01 $d1 $0a
	nop                                              ; $4e0f: $00
	add b                                            ; $4e10: $80
	ld bc, $c146                                     ; $4e11: $01 $46 $c1
	or a                                             ; $4e14: $b7
	pop hl                                           ; $4e15: $e1
	ld [hl], h                                       ; $4e16: $74
	nop                                              ; $4e17: $00
	nop                                              ; $4e18: $00
	ld [bc], a                                       ; $4e19: $02
	ldh [rAUD4ENV], a                                ; $4e1a: $e0 $21
	ld a, [bc]                                       ; $4e1c: $0a
	ld b, b                                          ; $4e1d: $40
	add b                                            ; $4e1e: $80
	ld bc, $c146                                     ; $4e1f: $01 $46 $c1
	or a                                             ; $4e22: $b7
	pop hl                                           ; $4e23: $e1
	ld [hl], h                                       ; $4e24: $74
	nop                                              ; $4e25: $00
	nop                                              ; $4e26: $00
	ld bc, $06d2                                     ; $4e27: $01 $d2 $06
	pop bc                                           ; $4e2a: $c1
	or a                                             ; $4e2b: $b7
	pop hl                                           ; $4e2c: $e1
	ld [hl], l                                       ; $4e2d: $75
	nop                                              ; $4e2e: $00
	nop                                              ; $4e2f: $00
	ld bc, $06d3                                     ; $4e30: $01 $d3 $06
	pop bc                                           ; $4e33: $c1
	or a                                             ; $4e34: $b7
	pop hl                                           ; $4e35: $e1
	halt                                             ; $4e36: $76
	nop                                              ; $4e37: $00
	nop                                              ; $4e38: $00
	ld bc, $06d7                                     ; $4e39: $01 $d7 $06
	pop bc                                           ; $4e3c: $c1
	or a                                             ; $4e3d: $b7
	pop hl                                           ; $4e3e: $e1
	ld [hl], a                                       ; $4e3f: $77
	nop                                              ; $4e40: $00
	nop                                              ; $4e41: $00
	ld bc, $06d8                                     ; $4e42: $01 $d8 $06
	pop bc                                           ; $4e45: $c1
	or a                                             ; $4e46: $b7
	pop hl                                           ; $4e47: $e1
	ld a, b                                          ; $4e48: $78
	nop                                              ; $4e49: $00
	nop                                              ; $4e4a: $00
	ld bc, $06da                                     ; $4e4b: $01 $da $06
	pop bc                                           ; $4e4e: $c1
	or a                                             ; $4e4f: $b7
	pop hl                                           ; $4e50: $e1
	ld a, c                                          ; $4e51: $79
	nop                                              ; $4e52: $00
	nop                                              ; $4e53: $00
	ld bc, $06dd                                     ; $4e54: $01 $dd $06
	pop bc                                           ; $4e57: $c1
	or a                                             ; $4e58: $b7
	pop hl                                           ; $4e59: $e1
	ld a, d                                          ; $4e5a: $7a
	nop                                              ; $4e5b: $00
	nop                                              ; $4e5c: $00
	ld bc, $06de                                     ; $4e5d: $01 $de $06
	pop bc                                           ; $4e60: $c1
	or a                                             ; $4e61: $b7
	pop hl                                           ; $4e62: $e1
	ld [hl], d                                       ; $4e63: $72
	nop                                              ; $4e64: $00
	nop                                              ; $4e65: $00
	ld bc, $06df                                     ; $4e66: $01 $df $06
	pop bc                                           ; $4e69: $c1
	or a                                             ; $4e6a: $b7
	pop hl                                           ; $4e6b: $e1
	ld [hl], e                                       ; $4e6c: $73
	nop                                              ; $4e6d: $00
	nop                                              ; $4e6e: $00
	ld [bc], a                                       ; $4e6f: $02
	ldh [rAUD1LEN], a                                ; $4e70: $e0 $11
	rlca                                             ; $4e72: $07
	pop bc                                           ; $4e73: $c1
	cp b                                             ; $4e74: $b8
	pop bc                                           ; $4e75: $c1
	sub e                                            ; $4e76: $93
	pop bc                                           ; $4e77: $c1
	dec d                                            ; $4e78: $15
	ret nc                                           ; $4e79: $d0

	ld [bc], a                                       ; $4e7a: $02
	ldh [rIE], a                                     ; $4e7b: $e0 $ff
	inc bc                                           ; $4e7d: $03
	pop bc                                           ; $4e7e: $c1
	dec d                                            ; $4e7f: $15
	ret nc                                           ; $4e80: $d0

	pop bc                                           ; $4e81: $c1
	inc a                                            ; $4e82: $3c
	ret nz                                           ; $4e83: $c0

	inc c                                            ; $4e84: $0c
	ldh [$78], a                                     ; $4e85: $e0 $78
	pop bc                                           ; $4e87: $c1
	sub d                                            ; $4e88: $92
	pop bc                                           ; $4e89: $c1
	sub h                                            ; $4e8a: $94
	pop bc                                           ; $4e8b: $c1
	sub l                                            ; $4e8c: $95
	pop bc                                           ; $4e8d: $c1
	dec d                                            ; $4e8e: $15
	ret nc                                           ; $4e8f: $d0

	ld [$121a], sp                                   ; $4e90: $08 $1a $12
	db $eb                                           ; $4e93: $eb
	add hl, bc                                       ; $4e94: $09
	inc bc                                           ; $4e95: $03
	db $e4                                           ; $4e96: $e4
	nop                                              ; $4e97: $00
	daa                                              ; $4e98: $27
	ld [de], a                                       ; $4e99: $12
	di                                               ; $4e9a: $f3
	add hl, bc                                       ; $4e9b: $09
	dec b                                            ; $4e9c: $05
	pop bc                                           ; $4e9d: $c1
	pop bc                                           ; $4e9e: $c1
	db $e4                                           ; $4e9f: $e4
	nop                                              ; $4ea0: $00
	dec l                                            ; $4ea1: $2d
	ld [de], a                                       ; $4ea2: $12
	ld a, [$0609]                                    ; $4ea3: $fa $09 $06
	pop bc                                           ; $4ea6: $c1
	cp [hl]                                          ; $4ea7: $be
	pop de                                           ; $4ea8: $d1
	db $e4                                           ; $4ea9: $e4
	nop                                              ; $4eaa: $00
	ld [bc], a                                       ; $4eab: $02
	ld [$1310], sp                                   ; $4eac: $08 $10 $13
	nop                                              ; $4eaf: $00
	add hl, bc                                       ; $4eb0: $09
	dec b                                            ; $4eb1: $05
	pop bc                                           ; $4eb2: $c1
	jp $00e4                                         ; $4eb3: $c3 $e4 $00


	ld [hl], $13                                     ; $4eb6: $36 $13
	ld [$0309], sp                                   ; $4eb8: $08 $09 $03
	db $e4                                           ; $4ebb: $e4
	nop                                              ; $4ebc: $00
	ld c, l                                          ; $4ebd: $4d
	add hl, bc                                       ; $4ebe: $09
	dec c                                            ; $4ebf: $0d
	pop bc                                           ; $4ec0: $c1
	cp a                                             ; $4ec1: $bf
	db $d3                                           ; $4ec2: $d3
	ret nz                                           ; $4ec3: $c0

	nop                                              ; $4ec4: $00
	inc de                                           ; $4ec5: $13
	dec c                                            ; $4ec6: $0d
	pop bc                                           ; $4ec7: $c1
	cp a                                             ; $4ec8: $bf
	ret nc                                           ; $4ec9: $d0

	db $e4                                           ; $4eca: $e4
	nop                                              ; $4ecb: $00
	ld a, $08                                        ; $4ecc: $3e $08
	inc e                                            ; $4ece: $1c
	inc de                                           ; $4ecf: $13
	jr z, jr_07b_4edb                                ; $4ed0: $28 $09

	ld a, [bc]                                       ; $4ed2: $0a
	pop bc                                           ; $4ed3: $c1
	ret nz                                           ; $4ed4: $c0

	ret nc                                           ; $4ed5: $d0

	ret nz                                           ; $4ed6: $c0

	nop                                              ; $4ed7: $00
	inc de                                           ; $4ed8: $13
	inc l                                            ; $4ed9: $2c
	db $e4                                           ; $4eda: $e4

jr_07b_4edb:
	nop                                              ; $4edb: $00
	ld l, $13                                        ; $4edc: $2e $13
	ld [hl], $09                                     ; $4ede: $36 $09
	ld a, [bc]                                       ; $4ee0: $0a
	pop bc                                           ; $4ee1: $c1
	ret nz                                           ; $4ee2: $c0

	pop de                                           ; $4ee3: $d1
	ret nz                                           ; $4ee4: $c0

	nop                                              ; $4ee5: $00
	inc de                                           ; $4ee6: $13
	dec sp                                           ; $4ee7: $3b
	db $e4                                           ; $4ee8: $e4
	nop                                              ; $4ee9: $00
	jr nz, @+$0a                                     ; $4eea: $20 $08

	inc e                                            ; $4eec: $1c
	inc de                                           ; $4eed: $13
	ld b, l                                          ; $4eee: $45
	add hl, bc                                       ; $4eef: $09
	ld a, [bc]                                       ; $4ef0: $0a
	pop bc                                           ; $4ef1: $c1
	jp nz, $c0d0                                     ; $4ef2: $c2 $d0 $c0

	nop                                              ; $4ef5: $00
	inc de                                           ; $4ef6: $13
	ld c, d                                          ; $4ef7: $4a
	db $e4                                           ; $4ef8: $e4
	nop                                              ; $4ef9: $00
	db $10                                           ; $4efa: $10
	inc de                                           ; $4efb: $13
	ld e, e                                          ; $4efc: $5b
	add hl, bc                                       ; $4efd: $09
	ld a, [bc]                                       ; $4efe: $0a
	pop bc                                           ; $4eff: $c1
	jp nz, $c0d1                                     ; $4f00: $c2 $d1 $c0

	nop                                              ; $4f03: $00
	inc de                                           ; $4f04: $13
	ld h, b                                          ; $4f05: $60
	db $e4                                           ; $4f06: $e4
	nop                                              ; $4f07: $00
	ld [bc], a                                       ; $4f08: $02
	add hl, bc                                       ; $4f09: $09
	rla                                              ; $4f0a: $17
	ld h, b                                          ; $4f0b: $60
	db $fc                                           ; $4f0c: $fc
	add b                                            ; $4f0d: $80
	nop                                              ; $4f0e: $00
	ld h, l                                          ; $4f0f: $65
	ret nc                                           ; $4f10: $d0

	rlca                                             ; $4f11: $07
	pop hl                                           ; $4f12: $e1
	ld [bc], a                                       ; $4f13: $02
	nop                                              ; $4f14: $00
	sub c                                            ; $4f15: $91
	db $e4                                           ; $4f16: $e4
	jp nc, $08ec                                     ; $4f17: $d2 $ec $08

	pop hl                                           ; $4f1a: $e1
	ld [bc], a                                       ; $4f1b: $02
	nop                                              ; $4f1c: $00
	nop                                              ; $4f1d: $00
	push hl                                          ; $4f1e: $e5
	ld bc, $cf00                                     ; $4f1f: $01 $00 $cf
	ld b, b                                          ; $4f22: $40
	inc bc                                           ; $4f23: $03





























































MainScript01::

; --------------------------------------------------------------------

	add hl, bc                                       ; $4f24: $09
	ret nz                                           ; $4f25: $c0

	call z, $02e1                                    ; $4f26: $cc $e1 $02
	nop                                              ; $4f29: $00
	nop                                              ; $4f2a: $00
	nop                                              ; $4f2b: $00
	add b                                            ; $4f2c: $80
	nop                                              ; $4f2d: $00
	jp z, $8061                                      ; $4f2e: $ca $61 $80

	ld bc, $0a47                                     ; $4f31: $01 $47 $0a
	ret nz                                           ; $4f34: $c0

	ld bc, $01a0                                     ; $4f35: $01 $a0 $01
	nop                                              ; $4f38: $00
	ld bc, $8040                                     ; $4f39: $01 $40 $80
	ld bc, $8047                                     ; $4f3c: $01 $47 $80
	ld bc, $0a48                                     ; $4f3f: $01 $48 $0a
	ret nz                                           ; $4f42: $c0

	ld bc, $01a0                                     ; $4f43: $01 $a0 $01
	nop                                              ; $4f46: $00
	jr jr_07b_4f89                                   ; $4f47: $18 $40

	add b                                            ; $4f49: $80
	ld bc, $0048                                     ; $4f4a: $01 $48 $00
	ei                                               ; $4f4d: $fb
	add b                                            ; $4f4e: $80
	nop                                              ; $4f4f: $00
	ld h, a                                          ; $4f50: $67
	inc b                                            ; $4f51: $04
	nop                                              ; $4f52: $00
	add b                                            ; $4f53: $80
	nop                                              ; $4f54: $00

jr_07b_4f55:
	ld l, b                                          ; $4f55: $68
	ei                                               ; $4f56: $fb
	db $fc                                           ; $4f57: $fc
	adc a                                            ; $4f58: $8f
	nop                                              ; $4f59: $00
	jr @-$1f                                         ; $4f5a: $18 $df

	dec b                                            ; $4f5c: $05

jr_07b_4f5d:
	ret nc                                           ; $4f5d: $d0

	adc a                                            ; $4f5e: $8f
	nop                                              ; $4f5f: $00
	jr @-$2d                                         ; $4f60: $18 $d1

	ld h, h                                          ; $4f62: $64
	cp $0c                                           ; $4f63: $fe $0c
	add b                                            ; $4f65: $80
	nop                                              ; $4f66: $00
	ld l, d                                          ; $4f67: $6a
	db $fc                                           ; $4f68: $fc
	ret nz                                           ; $4f69: $c0

	ld h, h                                          ; $4f6a: $64
	ldh [$61], a                                     ; $4f6b: $e0 $61
	db $fc                                           ; $4f6d: $fc
	ret nz                                           ; $4f6e: $c0

	ld h, l                                          ; $4f6f: $65

jr_07b_4f70:
	call nc, $c00b                                   ; $4f70: $d4 $0b $c0
	ld bc, $01a0                                     ; $4f73: $01 $a0 $01
	nop                                              ; $4f76: $00
	cpl                                              ; $4f77: $2f
	ret nc                                           ; $4f78: $d0

	adc a                                            ; $4f79: $8f
	nop                                              ; $4f7a: $00
	jr jr_07b_4f55                                   ; $4f7b: $18 $d8

	add b                                            ; $4f7d: $80
	ld bc, $1049                                     ; $4f7e: $01 $49 $10
	ret nz                                           ; $4f81: $c0

	nop                                              ; $4f82: $00
	nop                                              ; $4f83: $00

jr_07b_4f84:
	inc a                                            ; $4f84: $3c
	ret nc                                           ; $4f85: $d0

	adc a                                            ; $4f86: $8f
	nop                                              ; $4f87: $00
	ld c, b                                          ; $4f88: $48

jr_07b_4f89:
	adc a                                            ; $4f89: $8f
	nop                                              ; $4f8a: $00
	jr jr_07b_4f5d                                   ; $4f8b: $18 $d0

	adc a                                            ; $4f8d: $8f
	nop                                              ; $4f8e: $00
	jr jr_07b_4f70                                   ; $4f8f: $18 $df

	add b                                            ; $4f91: $80
	ld bc, $104a                                     ; $4f92: $01 $4a $10
	ret nz                                           ; $4f95: $c0

	nop                                              ; $4f96: $00
	nop                                              ; $4f97: $00
	ld b, e                                          ; $4f98: $43
	ret nc                                           ; $4f99: $d0

	adc a                                            ; $4f9a: $8f
	nop                                              ; $4f9b: $00
	ld c, b                                          ; $4f9c: $48
	adc a                                            ; $4f9d: $8f
	nop                                              ; $4f9e: $00
	jr @-$2e                                         ; $4f9f: $18 $d0

jr_07b_4fa1:
	adc a                                            ; $4fa1: $8f
	nop                                              ; $4fa2: $00
	jr jr_07b_4f84                                   ; $4fa3: $18 $df

	add b                                            ; $4fa5: $80
	ld bc, $2c4b                                     ; $4fa6: $01 $4b $2c
	ld h, b                                          ; $4fa9: $60
	cp $13                                           ; $4faa: $fe $13
	db $fc                                           ; $4fac: $fc

jr_07b_4fad:
	ret nz                                           ; $4fad: $c0

	add b                                            ; $4fae: $80
	db $d3                                           ; $4faf: $d3
	db $fc                                           ; $4fb0: $fc
	ret nz                                           ; $4fb1: $c0

	ld h, l                                          ; $4fb2: $65
	ret c                                            ; $4fb3: $d8

	db $fc                                           ; $4fb4: $fc

jr_07b_4fb5:
	adc e                                            ; $4fb5: $8b

jr_07b_4fb6:
	nop                                              ; $4fb6: $00

jr_07b_4fb7:
	nop                                              ; $4fb7: $00
	or b                                             ; $4fb8: $b0
	jr nz, jr_07b_4fb6                               ; $4fb9: $20 $fb

	add b                                            ; $4fbb: $80
	ld bc, $d84c                                     ; $4fbc: $01 $4c $d8
	inc b                                            ; $4fbf: $04
	ret nz                                           ; $4fc0: $c0

jr_07b_4fc1:
	nop                                              ; $4fc1: $00
	nop                                              ; $4fc2: $00
	ld c, b                                          ; $4fc3: $48
	inc b                                            ; $4fc4: $04
	ret nz                                           ; $4fc5: $c0

	nop                                              ; $4fc6: $00
	nop                                              ; $4fc7: $00
	ld d, l                                          ; $4fc8: $55
	ret nc                                           ; $4fc9: $d0

	adc a                                            ; $4fca: $8f
	nop                                              ; $4fcb: $00
	ld c, b                                          ; $4fcc: $48
	adc a                                            ; $4fcd: $8f
	nop                                              ; $4fce: $00
	jr jr_07b_4fa1                                   ; $4fcf: $18 $d0

	adc a                                            ; $4fd1: $8f
	nop                                              ; $4fd2: $00
	jr jr_07b_4fad                                   ; $4fd3: $18 $d8

	add b                                            ; $4fd5: $80
	ld bc, $104d                                     ; $4fd6: $01 $4d $10
	ret nz                                           ; $4fd9: $c0

jr_07b_4fda:
	nop                                              ; $4fda: $00
	nop                                              ; $4fdb: $00

jr_07b_4fdc:
	ld e, e                                          ; $4fdc: $5b
	ret nc                                           ; $4fdd: $d0

	adc a                                            ; $4fde: $8f
	nop                                              ; $4fdf: $00
	ld c, b                                          ; $4fe0: $48
	adc a                                            ; $4fe1: $8f
	nop                                              ; $4fe2: $00
	jr jr_07b_4fb5                                   ; $4fe3: $18 $d0

	adc a                                            ; $4fe5: $8f
	nop                                              ; $4fe6: $00
	jr jr_07b_4fc1                                   ; $4fe7: $18 $d8

	ld b, $c0                                        ; $4fe9: $06 $c0
	ld bc, $01a0                                     ; $4feb: $01 $a0 $01
	nop                                              ; $4fee: $00
	ld h, e                                          ; $4fef: $63
	db $e4                                           ; $4ff0: $e4
	nop                                              ; $4ff1: $00
	ld [bc], a                                       ; $4ff2: $02


; --------------------------------------------------------------------


	add hl, bc                                       ; $4ff3: $09
	pop bc                                           ; $4ff4: $c1
	ld a, d                                          ; $4ff5: $7a
	pop bc                                           ; $4ff6: $c1
	cp l                                             ; $4ff7: $bd
	ret nc                                           ; $4ff8: $d0

	ret nc                                           ; $4ff9: $d0

	add h                                            ; $4ffa: $84
	ld bc, $c04e                                     ; $4ffb: $01 $4e $c0
	inc bc                                           ; $4ffe: $03
	adc a                                            ; $4fff: $8f

jr_07b_5000:
	nop                                              ; $5000: $00
	jr jr_07b_5000                                   ; $5001: $18 $fd

	pop bc                                           ; $5003: $c1
	ld l, e                                          ; $5004: $6b
	add h                                            ; $5005: $84
	ld bc, $014e                      ; $5006: $01 $4e $01
	pop de                                           ; $5009: $d1
	jr nz, jr_07b_4fdc                               ; $500a: $20 $d0

	adc a                                            ; $500c: $8f
	nop                                              ; $500d: $00
	jr @-$7a                                         ; $500e: $18 $84

	ld bc, $c04e                                     ; $5010: $01 $4e $c0
	add sp, -$30                                     ; $5013: $e8 $d0
	adc e                                            ; $5015: $8b
	ld bc, $b053                                     ; $5016: $01 $53 $b0
	ld hl, $8bd0                                     ; $5019: $21 $d0 $8b
	and b                                            ; $501c: $a0
	nop                                              ; $501d: $00
	or b                                             ; $501e: $b0
	inc c                                            ; $501f: $0c

jr_07b_5020:
	ret nz                                           ; $5020: $c0

	jp hl                                            ; $5021: $e9


	pop de                                           ; $5022: $d1
	pop bc                                           ; $5023: $c1
	ld de, $0184                                     ; $5024: $11 $84 $01
	ld c, [hl]                                       ; $5027: $4e
	db $e4                                           ; $5028: $e4
	ld [bc], a                                       ; $5029: $02
	ld b, [hl]                                       ; $502a: $46
	ld bc, $20d2                                     ; $502b: $01 $d2 $20
	ret nc                                           ; $502e: $d0

	adc a                                            ; $502f: $8f
	nop                                              ; $5030: $00
	jr jr_07b_4fb7                                   ; $5031: $18 $84

	ld bc, $c04e                                     ; $5033: $01 $4e $c0
	add sp, -$30                                     ; $5036: $e8 $d0
	adc e                                            ; $5038: $8b
	ld bc, $b053                                     ; $5039: $01 $53 $b0
	ld [hl+], a                                      ; $503c: $22
	ret nc                                           ; $503d: $d0

	adc e                                            ; $503e: $8b
	and b                                            ; $503f: $a0
	nop                                              ; $5040: $00
	or b                                             ; $5041: $b0
	inc c                                            ; $5042: $0c

jr_07b_5043:
	ret nz                                           ; $5043: $c0

	jp hl                                            ; $5044: $e9


	jp nc, $11c1                                     ; $5045: $d2 $c1 $11

	add h                                            ; $5048: $84
	ld bc, $e44e                                     ; $5049: $01 $4e $e4
	ld [bc], a                                       ; $504c: $02
	inc hl                                           ; $504d: $23
	ld bc, $20d3                                     ; $504e: $01 $d3 $20
	ret nc                                           ; $5051: $d0

	adc a                                            ; $5052: $8f
	nop                                              ; $5053: $00
	jr jr_07b_4fda                                   ; $5054: $18 $84

	ld bc, $c04e                                     ; $5056: $01 $4e $c0
	add sp, -$30                                     ; $5059: $e8 $d0
	adc e                                            ; $505b: $8b
	ld bc, $b053                                     ; $505c: $01 $53 $b0
	inc hl                                           ; $505f: $23
	ret nc                                           ; $5060: $d0

	adc e                                            ; $5061: $8b
	and b                                            ; $5062: $a0
	nop                                              ; $5063: $00
	or b                                             ; $5064: $b0
	inc c                                            ; $5065: $0c

jr_07b_5066:
	ret nz                                           ; $5066: $c0

	jp hl                                            ; $5067: $e9


jr_07b_5068:
	db $d3                                           ; $5068: $d3
	pop bc                                           ; $5069: $c1
	ld de, $0184                                     ; $506a: $11 $84 $01
	ld c, [hl]                                       ; $506d: $4e
	db $e4                                           ; $506e: $e4
	ld [bc], a                                       ; $506f: $02
	nop                                              ; $5070: $00
	ld bc, $20d4                                     ; $5071: $01 $d4 $20
	ret nc                                           ; $5074: $d0

	adc a                                            ; $5075: $8f
	nop                                              ; $5076: $00
	jr @-$7a                                         ; $5077: $18 $84

	ld bc, $c04e                                     ; $5079: $01 $4e $c0
	add sp, -$30                                     ; $507c: $e8 $d0
	adc e                                            ; $507e: $8b
	ld bc, $b053                                     ; $507f: $01 $53 $b0
	inc h                                            ; $5082: $24
	ret nc                                           ; $5083: $d0

	adc e                                            ; $5084: $8b
	and b                                            ; $5085: $a0
	nop                                              ; $5086: $00

jr_07b_5087:
	or b                                             ; $5087: $b0
	dec c                                            ; $5088: $0d
	ret nz                                           ; $5089: $c0

	jp hl                                            ; $508a: $e9


	call nc, $11c1                                   ; $508b: $d4 $c1 $11
	add h                                            ; $508e: $84
	ld bc, $e44e                                     ; $508f: $01 $4e $e4
	ld bc, $01dd                                     ; $5092: $01 $dd $01
	push de                                          ; $5095: $d5
	jr nz, jr_07b_5068                               ; $5096: $20 $d0

	adc a                                            ; $5098: $8f
	nop                                              ; $5099: $00
	jr jr_07b_5020                                   ; $509a: $18 $84

	ld bc, $c04e                                     ; $509c: $01 $4e $c0
	add sp, -$30                                     ; $509f: $e8 $d0
	adc e                                            ; $50a1: $8b
	ld bc, $b053                                     ; $50a2: $01 $53 $b0
	dec h                                            ; $50a5: $25
	ret nc                                           ; $50a6: $d0

	adc e                                            ; $50a7: $8b

jr_07b_50a8:
	and b                                            ; $50a8: $a0
	nop                                              ; $50a9: $00
	or b                                             ; $50aa: $b0
	ld bc, $e9c0                                     ; $50ab: $01 $c0 $e9
	push de                                          ; $50ae: $d5
	pop bc                                           ; $50af: $c1
	ld de, $0184                                     ; $50b0: $11 $84 $01
	ld c, [hl]                                       ; $50b3: $4e
	db $e4                                           ; $50b4: $e4
	ld bc, $01ba                                     ; $50b5: $01 $ba $01
	sub $20                                          ; $50b8: $d6 $20
	ret nc                                           ; $50ba: $d0

	adc a                                            ; $50bb: $8f
	nop                                              ; $50bc: $00
	jr jr_07b_5043                                   ; $50bd: $18 $84

	ld bc, $c04e                                     ; $50bf: $01 $4e $c0
	add sp, -$30                                     ; $50c2: $e8 $d0
	adc e                                            ; $50c4: $8b
	ld bc, $b053                                     ; $50c5: $01 $53 $b0
	ld h, $d0                                        ; $50c8: $26 $d0
	adc e                                            ; $50ca: $8b
	and b                                            ; $50cb: $a0
	nop                                              ; $50cc: $00
	or b                                             ; $50cd: $b0
	ld bc, $e9c0                                     ; $50ce: $01 $c0 $e9
	sub $c1                                          ; $50d1: $d6 $c1

jr_07b_50d3:
	ld de, $0184                                     ; $50d3: $11 $84 $01
	ld c, [hl]                                       ; $50d6: $4e
	db $e4                                           ; $50d7: $e4
	ld bc, $0197                                     ; $50d8: $01 $97 $01
	rst SubAFromHL                                          ; $50db: $d7
	ld e, $d0                                        ; $50dc: $1e $d0

jr_07b_50de:
	adc a                                            ; $50de: $8f
	nop                                              ; $50df: $00
	jr jr_07b_5066                                   ; $50e0: $18 $84

	ld bc, $c04e                                     ; $50e2: $01 $4e $c0
	add sp, -$30                                     ; $50e5: $e8 $d0
	adc e                                            ; $50e7: $8b
	ld bc, $b053                                     ; $50e8: $01 $53 $b0

jr_07b_50eb:
	daa                                              ; $50eb: $27
	ret nc                                           ; $50ec: $d0

	adc e                                            ; $50ed: $8b
	and b                                            ; $50ee: $a0
	nop                                              ; $50ef: $00
	or b                                             ; $50f0: $b0
	ld bc, $e9c0                                     ; $50f1: $01 $c0 $e9
	rst SubAFromHL                                          ; $50f4: $d7
	pop bc                                           ; $50f5: $c1
	ld de, $e4d0                                     ; $50f6: $11 $d0 $e4
	ld bc, $0176                                     ; $50f9: $01 $76 $01
	ret c                                            ; $50fc: $d8

	ld e, $d0                                        ; $50fd: $1e $d0
	adc a                                            ; $50ff: $8f
	nop                                              ; $5100: $00
	jr jr_07b_5087                                   ; $5101: $18 $84

	ld bc, $c04e                                     ; $5103: $01 $4e $c0
	add sp, -$30                                     ; $5106: $e8 $d0
	adc e                                            ; $5108: $8b
	ld bc, $b053                                     ; $5109: $01 $53 $b0
	jr z, jr_07b_50de                                ; $510c: $28 $d0

	adc e                                            ; $510e: $8b
	and b                                            ; $510f: $a0
	nop                                              ; $5110: $00
	or b                                             ; $5111: $b0
	inc c                                            ; $5112: $0c
	ret nz                                           ; $5113: $c0

	jp hl                                            ; $5114: $e9


	ret c                                            ; $5115: $d8

	pop bc                                           ; $5116: $c1
	ld de, $e4d7                                     ; $5117: $11 $d7 $e4
	ld bc, $0155                                     ; $511a: $01 $55 $01
	call c, $d013                                    ; $511d: $dc $13 $d0
	adc a                                            ; $5120: $8f
	nop                                              ; $5121: $00
	jr jr_07b_50a8                                   ; $5122: $18 $84

	ld bc, $d04e                                     ; $5124: $01 $4e $d0
	add b                                            ; $5127: $80
	nop                                              ; $5128: $00
	ld h, l                                          ; $5129: $65
	pop de                                           ; $512a: $d1
	pop bc                                           ; $512b: $c1
	cp [hl]                                          ; $512c: $be
	jp nc, $00e5                                     ; $512d: $d2 $e5 $00

	ld l, $e3                                        ; $5130: $2e $e3
	ld bc, $12dd                                     ; $5132: $01 $dd $12
	ret nc                                           ; $5135: $d0

	adc a                                            ; $5136: $8f

jr_07b_5137:
	nop                                              ; $5137: $00
	jr @-$7a                                         ; $5138: $18 $84

	ld bc, $c14e                                     ; $513a: $01 $4e $c1
	ld d, e                                          ; $513d: $53
	ret nz                                           ; $513e: $c0

	ld hl, sp-$1f                                    ; $513f: $f8 $e1
	ld [bc], a                                       ; $5141: $02
	nop                                              ; $5142: $00
	nop                                              ; $5143: $00
	db $e4                                           ; $5144: $e4
	cp $ae                                           ; $5145: $fe $ae
	ld bc, $0ade                                     ; $5147: $01 $de $0a
	ret nc                                           ; $514a: $d0

	adc a                                            ; $514b: $8f
	nop                                              ; $514c: $00
	jr jr_07b_50d3                                   ; $514d: $18 $84

	ld bc, $e44e                                     ; $514f: $01 $4e $e4
	nop                                              ; $5152: $00
	ld e, $01                                        ; $5153: $1e $01
	rst SubAFromDE                                          ; $5155: $df
	inc c                                            ; $5156: $0c
	ret nc                                           ; $5157: $d0

	adc a                                            ; $5158: $8f
	nop                                              ; $5159: $00
	jr jr_07b_50eb                                   ; $515a: $18 $8f

	nop                                              ; $515c: $00
	ld c, b                                          ; $515d: $48
	ret nz                                           ; $515e: $c0

	add sp, -$1c                                     ; $515f: $e8 $e4
	ld bc, $020e                                     ; $5161: $01 $0e $02
	ldh [rAUD1SWEEP], a                              ; $5164: $e0 $10
	add hl, bc                                       ; $5166: $09
	pop bc                                           ; $5167: $c1
	or h                                             ; $5168: $b4
	pop hl                                           ; $5169: $e1
	ld [bc], a                                       ; $516a: $02
	nop                                              ; $516b: $00
	nop                                              ; $516c: $00
	db $e4                                           ; $516d: $e4
	cp $85                                           ; $516e: $fe $85


; --------------------------------------------------------------------


	add hl, bc                                       ; $5170: $09
	rra                                              ; $5171: $1f
	ret nc                                           ; $5172: $d0

	add a                                            ; $5173: $87
	and b                                            ; $5174: $a0
	inc c                                            ; $5175: $0c
	pop bc                                           ; $5176: $c1
	and e                                            ; $5177: $a3
	add d                                            ; $5178: $82
	add a                                            ; $5179: $87
	and b                                            ; $517a: $a0
	inc c                                            ; $517b: $0c
	ld bc, $03d0                                     ; $517c: $01 $d0 $03
	db $e4                                           ; $517f: $e4
	nop                                              ; $5180: $00
	ld de, $d101                                     ; $5181: $11 $01 $d1
	inc bc                                           ; $5184: $03
	db $e4                                           ; $5185: $e4
	nop                                              ; $5186: $00
	and b                                            ; $5187: $a0
	nop                                              ; $5188: $00
	rlca                                             ; $5189: $07
	pop hl                                           ; $518a: $e1
	ld [bc], a                                       ; $518b: $02
	nop                                              ; $518c: $00
	nop                                              ; $518d: $00
	db $e4                                           ; $518e: $e4
	cp $64                                           ; $518f: $fe $64
	add hl, bc                                       ; $5191: $09
	dec de                                           ; $5192: $1b
	ret nc                                           ; $5193: $d0

	add a                                            ; $5194: $87
	and b                                            ; $5195: $a0
	inc d                                            ; $5196: $14
	pop bc                                           ; $5197: $c1
	and h                                            ; $5198: $a4
	pop de                                           ; $5199: $d1
	add c                                            ; $519a: $81
	add a                                            ; $519b: $87
	and b                                            ; $519c: $a0
	inc d                                            ; $519d: $14
	ld [bc], a                                       ; $519e: $02
	ldh [rIE], a                                     ; $519f: $e0 $ff
	inc bc                                           ; $51a1: $03
	db $e4                                           ; $51a2: $e4
	rst $38                                          ; $51a3: $ff
	call $0700                                       ; $51a4: $cd $00 $07
	ret nz                                           ; $51a7: $c0

	nop                                              ; $51a8: $00
	nop                                              ; $51a9: $00
	ld l, d                                          ; $51aa: $6a
	db $e4                                           ; $51ab: $e4
	nop                                              ; $51ac: $00
	ld [bc], a                                       ; $51ad: $02
	ld [$0033], sp                                   ; $51ae: $08 $33 $00
	ld [hl], h                                       ; $51b1: $74
	add hl, bc                                       ; $51b2: $09
	jr z, jr_07b_5137                                ; $51b3: $28 $82

	pop bc                                           ; $51b5: $c1
	and a                                            ; $51b6: $a7
	add a                                            ; $51b7: $87
	and b                                            ; $51b8: $a0
	inc d                                            ; $51b9: $14
	ret nc                                           ; $51ba: $d0

	ld bc, $03d0                                     ; $51bb: $01 $d0 $03
	db $e4                                           ; $51be: $e4
	nop                                              ; $51bf: $00
	ld b, h                                          ; $51c0: $44
	ld bc, $03d1                                     ; $51c1: $01 $d1 $03
	db $e4                                           ; $51c4: $e4
	nop                                              ; $51c5: $00
	ld d, d                                          ; $51c6: $52
	ld bc, $12d2                                     ; $51c7: $01 $d2 $12
	ret nz                                           ; $51ca: $c0

	nop                                              ; $51cb: $00
	nop                                              ; $51cc: $00
	halt                                             ; $51cd: $76
	ret nz                                           ; $51ce: $c0

	nop                                              ; $51cf: $00
	nop                                              ; $51d0: $00
	add a                                            ; $51d1: $87
	ret nz                                           ; $51d2: $c0

	nop                                              ; $51d3: $00
	nop                                              ; $51d4: $00
	sub l                                            ; $51d5: $95
	pop bc                                           ; $51d6: $c1
	cp [hl]                                          ; $51d7: $be
	pop de                                           ; $51d8: $d1
	db $e4                                           ; $51d9: $e4
	nop                                              ; $51da: $00
	add hl, bc                                       ; $51db: $09
	nop                                              ; $51dc: $00
	and b                                            ; $51dd: $a0
	add hl, bc                                       ; $51de: $09
	inc bc                                           ; $51df: $03
	db $e4                                           ; $51e0: $e4
	rst $38                                          ; $51e1: $ff
	or b                                             ; $51e2: $b0
	ld [$001e], sp                                   ; $51e3: $08 $1e $00
	ld [hl], h                                       ; $51e6: $74
	add hl, bc                                       ; $51e7: $09
	inc de                                           ; $51e8: $13
	add c                                            ; $51e9: $81
	pop bc                                           ; $51ea: $c1
	and a                                            ; $51eb: $a7
	add a                                            ; $51ec: $87
	and b                                            ; $51ed: $a0
	inc d                                            ; $51ee: $14
	pop de                                           ; $51ef: $d1
	ld bc, $03d0                                     ; $51f0: $01 $d0 $03
	db $e4                                           ; $51f3: $e4
	nop                                              ; $51f4: $00
	rrca                                             ; $51f5: $0f
	ld bc, $03d1                                     ; $51f6: $01 $d1 $03
	db $e4                                           ; $51f9: $e4
	nop                                              ; $51fa: $00
	dec e                                            ; $51fb: $1d
	nop                                              ; $51fc: $00
	and b                                            ; $51fd: $a0
	add hl, bc                                       ; $51fe: $09
	inc bc                                           ; $51ff: $03
	db $e4                                           ; $5200: $e4
	rst $38                                          ; $5201: $ff
	sub b                                            ; $5202: $90
	add hl, bc                                       ; $5203: $09
	ld [de], a                                       ; $5204: $12
	ret nz                                           ; $5205: $c0

	dec bc                                           ; $5206: $0b
	db $e3                                           ; $5207: $e3
	nop                                              ; $5208: $00
	inc d                                            ; $5209: $14
	ret nz                                           ; $520a: $c0

	nop                                              ; $520b: $00
	nop                                              ; $520c: $00
	and d                                            ; $520d: $a2
	pop bc                                           ; $520e: $c1
	ld d, e                                          ; $520f: $53
	pop hl                                           ; $5210: $e1
	ld [bc], a                                       ; $5211: $02
	nop                                              ; $5212: $00
	nop                                              ; $5213: $00
	db $e4                                           ; $5214: $e4
	db $fd                                           ; $5215: $fd
	sbc $09                                          ; $5216: $de $09
	dec c                                            ; $5218: $0d
	ret nz                                           ; $5219: $c0

	nop                                              ; $521a: $00
	nop                                              ; $521b: $00
	and h                                            ; $521c: $a4
	pop bc                                           ; $521d: $c1
	ld d, e                                          ; $521e: $53
	pop hl                                           ; $521f: $e1
	ld [bc], a                                       ; $5220: $02
	nop                                              ; $5221: $00
	nop                                              ; $5222: $00
	db $e4                                           ; $5223: $e4
	db $fd                                           ; $5224: $fd
	rst GetHLinHL                                          ; $5225: $cf
	add hl, bc                                       ; $5226: $09
	dec de                                           ; $5227: $1b
	ret nc                                           ; $5228: $d0

	add a                                            ; $5229: $87
	and b                                            ; $522a: $a0
	inc d                                            ; $522b: $14
	pop bc                                           ; $522c: $c1
	and h                                            ; $522d: $a4
	push de                                          ; $522e: $d5
	add c                                            ; $522f: $81
	add a                                            ; $5230: $87
	and b                                            ; $5231: $a0
	inc d                                            ; $5232: $14
	ld [bc], a                                       ; $5233: $02
	ldh [rIE], a                                     ; $5234: $e0 $ff
	inc bc                                           ; $5236: $03
	db $e4                                           ; $5237: $e4
	rst $38                                          ; $5238: $ff
	jr c, jr_07b_523b                                ; $5239: $38 $00

jr_07b_523b:
	rlca                                             ; $523b: $07
	ret nz                                           ; $523c: $c0

	nop                                              ; $523d: $00
	nop                                              ; $523e: $00
	xor l                                            ; $523f: $ad
	db $e4                                           ; $5240: $e4
	nop                                              ; $5241: $00
	ld [bc], a                                       ; $5242: $02

jr_07b_5243:
	ld [$002a], sp                                   ; $5243: $08 $2a $00
	ld [hl], h                                       ; $5246: $74
	add hl, bc                                       ; $5247: $09
	rra                                              ; $5248: $1f
	ld h, b                                          ; $5249: $60
	pop bc                                           ; $524a: $c1
	and [hl]                                         ; $524b: $a6
	add a                                            ; $524c: $87
	and b                                            ; $524d: $a0
	inc d                                            ; $524e: $14
	add hl, bc                                       ; $524f: $09

jr_07b_5250:
	ret nz                                           ; $5250: $c0

	nop                                              ; $5251: $00
	nop                                              ; $5252: $00
	xor a                                            ; $5253: $af
	ret nz                                           ; $5254: $c0

	set 0, c                                         ; $5255: $cb $c1
	dec d                                            ; $5257: $15
	ret nc                                           ; $5258: $d0

	add hl, bc                                       ; $5259: $09
	ret nz                                           ; $525a: $c0

	dec bc                                           ; $525b: $0b
	db $e3                                           ; $525c: $e3

jr_07b_525d:
	nop                                              ; $525d: $00
	add a                                            ; $525e: $87
	ret nz                                           ; $525f: $c0

	nop                                              ; $5260: $00
	nop                                              ; $5261: $00
	cp h                                             ; $5262: $bc
	ret nz                                           ; $5263: $c0

	set 4, h                                         ; $5264: $cb $e4
	db $fc                                           ; $5266: $fc
	cp [hl]                                          ; $5267: $be
	nop                                              ; $5268: $00
	and b                                            ; $5269: $a0
	add hl, bc                                       ; $526a: $09
	inc bc                                           ; $526b: $03
	db $e4                                           ; $526c: $e4
	rst $38                                          ; $526d: $ff
	cp c                                             ; $526e: $b9
	add hl, bc                                       ; $526f: $09
	call nz, $fd05                                   ; $5270: $c4 $05 $fd
	ld a, $c1                                        ; $5273: $3e $c1
	adc c                                            ; $5275: $89
	ld bc, $04d7                                     ; $5276: $01 $d7 $04
	ret nz                                           ; $5279: $c0

	nop                                              ; $527a: $00
	nop                                              ; $527b: $00
	cp [hl]                                          ; $527c: $be
	ld bc, $04d8                                     ; $527d: $01 $d8 $04
	ret nz                                           ; $5280: $c0

	nop                                              ; $5281: $00
	nop                                              ; $5282: $00
	call nz, $d901                                   ; $5283: $c4 $01 $d9

jr_07b_5286:
	inc b                                            ; $5286: $04
	ret nz                                           ; $5287: $c0

	nop                                              ; $5288: $00
	nop                                              ; $5289: $00
	rlc c                                            ; $528a: $cb $01
	jp c, $d00a                                      ; $528c: $da $0a $d0

	adc e                                            ; $528f: $8b
	nop                                              ; $5290: $00
	jr z, jr_07b_5243                                ; $5291: $28 $b0

	ld [bc], a                                       ; $5293: $02
	ret nz                                           ; $5294: $c0

	nop                                              ; $5295: $00
	nop                                              ; $5296: $00
	pop de                                           ; $5297: $d1
	ld bc, $0adb                                     ; $5298: $01 $db $0a
	ret nc                                           ; $529b: $d0

	adc e                                            ; $529c: $8b
	nop                                              ; $529d: $00
	jr z, jr_07b_5250                                ; $529e: $28 $b0

	ld [bc], a                                       ; $52a0: $02
	ret nz                                           ; $52a1: $c0

	nop                                              ; $52a2: $00
	nop                                              ; $52a3: $00
	ret c                                            ; $52a4: $d8

	ld bc, $0adc                                     ; $52a5: $01 $dc $0a
	ret nc                                           ; $52a8: $d0

	adc e                                            ; $52a9: $8b
	nop                                              ; $52aa: $00
	jr z, jr_07b_525d                                ; $52ab: $28 $b0

	ld [bc], a                                       ; $52ad: $02
	ret nz                                           ; $52ae: $c0

	nop                                              ; $52af: $00
	nop                                              ; $52b0: $00
	sbc $fb                                          ; $52b1: $de $fb
	cp $08                                           ; $52b3: $fe $08
	pop af                                           ; $52b5: $f1
	add b                                            ; $52b6: $80
	ld bc, $fb5f                                     ; $52b7: $01 $5f $fb
	ret nz                                           ; $52ba: $c0

	inc sp                                           ; $52bb: $33
	call c, $0004                                    ; $52bc: $dc $04 $00
	add b                                            ; $52bf: $80

Jump_07b_52c0:
	ld bc, $e05f                                     ; $52c0: $01 $5f $e0
	inc bc                                           ; $52c3: $03
	or h                                             ; $52c4: $b4
	ei                                               ; $52c5: $fb
	add b                                            ; $52c6: $80
	ld bc, $1560                                     ; $52c7: $01 $60 $15
	ei                                               ; $52ca: $fb
	cp $0a                                           ; $52cb: $fe $0a
	db $fc                                           ; $52cd: $fc
	ret nz                                           ; $52ce: $c0

	ld h, l                                          ; $52cf: $65
	pop de                                           ; $52d0: $d1
	db $fd                                           ; $52d1: $fd
	adc e                                            ; $52d2: $8b
	nop                                              ; $52d3: $00
	jr z, jr_07b_5286                                ; $52d4: $28 $b0

	dec bc                                           ; $52d6: $0b
	rlca                                             ; $52d7: $07
	ld b, b                                          ; $52d8: $40
	add b                                            ; $52d9: $80
	ld bc, $e060                                     ; $52da: $01 $60 $e0
	dec bc                                           ; $52dd: $0b
	reti                                             ; $52de: $d9


	ei                                               ; $52df: $fb
	cp $0c                                           ; $52e0: $fe $0c
	db $fc                                           ; $52e2: $fc
	ret nz                                           ; $52e3: $c0

	ld h, h                                          ; $52e4: $64
	ret nc                                           ; $52e5: $d0

	db $fc                                           ; $52e6: $fc
	ret nz                                           ; $52e7: $c0

	ld h, l                                          ; $52e8: $65
	pop de                                           ; $52e9: $d1
	db $fc                                           ; $52ea: $fc
	ret nz                                           ; $52eb: $c0

	ld h, [hl]                                       ; $52ec: $66
	ret c                                            ; $52ed: $d8

	ld b, d                                          ; $52ee: $42
	ld h, e                                          ; $52ef: $63
	cp $09                                           ; $52f0: $fe $09
	db $fc                                           ; $52f2: $fc
	adc e                                            ; $52f3: $8b
	nop                                              ; $52f4: $00
	nop                                              ; $52f5: $00
	or b                                             ; $52f6: $b0
	rrca                                             ; $52f7: $0f
	add b                                            ; $52f8: $80
	ld bc, $0461                                     ; $52f9: $01 $61 $04
	pop hl                                           ; $52fc: $e1
	ld c, a                                          ; $52fd: $4f
	nop                                              ; $52fe: $00
	nop                                              ; $52ff: $00
	cp $09                                           ; $5300: $fe $09
	db $fc                                           ; $5302: $fc
	adc e                                            ; $5303: $8b
	nop                                              ; $5304: $00
	nop                                              ; $5305: $00
	or b                                             ; $5306: $b0
	ld c, $80                                        ; $5307: $0e $80
	ld bc, $0462                                     ; $5309: $01 $62 $04
	pop hl                                           ; $530c: $e1
	ld c, a                                          ; $530d: $4f
	ld bc, $fe8f                                     ; $530e: $01 $8f $fe
	add hl, bc                                       ; $5311: $09
	db $fc                                           ; $5312: $fc
	adc e                                            ; $5313: $8b
	nop                                              ; $5314: $00
	nop                                              ; $5315: $00
	or b                                             ; $5316: $b0
	db $10                                           ; $5317: $10
	add b                                            ; $5318: $80
	ld bc, $0463                                     ; $5319: $01 $63 $04
	pop hl                                           ; $531c: $e1
	ld c, a                                          ; $531d: $4f
	inc bc                                           ; $531e: $03
	ld e, $fe                                        ; $531f: $1e $fe
	add hl, bc                                       ; $5321: $09
	db $fc                                           ; $5322: $fc
	adc e                                            ; $5323: $8b
	nop                                              ; $5324: $00
	nop                                              ; $5325: $00
	or b                                             ; $5326: $b0
	ld de, $0180                                     ; $5327: $11 $80 $01
	ld h, h                                          ; $532a: $64
	inc b                                            ; $532b: $04
	pop hl                                           ; $532c: $e1

jr_07b_532d:
	ld c, a                                          ; $532d: $4f
	inc b                                            ; $532e: $04
	xor l                                            ; $532f: $ad
	nop                                              ; $5330: $00
	ldh [rTIMA], a                                   ; $5331: $e0 $05
	ld b, b                                          ; $5333: $40
	ei                                               ; $5334: $fb
	cp $0c                                           ; $5335: $fe $0c
	db $fc                                           ; $5337: $fc
	ret nz                                           ; $5338: $c0

	ld h, h                                          ; $5339: $64
	ret nc                                           ; $533a: $d0

	db $fc                                           ; $533b: $fc
	ret nz                                           ; $533c: $c0

	ld h, l                                          ; $533d: $65
	pop de                                           ; $533e: $d1
	db $fc                                           ; $533f: $fc
	ret nz                                           ; $5340: $c0

	ld h, [hl]                                       ; $5341: $66
	call nc, $801a                                   ; $5342: $d4 $1a $80
	adc e                                            ; $5345: $8b
	nop                                              ; $5346: $00
	nop                                              ; $5347: $00
	ld [$0fb0], sp                                   ; $5348: $08 $b0 $0f
	or b                                             ; $534b: $b0
	ld c, $b0                                        ; $534c: $0e $b0
	db $10                                           ; $534e: $10
	or b                                             ; $534f: $b0
	ld de, $fb0c                                     ; $5350: $11 $0c $fb
	ei                                               ; $5353: $fb
	ret nz                                           ; $5354: $c0

	ld b, a                                          ; $5355: $47
	pop hl                                           ; $5356: $e1
	ld bc, $047c                                     ; $5357: $01 $7c $04
	push hl                                          ; $535a: $e5
	ld d, c                                          ; $535b: $51
	ld [bc], a                                       ; $535c: $02
	and e                                            ; $535d: $a3
	ret nc                                           ; $535e: $d0

	add h                                            ; $535f: $84
	and b                                            ; $5360: $a0
	inc e                                            ; $5361: $1c
	ret nz                                           ; $5362: $c0

	rst SubAFromBC                                          ; $5363: $e7
	ldh [$03], a                                     ; $5364: $e0 $03
	ld e, d                                          ; $5366: $5a
	ldh [$03], a                                     ; $5367: $e0 $03
	ret c                                            ; $5369: $d8

	ldh [rDIV], a                                    ; $536a: $e0 $04
	ld l, e                                          ; $536c: $6b
	ei                                               ; $536d: $fb

jr_07b_536e:
	cp $16                                           ; $536e: $fe $16
	pop af                                           ; $5370: $f1
	add b                                            ; $5371: $80
	ld bc, $f165                                     ; $5372: $01 $65 $f1
	add b                                            ; $5375: $80
	and b                                            ; $5376: $a0
	ld hl, $8bfd                                     ; $5377: $21 $fd $8b
	nop                                              ; $537a: $00
	jr z, jr_07b_532d                                ; $537b: $28 $b0

	dec bc                                           ; $537d: $0b
	add b                                            ; $537e: $80
	ld bc, $fc2f                                     ; $537f: $01 $2f $fc
	add h                                            ; $5382: $84
	and b                                            ; $5383: $a0
	inc e                                            ; $5384: $1c
	ret nc                                           ; $5385: $d0

	inc bc                                           ; $5386: $03
	ldh [rTIMA], a                                   ; $5387: $e0 $05
	cp d                                             ; $5389: $ba
	ld b, c                                          ; $538a: $41
	add b                                            ; $538b: $80
	nop                                              ; $538c: $00
	jp z, $a080                                      ; $538d: $ca $80 $a0

	ld hl, $c2fd                                     ; $5390: $21 $fd $c2
	and h                                            ; $5393: $a4
	add h                                            ; $5394: $84
	and b                                            ; $5395: $a0
	inc e                                            ; $5396: $1c
	ld bc, $11d0                                     ; $5397: $01 $d0 $11
	ei                                               ; $539a: $fb
	cp $0a                                           ; $539b: $fe $0a
	pop af                                           ; $539d: $f1
	add b                                            ; $539e: $80
	nop                                              ; $539f: $00
	ld b, a                                          ; $53a0: $47
	db $fc                                           ; $53a1: $fc
	adc e                                            ; $53a2: $8b
	ld bc, $b066                                     ; $53a3: $01 $66 $b0
	ld bc, $e003                                     ; $53a6: $01 $03 $e0
	dec bc                                           ; $53a9: $0b
	ld [hl], l                                       ; $53aa: $75
	ld bc, $1dd1                                     ; $53ab: $01 $d1 $1d
	ei                                               ; $53ae: $fb
	cp $0e                                           ; $53af: $fe $0e
	pop af                                           ; $53b1: $f1
	add b                                            ; $53b2: $80
	nop                                              ; $53b3: $00
	ld b, a                                          ; $53b4: $47
	pop af                                           ; $53b5: $f1
	add b                                            ; $53b6: $80
	and b                                            ; $53b7: $a0
	ld [hl+], a                                      ; $53b8: $22
	db $fc                                           ; $53b9: $fc
	adc e                                            ; $53ba: $8b
	nop                                              ; $53bb: $00
	jr z, jr_07b_536e                                ; $53bc: $28 $b0

	ld [bc], a                                       ; $53be: $02
	dec bc                                           ; $53bf: $0b
	add b                                            ; $53c0: $80
	adc e                                            ; $53c1: $8b
	ld bc, $0266                                     ; $53c2: $01 $66 $02
	or b                                             ; $53c5: $b0
	ld bc, $e003                                     ; $53c6: $01 $03 $e0
	dec bc                                           ; $53c9: $0b
	jr nz, @+$03                                     ; $53ca: $20 $01

	jp nc, Jump_07b_65c1                             ; $53cc: $d2 $c1 $65

	ei                                               ; $53cf: $fb
	cp $08                                           ; $53d0: $fe $08
	db $fc                                           ; $53d2: $fc
	ret nz                                           ; $53d3: $c0

	ld h, l                                          ; $53d4: $65
	push de                                          ; $53d5: $d5
	db $fc                                           ; $53d6: $fc
	ret nz                                           ; $53d7: $c0

	ld h, [hl]                                       ; $53d8: $66
	sub $c1                                          ; $53d9: $d6 $c1
	ld d, h                                          ; $53db: $54
	ld h, b                                          ; $53dc: $60
	db $fd                                           ; $53dd: $fd
	ret nz                                           ; $53de: $c0

	ld h, h                                          ; $53df: $64
	ldh [$63], a                                     ; $53e0: $e0 $63
	ld d, e                                          ; $53e2: $53
	ld h, d                                          ; $53e3: $62
	cp $0e                                           ; $53e4: $fe $0e
	db $fc                                           ; $53e6: $fc
	add e                                            ; $53e7: $83
	ld bc, $8372                                     ; $53e8: $01 $72 $83
	ld bc, $fc76                                     ; $53eb: $01 $76 $fc
	add e                                            ; $53ee: $83
	ld bc, $8372                                     ; $53ef: $01 $72 $83
	ld bc, $0d7a                                     ; $53f2: $01 $7a $0d
	ei                                               ; $53f5: $fb
	db $fd                                           ; $53f6: $fd
	add e                                            ; $53f7: $83
	ld bc, $df72                                     ; $53f8: $01 $72 $df
	ld b, $c0                                        ; $53fb: $06 $c0
	ld [hl+], a                                      ; $53fd: $22
	call nc, $0183                                   ; $53fe: $d4 $83 $01
	ld [hl], d                                       ; $5401: $72
	rst $38                                          ; $5402: $ff
	ld c, $fc                                        ; $5403: $0e $fc
	add e                                            ; $5405: $83
	ld bc, $8372                                     ; $5406: $01 $72 $83
	ld bc, $fc76                                     ; $5409: $01 $76 $fc
	add e                                            ; $540c: $83
	ld bc, $8372                                     ; $540d: $01 $72 $83
	ld bc, $0d7a                                     ; $5410: $01 $7a $0d
	ei                                               ; $5413: $fb
	db $fd                                           ; $5414: $fd
	add e                                            ; $5415: $83
	ld bc, $df72                                     ; $5416: $01 $72 $df
	ld b, $c0                                        ; $5419: $06 $c0
	ld [hl+], a                                      ; $541b: $22
	jp nc, $0183                                     ; $541c: $d2 $83 $01

	ld [hl], d                                       ; $541f: $72
	db $fc                                           ; $5420: $fc
	add e                                            ; $5421: $83
	ld bc, $8376                                     ; $5422: $01 $76 $83
	ld bc, $0d7a                                     ; $5425: $01 $7a $0d
	ei                                               ; $5428: $fb
	db $fd                                           ; $5429: $fd
	add e                                            ; $542a: $83
	ld bc, $df76                                     ; $542b: $01 $76 $df
	ld b, $c0                                        ; $542e: $06 $c0
	ld [hl+], a                                      ; $5430: $22
	jp nc, $0183                                     ; $5431: $d2 $83 $01

	halt                                             ; $5434: $76
	nop                                              ; $5435: $00
	ret nz                                           ; $5436: $c0

	db $e4                                           ; $5437: $e4
	db $fc                                           ; $5438: $fc
	ret nz                                           ; $5439: $c0

	pop hl                                           ; $543a: $e1
	cp $15                                           ; $543b: $fe $15
	db $fc                                           ; $543d: $fc
	add e                                            ; $543e: $83
	ld bc, $8372                                     ; $543f: $01 $72 $83
	ld bc, $fc76                                     ; $5442: $01 $76 $fc
	add e                                            ; $5445: $83
	ld bc, $8372                                     ; $5446: $01 $72 $83
	ld bc, $fc7a                                     ; $5449: $01 $7a $fc
	add e                                            ; $544c: $83
	ld bc, $8372                                     ; $544d: $01 $72 $83
	ld bc, $137e                                     ; $5450: $01 $7e $13
	ei                                               ; $5453: $fb
	db $fd                                           ; $5454: $fd
	add e                                            ; $5455: $83
	ld bc, $df72                                     ; $5456: $01 $72 $df
	inc c                                            ; $5459: $0c
	ret nz                                           ; $545a: $c0

	ld [hl+], a                                      ; $545b: $22
	sub $83                                          ; $545c: $d6 $83
	ld bc, $c072                                     ; $545e: $01 $72 $c0
	ld hl, $83d1                                     ; $5461: $21 $d1 $83
	ld bc, $ff72                                     ; $5464: $01 $72 $ff

jr_07b_5467:
	jr nc, jr_07b_5467                               ; $5467: $30 $fe

	ld c, $fc                                        ; $5469: $0e $fc
	add e                                            ; $546b: $83
	ld bc, $8372                                     ; $546c: $01 $72 $83
	ld bc, $fc76                                     ; $546f: $01 $76 $fc
	add e                                            ; $5472: $83
	ld bc, $8372                                     ; $5473: $01 $72 $83
	ld bc, $fe7a                                     ; $5476: $01 $7a $fe
	ld c, $fc                                        ; $5479: $0e $fc
	add e                                            ; $547b: $83
	ld bc, $8372                                     ; $547c: $01 $72 $83
	ld bc, $fc7a                                     ; $547f: $01 $7a $fc
	add e                                            ; $5482: $83
	ld bc, $8372                                     ; $5483: $01 $72 $83
	ld bc, $fe7e                                     ; $5486: $01 $7e $fe
	ld c, $fc                                        ; $5489: $0e $fc
	add e                                            ; $548b: $83
	ld bc, $8372                                     ; $548c: $01 $72 $83
	ld bc, $fc76                                     ; $548f: $01 $76 $fc
	add e                                            ; $5492: $83
	ld bc, $8372                                     ; $5493: $01 $72 $83
	ld bc, $0d7e                                     ; $5496: $01 $7e $0d
	ei                                               ; $5499: $fb
	db $fd                                           ; $549a: $fd
	add e                                            ; $549b: $83
	ld bc, $df72                                     ; $549c: $01 $72 $df
	ld b, $c0                                        ; $549f: $06 $c0
	ld [hl+], a                                      ; $54a1: $22
	call nc, $0183                                   ; $54a2: $d4 $83 $01
	ld [hl], d                                       ; $54a5: $72
	cp $0e                                           ; $54a6: $fe $0e
	db $fc                                           ; $54a8: $fc
	add e                                            ; $54a9: $83
	ld bc, $8376                                     ; $54aa: $01 $76 $83
	ld bc, $fc7a                                     ; $54ad: $01 $7a $fc
	add e                                            ; $54b0: $83
	ld bc, $8376                                     ; $54b1: $01 $76 $83
	ld bc, $0d7e                                     ; $54b4: $01 $7e $0d
	ei                                               ; $54b7: $fb
	db $fd                                           ; $54b8: $fd
	add e                                            ; $54b9: $83
	ld bc, $df76                                     ; $54ba: $01 $76 $df
	ld b, $c0                                        ; $54bd: $06 $c0
	ld [hl+], a                                      ; $54bf: $22
	call nc, $0183                                   ; $54c0: $d4 $83 $01
	halt                                             ; $54c3: $76
	rst $38                                          ; $54c4: $ff
	dec d                                            ; $54c5: $15
	db $fc                                           ; $54c6: $fc
	add e                                            ; $54c7: $83
	ld bc, $8372                                     ; $54c8: $01 $72 $83
	ld bc, $fc76                                     ; $54cb: $01 $76 $fc
	add e                                            ; $54ce: $83
	ld bc, $8372                                     ; $54cf: $01 $72 $83
	ld bc, $fc7a                                     ; $54d2: $01 $7a $fc
	add e                                            ; $54d5: $83
	ld bc, $8372                                     ; $54d6: $01 $72 $83
	ld bc, $0d7e                                     ; $54d9: $01 $7e $0d
	ei                                               ; $54dc: $fb
	db $fd                                           ; $54dd: $fd
	add e                                            ; $54de: $83
	ld bc, $df72                                     ; $54df: $01 $72 $df
	ld b, $c0                                        ; $54e2: $06 $c0
	ld [hl+], a                                      ; $54e4: $22
	jp nc, $0183                                     ; $54e5: $d2 $83 $01

	ld [hl], d                                       ; $54e8: $72
	rst $38                                          ; $54e9: $ff
	ld c, $fc                                        ; $54ea: $0e $fc
	add e                                            ; $54ec: $83
	ld bc, $8376                                     ; $54ed: $01 $76 $83
	ld bc, $fc7a                                     ; $54f0: $01 $7a $fc
	add e                                            ; $54f3: $83
	ld bc, $8376                                     ; $54f4: $01 $76 $83
	ld bc, $0d7e                                     ; $54f7: $01 $7e $0d
	ei                                               ; $54fa: $fb
	db $fd                                           ; $54fb: $fd
	add e                                            ; $54fc: $83
	ld bc, $df76                                     ; $54fd: $01 $76 $df
	ld b, $c0                                        ; $5500: $06 $c0
	ld [hl+], a                                      ; $5502: $22
	jp nc, $0183                                     ; $5503: $d2 $83 $01

	halt                                             ; $5506: $76
	db $fc                                           ; $5507: $fc
	add e                                            ; $5508: $83
	ld bc, $837a                                     ; $5509: $01 $7a $83
	ld bc, $0d7e                                     ; $550c: $01 $7e $0d
	ei                                               ; $550f: $fb
	db $fd                                           ; $5510: $fd
	add e                                            ; $5511: $83
	ld bc, $df7a                                     ; $5512: $01 $7a $df
	ld b, $c0                                        ; $5515: $06 $c0
	ld [hl+], a                                      ; $5517: $22
	jp nc, $0183                                     ; $5518: $d2 $83 $01

	ld a, d                                          ; $551b: $7a
	ret nc                                           ; $551c: $d0

	add e                                            ; $551d: $83
	ld bc, $df72                                     ; $551e: $01 $72 $df
	ret nc                                           ; $5521: $d0

	add e                                            ; $5522: $83
	ld bc, $df76                                     ; $5523: $01 $76 $df
	ret nc                                           ; $5526: $d0

	add e                                            ; $5527: $83
	ld bc, $df7a                                     ; $5528: $01 $7a $df
	ret nc                                           ; $552b: $d0

	add e                                            ; $552c: $83
	ld bc, $df7e                                     ; $552d: $01 $7e $df
	push hl                                          ; $5530: $e5
	nop                                              ; $5531: $00
	nop                                              ; $5532: $00
	sbc c                                            ; $5533: $99
	ld bc, $0cd3                                     ; $5534: $01 $d3 $0c
	ret nc                                           ; $5537: $d0

	adc e                                            ; $5538: $8b
	nop                                              ; $5539: $00
	inc c                                            ; $553a: $0c
	or b                                             ; $553b: $b0
	ld bc, $8bd0                                     ; $553c: $01 $d0 $8b
	nop                                              ; $553f: $00
	jr z, @-$4e                                      ; $5540: $28 $b0

	dec bc                                           ; $5542: $0b
	ld bc, $18d4                                     ; $5543: $01 $d4 $18
	ret nc                                           ; $5546: $d0

	adc e                                            ; $5547: $8b
	nop                                              ; $5548: $00
	inc c                                            ; $5549: $0c
	or b                                             ; $554a: $b0
	ld bc, $8bd0                                     ; $554b: $01 $d0 $8b
	and b                                            ; $554e: $a0
	nop                                              ; $554f: $00
	or b                                             ; $5550: $b0
	ld bc, $09c0                                     ; $5551: $01 $c0 $09
	db $e3                                           ; $5554: $e3
	nop                                              ; $5555: $00
	ld b, a                                          ; $5556: $47
	nop                                              ; $5557: $00
	add b                                            ; $5558: $80
	and b                                            ; $5559: $a0
	ld hl, $0ce0                                     ; $555a: $21 $e0 $0c
	cp d                                             ; $555d: $ba
	ld bc, $0ed5                                     ; $555e: $01 $d5 $0e
	ret nc                                           ; $5561: $d0

	adc e                                            ; $5562: $8b

jr_07b_5563:
	and b                                            ; $5563: $a0
	nop                                              ; $5564: $00
	or b                                             ; $5565: $b0
	ld bc, $8040                                     ; $5566: $01 $40 $80
	ld bc, $e582                                     ; $5569: $01 $82 $e5
	ld d, a                                          ; $556c: $57
	nop                                              ; $556d: $00
	nop                                              ; $556e: $00
	ld bc, $08d6                                     ; $556f: $01 $d6 $08
	ld b, b                                          ; $5572: $40
	add b                                            ; $5573: $80
	ld bc, $e582                                     ; $5574: $01 $82 $e5
	ld e, h                                          ; $5577: $5c
	nop                                              ; $5578: $00
	nop                                              ; $5579: $00
	ld bc, $04d7                                     ; $557a: $01 $d7 $04
	push hl                                          ; $557d: $e5
	ld d, h                                          ; $557e: $54
	nop                                              ; $557f: $00
	nop                                              ; $5580: $00
	ld bc, $04d8                                     ; $5581: $01 $d8 $04
	push hl                                          ; $5584: $e5
	ld h, l                                          ; $5585: $65
	nop                                              ; $5586: $00
	nop                                              ; $5587: $00
	ld bc, $04d9                                     ; $5588: $01 $d9 $04
	push hl                                          ; $558b: $e5
	ld c, e                                          ; $558c: $4b
	nop                                              ; $558d: $00
	nop                                              ; $558e: $00
	ld bc, $04da                                     ; $558f: $01 $da $04
	push hl                                          ; $5592: $e5
	ld c, h                                          ; $5593: $4c
	nop                                              ; $5594: $00
	nop                                              ; $5595: $00
	ld bc, $04db                                     ; $5596: $01 $db $04
	push hl                                          ; $5599: $e5
	ld d, d                                          ; $559a: $52
	nop                                              ; $559b: $00
	nop                                              ; $559c: $00
	ld bc, $04dc                                     ; $559d: $01 $dc $04
	push hl                                          ; $55a0: $e5
	ld sp, $0000                                     ; $55a1: $31 $00 $00
	ld bc, $04dd                                     ; $55a4: $01 $dd $04
	push hl                                          ; $55a7: $e5
	inc c                                            ; $55a8: $0c
	nop                                              ; $55a9: $00
	nop                                              ; $55aa: $00
	ld bc, $0ade                                     ; $55ab: $01 $de $0a
	ret nc                                           ; $55ae: $d0

	adc e                                            ; $55af: $8b

jr_07b_55b0:
	nop                                              ; $55b0: $00
	jr z, jr_07b_5563                                ; $55b1: $28 $b0

	ld [bc], a                                       ; $55b3: $02
	push hl                                          ; $55b4: $e5
	ld d, c                                          ; $55b5: $51
	nop                                              ; $55b6: $00
	nop                                              ; $55b7: $00
	ld bc, $04df                                     ; $55b8: $01 $df $04
	push hl                                          ; $55bb: $e5
	ld d, c                                          ; $55bc: $51
	inc bc                                           ; $55bd: $03
	ld c, e                                          ; $55be: $4b
	ld [bc], a                                       ; $55bf: $02

Jump_07b_55c0:
	ldh [rAUD1SWEEP], a                              ; $55c0: $e0 $10
	dec bc                                           ; $55c2: $0b
	nop                                              ; $55c3: $00
	add b                                            ; $55c4: $80
	ld bc, $0083                                     ; $55c5: $01 $83 $00
	add b                                            ; $55c8: $80
	nop                                              ; $55c9: $00
	call c, $12e0                                    ; $55ca: $dc $e0 $12
	adc c                                            ; $55cd: $89
	ld [bc], a                                       ; $55ce: $02
	ldh [rAUD1LEN], a                                ; $55cf: $e0 $11
	dec h                                            ; $55d1: $25
	ret nc                                           ; $55d2: $d0

	add e                                            ; $55d3: $83
	ld bc, $c084                                     ; $55d4: $01 $84 $c0
	ld b, e                                          ; $55d7: $43
	add c                                            ; $55d8: $81
	add e                                            ; $55d9: $83
	ld bc, $0b84                                     ; $55da: $01 $84 $0b
	pop de                                           ; $55dd: $d1
	jp nc, $d4d3                                     ; $55de: $d2 $d3 $d4

	push de                                          ; $55e1: $d5
	sub $d7                                          ; $55e2: $d6 $d7
	ret c                                            ; $55e4: $d8

	reti                                             ; $55e5: $d9


	call c, $08dd                                    ; $55e6: $dc $dd $08
	nop                                              ; $55e9: $00
	add b                                            ; $55ea: $80
	and b                                            ; $55eb: $a0
	ld [hl+], a                                      ; $55ec: $22
	push hl                                          ; $55ed: $e5
	ld d, l                                          ; $55ee: $55
	nop                                              ; $55ef: $00
	nop                                              ; $55f0: $00
	nop                                              ; $55f1: $00
	inc b                                            ; $55f2: $04
	nop                                              ; $55f3: $00
	add b                                            ; $55f4: $80
	ld bc, $0288                                     ; $55f5: $01 $88 $02
	ldh [rAUD1ENV], a                                ; $55f8: $e0 $12
	ld a, [bc]                                       ; $55fa: $0a
	ret nc                                           ; $55fb: $d0

	adc e                                            ; $55fc: $8b
	nop                                              ; $55fd: $00
	jr z, jr_07b_55b0                                ; $55fe: $28 $b0

	dec bc                                           ; $5600: $0b
	push hl                                          ; $5601: $e5
	rrca                                             ; $5602: $0f
	nop                                              ; $5603: $00
	nop                                              ; $5604: $00
	ld [bc], a                                       ; $5605: $02
	ldh [rAUD1LOW], a                                ; $5606: $e0 $13
	daa                                              ; $5608: $27
	ei                                               ; $5609: $fb
	ei                                               ; $560a: $fb
	adc a                                            ; $560b: $8f
	and b                                            ; $560c: $a0
	inc hl                                           ; $560d: $23
	pop de                                           ; $560e: $d1
	add hl, bc                                       ; $560f: $09
	ret nc                                           ; $5610: $d0

	adc a                                            ; $5611: $8f
	and b                                            ; $5612: $a0
	inc hl                                           ; $5613: $23
	or $8f                                           ; $5614: $f6 $8f
	and b                                            ; $5616: $a0
	inc hl                                           ; $5617: $23
	pop de                                           ; $5618: $d1
	ei                                               ; $5619: $fb
	db $fc                                           ; $561a: $fc
	adc a                                            ; $561b: $8f
	and b                                            ; $561c: $a0
	inc hl                                           ; $561d: $23
	ret nc                                           ; $561e: $d0

	dec bc                                           ; $561f: $0b
	add b                                            ; $5620: $80
	ret nz                                           ; $5621: $c0

	dec de                                           ; $5622: $1b
	ret nc                                           ; $5623: $d0

	ld [bc], a                                       ; $5624: $02
	ret nc                                           ; $5625: $d0

	pop de                                           ; $5626: $d1
	inc bc                                           ; $5627: $03
	ldh [$08], a                                     ; $5628: $e0 $08
	ld d, a                                          ; $562a: $57
	pop bc                                           ; $562b: $c1
	ld c, d                                          ; $562c: $4a
	add h                                            ; $562d: $84
	ld bc, $024e                                     ; $562e: $01 $4e $02
	ldh [rAUD1HIGH], a                               ; $5631: $e0 $14
	inc b                                            ; $5633: $04
	push hl                                          ; $5634: $e5
	dec b                                            ; $5635: $05
	nop                                              ; $5636: $00
	nop                                              ; $5637: $00

jr_07b_5638:
	add c                                            ; $5638: $81
	adc e                                            ; $5639: $8b
	ld bc, $0266                                     ; $563a: $01 $66 $02
	or b                                             ; $563d: $b0
	ld bc, $0000                                     ; $563e: $01 $00 $00
	inc bc                                           ; $5641: $03
	db $e4                                           ; $5642: $e4
	ld c, $41                                        ; $5643: $0e $41
	ei                                               ; $5645: $fb
	cp $08                                           ; $5646: $fe $08
	pop af                                           ; $5648: $f1
	add b                                            ; $5649: $80
	and b                                            ; $564a: $a0
	ld hl, $c0fc                                     ; $564b: $21 $fc $c0
	ld h, a                                          ; $564e: $67
	sub $1d                                          ; $564f: $d6 $1d
	add d                                            ; $5651: $82
	pop bc                                           ; $5652: $c1
	inc bc                                           ; $5653: $03
	ld bc, $03d0                                     ; $5654: $01 $d0 $03
	ldh [rIF], a                                     ; $5657: $e0 $0f
	di                                               ; $5659: $f3
	ld bc, $0fd7                                     ; $565a: $01 $d7 $0f
	or b                                             ; $565d: $b0
	rst SubAFromDE                                          ; $565e: $df
	nop                                              ; $565f: $00
	rst $38                                          ; $5660: $ff
	ld a, [bc]                                       ; $5661: $0a
	ei                                               ; $5662: $fb
	db $fd                                           ; $5663: $fd
	ret nz                                           ; $5664: $c0

	ld h, h                                          ; $5665: $64
	ldh [$63], a                                     ; $5666: $e0 $63
	inc bc                                           ; $5668: $03
	ldh [rAUD1SWEEP], a                              ; $5669: $e0 $10
	or $00                                           ; $566b: $f6 $00
	nop                                              ; $566d: $00
	ret nc                                           ; $566e: $d0

	adc e                                            ; $566f: $8b
	and b                                            ; $5670: $a0
	inc sp                                           ; $5671: $33
	or b                                             ; $5672: $b0
	add hl, hl                                       ; $5673: $29
	db $e4                                           ; $5674: $e4
	ld [de], a                                       ; $5675: $12
	ld a, d                                          ; $5676: $7a
	ld b, a                                          ; $5677: $47
	ei                                               ; $5678: $fb
	cp $0e                                           ; $5679: $fe $0e
	db $fc                                           ; $567b: $fc
	ret nz                                           ; $567c: $c0

	ld h, a                                          ; $567d: $67
	pop de                                           ; $567e: $d1
	db $fc                                           ; $567f: $fc
	ret nz                                           ; $5680: $c0

	ld l, b                                          ; $5681: $68
	ret nc                                           ; $5682: $d0

	db $fd                                           ; $5683: $fd
	adc e                                            ; $5684: $8b
	nop                                              ; $5685: $00
	jr z, jr_07b_5638                                ; $5686: $28 $b0

	dec bc                                           ; $5688: $0b
	dec [hl]                                         ; $5689: $35
	ei                                               ; $568a: $fb
	add b                                            ; $568b: $80
	ld bc, $0789                                     ; $568c: $01 $89 $07
	ldh [$03], a                                     ; $568f: $e0 $03
	ld h, h                                          ; $5691: $64
	ld b, b                                          ; $5692: $40
	add b                                            ; $5693: $80
	ld bc, $fb89                                     ; $5694: $01 $89 $fb
	add b                                            ; $5697: $80
	ld bc, $0c8a                                     ; $5698: $01 $8a $0c
	ld b, b                                          ; $569b: $40
	add b                                            ; $569c: $80
	ld bc, $fb8a                                     ; $569d: $01 $8a $fb
	add b                                            ; $56a0: $80
	nop                                              ; $56a1: $00
	ld a, l                                          ; $56a2: $7d
	inc bc                                           ; $56a3: $03
	ldh [$03], a                                     ; $56a4: $e0 $03
	xor d                                            ; $56a6: $aa
	ei                                               ; $56a7: $fb
	add b                                            ; $56a8: $80
	nop                                              ; $56a9: $00
	ld l, h                                          ; $56aa: $6c
	rlca                                             ; $56ab: $07
	ld b, b                                          ; $56ac: $40
	add b                                            ; $56ad: $80
	nop                                              ; $56ae: $00
	ld l, h                                          ; $56af: $6c
	ldh [rSC], a                                     ; $56b0: $e0 $02
	ldh [$fb], a                                     ; $56b2: $e0 $fb
	add b                                            ; $56b4: $80
	ld bc, $078b                                     ; $56b5: $01 $8b $07
	ld b, b                                          ; $56b8: $40
	add b                                            ; $56b9: $80
	ld bc, $e08b                                     ; $56ba: $01 $8b $e0
	inc bc                                           ; $56bd: $03
	rst AddAOntoHL                                          ; $56be: $ef
	add b                                            ; $56bf: $80
	ei                                               ; $56c0: $fb
	cp $09                                           ; $56c1: $fe $09
	db $fc                                           ; $56c3: $fc
	ret nz                                           ; $56c4: $c0

	ld h, h                                          ; $56c5: $64
	ldh [$61], a                                     ; $56c6: $e0 $61
	db $fc                                           ; $56c8: $fc
	ret nz                                           ; $56c9: $c0

	ld h, l                                          ; $56ca: $65
	ret c                                            ; $56cb: $d8

	ld [hl], e                                       ; $56cc: $73
	ei                                               ; $56cd: $fb
	cp $0f                                           ; $56ce: $fe $0f
	ei                                               ; $56d0: $fb
	pop bc                                           ; $56d1: $c1
	ld l, b                                          ; $56d2: $68
	call nc, $c0fa                                   ; $56d3: $d4 $fa $c0
	dec de                                           ; $56d6: $1b
	ret nc                                           ; $56d7: $d0

	call nc, $c0fa                                   ; $56d8: $d4 $fa $c0
	rla                                              ; $56db: $17
	ret nc                                           ; $56dc: $d0

	ldh [$3c], a                                     ; $56dd: $e0 $3c
	ld h, b                                          ; $56df: $60
	ld h, h                                          ; $56e0: $64
	db $fc                                           ; $56e1: $fc
	ret nz                                           ; $56e2: $c0

	ld h, [hl]                                       ; $56e3: $66
	ldh [rAUD2HIGH], a                               ; $56e4: $e0 $19
	add hl, bc                                       ; $56e6: $09
	or b                                             ; $56e7: $b0
	ld [hl-], a                                      ; $56e8: $32
	inc b                                            ; $56e9: $04
	push hl                                          ; $56ea: $e5
	ld d, [hl]                                       ; $56eb: $56
	nop                                              ; $56ec: $00
	nop                                              ; $56ed: $00
	rst $38                                          ; $56ee: $ff
	nop                                              ; $56ef: $00
	cp $09                                           ; $56f0: $fe $09
	pop af                                           ; $56f2: $f1
	add b                                            ; $56f3: $80
	ld bc, $fc8c                                     ; $56f4: $01 $8c $fc
	ret nz                                           ; $56f7: $c0

	ld h, [hl]                                       ; $56f8: $66
	ldh [rAUD3ENA], a                                ; $56f9: $e0 $1a
	add hl, bc                                       ; $56fb: $09
	or b                                             ; $56fc: $b0
	ld [hl-], a                                      ; $56fd: $32
	inc b                                            ; $56fe: $04
	push hl                                          ; $56ff: $e5
	ld d, [hl]                                       ; $5700: $56
	nop                                              ; $5701: $00
	nop                                              ; $5702: $00
	rst $38                                          ; $5703: $ff
	nop                                              ; $5704: $00
	cp $09                                           ; $5705: $fe $09
	pop af                                           ; $5707: $f1
	add b                                            ; $5708: $80
	ld bc, $fc8c                                     ; $5709: $01 $8c $fc
	ret nz                                           ; $570c: $c0

	ld h, [hl]                                       ; $570d: $66
	ldh [rAUD3LEVEL], a                              ; $570e: $e0 $1c
	add hl, bc                                       ; $5710: $09
	or b                                             ; $5711: $b0
	ld [hl-], a                                      ; $5712: $32
	inc b                                            ; $5713: $04
	push hl                                          ; $5714: $e5
	ld d, [hl]                                       ; $5715: $56
	nop                                              ; $5716: $00
	nop                                              ; $5717: $00
	rst $38                                          ; $5718: $ff
	nop                                              ; $5719: $00
	cp $09                                           ; $571a: $fe $09
	pop af                                           ; $571c: $f1
	add b                                            ; $571d: $80
	ld bc, $fc8c                                     ; $571e: $01 $8c $fc
	ret nz                                           ; $5721: $c0

	ld h, [hl]                                       ; $5722: $66
	ldh [rAUD3LOW], a                                ; $5723: $e0 $1d
	add hl, bc                                       ; $5725: $09
	or b                                             ; $5726: $b0
	ld [hl-], a                                      ; $5727: $32
	inc b                                            ; $5728: $04
	push hl                                          ; $5729: $e5
	ld d, [hl]                                       ; $572a: $56
	nop                                              ; $572b: $00
	nop                                              ; $572c: $00
	rst $38                                          ; $572d: $ff
	nop                                              ; $572e: $00
	cp $09                                           ; $572f: $fe $09
	pop af                                           ; $5731: $f1
	add b                                            ; $5732: $80
	ld bc, $fc8c                                     ; $5733: $01 $8c $fc
	ret nz                                           ; $5736: $c0

	ld h, [hl]                                       ; $5737: $66
	ldh [rAUD3HIGH], a                               ; $5738: $e0 $1e
	inc b                                            ; $573a: $04
	push hl                                          ; $573b: $e5
	ld d, [hl]                                       ; $573c: $56
	nop                                              ; $573d: $00
	nop                                              ; $573e: $00
	nop                                              ; $573f: $00
	sub l                                            ; $5740: $95
	ei                                               ; $5741: $fb
	cp $09                                           ; $5742: $fe $09
	db $fc                                           ; $5744: $fc
	ret nz                                           ; $5745: $c0

	ld h, h                                          ; $5746: $64
	ldh [$61], a                                     ; $5747: $e0 $61
	db $fc                                           ; $5749: $fc
	ret nz                                           ; $574a: $c0

	ld h, l                                          ; $574b: $65
	jp c, $fb88                                      ; $574c: $da $88 $fb

	cp $0f                                           ; $574f: $fe $0f
	ei                                               ; $5751: $fb
	pop bc                                           ; $5752: $c1
	ld l, b                                          ; $5753: $68
	sub $fa                                          ; $5754: $d6 $fa
	ret nz                                           ; $5756: $c0

	dec de                                           ; $5757: $1b
	ret nc                                           ; $5758: $d0

	call nc, $c0fa                                   ; $5759: $d4 $fa $c0
	rla                                              ; $575c: $17
	ret nc                                           ; $575d: $d0

	ldh [$3c], a                                     ; $575e: $e0 $3c
	ld [hl], l                                       ; $5760: $75
	db $fc                                           ; $5761: $fc
	ld [hl], e                                       ; $5762: $73
	db $fc                                           ; $5763: $fc
	ret nz                                           ; $5764: $c0

	ld h, [hl]                                       ; $5765: $66
	ldh [rAUD1HIGH], a                               ; $5766: $e0 $14
	add hl, bc                                       ; $5768: $09
	or b                                             ; $5769: $b0
	jr z, @+$06                                      ; $576a: $28 $04

	push hl                                          ; $576c: $e5
	ld d, [hl]                                       ; $576d: $56
	ld bc, $ffbc                                     ; $576e: $01 $bc $ff
	nop                                              ; $5771: $00
	cp $09                                           ; $5772: $fe $09
	pop af                                           ; $5774: $f1
	add b                                            ; $5775: $80
	ld bc, $fc8d                                     ; $5776: $01 $8d $fc
	ret nz                                           ; $5779: $c0

	ld h, [hl]                                       ; $577a: $66
	ldh [$15], a                                     ; $577b: $e0 $15
	add hl, bc                                       ; $577d: $09
	or b                                             ; $577e: $b0
	jr z, @+$06                                      ; $577f: $28 $04

	push hl                                          ; $5781: $e5
	ld d, [hl]                                       ; $5782: $56
	ld bc, $ffbc                                     ; $5783: $01 $bc $ff
	nop                                              ; $5786: $00
	cp $09                                           ; $5787: $fe $09
	pop af                                           ; $5789: $f1
	add b                                            ; $578a: $80
	ld bc, $fc8d                                     ; $578b: $01 $8d $fc
	ret nz                                           ; $578e: $c0

	ld h, [hl]                                       ; $578f: $66
	ldh [rAUD2LEN], a                                ; $5790: $e0 $16
	add hl, bc                                       ; $5792: $09
	or b                                             ; $5793: $b0
	jr z, @+$06                                      ; $5794: $28 $04

	push hl                                          ; $5796: $e5
	ld d, [hl]                                       ; $5797: $56
	ld bc, $ffbc                                     ; $5798: $01 $bc $ff
	nop                                              ; $579b: $00
	cp $09                                           ; $579c: $fe $09
	pop af                                           ; $579e: $f1
	add b                                            ; $579f: $80
	ld bc, $fc8d                                     ; $57a0: $01 $8d $fc
	ret nz                                           ; $57a3: $c0

	ld h, [hl]                                       ; $57a4: $66
	ldh [rAUD2ENV], a                                ; $57a5: $e0 $17
	add hl, bc                                       ; $57a7: $09
	or b                                             ; $57a8: $b0
	jr z, @+$06                                      ; $57a9: $28 $04

	push hl                                          ; $57ab: $e5
	ld d, [hl]                                       ; $57ac: $56
	ld bc, $ffbc                                     ; $57ad: $01 $bc $ff
	nop                                              ; $57b0: $00
	cp $09                                           ; $57b1: $fe $09
	pop af                                           ; $57b3: $f1
	add b                                            ; $57b4: $80
	ld bc, $fc8d                                     ; $57b5: $01 $8d $fc
	ret nz                                           ; $57b8: $c0

	ld h, [hl]                                       ; $57b9: $66
	ldh [rAUD2LOW], a                                ; $57ba: $e0 $18
	add hl, bc                                       ; $57bc: $09
	or b                                             ; $57bd: $b0
	jr z, @+$06                                      ; $57be: $28 $04

	push hl                                          ; $57c0: $e5
	ld d, [hl]                                       ; $57c1: $56
	ld bc, $ffbc                                     ; $57c2: $01 $bc $ff
	nop                                              ; $57c5: $00
	cp $09                                           ; $57c6: $fe $09
	pop af                                           ; $57c8: $f1
	add b                                            ; $57c9: $80
	ld bc, $fc8d                                     ; $57ca: $01 $8d $fc
	ret nz                                           ; $57cd: $c0

	ld h, [hl]                                       ; $57ce: $66
	ldh [rAUD2HIGH], a                               ; $57cf: $e0 $19
	inc b                                            ; $57d1: $04
	push hl                                          ; $57d2: $e5
	ld d, [hl]                                       ; $57d3: $56
	ld bc, $9bbc                                     ; $57d4: $01 $bc $9b
	ei                                               ; $57d7: $fb
	cp $09                                           ; $57d8: $fe $09
	db $fc                                           ; $57da: $fc
	ret nz                                           ; $57db: $c0

	ld h, h                                          ; $57dc: $64
	ldh [$62], a                                     ; $57dd: $e0 $62
	db $fc                                           ; $57df: $fc
	ret nz                                           ; $57e0: $c0

	ld h, l                                          ; $57e1: $65
	jp nc, $fb8e                                     ; $57e2: $d2 $8e $fb

	cp $0f                                           ; $57e5: $fe $0f
	ei                                               ; $57e7: $fb
	pop bc                                           ; $57e8: $c1
	ld l, b                                          ; $57e9: $68
	ret c                                            ; $57ea: $d8

	ld a, [$1bc0]                                    ; $57eb: $fa $c0 $1b
	ret nc                                           ; $57ee: $d0

	call nc, $c0fa                                   ; $57ef: $d4 $fa $c0
	rla                                              ; $57f2: $17
	ret nc                                           ; $57f3: $d0

	ldh [$3c], a                                     ; $57f4: $e0 $3c
	ld a, e                                          ; $57f6: $7b
	db $fc                                           ; $57f7: $fc
	ld a, c                                          ; $57f8: $79
	cp $09                                           ; $57f9: $fe $09
	pop af                                           ; $57fb: $f1
	add b                                            ; $57fc: $80
	ld bc, $fc8e                                     ; $57fd: $01 $8e $fc
	ret nz                                           ; $5800: $c0

	ld h, [hl]                                       ; $5801: $66
	ldh [rAUD2ENV], a                                ; $5802: $e0 $17
	add hl, bc                                       ; $5804: $09
	or b                                             ; $5805: $b0
	jr z, jr_07b_580c                                ; $5806: $28 $04

	push hl                                          ; $5808: $e5
	ld d, [hl]                                       ; $5809: $56
	ld [bc], a                                       ; $580a: $02
	sbc [hl]                                         ; $580b: $9e

jr_07b_580c:
	rst $38                                          ; $580c: $ff
	nop                                              ; $580d: $00
	cp $09                                           ; $580e: $fe $09
	pop af                                           ; $5810: $f1
	add b                                            ; $5811: $80
	ld bc, $fc8e                                     ; $5812: $01 $8e $fc
	ret nz                                           ; $5815: $c0

	ld h, [hl]                                       ; $5816: $66
	ldh [rAUD2LOW], a                                ; $5817: $e0 $18
	add hl, bc                                       ; $5819: $09
	or b                                             ; $581a: $b0
	jr z, jr_07b_5821                                ; $581b: $28 $04

	push hl                                          ; $581d: $e5
	ld d, [hl]                                       ; $581e: $56
	ld [bc], a                                       ; $581f: $02
	sbc [hl]                                         ; $5820: $9e

jr_07b_5821:
	rst $38                                          ; $5821: $ff
	nop                                              ; $5822: $00
	cp $09                                           ; $5823: $fe $09
	pop af                                           ; $5825: $f1
	add b                                            ; $5826: $80
	ld bc, $fc8e                                     ; $5827: $01 $8e $fc
	ret nz                                           ; $582a: $c0

	ld h, [hl]                                       ; $582b: $66
	ldh [rAUD2HIGH], a                               ; $582c: $e0 $19
	add hl, bc                                       ; $582e: $09
	or b                                             ; $582f: $b0
	jr z, jr_07b_5836                                ; $5830: $28 $04

	push hl                                          ; $5832: $e5
	ld d, [hl]                                       ; $5833: $56
	ld [bc], a                                       ; $5834: $02
	sbc [hl]                                         ; $5835: $9e

jr_07b_5836:
	rst $38                                          ; $5836: $ff
	nop                                              ; $5837: $00
	cp $09                                           ; $5838: $fe $09
	pop af                                           ; $583a: $f1
	add b                                            ; $583b: $80
	ld bc, $fc8e                                     ; $583c: $01 $8e $fc
	ret nz                                           ; $583f: $c0

	ld h, [hl]                                       ; $5840: $66
	ldh [rAUD3ENA], a                                ; $5841: $e0 $1a
	add hl, bc                                       ; $5843: $09
	or b                                             ; $5844: $b0
	jr z, jr_07b_584b                                ; $5845: $28 $04

	push hl                                          ; $5847: $e5
	ld d, [hl]                                       ; $5848: $56
	ld [bc], a                                       ; $5849: $02
	sbc [hl]                                         ; $584a: $9e

jr_07b_584b:
	rst $38                                          ; $584b: $ff
	nop                                              ; $584c: $00
	cp $09                                           ; $584d: $fe $09
	pop af                                           ; $584f: $f1
	add b                                            ; $5850: $80
	ld bc, $fc8e                                     ; $5851: $01 $8e $fc
	ret nz                                           ; $5854: $c0

	ld h, [hl]                                       ; $5855: $66
	ldh [rAUD3LEN], a                                ; $5856: $e0 $1b
	add hl, bc                                       ; $5858: $09
	or b                                             ; $5859: $b0
	jr z, jr_07b_5860                                ; $585a: $28 $04

	push hl                                          ; $585c: $e5
	ld d, [hl]                                       ; $585d: $56
	ld [bc], a                                       ; $585e: $02
	sbc [hl]                                         ; $585f: $9e

jr_07b_5860:
	rst $38                                          ; $5860: $ff
	nop                                              ; $5861: $00
	cp $09                                           ; $5862: $fe $09
	pop af                                           ; $5864: $f1
	add b                                            ; $5865: $80
	ld bc, $fc8e                                     ; $5866: $01 $8e $fc
	ret nz                                           ; $5869: $c0

	ld h, [hl]                                       ; $586a: $66
	ldh [rAUD3LEVEL], a                              ; $586b: $e0 $1c
	inc b                                            ; $586d: $04
	push hl                                          ; $586e: $e5
	ld d, [hl]                                       ; $586f: $56
	ld [bc], a                                       ; $5870: $02
	sbc [hl]                                         ; $5871: $9e
	ret nz                                           ; $5872: $c0

	adc $d0                                          ; $5873: $ce $d0
	adc e                                            ; $5875: $8b
	ld bc, $b066                                     ; $5876: $01 $66 $b0
	ld bc, $8041                                     ; $5879: $01 $41 $80
	ld bc, $8082                                     ; $587c: $01 $82 $80
	ld bc, $fb8f                                     ; $587f: $01 $8f $fb
	cp $0a                                           ; $5882: $fe $0a
	db $fc                                           ; $5884: $fc
	ret nz                                           ; $5885: $c0

	ld h, l                                          ; $5886: $65
	ret nz                                           ; $5887: $c0

	ld [hl], c                                       ; $5888: $71
	db $fc                                           ; $5889: $fc
	ret nz                                           ; $588a: $c0

	ld h, [hl]                                       ; $588b: $66
	ret nz                                           ; $588c: $c0

	ld [hl], d                                       ; $588d: $72
	inc b                                            ; $588e: $04
	nop                                              ; $588f: $00
	add b                                            ; $5890: $80
	ld bc, $fb82                                     ; $5891: $01 $82 $fb
	cp $0a                                           ; $5894: $fe $0a
	db $fc                                           ; $5896: $fc
	ret nz                                           ; $5897: $c0

	ld h, l                                          ; $5898: $65
	ret nz                                           ; $5899: $c0

	ld [hl], h                                       ; $589a: $74
	db $fc                                           ; $589b: $fc
	ret nz                                           ; $589c: $c0

	ld h, [hl]                                       ; $589d: $66
	ret nz                                           ; $589e: $c0

	ld [hl], l                                       ; $589f: $75
	ld a, [bc]                                       ; $58a0: $0a
	ret nc                                           ; $58a1: $d0

	adc e                                            ; $58a2: $8b
	ld bc, $b066                                     ; $58a3: $01 $66 $b0
	inc bc                                           ; $58a6: $03
	nop                                              ; $58a7: $00
	add b                                            ; $58a8: $80
	ld bc, $fc8f                                     ; $58a9: $01 $8f $fc
	sub l                                            ; $58ac: $95
	cp $0b                                           ; $58ad: $fe $0b
	add b                                            ; $58af: $80
	nop                                              ; $58b0: $00
	ld [hl], h                                       ; $58b1: $74
	db $fc                                           ; $58b2: $fc
	ret nz                                           ; $58b3: $c0

	ld h, l                                          ; $58b4: $65
	jp nc, $c0fc                                     ; $58b5: $d2 $fc $c0

	ld h, [hl]                                       ; $58b8: $66
	db $d3                                           ; $58b9: $d3
	ld b, $d0                                        ; $58ba: $06 $d0
	adc e                                            ; $58bc: $8b
	ld bc, $b066                                     ; $58bd: $01 $66 $b0
	inc b                                            ; $58c0: $04
	cp $0b                                           ; $58c1: $fe $0b
	add b                                            ; $58c3: $80
	nop                                              ; $58c4: $00
	halt                                             ; $58c5: $76
	db $fc                                           ; $58c6: $fc
	ret nz                                           ; $58c7: $c0

	ld h, l                                          ; $58c8: $65
	rst SubAFromHL                                          ; $58c9: $d7
	db $fc                                           ; $58ca: $fc
	ret nz                                           ; $58cb: $c0

	ld h, [hl]                                       ; $58cc: $66
	rst SubAFromHL                                          ; $58cd: $d7
	ld b, $d0                                        ; $58ce: $06 $d0
	adc e                                            ; $58d0: $8b
	ld bc, $b066                                     ; $58d1: $01 $66 $b0
	dec b                                            ; $58d4: $05
	cp $11                                           ; $58d5: $fe $11
	rst $38                                          ; $58d7: $ff
	ld b, $80                                        ; $58d8: $06 $80
	nop                                              ; $58da: $00
	ld a, b                                          ; $58db: $78
	add b                                            ; $58dc: $80
	ld bc, $fc90                                     ; $58dd: $01 $90 $fc
	ret nz                                           ; $58e0: $c0

	ld h, l                                          ; $58e1: $65
	reti                                             ; $58e2: $d9


	db $fc                                           ; $58e3: $fc
	ret nz                                           ; $58e4: $c0

	ld h, [hl]                                       ; $58e5: $66
	ldh [rAUD3HIGH], a                               ; $58e6: $e0 $1e
	ld b, $d0                                        ; $58e8: $06 $d0
	adc e                                            ; $58ea: $8b
	ld bc, $b066                                     ; $58eb: $01 $66 $b0
	ld b, $fe                                        ; $58ee: $06 $fe
	dec bc                                           ; $58f0: $0b
	add b                                            ; $58f1: $80
	nop                                              ; $58f2: $00
	ld a, d                                          ; $58f3: $7a
	db $fc                                           ; $58f4: $fc
	ret nz                                           ; $58f5: $c0

	ld h, l                                          ; $58f6: $65
	db $db                                           ; $58f7: $db
	db $fc                                           ; $58f8: $fc
	ret nz                                           ; $58f9: $c0

	ld h, [hl]                                       ; $58fa: $66
	rst SubAFromDE                                          ; $58fb: $df
	ld b, $d0                                        ; $58fc: $06 $d0
	adc e                                            ; $58fe: $8b
	ld bc, $b066                                     ; $58ff: $01 $66 $b0
	rlca                                             ; $5902: $07
	cp $0c                                           ; $5903: $fe $0c
	add b                                            ; $5905: $80
	nop                                              ; $5906: $00
	ld a, e                                          ; $5907: $7b
	db $fc                                           ; $5908: $fc
	ret nz                                           ; $5909: $c0

	ld h, l                                          ; $590a: $65
	jp c, $c0fc                                      ; $590b: $da $fc $c0

	ld h, [hl]                                       ; $590e: $66
	ldh [rAUD1LEN], a                                ; $590f: $e0 $11
	ld b, $d0                                        ; $5911: $06 $d0
	adc e                                            ; $5913: $8b
	ld bc, $b066                                     ; $5914: $01 $66 $b0
	ld [$0cfe], sp                                   ; $5917: $08 $fe $0c
	add b                                            ; $591a: $80
	nop                                              ; $591b: $00
	sub c                                            ; $591c: $91
	db $fc                                           ; $591d: $fc
	ret nz                                           ; $591e: $c0

	ld h, l                                          ; $591f: $65
	push de                                          ; $5920: $d5
	db $fc                                           ; $5921: $fc
	ret nz                                           ; $5922: $c0

	ld h, [hl]                                       ; $5923: $66
	ldh [rAUD1SWEEP], a                              ; $5924: $e0 $10
	ld b, $d0                                        ; $5926: $06 $d0
	adc e                                            ; $5928: $8b
	ld bc, $b066                                     ; $5929: $01 $66 $b0
	add hl, bc                                       ; $592c: $09
	cp $0c                                           ; $592d: $fe $0c
	add b                                            ; $592f: $80
	nop                                              ; $5930: $00
	sub d                                            ; $5931: $92
	db $fc                                           ; $5932: $fc
	ret nz                                           ; $5933: $c0

	ld h, l                                          ; $5934: $65
	pop de                                           ; $5935: $d1
	db $fc                                           ; $5936: $fc
	ret nz                                           ; $5937: $c0

	ld h, [hl]                                       ; $5938: $66
	ldh [rAUD2LEN], a                                ; $5939: $e0 $16
	ld b, $d0                                        ; $593b: $06 $d0
	adc e                                            ; $593d: $8b
	ld bc, $b066                                     ; $593e: $01 $66 $b0
	ld a, [bc]                                       ; $5941: $0a
	ld c, [hl]                                       ; $5942: $4e
	or b                                             ; $5943: $b0
	inc c                                            ; $5944: $0c
	ld c, c                                          ; $5945: $49
	nop                                              ; $5946: $00
	add b                                            ; $5947: $80
	ld bc, $c165                                     ; $5948: $01 $65 $c1
	ld d, e                                          ; $594b: $53
	ret nz                                           ; $594c: $c0

	inc d                                            ; $594d: $14
	db $e3                                           ; $594e: $e3
	nop                                              ; $594f: $00
	inc a                                            ; $5950: $3c
	ret nz                                           ; $5951: $c0

	ld bc, $01a0                                     ; $5952: $01 $a0 $01
	nop                                              ; $5955: $00
	push hl                                          ; $5956: $e5
	ret nz                                           ; $5957: $c0

	dec bc                                           ; $5958: $0b
	db $e3                                           ; $5959: $e3
	nop                                              ; $595a: $00
	adc b                                            ; $595b: $88
	ret nz                                           ; $595c: $c0

	nop                                              ; $595d: $00
	nop                                              ; $595e: $00
	ldh a, [c]                                       ; $595f: $f2
	pop bc                                           ; $5960: $c1
	ld e, c                                          ; $5961: $59
	db $e3                                           ; $5962: $e3
	ld bc, $c017                                     ; $5963: $01 $17 $c0
	add hl, bc                                       ; $5966: $09
	db $e3                                           ; $5967: $e3
	nop                                              ; $5968: $00
	ld d, c                                          ; $5969: $51
	ret nz                                           ; $596a: $c0

	ld bc, $0ea0                                     ; $596b: $01 $a0 $0e
	nop                                              ; $596e: $00
	rst FarCall                                          ; $596f: $f7
	ret nz                                           ; $5970: $c0

	ld bc, $01a0                                     ; $5971: $01 $a0 $01
	ld bc, $c002                                     ; $5974: $01 $02 $c0
	inc c                                            ; $5977: $0c
	ldh [$3c], a                                     ; $5978: $e0 $3c
	ret nz                                           ; $597a: $c0

	ld bc, $0ea0                                     ; $597b: $01 $a0 $0e
	ld bc, $c007                                     ; $597e: $01 $07 $c0
	ld bc, $01a0                                     ; $5981: $01 $a0 $01
	ld bc, $c00f                                     ; $5984: $01 $0f $c0
	set 0, b                                         ; $5987: $cb $c0
	dec hl                                           ; $5989: $2b
	jp nc, $dac0                                     ; $598a: $d2 $c0 $da

	push de                                          ; $598d: $d5
	ret c                                            ; $598e: $d8

	rst $38                                          ; $598f: $ff
	nop                                              ; $5990: $00
	ld h, d                                          ; $5991: $62
	pop bc                                           ; $5992: $c1
	ld d, e                                          ; $5993: $53
	ret nz                                           ; $5994: $c0

	add hl, bc                                       ; $5995: $09
	db $e3                                           ; $5996: $e3
	nop                                              ; $5997: $00
	dec b                                            ; $5998: $05
	ret nz                                           ; $5999: $c0

	inc d                                            ; $599a: $14
	db $e3                                           ; $599b: $e3
	nop                                              ; $599c: $00
	inc a                                            ; $599d: $3c
	pop hl                                           ; $599e: $e1
	ld [bc], a                                       ; $599f: $02
	ld bc, $e14a                                     ; $59a0: $01 $4a $e1
	ld [bc], a                                       ; $59a3: $02
	inc bc                                           ; $59a4: $03
	rra                                              ; $59a5: $1f
	ret nz                                           ; $59a6: $c0

	and l                                            ; $59a7: $a5
	ret nz                                           ; $59a8: $c0

	ld bc, $01a0                                     ; $59a9: $01 $a0 $01
	ld bc, $c015                                     ; $59ac: $01 $15 $c0
	ld bc, $04a0                                     ; $59af: $01 $a0 $04
	ld bc, $c019                                     ; $59b2: $01 $19 $c0
	ld bc, $01a0                                     ; $59b5: $01 $a0 $01
	ld bc, $c025                                     ; $59b8: $01 $25 $c0
	ld bc, $04a0                                     ; $59bb: $01 $a0 $04
	ld bc, $c02c                                     ; $59be: $01 $2c $c0
	ld bc, $01a0                                     ; $59c1: $01 $a0 $01
	ld bc, $c036                                     ; $59c4: $01 $36 $c0
	ld bc, $01a0                                     ; $59c7: $01 $a0 $01
	ld bc, $c03a                                     ; $59ca: $01 $3a $c0
	ld bc, $04a0                                     ; $59cd: $01 $a0 $04
	ld bc, $c045                                     ; $59d0: $01 $45 $c0
	ld bc, $01a0                                     ; $59d3: $01 $a0 $01
	ld bc, $e155                                     ; $59d6: $01 $55 $e1
	ld [bc], a                                       ; $59d9: $02
	inc bc                                           ; $59da: $03
	rla                                              ; $59db: $17
	ret nz                                           ; $59dc: $c0

	ld bc, $04a0                                     ; $59dd: $01 $a0 $04
	ld bc, $c15b                                     ; $59e0: $01 $5b $c1
	ld e, e                                          ; $59e3: $5b
	ret nz                                           ; $59e4: $c0

	ld bc, $01a0                                     ; $59e5: $01 $a0 $01
	ld bc, $c06b                                     ; $59e8: $01 $6b $c0
	inc h                                            ; $59eb: $24
	jp nc, $c0d2                                     ; $59ec: $d2 $d2 $c0

	inc hl                                           ; $59ef: $23
	push de                                          ; $59f0: $d5
	jp nc, $05c1                                     ; $59f1: $d2 $c1 $05

	ld e, d                                          ; $59f4: $5a
	pop bc                                           ; $59f5: $c1
	ld d, e                                          ; $59f6: $53
	ret nz                                           ; $59f7: $c0

	add hl, bc                                       ; $59f8: $09
	db $e3                                           ; $59f9: $e3
	nop                                              ; $59fa: $00
	rlca                                             ; $59fb: $07
	ret nz                                           ; $59fc: $c0

	inc d                                            ; $59fd: $14
	db $e3                                           ; $59fe: $e3
	nop                                              ; $59ff: $00
	inc a                                            ; $5a00: $3c
	pop hl                                           ; $5a01: $e1
	ld [bc], a                                       ; $5a02: $02
	ld [bc], a                                       ; $5a03: $02
	ld l, d                                          ; $5a04: $6a
	pop hl                                           ; $5a05: $e1
	ld [bc], a                                       ; $5a06: $02
	inc bc                                           ; $5a07: $03
	dec de                                           ; $5a08: $1b
	ret nz                                           ; $5a09: $c0

	and l                                            ; $5a0a: $a5
	ret nz                                           ; $5a0b: $c0

	ld bc, $01a0                                     ; $5a0c: $01 $a0 $01
	ld bc, $c06e                                     ; $5a0f: $01 $6e $c0
	ld bc, $0aa0                                     ; $5a12: $01 $a0 $0a
	ld bc, $c071                                     ; $5a15: $01 $71 $c0
	ld bc, $01a0                                     ; $5a18: $01 $a0 $01
	ld bc, $c080                                     ; $5a1b: $01 $80 $c0
	ld bc, $0aa0                                     ; $5a1e: $01 $a0 $0a
	ld bc, $c086                                     ; $5a21: $01 $86 $c0
	ld bc, $01a0                                     ; $5a24: $01 $a0 $01
	ld bc, $e188                                     ; $5a27: $01 $88 $e1
	ld [bc], a                                       ; $5a2a: $02
	inc bc                                           ; $5a2b: $03
	rrca                                             ; $5a2c: $0f
	ret nz                                           ; $5a2d: $c0

	ld bc, $0aa0                                     ; $5a2e: $01 $a0 $0a
	ld bc, $c094                                     ; $5a31: $01 $94 $c0
	ld bc, $01a0                                     ; $5a34: $01 $a0 $01
	ld bc, $e19a                                     ; $5a37: $01 $9a $e1
	ld [bc], a                                       ; $5a3a: $02
	inc bc                                           ; $5a3b: $03
	inc de                                           ; $5a3c: $13
	ret nz                                           ; $5a3d: $c0

	ld bc, $0aa0                                     ; $5a3e: $01 $a0 $0a
	ld bc, $c0ab                                     ; $5a41: $01 $ab $c0
	ld bc, $01a0                                     ; $5a44: $01 $a0 $01
	ld bc, $c0ac                                     ; $5a47: $01 $ac $c0
	set 0, c                                         ; $5a4a: $cb $c1
	ld e, e                                          ; $5a4c: $5b
	pop bc                                           ; $5a4d: $c1
	dec b                                            ; $5a4e: $05
	ld e, h                                          ; $5a4f: $5c
	pop bc                                           ; $5a50: $c1
	ld d, e                                          ; $5a51: $53
	ret nz                                           ; $5a52: $c0

	inc d                                            ; $5a53: $14
	db $e3                                           ; $5a54: $e3
	nop                                              ; $5a55: $00
	inc a                                            ; $5a56: $3c
	ret nz                                           ; $5a57: $c0

	add hl, bc                                       ; $5a58: $09
	db $e3                                           ; $5a59: $e3
	nop                                              ; $5a5a: $00
	rlca                                             ; $5a5b: $07
	pop hl                                           ; $5a5c: $e1
	ld [bc], a                                       ; $5a5d: $02
	ld [bc], a                                       ; $5a5e: $02
	ld l, d                                          ; $5a5f: $6a
	pop hl                                           ; $5a60: $e1
	ld [bc], a                                       ; $5a61: $02
	inc bc                                           ; $5a62: $03
	dec de                                           ; $5a63: $1b
	ret nz                                           ; $5a64: $c0

	and l                                            ; $5a65: $a5
	ret nz                                           ; $5a66: $c0

	ld bc, $01a0                                     ; $5a67: $01 $a0 $01
	ld bc, $e16e                                     ; $5a6a: $01 $6e $e1
	ld [bc], a                                       ; $5a6d: $02
	inc bc                                           ; $5a6e: $03
	daa                                              ; $5a6f: $27
	ret nz                                           ; $5a70: $c0

	ld bc, $0aa0                                     ; $5a71: $01 $a0 $0a
	ld bc, $c0b2                                     ; $5a74: $01 $b2 $c0
	ld bc, $01a0                                     ; $5a77: $01 $a0 $01
	ld bc, $c0b4                                     ; $5a7a: $01 $b4 $c0
	ld bc, $0aa0                                     ; $5a7d: $01 $a0 $0a
	ld bc, $c0be                                     ; $5a80: $01 $be $c0
	ld bc, $01a0                                     ; $5a83: $01 $a0 $01
	ld bc, $e1cc                                     ; $5a86: $01 $cc $e1
	ld [bc], a                                       ; $5a89: $02
	inc bc                                           ; $5a8a: $03
	inc de                                           ; $5a8b: $13
	ret nz                                           ; $5a8c: $c0

	ld bc, $0aa0                                     ; $5a8d: $01 $a0 $0a
	ld bc, $c0d1                                     ; $5a90: $01 $d1 $c0
	ld bc, $01a0                                     ; $5a93: $01 $a0 $01
	ld bc, $c0d7                                     ; $5a96: $01 $d7 $c0
	ld bc, $0aa0                                     ; $5a99: $01 $a0 $0a
	ld bc, $20db                                     ; $5a9c: $01 $db $20
	add c                                            ; $5a9f: $81
	ld bc, $c091                                     ; $5aa0: $01 $91 $c0
	set 0, c                                         ; $5aa3: $cb $c1
	ld e, e                                          ; $5aa5: $5b
	pop bc                                           ; $5aa6: $c1
	dec b                                            ; $5aa7: $05
	pop bc                                           ; $5aa8: $c1
	ld l, e                                          ; $5aa9: $6b
	jp nc, $c3dd                                     ; $5aaa: $d2 $dd $c3

	jp nc, $83d0                                     ; $5aad: $d2 $d0 $83

	and b                                            ; $5ab0: $a0
	add h                                            ; $5ab1: $84
	pop bc                                           ; $5ab2: $c1
	ld h, h                                          ; $5ab3: $64
	ei                                               ; $5ab4: $fb
	db $fd                                           ; $5ab5: $fd
	adc a                                            ; $5ab6: $8f
	ld bc, $8393                                     ; $5ab7: $01 $93 $83
	and b                                            ; $5aba: $a0
	add h                                            ; $5abb: $84
	jp $c1c2                                         ; $5abc: $c3 $c2 $c1


	ld d, e                                          ; $5abf: $53
	ret nz                                           ; $5ac0: $c0

	inc d                                            ; $5ac1: $14
	db $e3                                           ; $5ac2: $e3
	nop                                              ; $5ac3: $00
	inc a                                            ; $5ac4: $3c
	db $fd                                           ; $5ac5: $fd
	jp $838d                                         ; $5ac6: $c3 $8d $83


	and b                                            ; $5ac9: $a0
	add h                                            ; $5aca: $84
	ld bc, $49d0                                     ; $5acb: $01 $d0 $49
	ret nz                                           ; $5ace: $c0

	add hl, bc                                       ; $5acf: $09
	db $e3                                           ; $5ad0: $e3
	nop                                              ; $5ad1: $00
	ld c, d                                          ; $5ad2: $4a
	pop hl                                           ; $5ad3: $e1
	ld [bc], a                                       ; $5ad4: $02
	nop                                              ; $5ad5: $00
	ret nz                                           ; $5ad6: $c0

	add e                                            ; $5ad7: $83
	add d                                            ; $5ad8: $82
	ld bc, $01a3                                     ; $5ad9: $01 $a3 $01
	ret nc                                           ; $5adc: $d0

	ld b, $c0                                        ; $5add: $06 $c0
	ld bc, $02a0                                     ; $5adf: $01 $a0 $02
	ld bc, $01dd                                     ; $5ae2: $01 $dd $01
	pop de                                           ; $5ae5: $d1
	ld b, $c0                                        ; $5ae6: $06 $c0
	ld bc, $02a0                                     ; $5ae8: $01 $a0 $02
	ld bc, $01e0                                     ; $5aeb: $01 $e0 $01
	jp nc, $c006                                     ; $5aee: $d2 $06 $c0

	ld bc, $02a0                                     ; $5af1: $01 $a0 $02
	ld bc, $01e3                                     ; $5af4: $01 $e3 $01
	db $d3                                           ; $5af7: $d3
	ld b, $c0                                        ; $5af8: $06 $c0
	ld bc, $02a0                                     ; $5afa: $01 $a0 $02
	ld bc, wGenericTileDataFinalDest                                     ; $5afd: $01 $e6 $c0
	ld bc, $01a0                                     ; $5b00: $01 $a0 $01
	ld bc, $c0e9                                     ; $5b03: $01 $e9 $c0
	ld bc, $02a0                                     ; $5b06: $01 $a0 $02

Jump_07b_5b09:
	ld bc, $c0f6                                     ; $5b09: $01 $f6 $c0
	ld bc, $01a0                                     ; $5b0c: $01 $a0 $01
	ld [bc], a                                       ; $5b0f: $02
	inc bc                                           ; $5b10: $03
	ret nz                                           ; $5b11: $c0

	ld bc, $02a0                                     ; $5b12: $01 $a0 $02
	ld [bc], a                                       ; $5b15: $02
	ld b, $01                                        ; $5b16: $06 $01
	pop de                                           ; $5b18: $d1
	ld c, c                                          ; $5b19: $49
	ret nz                                           ; $5b1a: $c0

	add hl, bc                                       ; $5b1b: $09
	db $e3                                           ; $5b1c: $e3
	nop                                              ; $5b1d: $00
	ld b, $e1                                        ; $5b1e: $06 $e1
	ld [bc], a                                       ; $5b20: $02
	ld bc, $8308                                     ; $5b21: $01 $08 $83
	add d                                            ; $5b24: $82
	ld bc, $01a3                                     ; $5b25: $01 $a3 $01
	ret nc                                           ; $5b28: $d0

	ld b, $c0                                        ; $5b29: $06 $c0
	ld bc, $03a0                                     ; $5b2b: $01 $a0 $03
	ld [bc], a                                       ; $5b2e: $02
	db $10                                           ; $5b2f: $10
	ld bc, $06d1                                     ; $5b30: $01 $d1 $06
	ret nz                                           ; $5b33: $c0

	ld bc, $03a0                                     ; $5b34: $01 $a0 $03
	ld [bc], a                                       ; $5b37: $02
	ld [de], a                                       ; $5b38: $12
	ld bc, $06d2                                     ; $5b39: $01 $d2 $06
	ret nz                                           ; $5b3c: $c0

	ld bc, $03a0                                     ; $5b3d: $01 $a0 $03
	ld [bc], a                                       ; $5b40: $02
	dec d                                            ; $5b41: $15
	ld bc, $06d3                                     ; $5b42: $01 $d3 $06
	ret nz                                           ; $5b45: $c0

	ld bc, $03a0                                     ; $5b46: $01 $a0 $03
	ld [bc], a                                       ; $5b49: $02
	rla                                              ; $5b4a: $17
	ret nz                                           ; $5b4b: $c0

	ld bc, $01a0                                     ; $5b4c: $01 $a0 $01
	ld [bc], a                                       ; $5b4f: $02
	ld a, [de]                                       ; $5b50: $1a
	ret nz                                           ; $5b51: $c0

	ld bc, $03a0                                     ; $5b52: $01 $a0 $03
	ld [bc], a                                       ; $5b55: $02
	rra                                              ; $5b56: $1f
	ret nz                                           ; $5b57: $c0

	ld bc, $01a0                                     ; $5b58: $01 $a0 $01
	ld [bc], a                                       ; $5b5b: $02
	inc bc                                           ; $5b5c: $03
	ret nz                                           ; $5b5d: $c0

	ld bc, $03a0                                     ; $5b5e: $01 $a0 $03
	ld [bc], a                                       ; $5b61: $02
	inc l                                            ; $5b62: $2c
	ld bc, $55d2                                     ; $5b63: $01 $d2 $55
	ret nz                                           ; $5b66: $c0

	add hl, bc                                       ; $5b67: $09
	db $e3                                           ; $5b68: $e3
	nop                                              ; $5b69: $00
	dec b                                            ; $5b6a: $05
	pop hl                                           ; $5b6b: $e1
	ld [bc], a                                       ; $5b6c: $02
	ld bc, $8350                                     ; $5b6d: $01 $50 $83
	add d                                            ; $5b70: $82
	ld bc, $01a3                                     ; $5b71: $01 $a3 $01
	ret nc                                           ; $5b74: $d0

	ld b, $c0                                        ; $5b75: $06 $c0
	ld bc, $04a0                                     ; $5b77: $01 $a0 $04
	ld [bc], a                                       ; $5b7a: $02
	scf                                              ; $5b7b: $37
	ld bc, $06d1                                     ; $5b7c: $01 $d1 $06
	ret nz                                           ; $5b7f: $c0

	ld bc, $04a0                                     ; $5b80: $01 $a0 $04
	ld [bc], a                                       ; $5b83: $02
	dec sp                                           ; $5b84: $3b
	ld bc, $06d2                                     ; $5b85: $01 $d2 $06
	ret nz                                           ; $5b88: $c0

	ld bc, $04a0                                     ; $5b89: $01 $a0 $04
	ld [bc], a                                       ; $5b8c: $02
	ccf                                              ; $5b8d: $3f
	ld bc, $06d3                                     ; $5b8e: $01 $d3 $06
	ret nz                                           ; $5b91: $c0

	ld bc, $04a0                                     ; $5b92: $01 $a0 $04
	ld [bc], a                                       ; $5b95: $02
	ld b, e                                          ; $5b96: $43
	ret nz                                           ; $5b97: $c0

	ld bc, $01a0                                     ; $5b98: $01 $a0 $01
	ld [bc], a                                       ; $5b9b: $02
	ld b, a                                          ; $5b9c: $47
	ret nz                                           ; $5b9d: $c0

	ld bc, $04a0                                     ; $5b9e: $01 $a0 $04
	ld [bc], a                                       ; $5ba1: $02
	ld c, h                                          ; $5ba2: $4c
	ret nz                                           ; $5ba3: $c0

	ld bc, $01a0                                     ; $5ba4: $01 $a0 $01
	ld [bc], a                                       ; $5ba7: $02
	ld e, c                                          ; $5ba8: $59
	ret nz                                           ; $5ba9: $c0

	ld bc, $04a0                                     ; $5baa: $01 $a0 $04
	ld [bc], a                                       ; $5bad: $02
	ld e, [hl]                                       ; $5bae: $5e
	ret nz                                           ; $5baf: $c0

	ld bc, $01a0                                     ; $5bb0: $01 $a0 $01
	ld bc, $c06b                                     ; $5bb3: $01 $6b $c0
	ld bc, $04a0                                     ; $5bb6: $01 $a0 $04
	ld [bc], a                                       ; $5bb9: $02
	ld l, a                                          ; $5bba: $6f
	ld bc, $49d3                                     ; $5bbb: $01 $d3 $49
	ret nz                                           ; $5bbe: $c0

	add hl, bc                                       ; $5bbf: $09
	db $e3                                           ; $5bc0: $e3
	nop                                              ; $5bc1: $00
	inc b                                            ; $5bc2: $04
	pop hl                                           ; $5bc3: $e1
	ld [bc], a                                       ; $5bc4: $02
	ld bc, $8398                                     ; $5bc5: $01 $98 $83
	add d                                            ; $5bc8: $82
	ld bc, $01a3                                     ; $5bc9: $01 $a3 $01
	ret nc                                           ; $5bcc: $d0

	ld b, $c0                                        ; $5bcd: $06 $c0
	ld bc, $05a0                                     ; $5bcf: $01 $a0 $05
	ld [bc], a                                       ; $5bd2: $02
	ld a, c                                          ; $5bd3: $79
	ld bc, $06d1                                     ; $5bd4: $01 $d1 $06
	ret nz                                           ; $5bd7: $c0

	ld bc, $05a0                                     ; $5bd8: $01 $a0 $05
	ld [bc], a                                       ; $5bdb: $02
	ld a, l                                          ; $5bdc: $7d
	ld bc, $06d2                                     ; $5bdd: $01 $d2 $06
	ret nz                                           ; $5be0: $c0

	ld bc, $05a0                                     ; $5be1: $01 $a0 $05
	ld [bc], a                                       ; $5be4: $02
	add c                                            ; $5be5: $81
	ld bc, $06d3                                     ; $5be6: $01 $d3 $06
	ret nz                                           ; $5be9: $c0

	ld bc, $05a0                                     ; $5bea: $01 $a0 $05
	ld [bc], a                                       ; $5bed: $02
	add l                                            ; $5bee: $85
	ret nz                                           ; $5bef: $c0

	ld bc, $01a0                                     ; $5bf0: $01 $a0 $01
	ld [bc], a                                       ; $5bf3: $02
	adc c                                            ; $5bf4: $89
	ret nz                                           ; $5bf5: $c0

	ld bc, $05a0                                     ; $5bf6: $01 $a0 $05
	ld [bc], a                                       ; $5bf9: $02
	sub l                                            ; $5bfa: $95
	ret nz                                           ; $5bfb: $c0

	ld bc, $01a0                                     ; $5bfc: $01 $a0 $01
	ld [bc], a                                       ; $5bff: $02
	sbc d                                            ; $5c00: $9a
	ret nz                                           ; $5c01: $c0

	ld bc, $05a0                                     ; $5c02: $01 $a0 $05
	ld [bc], a                                       ; $5c05: $02
	sbc l                                            ; $5c06: $9d
	ld bc, $49d7                                     ; $5c07: $01 $d7 $49
	ret nz                                           ; $5c0a: $c0

	add hl, bc                                       ; $5c0b: $09
	db $e3                                           ; $5c0c: $e3
	nop                                              ; $5c0d: $00
	inc bc                                           ; $5c0e: $03
	pop hl                                           ; $5c0f: $e1
	ld [bc], a                                       ; $5c10: $02
	ld bc, $83e0                                     ; $5c11: $01 $e0 $83
	add d                                            ; $5c14: $82
	ld bc, $01a3                                     ; $5c15: $01 $a3 $01
	ret nc                                           ; $5c18: $d0

	ld b, $c0                                        ; $5c19: $06 $c0
	ld bc, $08a0                                     ; $5c1b: $01 $a0 $08
	ld [bc], a                                       ; $5c1e: $02
	xor c                                            ; $5c1f: $a9
	ld bc, $06d1                                     ; $5c20: $01 $d1 $06
	ret nz                                           ; $5c23: $c0

	ld bc, $08a0                                     ; $5c24: $01 $a0 $08
	ld [bc], a                                       ; $5c27: $02
	xor l                                            ; $5c28: $ad
	ld bc, $06d2                                     ; $5c29: $01 $d2 $06
	ret nz                                           ; $5c2c: $c0

	ld bc, $08a0                                     ; $5c2d: $01 $a0 $08
	ld [bc], a                                       ; $5c30: $02
	or c                                             ; $5c31: $b1
	ld bc, $06d3                                     ; $5c32: $01 $d3 $06
	ret nz                                           ; $5c35: $c0

	ld bc, $08a0                                     ; $5c36: $01 $a0 $08
	ld [bc], a                                       ; $5c39: $02
	or l                                             ; $5c3a: $b5

jr_07b_5c3b:
	ret nz                                           ; $5c3b: $c0

	ld bc, $01a0                                     ; $5c3c: $01 $a0 $01
	ld [bc], a                                       ; $5c3f: $02
	cp c                                             ; $5c40: $b9
	ret nz                                           ; $5c41: $c0

	ld bc, $08a0                                     ; $5c42: $01 $a0 $08
	ld [bc], a                                       ; $5c45: $02
	jp nz, $01c0                                     ; $5c46: $c2 $c0 $01

	and b                                            ; $5c49: $a0
	ld bc, $c902                                     ; $5c4a: $01 $02 $c9
	ret nz                                           ; $5c4d: $c0

	ld bc, $08a0                                     ; $5c4e: $01 $a0 $08
	ld [bc], a                                       ; $5c51: $02
	db $d3                                           ; $5c52: $d3
	ld bc, $49d8                                     ; $5c53: $01 $d8 $49
	ret nz                                           ; $5c56: $c0

	add hl, bc                                       ; $5c57: $09
	db $e3                                           ; $5c58: $e3
	nop                                              ; $5c59: $00
	ld bc, $02e1                                     ; $5c5a: $01 $e1 $02
	ld [bc], a                                       ; $5c5d: $02
	db $10                                           ; $5c5e: $10
	add e                                            ; $5c5f: $83
	add d                                            ; $5c60: $82
	ld bc, $01a3                                     ; $5c61: $01 $a3 $01
	ret nc                                           ; $5c64: $d0

	ld b, $c0                                        ; $5c65: $06 $c0
	ld bc, $09a0                                     ; $5c67: $01 $a0 $09
	ld [bc], a                                       ; $5c6a: $02
	rst SubAFromBC                                          ; $5c6b: $e7
	ld bc, $06d1                                     ; $5c6c: $01 $d1 $06
	ret nz                                           ; $5c6f: $c0

	ld bc, $09a0                                     ; $5c70: $01 $a0 $09
	ld [bc], a                                       ; $5c73: $02
	db $eb                                           ; $5c74: $eb
	ld bc, $06d2                                     ; $5c75: $01 $d2 $06
	ret nz                                           ; $5c78: $c0

	ld bc, $09a0                                     ; $5c79: $01 $a0 $09
	ld [bc], a                                       ; $5c7c: $02
	rst AddAOntoHL                                          ; $5c7d: $ef
	ld bc, $06d3                                     ; $5c7e: $01 $d3 $06
	ret nz                                           ; $5c81: $c0

	ld bc, $09a0                                     ; $5c82: $01 $a0 $09
	ld [bc], a                                       ; $5c85: $02
	di                                               ; $5c86: $f3
	ret nz                                           ; $5c87: $c0

	ld bc, $01a0                                     ; $5c88: $01 $a0 $01
	ld [bc], a                                       ; $5c8b: $02
	rst FarCall                                          ; $5c8c: $f7
	ret nz                                           ; $5c8d: $c0

	ld bc, $09a0                                     ; $5c8e: $01 $a0 $09
	inc bc                                           ; $5c91: $03
	inc b                                            ; $5c92: $04
	ret nz                                           ; $5c93: $c0

	ld bc, $01a0                                     ; $5c94: $01 $a0 $01
	ld [bc], a                                       ; $5c97: $02
	sbc d                                            ; $5c98: $9a
	ret nz                                           ; $5c99: $c0

	ld bc, $09a0                                     ; $5c9a: $01 $a0 $09
	inc bc                                           ; $5c9d: $03
	dec bc                                           ; $5c9e: $0b
	ld bc, $62da                                     ; $5c9f: $01 $da $62
	ret nz                                           ; $5ca2: $c0

	add hl, bc                                       ; $5ca3: $09
	db $e3                                           ; $5ca4: $e3
	nop                                              ; $5ca5: $00
	ld [bc], a                                       ; $5ca6: $02
	pop hl                                           ; $5ca7: $e1
	ld [bc], a                                       ; $5ca8: $02
	ld [bc], a                                       ; $5ca9: $02
	ld b, b                                          ; $5caa: $40
	ret nz                                           ; $5cab: $c0

	ld bc, $06a0                                     ; $5cac: $01 $a0 $06
	ld bc, $c0b2                                     ; $5caf: $01 $b2 $c0
	ld bc, $01a0                                     ; $5cb2: $01 $a0 $01
	inc bc                                           ; $5cb5: $03
	jr jr_07b_5c3b                                   ; $5cb6: $18 $83

	add d                                            ; $5cb8: $82
	ld bc, $01a3                                     ; $5cb9: $01 $a3 $01
	ret nc                                           ; $5cbc: $d0

	ld b, $c0                                        ; $5cbd: $06 $c0
	ld bc, $06a0                                     ; $5cbf: $01 $a0 $06
	inc bc                                           ; $5cc2: $03
	dec de                                           ; $5cc3: $1b
	ld bc, $06d1                                     ; $5cc4: $01 $d1 $06
	ret nz                                           ; $5cc7: $c0

	ld bc, $06a0                                     ; $5cc8: $01 $a0 $06
	inc bc                                           ; $5ccb: $03
	ld hl, wCurrMenuOption                                     ; $5ccc: $21 $01 $d2
	ld b, $c0                                        ; $5ccf: $06 $c0
	ld bc, $06a0                                     ; $5cd1: $01 $a0 $06
	inc bc                                           ; $5cd4: $03
	ld h, $01                                        ; $5cd5: $26 $01
	db $d3                                           ; $5cd7: $d3
	ld b, $c0                                        ; $5cd8: $06 $c0
	ld bc, $06a0                                     ; $5cda: $01 $a0 $06
	inc bc                                           ; $5cdd: $03
	inc l                                            ; $5cde: $2c
	ret nz                                           ; $5cdf: $c0

	ld bc, $01a0                                     ; $5ce0: $01 $a0 $01
	inc bc                                           ; $5ce3: $03
	ld sp, $01c0                                     ; $5ce4: $31 $c0 $01
	and b                                            ; $5ce7: $a0
	ld b, $03                                        ; $5ce8: $06 $03
	scf                                              ; $5cea: $37
	ret nz                                           ; $5ceb: $c0

	ld bc, $01a0                                     ; $5cec: $01 $a0 $01
	inc bc                                           ; $5cef: $03
	ld b, d                                          ; $5cf0: $42
	ret nz                                           ; $5cf1: $c0

	ld bc, $06a0                                     ; $5cf2: $01 $a0 $06
	inc bc                                           ; $5cf5: $03
	ld c, c                                          ; $5cf6: $49
	ret nz                                           ; $5cf7: $c0

	dec bc                                           ; $5cf8: $0b
	db $e3                                           ; $5cf9: $e3
	nop                                              ; $5cfa: $00
	daa                                              ; $5cfb: $27
	pop bc                                           ; $5cfc: $c1
	ld e, e                                          ; $5cfd: $5b
	ret nz                                           ; $5cfe: $c0

	ld bc, $01a0                                     ; $5cff: $01 $a0 $01
	ld bc, $016b                                     ; $5d02: $01 $6b $01
	db $dd                                           ; $5d05: $dd
	ld c, c                                          ; $5d06: $49
	ret nz                                           ; $5d07: $c0

	add hl, bc                                       ; $5d08: $09
	db $e3                                           ; $5d09: $e3
	nop                                              ; $5d0a: $00
	rlca                                             ; $5d0b: $07
	pop hl                                           ; $5d0c: $e1
	ld [bc], a                                       ; $5d0d: $02
	ld [bc], a                                       ; $5d0e: $02
	ld [hl], b                                       ; $5d0f: $70
	add e                                            ; $5d10: $83
	add d                                            ; $5d11: $82
	ld bc, $01a3                                     ; $5d12: $01 $a3 $01
	ret nc                                           ; $5d15: $d0

	ld b, $c0                                        ; $5d16: $06 $c0
	ld bc, $0aa0                                     ; $5d18: $01 $a0 $0a
	inc bc                                           ; $5d1b: $03
	ld d, c                                          ; $5d1c: $51
	ld bc, $06d1                                     ; $5d1d: $01 $d1 $06
	ret nz                                           ; $5d20: $c0

	ld bc, $0aa0                                     ; $5d21: $01 $a0 $0a
	inc bc                                           ; $5d24: $03
	ld d, l                                          ; $5d25: $55
	ld bc, $06d2                                     ; $5d26: $01 $d2 $06
	ret nz                                           ; $5d29: $c0

	ld bc, $0aa0                                     ; $5d2a: $01 $a0 $0a
	inc bc                                           ; $5d2d: $03
	ld e, c                                          ; $5d2e: $59
	ld bc, $06d3                                     ; $5d2f: $01 $d3 $06
	ret nz                                           ; $5d32: $c0

	ld bc, $0aa0                                     ; $5d33: $01 $a0 $0a
	inc bc                                           ; $5d36: $03
	ld e, l                                          ; $5d37: $5d
	ret nz                                           ; $5d38: $c0

	ld bc, $01a0                                     ; $5d39: $01 $a0 $01
	inc bc                                           ; $5d3c: $03
	ld h, c                                          ; $5d3d: $61
	ret nz                                           ; $5d3e: $c0

	ld bc, $0aa0                                     ; $5d3f: $01 $a0 $0a
	inc bc                                           ; $5d42: $03
	ld l, l                                          ; $5d43: $6d
	ret nz                                           ; $5d44: $c0

	ld bc, $01a0                                     ; $5d45: $01 $a0 $01
	inc bc                                           ; $5d48: $03
	ld a, c                                          ; $5d49: $79
	ret nz                                           ; $5d4a: $c0

	ld bc, $0aa0                                     ; $5d4b: $01 $a0 $0a
	inc bc                                           ; $5d4e: $03
	ld a, h                                          ; $5d4f: $7c
	ld bc, $5dde                                     ; $5d50: $01 $de $5d
	ret nz                                           ; $5d53: $c0

	dec bc                                           ; $5d54: $0b
	db $e3                                           ; $5d55: $e3
	nop                                              ; $5d56: $00
	db $10                                           ; $5d57: $10
	pop bc                                           ; $5d58: $c1
	ld d, l                                          ; $5d59: $55
	pop de                                           ; $5d5a: $d1
	ret nz                                           ; $5d5b: $c0

	nop                                              ; $5d5c: $00
	inc bc                                           ; $5d5d: $03
	adc b                                            ; $5d5e: $88
	pop hl                                           ; $5d5f: $e1
	ld [bc], a                                       ; $5d60: $02
	ld [bc], a                                       ; $5d61: $02
	sbc [hl]                                         ; $5d62: $9e
	ret nz                                           ; $5d63: $c0

	add hl, bc                                       ; $5d64: $09
	db $e3                                           ; $5d65: $e3
	nop                                              ; $5d66: $00
	ld [hl], b                                       ; $5d67: $70
	ret nz                                           ; $5d68: $c0

	ld bc, $0da0                                     ; $5d69: $01 $a0 $0d
	inc bc                                           ; $5d6c: $03
	adc h                                            ; $5d6d: $8c
	ret nz                                           ; $5d6e: $c0

	ld bc, $01a0                                     ; $5d6f: $01 $a0 $01
	inc bc                                           ; $5d72: $03
	adc a                                            ; $5d73: $8f
	add e                                            ; $5d74: $83
	add d                                            ; $5d75: $82
	ld bc, $01a3                                     ; $5d76: $01 $a3 $01
	ret nc                                           ; $5d79: $d0

	ld b, $c0                                        ; $5d7a: $06 $c0
	ld bc, $0da0                                     ; $5d7c: $01 $a0 $0d
	inc bc                                           ; $5d7f: $03
	sub h                                            ; $5d80: $94
	ld bc, $06d1                                     ; $5d81: $01 $d1 $06
	ret nz                                           ; $5d84: $c0

	ld bc, $0da0                                     ; $5d85: $01 $a0 $0d
	inc bc                                           ; $5d88: $03
	sub a                                            ; $5d89: $97
	ld bc, $06d2                                     ; $5d8a: $01 $d2 $06
	ret nz                                           ; $5d8d: $c0

	ld bc, $0da0                                     ; $5d8e: $01 $a0 $0d
	inc bc                                           ; $5d91: $03
	sbc c                                            ; $5d92: $99
	ld bc, $06d3                                     ; $5d93: $01 $d3 $06
	ret nz                                           ; $5d96: $c0

	ld bc, $0da0                                     ; $5d97: $01 $a0 $0d
	inc bc                                           ; $5d9a: $03
	sbc h                                            ; $5d9b: $9c
	ret nz                                           ; $5d9c: $c0

	ld bc, $01a0                                     ; $5d9d: $01 $a0 $01
	inc bc                                           ; $5da0: $03
	sbc [hl]                                         ; $5da1: $9e
	ret nz                                           ; $5da2: $c0

	ld bc, $0da0                                     ; $5da3: $01 $a0 $0d
	inc bc                                           ; $5da6: $03
	and c                                            ; $5da7: $a1
	pop bc                                           ; $5da8: $c1
	ld e, e                                          ; $5da9: $5b
	ret nz                                           ; $5daa: $c0

	ld bc, $01a0                                     ; $5dab: $01 $a0 $01
	inc bc                                           ; $5dae: $03
	and [hl]                                         ; $5daf: $a6
	ld bc, $55df                                     ; $5db0: $01 $df $55
	ret nz                                           ; $5db3: $c0

	add hl, bc                                       ; $5db4: $09
	db $e3                                           ; $5db5: $e3
	nop                                              ; $5db6: $00
	ld d, a                                          ; $5db7: $57
	pop hl                                           ; $5db8: $e1
	ld [bc], a                                       ; $5db9: $02
	ld [bc], a                                       ; $5dba: $02
	or d                                             ; $5dbb: $b2
	ret nz                                           ; $5dbc: $c0

	ld bc, $0ba0                                     ; $5dbd: $01 $a0 $0b
	inc bc                                           ; $5dc0: $03
	or c                                             ; $5dc1: $b1
	ret nz                                           ; $5dc2: $c0

	ld bc, $01a0                                     ; $5dc3: $01 $a0 $01
	inc bc                                           ; $5dc6: $03
	or e                                             ; $5dc7: $b3
	add e                                            ; $5dc8: $83
	add d                                            ; $5dc9: $82
	ld bc, $01a3                                     ; $5dca: $01 $a3 $01
	ret nc                                           ; $5dcd: $d0

	ld b, $c0                                        ; $5dce: $06 $c0
	ld bc, $0ba0                                     ; $5dd0: $01 $a0 $0b
	inc bc                                           ; $5dd3: $03
	cp d                                             ; $5dd4: $ba
	ld bc, $06d1                                     ; $5dd5: $01 $d1 $06
	ret nz                                           ; $5dd8: $c0

	ld bc, $0ba0                                     ; $5dd9: $01 $a0 $0b
	inc bc                                           ; $5ddc: $03
	call nz, wCurrMenuOption                                   ; $5ddd: $c4 $01 $d2
	ld b, $c0                                        ; $5de0: $06 $c0
	ld bc, $0ba0                                     ; $5de2: $01 $a0 $0b
	inc bc                                           ; $5de5: $03
	adc $01                                          ; $5de6: $ce $01
	db $d3                                           ; $5de8: $d3
	ld b, $c0                                        ; $5de9: $06 $c0
	ld bc, $0ba0                                     ; $5deb: $01 $a0 $0b
	inc bc                                           ; $5dee: $03
	ret c                                            ; $5def: $d8

	ret nz                                           ; $5df0: $c0

	ld bc, $01a0                                     ; $5df1: $01 $a0 $01
	inc bc                                           ; $5df4: $03
	ldh [c], a                                       ; $5df5: $e2
	ret nz                                           ; $5df6: $c0

	ld bc, $0ba0                                     ; $5df7: $01 $a0 $0b
	inc bc                                           ; $5dfa: $03
	rst SubAFromBC                                          ; $5dfb: $e7
	ret nz                                           ; $5dfc: $c0

	ld bc, $01a0                                     ; $5dfd: $01 $a0 $01
	inc bc                                           ; $5e00: $03
	pop af                                           ; $5e01: $f1
	ret nz                                           ; $5e02: $c0

	ld bc, $0ba0                                     ; $5e03: $01 $a0 $0b
	inc bc                                           ; $5e06: $03
	ld hl, sp+$02                                    ; $5e07: $f8 $02
	ldh [rAUD1SWEEP], a                              ; $5e09: $e0 $10
	ld c, c                                          ; $5e0b: $49
	ret nz                                           ; $5e0c: $c0

	add hl, bc                                       ; $5e0d: $09
	db $e3                                           ; $5e0e: $e3
	nop                                              ; $5e0f: $00
	ld l, d                                          ; $5e10: $6a
	pop hl                                           ; $5e11: $e1
	ld [bc], a                                       ; $5e12: $02
	ld [bc], a                                       ; $5e13: $02
	call z, $8283                                    ; $5e14: $cc $83 $82
	ld bc, $01a3                                     ; $5e17: $01 $a3 $01
	ret nc                                           ; $5e1a: $d0

	ld b, $c0                                        ; $5e1b: $06 $c0
	ld bc, $07a0                                     ; $5e1d: $01 $a0 $07
	inc bc                                           ; $5e20: $03
	db $fc                                           ; $5e21: $fc
	ld bc, $06d1                                     ; $5e22: $01 $d1 $06
	ret nz                                           ; $5e25: $c0

	ld bc, $07a0                                     ; $5e26: $01 $a0 $07
	inc bc                                           ; $5e29: $03
	rst $38                                          ; $5e2a: $ff
	ld bc, $06d2                                     ; $5e2b: $01 $d2 $06
	ret nz                                           ; $5e2e: $c0

	ld bc, $07a0                                     ; $5e2f: $01 $a0 $07
	inc b                                            ; $5e32: $04
	ld [bc], a                                       ; $5e33: $02
	ld bc, $06d3                                     ; $5e34: $01 $d3 $06
	ret nz                                           ; $5e37: $c0

	ld bc, $07a0                                     ; $5e38: $01 $a0 $07
	inc b                                            ; $5e3b: $04
	dec b                                            ; $5e3c: $05
	ret nz                                           ; $5e3d: $c0

	ld bc, $01a0                                     ; $5e3e: $01 $a0 $01
	inc b                                            ; $5e41: $04
	ld [$01c0], sp                                   ; $5e42: $08 $c0 $01
	and b                                            ; $5e45: $a0
	rlca                                             ; $5e46: $07
	inc b                                            ; $5e47: $04
	dec c                                            ; $5e48: $0d
	ret nz                                           ; $5e49: $c0

	ld bc, $01a0                                     ; $5e4a: $01 $a0 $01
	inc bc                                           ; $5e4d: $03
	ldh [c], a                                       ; $5e4e: $e2

jr_07b_5e4f:
	ret nz                                           ; $5e4f: $c0

	ld bc, $07a0                                     ; $5e50: $01 $a0 $07
	inc b                                            ; $5e53: $04
	add hl, de                                       ; $5e54: $19
	ei                                               ; $5e55: $fb
	cp $0a                                           ; $5e56: $fe $0a
	ei                                               ; $5e58: $fb
	add e                                            ; $5e59: $83
	and b                                            ; $5e5a: $a0
	add h                                            ; $5e5b: $84
	ret nc                                           ; $5e5c: $d0

	ld a, [$a083]                                    ; $5e5d: $fa $83 $a0
	add h                                            ; $5e60: $84
	db $dd                                           ; $5e61: $dd
	inc c                                            ; $5e62: $0c
	ret nz                                           ; $5e63: $c0

	ld bc, $01a0                                     ; $5e64: $01 $a0 $01
	inc b                                            ; $5e67: $04
	daa                                              ; $5e68: $27
	ret nz                                           ; $5e69: $c0

	ld [hl+], a                                      ; $5e6a: $22
	pop de                                           ; $5e6b: $d1
	add e                                            ; $5e6c: $83
	and b                                            ; $5e6d: $a0
	add h                                            ; $5e6e: $84
	ret nz                                           ; $5e6f: $c0

	res 0, c                                         ; $5e70: $cb $81
	add e                                            ; $5e72: $83
	and b                                            ; $5e73: $a0
	add h                                            ; $5e74: $84
	inc bc                                           ; $5e75: $03
	reti                                             ; $5e76: $d9


	jp c, $00de                                      ; $5e77: $da $de $00

	nop                                              ; $5e7a: $00
	ld [bc], a                                       ; $5e7b: $02
	pop bc                                           ; $5e7c: $c1
	ld e, e                                          ; $5e7d: $5b
	pop bc                                           ; $5e7e: $c1
	dec b                                            ; $5e7f: $05
	dec [hl]                                         ; $5e80: $35
	pop bc                                           ; $5e81: $c1
	ld d, e                                          ; $5e82: $53
	ret nz                                           ; $5e83: $c0

	inc d                                            ; $5e84: $14
	db $e3                                           ; $5e85: $e3
	nop                                              ; $5e86: $00
	ld h, b                                          ; $5e87: $60
	ret nz                                           ; $5e88: $c0

	ld bc, $01a0                                     ; $5e89: $01 $a0 $01
	inc b                                            ; $5e8c: $04
	jr nc, jr_07b_5e4f                               ; $5e8d: $30 $c0

	add hl, bc                                       ; $5e8f: $09
	db $e3                                           ; $5e90: $e3
	nop                                              ; $5e91: $00
	ld c, d                                          ; $5e92: $4a
	pop hl                                           ; $5e93: $e1
	ld [bc], a                                       ; $5e94: $02
	nop                                              ; $5e95: $00
	ret nz                                           ; $5e96: $c0

	ret nz                                           ; $5e97: $c0

	ld bc, $02a0                                     ; $5e98: $01 $a0 $02
	inc b                                            ; $5e9b: $04
	jr c, @-$3e                                      ; $5e9c: $38 $c0

	ld bc, $01a0                                     ; $5e9e: $01 $a0 $01
	inc b                                            ; $5ea1: $04
	ld b, c                                          ; $5ea2: $41
	ret nz                                           ; $5ea3: $c0

	ld bc, $01a0                                     ; $5ea4: $01 $a0 $01
	inc b                                            ; $5ea7: $04
	ld c, [hl]                                       ; $5ea8: $4e
	pop bc                                           ; $5ea9: $c1
	ld e, e                                          ; $5eaa: $5b
	ret nc                                           ; $5eab: $d0

	adc a                                            ; $5eac: $8f
	and b                                            ; $5ead: $a0
	inc hl                                           ; $5eae: $23
	rst SubAFromHL                                          ; $5eaf: $d7
	pop bc                                           ; $5eb0: $c1
	dec b                                            ; $5eb1: $05
	pop bc                                           ; $5eb2: $c1
	ld l, e                                          ; $5eb3: $6b
	call nc, $32d0                                   ; $5eb4: $d4 $d0 $32
	pop bc                                           ; $5eb7: $c1
	ld d, e                                          ; $5eb8: $53
	ret nz                                           ; $5eb9: $c0

	inc d                                            ; $5eba: $14
	db $e3                                           ; $5ebb: $e3
	nop                                              ; $5ebc: $00
	inc a                                            ; $5ebd: $3c
	ret nz                                           ; $5ebe: $c0

	add hl, bc                                       ; $5ebf: $09
	db $e3                                           ; $5ec0: $e3
	nop                                              ; $5ec1: $00
	inc bc                                           ; $5ec2: $03
	pop hl                                           ; $5ec3: $e1
	ld [bc], a                                       ; $5ec4: $02
	ld bc, $c0e0                                     ; $5ec5: $01 $e0 $c0
	ld bc, $01a0                                     ; $5ec8: $01 $a0 $01
	inc b                                            ; $5ecb: $04
	ld h, e                                          ; $5ecc: $63
	ret nz                                           ; $5ecd: $c0

	ld bc, $08a0                                     ; $5ece: $01 $a0 $08
	inc b                                            ; $5ed1: $04
	ld h, [hl]                                       ; $5ed2: $66
	ret nz                                           ; $5ed3: $c0

	ld bc, $01a0                                     ; $5ed4: $01 $a0 $01
	inc b                                            ; $5ed7: $04
	ld l, a                                          ; $5ed8: $6f
	ret nz                                           ; $5ed9: $c0

	ld bc, $08a0                                     ; $5eda: $01 $a0 $08
	inc b                                            ; $5edd: $04
	ld a, c                                          ; $5ede: $79
	pop bc                                           ; $5edf: $c1
	ld e, e                                          ; $5ee0: $5b
	ret nz                                           ; $5ee1: $c0

	ld bc, $01a0                                     ; $5ee2: $01 $a0 $01
	inc b                                            ; $5ee5: $04
	add b                                            ; $5ee6: $80
	pop bc                                           ; $5ee7: $c1
	dec b                                            ; $5ee8: $05
	inc [hl]                                         ; $5ee9: $34
	ld h, b                                          ; $5eea: $60
	rst $38                                          ; $5eeb: $ff
	add hl, bc                                       ; $5eec: $09
	add b                                            ; $5eed: $80
	nop                                              ; $5eee: $00
	or d                                             ; $5eef: $b2
	add b                                            ; $5ef0: $80
	nop                                              ; $5ef1: $00
	or c                                             ; $5ef2: $b1
	add b                                            ; $5ef3: $80
	nop                                              ; $5ef4: $00
	or b                                             ; $5ef5: $b0
	ld de, $c080                                     ; $5ef6: $11 $80 $c0
	ld h, l                                          ; $5ef9: $65
	ld [$d2d1], sp                                   ; $5efa: $08 $d1 $d2
	db $d3                                           ; $5efd: $d3
	call nc, $dad5                                   ; $5efe: $d4 $d5 $da
	db $db                                           ; $5f01: $db
	call c, $e504                                    ; $5f02: $dc $04 $e5
	ld c, c                                          ; $5f05: $49
	nop                                              ; $5f06: $00
	nop                                              ; $5f07: $00
	dec d                                            ; $5f08: $15
	ld h, b                                          ; $5f09: $60
	cp $08                                           ; $5f0a: $fe $08
	db $fc                                           ; $5f0c: $fc
	ret nz                                           ; $5f0d: $c0

	ld h, h                                          ; $5f0e: $64
	ret nc                                           ; $5f0f: $d0

	ei                                               ; $5f10: $fb
	ret nz                                           ; $5f11: $c0

	ld h, l                                          ; $5f12: $65
	jp nc, $e504                                     ; $5f13: $d2 $04 $e5

	ld c, b                                          ; $5f16: $48
	nop                                              ; $5f17: $00
	nop                                              ; $5f18: $00
	inc b                                            ; $5f19: $04
	push hl                                          ; $5f1a: $e5
	ld c, d                                          ; $5f1b: $4a
	nop                                              ; $5f1c: $00
	nop                                              ; $5f1d: $00
	add hl, bc                                       ; $5f1e: $09
	ei                                               ; $5f1f: $fb
	db $fd                                           ; $5f20: $fd
	ret nz                                           ; $5f21: $c0

	add b                                            ; $5f22: $80
	db $d3                                           ; $5f23: $d3
	inc bc                                           ; $5f24: $03
	ldh [rP1], a                                     ; $5f25: $e0 $00
	ld [bc], a                                       ; $5f27: $02
	dec a                                            ; $5f28: $3d
	db $fd                                           ; $5f29: $fd
	dec sp                                           ; $5f2a: $3b
	adc e                                            ; $5f2b: $8b
	ld bc, $0253                                     ; $5f2c: $01 $53 $02
	or b                                             ; $5f2f: $b0
	ld hl, $e003                                     ; $5f30: $21 $03 $e0
	nop                                              ; $5f33: $00
	inc sp                                           ; $5f34: $33
	ld [bc], a                                       ; $5f35: $02
	or b                                             ; $5f36: $b0
	ld [hl+], a                                      ; $5f37: $22
	inc bc                                           ; $5f38: $03
	ldh [rP1], a                                     ; $5f39: $e0 $00
	ld a, [hl]                                       ; $5f3b: $7e
	ld [bc], a                                       ; $5f3c: $02
	or b                                             ; $5f3d: $b0
	inc hl                                           ; $5f3e: $23
	inc bc                                           ; $5f3f: $03
	ldh [rP1], a                                     ; $5f40: $e0 $00
	ret                                              ; $5f42: $c9


	ld [bc], a                                       ; $5f43: $02
	or b                                             ; $5f44: $b0
	inc h                                            ; $5f45: $24
	inc bc                                           ; $5f46: $03
	ldh [rSB], a                                     ; $5f47: $e0 $01
	inc d                                            ; $5f49: $14
	ld [bc], a                                       ; $5f4a: $02
	or b                                             ; $5f4b: $b0
	dec h                                            ; $5f4c: $25
	inc bc                                           ; $5f4d: $03
	ldh [rSB], a                                     ; $5f4e: $e0 $01
	sub a                                            ; $5f50: $97
	ld [bc], a                                       ; $5f51: $02
	or b                                             ; $5f52: $b0
	ld h, $03                                        ; $5f53: $26 $03
	ldh [rSB], a                                     ; $5f55: $e0 $01
	or b                                             ; $5f57: $b0
	ld [bc], a                                       ; $5f58: $02
	or b                                             ; $5f59: $b0
	daa                                              ; $5f5a: $27
	inc bc                                           ; $5f5b: $03
	ldh [rSB], a                                     ; $5f5c: $e0 $01
	ei                                               ; $5f5e: $fb
	ld [bc], a                                       ; $5f5f: $02
	or b                                             ; $5f60: $b0
	jr z, @+$05                                      ; $5f61: $28 $03

	ldh [rSB], a                                     ; $5f63: $e0 $01
	ld hl, sp+$43                                    ; $5f65: $f8 $43
	ld h, c                                          ; $5f67: $61
	cp $0f                                           ; $5f68: $fe $0f
	pop af                                           ; $5f6a: $f1
	add b                                            ; $5f6b: $80
	nop                                              ; $5f6c: $00
	ld l, l                                          ; $5f6d: $6d
	ei                                               ; $5f6e: $fb
	ret nz                                           ; $5f6f: $c0

	add e                                            ; $5f70: $83
	pop de                                           ; $5f71: $d1
	ldh [rHDMA5], a                                  ; $5f72: $e0 $55
	ei                                               ; $5f74: $fb
	add c                                            ; $5f75: $81
	ld bc, $d2a6                                     ; $5f76: $01 $a6 $d2
	dec c                                            ; $5f79: $0d
	ret nc                                           ; $5f7a: $d0

	adc a                                            ; $5f7b: $8f
	and b                                            ; $5f7c: $a0
	ccf                                              ; $5f7d: $3f
	or $c0                                           ; $5f7e: $f6 $c0
	add e                                            ; $5f80: $83
	pop de                                           ; $5f81: $d1
	ldh [rHDMA5], a                                  ; $5f82: $e0 $55
	ldh [rP1], a                                     ; $5f84: $e0 $00
	dec h                                            ; $5f86: $25
	cp $0f                                           ; $5f87: $fe $0f
	pop af                                           ; $5f89: $f1
	add b                                            ; $5f8a: $80
	nop                                              ; $5f8b: $00
	ld l, l                                          ; $5f8c: $6d
	ei                                               ; $5f8d: $fb
	ret nz                                           ; $5f8e: $c0

	add e                                            ; $5f8f: $83
	pop de                                           ; $5f90: $d1
	ldh [$3c], a                                     ; $5f91: $e0 $3c
	ld hl, sp-$7f                                    ; $5f93: $f8 $81
	ld bc, $d2a6                                     ; $5f95: $01 $a6 $d2
	dec c                                            ; $5f98: $0d
	ret nc                                           ; $5f99: $d0

	adc a                                            ; $5f9a: $8f
	and b                                            ; $5f9b: $a0
	ccf                                              ; $5f9c: $3f
	or $c0                                           ; $5f9d: $f6 $c0
	add e                                            ; $5f9f: $83
	pop de                                           ; $5fa0: $d1
	ldh [$3c], a                                     ; $5fa1: $e0 $3c
	ldh [rP1], a                                     ; $5fa3: $e0 $00
	ld b, $03                                        ; $5fa5: $06 $03
	ldh [rSC], a                                     ; $5fa7: $e0 $02
	inc c                                            ; $5fa9: $0c
	dec c                                            ; $5faa: $0d
	ei                                               ; $5fab: $fb
	db $fc                                           ; $5fac: $fc
	pop bc                                           ; $5fad: $c1
	inc hl                                           ; $5fae: $23
	adc a                                            ; $5faf: $8f
	and b                                            ; $5fb0: $a0
	ccf                                              ; $5fb1: $3f
	ret nc                                           ; $5fb2: $d0

	inc b                                            ; $5fb3: $04
	push hl                                          ; $5fb4: $e5
	dec bc                                           ; $5fb5: $0b
	nop                                              ; $5fb6: $00
	nop                                              ; $5fb7: $00
	ld b, e                                          ; $5fb8: $43
	ld h, c                                          ; $5fb9: $61
	cp $0f                                           ; $5fba: $fe $0f
	pop af                                           ; $5fbc: $f1
	add b                                            ; $5fbd: $80
	nop                                              ; $5fbe: $00
	ld l, a                                          ; $5fbf: $6f
	ei                                               ; $5fc0: $fb
	ret nz                                           ; $5fc1: $c0

	add e                                            ; $5fc2: $83
	jp nc, $55e0                                     ; $5fc3: $d2 $e0 $55

	ei                                               ; $5fc6: $fb
	add c                                            ; $5fc7: $81
	ld bc, $d2a6                                     ; $5fc8: $01 $a6 $d2
	dec c                                            ; $5fcb: $0d
	ret nc                                           ; $5fcc: $d0

	adc a                                            ; $5fcd: $8f
	and b                                            ; $5fce: $a0
	ccf                                              ; $5fcf: $3f
	or $c0                                           ; $5fd0: $f6 $c0
	add e                                            ; $5fd2: $83
	jp nc, $55e0                                     ; $5fd3: $d2 $e0 $55

	ldh [rP1], a                                     ; $5fd6: $e0 $00
	dec h                                            ; $5fd8: $25
	cp $0f                                           ; $5fd9: $fe $0f
	pop af                                           ; $5fdb: $f1
	add b                                            ; $5fdc: $80
	nop                                              ; $5fdd: $00
	ld l, a                                          ; $5fde: $6f
	ei                                               ; $5fdf: $fb
	ret nz                                           ; $5fe0: $c0

	add e                                            ; $5fe1: $83
	jp nc, $3ce0                                     ; $5fe2: $d2 $e0 $3c

	ld hl, sp-$7f                                    ; $5fe5: $f8 $81
	ld bc, $d2a6                                     ; $5fe7: $01 $a6 $d2
	dec c                                            ; $5fea: $0d
	ret nc                                           ; $5feb: $d0

	adc a                                            ; $5fec: $8f
	and b                                            ; $5fed: $a0
	ccf                                              ; $5fee: $3f
	or $c0                                           ; $5fef: $f6 $c0
	add e                                            ; $5ff1: $83
	jp nc, $3ce0                                     ; $5ff2: $d2 $e0 $3c

	ldh [rP1], a                                     ; $5ff5: $e0 $00
	ld b, $03                                        ; $5ff7: $06 $03
	ldh [rSB], a                                     ; $5ff9: $e0 $01
	cp d                                             ; $5ffb: $ba
	dec c                                            ; $5ffc: $0d
	ei                                               ; $5ffd: $fb
	db $fc                                           ; $5ffe: $fc
	pop bc                                           ; $5fff: $c1
	inc hl                                           ; $6000: $23
	adc a                                            ; $6001: $8f
	and b                                            ; $6002: $a0
	ccf                                              ; $6003: $3f
	ret nc                                           ; $6004: $d0

	inc b                                            ; $6005: $04
	push hl                                          ; $6006: $e5
	rlca                                             ; $6007: $07
	nop                                              ; $6008: $00
	nop                                              ; $6009: $00
	ld b, e                                          ; $600a: $43
	ld h, c                                          ; $600b: $61
	cp $0f                                           ; $600c: $fe $0f
	pop af                                           ; $600e: $f1
	add b                                            ; $600f: $80
	nop                                              ; $6010: $00

Jump_07b_6011:
	ld [hl], b                                       ; $6011: $70
	ei                                               ; $6012: $fb
	ret nz                                           ; $6013: $c0

	add e                                            ; $6014: $83
	db $d3                                           ; $6015: $d3
	ldh [rSTAT], a                                   ; $6016: $e0 $41
	ei                                               ; $6018: $fb
	add c                                            ; $6019: $81
	ld bc, $d2a6                                     ; $601a: $01 $a6 $d2
	dec c                                            ; $601d: $0d
	ret nc                                           ; $601e: $d0

	adc a                                            ; $601f: $8f
	and b                                            ; $6020: $a0
	ccf                                              ; $6021: $3f
	or $c0                                           ; $6022: $f6 $c0
	add e                                            ; $6024: $83
	db $d3                                           ; $6025: $d3
	ldh [rSTAT], a                                   ; $6026: $e0 $41
	ldh [rP1], a                                     ; $6028: $e0 $00
	dec h                                            ; $602a: $25
	cp $0f                                           ; $602b: $fe $0f
	pop af                                           ; $602d: $f1
	add b                                            ; $602e: $80
	nop                                              ; $602f: $00
	ld [hl], b                                       ; $6030: $70
	ei                                               ; $6031: $fb
	ret nz                                           ; $6032: $c0

	add e                                            ; $6033: $83
	db $d3                                           ; $6034: $d3
	ldh [$32], a                                     ; $6035: $e0 $32
	ld hl, sp-$7f                                    ; $6037: $f8 $81
	ld bc, $d2a6                                     ; $6039: $01 $a6 $d2
	dec c                                            ; $603c: $0d
	ret nc                                           ; $603d: $d0

	adc a                                            ; $603e: $8f
	and b                                            ; $603f: $a0
	ccf                                              ; $6040: $3f
	or $c0                                           ; $6041: $f6 $c0
	add e                                            ; $6043: $83
	db $d3                                           ; $6044: $d3
	ldh [$32], a                                     ; $6045: $e0 $32
	ldh [rP1], a                                     ; $6047: $e0 $00
	ld b, $03                                        ; $6049: $06 $03
	ldh [rSB], a                                     ; $604b: $e0 $01
	ld l, b                                          ; $604d: $68
	dec c                                            ; $604e: $0d
	ei                                               ; $604f: $fb
	db $fc                                           ; $6050: $fc
	pop bc                                           ; $6051: $c1
	inc hl                                           ; $6052: $23
	adc a                                            ; $6053: $8f
	and b                                            ; $6054: $a0
	ccf                                              ; $6055: $3f
	ret nc                                           ; $6056: $d0

	inc b                                            ; $6057: $04
	push hl                                          ; $6058: $e5
	ld a, [bc]                                       ; $6059: $0a
	nop                                              ; $605a: $00
	nop                                              ; $605b: $00
	ld a, e                                          ; $605c: $7b
	ld h, c                                          ; $605d: $61
	cp $15                                           ; $605e: $fe $15
	ei                                               ; $6060: $fb
	ret nz                                           ; $6061: $c0

	add e                                            ; $6062: $83
	call nc, Call_07b_46e0                           ; $6063: $d4 $e0 $46
	ei                                               ; $6066: $fb
	ret nz                                           ; $6067: $c0

	add e                                            ; $6068: $83
	rst SubAFromHL                                          ; $6069: $d7
	ldh [rDMA], a                                    ; $606a: $e0 $46
	ei                                               ; $606c: $fb
	add c                                            ; $606d: $81
	ld bc, $d2a6                                     ; $606e: $01 $a6 $d2
	pop af                                           ; $6071: $f1
	add b                                            ; $6072: $80
	nop                                              ; $6073: $00
	ld a, l                                          ; $6074: $7d
	inc hl                                           ; $6075: $23
	ld h, b                                          ; $6076: $60
	ld sp, hl                                        ; $6077: $f9
	ret nz                                           ; $6078: $c0

	add e                                            ; $6079: $83
	call nc, $83c0                                   ; $607a: $d4 $c0 $83
	rst SubAFromHL                                          ; $607d: $d7
	dec b                                            ; $607e: $05
	ret nc                                           ; $607f: $d0

	add d                                            ; $6080: $82
	and b                                            ; $6081: $a0
	ld c, a                                          ; $6082: $4f
	call nc, $d005                                   ; $6083: $d4 $05 $d0
	add d                                            ; $6086: $82
	and b                                            ; $6087: $a0
	ld c, a                                          ; $6088: $4f
	rst SubAFromHL                                          ; $6089: $d7
	ret nc                                           ; $608a: $d0

	adc a                                            ; $608b: $8f
	and b                                            ; $608c: $a0
	ccf                                              ; $608d: $3f
	or $c0                                           ; $608e: $f6 $c0
	add e                                            ; $6090: $83
	add d                                            ; $6091: $82
	and b                                            ; $6092: $a0
	ld c, a                                          ; $6093: $4f
	ldh [rDMA], a                                    ; $6094: $e0 $46
	ldh [rP1], a                                     ; $6096: $e0 $00
	ld b, c                                          ; $6098: $41
	cp $15                                           ; $6099: $fe $15
	ei                                               ; $609b: $fb
	ret nz                                           ; $609c: $c0

	add e                                            ; $609d: $83
	call nc, $28e0                                   ; $609e: $d4 $e0 $28
	ei                                               ; $60a1: $fb
	ret nz                                           ; $60a2: $c0

	add e                                            ; $60a3: $83
	rst SubAFromHL                                          ; $60a4: $d7
	ldh [$28], a                                     ; $60a5: $e0 $28
	ld hl, sp-$7f                                    ; $60a7: $f8 $81
	ld bc, $d2a6                                     ; $60a9: $01 $a6 $d2
	pop af                                           ; $60ac: $f1
	add b                                            ; $60ad: $80
	nop                                              ; $60ae: $00
	ld a, l                                          ; $60af: $7d
	inc hl                                           ; $60b0: $23
	ld h, b                                          ; $60b1: $60
	ld sp, hl                                        ; $60b2: $f9
	ret nz                                           ; $60b3: $c0

	add e                                            ; $60b4: $83
	call nc, $83c0                                   ; $60b5: $d4 $c0 $83
	rst SubAFromHL                                          ; $60b8: $d7
	dec b                                            ; $60b9: $05
	ret nc                                           ; $60ba: $d0

	add d                                            ; $60bb: $82
	and b                                            ; $60bc: $a0
	ld c, a                                          ; $60bd: $4f
	call nc, $d005                                   ; $60be: $d4 $05 $d0
	add d                                            ; $60c1: $82
	and b                                            ; $60c2: $a0
	ld c, a                                          ; $60c3: $4f
	rst SubAFromHL                                          ; $60c4: $d7
	ret nc                                           ; $60c5: $d0

	adc a                                            ; $60c6: $8f
	and b                                            ; $60c7: $a0
	ccf                                              ; $60c8: $3f
	or $c0                                           ; $60c9: $f6 $c0
	add e                                            ; $60cb: $83
	add d                                            ; $60cc: $82
	and b                                            ; $60cd: $a0
	ld c, a                                          ; $60ce: $4f
	ldh [$28], a                                     ; $60cf: $e0 $28
	ldh [rP1], a                                     ; $60d1: $e0 $00
	ld b, $03                                        ; $60d3: $06 $03
	ldh [rP1], a                                     ; $60d5: $e0 $00
	sbc $0d                                          ; $60d7: $de $0d
	ei                                               ; $60d9: $fb
	db $fc                                           ; $60da: $fc
	pop bc                                           ; $60db: $c1
	inc hl                                           ; $60dc: $23
	adc a                                            ; $60dd: $8f
	and b                                            ; $60de: $a0
	ccf                                              ; $60df: $3f
	ret nc                                           ; $60e0: $d0

	inc b                                            ; $60e1: $04
	push hl                                          ; $60e2: $e5
	ld [rRAMG], sp                                   ; $60e3: $08 $00 $00
	rra                                              ; $60e6: $1f
	ld h, b                                          ; $60e7: $60
	cp $0d                                           ; $60e8: $fe $0d
	pop af                                           ; $60ea: $f1
	add b                                            ; $60eb: $80
	nop                                              ; $60ec: $00
	adc l                                            ; $60ed: $8d
	ei                                               ; $60ee: $fb
	ret nz                                           ; $60ef: $c0

	add e                                            ; $60f0: $83
	push de                                          ; $60f1: $d5
	ldh [$5a], a                                     ; $60f2: $e0 $5a
	add b                                            ; $60f4: $80
	ld bc, $0aa8                                     ; $60f5: $01 $a8 $0a
	ei                                               ; $60f8: $fb
	db $fc                                           ; $60f9: $fc
	pop bc                                           ; $60fa: $c1
	inc h                                            ; $60fb: $24
	ret nc                                           ; $60fc: $d0

	inc b                                            ; $60fd: $04
	push hl                                          ; $60fe: $e5
	ld b, $00                                        ; $60ff: $06 $00
	db $fd                                           ; $6101: $fd
	inc bc                                           ; $6102: $03
	ldh [rP1], a                                     ; $6103: $e0 $00
	or b                                             ; $6105: $b0
	ld b, e                                          ; $6106: $43
	ld h, c                                          ; $6107: $61
	cp $0f                                           ; $6108: $fe $0f
	pop af                                           ; $610a: $f1
	add b                                            ; $610b: $80
	nop                                              ; $610c: $00
	adc h                                            ; $610d: $8c
	ei                                               ; $610e: $fb
	ret nz                                           ; $610f: $c0

	add e                                            ; $6110: $83
	sub $e0                                          ; $6111: $d6 $e0
	ld a, l                                          ; $6113: $7d
	ei                                               ; $6114: $fb
	add c                                            ; $6115: $81
	ld bc, $d2a6                                     ; $6116: $01 $a6 $d2

Jump_07b_6119:
	dec c                                            ; $6119: $0d
	ret nc                                           ; $611a: $d0

	adc a                                            ; $611b: $8f
	and b                                            ; $611c: $a0
	ccf                                              ; $611d: $3f
	or $c0                                           ; $611e: $f6 $c0
	add e                                            ; $6120: $83
	sub $e0                                          ; $6121: $d6 $e0
	ld a, l                                          ; $6123: $7d
	ldh [rP1], a                                     ; $6124: $e0 $00
	dec h                                            ; $6126: $25
	cp $0f                                           ; $6127: $fe $0f
	pop af                                           ; $6129: $f1
	add b                                            ; $612a: $80
	nop                                              ; $612b: $00
	adc h                                            ; $612c: $8c
	ei                                               ; $612d: $fb
	ret nz                                           ; $612e: $c0

	add e                                            ; $612f: $83
	sub $e0                                          ; $6130: $d6 $e0
	ld h, h                                          ; $6132: $64
	ld hl, sp-$7f                                    ; $6133: $f8 $81
	ld bc, $d2a6                                     ; $6135: $01 $a6 $d2
	dec c                                            ; $6138: $0d
	ret nc                                           ; $6139: $d0

	adc a                                            ; $613a: $8f
	and b                                            ; $613b: $a0
	ccf                                              ; $613c: $3f
	or $c0                                           ; $613d: $f6 $c0
	add e                                            ; $613f: $83
	sub $e0                                          ; $6140: $d6 $e0
	ld h, h                                          ; $6142: $64
	ldh [rP1], a                                     ; $6143: $e0 $00
	ld b, $03                                        ; $6145: $06 $03
	ldh [rP1], a                                     ; $6147: $e0 $00
	ld l, h                                          ; $6149: $6c
	dec c                                            ; $614a: $0d
	ei                                               ; $614b: $fb
	db $fc                                           ; $614c: $fc
	pop bc                                           ; $614d: $c1
	inc hl                                           ; $614e: $23
	adc a                                            ; $614f: $8f
	and b                                            ; $6150: $a0
	ccf                                              ; $6151: $3f
	ret nc                                           ; $6152: $d0

	inc b                                            ; $6153: $04
	push hl                                          ; $6154: $e5
	add hl, bc                                       ; $6155: $09
	nop                                              ; $6156: $00
	nop                                              ; $6157: $00
	inc bc                                           ; $6158: $03
	ldh [rP1], a                                     ; $6159: $e0 $00
	ld e, d                                          ; $615b: $5a
	ld d, a                                          ; $615c: $57
	add e                                            ; $615d: $83
	adc e                                            ; $615e: $8b
	nop                                              ; $615f: $00
	nop                                              ; $6160: $00
	ld [bc], a                                       ; $6161: $02
	or b                                             ; $6162: $b0
	rrca                                             ; $6163: $0f
	ld d, $fb                                        ; $6164: $16 $fb
	cp $09                                           ; $6166: $fe $09
	pop af                                           ; $6168: $f1
	add b                                            ; $6169: $80
	nop                                              ; $616a: $00
	ld l, l                                          ; $616b: $6d
	ei                                               ; $616c: $fb
	ret nz                                           ; $616d: $c0

	ld b, a                                          ; $616e: $47
	ldh [rAUD1HIGH], a                               ; $616f: $e0 $14
	add hl, bc                                       ; $6171: $09
	or b                                             ; $6172: $b0
	rst SubAFromDE                                          ; $6173: $df
	nop                                              ; $6174: $00
	rst $38                                          ; $6175: $ff
	inc b                                            ; $6176: $04
	push hl                                          ; $6177: $e5
	dec bc                                           ; $6178: $0b
	nop                                              ; $6179: $00
	ldh a, [c]                                       ; $617a: $f2
	ld [bc], a                                       ; $617b: $02
	or b                                             ; $617c: $b0
	db $10                                           ; $617d: $10
	ld d, $fb                                        ; $617e: $16 $fb
	cp $09                                           ; $6180: $fe $09
	pop af                                           ; $6182: $f1
	add b                                            ; $6183: $80
	nop                                              ; $6184: $00
	ld [hl], b                                       ; $6185: $70
	ei                                               ; $6186: $fb
	ret nz                                           ; $6187: $c0

	ld b, a                                          ; $6188: $47
	ldh [rAUD1HIGH], a                               ; $6189: $e0 $14
	add hl, bc                                       ; $618b: $09
	or b                                             ; $618c: $b0
	rst SubAFromDE                                          ; $618d: $df
	nop                                              ; $618e: $00
	rst $38                                          ; $618f: $ff
	inc b                                            ; $6190: $04
	push hl                                          ; $6191: $e5
	ld a, [bc]                                       ; $6192: $0a
	ld bc, $0231                                     ; $6193: $01 $31 $02
	or b                                             ; $6196: $b0
	ld c, $16                                        ; $6197: $0e $16
	ei                                               ; $6199: $fb
	cp $09                                           ; $619a: $fe $09
	pop af                                           ; $619c: $f1
	add b                                            ; $619d: $80
	nop                                              ; $619e: $00
	ld l, a                                          ; $619f: $6f
	ei                                               ; $61a0: $fb
	ret nz                                           ; $61a1: $c0

	ld b, a                                          ; $61a2: $47
	ldh [rAUD1HIGH], a                               ; $61a3: $e0 $14
	add hl, bc                                       ; $61a5: $09
	or b                                             ; $61a6: $b0
	rst SubAFromDE                                          ; $61a7: $df
	nop                                              ; $61a8: $00
	rst $38                                          ; $61a9: $ff
	inc b                                            ; $61aa: $04
	push hl                                          ; $61ab: $e5
	rlca                                             ; $61ac: $07
	inc bc                                           ; $61ad: $03
	ld h, $00                                        ; $61ae: $26 $00
	inc bc                                           ; $61b0: $03
	ldh [rP1], a                                     ; $61b1: $e0 $00
	ld [bc], a                                       ; $61b3: $02
	ld h, c                                          ; $61b4: $61
	ei                                               ; $61b5: $fb
	pop af                                           ; $61b6: $f1
	rst $38                                          ; $61b7: $ff
	ld b, $80                                        ; $61b8: $06 $80
	nop                                              ; $61ba: $00
	adc l                                            ; $61bb: $8d
	add b                                            ; $61bc: $80
	ld bc, $56a8                                     ; $61bd: $01 $a8 $56
	ld h, d                                          ; $61c0: $62
	cp $0f                                           ; $61c1: $fe $0f
	pop af                                           ; $61c3: $f1
	add b                                            ; $61c4: $80
	ld bc, $fba9                                     ; $61c5: $01 $a9 $fb
	ret nz                                           ; $61c8: $c0

	add e                                            ; $61c9: $83
	push de                                          ; $61ca: $d5
	ldh [rWX], a                                     ; $61cb: $e0 $4b
	db $fc                                           ; $61cd: $fc
	add c                                            ; $61ce: $81
	ld bc, $d2aa                                     ; $61cf: $01 $aa $d2
	ld a, [bc]                                       ; $61d2: $0a
	ei                                               ; $61d3: $fb
	db $fc                                           ; $61d4: $fc
	pop bc                                           ; $61d5: $c1
	dec h                                            ; $61d6: $25
	ret nc                                           ; $61d7: $d0

	inc b                                            ; $61d8: $04
	push hl                                          ; $61d9: $e5
	ld b, $00                                        ; $61da: $06 $00
	xor h                                            ; $61dc: $ac
	cp $0f                                           ; $61dd: $fe $0f
	pop af                                           ; $61df: $f1
	add b                                            ; $61e0: $80
	ld bc, $fba9                                     ; $61e1: $01 $a9 $fb
	ret nz                                           ; $61e4: $c0

	add e                                            ; $61e5: $83
	push de                                          ; $61e6: $d5
	ldh [$37], a                                     ; $61e7: $e0 $37
	db $fc                                           ; $61e9: $fc
	add c                                            ; $61ea: $81
	ld bc, $d1aa                                     ; $61eb: $01 $aa $d1
	ld a, [bc]                                       ; $61ee: $0a
	ei                                               ; $61ef: $fb
	db $fc                                           ; $61f0: $fc
	pop bc                                           ; $61f1: $c1
	dec h                                            ; $61f2: $25
	ret nc                                           ; $61f3: $d0

	inc b                                            ; $61f4: $04
	push hl                                          ; $61f5: $e5
	ld b, $00                                        ; $61f6: $06 $00
	ld d, [hl]                                       ; $61f8: $56
	cp $0f                                           ; $61f9: $fe $0f
	pop af                                           ; $61fb: $f1
	add b                                            ; $61fc: $80
	ld bc, $fba9                                     ; $61fd: $01 $a9 $fb
	ret nz                                           ; $6200: $c0

	add e                                            ; $6201: $83
	push de                                          ; $6202: $d5
	ldh [rAUD4GO], a                                 ; $6203: $e0 $23
	db $fc                                           ; $6205: $fc
	add c                                            ; $6206: $81
	ld bc, $d0aa                                     ; $6207: $01 $aa $d0
	ld a, [bc]                                       ; $620a: $0a
	ei                                               ; $620b: $fb
	db $fc                                           ; $620c: $fc
	pop bc                                           ; $620d: $c1
	dec h                                            ; $620e: $25
	ret nc                                           ; $620f: $d0

	inc b                                            ; $6210: $04
	push hl                                          ; $6211: $e5
	ld b, $00                                        ; $6212: $06 $00
	nop                                              ; $6214: $00
	nop                                              ; $6215: $00
	pop bc                                           ; $6216: $c1
	ld l, $fd                                        ; $6217: $2e $fd
	pop bc                                           ; $6219: $c1
	dec hl                                           ; $621a: $2b
	ret nz                                           ; $621b: $c0

	ld h, a                                          ; $621c: $67
	ld bc, $24d1                                     ; $621d: $01 $d1 $24
	pop bc                                           ; $6220: $c1
	call z, $b0c1                                    ; $6221: $cc $c1 $b0
	pop de                                           ; $6224: $d1
	jp c, $c0d0                                      ; $6225: $da $d0 $c0

	nop                                              ; $6228: $00
	inc b                                            ; $6229: $04
	sub b                                            ; $622a: $90
	ret nz                                           ; $622b: $c0

	ld bc, $01a0                                     ; $622c: $01 $a0 $01
	inc b                                            ; $622f: $04
	sub d                                            ; $6230: $92
	pop bc                                           ; $6231: $c1
	or b                                             ; $6232: $b0
	ret nc                                           ; $6233: $d0

	ret nc                                           ; $6234: $d0

	ret nc                                           ; $6235: $d0

	ret nc                                           ; $6236: $d0

	add [hl]                                         ; $6237: $86
	and b                                            ; $6238: $a0
	ld d, d                                          ; $6239: $52
	ret nz                                           ; $623a: $c0

	adc h                                            ; $623b: $8c
	ldh [rSB], a                                     ; $623c: $e0 $01
	add $e0                                          ; $623e: $c6 $e0
	ld bc, $c0d3                                     ; $6240: $01 $d3 $c0
	cp d                                             ; $6243: $ba
	ld bc, $1ed2                                     ; $6244: $01 $d2 $1e
	pop bc                                           ; $6247: $c1
	or b                                             ; $6248: $b0
	pop de                                           ; $6249: $d1
	jp c, $c0d0                                      ; $624a: $da $d0 $c0

	ld bc, $01a0                                     ; $624d: $01 $a0 $01
	inc b                                            ; $6250: $04
	sbc b                                            ; $6251: $98
	pop bc                                           ; $6252: $c1
	or b                                             ; $6253: $b0
	ret nc                                           ; $6254: $d0

	ret nc                                           ; $6255: $d0

	ret nc                                           ; $6256: $d0

	ret nc                                           ; $6257: $d0

	add [hl]                                         ; $6258: $86
	and b                                            ; $6259: $a0
	ld d, d                                          ; $625a: $52
	ret nz                                           ; $625b: $c0

	adc l                                            ; $625c: $8d
	ldh [rSB], a                                     ; $625d: $e0 $01
	and l                                            ; $625f: $a5
	ldh [rSB], a                                     ; $6260: $e0 $01
	or d                                             ; $6262: $b2
	ret nz                                           ; $6263: $c0

	cp d                                             ; $6264: $ba
	ld bc, $1ed3                                     ; $6265: $01 $d3 $1e
	pop bc                                           ; $6268: $c1
	or b                                             ; $6269: $b0
	pop de                                           ; $626a: $d1
	jp c, $c0d0                                      ; $626b: $da $d0 $c0

	ld bc, $01a0                                     ; $626e: $01 $a0 $01
	inc b                                            ; $6271: $04
	sbc a                                            ; $6272: $9f
	pop bc                                           ; $6273: $c1
	or b                                             ; $6274: $b0
	ret nc                                           ; $6275: $d0

	ret nc                                           ; $6276: $d0

	ret nc                                           ; $6277: $d0

	ret nc                                           ; $6278: $d0

	add [hl]                                         ; $6279: $86
	and b                                            ; $627a: $a0
	ld d, d                                          ; $627b: $52
	ret nz                                           ; $627c: $c0

	adc [hl]                                         ; $627d: $8e
	ldh [rSB], a                                     ; $627e: $e0 $01
	add h                                            ; $6280: $84
	ldh [rSB], a                                     ; $6281: $e0 $01
	sub c                                            ; $6283: $91
	ret nz                                           ; $6284: $c0

	cp d                                             ; $6285: $ba
	ld bc, $1ed4                                     ; $6286: $01 $d4 $1e
	pop bc                                           ; $6289: $c1
	or b                                             ; $628a: $b0
	pop de                                           ; $628b: $d1
	jp c, $c0d0                                      ; $628c: $da $d0 $c0

	ld bc, $01a0                                     ; $628f: $01 $a0 $01
	inc b                                            ; $6292: $04
	and [hl]                                         ; $6293: $a6
	pop bc                                           ; $6294: $c1
	or b                                             ; $6295: $b0
	ret nc                                           ; $6296: $d0

	ret nc                                           ; $6297: $d0

	ret nc                                           ; $6298: $d0

	ret nc                                           ; $6299: $d0

	add [hl]                                         ; $629a: $86
	and b                                            ; $629b: $a0
	ld d, d                                          ; $629c: $52
	ret nz                                           ; $629d: $c0

	adc a                                            ; $629e: $8f
	ldh [rSB], a                                     ; $629f: $e0 $01
	ld h, e                                          ; $62a1: $63
	ldh [rSB], a                                     ; $62a2: $e0 $01
	ld [hl], b                                       ; $62a4: $70
	ret nz                                           ; $62a5: $c0

	cp d                                             ; $62a6: $ba
	ld bc, $1ed5                                     ; $62a7: $01 $d5 $1e
	pop bc                                           ; $62aa: $c1
	or b                                             ; $62ab: $b0
	pop de                                           ; $62ac: $d1
	jp c, $c0d0                                      ; $62ad: $da $d0 $c0

	ld bc, $01a0                                     ; $62b0: $01 $a0 $01
	inc b                                            ; $62b3: $04
	xor l                                            ; $62b4: $ad
	pop bc                                           ; $62b5: $c1
	or b                                             ; $62b6: $b0
	ret nc                                           ; $62b7: $d0

	ret nc                                           ; $62b8: $d0

	ret nc                                           ; $62b9: $d0

	ret nc                                           ; $62ba: $d0

	add [hl]                                         ; $62bb: $86
	and b                                            ; $62bc: $a0
	ld d, d                                          ; $62bd: $52
	ret nz                                           ; $62be: $c0

	sub b                                            ; $62bf: $90
	ldh [rSB], a                                     ; $62c0: $e0 $01
	ld b, d                                          ; $62c2: $42
	ldh [rSB], a                                     ; $62c3: $e0 $01
	ld c, a                                          ; $62c5: $4f
	ret nz                                           ; $62c6: $c0

	cp d                                             ; $62c7: $ba
	ld bc, $7bd6                                     ; $62c8: $01 $d6 $7b
	ret nz                                           ; $62cb: $c0

	add hl, bc                                       ; $62cc: $09
	db $e3                                           ; $62cd: $e3
	nop                                              ; $62ce: $00
	ld c, c                                          ; $62cf: $49
	pop bc                                           ; $62d0: $c1
	or b                                             ; $62d1: $b0
	pop de                                           ; $62d2: $d1
	jp c, $c0d0                                      ; $62d3: $da $d0 $c0

	ld bc, $01a0                                     ; $62d6: $01 $a0 $01
	inc b                                            ; $62d9: $04
	or e                                             ; $62da: $b3
	pop bc                                           ; $62db: $c1
	or b                                             ; $62dc: $b0
	ret nc                                           ; $62dd: $d0

	ret nc                                           ; $62de: $d0

	ret nc                                           ; $62df: $d0

	ei                                               ; $62e0: $fb
	cp $06                                           ; $62e1: $fe $06
	add b                                            ; $62e3: $80
	ld bc, $8044                                     ; $62e4: $01 $44 $80
	ld bc, $02ac                                     ; $62e7: $01 $ac $02
	ret nz                                           ; $62ea: $c0

	push de                                          ; $62eb: $d5
	ld b, b                                          ; $62ec: $40
	add b                                            ; $62ed: $80
	ld bc, $c1ad                                     ; $62ee: $01 $ad $c1
	xor h                                            ; $62f1: $ac
	add e                                            ; $62f2: $83
	ret nz                                           ; $62f3: $c0

	db $fd                                           ; $62f4: $fd
	ld bc, $0fd1                                     ; $62f5: $01 $d1 $0f
	ret nz                                           ; $62f8: $c0

	add hl, bc                                       ; $62f9: $09
	db $e3                                           ; $62fa: $e3
	nop                                              ; $62fb: $00
	ld c, b                                          ; $62fc: $48
	ret nz                                           ; $62fd: $c0

	ld bc, $01a0                                     ; $62fe: $01 $a0 $01
	inc b                                            ; $6301: $04
	cp d                                             ; $6302: $ba
	ret nz                                           ; $6303: $c0

	ld [hl+], a                                      ; $6304: $22
	pop de                                           ; $6305: $d1
	db $db                                           ; $6306: $db
	ld bc, $05d2                                     ; $6307: $01 $d2 $05
	ret nz                                           ; $630a: $c0

	add hl, bc                                       ; $630b: $09
	db $e3                                           ; $630c: $e3
	nop                                              ; $630d: $00
	ld b, l                                          ; $630e: $45
	ld bc, $03d3                                     ; $630f: $01 $d3 $03
	ldh [rP1], a                                     ; $6312: $e0 $00
	inc sp                                           ; $6314: $33
	ld bc, $07d4                                     ; $6315: $01 $d4 $07
	nop                                              ; $6318: $00
	add b                                            ; $6319: $80
	ld bc, $e0ad                                     ; $631a: $01 $ad $e0
	nop                                              ; $631d: $00
	add hl, hl                                       ; $631e: $29
	ld h, c                                          ; $631f: $61
	ei                                               ; $6320: $fb
	add d                                            ; $6321: $82
	and b                                            ; $6322: $a0
	ld e, c                                          ; $6323: $59
	call nc, $c003                                   ; $6324: $d4 $03 $c0
	dec hl                                           ; $6327: $2b
	jp nc, $82fc                                     ; $6328: $d2 $fc $82

	and b                                            ; $632b: $a0
	ld e, c                                          ; $632c: $59
	db $d3                                           ; $632d: $d3
	inc bc                                           ; $632e: $03
	ret nz                                           ; $632f: $c0

	dec hl                                           ; $6330: $2b
	pop de                                           ; $6331: $d1
	inc bc                                           ; $6332: $03
	ldh [rP1], a                                     ; $6333: $e0 $00
	ld b, a                                          ; $6335: $47
	ret nz                                           ; $6336: $c0

	ld bc, $01a0                                     ; $6337: $01 $a0 $01
	inc b                                            ; $633a: $04
	ret z                                            ; $633b: $c8

	ld b, b                                          ; $633c: $40
	add d                                            ; $633d: $82
	and b                                            ; $633e: $a0
	ld e, c                                          ; $633f: $59
	ret nz                                           ; $6340: $c0

	add l                                            ; $6341: $85
	pop bc                                           ; $6342: $c1
	inc a                                            ; $6343: $3c
	ret nz                                           ; $6344: $c0

	swap h                                           ; $6345: $cb $34
	ld h, b                                          ; $6347: $60
	ei                                               ; $6348: $fb
	add d                                            ; $6349: $82
	and b                                            ; $634a: $a0
	ld e, c                                          ; $634b: $59
	db $d3                                           ; $634c: $d3
	daa                                              ; $634d: $27
	ret nz                                           ; $634e: $c0

	add hl, bc                                       ; $634f: $09
	db $e3                                           ; $6350: $e3
	nop                                              ; $6351: $00
	ld b, [hl]                                       ; $6352: $46
	ret nz                                           ; $6353: $c0

	ld bc, $01a0                                     ; $6354: $01 $a0 $01
	inc b                                            ; $6357: $04
	ret nc                                           ; $6358: $d0

	ld h, c                                          ; $6359: $61
	add b                                            ; $635a: $80
	nop                                              ; $635b: $00
	ld b, a                                          ; $635c: $47
	ld b, $c0                                        ; $635d: $06 $c0
	ld bc, $01a0                                     ; $635f: $01 $a0 $01
	inc b                                            ; $6362: $04
	push hl                                          ; $6363: $e5
	add b                                            ; $6364: $80
	ld bc, $062e                                     ; $6365: $01 $2e $06
	ret nz                                           ; $6368: $c0

	ld bc, $01a0                                     ; $6369: $01 $a0 $01
	inc b                                            ; $636c: $04
	pop af                                           ; $636d: $f1
	nop                                              ; $636e: $00
	nop                                              ; $636f: $00
	add b                                            ; $6370: $80
	nop                                              ; $6371: $00
	ld b, [hl]                                       ; $6372: $46
	pop bc                                           ; $6373: $c1
	rlc l                                            ; $6374: $cb $05
	ret nz                                           ; $6376: $c0

	add hl, bc                                       ; $6377: $09
	db $e3                                           ; $6378: $e3
	nop                                              ; $6379: $00
	ld b, h                                          ; $637a: $44
	ld h, h                                          ; $637b: $64
	ret nc                                           ; $637c: $d0

	adc b                                            ; $637d: $88
	and b                                            ; $637e: $a0
	ld e, h                                          ; $637f: $5c
	pop bc                                           ; $6380: $c1
	ld b, $e0                                        ; $6381: $06 $e0
	ld de, $84d0                                     ; $6383: $11 $d0 $84
	and b                                            ; $6386: $a0
	ld h, l                                          ; $6387: $65
	ret nc                                           ; $6388: $d0

	ldh [rP1], a                                     ; $6389: $e0 $00
	ld d, [hl]                                       ; $638b: $56
	ret nc                                           ; $638c: $d0

	add h                                            ; $638d: $84
	and b                                            ; $638e: $a0
	ld h, l                                          ; $638f: $65
	pop de                                           ; $6390: $d1
	ldh [rP1], a                                     ; $6391: $e0 $00
	ld c, [hl]                                       ; $6393: $4e
	ret nc                                           ; $6394: $d0

	add h                                            ; $6395: $84
	and b                                            ; $6396: $a0
	ld h, l                                          ; $6397: $65
	jp nc, $00e0                                     ; $6398: $d2 $e0 $00

	ld b, [hl]                                       ; $639b: $46
	ret nc                                           ; $639c: $d0

	add h                                            ; $639d: $84
	and b                                            ; $639e: $a0
	ld h, l                                          ; $639f: $65
	db $d3                                           ; $63a0: $d3
	ldh [rP1], a                                     ; $63a1: $e0 $00
	ld a, $d0                                        ; $63a3: $3e $d0
	add h                                            ; $63a5: $84
	and b                                            ; $63a6: $a0
	ld h, l                                          ; $63a7: $65
	rst SubAFromHL                                          ; $63a8: $d7
	ldh [rP1], a                                     ; $63a9: $e0 $00
	ld [hl], $d0                                     ; $63ab: $36 $d0
	add h                                            ; $63ad: $84
	and b                                            ; $63ae: $a0
	ld h, l                                          ; $63af: $65
	ret c                                            ; $63b0: $d8

	ldh [rP1], a                                     ; $63b1: $e0 $00
	ld l, $d0                                        ; $63b3: $2e $d0
	add h                                            ; $63b5: $84
	and b                                            ; $63b6: $a0
	ld h, l                                          ; $63b7: $65
	ldh [rAUD1SWEEP], a                              ; $63b8: $e0 $10
	ld h, c                                          ; $63ba: $61
	ld sp, hl                                        ; $63bb: $f9
	adc b                                            ; $63bc: $88
	and b                                            ; $63bd: $a0
	ld e, h                                          ; $63be: $5c
	pop bc                                           ; $63bf: $c1
	ld b, $84                                        ; $63c0: $06 $84
	and b                                            ; $63c2: $a0
	ld h, l                                          ; $63c3: $65
	inc b                                            ; $63c4: $04
	ret nz                                           ; $63c5: $c0

	ld [hl+], a                                      ; $63c6: $22
	jp nc, $f9da                                     ; $63c7: $d2 $da $f9

	adc b                                            ; $63ca: $88
	and b                                            ; $63cb: $a0
	ld e, h                                          ; $63cc: $5c
	pop bc                                           ; $63cd: $c1
	ld b, $84                                        ; $63ce: $06 $84

Jump_07b_63d0:
	and b                                            ; $63d0: $a0
	ld h, l                                          ; $63d1: $65
	inc b                                            ; $63d2: $04
	ret nz                                           ; $63d3: $c0

	ld [hl+], a                                      ; $63d4: $22
	pop de                                           ; $63d5: $d1
	jp c, $d000                                      ; $63d6: $da $00 $d0

	add h                                            ; $63d9: $84
	and b                                            ; $63da: $a0
	ld h, l                                          ; $63db: $65
	db $dd                                           ; $63dc: $dd
	ldh [rP1], a                                     ; $63dd: $e0 $00
	ld [bc], a                                       ; $63df: $02
	ld [hl+], a                                      ; $63e0: $22
	ld h, c                                          ; $63e1: $61
	ld sp, hl                                        ; $63e2: $f9
	adc b                                            ; $63e3: $88
	and b                                            ; $63e4: $a0
	ld e, h                                          ; $63e5: $5c
	pop bc                                           ; $63e6: $c1
	ld b, $84                                        ; $63e7: $06 $84
	and b                                            ; $63e9: $a0
	ld h, l                                          ; $63ea: $65
	ld b, $c0                                        ; $63eb: $06 $c0
	ld [hl+], a                                      ; $63ed: $22
	jp nc, $a084                                     ; $63ee: $d2 $84 $a0

	ld h, l                                          ; $63f1: $65
	ld sp, hl                                        ; $63f2: $f9
	adc b                                            ; $63f3: $88
	and b                                            ; $63f4: $a0
	ld e, h                                          ; $63f5: $5c
	pop bc                                           ; $63f6: $c1
	ld b, $84                                        ; $63f7: $06 $84
	and b                                            ; $63f9: $a0
	ld h, l                                          ; $63fa: $65
	ld b, $c0                                        ; $63fb: $06 $c0
	ld [hl+], a                                      ; $63fd: $22
	pop de                                           ; $63fe: $d1

jr_07b_63ff:
	add h                                            ; $63ff: $84
	and b                                            ; $6400: $a0
	ld h, l                                          ; $6401: $65
	nop                                              ; $6402: $00
	rrca                                             ; $6403: $0f
	ld h, b                                          ; $6404: $60
	ei                                               ; $6405: $fb
	add [hl]                                         ; $6406: $86
	and b                                            ; $6407: $a0
	ld d, d                                          ; $6408: $52
	ldh [$32], a                                     ; $6409: $e0 $32
	inc bc                                           ; $640b: $03
	ret nz                                           ; $640c: $c0

	cp e                                             ; $640d: $bb
	ret nc                                           ; $640e: $d0

	inc bc                                           ; $640f: $03
	ret nz                                           ; $6410: $c0

	cp e                                             ; $6411: $bb
	pop de                                           ; $6412: $d1
	ld [hl], b                                       ; $6413: $70
	pop bc                                           ; $6414: $c1
	or b                                             ; $6415: $b0
	pop de                                           ; $6416: $d1
	jp c, Jump_07b_63d0                              ; $6417: $da $d0 $63

	ei                                               ; $641a: $fb
	add [hl]                                         ; $641b: $86
	and b                                            ; $641c: $a0
	ld d, d                                          ; $641d: $52
	ldh [$5a], a                                     ; $641e: $e0 $5a
	ld b, $c0                                        ; $6420: $06 $c0
	ld bc, $01a0                                     ; $6422: $01 $a0 $01
	dec b                                            ; $6425: $05
	nop                                              ; $6426: $00
	cp $0c                                           ; $6427: $fe $0c
	ld hl, sp-$7a                                    ; $6429: $f8 $86
	and b                                            ; $642b: $a0
	ld d, d                                          ; $642c: $52
	ldh [$5a], a                                     ; $642d: $e0 $5a
	ei                                               ; $642f: $fb
	add [hl]                                         ; $6430: $86
	and b                                            ; $6431: $a0
	ld d, d                                          ; $6432: $52
	ldh [rDMA], a                                    ; $6433: $e0 $46
	ld b, $c0                                        ; $6435: $06 $c0
	ld bc, $01a0                                     ; $6437: $01 $a0 $01
	dec b                                            ; $643a: $05
	inc bc                                           ; $643b: $03
	cp $0c                                           ; $643c: $fe $0c
	ld hl, sp-$7a                                    ; $643e: $f8 $86
	and b                                            ; $6440: $a0
	ld d, d                                          ; $6441: $52
	ldh [rDMA], a                                    ; $6442: $e0 $46
	ei                                               ; $6444: $fb
	add [hl]                                         ; $6445: $86
	and b                                            ; $6446: $a0
	ld d, d                                          ; $6447: $52
	ldh [$32], a                                     ; $6448: $e0 $32
	ld b, $c0                                        ; $644a: $06 $c0
	ld bc, $01a0                                     ; $644c: $01 $a0 $01
	dec b                                            ; $644f: $05
	rlca                                             ; $6450: $07
	cp $0c                                           ; $6451: $fe $0c
	ld hl, sp-$7a                                    ; $6453: $f8 $86
	and b                                            ; $6455: $a0

jr_07b_6456:
	ld d, d                                          ; $6456: $52
	ldh [$32], a                                     ; $6457: $e0 $32
	ei                                               ; $6459: $fb
	add [hl]                                         ; $645a: $86
	and b                                            ; $645b: $a0
	ld d, d                                          ; $645c: $52
	ldh [rAUD3HIGH], a                               ; $645d: $e0 $1e
	ld b, $c0                                        ; $645f: $06 $c0
	ld bc, $01a0                                     ; $6461: $01 $a0 $01
	dec b                                            ; $6464: $05
	dec bc                                           ; $6465: $0b
	jr jr_07b_64c8                                   ; $6466: $18 $60

	db $fc                                           ; $6468: $fc
	add d                                            ; $6469: $82
	and b                                            ; $646a: $a0
	ld e, c                                          ; $646b: $59
	call nc, $c006                                   ; $646c: $d4 $06 $c0
	ld bc, $01a0                                     ; $646f: $01 $a0 $01
	dec b                                            ; $6472: $05
	ld de, $c006                                     ; $6473: $11 $06 $c0
	ld bc, $01a0                                     ; $6476: $01 $a0 $01
	dec b                                            ; $6479: $05
	dec de                                           ; $647a: $1b
	jr nz, jr_07b_63ff                               ; $647b: $20 $82

	and b                                            ; $647d: $a0
	ld e, c                                          ; $647e: $59
	pop bc                                           ; $647f: $c1
	or b                                             ; $6480: $b0
	ret nc                                           ; $6481: $d0

	ret nc                                           ; $6482: $d0

	ret nc                                           ; $6483: $d0

	inc l                                            ; $6484: $2c
	inc d                                            ; $6485: $14
	ld b, b                                          ; $6486: $40
	add b                                            ; $6487: $80
	and b                                            ; $6488: $a0
	ld l, d                                          ; $6489: $6a
	ei                                               ; $648a: $fb
	add b                                            ; $648b: $80
	and b                                            ; $648c: $a0
	ld hl, $000b                                     ; $648d: $21 $0b $00
	add b                                            ; $6490: $80
	and b                                            ; $6491: $a0
	ld l, d                                          ; $6492: $6a
	pop bc                                           ; $6493: $c1
	ld d, e                                          ; $6494: $53
	ret nz                                           ; $6495: $c0

	inc d                                            ; $6496: $14
	db $e3                                           ; $6497: $e3
	nop                                              ; $6498: $00
	ld c, d                                          ; $6499: $4a
	ld d, l                                          ; $649a: $55
	add b                                            ; $649b: $80
	ld bc, $288f                                     ; $649c: $01 $8f $28
	ld [hl+], a                                      ; $649f: $22
	ei                                               ; $64a0: $fb
	db $fc                                           ; $64a1: $fc
	adc e                                            ; $64a2: $8b
	nop                                              ; $64a3: $00
	jr z, jr_07b_6456                                ; $64a4: $28 $b0

	dec bc                                           ; $64a6: $0b
	ld b, $c0                                        ; $64a7: $06 $c0
	push af                                          ; $64a9: $f5
	nop                                              ; $64aa: $00
	add b                                            ; $64ab: $80
	nop                                              ; $64ac: $00
	jp z, $01c0                                      ; $64ad: $ca $c0 $01

	and b                                            ; $64b0: $a0
	ld bc, $1f05                                     ; $64b1: $01 $05 $1f
	ret nc                                           ; $64b4: $d0

	add e                                            ; $64b5: $83
	and b                                            ; $64b6: $a0
	ld l, e                                          ; $64b7: $6b
	ret nc                                           ; $64b8: $d0

	ret nz                                           ; $64b9: $c0

	ld bc, $01a0                                     ; $64ba: $01 $a0 $01
	dec b                                            ; $64bd: $05
	inc hl                                           ; $64be: $23
	pop bc                                           ; $64bf: $c1
	cp l                                             ; $64c0: $bd
	ret nc                                           ; $64c1: $d0

	daa                                              ; $64c2: $27
	dec b                                            ; $64c3: $05
	daa                                              ; $64c4: $27
	add hl, bc                                       ; $64c5: $09
	ld a, [bc]                                       ; $64c6: $0a
	ret nc                                           ; $64c7: $d0

jr_07b_64c8:
	adc e                                            ; $64c8: $8b
	nop                                              ; $64c9: $00
	sbc $b0                                          ; $64ca: $de $b0
	ld [bc], a                                       ; $64cc: $02
	push hl                                          ; $64cd: $e5
	ld b, l                                          ; $64ce: $45
	nop                                              ; $64cf: $00
	nop                                              ; $64d0: $00
	dec b                                            ; $64d1: $05
	add hl, hl                                       ; $64d2: $29
	add hl, bc                                       ; $64d3: $09
	dec d                                            ; $64d4: $15
	ret nz                                           ; $64d5: $c0

	ld bc, $01a0                                     ; $64d6: $01 $a0 $01
	dec b                                            ; $64d9: $05
	dec hl                                           ; $64da: $2b
	ret nz                                           ; $64db: $c0

	inc h                                            ; $64dc: $24
	pop de                                           ; $64dd: $d1
	add e                                            ; $64de: $83
	and b                                            ; $64df: $a0
	ld l, e                                          ; $64e0: $6b
	ret nz                                           ; $64e1: $c0

	inc hl                                           ; $64e2: $23
	push de                                          ; $64e3: $d5
	add e                                            ; $64e4: $83
	and b                                            ; $64e5: $a0
	ld l, e                                          ; $64e6: $6b
	db $e4                                           ; $64e7: $e4
	nop                                              ; $64e8: $00
	ld [$09d1], sp                                   ; $64e9: $08 $d1 $09
	inc bc                                           ; $64ec: $03
	db $e4                                           ; $64ed: $e4
	nop                                              ; $64ee: $00
	ld [bc], a                                       ; $64ef: $02
	dec l                                            ; $64f0: $2d
	ld b, [hl]                                       ; $64f1: $46
	ei                                               ; $64f2: $fb
	cp $12                                           ; $64f3: $fe $12
	db $fc                                           ; $64f5: $fc
	ret nz                                           ; $64f6: $c0

	add b                                            ; $64f7: $80
	db $d3                                           ; $64f8: $d3
	db $fc                                           ; $64f9: $fc
	ret nz                                           ; $64fa: $c0

	ld h, l                                          ; $64fb: $65
	rst SubAFromHL                                          ; $64fc: $d7
	db $fc                                           ; $64fd: $fc
	ret nz                                           ; $64fe: $c0

	ld h, [hl]                                       ; $64ff: $66
	rst SubAFromHL                                          ; $6500: $d7
	add b                                            ; $6501: $80
	nop                                              ; $6502: $00
	ld l, a                                          ; $6503: $6f
	add b                                            ; $6504: $80
	nop                                              ; $6505: $00
	ld a, l                                          ; $6506: $7d
	inc c                                            ; $6507: $0c
	add b                                            ; $6508: $80
	ret nz                                           ; $6509: $c0

	dec de                                           ; $650a: $1b
	db $dd                                           ; $650b: $dd
	ld [bc], a                                       ; $650c: $02
	ret nc                                           ; $650d: $d0

	pop de                                           ; $650e: $d1
	inc b                                            ; $650f: $04
	push hl                                          ; $6510: $e5
	ld c, d                                          ; $6511: $4a
	dec bc                                           ; $6512: $0b
	inc d                                            ; $6513: $14
	ld b, b                                          ; $6514: $40
	add b                                            ; $6515: $80
	and b                                            ; $6516: $a0
	ld l, a                                          ; $6517: $6f
	ei                                               ; $6518: $fb
	add b                                            ; $6519: $80
	ld bc, $02ae                                     ; $651a: $01 $ae $02
	pop bc                                           ; $651d: $c1
	dec b                                            ; $651e: $05
	ei                                               ; $651f: $fb
	cp $07                                           ; $6520: $fe $07
	pop af                                           ; $6522: $f1
	add b                                            ; $6523: $80
	and b                                            ; $6524: $a0
	ld l, d                                          ; $6525: $6a
	add b                                            ; $6526: $80
	and b                                            ; $6527: $a0
	ld hl, $c107                                     ; $6528: $21 $07 $c1
	ld d, e                                          ; $652b: $53
	ret nz                                           ; $652c: $c0

	inc d                                            ; $652d: $14
	db $e3                                           ; $652e: $e3
	nop                                              ; $652f: $00
	ld c, d                                          ; $6530: $4a
	ld b, c                                          ; $6531: $41
	add b                                            ; $6532: $80
	and b                                            ; $6533: $a0
	ld l, d                                          ; $6534: $6a
	add b                                            ; $6535: $80
	ld bc, $c0ae                                     ; $6536: $01 $ae $c0
	rst SubAFromDE                                          ; $6539: $df
	adc e                                            ; $653a: $8b
	ld bc, $0266                                     ; $653b: $01 $66 $02
	or b                                             ; $653e: $b0
	inc b                                            ; $653f: $04
	jr nc, jr_07b_654d                               ; $6540: $30 $0b

	ret nz                                           ; $6542: $c0

	ld bc, $01a0                                     ; $6543: $01 $a0 $01
	dec b                                            ; $6546: $05
	cpl                                              ; $6547: $2f
	ret nc                                           ; $6548: $d0

	add e                                            ; $6549: $83
	and b                                            ; $654a: $a0
	ld l, e                                          ; $654b: $6b
	pop de                                           ; $654c: $d1

jr_07b_654d:
	nop                                              ; $654d: $00
	call z, $fb09                                    ; $654e: $cc $09 $fb
	add b                                            ; $6551: $80
	and b                                            ; $6552: $a0
	ld l, a                                          ; $6553: $6f
	inc b                                            ; $6554: $04
	push hl                                          ; $6555: $e5
	ld b, [hl]                                       ; $6556: $46
	inc bc                                           ; $6557: $03
	add e                                            ; $6558: $83
	ld [bc], a                                       ; $6559: $02
	or b                                             ; $655a: $b0
	dec b                                            ; $655b: $05
	jr nc, @+$0d                                     ; $655c: $30 $0b

	ret nz                                           ; $655e: $c0

	ld bc, $01a0                                     ; $655f: $01 $a0 $01
	dec b                                            ; $6562: $05
	ld [hl], $d0                                     ; $6563: $36 $d0
	add e                                            ; $6565: $83
	and b                                            ; $6566: $a0
	ld l, e                                          ; $6567: $6b
	jp nc, $b000                                     ; $6568: $d2 $00 $b0

	add hl, bc                                       ; $656b: $09
	ei                                               ; $656c: $fb
	add b                                            ; $656d: $80
	and b                                            ; $656e: $a0
	ld l, a                                          ; $656f: $6f
	inc b                                            ; $6570: $04
	push hl                                          ; $6571: $e5
	ld b, [hl]                                       ; $6572: $46
	dec b                                            ; $6573: $05
	inc hl                                           ; $6574: $23
	ld [bc], a                                       ; $6575: $02
	or b                                             ; $6576: $b0
	ld b, $30                                        ; $6577: $06 $30
	dec bc                                           ; $6579: $0b
	ret nz                                           ; $657a: $c0

	ld bc, $01a0                                     ; $657b: $01 $a0 $01
	dec b                                            ; $657e: $05
	dec a                                            ; $657f: $3d
	ret nc                                           ; $6580: $d0

	add e                                            ; $6581: $83
	and b                                            ; $6582: $a0
	ld l, e                                          ; $6583: $6b
	db $d3                                           ; $6584: $d3
	nop                                              ; $6585: $00
	sub h                                            ; $6586: $94
	add hl, bc                                       ; $6587: $09
	ei                                               ; $6588: $fb
	add b                                            ; $6589: $80
	and b                                            ; $658a: $a0
	ld l, a                                          ; $658b: $6f
	inc b                                            ; $658c: $04
	push hl                                          ; $658d: $e5
	ld b, [hl]                                       ; $658e: $46
	ld b, $c2                                        ; $658f: $06 $c2
	ld [bc], a                                       ; $6591: $02
	or b                                             ; $6592: $b0
	rlca                                             ; $6593: $07
	jr nc, jr_07b_65a1                               ; $6594: $30 $0b

	ret nz                                           ; $6596: $c0

	ld bc, $01a0                                     ; $6597: $01 $a0 $01
	dec b                                            ; $659a: $05
	ld b, h                                          ; $659b: $44
	ret nc                                           ; $659c: $d0

	add e                                            ; $659d: $83
	and b                                            ; $659e: $a0
	ld l, e                                          ; $659f: $6b
	rst SubAFromHL                                          ; $65a0: $d7

jr_07b_65a1:
	nop                                              ; $65a1: $00
	ld a, b                                          ; $65a2: $78
	rrca                                             ; $65a3: $0f
	ei                                               ; $65a4: $fb
	add b                                            ; $65a5: $80
	and b                                            ; $65a6: $a0
	ld l, a                                          ; $65a7: $6f
	ld a, [bc]                                       ; $65a8: $0a
	ret nc                                           ; $65a9: $d0

	adc e                                            ; $65aa: $8b
	nop                                              ; $65ab: $00
	or $b0                                           ; $65ac: $f6 $b0
	ld [bc], a                                       ; $65ae: $02
	push hl                                          ; $65af: $e5
	ld b, [hl]                                       ; $65b0: $46
	ld [$0262], sp                                   ; $65b1: $08 $62 $02
	or b                                             ; $65b4: $b0
	ld [$0b30], sp                                   ; $65b5: $08 $30 $0b
	ret nz                                           ; $65b8: $c0

	ld bc, $01a0                                     ; $65b9: $01 $a0 $01
	dec b                                            ; $65bc: $05
	ld c, e                                          ; $65bd: $4b
	ret nc                                           ; $65be: $d0

	add e                                            ; $65bf: $83
	and b                                            ; $65c0: $a0

Jump_07b_65c1:
	ld l, e                                          ; $65c1: $6b
	ret c                                            ; $65c2: $d8

	nop                                              ; $65c3: $00
	ld d, [hl]                                       ; $65c4: $56
	rrca                                             ; $65c5: $0f
	ei                                               ; $65c6: $fb
	add b                                            ; $65c7: $80
	and b                                            ; $65c8: $a0
	ld l, a                                          ; $65c9: $6f
	ld a, [bc]                                       ; $65ca: $0a
	ret nc                                           ; $65cb: $d0

	adc e                                            ; $65cc: $8b
	ld bc, $b002                                     ; $65cd: $01 $02 $b0
	ld [bc], a                                       ; $65d0: $02
	push hl                                          ; $65d1: $e5
	ld b, [hl]                                       ; $65d2: $46
	dec bc                                           ; $65d3: $0b
	ld h, a                                          ; $65d4: $67
	ld [bc], a                                       ; $65d5: $02
	or b                                             ; $65d6: $b0
	add hl, bc                                       ; $65d7: $09
	jr nc, @+$0d                                     ; $65d8: $30 $0b

	ret nz                                           ; $65da: $c0

	ld bc, $01a0                                     ; $65db: $01 $a0 $01
	dec b                                            ; $65de: $05
	ld d, d                                          ; $65df: $52
	ret nc                                           ; $65e0: $d0

	add e                                            ; $65e1: $83
	and b                                            ; $65e2: $a0
	ld l, e                                          ; $65e3: $6b
	jp c, $3400                                      ; $65e4: $da $00 $34

	rrca                                             ; $65e7: $0f
	ei                                               ; $65e8: $fb
	add b                                            ; $65e9: $80
	and b                                            ; $65ea: $a0
	ld l, a                                          ; $65eb: $6f
	ld a, [bc]                                       ; $65ec: $0a
	ret nc                                           ; $65ed: $d0

	adc e                                            ; $65ee: $8b
	ld bc, $b00f                                     ; $65ef: $01 $0f $b0
	ld [bc], a                                       ; $65f2: $02
	push hl                                          ; $65f3: $e5
	ld b, [hl]                                       ; $65f4: $46
	ld c, $6b                                        ; $65f5: $0e $6b
	ld [bc], a                                       ; $65f7: $02
	or b                                             ; $65f8: $b0
	ld a, [bc]                                       ; $65f9: $0a
	jr nc, jr_07b_6607                               ; $65fa: $30 $0b

	ret nz                                           ; $65fc: $c0

	ld bc, $01a0                                     ; $65fd: $01 $a0 $01
	dec b                                            ; $6600: $05
	ld e, c                                          ; $6601: $59
	ret nc                                           ; $6602: $d0

	add e                                            ; $6603: $83
	and b                                            ; $6604: $a0
	ld l, e                                          ; $6605: $6b
	db $dd                                           ; $6606: $dd

jr_07b_6607:
	nop                                              ; $6607: $00
	ld [de], a                                       ; $6608: $12
	add hl, bc                                       ; $6609: $09
	ei                                               ; $660a: $fb
	add b                                            ; $660b: $80
	and b                                            ; $660c: $a0
	ld l, a                                          ; $660d: $6f
	inc b                                            ; $660e: $04
	push hl                                          ; $660f: $e5
	ld b, [hl]                                       ; $6610: $46
	ld de, $0037                                     ; $6611: $11 $37 $00
	add hl, bc                                       ; $6614: $09
	inc bc                                           ; $6615: $03
	db $e4                                           ; $6616: $e4
	ld [bc], a                                       ; $6617: $02
	ret c                                            ; $6618: $d8

	jr z, jr_07b_6624                                ; $6619: $28 $09

	pop bc                                           ; $661b: $c1
	cp l                                             ; $661c: $bd
	ret nc                                           ; $661d: $d0

	ret nz                                           ; $661e: $c0

	ld bc, $01a0                                     ; $661f: $01 $a0 $01
	dec b                                            ; $6622: $05
	inc hl                                           ; $6623: $23

jr_07b_6624:
	ld h, $05                                        ; $6624: $26 $05
	daa                                              ; $6626: $27
	add hl, bc                                       ; $6627: $09
	add hl, bc                                       ; $6628: $09
	ret nz                                           ; $6629: $c0

	add hl, bc                                       ; $662a: $09
	db $e3                                           ; $662b: $e3
	nop                                              ; $662c: $00
	dec c                                            ; $662d: $0d
	nop                                              ; $662e: $00
	add b                                            ; $662f: $80
	and b                                            ; $6630: $a0
	ld l, a                                          ; $6631: $6f
	dec b                                            ; $6632: $05
	add hl, hl                                       ; $6633: $29
	add hl, bc                                       ; $6634: $09
	dec d                                            ; $6635: $15
	ret nz                                           ; $6636: $c0

	ld bc, $01a0                                     ; $6637: $01 $a0 $01
	dec b                                            ; $663a: $05
	dec hl                                           ; $663b: $2b
	ret nz                                           ; $663c: $c0

	inc h                                            ; $663d: $24
	pop de                                           ; $663e: $d1
	add e                                            ; $663f: $83
	and b                                            ; $6640: $a0
	ld l, e                                          ; $6641: $6b
	ret nz                                           ; $6642: $c0

	inc hl                                           ; $6643: $23
	push de                                          ; $6644: $d5
	add e                                            ; $6645: $83
	and b                                            ; $6646: $a0
	ld l, e                                          ; $6647: $6b
	db $e4                                           ; $6648: $e4
	ld [bc], a                                       ; $6649: $02
	and [hl]                                         ; $664a: $a6
	inc a                                            ; $664b: $3c
	db $fd                                           ; $664c: $fd
	ld a, [hl-]                                      ; $664d: $3a
	adc e                                            ; $664e: $8b
	ld bc, $0253                                     ; $664f: $01 $53 $02
	or b                                             ; $6652: $b0
	ld hl, $e003                                     ; $6653: $21 $03 $e0
	nop                                              ; $6656: $00
	ld [hl-], a                                      ; $6657: $32
	ld [bc], a                                       ; $6658: $02
	or b                                             ; $6659: $b0
	ld [hl+], a                                      ; $665a: $22
	inc bc                                           ; $665b: $03
	ldh [rP1], a                                     ; $665c: $e0 $00
	ld b, e                                          ; $665e: $43
	ld [bc], a                                       ; $665f: $02
	or b                                             ; $6660: $b0
	inc hl                                           ; $6661: $23
	inc bc                                           ; $6662: $03
	ldh [rP1], a                                     ; $6663: $e0 $00
	ld d, h                                          ; $6665: $54
	ld [bc], a                                       ; $6666: $02
	or b                                             ; $6667: $b0
	inc h                                            ; $6668: $24
	inc bc                                           ; $6669: $03
	ldh [rP1], a                                     ; $666a: $e0 $00
	ld h, l                                          ; $666c: $65
	ld [bc], a                                       ; $666d: $02
	or b                                             ; $666e: $b0
	dec h                                            ; $666f: $25
	inc bc                                           ; $6670: $03
	ldh [rP1], a                                     ; $6671: $e0 $00
	halt                                             ; $6673: $76
	ld [bc], a                                       ; $6674: $02
	or b                                             ; $6675: $b0
	ld h, $03                                        ; $6676: $26 $03
	ldh [rP1], a                                     ; $6678: $e0 $00
	add b                                            ; $667a: $80
	ld [bc], a                                       ; $667b: $02
	or b                                             ; $667c: $b0
	jr z, jr_07b_6688                                ; $667d: $28 $09

	ei                                               ; $667f: $fb
	db $fd                                           ; $6680: $fd
	ret nz                                           ; $6681: $c0

	add b                                            ; $6682: $80
	db $d3                                           ; $6683: $d3
	inc bc                                           ; $6684: $03
	ldh [rP1], a                                     ; $6685: $e0 $00
	adc e                                            ; $6687: $8b

jr_07b_6688:
	rla                                              ; $6688: $17
	add c                                            ; $6689: $81
	pop bc                                           ; $668a: $c1
	inc b                                            ; $668b: $04
	ld bc, $04d1                                     ; $668c: $01 $d1 $04
	push hl                                          ; $668f: $e5
	ld c, l                                          ; $6690: $4d
	nop                                              ; $6691: $00
	nop                                              ; $6692: $00
	ld bc, $0ad2                                     ; $6693: $01 $d2 $0a
	ei                                               ; $6696: $fb
	pop af                                           ; $6697: $f1
	add b                                            ; $6698: $80
	ld bc, $04af                                     ; $6699: $01 $af $04
	push hl                                          ; $669c: $e5
	ld c, l                                          ; $669d: $4d
	ld bc, $1715                                     ; $669e: $01 $15 $17
	add c                                            ; $66a1: $81
	pop bc                                           ; $66a2: $c1
	inc b                                            ; $66a3: $04
	ld bc, $04d1                                     ; $66a4: $01 $d1 $04
	push hl                                          ; $66a7: $e5
	ld c, l                                          ; $66a8: $4d
	nop                                              ; $66a9: $00
	ld [de], a                                       ; $66aa: $12
	ld bc, $0ad2                                     ; $66ab: $01 $d2 $0a
	ei                                               ; $66ae: $fb
	pop af                                           ; $66af: $f1
	add b                                            ; $66b0: $80
	ld bc, $04b0                                     ; $66b1: $01 $b0 $04
	push hl                                          ; $66b4: $e5
	ld c, l                                          ; $66b5: $4d
	ld bc, $1765                                     ; $66b6: $01 $65 $17
	add c                                            ; $66b9: $81
	pop bc                                           ; $66ba: $c1
	inc b                                            ; $66bb: $04
	ld bc, $04d1                                     ; $66bc: $01 $d1 $04
	push hl                                          ; $66bf: $e5
	ld c, l                                          ; $66c0: $4d
	nop                                              ; $66c1: $00
	ld c, a                                          ; $66c2: $4f
	ld bc, $0ad2                                     ; $66c3: $01 $d2 $0a
	ei                                               ; $66c6: $fb
	pop af                                           ; $66c7: $f1
	add b                                            ; $66c8: $80
	ld bc, $04b1                                     ; $66c9: $01 $b1 $04
	push hl                                          ; $66cc: $e5
	ld c, l                                          ; $66cd: $4d
	ld bc, $17b5                                     ; $66ce: $01 $b5 $17
	add c                                            ; $66d1: $81
	pop bc                                           ; $66d2: $c1
	inc b                                            ; $66d3: $04
	ld bc, $04d1                                     ; $66d4: $01 $d1 $04
	push hl                                          ; $66d7: $e5
	ld c, l                                          ; $66d8: $4d
	nop                                              ; $66d9: $00
	adc b                                            ; $66da: $88
	ld bc, $0ad2                                     ; $66db: $01 $d2 $0a
	ei                                               ; $66de: $fb
	pop af                                           ; $66df: $f1
	add b                                            ; $66e0: $80
	ld bc, $04b2                                     ; $66e1: $01 $b2 $04
	push hl                                          ; $66e4: $e5
	ld c, l                                          ; $66e5: $4d
	ld [bc], a                                       ; $66e6: $02
	or [hl]                                          ; $66e7: $b6
	db $10                                           ; $66e8: $10
	add b                                            ; $66e9: $80
	pop bc                                           ; $66ea: $c1
	inc b                                            ; $66eb: $04
	ld bc, $0ad2                                     ; $66ec: $01 $d2 $0a
	ei                                               ; $66ef: $fb
	pop af                                           ; $66f0: $f1
	add b                                            ; $66f1: $80
	ld bc, $04b3                                     ; $66f2: $01 $b3 $04
	push hl                                          ; $66f5: $e5
	ld c, l                                          ; $66f6: $4d
	ld [bc], a                                       ; $66f7: $02
	db $10                                           ; $66f8: $10
	rla                                              ; $66f9: $17
	add c                                            ; $66fa: $81
	pop bc                                           ; $66fb: $c1
	inc b                                            ; $66fc: $04
	ld bc, $04d1                                     ; $66fd: $01 $d1 $04
	push hl                                          ; $6700: $e5
	ld c, l                                          ; $6701: $4d
	nop                                              ; $6702: $00
	pop bc                                           ; $6703: $c1
	ld bc, $0ad2                                     ; $6704: $01 $d2 $0a
	ei                                               ; $6707: $fb
	pop af                                           ; $6708: $f1
	add b                                            ; $6709: $80
	ld bc, $04b4                                     ; $670a: $01 $b4 $04
	push hl                                          ; $670d: $e5
	ld c, l                                          ; $670e: $4d
	ld [bc], a                                       ; $670f: $02
	ld h, [hl]                                       ; $6710: $66
	ld c, [hl]                                       ; $6711: $4e
	add e                                            ; $6712: $83
	adc e                                            ; $6713: $8b
	nop                                              ; $6714: $00
	nop                                              ; $6715: $00
	ld [bc], a                                       ; $6716: $02
	or b                                             ; $6717: $b0
	rrca                                             ; $6718: $0f
	db $10                                           ; $6719: $10
	ei                                               ; $671a: $fb
	cp $08                                           ; $671b: $fe $08
	db $fc                                           ; $671d: $fc
	pop bc                                           ; $671e: $c1
	inc b                                            ; $671f: $04
	jp nc, $80f1                                     ; $6720: $d2 $f1 $80

	ld bc, $04af                                     ; $6723: $01 $af $04
	push hl                                          ; $6726: $e5
	ld c, l                                          ; $6727: $4d
	inc bc                                           ; $6728: $03
	ld c, l                                          ; $6729: $4d
	ld [bc], a                                       ; $672a: $02
	or b                                             ; $672b: $b0
	ld c, $10                                        ; $672c: $0e $10
	ei                                               ; $672e: $fb
	cp $08                                           ; $672f: $fe $08
	db $fc                                           ; $6731: $fc
	pop bc                                           ; $6732: $c1
	inc b                                            ; $6733: $04
	jp nc, $80f1                                     ; $6734: $d2 $f1 $80

	ld bc, $04b0                                     ; $6737: $01 $b0 $04
	push hl                                          ; $673a: $e5
	ld c, l                                          ; $673b: $4d
	inc bc                                           ; $673c: $03
	and l                                            ; $673d: $a5
	ld [bc], a                                       ; $673e: $02
	or b                                             ; $673f: $b0
	db $10                                           ; $6740: $10
	db $10                                           ; $6741: $10
	ei                                               ; $6742: $fb
	cp $08                                           ; $6743: $fe $08
	db $fc                                           ; $6745: $fc
	pop bc                                           ; $6746: $c1
	inc b                                            ; $6747: $04
	jp nc, $80f1                                     ; $6748: $d2 $f1 $80

	ld bc, $04b1                                     ; $674b: $01 $b1 $04
	push hl                                          ; $674e: $e5
	ld c, l                                          ; $674f: $4d
	inc bc                                           ; $6750: $03
	ld sp, hl                                        ; $6751: $f9
	ld [bc], a                                       ; $6752: $02
	or b                                             ; $6753: $b0
	ld de, $fb0a                                     ; $6754: $11 $0a $fb
	db $fc                                           ; $6757: $fc
	pop bc                                           ; $6758: $c1
	inc b                                            ; $6759: $04
	pop de                                           ; $675a: $d1
	inc b                                            ; $675b: $04
	push hl                                          ; $675c: $e5
	ld c, l                                          ; $675d: $4d
	ld [bc], a                                       ; $675e: $02
	push af                                          ; $675f: $f5
	add d                                            ; $6760: $82
	db $fd                                           ; $6761: $fd
	add b                                            ; $6762: $80
	adc e                                            ; $6763: $8b
	ld bc, $0253                                     ; $6764: $01 $53 $02
	or b                                             ; $6767: $b0
	ld hl, $e00b                                     ; $6768: $21 $0b $e0
	nop                                              ; $676b: $00
	ld a, b                                          ; $676c: $78
	ret nz                                           ; $676d: $c0

	ld de, $00e3                                     ; $676e: $11 $e3 $00
	ld b, c                                          ; $6771: $41
	ldh [rP1], a                                     ; $6772: $e0 $00
	ld a, c                                          ; $6774: $79
	ld [bc], a                                       ; $6775: $02
	or b                                             ; $6776: $b0
	ld [hl+], a                                      ; $6777: $22
	dec bc                                           ; $6778: $0b
	ldh [rP1], a                                     ; $6779: $e0 $00
	ld l, c                                          ; $677b: $69
	ret nz                                           ; $677c: $c0

	ld de, $00e3                                     ; $677d: $11 $e3 $00
	ld c, d                                          ; $6780: $4a
	ldh [rP1], a                                     ; $6781: $e0 $00
	ld l, d                                          ; $6783: $6a
	ld [bc], a                                       ; $6784: $02
	or b                                             ; $6785: $b0
	inc hl                                           ; $6786: $23
	dec bc                                           ; $6787: $0b
	ldh [rP1], a                                     ; $6788: $e0 $00
	ld e, d                                          ; $678a: $5a
	ret nz                                           ; $678b: $c0

	ld de, $00e3                                     ; $678c: $11 $e3 $00
	dec a                                            ; $678f: $3d
	ldh [rP1], a                                     ; $6790: $e0 $00
	ld e, e                                          ; $6792: $5b
	ld [bc], a                                       ; $6793: $02
	or b                                             ; $6794: $b0
	inc h                                            ; $6795: $24
	dec bc                                           ; $6796: $0b
	ldh [rP1], a                                     ; $6797: $e0 $00
	ld c, e                                          ; $6799: $4b
	ret nz                                           ; $679a: $c0

	ld de, $00e3                                     ; $679b: $11 $e3 $00
	ld [hl], a                                       ; $679e: $77
	ldh [rP1], a                                     ; $679f: $e0 $00
	ld c, h                                          ; $67a1: $4c
	ld [bc], a                                       ; $67a2: $02
	or b                                             ; $67a3: $b0
	ld h, $0b                                        ; $67a4: $26 $0b
	ldh [rP1], a                                     ; $67a6: $e0 $00
	inc a                                            ; $67a8: $3c
	ret nz                                           ; $67a9: $c0

	ld de, $00e3                                     ; $67aa: $11 $e3 $00
	inc a                                            ; $67ad: $3c
	ldh [rP1], a                                     ; $67ae: $e0 $00
	dec a                                            ; $67b0: $3d
	ld [bc], a                                       ; $67b1: $02
	or b                                             ; $67b2: $b0
	jr z, jr_07b_67e3                                ; $67b3: $28 $2e

	ldh [rP1], a                                     ; $67b5: $e0 $00
	dec l                                            ; $67b7: $2d
	add e                                            ; $67b8: $83
	adc e                                            ; $67b9: $8b
	nop                                              ; $67ba: $00
	nop                                              ; $67bb: $00
	ld [bc], a                                       ; $67bc: $02
	or b                                             ; $67bd: $b0
	rrca                                             ; $67be: $0f
	dec b                                            ; $67bf: $05
	ret nz                                           ; $67c0: $c0

	ld de, $00e3                                     ; $67c1: $11 $e3 $00
	ld b, b                                          ; $67c4: $40
	ld [bc], a                                       ; $67c5: $02
	or b                                             ; $67c6: $b0
	ld c, $05                                        ; $67c7: $0e $05
	ret nz                                           ; $67c9: $c0

	ld de, $00e3                                     ; $67ca: $11 $e3 $00
	ld b, d                                          ; $67cd: $42
	ld [bc], a                                       ; $67ce: $02
	or b                                             ; $67cf: $b0
	db $10                                           ; $67d0: $10
	dec b                                            ; $67d1: $05
	ret nz                                           ; $67d2: $c0

	ld de, $00e3                                     ; $67d3: $11 $e3 $00
	ld b, e                                          ; $67d6: $43
	ld [bc], a                                       ; $67d7: $02
	or b                                             ; $67d8: $b0
	ld de, $c005                                     ; $67d9: $11 $05 $c0
	ld de, $00e3                                     ; $67dc: $11 $e3 $00
	ld b, h                                          ; $67df: $44
	ldh [rP1], a                                     ; $67e0: $e0 $00
	dec bc                                           ; $67e2: $0b

jr_07b_67e3:
	ld [$cbc0], sp                                   ; $67e3: $08 $c0 $cb
	ret nz                                           ; $67e6: $c0

	ld bc, $01a0                                     ; $67e7: $01 $a0 $01
	dec b                                            ; $67ea: $05
	ld h, b                                          ; $67eb: $60
	ld l, b                                          ; $67ec: $68
	ret nz                                           ; $67ed: $c0

	add hl, bc                                       ; $67ee: $09
	db $e3                                           ; $67ef: $e3
	nop                                              ; $67f0: $00
	ld d, a                                          ; $67f1: $57
	ret nz                                           ; $67f2: $c0

	rst $38                                          ; $67f3: $ff
	pop hl                                           ; $67f4: $e1
	ld [bc], a                                       ; $67f5: $02
	ld [bc], a                                       ; $67f6: $02
	or d                                             ; $67f7: $b2
	rst $38                                          ; $67f8: $ff
	ld b, b                                          ; $67f9: $40
	rra                                              ; $67fa: $1f
	ld b, $c0                                        ; $67fb: $06 $c0
	ld bc, $0ba0                                     ; $67fd: $01 $a0 $0b
	dec b                                            ; $6800: $05
	ld l, c                                          ; $6801: $69
	ccf                                              ; $6802: $3f
	ld b, $c0                                        ; $6803: $06 $c0
	ld bc, $0ba0                                     ; $6805: $01 $a0 $0b
	dec b                                            ; $6808: $05
	ld a, l                                          ; $6809: $7d
	ld e, a                                          ; $680a: $5f
	ld b, $c0                                        ; $680b: $06 $c0
	ld bc, $0ba0                                     ; $680d: $01 $a0 $0b
	dec b                                            ; $6810: $05
	adc h                                            ; $6811: $8c
	ld a, a                                          ; $6812: $7f
	ld b, $c0                                        ; $6813: $06 $c0
	ld bc, $0ba0                                     ; $6815: $01 $a0 $0b
	dec b                                            ; $6818: $05
	sub a                                            ; $6819: $97
	sbc a                                            ; $681a: $9f
	ld b, $c0                                        ; $681b: $06 $c0
	ld bc, $0ba0                                     ; $681d: $01 $a0 $0b
	dec b                                            ; $6820: $05
	and c                                            ; $6821: $a1
	cp a                                             ; $6822: $bf
	ld b, $c0                                        ; $6823: $06 $c0
	ld bc, $0ba0                                     ; $6825: $01 $a0 $0b
	dec b                                            ; $6828: $05
	or c                                             ; $6829: $b1
	rst SubAFromDE                                          ; $682a: $df
	ld b, $c0                                        ; $682b: $06 $c0
	ld bc, $0ba0                                     ; $682d: $01 $a0 $0b
	dec b                                            ; $6830: $05
	cp b                                             ; $6831: $b8
	rst $38                                          ; $6832: $ff
	ld b, $c0                                        ; $6833: $06 $c0
	ld bc, $0ba0                                     ; $6835: $01 $a0 $0b
	dec b                                            ; $6838: $05
	ret                                              ; $6839: $c9


	pop bc                                           ; $683a: $c1
	ld e, e                                          ; $683b: $5b
	or c                                             ; $683c: $b1
	ld d, h                                          ; $683d: $54
	ld b, $c0                                        ; $683e: $06 $c0
	ld bc, $01a0                                     ; $6840: $01 $a0 $01
	dec b                                            ; $6843: $05
	ret c                                            ; $6844: $d8

	xor d                                            ; $6845: $aa
	ld b, $c0                                        ; $6846: $06 $c0
	ld bc, $01a0                                     ; $6848: $01 $a0 $01
	dec b                                            ; $684b: $05
	push hl                                          ; $684c: $e5
	rst $38                                          ; $684d: $ff
	ld b, $c0                                        ; $684e: $06 $c0
	ld bc, $01a0                                     ; $6850: $01 $a0 $01
	dec b                                            ; $6853: $05
	ldh a, [$7f]                                     ; $6854: $f0 $7f
	ld h, c                                          ; $6856: $61
	db $fc                                           ; $6857: $fc
	pop bc                                           ; $6858: $c1
	nop                                              ; $6859: $00
	ret nc                                           ; $685a: $d0

	ld b, $d0                                        ; $685b: $06 $d0
	adc e                                            ; $685d: $8b
	ld bc, $b0b5                                     ; $685e: $01 $b5 $b0
	inc bc                                           ; $6861: $03
	add b                                            ; $6862: $80
	nop                                              ; $6863: $00
	ld e, d                                          ; $6864: $5a
	ld b, $d0                                        ; $6865: $06 $d0
	adc e                                            ; $6867: $8b
	ld bc, $b0b5                                     ; $6868: $01 $b5 $b0
	ld a, [de]                                       ; $686b: $1a
	ld l, b                                          ; $686c: $68
	db $fd                                           ; $686d: $fd
	ld h, [hl]                                       ; $686e: $66
	ret nz                                           ; $686f: $c0

	or l                                             ; $6870: $b5
	ld bc, $06d1                                     ; $6871: $01 $d1 $06
	ret nc                                           ; $6874: $d0

	adc e                                            ; $6875: $8b
	ld bc, $b0b5                                     ; $6876: $01 $b5 $b0
	inc b                                            ; $6879: $04
	ld bc, $0ad2                                     ; $687a: $01 $d2 $0a
	ret nc                                           ; $687d: $d0

	adc e                                            ; $687e: $8b
	ld bc, $b0b5                                     ; $687f: $01 $b5 $b0
	dec b                                            ; $6882: $05
	push hl                                          ; $6883: $e5
	ld d, e                                          ; $6884: $53
	nop                                              ; $6885: $00
	nop                                              ; $6886: $00
	ld bc, $06d3                                     ; $6887: $01 $d3 $06
	ret nc                                           ; $688a: $d0

	adc e                                            ; $688b: $8b
	ld bc, $b0b5                                     ; $688c: $01 $b5 $b0
	ld b, $01                                        ; $688f: $06 $01
	rst SubAFromHL                                          ; $6891: $d7
	ld b, $d0                                        ; $6892: $06 $d0
	adc e                                            ; $6894: $8b
	ld bc, $b0b5                                     ; $6895: $01 $b5 $b0
	rlca                                             ; $6898: $07
	ld bc, $06d8                                     ; $6899: $01 $d8 $06
	ret nc                                           ; $689c: $d0

	adc e                                            ; $689d: $8b
	ld bc, $b0b5                                     ; $689e: $01 $b5 $b0
	ld [$da01], sp                                   ; $68a1: $08 $01 $da
	ld b, $d0                                        ; $68a4: $06 $d0
	adc e                                            ; $68a6: $8b
	ld bc, $b0b5                                     ; $68a7: $01 $b5 $b0
	add hl, bc                                       ; $68aa: $09
	ld bc, $06dd                                     ; $68ab: $01 $dd $06
	ret nc                                           ; $68ae: $d0

	adc e                                            ; $68af: $8b
	ld bc, $b0b5                                     ; $68b0: $01 $b5 $b0
	ld a, [bc]                                       ; $68b3: $0a
	nop                                              ; $68b4: $00
	rra                                              ; $68b5: $1f
	ld h, b                                          ; $68b6: $60
	cp $0e                                           ; $68b7: $fe $0e
	db $fc                                           ; $68b9: $fc
	pop bc                                           ; $68ba: $c1
	ld bc, $f1d0                                     ; $68bb: $01 $d0 $f1
	add b                                            ; $68be: $80
	ld bc, $8045                                     ; $68bf: $01 $45 $80
	nop                                              ; $68c2: $00
	ld e, b                                          ; $68c3: $58
	add b                                            ; $68c4: $80
	nop                                              ; $68c5: $00
	ld e, c                                          ; $68c6: $59
	ld b, $d0                                        ; $68c7: $06 $d0
	adc e                                            ; $68c9: $8b
	ld bc, $b0b5                                     ; $68ca: $01 $b5 $b0
	ld a, [hl+]                                      ; $68cd: $2a
	ld b, $d0                                        ; $68ce: $06 $d0
	adc e                                            ; $68d0: $8b
	ld bc, $b0b5                                     ; $68d1: $01 $b5 $b0
	ld bc, $1809                                     ; $68d4: $01 $09 $18
	pop bc                                           ; $68d7: $c1
	cp l                                             ; $68d8: $bd
	ret nc                                           ; $68d9: $d0

	pop bc                                           ; $68da: $c1
	ld [bc], a                                       ; $68db: $02
	ei                                               ; $68dc: $fb
	pop af                                           ; $68dd: $f1
	add b                                            ; $68de: $80
	nop                                              ; $68df: $00
	call c, $e104                                    ; $68e0: $dc $04 $e1
	ld [bc], a                                       ; $68e3: $02
	add hl, bc                                       ; $68e4: $09
	ret nz                                           ; $68e5: $c0

	ret nc                                           ; $68e6: $d0

	adc e                                            ; $68e7: $8b
	and b                                            ; $68e8: $a0
	inc sp                                           ; $68e9: $33
	or b                                             ; $68ea: $b0
	dec hl                                           ; $68eb: $2b
	db $e4                                           ; $68ec: $e4
	nop                                              ; $68ed: $00
	ld [bc], a                                       ; $68ee: $02
	add hl, bc                                       ; $68ef: $09
	sub l                                            ; $68f0: $95
	pop bc                                           ; $68f1: $c1
	cp l                                             ; $68f2: $bd
	ret nc                                           ; $68f3: $d0

	ret nz                                           ; $68f4: $c0

	ld [hl], b                                       ; $68f5: $70
	ld h, c                                          ; $68f6: $61
	add b                                            ; $68f7: $80
	ld bc, $1447                                     ; $68f8: $01 $47 $14
	nop                                              ; $68fb: $00
	add b                                            ; $68fc: $80
	ld bc, $c0c1                                     ; $68fd: $01 $c1 $c0
	push af                                          ; $6900: $f5
	nop                                              ; $6901: $00
	add b                                            ; $6902: $80
	nop                                              ; $6903: $00
	jp z, $01c0                                      ; $6904: $ca $c0 $01

	and b                                            ; $6907: $a0
	ld bc, $fb05                                     ; $6908: $01 $05 $fb
	ld b, b                                          ; $690b: $40
	add b                                            ; $690c: $80
	ld bc, $8047                                     ; $690d: $01 $47 $80
	ld bc, $1448                                     ; $6910: $01 $48 $14
	nop                                              ; $6913: $00
	add b                                            ; $6914: $80
	ld bc, $c0c1                                     ; $6915: $01 $c1 $c0
	push af                                          ; $6918: $f5
	nop                                              ; $6919: $00
	add b                                            ; $691a: $80
	nop                                              ; $691b: $00
	jp z, $01c0                                      ; $691c: $ca $c0 $01

	and b                                            ; $691f: $a0
	ld bc, $1206                                     ; $6920: $01 $06 $12
	ld b, b                                          ; $6923: $40
	add b                                            ; $6924: $80
	ld bc, $0048                                     ; $6925: $01 $48 $00
	ei                                               ; $6928: $fb
	add b                                            ; $6929: $80
	ld bc, $0b82                                     ; $692a: $01 $82 $0b
	nop                                              ; $692d: $00
	add b                                            ; $692e: $80
	ld bc, $40c1                                     ; $692f: $01 $c1 $40
	add b                                            ; $6932: $80
	ld bc, $e082                                     ; $6933: $01 $82 $e0
	nop                                              ; $6936: $00
	ld d, b                                          ; $6937: $50
	ld h, b                                          ; $6938: $60
	db $fc                                           ; $6939: $fc
	ret nz                                           ; $693a: $c0

	ld h, a                                          ; $693b: $67
	sub $07                                          ; $693c: $d6 $07
	ldh [rP1], a                                     ; $693e: $e0 $00
	ld e, b                                          ; $6940: $58
	push hl                                          ; $6941: $e5
	ld c, $00                                        ; $6942: $0e $00
	nop                                              ; $6944: $00
	ld b, b                                          ; $6945: $40
	ld h, c                                          ; $6946: $61
	cp $0f                                           ; $6947: $fe $0f
	rst $38                                          ; $6949: $ff
	ld [$c0fc], sp                                   ; $694a: $08 $fc $c0
	ld h, l                                          ; $694d: $65
	rst SubAFromHL                                          ; $694e: $d7
	db $fc                                           ; $694f: $fc
	ret nz                                           ; $6950: $c0

	ld h, l                                          ; $6951: $65
	call c, $c0fc                                    ; $6952: $dc $fc $c0
	ld h, [hl]                                       ; $6955: $66
	ldh [rAUD2LOW], a                                ; $6956: $e0 $18
	inc b                                            ; $6958: $04
	nop                                              ; $6959: $00
	add b                                            ; $695a: $80
	ld bc, $fec1                                     ; $695b: $01 $c1 $fe
	add hl, bc                                       ; $695e: $09
	db $fc                                           ; $695f: $fc
	ret nz                                           ; $6960: $c0

	ld h, l                                          ; $6961: $65
	db $d3                                           ; $6962: $d3
	db $fc                                           ; $6963: $fc
	ret nz                                           ; $6964: $c0

	ld h, [hl]                                       ; $6965: $66
	ldh [rAUD2ENV], a                                ; $6966: $e0 $17
	inc b                                            ; $6968: $04
	nop                                              ; $6969: $00
	add b                                            ; $696a: $80
	ld bc, $00c1                                     ; $696b: $01 $c1 $00
	ei                                               ; $696e: $fb
	pop af                                           ; $696f: $f1
	rst $38                                          ; $6970: $ff
	ld b, $80                                        ; $6971: $06 $80
	ld bc, $80c1                                     ; $6973: $01 $c1 $80
	and b                                            ; $6976: $a0
	ld hl, $e104                                     ; $6977: $21 $04 $e1
	nop                                              ; $697a: $00
	daa                                              ; $697b: $27
	ld l, [hl]                                       ; $697c: $6e
	ld b, b                                          ; $697d: $40
	add b                                            ; $697e: $80
	ld bc, $c0c1                                     ; $697f: $01 $c1 $c0
	add sp, -$1c                                     ; $6982: $e8 $e4
	add sp, -$15                                     ; $6984: $e8 $eb
	db $10                                           ; $6986: $10
	ei                                               ; $6987: $fb
	pop af                                           ; $6988: $f1
	add b                                            ; $6989: $80
	nop                                              ; $698a: $00
	dec [hl]                                         ; $698b: $35
	rlca                                             ; $698c: $07
	ldh [rSB], a                                     ; $698d: $e0 $01
	sbc e                                            ; $698f: $9b
	pop hl                                           ; $6990: $e1
	ld b, [hl]                                       ; $6991: $46
	nop                                              ; $6992: $00
	dec e                                            ; $6993: $1d
	db $e4                                           ; $6994: $e4
	rst $38                                          ; $6995: $ff
	ld b, b                                          ; $6996: $40
	ld e, e                                          ; $6997: $5b
	ldh [rP1], a                                     ; $6998: $e0 $00
	cp $60                                           ; $699a: $fe $60
	ei                                               ; $699c: $fb
	adc a                                            ; $699d: $8f
	ld bc, $d11c                                     ; $699e: $01 $1c $d1
	add hl, bc                                       ; $69a1: $09
	ret nc                                           ; $69a2: $d0

	adc a                                            ; $69a3: $8f
	ld bc, $f61c                                     ; $69a4: $01 $1c $f6
	adc a                                            ; $69a7: $8f
	ld bc, $d11c                                     ; $69a8: $01 $1c $d1
	ld b, a                                          ; $69ab: $47
	ldh [rP1], a                                     ; $69ac: $e0 $00
	ld b, [hl]                                       ; $69ae: $46
	ld h, c                                          ; $69af: $61
	cp $0a                                           ; $69b0: $fe $0a
	pop af                                           ; $69b2: $f1
	add b                                            ; $69b3: $80
	nop                                              ; $69b4: $00
	ld b, a                                          ; $69b5: $47
	add b                                            ; $69b6: $80
	ld bc, $802c                                     ; $69b7: $01 $2c $80
	ld bc, $162d                                     ; $69ba: $01 $2d $16
	ldh [rSB], a                                     ; $69bd: $e0 $01
	ld d, [hl]                                       ; $69bf: $56
	ret nz                                           ; $69c0: $c0

	dec bc                                           ; $69c1: $0b
	db $e3                                           ; $69c2: $e3
	nop                                              ; $69c3: $00
	ld l, e                                          ; $69c4: $6b
	ret nz                                           ; $69c5: $c0

	nop                                              ; $69c6: $00
	ld b, $27                                        ; $69c7: $06 $27
	ret nz                                           ; $69c9: $c0

	ld e, a                                          ; $69ca: $5f
	ret nz                                           ; $69cb: $c0

	ld h, c                                          ; $69cc: $61
	ret nz                                           ; $69cd: $c0

	ld h, d                                          ; $69ce: $62
	nop                                              ; $69cf: $00
	add b                                            ; $69d0: $80
	nop                                              ; $69d1: $00
	ld b, a                                          ; $69d2: $47

jr_07b_69d3:
	add b                                            ; $69d3: $80
	nop                                              ; $69d4: $00
	ld b, a                                          ; $69d5: $47
	jr jr_07b_69d3                                   ; $69d6: $18 $fb

	cp $0d                                           ; $69d8: $fe $0d
	pop af                                           ; $69da: $f1
	add b                                            ; $69db: $80
	ld bc, $f12d                                     ; $69dc: $01 $2d $f1
	add b                                            ; $69df: $80
	ld bc, $fb2c                                     ; $69e0: $01 $2c $fb
	ret nz                                           ; $69e3: $c0

	add e                                            ; $69e4: $83
	ret c                                            ; $69e5: $d8

	ret nc                                           ; $69e6: $d0

	rlca                                             ; $69e7: $07
	ldh [rSB], a                                     ; $69e8: $e0 $01
	dec hl                                           ; $69ea: $2b
	push hl                                          ; $69eb: $e5
	ld d, b                                          ; $69ec: $50
	nop                                              ; $69ed: $00
	nop                                              ; $69ee: $00
	inc bc                                           ; $69ef: $03
	ldh [rP1], a                                     ; $69f0: $e0 $00
	ld e, a                                          ; $69f2: $5f
	ld e, h                                          ; $69f3: $5c
	add c                                            ; $69f4: $81
	adc e                                            ; $69f5: $8b
	and b                                            ; $69f6: $a0
	nop                                              ; $69f7: $00
	ld [bc], a                                       ; $69f8: $02
	or b                                             ; $69f9: $b0
	inc c                                            ; $69fa: $0c
	ld [de], a                                       ; $69fb: $12
	ei                                               ; $69fc: $fb
	cp $0a                                           ; $69fd: $fe $0a
	pop af                                           ; $69ff: $f1
	add b                                            ; $6a00: $80
	ld bc, $fb2c                                     ; $6a01: $01 $2c $fb
	ret nz                                           ; $6a04: $c0

	add e                                            ; $6a05: $83
	ret c                                            ; $6a06: $d8

	ldh [$50], a                                     ; $6a07: $e0 $50
	inc b                                            ; $6a09: $04
	nop                                              ; $6a0a: $00
	add b                                            ; $6a0b: $80
	ld bc, $022c                                     ; $6a0c: $01 $2c $02
	or b                                             ; $6a0f: $b0
	dec c                                            ; $6a10: $0d
	ld a, $60                                        ; $6a11: $3e $60
	ld sp, hl                                        ; $6a13: $f9
	ret nz                                           ; $6a14: $c0

	add e                                            ; $6a15: $83
	rst SubAFromHL                                          ; $6a16: $d7
	ldh [$74], a                                     ; $6a17: $e0 $74
	dec b                                            ; $6a19: $05
	ret nc                                           ; $6a1a: $d0

	adc c                                            ; $6a1b: $89
	and b                                            ; $6a1c: $a0
	ld [hl], b                                       ; $6a1d: $70
	pop de                                           ; $6a1e: $d1
	inc c                                            ; $6a1f: $0c
	ret nc                                           ; $6a20: $d0

	adc c                                            ; $6a21: $89
	and b                                            ; $6a22: $a0
	ld [hl], b                                       ; $6a23: $70
	or $e0                                           ; $6a24: $f6 $e0
	ld e, $f3                                        ; $6a26: $1e $f3
	ret nz                                           ; $6a28: $c0

	add e                                            ; $6a29: $83
	rst SubAFromHL                                          ; $6a2a: $d7
	call nc, $fefb                                   ; $6a2b: $d4 $fb $fe
	dec bc                                           ; $6a2e: $0b
	pop af                                           ; $6a2f: $f1
	add b                                            ; $6a30: $80
	ld bc, $f82d                                     ; $6a31: $01 $2d $f8
	ret nz                                           ; $6a34: $c0

	add e                                            ; $6a35: $83
	ret nc                                           ; $6a36: $d0

	adc c                                            ; $6a37: $89
	and b                                            ; $6a38: $a0
	ld [hl], b                                       ; $6a39: $70
	dec d                                            ; $6a3a: $15
	ld h, b                                          ; $6a3b: $60
	db $fc                                           ; $6a3c: $fc
	ret nz                                           ; $6a3d: $c0

	add e                                            ; $6a3e: $83
	ret nc                                           ; $6a3f: $d0

	ret nc                                           ; $6a40: $d0

	inc b                                            ; $6a41: $04
	nop                                              ; $6a42: $00
	add b                                            ; $6a43: $80
	ld bc, $092d                                     ; $6a44: $01 $2d $09
	or b                                             ; $6a47: $b0
	xor d                                            ; $6a48: $aa
	inc b                                            ; $6a49: $04
	nop                                              ; $6a4a: $00
	add b                                            ; $6a4b: $80
	ld bc, $ff2d                                     ; $6a4c: $01 $2d $ff
	nop                                              ; $6a4f: $00
	ld b, [hl]                                       ; $6a50: $46
	add c                                            ; $6a51: $81
	adc e                                            ; $6a52: $8b
	and b                                            ; $6a53: $a0
	nop                                              ; $6a54: $00
	ld [bc], a                                       ; $6a55: $02
	or b                                             ; $6a56: $b0
	inc c                                            ; $6a57: $0c
	dec e                                            ; $6a58: $1d
	ei                                               ; $6a59: $fb
	cp $07                                           ; $6a5a: $fe $07
	pop af                                           ; $6a5c: $f1
	add b                                            ; $6a5d: $80
	ld bc, $802e                                     ; $6a5e: $01 $2e $80
	ld bc, $122c                                     ; $6a61: $01 $2c $12
	ldh [rP1], a                                     ; $6a64: $e0 $00
	xor a                                            ; $6a66: $af
	ret nz                                           ; $6a67: $c0

	dec bc                                           ; $6a68: $0b
	db $e3                                           ; $6a69: $e3
	nop                                              ; $6a6a: $00
	ld l, e                                          ; $6a6b: $6b
	ret nz                                           ; $6a6c: $c0

	nop                                              ; $6a6d: $00
	ld b, $2e                                        ; $6a6e: $06 $2e
	nop                                              ; $6a70: $00
	add b                                            ; $6a71: $80
	ld bc, $c02e                                     ; $6a72: $01 $2e $c0
	ld h, b                                          ; $6a75: $60
	ld [bc], a                                       ; $6a76: $02
	or b                                             ; $6a77: $b0
	dec c                                            ; $6a78: $0d
	dec e                                            ; $6a79: $1d
	ei                                               ; $6a7a: $fb
	cp $07                                           ; $6a7b: $fe $07
	pop af                                           ; $6a7d: $f1
	add b                                            ; $6a7e: $80
	ld bc, $802f                                     ; $6a7f: $01 $2f $80
	ld bc, $122d                                     ; $6a82: $01 $2d $12
	ldh [rP1], a                                     ; $6a85: $e0 $00
	adc [hl]                                         ; $6a87: $8e
	ret nz                                           ; $6a88: $c0

	dec bc                                           ; $6a89: $0b
	db $e3                                           ; $6a8a: $e3
	nop                                              ; $6a8b: $00
	ld l, e                                          ; $6a8c: $6b
	ret nz                                           ; $6a8d: $c0

	nop                                              ; $6a8e: $00
	ld b, $36                                        ; $6a8f: $06 $36
	nop                                              ; $6a91: $00
	add b                                            ; $6a92: $80
	ld bc, $c02f                                     ; $6a93: $01 $2f $c0
	ld e, [hl]                                       ; $6a96: $5e
	ld a, h                                          ; $6a97: $7c
	ei                                               ; $6a98: $fb
	ld hl, sp-$40                                    ; $6a99: $f8 $c0
	add e                                            ; $6a9b: $83
	ret c                                            ; $6a9c: $d8

	ldh [$50], a                                     ; $6a9d: $e0 $50
	dec h                                            ; $6a9f: $25
	ei                                               ; $6aa0: $fb
	cp $07                                           ; $6aa1: $fe $07
	pop af                                           ; $6aa3: $f1
	add b                                            ; $6aa4: $80
	nop                                              ; $6aa5: $00
	ld b, a                                          ; $6aa6: $47
	add b                                            ; $6aa7: $80
	ld bc, $132e                                     ; $6aa8: $01 $2e $13
	ldh [rP1], a                                     ; $6aab: $e0 $00
	ld l, b                                          ; $6aad: $68
	ret nz                                           ; $6aae: $c0

	dec bc                                           ; $6aaf: $0b
	db $e3                                           ; $6ab0: $e3
	nop                                              ; $6ab1: $00
	inc l                                            ; $6ab2: $2c
	ret nz                                           ; $6ab3: $c0

	nop                                              ; $6ab4: $00
	ld b, $3d                                        ; $6ab5: $06 $3d
	ret nz                                           ; $6ab7: $c0

	ld h, c                                          ; $6ab8: $61
	ret nc                                           ; $6ab9: $d0

	adc a                                            ; $6aba: $8f
	ld bc, $d81c                                     ; $6abb: $01 $1c $d8
	ld b, c                                          ; $6abe: $41
	add b                                            ; $6abf: $80
	ld bc, $802c                                     ; $6ac0: $01 $2c $80
	ld bc, $602e                                     ; $6ac3: $01 $2e $60
	ld sp, hl                                        ; $6ac6: $f9
	ret nz                                           ; $6ac7: $c0

	add e                                            ; $6ac8: $83
	rst SubAFromHL                                          ; $6ac9: $d7
	ldh [$db], a                                     ; $6aca: $e0 $db
	dec b                                            ; $6acc: $05
	ret nc                                           ; $6acd: $d0

	adc c                                            ; $6ace: $89
	and b                                            ; $6acf: $a0
	ld a, d                                          ; $6ad0: $7a
	rst SubAFromDE                                          ; $6ad1: $df
	inc c                                            ; $6ad2: $0c
	ret nc                                           ; $6ad3: $d0

	adc c                                            ; $6ad4: $89
	and b                                            ; $6ad5: $a0
	ld a, d                                          ; $6ad6: $7a
	or $e0                                           ; $6ad7: $f6 $e0
	scf                                              ; $6ad9: $37
	di                                               ; $6ada: $f3
	ret nz                                           ; $6adb: $c0

	add e                                            ; $6adc: $83
	rst SubAFromHL                                          ; $6add: $d7
	call nc, $fefb                                   ; $6ade: $d4 $fb $fe
	inc c                                            ; $6ae1: $0c
	ld sp, hl                                        ; $6ae2: $f9
	ret nz                                           ; $6ae3: $c0

	add e                                            ; $6ae4: $83
	ret nc                                           ; $6ae5: $d0

	adc c                                            ; $6ae6: $89
	and b                                            ; $6ae7: $a0
	ld a, d                                          ; $6ae8: $7a
	ei                                               ; $6ae9: $fb
	ret nz                                           ; $6aea: $c0

	add e                                            ; $6aeb: $83
	ret nc                                           ; $6aec: $d0

	rst SubAFromDE                                          ; $6aed: $df
	dec h                                            ; $6aee: $25
	ei                                               ; $6aef: $fb
	cp $07                                           ; $6af0: $fe $07
	pop af                                           ; $6af2: $f1
	add b                                            ; $6af3: $80
	nop                                              ; $6af4: $00
	ld b, a                                          ; $6af5: $47
	add b                                            ; $6af6: $80
	ld bc, $132f                                     ; $6af7: $01 $2f $13
	ldh [rP1], a                                     ; $6afa: $e0 $00
	add hl, de                                       ; $6afc: $19
	ret nz                                           ; $6afd: $c0

	dec bc                                           ; $6afe: $0b
	db $e3                                           ; $6aff: $e3
	nop                                              ; $6b00: $00
	inc l                                            ; $6b01: $2c
	ret nz                                           ; $6b02: $c0

	nop                                              ; $6b03: $00
	ld b, $45                                        ; $6b04: $06 $45
	ret nz                                           ; $6b06: $c0

	ld e, a                                          ; $6b07: $5f
	ret nc                                           ; $6b08: $d0

	adc a                                            ; $6b09: $8f
	ld bc, $d81c                                     ; $6b0a: $01 $1c $d8
	ld b, c                                          ; $6b0d: $41
	add b                                            ; $6b0e: $80
	ld bc, $802d                                     ; $6b0f: $01 $2d $80
	ld bc, $142f                                     ; $6b12: $01 $2f $14
	ei                                               ; $6b15: $fb
	cp $0a                                           ; $6b16: $fe $0a
	pop af                                           ; $6b18: $f1
	add b                                            ; $6b19: $80
	nop                                              ; $6b1a: $00
	jp z, $8bfc                                      ; $6b1b: $ca $fc $8b

	and b                                            ; $6b1e: $a0
	inc sp                                           ; $6b1f: $33
	or b                                             ; $6b20: $b0
	dec hl                                           ; $6b21: $2b
	ld b, $c0                                        ; $6b22: $06 $c0
	push af                                          ; $6b24: $f5
	nop                                              ; $6b25: $00
	add b                                            ; $6b26: $80
	nop                                              ; $6b27: $00
	jp z, $fb0c                                      ; $6b28: $ca $0c $fb

	pop af                                           ; $6b2b: $f1
	add b                                            ; $6b2c: $80
	nop                                              ; $6b2d: $00
	jp z, $c006                                      ; $6b2e: $ca $06 $c0

	push af                                          ; $6b31: $f5
	nop                                              ; $6b32: $00
	add b                                            ; $6b33: $80
	nop                                              ; $6b34: $00
	jp z, $03b4                                      ; $6b35: $ca $b4 $03















































MainScript02::
	sub b                                            ; $6b38: $90
	ld b, e                                          ; $6b39: $43
	add b                                            ; $6b3a: $80
	ld bc, $8049                                     ; $6b3b: $01 $49 $80
	ld bc, $804a                                     ; $6b3e: $01 $4a $80
	ld bc, $804b                                     ; $6b41: $01 $4b $80
	ld bc, $d04d                                     ; $6b44: $01 $4d $d0
	add e                                            ; $6b47: $83
	ld bc, $c1c2                                     ; $6b48: $01 $c2 $c1
	adc b                                            ; $6b4b: $88
	ld h, h                                          ; $6b4c: $64
	rst $38                                          ; $6b4d: $ff
	ld a, [bc]                                       ; $6b4e: $0a
	db $fc                                           ; $6b4f: $fc
	add e                                            ; $6b50: $83
	ld bc, $d1c2                                     ; $6b51: $01 $c2 $d1
	db $fc                                           ; $6b54: $fc
	add e                                            ; $6b55: $83
	ld bc, $d2c2                                     ; $6b56: $01 $c2 $d2
	dec d                                            ; $6b59: $15
	pop bc                                           ; $6b5a: $c1
	xor e                                            ; $6b5b: $ab
	ret nz                                           ; $6b5c: $c0

	rst GetHLinHL                                          ; $6b5d: $cf
	ret c                                            ; $6b5e: $d8

	ld h, b                                          ; $6b5f: $60
	db $fc                                           ; $6b60: $fc
	add e                                            ; $6b61: $83
	ld bc, $d1c2                                     ; $6b62: $01 $c2 $d1
	inc b                                            ; $6b65: $04
	nop                                              ; $6b66: $00
	add b                                            ; $6b67: $80
	ld bc, $0449                                     ; $6b68: $01 $49 $04
	nop                                              ; $6b6b: $00
	add b                                            ; $6b6c: $80
	ld bc, $804a                                     ; $6b6d: $01 $4a $80
	nop                                              ; $6b70: $00
	ld b, a                                          ; $6b71: $47
	ld de, $cfc0                                     ; $6b72: $11 $c0 $cf
	push de                                          ; $6b75: $d5
	ei                                               ; $6b76: $fb
	add b                                            ; $6b77: $80
	nop                                              ; $6b78: $00
	ld e, a                                          ; $6b79: $5f
	add hl, bc                                       ; $6b7a: $09
	ld b, c                                          ; $6b7b: $41
	add b                                            ; $6b7c: $80
	nop                                              ; $6b7d: $00
	ld b, [hl]                                       ; $6b7e: $46
	add b                                            ; $6b7f: $80
	nop                                              ; $6b80: $00
	ld e, a                                          ; $6b81: $5f
	pop bc                                           ; $6b82: $c1
	call z, $0080                                    ; $6b83: $cc $80 $00
	ld e, a                                          ; $6b86: $5f
	inc bc                                           ; $6b87: $03
	ret nz                                           ; $6b88: $c0

	rst GetHLinHL                                          ; $6b89: $cf
	call nc, $83fc                                   ; $6b8a: $d4 $fc $83
	ld bc, $d3c2                                     ; $6b8d: $01 $c2 $d3
	rlca                                             ; $6b90: $07
	ret nz                                           ; $6b91: $c0

	rst GetHLinHL                                          ; $6b92: $cf
	rst SubAFromHL                                          ; $6b93: $d7
	nop                                              ; $6b94: $00
	add b                                            ; $6b95: $80
	ld bc, $fc4b                                     ; $6b96: $01 $4b $fc
	add e                                            ; $6b99: $83
	ld bc, $d4c2                                     ; $6b9a: $01 $c2 $d4
	daa                                              ; $6b9d: $27

jr_07b_6b9e:
	ld h, b                                          ; $6b9e: $60
	rst $38                                          ; $6b9f: $ff
	jr jr_07b_6b9e                                   ; $6ba0: $18 $fc

	adc e                                            ; $6ba2: $8b
	nop                                              ; $6ba3: $00
	nop                                              ; $6ba4: $00
	or b                                             ; $6ba5: $b0
	rrca                                             ; $6ba6: $0f
	db $fc                                           ; $6ba7: $fc
	adc e                                            ; $6ba8: $8b
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	or b                                             ; $6bab: $b0
	ld c, $fc                                        ; $6bac: $0e $fc
	adc e                                            ; $6bae: $8b
	nop                                              ; $6baf: $00
	nop                                              ; $6bb0: $00
	or b                                             ; $6bb1: $b0
	db $10                                           ; $6bb2: $10
	db $fc                                           ; $6bb3: $fc
	adc e                                            ; $6bb4: $8b
	nop                                              ; $6bb5: $00
	nop                                              ; $6bb6: $00
	or b                                             ; $6bb7: $b0
	ld de, $c007                                     ; $6bb8: $11 $07 $c0
	rst GetHLinHL                                          ; $6bbb: $cf
	rst SubAFromHL                                          ; $6bbc: $d7
	nop                                              ; $6bbd: $00
	add b                                            ; $6bbe: $80
	ld bc, $034d                                     ; $6bbf: $01 $4d $03
	ret nz                                           ; $6bc2: $c0

	rst GetHLinHL                                          ; $6bc3: $cf
	ret nc                                           ; $6bc4: $d0

	inc bc                                           ; $6bc5: $03
	ret nz                                           ; $6bc6: $c0

	rst GetHLinHL                                          ; $6bc7: $cf
	ret nc                                           ; $6bc8: $d0

	jr z, jr_07b_6c2d                                ; $6bc9: $28 $62

	add b                                            ; $6bcb: $80
	nop                                              ; $6bcc: $00
	ld b, a                                          ; $6bcd: $47
	ld de, $cfc0                                     ; $6bce: $11 $c0 $cf
	sub $fb                                          ; $6bd1: $d6 $fb
	add b                                            ; $6bd3: $80
	nop                                              ; $6bd4: $00
	ld e, a                                          ; $6bd5: $5f
	add hl, bc                                       ; $6bd6: $09
	ld b, c                                          ; $6bd7: $41
	add b                                            ; $6bd8: $80
	nop                                              ; $6bd9: $00
	ld b, [hl]                                       ; $6bda: $46
	add b                                            ; $6bdb: $80
	nop                                              ; $6bdc: $00
	ld e, a                                          ; $6bdd: $5f
	pop bc                                           ; $6bde: $c1
	call z, $0080                                    ; $6bdf: $cc $80 $00
	ld e, a                                          ; $6be2: $5f
	inc bc                                           ; $6be3: $03
	ret nz                                           ; $6be4: $c0

	rst GetHLinHL                                          ; $6be5: $cf
	db $d3                                           ; $6be6: $d3
	add b                                            ; $6be7: $80
	nop                                              ; $6be8: $00
	inc [hl]                                         ; $6be9: $34
	inc bc                                           ; $6bea: $03
	ret nz                                           ; $6beb: $c0

	rst GetHLinHL                                          ; $6bec: $cf
	pop de                                           ; $6bed: $d1
	inc bc                                           ; $6bee: $03
	ret nz                                           ; $6bef: $c0

	rst GetHLinHL                                          ; $6bf0: $cf
	jp nc, $c005                                     ; $6bf1: $d2 $05 $c0

	xor b                                            ; $6bf4: $a8
	ret nc                                           ; $6bf5: $d0

	ret nz                                           ; $6bf6: $c0

	xor h                                            ; $6bf7: $ac
	rlca                                             ; $6bf8: $07
	ret nz                                           ; $6bf9: $c0

	xor b                                            ; $6bfa: $a8
	ret nc                                           ; $6bfb: $d0

	ret nz                                           ; $6bfc: $c0

	xor h                                            ; $6bfd: $ac
	ret nz                                           ; $6bfe: $c0

	and l                                            ; $6bff: $a5
	add hl, bc                                       ; $6c00: $09
	ret nz                                           ; $6c01: $c0

	xor b                                            ; $6c02: $a8
	ret nc                                           ; $6c03: $d0

	ret nz                                           ; $6c04: $c0

	xor h                                            ; $6c05: $ac
	pop bc                                           ; $6c06: $c1
	ld e, h                                          ; $6c07: $5c
	ret nz                                           ; $6c08: $c0

	jp z, $c005                                      ; $6c09: $ca $05 $c0

	xor c                                            ; $6c0c: $a9
	ret nc                                           ; $6c0d: $d0

	ret nz                                           ; $6c0e: $c0

	xor h                                            ; $6c0f: $ac
	rlca                                             ; $6c10: $07
	ret nz                                           ; $6c11: $c0

	xor c                                            ; $6c12: $a9
	ret nc                                           ; $6c13: $d0

	ret nz                                           ; $6c14: $c0

	xor h                                            ; $6c15: $ac
	ret nz                                           ; $6c16: $c0

	and l                                            ; $6c17: $a5
	add hl, bc                                       ; $6c18: $09
	ret nz                                           ; $6c19: $c0

	xor c                                            ; $6c1a: $a9
	ret nc                                           ; $6c1b: $d0

	ret nz                                           ; $6c1c: $c0

	xor h                                            ; $6c1d: $ac
	pop bc                                           ; $6c1e: $c1
	ld e, h                                          ; $6c1f: $5c
	ret nz                                           ; $6c20: $c0

	jp z, $c005                                      ; $6c21: $ca $05 $c0

	xor d                                            ; $6c24: $aa
	ret nc                                           ; $6c25: $d0

	ret nz                                           ; $6c26: $c0

	xor h                                            ; $6c27: $ac
	rlca                                             ; $6c28: $07
	ret nz                                           ; $6c29: $c0

	xor d                                            ; $6c2a: $aa
	ret nc                                           ; $6c2b: $d0

	ret nz                                           ; $6c2c: $c0

jr_07b_6c2d:
	xor h                                            ; $6c2d: $ac
	ret nz                                           ; $6c2e: $c0

	and l                                            ; $6c2f: $a5
	add hl, bc                                       ; $6c30: $09
	ret nz                                           ; $6c31: $c0

	xor d                                            ; $6c32: $aa
	ret nc                                           ; $6c33: $d0

	ret nz                                           ; $6c34: $c0

	xor h                                            ; $6c35: $ac
	pop bc                                           ; $6c36: $c1
	ld e, h                                          ; $6c37: $5c
	ret nz                                           ; $6c38: $c0

	jp z, $c005                                      ; $6c39: $ca $05 $c0

	xor b                                            ; $6c3c: $a8
	pop de                                           ; $6c3d: $d1
	ret nz                                           ; $6c3e: $c0

	xor h                                            ; $6c3f: $ac
	rlca                                             ; $6c40: $07
	ret nz                                           ; $6c41: $c0

	xor b                                            ; $6c42: $a8
	pop de                                           ; $6c43: $d1
	ret nz                                           ; $6c44: $c0

	xor h                                            ; $6c45: $ac
	ret nz                                           ; $6c46: $c0

	and l                                            ; $6c47: $a5
	add hl, bc                                       ; $6c48: $09
	ret nz                                           ; $6c49: $c0

	xor b                                            ; $6c4a: $a8
	pop de                                           ; $6c4b: $d1
	ret nz                                           ; $6c4c: $c0

	xor h                                            ; $6c4d: $ac
	pop bc                                           ; $6c4e: $c1
	ld e, h                                          ; $6c4f: $5c
	ret nz                                           ; $6c50: $c0

	jp z, $c005                                      ; $6c51: $ca $05 $c0

	xor c                                            ; $6c54: $a9
	pop de                                           ; $6c55: $d1
	ret nz                                           ; $6c56: $c0

	xor h                                            ; $6c57: $ac
	rlca                                             ; $6c58: $07
	ret nz                                           ; $6c59: $c0

	xor c                                            ; $6c5a: $a9
	pop de                                           ; $6c5b: $d1
	ret nz                                           ; $6c5c: $c0

	xor h                                            ; $6c5d: $ac
	ret nz                                           ; $6c5e: $c0

	and l                                            ; $6c5f: $a5
	add hl, bc                                       ; $6c60: $09
	ret nz                                           ; $6c61: $c0

	xor c                                            ; $6c62: $a9
	pop de                                           ; $6c63: $d1
	ret nz                                           ; $6c64: $c0

	xor h                                            ; $6c65: $ac
	pop bc                                           ; $6c66: $c1
	ld e, h                                          ; $6c67: $5c
	ret nz                                           ; $6c68: $c0

	jp z, $c005                                      ; $6c69: $ca $05 $c0

	xor d                                            ; $6c6c: $aa
	pop de                                           ; $6c6d: $d1
	ret nz                                           ; $6c6e: $c0

	xor h                                            ; $6c6f: $ac
	rlca                                             ; $6c70: $07
	ret nz                                           ; $6c71: $c0

	xor d                                            ; $6c72: $aa
	pop de                                           ; $6c73: $d1
	ret nz                                           ; $6c74: $c0

	xor h                                            ; $6c75: $ac
	ret nz                                           ; $6c76: $c0

	and l                                            ; $6c77: $a5
	add hl, bc                                       ; $6c78: $09
	ret nz                                           ; $6c79: $c0

	xor d                                            ; $6c7a: $aa
	pop de                                           ; $6c7b: $d1
	ret nz                                           ; $6c7c: $c0

	xor h                                            ; $6c7d: $ac
	pop bc                                           ; $6c7e: $c1
	ld e, h                                          ; $6c7f: $5c
	ret nz                                           ; $6c80: $c0

	jp z, $c005                                      ; $6c81: $ca $05 $c0

	xor b                                            ; $6c84: $a8
	jp nc, $acc0                                     ; $6c85: $d2 $c0 $ac

	rlca                                             ; $6c88: $07
	ret nz                                           ; $6c89: $c0

	xor b                                            ; $6c8a: $a8
	jp nc, $acc0                                     ; $6c8b: $d2 $c0 $ac

	ret nz                                           ; $6c8e: $c0

	and l                                            ; $6c8f: $a5
	add hl, bc                                       ; $6c90: $09
	ret nz                                           ; $6c91: $c0

	xor b                                            ; $6c92: $a8
	jp nc, $acc0                                     ; $6c93: $d2 $c0 $ac

	pop bc                                           ; $6c96: $c1
	ld e, h                                          ; $6c97: $5c
	ret nz                                           ; $6c98: $c0

	jp z, $c005                                      ; $6c99: $ca $05 $c0

	xor c                                            ; $6c9c: $a9
	jp nc, $acc0                                     ; $6c9d: $d2 $c0 $ac

	rlca                                             ; $6ca0: $07
	ret nz                                           ; $6ca1: $c0

	xor c                                            ; $6ca2: $a9
	jp nc, $acc0                                     ; $6ca3: $d2 $c0 $ac

	ret nz                                           ; $6ca6: $c0

	and l                                            ; $6ca7: $a5
	add hl, bc                                       ; $6ca8: $09
	ret nz                                           ; $6ca9: $c0

	xor c                                            ; $6caa: $a9
	jp nc, $acc0                                     ; $6cab: $d2 $c0 $ac

	pop bc                                           ; $6cae: $c1
	ld e, h                                          ; $6caf: $5c
	ret nz                                           ; $6cb0: $c0

	jp z, $c005                                      ; $6cb1: $ca $05 $c0

	xor d                                            ; $6cb4: $aa
	jp nc, $acc0                                     ; $6cb5: $d2 $c0 $ac

	rlca                                             ; $6cb8: $07
	ret nz                                           ; $6cb9: $c0

	xor d                                            ; $6cba: $aa
	jp nc, $acc0                                     ; $6cbb: $d2 $c0 $ac

	ret nz                                           ; $6cbe: $c0

	and l                                            ; $6cbf: $a5
	add hl, bc                                       ; $6cc0: $09
	ret nz                                           ; $6cc1: $c0

	xor d                                            ; $6cc2: $aa
	jp nc, $acc0                                     ; $6cc3: $d2 $c0 $ac

	pop bc                                           ; $6cc6: $c1
	ld e, h                                          ; $6cc7: $5c
	ret nz                                           ; $6cc8: $c0

	jp z, $c005                                      ; $6cc9: $ca $05 $c0

	xor b                                            ; $6ccc: $a8
	db $d3                                           ; $6ccd: $d3
	ret nz                                           ; $6cce: $c0

	xor h                                            ; $6ccf: $ac
	rlca                                             ; $6cd0: $07
	ret nz                                           ; $6cd1: $c0

	xor b                                            ; $6cd2: $a8
	db $d3                                           ; $6cd3: $d3
	ret nz                                           ; $6cd4: $c0

	xor h                                            ; $6cd5: $ac
	ret nz                                           ; $6cd6: $c0

	and l                                            ; $6cd7: $a5
	add hl, bc                                       ; $6cd8: $09
	ret nz                                           ; $6cd9: $c0

	xor b                                            ; $6cda: $a8
	db $d3                                           ; $6cdb: $d3
	ret nz                                           ; $6cdc: $c0

	xor h                                            ; $6cdd: $ac
	pop bc                                           ; $6cde: $c1
	ld e, h                                          ; $6cdf: $5c
	ret nz                                           ; $6ce0: $c0

	jp z, $c005                                      ; $6ce1: $ca $05 $c0

	xor c                                            ; $6ce4: $a9
	db $d3                                           ; $6ce5: $d3
	ret nz                                           ; $6ce6: $c0

	xor h                                            ; $6ce7: $ac
	rlca                                             ; $6ce8: $07
	ret nz                                           ; $6ce9: $c0

	xor c                                            ; $6cea: $a9
	db $d3                                           ; $6ceb: $d3
	ret nz                                           ; $6cec: $c0

	xor h                                            ; $6ced: $ac
	ret nz                                           ; $6cee: $c0

	and l                                            ; $6cef: $a5
	add hl, bc                                       ; $6cf0: $09
	ret nz                                           ; $6cf1: $c0

	xor c                                            ; $6cf2: $a9
	db $d3                                           ; $6cf3: $d3
	ret nz                                           ; $6cf4: $c0

	xor h                                            ; $6cf5: $ac
	pop bc                                           ; $6cf6: $c1
	ld e, h                                          ; $6cf7: $5c
	ret nz                                           ; $6cf8: $c0

	jp z, $c005                                      ; $6cf9: $ca $05 $c0

	xor d                                            ; $6cfc: $aa
	db $d3                                           ; $6cfd: $d3
	ret nz                                           ; $6cfe: $c0

	xor h                                            ; $6cff: $ac
	rlca                                             ; $6d00: $07
	ret nz                                           ; $6d01: $c0

	xor d                                            ; $6d02: $aa
	db $d3                                           ; $6d03: $d3
	ret nz                                           ; $6d04: $c0

	xor h                                            ; $6d05: $ac
	ret nz                                           ; $6d06: $c0

	and l                                            ; $6d07: $a5
	add hl, bc                                       ; $6d08: $09
	ret nz                                           ; $6d09: $c0

	xor d                                            ; $6d0a: $aa
	db $d3                                           ; $6d0b: $d3
	ret nz                                           ; $6d0c: $c0

	xor h                                            ; $6d0d: $ac
	pop bc                                           ; $6d0e: $c1
	ld e, h                                          ; $6d0f: $5c
	ret nz                                           ; $6d10: $c0

	jp z, $c005                                      ; $6d11: $ca $05 $c0

	xor b                                            ; $6d14: $a8
	rst SubAFromHL                                          ; $6d15: $d7
	ret nz                                           ; $6d16: $c0

	xor h                                            ; $6d17: $ac
	rlca                                             ; $6d18: $07
	ret nz                                           ; $6d19: $c0

	xor b                                            ; $6d1a: $a8
	rst SubAFromHL                                          ; $6d1b: $d7
	ret nz                                           ; $6d1c: $c0

	xor h                                            ; $6d1d: $ac
	ret nz                                           ; $6d1e: $c0

	and l                                            ; $6d1f: $a5
	add hl, bc                                       ; $6d20: $09
	ret nz                                           ; $6d21: $c0

	xor b                                            ; $6d22: $a8
	rst SubAFromHL                                          ; $6d23: $d7
	ret nz                                           ; $6d24: $c0

	xor h                                            ; $6d25: $ac
	pop bc                                           ; $6d26: $c1
	ld e, h                                          ; $6d27: $5c
	ret nz                                           ; $6d28: $c0

	jp z, $c005                                      ; $6d29: $ca $05 $c0

	xor c                                            ; $6d2c: $a9
	rst SubAFromHL                                          ; $6d2d: $d7
	ret nz                                           ; $6d2e: $c0

	xor h                                            ; $6d2f: $ac
	rlca                                             ; $6d30: $07
	ret nz                                           ; $6d31: $c0

	xor c                                            ; $6d32: $a9
	rst SubAFromHL                                          ; $6d33: $d7
	ret nz                                           ; $6d34: $c0

	xor h                                            ; $6d35: $ac
	ret nz                                           ; $6d36: $c0

	and l                                            ; $6d37: $a5
	add hl, bc                                       ; $6d38: $09
	ret nz                                           ; $6d39: $c0

	xor c                                            ; $6d3a: $a9
	rst SubAFromHL                                          ; $6d3b: $d7
	ret nz                                           ; $6d3c: $c0

	xor h                                            ; $6d3d: $ac
	pop bc                                           ; $6d3e: $c1
	ld e, h                                          ; $6d3f: $5c
	ret nz                                           ; $6d40: $c0

	jp z, $c005                                      ; $6d41: $ca $05 $c0

	xor b                                            ; $6d44: $a8
	ret c                                            ; $6d45: $d8

	ret nz                                           ; $6d46: $c0

	xor h                                            ; $6d47: $ac
	rlca                                             ; $6d48: $07
	ret nz                                           ; $6d49: $c0

	xor b                                            ; $6d4a: $a8
	ret c                                            ; $6d4b: $d8

	ret nz                                           ; $6d4c: $c0

	xor h                                            ; $6d4d: $ac
	ret nz                                           ; $6d4e: $c0

	and l                                            ; $6d4f: $a5
	add hl, bc                                       ; $6d50: $09
	ret nz                                           ; $6d51: $c0

	xor b                                            ; $6d52: $a8
	ret c                                            ; $6d53: $d8

	ret nz                                           ; $6d54: $c0

	xor h                                            ; $6d55: $ac
	pop bc                                           ; $6d56: $c1
	ld e, h                                          ; $6d57: $5c
	ret nz                                           ; $6d58: $c0

	jp z, $c005                                      ; $6d59: $ca $05 $c0

	xor c                                            ; $6d5c: $a9
	ret c                                            ; $6d5d: $d8

	ret nz                                           ; $6d5e: $c0

	xor h                                            ; $6d5f: $ac
	rlca                                             ; $6d60: $07
	ret nz                                           ; $6d61: $c0

	xor c                                            ; $6d62: $a9
	ret c                                            ; $6d63: $d8

	ret nz                                           ; $6d64: $c0

	xor h                                            ; $6d65: $ac
	ret nz                                           ; $6d66: $c0

	and l                                            ; $6d67: $a5
	add hl, bc                                       ; $6d68: $09
	ret nz                                           ; $6d69: $c0

	xor c                                            ; $6d6a: $a9
	ret c                                            ; $6d6b: $d8

	ret nz                                           ; $6d6c: $c0

	xor h                                            ; $6d6d: $ac
	pop bc                                           ; $6d6e: $c1
	ld e, h                                          ; $6d6f: $5c
	ret nz                                           ; $6d70: $c0

	jp z, $c005                                      ; $6d71: $ca $05 $c0

	xor b                                            ; $6d74: $a8
	jp c, $acc0                                      ; $6d75: $da $c0 $ac

	rlca                                             ; $6d78: $07
	ret nz                                           ; $6d79: $c0

	xor b                                            ; $6d7a: $a8
	jp c, $acc0                                      ; $6d7b: $da $c0 $ac

	ret nz                                           ; $6d7e: $c0

	and l                                            ; $6d7f: $a5
	add hl, bc                                       ; $6d80: $09
	ret nz                                           ; $6d81: $c0

	xor b                                            ; $6d82: $a8
	jp c, $acc0                                      ; $6d83: $da $c0 $ac

	pop bc                                           ; $6d86: $c1
	ld e, h                                          ; $6d87: $5c
	ret nz                                           ; $6d88: $c0

	jp z, $c005                                      ; $6d89: $ca $05 $c0

	xor c                                            ; $6d8c: $a9
	jp c, $acc0                                      ; $6d8d: $da $c0 $ac

	rlca                                             ; $6d90: $07
	ret nz                                           ; $6d91: $c0

	xor c                                            ; $6d92: $a9
	jp c, $acc0                                      ; $6d93: $da $c0 $ac

	ret nz                                           ; $6d96: $c0

	and l                                            ; $6d97: $a5
	add hl, bc                                       ; $6d98: $09
	ret nz                                           ; $6d99: $c0

	xor c                                            ; $6d9a: $a9
	jp c, $acc0                                      ; $6d9b: $da $c0 $ac

	pop bc                                           ; $6d9e: $c1
	ld e, h                                          ; $6d9f: $5c
	ret nz                                           ; $6da0: $c0

	jp z, $c005                                      ; $6da1: $ca $05 $c0

	xor b                                            ; $6da4: $a8
	db $dd                                           ; $6da5: $dd
	ret nz                                           ; $6da6: $c0

	xor h                                            ; $6da7: $ac
	rlca                                             ; $6da8: $07
	ret nz                                           ; $6da9: $c0

	xor b                                            ; $6daa: $a8
	db $dd                                           ; $6dab: $dd
	ret nz                                           ; $6dac: $c0

	xor h                                            ; $6dad: $ac
	ret nz                                           ; $6dae: $c0

	and l                                            ; $6daf: $a5
	add hl, bc                                       ; $6db0: $09
	ret nz                                           ; $6db1: $c0

	xor b                                            ; $6db2: $a8
	db $dd                                           ; $6db3: $dd
	ret nz                                           ; $6db4: $c0

	xor h                                            ; $6db5: $ac
	pop bc                                           ; $6db6: $c1
	ld e, h                                          ; $6db7: $5c
	ret nz                                           ; $6db8: $c0

	jp z, $c005                                      ; $6db9: $ca $05 $c0

	xor c                                            ; $6dbc: $a9
	db $dd                                           ; $6dbd: $dd
	ret nz                                           ; $6dbe: $c0

	xor h                                            ; $6dbf: $ac
	rlca                                             ; $6dc0: $07
	ret nz                                           ; $6dc1: $c0

	xor c                                            ; $6dc2: $a9
	db $dd                                           ; $6dc3: $dd
	ret nz                                           ; $6dc4: $c0

	xor h                                            ; $6dc5: $ac
	ret nz                                           ; $6dc6: $c0

	and l                                            ; $6dc7: $a5
	add hl, bc                                       ; $6dc8: $09
	ret nz                                           ; $6dc9: $c0

	xor c                                            ; $6dca: $a9
	db $dd                                           ; $6dcb: $dd
	ret nz                                           ; $6dcc: $c0

	xor h                                            ; $6dcd: $ac
	pop bc                                           ; $6dce: $c1
	ld e, h                                          ; $6dcf: $5c
	ret nz                                           ; $6dd0: $c0

	jp z, $c003                                      ; $6dd1: $ca $03 $c0

	xor b                                            ; $6dd4: $a8
	sbc $05                                          ; $6dd5: $de $05
	ret nz                                           ; $6dd7: $c0

	xor b                                            ; $6dd8: $a8
	sbc $c0                                          ; $6dd9: $de $c0
	and l                                            ; $6ddb: $a5
	inc bc                                           ; $6ddc: $03
	ret nz                                           ; $6ddd: $c0

	xor c                                            ; $6dde: $a9
	sbc $05                                          ; $6ddf: $de $05
	ret nz                                           ; $6de1: $c0

	xor c                                            ; $6de2: $a9
	sbc $c0                                          ; $6de3: $de $c0
	and l                                            ; $6de5: $a5
	inc bc                                           ; $6de6: $03
	ret nz                                           ; $6de7: $c0

	xor b                                            ; $6de8: $a8
	rst SubAFromDE                                          ; $6de9: $df
	dec b                                            ; $6dea: $05
	ret nz                                           ; $6deb: $c0

	xor b                                            ; $6dec: $a8
	rst SubAFromDE                                          ; $6ded: $df
	ret nz                                           ; $6dee: $c0

	and l                                            ; $6def: $a5
	rlca                                             ; $6df0: $07
	ret nz                                           ; $6df1: $c0

	xor b                                            ; $6df2: $a8
	rst SubAFromDE                                          ; $6df3: $df
	pop bc                                           ; $6df4: $c1
	ld e, h                                          ; $6df5: $5c
	ret nz                                           ; $6df6: $c0

	jp z, $c006                                      ; $6df7: $ca $06 $c0

	and a                                            ; $6dfa: $a7
	rst SubAFromDE                                          ; $6dfb: $df
	db $d3                                           ; $6dfc: $d3
	ldh [rAUD1SWEEP], a                              ; $6dfd: $e0 $10
	inc b                                            ; $6dff: $04
	ret nz                                           ; $6e00: $c0

	xor b                                            ; $6e01: $a8
	ldh [rAUD1SWEEP], a                              ; $6e02: $e0 $10
	ld b, $c0                                        ; $6e04: $06 $c0
	xor b                                            ; $6e06: $a8
	ldh [rAUD1SWEEP], a                              ; $6e07: $e0 $10
	ret nz                                           ; $6e09: $c0

	and l                                            ; $6e0a: $a5
	ld [$a8c0], sp                                   ; $6e0b: $08 $c0 $a8
	ldh [rAUD1SWEEP], a                              ; $6e0e: $e0 $10
	pop bc                                           ; $6e10: $c1
	ld e, h                                          ; $6e11: $5c
	ret nz                                           ; $6e12: $c0

	jp z, $c004                                      ; $6e13: $ca $04 $c0

	xor c                                            ; $6e16: $a9
	ldh [rAUD1SWEEP], a                              ; $6e17: $e0 $10
	ld b, $c0                                        ; $6e19: $06 $c0
	xor c                                            ; $6e1b: $a9
	ldh [rAUD1SWEEP], a                              ; $6e1c: $e0 $10
	ret nz                                           ; $6e1e: $c0

	and l                                            ; $6e1f: $a5
	inc b                                            ; $6e20: $04
	ret nz                                           ; $6e21: $c0

	xor b                                            ; $6e22: $a8
	ldh [rAUD1LEN], a                                ; $6e23: $e0 $11
	ld b, $c0                                        ; $6e25: $06 $c0
	xor b                                            ; $6e27: $a8
	ldh [rAUD1LEN], a                                ; $6e28: $e0 $11
	ret nz                                           ; $6e2a: $c0

	and l                                            ; $6e2b: $a5
	ld [$a8c0], sp                                   ; $6e2c: $08 $c0 $a8
	ldh [rAUD1LEN], a                                ; $6e2f: $e0 $11
	pop bc                                           ; $6e31: $c1
	ld e, h                                          ; $6e32: $5c
	ret nz                                           ; $6e33: $c0

	jp z, $c007                                      ; $6e34: $ca $07 $c0

	and a                                            ; $6e37: $a7
	ldh [rAUD1LEN], a                                ; $6e38: $e0 $11
	db $d3                                           ; $6e3a: $d3
	ldh [rAUD1SWEEP], a                              ; $6e3b: $e0 $10
	add hl, bc                                       ; $6e3d: $09
	ret nz                                           ; $6e3e: $c0

	and a                                            ; $6e3f: $a7
	ldh [rAUD1LEN], a                                ; $6e40: $e0 $11
	db $d3                                           ; $6e42: $d3
	ldh [rAUD1SWEEP], a                              ; $6e43: $e0 $10
	ret nz                                           ; $6e45: $c0

	and l                                            ; $6e46: $a5
	inc bc                                           ; $6e47: $03
	ret nz                                           ; $6e48: $c0

	xor e                                            ; $6e49: $ab
	jp nc, $c003                                     ; $6e4a: $d2 $03 $c0

	xor e                                            ; $6e4d: $ab
	pop de                                           ; $6e4e: $d1
	inc bc                                           ; $6e4f: $03
	ret nz                                           ; $6e50: $c0

	xor e                                            ; $6e51: $ab
	ret nc                                           ; $6e52: $d0

	inc bc                                           ; $6e53: $03
	ret nz                                           ; $6e54: $c0

	xor e                                            ; $6e55: $ab
	db $d3                                           ; $6e56: $d3
	inc bc                                           ; $6e57: $03
	ret nz                                           ; $6e58: $c0

	xor e                                            ; $6e59: $ab
	call nc, $c003                                   ; $6e5a: $d4 $03 $c0
	xor e                                            ; $6e5d: $ab
	push de                                          ; $6e5e: $d5
	ld [bc], a                                       ; $6e5f: $02
	ret nz                                           ; $6e60: $c0

	xor h                                            ; $6e61: $ac
	ld [bc], a                                       ; $6e62: $02
	ret nz                                           ; $6e63: $c0

	xor h                                            ; $6e64: $ac
	ld [$82d0], sp                                   ; $6e65: $08 $d0 $82
	ld bc, $d1c6                                     ; $6e68: $01 $c6 $d1
	ldh [rSB], a                                     ; $6e6b: $e0 $01
	ld h, c                                          ; $6e6d: $61
	ld [$82d0], sp                                   ; $6e6e: $08 $d0 $82
	ld bc, $d2c6                                     ; $6e71: $01 $c6 $d2
	ldh [rSB], a                                     ; $6e74: $e0 $01
	ld h, d                                          ; $6e76: $62
	ld [$82d0], sp                                   ; $6e77: $08 $d0 $82
	ld bc, $d3c6                                     ; $6e7a: $01 $c6 $d3
	ldh [rSB], a                                     ; $6e7d: $e0 $01
	ld h, e                                          ; $6e7f: $63
	ld [$82d0], sp                                   ; $6e80: $08 $d0 $82
	ld bc, $d4c6                                     ; $6e83: $01 $c6 $d4
	ldh [rSB], a                                     ; $6e86: $e0 $01
	ld h, h                                          ; $6e88: $64
	ld [$82d0], sp                                   ; $6e89: $08 $d0 $82
	ld bc, $d5c6                                     ; $6e8c: $01 $c6 $d5
	ldh [rSB], a                                     ; $6e8f: $e0 $01
	ld h, l                                          ; $6e91: $65
	ld [$82d0], sp                                   ; $6e92: $08 $d0 $82
	ld bc, $d1c9                                     ; $6e95: $01 $c9 $d1
	ldh [rSB], a                                     ; $6e98: $e0 $01
	inc [hl]                                         ; $6e9a: $34
	ld [$82d0], sp                                   ; $6e9b: $08 $d0 $82
	ld bc, $d2c9                                     ; $6e9e: $01 $c9 $d2
	ldh [rSB], a                                     ; $6ea1: $e0 $01
	dec [hl]                                         ; $6ea3: $35
	ld [$82d0], sp                                   ; $6ea4: $08 $d0 $82
	ld bc, $d3c9                                     ; $6ea7: $01 $c9 $d3
	ldh [rSB], a                                     ; $6eaa: $e0 $01
	ld [hl], $08                                     ; $6eac: $36 $08
	ret nc                                           ; $6eae: $d0

	add d                                            ; $6eaf: $82
	ld bc, $d4c9                                     ; $6eb0: $01 $c9 $d4
	ldh [rSB], a                                     ; $6eb3: $e0 $01
	scf                                              ; $6eb5: $37
	ld [$82d0], sp                                   ; $6eb6: $08 $d0 $82
	ld bc, $d5c9                                     ; $6eb9: $01 $c9 $d5
	ldh [rSB], a                                     ; $6ebc: $e0 $01
	jr c, jr_07b_6ec8                                ; $6ebe: $38 $08

	ret nc                                           ; $6ec0: $d0

	add d                                            ; $6ec1: $82
	ld bc, $d1cc                                     ; $6ec2: $01 $cc $d1
	ldh [rSB], a                                     ; $6ec5: $e0 $01
	rlca                                             ; $6ec7: $07

jr_07b_6ec8:
	ld [$82d0], sp                                   ; $6ec8: $08 $d0 $82
	ld bc, $d2cc                                     ; $6ecb: $01 $cc $d2
	ldh [rSB], a                                     ; $6ece: $e0 $01
	ld [$d008], sp                                   ; $6ed0: $08 $08 $d0
	add d                                            ; $6ed3: $82
	ld bc, $d3cc                                     ; $6ed4: $01 $cc $d3
	ldh [rSB], a                                     ; $6ed7: $e0 $01
	add hl, bc                                       ; $6ed9: $09
	ld [$82d0], sp                                   ; $6eda: $08 $d0 $82
	ld bc, $d4cc                                     ; $6edd: $01 $cc $d4
	ldh [rSB], a                                     ; $6ee0: $e0 $01
	ld a, [bc]                                       ; $6ee2: $0a
	ld [$82d0], sp                                   ; $6ee3: $08 $d0 $82
	ld bc, $d5cc                                     ; $6ee6: $01 $cc $d5
	ldh [rSB], a                                     ; $6ee9: $e0 $01
	dec bc                                           ; $6eeb: $0b
	ld [$82d0], sp                                   ; $6eec: $08 $d0 $82
	ld bc, $d1cf                                     ; $6eef: $01 $cf $d1
	ldh [rP1], a                                     ; $6ef2: $e0 $00
	jp c, $d008                                      ; $6ef4: $da $08 $d0

	add d                                            ; $6ef7: $82
	ld bc, $d2cf                                     ; $6ef8: $01 $cf $d2
	ldh [rP1], a                                     ; $6efb: $e0 $00
	db $db                                           ; $6efd: $db
	ld [$82d0], sp                                   ; $6efe: $08 $d0 $82
	ld bc, $d3cf                                     ; $6f01: $01 $cf $d3
	ldh [rP1], a                                     ; $6f04: $e0 $00
	call c, $d008                                    ; $6f06: $dc $08 $d0
	add d                                            ; $6f09: $82
	ld bc, $d4cf                                     ; $6f0a: $01 $cf $d4
	ldh [rP1], a                                     ; $6f0d: $e0 $00
	db $dd                                           ; $6f0f: $dd
	ld [$82d0], sp                                   ; $6f10: $08 $d0 $82
	ld bc, $d5cf                                     ; $6f13: $01 $cf $d5
	ldh [rP1], a                                     ; $6f16: $e0 $00
	sbc $08                                          ; $6f18: $de $08
	ret nc                                           ; $6f1a: $d0

	add d                                            ; $6f1b: $82
	ld bc, $d1d2                                     ; $6f1c: $01 $d2 $d1
	ldh [rP1], a                                     ; $6f1f: $e0 $00
	xor l                                            ; $6f21: $ad
	ld [$82d0], sp                                   ; $6f22: $08 $d0 $82
	ld bc, $d2d2                                     ; $6f25: $01 $d2 $d2
	ldh [rP1], a                                     ; $6f28: $e0 $00
	xor [hl]                                         ; $6f2a: $ae
	ld [$82d0], sp                                   ; $6f2b: $08 $d0 $82
	ld bc, $d3d2                                     ; $6f2e: $01 $d2 $d3
	ldh [rP1], a                                     ; $6f31: $e0 $00
	xor a                                            ; $6f33: $af
	ld [$82d0], sp                                   ; $6f34: $08 $d0 $82
	ld bc, $d4d2                                     ; $6f37: $01 $d2 $d4
	ldh [rP1], a                                     ; $6f3a: $e0 $00
	or b                                             ; $6f3c: $b0
	ld [$82d0], sp                                   ; $6f3d: $08 $d0 $82
	ld bc, $d5d2                                     ; $6f40: $01 $d2 $d5
	ldh [rP1], a                                     ; $6f43: $e0 $00
	or c                                             ; $6f45: $b1
	ld [$82d0], sp                                   ; $6f46: $08 $d0 $82
	ld bc, $d1d5                                     ; $6f49: $01 $d5 $d1
	ldh [rP1], a                                     ; $6f4c: $e0 $00
	add b                                            ; $6f4e: $80
	ld [$82d0], sp                                   ; $6f4f: $08 $d0 $82
	ld bc, $d2d5                                     ; $6f52: $01 $d5 $d2
	ldh [rP1], a                                     ; $6f55: $e0 $00
	add c                                            ; $6f57: $81
	ld [$82d0], sp                                   ; $6f58: $08 $d0 $82
	ld bc, $d3d5                                     ; $6f5b: $01 $d5 $d3
	ldh [rP1], a                                     ; $6f5e: $e0 $00
	add d                                            ; $6f60: $82
	ld [$82d0], sp                                   ; $6f61: $08 $d0 $82
	ld bc, $d4d5                                     ; $6f64: $01 $d5 $d4
	ldh [rP1], a                                     ; $6f67: $e0 $00
	add e                                            ; $6f69: $83
	ld [$82d0], sp                                   ; $6f6a: $08 $d0 $82
	ld bc, $d5d5                                     ; $6f6d: $01 $d5 $d5
	ldh [rP1], a                                     ; $6f70: $e0 $00
	add h                                            ; $6f72: $84
	ld [$82d0], sp                                   ; $6f73: $08 $d0 $82
	ld bc, $d1d8                                     ; $6f76: $01 $d8 $d1
	ldh [rP1], a                                     ; $6f79: $e0 $00
	ld d, e                                          ; $6f7b: $53
	ld [$82d0], sp                                   ; $6f7c: $08 $d0 $82
	ld bc, $d2d8                                     ; $6f7f: $01 $d8 $d2
	ldh [rP1], a                                     ; $6f82: $e0 $00
	ld d, h                                          ; $6f84: $54
	ld [$82d0], sp                                   ; $6f85: $08 $d0 $82
	ld bc, $d3d8                                     ; $6f88: $01 $d8 $d3
	ldh [rP1], a                                     ; $6f8b: $e0 $00
	ld d, l                                          ; $6f8d: $55
	ld [$82d0], sp                                   ; $6f8e: $08 $d0 $82
	ld bc, $d4d8                                     ; $6f91: $01 $d8 $d4
	ldh [rP1], a                                     ; $6f94: $e0 $00
	ld d, [hl]                                       ; $6f96: $56
	ld [$82d0], sp                                   ; $6f97: $08 $d0 $82
	ld bc, $d5d8                                     ; $6f9a: $01 $d8 $d5
	ldh [rP1], a                                     ; $6f9d: $e0 $00
	ld d, a                                          ; $6f9f: $57
	ld [$82d0], sp                                   ; $6fa0: $08 $d0 $82
	ld bc, $d1db                                     ; $6fa3: $01 $db $d1

jr_07b_6fa6:
	ldh [rP1], a                                     ; $6fa6: $e0 $00
	ld h, $08                                        ; $6fa8: $26 $08
	ret nc                                           ; $6faa: $d0

	add d                                            ; $6fab: $82
	ld bc, $d2db                                     ; $6fac: $01 $db $d2
	ldh [rP1], a                                     ; $6faf: $e0 $00
	daa                                              ; $6fb1: $27
	ld [$82d0], sp                                   ; $6fb2: $08 $d0 $82
	ld bc, $d3db                                     ; $6fb5: $01 $db $d3
	ldh [rP1], a                                     ; $6fb8: $e0 $00
	jr z, jr_07b_6fc4                                ; $6fba: $28 $08

	ret nc                                           ; $6fbc: $d0

	add d                                            ; $6fbd: $82
	ld bc, $d4db                                     ; $6fbe: $01 $db $d4
	ldh [rP1], a                                     ; $6fc1: $e0 $00
	add hl, hl                                       ; $6fc3: $29

jr_07b_6fc4:
	ld [$82d0], sp                                   ; $6fc4: $08 $d0 $82
	ld bc, $d5db                                     ; $6fc7: $01 $db $d5
	ldh [rP1], a                                     ; $6fca: $e0 $00
	ld a, [hl+]                                      ; $6fcc: $2a
	add hl, bc                                       ; $6fcd: $09
	ldh [rP1], a                                     ; $6fce: $e0 $00
	jr nc, @-$3e                                     ; $6fd0: $30 $c0

	ld bc, $01a0                                     ; $6fd2: $01 $a0 $01
	nop                                              ; $6fd5: $00
	ld bc, $e009                                     ; $6fd6: $01 $09 $e0
	nop                                              ; $6fd9: $00
	jr nc, @-$3e                                     ; $6fda: $30 $c0

	ld bc, $01a0                                     ; $6fdc: $01 $a0 $01
	nop                                              ; $6fdf: $00
	add hl, bc                                       ; $6fe0: $09
	add hl, bc                                       ; $6fe1: $09
	ldh [rP1], a                                     ; $6fe2: $e0 $00
	jr nc, jr_07b_6fa6                               ; $6fe4: $30 $c0

	ld bc, $01a0                                     ; $6fe6: $01 $a0 $01
	nop                                              ; $6fe9: $00
	dec c                                            ; $6fea: $0d
	add hl, bc                                       ; $6feb: $09
	ldh [rP1], a                                     ; $6fec: $e0 $00
	dec l                                            ; $6fee: $2d
	ret nz                                           ; $6fef: $c0

	ld bc, $01a0                                     ; $6ff0: $01 $a0 $01
	nop                                              ; $6ff3: $00
	ld de, $e009                                     ; $6ff4: $11 $09 $e0
	nop                                              ; $6ff7: $00
	ld a, [hl+]                                      ; $6ff8: $2a
	ret nz                                           ; $6ff9: $c0

	ld bc, $01a0                                     ; $6ffa: $01 $a0 $01
	nop                                              ; $6ffd: $00
	dec d                                            ; $6ffe: $15
	add hl, bc                                       ; $6fff: $09
	ret nz                                           ; $7000: $c0

	ld d, c                                          ; $7001: $51
	db $d3                                           ; $7002: $d3
	ret nz                                           ; $7003: $c0

	ld d, b                                          ; $7004: $50
	jp nc, Jump_07b_55c0                             ; $7005: $d2 $c0 $55

	jp c, $c009                                      ; $7008: $da $09 $c0

	ld d, c                                          ; $700b: $51
	jp nc, $50c0                                     ; $700c: $d2 $c0 $50

	pop de                                           ; $700f: $d1
	ret nz                                           ; $7010: $c0

	ld d, l                                          ; $7011: $55
	ret c                                            ; $7012: $d8

	ld b, $c0                                        ; $7013: $06 $c0
	ld d, c                                          ; $7015: $51
	pop de                                           ; $7016: $d1
	ret nz                                           ; $7017: $c0

	ld d, l                                          ; $7018: $55
	sub $06                                          ; $7019: $d6 $06
	ret nz                                           ; $701b: $c0

	ld d, e                                          ; $701c: $53
	pop de                                           ; $701d: $d1
	ret nz                                           ; $701e: $c0

	ld d, d                                          ; $701f: $52
	ret c                                            ; $7020: $d8

	add hl, bc                                       ; $7021: $09
	ret nz                                           ; $7022: $c0

	ld d, h                                          ; $7023: $54
	pop de                                           ; $7024: $d1
	ret nz                                           ; $7025: $c0

	ld d, e                                          ; $7026: $53
	jp nc, Jump_07b_52c0                             ; $7027: $d2 $c0 $52

	jp c, Jump_07b_6011                              ; $702a: $da $11 $60

	ld hl, sp-$40                                    ; $702d: $f8 $c0
	ld l, d                                          ; $702f: $6a
	jp nc, $c105                                     ; $7030: $d2 $05 $c1

	ld e, c                                          ; $7033: $59
	db $e3                                           ; $7034: $e3
	nop                                              ; $7035: $00
	add b                                            ; $7036: $80
	dec b                                            ; $7037: $05
	pop bc                                           ; $7038: $c1
	ld e, c                                          ; $7039: $59
	db $e3                                           ; $703a: $e3
	nop                                              ; $703b: $00
	add [hl]                                         ; $703c: $86
	ld de, $f860                                     ; $703d: $11 $60 $f8
	ret nz                                           ; $7040: $c0

	ld l, d                                          ; $7041: $6a
	jp nc, $c105                                     ; $7042: $d2 $05 $c1

	ld e, c                                          ; $7045: $59
	db $e3                                           ; $7046: $e3
	nop                                              ; $7047: $00
	add e                                            ; $7048: $83
	dec b                                            ; $7049: $05
	pop bc                                           ; $704a: $c1
	ld e, c                                          ; $704b: $59
	db $e3                                           ; $704c: $e3
	nop                                              ; $704d: $00
	adc b                                            ; $704e: $88
	ld de, $f860                                     ; $704f: $11 $60 $f8
	ret nz                                           ; $7052: $c0

	ld l, d                                          ; $7053: $6a
	jp nc, $c105                                     ; $7054: $d2 $05 $c1

	ld e, c                                          ; $7057: $59
	db $e3                                           ; $7058: $e3
	nop                                              ; $7059: $00
	add c                                            ; $705a: $81
	dec b                                            ; $705b: $05
	pop bc                                           ; $705c: $c1
	ld e, c                                          ; $705d: $59
	db $e3                                           ; $705e: $e3
	nop                                              ; $705f: $00
	add a                                            ; $7060: $87
	ld de, $f860                                     ; $7061: $11 $60 $f8
	ret nz                                           ; $7064: $c0

	ld l, d                                          ; $7065: $6a
	jp nc, $c105                                     ; $7066: $d2 $05 $c1

	ld e, c                                          ; $7069: $59
	db $e3                                           ; $706a: $e3
	nop                                              ; $706b: $00
	add b                                            ; $706c: $80
	dec b                                            ; $706d: $05
	pop bc                                           ; $706e: $c1
	ld e, c                                          ; $706f: $59
	db $e3                                           ; $7070: $e3
	nop                                              ; $7071: $00
	add [hl]                                         ; $7072: $86
	inc de                                           ; $7073: $13
	pop bc                                           ; $7074: $c1
	ld e, e                                          ; $7075: $5b
	ret nz                                           ; $7076: $c0

	inc c                                            ; $7077: $0c
	ldh [$3c], a                                     ; $7078: $e0 $3c
	pop bc                                           ; $707a: $c1
	add a                                            ; $707b: $87

jr_07b_707c:
	ret nz                                           ; $707c: $c0

	dec bc                                           ; $707d: $0b
	db $e3                                           ; $707e: $e3
	nop                                              ; $707f: $00
	ld de, $0cc0                                     ; $7080: $11 $c0 $0c
	ldh [$78], a                                     ; $7083: $e0 $78
	ret nz                                           ; $7085: $c0

	rl [hl]                                          ; $7086: $cb $16
	ldh [rIE], a                                     ; $7088: $e0 $ff
	ld [$83d0], a                                    ; $708a: $ea $d0 $83
	ld bc, $d0de                                     ; $708d: $01 $de $d0
	ret nz                                           ; $7090: $c0

	add hl, bc                                       ; $7091: $09
	db $e3                                           ; $7092: $e3
	nop                                              ; $7093: $00
	daa                                              ; $7094: $27
	ret nz                                           ; $7095: $c0

	ld bc, $01a0                                     ; $7096: $01 $a0 $01
	nop                                              ; $7099: $00
	jr jr_07b_707c                                   ; $709a: $18 $e0

	nop                                              ; $709c: $00
	add sp, $16                                      ; $709d: $e8 $16
	ldh [rIE], a                                     ; $709f: $e0 $ff
	db $d3                                           ; $70a1: $d3
	ret nc                                           ; $70a2: $d0

	add e                                            ; $70a3: $83
	ld bc, $d1de                                     ; $70a4: $01 $de $d1
	ret nz                                           ; $70a7: $c0

	add hl, bc                                       ; $70a8: $09
	db $e3                                           ; $70a9: $e3
	nop                                              ; $70aa: $00
	ld h, $c0                                        ; $70ab: $26 $c0
	ld bc, $01a0                                     ; $70ad: $01 $a0 $01
	nop                                              ; $70b0: $00
	dec hl                                           ; $70b1: $2b
	ldh [rP1], a                                     ; $70b2: $e0 $00
	pop de                                           ; $70b4: $d1
	ld d, $e0                                        ; $70b5: $16 $e0
	rst $38                                          ; $70b7: $ff
	cp h                                             ; $70b8: $bc
	ret nc                                           ; $70b9: $d0

	add e                                            ; $70ba: $83
	ld bc, $d2de                                     ; $70bb: $01 $de $d2
	ret nz                                           ; $70be: $c0

	add hl, bc                                       ; $70bf: $09
	db $e3                                           ; $70c0: $e3
	nop                                              ; $70c1: $00
	ld [hl+], a                                      ; $70c2: $22
	ret nz                                           ; $70c3: $c0

	ld bc, $01a0                                     ; $70c4: $01 $a0 $01
	nop                                              ; $70c7: $00
	ld b, b                                          ; $70c8: $40
	ldh [rP1], a                                     ; $70c9: $e0 $00
	cp d                                             ; $70cb: $ba
	ld d, $e0                                        ; $70cc: $16 $e0
	rst $38                                          ; $70ce: $ff
	and l                                            ; $70cf: $a5
	ret nc                                           ; $70d0: $d0

	add e                                            ; $70d1: $83
	ld bc, $d3de                                     ; $70d2: $01 $de $d3
	ret nz                                           ; $70d5: $c0

	add hl, bc                                       ; $70d6: $09
	db $e3                                           ; $70d7: $e3
	nop                                              ; $70d8: $00
	dec h                                            ; $70d9: $25
	ret nz                                           ; $70da: $c0

	ld bc, $01a0                                     ; $70db: $01 $a0 $01
	nop                                              ; $70de: $00
	ld d, [hl]                                       ; $70df: $56
	ldh [rP1], a                                     ; $70e0: $e0 $00
	and e                                            ; $70e2: $a3
	ld d, $e0                                        ; $70e3: $16 $e0
	rst $38                                          ; $70e5: $ff
	adc [hl]                                         ; $70e6: $8e
	ret nc                                           ; $70e7: $d0

	add e                                            ; $70e8: $83
	ld bc, $d4de                                     ; $70e9: $01 $de $d4
	ret nz                                           ; $70ec: $c0

	add hl, bc                                       ; $70ed: $09
	db $e3                                           ; $70ee: $e3
	nop                                              ; $70ef: $00
	inc hl                                           ; $70f0: $23
	ret nz                                           ; $70f1: $c0

	ld bc, $01a0                                     ; $70f2: $01 $a0 $01
	nop                                              ; $70f5: $00
	ld l, a                                          ; $70f6: $6f
	ldh [rP1], a                                     ; $70f7: $e0 $00
	adc h                                            ; $70f9: $8c
	ld d, $e0                                        ; $70fa: $16 $e0
	rst $38                                          ; $70fc: $ff
	ld [hl], a                                       ; $70fd: $77
	ret nc                                           ; $70fe: $d0

	add e                                            ; $70ff: $83
	ld bc, $d5de                                     ; $7100: $01 $de $d5
	ret nz                                           ; $7103: $c0

	add hl, bc                                       ; $7104: $09
	db $e3                                           ; $7105: $e3
	nop                                              ; $7106: $00
	ld [hl+], a                                      ; $7107: $22
	ret nz                                           ; $7108: $c0

	ld bc, $01a0                                     ; $7109: $01 $a0 $01
	nop                                              ; $710c: $00
	ld a, a                                          ; $710d: $7f
	ldh [rP1], a                                     ; $710e: $e0 $00
	ld [hl], l                                       ; $7110: $75
	ld d, $e0                                        ; $7111: $16 $e0
	rst $38                                          ; $7113: $ff
	ld h, b                                          ; $7114: $60
	ret nc                                           ; $7115: $d0

	add e                                            ; $7116: $83
	ld bc, $d6de                                     ; $7117: $01 $de $d6
	ret nz                                           ; $711a: $c0

	add hl, bc                                       ; $711b: $09
	db $e3                                           ; $711c: $e3
	nop                                              ; $711d: $00
	ld h, $c0                                        ; $711e: $26 $c0
	ld bc, $01a0                                     ; $7120: $01 $a0 $01
	nop                                              ; $7123: $00
	sub b                                            ; $7124: $90
	ldh [rP1], a                                     ; $7125: $e0 $00
	ld e, [hl]                                       ; $7127: $5e
	ld d, $e0                                        ; $7128: $16 $e0
	rst $38                                          ; $712a: $ff
	ld c, c                                          ; $712b: $49
	ret nc                                           ; $712c: $d0

	add e                                            ; $712d: $83
	ld bc, $d7de                                     ; $712e: $01 $de $d7
	ret nz                                           ; $7131: $c0

	add hl, bc                                       ; $7132: $09
	db $e3                                           ; $7133: $e3
	nop                                              ; $7134: $00
	daa                                              ; $7135: $27
	ret nz                                           ; $7136: $c0

	ld bc, $01a0                                     ; $7137: $01 $a0 $01
	nop                                              ; $713a: $00
	and h                                            ; $713b: $a4
	ldh [rP1], a                                     ; $713c: $e0 $00
	ld b, a                                          ; $713e: $47
	ld d, $e0                                        ; $713f: $16 $e0
	rst $38                                          ; $7141: $ff
	ld [hl-], a                                      ; $7142: $32
	ret nc                                           ; $7143: $d0

	add e                                            ; $7144: $83
	ld bc, $d8de                                     ; $7145: $01 $de $d8
	ret nz                                           ; $7148: $c0

	add hl, bc                                       ; $7149: $09
	db $e3                                           ; $714a: $e3

jr_07b_714b:
	nop                                              ; $714b: $00
	dec h                                            ; $714c: $25
	ret nz                                           ; $714d: $c0

	ld bc, $01a0                                     ; $714e: $01 $a0 $01
	nop                                              ; $7151: $00
	or [hl]                                          ; $7152: $b6
	ldh [rP1], a                                     ; $7153: $e0 $00
	jr nc, jr_07b_716d                               ; $7155: $30 $16

	ldh [rIE], a                                     ; $7157: $e0 $ff
	dec de                                           ; $7159: $1b
	ret nc                                           ; $715a: $d0

	add e                                            ; $715b: $83
	ld bc, $d9de                                     ; $715c: $01 $de $d9
	ret nz                                           ; $715f: $c0

	add hl, bc                                       ; $7160: $09
	db $e3                                           ; $7161: $e3
	nop                                              ; $7162: $00
	inc h                                            ; $7163: $24
	ret nz                                           ; $7164: $c0

	ld bc, $01a0                                     ; $7165: $01 $a0 $01
	nop                                              ; $7168: $00
	ret z                                            ; $7169: $c8

	ldh [rP1], a                                     ; $716a: $e0 $00
	add hl, de                                       ; $716c: $19

jr_07b_716d:
	ld d, $e0                                        ; $716d: $16 $e0
	rst $38                                          ; $716f: $ff
	inc b                                            ; $7170: $04
	ret nc                                           ; $7171: $d0

	add e                                            ; $7172: $83
	ld bc, $dade                                     ; $7173: $01 $de $da
	ret nz                                           ; $7176: $c0

	add hl, bc                                       ; $7177: $09
	db $e3                                           ; $7178: $e3
	nop                                              ; $7179: $00
	ld h, $c0                                        ; $717a: $26 $c0
	ld bc, $01a0                                     ; $717c: $01 $a0 $01
	nop                                              ; $717f: $00
	pop hl                                           ; $7180: $e1
	ldh [rP1], a                                     ; $7181: $e0 $00
	ld [bc], a                                       ; $7183: $02
	ld d, $c0                                        ; $7184: $16 $c0
	add hl, bc                                       ; $7186: $09
	db $e3                                           ; $7187: $e3
	nop                                              ; $7188: $00
	jr z, jr_07b_714b                                ; $7189: $28 $c0

	jp z, $00c0                                      ; $718b: $ca $c0 $00

	nop                                              ; $718e: $00
	or $c0                                           ; $718f: $f6 $c0
	set 0, b                                         ; $7191: $cb $c0
	ld de, $00e3                                     ; $7193: $11 $e3 $00
	sub e                                            ; $7196: $93
	pop bc                                           ; $7197: $c1
	ld e, h                                          ; $7198: $5c
	ret nz                                           ; $7199: $c0

	jp z, $c10a                                      ; $719a: $ca $0a $c1

	ld e, e                                          ; $719d: $5b
	ret nz                                           ; $719e: $c0

	inc c                                            ; $719f: $0c
	ldh [rAUD3HIGH], a                               ; $71a0: $e0 $1e
	pop bc                                           ; $71a2: $c1
	dec sp                                           ; $71a3: $3b
	ret nz                                           ; $71a4: $c0

	rr d                                             ; $71a5: $cb $1a
	ldh [rIE], a                                     ; $71a7: $e0 $ff
	di                                               ; $71a9: $f3
	ret nz                                           ; $71aa: $c0

	add hl, bc                                       ; $71ab: $09
	db $e3                                           ; $71ac: $e3
	nop                                              ; $71ad: $00
	dec e                                            ; $71ae: $1d
	ret nz                                           ; $71af: $c0

	inc c                                            ; $71b0: $0c
	ldh [rAUD3HIGH], a                               ; $71b1: $e0 $1e
	ret nc                                           ; $71b3: $d0

	add e                                            ; $71b4: $83
	ld bc, $d0de                                     ; $71b5: $01 $de $d0
	ret nz                                           ; $71b8: $c0

	ld bc, $01a0                                     ; $71b9: $01 $a0 $01
	ld bc, $e002                                     ; $71bc: $01 $02 $e0
	ld bc, $1a07                                     ; $71bf: $01 $07 $1a
	ldh [rIE], a                                     ; $71c2: $e0 $ff
	ret c                                            ; $71c4: $d8

	ret nz                                           ; $71c5: $c0

	add hl, bc                                       ; $71c6: $09
	db $e3                                           ; $71c7: $e3
	nop                                              ; $71c8: $00
	dec e                                            ; $71c9: $1d
	ret nz                                           ; $71ca: $c0

	inc c                                            ; $71cb: $0c
	ldh [rAUD3HIGH], a                               ; $71cc: $e0 $1e
	ret nc                                           ; $71ce: $d0

	add e                                            ; $71cf: $83
	ld bc, $d0de                                     ; $71d0: $01 $de $d0
	ret nz                                           ; $71d3: $c0

	ld bc, $01a0                                     ; $71d4: $01 $a0 $01
	ld bc, $e00f                                     ; $71d7: $01 $0f $e0
	nop                                              ; $71da: $00
	db $ec                                           ; $71db: $ec
	ld a, [de]                                       ; $71dc: $1a
	ldh [rIE], a                                     ; $71dd: $e0 $ff
	cp l                                             ; $71df: $bd
	ret nz                                           ; $71e0: $c0

	add hl, bc                                       ; $71e1: $09
	db $e3                                           ; $71e2: $e3
	nop                                              ; $71e3: $00
	dec e                                            ; $71e4: $1d
	ret nz                                           ; $71e5: $c0

	inc c                                            ; $71e6: $0c
	ldh [rAUD3HIGH], a                               ; $71e7: $e0 $1e
	ret nc                                           ; $71e9: $d0

	add e                                            ; $71ea: $83
	ld bc, $d0de                                     ; $71eb: $01 $de $d0
	ret nz                                           ; $71ee: $c0

	ld bc, $01a0                                     ; $71ef: $01 $a0 $01
	ld bc, $e01c                                     ; $71f2: $01 $1c $e0
	nop                                              ; $71f5: $00
	pop de                                           ; $71f6: $d1
	ld d, $e0                                        ; $71f7: $16 $e0
	rst $38                                          ; $71f9: $ff
	and d                                            ; $71fa: $a2
	ret nz                                           ; $71fb: $c0

	add hl, bc                                       ; $71fc: $09
	db $e3                                           ; $71fd: $e3
	nop                                              ; $71fe: $00
	ld e, $d0                                        ; $71ff: $1e $d0
	add e                                            ; $7201: $83
	ld bc, $d1de                                     ; $7202: $01 $de $d1
	ret nz                                           ; $7205: $c0

	ld bc, $01a0                                     ; $7206: $01 $a0 $01
	ld bc, $e028                                     ; $7209: $01 $28 $e0
	nop                                              ; $720c: $00
	cp d                                             ; $720d: $ba
	ld d, $e0                                        ; $720e: $16 $e0
	rst $38                                          ; $7210: $ff
	adc e                                            ; $7211: $8b
	ret nz                                           ; $7212: $c0

	add hl, bc                                       ; $7213: $09
	db $e3                                           ; $7214: $e3
	nop                                              ; $7215: $00
	jr nz, @-$2e                                     ; $7216: $20 $d0

	add e                                            ; $7218: $83
	ld bc, $d2de                                     ; $7219: $01 $de $d2
	ret nz                                           ; $721c: $c0

	ld bc, $01a0                                     ; $721d: $01 $a0 $01
	ld bc, $e03e                                     ; $7220: $01 $3e $e0
	nop                                              ; $7223: $00
	and e                                            ; $7224: $a3
	ld d, $e0                                        ; $7225: $16 $e0
	rst $38                                          ; $7227: $ff
	ld [hl], h                                       ; $7228: $74
	ret nz                                           ; $7229: $c0

	add hl, bc                                       ; $722a: $09
	db $e3                                           ; $722b: $e3
	nop                                              ; $722c: $00

jr_07b_722d:
	rra                                              ; $722d: $1f
	ret nc                                           ; $722e: $d0

	add e                                            ; $722f: $83
	ld bc, $d3de                                     ; $7230: $01 $de $d3
	ret nz                                           ; $7233: $c0

	ld bc, $01a0                                     ; $7234: $01 $a0 $01
	ld bc, $e053                                     ; $7237: $01 $53 $e0
	nop                                              ; $723a: $00
	adc h                                            ; $723b: $8c
	ld d, $e0                                        ; $723c: $16 $e0
	rst $38                                          ; $723e: $ff
	ld e, l                                          ; $723f: $5d
	ret nz                                           ; $7240: $c0

	add hl, bc                                       ; $7241: $09
	db $e3                                           ; $7242: $e3
	nop                                              ; $7243: $00
	ld e, $d0                                        ; $7244: $1e $d0

jr_07b_7246:
	add e                                            ; $7246: $83
	ld bc, $d4de                                     ; $7247: $01 $de $d4
	ret nz                                           ; $724a: $c0

	ld bc, $01a0                                     ; $724b: $01 $a0 $01
	ld bc, $e06f                                     ; $724e: $01 $6f $e0
	nop                                              ; $7251: $00
	ld [hl], l                                       ; $7252: $75
	ld d, $e0                                        ; $7253: $16 $e0
	rst $38                                          ; $7255: $ff
	ld b, [hl]                                       ; $7256: $46
	ret nz                                           ; $7257: $c0

	add hl, bc                                       ; $7258: $09
	db $e3                                           ; $7259: $e3
	nop                                              ; $725a: $00
	jr nz, jr_07b_722d                               ; $725b: $20 $d0

	add e                                            ; $725d: $83
	ld bc, $d5de                                     ; $725e: $01 $de $d5
	ret nz                                           ; $7261: $c0

	ld bc, $01a0                                     ; $7262: $01 $a0 $01
	ld bc, $e084                                     ; $7265: $01 $84 $e0
	nop                                              ; $7268: $00
	ld e, [hl]                                       ; $7269: $5e
	ld d, $e0                                        ; $726a: $16 $e0
	rst $38                                          ; $726c: $ff
	cpl                                              ; $726d: $2f
	ret nz                                           ; $726e: $c0

	add hl, bc                                       ; $726f: $09
	db $e3                                           ; $7270: $e3
	nop                                              ; $7271: $00
	rra                                              ; $7272: $1f
	ret nc                                           ; $7273: $d0

	add e                                            ; $7274: $83
	ld bc, $d6de                                     ; $7275: $01 $de $d6
	ret nz                                           ; $7278: $c0

	ld bc, $01a0                                     ; $7279: $01 $a0 $01
	ld bc, $e090                                     ; $727c: $01 $90 $e0
	nop                                              ; $727f: $00
	ld b, a                                          ; $7280: $47
	ld d, $e0                                        ; $7281: $16 $e0
	rst $38                                          ; $7283: $ff
	jr jr_07b_7246                                   ; $7284: $18 $c0

	add hl, bc                                       ; $7286: $09
	db $e3                                           ; $7287: $e3
	nop                                              ; $7288: $00

jr_07b_7289:
	ld e, $d0                                        ; $7289: $1e $d0
	add e                                            ; $728b: $83
	ld bc, $d7de                                     ; $728c: $01 $de $d7
	ret nz                                           ; $728f: $c0

	ld bc, $01a0                                     ; $7290: $01 $a0 $01
	ld bc, $e09f                                     ; $7293: $01 $9f $e0
	nop                                              ; $7296: $00
	jr nc, jr_07b_72af                               ; $7297: $30 $16

	ldh [rIE], a                                     ; $7299: $e0 $ff
	ld bc, $09c0                                     ; $729b: $01 $c0 $09
	db $e3                                           ; $729e: $e3
	nop                                              ; $729f: $00
	rra                                              ; $72a0: $1f
	ret nc                                           ; $72a1: $d0

	add e                                            ; $72a2: $83
	ld bc, $d8de                                     ; $72a3: $01 $de $d8
	ret nz                                           ; $72a6: $c0

	ld bc, $01a0                                     ; $72a7: $01 $a0 $01
	ld bc, $e0b4                                     ; $72aa: $01 $b4 $e0
	nop                                              ; $72ad: $00
	add hl, de                                       ; $72ae: $19

jr_07b_72af:
	ld d, $e0                                        ; $72af: $16 $e0
	cp $ea                                           ; $72b1: $fe $ea
	ret nz                                           ; $72b3: $c0

	add hl, bc                                       ; $72b4: $09
	db $e3                                           ; $72b5: $e3
	nop                                              ; $72b6: $00
	jr nz, jr_07b_7289                               ; $72b7: $20 $d0

	add e                                            ; $72b9: $83
	ld bc, $d9de                                     ; $72ba: $01 $de $d9
	ret nz                                           ; $72bd: $c0

	ld bc, $01a0                                     ; $72be: $01 $a0 $01
	ld bc, $e0c5                                     ; $72c1: $01 $c5 $e0
	nop                                              ; $72c4: $00
	ld [bc], a                                       ; $72c5: $02
	inc c                                            ; $72c6: $0c
	pop bc                                           ; $72c7: $c1
	dec sp                                           ; $72c8: $3b
	ret nz                                           ; $72c9: $c0

	add hl, bc                                       ; $72ca: $09
	db $e3                                           ; $72cb: $e3
	nop                                              ; $72cc: $00
	ld hl, $11c0                                     ; $72cd: $21 $c0 $11
	db $e3                                           ; $72d0: $e3
	nop                                              ; $72d1: $00
	sub l                                            ; $72d2: $95
	ld [$cbc0], sp                                   ; $72d3: $08 $c0 $cb
	ret nz                                           ; $72d6: $c0

	inc c                                            ; $72d7: $0c
	ldh [$5a], a                                     ; $72d8: $e0 $5a
	ret nz                                           ; $72da: $c0

	jp z, $c008                                      ; $72db: $ca $08 $c0

	set 0, b                                         ; $72de: $cb $c0
	inc c                                            ; $72e0: $0c
	ldh [rAUD3HIGH], a                               ; $72e1: $e0 $1e
	ret nz                                           ; $72e3: $c0

	jp z, $c008                                      ; $72e4: $ca $08 $c0

	set 0, b                                         ; $72e7: $cb $c0
	inc c                                            ; $72e9: $0c
	ldh [hDisp1_WX], a                                     ; $72ea: $e0 $96
	ret nz                                           ; $72ec: $c0

	jp z, wPtrToDataCopyStruct                                      ; $72ed: $ca $08 $c1

	and c                                            ; $72f0: $a1
	ret nz                                           ; $72f1: $c0

	inc c                                            ; $72f2: $0c
	ldh [$5a], a                                     ; $72f3: $e0 $5a
	ret nz                                           ; $72f5: $c0

	jp z, $c004                                      ; $72f6: $ca $04 $c0

	nop                                              ; $72f9: $00
	ld bc, $1ed6                                     ; $72fa: $01 $d6 $1e
	pop bc                                           ; $72fd: $c1
	add a                                            ; $72fe: $87
	ret nz                                           ; $72ff: $c0

	set 0, b                                         ; $7300: $cb $c0
	dec bc                                           ; $7302: $0b
	db $e3                                           ; $7303: $e3
	nop                                              ; $7304: $00
	ld a, [hl+]                                      ; $7305: $2a
	ret nz                                           ; $7306: $c0

	inc c                                            ; $7307: $0c
	ldh [$b4], a                                     ; $7308: $e0 $b4
	ret nz                                           ; $730a: $c0

	dec bc                                           ; $730b: $0b
	db $e3                                           ; $730c: $e3
	nop                                              ; $730d: $00
	add hl, hl                                       ; $730e: $29
	ret nz                                           ; $730f: $c0

	inc c                                            ; $7310: $0c
	pop hl                                           ; $7311: $e1
	ld bc, $c00e                                     ; $7312: $01 $0e $c0
	add hl, bc                                       ; $7315: $09
	db $e3                                           ; $7316: $e3
	nop                                              ; $7317: $00
	ld b, c                                          ; $7318: $41
	ret nz                                           ; $7319: $c0

	jp z, $c013                                      ; $731a: $ca $13 $c0

	set 0, b                                         ; $731d: $cb $c0
	add hl, bc                                       ; $731f: $09
	db $e3                                           ; $7320: $e3
	nop                                              ; $7321: $00
	dec hl                                           ; $7322: $2b
	ret nz                                           ; $7323: $c0

	inc c                                            ; $7324: $0c
	pop hl                                           ; $7325: $e1
	ld bc, $c068                                     ; $7326: $01 $68 $c0
	add hl, bc                                       ; $7329: $09
	db $e3                                           ; $732a: $e3
	nop                                              ; $732b: $00
	ld b, c                                          ; $732c: $41
	ret nz                                           ; $732d: $c0

	jp z, $c11e                                      ; $732e: $ca $1e $c1

	add a                                            ; $7331: $87
	ret nz                                           ; $7332: $c0

	set 0, b                                         ; $7333: $cb $c0
	dec bc                                           ; $7335: $0b
	db $e3                                           ; $7336: $e3
	nop                                              ; $7337: $00
	ld [hl+], a                                      ; $7338: $22
	ret nz                                           ; $7339: $c0

	inc c                                            ; $733a: $0c
	ldh [$78], a                                     ; $733b: $e0 $78
	ret nz                                           ; $733d: $c0

	add hl, bc                                       ; $733e: $09
	db $e3                                           ; $733f: $e3
	nop                                              ; $7340: $00
	cpl                                              ; $7341: $2f
	ret nz                                           ; $7342: $c0

	inc c                                            ; $7343: $0c
	pop hl                                           ; $7344: $e1
	ld bc, $c068                                     ; $7345: $01 $68 $c0
	add hl, bc                                       ; $7348: $09
	db $e3                                           ; $7349: $e3
	nop                                              ; $734a: $00
	ld b, c                                          ; $734b: $41
	ret nz                                           ; $734c: $c0

	jp z, $c013                                      ; $734d: $ca $13 $c0

	set 0, b                                         ; $7350: $cb $c0
	add hl, bc                                       ; $7352: $09
	db $e3                                           ; $7353: $e3
	nop                                              ; $7354: $00
	ld b, d                                          ; $7355: $42
	ret nz                                           ; $7356: $c0

	inc c                                            ; $7357: $0c
	pop hl                                           ; $7358: $e1
	ld bc, $c068                                     ; $7359: $01 $68 $c0
	add hl, bc                                       ; $735c: $09
	db $e3                                           ; $735d: $e3
	nop                                              ; $735e: $00
	ld b, c                                          ; $735f: $41
	ret nz                                           ; $7360: $c0

	jp z, $c013                                      ; $7361: $ca $13 $c0

	set 0, b                                         ; $7364: $cb $c0
	add hl, bc                                       ; $7366: $09
	db $e3                                           ; $7367: $e3
	nop                                              ; $7368: $00
	ld b, b                                          ; $7369: $40
	ret nz                                           ; $736a: $c0

	inc c                                            ; $736b: $0c
	pop hl                                           ; $736c: $e1
	ld bc, $c0a4                                     ; $736d: $01 $a4 $c0
	add hl, bc                                       ; $7370: $09
	db $e3                                           ; $7371: $e3
	nop                                              ; $7372: $00
	ld b, c                                          ; $7373: $41
	ret nz                                           ; $7374: $c0

	jp z, $c01d                                      ; $7375: $ca $1d $c0

	set 0, c                                         ; $7378: $cb $c1
	ld e, e                                          ; $737a: $5b
	ret nz                                           ; $737b: $c0

	add hl, bc                                       ; $737c: $09
	db $e3                                           ; $737d: $e3
	nop                                              ; $737e: $00
	dec l                                            ; $737f: $2d
	ret nz                                           ; $7380: $c0

	rrca                                             ; $7381: $0f
	db $e3                                           ; $7382: $e3
	nop                                              ; $7383: $00
	sub d                                            ; $7384: $92
	ret nz                                           ; $7385: $c0

	ld bc, $01a0                                     ; $7386: $01 $a0 $01
	ld bc, $c1e4                                     ; $7389: $01 $e4 $c1
	ld e, h                                          ; $738c: $5c
	ret nz                                           ; $738d: $c0

	add hl, bc                                       ; $738e: $09
	db $e3                                           ; $738f: $e3
	nop                                              ; $7390: $00
	ld b, c                                          ; $7391: $41
	ret nz                                           ; $7392: $c0

	jp z, $c10c                                      ; $7393: $ca $0c $c1

	ld d, a                                          ; $7396: $57
	ret nz                                           ; $7397: $c0

	add hl, bc                                       ; $7398: $09
	db $e3                                           ; $7399: $e3
	nop                                              ; $739a: $00
	dec sp                                           ; $739b: $3b
	ret nz                                           ; $739c: $c0

	rrca                                             ; $739d: $0f
	db $e3                                           ; $739e: $e3
	nop                                              ; $739f: $00
	or a                                             ; $73a0: $b7
	inc hl                                           ; $73a1: $23
	pop bc                                           ; $73a2: $c1
	dec sp                                           ; $73a3: $3b
	ret nz                                           ; $73a4: $c0

	set 0, c                                         ; $73a5: $cb $c1
	ld e, e                                          ; $73a7: $5b
	ret nc                                           ; $73a8: $d0

	add a                                            ; $73a9: $87
	and b                                            ; $73aa: $a0
	nop                                              ; $73ab: $00
	ret nz                                           ; $73ac: $c0

	xor $c0                                          ; $73ad: $ee $c0
	add hl, bc                                       ; $73af: $09
	db $e3                                           ; $73b0: $e3
	nop                                              ; $73b1: $00
	inc sp                                           ; $73b2: $33
	ret nz                                           ; $73b3: $c0

	rrca                                             ; $73b4: $0f
	db $e3                                           ; $73b5: $e3
	nop                                              ; $73b6: $00
	ld a, e                                          ; $73b7: $7b
	ei                                               ; $73b8: $fb
	db $fc                                           ; $73b9: $fc
	add a                                            ; $73ba: $87
	and b                                            ; $73bb: $a0
	nop                                              ; $73bc: $00
	ret nc                                           ; $73bd: $d0

	ld b, $c0                                        ; $73be: $06 $c0
	ld bc, $0fa0                                     ; $73c0: $01 $a0 $0f
	ld bc, $16eb                                     ; $73c3: $01 $eb $16
	pop bc                                           ; $73c6: $c1
	dec sp                                           ; $73c7: $3b
	ret nz                                           ; $73c8: $c0

	set 0, c                                         ; $73c9: $cb $c1
	ld e, e                                          ; $73cb: $5b
	ret nc                                           ; $73cc: $d0

	add a                                            ; $73cd: $87
	ld bc, $c1e2                                     ; $73ce: $01 $e2 $c1
	ld [hl], b                                       ; $73d1: $70
	ret nz                                           ; $73d2: $c0

	add hl, bc                                       ; $73d3: $09
	db $e3                                           ; $73d4: $e3
	nop                                              ; $73d5: $00
	inc sp                                           ; $73d6: $33
	ret nz                                           ; $73d7: $c0

	ld de, $00e3                                     ; $73d8: $11 $e3 $00
	ld a, e                                          ; $73db: $7b
	ld [de], a                                       ; $73dc: $12
	pop bc                                           ; $73dd: $c1
	dec sp                                           ; $73de: $3b
	ret nz                                           ; $73df: $c0

	set 0, c                                         ; $73e0: $cb $c1
	ld e, e                                          ; $73e2: $5b
	ret nz                                           ; $73e3: $c0

	rst AddAOntoHL                                          ; $73e4: $ef
	ret nz                                           ; $73e5: $c0

	add hl, bc                                       ; $73e6: $09
	db $e3                                           ; $73e7: $e3
	nop                                              ; $73e8: $00
	inc sp                                           ; $73e9: $33
	ret nz                                           ; $73ea: $c0

	ld de, $00e3                                     ; $73eb: $11 $e3 $00
	ld a, e                                          ; $73ee: $7b
	ld a, [hl]                                       ; $73ef: $7e
	db $fd                                           ; $73f0: $fd
	ld a, h                                          ; $73f1: $7c
	adc e                                            ; $73f2: $8b
	ld bc, $02ea                                     ; $73f3: $01 $ea $02
	or b                                             ; $73f6: $b0
	inc l                                            ; $73f7: $2c
	rlca                                             ; $73f8: $07
	ret nz                                           ; $73f9: $c0

	ld d, [hl]                                       ; $73fa: $56
	add e                                            ; $73fb: $83
	nop                                              ; $73fc: $00
	ld [hl], $de                                     ; $73fd: $36 $de
	ret nc                                           ; $73ff: $d0

	ld [bc], a                                       ; $7400: $02
	or b                                             ; $7401: $b0
	dec l                                            ; $7402: $2d
	rlca                                             ; $7403: $07
	ret nz                                           ; $7404: $c0

	ld d, [hl]                                       ; $7405: $56
	add e                                            ; $7406: $83
	nop                                              ; $7407: $00
	ld [hl], $de                                     ; $7408: $36 $de
	pop de                                           ; $740a: $d1
	ld [bc], a                                       ; $740b: $02
	or b                                             ; $740c: $b0
	ld l, $07                                        ; $740d: $2e $07
	ret nz                                           ; $740f: $c0

	ld d, [hl]                                       ; $7410: $56
	add e                                            ; $7411: $83
	nop                                              ; $7412: $00
	ld [hl], $de                                     ; $7413: $36 $de
	jp nc, $b002                                     ; $7415: $d2 $02 $b0

	cpl                                              ; $7418: $2f
	rlca                                             ; $7419: $07
	ret nz                                           ; $741a: $c0

	ld d, [hl]                                       ; $741b: $56
	add e                                            ; $741c: $83
	nop                                              ; $741d: $00
	ld [hl], $de                                     ; $741e: $36 $de
	db $d3                                           ; $7420: $d3
	ld [bc], a                                       ; $7421: $02
	or b                                             ; $7422: $b0
	jr nc, @+$09                                     ; $7423: $30 $07

	ret nz                                           ; $7425: $c0

	ld d, [hl]                                       ; $7426: $56
	add e                                            ; $7427: $83
	nop                                              ; $7428: $00
	ld [hl], $de                                     ; $7429: $36 $de
	call nc, $b002                                   ; $742b: $d4 $02 $b0
	ld sp, $c007                                     ; $742e: $31 $07 $c0
	ld d, [hl]                                       ; $7431: $56
	add e                                            ; $7432: $83
	nop                                              ; $7433: $00
	ld [hl], $de                                     ; $7434: $36 $de
	push de                                          ; $7436: $d5
	ld [bc], a                                       ; $7437: $02
	or b                                             ; $7438: $b0
	ld [hl-], a                                      ; $7439: $32
	rlca                                             ; $743a: $07
	ret nz                                           ; $743b: $c0

	ld d, [hl]                                       ; $743c: $56
	add e                                            ; $743d: $83
	nop                                              ; $743e: $00
	ld [hl], $de                                     ; $743f: $36 $de
	sub $02                                          ; $7441: $d6 $02
	or b                                             ; $7443: $b0
	inc sp                                           ; $7444: $33
	rlca                                             ; $7445: $07
	ret nz                                           ; $7446: $c0

	ld d, [hl]                                       ; $7447: $56
	add e                                            ; $7448: $83
	nop                                              ; $7449: $00
	ld [hl], $de                                     ; $744a: $36 $de
	rst SubAFromHL                                          ; $744c: $d7
	ld [bc], a                                       ; $744d: $02
	or b                                             ; $744e: $b0
	inc [hl]                                         ; $744f: $34
	rlca                                             ; $7450: $07
	ret nz                                           ; $7451: $c0

	ld d, [hl]                                       ; $7452: $56
	add e                                            ; $7453: $83
	nop                                              ; $7454: $00
	ld [hl], $de                                     ; $7455: $36 $de
	ret c                                            ; $7457: $d8

	ld [bc], a                                       ; $7458: $02
	or b                                             ; $7459: $b0
	dec [hl]                                         ; $745a: $35
	rlca                                             ; $745b: $07
	ret nz                                           ; $745c: $c0

	ld d, [hl]                                       ; $745d: $56
	add e                                            ; $745e: $83
	nop                                              ; $745f: $00
	ld [hl], $de                                     ; $7460: $36 $de
	reti                                             ; $7462: $d9


	ld [bc], a                                       ; $7463: $02
	or b                                             ; $7464: $b0
	ld [hl], $07                                     ; $7465: $36 $07
	ret nz                                           ; $7467: $c0

	ld d, [hl]                                       ; $7468: $56
	add e                                            ; $7469: $83
	nop                                              ; $746a: $00
	ld [hl], $de                                     ; $746b: $36 $de
	jp c, $fd89                                      ; $746d: $da $89 $fd

	add a                                            ; $7470: $87
	adc e                                            ; $7471: $8b
	ld bc, $02f6                                     ; $7472: $01 $f6 $02
	or b                                             ; $7475: $b0
	scf                                              ; $7476: $37
	rlca                                             ; $7477: $07
	ret nz                                           ; $7478: $c0

	ld d, [hl]                                       ; $7479: $56
	add e                                            ; $747a: $83
	nop                                              ; $747b: $00
	ld [hl], $df                                     ; $747c: $36 $df
	ret nc                                           ; $747e: $d0

	ld [bc], a                                       ; $747f: $02
	or b                                             ; $7480: $b0
	jr c, jr_07b_748a                                ; $7481: $38 $07

	ret nz                                           ; $7483: $c0

	ld d, [hl]                                       ; $7484: $56
	add e                                            ; $7485: $83
	nop                                              ; $7486: $00
	ld [hl], $df                                     ; $7487: $36 $df
	pop de                                           ; $7489: $d1

jr_07b_748a:
	ld [bc], a                                       ; $748a: $02
	or b                                             ; $748b: $b0
	add hl, sp                                       ; $748c: $39
	rlca                                             ; $748d: $07
	ret nz                                           ; $748e: $c0

	ld d, [hl]                                       ; $748f: $56
	add e                                            ; $7490: $83
	nop                                              ; $7491: $00
	ld [hl], $df                                     ; $7492: $36 $df
	jp nc, $b002                                     ; $7494: $d2 $02 $b0

	ld a, [hl-]                                      ; $7497: $3a
	rlca                                             ; $7498: $07
	ret nz                                           ; $7499: $c0

	ld d, [hl]                                       ; $749a: $56
	add e                                            ; $749b: $83
	nop                                              ; $749c: $00
	ld [hl], $df                                     ; $749d: $36 $df
	db $d3                                           ; $749f: $d3
	ld [bc], a                                       ; $74a0: $02
	or b                                             ; $74a1: $b0
	dec sp                                           ; $74a2: $3b
	rlca                                             ; $74a3: $07
	ret nz                                           ; $74a4: $c0

	ld d, [hl]                                       ; $74a5: $56
	add e                                            ; $74a6: $83
	nop                                              ; $74a7: $00
	ld [hl], $df                                     ; $74a8: $36 $df
	call nc, $b002                                   ; $74aa: $d4 $02 $b0
	inc a                                            ; $74ad: $3c
	rlca                                             ; $74ae: $07
	ret nz                                           ; $74af: $c0

	ld d, [hl]                                       ; $74b0: $56
	add e                                            ; $74b1: $83
	nop                                              ; $74b2: $00
	ld [hl], $df                                     ; $74b3: $36 $df
	push de                                          ; $74b5: $d5
	ld [bc], a                                       ; $74b6: $02
	or b                                             ; $74b7: $b0
	dec a                                            ; $74b8: $3d
	rlca                                             ; $74b9: $07
	ret nz                                           ; $74ba: $c0

	ld d, [hl]                                       ; $74bb: $56
	add e                                            ; $74bc: $83
	nop                                              ; $74bd: $00
	ld [hl], $df                                     ; $74be: $36 $df
	ret nc                                           ; $74c0: $d0

	ld [bc], a                                       ; $74c1: $02
	or b                                             ; $74c2: $b0
	ld a, $07                                        ; $74c3: $3e $07
	ret nz                                           ; $74c5: $c0

	ld d, [hl]                                       ; $74c6: $56
	add e                                            ; $74c7: $83
	nop                                              ; $74c8: $00
	ld [hl], $df                                     ; $74c9: $36 $df
	sub $02                                          ; $74cb: $d6 $02
	or b                                             ; $74cd: $b0
	ccf                                              ; $74ce: $3f
	rlca                                             ; $74cf: $07
	ret nz                                           ; $74d0: $c0

	ld d, [hl]                                       ; $74d1: $56
	add e                                            ; $74d2: $83
	nop                                              ; $74d3: $00
	ld [hl], $df                                     ; $74d4: $36 $df
	rst SubAFromHL                                          ; $74d6: $d7
	ld [bc], a                                       ; $74d7: $02
	or b                                             ; $74d8: $b0
	ld b, b                                          ; $74d9: $40
	rlca                                             ; $74da: $07
	ret nz                                           ; $74db: $c0

	ld d, [hl]                                       ; $74dc: $56
	add e                                            ; $74dd: $83
	nop                                              ; $74de: $00
	ld [hl], $df                                     ; $74df: $36 $df
	ret nc                                           ; $74e1: $d0

	ld [bc], a                                       ; $74e2: $02
	or b                                             ; $74e3: $b0
	ld b, c                                          ; $74e4: $41
	rlca                                             ; $74e5: $07
	ret nz                                           ; $74e6: $c0

	ld d, [hl]                                       ; $74e7: $56
	add e                                            ; $74e8: $83
	nop                                              ; $74e9: $00
	ld [hl], $df                                     ; $74ea: $36 $df
	ret c                                            ; $74ec: $d8

	ld [bc], a                                       ; $74ed: $02
	or b                                             ; $74ee: $b0
	ld b, d                                          ; $74ef: $42
	rlca                                             ; $74f0: $07
	ret nz                                           ; $74f1: $c0

	ld d, [hl]                                       ; $74f2: $56
	add e                                            ; $74f3: $83
	nop                                              ; $74f4: $00
	ld [hl], $df                                     ; $74f5: $36 $df
	reti                                             ; $74f7: $d9


	jp $fb43                                         ; $74f8: $c3 $43 $fb


	db $fc                                           ; $74fb: $fc
	ret nz                                           ; $74fc: $c0

	ld h, h                                          ; $74fd: $64
	ret nc                                           ; $74fe: $d0

	inc b                                            ; $74ff: $04
	nop                                              ; $7500: $00
	add b                                            ; $7501: $80
	and b                                            ; $7502: $a0
	ld [$8040], sp                                   ; $7503: $08 $40 $80
	ld bc, $6148                                     ; $7506: $01 $48 $61
	cp $0a                                           ; $7509: $fe $0a
	ei                                               ; $750b: $fb
	ret nz                                           ; $750c: $c0

	rla                                              ; $750d: $17
	ret nc                                           ; $750e: $d0

	ldh [$5a], a                                     ; $750f: $e0 $5a
	pop af                                           ; $7511: $f1
	add b                                            ; $7512: $80
	and b                                            ; $7513: $a0

jr_07b_7514:
	ld [$c12f], sp                                   ; $7514: $08 $2f $c1
	ld b, a                                          ; $7517: $47
	ret nc                                           ; $7518: $d0

	ldh [$03], a                                     ; $7519: $e0 $03
	ccf                                              ; $751b: $3f
	ld h, b                                          ; $751c: $60
	add b                                            ; $751d: $80
	nop                                              ; $751e: $00
	sub h                                            ; $751f: $94
	ld a, [bc]                                       ; $7520: $0a
	ldh [$03], a                                     ; $7521: $e0 $03
	add hl, hl                                       ; $7523: $29
	ldh [$03], a                                     ; $7524: $e0 $03
	dec l                                            ; $7526: $2d
	nop                                              ; $7527: $00
	add b                                            ; $7528: $80
	nop                                              ; $7529: $00
	and c                                            ; $752a: $a1
	ld b, $e0                                        ; $752b: $06 $e0
	inc bc                                           ; $752d: $03
	db $10                                           ; $752e: $10
	ldh [$03], a                                     ; $752f: $e0 $03
	inc d                                            ; $7531: $14
	ld b, c                                          ; $7532: $41
	add b                                            ; $7533: $80
	nop                                              ; $7534: $00
	call z, $0080                                    ; $7535: $cc $80 $00
	call $8000                                       ; $7538: $cd $00 $80
	nop                                              ; $753b: $00
	sub h                                            ; $753c: $94
	ret nz                                           ; $753d: $c0

	ld e, $d0                                        ; $753e: $1e $d0
	ret nc                                           ; $7540: $d0

	ret nz                                           ; $7541: $c0

	jr nz, jr_07b_7514                               ; $7542: $20 $d0

	ret nc                                           ; $7544: $d0

	ei                                               ; $7545: $fb
	ret nz                                           ; $7546: $c0

	rla                                              ; $7547: $17
	ret nc                                           ; $7548: $d0

	ldh [$3c], a                                     ; $7549: $e0 $3c
	dec de                                           ; $754b: $1b
	ei                                               ; $754c: $fb
	pop af                                           ; $754d: $f1
	add b                                            ; $754e: $80
	ld [bc], a                                       ; $754f: $02
	ld [bc], a                                       ; $7550: $02
	dec d                                            ; $7551: $15
	ld h, b                                          ; $7552: $60
	add b                                            ; $7553: $80
	nop                                              ; $7554: $00
	sub h                                            ; $7555: $94
	inc b                                            ; $7556: $04
	nop                                              ; $7557: $00
	add b                                            ; $7558: $80
	ld bc, $0447                                     ; $7559: $01 $47 $04
	nop                                              ; $755c: $00
	add b                                            ; $755d: $80
	ld bc, $0148                             ; $755e: $01 $48 $01
	add b                                            ; $7561: $80
	ld [bc], a                                       ; $7562: $02
	inc bc                                           ; $7563: $03
	add b                                            ; $7564: $80
	ld [bc], a                                       ; $7565: $02
	ld [bc], a                                       ; $7566: $02
	rlca                                             ; $7567: $07
	ld b, c                                          ; $7568: $41
	add b                                            ; $7569: $80
	ld [bc], a                                       ; $756a: $02
	ld [bc], a                                       ; $756b: $02
	add b                                            ; $756c: $80
	ld [bc], a                                       ; $756d: $02
	inc bc                                           ; $756e: $03
	ld h, c                                          ; $756f: $61
	cp $0a                                           ; $7570: $fe $0a
	ei                                               ; $7572: $fb
	ret nz                                           ; $7573: $c0

	rla                                              ; $7574: $17
	pop de                                           ; $7575: $d1
	ldh [$5a], a                                     ; $7576: $e0 $5a
	pop af                                           ; $7578: $f1
	add b                                            ; $7579: $80
	and b                                            ; $757a: $a0

jr_07b_757b:
	ld [$c12f], sp                                   ; $757b: $08 $2f $c1
	ld b, a                                          ; $757e: $47
	pop de                                           ; $757f: $d1
	ldh [rSC], a                                     ; $7580: $e0 $02
	ret c                                            ; $7582: $d8

	ld h, b                                          ; $7583: $60
	add b                                            ; $7584: $80
	nop                                              ; $7585: $00
	and d                                            ; $7586: $a2
	ld a, [bc]                                       ; $7587: $0a
	ldh [rSC], a                                     ; $7588: $e0 $02
	jp nz, $02e0                                     ; $758a: $c2 $e0 $02

	add $00                                          ; $758d: $c6 $00
	add b                                            ; $758f: $80
	nop                                              ; $7590: $00
	and e                                            ; $7591: $a3
	ld b, $e0                                        ; $7592: $06 $e0
	ld [bc], a                                       ; $7594: $02
	xor c                                            ; $7595: $a9
	ldh [rSC], a                                     ; $7596: $e0 $02
	xor l                                            ; $7598: $ad
	ld b, c                                          ; $7599: $41
	add b                                            ; $759a: $80
	nop                                              ; $759b: $00
	adc $80                                          ; $759c: $ce $80
	nop                                              ; $759e: $00
	rst GetHLinHL                                          ; $759f: $cf
	nop                                              ; $75a0: $00
	add b                                            ; $75a1: $80
	nop                                              ; $75a2: $00
	and d                                            ; $75a3: $a2
	ret nz                                           ; $75a4: $c0

	ld e, $d0                                        ; $75a5: $1e $d0
	pop de                                           ; $75a7: $d1
	ret nz                                           ; $75a8: $c0

	jr nz, jr_07b_757b                               ; $75a9: $20 $d0

	pop de                                           ; $75ab: $d1
	ei                                               ; $75ac: $fb
	ret nz                                           ; $75ad: $c0

	rla                                              ; $75ae: $17
	pop de                                           ; $75af: $d1
	ldh [$3c], a                                     ; $75b0: $e0 $3c
	dec de                                           ; $75b2: $1b
	ei                                               ; $75b3: $fb
	pop af                                           ; $75b4: $f1
	add b                                            ; $75b5: $80
	ld [bc], a                                       ; $75b6: $02
	inc b                                            ; $75b7: $04
	dec d                                            ; $75b8: $15
	ld h, b                                          ; $75b9: $60
	add b                                            ; $75ba: $80
	nop                                              ; $75bb: $00
	and d                                            ; $75bc: $a2
	inc b                                            ; $75bd: $04
	nop                                              ; $75be: $00
	add b                                            ; $75bf: $80
	ld bc, $0447                                     ; $75c0: $01 $47 $04
	nop                                              ; $75c3: $00
	add b                                            ; $75c4: $80
	ld bc, $0148                             ; $75c5: $01 $48 $01
	add b                                            ; $75c8: $80
	ld [bc], a                                       ; $75c9: $02
	dec b                                            ; $75ca: $05
	add b                                            ; $75cb: $80
	ld [bc], a                                       ; $75cc: $02
	inc b                                            ; $75cd: $04
	rlca                                             ; $75ce: $07
	ld b, c                                          ; $75cf: $41
	add b                                            ; $75d0: $80
	ld [bc], a                                       ; $75d1: $02
	inc b                                            ; $75d2: $04
	add b                                            ; $75d3: $80
	ld [bc], a                                       ; $75d4: $02
	dec b                                            ; $75d5: $05
	ld h, c                                          ; $75d6: $61
	cp $0a                                           ; $75d7: $fe $0a
	ei                                               ; $75d9: $fb
	ret nz                                           ; $75da: $c0

	rla                                              ; $75db: $17
	jp nc, $5ae0                                     ; $75dc: $d2 $e0 $5a

	pop af                                           ; $75df: $f1
	add b                                            ; $75e0: $80
	and b                                            ; $75e1: $a0
	ld [$c12f], sp                                   ; $75e2: $08 $2f $c1
	ld b, a                                          ; $75e5: $47
	jp nc, $02e0                                     ; $75e6: $d2 $e0 $02

	ld [hl], c                                       ; $75e9: $71
	ld h, b                                          ; $75ea: $60
	add b                                            ; $75eb: $80
	nop                                              ; $75ec: $00
	and h                                            ; $75ed: $a4
	ld a, [bc]                                       ; $75ee: $0a
	ldh [rSC], a                                     ; $75ef: $e0 $02
	ld e, e                                          ; $75f1: $5b
	ldh [rSC], a                                     ; $75f2: $e0 $02
	ld e, a                                          ; $75f4: $5f
	nop                                              ; $75f5: $00
	add b                                            ; $75f6: $80
	nop                                              ; $75f7: $00
	and l                                            ; $75f8: $a5
	ld b, $e0                                        ; $75f9: $06 $e0
	ld [bc], a                                       ; $75fb: $02
	ld b, d                                          ; $75fc: $42
	ldh [rSC], a                                     ; $75fd: $e0 $02
	ld b, [hl]                                       ; $75ff: $46
	ld b, c                                          ; $7600: $41
	add b                                            ; $7601: $80
	nop                                              ; $7602: $00
	ret nc                                           ; $7603: $d0

	add b                                            ; $7604: $80
	nop                                              ; $7605: $00
	pop de                                           ; $7606: $d1
	nop                                              ; $7607: $00
	add b                                            ; $7608: $80
	nop                                              ; $7609: $00
	and h                                            ; $760a: $a4
	ret nz                                           ; $760b: $c0

	ld e, $d0                                        ; $760c: $1e $d0
	jp nc, $20c0                                     ; $760e: $d2 $c0 $20

	ret nc                                           ; $7611: $d0

	jp nc, $c0fb                                     ; $7612: $d2 $fb $c0

	rla                                              ; $7615: $17
	jp nc, $3ce0                                     ; $7616: $d2 $e0 $3c

	dec de                                           ; $7619: $1b
	ei                                               ; $761a: $fb
	pop af                                           ; $761b: $f1
	add b                                            ; $761c: $80
	ld [bc], a                                       ; $761d: $02
	ld b, $15                                        ; $761e: $06 $15
	ld h, b                                          ; $7620: $60
	add b                                            ; $7621: $80
	nop                                              ; $7622: $00
	and h                                            ; $7623: $a4
	inc b                                            ; $7624: $04
	nop                                              ; $7625: $00
	add b                                            ; $7626: $80
	ld bc, $0447                                     ; $7627: $01 $47 $04
	nop                                              ; $762a: $00
	add b                                            ; $762b: $80
	ld bc, $0148                             ; $762c: $01 $48 $01
	add b                                            ; $762f: $80
	ld [bc], a                                       ; $7630: $02
	rlca                                             ; $7631: $07
	add b                                            ; $7632: $80
	ld [bc], a                                       ; $7633: $02
	ld b, $07                                        ; $7634: $06 $07
	ld b, c                                          ; $7636: $41
	add b                                            ; $7637: $80
	ld [bc], a                                       ; $7638: $02
	ld b, $80                                        ; $7639: $06 $80
	ld [bc], a                                       ; $763b: $02
	rlca                                             ; $763c: $07
	ld h, c                                          ; $763d: $61
	cp $0a                                           ; $763e: $fe $0a
	ei                                               ; $7640: $fb
	ret nz                                           ; $7641: $c0

	rla                                              ; $7642: $17
	db $d3                                           ; $7643: $d3
	ldh [$5a], a                                     ; $7644: $e0 $5a
	pop af                                           ; $7646: $f1
	add b                                            ; $7647: $80
	and b                                            ; $7648: $a0

jr_07b_7649:
	ld [$c12f], sp                                   ; $7649: $08 $2f $c1
	ld b, a                                          ; $764c: $47
	db $d3                                           ; $764d: $d3
	ldh [rSC], a                                     ; $764e: $e0 $02
	ld a, [bc]                                       ; $7650: $0a
	ld h, b                                          ; $7651: $60
	add b                                            ; $7652: $80
	nop                                              ; $7653: $00
	and [hl]                                         ; $7654: $a6
	ld a, [bc]                                       ; $7655: $0a
	ldh [rSB], a                                     ; $7656: $e0 $01
	db $f4                                           ; $7658: $f4
	ldh [rSB], a                                     ; $7659: $e0 $01
	ld hl, sp+$00                                    ; $765b: $f8 $00
	add b                                            ; $765d: $80
	nop                                              ; $765e: $00
	and a                                            ; $765f: $a7
	ld b, $e0                                        ; $7660: $06 $e0
	ld bc, $e0db                                     ; $7662: $01 $db $e0
	ld bc, $41df                                     ; $7665: $01 $df $41
	add b                                            ; $7668: $80
	nop                                              ; $7669: $00
	jp nc, $0080                                     ; $766a: $d2 $80 $00

	db $d3                                           ; $766d: $d3
	nop                                              ; $766e: $00
	add b                                            ; $766f: $80
	nop                                              ; $7670: $00
	and [hl]                                         ; $7671: $a6
	ret nz                                           ; $7672: $c0

	ld e, $d0                                        ; $7673: $1e $d0
	db $d3                                           ; $7675: $d3
	ret nz                                           ; $7676: $c0

	jr nz, jr_07b_7649                               ; $7677: $20 $d0

	db $d3                                           ; $7679: $d3
	ei                                               ; $767a: $fb
	ret nz                                           ; $767b: $c0

	rla                                              ; $767c: $17
	db $d3                                           ; $767d: $d3
	ldh [$3c], a                                     ; $767e: $e0 $3c
	dec de                                           ; $7680: $1b
	ei                                               ; $7681: $fb
	pop af                                           ; $7682: $f1
	add b                                            ; $7683: $80
	ld [bc], a                                       ; $7684: $02
	ld [$6015], sp                                   ; $7685: $08 $15 $60
	add b                                            ; $7688: $80
	nop                                              ; $7689: $00
	and [hl]                                         ; $768a: $a6
	inc b                                            ; $768b: $04
	nop                                              ; $768c: $00
	add b                                            ; $768d: $80
	ld bc, $0447                                     ; $768e: $01 $47 $04
	nop                                              ; $7691: $00
	add b                                            ; $7692: $80
	ld bc, $0148                             ; $7693: $01 $48 $01
	add b                                            ; $7696: $80
	ld [bc], a                                       ; $7697: $02
	add hl, bc                                       ; $7698: $09
	add b                                            ; $7699: $80
	ld [bc], a                                       ; $769a: $02
	ld [$4107], sp                                   ; $769b: $08 $07 $41
	add b                                            ; $769e: $80
	ld [bc], a                                       ; $769f: $02
	ld [$0280], sp                                   ; $76a0: $08 $80 $02
	add hl, bc                                       ; $76a3: $09
	ld h, c                                          ; $76a4: $61
	cp $0a                                           ; $76a5: $fe $0a
	ei                                               ; $76a7: $fb
	ret nz                                           ; $76a8: $c0

	rla                                              ; $76a9: $17
	rst SubAFromHL                                          ; $76aa: $d7
	ldh [$5a], a                                     ; $76ab: $e0 $5a
	pop af                                           ; $76ad: $f1
	add b                                            ; $76ae: $80
	and b                                            ; $76af: $a0

jr_07b_76b0:
	ld [$c12f], sp                                   ; $76b0: $08 $2f $c1
	ld b, a                                          ; $76b3: $47
	rst SubAFromHL                                          ; $76b4: $d7
	ldh [rSB], a                                     ; $76b5: $e0 $01
	and e                                            ; $76b7: $a3
	ld h, b                                          ; $76b8: $60
	add b                                            ; $76b9: $80
	nop                                              ; $76ba: $00
	xor b                                            ; $76bb: $a8
	ld a, [bc]                                       ; $76bc: $0a
	ldh [rSB], a                                     ; $76bd: $e0 $01
	adc l                                            ; $76bf: $8d
	ldh [rSB], a                                     ; $76c0: $e0 $01
	sub c                                            ; $76c2: $91
	nop                                              ; $76c3: $00
	add b                                            ; $76c4: $80
	nop                                              ; $76c5: $00
	xor c                                            ; $76c6: $a9
	ld b, $e0                                        ; $76c7: $06 $e0
	ld bc, $e074                                     ; $76c9: $01 $74 $e0
	ld bc, $4178                                     ; $76cc: $01 $78 $41
	add b                                            ; $76cf: $80
	nop                                              ; $76d0: $00
	call nc, $0080                                   ; $76d1: $d4 $80 $00
	push de                                          ; $76d4: $d5
	nop                                              ; $76d5: $00
	add b                                            ; $76d6: $80
	nop                                              ; $76d7: $00
	xor b                                            ; $76d8: $a8
	ret nz                                           ; $76d9: $c0

	ld e, $d0                                        ; $76da: $1e $d0
	rst SubAFromHL                                          ; $76dc: $d7
	ret nz                                           ; $76dd: $c0

	jr nz, jr_07b_76b0                               ; $76de: $20 $d0

	rst SubAFromHL                                          ; $76e0: $d7
	ei                                               ; $76e1: $fb
	ret nz                                           ; $76e2: $c0

	rla                                              ; $76e3: $17
	rst SubAFromHL                                          ; $76e4: $d7
	ldh [$3c], a                                     ; $76e5: $e0 $3c
	dec de                                           ; $76e7: $1b
	ei                                               ; $76e8: $fb
	pop af                                           ; $76e9: $f1
	add b                                            ; $76ea: $80
	ld [bc], a                                       ; $76eb: $02
	ld a, [bc]                                       ; $76ec: $0a
	dec d                                            ; $76ed: $15
	ld h, b                                          ; $76ee: $60
	add b                                            ; $76ef: $80
	nop                                              ; $76f0: $00
	xor b                                            ; $76f1: $a8
	inc b                                            ; $76f2: $04
	nop                                              ; $76f3: $00
	add b                                            ; $76f4: $80
	ld bc, $0447                                     ; $76f5: $01 $47 $04
	nop                                              ; $76f8: $00
	add b                                            ; $76f9: $80
	ld bc, $0148                             ; $76fa: $01 $48 $01
	add b                                            ; $76fd: $80
	ld [bc], a                                       ; $76fe: $02
	dec bc                                           ; $76ff: $0b
	add b                                            ; $7700: $80
	ld [bc], a                                       ; $7701: $02
	ld a, [bc]                                       ; $7702: $0a
	rlca                                             ; $7703: $07
	ld b, c                                          ; $7704: $41
	add b                                            ; $7705: $80
	ld [bc], a                                       ; $7706: $02
	ld a, [bc]                                       ; $7707: $0a
	add b                                            ; $7708: $80
	ld [bc], a                                       ; $7709: $02
	dec bc                                           ; $770a: $0b
	ld h, c                                          ; $770b: $61
	cp $0a                                           ; $770c: $fe $0a
	ei                                               ; $770e: $fb
	ret nz                                           ; $770f: $c0

	rla                                              ; $7710: $17
	ret c                                            ; $7711: $d8

	ldh [$5a], a                                     ; $7712: $e0 $5a
	pop af                                           ; $7714: $f1
	add b                                            ; $7715: $80
	and b                                            ; $7716: $a0

jr_07b_7717:
	ld [$c12f], sp                                   ; $7717: $08 $2f $c1
	ld b, a                                          ; $771a: $47
	ret c                                            ; $771b: $d8

	ldh [rSB], a                                     ; $771c: $e0 $01
	inc a                                            ; $771e: $3c
	ld h, b                                          ; $771f: $60
	add b                                            ; $7720: $80
	nop                                              ; $7721: $00
	xor d                                            ; $7722: $aa
	ld a, [bc]                                       ; $7723: $0a
	ldh [rSB], a                                     ; $7724: $e0 $01
	ld h, $e0                                        ; $7726: $26 $e0
	ld bc, $002a                                     ; $7728: $01 $2a $00
	add b                                            ; $772b: $80
	nop                                              ; $772c: $00
	xor e                                            ; $772d: $ab
	ld b, $e0                                        ; $772e: $06 $e0
	ld bc, $e00d                                     ; $7730: $01 $0d $e0
	ld bc, $4111                                     ; $7733: $01 $11 $41
	add b                                            ; $7736: $80
	nop                                              ; $7737: $00
	sub $80                                          ; $7738: $d6 $80
	nop                                              ; $773a: $00
	rst SubAFromHL                                          ; $773b: $d7
	nop                                              ; $773c: $00
	add b                                            ; $773d: $80
	nop                                              ; $773e: $00
	xor d                                            ; $773f: $aa
	ret nz                                           ; $7740: $c0

	ld e, $d0                                        ; $7741: $1e $d0
	ret c                                            ; $7743: $d8

	ret nz                                           ; $7744: $c0

	jr nz, jr_07b_7717                               ; $7745: $20 $d0

	ret c                                            ; $7747: $d8

	ei                                               ; $7748: $fb
	ret nz                                           ; $7749: $c0

	rla                                              ; $774a: $17
	ret c                                            ; $774b: $d8

	ldh [$3c], a                                     ; $774c: $e0 $3c
	dec de                                           ; $774e: $1b
	ei                                               ; $774f: $fb
	pop af                                           ; $7750: $f1
	add b                                            ; $7751: $80
	ld [bc], a                                       ; $7752: $02
	inc c                                            ; $7753: $0c
	dec d                                            ; $7754: $15
	ld h, b                                          ; $7755: $60
	add b                                            ; $7756: $80
	nop                                              ; $7757: $00
	xor d                                            ; $7758: $aa
	inc b                                            ; $7759: $04
	nop                                              ; $775a: $00
	add b                                            ; $775b: $80
	ld bc, $0447                                     ; $775c: $01 $47 $04
	nop                                              ; $775f: $00
	add b                                            ; $7760: $80
	ld bc, $0148                             ; $7761: $01 $48 $01
	add b                                            ; $7764: $80
	ld [bc], a                                       ; $7765: $02
	dec c                                            ; $7766: $0d
	add b                                            ; $7767: $80
	ld [bc], a                                       ; $7768: $02
	inc c                                            ; $7769: $0c
	rlca                                             ; $776a: $07
	ld b, c                                          ; $776b: $41
	add b                                            ; $776c: $80
	ld [bc], a                                       ; $776d: $02
	inc c                                            ; $776e: $0c
	add b                                            ; $776f: $80
	ld [bc], a                                       ; $7770: $02
	dec c                                            ; $7771: $0d
	ld h, c                                          ; $7772: $61
	cp $0a                                           ; $7773: $fe $0a
	ei                                               ; $7775: $fb
	ret nz                                           ; $7776: $c0

	rla                                              ; $7777: $17
	jp c, $5ae0                                      ; $7778: $da $e0 $5a

	pop af                                           ; $777b: $f1
	add b                                            ; $777c: $80
	and b                                            ; $777d: $a0
	ld [$c12c], sp                                   ; $777e: $08 $2c $c1
	ld b, a                                          ; $7781: $47
	jp c, $00e0                                      ; $7782: $da $e0 $00

	push de                                          ; $7785: $d5
	ld h, b                                          ; $7786: $60
	add b                                            ; $7787: $80
	nop                                              ; $7788: $00
	xor h                                            ; $7789: $ac
	ld a, [bc]                                       ; $778a: $0a
	ldh [rP1], a                                     ; $778b: $e0 $00
	cp a                                             ; $778d: $bf
	ldh [rP1], a                                     ; $778e: $e0 $00
	jp $8000                                         ; $7790: $c3 $00 $80


	nop                                              ; $7793: $00
	xor l                                            ; $7794: $ad
	ld b, $e0                                        ; $7795: $06 $e0
	nop                                              ; $7797: $00
	and [hl]                                         ; $7798: $a6
	ldh [rP1], a                                     ; $7799: $e0 $00
	xor d                                            ; $779b: $aa
	ld b, b                                          ; $779c: $40
	add b                                            ; $779d: $80
	nop                                              ; $779e: $00
	ret c                                            ; $779f: $d8

	nop                                              ; $77a0: $00
	add b                                            ; $77a1: $80
	nop                                              ; $77a2: $00
	xor h                                            ; $77a3: $ac
	ret nz                                           ; $77a4: $c0

	ld e, $d0                                        ; $77a5: $1e $d0
	jp c, $20c0                                      ; $77a7: $da $c0 $20

	ret nc                                           ; $77aa: $d0

	jp c, $c0fb                                      ; $77ab: $da $fb $c0

	rla                                              ; $77ae: $17
	jp c, $3ce0                                      ; $77af: $da $e0 $3c

	dec de                                           ; $77b2: $1b
	ei                                               ; $77b3: $fb
	pop af                                           ; $77b4: $f1
	add b                                            ; $77b5: $80
	ld [bc], a                                       ; $77b6: $02
	ld c, $15                                        ; $77b7: $0e $15
	ld h, b                                          ; $77b9: $60
	add b                                            ; $77ba: $80
	nop                                              ; $77bb: $00
	xor h                                            ; $77bc: $ac
	inc b                                            ; $77bd: $04
	nop                                              ; $77be: $00
	add b                                            ; $77bf: $80
	ld bc, $0447                                     ; $77c0: $01 $47 $04
	nop                                              ; $77c3: $00
	add b                                            ; $77c4: $80
	ld bc, $0148                             ; $77c5: $01 $48 $01
	add b                                            ; $77c8: $80
	ld [bc], a                                       ; $77c9: $02
	rrca                                             ; $77ca: $0f
	add b                                            ; $77cb: $80
	ld [bc], a                                       ; $77cc: $02
	ld c, $07                                        ; $77cd: $0e $07
	ld b, c                                          ; $77cf: $41
	add b                                            ; $77d0: $80
	ld [bc], a                                       ; $77d1: $02
	ld c, $80                                        ; $77d2: $0e $80
	ld [bc], a                                       ; $77d4: $02
	rrca                                             ; $77d5: $0f
	ld h, c                                          ; $77d6: $61
	cp $0a                                           ; $77d7: $fe $0a
	ei                                               ; $77d9: $fb
	ret nz                                           ; $77da: $c0

	rla                                              ; $77db: $17
	db $dd                                           ; $77dc: $dd
	ldh [$5a], a                                     ; $77dd: $e0 $5a
	pop af                                           ; $77df: $f1
	add b                                            ; $77e0: $80
	and b                                            ; $77e1: $a0

jr_07b_77e2:
	ld [$c12f], sp                                   ; $77e2: $08 $2f $c1
	ld b, a                                          ; $77e5: $47
	db $dd                                           ; $77e6: $dd
	ldh [rP1], a                                     ; $77e7: $e0 $00
	ld [hl], c                                       ; $77e9: $71
	ld h, b                                          ; $77ea: $60
	add b                                            ; $77eb: $80
	nop                                              ; $77ec: $00
	xor [hl]                                         ; $77ed: $ae
	ld a, [bc]                                       ; $77ee: $0a
	ldh [rP1], a                                     ; $77ef: $e0 $00
	ld e, e                                          ; $77f1: $5b
	ldh [rP1], a                                     ; $77f2: $e0 $00
	ld e, a                                          ; $77f4: $5f
	nop                                              ; $77f5: $00
	add b                                            ; $77f6: $80
	nop                                              ; $77f7: $00
	xor a                                            ; $77f8: $af
	ld b, $e0                                        ; $77f9: $06 $e0
	nop                                              ; $77fb: $00
	ld b, d                                          ; $77fc: $42
	ldh [rP1], a                                     ; $77fd: $e0 $00
	ld b, [hl]                                       ; $77ff: $46
	ld b, c                                          ; $7800: $41
	add b                                            ; $7801: $80
	nop                                              ; $7802: $00
	reti                                             ; $7803: $d9


	add b                                            ; $7804: $80
	nop                                              ; $7805: $00
	jp c, $8000                                      ; $7806: $da $00 $80

	nop                                              ; $7809: $00
	xor [hl]                                         ; $780a: $ae
	ret nz                                           ; $780b: $c0

	ld e, $d0                                        ; $780c: $1e $d0
	db $dd                                           ; $780e: $dd
	ret nz                                           ; $780f: $c0

	jr nz, jr_07b_77e2                               ; $7810: $20 $d0

	db $dd                                           ; $7812: $dd
	ei                                               ; $7813: $fb
	ret nz                                           ; $7814: $c0

	rla                                              ; $7815: $17
	db $dd                                           ; $7816: $dd
	ldh [$3c], a                                     ; $7817: $e0 $3c
	dec de                                           ; $7819: $1b
	ei                                               ; $781a: $fb
	pop af                                           ; $781b: $f1
	add b                                            ; $781c: $80
	ld [bc], a                                       ; $781d: $02
	db $10                                           ; $781e: $10
	dec d                                            ; $781f: $15
	ld h, b                                          ; $7820: $60
	add b                                            ; $7821: $80
	nop                                              ; $7822: $00
	xor [hl]                                         ; $7823: $ae
	inc b                                            ; $7824: $04
	nop                                              ; $7825: $00
	add b                                            ; $7826: $80
	ld bc, $0447                                     ; $7827: $01 $47 $04
	nop                                              ; $782a: $00
	add b                                            ; $782b: $80
	ld bc, $0148                             ; $782c: $01 $48 $01
	add b                                            ; $782f: $80
	ld [bc], a                                       ; $7830: $02
	ld de, $0280                                     ; $7831: $11 $80 $02
	db $10                                           ; $7834: $10
	rlca                                             ; $7835: $07
	ld b, c                                          ; $7836: $41
	add b                                            ; $7837: $80
	ld [bc], a                                       ; $7838: $02
	db $10                                           ; $7839: $10
	add b                                            ; $783a: $80
	ld [bc], a                                       ; $783b: $02
	ld de, $c006                                     ; $783c: $11 $06 $c0
	ld bc, $01a0                                     ; $783f: $01 $a0 $01
	ld bc, $06f5                                     ; $7842: $01 $f5 $06
	ret nz                                           ; $7845: $c0

	ld bc, $01a0                                     ; $7846: $01 $a0 $01
	ld [bc], a                                       ; $7849: $02
	inc c                                            ; $784a: $0c
	ld b, $c0                                        ; $784b: $06 $c0
	ld bc, $01a0                                     ; $784d: $01 $a0 $01
	ld [bc], a                                       ; $7850: $02
	ld l, $06                                        ; $7851: $2e $06
	ret nz                                           ; $7853: $c0

	ld bc, $01a0                                     ; $7854: $01 $a0 $01
	ld [bc], a                                       ; $7857: $02
	ld b, [hl]                                       ; $7858: $46
	and d                                            ; $7859: $a2
	ret nz                                           ; $785a: $c0

	dec bc                                           ; $785b: $0b
	db $e3                                           ; $785c: $e3
	nop                                              ; $785d: $00
	ld a, [bc]                                       ; $785e: $0a
	ei                                               ; $785f: $fb
	pop af                                           ; $7860: $f1
	add b                                            ; $7861: $80
	nop                                              ; $7862: $00
	jp z, $c006                                      ; $7863: $ca $06 $c0

	push af                                          ; $7866: $f5
	nop                                              ; $7867: $00
	add b                                            ; $7868: $80
	nop                                              ; $7869: $00
	jp z, $08c1                                      ; $786a: $ca $c1 $08

	jp nc, $c0d0                                     ; $786d: $d2 $d0 $c0

	ld bc, $07a0                                     ; $7870: $01 $a0 $07
	ld [bc], a                                       ; $7873: $02
	ld h, h                                          ; $7874: $64
	ret nz                                           ; $7875: $c0

	ld bc, $01a0                                     ; $7876: $01 $a0 $01
	ld [bc], a                                       ; $7879: $02
	ld l, c                                          ; $787a: $69
	ret nz                                           ; $787b: $c0

	ld bc, $07a0                                     ; $787c: $01 $a0 $07
	ld [bc], a                                       ; $787f: $02
	ld l, a                                          ; $7880: $6f
	ldh [$fa], a                                     ; $7881: $e0 $fa
	ld [hl], l                                       ; $7883: $75
	ret nz                                           ; $7884: $c0

	dec bc                                           ; $7885: $0b
	db $e3                                           ; $7886: $e3
	nop                                              ; $7887: $00
	scf                                              ; $7888: $37
	ret nz                                           ; $7889: $c0

	inc h                                            ; $788a: $24
	ldh [rAUD1HIGH], a                               ; $788b: $e0 $14
	ret nc                                           ; $788d: $d0

	ret nz                                           ; $788e: $c0

	dec h                                            ; $788f: $25
	ldh [rAUDVOL], a                                 ; $7890: $e0 $24
	ret nc                                           ; $7892: $d0

	ei                                               ; $7893: $fb
	add b                                            ; $7894: $80
	nop                                              ; $7895: $00
	ld l, l                                          ; $7896: $6d
	ld a, [bc]                                       ; $7897: $0a
	ret nz                                           ; $7898: $c0

	inc h                                            ; $7899: $24
	ldh [rAUD2LEN], a                                ; $789a: $e0 $16
	pop de                                           ; $789c: $d1
	ret nz                                           ; $789d: $c0

	dec h                                            ; $789e: $25
	ldh [rAUD4LEN], a                                ; $789f: $e0 $20
	pop de                                           ; $78a1: $d1
	ei                                               ; $78a2: $fb
	add b                                            ; $78a3: $80
	nop                                              ; $78a4: $00
	ld l, a                                          ; $78a5: $6f
	ld a, [bc]                                       ; $78a6: $0a
	ret nz                                           ; $78a7: $c0

	inc h                                            ; $78a8: $24
	ldh [rAUD3ENA], a                                ; $78a9: $e0 $1a
	jp nc, $25c0                                     ; $78ab: $d2 $c0 $25

	ldh [$28], a                                     ; $78ae: $e0 $28
	jp nc, $80fb                                     ; $78b0: $d2 $fb $80

	nop                                              ; $78b3: $00
	ld [hl], b                                       ; $78b4: $70
	ld a, [bc]                                       ; $78b5: $0a
	ret nz                                           ; $78b6: $c0

	inc h                                            ; $78b7: $24
	ldh [rAUD2LEN], a                                ; $78b8: $e0 $16
	db $d3                                           ; $78ba: $d3
	ret nz                                           ; $78bb: $c0

	dec h                                            ; $78bc: $25
	ldh [rAUD4LEN], a                                ; $78bd: $e0 $20
	db $d3                                           ; $78bf: $d3
	ei                                               ; $78c0: $fb
	add b                                            ; $78c1: $80
	nop                                              ; $78c2: $00
	adc h                                            ; $78c3: $8c
	ld a, [bc]                                       ; $78c4: $0a
	ret nz                                           ; $78c5: $c0

	inc h                                            ; $78c6: $24
	ldh [rAUD3LEVEL], a                              ; $78c7: $e0 $1c
	rst SubAFromHL                                          ; $78c9: $d7
	ret nz                                           ; $78ca: $c0

	dec h                                            ; $78cb: $25
	ldh [$2c], a                                     ; $78cc: $e0 $2c
	rst SubAFromHL                                          ; $78ce: $d7
	ei                                               ; $78cf: $fb
	add b                                            ; $78d0: $80
	nop                                              ; $78d1: $00
	adc l                                            ; $78d2: $8d
	ld a, [bc]                                       ; $78d3: $0a
	ret nz                                           ; $78d4: $c0

	inc h                                            ; $78d5: $24
	ldh [rAUD2LOW], a                                ; $78d6: $e0 $18
	ret c                                            ; $78d8: $d8

	ret nz                                           ; $78d9: $c0

	dec h                                            ; $78da: $25
	ldh [rAUDVOL], a                                 ; $78db: $e0 $24
	ret c                                            ; $78dd: $d8

	ei                                               ; $78de: $fb
	add b                                            ; $78df: $80
	nop                                              ; $78e0: $00
	ld a, h                                          ; $78e1: $7c
	ld a, [bc]                                       ; $78e2: $0a
	ret nz                                           ; $78e3: $c0

	inc h                                            ; $78e4: $24
	ldh [rAUD2LOW], a                                ; $78e5: $e0 $18
	jp c, $25c0                                      ; $78e7: $da $c0 $25

	ldh [rAUDVOL], a                                 ; $78ea: $e0 $24
	jp c, $80fb                                      ; $78ec: $da $fb $80

	nop                                              ; $78ef: $00
	ld a, l                                          ; $78f0: $7d
	ld a, [bc]                                       ; $78f1: $0a
	ret nz                                           ; $78f2: $c0

	inc h                                            ; $78f3: $24
	ldh [rAUD2LEN], a                                ; $78f4: $e0 $16
	db $dd                                           ; $78f6: $dd
	ret nz                                           ; $78f7: $c0

	dec h                                            ; $78f8: $25
	ldh [rAUD4LEN], a                                ; $78f9: $e0 $20
	db $dd                                           ; $78fb: $dd
	and b                                            ; $78fc: $a0
	db $fd                                           ; $78fd: $fd
	sbc [hl]                                         ; $78fe: $9e
	ret nz                                           ; $78ff: $c0

	ld [hl], h                                       ; $7900: $74
	ld bc, $0ad1                                     ; $7901: $01 $d1 $0a
	ret nc                                           ; $7904: $d0

	add e                                            ; $7905: $83
	ld [bc], a                                       ; $7906: $02
	ld [de], a                                       ; $7907: $12
	db $db                                           ; $7908: $db
	ret nc                                           ; $7909: $d0

	add e                                            ; $790a: $83
	ld [bc], a                                       ; $790b: $02
	ld d, $dc                                        ; $790c: $16 $dc
	ld bc, $0ad2                                     ; $790e: $01 $d2 $0a
	ret nc                                           ; $7911: $d0

	add e                                            ; $7912: $83
	ld [bc], a                                       ; $7913: $02
	ld [de], a                                       ; $7914: $12
	call c, $83d0                                    ; $7915: $dc $d0 $83
	ld [bc], a                                       ; $7918: $02
	ld d, $d1                                        ; $7919: $16 $d1
	ld bc, $0ad3                                     ; $791b: $01 $d3 $0a
	ret nc                                           ; $791e: $d0

	add e                                            ; $791f: $83
	ld [bc], a                                       ; $7920: $02
	ld [de], a                                       ; $7921: $12
	pop de                                           ; $7922: $d1
	ret nc                                           ; $7923: $d0

	add e                                            ; $7924: $83
	ld [bc], a                                       ; $7925: $02
	ld d, $d2                                        ; $7926: $16 $d2
	ld bc, $0ad4                                     ; $7928: $01 $d4 $0a
	ret nc                                           ; $792b: $d0

	add e                                            ; $792c: $83
	ld [bc], a                                       ; $792d: $02
	ld [de], a                                       ; $792e: $12
	jp nc, $83d0                                     ; $792f: $d2 $d0 $83

	ld [bc], a                                       ; $7932: $02
	ld d, $d3                                        ; $7933: $16 $d3
	ld bc, $0ad5                                     ; $7935: $01 $d5 $0a
	ret nc                                           ; $7938: $d0

	add e                                            ; $7939: $83
	ld [bc], a                                       ; $793a: $02
	ld [de], a                                       ; $793b: $12
	db $d3                                           ; $793c: $d3
	ret nc                                           ; $793d: $d0

	add e                                            ; $793e: $83
	ld [bc], a                                       ; $793f: $02
	ld d, $d4                                        ; $7940: $16 $d4
	ld bc, $0ad6                                     ; $7942: $01 $d6 $0a
	ret nc                                           ; $7945: $d0

	add e                                            ; $7946: $83
	ld [bc], a                                       ; $7947: $02
	ld [de], a                                       ; $7948: $12
	call nc, $83d0                                   ; $7949: $d4 $d0 $83
	ld [bc], a                                       ; $794c: $02
	ld d, $d5                                        ; $794d: $16 $d5
	ld bc, $0ad7                                     ; $794f: $01 $d7 $0a
	ret nc                                           ; $7952: $d0

	add e                                            ; $7953: $83
	ld [bc], a                                       ; $7954: $02
	ld [de], a                                       ; $7955: $12
	push de                                          ; $7956: $d5
	ret nc                                           ; $7957: $d0

	add e                                            ; $7958: $83
	ld [bc], a                                       ; $7959: $02
	ld d, $d6                                        ; $795a: $16 $d6
	ld bc, $0ad8                                     ; $795c: $01 $d8 $0a
	ret nc                                           ; $795f: $d0

	add e                                            ; $7960: $83
	ld [bc], a                                       ; $7961: $02
	ld [de], a                                       ; $7962: $12
	sub $d0                                          ; $7963: $d6 $d0
	add e                                            ; $7965: $83
	ld [bc], a                                       ; $7966: $02
	ld d, $d7                                        ; $7967: $16 $d7
	ld bc, $0ad9                                     ; $7969: $01 $d9 $0a
	ret nc                                           ; $796c: $d0

	add e                                            ; $796d: $83
	ld [bc], a                                       ; $796e: $02
	ld [de], a                                       ; $796f: $12
	rst SubAFromHL                                          ; $7970: $d7
	ret nc                                           ; $7971: $d0

	add e                                            ; $7972: $83
	ld [bc], a                                       ; $7973: $02
	ld d, $d8                                        ; $7974: $16 $d8
	ld bc, $0ada                                     ; $7976: $01 $da $0a
	ret nc                                           ; $7979: $d0

	add e                                            ; $797a: $83
	ld [bc], a                                       ; $797b: $02
	ld [de], a                                       ; $797c: $12
	ret c                                            ; $797d: $d8

	ret nc                                           ; $797e: $d0

	add e                                            ; $797f: $83
	ld [bc], a                                       ; $7980: $02
	ld d, $d9                                        ; $7981: $16 $d9
	ld bc, $0adb                                     ; $7983: $01 $db $0a
	ret nc                                           ; $7986: $d0

	add e                                            ; $7987: $83
	ld [bc], a                                       ; $7988: $02
	ld [de], a                                       ; $7989: $12
	reti                                             ; $798a: $d9


	ret nc                                           ; $798b: $d0

	add e                                            ; $798c: $83
	ld [bc], a                                       ; $798d: $02
	ld d, $da                                        ; $798e: $16 $da
	ld bc, $0adc                                     ; $7990: $01 $dc $0a
	ret nc                                           ; $7993: $d0

	add e                                            ; $7994: $83
	ld [bc], a                                       ; $7995: $02
	ld [de], a                                       ; $7996: $12
	jp c, $83d0                                      ; $7997: $da $d0 $83

	ld [bc], a                                       ; $799a: $02
	ld d, $db                                        ; $799b: $16 $db
	add hl, bc                                       ; $799d: $09
	ret nz                                           ; $799e: $c0

	dec bc                                           ; $799f: $0b
	db $e3                                           ; $79a0: $e3
	nop                                              ; $79a1: $00

jr_07b_79a2:
	ld d, $c0                                        ; $79a2: $16 $c0
	inc c                                            ; $79a4: $0c
	ldh [$78], a                                     ; $79a5: $e0 $78
	inc a                                            ; $79a7: $3c
	inc b                                            ; $79a8: $04
	add hl, bc                                       ; $79a9: $09

jr_07b_79aa:
	ld c, [hl]                                       ; $79aa: $4e
	ret nz                                           ; $79ab: $c0

	add hl, bc                                       ; $79ac: $09
	db $e3                                           ; $79ad: $e3
	nop                                              ; $79ae: $00
	ld [hl], d                                       ; $79af: $72
	pop bc                                           ; $79b0: $c1
	sub c                                            ; $79b1: $91
	pop bc                                           ; $79b2: $c1
	or b                                             ; $79b3: $b0
	jp nc, $20e0                                     ; $79b4: $d2 $e0 $20

	ret nc                                           ; $79b7: $d0

	ret nz                                           ; $79b8: $c0

	nop                                              ; $79b9: $00
	nop                                              ; $79ba: $00
	ld bc, $00c0                                     ; $79bb: $01 $c0 $00
	nop                                              ; $79be: $00
	inc b                                            ; $79bf: $04
	ret nz                                           ; $79c0: $c0

	nop                                              ; $79c1: $00
	nop                                              ; $79c2: $00
	dec c                                            ; $79c3: $0d
	ret nz                                           ; $79c4: $c0

	nop                                              ; $79c5: $00
	nop                                              ; $79c6: $00
	ld [de], a                                       ; $79c7: $12
	ret nc                                           ; $79c8: $d0

	add d                                            ; $79c9: $82
	and b                                            ; $79ca: $a0
	nop                                              ; $79cb: $00
	ret nz                                           ; $79cc: $c0

	and c                                            ; $79cd: $a1
	add c                                            ; $79ce: $81
	add d                                            ; $79cf: $82
	and b                                            ; $79d0: $a0
	nop                                              ; $79d1: $00
	ld bc, $1fd4                                     ; $79d2: $01 $d4 $1f
	ret nz                                           ; $79d5: $c0

	nop                                              ; $79d6: $00
	nop                                              ; $79d7: $00
	inc d                                            ; $79d8: $14
	ret nz                                           ; $79d9: $c0

	nop                                              ; $79da: $00
	nop                                              ; $79db: $00
	ld a, [de]                                       ; $79dc: $1a
	ret nz                                           ; $79dd: $c0

	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	jr nz, jr_07b_79a2                               ; $79e0: $20 $c0

	nop                                              ; $79e2: $00
	nop                                              ; $79e3: $00
	ld [de], a                                       ; $79e4: $12
	ret nz                                           ; $79e5: $c0

	nop                                              ; $79e6: $00
	nop                                              ; $79e7: $00
	jr z, jr_07b_79aa                                ; $79e8: $28 $c0

	nop                                              ; $79ea: $00
	nop                                              ; $79eb: $00
	dec l                                            ; $79ec: $2d
	ret nz                                           ; $79ed: $c0

	nop                                              ; $79ee: $00
	nop                                              ; $79ef: $00
	ld [de], a                                       ; $79f0: $12
	db $e4                                           ; $79f1: $e4
	nop                                              ; $79f2: $00
	or a                                             ; $79f3: $b7
	nop                                              ; $79f4: $00
	inc bc                                           ; $79f5: $03
	db $e4                                           ; $79f6: $e4
	nop                                              ; $79f7: $00
	ld [bc], a                                       ; $79f8: $02
	add hl, bc                                       ; $79f9: $09
	xor [hl]                                         ; $79fa: $ae
	ret nc                                           ; $79fb: $d0

	add e                                            ; $79fc: $83
	and b                                            ; $79fd: $a0
	inc bc                                           ; $79fe: $03
	pop bc                                           ; $79ff: $c1
	inc de                                           ; $7a00: $13
	db $fd                                           ; $7a01: $fd
	sub a                                            ; $7a02: $97
	add e                                            ; $7a03: $83
	and b                                            ; $7a04: $a0
	inc bc                                           ; $7a05: $03
	ld bc, $0cd0                                     ; $7a06: $01 $d0 $0c
	ret nz                                           ; $7a09: $c0

	nop                                              ; $7a0a: $00
	nop                                              ; $7a0b: $00
	inc sp                                           ; $7a0c: $33
	ret nz                                           ; $7a0d: $c0

	nop                                              ; $7a0e: $00
	nop                                              ; $7a0f: $00
	inc a                                            ; $7a10: $3c
	ret nz                                           ; $7a11: $c0

	nop                                              ; $7a12: $00
	nop                                              ; $7a13: $00
	ld [de], a                                       ; $7a14: $12
	ld bc, $10d1                                     ; $7a15: $01 $d1 $10
	ret nz                                           ; $7a18: $c0

	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	ld a, $c0                                        ; $7a1b: $3e $c0
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	ld b, c                                          ; $7a1f: $41
	ret nz                                           ; $7a20: $c0

	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	inc a                                            ; $7a23: $3c
	ret nz                                           ; $7a24: $c0

	nop                                              ; $7a25: $00
	nop                                              ; $7a26: $00
	ld [de], a                                       ; $7a27: $12
	ld bc, $10d2                                     ; $7a28: $01 $d2 $10
	ret nz                                           ; $7a2b: $c0

	nop                                              ; $7a2c: $00
	nop                                              ; $7a2d: $00
	ld a, $c0                                        ; $7a2e: $3e $c0
	nop                                              ; $7a30: $00
	nop                                              ; $7a31: $00
	ld c, c                                          ; $7a32: $49
	ret nz                                           ; $7a33: $c0

	nop                                              ; $7a34: $00
	nop                                              ; $7a35: $00
	inc a                                            ; $7a36: $3c
	ret nz                                           ; $7a37: $c0

	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	ld [de], a                                       ; $7a3a: $12
	ld bc, $10d3                                     ; $7a3b: $01 $d3 $10
	ret nz                                           ; $7a3e: $c0

	nop                                              ; $7a3f: $00
	nop                                              ; $7a40: $00
	ld a, $c0                                        ; $7a41: $3e $c0
	nop                                              ; $7a43: $00
	nop                                              ; $7a44: $00
	ld d, b                                          ; $7a45: $50
	ret nz                                           ; $7a46: $c0

	nop                                              ; $7a47: $00
	nop                                              ; $7a48: $00
	inc a                                            ; $7a49: $3c
	ret nz                                           ; $7a4a: $c0

	nop                                              ; $7a4b: $00
	nop                                              ; $7a4c: $00
	ld [de], a                                       ; $7a4d: $12
	ld bc, $10d4                                     ; $7a4e: $01 $d4 $10
	ret nz                                           ; $7a51: $c0

	nop                                              ; $7a52: $00
	nop                                              ; $7a53: $00
	ld a, $c0                                        ; $7a54: $3e $c0
	nop                                              ; $7a56: $00
	nop                                              ; $7a57: $00
	ld e, b                                          ; $7a58: $58
	ret nz                                           ; $7a59: $c0

	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	inc a                                            ; $7a5c: $3c
	ret nz                                           ; $7a5d: $c0

	nop                                              ; $7a5e: $00
	nop                                              ; $7a5f: $00
	ld [de], a                                       ; $7a60: $12
	ld bc, $10d5                                     ; $7a61: $01 $d5 $10
	ret nz                                           ; $7a64: $c0

	nop                                              ; $7a65: $00
	nop                                              ; $7a66: $00
	ld a, $c0                                        ; $7a67: $3e $c0
	nop                                              ; $7a69: $00
	nop                                              ; $7a6a: $00
	ld e, [hl]                                       ; $7a6b: $5e
	ret nz                                           ; $7a6c: $c0

	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	inc a                                            ; $7a6f: $3c
	ret nz                                           ; $7a70: $c0

	nop                                              ; $7a71: $00
	nop                                              ; $7a72: $00
	ld [de], a                                       ; $7a73: $12
	ld bc, $10d6                                     ; $7a74: $01 $d6 $10
	ret nz                                           ; $7a77: $c0

	nop                                              ; $7a78: $00
	nop                                              ; $7a79: $00
	ld h, l                                          ; $7a7a: $65
	ret nz                                           ; $7a7b: $c0

	nop                                              ; $7a7c: $00
	nop                                              ; $7a7d: $00
	ld l, l                                          ; $7a7e: $6d
	ret nz                                           ; $7a7f: $c0

	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	inc a                                            ; $7a82: $3c
	ret nz                                           ; $7a83: $c0

	nop                                              ; $7a84: $00
	nop                                              ; $7a85: $00
	ld [de], a                                       ; $7a86: $12
	ld bc, $10d7                                     ; $7a87: $01 $d7 $10
	ret nz                                           ; $7a8a: $c0

	nop                                              ; $7a8b: $00
	nop                                              ; $7a8c: $00
	ld [hl], d                                       ; $7a8d: $72
	ret nz                                           ; $7a8e: $c0

	nop                                              ; $7a8f: $00
	nop                                              ; $7a90: $00
	ld a, b                                          ; $7a91: $78
	ret nz                                           ; $7a92: $c0

	nop                                              ; $7a93: $00
	nop                                              ; $7a94: $00
	inc a                                            ; $7a95: $3c
	ret nz                                           ; $7a96: $c0

	nop                                              ; $7a97: $00
	nop                                              ; $7a98: $00
	ld [de], a                                       ; $7a99: $12
	ret nz                                           ; $7a9a: $c0

	nop                                              ; $7a9b: $00
	nop                                              ; $7a9c: $00
	ld a, l                                          ; $7a9d: $7d
	ret nz                                           ; $7a9e: $c0

	nop                                              ; $7a9f: $00
	nop                                              ; $7aa0: $00
	add d                                            ; $7aa1: $82
	ret nz                                           ; $7aa2: $c0

	nop                                              ; $7aa3: $00
	nop                                              ; $7aa4: $00
	add a                                            ; $7aa5: $87
	db $e4                                           ; $7aa6: $e4
	nop                                              ; $7aa7: $00
	ld [bc], a                                       ; $7aa8: $02
	add hl, bc                                       ; $7aa9: $09
	pop bc                                           ; $7aaa: $c1
	adc h                                            ; $7aab: $8c
	ld h, b                                          ; $7aac: $60
	add b                                            ; $7aad: $80
	ld [bc], a                                       ; $7aae: $02
	ld a, [de]                                       ; $7aaf: $1a
	ld d, b                                          ; $7ab0: $50
	db $fd                                           ; $7ab1: $fd
	ld c, e                                          ; $7ab2: $4b
	adc e                                            ; $7ab3: $8b
	ld [bc], a                                       ; $7ab4: $02
	dec de                                           ; $7ab5: $1b
	ld [bc], a                                       ; $7ab6: $02
	or b                                             ; $7ab7: $b0
	ld b, e                                          ; $7ab8: $43
	ld [$00c0], sp                                   ; $7ab9: $08 $c0 $00
	nop                                              ; $7abc: $00
	adc d                                            ; $7abd: $8a
	ret nz                                           ; $7abe: $c0

	nop                                              ; $7abf: $00
	nop                                              ; $7ac0: $00
	sub b                                            ; $7ac1: $90
	ld [bc], a                                       ; $7ac2: $02
	or b                                             ; $7ac3: $b0
	ld b, h                                          ; $7ac4: $44
	ld [$00c0], sp                                   ; $7ac5: $08 $c0 $00
	nop                                              ; $7ac8: $00
	sub [hl]                                         ; $7ac9: $96
	ret nz                                           ; $7aca: $c0

	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	sub b                                            ; $7acd: $90
	ld [bc], a                                       ; $7ace: $02
	or b                                             ; $7acf: $b0
	ld b, l                                          ; $7ad0: $45
	ld [$00c0], sp                                   ; $7ad1: $08 $c0 $00
	nop                                              ; $7ad4: $00
	sbc [hl]                                         ; $7ad5: $9e
	ret nz                                           ; $7ad6: $c0

	nop                                              ; $7ad7: $00
	nop                                              ; $7ad8: $00
	sub b                                            ; $7ad9: $90
	ld [bc], a                                       ; $7ada: $02
	or b                                             ; $7adb: $b0
	ld b, [hl]                                       ; $7adc: $46
	ld [$00c0], sp                                   ; $7add: $08 $c0 $00
	nop                                              ; $7ae0: $00
	and h                                            ; $7ae1: $a4
	ret nz                                           ; $7ae2: $c0

	nop                                              ; $7ae3: $00
	nop                                              ; $7ae4: $00
	sub b                                            ; $7ae5: $90
	ld [bc], a                                       ; $7ae6: $02
	or b                                             ; $7ae7: $b0
	ld b, a                                          ; $7ae8: $47
	ld [$00c0], sp                                   ; $7ae9: $08 $c0 $00
	nop                                              ; $7aec: $00
	xor l                                            ; $7aed: $ad
	ret nz                                           ; $7aee: $c0

	nop                                              ; $7aef: $00
	nop                                              ; $7af0: $00
	sub b                                            ; $7af1: $90
	ld [bc], a                                       ; $7af2: $02
	or b                                             ; $7af3: $b0
	ld c, b                                          ; $7af4: $48
	ld [$00c0], sp                                   ; $7af5: $08 $c0 $00
	nop                                              ; $7af8: $00
	or [hl]                                          ; $7af9: $b6
	ret nz                                           ; $7afa: $c0

	nop                                              ; $7afb: $00
	nop                                              ; $7afc: $00
	sub b                                            ; $7afd: $90
	db $e4                                           ; $7afe: $e4
	ld bc, $c139                                     ; $7aff: $01 $39 $c1
	dec [hl]                                         ; $7b02: $35
	db $fd                                           ; $7b03: $fd
	pop bc                                           ; $7b04: $c1
	cpl                                              ; $7b05: $2f
	adc e                                            ; $7b06: $8b
	ld [bc], a                                       ; $7b07: $02
	dec de                                           ; $7b08: $1b
	ld [bc], a                                       ; $7b09: $02
	or b                                             ; $7b0a: $b0
	ld c, c                                          ; $7b0b: $49
	db $10                                           ; $7b0c: $10
	ret nz                                           ; $7b0d: $c0

	nop                                              ; $7b0e: $00
	nop                                              ; $7b0f: $00
	cp a                                             ; $7b10: $bf
	ret nz                                           ; $7b11: $c0

	nop                                              ; $7b12: $00
	nop                                              ; $7b13: $00
	pop bc                                           ; $7b14: $c1
	ret nz                                           ; $7b15: $c0

	nop                                              ; $7b16: $00
	nop                                              ; $7b17: $00
	rst JumpTable                                          ; $7b18: $c7
	ret nz                                           ; $7b19: $c0

	nop                                              ; $7b1a: $00
	nop                                              ; $7b1b: $00
	ld [de], a                                       ; $7b1c: $12
	ld [bc], a                                       ; $7b1d: $02
	or b                                             ; $7b1e: $b0
	ld c, d                                          ; $7b1f: $4a
	db $10                                           ; $7b20: $10
	ret nz                                           ; $7b21: $c0

	nop                                              ; $7b22: $00
	nop                                              ; $7b23: $00
	cp a                                             ; $7b24: $bf
	ret nz                                           ; $7b25: $c0

	nop                                              ; $7b26: $00
	nop                                              ; $7b27: $00
	jp z, $00c0                                      ; $7b28: $ca $c0 $00

	nop                                              ; $7b2b: $00
	rst JumpTable                                          ; $7b2c: $c7
	ret nz                                           ; $7b2d: $c0

	nop                                              ; $7b2e: $00
	nop                                              ; $7b2f: $00
	ld [de], a                                       ; $7b30: $12
	ld [bc], a                                       ; $7b31: $02
	or b                                             ; $7b32: $b0
	ld c, e                                          ; $7b33: $4b
	db $10                                           ; $7b34: $10
	ret nz                                           ; $7b35: $c0

	nop                                              ; $7b36: $00
	nop                                              ; $7b37: $00
	db $d3                                           ; $7b38: $d3
	ret nz                                           ; $7b39: $c0

	nop                                              ; $7b3a: $00
	nop                                              ; $7b3b: $00
	push de                                          ; $7b3c: $d5
	ret nz                                           ; $7b3d: $c0

	nop                                              ; $7b3e: $00
	nop                                              ; $7b3f: $00
	call c, $00c0                                    ; $7b40: $dc $c0 $00
	nop                                              ; $7b43: $00
	ld [de], a                                       ; $7b44: $12
	ld [bc], a                                       ; $7b45: $02
	or b                                             ; $7b46: $b0
	ld c, h                                          ; $7b47: $4c
	db $10                                           ; $7b48: $10
	ret nz                                           ; $7b49: $c0

	nop                                              ; $7b4a: $00
	nop                                              ; $7b4b: $00
	db $d3                                           ; $7b4c: $d3
	ret nz                                           ; $7b4d: $c0

	nop                                              ; $7b4e: $00
	nop                                              ; $7b4f: $00
	push hl                                          ; $7b50: $e5
	ret nz                                           ; $7b51: $c0

	nop                                              ; $7b52: $00
	nop                                              ; $7b53: $00
	db $eb                                           ; $7b54: $eb
	ret nz                                           ; $7b55: $c0

	nop                                              ; $7b56: $00
	nop                                              ; $7b57: $00
	ld [de], a                                       ; $7b58: $12
	ld [bc], a                                       ; $7b59: $02
	or b                                             ; $7b5a: $b0
	ld c, l                                          ; $7b5b: $4d
	inc d                                            ; $7b5c: $14
	ret nz                                           ; $7b5d: $c0

	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	cp a                                             ; $7b60: $bf
	ret nz                                           ; $7b61: $c0

	nop                                              ; $7b62: $00
	nop                                              ; $7b63: $00
	db $f4                                           ; $7b64: $f4
	ret nz                                           ; $7b65: $c0

	nop                                              ; $7b66: $00
	nop                                              ; $7b67: $00
	db $fc                                           ; $7b68: $fc
	ret nz                                           ; $7b69: $c0

	nop                                              ; $7b6a: $00
	nop                                              ; $7b6b: $00
	rst JumpTable                                          ; $7b6c: $c7
	ret nz                                           ; $7b6d: $c0

	nop                                              ; $7b6e: $00
	nop                                              ; $7b6f: $00
	ld [de], a                                       ; $7b70: $12
	ld [bc], a                                       ; $7b71: $02
	or b                                             ; $7b72: $b0
	ld c, [hl]                                       ; $7b73: $4e
	inc d                                            ; $7b74: $14
	ret nz                                           ; $7b75: $c0

	nop                                              ; $7b76: $00
	nop                                              ; $7b77: $00
	cp a                                             ; $7b78: $bf
	ret nz                                           ; $7b79: $c0

	nop                                              ; $7b7a: $00
	nop                                              ; $7b7b: $00
	cp $c0                                           ; $7b7c: $fe $c0
	nop                                              ; $7b7e: $00
	nop                                              ; $7b7f: $00
	db $fc                                           ; $7b80: $fc
	ret nz                                           ; $7b81: $c0

	nop                                              ; $7b82: $00
	nop                                              ; $7b83: $00
	rst JumpTable                                          ; $7b84: $c7
	ret nz                                           ; $7b85: $c0

	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	ld [de], a                                       ; $7b88: $12
	ld [bc], a                                       ; $7b89: $02
	or b                                             ; $7b8a: $b0
	ld c, a                                          ; $7b8b: $4f
	inc d                                            ; $7b8c: $14
	ret nz                                           ; $7b8d: $c0

	nop                                              ; $7b8e: $00
	nop                                              ; $7b8f: $00
	cp a                                             ; $7b90: $bf
	ret nz                                           ; $7b91: $c0

	nop                                              ; $7b92: $00
	ld bc, $c008                                     ; $7b93: $01 $08 $c0
	nop                                              ; $7b96: $00
	nop                                              ; $7b97: $00
	db $fc                                           ; $7b98: $fc
	ret nz                                           ; $7b99: $c0

	nop                                              ; $7b9a: $00
	nop                                              ; $7b9b: $00
	rst JumpTable                                          ; $7b9c: $c7
	ret nz                                           ; $7b9d: $c0

	nop                                              ; $7b9e: $00
	nop                                              ; $7b9f: $00
	ld [de], a                                       ; $7ba0: $12
	ld [bc], a                                       ; $7ba1: $02
	or b                                             ; $7ba2: $b0
	ld d, b                                          ; $7ba3: $50
	db $10                                           ; $7ba4: $10
	ret nz                                           ; $7ba5: $c0

	nop                                              ; $7ba6: $00
	nop                                              ; $7ba7: $00
	cp a                                             ; $7ba8: $bf
	ret nz                                           ; $7ba9: $c0

	nop                                              ; $7baa: $00
	ld bc, $c010                                     ; $7bab: $01 $10 $c0
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	rst JumpTable                                          ; $7bb0: $c7
	ret nz                                           ; $7bb1: $c0

	nop                                              ; $7bb2: $00
	nop                                              ; $7bb3: $00
	ld [de], a                                       ; $7bb4: $12
	ld [bc], a                                       ; $7bb5: $02
	or b                                             ; $7bb6: $b0
	ld d, c                                          ; $7bb7: $51
	db $10                                           ; $7bb8: $10
	ret nz                                           ; $7bb9: $c0

	nop                                              ; $7bba: $00
	ld bc, $c013                                     ; $7bbb: $01 $13 $c0
	nop                                              ; $7bbe: $00
	ld bc, $c01a                                     ; $7bbf: $01 $1a $c0
	nop                                              ; $7bc2: $00
	ld bc, $c01f                                     ; $7bc3: $01 $1f $c0
	nop                                              ; $7bc6: $00
	nop                                              ; $7bc7: $00
	ld [de], a                                       ; $7bc8: $12
	ld [bc], a                                       ; $7bc9: $02
	or b                                             ; $7bca: $b0
	ld b, e                                          ; $7bcb: $43
	inc c                                            ; $7bcc: $0c
	ret nz                                           ; $7bcd: $c0

	nop                                              ; $7bce: $00
	ld bc, $c026                                     ; $7bcf: $01 $26 $c0
	nop                                              ; $7bd2: $00
	ld bc, $c02d                                     ; $7bd3: $01 $2d $c0
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00
	ld [de], a                                       ; $7bd8: $12
	ld [bc], a                                       ; $7bd9: $02
	or b                                             ; $7bda: $b0
	ld b, h                                          ; $7bdb: $44
	db $10                                           ; $7bdc: $10
	ret nz                                           ; $7bdd: $c0

	nop                                              ; $7bde: $00
	ld bc, $c030                                     ; $7bdf: $01 $30 $c0
	nop                                              ; $7be2: $00
	ld bc, $c037                                     ; $7be3: $01 $37 $c0
	nop                                              ; $7be6: $00
	ld bc, $c02d                                     ; $7be7: $01 $2d $c0
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	ld [de], a                                       ; $7bec: $12
	ld [bc], a                                       ; $7bed: $02
	or b                                             ; $7bee: $b0
	ld b, l                                          ; $7bef: $45
	inc c                                            ; $7bf0: $0c
	ret nz                                           ; $7bf1: $c0

	nop                                              ; $7bf2: $00
	ld bc, $c03d                                     ; $7bf3: $01 $3d $c0
	nop                                              ; $7bf6: $00
	ld bc, $c042                                     ; $7bf7: $01 $42 $c0
	nop                                              ; $7bfa: $00
	nop                                              ; $7bfb: $00
	ld [de], a                                       ; $7bfc: $12
	ld [bc], a                                       ; $7bfd: $02
	or b                                             ; $7bfe: $b0
	ld b, [hl]                                       ; $7bff: $46
	db $10                                           ; $7c00: $10
	ret nz                                           ; $7c01: $c0

	nop                                              ; $7c02: $00
	ld bc, $c047                                     ; $7c03: $01 $47 $c0
	nop                                              ; $7c06: $00
	ld bc, $c04b                                     ; $7c07: $01 $4b $c0
	nop                                              ; $7c0a: $00
	ld bc, $c02d                                     ; $7c0b: $01 $2d $c0
	nop                                              ; $7c0e: $00
	nop                                              ; $7c0f: $00
	ld [de], a                                       ; $7c10: $12
	ld [bc], a                                       ; $7c11: $02
	or b                                             ; $7c12: $b0
	ld b, a                                          ; $7c13: $47
	db $10                                           ; $7c14: $10
	ret nz                                           ; $7c15: $c0

	nop                                              ; $7c16: $00
	ld bc, $c052                                     ; $7c17: $01 $52 $c0
	nop                                              ; $7c1a: $00
	ld bc, $c05a                                     ; $7c1b: $01 $5a $c0
	nop                                              ; $7c1e: $00
	ld bc, $c02d                                     ; $7c1f: $01 $2d $c0
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00
	ld [de], a                                       ; $7c24: $12
	ld [bc], a                                       ; $7c25: $02
	or b                                             ; $7c26: $b0
	ld c, b                                          ; $7c27: $48
	inc c                                            ; $7c28: $0c
	ret nz                                           ; $7c29: $c0

	nop                                              ; $7c2a: $00
	ld bc, $c060                                     ; $7c2b: $01 $60 $c0
	nop                                              ; $7c2e: $00
	ld bc, $c068                                     ; $7c2f: $01 $68 $c0
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	ld [de], a                                       ; $7c34: $12
	db $e4                                           ; $7c35: $e4
	nop                                              ; $7c36: $00
	jp nz, $be09                                     ; $7c37: $c2 $09 $be

	ret nc                                           ; $7c3a: $d0

	adc e                                            ; $7c3b: $8b
	ld [bc], a                                       ; $7c3c: $02
	dec de                                           ; $7c3d: $1b
	or b                                             ; $7c3e: $b0
	ld d, d                                          ; $7c3f: $52
	db $fd                                           ; $7c40: $fd
	or e                                             ; $7c41: $b3
	add d                                            ; $7c42: $82
	and b                                            ; $7c43: $a0
	nop                                              ; $7c44: $00
	ld bc, $12d0                                     ; $7c45: $01 $d0 $12
	ret nc                                           ; $7c48: $d0

	adc e                                            ; $7c49: $8b
	ld [bc], a                                       ; $7c4a: $02
	dec de                                           ; $7c4b: $1b
	or b                                             ; $7c4c: $b0
	ld d, e                                          ; $7c4d: $53
	ret nz                                           ; $7c4e: $c0

	nop                                              ; $7c4f: $00
	ld bc, $c06e                                     ; $7c50: $01 $6e $c0
	nop                                              ; $7c53: $00
	ld bc, $c077                                     ; $7c54: $01 $77 $c0
	nop                                              ; $7c57: $00
	nop                                              ; $7c58: $00
	ld [de], a                                       ; $7c59: $12
	ld bc, $14d1                                     ; $7c5a: $01 $d1 $14
	ret nz                                           ; $7c5d: $c0

	nop                                              ; $7c5e: $00
	ld bc, $c07e                                     ; $7c5f: $01 $7e $c0
	nop                                              ; $7c62: $00
	ld bc, $c089                                     ; $7c63: $01 $89 $c0
	nop                                              ; $7c66: $00
	ld bc, $c08f                                     ; $7c67: $01 $8f $c0
	nop                                              ; $7c6a: $00
	ld bc, $c095                                     ; $7c6b: $01 $95 $c0
	nop                                              ; $7c6e: $00
	nop                                              ; $7c6f: $00
	ld [de], a                                       ; $7c70: $12
	ld bc, $16d2                                     ; $7c71: $01 $d2 $16
	ret nz                                           ; $7c74: $c0

	nop                                              ; $7c75: $00
	ld bc, $c09b                                     ; $7c76: $01 $9b $c0
	nop                                              ; $7c79: $00
	ld bc, $c0a2                                     ; $7c7a: $01 $a2 $c0
	nop                                              ; $7c7d: $00
	ld bc, $c0a8                                     ; $7c7e: $01 $a8 $c0
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	ld [de], a                                       ; $7c83: $12
	ret nc                                           ; $7c84: $d0

	adc e                                            ; $7c85: $8b
	ld [bc], a                                       ; $7c86: $02
	dec de                                           ; $7c87: $1b
	or b                                             ; $7c88: $b0
	ld d, h                                          ; $7c89: $54
	ld bc, $16d3                                     ; $7c8a: $01 $d3 $16
	ret nz                                           ; $7c8d: $c0

	nop                                              ; $7c8e: $00
	ld bc, $c0af                                     ; $7c8f: $01 $af $c0
	nop                                              ; $7c92: $00
	ld bc, $c0b7                                     ; $7c93: $01 $b7 $c0
	nop                                              ; $7c96: $00
	ld bc, $c0bf                                     ; $7c97: $01 $bf $c0
	nop                                              ; $7c9a: $00
	nop                                              ; $7c9b: $00
	ld [de], a                                       ; $7c9c: $12
	ret nc                                           ; $7c9d: $d0

	adc e                                            ; $7c9e: $8b
	ld [bc], a                                       ; $7c9f: $02
	dec de                                           ; $7ca0: $1b
	or b                                             ; $7ca1: $b0
	ld d, l                                          ; $7ca2: $55
	ld bc, $16d4                                     ; $7ca3: $01 $d4 $16
	ret nz                                           ; $7ca6: $c0

	nop                                              ; $7ca7: $00
	ld bc, $c0c5                                     ; $7ca8: $01 $c5 $c0
	nop                                              ; $7cab: $00
	ld bc, $c0c9                                     ; $7cac: $01 $c9 $c0
	nop                                              ; $7caf: $00
	ld bc, $c0d0                                     ; $7cb0: $01 $d0 $c0
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	ld [de], a                                       ; $7cb5: $12
	ret nc                                           ; $7cb6: $d0

	adc e                                            ; $7cb7: $8b
	ld [bc], a                                       ; $7cb8: $02
	dec de                                           ; $7cb9: $1b
	or b                                             ; $7cba: $b0
	ld d, [hl]                                       ; $7cbb: $56
	ld bc, $36d5                                     ; $7cbc: $01 $d5 $36
	add c                                            ; $7cbf: $81
	adc e                                            ; $7cc0: $8b
	ld [bc], a                                       ; $7cc1: $02
	dec de                                           ; $7cc2: $1b
	ld b, $b0                                        ; $7cc3: $06 $b0
	ld b, e                                          ; $7cc5: $43
	or b                                             ; $7cc6: $b0
	ld b, h                                          ; $7cc7: $44
	or b                                             ; $7cc8: $b0
	ld b, l                                          ; $7cc9: $45
	ld d, $c0                                        ; $7cca: $16 $c0
	nop                                              ; $7ccc: $00
	ld bc, $c0d5                                     ; $7ccd: $01 $d5 $c0
	nop                                              ; $7cd0: $00
	ld bc, $c0d9                                     ; $7cd1: $01 $d9 $c0
	nop                                              ; $7cd4: $00
	ld bc, $c0df                                     ; $7cd5: $01 $df $c0
	nop                                              ; $7cd8: $00
	nop                                              ; $7cd9: $00
	ld [de], a                                       ; $7cda: $12
	ret nc                                           ; $7cdb: $d0

	adc e                                            ; $7cdc: $8b
	ld [bc], a                                       ; $7cdd: $02
	dec de                                           ; $7cde: $1b
	or b                                             ; $7cdf: $b0
	ld d, a                                          ; $7ce0: $57
	nop                                              ; $7ce1: $00
	ld [de], a                                       ; $7ce2: $12
	ret nz                                           ; $7ce3: $c0

	nop                                              ; $7ce4: $00
	ld bc, $c0e8                                     ; $7ce5: $01 $e8 $c0
	nop                                              ; $7ce8: $00
	ld bc, $c0f2                                     ; $7ce9: $01 $f2 $c0
	nop                                              ; $7cec: $00
	nop                                              ; $7ced: $00
	ld [de], a                                       ; $7cee: $12
	ret nc                                           ; $7cef: $d0

	adc e                                            ; $7cf0: $8b
	ld [bc], a                                       ; $7cf1: $02
	dec de                                           ; $7cf2: $1b
	or b                                             ; $7cf3: $b0
	ld e, b                                          ; $7cf4: $58
	db $e4                                           ; $7cf5: $e4
	nop                                              ; $7cf6: $00
	ld [bc], a                                       ; $7cf7: $02
	add hl, bc                                       ; $7cf8: $09
	ld c, e                                          ; $7cf9: $4b
	db $fd                                           ; $7cfa: $fd
	ld c, c                                          ; $7cfb: $49
	adc e                                            ; $7cfc: $8b
	ld bc, $02b5                                     ; $7cfd: $01 $b5 $02
	or b                                             ; $7d00: $b0
	inc bc                                           ; $7d01: $03
	inc bc                                           ; $7d02: $03
	db $e4                                           ; $7d03: $e4
	nop                                              ; $7d04: $00
	ld b, c                                          ; $7d05: $41
	ld [bc], a                                       ; $7d06: $02
	or b                                             ; $7d07: $b0
	inc b                                            ; $7d08: $04
	inc bc                                           ; $7d09: $03
	db $e4                                           ; $7d0a: $e4
	ld bc, $028c                                     ; $7d0b: $01 $8c $02
	or b                                             ; $7d0e: $b0
	dec b                                            ; $7d0f: $05
	inc bc                                           ; $7d10: $03
	db $e4                                           ; $7d11: $e4
	inc bc                                           ; $7d12: $03
	inc bc                                           ; $7d13: $03
	ld [bc], a                                       ; $7d14: $02
	or b                                             ; $7d15: $b0
	ld b, $03                                        ; $7d16: $06 $03
	db $e4                                           ; $7d18: $e4
	inc b                                            ; $7d19: $04
	ld a, [hl]                                       ; $7d1a: $7e
	ld [bc], a                                       ; $7d1b: $02
	or b                                             ; $7d1c: $b0
	rlca                                             ; $7d1d: $07
	inc bc                                           ; $7d1e: $03
	db $e4                                           ; $7d1f: $e4
	dec b                                            ; $7d20: $05
	and [hl]                                         ; $7d21: $a6
	ld [bc], a                                       ; $7d22: $02
	or b                                             ; $7d23: $b0
	ld [$e403], sp                                   ; $7d24: $08 $03 $e4
	ld b, $90                                        ; $7d27: $06 $90
	ld [bc], a                                       ; $7d29: $02
	or b                                             ; $7d2a: $b0
	add hl, bc                                       ; $7d2b: $09
	inc bc                                           ; $7d2c: $03
	db $e4                                           ; $7d2d: $e4
	rlca                                             ; $7d2e: $07
	cp e                                             ; $7d2f: $bb
	ld [bc], a                                       ; $7d30: $02
	or b                                             ; $7d31: $b0
	ld a, [bc]                                       ; $7d32: $0a
	inc bc                                           ; $7d33: $03
	db $e4                                           ; $7d34: $e4
	ld [$02dc], sp                                   ; $7d35: $08 $dc $02
	or b                                             ; $7d38: $b0
	ld a, [hl+]                                      ; $7d39: $2a
	inc bc                                           ; $7d3a: $03
	db $e4                                           ; $7d3b: $e4
	add hl, bc                                       ; $7d3c: $09
	ldh a, [c]                                       ; $7d3d: $f2
	ld [bc], a                                       ; $7d3e: $02
	or b                                             ; $7d3f: $b0
	ld a, [de]                                       ; $7d40: $1a
	inc bc                                           ; $7d41: $03
	db $e4                                           ; $7d42: $e4
	ld a, [bc]                                       ; $7d43: $0a
	ldh a, [$09]                                     ; $7d44: $f0 $09

jr_07b_7d46:
	pop bc                                           ; $7d46: $c1
	scf                                              ; $7d47: $37
	db $fd                                           ; $7d48: $fd
	pop bc                                           ; $7d49: $c1
	inc [hl]                                         ; $7d4a: $34
	adc e                                            ; $7d4b: $8b
	ld [bc], a                                       ; $7d4c: $02
	dec de                                           ; $7d4d: $1b
	ld [bc], a                                       ; $7d4e: $02
	or b                                             ; $7d4f: $b0
	ld b, e                                          ; $7d50: $43
	inc hl                                           ; $7d51: $23
	ret nz                                           ; $7d52: $c0

	nop                                              ; $7d53: $00
	ld bc, $c0fc                                     ; $7d54: $01 $fc $c0
	nop                                              ; $7d57: $00
	ld [bc], a                                       ; $7d58: $02
	nop                                              ; $7d59: $00
	ret nz                                           ; $7d5a: $c0

	nop                                              ; $7d5b: $00
	ld [bc], a                                       ; $7d5c: $02
	inc b                                            ; $7d5d: $04
	ret nz                                           ; $7d5e: $c0

	nop                                              ; $7d5f: $00
	nop                                              ; $7d60: $00
	ld [de], a                                       ; $7d61: $12
	ret nz                                           ; $7d62: $c0

	nop                                              ; $7d63: $00
	ld [bc], a                                       ; $7d64: $02
	rlca                                             ; $7d65: $07
	ret nz                                           ; $7d66: $c0

	nop                                              ; $7d67: $00
	ld [bc], a                                       ; $7d68: $02
	dec bc                                           ; $7d69: $0b
	ret nz                                           ; $7d6a: $c0

	nop                                              ; $7d6b: $00
	ld [bc], a                                       ; $7d6c: $02
	ld de, $00c0                                     ; $7d6d: $11 $c0 $00
	nop                                              ; $7d70: $00
	ld [de], a                                       ; $7d71: $12
	ldh [rSB], a                                     ; $7d72: $e0 $01
	inc c                                            ; $7d74: $0c
	ld b, $b0                                        ; $7d75: $06 $b0
	ld c, e                                          ; $7d77: $4b
	or b                                             ; $7d78: $b0
	ld c, h                                          ; $7d79: $4c
	or b                                             ; $7d7a: $b0
	ld d, c                                          ; $7d7b: $51
	inc hl                                           ; $7d7c: $23
	ret nz                                           ; $7d7d: $c0

	nop                                              ; $7d7e: $00
	ld [bc], a                                       ; $7d7f: $02
	ld d, $c0                                        ; $7d80: $16 $c0
	nop                                              ; $7d82: $00
	ld [bc], a                                       ; $7d83: $02
	jr jr_07b_7d46                                   ; $7d84: $18 $c0

	nop                                              ; $7d86: $00
	nop                                              ; $7d87: $00
	ld [de], a                                       ; $7d88: $12
	ret nz                                           ; $7d89: $c0

	nop                                              ; $7d8a: $00
	ld [bc], a                                       ; $7d8b: $02
	ld a, [de]                                       ; $7d8c: $1a
	ret nz                                           ; $7d8d: $c0

	nop                                              ; $7d8e: $00
	ld [bc], a                                       ; $7d8f: $02
	inc e                                            ; $7d90: $1c
	ret nz                                           ; $7d91: $c0

	nop                                              ; $7d92: $00
	ld [bc], a                                       ; $7d93: $02
	ld [hl+], a                                      ; $7d94: $22
	ret nz                                           ; $7d95: $c0

	nop                                              ; $7d96: $00
	ld [bc], a                                       ; $7d97: $02
	daa                                              ; $7d98: $27
	ret nz                                           ; $7d99: $c0

	nop                                              ; $7d9a: $00
	nop                                              ; $7d9b: $00
	ld [de], a                                       ; $7d9c: $12
	db $e4                                           ; $7d9d: $e4
	dec bc                                           ; $7d9e: $0b
	ld a, [de]                                       ; $7d9f: $1a
	inc b                                            ; $7da0: $04
	or b                                             ; $7da1: $b0
	ld b, h                                          ; $7da2: $44
	or b                                             ; $7da3: $b0
	ld b, l                                          ; $7da4: $45
	rra                                              ; $7da5: $1f
	ret nz                                           ; $7da6: $c0

	nop                                              ; $7da7: $00
	ld [bc], a                                       ; $7da8: $02
	ld d, $c0                                        ; $7da9: $16 $c0
	nop                                              ; $7dab: $00
	ld [bc], a                                       ; $7dac: $02
	jr @-$3e                                         ; $7dad: $18 $c0

	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	ld [de], a                                       ; $7db1: $12
	ret nz                                           ; $7db2: $c0

	nop                                              ; $7db3: $00
	ld [bc], a                                       ; $7db4: $02
	ld l, $c0                                        ; $7db5: $2e $c0
	nop                                              ; $7db7: $00
	ld [bc], a                                       ; $7db8: $02
	inc [hl]                                         ; $7db9: $34
	ret nz                                           ; $7dba: $c0

	nop                                              ; $7dbb: $00
	ld [bc], a                                       ; $7dbc: $02
	add hl, sp                                       ; $7dbd: $39
	ret nz                                           ; $7dbe: $c0

	nop                                              ; $7dbf: $00
	nop                                              ; $7dc0: $00
	ld [de], a                                       ; $7dc1: $12
	ldh [rP1], a                                     ; $7dc2: $e0 $00
	cp h                                             ; $7dc4: $bc
	ld [bc], a                                       ; $7dc5: $02
	or b                                             ; $7dc6: $b0
	ld d, a                                          ; $7dc7: $57
	rra                                              ; $7dc8: $1f
	ret nz                                           ; $7dc9: $c0

	nop                                              ; $7dca: $00
	ld [bc], a                                       ; $7dcb: $02
	ld d, $c0                                        ; $7dcc: $16 $c0
	nop                                              ; $7dce: $00
	ld [bc], a                                       ; $7dcf: $02
	ld b, d                                          ; $7dd0: $42
	ret nz                                           ; $7dd1: $c0

	nop                                              ; $7dd2: $00
	ld [bc], a                                       ; $7dd3: $02
	inc b                                            ; $7dd4: $04
	ret nz                                           ; $7dd5: $c0

	nop                                              ; $7dd6: $00
	nop                                              ; $7dd7: $00
	ld [de], a                                       ; $7dd8: $12
	ret nz                                           ; $7dd9: $c0

	nop                                              ; $7dda: $00
	ld [bc], a                                       ; $7ddb: $02
	ld b, h                                          ; $7ddc: $44
	ret nz                                           ; $7ddd: $c0

	nop                                              ; $7dde: $00
	ld [bc], a                                       ; $7ddf: $02
	ld c, d                                          ; $7de0: $4a
	ret nz                                           ; $7de1: $c0

	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	ld [de], a                                       ; $7de4: $12
	ldh [rP1], a                                     ; $7de5: $e0 $00
	sbc c                                            ; $7de7: $99
	ld [bc], a                                       ; $7de8: $02
	or b                                             ; $7de9: $b0
	ld e, b                                          ; $7dea: $58
	daa                                              ; $7deb: $27
	ret nz                                           ; $7dec: $c0

	nop                                              ; $7ded: $00
	ld [bc], a                                       ; $7dee: $02
	ld d, e                                          ; $7def: $53

jr_07b_7df0:
	ret nz                                           ; $7df0: $c0

	nop                                              ; $7df1: $00
	ld [bc], a                                       ; $7df2: $02
	ld d, l                                          ; $7df3: $55
	ret nz                                           ; $7df4: $c0

	nop                                              ; $7df5: $00
	ld [bc], a                                       ; $7df6: $02
	ld e, d                                          ; $7df7: $5a
	ret nz                                           ; $7df8: $c0

	nop                                              ; $7df9: $00
	ld [bc], a                                       ; $7dfa: $02
	ld h, b                                          ; $7dfb: $60
	ret nz                                           ; $7dfc: $c0

	nop                                              ; $7dfd: $00
	ld [bc], a                                       ; $7dfe: $02
	ld h, h                                          ; $7dff: $64
	ret nz                                           ; $7e00: $c0

	nop                                              ; $7e01: $00
	nop                                              ; $7e02: $00
	ld [de], a                                       ; $7e03: $12
	ret nz                                           ; $7e04: $c0

	nop                                              ; $7e05: $00
	ld [bc], a                                       ; $7e06: $02
	ld l, d                                          ; $7e07: $6a
	ret nz                                           ; $7e08: $c0

	nop                                              ; $7e09: $00
	ld [bc], a                                       ; $7e0a: $02
	jr @-$3e                                         ; $7e0b: $18 $c0

	nop                                              ; $7e0d: $00
	nop                                              ; $7e0e: $00
	ld [de], a                                       ; $7e0f: $12
	ldh [rP1], a                                     ; $7e10: $e0 $00
	ld l, [hl]                                       ; $7e12: $6e
	ld [bc], a                                       ; $7e13: $02
	or b                                             ; $7e14: $b0
	ld d, [hl]                                       ; $7e15: $56
	ccf                                              ; $7e16: $3f
	ret nz                                           ; $7e17: $c0

	nop                                              ; $7e18: $00
	ld [bc], a                                       ; $7e19: $02
	ld l, a                                          ; $7e1a: $6f
	ret nz                                           ; $7e1b: $c0

	nop                                              ; $7e1c: $00
	ld [bc], a                                       ; $7e1d: $02
	ld a, b                                          ; $7e1e: $78
	ret nz                                           ; $7e1f: $c0

	nop                                              ; $7e20: $00

jr_07b_7e21:
	ld [bc], a                                       ; $7e21: $02
	ld a, a                                          ; $7e22: $7f
	ret nz                                           ; $7e23: $c0

	nop                                              ; $7e24: $00
	nop                                              ; $7e25: $00
	ld [de], a                                       ; $7e26: $12
	ret nz                                           ; $7e27: $c0

	nop                                              ; $7e28: $00
	ld [bc], a                                       ; $7e29: $02
	ld l, d                                          ; $7e2a: $6a
	ret nz                                           ; $7e2b: $c0

	nop                                              ; $7e2c: $00
	ld [bc], a                                       ; $7e2d: $02
	jr jr_07b_7df0                                   ; $7e2e: $18 $c0

	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	ld [de], a                                       ; $7e32: $12
	ret nz                                           ; $7e33: $c0

	nop                                              ; $7e34: $00
	ld [bc], a                                       ; $7e35: $02
	add [hl]                                         ; $7e36: $86
	ret nz                                           ; $7e37: $c0

	nop                                              ; $7e38: $00
	ld [bc], a                                       ; $7e39: $02
	adc d                                            ; $7e3a: $8a
	ret nz                                           ; $7e3b: $c0

	nop                                              ; $7e3c: $00
	ld [bc], a                                       ; $7e3d: $02
	sub b                                            ; $7e3e: $90
	ret nz                                           ; $7e3f: $c0

	nop                                              ; $7e40: $00
	ld [bc], a                                       ; $7e41: $02
	sub [hl]                                         ; $7e42: $96
	ret nz                                           ; $7e43: $c0

	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00
	ld [de], a                                       ; $7e46: $12
	ret nz                                           ; $7e47: $c0

	nop                                              ; $7e48: $00
	ld [bc], a                                       ; $7e49: $02
	sbc l                                            ; $7e4a: $9d
	ret nz                                           ; $7e4b: $c0

	nop                                              ; $7e4c: $00
	ld [bc], a                                       ; $7e4d: $02
	and l                                            ; $7e4e: $a5
	ret nz                                           ; $7e4f: $c0

	nop                                              ; $7e50: $00
	nop                                              ; $7e51: $00
	ld [de], a                                       ; $7e52: $12
	db $e4                                           ; $7e53: $e4
	ld a, [bc]                                       ; $7e54: $0a
	ld h, h                                          ; $7e55: $64
	nop                                              ; $7e56: $00
	daa                                              ; $7e57: $27
	ret nz                                           ; $7e58: $c0

	nop                                              ; $7e59: $00
	ld [bc], a                                       ; $7e5a: $02
	ld d, $c0                                        ; $7e5b: $16 $c0
	nop                                              ; $7e5d: $00
	ld [bc], a                                       ; $7e5e: $02
	jr jr_07b_7e21                                   ; $7e5f: $18 $c0

	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	ld [de], a                                       ; $7e63: $12
	ret nz                                           ; $7e64: $c0

	nop                                              ; $7e65: $00
	ld [bc], a                                       ; $7e66: $02
	xor e                                            ; $7e67: $ab
	ret nz                                           ; $7e68: $c0

	nop                                              ; $7e69: $00
	ld [bc], a                                       ; $7e6a: $02
	xor l                                            ; $7e6b: $ad
	ret nz                                           ; $7e6c: $c0

	nop                                              ; $7e6d: $00
	ld [bc], a                                       ; $7e6e: $02
	or e                                             ; $7e6f: $b3
	ret nz                                           ; $7e70: $c0

	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	ld [de], a                                       ; $7e73: $12
	ret nz                                           ; $7e74: $c0

	nop                                              ; $7e75: $00
	ld [bc], a                                       ; $7e76: $02
	cp c                                             ; $7e77: $b9
	ret nz                                           ; $7e78: $c0

	nop                                              ; $7e79: $00
	nop                                              ; $7e7a: $00
	ld [de], a                                       ; $7e7b: $12
	db $e4                                           ; $7e7c: $e4
	ld a, [bc]                                       ; $7e7d: $0a
	dec sp                                           ; $7e7e: $3b
	rla                                              ; $7e7f: $17
	ret nz                                           ; $7e80: $c0

	nop                                              ; $7e81: $00
	ld [bc], a                                       ; $7e82: $02
	cp h                                             ; $7e83: $bc
	ret nz                                           ; $7e84: $c0

	nop                                              ; $7e85: $00
	ld [bc], a                                       ; $7e86: $02
	jp nz, $00c0                                     ; $7e87: $c2 $c0 $00

	ld [bc], a                                       ; $7e8a: $02
	ret z                                            ; $7e8b: $c8

	ret nz                                           ; $7e8c: $c0

	nop                                              ; $7e8d: $00
	ld [bc], a                                       ; $7e8e: $02
	jp z, $00c0                                      ; $7e8f: $ca $c0 $00

	nop                                              ; $7e92: $00
	ld [de], a                                       ; $7e93: $12
	db $e4                                           ; $7e94: $e4
	ld a, [bc]                                       ; $7e95: $0a
	inc hl                                           ; $7e96: $23
	add hl, bc                                       ; $7e97: $09
	pop bc                                           ; $7e98: $c1
	ld h, e                                          ; $7e99: $63
	db $fd                                           ; $7e9a: $fd
	pop bc                                           ; $7e9b: $c1
	ld h, b                                          ; $7e9c: $60
	adc e                                            ; $7e9d: $8b
	ld [bc], a                                       ; $7e9e: $02
	dec de                                           ; $7e9f: $1b
	ld [bc], a                                       ; $7ea0: $02
	or b                                             ; $7ea1: $b0
	ld b, e                                          ; $7ea2: $43
	inc hl                                           ; $7ea3: $23
	ret nz                                           ; $7ea4: $c0

	nop                                              ; $7ea5: $00
	ld [bc], a                                       ; $7ea6: $02
	call $00c0                                       ; $7ea7: $cd $c0 $00
	ld [bc], a                                       ; $7eaa: $02
	nop                                              ; $7eab: $00
	ret nz                                           ; $7eac: $c0

	nop                                              ; $7ead: $00
	ld [bc], a                                       ; $7eae: $02
	inc b                                            ; $7eaf: $04
	ret nz                                           ; $7eb0: $c0

	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	ld [de], a                                       ; $7eb3: $12
	ret nz                                           ; $7eb4: $c0

	nop                                              ; $7eb5: $00
	ld [bc], a                                       ; $7eb6: $02
	rlca                                             ; $7eb7: $07
	ret nz                                           ; $7eb8: $c0

	nop                                              ; $7eb9: $00
	ld [bc], a                                       ; $7eba: $02
	dec bc                                           ; $7ebb: $0b
	ret nz                                           ; $7ebc: $c0

	nop                                              ; $7ebd: $00
	ld [bc], a                                       ; $7ebe: $02
	ld de, $00c0                                     ; $7ebf: $11 $c0 $00
	nop                                              ; $7ec2: $00
	ld [de], a                                       ; $7ec3: $12
	ldh [rSB], a                                     ; $7ec4: $e0 $01
	jr c, jr_07b_7ece                                ; $7ec6: $38 $06

	or b                                             ; $7ec8: $b0
	ld c, e                                          ; $7ec9: $4b
	or b                                             ; $7eca: $b0
	ld c, h                                          ; $7ecb: $4c
	or b                                             ; $7ecc: $b0
	ld d, c                                          ; $7ecd: $51

jr_07b_7ece:
	daa                                              ; $7ece: $27
	ret nz                                           ; $7ecf: $c0

	nop                                              ; $7ed0: $00
	ld [bc], a                                       ; $7ed1: $02
	pop de                                           ; $7ed2: $d1
	ret nz                                           ; $7ed3: $c0

	nop                                              ; $7ed4: $00
	ld [bc], a                                       ; $7ed5: $02
	ld b, d                                          ; $7ed6: $42
	ret nz                                           ; $7ed7: $c0

	nop                                              ; $7ed8: $00
	ld [bc], a                                       ; $7ed9: $02
	inc b                                            ; $7eda: $04
	ret nz                                           ; $7edb: $c0

	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	ld [de], a                                       ; $7ede: $12
	ret nz                                           ; $7edf: $c0

	nop                                              ; $7ee0: $00
	ld [bc], a                                       ; $7ee1: $02
	ld a, [de]                                       ; $7ee2: $1a
	ret nz                                           ; $7ee3: $c0

	nop                                              ; $7ee4: $00
	ld [bc], a                                       ; $7ee5: $02
	push de                                          ; $7ee6: $d5
	ret nz                                           ; $7ee7: $c0

	nop                                              ; $7ee8: $00
	ld [bc], a                                       ; $7ee9: $02
	ld [hl+], a                                      ; $7eea: $22
	ret nz                                           ; $7eeb: $c0

	nop                                              ; $7eec: $00
	ld [bc], a                                       ; $7eed: $02
	daa                                              ; $7eee: $27
	ret nz                                           ; $7eef: $c0

	nop                                              ; $7ef0: $00
	nop                                              ; $7ef1: $00
	ld [de], a                                       ; $7ef2: $12
	db $e4                                           ; $7ef3: $e4
	add hl, bc                                       ; $7ef4: $09
	call nz, $b004                                   ; $7ef5: $c4 $04 $b0
	ld b, h                                          ; $7ef8: $44
	or b                                             ; $7ef9: $b0
	ld b, l                                          ; $7efa: $45
	inc hl                                           ; $7efb: $23
	ret nz                                           ; $7efc: $c0

	nop                                              ; $7efd: $00
	ld [bc], a                                       ; $7efe: $02
	pop de                                           ; $7eff: $d1
	ret nz                                           ; $7f00: $c0

	nop                                              ; $7f01: $00
	ld [bc], a                                       ; $7f02: $02
	ld b, d                                          ; $7f03: $42
	ret nz                                           ; $7f04: $c0

	nop                                              ; $7f05: $00
	ld [bc], a                                       ; $7f06: $02
	inc b                                            ; $7f07: $04
	ret nz                                           ; $7f08: $c0

	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	ld [de], a                                       ; $7f0b: $12
	ret nz                                           ; $7f0c: $c0

	nop                                              ; $7f0d: $00
	ld [bc], a                                       ; $7f0e: $02
	ld l, $c0                                        ; $7f0f: $2e $c0
	nop                                              ; $7f11: $00
	ld [bc], a                                       ; $7f12: $02
	inc [hl]                                         ; $7f13: $34
	ret nz                                           ; $7f14: $c0

	nop                                              ; $7f15: $00
	ld [bc], a                                       ; $7f16: $02
	add hl, sp                                       ; $7f17: $39
	ret nz                                           ; $7f18: $c0

	nop                                              ; $7f19: $00
	nop                                              ; $7f1a: $00
	ld [de], a                                       ; $7f1b: $12
	ldh [rP1], a                                     ; $7f1c: $e0 $00
	ldh [rSC], a                                     ; $7f1e: $e0 $02
	or b                                             ; $7f20: $b0
	ld d, a                                          ; $7f21: $57
	inc hl                                           ; $7f22: $23
	ret nz                                           ; $7f23: $c0

	nop                                              ; $7f24: $00
	ld [bc], a                                       ; $7f25: $02
	pop de                                           ; $7f26: $d1
	ret nz                                           ; $7f27: $c0

	nop                                              ; $7f28: $00
	ld [bc], a                                       ; $7f29: $02
	ld b, d                                          ; $7f2a: $42
	ret nz                                           ; $7f2b: $c0

	nop                                              ; $7f2c: $00
	ld [bc], a                                       ; $7f2d: $02
	inc b                                            ; $7f2e: $04
	ret nz                                           ; $7f2f: $c0

	nop                                              ; $7f30: $00
	nop                                              ; $7f31: $00
	ld [de], a                                       ; $7f32: $12
	ret nz                                           ; $7f33: $c0

	nop                                              ; $7f34: $00
	ld [bc], a                                       ; $7f35: $02
	ld b, h                                          ; $7f36: $44
	ret nz                                           ; $7f37: $c0

	nop                                              ; $7f38: $00
	ld [bc], a                                       ; $7f39: $02
	db $db                                           ; $7f3a: $db
	ret nz                                           ; $7f3b: $c0

	nop                                              ; $7f3c: $00
	ld [bc], a                                       ; $7f3d: $02
	ldh [$c0], a                                     ; $7f3e: $e0 $c0
	nop                                              ; $7f40: $00
	nop                                              ; $7f41: $00
	ld [de], a                                       ; $7f42: $12
	ldh [rP1], a                                     ; $7f43: $e0 $00
	cp c                                             ; $7f45: $b9
	ld [bc], a                                       ; $7f46: $02
	or b                                             ; $7f47: $b0
	ld e, b                                          ; $7f48: $58
	cpl                                              ; $7f49: $2f
	ret nz                                           ; $7f4a: $c0

	nop                                              ; $7f4b: $00
	ld [bc], a                                       ; $7f4c: $02
	push hl                                          ; $7f4d: $e5
	ret nz                                           ; $7f4e: $c0

	nop                                              ; $7f4f: $00
	ld [bc], a                                       ; $7f50: $02
	jp hl                                            ; $7f51: $e9


	ret nz                                           ; $7f52: $c0

	nop                                              ; $7f53: $00
	ld [bc], a                                       ; $7f54: $02
	ld h, b                                          ; $7f55: $60
	ret nz                                           ; $7f56: $c0

	nop                                              ; $7f57: $00
	ld [bc], a                                       ; $7f58: $02
	ld h, h                                          ; $7f59: $64
	ret nz                                           ; $7f5a: $c0

	nop                                              ; $7f5b: $00
	ld [bc], a                                       ; $7f5c: $02
	pop af                                           ; $7f5d: $f1
	ret nz                                           ; $7f5e: $c0

	nop                                              ; $7f5f: $00
	ld [bc], a                                       ; $7f60: $02
	ld hl, sp-$40                                    ; $7f61: $f8 $c0
	nop                                              ; $7f63: $00
	nop                                              ; $7f64: $00
	ld [de], a                                       ; $7f65: $12
	ret nz                                           ; $7f66: $c0

	nop                                              ; $7f67: $00
	ld [bc], a                                       ; $7f68: $02
	ei                                               ; $7f69: $fb
	ret nz                                           ; $7f6a: $c0

	nop                                              ; $7f6b: $00
	ld [bc], a                                       ; $7f6c: $02
	ld b, d                                          ; $7f6d: $42
	ret nz                                           ; $7f6e: $c0

	nop                                              ; $7f6f: $00
	ld [bc], a                                       ; $7f70: $02
	inc b                                            ; $7f71: $04
	ret nz                                           ; $7f72: $c0

	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	ld [de], a                                       ; $7f75: $12
	ldh [rP1], a                                     ; $7f76: $e0 $00
	add [hl]                                         ; $7f78: $86
	ld [bc], a                                       ; $7f79: $02
	or b                                             ; $7f7a: $b0
	ld d, [hl]                                       ; $7f7b: $56
	ld d, e                                          ; $7f7c: $53
	ret nz                                           ; $7f7d: $c0

	nop                                              ; $7f7e: $00
	inc bc                                           ; $7f7f: $03
	nop                                              ; $7f80: $00
	ret nz                                           ; $7f81: $c0

	nop                                              ; $7f82: $00
	inc bc                                           ; $7f83: $03
	ld b, $c0                                        ; $7f84: $06 $c0
	nop                                              ; $7f86: $00
	inc bc                                           ; $7f87: $03
	add hl, bc                                       ; $7f88: $09
	ret nz                                           ; $7f89: $c0

jr_07b_7f8a:
	nop                                              ; $7f8a: $00
	ld [bc], a                                       ; $7f8b: $02
	ld a, a                                          ; $7f8c: $7f
	ret nz                                           ; $7f8d: $c0

	nop                                              ; $7f8e: $00
	nop                                              ; $7f8f: $00
	ld [de], a                                       ; $7f90: $12
	ret nz                                           ; $7f91: $c0

	nop                                              ; $7f92: $00
	ld [bc], a                                       ; $7f93: $02
	ei                                               ; $7f94: $fb
	ret nz                                           ; $7f95: $c0

	nop                                              ; $7f96: $00
	ld [bc], a                                       ; $7f97: $02
	ld b, d                                          ; $7f98: $42
	ret nz                                           ; $7f99: $c0

	nop                                              ; $7f9a: $00
	ld [bc], a                                       ; $7f9b: $02
	inc b                                            ; $7f9c: $04
	ret nz                                           ; $7f9d: $c0

	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	ld [de], a                                       ; $7fa0: $12
	ret nz                                           ; $7fa1: $c0

	nop                                              ; $7fa2: $00
	ld [bc], a                                       ; $7fa3: $02
	add [hl]                                         ; $7fa4: $86
	ret nz                                           ; $7fa5: $c0

	nop                                              ; $7fa6: $00
	ld [bc], a                                       ; $7fa7: $02
	adc d                                            ; $7fa8: $8a
	ret nz                                           ; $7fa9: $c0

	nop                                              ; $7faa: $00
	ld [bc], a                                       ; $7fab: $02
	sub b                                            ; $7fac: $90
	ret nz                                           ; $7fad: $c0

	nop                                              ; $7fae: $00
	inc bc                                           ; $7faf: $03
	db $10                                           ; $7fb0: $10
	ret nz                                           ; $7fb1: $c0

	nop                                              ; $7fb2: $00
	inc bc                                           ; $7fb3: $03
	ld d, $c0                                        ; $7fb4: $16 $c0
	nop                                              ; $7fb6: $00
	inc bc                                           ; $7fb7: $03
	dec de                                           ; $7fb8: $1b
	ret nz                                           ; $7fb9: $c0

	nop                                              ; $7fba: $00
	inc bc                                           ; $7fbb: $03
	inc hl                                           ; $7fbc: $23
	ret nz                                           ; $7fbd: $c0

	nop                                              ; $7fbe: $00
	nop                                              ; $7fbf: $00
	ld [de], a                                       ; $7fc0: $12
	ret nz                                           ; $7fc1: $c0

	nop                                              ; $7fc2: $00
	inc bc                                           ; $7fc3: $03
	inc l                                            ; $7fc4: $2c
	ret nz                                           ; $7fc5: $c0

	nop                                              ; $7fc6: $00
	inc bc                                           ; $7fc7: $03
	jr nc, jr_07b_7f8a                               ; $7fc8: $30 $c0

	nop                                              ; $7fca: $00
	nop                                              ; $7fcb: $00
	ld [de], a                                       ; $7fcc: $12
	db $e4                                           ; $7fcd: $e4
	ld [$00ea], sp                                   ; $7fce: $08 $ea $00
	dec hl                                           ; $7fd1: $2b
	ret nz                                           ; $7fd2: $c0

	nop                                              ; $7fd3: $00
	ld [bc], a                                       ; $7fd4: $02
	pop de                                           ; $7fd5: $d1
	ret nz                                           ; $7fd6: $c0

	nop                                              ; $7fd7: $00
	ld [bc], a                                       ; $7fd8: $02
	ld b, d                                          ; $7fd9: $42
	ret nz                                           ; $7fda: $c0

	nop                                              ; $7fdb: $00
	ld [bc], a                                       ; $7fdc: $02
	inc b                                            ; $7fdd: $04
	ret nz                                           ; $7fde: $c0

	nop                                              ; $7fdf: $00
	nop                                              ; $7fe0: $00
	ld [de], a                                       ; $7fe1: $12
	ret nz                                           ; $7fe2: $c0

	nop                                              ; $7fe3: $00
	ld [bc], a                                       ; $7fe4: $02
	xor e                                            ; $7fe5: $ab
	ret nz                                           ; $7fe6: $c0

	nop                                              ; $7fe7: $00
	ld [bc], a                                       ; $7fe8: $02
	xor l                                            ; $7fe9: $ad
	ret nz                                           ; $7fea: $c0

	nop                                              ; $7feb: $00
	ld [bc], a                                       ; $7fec: $02
	or e                                             ; $7fed: $b3
	ret nz                                           ; $7fee: $c0

	nop                                              ; $7fef: $00
	nop                                              ; $7ff0: $00
	ld [de], a                                       ; $7ff1: $12
	ret nz                                           ; $7ff2: $c0

	nop                                              ; $7ff3: $00
	ld [bc], a                                       ; $7ff4: $02
	cp c                                             ; $7ff5: $b9
	ret nz                                           ; $7ff6: $c0

	nop                                              ; $7ff7: $00
	nop                                              ; $7ff8: $00
	ld [de], a                                       ; $7ff9: $12
	db $e4                                           ; $7ffa: $e4
	ld [$17bd], sp                                   ; $7ffb: $08 $bd $17
	ret nz                                           ; $7ffe: $c0

	nop                                              ; $7fff: $00
