; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

	rst $38                                          ; $4000: $ff
	rst $38                                          ; $4001: $ff
	nop                                              ; $4002: $00
	ldh a, [c]                                       ; $4003: $f2
	ld [hl+], a                                      ; $4004: $22
	ld a, [hl+]                                      ; $4005: $2a
	ld hl, sp-$0e                                    ; $4006: $f8 $f2
	jr nz, @+$2c                                     ; $4008: $20 $2a

	nop                                              ; $400a: $00
	ldh [c], a                                       ; $400b: $e2
	ld d, $28                                        ; $400c: $16 $28
	ld hl, sp-$1e                                    ; $400e: $f8 $e2
	inc d                                            ; $4010: $14
	add hl, hl                                       ; $4011: $29
	nop                                              ; $4012: $00
	ldh a, [c]                                       ; $4013: $f2
	ld [hl+], a                                      ; $4014: $22
	ld a, [hl+]                                      ; $4015: $2a
	ld hl, sp-$0e                                    ; $4016: $f8 $f2
	jr nz, jr_00f_4044                               ; $4018: $20 $2a

	nop                                              ; $401a: $00
	ldh [c], a                                       ; $401b: $e2
	ld [bc], a                                       ; $401c: $02
	jr z, @-$06                                      ; $401d: $28 $f8

	ldh [c], a                                       ; $401f: $e2
	nop                                              ; $4020: $00
	add hl, hl                                       ; $4021: $29
	nop                                              ; $4022: $00
	ldh a, [c]                                       ; $4023: $f2
	ld [hl+], a                                      ; $4024: $22
	ld a, [hl+]                                      ; $4025: $2a
	ld hl, sp-$0e                                    ; $4026: $f8 $f2
	jr nz, jr_00f_4054                               ; $4028: $20 $2a

	nop                                              ; $402a: $00
	ldh [c], a                                       ; $402b: $e2
	ld [de], a                                       ; $402c: $12
	jr z, @-$06                                      ; $402d: $28 $f8

	ldh [c], a                                       ; $402f: $e2
	db $10                                           ; $4030: $10
	add hl, hl                                       ; $4031: $29
	nop                                              ; $4032: $00
	jp nc, $2c32                                     ; $4033: $d2 $32 $2c

	ld hl, sp-$2e                                    ; $4036: $f8 $d2
	jr nc, jr_00f_4066                               ; $4038: $30 $2c

	nop                                              ; $403a: $00

jr_00f_403b:
	ldh [c], a                                       ; $403b: $e2
	ld [bc], a                                       ; $403c: $02
	jr z, @-$06                                      ; $403d: $28 $f8

	ldh [c], a                                       ; $403f: $e2
	nop                                              ; $4040: $00
	jr z, jr_00f_403b                                ; $4041: $28 $f8

	ldh a, [c]                                       ; $4043: $f2

jr_00f_4044:
	jr nz, jr_00f_4070                               ; $4044: $20 $2a

	nop                                              ; $4046: $00
	ldh a, [c]                                       ; $4047: $f2
	ld [hl+], a                                      ; $4048: $22
	ld a, [hl+]                                      ; $4049: $2a
	ldh a, [$da]                                     ; $404a: $f0 $da
	ld c, b                                          ; $404c: $48
	dec hl                                           ; $404d: $2b
	ld hl, sp-$0e                                    ; $404e: $f8 $f2
	inc l                                            ; $4050: $2c
	ld a, [hl+]                                      ; $4051: $2a
	ldh a, [$da]                                     ; $4052: $f0 $da

jr_00f_4054:
	ld [hl], $2e                                     ; $4054: $36 $2e
	add sp, -$26                                     ; $4056: $e8 $da
	inc [hl]                                         ; $4058: $34
	ld l, $00                                        ; $4059: $2e $00
	ldh [c], a                                       ; $405b: $e2
	ld a, [hl+]                                      ; $405c: $2a
	jr z, @-$06                                      ; $405d: $28 $f8

	ldh [c], a                                       ; $405f: $e2
	jr z, jr_00f_408a                                ; $4060: $28 $28

	nop                                              ; $4062: $00
	ldh a, [c]                                       ; $4063: $f2
	ld [hl+], a                                      ; $4064: $22
	ld a, [hl+]                                      ; $4065: $2a

jr_00f_4066:
	ldh a, [$e2]                                     ; $4066: $f0 $e2
	jr jr_00f_4093                                   ; $4068: $18 $29

	nop                                              ; $406a: $00
	ldh [c], a                                       ; $406b: $e2
	ld [bc], a                                       ; $406c: $02
	jr z, jr_00f_406f                                ; $406d: $28 $00

jr_00f_406f:
	ldh a, [c]                                       ; $406f: $f2

jr_00f_4070:
	ld [hl+], a                                      ; $4070: $22
	ld a, [hl+]                                      ; $4071: $2a
	ld hl, sp-$0e                                    ; $4072: $f8 $f2
	jr nz, jr_00f_40a0                               ; $4074: $20 $2a

	ld hl, sp-$1e                                    ; $4076: $f8 $e2
	nop                                              ; $4078: $00
	jr z, @-$06                                      ; $4079: $28 $f8

	jp nc, $2e46                                     ; $407b: $d2 $46 $2e

	ldh a, [$d2]                                     ; $407e: $f0 $d2
	ld b, h                                          ; $4080: $44
	cpl                                              ; $4081: $2f
	dec b                                            ; $4082: $05
	jp nc, $2e3e                                     ; $4083: $d2 $3e $2e

	db $fd                                           ; $4086: $fd
	jp nc, $2e3c                                     ; $4087: $d2 $3c $2e

jr_00f_408a:
	ld hl, sp-$2e                                    ; $408a: $f8 $d2
	ld b, [hl]                                       ; $408c: $46
	ld l, $f0                                        ; $408d: $2e $f0
	jp nc, $2e44                                     ; $408f: $d2 $44 $2e

	nop                                              ; $4092: $00

jr_00f_4093:
	ldh [c], a                                       ; $4093: $e2
	ld [bc], a                                       ; $4094: $02
	jr z, jr_00f_4097                                ; $4095: $28 $00

jr_00f_4097:
	ldh a, [c]                                       ; $4097: $f2
	ld [hl+], a                                      ; $4098: $22
	ld a, [hl+]                                      ; $4099: $2a
	ld hl, sp-$0e                                    ; $409a: $f8 $f2
	jr nz, jr_00f_40c8                               ; $409c: $20 $2a

	ld hl, sp-$1e                                    ; $409e: $f8 $e2

jr_00f_40a0:
	nop                                              ; $40a0: $00
	add hl, hl                                       ; $40a1: $29
	db $10                                           ; $40a2: $10
	push de                                          ; $40a3: $d5
	ld b, d                                          ; $40a4: $42
	ld l, $08                                        ; $40a5: $2e $08
	push de                                          ; $40a7: $d5
	ld b, b                                          ; $40a8: $40
	ld l, $05                                        ; $40a9: $2e $05
	jp nc, $2e3e                                     ; $40ab: $d2 $3e $2e

	db $fd                                           ; $40ae: $fd
	jp nc, $2e3c                                     ; $40af: $d2 $3c $2e

	ld hl, sp-$2e                                    ; $40b2: $f8 $d2
	ld b, [hl]                                       ; $40b4: $46
	ld l, $f0                                        ; $40b5: $2e $f0
	jp nc, $2e44                                     ; $40b7: $d2 $44 $2e

	nop                                              ; $40ba: $00
	ldh [c], a                                       ; $40bb: $e2
	ld [bc], a                                       ; $40bc: $02
	jr z, jr_00f_40bf                                ; $40bd: $28 $00

jr_00f_40bf:
	ldh a, [c]                                       ; $40bf: $f2
	ld [hl+], a                                      ; $40c0: $22
	ld a, [hl+]                                      ; $40c1: $2a
	ld hl, sp-$0e                                    ; $40c2: $f8 $f2
	jr nz, jr_00f_40f0                               ; $40c4: $20 $2a

	ld hl, sp-$1e                                    ; $40c6: $f8 $e2

jr_00f_40c8:
	nop                                              ; $40c8: $00
	add hl, hl                                       ; $40c9: $29
	ld [de], a                                       ; $40ca: $12
	sbc $3a                                          ; $40cb: $de $3a
	jr z, @+$0c                                      ; $40cd: $28 $0a

jr_00f_40cf:
	sbc $38                                          ; $40cf: $de $38
	jr z, jr_00f_40d3                                ; $40d1: $28 $00

jr_00f_40d3:
	ldh [c], a                                       ; $40d3: $e2
	ld a, [bc]                                       ; $40d4: $0a
	jr z, jr_00f_40cf                                ; $40d5: $28 $f8

	ldh [c], a                                       ; $40d7: $e2
	ld [$0028], sp                                   ; $40d8: $08 $28 $00
	ldh a, [c]                                       ; $40db: $f2
	ld h, $2a                                        ; $40dc: $26 $2a
	ld hl, sp-$0e                                    ; $40de: $f8 $f2
	inc h                                            ; $40e0: $24
	dec hl                                           ; $40e1: $2b
	nop                                              ; $40e2: $00
	ldh a, [c]                                       ; $40e3: $f2
	ld b, $28                                        ; $40e4: $06 $28
	ld hl, sp-$0e                                    ; $40e6: $f8 $f2
	inc b                                            ; $40e8: $04
	jr z, jr_00f_40eb                                ; $40e9: $28 $00

jr_00f_40eb:
	ldh [c], a                                       ; $40eb: $e2
	ld d, $28                                        ; $40ec: $16 $28
	ld hl, sp-$1e                                    ; $40ee: $f8 $e2

jr_00f_40f0:
	inc d                                            ; $40f0: $14
	add hl, hl                                       ; $40f1: $29
	nop                                              ; $40f2: $00
	ldh a, [c]                                       ; $40f3: $f2
	ld b, $28                                        ; $40f4: $06 $28
	ld hl, sp-$0e                                    ; $40f6: $f8 $f2
	inc b                                            ; $40f8: $04
	jr z, jr_00f_40fb                                ; $40f9: $28 $00

jr_00f_40fb:
	ldh [c], a                                       ; $40fb: $e2
	ld [bc], a                                       ; $40fc: $02
	jr z, @-$06                                      ; $40fd: $28 $f8

	ldh [c], a                                       ; $40ff: $e2
	nop                                              ; $4100: $00
	add hl, hl                                       ; $4101: $29
	nop                                              ; $4102: $00
	ldh a, [c]                                       ; $4103: $f2
	ld b, $28                                        ; $4104: $06 $28
	ld hl, sp-$0e                                    ; $4106: $f8 $f2
	inc b                                            ; $4108: $04
	jr z, jr_00f_410b                                ; $4109: $28 $00

jr_00f_410b:
	ldh [c], a                                       ; $410b: $e2
	ld [de], a                                       ; $410c: $12
	jr z, @-$06                                      ; $410d: $28 $f8

	ldh [c], a                                       ; $410f: $e2
	db $10                                           ; $4110: $10
	add hl, hl                                       ; $4111: $29
	nop                                              ; $4112: $00
	ldh a, [c]                                       ; $4113: $f2
	ld b, $28                                        ; $4114: $06 $28
	ld hl, sp-$0e                                    ; $4116: $f8 $f2
	inc b                                            ; $4118: $04
	jr z, jr_00f_411b                                ; $4119: $28 $00

jr_00f_411b:
	jp nc, $2c32                                     ; $411b: $d2 $32 $2c

	ld hl, sp-$2e                                    ; $411e: $f8 $d2
	jr nc, jr_00f_414e                               ; $4120: $30 $2c

	nop                                              ; $4122: $00
	ldh [c], a                                       ; $4123: $e2
	ld [bc], a                                       ; $4124: $02
	jr z, @-$06                                      ; $4125: $28 $f8

	ldh [c], a                                       ; $4127: $e2
	nop                                              ; $4128: $00
	jr z, jr_00f_411b                                ; $4129: $28 $f0

jr_00f_412b:
	jp c, $2b48                                      ; $412b: $da $48 $2b

	nop                                              ; $412e: $00
	ldh a, [c]                                       ; $412f: $f2
	ld b, $28                                        ; $4130: $06 $28
	ld hl, sp-$0e                                    ; $4132: $f8 $f2
	ld e, $28                                        ; $4134: $1e $28
	ld hl, sp-$1e                                    ; $4136: $f8 $e2
	ld a, [de]                                       ; $4138: $1a
	jr z, jr_00f_412b                                ; $4139: $28 $f0

	jp c, $2e36                                      ; $413b: $da $36 $2e

	add sp, -$26                                     ; $413e: $e8 $da
	inc [hl]                                         ; $4140: $34
	ld l, $00                                        ; $4141: $2e $00
	ldh [c], a                                       ; $4143: $e2
	ld a, [hl+]                                      ; $4144: $2a
	jr z, @-$0e                                      ; $4145: $28 $f0

	ldh [c], a                                       ; $4147: $e2
	jr @+$2b                                         ; $4148: $18 $29

	nop                                              ; $414a: $00
	ldh a, [c]                                       ; $414b: $f2
	ld b, $28                                        ; $414c: $06 $28

jr_00f_414e:
	ld hl, sp-$0e                                    ; $414e: $f8 $f2
	inc b                                            ; $4150: $04
	jr z, jr_00f_4153                                ; $4151: $28 $00

jr_00f_4153:
	ldh [c], a                                       ; $4153: $e2
	ld [bc], a                                       ; $4154: $02
	jr z, @-$06                                      ; $4155: $28 $f8

	ldh [c], a                                       ; $4157: $e2
	nop                                              ; $4158: $00
	jr z, jr_00f_4153                                ; $4159: $28 $f8

	jp nc, $2e46                                     ; $415b: $d2 $46 $2e

	ldh a, [$d2]                                     ; $415e: $f0 $d2
	ld b, h                                          ; $4160: $44
	cpl                                              ; $4161: $2f
	nop                                              ; $4162: $00
	ldh a, [c]                                       ; $4163: $f2
	ld b, $28                                        ; $4164: $06 $28
	ld hl, sp-$0e                                    ; $4166: $f8 $f2
	inc b                                            ; $4168: $04
	jr z, @+$07                                      ; $4169: $28 $05

	jp nc, $2e3e                                     ; $416b: $d2 $3e $2e

	db $fd                                           ; $416e: $fd
	jp nc, $2e3c                                     ; $416f: $d2 $3c $2e

	ld hl, sp-$2e                                    ; $4172: $f8 $d2
	ld b, [hl]                                       ; $4174: $46
	ld l, $f0                                        ; $4175: $2e $f0

jr_00f_4177:
	jp nc, $2e44                                     ; $4177: $d2 $44 $2e

	nop                                              ; $417a: $00
	ldh [c], a                                       ; $417b: $e2
	ld [bc], a                                       ; $417c: $02
	jr z, jr_00f_4177                                ; $417d: $28 $f8

	ldh [c], a                                       ; $417f: $e2
	nop                                              ; $4180: $00
	add hl, hl                                       ; $4181: $29
	nop                                              ; $4182: $00
	ldh a, [c]                                       ; $4183: $f2
	ld b, $28                                        ; $4184: $06 $28
	ld hl, sp-$0e                                    ; $4186: $f8 $f2
	inc b                                            ; $4188: $04
	jr z, @+$12                                      ; $4189: $28 $10

	push de                                          ; $418b: $d5
	ld b, d                                          ; $418c: $42
	ld l, $08                                        ; $418d: $2e $08
	push de                                          ; $418f: $d5
	ld b, b                                          ; $4190: $40
	ld l, $05                                        ; $4191: $2e $05
	jp nc, $2e3e                                     ; $4193: $d2 $3e $2e

	db $fd                                           ; $4196: $fd
	jp nc, $2e3c                                     ; $4197: $d2 $3c $2e

	ld hl, sp-$2e                                    ; $419a: $f8 $d2
	ld b, [hl]                                       ; $419c: $46
	ld l, $f0                                        ; $419d: $2e $f0

jr_00f_419f:
	jp nc, $2e44                                     ; $419f: $d2 $44 $2e

	nop                                              ; $41a2: $00
	ldh [c], a                                       ; $41a3: $e2
	ld [bc], a                                       ; $41a4: $02
	jr z, jr_00f_419f                                ; $41a5: $28 $f8

	ldh [c], a                                       ; $41a7: $e2
	nop                                              ; $41a8: $00
	add hl, hl                                       ; $41a9: $29
	nop                                              ; $41aa: $00
	ldh a, [c]                                       ; $41ab: $f2
	ld c, $28                                        ; $41ac: $0e $28
	ld hl, sp-$0e                                    ; $41ae: $f8 $f2
	inc c                                            ; $41b0: $0c
	jr z, jr_00f_41c5                                ; $41b1: $28 $12

	sbc $3a                                          ; $41b3: $de $3a
	jr z, @+$0c                                      ; $41b5: $28 $0a

jr_00f_41b7:
	sbc $38                                          ; $41b7: $de $38
	jr z, jr_00f_41bb                                ; $41b9: $28 $00

jr_00f_41bb:
	ldh [c], a                                       ; $41bb: $e2
	ld a, [bc]                                       ; $41bc: $0a
	jr z, jr_00f_41b7                                ; $41bd: $28 $f8

	ldh [c], a                                       ; $41bf: $e2
	ld [$0829], sp                                   ; $41c0: $08 $29 $08

jr_00f_41c3:
	ldh a, [$08]                                     ; $41c3: $f0 $08

jr_00f_41c5:
	jr z, jr_00f_41c7                                ; $41c5: $28 $00

jr_00f_41c7:
	ldh a, [rTMA]                                    ; $41c7: $f0 $06
	jr z, jr_00f_41c3                                ; $41c9: $28 $f8

	ldh a, [$0c]                                     ; $41cb: $f0 $0c
	ld a, [hl+]                                      ; $41cd: $2a
	ldh a, [$f0]                                     ; $41ce: $f0 $f0
	ld a, [bc]                                       ; $41d0: $0a
	ld a, [hl+]                                      ; $41d1: $2a
	ld [$1e00], sp                                   ; $41d2: $08 $00 $1e
	inc l                                            ; $41d5: $2c
	nop                                              ; $41d6: $00
	nop                                              ; $41d7: $00
	inc e                                            ; $41d8: $1c
	inc l                                            ; $41d9: $2c
	ld hl, sp+$00                                    ; $41da: $f8 $00
	ld a, [de]                                       ; $41dc: $1a
	inc l                                            ; $41dd: $2c
	ldh a, [rP1]                                     ; $41de: $f0 $00
	jr jr_00f_420e                                   ; $41e0: $18 $2c

	add sp, $00                                      ; $41e2: $e8 $00
	ld d, $2c                                        ; $41e4: $16 $2c
	add sp, -$10                                     ; $41e6: $e8 $f0
	nop                                              ; $41e8: $00
	dec l                                            ; $41e9: $2d
	ld [$10f0], sp                                   ; $41ea: $08 $f0 $10
	jr z, jr_00f_41ef                                ; $41ed: $28 $00

jr_00f_41ef:
	ldh a, [$0e]                                     ; $41ef: $f0 $0e
	jr z, @+$0a                                      ; $41f1: $28 $08

	nop                                              ; $41f3: $00
	ld e, $2c                                        ; $41f4: $1e $2c
	nop                                              ; $41f6: $00
	nop                                              ; $41f7: $00
	inc e                                            ; $41f8: $1c
	inc l                                            ; $41f9: $2c
	ld hl, sp+$00                                    ; $41fa: $f8 $00
	ld a, [de]                                       ; $41fc: $1a
	inc l                                            ; $41fd: $2c
	ldh a, [rP1]                                     ; $41fe: $f0 $00
	jr jr_00f_422e                                   ; $4200: $18 $2c

	add sp, $00                                      ; $4202: $e8 $00
	ld d, $2c                                        ; $4204: $16 $2c
	ld hl, sp-$10                                    ; $4206: $f8 $f0
	inc c                                            ; $4208: $0c
	ld a, [hl+]                                      ; $4209: $2a
	ldh a, [$f0]                                     ; $420a: $f0 $f0
	ld a, [bc]                                       ; $420c: $0a
	ld a, [hl+]                                      ; $420d: $2a

jr_00f_420e:
	add sp, -$10                                     ; $420e: $e8 $f0
	nop                                              ; $4210: $00
	dec l                                            ; $4211: $2d
	ld [$14f0], sp                                   ; $4212: $08 $f0 $14
	jr z, jr_00f_4217                                ; $4215: $28 $00

jr_00f_4217:
	ldh a, [rAUD1ENV]                                ; $4217: $f0 $12
	jr z, @+$0a                                      ; $4219: $28 $08

	nop                                              ; $421b: $00
	ld e, $2c                                        ; $421c: $1e $2c
	nop                                              ; $421e: $00
	nop                                              ; $421f: $00
	inc e                                            ; $4220: $1c
	inc l                                            ; $4221: $2c
	ld hl, sp+$00                                    ; $4222: $f8 $00
	ld a, [de]                                       ; $4224: $1a
	inc l                                            ; $4225: $2c
	ldh a, [rP1]                                     ; $4226: $f0 $00
	jr jr_00f_4256                                   ; $4228: $18 $2c

	add sp, $00                                      ; $422a: $e8 $00
	ld d, $2c                                        ; $422c: $16 $2c

jr_00f_422e:
	ld hl, sp-$10                                    ; $422e: $f8 $f0
	inc c                                            ; $4230: $0c
	ld a, [hl+]                                      ; $4231: $2a
	ldh a, [$f0]                                     ; $4232: $f0 $f0
	ld a, [bc]                                       ; $4234: $0a
	ld a, [hl+]                                      ; $4235: $2a
	add sp, -$10                                     ; $4236: $e8 $f0
	nop                                              ; $4238: $00
	dec l                                            ; $4239: $2d
	nop                                              ; $423a: $00
	pop af                                           ; $423b: $f1
	ld b, $2a                                        ; $423c: $06 $2a
	ld hl, sp-$0f                                    ; $423e: $f8 $f1
	inc b                                            ; $4240: $04
	ld a, [hl+]                                      ; $4241: $2a
	nop                                              ; $4242: $00
	pop hl                                           ; $4243: $e1
	ld [bc], a                                       ; $4244: $02
	jr z, @-$06                                      ; $4245: $28 $f8

	pop hl                                           ; $4247: $e1
	nop                                              ; $4248: $00
	add hl, hl                                       ; $4249: $29
	nop                                              ; $424a: $00
	ldh a, [c]                                       ; $424b: $f2
	inc h                                            ; $424c: $24
	ld a, [hl+]                                      ; $424d: $2a
	ld hl, sp-$0e                                    ; $424e: $f8 $f2
	ld [hl+], a                                      ; $4250: $22
	ld a, [hl+]                                      ; $4251: $2a
	ldh a, [$f2]                                     ; $4252: $f0 $f2
	jr nz, jr_00f_4280                               ; $4254: $20 $2a

jr_00f_4256:
	nop                                              ; $4256: $00
	ldh [c], a                                       ; $4257: $e2
	ld [bc], a                                       ; $4258: $02
	jr z, @-$06                                      ; $4259: $28 $f8

	ldh [c], a                                       ; $425b: $e2
	nop                                              ; $425c: $00
	jr z, @-$0e                                      ; $425d: $28 $f0

	ldh [c], a                                       ; $425f: $e2
	ld h, $2b                                        ; $4260: $26 $2b
	ldh a, [$f2]                                     ; $4262: $f0 $f2
	ld l, $28                                        ; $4264: $2e $28
	nop                                              ; $4266: $00
	ldh [c], a                                       ; $4267: $e2
	ld [bc], a                                       ; $4268: $02
	jr z, @-$06                                      ; $4269: $28 $f8

	ldh [c], a                                       ; $426b: $e2
	nop                                              ; $426c: $00
	jr z, jr_00f_426f                                ; $426d: $28 $00

jr_00f_426f:
	ldh a, [c]                                       ; $426f: $f2
	ld [de], a                                       ; $4270: $12
	ld a, [hl+]                                      ; $4271: $2a
	ld hl, sp-$0e                                    ; $4272: $f8 $f2
	db $10                                           ; $4274: $10
	dec hl                                           ; $4275: $2b
	db $ed                                           ; $4276: $ed
	sub $54                                          ; $4277: $d6 $54
	ld l, $e5                                        ; $4279: $2e $e5
	sub $52                                          ; $427b: $d6 $52
	ld l, $04                                        ; $427d: $2e $04
	ldh a, [c]                                       ; $427f: $f2

jr_00f_4280:
	jr jr_00f_42ac                                   ; $4280: $18 $2a

	db $fc                                           ; $4282: $fc
	ldh a, [c]                                       ; $4283: $f2
	ld d, $2a                                        ; $4284: $16 $2a
	db $f4                                           ; $4286: $f4

jr_00f_4287:
	ldh a, [c]                                       ; $4287: $f2
	inc d                                            ; $4288: $14
	ld a, [hl+]                                      ; $4289: $2a
	inc b                                            ; $428a: $04

jr_00f_428b:
	ldh [c], a                                       ; $428b: $e2
	inc c                                            ; $428c: $0c
	jr z, jr_00f_428b                                ; $428d: $28 $fc

	ldh [c], a                                       ; $428f: $e2
	ld a, [bc]                                       ; $4290: $0a
	jr z, jr_00f_4287                                ; $4291: $28 $f4

	ldh [c], a                                       ; $4293: $e2
	ld [$e828], sp                                   ; $4294: $08 $28 $e8
	add sp, $4c                                      ; $4297: $e8 $4c
	add hl, hl                                       ; $4299: $29
	nop                                              ; $429a: $00
	ldh a, [c]                                       ; $429b: $f2
	ld [de], a                                       ; $429c: $12
	ld a, [hl+]                                      ; $429d: $2a
	ld hl, sp-$0e                                    ; $429e: $f8 $f2
	db $10                                           ; $42a0: $10
	ld a, [hl+]                                      ; $42a1: $2a
	ldh a, [$f2]                                     ; $42a2: $f0 $f2
	ld c, $2a                                        ; $42a4: $0e $2a
	nop                                              ; $42a6: $00
	ldh [c], a                                       ; $42a7: $e2
	ld [bc], a                                       ; $42a8: $02
	jr z, @-$06                                      ; $42a9: $28 $f8

	ldh [c], a                                       ; $42ab: $e2

jr_00f_42ac:
	nop                                              ; $42ac: $00
	add hl, hl                                       ; $42ad: $29
	ldh a, [$e8]                                     ; $42ae: $f0 $e8
	ld e, $2a                                        ; $42b0: $1e $2a
	add sp, -$18                                     ; $42b2: $e8 $e8
	inc e                                            ; $42b4: $1c
	ld a, [hl+]                                      ; $42b5: $2a
	inc b                                            ; $42b6: $04

jr_00f_42b7:
	ldh [c], a                                       ; $42b7: $e2
	inc l                                            ; $42b8: $2c
	jr z, jr_00f_42b7                                ; $42b9: $28 $fc

	ldh [c], a                                       ; $42bb: $e2
	ld a, [hl+]                                      ; $42bc: $2a
	jr z, @-$0a                                      ; $42bd: $28 $f4

	ldh [c], a                                       ; $42bf: $e2
	jr z, jr_00f_42ea                                ; $42c0: $28 $28

	db $f4                                           ; $42c2: $f4
	ldh a, [c]                                       ; $42c3: $f2
	inc d                                            ; $42c4: $14
	ld a, [hl+]                                      ; $42c5: $2a
	db $fc                                           ; $42c6: $fc
	ldh a, [c]                                       ; $42c7: $f2
	ld d, $2a                                        ; $42c8: $16 $2a
	db $10                                           ; $42ca: $10
	ret c                                            ; $42cb: $d8

	ld d, b                                          ; $42cc: $50
	jr z, jr_00f_42d7                                ; $42cd: $28 $08

	ret c                                            ; $42cf: $d8

	ld c, [hl]                                       ; $42d0: $4e

jr_00f_42d1:
	jr z, jr_00f_42d7                                ; $42d1: $28 $04

	ldh a, [c]                                       ; $42d3: $f2
	ld a, [de]                                       ; $42d4: $1a
	dec hl                                           ; $42d5: $2b
	inc hl                                           ; $42d6: $23

jr_00f_42d7:
	pop hl                                           ; $42d7: $e1
	ld [hl-], a                                      ; $42d8: $32

jr_00f_42d9:
	ld l, $1b                                        ; $42d9: $2e $1b
	pop hl                                           ; $42db: $e1
	jr nc, jr_00f_430c                               ; $42dc: $30 $2e

	jr z, jr_00f_42d1                                ; $42de: $28 $f1

	ld b, h                                          ; $42e0: $44
	ld l, $18                                        ; $42e1: $2e $18
	pop af                                           ; $42e3: $f1
	ld b, b                                          ; $42e4: $40
	inc l                                            ; $42e5: $2c
	jr nz, jr_00f_42d9                               ; $42e6: $20 $f1

	ld b, d                                          ; $42e8: $42
	dec hl                                           ; $42e9: $2b

jr_00f_42ea:
	inc hl                                           ; $42ea: $23
	pop hl                                           ; $42eb: $e1
	ld [hl], $2e                                     ; $42ec: $36 $2e
	dec de                                           ; $42ee: $1b
	pop hl                                           ; $42ef: $e1
	inc [hl]                                         ; $42f0: $34
	ld l, $28                                        ; $42f1: $2e $28
	pop af                                           ; $42f3: $f1
	ld b, h                                          ; $42f4: $44
	ld l, $18                                        ; $42f5: $2e $18
	pop af                                           ; $42f7: $f1
	ld b, b                                          ; $42f8: $40

jr_00f_42f9:
	inc l                                            ; $42f9: $2c
	jr nz, @-$0d                                     ; $42fa: $20 $f1

	ld b, d                                          ; $42fc: $42
	dec hl                                           ; $42fd: $2b
	inc hl                                           ; $42fe: $23
	pop hl                                           ; $42ff: $e1
	ld [hl-], a                                      ; $4300: $32

jr_00f_4301:
	ld l, $1b                                        ; $4301: $2e $1b
	pop hl                                           ; $4303: $e1
	jr nc, jr_00f_4334                               ; $4304: $30 $2e

	jr z, jr_00f_42f9                                ; $4306: $28 $f1

	ld b, h                                          ; $4308: $44
	ld l, $18                                        ; $4309: $2e $18
	pop af                                           ; $430b: $f1

jr_00f_430c:
	ld b, b                                          ; $430c: $40

jr_00f_430d:
	inc l                                            ; $430d: $2c
	jr nz, jr_00f_4301                               ; $430e: $20 $f1

	ld b, d                                          ; $4310: $42
	dec hl                                           ; $4311: $2b
	jr z, @-$0d                                      ; $4312: $28 $f1

	ld c, d                                          ; $4314: $4a
	ld l, $20                                        ; $4315: $2e $20
	pop af                                           ; $4317: $f1
	ld c, b                                          ; $4318: $48
	ld a, [hl+]                                      ; $4319: $2a
	jr jr_00f_430d                                   ; $431a: $18 $f1

	ld b, [hl]                                       ; $431c: $46
	ld l, $23                                        ; $431d: $2e $23
	pop hl                                           ; $431f: $e1
	ld a, [hl-]                                      ; $4320: $3a

jr_00f_4321:
	ld l, $1b                                        ; $4321: $2e $1b
	pop hl                                           ; $4323: $e1
	jr c, @+$31                                      ; $4324: $38 $2f

	inc hl                                           ; $4326: $23
	pop hl                                           ; $4327: $e1
	ld [hl-], a                                      ; $4328: $32

jr_00f_4329:
	ld l, $1b                                        ; $4329: $2e $1b
	pop hl                                           ; $432b: $e1
	jr nc, jr_00f_435c                               ; $432c: $30 $2e

	jr z, jr_00f_4321                                ; $432e: $28 $f1

	ld b, h                                          ; $4330: $44

jr_00f_4331:
	ld l, $18                                        ; $4331: $2e $18
	pop af                                           ; $4333: $f1

jr_00f_4334:
	ld b, b                                          ; $4334: $40

jr_00f_4335:
	inc l                                            ; $4335: $2c
	jr nz, jr_00f_4329                               ; $4336: $20 $f1

	ld b, d                                          ; $4338: $42

jr_00f_4339:
	dec hl                                           ; $4339: $2b
	inc hl                                           ; $433a: $23
	pop hl                                           ; $433b: $e1
	ld a, $2e                                        ; $433c: $3e $2e
	dec de                                           ; $433e: $1b
	pop hl                                           ; $433f: $e1
	inc a                                            ; $4340: $3c
	ld l, $28                                        ; $4341: $2e $28
	pop af                                           ; $4343: $f1
	ld b, h                                          ; $4344: $44
	ld l, $18                                        ; $4345: $2e $18
	pop af                                           ; $4347: $f1
	ld b, b                                          ; $4348: $40

jr_00f_4349:
	inc l                                            ; $4349: $2c
	jr nz, @-$0d                                     ; $434a: $20 $f1

	ld b, d                                          ; $434c: $42

jr_00f_434d:
	dec hl                                           ; $434d: $2b
	jr nz, jr_00f_4331                               ; $434e: $20 $e1

	ld [hl-], a                                      ; $4350: $32

jr_00f_4351:
	inc l                                            ; $4351: $2c
	jr jr_00f_4335                                   ; $4352: $18 $e1

	jr nc, jr_00f_4382                               ; $4354: $30 $2c

	jr z, jr_00f_4339                                ; $4356: $28 $e1

	inc [hl]                                         ; $4358: $34
	inc l                                            ; $4359: $2c
	jr jr_00f_434d                                   ; $435a: $18 $f1

jr_00f_435c:
	ld a, $2e                                        ; $435c: $3e $2e
	jr z, jr_00f_4351                                ; $435e: $28 $f1

	ld b, d                                          ; $4360: $42

jr_00f_4361:
	inc l                                            ; $4361: $2c
	jr nz, @-$0d                                     ; $4362: $20 $f1

	ld b, b                                          ; $4364: $40

jr_00f_4365:
	dec hl                                           ; $4365: $2b
	jr nz, jr_00f_4349                               ; $4366: $20 $e1

	jr c, jr_00f_4396                                ; $4368: $38 $2c

	jr jr_00f_434d                                   ; $436a: $18 $e1

	ld [hl], $2c                                     ; $436c: $36 $2c
	jr z, jr_00f_4361                                ; $436e: $28 $f1

	ld b, d                                          ; $4370: $42
	inc l                                            ; $4371: $2c
	jr nz, jr_00f_4365                               ; $4372: $20 $f1

	ld b, b                                          ; $4374: $40

jr_00f_4375:
	ld a, [hl+]                                      ; $4375: $2a
	jr @-$0d                                         ; $4376: $18 $f1

	ld a, $2e                                        ; $4378: $3e $2e
	jr z, @-$1d                                      ; $437a: $28 $e1

	inc [hl]                                         ; $437c: $34

jr_00f_437d:
	dec l                                            ; $437d: $2d
	jr jr_00f_4361                                   ; $437e: $18 $e1

	jr nc, jr_00f_43ae                               ; $4380: $30 $2c

jr_00f_4382:
	jr nz, jr_00f_4365                               ; $4382: $20 $e1

	ld [hl-], a                                      ; $4384: $32
	inc l                                            ; $4385: $2c
	jr z, @-$0d                                      ; $4386: $28 $f1

	ld b, d                                          ; $4388: $42
	inc l                                            ; $4389: $2c
	jr nz, jr_00f_437d                               ; $438a: $20 $f1

	ld b, b                                          ; $438c: $40
	ld a, [hl+]                                      ; $438d: $2a
	jr @-$0d                                         ; $438e: $18 $f1

	ld a, $2e                                        ; $4390: $3e $2e
	jr z, jr_00f_4375                                ; $4392: $28 $e1

	inc [hl]                                         ; $4394: $34

jr_00f_4395:
	dec l                                            ; $4395: $2d

jr_00f_4396:
	jr @-$1d                                         ; $4396: $18 $e1

	jr nc, jr_00f_43c6                               ; $4398: $30 $2c

	jr nz, jr_00f_437d                               ; $439a: $20 $e1

	inc a                                            ; $439c: $3c

jr_00f_439d:
	inc l                                            ; $439d: $2c
	jr z, @-$1d                                      ; $439e: $28 $e1

	inc [hl]                                         ; $43a0: $34

jr_00f_43a1:
	inc l                                            ; $43a1: $2c
	jr jr_00f_4395                                   ; $43a2: $18 $f1

	ld a, $2e                                        ; $43a4: $3e $2e
	jr z, @-$0d                                      ; $43a6: $28 $f1

	ld b, d                                          ; $43a8: $42

jr_00f_43a9:
	inc l                                            ; $43a9: $2c
	jr nz, jr_00f_439d                               ; $43aa: $20 $f1

	ld b, b                                          ; $43ac: $40

jr_00f_43ad:
	dec hl                                           ; $43ad: $2b

jr_00f_43ae:
	jr @-$1d                                         ; $43ae: $18 $e1

	jr nc, jr_00f_43de                               ; $43b0: $30 $2c

	jr z, @-$0d                                      ; $43b2: $28 $f1

	ld b, d                                          ; $43b4: $42
	inc l                                            ; $43b5: $2c
	jr nz, jr_00f_43a9                               ; $43b6: $20 $f1

	ld b, b                                          ; $43b8: $40
	ld a, [hl+]                                      ; $43b9: $2a
	jr jr_00f_43ad                                   ; $43ba: $18 $f1

	ld a, $2e                                        ; $43bc: $3e $2e
	jr z, jr_00f_43a1                                ; $43be: $28 $e1

	inc [hl]                                         ; $43c0: $34
	inc l                                            ; $43c1: $2c
	jr nz, @-$1d                                     ; $43c2: $20 $e1

	ld [hl-], a                                      ; $43c4: $32

jr_00f_43c5:
	dec l                                            ; $43c5: $2d

jr_00f_43c6:
	jr jr_00f_43a9                                   ; $43c6: $18 $e1

	jr nc, jr_00f_43f6                               ; $43c8: $30 $2c

	jr z, jr_00f_43ad                                ; $43ca: $28 $e1

	inc [hl]                                         ; $43cc: $34

jr_00f_43cd:
	inc l                                            ; $43cd: $2c
	jr nz, @-$1d                                     ; $43ce: $20 $e1

	ld a, [hl-]                                      ; $43d0: $3a
	inc l                                            ; $43d1: $2c
	jr jr_00f_43c5                                   ; $43d2: $18 $f1

	ld a, $2e                                        ; $43d4: $3e $2e
	jr z, @-$0d                                      ; $43d6: $28 $f1

	ld b, d                                          ; $43d8: $42
	inc l                                            ; $43d9: $2c
	jr nz, jr_00f_43cd                               ; $43da: $20 $f1

	ld b, b                                          ; $43dc: $40
	dec hl                                           ; $43dd: $2b

jr_00f_43de:
	ld h, $f1                                        ; $43de: $26 $f1
	ld [$1e2c], sp                                   ; $43e0: $08 $2c $1e
	pop af                                           ; $43e3: $f1
	ld b, $2c                                        ; $43e4: $06 $2c
	ld d, $f1                                        ; $43e6: $16 $f1
	inc b                                            ; $43e8: $04
	inc l                                            ; $43e9: $2c
	daa                                              ; $43ea: $27
	pop hl                                           ; $43eb: $e1
	ld [bc], a                                       ; $43ec: $02
	jr z, jr_00f_440e                                ; $43ed: $28 $1f

	pop hl                                           ; $43ef: $e1
	nop                                              ; $43f0: $00
	add hl, hl                                       ; $43f1: $29
	inc hl                                           ; $43f2: $23
	pop af                                           ; $43f3: $f1
	ld c, $2c                                        ; $43f4: $0e $2c

jr_00f_43f6:
	dec de                                           ; $43f6: $1b
	pop af                                           ; $43f7: $f1
	inc c                                            ; $43f8: $0c
	inc l                                            ; $43f9: $2c
	inc de                                           ; $43fa: $13
	pop af                                           ; $43fb: $f1
	ld a, [bc]                                       ; $43fc: $0a
	inc l                                            ; $43fd: $2c
	ld hl, $02e1                                     ; $43fe: $21 $e1 $02
	jr z, jr_00f_441c                                ; $4401: $28 $19

	pop hl                                           ; $4403: $e1
	nop                                              ; $4404: $00
	add hl, hl                                       ; $4405: $29
	ld e, $f1                                        ; $4406: $1e $f1
	ld [$162c], sp                                   ; $4408: $08 $2c $16
	pop af                                           ; $440b: $f1
	ld b, $2c                                        ; $440c: $06 $2c

jr_00f_440e:
	ld c, $f1                                        ; $440e: $0e $f1
	inc b                                            ; $4410: $04
	inc l                                            ; $4411: $2c
	rra                                              ; $4412: $1f
	pop hl                                           ; $4413: $e1
	ld [bc], a                                       ; $4414: $02
	jr z, jr_00f_442e                                ; $4415: $28 $17

	pop hl                                           ; $4417: $e1
	nop                                              ; $4418: $00
	add hl, hl                                       ; $4419: $29
	dec de                                           ; $441a: $1b
	pop af                                           ; $441b: $f1

jr_00f_441c:
	ld c, $2c                                        ; $441c: $0e $2c
	inc de                                           ; $441e: $13
	pop af                                           ; $441f: $f1
	inc c                                            ; $4420: $0c
	inc l                                            ; $4421: $2c
	dec bc                                           ; $4422: $0b
	pop af                                           ; $4423: $f1
	ld a, [bc]                                       ; $4424: $0a
	inc l                                            ; $4425: $2c
	add hl, de                                       ; $4426: $19
	pop hl                                           ; $4427: $e1
	ld [bc], a                                       ; $4428: $02
	jr z, jr_00f_443c                                ; $4429: $28 $11

	pop hl                                           ; $442b: $e1
	nop                                              ; $442c: $00
	add hl, hl                                       ; $442d: $29

jr_00f_442e:
	ld d, $f1                                        ; $442e: $16 $f1
	ld [$0e2c], sp                                   ; $4430: $08 $2c $0e
	pop af                                           ; $4433: $f1
	ld b, $2c                                        ; $4434: $06 $2c
	ld b, $f1                                        ; $4436: $06 $f1
	inc b                                            ; $4438: $04
	inc l                                            ; $4439: $2c
	rla                                              ; $443a: $17
	pop hl                                           ; $443b: $e1

jr_00f_443c:
	ld [bc], a                                       ; $443c: $02
	jr z, jr_00f_444e                                ; $443d: $28 $0f

	pop hl                                           ; $443f: $e1
	nop                                              ; $4440: $00
	add hl, hl                                       ; $4441: $29
	inc de                                           ; $4442: $13
	pop af                                           ; $4443: $f1
	ld c, $2c                                        ; $4444: $0e $2c
	dec bc                                           ; $4446: $0b
	pop af                                           ; $4447: $f1
	inc c                                            ; $4448: $0c
	inc l                                            ; $4449: $2c
	inc bc                                           ; $444a: $03
	pop af                                           ; $444b: $f1
	ld a, [bc]                                       ; $444c: $0a
	inc l                                            ; $444d: $2c

jr_00f_444e:
	ld de, $02e1                                     ; $444e: $11 $e1 $02
	jr z, jr_00f_445c                                ; $4451: $28 $09

	pop hl                                           ; $4453: $e1
	nop                                              ; $4454: $00
	add hl, hl                                       ; $4455: $29
	ld c, $f1                                        ; $4456: $0e $f1
	ld [$062c], sp                                   ; $4458: $08 $2c $06
	pop af                                           ; $445b: $f1

jr_00f_445c:
	ld b, $2c                                        ; $445c: $06 $2c
	cp $f1                                           ; $445e: $fe $f1
	inc b                                            ; $4460: $04
	inc l                                            ; $4461: $2c
	rrca                                             ; $4462: $0f
	pop hl                                           ; $4463: $e1
	ld [bc], a                                       ; $4464: $02
	jr z, jr_00f_446e                                ; $4465: $28 $07

	pop hl                                           ; $4467: $e1
	nop                                              ; $4468: $00
	add hl, hl                                       ; $4469: $29
	ld [$1ef1], sp                                   ; $446a: $08 $f1 $1e
	inc l                                            ; $446d: $2c

jr_00f_446e:
	nop                                              ; $446e: $00
	pop af                                           ; $446f: $f1
	inc e                                            ; $4470: $1c
	inc l                                            ; $4471: $2c
	ld [$1ae1], sp                                   ; $4472: $08 $e1 $1a
	jr z, jr_00f_4477                                ; $4475: $28 $00

jr_00f_4477:
	pop hl                                           ; $4477: $e1
	jr jr_00f_44a2                                   ; $4478: $18 $28

	ld hl, sp-$1f                                    ; $447a: $f8 $e1
	ld d, $28                                        ; $447c: $16 $28
	xor $d0                                          ; $447e: $ee $d0
	ld c, d                                          ; $4480: $4a
	dec l                                            ; $4481: $2d
	add sp, -$28                                     ; $4482: $e8 $d8
	ld b, d                                          ; $4484: $42
	ld l, [hl]                                       ; $4485: $6e
	ldh a, [$d8]                                     ; $4486: $f0 $d8
	ld b, b                                          ; $4488: $40
	ld l, [hl]                                       ; $4489: $6e
	ld [$1ef1], sp                                   ; $448a: $08 $f1 $1e
	inc l                                            ; $448d: $2c
	nop                                              ; $448e: $00
	pop af                                           ; $448f: $f1
	inc e                                            ; $4490: $1c
	inc l                                            ; $4491: $2c
	ld [$1ae1], sp                                   ; $4492: $08 $e1 $1a
	jr z, jr_00f_4497                                ; $4495: $28 $00

jr_00f_4497:
	pop hl                                           ; $4497: $e1
	jr @+$2a                                         ; $4498: $18 $28

	ld hl, sp-$1f                                    ; $449a: $f8 $e1
	ld d, $29                                        ; $449c: $16 $29
	di                                               ; $449e: $f3
	ret c                                            ; $449f: $d8

	ld c, d                                          ; $44a0: $4a
	inc l                                            ; $44a1: $2c

jr_00f_44a2:
	ld [$1ef1], sp                                   ; $44a2: $08 $f1 $1e
	inc l                                            ; $44a5: $2c
	ld [$1ae1], sp                                   ; $44a6: $08 $e1 $1a
	jr z, jr_00f_44ab                                ; $44a9: $28 $00

jr_00f_44ab:
	pop af                                           ; $44ab: $f1
	inc e                                            ; $44ac: $1c
	inc l                                            ; $44ad: $2c
	nop                                              ; $44ae: $00
	pop hl                                           ; $44af: $e1
	jr jr_00f_44da                                   ; $44b0: $18 $28

	ld hl, sp-$1f                                    ; $44b2: $f8 $e1
	ld d, $29                                        ; $44b4: $16 $29
	dec bc                                           ; $44b6: $0b
	pop af                                           ; $44b7: $f1
	ld h, $2c                                        ; $44b8: $26 $2c
	inc bc                                           ; $44ba: $03
	pop af                                           ; $44bb: $f1
	inc h                                            ; $44bc: $24
	inc l                                            ; $44bd: $2c
	dec bc                                           ; $44be: $0b
	pop hl                                           ; $44bf: $e1
	ld [hl+], a                                      ; $44c0: $22
	jr z, jr_00f_44c6                                ; $44c1: $28 $03

	pop hl                                           ; $44c3: $e1
	jr nz, @+$2a                                     ; $44c4: $20 $28

jr_00f_44c6:
	db $fc                                           ; $44c6: $fc
	db $e3                                           ; $44c7: $e3
	ld c, d                                          ; $44c8: $4a
	dec l                                            ; $44c9: $2d
	inc d                                            ; $44ca: $14
	ret c                                            ; $44cb: $d8

	ld b, [hl]                                       ; $44cc: $46
	ld l, b                                          ; $44cd: $68
	inc e                                            ; $44ce: $1c
	ret c                                            ; $44cf: $d8

	ld b, h                                          ; $44d0: $44
	ld l, b                                          ; $44d1: $68
	dec bc                                           ; $44d2: $0b
	pop af                                           ; $44d3: $f1
	ld h, $2c                                        ; $44d4: $26 $2c
	inc bc                                           ; $44d6: $03
	pop af                                           ; $44d7: $f1
	inc h                                            ; $44d8: $24
	inc l                                            ; $44d9: $2c

jr_00f_44da:
	dec bc                                           ; $44da: $0b
	pop hl                                           ; $44db: $e1
	ld [hl+], a                                      ; $44dc: $22
	jr z, jr_00f_44e2                                ; $44dd: $28 $03

	pop hl                                           ; $44df: $e1
	jr nz, jr_00f_450a                               ; $44e0: $20 $28

jr_00f_44e2:
	inc de                                           ; $44e2: $13
	ldh a, [c]                                       ; $44e3: $f2
	ld c, h                                          ; $44e4: $4c
	dec l                                            ; $44e5: $2d
	ld c, c                                          ; $44e6: $49
	jp hl                                            ; $44e7: $e9


	ld d, d                                          ; $44e8: $52

jr_00f_44e9:
	inc l                                            ; $44e9: $2c
	ld b, e                                          ; $44ea: $43
	pop hl                                           ; $44eb: $e1
	ld a, [hl+]                                      ; $44ec: $2a
	ld l, $3b                                        ; $44ed: $2e $3b
	pop hl                                           ; $44ef: $e1
	jr z, jr_00f_4520                                ; $44f0: $28 $2e

	ld c, b                                          ; $44f2: $48
	pop af                                           ; $44f3: $f1
	jr nc, jr_00f_4524                               ; $44f4: $30 $2e

	jr c, jr_00f_44e9                                ; $44f6: $38 $f1

	inc l                                            ; $44f8: $2c
	ld l, $40                                        ; $44f9: $2e $40
	pop af                                           ; $44fb: $f1
	ld l, $2d                                        ; $44fc: $2e $2d
	ld c, c                                          ; $44fe: $49
	jp hl                                            ; $44ff: $e9


	ld d, b                                          ; $4500: $50

jr_00f_4501:
	inc l                                            ; $4501: $2c
	ld b, e                                          ; $4502: $43
	pop hl                                           ; $4503: $e1
	ld a, [hl+]                                      ; $4504: $2a
	ld l, $3b                                        ; $4505: $2e $3b
	pop hl                                           ; $4507: $e1
	jr z, jr_00f_4538                                ; $4508: $28 $2e

jr_00f_450a:
	ld c, b                                          ; $450a: $48
	pop af                                           ; $450b: $f1
	jr nc, jr_00f_453c                               ; $450c: $30 $2e

	jr c, jr_00f_4501                                ; $450e: $38 $f1

	inc l                                            ; $4510: $2c
	ld l, $40                                        ; $4511: $2e $40
	pop af                                           ; $4513: $f1
	ld l, $2d                                        ; $4514: $2e $2d
	ld c, c                                          ; $4516: $49
	jp hl                                            ; $4517: $e9


	ld d, d                                          ; $4518: $52

jr_00f_4519:
	ld l, h                                          ; $4519: $6c
	ld b, e                                          ; $451a: $43
	pop hl                                           ; $451b: $e1
	ld a, [hl+]                                      ; $451c: $2a
	ld l, $3b                                        ; $451d: $2e $3b
	pop hl                                           ; $451f: $e1

jr_00f_4520:
	jr z, jr_00f_4550                                ; $4520: $28 $2e

	ld c, b                                          ; $4522: $48
	pop af                                           ; $4523: $f1

jr_00f_4524:
	jr nc, jr_00f_4554                               ; $4524: $30 $2e

	jr c, jr_00f_4519                                ; $4526: $38 $f1

	inc l                                            ; $4528: $2c
	ld l, $40                                        ; $4529: $2e $40
	pop af                                           ; $452b: $f1
	ld l, $2d                                        ; $452c: $2e $2d
	ld c, c                                          ; $452e: $49
	jp hl                                            ; $452f: $e9


	ld c, [hl]                                       ; $4530: $4e

jr_00f_4531:
	inc l                                            ; $4531: $2c
	ld b, e                                          ; $4532: $43
	pop hl                                           ; $4533: $e1
	ld a, [hl+]                                      ; $4534: $2a
	ld l, $3b                                        ; $4535: $2e $3b
	pop hl                                           ; $4537: $e1

jr_00f_4538:
	jr z, jr_00f_4568                                ; $4538: $28 $2e

	ld c, b                                          ; $453a: $48
	pop af                                           ; $453b: $f1

jr_00f_453c:
	jr nc, jr_00f_456c                               ; $453c: $30 $2e

	jr c, jr_00f_4531                                ; $453e: $38 $f1

	inc l                                            ; $4540: $2c
	ld l, $40                                        ; $4541: $2e $40
	pop af                                           ; $4543: $f1
	ld l, $2d                                        ; $4544: $2e $2d
	ld c, c                                          ; $4546: $49
	jp hl                                            ; $4547: $e9


	ld d, b                                          ; $4548: $50

jr_00f_4549:
	inc l                                            ; $4549: $2c
	ld b, e                                          ; $454a: $43
	pop hl                                           ; $454b: $e1
	ld a, [hl+]                                      ; $454c: $2a
	ld l, $3b                                        ; $454d: $2e $3b
	pop hl                                           ; $454f: $e1

jr_00f_4550:
	jr z, jr_00f_4580                                ; $4550: $28 $2e

	ld c, b                                          ; $4552: $48
	pop af                                           ; $4553: $f1

jr_00f_4554:
	jr nc, jr_00f_4584                               ; $4554: $30 $2e

	jr c, jr_00f_4549                                ; $4556: $38 $f1

	inc l                                            ; $4558: $2c
	ld l, $40                                        ; $4559: $2e $40
	pop af                                           ; $455b: $f1
	ld l, $2d                                        ; $455c: $2e $2d
	ld c, c                                          ; $455e: $49
	jp hl                                            ; $455f: $e9


	ld d, d                                          ; $4560: $52

jr_00f_4561:
	ld l, h                                          ; $4561: $6c
	ld b, e                                          ; $4562: $43
	pop hl                                           ; $4563: $e1
	ld a, [hl+]                                      ; $4564: $2a
	ld l, $3b                                        ; $4565: $2e $3b
	pop hl                                           ; $4567: $e1

jr_00f_4568:
	jr z, jr_00f_4598                                ; $4568: $28 $2e

	ld c, b                                          ; $456a: $48
	pop af                                           ; $456b: $f1

jr_00f_456c:
	jr nc, jr_00f_459c                               ; $456c: $30 $2e

	jr c, jr_00f_4561                                ; $456e: $38 $f1

	inc l                                            ; $4570: $2c
	ld l, $40                                        ; $4571: $2e $40
	pop af                                           ; $4573: $f1
	ld l, $2d                                        ; $4574: $2e $2d
	ld c, c                                          ; $4576: $49
	jp hl                                            ; $4577: $e9


	ld c, [hl]                                       ; $4578: $4e

jr_00f_4579:
	inc l                                            ; $4579: $2c
	ld b, e                                          ; $457a: $43
	pop hl                                           ; $457b: $e1
	ld a, [hl+]                                      ; $457c: $2a
	ld l, $3b                                        ; $457d: $2e $3b
	pop hl                                           ; $457f: $e1

jr_00f_4580:
	jr z, jr_00f_45b0                                ; $4580: $28 $2e

	ld c, b                                          ; $4582: $48
	pop af                                           ; $4583: $f1

jr_00f_4584:
	jr nc, jr_00f_45b4                               ; $4584: $30 $2e

	jr c, jr_00f_4579                                ; $4586: $38 $f1

	inc l                                            ; $4588: $2c
	ld l, $40                                        ; $4589: $2e $40
	pop af                                           ; $458b: $f1
	ld l, $2d                                        ; $458c: $2e $2d
	ld c, c                                          ; $458e: $49
	jp hl                                            ; $458f: $e9


	ld d, b                                          ; $4590: $50

jr_00f_4591:
	inc l                                            ; $4591: $2c
	ld b, e                                          ; $4592: $43
	pop hl                                           ; $4593: $e1
	ld a, [hl+]                                      ; $4594: $2a
	ld l, $3b                                        ; $4595: $2e $3b
	pop hl                                           ; $4597: $e1

jr_00f_4598:
	jr z, jr_00f_45c8                                ; $4598: $28 $2e

	ld c, b                                          ; $459a: $48
	pop af                                           ; $459b: $f1

jr_00f_459c:
	jr nc, jr_00f_45cc                               ; $459c: $30 $2e

	jr c, jr_00f_4591                                ; $459e: $38 $f1

	inc l                                            ; $45a0: $2c
	ld l, $40                                        ; $45a1: $2e $40
	pop af                                           ; $45a3: $f1
	ld l, $2d                                        ; $45a4: $2e $2d
	ld b, e                                          ; $45a6: $43
	pop hl                                           ; $45a7: $e1
	inc a                                            ; $45a8: $3c
	ld l, $3b                                        ; $45a9: $2e $3b
	pop hl                                           ; $45ab: $e1
	ld a, [hl-]                                      ; $45ac: $3a
	ld l, $49                                        ; $45ad: $2e $49
	db $e4                                           ; $45af: $e4

jr_00f_45b0:
	ld c, h                                          ; $45b0: $4c

jr_00f_45b1:
	inc l                                            ; $45b1: $2c
	ld c, e                                          ; $45b2: $4b
	pop hl                                           ; $45b3: $e1

jr_00f_45b4:
	ld a, $2e                                        ; $45b4: $3e $2e
	ld c, b                                          ; $45b6: $48
	pop af                                           ; $45b7: $f1
	jr c, jr_00f_45e8                                ; $45b8: $38 $2e

	ld b, b                                          ; $45ba: $40
	pop af                                           ; $45bb: $f1
	ld [hl], $2c                                     ; $45bc: $36 $2c
	jr c, jr_00f_45b1                                ; $45be: $38 $f1

	inc l                                            ; $45c0: $2c
	cpl                                              ; $45c1: $2f
	ld c, c                                          ; $45c2: $49
	jp hl                                            ; $45c3: $e9


	ld c, d                                          ; $45c4: $4a

jr_00f_45c5:
	inc l                                            ; $45c5: $2c
	ld b, e                                          ; $45c6: $43
	pop hl                                           ; $45c7: $e1

jr_00f_45c8:
	ld a, [hl+]                                      ; $45c8: $2a
	ld l, $3b                                        ; $45c9: $2e $3b
	pop hl                                           ; $45cb: $e1

jr_00f_45cc:
	jr z, jr_00f_45fc                                ; $45cc: $28 $2e

	ld c, b                                          ; $45ce: $48
	pop af                                           ; $45cf: $f1
	jr nc, jr_00f_4600                               ; $45d0: $30 $2e

	jr c, jr_00f_45c5                                ; $45d2: $38 $f1

	inc l                                            ; $45d4: $2c
	ld l, $40                                        ; $45d5: $2e $40
	pop af                                           ; $45d7: $f1
	ld l, $2d                                        ; $45d8: $2e $2d
	ld b, l                                          ; $45da: $45
	pop hl                                           ; $45db: $e1
	inc [hl]                                         ; $45dc: $34

jr_00f_45dd:
	ld l, $3d                                        ; $45dd: $2e $3d
	pop hl                                           ; $45df: $e1
	ld [hl-], a                                      ; $45e0: $32
	ld l, $4e                                        ; $45e1: $2e $4e
	db $ec                                           ; $45e3: $ec
	ld c, h                                          ; $45e4: $4c
	inc l                                            ; $45e5: $2c
	ld c, b                                          ; $45e6: $48
	pop af                                           ; $45e7: $f1

jr_00f_45e8:
	jr nc, jr_00f_4618                               ; $45e8: $30 $2e

	jr c, jr_00f_45dd                                ; $45ea: $38 $f1

	inc l                                            ; $45ec: $2c
	ld l, $40                                        ; $45ed: $2e $40
	pop af                                           ; $45ef: $f1
	ld l, $2d                                        ; $45f0: $2e $2d
	ld d, e                                          ; $45f2: $53
	ld sp, hl                                        ; $45f3: $f9
	ld c, h                                          ; $45f4: $4c

jr_00f_45f5:
	ld l, h                                          ; $45f5: $6c
	ld b, l                                          ; $45f6: $45
	pop hl                                           ; $45f7: $e1
	inc [hl]                                         ; $45f8: $34
	ld l, $3d                                        ; $45f9: $2e $3d
	pop hl                                           ; $45fb: $e1

jr_00f_45fc:
	ld [hl-], a                                      ; $45fc: $32
	ld l, $48                                        ; $45fd: $2e $48
	pop af                                           ; $45ff: $f1

jr_00f_4600:
	jr nc, jr_00f_4630                               ; $4600: $30 $2e

	jr c, jr_00f_45f5                                ; $4602: $38 $f1

	inc l                                            ; $4604: $2c

jr_00f_4605:
	ld l, $40                                        ; $4605: $2e $40
	pop af                                           ; $4607: $f1
	ld l, $2d                                        ; $4608: $2e $2d
	ld b, b                                          ; $460a: $40
	pop hl                                           ; $460b: $e1
	ld a, [hl+]                                      ; $460c: $2a
	ld a, [hl+]                                      ; $460d: $2a
	jr c, @-$1d                                      ; $460e: $38 $e1

	jr z, jr_00f_463c                                ; $4610: $28 $2a

	jr c, jr_00f_4605                                ; $4612: $38 $f1

	inc l                                            ; $4614: $2c

jr_00f_4615:
	inc l                                            ; $4615: $2c
	ld b, b                                          ; $4616: $40
	pop af                                           ; $4617: $f1

jr_00f_4618:
	ld l, $2d                                        ; $4618: $2e $2d
	ld b, b                                          ; $461a: $40
	pop hl                                           ; $461b: $e1
	ld a, [hl+]                                      ; $461c: $2a

jr_00f_461d:
	ld a, [hl+]                                      ; $461d: $2a
	jr c, @-$1d                                      ; $461e: $38 $e1

	jr z, jr_00f_464c                                ; $4620: $28 $2a

	jr c, jr_00f_4615                                ; $4622: $38 $f1

	inc l                                            ; $4624: $2c
	inc l                                            ; $4625: $2c
	ld b, b                                          ; $4626: $40
	pop af                                           ; $4627: $f1
	ld l, $2d                                        ; $4628: $2e $2d
	jr c, jr_00f_461d                                ; $462a: $38 $f1

	inc l                                            ; $462c: $2c

jr_00f_462d:
	inc l                                            ; $462d: $2c
	ld b, b                                          ; $462e: $40
	pop af                                           ; $462f: $f1

jr_00f_4630:
	ld l, $2c                                        ; $4630: $2e $2c
	ld b, b                                          ; $4632: $40
	pop hl                                           ; $4633: $e1
	ld a, [hl+]                                      ; $4634: $2a
	ld a, [hl+]                                      ; $4635: $2a
	jr c, @-$1d                                      ; $4636: $38 $e1

	jr z, jr_00f_4665                                ; $4638: $28 $2b

	jr c, jr_00f_462d                                ; $463a: $38 $f1

jr_00f_463c:
	inc l                                            ; $463c: $2c

jr_00f_463d:
	inc l                                            ; $463d: $2c
	ld b, b                                          ; $463e: $40
	pop af                                           ; $463f: $f1
	ld l, $2c                                        ; $4640: $2e $2c
	ld b, b                                          ; $4642: $40
	pop hl                                           ; $4643: $e1
	ld a, [hl+]                                      ; $4644: $2a
	ld a, [hl+]                                      ; $4645: $2a
	jr c, @-$1d                                      ; $4646: $38 $e1

	jr z, jr_00f_4675                                ; $4648: $28 $2b

	jr c, jr_00f_463d                                ; $464a: $38 $f1

jr_00f_464c:
	inc l                                            ; $464c: $2c

jr_00f_464d:
	inc l                                            ; $464d: $2c
	ld b, b                                          ; $464e: $40
	pop af                                           ; $464f: $f1
	ld l, $2c                                        ; $4650: $2e $2c
	ld b, b                                          ; $4652: $40
	pop hl                                           ; $4653: $e1
	ld a, [hl+]                                      ; $4654: $2a
	ld a, [hl+]                                      ; $4655: $2a
	jr c, @-$1d                                      ; $4656: $38 $e1

	jr z, jr_00f_4685                                ; $4658: $28 $2b

	jr c, jr_00f_464d                                ; $465a: $38 $f1

	inc l                                            ; $465c: $2c

jr_00f_465d:
	inc l                                            ; $465d: $2c
	ld b, b                                          ; $465e: $40
	pop af                                           ; $465f: $f1
	ld l, $2c                                        ; $4660: $2e $2c
	ld b, b                                          ; $4662: $40
	pop hl                                           ; $4663: $e1
	ld a, [hl+]                                      ; $4664: $2a

jr_00f_4665:
	ld a, [hl+]                                      ; $4665: $2a
	jr c, @-$1d                                      ; $4666: $38 $e1

	jr z, jr_00f_4695                                ; $4668: $28 $2b

	jr c, jr_00f_465d                                ; $466a: $38 $f1

	inc l                                            ; $466c: $2c
	inc l                                            ; $466d: $2c
	ld b, b                                          ; $466e: $40
	pop af                                           ; $466f: $f1

jr_00f_4670:
	ld l, $2c                                        ; $4670: $2e $2c
	ld b, b                                          ; $4672: $40
	pop hl                                           ; $4673: $e1
	ld a, [hl+]                                      ; $4674: $2a

jr_00f_4675:
	ld a, [hl+]                                      ; $4675: $2a
	jr c, @-$1d                                      ; $4676: $38 $e1

	jr z, jr_00f_46a5                                ; $4678: $28 $2b

	ld b, b                                          ; $467a: $40
	pop hl                                           ; $467b: $e1
	ld a, [hl+]                                      ; $467c: $2a
	ld a, [hl+]                                      ; $467d: $2a
	jr c, @-$1d                                      ; $467e: $38 $e1

	jr z, jr_00f_46ac                                ; $4680: $28 $2a

	jr c, jr_00f_4675                                ; $4682: $38 $f1

	inc l                                            ; $4684: $2c

jr_00f_4685:
	inc l                                            ; $4685: $2c
	ld b, b                                          ; $4686: $40
	pop af                                           ; $4687: $f1

jr_00f_4688:
	ld l, $2d                                        ; $4688: $2e $2d
	ld b, b                                          ; $468a: $40
	ldh [$3a], a                                     ; $468b: $e0 $3a

jr_00f_468d:
	ld a, [hl+]                                      ; $468d: $2a
	jr c, jr_00f_4670                                ; $468e: $38 $e0

	jr c, jr_00f_46bc                                ; $4690: $38 $2a

	ld b, b                                          ; $4692: $40
	ldh a, [$3e]                                     ; $4693: $f0 $3e

jr_00f_4695:
	inc l                                            ; $4695: $2c
	jr c, jr_00f_4688                                ; $4696: $38 $f0

	inc a                                            ; $4698: $3c
	dec l                                            ; $4699: $2d
	ld b, b                                          ; $469a: $40
	pop hl                                           ; $469b: $e1
	ld a, [hl+]                                      ; $469c: $2a
	ld a, [hl+]                                      ; $469d: $2a
	jr c, @-$1d                                      ; $469e: $38 $e1

	jr z, jr_00f_46cc                                ; $46a0: $28 $2a

	jr c, jr_00f_4695                                ; $46a2: $38 $f1

	inc l                                            ; $46a4: $2c

jr_00f_46a5:
	inc l                                            ; $46a5: $2c
	ld b, b                                          ; $46a6: $40
	pop af                                           ; $46a7: $f1
	ld l, $2d                                        ; $46a8: $2e $2d
	jr c, jr_00f_468d                                ; $46aa: $38 $e1

jr_00f_46ac:
	jr z, jr_00f_46d8                                ; $46ac: $28 $2a

	ld b, b                                          ; $46ae: $40
	pop hl                                           ; $46af: $e1
	ld a, [hl+]                                      ; $46b0: $2a
	ld a, [hl+]                                      ; $46b1: $2a
	jr c, jr_00f_46a5                                ; $46b2: $38 $f1

	inc l                                            ; $46b4: $2c

jr_00f_46b5:
	inc l                                            ; $46b5: $2c
	ld b, b                                          ; $46b6: $40
	pop af                                           ; $46b7: $f1
	ld l, $2d                                        ; $46b8: $2e $2d
	ld b, b                                          ; $46ba: $40
	pop hl                                           ; $46bb: $e1

jr_00f_46bc:
	ld [hl-], a                                      ; $46bc: $32

jr_00f_46bd:
	ld a, [hl+]                                      ; $46bd: $2a
	jr c, @-$1d                                      ; $46be: $38 $e1

	jr nc, jr_00f_46ec                               ; $46c0: $30 $2a

	ld b, b                                          ; $46c2: $40
	pop af                                           ; $46c3: $f1
	ld [hl], $2c                                     ; $46c4: $36 $2c
	jr c, @-$0d                                      ; $46c6: $38 $f1

	inc [hl]                                         ; $46c8: $34
	dec l                                            ; $46c9: $2d
	jr z, jr_00f_46bd                                ; $46ca: $28 $f1

jr_00f_46cc:
	ld [$202e], sp                                   ; $46cc: $08 $2e $20
	pop af                                           ; $46cf: $f1
	ld b, $2e                                        ; $46d0: $06 $2e
	jr z, jr_00f_46b5                                ; $46d2: $28 $e1

	ld [bc], a                                       ; $46d4: $02
	jr z, @+$22                                      ; $46d5: $28 $20

	pop hl                                           ; $46d7: $e1

jr_00f_46d8:
	nop                                              ; $46d8: $00
	jr z, jr_00f_46ef                                ; $46d9: $28 $14

	ld hl, sp+$48                                    ; $46db: $f8 $48
	dec hl                                           ; $46dd: $2b
	add hl, hl                                       ; $46de: $29
	pop af                                           ; $46df: $f1
	inc d                                            ; $46e0: $14

jr_00f_46e1:
	ld l, $21                                        ; $46e1: $2e $21
	pop af                                           ; $46e3: $f1
	ld [de], a                                       ; $46e4: $12
	ld l, $19                                        ; $46e5: $2e $19
	pop af                                           ; $46e7: $f1
	db $10                                           ; $46e8: $10

jr_00f_46e9:
	ld l, $23                                        ; $46e9: $2e $23
	pop hl                                           ; $46eb: $e1

jr_00f_46ec:
	ld [bc], a                                       ; $46ec: $02
	jr z, jr_00f_470a                                ; $46ed: $28 $1b

jr_00f_46ef:
	pop hl                                           ; $46ef: $e1
	nop                                              ; $46f0: $00
	jr z, jr_00f_4703                                ; $46f1: $28 $10

	ld hl, sp+$4a                                    ; $46f3: $f8 $4a
	dec hl                                           ; $46f5: $2b
	jr nz, jr_00f_46e9                               ; $46f6: $20 $f1

	ld [$182e], sp                                   ; $46f8: $08 $2e $18
	pop af                                           ; $46fb: $f1
	ld b, $2e                                        ; $46fc: $06 $2e
	jr nz, jr_00f_46e1                               ; $46fe: $20 $e1

	ld [bc], a                                       ; $4700: $02
	jr z, jr_00f_471b                                ; $4701: $28 $18

jr_00f_4703:
	pop hl                                           ; $4703: $e1
	nop                                              ; $4704: $00
	jr z, jr_00f_4713                                ; $4705: $28 $0c

	ld hl, sp+$48                                    ; $4707: $f8 $48
	dec hl                                           ; $4709: $2b

jr_00f_470a:
	ld hl, $0ef1                                     ; $470a: $21 $f1 $0e

jr_00f_470d:
	ld l, $19                                        ; $470d: $2e $19
	pop af                                           ; $470f: $f1
	inc c                                            ; $4710: $0c
	ld l, $11                                        ; $4711: $2e $11

jr_00f_4713:
	pop af                                           ; $4713: $f1
	ld a, [bc]                                       ; $4714: $0a

jr_00f_4715:
	ld l, $1c                                        ; $4715: $2e $1c
	pop hl                                           ; $4717: $e1
	ld [bc], a                                       ; $4718: $02
	jr z, jr_00f_472f                                ; $4719: $28 $14

jr_00f_471b:
	pop hl                                           ; $471b: $e1
	nop                                              ; $471c: $00
	jr z, jr_00f_4727                                ; $471d: $28 $08

	ld hl, sp+$4a                                    ; $471f: $f8 $4a
	dec hl                                           ; $4721: $2b
	jr jr_00f_4715                                   ; $4722: $18 $f1

	ld [$102e], sp                                   ; $4724: $08 $2e $10

jr_00f_4727:
	pop af                                           ; $4727: $f1
	ld b, $2e                                        ; $4728: $06 $2e
	jr jr_00f_470d                                   ; $472a: $18 $e1

	ld [bc], a                                       ; $472c: $02
	jr z, jr_00f_473f                                ; $472d: $28 $10

jr_00f_472f:
	pop hl                                           ; $472f: $e1
	nop                                              ; $4730: $00
	jr z, jr_00f_4737                                ; $4731: $28 $04

	ld hl, sp+$48                                    ; $4733: $f8 $48
	dec hl                                           ; $4735: $2b
	add hl, de                                       ; $4736: $19

jr_00f_4737:
	pop af                                           ; $4737: $f1
	inc d                                            ; $4738: $14
	ld l, $11                                        ; $4739: $2e $11
	pop af                                           ; $473b: $f1
	ld [de], a                                       ; $473c: $12
	ld l, $09                                        ; $473d: $2e $09

jr_00f_473f:
	pop af                                           ; $473f: $f1
	db $10                                           ; $4740: $10
	ld l, $13                                        ; $4741: $2e $13
	pop hl                                           ; $4743: $e1
	ld [bc], a                                       ; $4744: $02
	jr z, @+$0d                                      ; $4745: $28 $0b

	pop hl                                           ; $4747: $e1
	nop                                              ; $4748: $00
	jr z, jr_00f_474b                                ; $4749: $28 $00

jr_00f_474b:
	ld hl, sp+$4a                                    ; $474b: $f8 $4a
	dec hl                                           ; $474d: $2b
	db $10                                           ; $474e: $10
	pop af                                           ; $474f: $f1
	ld [$082e], sp                                   ; $4750: $08 $2e $08
	pop af                                           ; $4753: $f1
	ld b, $2e                                        ; $4754: $06 $2e
	db $10                                           ; $4756: $10
	pop hl                                           ; $4757: $e1
	ld [bc], a                                       ; $4758: $02
	jr z, jr_00f_4763                                ; $4759: $28 $08

jr_00f_475b:
	pop hl                                           ; $475b: $e1
	nop                                              ; $475c: $00
	jr z, jr_00f_475b                                ; $475d: $28 $fc

	ld hl, sp+$48                                    ; $475f: $f8 $48
	dec hl                                           ; $4761: $2b
	dec d                                            ; $4762: $15

jr_00f_4763:
	pop af                                           ; $4763: $f1
	ld a, [de]                                       ; $4764: $1a
	ld l, $0d                                        ; $4765: $2e $0d
	pop af                                           ; $4767: $f1
	jr @+$30                                         ; $4768: $18 $2e

	dec b                                            ; $476a: $05
	pop af                                           ; $476b: $f1
	ld d, $2e                                        ; $476c: $16 $2e
	rrca                                             ; $476e: $0f
	pop hl                                           ; $476f: $e1
	ld [bc], a                                       ; $4770: $02
	jr z, jr_00f_477a                                ; $4771: $28 $07

jr_00f_4773:
	pop hl                                           ; $4773: $e1
	nop                                              ; $4774: $00
	jr z, jr_00f_4773                                ; $4775: $28 $fc

	ldh a, [rWY]                                     ; $4777: $f0 $4a
	dec hl                                           ; $4779: $2b

jr_00f_477a:
	ld hl, sp-$28                                    ; $477a: $f8 $d8
	ld d, d                                          ; $477c: $52
	ld l, [hl]                                       ; $477d: $6e
	nop                                              ; $477e: $00
	ret c                                            ; $477f: $d8

	ld d, b                                          ; $4780: $50
	ld l, [hl]                                       ; $4781: $6e
	dec b                                            ; $4782: $05
	pop af                                           ; $4783: $f1
	ld d, $2e                                        ; $4784: $16 $2e
	rlca                                             ; $4786: $07
	pop hl                                           ; $4787: $e1
	nop                                              ; $4788: $00
	jr z, jr_00f_479a                                ; $4789: $28 $0f

	pop hl                                           ; $478b: $e1

jr_00f_478c:
	ld [bc], a                                       ; $478c: $02
	jr z, jr_00f_479c                                ; $478d: $28 $0d

	pop af                                           ; $478f: $f1

jr_00f_4790:
	jr jr_00f_47c0                                   ; $4790: $18 $2e

	dec d                                            ; $4792: $15
	pop af                                           ; $4793: $f1
	ld a, [de]                                       ; $4794: $1a
	ld l, $f4                                        ; $4795: $2e $f4
	add sp, $4a                                      ; $4797: $e8 $4a
	dec hl                                           ; $4799: $2b

jr_00f_479a:
	dec b                                            ; $479a: $05
	pop af                                           ; $479b: $f1

jr_00f_479c:
	ld d, $2e                                        ; $479c: $16 $2e
	rlca                                             ; $479e: $07
	pop hl                                           ; $479f: $e1
	nop                                              ; $47a0: $00
	jr z, jr_00f_47b2                                ; $47a1: $28 $0f

	pop hl                                           ; $47a3: $e1
	ld [bc], a                                       ; $47a4: $02
	jr z, jr_00f_47b4                                ; $47a5: $28 $0d

	pop af                                           ; $47a7: $f1
	jr jr_00f_47d8                                   ; $47a8: $18 $2e

	dec d                                            ; $47aa: $15
	pop af                                           ; $47ab: $f1
	ld a, [de]                                       ; $47ac: $1a
	ld l, $f8                                        ; $47ad: $2e $f8
	ld hl, sp+$4a                                    ; $47af: $f8 $4a
	dec hl                                           ; $47b1: $2b

jr_00f_47b2:
	jr nz, jr_00f_478c                               ; $47b2: $20 $d8

jr_00f_47b4:
	ld c, [hl]                                       ; $47b4: $4e
	ld a, [hl+]                                      ; $47b5: $2a
	jr jr_00f_4790                                   ; $47b6: $18 $d8

	ld c, h                                          ; $47b8: $4c
	ld a, [hl+]                                      ; $47b9: $2a
	dec b                                            ; $47ba: $05
	pop af                                           ; $47bb: $f1
	ld d, $2e                                        ; $47bc: $16 $2e
	rlca                                             ; $47be: $07
	pop hl                                           ; $47bf: $e1

jr_00f_47c0:
	nop                                              ; $47c0: $00
	jr z, jr_00f_47d2                                ; $47c1: $28 $0f

	pop hl                                           ; $47c3: $e1
	ld [bc], a                                       ; $47c4: $02
	jr z, jr_00f_47d4                                ; $47c5: $28 $0d

	pop af                                           ; $47c7: $f1
	jr jr_00f_47f8                                   ; $47c8: $18 $2e

	dec d                                            ; $47ca: $15
	pop af                                           ; $47cb: $f1
	ld a, [de]                                       ; $47cc: $1a
	ld l, $f0                                        ; $47cd: $2e $f0
	ld hl, sp+$4a                                    ; $47cf: $f8 $4a
	dec hl                                           ; $47d1: $2b

jr_00f_47d2:
	ld d, b                                          ; $47d2: $50
	pop af                                           ; $47d3: $f1

jr_00f_47d4:
	jr nc, jr_00f_4802                               ; $47d4: $30 $2c

	ld c, e                                          ; $47d6: $4b
	pop hl                                           ; $47d7: $e1

jr_00f_47d8:
	ld e, $2e                                        ; $47d8: $1e $2e
	ld b, e                                          ; $47da: $43
	pop hl                                           ; $47db: $e1
	ld [hl-], a                                      ; $47dc: $32
	ld l, $40                                        ; $47dd: $2e $40
	pop af                                           ; $47df: $f1
	ld [hl], $2e                                     ; $47e0: $36 $2e
	ld c, b                                          ; $47e2: $48
	pop af                                           ; $47e3: $f1
	jr c, @+$2d                                      ; $47e4: $38 $2b

	ld d, b                                          ; $47e6: $50
	pop af                                           ; $47e7: $f1
	jr nc, jr_00f_4816                               ; $47e8: $30 $2c

	ld c, b                                          ; $47ea: $48
	pop af                                           ; $47eb: $f1
	jr c, jr_00f_4818                                ; $47ec: $38 $2a

	ld b, b                                          ; $47ee: $40
	pop af                                           ; $47ef: $f1
	ld [hl], $2e                                     ; $47f0: $36 $2e
	ld c, e                                          ; $47f2: $4b
	pop hl                                           ; $47f3: $e1
	ld [hl+], a                                      ; $47f4: $22
	ld l, $43                                        ; $47f5: $2e $43
	pop hl                                           ; $47f7: $e1

jr_00f_47f8:
	inc [hl]                                         ; $47f8: $34
	cpl                                              ; $47f9: $2f
	ld d, b                                          ; $47fa: $50
	pop af                                           ; $47fb: $f1
	jr nc, jr_00f_482a                               ; $47fc: $30 $2c

	ld c, e                                          ; $47fe: $4b
	pop hl                                           ; $47ff: $e1
	ld e, $2e                                        ; $4800: $1e $2e

jr_00f_4802:
	ld b, e                                          ; $4802: $43
	pop hl                                           ; $4803: $e1
	ld [hl-], a                                      ; $4804: $32
	ld l, $40                                        ; $4805: $2e $40
	pop af                                           ; $4807: $f1
	ld [hl], $2e                                     ; $4808: $36 $2e
	ld c, b                                          ; $480a: $48
	pop af                                           ; $480b: $f1
	jr c, @+$2d                                      ; $480c: $38 $2b

	ld d, b                                          ; $480e: $50
	pop af                                           ; $480f: $f1
	jr nc, jr_00f_483e                               ; $4810: $30 $2c

	ld c, b                                          ; $4812: $48
	pop af                                           ; $4813: $f1
	jr c, jr_00f_4840                                ; $4814: $38 $2a

jr_00f_4816:
	ld b, b                                          ; $4816: $40
	pop af                                           ; $4817: $f1

jr_00f_4818:
	ld [hl], $2e                                     ; $4818: $36 $2e
	ld c, e                                          ; $481a: $4b
	pop hl                                           ; $481b: $e1
	ld [hl+], a                                      ; $481c: $22
	ld l, $43                                        ; $481d: $2e $43
	pop hl                                           ; $481f: $e1
	inc [hl]                                         ; $4820: $34
	cpl                                              ; $4821: $2f
	ld d, b                                          ; $4822: $50
	pop af                                           ; $4823: $f1
	jr nc, jr_00f_4852                               ; $4824: $30 $2c

	ld c, e                                          ; $4826: $4b
	pop hl                                           ; $4827: $e1
	ld e, $2e                                        ; $4828: $1e $2e

jr_00f_482a:
	ld b, e                                          ; $482a: $43
	pop hl                                           ; $482b: $e1
	ld [hl-], a                                      ; $482c: $32
	ld l, $40                                        ; $482d: $2e $40
	pop af                                           ; $482f: $f1
	ld [hl], $2e                                     ; $4830: $36 $2e
	ld c, b                                          ; $4832: $48
	pop af                                           ; $4833: $f1
	jr c, @+$2d                                      ; $4834: $38 $2b

	ld d, b                                          ; $4836: $50
	pop af                                           ; $4837: $f1
	jr nc, jr_00f_4866                               ; $4838: $30 $2c

	ld c, b                                          ; $483a: $48
	pop af                                           ; $483b: $f1
	jr c, jr_00f_4868                                ; $483c: $38 $2a

jr_00f_483e:
	ld b, b                                          ; $483e: $40
	pop af                                           ; $483f: $f1

jr_00f_4840:
	ld [hl], $2e                                     ; $4840: $36 $2e
	ld c, e                                          ; $4842: $4b
	pop hl                                           ; $4843: $e1
	ld [hl+], a                                      ; $4844: $22
	ld l, $43                                        ; $4845: $2e $43
	pop hl                                           ; $4847: $e1
	inc [hl]                                         ; $4848: $34
	cpl                                              ; $4849: $2f
	ld d, b                                          ; $484a: $50
	pop af                                           ; $484b: $f1
	jr nc, jr_00f_487a                               ; $484c: $30 $2c

	ld c, e                                          ; $484e: $4b
	pop hl                                           ; $484f: $e1
	ld e, $2e                                        ; $4850: $1e $2e

jr_00f_4852:
	ld c, b                                          ; $4852: $48
	pop af                                           ; $4853: $f1
	jr c, jr_00f_4880                                ; $4854: $38 $2a

	ld b, e                                          ; $4856: $43
	pop hl                                           ; $4857: $e1
	ld [hl-], a                                      ; $4858: $32
	ld l, $40                                        ; $4859: $2e $40
	pop af                                           ; $485b: $f1
	ld [hl], $2f                                     ; $485c: $36 $2f
	ld d, b                                          ; $485e: $50
	pop af                                           ; $485f: $f1
	jr nc, jr_00f_488e                               ; $4860: $30 $2c

	ld b, b                                          ; $4862: $40
	pop af                                           ; $4863: $f1
	ld [hl], $2e                                     ; $4864: $36 $2e

jr_00f_4866:
	ld c, e                                          ; $4866: $4b
	pop hl                                           ; $4867: $e1

jr_00f_4868:
	ld h, $2e                                        ; $4868: $26 $2e
	ld b, e                                          ; $486a: $43
	pop hl                                           ; $486b: $e1
	inc h                                            ; $486c: $24
	ld l, $48                                        ; $486d: $2e $48
	pop af                                           ; $486f: $f1
	ld b, h                                          ; $4870: $44
	dec hl                                           ; $4871: $2b
	ld d, b                                          ; $4872: $50
	pop af                                           ; $4873: $f1
	jr nc, jr_00f_48a2                               ; $4874: $30 $2c

	ld c, e                                          ; $4876: $4b
	pop hl                                           ; $4877: $e1
	ld h, $2e                                        ; $4878: $26 $2e

jr_00f_487a:
	ld c, b                                          ; $487a: $48
	pop af                                           ; $487b: $f1
	ld b, h                                          ; $487c: $44
	ld a, [hl+]                                      ; $487d: $2a
	ld b, b                                          ; $487e: $40
	pop af                                           ; $487f: $f1

jr_00f_4880:
	ld [hl], $2e                                     ; $4880: $36 $2e
	ld b, e                                          ; $4882: $43
	pop hl                                           ; $4883: $e1
	inc h                                            ; $4884: $24
	cpl                                              ; $4885: $2f
	ld c, e                                          ; $4886: $4b
	pop hl                                           ; $4887: $e1
	ld a, [hl+]                                      ; $4888: $2a
	ld l, $43                                        ; $4889: $2e $43
	pop hl                                           ; $488b: $e1
	jr z, jr_00f_48bc                                ; $488c: $28 $2e

jr_00f_488e:
	ld d, b                                          ; $488e: $50
	pop af                                           ; $488f: $f1
	ld b, [hl]                                       ; $4890: $46
	ld l, $48                                        ; $4891: $2e $48
	pop af                                           ; $4893: $f1
	ld b, h                                          ; $4894: $44
	ld a, [hl+]                                      ; $4895: $2a
	ld b, b                                          ; $4896: $40
	pop af                                           ; $4897: $f1
	ld b, d                                          ; $4898: $42
	cpl                                              ; $4899: $2f
	ld b, l                                          ; $489a: $45
	pop hl                                           ; $489b: $e1
	ld a, [hl+]                                      ; $489c: $2a
	ld l, [hl]                                       ; $489d: $6e
	ld c, l                                          ; $489e: $4d
	pop hl                                           ; $489f: $e1
	jr z, jr_00f_4910                                ; $48a0: $28 $6e

jr_00f_48a2:
	ld d, b                                          ; $48a2: $50
	pop af                                           ; $48a3: $f1
	ld b, [hl]                                       ; $48a4: $46
	ld l, $48                                        ; $48a5: $2e $48
	pop af                                           ; $48a7: $f1
	ld b, h                                          ; $48a8: $44
	ld a, [hl+]                                      ; $48a9: $2a
	ld b, b                                          ; $48aa: $40
	pop af                                           ; $48ab: $f1
	ld b, d                                          ; $48ac: $42
	cpl                                              ; $48ad: $2f
	ld d, b                                          ; $48ae: $50
	pop af                                           ; $48af: $f1
	ld h, $2c                                        ; $48b0: $26 $2c
	ld c, b                                          ; $48b2: $48
	pop af                                           ; $48b3: $f1
	inc h                                            ; $48b4: $24
	ld a, [hl+]                                      ; $48b5: $2a
	ld b, b                                          ; $48b6: $40
	pop hl                                           ; $48b7: $e1
	ld b, h                                          ; $48b8: $44
	inc l                                            ; $48b9: $2c
	ld b, b                                          ; $48ba: $40
	pop af                                           ; $48bb: $f1

jr_00f_48bc:
	ld [hl+], a                                      ; $48bc: $22
	inc l                                            ; $48bd: $2c
	ld d, b                                          ; $48be: $50
	pop hl                                           ; $48bf: $e1
	jr nz, jr_00f_48ee                               ; $48c0: $20 $2c

	ld c, b                                          ; $48c2: $48
	pop hl                                           ; $48c3: $e1
	ld e, $2d                                        ; $48c4: $1e $2d
	ld c, b                                          ; $48c6: $48
	pop hl                                           ; $48c7: $e1
	ld a, [hl+]                                      ; $48c8: $2a
	inc l                                            ; $48c9: $2c
	ld d, b                                          ; $48ca: $50
	pop af                                           ; $48cb: $f1
	inc a                                            ; $48cc: $3c
	inc l                                            ; $48cd: $2c
	ld c, b                                          ; $48ce: $48
	pop af                                           ; $48cf: $f1
	ld a, [hl-]                                      ; $48d0: $3a
	ld a, [hl+]                                      ; $48d1: $2a
	ld b, b                                          ; $48d2: $40
	pop af                                           ; $48d3: $f1
	jr c, jr_00f_4902                                ; $48d4: $38 $2c

	ld d, b                                          ; $48d6: $50
	pop hl                                           ; $48d7: $e1
	jr nz, jr_00f_4906                               ; $48d8: $20 $2c

	ld b, b                                          ; $48da: $40
	pop hl                                           ; $48db: $e1
	inc e                                            ; $48dc: $1c
	dec l                                            ; $48dd: $2d
	ld d, b                                          ; $48de: $50
	pop af                                           ; $48df: $f1
	ld h, $2c                                        ; $48e0: $26 $2c
	ld c, b                                          ; $48e2: $48
	pop af                                           ; $48e3: $f1
	inc h                                            ; $48e4: $24
	ld a, [hl+]                                      ; $48e5: $2a
	ld b, b                                          ; $48e6: $40
	pop hl                                           ; $48e7: $e1
	ld b, h                                          ; $48e8: $44
	inc l                                            ; $48e9: $2c
	ld b, b                                          ; $48ea: $40
	pop af                                           ; $48eb: $f1
	ld [hl+], a                                      ; $48ec: $22
	inc l                                            ; $48ed: $2c

jr_00f_48ee:
	ld d, b                                          ; $48ee: $50
	pop hl                                           ; $48ef: $e1
	jr nz, jr_00f_491e                               ; $48f0: $20 $2c

	ld c, b                                          ; $48f2: $48
	pop hl                                           ; $48f3: $e1
	ld e, $2d                                        ; $48f4: $1e $2d
	ld c, b                                          ; $48f6: $48
	pop hl                                           ; $48f7: $e1
	ld a, [hl+]                                      ; $48f8: $2a
	inc l                                            ; $48f9: $2c
	ld d, b                                          ; $48fa: $50
	pop af                                           ; $48fb: $f1
	inc a                                            ; $48fc: $3c
	inc l                                            ; $48fd: $2c
	ld c, b                                          ; $48fe: $48
	pop af                                           ; $48ff: $f1
	ld a, [hl-]                                      ; $4900: $3a
	ld a, [hl+]                                      ; $4901: $2a

jr_00f_4902:
	ld b, b                                          ; $4902: $40
	pop af                                           ; $4903: $f1
	jr c, jr_00f_4932                                ; $4904: $38 $2c

jr_00f_4906:
	ld d, b                                          ; $4906: $50
	pop hl                                           ; $4907: $e1
	jr nz, jr_00f_4936                               ; $4908: $20 $2c

	ld b, b                                          ; $490a: $40
	pop hl                                           ; $490b: $e1
	inc e                                            ; $490c: $1c
	dec l                                            ; $490d: $2d
	ld d, b                                          ; $490e: $50
	pop af                                           ; $490f: $f1

jr_00f_4910:
	ld h, $2c                                        ; $4910: $26 $2c
	ld c, b                                          ; $4912: $48
	pop af                                           ; $4913: $f1
	inc h                                            ; $4914: $24
	ld a, [hl+]                                      ; $4915: $2a
	ld b, b                                          ; $4916: $40
	pop hl                                           ; $4917: $e1
	ld b, h                                          ; $4918: $44
	inc l                                            ; $4919: $2c
	ld b, b                                          ; $491a: $40
	pop af                                           ; $491b: $f1
	ld [hl+], a                                      ; $491c: $22
	inc l                                            ; $491d: $2c

jr_00f_491e:
	ld d, b                                          ; $491e: $50
	pop hl                                           ; $491f: $e1
	jr nz, jr_00f_494e                               ; $4920: $20 $2c

	ld c, b                                          ; $4922: $48
	pop hl                                           ; $4923: $e1
	ld e, $2d                                        ; $4924: $1e $2d
	ld d, b                                          ; $4926: $50
	pop af                                           ; $4927: $f1
	ld h, $2c                                        ; $4928: $26 $2c
	ld c, b                                          ; $492a: $48
	pop af                                           ; $492b: $f1
	inc h                                            ; $492c: $24
	ld a, [hl+]                                      ; $492d: $2a
	ld b, b                                          ; $492e: $40
	pop hl                                           ; $492f: $e1
	ld b, h                                          ; $4930: $44
	inc l                                            ; $4931: $2c

jr_00f_4932:
	ld b, b                                          ; $4932: $40
	pop af                                           ; $4933: $f1
	ld [hl+], a                                      ; $4934: $22
	inc l                                            ; $4935: $2c

jr_00f_4936:
	ld d, b                                          ; $4936: $50
	pop hl                                           ; $4937: $e1
	jr nz, jr_00f_4966                               ; $4938: $20 $2c

	ld c, b                                          ; $493a: $48
	pop hl                                           ; $493b: $e1
	ld e, $2d                                        ; $493c: $1e $2d
	ld c, b                                          ; $493e: $48
	pop hl                                           ; $493f: $e1
	ld a, [hl+]                                      ; $4940: $2a
	inc l                                            ; $4941: $2c
	ld d, b                                          ; $4942: $50
	pop af                                           ; $4943: $f1
	inc a                                            ; $4944: $3c
	inc l                                            ; $4945: $2c
	ld c, b                                          ; $4946: $48
	pop af                                           ; $4947: $f1
	ld a, [hl-]                                      ; $4948: $3a
	ld a, [hl+]                                      ; $4949: $2a
	ld b, b                                          ; $494a: $40
	pop af                                           ; $494b: $f1
	jr c, jr_00f_497a                                ; $494c: $38 $2c

jr_00f_494e:
	ld d, b                                          ; $494e: $50
	pop hl                                           ; $494f: $e1
	jr nz, jr_00f_497e                               ; $4950: $20 $2c

	ld b, b                                          ; $4952: $40
	pop hl                                           ; $4953: $e1
	inc e                                            ; $4954: $1c
	dec l                                            ; $4955: $2d
	ld d, b                                          ; $4956: $50
	pop af                                           ; $4957: $f1
	ld [hl], $2c                                     ; $4958: $36 $2c
	ld c, b                                          ; $495a: $48
	pop af                                           ; $495b: $f1
	jr nc, jr_00f_4986                               ; $495c: $30 $28

	ld b, b                                          ; $495e: $40
	pop af                                           ; $495f: $f1
	ld l, $2c                                        ; $4960: $2e $2c
	ld d, b                                          ; $4962: $50
	pop hl                                           ; $4963: $e1
	jr nz, @+$2e                                     ; $4964: $20 $2c

jr_00f_4966:
	ld c, b                                          ; $4966: $48
	pop hl                                           ; $4967: $e1
	ld e, $2c                                        ; $4968: $1e $2c
	ld b, b                                          ; $496a: $40
	pop hl                                           ; $496b: $e1
	inc e                                            ; $496c: $1c
	dec l                                            ; $496d: $2d
	ld d, b                                          ; $496e: $50
	pop hl                                           ; $496f: $e1
	jr nz, jr_00f_499e                               ; $4970: $20 $2c

	ld b, b                                          ; $4972: $40
	pop hl                                           ; $4973: $e1
	jr z, jr_00f_49a2                                ; $4974: $28 $2c

	ld c, b                                          ; $4976: $48
	pop hl                                           ; $4977: $e1
	ld b, [hl]                                       ; $4978: $46
	inc l                                            ; $4979: $2c

jr_00f_497a:
	ld d, b                                          ; $497a: $50
	pop af                                           ; $497b: $f1
	ld [hl], $2c                                     ; $497c: $36 $2c

jr_00f_497e:
	ld c, b                                          ; $497e: $48
	pop af                                           ; $497f: $f1
	jr nc, jr_00f_49aa                               ; $4980: $30 $28

	ld b, b                                          ; $4982: $40
	pop af                                           ; $4983: $f1
	ld l, $2d                                        ; $4984: $2e $2d

jr_00f_4986:
	ld d, b                                          ; $4986: $50
	pop af                                           ; $4987: $f1
	ld [hl], $2c                                     ; $4988: $36 $2c
	ld b, b                                          ; $498a: $40
	pop af                                           ; $498b: $f1
	ld l, $28                                        ; $498c: $2e $28
	ld c, b                                          ; $498e: $48
	pop af                                           ; $498f: $f1
	ld b, b                                          ; $4990: $40
	jr z, jr_00f_49e3                                ; $4991: $28 $50

	pop hl                                           ; $4993: $e1
	jr nz, jr_00f_49c2                               ; $4994: $20 $2c

	ld c, b                                          ; $4996: $48
	pop hl                                           ; $4997: $e1
	ld a, $2c                                        ; $4998: $3e $2c
	ld b, b                                          ; $499a: $40
	pop hl                                           ; $499b: $e1
	inc e                                            ; $499c: $1c
	dec l                                            ; $499d: $2d

jr_00f_499e:
	ld d, b                                          ; $499e: $50
	pop af                                           ; $499f: $f1
	ld [hl], $2c                                     ; $49a0: $36 $2c

jr_00f_49a2:
	ld c, b                                          ; $49a2: $48
	pop af                                           ; $49a3: $f1
	inc [hl]                                         ; $49a4: $34
	ld a, [hl+]                                      ; $49a5: $2a
	ld b, b                                          ; $49a6: $40
	pop af                                           ; $49a7: $f1
	ld [hl-], a                                      ; $49a8: $32
	inc l                                            ; $49a9: $2c

jr_00f_49aa:
	ld d, b                                          ; $49aa: $50
	pop hl                                           ; $49ab: $e1
	inc e                                            ; $49ac: $1c
	ld l, h                                          ; $49ad: $6c
	ld b, b                                          ; $49ae: $40
	pop hl                                           ; $49af: $e1
	jr nz, jr_00f_4a1e                               ; $49b0: $20 $6c

jr_00f_49b2:
	ld c, b                                          ; $49b2: $48
	pop hl                                           ; $49b3: $e1
	ld b, d                                          ; $49b4: $42
	dec l                                            ; $49b5: $2d
	rst $38                                          ; $49b6: $ff
	ldh [c], a                                       ; $49b7: $e2
	ld [bc], a                                       ; $49b8: $02
	jr z, jr_00f_49b2                                ; $49b9: $28 $f7

	ldh [c], a                                       ; $49bb: $e2
	nop                                              ; $49bc: $00
	jr z, @+$01                                      ; $49bd: $28 $ff

	ldh a, [c]                                       ; $49bf: $f2
	ld b, $2a                                        ; $49c0: $06 $2a

jr_00f_49c2:
	rst FarCall                                          ; $49c2: $f7
	ldh a, [c]                                       ; $49c3: $f2
	inc b                                            ; $49c4: $04
	add hl, hl                                       ; $49c5: $29
	rst $38                                          ; $49c6: $ff
	ldh [c], a                                       ; $49c7: $e2
	ld [bc], a                                       ; $49c8: $02
	jr z, @+$01                                      ; $49c9: $28 $ff

	ldh a, [c]                                       ; $49cb: $f2
	ld b, $2a                                        ; $49cc: $06 $2a
	rst FarCall                                          ; $49ce: $f7
	ldh [c], a                                       ; $49cf: $e2
	nop                                              ; $49d0: $00
	jr z, @-$07                                      ; $49d1: $28 $f7

jr_00f_49d3:
	ldh a, [c]                                       ; $49d3: $f2
	inc b                                            ; $49d4: $04
	add hl, hl                                       ; $49d5: $29
	nop                                              ; $49d6: $00
	db $e3                                           ; $49d7: $e3
	ld a, [bc]                                       ; $49d8: $0a

jr_00f_49d9:
	jr z, jr_00f_49d3                                ; $49d9: $28 $f8

	db $e3                                           ; $49db: $e3
	ld [$ee28], sp                                   ; $49dc: $08 $28 $ee
	di                                               ; $49df: $f3
	ld [de], a                                       ; $49e0: $12
	jr z, jr_00f_49d9                                ; $49e1: $28 $f6

jr_00f_49e3:
	di                                               ; $49e3: $f3
	ld c, $28                                        ; $49e4: $0e $28
	cp $f3                                           ; $49e6: $fe $f3
	db $10                                           ; $49e8: $10
	dec hl                                           ; $49e9: $2b
	cp $f3                                           ; $49ea: $fe $f3
	inc e                                            ; $49ec: $1c
	ld a, [hl+]                                      ; $49ed: $2a
	or $f3                                           ; $49ee: $f6 $f3
	ld a, [de]                                       ; $49f0: $1a
	ld a, [hl+]                                      ; $49f1: $2a
	ldh a, [$d8]                                     ; $49f2: $f0 $d8
	ld c, h                                          ; $49f4: $4c
	ld l, [hl]                                       ; $49f5: $6e
	add sp, -$28                                     ; $49f6: $e8 $d8
	ld c, [hl]                                       ; $49f8: $4e
	ld l, [hl]                                       ; $49f9: $6e
	ld b, $e3                                        ; $49fa: $06 $e3
	jr jr_00f_4a26                                   ; $49fc: $18 $28

	cp $e3                                           ; $49fe: $fe $e3
	ld d, $28                                        ; $4a00: $16 $28
	or $e3                                           ; $4a02: $f6 $e3
	inc d                                            ; $4a04: $14
	jr z, @-$12                                      ; $4a05: $28 $ec

	add sp, $56                                      ; $4a07: $e8 $56
	ld a, [hl+]                                      ; $4a09: $2a
	ld b, $f3                                        ; $4a0a: $06 $f3
	ld e, $29                                        ; $4a0c: $1e $29
	nop                                              ; $4a0e: $00
	db $e3                                           ; $4a0f: $e3
	ld a, [bc]                                       ; $4a10: $0a

jr_00f_4a11:
	jr z, @-$06                                      ; $4a11: $28 $f8

	db $e3                                           ; $4a13: $e3
	ld [$ee28], sp                                   ; $4a14: $08 $28 $ee
	di                                               ; $4a17: $f3
	inc c                                            ; $4a18: $0c
	jr z, jr_00f_4a11                                ; $4a19: $28 $f6

	di                                               ; $4a1b: $f3
	ld c, $28                                        ; $4a1c: $0e $28

jr_00f_4a1e:
	cp $f3                                           ; $4a1e: $fe $f3
	db $10                                           ; $4a20: $10
	dec hl                                           ; $4a21: $2b
	ld a, [bc]                                       ; $4a22: $0a
	ret c                                            ; $4a23: $d8

	ld d, d                                          ; $4a24: $52
	ld l, b                                          ; $4a25: $68

jr_00f_4a26:
	ld [de], a                                       ; $4a26: $12
	ret c                                            ; $4a27: $d8

	ld d, b                                          ; $4a28: $50
	ld l, b                                          ; $4a29: $68
	cp $f3                                           ; $4a2a: $fe $f3
	inc e                                            ; $4a2c: $1c

jr_00f_4a2d:
	ld a, [hl+]                                      ; $4a2d: $2a
	or $f3                                           ; $4a2e: $f6 $f3
	ld a, [de]                                       ; $4a30: $1a
	ld a, [hl+]                                      ; $4a31: $2a
	cp $e3                                           ; $4a32: $fe $e3
	ld [hl+], a                                      ; $4a34: $22
	jr z, jr_00f_4a2d                                ; $4a35: $28 $f6

	db $e3                                           ; $4a37: $e3
	jr nz, @+$2a                                     ; $4a38: $20 $28

	ld b, $f3                                        ; $4a3a: $06 $f3
	ld e, $28                                        ; $4a3c: $1e $28
	ld b, $e3                                        ; $4a3e: $06 $e3
	jr jr_00f_4a6b                                   ; $4a40: $18 $29

	inc hl                                           ; $4a42: $23
	ldh [c], a                                       ; $4a43: $e2
	ld h, $2e                                        ; $4a44: $26 $2e

jr_00f_4a46:
	dec de                                           ; $4a46: $1b
	ldh [c], a                                       ; $4a47: $e2
	inc h                                            ; $4a48: $24
	ld l, $28                                        ; $4a49: $2e $28
	ldh a, [c]                                       ; $4a4b: $f2
	inc l                                            ; $4a4c: $2c
	ld l, $20                                        ; $4a4d: $2e $20
	ldh a, [c]                                       ; $4a4f: $f2
	ld a, [hl+]                                      ; $4a50: $2a
	ld a, [hl+]                                      ; $4a51: $2a

jr_00f_4a52:
	jr jr_00f_4a46                                   ; $4a52: $18 $f2

	jr z, jr_00f_4a85                                ; $4a54: $28 $2f

	inc hl                                           ; $4a56: $23
	ldh [c], a                                       ; $4a57: $e2
	jr nc, jr_00f_4a88                               ; $4a58: $30 $2e

jr_00f_4a5a:
	dec de                                           ; $4a5a: $1b
	ldh [c], a                                       ; $4a5b: $e2
	ld l, $2e                                        ; $4a5c: $2e $2e
	jr z, jr_00f_4a52                                ; $4a5e: $28 $f2

	inc l                                            ; $4a60: $2c
	ld l, $20                                        ; $4a61: $2e $20
	ldh a, [c]                                       ; $4a63: $f2
	ld a, [hl+]                                      ; $4a64: $2a
	ld a, [hl+]                                      ; $4a65: $2a
	jr jr_00f_4a5a                                   ; $4a66: $18 $f2

	jr z, jr_00f_4a99                                ; $4a68: $28 $2f

jr_00f_4a6a:
	inc hl                                           ; $4a6a: $23

jr_00f_4a6b:
	ldh [c], a                                       ; $4a6b: $e2
	inc [hl]                                         ; $4a6c: $34
	ld l, $1b                                        ; $4a6d: $2e $1b
	ldh [c], a                                       ; $4a6f: $e2
	ld [hl-], a                                      ; $4a70: $32
	ld l, $28                                        ; $4a71: $2e $28
	ldh a, [c]                                       ; $4a73: $f2
	ld a, [hl-]                                      ; $4a74: $3a
	inc l                                            ; $4a75: $2c
	jr nz, jr_00f_4a6a                               ; $4a76: $20 $f2

	jr c, jr_00f_4aa4                                ; $4a78: $38 $2a

	jr @-$0c                                         ; $4a7a: $18 $f2

	ld [hl], $2d                                     ; $4a7c: $36 $2d
	inc hl                                           ; $4a7e: $23
	ldh [c], a                                       ; $4a7f: $e2
	inc [hl]                                         ; $4a80: $34
	ld l, $1b                                        ; $4a81: $2e $1b
	ldh [c], a                                       ; $4a83: $e2
	ld [hl-], a                                      ; $4a84: $32

jr_00f_4a85:
	ld l, $28                                        ; $4a85: $2e $28
	ldh a, [c]                                       ; $4a87: $f2

jr_00f_4a88:
	ld c, d                                          ; $4a88: $4a
	ld l, $20                                        ; $4a89: $2e $20
	ldh a, [c]                                       ; $4a8b: $f2
	ld c, b                                          ; $4a8c: $48
	ld a, [hl+]                                      ; $4a8d: $2a
	jr @-$0c                                         ; $4a8e: $18 $f2

	ld b, [hl]                                       ; $4a90: $46
	cpl                                              ; $4a91: $2f
	inc hl                                           ; $4a92: $23
	ldh [c], a                                       ; $4a93: $e2
	ld b, d                                          ; $4a94: $42
	ld l, $1b                                        ; $4a95: $2e $1b
	ldh [c], a                                       ; $4a97: $e2
	ld b, b                                          ; $4a98: $40

jr_00f_4a99:
	ld l, $18                                        ; $4a99: $2e $18
	ldh a, [c]                                       ; $4a9b: $f2
	ld b, [hl]                                       ; $4a9c: $46
	ld l, $28                                        ; $4a9d: $2e $28
	ldh a, [c]                                       ; $4a9f: $f2
	ld c, d                                          ; $4aa0: $4a
	ld l, $20                                        ; $4aa1: $2e $20
	ldh a, [c]                                       ; $4aa3: $f2

jr_00f_4aa4:
	ld c, b                                          ; $4aa4: $48
	dec hl                                           ; $4aa5: $2b

jr_00f_4aa6:
	dec h                                            ; $4aa6: $25
	ldh [c], a                                       ; $4aa7: $e2
	ld a, $2e                                        ; $4aa8: $3e $2e

jr_00f_4aaa:
	dec e                                            ; $4aaa: $1d
	ldh [c], a                                       ; $4aab: $e2
	inc a                                            ; $4aac: $3c
	ld l, $28                                        ; $4aad: $2e $28
	ldh a, [c]                                       ; $4aaf: $f2
	ld c, d                                          ; $4ab0: $4a
	ld l, $20                                        ; $4ab1: $2e $20
	ldh a, [c]                                       ; $4ab3: $f2
	ld c, b                                          ; $4ab4: $48
	ld a, [hl+]                                      ; $4ab5: $2a

jr_00f_4ab6:
	jr jr_00f_4aaa                                   ; $4ab6: $18 $f2

	ld b, [hl]                                       ; $4ab8: $46
	cpl                                              ; $4ab9: $2f

jr_00f_4aba:
	jr z, @-$0c                                      ; $4aba: $28 $f2

	ld c, d                                          ; $4abc: $4a
	inc l                                            ; $4abd: $2c

jr_00f_4abe:
	jr z, @-$1c                                      ; $4abe: $28 $e2

	jr z, jr_00f_4aee                                ; $4ac0: $28 $2c

jr_00f_4ac2:
	jr nz, jr_00f_4aa6                               ; $4ac2: $20 $e2

	ld b, d                                          ; $4ac4: $42
	inc l                                            ; $4ac5: $2c
	jr nz, jr_00f_4aba                               ; $4ac6: $20 $f2

	inc l                                            ; $4ac8: $2c
	ld a, [hl+]                                      ; $4ac9: $2a
	jr @-$1c                                         ; $4aca: $18 $e2

	ld b, b                                          ; $4acc: $40
	inc l                                            ; $4acd: $2c

jr_00f_4ace:
	jr jr_00f_4ac2                                   ; $4ace: $18 $f2

	ld a, [hl+]                                      ; $4ad0: $2a
	dec l                                            ; $4ad1: $2d

jr_00f_4ad2:
	jr jr_00f_4ab6                                   ; $4ad2: $18 $e2

	ld b, b                                          ; $4ad4: $40
	inc l                                            ; $4ad5: $2c

jr_00f_4ad6:
	jr z, jr_00f_4aba                                ; $4ad6: $28 $e2

	jr z, jr_00f_4b06                                ; $4ad8: $28 $2c

jr_00f_4ada:
	jr nz, jr_00f_4abe                               ; $4ada: $20 $e2

	ld h, $2c                                        ; $4adc: $26 $2c
	jr z, jr_00f_4ad2                                ; $4ade: $28 $f2

	ld l, $2c                                        ; $4ae0: $2e $2c

jr_00f_4ae2:
	jr nz, jr_00f_4ad6                               ; $4ae2: $20 $f2

	inc l                                            ; $4ae4: $2c
	ld a, [hl+]                                      ; $4ae5: $2a

jr_00f_4ae6:
	jr jr_00f_4ada                                   ; $4ae6: $18 $f2

	ld a, [hl+]                                      ; $4ae8: $2a
	dec l                                            ; $4ae9: $2d
	jr jr_00f_4ace                                   ; $4aea: $18 $e2

	ld b, b                                          ; $4aec: $40
	inc l                                            ; $4aed: $2c

jr_00f_4aee:
	jr z, jr_00f_4ae2                                ; $4aee: $28 $f2

	ld c, d                                          ; $4af0: $4a
	inc l                                            ; $4af1: $2c

jr_00f_4af2:
	jr nz, jr_00f_4ad6                               ; $4af2: $20 $e2

	ld b, d                                          ; $4af4: $42
	inc l                                            ; $4af5: $2c
	jr z, jr_00f_4ada                                ; $4af6: $28 $e2

	jr z, jr_00f_4b26                                ; $4af8: $28 $2c

jr_00f_4afa:
	jr nz, jr_00f_4aee                               ; $4afa: $20 $f2

	inc l                                            ; $4afc: $2c
	ld a, [hl+]                                      ; $4afd: $2a

jr_00f_4afe:
	jr jr_00f_4af2                                   ; $4afe: $18 $f2

	ld a, [hl+]                                      ; $4b00: $2a
	dec l                                            ; $4b01: $2d
	jr nz, jr_00f_4ae6                               ; $4b02: $20 $e2

	ld b, [hl]                                       ; $4b04: $46
	inc l                                            ; $4b05: $2c

jr_00f_4b06:
	jr z, jr_00f_4afa                                ; $4b06: $28 $f2

	inc a                                            ; $4b08: $3c
	jr z, @+$2a                                      ; $4b09: $28 $28

	ldh [c], a                                       ; $4b0b: $e2
	jr z, jr_00f_4b3a                                ; $4b0c: $28 $2c

jr_00f_4b0e:
	jr jr_00f_4af2                                   ; $4b0e: $18 $e2

	inc h                                            ; $4b10: $24
	inc l                                            ; $4b11: $2c

jr_00f_4b12:
	jr nz, jr_00f_4b06                               ; $4b12: $20 $f2

	ld [hl], $28                                     ; $4b14: $36 $28

jr_00f_4b16:
	jr @-$0c                                         ; $4b16: $18 $f2

	inc [hl]                                         ; $4b18: $34
	dec l                                            ; $4b19: $2d

jr_00f_4b1a:
	jr jr_00f_4afe                                   ; $4b1a: $18 $e2

	ld b, b                                          ; $4b1c: $40
	inc l                                            ; $4b1d: $2c
	jr z, jr_00f_4b12                                ; $4b1e: $28 $f2

	ld l, $2c                                        ; $4b20: $2e $2c
	jr nz, jr_00f_4b16                               ; $4b22: $20 $f2

	inc l                                            ; $4b24: $2c
	ld a, [hl+]                                      ; $4b25: $2a

jr_00f_4b26:
	jr jr_00f_4b1a                                   ; $4b26: $18 $f2

	ld a, [hl+]                                      ; $4b28: $2a
	inc l                                            ; $4b29: $2c

jr_00f_4b2a:
	jr z, jr_00f_4b0e                                ; $4b2a: $28 $e2

	jr z, jr_00f_4b5a                                ; $4b2c: $28 $2c

jr_00f_4b2e:
	jr nz, jr_00f_4b12                               ; $4b2e: $20 $e2

	jr nc, @+$2f                                     ; $4b30: $30 $2d

	jr z, jr_00f_4b26                                ; $4b32: $28 $f2

	inc a                                            ; $4b34: $3c
	jr z, jr_00f_4b4f                                ; $4b35: $28 $18

	ldh a, [c]                                       ; $4b37: $f2
	inc [hl]                                         ; $4b38: $34
	inc l                                            ; $4b39: $2c

jr_00f_4b3a:
	jr nz, jr_00f_4b2e                               ; $4b3a: $20 $f2

	ld [hl-], a                                      ; $4b3c: $32
	jr z, jr_00f_4b57                                ; $4b3d: $28 $18

	ldh [c], a                                       ; $4b3f: $e2
	jr z, jr_00f_4bae                                ; $4b40: $28 $6c

	jr nz, jr_00f_4b26                               ; $4b42: $20 $e2

	jr c, @+$2e                                      ; $4b44: $38 $2c

	jr z, jr_00f_4b2a                                ; $4b46: $28 $e2

	inc h                                            ; $4b48: $24
	ld l, l                                          ; $4b49: $6d
	db $ec                                           ; $4b4a: $ec
	ldh a, [$0a]                                     ; $4b4b: $f0 $0a
	jr z, @-$1a                                      ; $4b4d: $28 $e4

jr_00f_4b4f:
	ldh a, [$08]                                     ; $4b4f: $f0 $08
	jr z, @-$22                                      ; $4b51: $28 $dc

	ldh a, [rTMA]                                    ; $4b53: $f0 $06
	jr z, @-$0e                                      ; $4b55: $28 $f0

jr_00f_4b57:
	nop                                              ; $4b57: $00
	ld b, b                                          ; $4b58: $40
	ld l, d                                          ; $4b59: $6a

jr_00f_4b5a:
	add sp, $00                                      ; $4b5a: $e8 $00
	ld b, d                                          ; $4b5c: $42
	ld l, d                                          ; $4b5d: $6a
	ldh [rP1], a                                     ; $4b5e: $e0 $00
	ld b, d                                          ; $4b60: $42
	ld a, [hl+]                                      ; $4b61: $2a
	ret c                                            ; $4b62: $d8

	nop                                              ; $4b63: $00
	ld b, b                                          ; $4b64: $40
	dec hl                                           ; $4b65: $2b
	pop af                                           ; $4b66: $f1
	ldh a, [rAUD1SWEEP]                              ; $4b67: $f0 $10
	jr z, @-$15                                      ; $4b69: $28 $e9

	ldh a, [$0e]                                     ; $4b6b: $f0 $0e
	jr z, @-$1d                                      ; $4b6d: $28 $e1

	ldh a, [$0c]                                     ; $4b6f: $f0 $0c
	jr z, jr_00f_4b4f                                ; $4b71: $28 $dc

	nop                                              ; $4b73: $00

jr_00f_4b74:
	ld b, b                                          ; $4b74: $40
	ld a, [hl+]                                      ; $4b75: $2a
	db $e4                                           ; $4b76: $e4

jr_00f_4b77:
	nop                                              ; $4b77: $00
	ld b, d                                          ; $4b78: $42
	ld a, [hl+]                                      ; $4b79: $2a
	db $ec                                           ; $4b7a: $ec
	nop                                              ; $4b7b: $00
	ld b, d                                          ; $4b7c: $42
	ld l, d                                          ; $4b7d: $6a
	db $f4                                           ; $4b7e: $f4
	nop                                              ; $4b7f: $00
	ld b, b                                          ; $4b80: $40
	ld l, e                                          ; $4b81: $6b
	push af                                          ; $4b82: $f5
	ldh a, [rDIV]                                    ; $4b83: $f0 $04
	jr z, jr_00f_4b74                                ; $4b85: $28 $ed

	ldh a, [rSC]                                     ; $4b87: $f0 $02
	jr z, @-$19                                      ; $4b89: $28 $e5

	ldh a, [rP1]                                     ; $4b8b: $f0 $00
	jr z, jr_00f_4b77                                ; $4b8d: $28 $e8

	nop                                              ; $4b8f: $00
	ld b, d                                          ; $4b90: $42
	ld a, [hl+]                                      ; $4b91: $2a
	ldh a, [rP1]                                     ; $4b92: $f0 $00
	ld b, d                                          ; $4b94: $42
	ld l, d                                          ; $4b95: $6a
	ld hl, sp+$00                                    ; $4b96: $f8 $00
	ld b, b                                          ; $4b98: $40
	ld l, d                                          ; $4b99: $6a
	ldh [rP1], a                                     ; $4b9a: $e0 $00
	ld b, b                                          ; $4b9c: $40
	dec hl                                           ; $4b9d: $2b
	ld hl, sp-$10                                    ; $4b9e: $f8 $f0
	ld a, [bc]                                       ; $4ba0: $0a
	jr z, @-$0e                                      ; $4ba1: $28 $f0

jr_00f_4ba3:
	ldh a, [$08]                                     ; $4ba3: $f0 $08
	jr z, jr_00f_4ba3                                ; $4ba5: $28 $fc

	nop                                              ; $4ba7: $00
	ld b, b                                          ; $4ba8: $40
	ld l, d                                          ; $4ba9: $6a
	db $f4                                           ; $4baa: $f4
	nop                                              ; $4bab: $00
	ld b, d                                          ; $4bac: $42
	ld l, d                                          ; $4bad: $6a

jr_00f_4bae:
	db $ec                                           ; $4bae: $ec
	nop                                              ; $4baf: $00
	ld b, d                                          ; $4bb0: $42
	ld a, [hl+]                                      ; $4bb1: $2a
	db $e4                                           ; $4bb2: $e4
	nop                                              ; $4bb3: $00

jr_00f_4bb4:
	ld b, b                                          ; $4bb4: $40
	ld a, [hl+]                                      ; $4bb5: $2a
	add sp, -$10                                     ; $4bb6: $e8 $f0
	ld b, $29                                        ; $4bb8: $06 $29
	db $ed                                           ; $4bba: $ed
	ldh a, [$0c]                                     ; $4bbb: $f0 $0c
	jr z, jr_00f_4bb4                                ; $4bbd: $28 $f5

	ldh a, [$0e]                                     ; $4bbf: $f0 $0e
	jr z, @-$01                                      ; $4bc1: $28 $fd

	ldh a, [rAUD1ENV]                                ; $4bc3: $f0 $12
	jr z, jr_00f_4bcc                                ; $4bc5: $28 $05

	ldh a, [rAUD1HIGH]                               ; $4bc7: $f0 $14
	jr z, jr_00f_4bcb                                ; $4bc9: $28 $00

jr_00f_4bcb:
	nop                                              ; $4bcb: $00

jr_00f_4bcc:
	ld b, b                                          ; $4bcc: $40
	ld l, d                                          ; $4bcd: $6a
	ld hl, sp+$00                                    ; $4bce: $f8 $00
	ld b, d                                          ; $4bd0: $42
	ld l, d                                          ; $4bd1: $6a
	ldh a, [rP1]                                     ; $4bd2: $f0 $00
	ld b, d                                          ; $4bd4: $42
	ld a, [hl+]                                      ; $4bd5: $2a
	add sp, $00                                      ; $4bd6: $e8 $00
	ld b, b                                          ; $4bd8: $40
	ld a, [hl+]                                      ; $4bd9: $2a
	dec c                                            ; $4bda: $0d

jr_00f_4bdb:
	ldh a, [$3c]                                     ; $4bdb: $f0 $3c
	add hl, hl                                       ; $4bdd: $29
	dec c                                            ; $4bde: $0d

jr_00f_4bdf:
	ldh a, [$3c]                                     ; $4bdf: $f0 $3c
	jr z, @+$07                                      ; $4be1: $28 $05

	ldh a, [$3a]                                     ; $4be3: $f0 $3a
	jr z, jr_00f_4bdf                                ; $4be5: $28 $f8

	ldh a, [rAUD3HIGH]                               ; $4be7: $f0 $1e
	jr z, jr_00f_4bdb                                ; $4be9: $28 $f0

	ldh a, [rAUD3LEVEL]                              ; $4beb: $f0 $1c
	jr z, @-$16                                      ; $4bed: $28 $e8

	ldh [$38], a                                     ; $4bef: $e0 $38
	ld l, $e0                                        ; $4bf1: $2e $e0
	ldh [$36], a                                     ; $4bf3: $e0 $36
	ld l, $00                                        ; $4bf5: $2e $00
	nop                                              ; $4bf7: $00
	ld b, b                                          ; $4bf8: $40
	ld l, d                                          ; $4bf9: $6a
	ld hl, sp+$00                                    ; $4bfa: $f8 $00
	ld b, d                                          ; $4bfc: $42
	ld l, d                                          ; $4bfd: $6a
	ldh a, [rP1]                                     ; $4bfe: $f0 $00
	ld b, d                                          ; $4c00: $42
	ld a, [hl+]                                      ; $4c01: $2a
	add sp, $00                                      ; $4c02: $e8 $00
	ld b, b                                          ; $4c04: $40
	dec hl                                           ; $4c05: $2b
	ld [$34e0], sp                                   ; $4c06: $08 $e0 $34
	jr z, jr_00f_4c0b                                ; $4c09: $28 $00

jr_00f_4c0b:
	ldh [$32], a                                     ; $4c0b: $e0 $32
	jr z, @+$07                                      ; $4c0d: $28 $05

	ldh a, [$3a]                                     ; $4c0f: $f0 $3a
	jr z, jr_00f_4c20                                ; $4c11: $28 $0d

	ldh a, [$3c]                                     ; $4c13: $f0 $3c
	jr z, jr_00f_4c17                                ; $4c15: $28 $00

jr_00f_4c17:
	nop                                              ; $4c17: $00
	ld b, b                                          ; $4c18: $40
	ld l, d                                          ; $4c19: $6a
	ld hl, sp+$00                                    ; $4c1a: $f8 $00
	ld b, d                                          ; $4c1c: $42
	ld l, d                                          ; $4c1d: $6a
	ldh a, [rP1]                                     ; $4c1e: $f0 $00

jr_00f_4c20:
	ld b, d                                          ; $4c20: $42
	ld a, [hl+]                                      ; $4c21: $2a
	add sp, $00                                      ; $4c22: $e8 $00
	ld b, b                                          ; $4c24: $40
	ld a, [hl+]                                      ; $4c25: $2a
	ldh a, [$f6]                                     ; $4c26: $f0 $f6
	ld a, [de]                                       ; $4c28: $1a
	ld l, $f8                                        ; $4c29: $2e $f8
	ldh a, [rAUD2LOW]                                ; $4c2b: $f0 $18
	cpl                                              ; $4c2d: $2f
	ld [$34e0], sp                                   ; $4c2e: $08 $e0 $34
	jr z, jr_00f_4c33                                ; $4c31: $28 $00

jr_00f_4c33:
	ldh [$32], a                                     ; $4c33: $e0 $32
	jr z, jr_00f_4c44                                ; $4c35: $28 $0d

	ldh a, [$3c]                                     ; $4c37: $f0 $3c
	jr z, jr_00f_4c40                                ; $4c39: $28 $05

	ldh a, [$3a]                                     ; $4c3b: $f0 $3a
	jr z, jr_00f_4c3f                                ; $4c3d: $28 $00

jr_00f_4c3f:
	nop                                              ; $4c3f: $00

jr_00f_4c40:
	ld b, b                                          ; $4c40: $40
	ld l, d                                          ; $4c41: $6a
	ld hl, sp+$00                                    ; $4c42: $f8 $00

jr_00f_4c44:
	ld b, d                                          ; $4c44: $42
	ld l, d                                          ; $4c45: $6a
	ldh a, [rP1]                                     ; $4c46: $f0 $00
	ld b, d                                          ; $4c48: $42
	ld a, [hl+]                                      ; $4c49: $2a
	add sp, $00                                      ; $4c4a: $e8 $00
	ld b, b                                          ; $4c4c: $40
	ld a, [hl+]                                      ; $4c4d: $2a
	ld hl, sp-$10                                    ; $4c4e: $f8 $f0
	ld d, $2e                                        ; $4c50: $16 $2e

jr_00f_4c52:
	ldh a, [$f8]                                     ; $4c52: $f0 $f8
	ld a, [de]                                       ; $4c54: $1a
	ld l, a                                          ; $4c55: $6f

jr_00f_4c56:
	dec hl                                           ; $4c56: $2b
	ldh [c], a                                       ; $4c57: $e2
	ld [hl+], a                                      ; $4c58: $22
	ld l, $23                                        ; $4c59: $2e $23
	ldh [c], a                                       ; $4c5b: $e2
	jr nz, jr_00f_4c8c                               ; $4c5c: $20 $2e

jr_00f_4c5e:
	jr nc, jr_00f_4c52                               ; $4c5e: $30 $f2

	jr z, jr_00f_4c90                                ; $4c60: $28 $2e

jr_00f_4c62:
	jr z, jr_00f_4c56                                ; $4c62: $28 $f2

	ld h, $28                                        ; $4c64: $26 $28
	jr nz, @-$0c                                     ; $4c66: $20 $f2

	inc h                                            ; $4c68: $24
	cpl                                              ; $4c69: $2f

jr_00f_4c6a:
	jr nc, jr_00f_4c5e                               ; $4c6a: $30 $f2

	jr z, jr_00f_4c9c                                ; $4c6c: $28 $2e

	dec hl                                           ; $4c6e: $2b
	ldh [c], a                                       ; $4c6f: $e2
	ld [hl+], a                                      ; $4c70: $22
	ld l, $28                                        ; $4c71: $2e $28
	ldh a, [c]                                       ; $4c73: $f2
	ld h, $28                                        ; $4c74: $26 $28
	jr nz, jr_00f_4c6a                               ; $4c76: $20 $f2

	inc h                                            ; $4c78: $24
	ld l, $23                                        ; $4c79: $2e $23
	ldh [c], a                                       ; $4c7b: $e2
	jr nz, @+$31                                     ; $4c7c: $20 $2f

jr_00f_4c7e:
	jr nc, jr_00f_4c62                               ; $4c7e: $30 $e2

	ld b, h                                          ; $4c80: $44
	ld l, $28                                        ; $4c81: $2e $28
	ldh [c], a                                       ; $4c83: $e2
	ld l, $2e                                        ; $4c84: $2e $2e
	jr nc, @-$0c                                     ; $4c86: $30 $f2

	jr z, jr_00f_4cb8                                ; $4c88: $28 $2e

jr_00f_4c8a:
	jr z, jr_00f_4c7e                                ; $4c8a: $28 $f2

jr_00f_4c8c:
	ld h, $28                                        ; $4c8c: $26 $28
	jr nz, @-$0c                                     ; $4c8e: $20 $f2

jr_00f_4c90:
	inc h                                            ; $4c90: $24
	ld l, $20                                        ; $4c91: $2e $20
	ldh [c], a                                       ; $4c93: $e2
	inc l                                            ; $4c94: $2c
	cpl                                              ; $4c95: $2f

jr_00f_4c96:
	jr nc, jr_00f_4c8a                               ; $4c96: $30 $f2

	jr z, jr_00f_4cc8                                ; $4c98: $28 $2e

	dec hl                                           ; $4c9a: $2b
	ldh [c], a                                       ; $4c9b: $e2

jr_00f_4c9c:
	ld [hl+], a                                      ; $4c9c: $22
	ld l, $28                                        ; $4c9d: $2e $28
	ldh a, [c]                                       ; $4c9f: $f2
	ld h, $28                                        ; $4ca0: $26 $28

jr_00f_4ca2:
	jr nz, jr_00f_4c96                               ; $4ca2: $20 $f2

	inc h                                            ; $4ca4: $24
	ld l, $23                                        ; $4ca5: $2e $23
	ldh [c], a                                       ; $4ca7: $e2
	jr nz, jr_00f_4cd9                               ; $4ca8: $20 $2f

jr_00f_4caa:
	jr nc, @-$0c                                     ; $4caa: $30 $f2

	jr z, jr_00f_4cdc                                ; $4cac: $28 $2e

	dec hl                                           ; $4cae: $2b
	ldh [c], a                                       ; $4caf: $e2
	ld [hl+], a                                      ; $4cb0: $22
	ld l, $28                                        ; $4cb1: $2e $28
	ldh a, [c]                                       ; $4cb3: $f2
	ld h, $28                                        ; $4cb4: $26 $28
	jr nz, jr_00f_4caa                               ; $4cb6: $20 $f2

jr_00f_4cb8:
	inc h                                            ; $4cb8: $24
	ld l, $23                                        ; $4cb9: $2e $23
	ldh [c], a                                       ; $4cbb: $e2
	jr nz, jr_00f_4ced                               ; $4cbc: $20 $2f

	jr nz, jr_00f_4ca2                               ; $4cbe: $20 $e2

	ld b, [hl]                                       ; $4cc0: $46
	ld l, $30                                        ; $4cc1: $2e $30
	ldh [c], a                                       ; $4cc3: $e2
	ld b, h                                          ; $4cc4: $44
	ld l, $28                                        ; $4cc5: $2e $28
	ldh [c], a                                       ; $4cc7: $e2

jr_00f_4cc8:
	ld a, [hl+]                                      ; $4cc8: $2a
	ld l, $30                                        ; $4cc9: $2e $30
	ldh a, [c]                                       ; $4ccb: $f2
	jr z, jr_00f_4cfc                                ; $4ccc: $28 $2e

	jr z, @-$0c                                      ; $4cce: $28 $f2

	ld h, $28                                        ; $4cd0: $26 $28

jr_00f_4cd2:
	jr nz, @-$0c                                     ; $4cd2: $20 $f2

	inc h                                            ; $4cd4: $24
	cpl                                              ; $4cd5: $2f

jr_00f_4cd6:
	jr nc, @-$1c                                     ; $4cd6: $30 $e2

	ld b, h                                          ; $4cd8: $44

jr_00f_4cd9:
	ld l, $20                                        ; $4cd9: $2e $20
	ldh [c], a                                       ; $4cdb: $e2

jr_00f_4cdc:
	inc l                                            ; $4cdc: $2c
	ld l, $28                                        ; $4cdd: $2e $28
	ldh [c], a                                       ; $4cdf: $e2
	ld l, $2e                                        ; $4ce0: $2e $2e
	jr nc, jr_00f_4cd6                               ; $4ce2: $30 $f2

	jr z, jr_00f_4d14                                ; $4ce4: $28 $2e

	jr z, @-$0c                                      ; $4ce6: $28 $f2

	ld h, $28                                        ; $4ce8: $26 $28
	jr nz, @-$0c                                     ; $4cea: $20 $f2

	inc h                                            ; $4cec: $24

jr_00f_4ced:
	cpl                                              ; $4ced: $2f

jr_00f_4cee:
	jr nc, jr_00f_4cd2                               ; $4cee: $30 $e2

	ld b, h                                          ; $4cf0: $44
	ld l, $20                                        ; $4cf1: $2e $20
	ldh [c], a                                       ; $4cf3: $e2
	inc l                                            ; $4cf4: $2c
	ld l, $30                                        ; $4cf5: $2e $30
	ldh a, [c]                                       ; $4cf7: $f2
	jr z, jr_00f_4d28                                ; $4cf8: $28 $2e

jr_00f_4cfa:
	jr z, jr_00f_4cee                                ; $4cfa: $28 $f2

jr_00f_4cfc:
	ld h, $28                                        ; $4cfc: $26 $28

jr_00f_4cfe:
	jr nz, @-$0c                                     ; $4cfe: $20 $f2

	inc h                                            ; $4d00: $24
	ld l, $28                                        ; $4d01: $2e $28
	ldh [c], a                                       ; $4d03: $e2
	jr nc, @+$31                                     ; $4d04: $30 $2f

	jr z, jr_00f_4cfa                                ; $4d06: $28 $f2

	ld h, $28                                        ; $4d08: $26 $28

jr_00f_4d0a:
	jr nz, jr_00f_4cfe                               ; $4d0a: $20 $f2

	inc h                                            ; $4d0c: $24
	jr z, @+$2a                                      ; $4d0d: $28 $28

	ldh [c], a                                       ; $4d0f: $e2
	ld [hl+], a                                      ; $4d10: $22
	inc l                                            ; $4d11: $2c

jr_00f_4d12:
	jr nz, @-$1c                                     ; $4d12: $20 $e2

jr_00f_4d14:
	jr nz, jr_00f_4d43                               ; $4d14: $20 $2d

	jr z, jr_00f_4d0a                                ; $4d16: $28 $f2

	ld h, $28                                        ; $4d18: $26 $28

jr_00f_4d1a:
	jr z, jr_00f_4cfe                                ; $4d1a: $28 $e2

	ld [hl+], a                                      ; $4d1c: $22
	inc l                                            ; $4d1d: $2c

jr_00f_4d1e:
	jr nz, jr_00f_4d12                               ; $4d1e: $20 $f2

	inc h                                            ; $4d20: $24
	jr z, jr_00f_4d43                                ; $4d21: $28 $20

	ldh [c], a                                       ; $4d23: $e2
	ld l, $2d                                        ; $4d24: $2e $2d
	jr z, jr_00f_4d1a                                ; $4d26: $28 $f2

jr_00f_4d28:
	ld h, $28                                        ; $4d28: $26 $28

jr_00f_4d2a:
	jr z, @-$1c                                      ; $4d2a: $28 $e2

	ld [hl+], a                                      ; $4d2c: $22
	inc l                                            ; $4d2d: $2c

jr_00f_4d2e:
	jr nz, @-$0c                                     ; $4d2e: $20 $f2

	inc h                                            ; $4d30: $24
	jr z, jr_00f_4d53                                ; $4d31: $28 $20

	ldh [c], a                                       ; $4d33: $e2
	jr nz, @+$2f                                     ; $4d34: $20 $2d

	jr z, jr_00f_4d2a                                ; $4d36: $28 $f2

	ld h, $28                                        ; $4d38: $26 $28

jr_00f_4d3a:
	jr z, jr_00f_4d1e                                ; $4d3a: $28 $e2

	ld [hl+], a                                      ; $4d3c: $22
	inc l                                            ; $4d3d: $2c
	jr nz, @-$0c                                     ; $4d3e: $20 $f2

	inc h                                            ; $4d40: $24
	jr z, @+$22                                      ; $4d41: $28 $20

jr_00f_4d43:
	ldh [c], a                                       ; $4d43: $e2
	ld l, $2d                                        ; $4d44: $2e $2d

jr_00f_4d46:
	jr z, jr_00f_4d3a                                ; $4d46: $28 $f2

	ld h, $28                                        ; $4d48: $26 $28

jr_00f_4d4a:
	jr z, jr_00f_4d2e                                ; $4d4a: $28 $e2

	ld [hl+], a                                      ; $4d4c: $22
	inc l                                            ; $4d4d: $2c

jr_00f_4d4e:
	jr nz, @-$0c                                     ; $4d4e: $20 $f2

	inc h                                            ; $4d50: $24
	jr z, jr_00f_4d73                                ; $4d51: $28 $20

jr_00f_4d53:
	ldh [c], a                                       ; $4d53: $e2
	jr nz, jr_00f_4d83                               ; $4d54: $20 $2d

	jr z, jr_00f_4d4a                                ; $4d56: $28 $f2

	ld b, [hl]                                       ; $4d58: $46
	jr z, jr_00f_4d7b                                ; $4d59: $28 $20

	ldh a, [c]                                       ; $4d5b: $f2
	ld b, h                                          ; $4d5c: $44
	jr z, @+$22                                      ; $4d5d: $28 $20

	ldh [c], a                                       ; $4d5f: $e2
	inc l                                            ; $4d60: $2c
	inc l                                            ; $4d61: $2c

jr_00f_4d62:
	jr z, jr_00f_4d46                                ; $4d62: $28 $e2

	ld [hl+], a                                      ; $4d64: $22
	dec l                                            ; $4d65: $2d
	jr z, jr_00f_4d4a                                ; $4d66: $28 $e2

	ld a, [hl+]                                      ; $4d68: $2a
	inc l                                            ; $4d69: $2c
	jr nz, jr_00f_4d4e                               ; $4d6a: $20 $e2

	jr z, @+$2e                                      ; $4d6c: $28 $2c

	jr z, jr_00f_4d62                                ; $4d6e: $28 $f2

	ld b, [hl]                                       ; $4d70: $46
	jr z, jr_00f_4d93                                ; $4d71: $28 $20

jr_00f_4d73:
	ldh a, [c]                                       ; $4d73: $f2
	ld b, h                                          ; $4d74: $44
	add hl, hl                                       ; $4d75: $29
	rra                                              ; $4d76: $1f
	ldh [c], a                                       ; $4d77: $e2
	ld a, [hl+]                                      ; $4d78: $2a
	ld l, h                                          ; $4d79: $6c
	daa                                              ; $4d7a: $27

jr_00f_4d7b:
	ldh [c], a                                       ; $4d7b: $e2
	jr z, jr_00f_4dea                                ; $4d7c: $28 $6c

	jr z, @-$0c                                      ; $4d7e: $28 $f2

	ld c, d                                          ; $4d80: $4a
	jr z, jr_00f_4da3                                ; $4d81: $28 $20

jr_00f_4d83:
	ldh a, [c]                                       ; $4d83: $f2
	ld c, b                                          ; $4d84: $48
	add hl, hl                                       ; $4d85: $29
	ld [$4ef3], sp                                   ; $4d86: $08 $f3 $4e
	jr z, jr_00f_4d8b                                ; $4d89: $28 $00

jr_00f_4d8b:
	di                                               ; $4d8b: $f3
	ld c, h                                          ; $4d8c: $4c
	jr z, jr_00f_4d97                                ; $4d8d: $28 $08

jr_00f_4d8f:
	db $e3                                           ; $4d8f: $e3
	ld c, d                                          ; $4d90: $4a
	jr z, jr_00f_4d93                                ; $4d91: $28 $00

jr_00f_4d93:
	db $e3                                           ; $4d93: $e3
	ld c, b                                          ; $4d94: $48
	jr z, jr_00f_4d8f                                ; $4d95: $28 $f8

jr_00f_4d97:
	db $e3                                           ; $4d97: $e3
	inc b                                            ; $4d98: $04
	jr z, jr_00f_4d8b                                ; $4d99: $28 $f0

	db $e3                                           ; $4d9b: $e3
	ld [bc], a                                       ; $4d9c: $02
	jr z, @-$16                                      ; $4d9d: $28 $e8

	db $e3                                           ; $4d9f: $e3
	nop                                              ; $4da0: $00
	jr z, jr_00f_4d93                                ; $4da1: $28 $f0

jr_00f_4da3:
	di                                               ; $4da3: $f3
	ld [$f82c], sp                                   ; $4da4: $08 $2c $f8

jr_00f_4da7:
	di                                               ; $4da7: $f3
	ld a, [bc]                                       ; $4da8: $0a
	add hl, hl                                       ; $4da9: $29
	ld [$4ef3], sp                                   ; $4daa: $08 $f3 $4e
	jr z, jr_00f_4daf                                ; $4dad: $28 $00

jr_00f_4daf:
	di                                               ; $4daf: $f3
	ld c, h                                          ; $4db0: $4c
	jr z, jr_00f_4dbb                                ; $4db1: $28 $08

	db $e3                                           ; $4db3: $e3
	ld c, d                                          ; $4db4: $4a
	jr z, jr_00f_4db7                                ; $4db5: $28 $00

jr_00f_4db7:
	db $e3                                           ; $4db7: $e3
	ld c, b                                          ; $4db8: $48
	jr z, @-$0e                                      ; $4db9: $28 $f0

jr_00f_4dbb:
	db $e3                                           ; $4dbb: $e3
	ld [bc], a                                       ; $4dbc: $02
	jr z, jr_00f_4da7                                ; $4dbd: $28 $e8

	db $e3                                           ; $4dbf: $e3

jr_00f_4dc0:
	nop                                              ; $4dc0: $00
	jr z, jr_00f_4dbb                                ; $4dc1: $28 $f8

	db $e3                                           ; $4dc3: $e3
	ld b, $28                                        ; $4dc4: $06 $28
	ld hl, sp-$0d                                    ; $4dc6: $f8 $f3
	ld c, $28                                        ; $4dc8: $0e $28
	ldh a, [$f3]                                     ; $4dca: $f0 $f3
	inc c                                            ; $4dcc: $0c
	dec l                                            ; $4dcd: $2d
	push af                                          ; $4dce: $f5
	ldh [c], a                                       ; $4dcf: $e2
	ld [de], a                                       ; $4dd0: $12
	jr z, jr_00f_4dc0                                ; $4dd1: $28 $ed

	ldh [c], a                                       ; $4dd3: $e2
	db $10                                           ; $4dd4: $10
	jr z, jr_00f_4ddf                                ; $4dd5: $28 $08

	di                                               ; $4dd7: $f3
	ld c, [hl]                                       ; $4dd8: $4e
	jr z, jr_00f_4ddb                                ; $4dd9: $28 $00

jr_00f_4ddb:
	di                                               ; $4ddb: $f3
	ld c, h                                          ; $4ddc: $4c
	jr z, jr_00f_4de7                                ; $4ddd: $28 $08

jr_00f_4ddf:
	db $e3                                           ; $4ddf: $e3
	ld d, d                                          ; $4de0: $52
	ld l, $00                                        ; $4de1: $2e $00
	db $e3                                           ; $4de3: $e3
	ld d, b                                          ; $4de4: $50
	ld l, $f5                                        ; $4de5: $2e $f5

jr_00f_4de7:
	ldh a, [c]                                       ; $4de7: $f2
	ld d, $28                                        ; $4de8: $16 $28

jr_00f_4dea:
	db $ed                                           ; $4dea: $ed
	ldh a, [c]                                       ; $4deb: $f2
	inc d                                            ; $4dec: $14
	dec l                                            ; $4ded: $2d
	ld [$56e3], sp                                   ; $4dee: $08 $e3 $56
	jr z, jr_00f_4df3                                ; $4df1: $28 $00

jr_00f_4df3:
	db $e3                                           ; $4df3: $e3

jr_00f_4df4:
	ld d, h                                          ; $4df4: $54
	jr z, jr_00f_4dff                                ; $4df5: $28 $08

	di                                               ; $4df7: $f3
	ld c, [hl]                                       ; $4df8: $4e

jr_00f_4df9:
	jr z, jr_00f_4dfb                                ; $4df9: $28 $00

jr_00f_4dfb:
	di                                               ; $4dfb: $f3
	ld c, h                                          ; $4dfc: $4c

jr_00f_4dfd:
	jr z, jr_00f_4df4                                ; $4dfd: $28 $f5

jr_00f_4dff:
	ldh [c], a                                       ; $4dff: $e2
	ld a, [de]                                       ; $4e00: $1a

jr_00f_4e01:
	jr z, @-$11                                      ; $4e01: $28 $ed

	ldh [c], a                                       ; $4e03: $e2
	jr jr_00f_4e2e                                   ; $4e04: $18 $28

	db $ed                                           ; $4e06: $ed
	ldh a, [c]                                       ; $4e07: $f2
	inc d                                            ; $4e08: $14
	inc l                                            ; $4e09: $2c
	push af                                          ; $4e0a: $f5
	ldh a, [c]                                       ; $4e0b: $f2
	inc e                                            ; $4e0c: $1c
	add hl, hl                                       ; $4e0d: $29
	jr z, jr_00f_4e01                                ; $4e0e: $28 $f1

	ld b, [hl]                                       ; $4e10: $46

jr_00f_4e11:
	ld a, [hl+]                                      ; $4e11: $2a
	jr nz, @-$0d                                     ; $4e12: $20 $f1

	ld b, h                                          ; $4e14: $44
	ld a, [hl+]                                      ; $4e15: $2a
	jr z, jr_00f_4df9                                ; $4e16: $28 $e1

	ld [hl], $2e                                     ; $4e18: $36 $2e
	jr nz, jr_00f_4dfd                               ; $4e1a: $20 $e1

	inc [hl]                                         ; $4e1c: $34

jr_00f_4e1d:
	cpl                                              ; $4e1d: $2f
	jr z, jr_00f_4e01                                ; $4e1e: $28 $e1

	ld a, $2e                                        ; $4e20: $3e $2e
	jr nz, @-$1d                                     ; $4e22: $20 $e1

	inc a                                            ; $4e24: $3c
	ld l, $28                                        ; $4e25: $2e $28
	pop af                                           ; $4e27: $f1
	ld b, [hl]                                       ; $4e28: $46

jr_00f_4e29:
	ld a, [hl+]                                      ; $4e29: $2a
	jr nz, jr_00f_4e1d                               ; $4e2a: $20 $f1

	ld b, h                                          ; $4e2c: $44

jr_00f_4e2d:
	dec hl                                           ; $4e2d: $2b

jr_00f_4e2e:
	jr z, jr_00f_4e11                                ; $4e2e: $28 $e1

	ld a, [hl-]                                      ; $4e30: $3a
	ld l, $20                                        ; $4e31: $2e $20
	pop hl                                           ; $4e33: $e1
	jr c, jr_00f_4e64                                ; $4e34: $38 $2e

	jr z, jr_00f_4e29                                ; $4e36: $28 $f1

	ld b, [hl]                                       ; $4e38: $46
	ld a, [hl+]                                      ; $4e39: $2a
	jr nz, jr_00f_4e2d                               ; $4e3a: $20 $f1

jr_00f_4e3c:
	ld b, h                                          ; $4e3c: $44

jr_00f_4e3d:
	dec hl                                           ; $4e3d: $2b
	add hl, hl                                       ; $4e3e: $29
	pop hl                                           ; $4e3f: $e1

jr_00f_4e40:
	ld b, d                                          ; $4e40: $42
	ld l, $21                                        ; $4e41: $2e $21
	pop hl                                           ; $4e43: $e1

jr_00f_4e44:
	ld b, b                                          ; $4e44: $40
	ld l, $28                                        ; $4e45: $2e $28
	pop af                                           ; $4e47: $f1

jr_00f_4e48:
	ld b, [hl]                                       ; $4e48: $46
	ld a, [hl+]                                      ; $4e49: $2a
	jr nz, jr_00f_4e3d                               ; $4e4a: $20 $f1

	ld b, h                                          ; $4e4c: $44
	dec hl                                           ; $4e4d: $2b
	jr nc, jr_00f_4e40                               ; $4e4e: $30 $f0

	ld e, $2a                                        ; $4e50: $1e $2a
	jr z, jr_00f_4e44                                ; $4e52: $28 $f0

	ld [hl-], a                                      ; $4e54: $32
	ld a, [hl+]                                      ; $4e55: $2a
	jr nz, jr_00f_4e48                               ; $4e56: $20 $f0

jr_00f_4e58:
	jr nc, jr_00f_4e84                               ; $4e58: $30 $2a

	jr z, jr_00f_4e3c                                ; $4e5a: $28 $e0

jr_00f_4e5c:
	ld [hl+], a                                      ; $4e5c: $22
	ld l, $20                                        ; $4e5d: $2e $20
	ldh [rAUD4LEN], a                                ; $4e5f: $e0 $20
	cpl                                              ; $4e61: $2f
	jr z, jr_00f_4e44                                ; $4e62: $28 $e0

jr_00f_4e64:
	ld a, [hl+]                                      ; $4e64: $2a
	ld l, $20                                        ; $4e65: $2e $20
	ldh [$28], a                                     ; $4e67: $e0 $28
	ld l, $30                                        ; $4e69: $2e $30
	ldh a, [rAUD3HIGH]                               ; $4e6b: $f0 $1e
	ld a, [hl+]                                      ; $4e6d: $2a
	jr z, @-$0e                                      ; $4e6e: $28 $f0

jr_00f_4e70:
	ld [hl-], a                                      ; $4e70: $32
	ld a, [hl+]                                      ; $4e71: $2a
	jr nz, jr_00f_4e64                               ; $4e72: $20 $f0

jr_00f_4e74:
	jr nc, jr_00f_4ea1                               ; $4e74: $30 $2b

	jr z, jr_00f_4e58                                ; $4e76: $28 $e0

jr_00f_4e78:
	ld l, $2e                                        ; $4e78: $2e $2e
	jr nz, jr_00f_4e5c                               ; $4e7a: $20 $e0

	inc l                                            ; $4e7c: $2c
	ld l, $30                                        ; $4e7d: $2e $30
	ldh a, [rAUD3HIGH]                               ; $4e7f: $f0 $1e
	ld a, [hl+]                                      ; $4e81: $2a
	jr z, jr_00f_4e74                                ; $4e82: $28 $f0

jr_00f_4e84:
	ld [hl-], a                                      ; $4e84: $32
	ld a, [hl+]                                      ; $4e85: $2a
	jr nz, jr_00f_4e78                               ; $4e86: $20 $f0

jr_00f_4e88:
	jr nc, @+$2d                                     ; $4e88: $30 $2b

	jr z, @-$1e                                      ; $4e8a: $28 $e0

jr_00f_4e8c:
	ld h, $2e                                        ; $4e8c: $26 $2e
	jr nz, jr_00f_4e70                               ; $4e8e: $20 $e0

	inc h                                            ; $4e90: $24
	ld l, $30                                        ; $4e91: $2e $30
	ldh a, [rAUD3HIGH]                               ; $4e93: $f0 $1e
	ld a, [hl+]                                      ; $4e95: $2a
	jr z, jr_00f_4e88                                ; $4e96: $28 $f0

	ld [hl-], a                                      ; $4e98: $32
	ld a, [hl+]                                      ; $4e99: $2a
	jr nz, jr_00f_4e8c                               ; $4e9a: $20 $f0

	jr nc, jr_00f_4ec9                               ; $4e9c: $30 $2b

	ld [$4ef3], sp                                   ; $4e9e: $08 $f3 $4e

jr_00f_4ea1:
	jr z, jr_00f_4ea3                                ; $4ea1: $28 $00

jr_00f_4ea3:
	di                                               ; $4ea3: $f3
	ld c, h                                          ; $4ea4: $4c
	jr z, jr_00f_4eaf                                ; $4ea5: $28 $08

jr_00f_4ea7:
	db $e3                                           ; $4ea7: $e3
	ld c, d                                          ; $4ea8: $4a
	jr z, jr_00f_4eab                                ; $4ea9: $28 $00

jr_00f_4eab:
	db $e3                                           ; $4eab: $e3
	ld c, b                                          ; $4eac: $48
	jr z, jr_00f_4ea7                                ; $4ead: $28 $f8

jr_00f_4eaf:
	di                                               ; $4eaf: $f3
	ld a, [bc]                                       ; $4eb0: $0a
	jr z, jr_00f_4ea3                                ; $4eb1: $28 $f0

	di                                               ; $4eb3: $f3
	ld [$f82c], sp                                   ; $4eb4: $08 $2c $f8
	db $e3                                           ; $4eb7: $e3
	inc b                                            ; $4eb8: $04
	jr z, jr_00f_4eab                                ; $4eb9: $28 $f0

	db $e3                                           ; $4ebb: $e3
	ld [bc], a                                       ; $4ebc: $02
	jr z, jr_00f_4ea7                                ; $4ebd: $28 $e8

	db $e3                                           ; $4ebf: $e3
	nop                                              ; $4ec0: $00
	add hl, hl                                       ; $4ec1: $29
	ld hl, sp-$0d                                    ; $4ec2: $f8 $f3
	ld c, $28                                        ; $4ec4: $0e $28
	ldh a, [$f3]                                     ; $4ec6: $f0 $f3
	inc c                                            ; $4ec8: $0c

jr_00f_4ec9:
	inc l                                            ; $4ec9: $2c
	ld hl, sp-$1d                                    ; $4eca: $f8 $e3
	ld b, $28                                        ; $4ecc: $06 $28
	ld [$4ef3], sp                                   ; $4ece: $08 $f3 $4e
	jr z, jr_00f_4ed3                                ; $4ed1: $28 $00

jr_00f_4ed3:
	di                                               ; $4ed3: $f3
	ld c, h                                          ; $4ed4: $4c
	jr z, jr_00f_4edf                                ; $4ed5: $28 $08

	db $e3                                           ; $4ed7: $e3
	ld c, d                                          ; $4ed8: $4a
	jr z, jr_00f_4edb                                ; $4ed9: $28 $00

jr_00f_4edb:
	db $e3                                           ; $4edb: $e3
	ld c, b                                          ; $4edc: $48
	jr z, @-$0e                                      ; $4edd: $28 $f0

jr_00f_4edf:
	db $e3                                           ; $4edf: $e3

jr_00f_4ee0:
	ld [bc], a                                       ; $4ee0: $02
	jr z, @-$16                                      ; $4ee1: $28 $e8

	db $e3                                           ; $4ee3: $e3
	nop                                              ; $4ee4: $00
	add hl, hl                                       ; $4ee5: $29
	ld [$52e3], sp                                   ; $4ee6: $08 $e3 $52
	ld l, $00                                        ; $4ee9: $2e $00
	db $e3                                           ; $4eeb: $e3

jr_00f_4eec:
	ld d, b                                          ; $4eec: $50
	ld l, $f5                                        ; $4eed: $2e $f5
	ldh [c], a                                       ; $4eef: $e2
	ld [de], a                                       ; $4ef0: $12
	jr z, jr_00f_4ee0                                ; $4ef1: $28 $ed

	ldh [c], a                                       ; $4ef3: $e2
	db $10                                           ; $4ef4: $10
	jr z, jr_00f_4eec                                ; $4ef5: $28 $f5

	ldh a, [c]                                       ; $4ef7: $f2
	ld d, $28                                        ; $4ef8: $16 $28
	db $ed                                           ; $4efa: $ed
	ldh a, [c]                                       ; $4efb: $f2
	inc d                                            ; $4efc: $14
	inc l                                            ; $4efd: $2c
	ld [$4ef3], sp                                   ; $4efe: $08 $f3 $4e
	jr z, jr_00f_4f03                                ; $4f01: $28 $00

jr_00f_4f03:
	di                                               ; $4f03: $f3

jr_00f_4f04:
	ld c, h                                          ; $4f04: $4c
	add hl, hl                                       ; $4f05: $29
	ld [$56e3], sp                                   ; $4f06: $08 $e3 $56

jr_00f_4f09:
	jr z, jr_00f_4f0b                                ; $4f09: $28 $00

jr_00f_4f0b:
	db $e3                                           ; $4f0b: $e3
	ld d, h                                          ; $4f0c: $54

jr_00f_4f0d:
	jr z, jr_00f_4f04                                ; $4f0d: $28 $f5

	ldh [c], a                                       ; $4f0f: $e2
	ld a, [de]                                       ; $4f10: $1a
	jr z, @-$11                                      ; $4f11: $28 $ed

	ldh [c], a                                       ; $4f13: $e2
	jr @+$2a                                         ; $4f14: $18 $28

	push af                                          ; $4f16: $f5
	ldh a, [c]                                       ; $4f17: $f2
	inc e                                            ; $4f18: $1c

jr_00f_4f19:
	jr z, @-$11                                      ; $4f19: $28 $ed

	ldh a, [c]                                       ; $4f1b: $f2
	inc d                                            ; $4f1c: $14

jr_00f_4f1d:
	inc l                                            ; $4f1d: $2c
	ld [$4ef3], sp                                   ; $4f1e: $08 $f3 $4e
	jr z, jr_00f_4f23                                ; $4f21: $28 $00

jr_00f_4f23:
	di                                               ; $4f23: $f3
	ld c, h                                          ; $4f24: $4c

jr_00f_4f25:
	add hl, hl                                       ; $4f25: $29
	jr z, jr_00f_4f09                                ; $4f26: $28 $e1

	ld [hl], $2e                                     ; $4f28: $36 $2e
	jr nz, jr_00f_4f0d                               ; $4f2a: $20 $e1

	inc [hl]                                         ; $4f2c: $34
	ld l, $28                                        ; $4f2d: $2e $28
	pop af                                           ; $4f2f: $f1
	ld b, [hl]                                       ; $4f30: $46
	ld a, [hl+]                                      ; $4f31: $2a
	jr nz, jr_00f_4f25                               ; $4f32: $20 $f1

	ld b, h                                          ; $4f34: $44

jr_00f_4f35:
	dec hl                                           ; $4f35: $2b
	jr z, jr_00f_4f19                                ; $4f36: $28 $e1

	ld a, $2e                                        ; $4f38: $3e $2e
	jr nz, jr_00f_4f1d                               ; $4f3a: $20 $e1

	inc a                                            ; $4f3c: $3c
	ld l, $28                                        ; $4f3d: $2e $28
	pop af                                           ; $4f3f: $f1
	ld b, [hl]                                       ; $4f40: $46

jr_00f_4f41:
	ld a, [hl+]                                      ; $4f41: $2a
	jr nz, jr_00f_4f35                               ; $4f42: $20 $f1

	ld b, h                                          ; $4f44: $44

jr_00f_4f45:
	dec hl                                           ; $4f45: $2b
	jr z, @-$1d                                      ; $4f46: $28 $e1

	ld a, [hl-]                                      ; $4f48: $3a
	ld l, $20                                        ; $4f49: $2e $20
	pop hl                                           ; $4f4b: $e1
	jr c, jr_00f_4f7c                                ; $4f4c: $38 $2e

	jr z, jr_00f_4f41                                ; $4f4e: $28 $f1

	ld b, [hl]                                       ; $4f50: $46
	ld a, [hl+]                                      ; $4f51: $2a
	jr nz, jr_00f_4f45                               ; $4f52: $20 $f1

jr_00f_4f54:
	ld b, h                                          ; $4f54: $44

jr_00f_4f55:
	dec hl                                           ; $4f55: $2b
	add hl, hl                                       ; $4f56: $29
	pop hl                                           ; $4f57: $e1

jr_00f_4f58:
	ld b, d                                          ; $4f58: $42
	ld l, $21                                        ; $4f59: $2e $21
	pop hl                                           ; $4f5b: $e1

jr_00f_4f5c:
	ld b, b                                          ; $4f5c: $40
	ld l, $28                                        ; $4f5d: $2e $28
	pop af                                           ; $4f5f: $f1

jr_00f_4f60:
	ld b, [hl]                                       ; $4f60: $46
	ld a, [hl+]                                      ; $4f61: $2a
	jr nz, jr_00f_4f55                               ; $4f62: $20 $f1

	ld b, h                                          ; $4f64: $44
	dec hl                                           ; $4f65: $2b
	jr nc, jr_00f_4f58                               ; $4f66: $30 $f0

	ld e, $2a                                        ; $4f68: $1e $2a
	jr z, jr_00f_4f5c                                ; $4f6a: $28 $f0

	ld [hl-], a                                      ; $4f6c: $32
	ld a, [hl+]                                      ; $4f6d: $2a
	jr nz, jr_00f_4f60                               ; $4f6e: $20 $f0

jr_00f_4f70:
	jr nc, jr_00f_4f9c                               ; $4f70: $30 $2a

	jr z, jr_00f_4f54                                ; $4f72: $28 $e0

jr_00f_4f74:
	ld [hl+], a                                      ; $4f74: $22
	ld l, $20                                        ; $4f75: $2e $20
	ldh [rAUD4LEN], a                                ; $4f77: $e0 $20
	cpl                                              ; $4f79: $2f
	jr z, jr_00f_4f5c                                ; $4f7a: $28 $e0

jr_00f_4f7c:
	ld a, [hl+]                                      ; $4f7c: $2a
	ld l, $20                                        ; $4f7d: $2e $20
	ldh [$28], a                                     ; $4f7f: $e0 $28
	ld l, $30                                        ; $4f81: $2e $30
	ldh a, [rAUD3HIGH]                               ; $4f83: $f0 $1e
	ld a, [hl+]                                      ; $4f85: $2a
	jr z, @-$0e                                      ; $4f86: $28 $f0

jr_00f_4f88:
	ld [hl-], a                                      ; $4f88: $32
	ld a, [hl+]                                      ; $4f89: $2a
	jr nz, jr_00f_4f7c                               ; $4f8a: $20 $f0

jr_00f_4f8c:
	jr nc, jr_00f_4fb9                               ; $4f8c: $30 $2b

	jr z, jr_00f_4f70                                ; $4f8e: $28 $e0

jr_00f_4f90:
	ld l, $2e                                        ; $4f90: $2e $2e
	jr nz, jr_00f_4f74                               ; $4f92: $20 $e0

	inc l                                            ; $4f94: $2c
	ld l, $30                                        ; $4f95: $2e $30
	ldh a, [rAUD3HIGH]                               ; $4f97: $f0 $1e
	ld a, [hl+]                                      ; $4f99: $2a
	jr z, jr_00f_4f8c                                ; $4f9a: $28 $f0

jr_00f_4f9c:
	ld [hl-], a                                      ; $4f9c: $32
	ld a, [hl+]                                      ; $4f9d: $2a
	jr nz, jr_00f_4f90                               ; $4f9e: $20 $f0

jr_00f_4fa0:
	jr nc, @+$2d                                     ; $4fa0: $30 $2b

	jr z, @-$1e                                      ; $4fa2: $28 $e0

jr_00f_4fa4:
	ld h, $2e                                        ; $4fa4: $26 $2e
	jr nz, jr_00f_4f88                               ; $4fa6: $20 $e0

	inc h                                            ; $4fa8: $24
	ld l, $30                                        ; $4fa9: $2e $30
	ldh a, [rAUD3HIGH]                               ; $4fab: $f0 $1e
	ld a, [hl+]                                      ; $4fad: $2a
	jr z, jr_00f_4fa0                                ; $4fae: $28 $f0

	ld [hl-], a                                      ; $4fb0: $32
	ld a, [hl+]                                      ; $4fb1: $2a
	jr nz, jr_00f_4fa4                               ; $4fb2: $20 $f0

	jr nc, jr_00f_4fe1                               ; $4fb4: $30 $2b

	ld bc, $0af1                                     ; $4fb6: $01 $f1 $0a

jr_00f_4fb9:
	ld a, [hl+]                                      ; $4fb9: $2a
	ld sp, hl                                        ; $4fba: $f9
	pop af                                           ; $4fbb: $f1

jr_00f_4fbc:
	ld [$012a], sp                                   ; $4fbc: $08 $2a $01
	pop hl                                           ; $4fbf: $e1
	inc b                                            ; $4fc0: $04
	jr z, jr_00f_4fbc                                ; $4fc1: $28 $f9

	pop hl                                           ; $4fc3: $e1
	ld [bc], a                                       ; $4fc4: $02
	jr z, @-$0d                                      ; $4fc5: $28 $f1

	pop hl                                           ; $4fc7: $e1

jr_00f_4fc8:
	nop                                              ; $4fc8: $00
	ld l, $f1                                        ; $4fc9: $2e $f1
	pop af                                           ; $4fcb: $f1
	ld b, $29                                        ; $4fcc: $06 $29
	ld sp, hl                                        ; $4fce: $f9
	pop hl                                           ; $4fcf: $e1
	ld c, $28                                        ; $4fd0: $0e $28
	ld bc, $04e1                                     ; $4fd2: $01 $e1 $04
	jr z, jr_00f_4fc8                                ; $4fd5: $28 $f1

	pop hl                                           ; $4fd7: $e1
	ld [hl+], a                                      ; $4fd8: $22
	ld l, $f1                                        ; $4fd9: $2e $f1
	pop af                                           ; $4fdb: $f1
	ld e, $2e                                        ; $4fdc: $1e $2e
	ld bc, $0af1                                     ; $4fde: $01 $f1 $0a

jr_00f_4fe1:
	ld a, [hl+]                                      ; $4fe1: $2a
	ld sp, hl                                        ; $4fe2: $f9
	pop af                                           ; $4fe3: $f1

jr_00f_4fe4:
	ld [de], a                                       ; $4fe4: $12
	dec hl                                           ; $4fe5: $2b
	ld bc, $04e1                                     ; $4fe6: $01 $e1 $04
	jr z, jr_00f_4fe4                                ; $4fe9: $28 $f9

	pop hl                                           ; $4feb: $e1
	ld c, $28                                        ; $4fec: $0e $28
	pop af                                           ; $4fee: $f1
	pop af                                           ; $4fef: $f1
	jr nz, jr_00f_5020                               ; $4ff0: $20 $2e

	ld bc, $0af1                                     ; $4ff2: $01 $f1 $0a
	ld a, [hl+]                                      ; $4ff5: $2a
	ld sp, hl                                        ; $4ff6: $f9
	pop af                                           ; $4ff7: $f1
	ld [de], a                                       ; $4ff8: $12
	ld a, [hl+]                                      ; $4ff9: $2a
	pop af                                           ; $4ffa: $f1
	pop hl                                           ; $4ffb: $e1
	ld [hl+], a                                      ; $4ffc: $22
	cpl                                              ; $4ffd: $2f
	db $ed                                           ; $4ffe: $ed
	reti                                             ; $4fff: $d9


jr_00f_5000:
	ld d, d                                          ; $5000: $52
	ld l, $e5                                        ; $5001: $2e $e5
	reti                                             ; $5003: $d9


	ld d, b                                          ; $5004: $50
	ld l, $01                                        ; $5005: $2e $01
	pop hl                                           ; $5007: $e1
	ld h, $28                                        ; $5008: $26 $28
	ld sp, hl                                        ; $500a: $f9
	pop hl                                           ; $500b: $e1
	inc h                                            ; $500c: $24
	jr z, jr_00f_5000                                ; $500d: $28 $f1

	pop af                                           ; $500f: $f1
	jr nz, @+$30                                     ; $5010: $20 $2e

	ld bc, $0af1                                     ; $5012: $01 $f1 $0a
	ld a, [hl+]                                      ; $5015: $2a
	ld sp, hl                                        ; $5016: $f9
	pop af                                           ; $5017: $f1

jr_00f_5018:
	ld [de], a                                       ; $5018: $12
	ld a, [hl+]                                      ; $5019: $2a
	pop af                                           ; $501a: $f1
	pop hl                                           ; $501b: $e1

jr_00f_501c:
	ld [hl+], a                                      ; $501c: $22
	cpl                                              ; $501d: $2f
	ld sp, hl                                        ; $501e: $f9
	pop hl                                           ; $501f: $e1

jr_00f_5020:
	ld c, $28                                        ; $5020: $0e $28
	ld bc, $04e1                                     ; $5022: $01 $e1 $04
	jr z, jr_00f_5018                                ; $5025: $28 $f1

	pop af                                           ; $5027: $f1
	db $10                                           ; $5028: $10
	jr z, jr_00f_501c                                ; $5029: $28 $f1

	pop hl                                           ; $502b: $e1
	inc c                                            ; $502c: $0c
	ld l, $01                                        ; $502d: $2e $01
	pop af                                           ; $502f: $f1
	ld a, [bc]                                       ; $5030: $0a
	ld a, [hl+]                                      ; $5031: $2a
	ld sp, hl                                        ; $5032: $f9
	pop af                                           ; $5033: $f1

jr_00f_5034:
	ld [de], a                                       ; $5034: $12
	dec hl                                           ; $5035: $2b
	ldh a, [$dd]                                     ; $5036: $f0 $dd
	ld d, h                                          ; $5038: $54
	ld l, $f9                                        ; $5039: $2e $f9
	pop hl                                           ; $503b: $e1
	ld c, $28                                        ; $503c: $0e $28
	ld bc, $04e1                                     ; $503e: $01 $e1 $04
	jr z, jr_00f_5034                                ; $5041: $28 $f1

	pop af                                           ; $5043: $f1
	db $10                                           ; $5044: $10
	jr z, jr_00f_5048                                ; $5045: $28 $01

	pop af                                           ; $5047: $f1

jr_00f_5048:
	ld a, [bc]                                       ; $5048: $0a
	ld a, [hl+]                                      ; $5049: $2a
	ld sp, hl                                        ; $504a: $f9
	pop af                                           ; $504b: $f1
	ld [de], a                                       ; $504c: $12
	ld a, [hl+]                                      ; $504d: $2a
	pop af                                           ; $504e: $f1
	pop hl                                           ; $504f: $e1
	ld [hl+], a                                      ; $5050: $22
	cpl                                              ; $5051: $2f
	ldh a, [$d9]                                     ; $5052: $f0 $d9
	ld d, h                                          ; $5054: $54
	ld l, $11                                        ; $5055: $2e $11
	reti                                             ; $5057: $d9


	ld c, [hl]                                       ; $5058: $4e
	ld a, [hl+]                                      ; $5059: $2a
	add hl, bc                                       ; $505a: $09
	reti                                             ; $505b: $d9


	ld c, h                                          ; $505c: $4c
	ld a, [hl+]                                      ; $505d: $2a
	ld bc, $1cf1                                     ; $505e: $01 $f1 $1c
	ld a, [hl+]                                      ; $5061: $2a
	ld sp, hl                                        ; $5062: $f9
	pop af                                           ; $5063: $f1

jr_00f_5064:
	ld a, [de]                                       ; $5064: $1a
	ld a, [hl+]                                      ; $5065: $2a
	ld bc, $18e1                                     ; $5066: $01 $e1 $18
	jr z, jr_00f_5064                                ; $5069: $28 $f9

	pop hl                                           ; $506b: $e1
	ld d, $28                                        ; $506c: $16 $28
	pop af                                           ; $506e: $f1
	pop hl                                           ; $506f: $e1
	inc d                                            ; $5070: $14
	jr z, jr_00f_507c                                ; $5071: $28 $09

	pop hl                                           ; $5073: $e1
	inc d                                            ; $5074: $14
	ld l, c                                          ; $5075: $69

jr_00f_5076:
	inc hl                                           ; $5076: $23
	ldh [c], a                                       ; $5077: $e2
	ld a, [hl+]                                      ; $5078: $2a
	ld l, $1b                                        ; $5079: $2e $1b
	ldh [c], a                                       ; $507b: $e2

jr_00f_507c:
	jr z, jr_00f_50ac                                ; $507c: $28 $2e

	jr z, @-$0c                                      ; $507e: $28 $f2

	jr nc, jr_00f_50b0                               ; $5080: $30 $2e

	jr nz, jr_00f_5076                               ; $5082: $20 $f2

	ld l, $2c                                        ; $5084: $2e $2c

jr_00f_5086:
	jr @-$0c                                         ; $5086: $18 $f2

	inc l                                            ; $5088: $2c
	cpl                                              ; $5089: $2f

jr_00f_508a:
	inc hl                                           ; $508a: $23
	ldh [c], a                                       ; $508b: $e2
	ld a, [hl+]                                      ; $508c: $2a
	ld l, $1b                                        ; $508d: $2e $1b
	ldh [c], a                                       ; $508f: $e2
	jr z, jr_00f_50c0                                ; $5090: $28 $2e

	jr z, jr_00f_5086                                ; $5092: $28 $f2

	jr nc, jr_00f_50c4                               ; $5094: $30 $2e

	jr nz, jr_00f_508a                               ; $5096: $20 $f2

	ld l, $2c                                        ; $5098: $2e $2c

jr_00f_509a:
	jr @-$0c                                         ; $509a: $18 $f2

	inc l                                            ; $509c: $2c
	cpl                                              ; $509d: $2f

jr_00f_509e:
	inc hl                                           ; $509e: $23
	ldh [c], a                                       ; $509f: $e2
	ld a, [hl+]                                      ; $50a0: $2a
	ld l, $1b                                        ; $50a1: $2e $1b
	ldh [c], a                                       ; $50a3: $e2
	jr z, jr_00f_50d4                                ; $50a4: $28 $2e

	jr z, jr_00f_509a                                ; $50a6: $28 $f2

	jr nc, jr_00f_50d8                               ; $50a8: $30 $2e

	jr nz, jr_00f_509e                               ; $50aa: $20 $f2

jr_00f_50ac:
	ld l, $2c                                        ; $50ac: $2e $2c
	jr @-$0c                                         ; $50ae: $18 $f2

jr_00f_50b0:
	inc l                                            ; $50b0: $2c
	cpl                                              ; $50b1: $2f
	dec h                                            ; $50b2: $25
	ldh [c], a                                       ; $50b3: $e2
	ld [hl], $2e                                     ; $50b4: $36 $2e
	dec e                                            ; $50b6: $1d
	ldh [c], a                                       ; $50b7: $e2
	inc [hl]                                         ; $50b8: $34
	ld l, $18                                        ; $50b9: $2e $18
	ldh a, [c]                                       ; $50bb: $f2
	jr c, jr_00f_50ea                                ; $50bc: $38 $2c

	dec d                                            ; $50be: $15
	ldh [c], a                                       ; $50bf: $e2

jr_00f_50c0:
	ld [hl-], a                                      ; $50c0: $32
	ld l, $28                                        ; $50c1: $2e $28
	ldh a, [c]                                       ; $50c3: $f2

jr_00f_50c4:
	jr nc, jr_00f_50f4                               ; $50c4: $30 $2e

jr_00f_50c6:
	jr nz, @-$0c                                     ; $50c6: $20 $f2

	ld l, $2d                                        ; $50c8: $2e $2d

jr_00f_50ca:
	inc hl                                           ; $50ca: $23
	ldh [c], a                                       ; $50cb: $e2
	ld a, [hl+]                                      ; $50cc: $2a
	ld l, $1b                                        ; $50cd: $2e $1b
	ldh [c], a                                       ; $50cf: $e2
	jr z, jr_00f_5100                                ; $50d0: $28 $2e

	jr z, jr_00f_50c6                                ; $50d2: $28 $f2

jr_00f_50d4:
	jr nc, jr_00f_5104                               ; $50d4: $30 $2e

	jr nz, jr_00f_50ca                               ; $50d6: $20 $f2

jr_00f_50d8:
	ld l, $2c                                        ; $50d8: $2e $2c

jr_00f_50da:
	jr @-$0c                                         ; $50da: $18 $f2

	inc l                                            ; $50dc: $2c
	cpl                                              ; $50dd: $2f

jr_00f_50de:
	inc hl                                           ; $50de: $23
	ldh [c], a                                       ; $50df: $e2
	ld a, [hl+]                                      ; $50e0: $2a
	ld l, $1b                                        ; $50e1: $2e $1b
	ldh [c], a                                       ; $50e3: $e2
	jr z, jr_00f_5114                                ; $50e4: $28 $2e

	jr z, jr_00f_50da                                ; $50e6: $28 $f2

	jr nc, jr_00f_5118                               ; $50e8: $30 $2e

jr_00f_50ea:
	jr nz, jr_00f_50de                               ; $50ea: $20 $f2

	ld l, $2c                                        ; $50ec: $2e $2c
	jr @-$0c                                         ; $50ee: $18 $f2

	inc l                                            ; $50f0: $2c
	cpl                                              ; $50f1: $2f

jr_00f_50f2:
	dec h                                            ; $50f2: $25
	ldh [c], a                                       ; $50f3: $e2

jr_00f_50f4:
	inc a                                            ; $50f4: $3c
	ld l, $1d                                        ; $50f5: $2e $1d
	ldh [c], a                                       ; $50f7: $e2
	ld a, [hl-]                                      ; $50f8: $3a
	ld l, $28                                        ; $50f9: $2e $28
	ldh a, [c]                                       ; $50fb: $f2
	jr nc, jr_00f_512c                               ; $50fc: $30 $2e

	jr nz, jr_00f_50f2                               ; $50fe: $20 $f2

jr_00f_5100:
	ld l, $2c                                        ; $5100: $2e $2c
	jr @-$0c                                         ; $5102: $18 $f2

jr_00f_5104:
	inc l                                            ; $5104: $2c
	cpl                                              ; $5105: $2f
	inc h                                            ; $5106: $24
	ldh a, [c]                                       ; $5107: $f2
	ld c, b                                          ; $5108: $48
	inc l                                            ; $5109: $2c
	inc e                                            ; $510a: $1c
	ldh a, [c]                                       ; $510b: $f2
	ld b, [hl]                                       ; $510c: $46
	inc l                                            ; $510d: $2c
	inc h                                            ; $510e: $24
	ldh [c], a                                       ; $510f: $e2
	ld b, b                                          ; $5110: $40
	ld l, $1c                                        ; $5111: $2e $1c
	ldh [c], a                                       ; $5113: $e2

jr_00f_5114:
	ld a, $2f                                        ; $5114: $3e $2f
	inc h                                            ; $5116: $24
	ldh a, [c]                                       ; $5117: $f2

jr_00f_5118:
	ld c, b                                          ; $5118: $48
	inc l                                            ; $5119: $2c
	inc e                                            ; $511a: $1c
	ldh a, [c]                                       ; $511b: $f2
	ld b, [hl]                                       ; $511c: $46
	inc l                                            ; $511d: $2c
	inc h                                            ; $511e: $24
	ldh [c], a                                       ; $511f: $e2
	ld b, b                                          ; $5120: $40
	ld l, $1c                                        ; $5121: $2e $1c
	ldh [c], a                                       ; $5123: $e2
	ld a, $2f                                        ; $5124: $3e $2f
	inc h                                            ; $5126: $24
	ldh a, [c]                                       ; $5127: $f2
	ld c, b                                          ; $5128: $48
	inc l                                            ; $5129: $2c
	inc e                                            ; $512a: $1c
	ldh a, [c]                                       ; $512b: $f2

jr_00f_512c:
	ld b, [hl]                                       ; $512c: $46
	inc l                                            ; $512d: $2c
	inc h                                            ; $512e: $24
	ldh [c], a                                       ; $512f: $e2
	ld b, b                                          ; $5130: $40
	ld l, $1c                                        ; $5131: $2e $1c
	ldh [c], a                                       ; $5133: $e2
	ld a, $2f                                        ; $5134: $3e $2f
	inc h                                            ; $5136: $24
	ldh a, [c]                                       ; $5137: $f2
	ld c, b                                          ; $5138: $48
	inc l                                            ; $5139: $2c
	inc e                                            ; $513a: $1c
	ldh a, [c]                                       ; $513b: $f2
	ld b, [hl]                                       ; $513c: $46
	inc l                                            ; $513d: $2c
	inc h                                            ; $513e: $24
	ldh [c], a                                       ; $513f: $e2
	ld b, h                                          ; $5140: $44
	ld l, $1c                                        ; $5141: $2e $1c
	ldh [c], a                                       ; $5143: $e2
	ld b, d                                          ; $5144: $42
	cpl                                              ; $5145: $2f
	inc h                                            ; $5146: $24
	ldh a, [c]                                       ; $5147: $f2
	ld c, b                                          ; $5148: $48
	inc l                                            ; $5149: $2c
	inc e                                            ; $514a: $1c
	ldh a, [c]                                       ; $514b: $f2
	ld b, [hl]                                       ; $514c: $46
	inc l                                            ; $514d: $2c
	inc h                                            ; $514e: $24
	ldh [c], a                                       ; $514f: $e2
	ld b, b                                          ; $5150: $40
	ld l, $1c                                        ; $5151: $2e $1c
	ldh [c], a                                       ; $5153: $e2
	ld a, $2f                                        ; $5154: $3e $2f
	inc h                                            ; $5156: $24
	ldh a, [c]                                       ; $5157: $f2
	ld c, b                                          ; $5158: $48
	inc l                                            ; $5159: $2c
	inc e                                            ; $515a: $1c
	ldh a, [c]                                       ; $515b: $f2
	ld b, [hl]                                       ; $515c: $46
	inc l                                            ; $515d: $2c
	inc h                                            ; $515e: $24
	ldh [c], a                                       ; $515f: $e2
	ld b, b                                          ; $5160: $40
	ld l, $1c                                        ; $5161: $2e $1c
	ldh [c], a                                       ; $5163: $e2
	ld a, $2f                                        ; $5164: $3e $2f
	inc h                                            ; $5166: $24
	ldh a, [c]                                       ; $5167: $f2
	ld c, b                                          ; $5168: $48
	inc l                                            ; $5169: $2c
	inc e                                            ; $516a: $1c
	ldh a, [c]                                       ; $516b: $f2
	ld b, [hl]                                       ; $516c: $46
	inc l                                            ; $516d: $2c
	inc h                                            ; $516e: $24
	ldh [c], a                                       ; $516f: $e2

jr_00f_5170:
	ld c, d                                          ; $5170: $4a
	ld l, $1c                                        ; $5171: $2e $1c
	ldh [c], a                                       ; $5173: $e2

jr_00f_5174:
	ld a, $2f                                        ; $5174: $3e $2f
	ld bc, $04e1                                     ; $5176: $01 $e1 $04
	jr z, jr_00f_5174                                ; $5179: $28 $f9

	pop hl                                           ; $517b: $e1
	ld [bc], a                                       ; $517c: $02
	jr z, jr_00f_5170                                ; $517d: $28 $f1

	pop hl                                           ; $517f: $e1
	nop                                              ; $5180: $00
	ld l, $01                                        ; $5181: $2e $01
	pop af                                           ; $5183: $f1
	ld a, [bc]                                       ; $5184: $0a
	ld a, [hl+]                                      ; $5185: $2a
	ld sp, hl                                        ; $5186: $f9
	pop af                                           ; $5187: $f1

jr_00f_5188:
	ld [$f12a], sp                                   ; $5188: $08 $2a $f1
	pop af                                           ; $518b: $f1
	ld b, $29                                        ; $518c: $06 $29
	ld sp, hl                                        ; $518e: $f9
	pop hl                                           ; $518f: $e1
	ld c, $28                                        ; $5190: $0e $28
	ld bc, $04e1                                     ; $5192: $01 $e1 $04
	jr z, jr_00f_5188                                ; $5195: $28 $f1

	pop hl                                           ; $5197: $e1
	ld [hl+], a                                      ; $5198: $22
	ld l, $f1                                        ; $5199: $2e $f1
	pop af                                           ; $519b: $f1
	ld e, $2e                                        ; $519c: $1e $2e
	ld bc, $0af1                                     ; $519e: $01 $f1 $0a
	ld a, [hl+]                                      ; $51a1: $2a
	ld sp, hl                                        ; $51a2: $f9
	pop af                                           ; $51a3: $f1

jr_00f_51a4:
	ld [de], a                                       ; $51a4: $12
	dec hl                                           ; $51a5: $2b
	ld bc, $04e1                                     ; $51a6: $01 $e1 $04
	jr z, jr_00f_51a4                                ; $51a9: $28 $f9

	pop hl                                           ; $51ab: $e1
	ld c, $28                                        ; $51ac: $0e $28
	pop af                                           ; $51ae: $f1
	pop af                                           ; $51af: $f1
	jr nz, jr_00f_51e0                               ; $51b0: $20 $2e

	ld bc, $0af1                                     ; $51b2: $01 $f1 $0a
	ld a, [hl+]                                      ; $51b5: $2a
	ld sp, hl                                        ; $51b6: $f9
	pop af                                           ; $51b7: $f1
	ld [de], a                                       ; $51b8: $12
	ld a, [hl+]                                      ; $51b9: $2a
	pop af                                           ; $51ba: $f1
	pop hl                                           ; $51bb: $e1
	ld [hl+], a                                      ; $51bc: $22
	cpl                                              ; $51bd: $2f
	db $ed                                           ; $51be: $ed
	ret c                                            ; $51bf: $d8

jr_00f_51c0:
	ld d, d                                          ; $51c0: $52
	ld l, $e5                                        ; $51c1: $2e $e5
	ret c                                            ; $51c3: $d8

	ld d, b                                          ; $51c4: $50
	ld l, $01                                        ; $51c5: $2e $01
	pop hl                                           ; $51c7: $e1
	ld h, $28                                        ; $51c8: $26 $28
	ld sp, hl                                        ; $51ca: $f9
	pop hl                                           ; $51cb: $e1
	inc h                                            ; $51cc: $24
	jr z, jr_00f_51c0                                ; $51cd: $28 $f1

	pop af                                           ; $51cf: $f1
	jr nz, @+$30                                     ; $51d0: $20 $2e

	ld bc, $0af1                                     ; $51d2: $01 $f1 $0a
	ld a, [hl+]                                      ; $51d5: $2a
	ld sp, hl                                        ; $51d6: $f9
	pop af                                           ; $51d7: $f1

jr_00f_51d8:
	ld [de], a                                       ; $51d8: $12
	ld a, [hl+]                                      ; $51d9: $2a
	pop af                                           ; $51da: $f1
	pop hl                                           ; $51db: $e1

jr_00f_51dc:
	ld [hl+], a                                      ; $51dc: $22
	cpl                                              ; $51dd: $2f
	ld sp, hl                                        ; $51de: $f9
	pop hl                                           ; $51df: $e1

jr_00f_51e0:
	ld c, $28                                        ; $51e0: $0e $28
	ld bc, $04e1                                     ; $51e2: $01 $e1 $04
	jr z, jr_00f_51d8                                ; $51e5: $28 $f1

	pop af                                           ; $51e7: $f1
	db $10                                           ; $51e8: $10
	jr z, jr_00f_51dc                                ; $51e9: $28 $f1

	pop hl                                           ; $51eb: $e1
	inc c                                            ; $51ec: $0c
	ld l, $01                                        ; $51ed: $2e $01
	pop af                                           ; $51ef: $f1
	ld a, [bc]                                       ; $51f0: $0a
	ld a, [hl+]                                      ; $51f1: $2a
	ld sp, hl                                        ; $51f2: $f9
	pop af                                           ; $51f3: $f1

jr_00f_51f4:
	ld [de], a                                       ; $51f4: $12
	dec hl                                           ; $51f5: $2b
	pop af                                           ; $51f6: $f1
	call c, $2e54                                    ; $51f7: $dc $54 $2e
	ld sp, hl                                        ; $51fa: $f9
	pop hl                                           ; $51fb: $e1
	ld c, $28                                        ; $51fc: $0e $28
	ld bc, $04e1                                     ; $51fe: $01 $e1 $04
	jr z, jr_00f_51f4                                ; $5201: $28 $f1

	pop af                                           ; $5203: $f1
	db $10                                           ; $5204: $10
	jr z, jr_00f_5208                                ; $5205: $28 $01

	pop af                                           ; $5207: $f1

jr_00f_5208:
	ld a, [bc]                                       ; $5208: $0a
	ld a, [hl+]                                      ; $5209: $2a
	ld sp, hl                                        ; $520a: $f9
	pop af                                           ; $520b: $f1
	ld [de], a                                       ; $520c: $12
	ld a, [hl+]                                      ; $520d: $2a
	pop af                                           ; $520e: $f1
	pop hl                                           ; $520f: $e1
	ld [hl+], a                                      ; $5210: $22
	cpl                                              ; $5211: $2f
	pop af                                           ; $5212: $f1
	call nc, $2e54                                   ; $5213: $d4 $54 $2e
	ld de, $4ed8                                     ; $5216: $11 $d8 $4e
	ld a, [hl+]                                      ; $5219: $2a
	add hl, bc                                       ; $521a: $09
	ret c                                            ; $521b: $d8

	ld c, h                                          ; $521c: $4c
	ld a, [hl+]                                      ; $521d: $2a
	ld bc, $1cf1                                     ; $521e: $01 $f1 $1c
	ld a, [hl+]                                      ; $5221: $2a
	ld sp, hl                                        ; $5222: $f9
	pop af                                           ; $5223: $f1

jr_00f_5224:
	ld a, [de]                                       ; $5224: $1a
	ld a, [hl+]                                      ; $5225: $2a
	ld bc, $18e1                                     ; $5226: $01 $e1 $18
	jr z, jr_00f_5224                                ; $5229: $28 $f9

	pop hl                                           ; $522b: $e1
	ld d, $28                                        ; $522c: $16 $28
	pop af                                           ; $522e: $f1
	pop hl                                           ; $522f: $e1
	inc d                                            ; $5230: $14
	jr z, jr_00f_523c                                ; $5231: $28 $09

	pop hl                                           ; $5233: $e1
	inc d                                            ; $5234: $14
	ld l, c                                          ; $5235: $69

jr_00f_5236:
	inc hl                                           ; $5236: $23
	ldh [c], a                                       ; $5237: $e2
	ld a, [hl+]                                      ; $5238: $2a
	ld l, $1b                                        ; $5239: $2e $1b
	ldh [c], a                                       ; $523b: $e2

jr_00f_523c:
	jr z, jr_00f_526c                                ; $523c: $28 $2e

	jr z, @-$0c                                      ; $523e: $28 $f2

	jr nc, jr_00f_5270                               ; $5240: $30 $2e

	jr nz, jr_00f_5236                               ; $5242: $20 $f2

	ld l, $2c                                        ; $5244: $2e $2c

jr_00f_5246:
	jr @-$0c                                         ; $5246: $18 $f2

	inc l                                            ; $5248: $2c
	cpl                                              ; $5249: $2f

jr_00f_524a:
	inc hl                                           ; $524a: $23
	ldh [c], a                                       ; $524b: $e2
	ld a, [hl+]                                      ; $524c: $2a
	ld l, $1b                                        ; $524d: $2e $1b
	ldh [c], a                                       ; $524f: $e2
	jr z, jr_00f_5280                                ; $5250: $28 $2e

	jr z, jr_00f_5246                                ; $5252: $28 $f2

	jr nc, jr_00f_5284                               ; $5254: $30 $2e

	jr nz, jr_00f_524a                               ; $5256: $20 $f2

	ld l, $2c                                        ; $5258: $2e $2c

jr_00f_525a:
	jr @-$0c                                         ; $525a: $18 $f2

	inc l                                            ; $525c: $2c
	cpl                                              ; $525d: $2f

jr_00f_525e:
	inc hl                                           ; $525e: $23
	ldh [c], a                                       ; $525f: $e2
	ld a, [hl+]                                      ; $5260: $2a
	ld l, $1b                                        ; $5261: $2e $1b
	ldh [c], a                                       ; $5263: $e2
	jr z, jr_00f_5294                                ; $5264: $28 $2e

	jr z, jr_00f_525a                                ; $5266: $28 $f2

	jr nc, jr_00f_5298                               ; $5268: $30 $2e

	jr nz, jr_00f_525e                               ; $526a: $20 $f2

jr_00f_526c:
	ld l, $2c                                        ; $526c: $2e $2c
	jr @-$0c                                         ; $526e: $18 $f2

jr_00f_5270:
	inc l                                            ; $5270: $2c
	cpl                                              ; $5271: $2f
	dec h                                            ; $5272: $25
	ldh [c], a                                       ; $5273: $e2
	ld [hl], $2e                                     ; $5274: $36 $2e
	dec e                                            ; $5276: $1d
	ldh [c], a                                       ; $5277: $e2
	inc [hl]                                         ; $5278: $34
	ld l, $18                                        ; $5279: $2e $18
	ldh a, [c]                                       ; $527b: $f2
	jr c, jr_00f_52aa                                ; $527c: $38 $2c

	dec d                                            ; $527e: $15
	ldh [c], a                                       ; $527f: $e2

jr_00f_5280:
	ld [hl-], a                                      ; $5280: $32
	ld l, $28                                        ; $5281: $2e $28
	ldh a, [c]                                       ; $5283: $f2

jr_00f_5284:
	jr nc, jr_00f_52b4                               ; $5284: $30 $2e

jr_00f_5286:
	jr nz, @-$0c                                     ; $5286: $20 $f2

	ld l, $2d                                        ; $5288: $2e $2d

jr_00f_528a:
	inc hl                                           ; $528a: $23
	ldh [c], a                                       ; $528b: $e2
	ld a, [hl+]                                      ; $528c: $2a
	ld l, $1b                                        ; $528d: $2e $1b
	ldh [c], a                                       ; $528f: $e2
	jr z, jr_00f_52c0                                ; $5290: $28 $2e

	jr z, jr_00f_5286                                ; $5292: $28 $f2

jr_00f_5294:
	jr nc, jr_00f_52c4                               ; $5294: $30 $2e

	jr nz, jr_00f_528a                               ; $5296: $20 $f2

jr_00f_5298:
	ld l, $2c                                        ; $5298: $2e $2c

jr_00f_529a:
	jr @-$0c                                         ; $529a: $18 $f2

	inc l                                            ; $529c: $2c
	cpl                                              ; $529d: $2f

jr_00f_529e:
	inc hl                                           ; $529e: $23
	ldh [c], a                                       ; $529f: $e2
	ld a, [hl+]                                      ; $52a0: $2a
	ld l, $1b                                        ; $52a1: $2e $1b
	ldh [c], a                                       ; $52a3: $e2
	jr z, jr_00f_52d4                                ; $52a4: $28 $2e

	jr z, jr_00f_529a                                ; $52a6: $28 $f2

	jr nc, jr_00f_52d8                               ; $52a8: $30 $2e

jr_00f_52aa:
	jr nz, jr_00f_529e                               ; $52aa: $20 $f2

	ld l, $2c                                        ; $52ac: $2e $2c
	jr @-$0c                                         ; $52ae: $18 $f2

	inc l                                            ; $52b0: $2c
	cpl                                              ; $52b1: $2f

jr_00f_52b2:
	dec h                                            ; $52b2: $25
	ldh [c], a                                       ; $52b3: $e2

jr_00f_52b4:
	inc a                                            ; $52b4: $3c
	ld l, $1d                                        ; $52b5: $2e $1d
	ldh [c], a                                       ; $52b7: $e2
	ld a, [hl-]                                      ; $52b8: $3a
	ld l, $28                                        ; $52b9: $2e $28
	ldh a, [c]                                       ; $52bb: $f2
	jr nc, jr_00f_52ec                               ; $52bc: $30 $2e

	jr nz, jr_00f_52b2                               ; $52be: $20 $f2

jr_00f_52c0:
	ld l, $2c                                        ; $52c0: $2e $2c
	jr @-$0c                                         ; $52c2: $18 $f2

jr_00f_52c4:
	inc l                                            ; $52c4: $2c
	cpl                                              ; $52c5: $2f
	inc h                                            ; $52c6: $24
	ldh a, [c]                                       ; $52c7: $f2
	ld c, b                                          ; $52c8: $48
	inc l                                            ; $52c9: $2c
	inc e                                            ; $52ca: $1c
	ldh a, [c]                                       ; $52cb: $f2
	ld b, [hl]                                       ; $52cc: $46
	inc l                                            ; $52cd: $2c
	inc h                                            ; $52ce: $24
	ldh [c], a                                       ; $52cf: $e2
	ld b, b                                          ; $52d0: $40
	ld l, $1c                                        ; $52d1: $2e $1c
	ldh [c], a                                       ; $52d3: $e2

jr_00f_52d4:
	ld a, $2f                                        ; $52d4: $3e $2f
	inc h                                            ; $52d6: $24
	ldh a, [c]                                       ; $52d7: $f2

jr_00f_52d8:
	ld c, b                                          ; $52d8: $48
	inc l                                            ; $52d9: $2c
	inc e                                            ; $52da: $1c
	ldh a, [c]                                       ; $52db: $f2
	ld b, [hl]                                       ; $52dc: $46
	inc l                                            ; $52dd: $2c
	inc h                                            ; $52de: $24
	ldh [c], a                                       ; $52df: $e2
	ld b, b                                          ; $52e0: $40
	ld l, $1c                                        ; $52e1: $2e $1c
	ldh [c], a                                       ; $52e3: $e2
	ld a, $2f                                        ; $52e4: $3e $2f
	inc h                                            ; $52e6: $24
	ldh a, [c]                                       ; $52e7: $f2
	ld c, b                                          ; $52e8: $48

Call_00f_52e9:
	inc l                                            ; $52e9: $2c
	inc e                                            ; $52ea: $1c
	ldh a, [c]                                       ; $52eb: $f2

jr_00f_52ec:
	ld b, [hl]                                       ; $52ec: $46
	inc l                                            ; $52ed: $2c
	inc h                                            ; $52ee: $24
	ldh [c], a                                       ; $52ef: $e2
	ld b, b                                          ; $52f0: $40
	ld l, $1c                                        ; $52f1: $2e $1c
	ldh [c], a                                       ; $52f3: $e2
	ld a, $2f                                        ; $52f4: $3e $2f
	inc h                                            ; $52f6: $24
	ldh a, [c]                                       ; $52f7: $f2
	ld c, b                                          ; $52f8: $48
	inc l                                            ; $52f9: $2c
	inc e                                            ; $52fa: $1c
	ldh a, [c]                                       ; $52fb: $f2
	ld b, [hl]                                       ; $52fc: $46
	inc l                                            ; $52fd: $2c
	inc h                                            ; $52fe: $24
	ldh [c], a                                       ; $52ff: $e2
	ld b, h                                          ; $5300: $44
	ld l, $1c                                        ; $5301: $2e $1c
	ldh [c], a                                       ; $5303: $e2
	ld b, d                                          ; $5304: $42
	cpl                                              ; $5305: $2f
	inc h                                            ; $5306: $24
	ldh a, [c]                                       ; $5307: $f2
	ld c, b                                          ; $5308: $48
	inc l                                            ; $5309: $2c
	inc e                                            ; $530a: $1c
	ldh a, [c]                                       ; $530b: $f2
	ld b, [hl]                                       ; $530c: $46
	inc l                                            ; $530d: $2c
	inc h                                            ; $530e: $24
	ldh [c], a                                       ; $530f: $e2
	ld b, b                                          ; $5310: $40
	ld l, $1c                                        ; $5311: $2e $1c
	ldh [c], a                                       ; $5313: $e2
	ld a, $2f                                        ; $5314: $3e $2f
	inc h                                            ; $5316: $24
	ldh a, [c]                                       ; $5317: $f2
	ld c, b                                          ; $5318: $48
	inc l                                            ; $5319: $2c
	inc e                                            ; $531a: $1c
	ldh a, [c]                                       ; $531b: $f2
	ld b, [hl]                                       ; $531c: $46
	inc l                                            ; $531d: $2c
	inc h                                            ; $531e: $24
	ldh [c], a                                       ; $531f: $e2
	ld b, b                                          ; $5320: $40
	ld l, $1c                                        ; $5321: $2e $1c
	ldh [c], a                                       ; $5323: $e2
	ld a, $2f                                        ; $5324: $3e $2f
	inc h                                            ; $5326: $24
	ldh a, [c]                                       ; $5327: $f2
	ld c, b                                          ; $5328: $48
	inc l                                            ; $5329: $2c
	inc e                                            ; $532a: $1c
	ldh a, [c]                                       ; $532b: $f2
	ld b, [hl]                                       ; $532c: $46
	inc l                                            ; $532d: $2c
	inc h                                            ; $532e: $24
	ldh [c], a                                       ; $532f: $e2
	ld c, d                                          ; $5330: $4a
	ld l, $1c                                        ; $5331: $2e $1c
	ldh [c], a                                       ; $5333: $e2
	ld a, $2f                                        ; $5334: $3e $2f
	nop                                              ; $5336: $00
	ldh a, [c]                                       ; $5337: $f2
	ld b, $28                                        ; $5338: $06 $28
	ld hl, sp-$0e                                    ; $533a: $f8 $f2
	inc b                                            ; $533c: $04
	jr z, jr_00f_533f                                ; $533d: $28 $00

jr_00f_533f:
	ldh [c], a                                       ; $533f: $e2
	ld a, [de]                                       ; $5340: $1a
	jr z, @-$06                                      ; $5341: $28 $f8

jr_00f_5343:
	ldh [c], a                                       ; $5343: $e2
	jr jr_00f_536f                                   ; $5344: $18 $29

	nop                                              ; $5346: $00
	ldh [c], a                                       ; $5347: $e2
	ld [bc], a                                       ; $5348: $02
	jr z, jr_00f_5343                                ; $5349: $28 $f8

	ldh [c], a                                       ; $534b: $e2
	nop                                              ; $534c: $00
	jr z, jr_00f_534f                                ; $534d: $28 $00

jr_00f_534f:
	ldh a, [c]                                       ; $534f: $f2
	ld b, $28                                        ; $5350: $06 $28
	ld hl, sp-$0e                                    ; $5352: $f8 $f2
	inc b                                            ; $5354: $04
	add hl, hl                                       ; $5355: $29
	nop                                              ; $5356: $00

jr_00f_5357:
	ldh a, [c]                                       ; $5357: $f2
	ld d, $28                                        ; $5358: $16 $28
	ld hl, sp-$0e                                    ; $535a: $f8 $f2
	inc d                                            ; $535c: $14
	jr z, jr_00f_5357                                ; $535d: $28 $f8

	ldh [c], a                                       ; $535f: $e2
	nop                                              ; $5360: $00
	jr z, jr_00f_5363                                ; $5361: $28 $00

jr_00f_5363:
	ldh [c], a                                       ; $5363: $e2
	ld [bc], a                                       ; $5364: $02
	add hl, hl                                       ; $5365: $29
	ldh a, [$da]                                     ; $5366: $f0 $da
	ld c, [hl]                                       ; $5368: $4e
	ld l, $e8                                        ; $5369: $2e $e8

jr_00f_536b:
	jp c, $2e4c                                      ; $536b: $da $4c $2e

	nop                                              ; $536e: $00

jr_00f_536f:
	ldh [c], a                                       ; $536f: $e2
	ld a, [bc]                                       ; $5370: $0a
	jr z, jr_00f_536b                                ; $5371: $28 $f8

	ldh [c], a                                       ; $5373: $e2
	ld [$0028], sp                                   ; $5374: $08 $28 $00
	ldh a, [c]                                       ; $5377: $f2
	ld d, $28                                        ; $5378: $16 $28
	ld hl, sp-$0e                                    ; $537a: $f8 $f2
	inc d                                            ; $537c: $14
	add hl, hl                                       ; $537d: $29
	nop                                              ; $537e: $00

jr_00f_537f:
	ldh a, [c]                                       ; $537f: $f2
	ld d, $28                                        ; $5380: $16 $28
	ld hl, sp-$0e                                    ; $5382: $f8 $f2
	inc d                                            ; $5384: $14
	jr z, jr_00f_537f                                ; $5385: $28 $f8

	ldh [c], a                                       ; $5387: $e2
	nop                                              ; $5388: $00
	jr z, jr_00f_538b                                ; $5389: $28 $00

jr_00f_538b:
	ldh [c], a                                       ; $538b: $e2
	ld [bc], a                                       ; $538c: $02
	add hl, hl                                       ; $538d: $29
	db $10                                           ; $538e: $10
	ret c                                            ; $538f: $d8

	ld d, d                                          ; $5390: $52
	jr z, @+$0a                                      ; $5391: $28 $08

	ret c                                            ; $5393: $d8

	ld d, b                                          ; $5394: $50
	jr z, jr_00f_5397                                ; $5395: $28 $00

jr_00f_5397:
	ldh [c], a                                       ; $5397: $e2
	ld c, $28                                        ; $5398: $0e $28

jr_00f_539a:
	ld hl, sp-$1e                                    ; $539a: $f8 $e2
	inc c                                            ; $539c: $0c
	jr z, jr_00f_539f                                ; $539d: $28 $00

jr_00f_539f:
	ldh a, [c]                                       ; $539f: $f2
	ld d, $28                                        ; $53a0: $16 $28
	ld hl, sp-$0e                                    ; $53a2: $f8 $f2
	inc d                                            ; $53a4: $14
	add hl, hl                                       ; $53a5: $29

jr_00f_53a6:
	jr nz, jr_00f_539a                               ; $53a6: $20 $f2

	ld [hl+], a                                      ; $53a8: $22
	inc l                                            ; $53a9: $2c

jr_00f_53aa:
	jr @-$0c                                         ; $53aa: $18 $f2

	jr nz, jr_00f_53da                               ; $53ac: $20 $2c

	jr nz, @-$1c                                     ; $53ae: $20 $e2

	ld e, $2e                                        ; $53b0: $1e $2e

jr_00f_53b2:
	jr @-$1c                                         ; $53b2: $18 $e2

	inc e                                            ; $53b4: $1c
	cpl                                              ; $53b5: $2f
	jr nz, jr_00f_53aa                               ; $53b6: $20 $f2

	ld [hl+], a                                      ; $53b8: $22
	inc l                                            ; $53b9: $2c

jr_00f_53ba:
	jr nz, @-$1c                                     ; $53ba: $20 $e2

	ld e, $2e                                        ; $53bc: $1e $2e

jr_00f_53be:
	jr jr_00f_53b2                                   ; $53be: $18 $f2

	jr nz, jr_00f_53ee                               ; $53c0: $20 $2c

jr_00f_53c2:
	jr jr_00f_53a6                                   ; $53c2: $18 $e2

	inc e                                            ; $53c4: $1c
	cpl                                              ; $53c5: $2f
	jr nz, jr_00f_53ba                               ; $53c6: $20 $f2

	ld [hl+], a                                      ; $53c8: $22
	inc l                                            ; $53c9: $2c

jr_00f_53ca:
	jr jr_00f_53be                                   ; $53ca: $18 $f2

	jr nz, jr_00f_53fa                               ; $53cc: $20 $2c

jr_00f_53ce:
	jr nz, jr_00f_53b2                               ; $53ce: $20 $e2

	ld [hl-], a                                      ; $53d0: $32
	ld l, $18                                        ; $53d1: $2e $18
	ldh [c], a                                       ; $53d3: $e2
	jr nc, jr_00f_5405                               ; $53d4: $30 $2f

jr_00f_53d6:
	jr nz, jr_00f_53ca                               ; $53d6: $20 $f2

	ld a, [hl+]                                      ; $53d8: $2a
	inc l                                            ; $53d9: $2c

jr_00f_53da:
	jr jr_00f_53ce                                   ; $53da: $18 $f2

	jr z, jr_00f_540a                                ; $53dc: $28 $2c

jr_00f_53de:
	jr nz, jr_00f_53c2                               ; $53de: $20 $e2

	ld [hl-], a                                      ; $53e0: $32
	ld l, $18                                        ; $53e1: $2e $18
	ldh [c], a                                       ; $53e3: $e2
	jr nc, jr_00f_5415                               ; $53e4: $30 $2f

jr_00f_53e6:
	jr nz, jr_00f_53da                               ; $53e6: $20 $f2

	ld [hl+], a                                      ; $53e8: $22
	inc l                                            ; $53e9: $2c

jr_00f_53ea:
	jr jr_00f_53de                                   ; $53ea: $18 $f2

	jr nz, jr_00f_541a                               ; $53ec: $20 $2c

jr_00f_53ee:
	jr nz, @-$1c                                     ; $53ee: $20 $e2

	ld l, $2e                                        ; $53f0: $2e $2e

jr_00f_53f2:
	jr jr_00f_53d6                                   ; $53f2: $18 $e2

	inc l                                            ; $53f4: $2c
	cpl                                              ; $53f5: $2f

jr_00f_53f6:
	jr nz, jr_00f_53ea                               ; $53f6: $20 $f2

	ld a, [hl+]                                      ; $53f8: $2a
	inc l                                            ; $53f9: $2c

jr_00f_53fa:
	jr jr_00f_53ee                                   ; $53fa: $18 $f2

	jr z, jr_00f_542a                                ; $53fc: $28 $2c

jr_00f_53fe:
	jr nz, @-$1c                                     ; $53fe: $20 $e2

	ld l, $2e                                        ; $5400: $2e $2e
	jr jr_00f_53e6                                   ; $5402: $18 $e2

	inc l                                            ; $5404: $2c

jr_00f_5405:
	cpl                                              ; $5405: $2f

jr_00f_5406:
	jr nz, jr_00f_53fa                               ; $5406: $20 $f2

	ld a, [hl-]                                      ; $5408: $3a
	inc l                                            ; $5409: $2c

jr_00f_540a:
	jr jr_00f_53fe                                   ; $540a: $18 $f2

	jr c, jr_00f_543a                                ; $540c: $38 $2c

	jr nz, jr_00f_53f2                               ; $540e: $20 $e2

	ld [hl], $2a                                     ; $5410: $36 $2a

jr_00f_5412:
	jr jr_00f_53f6                                   ; $5412: $18 $e2

	inc [hl]                                         ; $5414: $34

jr_00f_5415:
	dec hl                                           ; $5415: $2b

jr_00f_5416:
	jr nz, jr_00f_540a                               ; $5416: $20 $f2

	ld a, [hl-]                                      ; $5418: $3a
	inc l                                            ; $5419: $2c

jr_00f_541a:
	jr nz, jr_00f_53fe                               ; $541a: $20 $e2

	ld [hl], $2a                                     ; $541c: $36 $2a

jr_00f_541e:
	jr jr_00f_5412                                   ; $541e: $18 $f2

	jr c, jr_00f_544e                                ; $5420: $38 $2c

jr_00f_5422:
	jr jr_00f_5406                                   ; $5422: $18 $e2

	inc [hl]                                         ; $5424: $34
	dec hl                                           ; $5425: $2b

jr_00f_5426:
	jr nz, jr_00f_541a                               ; $5426: $20 $f2

	ld a, [hl-]                                      ; $5428: $3a
	inc l                                            ; $5429: $2c

jr_00f_542a:
	jr jr_00f_541e                                   ; $542a: $18 $f2

	jr c, jr_00f_545a                                ; $542c: $38 $2c

jr_00f_542e:
	jr nz, jr_00f_5412                               ; $542e: $20 $e2

	ld b, d                                          ; $5430: $42
	ld a, [hl+]                                      ; $5431: $2a

jr_00f_5432:
	jr jr_00f_5416                                   ; $5432: $18 $e2

	ld b, b                                          ; $5434: $40
	dec hl                                           ; $5435: $2b

jr_00f_5436:
	jr nz, jr_00f_542a                               ; $5436: $20 $f2

	ld b, [hl]                                       ; $5438: $46
	inc l                                            ; $5439: $2c

jr_00f_543a:
	jr jr_00f_542e                                   ; $543a: $18 $f2

	ld b, h                                          ; $543c: $44
	inc l                                            ; $543d: $2c

jr_00f_543e:
	jr nz, jr_00f_5422                               ; $543e: $20 $e2

	ld b, d                                          ; $5440: $42
	ld a, [hl+]                                      ; $5441: $2a

jr_00f_5442:
	jr jr_00f_5426                                   ; $5442: $18 $e2

	ld b, b                                          ; $5444: $40
	dec hl                                           ; $5445: $2b

jr_00f_5446:
	jr nz, jr_00f_543a                               ; $5446: $20 $f2

	ld a, [hl-]                                      ; $5448: $3a
	inc l                                            ; $5449: $2c

jr_00f_544a:
	jr jr_00f_543e                                   ; $544a: $18 $f2

	jr c, @+$2e                                      ; $544c: $38 $2c

jr_00f_544e:
	jr nz, jr_00f_5432                               ; $544e: $20 $e2

	ld a, $2a                                        ; $5450: $3e $2a
	jr jr_00f_5436                                   ; $5452: $18 $e2

	inc a                                            ; $5454: $3c
	dec hl                                           ; $5455: $2b
	jr nz, jr_00f_544a                               ; $5456: $20 $f2

	ld c, d                                          ; $5458: $4a
	inc l                                            ; $5459: $2c

jr_00f_545a:
	jr jr_00f_544e                                   ; $545a: $18 $f2

	ld c, b                                          ; $545c: $48
	inc l                                            ; $545d: $2c
	jr nz, jr_00f_5442                               ; $545e: $20 $e2

	ld a, $2a                                        ; $5460: $3e $2a
	jr jr_00f_5446                                   ; $5462: $18 $e2

	inc a                                            ; $5464: $3c
	dec hl                                           ; $5465: $2b
	nop                                              ; $5466: $00
	ldh [c], a                                       ; $5467: $e2
	ld a, [de]                                       ; $5468: $1a
	jr z, @-$06                                      ; $5469: $28 $f8

	ldh [c], a                                       ; $546b: $e2
	jr jr_00f_5496                                   ; $546c: $18 $28

	nop                                              ; $546e: $00
	ldh a, [c]                                       ; $546f: $f2
	ld b, $28                                        ; $5470: $06 $28
	ld hl, sp-$0e                                    ; $5472: $f8 $f2
	inc b                                            ; $5474: $04
	add hl, hl                                       ; $5475: $29
	nop                                              ; $5476: $00
	ldh [c], a                                       ; $5477: $e2
	ld [bc], a                                       ; $5478: $02
	jr z, @-$06                                      ; $5479: $28 $f8

	ldh [c], a                                       ; $547b: $e2
	nop                                              ; $547c: $00
	jr z, jr_00f_547f                                ; $547d: $28 $00

jr_00f_547f:
	ldh a, [c]                                       ; $547f: $f2
	ld b, $28                                        ; $5480: $06 $28
	ld hl, sp-$0e                                    ; $5482: $f8 $f2
	inc b                                            ; $5484: $04
	add hl, hl                                       ; $5485: $29
	nop                                              ; $5486: $00

jr_00f_5487:
	ldh a, [c]                                       ; $5487: $f2
	ld [de], a                                       ; $5488: $12
	jr z, @-$06                                      ; $5489: $28 $f8

	ldh a, [c]                                       ; $548b: $f2
	db $10                                           ; $548c: $10
	jr z, jr_00f_5487                                ; $548d: $28 $f8

	ldh [c], a                                       ; $548f: $e2
	nop                                              ; $5490: $00
	jr z, jr_00f_5493                                ; $5491: $28 $00

jr_00f_5493:
	ldh [c], a                                       ; $5493: $e2
	ld [bc], a                                       ; $5494: $02
	add hl, hl                                       ; $5495: $29

jr_00f_5496:
	nop                                              ; $5496: $00
	ldh [c], a                                       ; $5497: $e2
	ld a, [bc]                                       ; $5498: $0a
	jr z, jr_00f_5493                                ; $5499: $28 $f8

	ldh [c], a                                       ; $549b: $e2
	ld [$f028], sp                                   ; $549c: $08 $28 $f0
	jp c, $2e4e                                      ; $549f: $da $4e $2e

	add sp, -$26                                     ; $54a2: $e8 $da
	ld c, h                                          ; $54a4: $4c
	ld l, $00                                        ; $54a5: $2e $00
	ldh a, [c]                                       ; $54a7: $f2
	ld [de], a                                       ; $54a8: $12
	jr z, @-$06                                      ; $54a9: $28 $f8

jr_00f_54ab:
	ldh a, [c]                                       ; $54ab: $f2
	db $10                                           ; $54ac: $10
	add hl, hl                                       ; $54ad: $29
	nop                                              ; $54ae: $00

jr_00f_54af:
	ldh a, [c]                                       ; $54af: $f2
	ld [de], a                                       ; $54b0: $12
	jr z, jr_00f_54ab                                ; $54b1: $28 $f8

	ldh a, [c]                                       ; $54b3: $f2
	db $10                                           ; $54b4: $10
	jr z, jr_00f_54af                                ; $54b5: $28 $f8

	ldh [c], a                                       ; $54b7: $e2
	nop                                              ; $54b8: $00
	jr z, jr_00f_54bb                                ; $54b9: $28 $00

jr_00f_54bb:
	ldh [c], a                                       ; $54bb: $e2
	ld [bc], a                                       ; $54bc: $02
	add hl, hl                                       ; $54bd: $29
	db $10                                           ; $54be: $10
	jp c, $2852                                      ; $54bf: $da $52 $28

jr_00f_54c2:
	ld [$50da], sp                                   ; $54c2: $08 $da $50
	jr z, jr_00f_54c7                                ; $54c5: $28 $00

jr_00f_54c7:
	ldh [c], a                                       ; $54c7: $e2
	ld c, $28                                        ; $54c8: $0e $28

jr_00f_54ca:
	ld hl, sp-$1e                                    ; $54ca: $f8 $e2
	inc c                                            ; $54cc: $0c
	jr z, jr_00f_54cf                                ; $54cd: $28 $00

jr_00f_54cf:
	ldh a, [c]                                       ; $54cf: $f2
	ld [de], a                                       ; $54d0: $12
	jr z, @-$06                                      ; $54d1: $28 $f8

	ldh a, [c]                                       ; $54d3: $f2
	db $10                                           ; $54d4: $10
	add hl, hl                                       ; $54d5: $29

jr_00f_54d6:
	jr nz, jr_00f_54ca                               ; $54d6: $20 $f2

	ld [hl+], a                                      ; $54d8: $22
	inc l                                            ; $54d9: $2c

jr_00f_54da:
	jr @-$0c                                         ; $54da: $18 $f2

	jr nz, jr_00f_550a                               ; $54dc: $20 $2c

	jr nz, jr_00f_54c2                               ; $54de: $20 $e2

	ld e, $2e                                        ; $54e0: $1e $2e

jr_00f_54e2:
	jr @-$1c                                         ; $54e2: $18 $e2

	inc e                                            ; $54e4: $1c
	cpl                                              ; $54e5: $2f
	jr nz, jr_00f_54da                               ; $54e6: $20 $f2

	ld [hl+], a                                      ; $54e8: $22
	inc l                                            ; $54e9: $2c
	jr nz, @-$1c                                     ; $54ea: $20 $e2

	ld e, $2e                                        ; $54ec: $1e $2e
	jr jr_00f_54e2                                   ; $54ee: $18 $f2

	jr nz, jr_00f_551e                               ; $54f0: $20 $2c

jr_00f_54f2:
	jr jr_00f_54d6                                   ; $54f2: $18 $e2

	inc e                                            ; $54f4: $1c
	cpl                                              ; $54f5: $2f

jr_00f_54f6:
	jr nz, jr_00f_54da                               ; $54f6: $20 $e2

	ld [hl-], a                                      ; $54f8: $32
	ld l, $18                                        ; $54f9: $2e $18
	ldh [c], a                                       ; $54fb: $e2
	jr nc, jr_00f_552c                               ; $54fc: $30 $2e

jr_00f_54fe:
	jr nz, jr_00f_54f2                               ; $54fe: $20 $f2

	ld [hl+], a                                      ; $5500: $22
	inc l                                            ; $5501: $2c

jr_00f_5502:
	jr jr_00f_54f6                                   ; $5502: $18 $f2

	jr nz, @+$2f                                     ; $5504: $20 $2d

jr_00f_5506:
	jr nz, @-$0c                                     ; $5506: $20 $f2

	ld h, $2c                                        ; $5508: $26 $2c

jr_00f_550a:
	jr jr_00f_54fe                                   ; $550a: $18 $f2

	inc h                                            ; $550c: $24
	inc l                                            ; $550d: $2c

jr_00f_550e:
	jr nz, jr_00f_54f2                               ; $550e: $20 $e2

	ld [hl-], a                                      ; $5510: $32
	ld l, $18                                        ; $5511: $2e $18
	ldh [c], a                                       ; $5513: $e2
	jr nc, jr_00f_5545                               ; $5514: $30 $2f

	jr nz, jr_00f_550a                               ; $5516: $20 $f2

	ld [hl+], a                                      ; $5518: $22
	inc l                                            ; $5519: $2c
	jr jr_00f_550e                                   ; $551a: $18 $f2

	jr nz, jr_00f_554a                               ; $551c: $20 $2c

jr_00f_551e:
	jr nz, jr_00f_5502                               ; $551e: $20 $e2

	ld l, $2e                                        ; $5520: $2e $2e

jr_00f_5522:
	jr jr_00f_5506                                   ; $5522: $18 $e2

	inc l                                            ; $5524: $2c
	cpl                                              ; $5525: $2f

jr_00f_5526:
	jr nz, jr_00f_550a                               ; $5526: $20 $e2

	ld l, $2e                                        ; $5528: $2e $2e

jr_00f_552a:
	jr jr_00f_550e                                   ; $552a: $18 $e2

jr_00f_552c:
	inc l                                            ; $552c: $2c
	ld l, $20                                        ; $552d: $2e $20
	ldh a, [c]                                       ; $552f: $f2
	ld h, $2c                                        ; $5530: $26 $2c
	jr jr_00f_5526                                   ; $5532: $18 $f2

	inc h                                            ; $5534: $24
	dec l                                            ; $5535: $2d

jr_00f_5536:
	jr nz, jr_00f_552a                               ; $5536: $20 $f2

	ld a, [hl-]                                      ; $5538: $3a
	inc l                                            ; $5539: $2c

jr_00f_553a:
	jr @-$0c                                         ; $553a: $18 $f2

	jr c, jr_00f_556a                                ; $553c: $38 $2c

jr_00f_553e:
	jr nz, jr_00f_5522                               ; $553e: $20 $e2

	ld [hl], $2a                                     ; $5540: $36 $2a

jr_00f_5542:
	jr jr_00f_5526                                   ; $5542: $18 $e2

	inc [hl]                                         ; $5544: $34

jr_00f_5545:
	dec hl                                           ; $5545: $2b
	jr nz, jr_00f_553a                               ; $5546: $20 $f2

	ld a, [hl-]                                      ; $5548: $3a
	inc l                                            ; $5549: $2c

jr_00f_554a:
	jr nz, @-$1c                                     ; $554a: $20 $e2

	ld [hl], $2a                                     ; $554c: $36 $2a
	jr jr_00f_5542                                   ; $554e: $18 $f2

	jr c, jr_00f_557e                                ; $5550: $38 $2c

jr_00f_5552:
	jr jr_00f_5536                                   ; $5552: $18 $e2

	inc [hl]                                         ; $5554: $34
	dec hl                                           ; $5555: $2b

jr_00f_5556:
	jr nz, jr_00f_553a                               ; $5556: $20 $e2

	ld b, d                                          ; $5558: $42
	ld a, [hl+]                                      ; $5559: $2a

jr_00f_555a:
	jr jr_00f_553e                                   ; $555a: $18 $e2

	ld b, b                                          ; $555c: $40
	ld a, [hl+]                                      ; $555d: $2a

jr_00f_555e:
	jr nz, jr_00f_5552                               ; $555e: $20 $f2

	ld a, [hl-]                                      ; $5560: $3a
	inc l                                            ; $5561: $2c

jr_00f_5562:
	jr jr_00f_5556                                   ; $5562: $18 $f2

	jr c, @+$2f                                      ; $5564: $38 $2d

jr_00f_5566:
	jr nz, jr_00f_555a                               ; $5566: $20 $f2

	ld c, d                                          ; $5568: $4a
	inc l                                            ; $5569: $2c

jr_00f_556a:
	jr jr_00f_555e                                   ; $556a: $18 $f2

	ld c, b                                          ; $556c: $48
	inc l                                            ; $556d: $2c

jr_00f_556e:
	jr nz, jr_00f_5552                               ; $556e: $20 $e2

	ld b, d                                          ; $5570: $42
	ld a, [hl+]                                      ; $5571: $2a

jr_00f_5572:
	jr jr_00f_5556                                   ; $5572: $18 $e2

	ld b, b                                          ; $5574: $40
	dec hl                                           ; $5575: $2b

jr_00f_5576:
	jr nz, jr_00f_556a                               ; $5576: $20 $f2

	ld a, [hl-]                                      ; $5578: $3a
	inc l                                            ; $5579: $2c

jr_00f_557a:
	jr jr_00f_556e                                   ; $557a: $18 $f2

	jr c, @+$2e                                      ; $557c: $38 $2c

jr_00f_557e:
	jr nz, jr_00f_5562                               ; $557e: $20 $e2

	ld a, $2a                                        ; $5580: $3e $2a
	jr jr_00f_5566                                   ; $5582: $18 $e2

	inc a                                            ; $5584: $3c
	dec hl                                           ; $5585: $2b
	jr nz, jr_00f_557a                               ; $5586: $20 $f2

	ld c, d                                          ; $5588: $4a
	inc l                                            ; $5589: $2c
	jr jr_00f_557e                                   ; $558a: $18 $f2

	ld c, b                                          ; $558c: $48
	inc l                                            ; $558d: $2c
	jr nz, jr_00f_5572                               ; $558e: $20 $e2

	ld a, $2a                                        ; $5590: $3e $2a
	jr jr_00f_5576                                   ; $5592: $18 $e2

	inc a                                            ; $5594: $3c
	dec hl                                           ; $5595: $2b

jr_00f_5596:
	inc bc                                           ; $5596: $03
	pop af                                           ; $5597: $f1
	inc c                                            ; $5598: $0c
	jr z, jr_00f_5596                                ; $5599: $28 $fb

	pop af                                           ; $559b: $f1
	ld a, [bc]                                       ; $559c: $0a
	inc l                                            ; $559d: $2c
	di                                               ; $559e: $f3
	pop af                                           ; $559f: $f1
	ld [$0b2c], sp                                   ; $55a0: $08 $2c $0b
	pop hl                                           ; $55a3: $e1
	ld b, $28                                        ; $55a4: $06 $28

jr_00f_55a6:
	inc bc                                           ; $55a6: $03
	pop hl                                           ; $55a7: $e1
	inc b                                            ; $55a8: $04
	jr z, jr_00f_55a6                                ; $55a9: $28 $fb

	pop hl                                           ; $55ab: $e1
	ld [bc], a                                       ; $55ac: $02
	jr z, @-$0b                                      ; $55ad: $28 $f3

	pop hl                                           ; $55af: $e1
	nop                                              ; $55b0: $00
	add hl, hl                                       ; $55b1: $29

jr_00f_55b2:
	inc bc                                           ; $55b2: $03
	pop af                                           ; $55b3: $f1
	inc c                                            ; $55b4: $0c
	jr z, jr_00f_55b2                                ; $55b5: $28 $fb

	pop af                                           ; $55b7: $f1
	ld a, [bc]                                       ; $55b8: $0a
	inc l                                            ; $55b9: $2c
	di                                               ; $55ba: $f3
	pop af                                           ; $55bb: $f1
	ld [$0b2c], sp                                   ; $55bc: $08 $2c $0b
	pop hl                                           ; $55bf: $e1
	ld b, $28                                        ; $55c0: $06 $28

jr_00f_55c2:
	inc bc                                           ; $55c2: $03
	pop hl                                           ; $55c3: $e1
	inc b                                            ; $55c4: $04
	jr z, jr_00f_55c2                                ; $55c5: $28 $fb

	pop hl                                           ; $55c7: $e1
	ld [bc], a                                       ; $55c8: $02
	jr z, @-$0b                                      ; $55c9: $28 $f3

	pop hl                                           ; $55cb: $e1
	nop                                              ; $55cc: $00
	jr z, jr_00f_55dc                                ; $55cd: $28 $0d

	db $db                                           ; $55cf: $db
	ld d, h                                          ; $55d0: $54
	cpl                                              ; $55d1: $2f

jr_00f_55d2:
	inc bc                                           ; $55d2: $03
	pop af                                           ; $55d3: $f1
	inc c                                            ; $55d4: $0c
	jr z, jr_00f_55d2                                ; $55d5: $28 $fb

	pop af                                           ; $55d7: $f1
	ld a, [bc]                                       ; $55d8: $0a
	inc l                                            ; $55d9: $2c
	di                                               ; $55da: $f3
	pop af                                           ; $55db: $f1

jr_00f_55dc:
	ld [$0b2c], sp                                   ; $55dc: $08 $2c $0b
	pop hl                                           ; $55df: $e1
	ld b, $28                                        ; $55e0: $06 $28

jr_00f_55e2:
	inc bc                                           ; $55e2: $03
	pop hl                                           ; $55e3: $e1
	inc b                                            ; $55e4: $04
	jr z, jr_00f_55e2                                ; $55e5: $28 $fb

	pop hl                                           ; $55e7: $e1
	ld [bc], a                                       ; $55e8: $02
	jr z, @-$0b                                      ; $55e9: $28 $f3

	pop hl                                           ; $55eb: $e1
	nop                                              ; $55ec: $00
	jr z, @+$15                                      ; $55ed: $28 $13

	call c, $2e56                                    ; $55ef: $dc $56 $2e
	dec c                                            ; $55f2: $0d
	db $db                                           ; $55f3: $db
	ld d, h                                          ; $55f4: $54
	cpl                                              ; $55f5: $2f

jr_00f_55f6:
	inc bc                                           ; $55f6: $03
	pop af                                           ; $55f7: $f1
	inc c                                            ; $55f8: $0c
	jr z, jr_00f_55f6                                ; $55f9: $28 $fb

	pop af                                           ; $55fb: $f1
	ld a, [bc]                                       ; $55fc: $0a
	inc l                                            ; $55fd: $2c
	di                                               ; $55fe: $f3
	pop af                                           ; $55ff: $f1
	ld [$0b2c], sp                                   ; $5600: $08 $2c $0b
	pop hl                                           ; $5603: $e1
	ld b, $28                                        ; $5604: $06 $28

jr_00f_5606:
	inc bc                                           ; $5606: $03
	pop hl                                           ; $5607: $e1
	inc b                                            ; $5608: $04
	jr z, jr_00f_5606                                ; $5609: $28 $fb

	pop hl                                           ; $560b: $e1
	ld [bc], a                                       ; $560c: $02
	jr z, @-$0b                                      ; $560d: $28 $f3

	pop hl                                           ; $560f: $e1
	nop                                              ; $5610: $00
	jr z, jr_00f_562f                                ; $5611: $28 $1c

	ret c                                            ; $5613: $d8

	ld d, h                                          ; $5614: $54
	ld l, $13                                        ; $5615: $2e $13
	call c, $2e56                                    ; $5617: $dc $56 $2e
	dec c                                            ; $561a: $0d
	db $db                                           ; $561b: $db
	ld d, h                                          ; $561c: $54
	cpl                                              ; $561d: $2f
	inc bc                                           ; $561e: $03
	ldh a, [c]                                       ; $561f: $f2
	jr @+$2e                                         ; $5620: $18 $2c

	ei                                               ; $5622: $fb
	ldh a, [c]                                       ; $5623: $f2
	ld d, $2c                                        ; $5624: $16 $2c

jr_00f_5626:
	di                                               ; $5626: $f3
	ldh a, [c]                                       ; $5627: $f2
	inc d                                            ; $5628: $14
	inc l                                            ; $5629: $2c

jr_00f_562a:
	inc bc                                           ; $562a: $03
	ldh [c], a                                       ; $562b: $e2
	ld [de], a                                       ; $562c: $12
	jr z, jr_00f_562a                                ; $562d: $28 $fb

jr_00f_562f:
	ldh [c], a                                       ; $562f: $e2
	db $10                                           ; $5630: $10
	jr z, jr_00f_5626                                ; $5631: $28 $f3

	ldh [c], a                                       ; $5633: $e2
	ld c, $29                                        ; $5634: $0e $29
	xor $d8                                          ; $5636: $ee $d8
	ld c, h                                          ; $5638: $4c
	ld l, $e6                                        ; $5639: $2e $e6
	ret c                                            ; $563b: $d8

	ld c, d                                          ; $563c: $4a
	ld l, $03                                        ; $563d: $2e $03
	ldh a, [c]                                       ; $563f: $f2
	jr @+$2e                                         ; $5640: $18 $2c

	ei                                               ; $5642: $fb
	ldh a, [c]                                       ; $5643: $f2
	ld d, $2c                                        ; $5644: $16 $2c

jr_00f_5646:
	di                                               ; $5646: $f3
	ldh a, [c]                                       ; $5647: $f2
	inc d                                            ; $5648: $14
	inc l                                            ; $5649: $2c

jr_00f_564a:
	inc bc                                           ; $564a: $03
	ldh [c], a                                       ; $564b: $e2
	ld [de], a                                       ; $564c: $12
	jr z, jr_00f_564a                                ; $564d: $28 $fb

	ldh [c], a                                       ; $564f: $e2
	db $10                                           ; $5650: $10
	jr z, jr_00f_5646                                ; $5651: $28 $f3

	ldh [c], a                                       ; $5653: $e2
	ld c, $29                                        ; $5654: $0e $29
	ei                                               ; $5656: $fb
	pop hl                                           ; $5657: $e1
	ld [bc], a                                       ; $5658: $02
	jr z, jr_00f_5666                                ; $5659: $28 $0b

	pop hl                                           ; $565b: $e1
	ld b, $28                                        ; $565c: $06 $28

jr_00f_565e:
	inc bc                                           ; $565e: $03
	pop af                                           ; $565f: $f1
	inc c                                            ; $5660: $0c
	jr z, jr_00f_565e                                ; $5661: $28 $fb

	pop af                                           ; $5663: $f1
	ld a, [bc]                                       ; $5664: $0a
	inc l                                            ; $5665: $2c

jr_00f_5666:
	di                                               ; $5666: $f3
	pop af                                           ; $5667: $f1
	ld [$032c], sp                                   ; $5668: $08 $2c $03
	pop hl                                           ; $566b: $e1
	inc b                                            ; $566c: $04
	jr z, @-$0b                                      ; $566d: $28 $f3

	pop hl                                           ; $566f: $e1
	nop                                              ; $5670: $00
	add hl, hl                                       ; $5671: $29
	ei                                               ; $5672: $fb
	pop hl                                           ; $5673: $e1
	ld a, [de]                                       ; $5674: $1a
	jr z, @+$05                                      ; $5675: $28 $03

	pop af                                           ; $5677: $f1
	inc c                                            ; $5678: $0c
	jr z, @-$03                                      ; $5679: $28 $fb

	pop af                                           ; $567b: $f1
	ld a, [bc]                                       ; $567c: $0a
	inc l                                            ; $567d: $2c

jr_00f_567e:
	di                                               ; $567e: $f3
	pop af                                           ; $567f: $f1
	ld [$0b2c], sp                                   ; $5680: $08 $2c $0b
	pop hl                                           ; $5683: $e1
	ld b, $28                                        ; $5684: $06 $28
	inc bc                                           ; $5686: $03
	pop hl                                           ; $5687: $e1
	inc b                                            ; $5688: $04
	jr z, jr_00f_567e                                ; $5689: $28 $f3

	pop hl                                           ; $568b: $e1
	nop                                              ; $568c: $00
	add hl, hl                                       ; $568d: $29
	ei                                               ; $568e: $fb
	pop hl                                           ; $568f: $e1
	ld a, [de]                                       ; $5690: $1a
	jr z, jr_00f_56ab                                ; $5691: $28 $18

	ret c                                            ; $5693: $d8

	ld d, b                                          ; $5694: $50
	inc l                                            ; $5695: $2c
	db $10                                           ; $5696: $10
	ret c                                            ; $5697: $d8

	ld c, [hl]                                       ; $5698: $4e

jr_00f_5699:
	inc l                                            ; $5699: $2c

jr_00f_569a:
	inc bc                                           ; $569a: $03
	pop af                                           ; $569b: $f1
	inc c                                            ; $569c: $0c
	jr z, jr_00f_569a                                ; $569d: $28 $fb

	pop af                                           ; $569f: $f1
	ld a, [bc]                                       ; $56a0: $0a
	inc l                                            ; $56a1: $2c

jr_00f_56a2:
	di                                               ; $56a2: $f3
	pop af                                           ; $56a3: $f1
	ld [$0b2c], sp                                   ; $56a4: $08 $2c $0b
	pop hl                                           ; $56a7: $e1
	ld b, $28                                        ; $56a8: $06 $28
	inc bc                                           ; $56aa: $03

jr_00f_56ab:
	pop hl                                           ; $56ab: $e1
	inc b                                            ; $56ac: $04
	jr z, jr_00f_56a2                                ; $56ad: $28 $f3

	pop hl                                           ; $56af: $e1
	nop                                              ; $56b0: $00

jr_00f_56b1:
	add hl, hl                                       ; $56b1: $29
	jr nc, @-$0d                                     ; $56b2: $30 $f1

	ld e, $2e                                        ; $56b4: $1e $2e
	jr z, jr_00f_5699                                ; $56b6: $28 $e1

	ld [hl+], a                                      ; $56b8: $22

jr_00f_56b9:
	ld l, $20                                        ; $56b9: $2e $20
	pop hl                                           ; $56bb: $e1
	jr nz, jr_00f_56ec                               ; $56bc: $20 $2e

	jr z, jr_00f_56b1                                ; $56be: $28 $f1

	ld h, $2a                                        ; $56c0: $26 $2a
	jr nz, @-$0d                                     ; $56c2: $20 $f1

	inc h                                            ; $56c4: $24

jr_00f_56c5:
	ld a, [hl+]                                      ; $56c5: $2a
	jr nc, @-$1d                                     ; $56c6: $30 $e1

	inc [hl]                                         ; $56c8: $34
	cpl                                              ; $56c9: $2f
	jr nc, @-$0d                                     ; $56ca: $30 $f1

	ld e, $2e                                        ; $56cc: $1e $2e
	jr z, @-$0d                                      ; $56ce: $28 $f1

	ld h, $2a                                        ; $56d0: $26 $2a
	jr nz, jr_00f_56c5                               ; $56d2: $20 $f1

	inc h                                            ; $56d4: $24

jr_00f_56d5:
	ld a, [hl+]                                      ; $56d5: $2a
	jr nc, jr_00f_56b9                               ; $56d6: $30 $e1

	inc [hl]                                         ; $56d8: $34

jr_00f_56d9:
	ld l, $28                                        ; $56d9: $2e $28
	pop hl                                           ; $56db: $e1
	ld [hl+], a                                      ; $56dc: $22

jr_00f_56dd:
	ld l, $20                                        ; $56dd: $2e $20
	pop hl                                           ; $56df: $e1
	jr nz, @+$31                                     ; $56e0: $20 $2f

	jr nc, jr_00f_56d5                               ; $56e2: $30 $f1

	ld e, $2e                                        ; $56e4: $1e $2e
	jr z, jr_00f_56d9                                ; $56e6: $28 $f1

	ld h, $2a                                        ; $56e8: $26 $2a
	jr nz, jr_00f_56dd                               ; $56ea: $20 $f1

jr_00f_56ec:
	inc h                                            ; $56ec: $24

jr_00f_56ed:
	ld a, [hl+]                                      ; $56ed: $2a
	jr nc, @-$1d                                     ; $56ee: $30 $e1

	inc [hl]                                         ; $56f0: $34
	ld l, $28                                        ; $56f1: $2e $28
	pop hl                                           ; $56f3: $e1
	ld [hl+], a                                      ; $56f4: $22
	ld l, $20                                        ; $56f5: $2e $20
	pop hl                                           ; $56f7: $e1
	jr nz, @+$31                                     ; $56f8: $20 $2f

	jr nc, jr_00f_56ed                               ; $56fa: $30 $f1

	ld e, $2e                                        ; $56fc: $1e $2e
	jr nc, @-$1d                                     ; $56fe: $30 $e1

	inc [hl]                                         ; $5700: $34

jr_00f_5701:
	ld l, $28                                        ; $5701: $2e $28
	pop af                                           ; $5703: $f1
	ld h, $2a                                        ; $5704: $26 $2a
	jr nz, @-$0d                                     ; $5706: $20 $f1

	inc h                                            ; $5708: $24

jr_00f_5709:
	ld a, [hl+]                                      ; $5709: $2a
	jr z, jr_00f_56ed                                ; $570a: $28 $e1

	ld [hl-], a                                      ; $570c: $32

jr_00f_570d:
	ld l, $20                                        ; $570d: $2e $20
	pop hl                                           ; $570f: $e1
	jr nc, jr_00f_5741                               ; $5710: $30 $2f

	jr nc, @-$0d                                     ; $5712: $30 $f1

	ld e, $2e                                        ; $5714: $1e $2e
	jr z, jr_00f_5709                                ; $5716: $28 $f1

	ld h, $2a                                        ; $5718: $26 $2a
	jr nz, jr_00f_570d                               ; $571a: $20 $f1

	inc h                                            ; $571c: $24

jr_00f_571d:
	ld a, [hl+]                                      ; $571d: $2a
	jr nc, jr_00f_5701                               ; $571e: $30 $e1

	inc [hl]                                         ; $5720: $34

jr_00f_5721:
	ld l, $28                                        ; $5721: $2e $28
	pop hl                                           ; $5723: $e1
	ld [hl+], a                                      ; $5724: $22
	ld l, $20                                        ; $5725: $2e $20
	pop hl                                           ; $5727: $e1
	jr nz, @+$31                                     ; $5728: $20 $2f

	jr z, jr_00f_571d                                ; $572a: $28 $f1

	ld h, $2a                                        ; $572c: $26 $2a
	jr nz, jr_00f_5721                               ; $572e: $20 $f1

	inc h                                            ; $5730: $24

jr_00f_5731:
	ld a, [hl+]                                      ; $5731: $2a
	jr z, @-$1d                                      ; $5732: $28 $e1

	ld [hl-], a                                      ; $5734: $32

jr_00f_5735:
	ld l, $20                                        ; $5735: $2e $20
	pop hl                                           ; $5737: $e1
	jr nc, jr_00f_5768                               ; $5738: $30 $2e

	jr nc, @-$0d                                     ; $573a: $30 $f1

	ld e, $2e                                        ; $573c: $1e $2e
	jr nc, jr_00f_5721                               ; $573e: $30 $e1

	inc [hl]                                         ; $5740: $34

jr_00f_5741:
	cpl                                              ; $5741: $2f
	jr nc, jr_00f_5735                               ; $5742: $30 $f1

	ld e, $2e                                        ; $5744: $1e $2e
	jr nc, @-$1d                                     ; $5746: $30 $e1

	inc [hl]                                         ; $5748: $34

jr_00f_5749:
	ld l, $28                                        ; $5749: $2e $28
	pop af                                           ; $574b: $f1
	ld l, $2a                                        ; $574c: $2e $2a
	jr z, jr_00f_5731                                ; $574e: $28 $e1

	ld a, [hl+]                                      ; $5750: $2a

jr_00f_5751:
	ld l, $20                                        ; $5751: $2e $20
	pop af                                           ; $5753: $f1
	inc l                                            ; $5754: $2c

jr_00f_5755:
	ld a, [hl+]                                      ; $5755: $2a
	jr nz, @-$1d                                     ; $5756: $20 $e1

	jr z, jr_00f_5789                                ; $5758: $28 $2f

	jr nc, @-$0d                                     ; $575a: $30 $f1

	ld e, $2e                                        ; $575c: $1e $2e
	jr z, jr_00f_5751                                ; $575e: $28 $f1

	ld h, $2a                                        ; $5760: $26 $2a
	jr nz, jr_00f_5755                               ; $5762: $20 $f1

	inc h                                            ; $5764: $24

jr_00f_5765:
	ld a, [hl+]                                      ; $5765: $2a
	jr z, jr_00f_5749                                ; $5766: $28 $e1

jr_00f_5768:
	ld [hl+], a                                      ; $5768: $22

jr_00f_5769:
	ld l, $30                                        ; $5769: $2e $30
	pop hl                                           ; $576b: $e1
	inc [hl]                                         ; $576c: $34
	ld l, $20                                        ; $576d: $2e $20
	pop hl                                           ; $576f: $e1
	jr nz, jr_00f_57a1                               ; $5770: $20 $2f

	jr z, jr_00f_5765                                ; $5772: $28 $f1

	ld l, $2a                                        ; $5774: $2e $2a
	jr nz, jr_00f_5769                               ; $5776: $20 $f1

	inc l                                            ; $5778: $2c
	ld a, [hl+]                                      ; $5779: $2a
	jr z, @-$1d                                      ; $577a: $28 $e1

	ld a, [hl+]                                      ; $577c: $2a
	ld l, $20                                        ; $577d: $2e $20
	pop hl                                           ; $577f: $e1
	jr z, @+$30                                      ; $5780: $28 $2e

	jr nc, @-$0d                                     ; $5782: $30 $f1

	ld e, $2e                                        ; $5784: $1e $2e
	jr nc, jr_00f_5769                               ; $5786: $30 $e1

	inc [hl]                                         ; $5788: $34

jr_00f_5789:
	cpl                                              ; $5789: $2f
	dec hl                                           ; $578a: $2b
	ldh a, [$3c]                                     ; $578b: $f0 $3c
	ld a, [hl+]                                      ; $578d: $2a
	inc hl                                           ; $578e: $23
	ldh a, [$3a]                                     ; $578f: $f0 $3a
	ld a, [hl+]                                      ; $5791: $2a
	dec hl                                           ; $5792: $2b
	ldh [$38], a                                     ; $5793: $e0 $38
	ld l, $23                                        ; $5795: $2e $23
	ldh [$36], a                                     ; $5797: $e0 $36
	cpl                                              ; $5799: $2f
	dec hl                                           ; $579a: $2b
	ldh a, [$3c]                                     ; $579b: $f0 $3c
	ld a, [hl+]                                      ; $579d: $2a
	inc hl                                           ; $579e: $23
	ldh a, [$3a]                                     ; $579f: $f0 $3a

jr_00f_57a1:
	ld a, [hl+]                                      ; $57a1: $2a
	dec hl                                           ; $57a2: $2b
	ldh [$38], a                                     ; $57a3: $e0 $38
	ld l, $23                                        ; $57a5: $2e $23
	ldh [$36], a                                     ; $57a7: $e0 $36
	cpl                                              ; $57a9: $2f
	dec hl                                           ; $57aa: $2b
	ldh a, [$3c]                                     ; $57ab: $f0 $3c
	ld a, [hl+]                                      ; $57ad: $2a
	inc hl                                           ; $57ae: $23
	ldh a, [$3a]                                     ; $57af: $f0 $3a
	ld a, [hl+]                                      ; $57b1: $2a
	dec hl                                           ; $57b2: $2b
	ldh [$38], a                                     ; $57b3: $e0 $38
	ld l, $23                                        ; $57b5: $2e $23
	ldh [$36], a                                     ; $57b7: $e0 $36
	cpl                                              ; $57b9: $2f
	dec hl                                           ; $57ba: $2b
	ldh a, [$3c]                                     ; $57bb: $f0 $3c
	ld a, [hl+]                                      ; $57bd: $2a
	inc hl                                           ; $57be: $23
	ldh a, [$3a]                                     ; $57bf: $f0 $3a
	ld a, [hl+]                                      ; $57c1: $2a
	dec hl                                           ; $57c2: $2b
	ldh [$38], a                                     ; $57c3: $e0 $38
	ld l, $23                                        ; $57c5: $2e $23
	ldh [$36], a                                     ; $57c7: $e0 $36
	cpl                                              ; $57c9: $2f
	dec hl                                           ; $57ca: $2b
	ldh a, [rLY]                                     ; $57cb: $f0 $44
	ld a, [hl+]                                      ; $57cd: $2a
	inc hl                                           ; $57ce: $23
	ldh a, [rSCY]                                    ; $57cf: $f0 $42
	ld a, [hl+]                                      ; $57d1: $2a
	dec hl                                           ; $57d2: $2b
	ldh [$38], a                                     ; $57d3: $e0 $38
	ld l, $23                                        ; $57d5: $2e $23
	ldh [$36], a                                     ; $57d7: $e0 $36
	cpl                                              ; $57d9: $2f
	inc hl                                           ; $57da: $23
	ldh [$3e], a                                     ; $57db: $e0 $3e
	ld l, $2b                                        ; $57dd: $2e $2b
	ldh a, [rLY]                                     ; $57df: $f0 $44
	ld a, [hl+]                                      ; $57e1: $2a
	inc hl                                           ; $57e2: $23
	ldh a, [rSCY]                                    ; $57e3: $f0 $42
	ld a, [hl+]                                      ; $57e5: $2a
	dec hl                                           ; $57e6: $2b
	ldh [rLCDC], a                                   ; $57e7: $e0 $40
	cpl                                              ; $57e9: $2f
	dec hl                                           ; $57ea: $2b
	ldh a, [rLY]                                     ; $57eb: $f0 $44
	ld a, [hl+]                                      ; $57ed: $2a
	inc hl                                           ; $57ee: $23
	ldh a, [rSCY]                                    ; $57ef: $f0 $42
	ld a, [hl+]                                      ; $57f1: $2a
	dec hl                                           ; $57f2: $2b
	ldh [$38], a                                     ; $57f3: $e0 $38
	ld l, $23                                        ; $57f5: $2e $23
	ldh [$36], a                                     ; $57f7: $e0 $36
	cpl                                              ; $57f9: $2f
	dec hl                                           ; $57fa: $2b
	ldh a, [$3c]                                     ; $57fb: $f0 $3c
	ld a, [hl+]                                      ; $57fd: $2a
	inc hl                                           ; $57fe: $23
	ldh a, [$3a]                                     ; $57ff: $f0 $3a
	ld a, [hl+]                                      ; $5801: $2a
	dec hl                                           ; $5802: $2b
	ldh [$38], a                                     ; $5803: $e0 $38
	ld l, $23                                        ; $5805: $2e $23
	ldh [$36], a                                     ; $5807: $e0 $36
	cpl                                              ; $5809: $2f
	dec hl                                           ; $580a: $2b
	ldh [rOBP0], a                                   ; $580b: $e0 $48
	ld l, $23                                        ; $580d: $2e $23
	ldh [rDMA], a                                    ; $580f: $e0 $46
	ld l, $2b                                        ; $5811: $2e $2b
	ldh a, [$3c]                                     ; $5813: $f0 $3c
	ld a, [hl+]                                      ; $5815: $2a

jr_00f_5816:
	inc hl                                           ; $5816: $23
	ldh a, [$3a]                                     ; $5817: $f0 $3a
	dec hl                                           ; $5819: $2b

jr_00f_581a:
	inc bc                                           ; $581a: $03
	pop af                                           ; $581b: $f1
	inc c                                            ; $581c: $0c
	jr z, jr_00f_581a                                ; $581d: $28 $fb

	pop af                                           ; $581f: $f1
	ld a, [bc]                                       ; $5820: $0a
	jr z, jr_00f_5816                                ; $5821: $28 $f3

	pop af                                           ; $5823: $f1
	ld [$0b28], sp                                   ; $5824: $08 $28 $0b
	pop hl                                           ; $5827: $e1
	ld b, $28                                        ; $5828: $06 $28

jr_00f_582a:
	inc bc                                           ; $582a: $03
	pop hl                                           ; $582b: $e1
	inc b                                            ; $582c: $04
	jr z, jr_00f_582a                                ; $582d: $28 $fb

	pop hl                                           ; $582f: $e1
	ld [bc], a                                       ; $5830: $02
	jr z, @-$0b                                      ; $5831: $28 $f3

	pop hl                                           ; $5833: $e1
	nop                                              ; $5834: $00
	add hl, hl                                       ; $5835: $29

jr_00f_5836:
	inc bc                                           ; $5836: $03
	pop af                                           ; $5837: $f1
	inc c                                            ; $5838: $0c
	jr z, jr_00f_5836                                ; $5839: $28 $fb

	pop af                                           ; $583b: $f1
	ld a, [bc]                                       ; $583c: $0a
	jr z, @-$0b                                      ; $583d: $28 $f3

	pop af                                           ; $583f: $f1
	ld [$0b28], sp                                   ; $5840: $08 $28 $0b
	pop hl                                           ; $5843: $e1
	ld b, $28                                        ; $5844: $06 $28

jr_00f_5846:
	inc bc                                           ; $5846: $03
	pop hl                                           ; $5847: $e1
	inc b                                            ; $5848: $04
	jr z, jr_00f_5846                                ; $5849: $28 $fb

	pop hl                                           ; $584b: $e1
	ld [bc], a                                       ; $584c: $02
	jr z, @-$0b                                      ; $584d: $28 $f3

	pop hl                                           ; $584f: $e1
	nop                                              ; $5850: $00
	jr z, jr_00f_5860                                ; $5851: $28 $0d

	db $db                                           ; $5853: $db
	ld d, h                                          ; $5854: $54
	cpl                                              ; $5855: $2f

jr_00f_5856:
	inc bc                                           ; $5856: $03
	pop af                                           ; $5857: $f1
	inc c                                            ; $5858: $0c
	jr z, jr_00f_5856                                ; $5859: $28 $fb

	pop af                                           ; $585b: $f1
	ld a, [bc]                                       ; $585c: $0a
	jr z, @-$0b                                      ; $585d: $28 $f3

	pop af                                           ; $585f: $f1

jr_00f_5860:
	ld [$0b28], sp                                   ; $5860: $08 $28 $0b
	pop hl                                           ; $5863: $e1
	ld b, $28                                        ; $5864: $06 $28

jr_00f_5866:
	inc bc                                           ; $5866: $03
	pop hl                                           ; $5867: $e1
	inc b                                            ; $5868: $04
	jr z, jr_00f_5866                                ; $5869: $28 $fb

	pop hl                                           ; $586b: $e1
	ld [bc], a                                       ; $586c: $02
	jr z, @-$0b                                      ; $586d: $28 $f3

	pop hl                                           ; $586f: $e1
	nop                                              ; $5870: $00
	jr z, @+$15                                      ; $5871: $28 $13

	call c, $2e56                                    ; $5873: $dc $56 $2e

jr_00f_5876:
	dec c                                            ; $5876: $0d
	db $db                                           ; $5877: $db
	ld d, h                                          ; $5878: $54
	cpl                                              ; $5879: $2f

jr_00f_587a:
	inc bc                                           ; $587a: $03
	pop af                                           ; $587b: $f1
	inc c                                            ; $587c: $0c
	jr z, jr_00f_587a                                ; $587d: $28 $fb

	pop af                                           ; $587f: $f1
	ld a, [bc]                                       ; $5880: $0a
	jr z, jr_00f_5876                                ; $5881: $28 $f3

	pop af                                           ; $5883: $f1
	ld [$0b28], sp                                   ; $5884: $08 $28 $0b
	pop hl                                           ; $5887: $e1
	ld b, $28                                        ; $5888: $06 $28

jr_00f_588a:
	inc bc                                           ; $588a: $03
	pop hl                                           ; $588b: $e1
	inc b                                            ; $588c: $04
	jr z, jr_00f_588a                                ; $588d: $28 $fb

	pop hl                                           ; $588f: $e1
	ld [bc], a                                       ; $5890: $02
	jr z, @-$0b                                      ; $5891: $28 $f3

	pop hl                                           ; $5893: $e1
	nop                                              ; $5894: $00
	jr z, jr_00f_58b3                                ; $5895: $28 $1c

	ret c                                            ; $5897: $d8

	ld d, h                                          ; $5898: $54
	ld l, $13                                        ; $5899: $2e $13
	call c, $2e56                                    ; $589b: $dc $56 $2e
	dec c                                            ; $589e: $0d
	db $db                                           ; $589f: $db
	ld d, h                                          ; $58a0: $54
	cpl                                              ; $58a1: $2f
	inc bc                                           ; $58a2: $03
	ldh a, [c]                                       ; $58a3: $f2
	jr @+$2a                                         ; $58a4: $18 $28

	ei                                               ; $58a6: $fb
	ldh a, [c]                                       ; $58a7: $f2
	ld d, $28                                        ; $58a8: $16 $28

jr_00f_58aa:
	di                                               ; $58aa: $f3
	ldh a, [c]                                       ; $58ab: $f2
	inc d                                            ; $58ac: $14
	jr z, @+$05                                      ; $58ad: $28 $03

	ldh [c], a                                       ; $58af: $e2
	ld [de], a                                       ; $58b0: $12
	jr z, @-$03                                      ; $58b1: $28 $fb

jr_00f_58b3:
	ldh [c], a                                       ; $58b3: $e2
	db $10                                           ; $58b4: $10
	jr z, jr_00f_58aa                                ; $58b5: $28 $f3

	ldh [c], a                                       ; $58b7: $e2
	ld c, $29                                        ; $58b8: $0e $29
	db $ed                                           ; $58ba: $ed
	reti                                             ; $58bb: $d9


	ld c, h                                          ; $58bc: $4c
	ld l, $e5                                        ; $58bd: $2e $e5
	reti                                             ; $58bf: $d9


	ld c, d                                          ; $58c0: $4a
	ld l, $03                                        ; $58c1: $2e $03
	ldh a, [c]                                       ; $58c3: $f2
	jr @+$2a                                         ; $58c4: $18 $28

	ei                                               ; $58c6: $fb
	ldh a, [c]                                       ; $58c7: $f2
	ld d, $28                                        ; $58c8: $16 $28

jr_00f_58ca:
	di                                               ; $58ca: $f3
	ldh a, [c]                                       ; $58cb: $f2
	inc d                                            ; $58cc: $14
	jr z, @+$05                                      ; $58cd: $28 $03

	ldh [c], a                                       ; $58cf: $e2
	ld [de], a                                       ; $58d0: $12
	jr z, @-$03                                      ; $58d1: $28 $fb

	ldh [c], a                                       ; $58d3: $e2
	db $10                                           ; $58d4: $10
	jr z, jr_00f_58ca                                ; $58d5: $28 $f3

	ldh [c], a                                       ; $58d7: $e2
	ld c, $29                                        ; $58d8: $0e $29

jr_00f_58da:
	dec bc                                           ; $58da: $0b
	pop hl                                           ; $58db: $e1
	ld b, $28                                        ; $58dc: $06 $28

jr_00f_58de:
	inc bc                                           ; $58de: $03
	pop af                                           ; $58df: $f1
	inc c                                            ; $58e0: $0c
	jr z, jr_00f_58de                                ; $58e1: $28 $fb

	pop af                                           ; $58e3: $f1
	ld a, [bc]                                       ; $58e4: $0a
	jr z, jr_00f_58da                                ; $58e5: $28 $f3

	pop af                                           ; $58e7: $f1
	ld [$0328], sp                                   ; $58e8: $08 $28 $03
	pop hl                                           ; $58eb: $e1
	inc b                                            ; $58ec: $04
	jr z, @-$03                                      ; $58ed: $28 $fb

	pop hl                                           ; $58ef: $e1
	ld [bc], a                                       ; $58f0: $02
	jr z, @-$0b                                      ; $58f1: $28 $f3

	pop hl                                           ; $58f3: $e1
	nop                                              ; $58f4: $00
	add hl, hl                                       ; $58f5: $29

jr_00f_58f6:
	ei                                               ; $58f6: $fb
	pop hl                                           ; $58f7: $e1
	ld a, [de]                                       ; $58f8: $1a
	jr z, @+$05                                      ; $58f9: $28 $03

	pop af                                           ; $58fb: $f1
	inc c                                            ; $58fc: $0c
	jr z, @-$03                                      ; $58fd: $28 $fb

	pop af                                           ; $58ff: $f1
	ld a, [bc]                                       ; $5900: $0a
	jr z, jr_00f_58f6                                ; $5901: $28 $f3

	pop af                                           ; $5903: $f1
	ld [$0b28], sp                                   ; $5904: $08 $28 $0b
	pop hl                                           ; $5907: $e1
	ld b, $28                                        ; $5908: $06 $28
	inc bc                                           ; $590a: $03
	pop hl                                           ; $590b: $e1
	inc b                                            ; $590c: $04
	jr z, @-$0b                                      ; $590d: $28 $f3

	pop hl                                           ; $590f: $e1
	nop                                              ; $5910: $00
	add hl, hl                                       ; $5911: $29
	ei                                               ; $5912: $fb
	pop hl                                           ; $5913: $e1
	ld a, [de]                                       ; $5914: $1a
	jr z, jr_00f_592f                                ; $5915: $28 $18

	ret c                                            ; $5917: $d8

	ld d, b                                          ; $5918: $50
	inc l                                            ; $5919: $2c

jr_00f_591a:
	db $10                                           ; $591a: $10
	ret c                                            ; $591b: $d8

	ld c, [hl]                                       ; $591c: $4e

jr_00f_591d:
	inc l                                            ; $591d: $2c

jr_00f_591e:
	inc bc                                           ; $591e: $03
	pop af                                           ; $591f: $f1
	inc c                                            ; $5920: $0c
	jr z, jr_00f_591e                                ; $5921: $28 $fb

	pop af                                           ; $5923: $f1
	ld a, [bc]                                       ; $5924: $0a
	jr z, jr_00f_591a                                ; $5925: $28 $f3

	pop af                                           ; $5927: $f1
	ld [$0b28], sp                                   ; $5928: $08 $28 $0b
	pop hl                                           ; $592b: $e1
	ld b, $28                                        ; $592c: $06 $28
	inc bc                                           ; $592e: $03

jr_00f_592f:
	pop hl                                           ; $592f: $e1
	inc b                                            ; $5930: $04
	jr z, @-$0b                                      ; $5931: $28 $f3

	pop hl                                           ; $5933: $e1
	nop                                              ; $5934: $00

jr_00f_5935:
	add hl, hl                                       ; $5935: $29
	jr nc, @-$0d                                     ; $5936: $30 $f1

	ld e, $2e                                        ; $5938: $1e $2e
	jr nc, jr_00f_591d                               ; $593a: $30 $e1

	inc [hl]                                         ; $593c: $34

jr_00f_593d:
	ld l, $28                                        ; $593d: $2e $28
	pop hl                                           ; $593f: $e1
	ld [hl+], a                                      ; $5940: $22

jr_00f_5941:
	ld l, $20                                        ; $5941: $2e $20
	pop hl                                           ; $5943: $e1
	jr nz, jr_00f_5974                               ; $5944: $20 $2e

	jr z, @-$0d                                      ; $5946: $28 $f1

	ld h, $2a                                        ; $5948: $26 $2a
	jr nz, jr_00f_593d                               ; $594a: $20 $f1

	inc h                                            ; $594c: $24

jr_00f_594d:
	dec hl                                           ; $594d: $2b
	jr nc, jr_00f_5941                               ; $594e: $30 $f1

	ld e, $2e                                        ; $5950: $1e $2e
	jr nc, jr_00f_5935                               ; $5952: $30 $e1

	inc [hl]                                         ; $5954: $34
	ld l, $28                                        ; $5955: $2e $28
	pop hl                                           ; $5957: $e1
	ld [hl+], a                                      ; $5958: $22

jr_00f_5959:
	ld l, $28                                        ; $5959: $2e $28
	pop af                                           ; $595b: $f1
	ld h, $2a                                        ; $595c: $26 $2a
	jr nz, @-$0d                                     ; $595e: $20 $f1

	inc h                                            ; $5960: $24
	ld a, [hl+]                                      ; $5961: $2a
	jr nz, @-$1d                                     ; $5962: $20 $e1

	jr nz, @+$31                                     ; $5964: $20 $2f

	jr nc, jr_00f_5959                               ; $5966: $30 $f1

	ld e, $2e                                        ; $5968: $1e $2e
	jr nc, jr_00f_594d                               ; $596a: $30 $e1

	inc [hl]                                         ; $596c: $34

jr_00f_596d:
	ld l, $28                                        ; $596d: $2e $28
	pop hl                                           ; $596f: $e1
	ld [hl+], a                                      ; $5970: $22

jr_00f_5971:
	ld l, $28                                        ; $5971: $2e $28
	pop af                                           ; $5973: $f1

jr_00f_5974:
	ld h, $2a                                        ; $5974: $26 $2a
	jr nz, @-$0d                                     ; $5976: $20 $f1

	inc h                                            ; $5978: $24
	ld a, [hl+]                                      ; $5979: $2a
	jr nz, @-$1d                                     ; $597a: $20 $e1

	jr nz, @+$31                                     ; $597c: $20 $2f

	jr nc, jr_00f_5971                               ; $597e: $30 $f1

	ld e, $2e                                        ; $5980: $1e $2e
	jr nc, @-$1d                                     ; $5982: $30 $e1

	inc [hl]                                         ; $5984: $34
	ld l, $28                                        ; $5985: $2e $28
	pop af                                           ; $5987: $f1
	ld h, $2a                                        ; $5988: $26 $2a
	jr z, jr_00f_596d                                ; $598a: $28 $e1

	ld [hl-], a                                      ; $598c: $32

jr_00f_598d:
	ld l, $20                                        ; $598d: $2e $20
	pop af                                           ; $598f: $f1
	inc h                                            ; $5990: $24
	ld a, [hl+]                                      ; $5991: $2a
	jr nz, @-$1d                                     ; $5992: $20 $e1

	jr nc, jr_00f_59c5                               ; $5994: $30 $2f

	jr nc, @-$0d                                     ; $5996: $30 $f1

	ld e, $2e                                        ; $5998: $1e $2e
	jr nc, @-$1d                                     ; $599a: $30 $e1

	inc [hl]                                         ; $599c: $34

jr_00f_599d:
	ld l, $28                                        ; $599d: $2e $28
	pop hl                                           ; $599f: $e1
	ld [hl+], a                                      ; $59a0: $22

jr_00f_59a1:
	ld l, $28                                        ; $59a1: $2e $28
	pop af                                           ; $59a3: $f1
	ld h, $2a                                        ; $59a4: $26 $2a
	jr nz, @-$0d                                     ; $59a6: $20 $f1

	inc h                                            ; $59a8: $24

jr_00f_59a9:
	ld a, [hl+]                                      ; $59a9: $2a
	jr nz, jr_00f_598d                               ; $59aa: $20 $e1

	jr nz, @+$31                                     ; $59ac: $20 $2f

	jr z, jr_00f_59a1                                ; $59ae: $28 $f1

	ld h, $2a                                        ; $59b0: $26 $2a
	jr nz, @-$0d                                     ; $59b2: $20 $f1

	inc h                                            ; $59b4: $24
	ld a, [hl+]                                      ; $59b5: $2a
	jr nc, jr_00f_59a9                               ; $59b6: $30 $f1

	ld e, $2e                                        ; $59b8: $1e $2e
	jr z, jr_00f_599d                                ; $59ba: $28 $e1

	ld [hl-], a                                      ; $59bc: $32
	ld l, $20                                        ; $59bd: $2e $20
	pop hl                                           ; $59bf: $e1
	jr nc, jr_00f_59f0                               ; $59c0: $30 $2e

	jr nc, @-$1d                                     ; $59c2: $30 $e1

	inc [hl]                                         ; $59c4: $34

jr_00f_59c5:
	cpl                                              ; $59c5: $2f
	jr z, jr_00f_59a9                                ; $59c6: $28 $e1

	ld a, [hl+]                                      ; $59c8: $2a

jr_00f_59c9:
	ld l, $20                                        ; $59c9: $2e $20
	pop hl                                           ; $59cb: $e1
	jr z, jr_00f_59fc                                ; $59cc: $28 $2e

	jr nc, @-$1d                                     ; $59ce: $30 $e1

	inc [hl]                                         ; $59d0: $34

jr_00f_59d1:
	ld l, $28                                        ; $59d1: $2e $28
	pop af                                           ; $59d3: $f1
	ld l, $2a                                        ; $59d4: $2e $2a
	jr nz, jr_00f_59c9                               ; $59d6: $20 $f1

	inc l                                            ; $59d8: $2c
	ld a, [hl+]                                      ; $59d9: $2a
	jr nc, @-$0d                                     ; $59da: $30 $f1

	ld e, $2f                                        ; $59dc: $1e $2f
	jr nc, jr_00f_59d1                               ; $59de: $30 $f1

	ld e, $2e                                        ; $59e0: $1e $2e
	jr nc, jr_00f_59c5                               ; $59e2: $30 $e1

	inc [hl]                                         ; $59e4: $34

jr_00f_59e5:
	ld l, $28                                        ; $59e5: $2e $28
	pop hl                                           ; $59e7: $e1
	ld [hl+], a                                      ; $59e8: $22

jr_00f_59e9:
	ld l, $20                                        ; $59e9: $2e $20
	pop hl                                           ; $59eb: $e1
	jr nz, @+$30                                     ; $59ec: $20 $2e

	jr z, @-$0d                                      ; $59ee: $28 $f1

jr_00f_59f0:
	ld h, $2a                                        ; $59f0: $26 $2a
	jr nz, jr_00f_59e5                               ; $59f2: $20 $f1

	inc h                                            ; $59f4: $24
	dec hl                                           ; $59f5: $2b
	jr z, jr_00f_59e9                                ; $59f6: $28 $f1

	ld l, $2a                                        ; $59f8: $2e $2a
	jr nz, @-$0d                                     ; $59fa: $20 $f1

jr_00f_59fc:
	inc l                                            ; $59fc: $2c
	ld a, [hl+]                                      ; $59fd: $2a
	jr nc, @-$0d                                     ; $59fe: $30 $f1

	ld e, $2e                                        ; $5a00: $1e $2e
	jr z, jr_00f_59e5                                ; $5a02: $28 $e1

	ld a, [hl+]                                      ; $5a04: $2a
	ld l, $20                                        ; $5a05: $2e $20
	pop hl                                           ; $5a07: $e1
	jr z, @+$30                                      ; $5a08: $28 $2e

	jr nc, @-$1d                                     ; $5a0a: $30 $e1

	inc [hl]                                         ; $5a0c: $34
	cpl                                              ; $5a0d: $2f
	dec hl                                           ; $5a0e: $2b
	ldh a, [$3c]                                     ; $5a0f: $f0 $3c
	ld a, [hl+]                                      ; $5a11: $2a
	inc hl                                           ; $5a12: $23
	ldh a, [$3a]                                     ; $5a13: $f0 $3a
	ld a, [hl+]                                      ; $5a15: $2a
	dec hl                                           ; $5a16: $2b
	ldh [$38], a                                     ; $5a17: $e0 $38
	ld l, $23                                        ; $5a19: $2e $23
	ldh [$36], a                                     ; $5a1b: $e0 $36
	cpl                                              ; $5a1d: $2f
	dec hl                                           ; $5a1e: $2b
	ldh a, [rLY]                                     ; $5a1f: $f0 $44
	ld a, [hl+]                                      ; $5a21: $2a
	inc hl                                           ; $5a22: $23
	ldh a, [rSCY]                                    ; $5a23: $f0 $42
	ld a, [hl+]                                      ; $5a25: $2a
	dec hl                                           ; $5a26: $2b
	ldh [$38], a                                     ; $5a27: $e0 $38
	ld l, $23                                        ; $5a29: $2e $23
	ldh [$36], a                                     ; $5a2b: $e0 $36
	cpl                                              ; $5a2d: $2f
	dec hl                                           ; $5a2e: $2b
	ldh a, [$3c]                                     ; $5a2f: $f0 $3c
	ld a, [hl+]                                      ; $5a31: $2a
	inc hl                                           ; $5a32: $23
	ldh a, [$3a]                                     ; $5a33: $f0 $3a
	ld a, [hl+]                                      ; $5a35: $2a
	dec hl                                           ; $5a36: $2b
	ldh [$38], a                                     ; $5a37: $e0 $38
	ld l, $23                                        ; $5a39: $2e $23
	ldh [$36], a                                     ; $5a3b: $e0 $36
	cpl                                              ; $5a3d: $2f
	dec hl                                           ; $5a3e: $2b
	ldh a, [rLY]                                     ; $5a3f: $f0 $44
	ld a, [hl+]                                      ; $5a41: $2a
	inc hl                                           ; $5a42: $23
	ldh a, [rSCY]                                    ; $5a43: $f0 $42
	ld a, [hl+]                                      ; $5a45: $2a
	dec hl                                           ; $5a46: $2b
	ldh [$38], a                                     ; $5a47: $e0 $38
	ld l, $23                                        ; $5a49: $2e $23
	ldh [$36], a                                     ; $5a4b: $e0 $36
	cpl                                              ; $5a4d: $2f
	dec hl                                           ; $5a4e: $2b
	ldh a, [rLY]                                     ; $5a4f: $f0 $44
	ld a, [hl+]                                      ; $5a51: $2a
	inc hl                                           ; $5a52: $23
	ldh a, [rSCY]                                    ; $5a53: $f0 $42
	ld a, [hl+]                                      ; $5a55: $2a
	dec hl                                           ; $5a56: $2b
	ldh [$38], a                                     ; $5a57: $e0 $38
	ld l, $23                                        ; $5a59: $2e $23
	ldh [$36], a                                     ; $5a5b: $e0 $36
	cpl                                              ; $5a5d: $2f
	dec hl                                           ; $5a5e: $2b
	ldh [rLCDC], a                                   ; $5a5f: $e0 $40
	ld l, $23                                        ; $5a61: $2e $23
	ldh [$3e], a                                     ; $5a63: $e0 $3e
	ld l, $2b                                        ; $5a65: $2e $2b
	ldh a, [rLY]                                     ; $5a67: $f0 $44
	ld a, [hl+]                                      ; $5a69: $2a
	inc hl                                           ; $5a6a: $23
	ldh a, [rSCY]                                    ; $5a6b: $f0 $42
	dec hl                                           ; $5a6d: $2b
	dec hl                                           ; $5a6e: $2b
	ldh a, [rLY]                                     ; $5a6f: $f0 $44
	ld a, [hl+]                                      ; $5a71: $2a
	inc hl                                           ; $5a72: $23
	ldh a, [rSCY]                                    ; $5a73: $f0 $42
	ld a, [hl+]                                      ; $5a75: $2a
	dec hl                                           ; $5a76: $2b
	ldh [$38], a                                     ; $5a77: $e0 $38
	ld l, $23                                        ; $5a79: $2e $23
	ldh [$36], a                                     ; $5a7b: $e0 $36
	cpl                                              ; $5a7d: $2f
	dec hl                                           ; $5a7e: $2b
	ldh a, [$3c]                                     ; $5a7f: $f0 $3c
	ld a, [hl+]                                      ; $5a81: $2a
	inc hl                                           ; $5a82: $23
	ldh a, [$3a]                                     ; $5a83: $f0 $3a
	ld a, [hl+]                                      ; $5a85: $2a
	dec hl                                           ; $5a86: $2b
	ldh [$38], a                                     ; $5a87: $e0 $38
	ld l, $23                                        ; $5a89: $2e $23
	ldh [$36], a                                     ; $5a8b: $e0 $36
	cpl                                              ; $5a8d: $2f

jr_00f_5a8e:
	dec hl                                           ; $5a8e: $2b
	ldh [rOBP0], a                                   ; $5a8f: $e0 $48
	ld l, $23                                        ; $5a91: $2e $23
	ldh [rDMA], a                                    ; $5a93: $e0 $46
	ld l, $2b                                        ; $5a95: $2e $2b
	ldh a, [rLY]                                     ; $5a97: $f0 $44
	ld a, [hl+]                                      ; $5a99: $2a
	inc hl                                           ; $5a9a: $23

jr_00f_5a9b:
	ldh a, [rSCY]                                    ; $5a9b: $f0 $42
	dec hl                                           ; $5a9d: $2b
	jr @-$0c                                         ; $5a9e: $18 $f2

	ld [$286a], sp                                   ; $5aa0: $08 $6a $28
	ldh a, [c]                                       ; $5aa3: $f2
	ld [hl-], a                                      ; $5aa4: $32
	ld l, $20                                        ; $5aa5: $2e $20
	ldh a, [c]                                       ; $5aa7: $f2
	jr nc, jr_00f_5ad8                               ; $5aa8: $30 $2e

	jr z, jr_00f_5a8e                                ; $5aaa: $28 $e2

	ld l, $2c                                        ; $5aac: $2e $2c
	jr nz, @-$1c                                     ; $5aae: $20 $e2

	inc l                                            ; $5ab0: $2c
	inc l                                            ; $5ab1: $2c
	nop                                              ; $5ab2: $00
	ldh a, [$4e]                                     ; $5ab3: $f0 $4e
	jr z, @-$06                                      ; $5ab5: $28 $f8

	ldh a, [$4c]                                     ; $5ab7: $f0 $4c
	jr z, jr_00f_5a9b                                ; $5ab9: $28 $e0

	pop af                                           ; $5abb: $f1
	ld [$d82a], sp                                   ; $5abc: $08 $2a $d8
	pop af                                           ; $5abf: $f1
	ld b, $2a                                        ; $5ac0: $06 $2a
	ret nc                                           ; $5ac2: $d0

	pop af                                           ; $5ac3: $f1
	inc b                                            ; $5ac4: $04
	ld a, [hl+]                                      ; $5ac5: $2a
	ret c                                            ; $5ac6: $d8

	pop hl                                           ; $5ac7: $e1
	ld [bc], a                                       ; $5ac8: $02
	jr z, jr_00f_5a9b                                ; $5ac9: $28 $d0

	pop hl                                           ; $5acb: $e1
	nop                                              ; $5acc: $00
	add hl, hl                                       ; $5acd: $29
	ret c                                            ; $5ace: $d8

	pop af                                           ; $5acf: $f1
	ld [de], a                                       ; $5ad0: $12
	ld a, [hl+]                                      ; $5ad1: $2a
	ret nc                                           ; $5ad2: $d0

	pop af                                           ; $5ad3: $f1
	db $10                                           ; $5ad4: $10
	ld a, [hl+]                                      ; $5ad5: $2a
	ldh [$e1], a                                     ; $5ad6: $e0 $e1

jr_00f_5ad8:
	ld c, $28                                        ; $5ad8: $0e $28
	ret c                                            ; $5ada: $d8

	pop hl                                           ; $5adb: $e1
	inc c                                            ; $5adc: $0c
	jr z, @-$2e                                      ; $5add: $28 $d0

	pop hl                                           ; $5adf: $e1
	ld a, [bc]                                       ; $5ae0: $0a
	jr z, @+$1a                                      ; $5ae1: $28 $18

	ldh a, [c]                                       ; $5ae3: $f2
	ld [$286a], sp                                   ; $5ae4: $08 $6a $28
	ldh a, [c]                                       ; $5ae7: $f2
	ld [hl-], a                                      ; $5ae8: $32

jr_00f_5ae9:
	ld l, $20                                        ; $5ae9: $2e $20

jr_00f_5aeb:
	ldh a, [c]                                       ; $5aeb: $f2
	jr nc, jr_00f_5b1c                               ; $5aec: $30 $2e

	nop                                              ; $5aee: $00
	ldh a, [$4e]                                     ; $5aef: $f0 $4e
	jr z, jr_00f_5aeb                                ; $5af1: $28 $f8

	ldh a, [$4c]                                     ; $5af3: $f0 $4c
	jr z, jr_00f_5b1f                                ; $5af5: $28 $28

	ldh [c], a                                       ; $5af7: $e2
	ld l, $2c                                        ; $5af8: $2e $2c
	jr nz, @-$1c                                     ; $5afa: $20 $e2

	inc l                                            ; $5afc: $2c
	inc l                                            ; $5afd: $2c
	ldh [$dc], a                                     ; $5afe: $e0 $dc
	ld b, [hl]                                       ; $5b00: $46
	add hl, hl                                       ; $5b01: $29
	ldh [$f1], a                                     ; $5b02: $e0 $f1
	jr @+$2c                                         ; $5b04: $18 $2a

jr_00f_5b06:
	ret c                                            ; $5b06: $d8

	pop af                                           ; $5b07: $f1
	ld d, $2a                                        ; $5b08: $16 $2a

jr_00f_5b0a:
	ret nc                                           ; $5b0a: $d0

	pop af                                           ; $5b0b: $f1
	inc d                                            ; $5b0c: $14
	ld a, [hl+]                                      ; $5b0d: $2a
	sbc $e1                                          ; $5b0e: $de $e1
	ld [bc], a                                       ; $5b10: $02
	jr z, jr_00f_5ae9                                ; $5b11: $28 $d6

	pop hl                                           ; $5b13: $e1
	nop                                              ; $5b14: $00
	jr z, jr_00f_5b2f                                ; $5b15: $28 $18

	ldh a, [c]                                       ; $5b17: $f2
	ld [$286a], sp                                   ; $5b18: $08 $6a $28
	ldh a, [c]                                       ; $5b1b: $f2

jr_00f_5b1c:
	ld [hl-], a                                      ; $5b1c: $32
	ld l, $20                                        ; $5b1d: $2e $20

jr_00f_5b1f:
	ldh a, [c]                                       ; $5b1f: $f2
	jr nc, jr_00f_5b50                               ; $5b20: $30 $2e

	jr z, jr_00f_5b06                                ; $5b22: $28 $e2

	ld l, $2c                                        ; $5b24: $2e $2c

jr_00f_5b26:
	jr nz, jr_00f_5b0a                               ; $5b26: $20 $e2

	inc l                                            ; $5b28: $2c
	inc l                                            ; $5b29: $2c

jr_00f_5b2a:
	nop                                              ; $5b2a: $00

jr_00f_5b2b:
	ldh a, [$4e]                                     ; $5b2b: $f0 $4e
	jr z, @-$06                                      ; $5b2d: $28 $f8

jr_00f_5b2f:
	ldh a, [$4c]                                     ; $5b2f: $f0 $4c

jr_00f_5b31:
	jr z, jr_00f_5b2b                                ; $5b31: $28 $f8

	rst SubAFromBC                                          ; $5b33: $e7
	ld b, [hl]                                       ; $5b34: $46
	add hl, hl                                       ; $5b35: $29
	jr jr_00f_5b2a                                   ; $5b36: $18 $f2

	ld [$286a], sp                                   ; $5b38: $08 $6a $28
	ldh a, [c]                                       ; $5b3b: $f2
	ld [hl-], a                                      ; $5b3c: $32
	ld l, $20                                        ; $5b3d: $2e $20
	ldh a, [c]                                       ; $5b3f: $f2
	jr nc, jr_00f_5b70                               ; $5b40: $30 $2e

	jr z, jr_00f_5b26                                ; $5b42: $28 $e2

	ld l, $2c                                        ; $5b44: $2e $2c
	jr nz, jr_00f_5b2a                               ; $5b46: $20 $e2

	inc l                                            ; $5b48: $2c
	inc l                                            ; $5b49: $2c
	ldh [$f1], a                                     ; $5b4a: $e0 $f1
	jr jr_00f_5b78                                   ; $5b4c: $18 $2a

	ret c                                            ; $5b4e: $d8

	pop af                                           ; $5b4f: $f1

jr_00f_5b50:
	ld d, $2a                                        ; $5b50: $16 $2a
	ret nc                                           ; $5b52: $d0

	pop af                                           ; $5b53: $f1
	inc d                                            ; $5b54: $14
	ld a, [hl+]                                      ; $5b55: $2a
	sbc $e1                                          ; $5b56: $de $e1
	ld [bc], a                                       ; $5b58: $02
	jr z, jr_00f_5b31                                ; $5b59: $28 $d6

jr_00f_5b5b:
	pop hl                                           ; $5b5b: $e1
	nop                                              ; $5b5c: $00
	jr z, jr_00f_5b5f                                ; $5b5d: $28 $00

jr_00f_5b5f:
	ldh a, [$4e]                                     ; $5b5f: $f0 $4e
	jr z, jr_00f_5b5b                                ; $5b61: $28 $f8

	ldh a, [$4c]                                     ; $5b63: $f0 $4c
	jr z, jr_00f_5b74                                ; $5b65: $28 $0d

jr_00f_5b67:
	ld sp, hl                                        ; $5b67: $f9
	ld b, [hl]                                       ; $5b68: $46
	add hl, hl                                       ; $5b69: $29
	jr z, @-$0c                                      ; $5b6a: $28 $f2

	inc a                                            ; $5b6c: $3c
	ld l, $20                                        ; $5b6d: $2e $20
	ldh a, [c]                                       ; $5b6f: $f2

jr_00f_5b70:
	ld a, [hl-]                                      ; $5b70: $3a
	ld l, $18                                        ; $5b71: $2e $18
	ldh a, [c]                                       ; $5b73: $f2

jr_00f_5b74:
	jr c, jr_00f_5ba4                                ; $5b74: $38 $2e

	jr nc, @-$1c                                     ; $5b76: $30 $e2

jr_00f_5b78:
	ld [hl], $2c                                     ; $5b78: $36 $2c
	jr z, @-$1c                                      ; $5b7a: $28 $e2

	inc [hl]                                         ; $5b7c: $34
	inc l                                            ; $5b7d: $2c
	jr nz, @-$1c                                     ; $5b7e: $20 $e2

	inc l                                            ; $5b80: $2c
	inc l                                            ; $5b81: $2c
	jr jr_00f_5b74                                   ; $5b82: $18 $f0

	ld b, [hl]                                       ; $5b84: $46
	jr z, jr_00f_5b67                                ; $5b85: $28 $e0

	pop af                                           ; $5b87: $f1
	ld [$d82a], sp                                   ; $5b88: $08 $2a $d8
	pop af                                           ; $5b8b: $f1
	ld b, $2a                                        ; $5b8c: $06 $2a
	ret nc                                           ; $5b8e: $d0

jr_00f_5b8f:
	pop af                                           ; $5b8f: $f1
	inc b                                            ; $5b90: $04
	ld a, [hl+]                                      ; $5b91: $2a
	ret c                                            ; $5b92: $d8

	pop hl                                           ; $5b93: $e1
	ld [bc], a                                       ; $5b94: $02
	jr z, jr_00f_5b67                                ; $5b95: $28 $d0

jr_00f_5b97:
	pop hl                                           ; $5b97: $e1
	nop                                              ; $5b98: $00
	jr z, jr_00f_5b9b                                ; $5b99: $28 $00

jr_00f_5b9b:
	ldh a, [$4e]                                     ; $5b9b: $f0 $4e
	jr z, jr_00f_5b97                                ; $5b9d: $28 $f8

	ldh a, [$4c]                                     ; $5b9f: $f0 $4c
	add hl, hl                                       ; $5ba1: $29
	inc hl                                           ; $5ba2: $23
	ldh a, [c]                                       ; $5ba3: $f2

jr_00f_5ba4:
	ld b, h                                          ; $5ba4: $44
	ld l, $1b                                        ; $5ba5: $2e $1b
	ldh a, [c]                                       ; $5ba7: $f2
	ld b, d                                          ; $5ba8: $42
	ld l, $13                                        ; $5ba9: $2e $13
	ldh a, [c]                                       ; $5bab: $f2
	ld b, b                                          ; $5bac: $40
	ld l, $e0                                        ; $5bad: $2e $e0
	pop af                                           ; $5baf: $f1
	ld [$d82a], sp                                   ; $5bb0: $08 $2a $d8
	pop af                                           ; $5bb3: $f1
	ld b, $2a                                        ; $5bb4: $06 $2a
	ret nc                                           ; $5bb6: $d0

	pop af                                           ; $5bb7: $f1
	inc b                                            ; $5bb8: $04
	ld a, [hl+]                                      ; $5bb9: $2a
	ret c                                            ; $5bba: $d8

	pop hl                                           ; $5bbb: $e1

jr_00f_5bbc:
	ld [bc], a                                       ; $5bbc: $02
	jr z, jr_00f_5b8f                                ; $5bbd: $28 $d0

jr_00f_5bbf:
	pop hl                                           ; $5bbf: $e1
	nop                                              ; $5bc0: $00
	jr z, jr_00f_5bc3                                ; $5bc1: $28 $00

jr_00f_5bc3:
	ldh a, [$4e]                                     ; $5bc3: $f0 $4e
	jr z, jr_00f_5bbf                                ; $5bc5: $28 $f8

	ldh a, [$4c]                                     ; $5bc7: $f0 $4c
	jr z, @+$15                                      ; $5bc9: $28 $13

	ldh [c], a                                       ; $5bcb: $e2
	ld a, $2c                                        ; $5bcc: $3e $2c
	dec h                                            ; $5bce: $25
	ldh [c], a                                       ; $5bcf: $e2

jr_00f_5bd0:
	ld l, $2c                                        ; $5bd0: $2e $2c
	jr c, jr_00f_5bbc                                ; $5bd2: $38 $e8

	ld b, [hl]                                       ; $5bd4: $46
	jr z, jr_00f_5bf4                                ; $5bd5: $28 $1d

	ldh [c], a                                       ; $5bd7: $e2
	inc l                                            ; $5bd8: $2c
	dec l                                            ; $5bd9: $2d
	inc hl                                           ; $5bda: $23
	ldh a, [c]                                       ; $5bdb: $f2
	ld b, h                                          ; $5bdc: $44
	ld l, $1b                                        ; $5bdd: $2e $1b
	ldh a, [c]                                       ; $5bdf: $f2
	ld b, d                                          ; $5be0: $42
	ld l, $13                                        ; $5be1: $2e $13
	ldh a, [c]                                       ; $5be3: $f2
	ld b, b                                          ; $5be4: $40
	ld l, $25                                        ; $5be5: $2e $25
	ldh [c], a                                       ; $5be7: $e2
	ld l, $2c                                        ; $5be8: $2e $2c
	inc de                                           ; $5bea: $13
	ldh [c], a                                       ; $5beb: $e2
	ld a, $2c                                        ; $5bec: $3e $2c
	dec e                                            ; $5bee: $1d
	ldh [c], a                                       ; $5bef: $e2
	inc l                                            ; $5bf0: $2c
	inc l                                            ; $5bf1: $2c
	rst SubAFromHL                                          ; $5bf2: $d7
	pop af                                           ; $5bf3: $f1

jr_00f_5bf4:
	ld [hl+], a                                      ; $5bf4: $22
	ld a, [hl+]                                      ; $5bf5: $2a
	rst GetHLinHL                                          ; $5bf6: $cf
	pop af                                           ; $5bf7: $f1
	jr nz, jr_00f_5c24                               ; $5bf8: $20 $2a

	db $dd                                           ; $5bfa: $dd
	pop hl                                           ; $5bfb: $e1
	ld e, $28                                        ; $5bfc: $1e $28
	push de                                          ; $5bfe: $d5
	pop hl                                           ; $5bff: $e1
	inc e                                            ; $5c00: $1c
	jr z, jr_00f_5bd0                                ; $5c01: $28 $cd

jr_00f_5c03:
	pop hl                                           ; $5c03: $e1
	ld a, [de]                                       ; $5c04: $1a
	jr z, jr_00f_5c07                                ; $5c05: $28 $00

jr_00f_5c07:
	ldh a, [$4e]                                     ; $5c07: $f0 $4e
	jr z, jr_00f_5c03                                ; $5c09: $28 $f8

	ldh a, [$4c]                                     ; $5c0b: $f0 $4c
	add hl, hl                                       ; $5c0d: $29
	inc hl                                           ; $5c0e: $23
	ldh a, [c]                                       ; $5c0f: $f2
	ld b, h                                          ; $5c10: $44
	ld l, $1b                                        ; $5c11: $2e $1b
	ldh a, [c]                                       ; $5c13: $f2
	ld b, d                                          ; $5c14: $42
	ld l, $13                                        ; $5c15: $2e $13
	ldh a, [c]                                       ; $5c17: $f2
	ld b, b                                          ; $5c18: $40
	ld l, $25                                        ; $5c19: $2e $25
	ldh [c], a                                       ; $5c1b: $e2
	ld l, $2c                                        ; $5c1c: $2e $2c
	inc de                                           ; $5c1e: $13
	ldh [c], a                                       ; $5c1f: $e2
	ld a, $2c                                        ; $5c20: $3e $2c
	dec e                                            ; $5c22: $1d
	ldh [c], a                                       ; $5c23: $e2

jr_00f_5c24:
	inc l                                            ; $5c24: $2c
	inc l                                            ; $5c25: $2c
	ldh [$f1], a                                     ; $5c26: $e0 $f1
	ld [$d82a], sp                                   ; $5c28: $08 $2a $d8
	pop af                                           ; $5c2b: $f1
	ld b, $2a                                        ; $5c2c: $06 $2a
	ret nc                                           ; $5c2e: $d0

	pop af                                           ; $5c2f: $f1
	inc b                                            ; $5c30: $04
	ld a, [hl+]                                      ; $5c31: $2a
	ret c                                            ; $5c32: $d8

	pop hl                                           ; $5c33: $e1
	ld [bc], a                                       ; $5c34: $02
	jr z, jr_00f_5c07                                ; $5c35: $28 $d0

jr_00f_5c37:
	pop hl                                           ; $5c37: $e1
	nop                                              ; $5c38: $00
	jr z, jr_00f_5c3b                                ; $5c39: $28 $00

jr_00f_5c3b:
	ldh a, [$4e]                                     ; $5c3b: $f0 $4e
	jr z, jr_00f_5c37                                ; $5c3d: $28 $f8

jr_00f_5c3f:
	ldh a, [$4c]                                     ; $5c3f: $f0 $4c
	jr z, jr_00f_5c4b                                ; $5c41: $28 $08

	add sp, $46                                      ; $5c43: $e8 $46
	add hl, hl                                       ; $5c45: $29
	inc hl                                           ; $5c46: $23
	ldh a, [c]                                       ; $5c47: $f2
	ld b, h                                          ; $5c48: $44
	ld l, $1b                                        ; $5c49: $2e $1b

jr_00f_5c4b:
	ldh a, [c]                                       ; $5c4b: $f2
	ld b, d                                          ; $5c4c: $42
	ld l, $13                                        ; $5c4d: $2e $13
	ldh a, [c]                                       ; $5c4f: $f2
	ld b, b                                          ; $5c50: $40
	ld l, $25                                        ; $5c51: $2e $25
	ldh [c], a                                       ; $5c53: $e2
	ld l, $2c                                        ; $5c54: $2e $2c
	inc de                                           ; $5c56: $13
	ldh [c], a                                       ; $5c57: $e2
	ld a, $2c                                        ; $5c58: $3e $2c
	dec e                                            ; $5c5a: $1d
	ldh [c], a                                       ; $5c5b: $e2
	inc l                                            ; $5c5c: $2c
	inc l                                            ; $5c5d: $2c
	ldh [$f1], a                                     ; $5c5e: $e0 $f1
	ld [$d82a], sp                                   ; $5c60: $08 $2a $d8
	pop af                                           ; $5c63: $f1
	ld b, $2a                                        ; $5c64: $06 $2a
	ret nc                                           ; $5c66: $d0

	pop af                                           ; $5c67: $f1
	inc b                                            ; $5c68: $04
	ld a, [hl+]                                      ; $5c69: $2a
	ret c                                            ; $5c6a: $d8

jr_00f_5c6b:
	pop hl                                           ; $5c6b: $e1
	ld [bc], a                                       ; $5c6c: $02
	jr z, jr_00f_5c3f                                ; $5c6d: $28 $d0

jr_00f_5c6f:
	pop hl                                           ; $5c6f: $e1
	nop                                              ; $5c70: $00
	jr z, jr_00f_5c73                                ; $5c71: $28 $00

jr_00f_5c73:
	ldh a, [$4e]                                     ; $5c73: $f0 $4e
	jr z, jr_00f_5c6f                                ; $5c75: $28 $f8

	ldh a, [$4c]                                     ; $5c77: $f0 $4c
	jr z, jr_00f_5c6b                                ; $5c79: $28 $f0

	ldh a, [rDMA]                                    ; $5c7b: $f0 $46

jr_00f_5c7d:
	add hl, hl                                       ; $5c7d: $29
	inc hl                                           ; $5c7e: $23
	ldh a, [c]                                       ; $5c7f: $f2
	ld b, h                                          ; $5c80: $44
	ld l, $1b                                        ; $5c81: $2e $1b
	ldh a, [c]                                       ; $5c83: $f2
	ld b, d                                          ; $5c84: $42
	ld l, $13                                        ; $5c85: $2e $13
	ldh a, [c]                                       ; $5c87: $f2
	ld b, b                                          ; $5c88: $40
	ld l, $25                                        ; $5c89: $2e $25
	ldh [c], a                                       ; $5c8b: $e2
	ld l, $2c                                        ; $5c8c: $2e $2c
	inc de                                           ; $5c8e: $13
	ldh [c], a                                       ; $5c8f: $e2
	ld a, $2c                                        ; $5c90: $3e $2c
	dec e                                            ; $5c92: $1d

jr_00f_5c93:
	ldh [c], a                                       ; $5c93: $e2
	inc l                                            ; $5c94: $2c
	inc l                                            ; $5c95: $2c
	ldh [$f1], a                                     ; $5c96: $e0 $f1
	jr jr_00f_5cc4                                   ; $5c98: $18 $2a

	ret c                                            ; $5c9a: $d8

	pop af                                           ; $5c9b: $f1
	ld d, $2a                                        ; $5c9c: $16 $2a
	ret nc                                           ; $5c9e: $d0

	pop af                                           ; $5c9f: $f1
	inc d                                            ; $5ca0: $14
	ld a, [hl+]                                      ; $5ca1: $2a
	sbc $e1                                          ; $5ca2: $de $e1
	ld [bc], a                                       ; $5ca4: $02
	jr z, jr_00f_5c7d                                ; $5ca5: $28 $d6

jr_00f_5ca7:
	pop hl                                           ; $5ca7: $e1
	nop                                              ; $5ca8: $00
	jr z, jr_00f_5cab                                ; $5ca9: $28 $00

jr_00f_5cab:
	ldh a, [$4e]                                     ; $5cab: $f0 $4e
	jr z, jr_00f_5ca7                                ; $5cad: $28 $f8

	ldh a, [$4c]                                     ; $5caf: $f0 $4c
	jr z, jr_00f_5c93                                ; $5cb1: $28 $e0

jr_00f_5cb3:
	ld hl, sp+$46                                    ; $5cb3: $f8 $46

jr_00f_5cb5:
	add hl, hl                                       ; $5cb5: $29
	inc hl                                           ; $5cb6: $23
	ldh a, [c]                                       ; $5cb7: $f2
	ld b, h                                          ; $5cb8: $44
	ld l, $1b                                        ; $5cb9: $2e $1b
	ldh a, [c]                                       ; $5cbb: $f2
	ld b, d                                          ; $5cbc: $42
	ld l, $13                                        ; $5cbd: $2e $13
	ldh a, [c]                                       ; $5cbf: $f2
	ld b, b                                          ; $5cc0: $40
	ld l, $25                                        ; $5cc1: $2e $25
	ldh [c], a                                       ; $5cc3: $e2

jr_00f_5cc4:
	ld l, $2c                                        ; $5cc4: $2e $2c
	inc de                                           ; $5cc6: $13
	ldh [c], a                                       ; $5cc7: $e2
	ld a, $2c                                        ; $5cc8: $3e $2c
	dec e                                            ; $5cca: $1d
	ldh [c], a                                       ; $5ccb: $e2
	inc l                                            ; $5ccc: $2c
	inc l                                            ; $5ccd: $2c
	ldh [$f1], a                                     ; $5cce: $e0 $f1
	jr jr_00f_5cfc                                   ; $5cd0: $18 $2a

	ret c                                            ; $5cd2: $d8

	pop af                                           ; $5cd3: $f1
	ld d, $2a                                        ; $5cd4: $16 $2a
	ret nc                                           ; $5cd6: $d0

	pop af                                           ; $5cd7: $f1
	inc d                                            ; $5cd8: $14
	ld a, [hl+]                                      ; $5cd9: $2a
	sbc $e1                                          ; $5cda: $de $e1
	ld [bc], a                                       ; $5cdc: $02
	jr z, jr_00f_5cb5                                ; $5cdd: $28 $d6

jr_00f_5cdf:
	pop hl                                           ; $5cdf: $e1
	nop                                              ; $5ce0: $00
	jr z, jr_00f_5ce3                                ; $5ce1: $28 $00

jr_00f_5ce3:
	ldh a, [$4e]                                     ; $5ce3: $f0 $4e
	jr z, jr_00f_5cdf                                ; $5ce5: $28 $f8

	ldh a, [$4c]                                     ; $5ce7: $f0 $4c
	jr z, jr_00f_5cb3                                ; $5ce9: $28 $c8

	ldh a, [rDMA]                                    ; $5ceb: $f0 $46

jr_00f_5ced:
	add hl, hl                                       ; $5ced: $29
	inc hl                                           ; $5cee: $23
	ldh a, [c]                                       ; $5cef: $f2
	ld b, h                                          ; $5cf0: $44
	ld l, $1b                                        ; $5cf1: $2e $1b
	ldh a, [c]                                       ; $5cf3: $f2
	ld b, d                                          ; $5cf4: $42
	ld l, $13                                        ; $5cf5: $2e $13
	ldh a, [c]                                       ; $5cf7: $f2
	ld b, b                                          ; $5cf8: $40
	ld l, $25                                        ; $5cf9: $2e $25
	ldh [c], a                                       ; $5cfb: $e2

jr_00f_5cfc:
	ld l, $2c                                        ; $5cfc: $2e $2c
	inc de                                           ; $5cfe: $13
	ldh [c], a                                       ; $5cff: $e2
	ld a, $2c                                        ; $5d00: $3e $2c
	dec e                                            ; $5d02: $1d
	ldh [c], a                                       ; $5d03: $e2
	inc l                                            ; $5d04: $2c
	inc l                                            ; $5d05: $2c
	ldh [$f1], a                                     ; $5d06: $e0 $f1
	jr jr_00f_5d34                                   ; $5d08: $18 $2a

	ret c                                            ; $5d0a: $d8

	pop af                                           ; $5d0b: $f1
	ld d, $2a                                        ; $5d0c: $16 $2a
	ret nc                                           ; $5d0e: $d0

	pop af                                           ; $5d0f: $f1
	inc d                                            ; $5d10: $14
	ld a, [hl+]                                      ; $5d11: $2a
	sbc $e1                                          ; $5d12: $de $e1
	ld [bc], a                                       ; $5d14: $02
	jr z, jr_00f_5ced                                ; $5d15: $28 $d6

jr_00f_5d17:
	pop hl                                           ; $5d17: $e1
	nop                                              ; $5d18: $00
	jr z, jr_00f_5d1b                                ; $5d19: $28 $00

jr_00f_5d1b:
	ldh a, [$4e]                                     ; $5d1b: $f0 $4e
	jr z, jr_00f_5d17                                ; $5d1d: $28 $f8

	ldh a, [$4c]                                     ; $5d1f: $f0 $4c
	jr z, @-$46                                      ; $5d21: $28 $b8

	add sp, $46                                      ; $5d23: $e8 $46
	add hl, hl                                       ; $5d25: $29
	inc hl                                           ; $5d26: $23
	ldh a, [c]                                       ; $5d27: $f2
	ld b, h                                          ; $5d28: $44
	ld l, $1b                                        ; $5d29: $2e $1b
	ldh a, [c]                                       ; $5d2b: $f2
	ld b, d                                          ; $5d2c: $42
	ld l, $13                                        ; $5d2d: $2e $13
	ldh a, [c]                                       ; $5d2f: $f2
	ld b, b                                          ; $5d30: $40
	ld l, $25                                        ; $5d31: $2e $25
	ldh [c], a                                       ; $5d33: $e2

jr_00f_5d34:
	ld l, $2c                                        ; $5d34: $2e $2c
	inc de                                           ; $5d36: $13

jr_00f_5d37:
	ldh [c], a                                       ; $5d37: $e2
	ld a, $2c                                        ; $5d38: $3e $2c
	dec e                                            ; $5d3a: $1d
	ldh [c], a                                       ; $5d3b: $e2
	inc l                                            ; $5d3c: $2c
	inc l                                            ; $5d3d: $2c
	ret c                                            ; $5d3e: $d8

	pop af                                           ; $5d3f: $f1
	ld a, [hl+]                                      ; $5d40: $2a
	ld a, [hl+]                                      ; $5d41: $2a
	ret c                                            ; $5d42: $d8

	pop hl                                           ; $5d43: $e1
	ld h, $28                                        ; $5d44: $26 $28
	ret nc                                           ; $5d46: $d0

	pop af                                           ; $5d47: $f1
	jr z, jr_00f_5d74                                ; $5d48: $28 $2a

	ret nc                                           ; $5d4a: $d0

jr_00f_5d4b:
	pop hl                                           ; $5d4b: $e1
	inc h                                            ; $5d4c: $24
	jr z, jr_00f_5d4f                                ; $5d4d: $28 $00

jr_00f_5d4f:
	ldh a, [$4e]                                     ; $5d4f: $f0 $4e
	jr z, jr_00f_5d4b                                ; $5d51: $28 $f8

	ldh a, [$4c]                                     ; $5d53: $f0 $4c
	jr z, jr_00f_5d37                                ; $5d55: $28 $e0

	ld [$6a4a], a                                    ; $5d57: $ea $4a $6a
	ret                                              ; $5d5a: $c9


	add sp, $4a                                      ; $5d5b: $e8 $4a
	dec hl                                           ; $5d5d: $2b
	inc hl                                           ; $5d5e: $23
	ldh a, [c]                                       ; $5d5f: $f2
	ld b, h                                          ; $5d60: $44
	ld l, $1b                                        ; $5d61: $2e $1b
	ldh a, [c]                                       ; $5d63: $f2
	ld b, d                                          ; $5d64: $42
	ld l, $13                                        ; $5d65: $2e $13
	ldh a, [c]                                       ; $5d67: $f2

jr_00f_5d68:
	ld b, b                                          ; $5d68: $40
	ld l, $25                                        ; $5d69: $2e $25
	ldh [c], a                                       ; $5d6b: $e2

jr_00f_5d6c:
	ld l, $2c                                        ; $5d6c: $2e $2c
	inc de                                           ; $5d6e: $13
	ldh [c], a                                       ; $5d6f: $e2

jr_00f_5d70:
	ld a, $2c                                        ; $5d70: $3e $2c
	dec e                                            ; $5d72: $1d
	ldh [c], a                                       ; $5d73: $e2

jr_00f_5d74:
	inc l                                            ; $5d74: $2c
	inc l                                            ; $5d75: $2c
	ret c                                            ; $5d76: $d8

	pop af                                           ; $5d77: $f1
	ld a, [hl+]                                      ; $5d78: $2a
	ld a, [hl+]                                      ; $5d79: $2a
	ret nc                                           ; $5d7a: $d0

	pop af                                           ; $5d7b: $f1
	jr z, jr_00f_5da8                                ; $5d7c: $28 $2a

	ret c                                            ; $5d7e: $d8

	pop hl                                           ; $5d7f: $e1
	ld h, $28                                        ; $5d80: $26 $28
	ret nc                                           ; $5d82: $d0

jr_00f_5d83:
	pop hl                                           ; $5d83: $e1
	inc h                                            ; $5d84: $24

jr_00f_5d85:
	jr z, jr_00f_5d87                                ; $5d85: $28 $00

jr_00f_5d87:
	ldh a, [$4e]                                     ; $5d87: $f0 $4e
	jr z, jr_00f_5d83                                ; $5d89: $28 $f8

	ldh a, [$4c]                                     ; $5d8b: $f0 $4c
	jr z, jr_00f_5d6c                                ; $5d8d: $28 $dd

	rst SubAFromBC                                          ; $5d8f: $e7
	ld c, d                                          ; $5d90: $4a
	ld l, d                                          ; $5d91: $6a
	ret z                                            ; $5d92: $c8

	db $eb                                           ; $5d93: $eb
	ld c, d                                          ; $5d94: $4a
	dec hl                                           ; $5d95: $2b
	jr c, jr_00f_5d70                                ; $5d96: $38 $d8

	ld d, [hl]                                       ; $5d98: $56

jr_00f_5d99:
	ld a, [hl+]                                      ; $5d99: $2a
	jr nc, jr_00f_5d74                               ; $5d9a: $30 $d8

jr_00f_5d9c:
	ld d, h                                          ; $5d9c: $54

jr_00f_5d9d:
	ld a, [hl+]                                      ; $5d9d: $2a
	jr c, jr_00f_5d68                                ; $5d9e: $38 $c8

jr_00f_5da0:
	ld c, [hl]                                       ; $5da0: $4e
	ld a, [hl+]                                      ; $5da1: $2a
	jr nc, jr_00f_5d6c                               ; $5da2: $30 $c8

jr_00f_5da4:
	ld c, h                                          ; $5da4: $4c
	ld a, [hl+]                                      ; $5da5: $2a
	jr nz, jr_00f_5d99                               ; $5da6: $20 $f1

jr_00f_5da8:
	ld h, $2e                                        ; $5da8: $26 $2e
	jr jr_00f_5d9d                                   ; $5daa: $18 $f1

	inc h                                            ; $5dac: $24
	ld l, $20                                        ; $5dad: $2e $20
	pop hl                                           ; $5daf: $e1
	ld a, [hl+]                                      ; $5db0: $2a
	jr z, @+$1a                                      ; $5db1: $28 $18

	pop hl                                           ; $5db3: $e1
	jr z, jr_00f_5dde                                ; $5db4: $28 $28

	jp nc, $14e1                                     ; $5db6: $d2 $e1 $14

	jr z, jr_00f_5d85                                ; $5db9: $28 $ca

	pop hl                                           ; $5dbb: $e1
	ld [de], a                                       ; $5dbc: $12
	jr z, @-$26                                      ; $5dbd: $28 $d8

	pop af                                           ; $5dbf: $f1
	ld a, [bc]                                       ; $5dc0: $0a
	inc l                                            ; $5dc1: $2c
	ret nc                                           ; $5dc2: $d0

	pop af                                           ; $5dc3: $f1
	ld [$c82c], sp                                   ; $5dc4: $08 $2c $c8
	pop af                                           ; $5dc7: $f1
	ld b, $2d                                        ; $5dc8: $06 $2d
	jr c, jr_00f_5da4                                ; $5dca: $38 $d8

	ld d, [hl]                                       ; $5dcc: $56

jr_00f_5dcd:
	ld a, [hl+]                                      ; $5dcd: $2a
	jr nc, jr_00f_5da8                               ; $5dce: $30 $d8

jr_00f_5dd0:
	ld d, h                                          ; $5dd0: $54

jr_00f_5dd1:
	ld a, [hl+]                                      ; $5dd1: $2a
	jr c, jr_00f_5d9c                                ; $5dd2: $38 $c8

jr_00f_5dd4:
	ld c, [hl]                                       ; $5dd4: $4e
	ld a, [hl+]                                      ; $5dd5: $2a
	jr nc, jr_00f_5da0                               ; $5dd6: $30 $c8

jr_00f_5dd8:
	ld c, h                                          ; $5dd8: $4c
	ld a, [hl+]                                      ; $5dd9: $2a
	jr nz, jr_00f_5dcd                               ; $5dda: $20 $f1

jr_00f_5ddc:
	ld l, $2e                                        ; $5ddc: $2e $2e

jr_00f_5dde:
	jr jr_00f_5dd1                                   ; $5dde: $18 $f1

	inc l                                            ; $5de0: $2c
	ld l, $20                                        ; $5de1: $2e $20
	pop hl                                           ; $5de3: $e1
	ld [hl-], a                                      ; $5de4: $32
	jr z, @+$1a                                      ; $5de5: $28 $18

	pop hl                                           ; $5de7: $e1
	jr nc, jr_00f_5e12                               ; $5de8: $30 $28

	rst SubAFromDE                                          ; $5dea: $df
	pop af                                           ; $5deb: $f1
	db $10                                           ; $5dec: $10
	inc l                                            ; $5ded: $2c
	rst SubAFromHL                                          ; $5dee: $d7
	pop af                                           ; $5def: $f1
	ld c, $2c                                        ; $5df0: $0e $2c
	rst GetHLinHL                                          ; $5df2: $cf
	pop af                                           ; $5df3: $f1
	inc c                                            ; $5df4: $0c
	inc l                                            ; $5df5: $2c
	sub $e1                                          ; $5df6: $d6 $e1
	inc d                                            ; $5df8: $14
	jr z, @-$30                                      ; $5df9: $28 $ce

	pop hl                                           ; $5dfb: $e1
	ld [de], a                                       ; $5dfc: $12
	add hl, hl                                       ; $5dfd: $29
	jr c, jr_00f_5dd8                                ; $5dfe: $38 $d8

	ld d, [hl]                                       ; $5e00: $56

jr_00f_5e01:
	ld a, [hl+]                                      ; $5e01: $2a
	jr nc, jr_00f_5ddc                               ; $5e02: $30 $d8

jr_00f_5e04:
	ld d, h                                          ; $5e04: $54

jr_00f_5e05:
	ld a, [hl+]                                      ; $5e05: $2a
	jr c, jr_00f_5dd0                                ; $5e06: $38 $c8

jr_00f_5e08:
	ld c, [hl]                                       ; $5e08: $4e
	ld a, [hl+]                                      ; $5e09: $2a
	jr nc, jr_00f_5dd4                               ; $5e0a: $30 $c8

jr_00f_5e0c:
	ld c, h                                          ; $5e0c: $4c
	ld a, [hl+]                                      ; $5e0d: $2a
	jr nz, jr_00f_5e01                               ; $5e0e: $20 $f1

jr_00f_5e10:
	ld h, $2e                                        ; $5e10: $26 $2e

jr_00f_5e12:
	jr jr_00f_5e05                                   ; $5e12: $18 $f1

	inc h                                            ; $5e14: $24
	ld l, $e0                                        ; $5e15: $2e $e0
	pop af                                           ; $5e17: $f1
	ld a, [bc]                                       ; $5e18: $0a
	inc l                                            ; $5e19: $2c
	ret c                                            ; $5e1a: $d8

	pop af                                           ; $5e1b: $f1
	ld [$d02c], sp                                   ; $5e1c: $08 $2c $d0
	pop af                                           ; $5e1f: $f1
	ld b, $2c                                        ; $5e20: $06 $2c
	jr nz, jr_00f_5e05                               ; $5e22: $20 $e1

	ld a, [hl+]                                      ; $5e24: $2a
	jr z, @+$1a                                      ; $5e25: $28 $18

	pop hl                                           ; $5e27: $e1
	jr z, jr_00f_5e52                                ; $5e28: $28 $28

	jp c, $14e1                                      ; $5e2a: $da $e1 $14

	jr z, jr_00f_5e01                                ; $5e2d: $28 $d2

	pop hl                                           ; $5e2f: $e1
	ld [de], a                                       ; $5e30: $12
	add hl, hl                                       ; $5e31: $29
	jr c, jr_00f_5e0c                                ; $5e32: $38 $d8

	ld d, [hl]                                       ; $5e34: $56

jr_00f_5e35:
	ld a, [hl+]                                      ; $5e35: $2a
	jr nc, jr_00f_5e10                               ; $5e36: $30 $d8

jr_00f_5e38:
	ld d, h                                          ; $5e38: $54

jr_00f_5e39:
	ld a, [hl+]                                      ; $5e39: $2a
	jr c, jr_00f_5e04                                ; $5e3a: $38 $c8

jr_00f_5e3c:
	ld c, [hl]                                       ; $5e3c: $4e
	ld a, [hl+]                                      ; $5e3d: $2a
	jr nc, jr_00f_5e08                               ; $5e3e: $30 $c8

jr_00f_5e40:
	ld c, h                                          ; $5e40: $4c
	ld a, [hl+]                                      ; $5e41: $2a
	jr nz, jr_00f_5e35                               ; $5e42: $20 $f1

jr_00f_5e44:
	ld l, $2e                                        ; $5e44: $2e $2e
	jr nz, @-$1d                                     ; $5e46: $20 $e1

	ld [hl-], a                                      ; $5e48: $32
	jr z, jr_00f_5e63                                ; $5e49: $28 $18

	pop af                                           ; $5e4b: $f1
	inc l                                            ; $5e4c: $2c
	ld l, $18                                        ; $5e4d: $2e $18
	pop hl                                           ; $5e4f: $e1
	jr nc, jr_00f_5e7a                               ; $5e50: $30 $28

jr_00f_5e52:
	rst SubAFromBC                                          ; $5e52: $e7
	pop af                                           ; $5e53: $f1
	db $10                                           ; $5e54: $10
	inc l                                            ; $5e55: $2c
	rst SubAFromDE                                          ; $5e56: $df
	pop af                                           ; $5e57: $f1
	ld c, $2c                                        ; $5e58: $0e $2c
	rst SubAFromHL                                          ; $5e5a: $d7
	pop af                                           ; $5e5b: $f1
	inc c                                            ; $5e5c: $0c
	inc l                                            ; $5e5d: $2c
	sbc $e1                                          ; $5e5e: $de $e1
	inc d                                            ; $5e60: $14
	jr z, jr_00f_5e39                                ; $5e61: $28 $d6

jr_00f_5e63:
	pop hl                                           ; $5e63: $e1
	ld [de], a                                       ; $5e64: $12
	add hl, hl                                       ; $5e65: $29
	jr c, jr_00f_5e40                                ; $5e66: $38 $d8

	ld d, [hl]                                       ; $5e68: $56

jr_00f_5e69:
	ld a, [hl+]                                      ; $5e69: $2a
	jr nc, jr_00f_5e44                               ; $5e6a: $30 $d8

	ld d, h                                          ; $5e6c: $54

jr_00f_5e6d:
	ld a, [hl+]                                      ; $5e6d: $2a
	jr c, jr_00f_5e38                                ; $5e6e: $38 $c8

	ld c, [hl]                                       ; $5e70: $4e

jr_00f_5e71:
	ld a, [hl+]                                      ; $5e71: $2a
	jr nc, jr_00f_5e3c                               ; $5e72: $30 $c8

	ld c, h                                          ; $5e74: $4c
	ld a, [hl+]                                      ; $5e75: $2a
	jr nz, jr_00f_5e69                               ; $5e76: $20 $f1

	ld h, $2e                                        ; $5e78: $26 $2e

jr_00f_5e7a:
	jr jr_00f_5e6d                                   ; $5e7a: $18 $f1

	inc h                                            ; $5e7c: $24
	ld l, $e8                                        ; $5e7d: $2e $e8
	pop af                                           ; $5e7f: $f1
	ld a, [bc]                                       ; $5e80: $0a

jr_00f_5e81:
	inc l                                            ; $5e81: $2c
	ldh [$f1], a                                     ; $5e82: $e0 $f1
	ld [$d82c], sp                                   ; $5e84: $08 $2c $d8
	pop af                                           ; $5e87: $f1
	ld b, $2c                                        ; $5e88: $06 $2c
	jr nz, jr_00f_5e6d                               ; $5e8a: $20 $e1

	ld a, [hl+]                                      ; $5e8c: $2a

jr_00f_5e8d:
	jr z, jr_00f_5ea7                                ; $5e8d: $28 $18

	pop hl                                           ; $5e8f: $e1

jr_00f_5e90:
	jr z, @+$2a                                      ; $5e90: $28 $28

	ldh [c], a                                       ; $5e92: $e2
	pop hl                                           ; $5e93: $e1

jr_00f_5e94:
	inc d                                            ; $5e94: $14
	jr z, jr_00f_5e71                                ; $5e95: $28 $da

	pop hl                                           ; $5e97: $e1
	ld [de], a                                       ; $5e98: $12

jr_00f_5e99:
	add hl, hl                                       ; $5e99: $29
	jr nz, jr_00f_5e8d                               ; $5e9a: $20 $f1

jr_00f_5e9c:
	ld l, $2e                                        ; $5e9c: $2e $2e
	jr nz, jr_00f_5e81                               ; $5e9e: $20 $e1

	ld [hl-], a                                      ; $5ea0: $32
	jr z, jr_00f_5ebb                                ; $5ea1: $28 $18

	pop af                                           ; $5ea3: $f1
	inc l                                            ; $5ea4: $2c
	ld l, $18                                        ; $5ea5: $2e $18

jr_00f_5ea7:
	pop hl                                           ; $5ea7: $e1
	jr nc, jr_00f_5ed2                               ; $5ea8: $30 $28

	rst AddAOntoHL                                          ; $5eaa: $ef
	pop af                                           ; $5eab: $f1
	db $10                                           ; $5eac: $10
	inc l                                            ; $5ead: $2c
	rst SubAFromBC                                          ; $5eae: $e7
	pop af                                           ; $5eaf: $f1
	ld c, $2c                                        ; $5eb0: $0e $2c
	rst SubAFromDE                                          ; $5eb2: $df
	pop af                                           ; $5eb3: $f1
	inc c                                            ; $5eb4: $0c
	inc l                                            ; $5eb5: $2c
	and $e1                                          ; $5eb6: $e6 $e1
	inc d                                            ; $5eb8: $14
	jr z, jr_00f_5e99                                ; $5eb9: $28 $de

jr_00f_5ebb:
	pop hl                                           ; $5ebb: $e1
	ld [de], a                                       ; $5ebc: $12
	jr z, @+$3a                                      ; $5ebd: $28 $38

	ret c                                            ; $5ebf: $d8

	ld d, [hl]                                       ; $5ec0: $56

jr_00f_5ec1:
	ld a, [hl+]                                      ; $5ec1: $2a
	jr nc, jr_00f_5e9c                               ; $5ec2: $30 $d8

jr_00f_5ec4:
	ld d, h                                          ; $5ec4: $54

jr_00f_5ec5:
	ld a, [hl+]                                      ; $5ec5: $2a
	jr c, jr_00f_5e90                                ; $5ec6: $38 $c8

jr_00f_5ec8:
	ld c, [hl]                                       ; $5ec8: $4e
	ld a, [hl+]                                      ; $5ec9: $2a
	jr nc, jr_00f_5e94                               ; $5eca: $30 $c8

	ld c, h                                          ; $5ecc: $4c
	dec hl                                           ; $5ecd: $2b
	jr nz, jr_00f_5ec1                               ; $5ece: $20 $f1

jr_00f_5ed0:
	ld h, $2e                                        ; $5ed0: $26 $2e

jr_00f_5ed2:
	jr jr_00f_5ec5                                   ; $5ed2: $18 $f1

	inc h                                            ; $5ed4: $24
	ld l, $f0                                        ; $5ed5: $2e $f0
	pop af                                           ; $5ed7: $f1
	ld a, [bc]                                       ; $5ed8: $0a
	inc l                                            ; $5ed9: $2c
	add sp, -$0f                                     ; $5eda: $e8 $f1
	ld [$e02c], sp                                   ; $5edc: $08 $2c $e0
	pop af                                           ; $5edf: $f1
	ld b, $2c                                        ; $5ee0: $06 $2c
	jr nz, jr_00f_5ec5                               ; $5ee2: $20 $e1

	ld a, [hl+]                                      ; $5ee4: $2a
	jr z, @+$1a                                      ; $5ee5: $28 $18

	pop hl                                           ; $5ee7: $e1
	jr z, jr_00f_5f12                                ; $5ee8: $28 $28

	ld [$14e1], a                                    ; $5eea: $ea $e1 $14
	jr z, @-$1c                                      ; $5eed: $28 $e2

	pop hl                                           ; $5eef: $e1
	ld [de], a                                       ; $5ef0: $12
	jr z, @+$3a                                      ; $5ef1: $28 $38

	ret c                                            ; $5ef3: $d8

	ld d, [hl]                                       ; $5ef4: $56

jr_00f_5ef5:
	ld a, [hl+]                                      ; $5ef5: $2a
	jr nc, jr_00f_5ed0                               ; $5ef6: $30 $d8

jr_00f_5ef8:
	ld d, h                                          ; $5ef8: $54

jr_00f_5ef9:
	ld a, [hl+]                                      ; $5ef9: $2a
	jr c, jr_00f_5ec4                                ; $5efa: $38 $c8

jr_00f_5efc:
	ld c, [hl]                                       ; $5efc: $4e
	ld a, [hl+]                                      ; $5efd: $2a
	jr nc, jr_00f_5ec8                               ; $5efe: $30 $c8

	ld c, h                                          ; $5f00: $4c
	dec hl                                           ; $5f01: $2b
	jr nz, jr_00f_5ef5                               ; $5f02: $20 $f1

jr_00f_5f04:
	ld l, $2e                                        ; $5f04: $2e $2e
	jr jr_00f_5ef9                                   ; $5f06: $18 $f1

	inc l                                            ; $5f08: $2c

jr_00f_5f09:
	ld l, $f7                                        ; $5f09: $2e $f7
	pop af                                           ; $5f0b: $f1
	db $10                                           ; $5f0c: $10
	inc l                                            ; $5f0d: $2c
	rst AddAOntoHL                                          ; $5f0e: $ef
	pop af                                           ; $5f0f: $f1
	ld c, $2c                                        ; $5f10: $0e $2c

jr_00f_5f12:
	rst SubAFromBC                                          ; $5f12: $e7
	pop af                                           ; $5f13: $f1
	inc c                                            ; $5f14: $0c
	inc l                                            ; $5f15: $2c
	jr nz, jr_00f_5ef9                               ; $5f16: $20 $e1

	ld [hl-], a                                      ; $5f18: $32
	jr z, @+$1a                                      ; $5f19: $28 $18

	pop hl                                           ; $5f1b: $e1
	jr nc, @+$2a                                     ; $5f1c: $30 $28

	xor $e1                                          ; $5f1e: $ee $e1
	inc d                                            ; $5f20: $14
	jr z, jr_00f_5f09                                ; $5f21: $28 $e6

	pop hl                                           ; $5f23: $e1
	ld [de], a                                       ; $5f24: $12
	jr z, @+$3a                                      ; $5f25: $28 $38

	ret c                                            ; $5f27: $d8

	ld d, [hl]                                       ; $5f28: $56

jr_00f_5f29:
	ld a, [hl+]                                      ; $5f29: $2a
	jr nc, jr_00f_5f04                               ; $5f2a: $30 $d8

jr_00f_5f2c:
	ld d, h                                          ; $5f2c: $54

jr_00f_5f2d:
	ld a, [hl+]                                      ; $5f2d: $2a
	jr c, jr_00f_5ef8                                ; $5f2e: $38 $c8

jr_00f_5f30:
	ld c, [hl]                                       ; $5f30: $4e
	ld a, [hl+]                                      ; $5f31: $2a
	jr nc, jr_00f_5efc                               ; $5f32: $30 $c8

	ld c, h                                          ; $5f34: $4c
	dec hl                                           ; $5f35: $2b
	jr nz, jr_00f_5f29                               ; $5f36: $20 $f1

jr_00f_5f38:
	ld h, $2e                                        ; $5f38: $26 $2e
	jr jr_00f_5f2d                                   ; $5f3a: $18 $f1

	inc h                                            ; $5f3c: $24
	ld l, $f8                                        ; $5f3d: $2e $f8
	pop af                                           ; $5f3f: $f1
	ld a, [bc]                                       ; $5f40: $0a

jr_00f_5f41:
	inc l                                            ; $5f41: $2c
	ldh a, [$f1]                                     ; $5f42: $f0 $f1
	ld [$e82c], sp                                   ; $5f44: $08 $2c $e8
	pop af                                           ; $5f47: $f1
	ld b, $2c                                        ; $5f48: $06 $2c
	jr nz, jr_00f_5f2d                               ; $5f4a: $20 $e1

	ld a, [hl+]                                      ; $5f4c: $2a
	jr z, @+$1a                                      ; $5f4d: $28 $18

	pop hl                                           ; $5f4f: $e1
	jr z, jr_00f_5f7a                                ; $5f50: $28 $28

	ldh a, [c]                                       ; $5f52: $f2
	pop hl                                           ; $5f53: $e1
	inc d                                            ; $5f54: $14
	jr z, jr_00f_5f41                                ; $5f55: $28 $ea

	pop hl                                           ; $5f57: $e1
	ld [de], a                                       ; $5f58: $12
	jr z, @+$3a                                      ; $5f59: $28 $38

	ret c                                            ; $5f5b: $d8

	ld d, [hl]                                       ; $5f5c: $56

jr_00f_5f5d:
	ld a, [hl+]                                      ; $5f5d: $2a
	jr nc, jr_00f_5f38                               ; $5f5e: $30 $d8

jr_00f_5f60:
	ld d, h                                          ; $5f60: $54

jr_00f_5f61:
	ld a, [hl+]                                      ; $5f61: $2a
	jr c, jr_00f_5f2c                                ; $5f62: $38 $c8

jr_00f_5f64:
	ld c, [hl]                                       ; $5f64: $4e
	ld a, [hl+]                                      ; $5f65: $2a
	jr nc, jr_00f_5f30                               ; $5f66: $30 $c8

	ld c, h                                          ; $5f68: $4c
	dec hl                                           ; $5f69: $2b
	jr nz, jr_00f_5f5d                               ; $5f6a: $20 $f1

jr_00f_5f6c:
	ld l, $2e                                        ; $5f6c: $2e $2e
	jr jr_00f_5f61                                   ; $5f6e: $18 $f1

	inc l                                            ; $5f70: $2c
	ld l, $ff                                        ; $5f71: $2e $ff
	pop af                                           ; $5f73: $f1
	db $10                                           ; $5f74: $10
	inc l                                            ; $5f75: $2c
	rst FarCall                                          ; $5f76: $f7
	pop af                                           ; $5f77: $f1
	ld c, $2c                                        ; $5f78: $0e $2c

jr_00f_5f7a:
	rst AddAOntoHL                                          ; $5f7a: $ef
	pop af                                           ; $5f7b: $f1
	inc c                                            ; $5f7c: $0c
	inc l                                            ; $5f7d: $2c
	jr nz, jr_00f_5f61                               ; $5f7e: $20 $e1

	ld [hl-], a                                      ; $5f80: $32
	jr z, @+$1a                                      ; $5f81: $28 $18

	pop hl                                           ; $5f83: $e1
	jr nc, jr_00f_5fae                               ; $5f84: $30 $28

	or $e1                                           ; $5f86: $f6 $e1

jr_00f_5f88:
	inc d                                            ; $5f88: $14
	jr z, @-$10                                      ; $5f89: $28 $ee

	pop hl                                           ; $5f8b: $e1
	ld [de], a                                       ; $5f8c: $12
	jr z, @+$3a                                      ; $5f8d: $28 $38

	ret c                                            ; $5f8f: $d8

	ld d, [hl]                                       ; $5f90: $56
	ld a, [hl+]                                      ; $5f91: $2a
	jr nc, jr_00f_5f6c                               ; $5f92: $30 $d8

jr_00f_5f94:
	ld d, h                                          ; $5f94: $54
	ld a, [hl+]                                      ; $5f95: $2a
	jr c, jr_00f_5f60                                ; $5f96: $38 $c8

jr_00f_5f98:
	ld c, [hl]                                       ; $5f98: $4e
	ld a, [hl+]                                      ; $5f99: $2a
	jr nc, jr_00f_5f64                               ; $5f9a: $30 $c8

	ld c, h                                          ; $5f9c: $4c
	dec hl                                           ; $5f9d: $2b
	jr nz, jr_00f_5f88                               ; $5f9e: $20 $e8

jr_00f_5fa0:
	ld b, d                                          ; $5fa0: $42
	ld l, $18                                        ; $5fa1: $2e $18
	add sp, $40                                      ; $5fa3: $e8 $40
	ld l, $20                                        ; $5fa5: $2e $20
	ret c                                            ; $5fa7: $d8

	ld [hl+], a                                      ; $5fa8: $22
	jr z, jr_00f_5fc3                                ; $5fa9: $28 $18

	ret c                                            ; $5fab: $d8

	jr nz, jr_00f_5fd6                               ; $5fac: $20 $28

jr_00f_5fae:
	ld hl, sp-$0f                                    ; $5fae: $f8 $f1
	jr jr_00f_5fde                                   ; $5fb0: $18 $2c

	ldh a, [$f1]                                     ; $5fb2: $f0 $f1
	ld d, $2c                                        ; $5fb4: $16 $2c
	nop                                              ; $5fb6: $00
	pop hl                                           ; $5fb7: $e1
	ld e, $28                                        ; $5fb8: $1e $28
	ld hl, sp-$1f                                    ; $5fba: $f8 $e1
	inc e                                            ; $5fbc: $1c
	jr z, @-$0e                                      ; $5fbd: $28 $f0

	pop hl                                           ; $5fbf: $e1
	ld a, [de]                                       ; $5fc0: $1a
	jr z, @+$3a                                      ; $5fc1: $28 $38

jr_00f_5fc3:
	ret c                                            ; $5fc3: $d8

	ld d, [hl]                                       ; $5fc4: $56
	ld a, [hl+]                                      ; $5fc5: $2a
	jr nc, jr_00f_5fa0                               ; $5fc6: $30 $d8

jr_00f_5fc8:
	ld d, h                                          ; $5fc8: $54
	ld a, [hl+]                                      ; $5fc9: $2a
	jr c, jr_00f_5f94                                ; $5fca: $38 $c8

jr_00f_5fcc:
	ld c, [hl]                                       ; $5fcc: $4e
	ld a, [hl+]                                      ; $5fcd: $2a
	jr nc, jr_00f_5f98                               ; $5fce: $30 $c8

jr_00f_5fd0:
	ld c, h                                          ; $5fd0: $4c
	ld a, [hl+]                                      ; $5fd1: $2a
	db $10                                           ; $5fd2: $10

jr_00f_5fd3:
	call nc, $2d44                                   ; $5fd3: $d4 $44 $2d

jr_00f_5fd6:
	ld hl, sp-$0f                                    ; $5fd6: $f8 $f1
	ld [hl], $2c                                     ; $5fd8: $36 $2c
	ldh a, [$f1]                                     ; $5fda: $f0 $f1
	inc [hl]                                         ; $5fdc: $34

jr_00f_5fdd:
	inc l                                            ; $5fdd: $2c

jr_00f_5fde:
	ld hl, sp-$1f                                    ; $5fde: $f8 $e1
	inc d                                            ; $5fe0: $14
	jr z, jr_00f_5fd3                                ; $5fe1: $28 $f0

	pop hl                                           ; $5fe3: $e1

jr_00f_5fe4:
	ld [de], a                                       ; $5fe4: $12
	jr z, jr_00f_6007                                ; $5fe5: $28 $20

	pop af                                           ; $5fe7: $f1

jr_00f_5fe8:
	ld l, $2e                                        ; $5fe8: $2e $2e
	jr jr_00f_5fdd                                   ; $5fea: $18 $f1

	inc l                                            ; $5fec: $2c
	ld l, $20                                        ; $5fed: $2e $20
	pop hl                                           ; $5fef: $e1
	ld [hl-], a                                      ; $5ff0: $32
	jr z, @+$1a                                      ; $5ff1: $28 $18

	pop hl                                           ; $5ff3: $e1
	jr nc, jr_00f_601e                               ; $5ff4: $30 $28

	jr c, jr_00f_5fd0                                ; $5ff6: $38 $d8

	ld d, [hl]                                       ; $5ff8: $56
	ld a, [hl+]                                      ; $5ff9: $2a
	jr nc, @-$26                                     ; $5ffa: $30 $d8

jr_00f_5ffc:
	ld d, h                                          ; $5ffc: $54
	ld a, [hl+]                                      ; $5ffd: $2a
	jr c, jr_00f_5fc8                                ; $5ffe: $38 $c8

jr_00f_6000:
	ld c, [hl]                                       ; $6000: $4e
	ld a, [hl+]                                      ; $6001: $2a
	jr nc, jr_00f_5fcc                               ; $6002: $30 $c8

	ld c, h                                          ; $6004: $4c
	ld a, [hl+]                                      ; $6005: $2a
	inc hl                                           ; $6006: $23

jr_00f_6007:
	ret nc                                           ; $6007: $d0

	ld b, [hl]                                       ; $6008: $46
	dec l                                            ; $6009: $2d
	jr c, jr_00f_5fe4                                ; $600a: $38 $d8

	ld d, d                                          ; $600c: $52

jr_00f_600d:
	ld a, [hl+]                                      ; $600d: $2a
	jr nc, jr_00f_5fe8                               ; $600e: $30 $d8

	ld d, b                                          ; $6010: $50

jr_00f_6011:
	ld a, [hl+]                                      ; $6011: $2a
	ld hl, sp-$0f                                    ; $6012: $f8 $f1
	ld [hl], $2c                                     ; $6014: $36 $2c
	ldh a, [$f1]                                     ; $6016: $f0 $f1
	inc [hl]                                         ; $6018: $34
	inc l                                            ; $6019: $2c
	jr nz, jr_00f_600d                               ; $601a: $20 $f1

	ld l, $2e                                        ; $601c: $2e $2e

jr_00f_601e:
	jr jr_00f_6011                                   ; $601e: $18 $f1

	inc l                                            ; $6020: $2c
	ld l, $f8                                        ; $6021: $2e $f8
	pop hl                                           ; $6023: $e1

jr_00f_6024:
	inc d                                            ; $6024: $14
	jr z, @-$0e                                      ; $6025: $28 $f0

	pop hl                                           ; $6027: $e1
	ld [de], a                                       ; $6028: $12
	jr z, @+$22                                      ; $6029: $28 $20

	pop hl                                           ; $602b: $e1
	ld [hl-], a                                      ; $602c: $32
	jr z, @+$1a                                      ; $602d: $28 $18

	pop hl                                           ; $602f: $e1

jr_00f_6030:
	jr nc, @+$2a                                     ; $6030: $30 $28

	jr c, jr_00f_5ffc                                ; $6032: $38 $c8

	ld c, [hl]                                       ; $6034: $4e
	ld a, [hl+]                                      ; $6035: $2a
	jr nc, jr_00f_6000                               ; $6036: $30 $c8

jr_00f_6038:
	ld c, h                                          ; $6038: $4c
	dec hl                                           ; $6039: $2b
	jr nz, jr_00f_6024                               ; $603a: $20 $e8

jr_00f_603c:
	ld b, d                                          ; $603c: $42
	ld l, $18                                        ; $603d: $2e $18
	add sp, $40                                      ; $603f: $e8 $40
	ld l, $f8                                        ; $6041: $2e $f8
	pop af                                           ; $6043: $f1
	jr jr_00f_6072                                   ; $6044: $18 $2c

	ldh a, [$f1]                                     ; $6046: $f0 $f1
	ld d, $2c                                        ; $6048: $16 $2c
	jr nz, jr_00f_6024                               ; $604a: $20 $d8

	ld [hl+], a                                      ; $604c: $22
	jr z, @+$1a                                      ; $604d: $28 $18

	ret c                                            ; $604f: $d8

	jr nz, jr_00f_607a                               ; $6050: $20 $28

	nop                                              ; $6052: $00
	pop hl                                           ; $6053: $e1
	ld e, $28                                        ; $6054: $1e $28
	ld hl, sp-$1f                                    ; $6056: $f8 $e1
	inc e                                            ; $6058: $1c
	jr z, @-$0e                                      ; $6059: $28 $f0

	pop hl                                           ; $605b: $e1
	ld a, [de]                                       ; $605c: $1a
	jr z, @+$3a                                      ; $605d: $28 $38

	ret c                                            ; $605f: $d8

	ld d, [hl]                                       ; $6060: $56
	ld a, [hl+]                                      ; $6061: $2a
	jr nc, jr_00f_603c                               ; $6062: $30 $d8

	ld d, h                                          ; $6064: $54
	ld a, [hl+]                                      ; $6065: $2a
	jr c, jr_00f_6030                                ; $6066: $38 $c8

jr_00f_6068:
	ld c, [hl]                                       ; $6068: $4e
	ld a, [hl+]                                      ; $6069: $2a
	db $10                                           ; $606a: $10
	ret c                                            ; $606b: $d8

jr_00f_606c:
	ld b, h                                          ; $606c: $44
	inc l                                            ; $606d: $2c
	jr nc, jr_00f_6038                               ; $606e: $30 $c8

jr_00f_6070:
	ld c, h                                          ; $6070: $4c
	dec hl                                           ; $6071: $2b

jr_00f_6072:
	ld hl, sp-$0f                                    ; $6072: $f8 $f1
	ld [hl], $2c                                     ; $6074: $36 $2c
	ldh a, [$f1]                                     ; $6076: $f0 $f1
	inc [hl]                                         ; $6078: $34

jr_00f_6079:
	inc l                                            ; $6079: $2c

jr_00f_607a:
	ld hl, sp-$1f                                    ; $607a: $f8 $e1
	inc d                                            ; $607c: $14
	jr z, @-$0e                                      ; $607d: $28 $f0

	pop hl                                           ; $607f: $e1
	ld [de], a                                       ; $6080: $12
	jr z, @+$22                                      ; $6081: $28 $20

	pop af                                           ; $6083: $f1
	ld l, $2e                                        ; $6084: $2e $2e
	jr jr_00f_6079                                   ; $6086: $18 $f1

	inc l                                            ; $6088: $2c
	ld l, $20                                        ; $6089: $2e $20
	pop hl                                           ; $608b: $e1
	ld [hl-], a                                      ; $608c: $32
	jr z, @+$1a                                      ; $608d: $28 $18

	pop hl                                           ; $608f: $e1
	jr nc, @+$2a                                     ; $6090: $30 $28

	jr c, jr_00f_606c                                ; $6092: $38 $d8

	ld d, [hl]                                       ; $6094: $56
	ld a, [hl+]                                      ; $6095: $2a
	jr nc, jr_00f_6070                               ; $6096: $30 $d8

	ld d, h                                          ; $6098: $54
	ld a, [hl+]                                      ; $6099: $2a
	nop                                              ; $609a: $00
	pop hl                                           ; $609b: $e1

jr_00f_609c:
	ld b, [hl]                                       ; $609c: $46
	inc l                                            ; $609d: $2c
	jr c, jr_00f_6068                                ; $609e: $38 $c8

jr_00f_60a0:
	ld c, [hl]                                       ; $60a0: $4e

jr_00f_60a1:
	ld a, [hl+]                                      ; $60a1: $2a
	jr nc, jr_00f_606c                               ; $60a2: $30 $c8

jr_00f_60a4:
	ld c, h                                          ; $60a4: $4c

jr_00f_60a5:
	dec hl                                           ; $60a5: $2b
	ld hl, sp-$0f                                    ; $60a6: $f8 $f1

jr_00f_60a8:
	ld [hl], $2c                                     ; $60a8: $36 $2c
	ldh a, [$f1]                                     ; $60aa: $f0 $f1
	inc [hl]                                         ; $60ac: $34
	inc l                                            ; $60ad: $2c
	jr nz, jr_00f_60a1                               ; $60ae: $20 $f1

	ld l, $2e                                        ; $60b0: $2e $2e
	jr jr_00f_60a5                                   ; $60b2: $18 $f1

	inc l                                            ; $60b4: $2c
	ld l, $f8                                        ; $60b5: $2e $f8
	pop hl                                           ; $60b7: $e1
	inc d                                            ; $60b8: $14
	jr z, @-$0e                                      ; $60b9: $28 $f0

	pop hl                                           ; $60bb: $e1

jr_00f_60bc:
	ld [de], a                                       ; $60bc: $12
	jr z, @+$22                                      ; $60bd: $28 $20

	pop hl                                           ; $60bf: $e1

jr_00f_60c0:
	ld [hl-], a                                      ; $60c0: $32
	jr z, @+$1a                                      ; $60c1: $28 $18

	pop hl                                           ; $60c3: $e1

jr_00f_60c4:
	jr nc, jr_00f_60ee                               ; $60c4: $30 $28

	ret c                                            ; $60c6: $d8

	ldh a, [rDMA]                                    ; $60c7: $f0 $46
	inc l                                            ; $60c9: $2c
	jr c, jr_00f_60a4                                ; $60ca: $38 $d8

	ld d, [hl]                                       ; $60cc: $56

jr_00f_60cd:
	ld a, [hl+]                                      ; $60cd: $2a
	jr nc, jr_00f_60a8                               ; $60ce: $30 $d8

	ld d, h                                          ; $60d0: $54

jr_00f_60d1:
	ld a, [hl+]                                      ; $60d1: $2a
	jr c, jr_00f_609c                                ; $60d2: $38 $c8

	ld c, [hl]                                       ; $60d4: $4e
	ld a, [hl+]                                      ; $60d5: $2a
	jr nc, jr_00f_60a0                               ; $60d6: $30 $c8

	ld c, h                                          ; $60d8: $4c
	dec hl                                           ; $60d9: $2b
	jr nz, jr_00f_60cd                               ; $60da: $20 $f1

	ld l, $2e                                        ; $60dc: $2e $2e
	jr jr_00f_60d1                                   ; $60de: $18 $f1

	inc l                                            ; $60e0: $2c
	ld l, $20                                        ; $60e1: $2e $20
	pop hl                                           ; $60e3: $e1
	ld [hl-], a                                      ; $60e4: $32
	jr z, @+$1a                                      ; $60e5: $28 $18

	pop hl                                           ; $60e7: $e1
	jr nc, jr_00f_6112                               ; $60e8: $30 $28

	jr c, jr_00f_60c4                                ; $60ea: $38 $d8

	ld d, [hl]                                       ; $60ec: $56
	ld a, [hl+]                                      ; $60ed: $2a

jr_00f_60ee:
	jr nc, @-$26                                     ; $60ee: $30 $d8

	ld d, h                                          ; $60f0: $54
	ld a, [hl+]                                      ; $60f1: $2a
	jr c, jr_00f_60bc                                ; $60f2: $38 $c8

	ld c, [hl]                                       ; $60f4: $4e
	ld a, [hl+]                                      ; $60f5: $2a
	jr nc, jr_00f_60c0                               ; $60f6: $30 $c8

	ld c, h                                          ; $60f8: $4c
	ld a, [hl+]                                      ; $60f9: $2a
	ld hl, sp-$1f                                    ; $60fa: $f8 $e1
	ld a, $28                                        ; $60fc: $3e $28
	ldh a, [$e1]                                     ; $60fe: $f0 $e1
	inc a                                            ; $6100: $3c
	jr z, @-$06                                      ; $6101: $28 $f8

	pop af                                           ; $6103: $f1

jr_00f_6104:
	ld a, [hl-]                                      ; $6104: $3a
	inc l                                            ; $6105: $2c
	ldh a, [$f1]                                     ; $6106: $f0 $f1

jr_00f_6108:
	jr c, jr_00f_6136                                ; $6108: $38 $2c

	rst $38                                          ; $610a: $ff
	add sp, $4a                                      ; $610b: $e8 $4a
	ld l, d                                          ; $610d: $6a
	ld [$4ae4], a                                    ; $610e: $ea $e4 $4a
	dec hl                                           ; $6111: $2b

jr_00f_6112:
	ld hl, sp-$0f                                    ; $6112: $f8 $f1
	ld a, [hl-]                                      ; $6114: $3a
	inc l                                            ; $6115: $2c
	ldh a, [$f1]                                     ; $6116: $f0 $f1
	jr c, jr_00f_6146                                ; $6118: $38 $2c

	ld hl, sp-$1f                                    ; $611a: $f8 $e1
	ld a, $28                                        ; $611c: $3e $28
	ldh a, [$e1]                                     ; $611e: $f0 $e1
	inc a                                            ; $6120: $3c
	jr z, jr_00f_6143                                ; $6121: $28 $20

	pop af                                           ; $6123: $f1
	ld l, $2e                                        ; $6124: $2e $2e
	jr @-$0d                                         ; $6126: $18 $f1

	inc l                                            ; $6128: $2c
	ld l, $20                                        ; $6129: $2e $20
	pop hl                                           ; $612b: $e1
	ld [hl-], a                                      ; $612c: $32
	jr z, @+$1a                                      ; $612d: $28 $18

	pop hl                                           ; $612f: $e1
	jr nc, jr_00f_615a                               ; $6130: $30 $28

	jr c, @-$26                                      ; $6132: $38 $d8

	ld d, [hl]                                       ; $6134: $56

jr_00f_6135:
	ld a, [hl+]                                      ; $6135: $2a

jr_00f_6136:
	jr nc, @-$26                                     ; $6136: $30 $d8

jr_00f_6138:
	ld d, h                                          ; $6138: $54
	ld a, [hl+]                                      ; $6139: $2a
	jr c, jr_00f_6104                                ; $613a: $38 $c8

	ld c, [hl]                                       ; $613c: $4e

jr_00f_613d:
	ld a, [hl+]                                      ; $613d: $2a
	jr nc, jr_00f_6108                               ; $613e: $30 $c8

	ld c, h                                          ; $6140: $4c
	ld a, [hl+]                                      ; $6141: $2a
	db $fd                                           ; $6142: $fd

jr_00f_6143:
	push hl                                          ; $6143: $e5
	ld c, d                                          ; $6144: $4a
	ld l, d                                          ; $6145: $6a

jr_00f_6146:
	add sp, -$18                                     ; $6146: $e8 $e8

jr_00f_6148:
	ld c, d                                          ; $6148: $4a
	dec hl                                           ; $6149: $2b
	jr jr_00f_613d                                   ; $614a: $18 $f1

	jr c, jr_00f_617c                                ; $614c: $38 $2e

	db $10                                           ; $614e: $10
	pop af                                           ; $614f: $f1
	ld [hl], $2e                                     ; $6150: $36 $2e
	jr jr_00f_6135                                   ; $6152: $18 $e1

	inc [hl]                                         ; $6154: $34
	inc l                                            ; $6155: $2c
	db $10                                           ; $6156: $10

jr_00f_6157:
	pop hl                                           ; $6157: $e1
	ld [hl-], a                                      ; $6158: $32
	inc l                                            ; $6159: $2c

jr_00f_615a:
	reti                                             ; $615a: $d9


	pop af                                           ; $615b: $f1
	ld [de], a                                       ; $615c: $12
	ld a, [hl+]                                      ; $615d: $2a
	pop de                                           ; $615e: $d1
	pop af                                           ; $615f: $f1
	db $10                                           ; $6160: $10
	ld a, [hl+]                                      ; $6161: $2a
	reti                                             ; $6162: $d9


	pop hl                                           ; $6163: $e1
	ld [bc], a                                       ; $6164: $02
	jr z, jr_00f_6138                                ; $6165: $28 $d1

	pop hl                                           ; $6167: $e1
	nop                                              ; $6168: $00
	jr z, @-$1c                                      ; $6169: $28 $e2

	ld hl, sp+$50                                    ; $616b: $f8 $50

jr_00f_616d:
	dec hl                                           ; $616d: $2b
	db $dd                                           ; $616e: $dd
	pop hl                                           ; $616f: $e1
	ld [bc], a                                       ; $6170: $02
	jr z, jr_00f_6148                                ; $6171: $28 $d5

	pop hl                                           ; $6173: $e1
	nop                                              ; $6174: $00

jr_00f_6175:
	jr z, jr_00f_6157                                ; $6175: $28 $e0

	pop af                                           ; $6177: $f1
	jr jr_00f_61a4                                   ; $6178: $18 $2a

	ret c                                            ; $617a: $d8

	pop af                                           ; $617b: $f1

jr_00f_617c:
	ld d, $2a                                        ; $617c: $16 $2a
	ret nc                                           ; $617e: $d0

	pop af                                           ; $617f: $f1
	inc d                                            ; $6180: $14
	ld a, [hl+]                                      ; $6181: $2a
	jr jr_00f_6175                                   ; $6182: $18 $f1

	jr c, jr_00f_61b4                                ; $6184: $38 $2e

	db $10                                           ; $6186: $10
	pop af                                           ; $6187: $f1
	ld [hl], $2e                                     ; $6188: $36 $2e
	jr jr_00f_616d                                   ; $618a: $18 $e1

	inc [hl]                                         ; $618c: $34
	inc l                                            ; $618d: $2c
	db $10                                           ; $618e: $10
	pop hl                                           ; $618f: $e1
	ld [hl-], a                                      ; $6190: $32

jr_00f_6191:
	inc l                                            ; $6191: $2c
	add sp, -$08                                     ; $6192: $e8 $f8
	ld d, d                                          ; $6194: $52
	dec hl                                           ; $6195: $2b
	pop hl                                           ; $6196: $e1
	pop af                                           ; $6197: $f1
	ld [de], a                                       ; $6198: $12
	ld a, [hl+]                                      ; $6199: $2a
	reti                                             ; $619a: $d9


	pop af                                           ; $619b: $f1

jr_00f_619c:
	db $10                                           ; $619c: $10
	ld a, [hl+]                                      ; $619d: $2a
	pop hl                                           ; $619e: $e1
	pop hl                                           ; $619f: $e1
	ld [bc], a                                       ; $61a0: $02
	jr z, jr_00f_617c                                ; $61a1: $28 $d9

	pop hl                                           ; $61a3: $e1

jr_00f_61a4:
	nop                                              ; $61a4: $00
	jr z, jr_00f_61bf                                ; $61a5: $28 $18

	pop af                                           ; $61a7: $f1
	jr c, jr_00f_61d8                                ; $61a8: $38 $2e

	db $10                                           ; $61aa: $10

jr_00f_61ab:
	pop af                                           ; $61ab: $f1
	ld [hl], $2e                                     ; $61ac: $36 $2e
	jr jr_00f_6191                                   ; $61ae: $18 $e1

	inc [hl]                                         ; $61b0: $34
	inc l                                            ; $61b1: $2c
	db $10                                           ; $61b2: $10
	pop hl                                           ; $61b3: $e1

jr_00f_61b4:
	ld [hl-], a                                      ; $61b4: $32
	inc l                                            ; $61b5: $2c
	ld [$50f8], a                                    ; $61b6: $ea $f8 $50

jr_00f_61b9:
	dec hl                                           ; $61b9: $2b
	push hl                                          ; $61ba: $e5
	pop hl                                           ; $61bb: $e1
	ld [bc], a                                       ; $61bc: $02
	jr z, jr_00f_619c                                ; $61bd: $28 $dd

jr_00f_61bf:
	pop hl                                           ; $61bf: $e1
	nop                                              ; $61c0: $00
	jr z, jr_00f_61ab                                ; $61c1: $28 $e8

	pop af                                           ; $61c3: $f1
	ld [$e02a], sp                                   ; $61c4: $08 $2a $e0
	pop af                                           ; $61c7: $f1
	ld b, $2a                                        ; $61c8: $06 $2a
	ret c                                            ; $61ca: $d8

	pop af                                           ; $61cb: $f1

jr_00f_61cc:
	inc b                                            ; $61cc: $04
	ld l, $18                                        ; $61cd: $2e $18
	pop af                                           ; $61cf: $f1
	jr c, jr_00f_6200                                ; $61d0: $38 $2e

	db $10                                           ; $61d2: $10
	pop af                                           ; $61d3: $f1
	ld [hl], $2e                                     ; $61d4: $36 $2e
	jr jr_00f_61b9                                   ; $61d6: $18 $e1

jr_00f_61d8:
	inc [hl]                                         ; $61d8: $34
	inc l                                            ; $61d9: $2c
	db $10                                           ; $61da: $10
	pop hl                                           ; $61db: $e1
	ld [hl-], a                                      ; $61dc: $32

jr_00f_61dd:
	inc l                                            ; $61dd: $2c
	ldh a, [$f8]                                     ; $61de: $f0 $f8
	ld d, d                                          ; $61e0: $52
	dec hl                                           ; $61e1: $2b
	jp hl                                            ; $61e2: $e9


	pop af                                           ; $61e3: $f1
	ld [de], a                                       ; $61e4: $12
	ld a, [hl+]                                      ; $61e5: $2a
	jp hl                                            ; $61e6: $e9


	pop hl                                           ; $61e7: $e1
	ld [bc], a                                       ; $61e8: $02
	jr z, jr_00f_61cc                                ; $61e9: $28 $e1

	pop af                                           ; $61eb: $f1
	db $10                                           ; $61ec: $10
	ld a, [hl+]                                      ; $61ed: $2a
	pop hl                                           ; $61ee: $e1
	pop hl                                           ; $61ef: $e1
	nop                                              ; $61f0: $00
	jr z, @+$1a                                      ; $61f1: $28 $18

	pop af                                           ; $61f3: $f1
	jr c, jr_00f_6224                                ; $61f4: $38 $2e

	db $10                                           ; $61f6: $10
	pop af                                           ; $61f7: $f1
	ld [hl], $2e                                     ; $61f8: $36 $2e
	jr jr_00f_61dd                                   ; $61fa: $18 $e1

jr_00f_61fc:
	inc [hl]                                         ; $61fc: $34
	inc l                                            ; $61fd: $2c
	db $10                                           ; $61fe: $10
	pop hl                                           ; $61ff: $e1

jr_00f_6200:
	ld [hl-], a                                      ; $6200: $32
	inc l                                            ; $6201: $2c
	ldh a, [c]                                       ; $6202: $f2
	ld hl, sp+$50                                    ; $6203: $f8 $50

jr_00f_6205:
	dec hl                                           ; $6205: $2b
	ldh a, [$f1]                                     ; $6206: $f0 $f1
	jr jr_00f_6234                                   ; $6208: $18 $2a

	add sp, -$0f                                     ; $620a: $e8 $f1
	ld d, $2a                                        ; $620c: $16 $2a
	ldh [$f1], a                                     ; $620e: $e0 $f1
	inc d                                            ; $6210: $14
	ld a, [hl+]                                      ; $6211: $2a
	db $ed                                           ; $6212: $ed
	pop hl                                           ; $6213: $e1
	ld [bc], a                                       ; $6214: $02
	jr z, jr_00f_61fc                                ; $6215: $28 $e5

	pop hl                                           ; $6217: $e1
	nop                                              ; $6218: $00
	jr z, @+$1a                                      ; $6219: $28 $18

	pop af                                           ; $621b: $f1
	jr c, jr_00f_624c                                ; $621c: $38 $2e

	db $10                                           ; $621e: $10
	pop af                                           ; $621f: $f1
	ld [hl], $2e                                     ; $6220: $36 $2e
	jr jr_00f_6205                                   ; $6222: $18 $e1

jr_00f_6224:
	inc [hl]                                         ; $6224: $34
	inc l                                            ; $6225: $2c
	db $10                                           ; $6226: $10
	pop hl                                           ; $6227: $e1
	ld [hl-], a                                      ; $6228: $32
	inc l                                            ; $6229: $2c
	ld hl, sp-$08                                    ; $622a: $f8 $f8

jr_00f_622c:
	ld d, d                                          ; $622c: $52

jr_00f_622d:
	dec hl                                           ; $622d: $2b
	ldh a, [$f1]                                     ; $622e: $f0 $f1
	ld c, $2a                                        ; $6230: $0e $2a
	add sp, -$0f                                     ; $6232: $e8 $f1

jr_00f_6234:
	inc c                                            ; $6234: $0c
	ld a, [hl+]                                      ; $6235: $2a
	ldh [$f1], a                                     ; $6236: $e0 $f1
	ld a, [bc]                                       ; $6238: $0a
	ld a, [hl+]                                      ; $6239: $2a
	push hl                                          ; $623a: $e5
	pop hl                                           ; $623b: $e1
	nop                                              ; $623c: $00
	jr z, jr_00f_622c                                ; $623d: $28 $ed

	pop hl                                           ; $623f: $e1
	ld [bc], a                                       ; $6240: $02
	jr z, @+$1a                                      ; $6241: $28 $18

	pop af                                           ; $6243: $f1
	jr c, jr_00f_6274                                ; $6244: $38 $2e

	db $10                                           ; $6246: $10
	pop af                                           ; $6247: $f1
	ld [hl], $2e                                     ; $6248: $36 $2e
	jr jr_00f_622d                                   ; $624a: $18 $e1

jr_00f_624c:
	inc [hl]                                         ; $624c: $34
	inc l                                            ; $624d: $2c
	db $10                                           ; $624e: $10
	pop hl                                           ; $624f: $e1
	ld [hl-], a                                      ; $6250: $32
	inc l                                            ; $6251: $2c
	ei                                               ; $6252: $fb
	db $ed                                           ; $6253: $ed
	ld d, b                                          ; $6254: $50

jr_00f_6255:
	dec hl                                           ; $6255: $2b
	ldh a, [$f1]                                     ; $6256: $f0 $f1
	ld c, $2a                                        ; $6258: $0e $2a
	add sp, -$0f                                     ; $625a: $e8 $f1
	inc c                                            ; $625c: $0c
	ld a, [hl+]                                      ; $625d: $2a
	ldh [$f1], a                                     ; $625e: $e0 $f1
	ld a, [bc]                                       ; $6260: $0a
	ld a, [hl+]                                      ; $6261: $2a
	db $ed                                           ; $6262: $ed
	pop hl                                           ; $6263: $e1
	ld [bc], a                                       ; $6264: $02
	jr z, jr_00f_624c                                ; $6265: $28 $e5

	pop hl                                           ; $6267: $e1
	nop                                              ; $6268: $00
	jr z, @+$1a                                      ; $6269: $28 $18

	pop af                                           ; $626b: $f1
	jr c, @+$30                                      ; $626c: $38 $2e

	db $10                                           ; $626e: $10
	pop af                                           ; $626f: $f1
	ld [hl], $2e                                     ; $6270: $36 $2e
	jr jr_00f_6255                                   ; $6272: $18 $e1

jr_00f_6274:
	inc [hl]                                         ; $6274: $34
	inc l                                            ; $6275: $2c
	db $10                                           ; $6276: $10
	pop hl                                           ; $6277: $e1
	ld [hl-], a                                      ; $6278: $32
	inc l                                            ; $6279: $2c
	nop                                              ; $627a: $00
	add sp, $52                                      ; $627b: $e8 $52
	dec hl                                           ; $627d: $2b
	ldh a, [$f1]                                     ; $627e: $f0 $f1
	ld c, $2a                                        ; $6280: $0e $2a
	add sp, -$0f                                     ; $6282: $e8 $f1
	inc c                                            ; $6284: $0c
	ld a, [hl+]                                      ; $6285: $2a
	ldh [$f1], a                                     ; $6286: $e0 $f1
	ld a, [bc]                                       ; $6288: $0a
	ld a, [hl+]                                      ; $6289: $2a
	db $ed                                           ; $628a: $ed
	pop hl                                           ; $628b: $e1
	ld [bc], a                                       ; $628c: $02
	jr z, jr_00f_6274                                ; $628d: $28 $e5

	pop hl                                           ; $628f: $e1
	nop                                              ; $6290: $00
	jr z, @+$1a                                      ; $6291: $28 $18

	ldh a, [rLY]                                     ; $6293: $f0 $44
	ld l, $10                                        ; $6295: $2e $10
	ldh a, [rSCY]                                    ; $6297: $f0 $42
	ld l, $08                                        ; $6299: $2e $08
	ldh a, [rLCDC]                                   ; $629b: $f0 $40
	ld l, $18                                        ; $629d: $2e $18
	ldh [$3e], a                                     ; $629f: $e0 $3e
	inc l                                            ; $62a1: $2c
	db $10                                           ; $62a2: $10
	ldh [$3c], a                                     ; $62a3: $e0 $3c
	inc l                                            ; $62a5: $2c
	ld [$3ae0], sp                                   ; $62a6: $08 $e0 $3a
	inc l                                            ; $62a9: $2c
	ld [$50e2], sp                                   ; $62aa: $08 $e2 $50
	dec hl                                           ; $62ad: $2b
	ldh a, [$f1]                                     ; $62ae: $f0 $f1
	ld c, $2a                                        ; $62b0: $0e $2a
	add sp, -$0f                                     ; $62b2: $e8 $f1
	inc c                                            ; $62b4: $0c
	ld a, [hl+]                                      ; $62b5: $2a
	ldh [$f1], a                                     ; $62b6: $e0 $f1
	ld a, [bc]                                       ; $62b8: $0a
	ld a, [hl+]                                      ; $62b9: $2a
	db $ed                                           ; $62ba: $ed
	pop hl                                           ; $62bb: $e1
	ld [bc], a                                       ; $62bc: $02
	jr z, @-$19                                      ; $62bd: $28 $e5

	pop hl                                           ; $62bf: $e1
	nop                                              ; $62c0: $00
	jr z, jr_00f_62d9                                ; $62c1: $28 $16

	sbc $3e                                          ; $62c3: $de $3e
	inc l                                            ; $62c5: $2c
	ld c, $de                                        ; $62c6: $0e $de
	inc a                                            ; $62c8: $3c
	inc l                                            ; $62c9: $2c
	ld b, $de                                        ; $62ca: $06 $de
	ld a, [hl-]                                      ; $62cc: $3a
	inc l                                            ; $62cd: $2c
	ld b, $ee                                        ; $62ce: $06 $ee
	ld b, b                                          ; $62d0: $40
	ld l, $0e                                        ; $62d1: $2e $0e
	xor $42                                          ; $62d3: $ee $42
	ld l, $16                                        ; $62d5: $2e $16
	xor $44                                          ; $62d7: $ee $44

jr_00f_62d9:
	ld l, $16                                        ; $62d9: $2e $16
	ldh [rHDMA2], a                                  ; $62db: $e0 $52
	dec hl                                           ; $62dd: $2b
	ldh a, [$f1]                                     ; $62de: $f0 $f1
	ld c, $2a                                        ; $62e0: $0e $2a
	add sp, -$0f                                     ; $62e2: $e8 $f1
	inc c                                            ; $62e4: $0c
	ld a, [hl+]                                      ; $62e5: $2a
	ldh [$f1], a                                     ; $62e6: $e0 $f1
	ld a, [bc]                                       ; $62e8: $0a
	ld a, [hl+]                                      ; $62e9: $2a
	db $ed                                           ; $62ea: $ed
	pop hl                                           ; $62eb: $e1
	ld [bc], a                                       ; $62ec: $02
	jr z, @-$19                                      ; $62ed: $28 $e5

	pop hl                                           ; $62ef: $e1
	nop                                              ; $62f0: $00
	jr z, jr_00f_6309                                ; $62f1: $28 $16

	sbc $3e                                          ; $62f3: $de $3e
	inc l                                            ; $62f5: $2c
	ld c, $de                                        ; $62f6: $0e $de
	inc a                                            ; $62f8: $3c
	inc l                                            ; $62f9: $2c
	ld b, $de                                        ; $62fa: $06 $de
	ld a, [hl-]                                      ; $62fc: $3a
	inc l                                            ; $62fd: $2c
	ld b, $ee                                        ; $62fe: $06 $ee
	ld b, b                                          ; $6300: $40
	ld l, $0e                                        ; $6301: $2e $0e
	xor $42                                          ; $6303: $ee $42
	ld l, $16                                        ; $6305: $2e $16
	xor $44                                          ; $6307: $ee $44

jr_00f_6309:
	ld l, $20                                        ; $6309: $2e $20
	ld [$2b50], a                                    ; $630b: $ea $50 $2b
	ldh a, [$f1]                                     ; $630e: $f0 $f1
	inc h                                            ; $6310: $24
	ld a, [hl+]                                      ; $6311: $2a
	add sp, -$0f                                     ; $6312: $e8 $f1
	ld [hl+], a                                      ; $6314: $22
	ld a, [hl+]                                      ; $6315: $2a
	ldh [$f1], a                                     ; $6316: $e0 $f1
	jr nz, jr_00f_6344                               ; $6318: $20 $2a

	ld d, $de                                        ; $631a: $16 $de
	ld a, $2c                                        ; $631c: $3e $2c
	ld c, $de                                        ; $631e: $0e $de
	inc a                                            ; $6320: $3c
	inc l                                            ; $6321: $2c
	ld b, $de                                        ; $6322: $06 $de
	ld a, [hl-]                                      ; $6324: $3a
	inc l                                            ; $6325: $2c
	ld b, $ee                                        ; $6326: $06 $ee
	ld b, b                                          ; $6328: $40
	ld l, $0e                                        ; $6329: $2e $0e
	xor $42                                          ; $632b: $ee $42
	ld l, $16                                        ; $632d: $2e $16
	xor $44                                          ; $632f: $ee $44
	ld l, $f0                                        ; $6331: $2e $f0
	pop hl                                           ; $6333: $e1

jr_00f_6334:
	ld e, $2a                                        ; $6334: $1e $2a
	add sp, -$1f                                     ; $6336: $e8 $e1
	inc e                                            ; $6338: $1c
	jr z, @-$1e                                      ; $6339: $28 $e0

	pop hl                                           ; $633b: $e1
	ld a, [de]                                       ; $633c: $1a

jr_00f_633d:
	dec hl                                           ; $633d: $2b
	ldh a, [$f1]                                     ; $633e: $f0 $f1
	ld c, $2a                                        ; $6340: $0e $2a
	add sp, -$0f                                     ; $6342: $e8 $f1

jr_00f_6344:
	inc c                                            ; $6344: $0c
	ld a, [hl+]                                      ; $6345: $2a
	ldh [$f1], a                                     ; $6346: $e0 $f1
	ld a, [bc]                                       ; $6348: $0a
	ld a, [hl+]                                      ; $6349: $2a
	db $ed                                           ; $634a: $ed
	pop hl                                           ; $634b: $e1
	ld [bc], a                                       ; $634c: $02
	jr z, jr_00f_6334                                ; $634d: $28 $e5

	pop hl                                           ; $634f: $e1
	nop                                              ; $6350: $00
	jr z, @+$1a                                      ; $6351: $28 $18

	pop af                                           ; $6353: $f1
	jr c, jr_00f_6384                                ; $6354: $38 $2e

	db $10                                           ; $6356: $10
	pop af                                           ; $6357: $f1
	ld [hl], $2e                                     ; $6358: $36 $2e
	jr jr_00f_633d                                   ; $635a: $18 $e1

jr_00f_635c:
	inc [hl]                                         ; $635c: $34
	inc l                                            ; $635d: $2c
	db $10                                           ; $635e: $10
	pop hl                                           ; $635f: $e1
	ld [hl-], a                                      ; $6360: $32
	inc l                                            ; $6361: $2c
	ei                                               ; $6362: $fb
	pop af                                           ; $6363: $f1
	ld d, b                                          ; $6364: $50

jr_00f_6365:
	dec hl                                           ; $6365: $2b
	ldh a, [$f1]                                     ; $6366: $f0 $f1
	ld c, $2a                                        ; $6368: $0e $2a
	add sp, -$0f                                     ; $636a: $e8 $f1
	inc c                                            ; $636c: $0c
	ld a, [hl+]                                      ; $636d: $2a
	ldh [$f1], a                                     ; $636e: $e0 $f1
	ld a, [bc]                                       ; $6370: $0a
	ld a, [hl+]                                      ; $6371: $2a
	db $ed                                           ; $6372: $ed
	pop hl                                           ; $6373: $e1
	ld [bc], a                                       ; $6374: $02
	jr z, jr_00f_635c                                ; $6375: $28 $e5

	pop hl                                           ; $6377: $e1
	nop                                              ; $6378: $00
	jr z, @+$1a                                      ; $6379: $28 $18

	pop af                                           ; $637b: $f1
	jr c, @+$30                                      ; $637c: $38 $2e

	db $10                                           ; $637e: $10
	pop af                                           ; $637f: $f1
	ld [hl], $2e                                     ; $6380: $36 $2e
	jr jr_00f_6365                                   ; $6382: $18 $e1

jr_00f_6384:
	inc [hl]                                         ; $6384: $34
	inc l                                            ; $6385: $2c
	db $10                                           ; $6386: $10
	pop hl                                           ; $6387: $e1

jr_00f_6388:
	ld [hl-], a                                      ; $6388: $32
	inc l                                            ; $6389: $2c
	nop                                              ; $638a: $00
	db $ec                                           ; $638b: $ec
	ld d, d                                          ; $638c: $52
	dec hl                                           ; $638d: $2b
	ldh a, [$f1]                                     ; $638e: $f0 $f1
	ld c, $2a                                        ; $6390: $0e $2a
	add sp, -$0f                                     ; $6392: $e8 $f1
	inc c                                            ; $6394: $0c
	ld a, [hl+]                                      ; $6395: $2a
	ldh [$f1], a                                     ; $6396: $e0 $f1
	ld a, [bc]                                       ; $6398: $0a
	ld a, [hl+]                                      ; $6399: $2a
	db $ed                                           ; $639a: $ed
	pop hl                                           ; $639b: $e1
	ld [bc], a                                       ; $639c: $02
	jr z, jr_00f_6384                                ; $639d: $28 $e5

	pop hl                                           ; $639f: $e1
	nop                                              ; $63a0: $00
	jr z, @+$0a                                      ; $63a1: $28 $08

	and $50                                          ; $63a3: $e6 $50
	ld a, [hl+]                                      ; $63a5: $2a
	jr jr_00f_6388                                   ; $63a6: $18 $e0

	ld a, $2c                                        ; $63a8: $3e $2c
	ld [$40f0], sp                                   ; $63aa: $08 $f0 $40
	ld l, $10                                        ; $63ad: $2e $10
	ldh a, [rSCY]                                    ; $63af: $f0 $42
	ld l, $18                                        ; $63b1: $2e $18
	ldh a, [rLY]                                     ; $63b3: $f0 $44
	ld l, $10                                        ; $63b5: $2e $10
	ldh [$3c], a                                     ; $63b7: $e0 $3c
	inc l                                            ; $63b9: $2c
	ld [$3ae0], sp                                   ; $63ba: $08 $e0 $3a
	dec l                                            ; $63bd: $2d
	ldh a, [$f1]                                     ; $63be: $f0 $f1
	ld c, $2a                                        ; $63c0: $0e $2a
	add sp, -$0f                                     ; $63c2: $e8 $f1
	inc c                                            ; $63c4: $0c
	ld a, [hl+]                                      ; $63c5: $2a
	ldh [$f1], a                                     ; $63c6: $e0 $f1
	ld a, [bc]                                       ; $63c8: $0a
	ld a, [hl+]                                      ; $63c9: $2a
	db $ed                                           ; $63ca: $ed
	pop hl                                           ; $63cb: $e1
	ld [bc], a                                       ; $63cc: $02
	jr z, @-$19                                      ; $63cd: $28 $e5

	pop hl                                           ; $63cf: $e1
	nop                                              ; $63d0: $00
	jr z, @+$0a                                      ; $63d1: $28 $08

	ldh [rHDMA2], a                                  ; $63d3: $e0 $52
	ld a, [hl+]                                      ; $63d5: $2a
	ld d, $de                                        ; $63d6: $16 $de
	ld a, $2c                                        ; $63d8: $3e $2c
	ld b, $ee                                        ; $63da: $06 $ee
	ld b, b                                          ; $63dc: $40
	ld l, $0e                                        ; $63dd: $2e $0e
	xor $42                                          ; $63df: $ee $42
	ld l, $16                                        ; $63e1: $2e $16
	xor $44                                          ; $63e3: $ee $44
	ld l, $0e                                        ; $63e5: $2e $0e
	sbc $3c                                          ; $63e7: $de $3c
	inc l                                            ; $63e9: $2c
	ld b, $de                                        ; $63ea: $06 $de
	ld a, [hl-]                                      ; $63ec: $3a
	dec l                                            ; $63ed: $2d
	ldh a, [$f1]                                     ; $63ee: $f0 $f1
	ld c, $2a                                        ; $63f0: $0e $2a
	add sp, -$0f                                     ; $63f2: $e8 $f1
	inc c                                            ; $63f4: $0c
	ld a, [hl+]                                      ; $63f5: $2a
	ldh [$f1], a                                     ; $63f6: $e0 $f1
	ld a, [bc]                                       ; $63f8: $0a
	ld a, [hl+]                                      ; $63f9: $2a
	db $ed                                           ; $63fa: $ed
	pop hl                                           ; $63fb: $e1
	ld [bc], a                                       ; $63fc: $02
	jr z, @-$19                                      ; $63fd: $28 $e5

	pop hl                                           ; $63ff: $e1
	nop                                              ; $6400: $00
	jr z, jr_00f_6419                                ; $6401: $28 $16

	sbc $3e                                          ; $6403: $de $3e
	inc l                                            ; $6405: $2c
	ld b, $ee                                        ; $6406: $06 $ee
	ld b, b                                          ; $6408: $40
	ld l, $0e                                        ; $6409: $2e $0e
	xor $42                                          ; $640b: $ee $42
	ld l, $16                                        ; $640d: $2e $16
	xor $44                                          ; $640f: $ee $44
	ld l, $0e                                        ; $6411: $2e $0e
	sbc $3c                                          ; $6413: $de $3c
	inc l                                            ; $6415: $2c
	ld b, $de                                        ; $6416: $06 $de
	ld a, [hl-]                                      ; $6418: $3a

jr_00f_6419:
	inc l                                            ; $6419: $2c
	ld [$50d8], sp                                   ; $641a: $08 $d8 $50
	dec hl                                           ; $641d: $2b
	push af                                          ; $641e: $f5

jr_00f_641f:
	ld [$6a48], a                                    ; $641f: $ea $48 $6a
	rst SubAFromDE                                          ; $6422: $df
	rst SubAFromBC                                          ; $6423: $e7
	ld c, b                                          ; $6424: $48
	ld a, [hl+]                                      ; $6425: $2a
	ldh a, [$f1]                                     ; $6426: $f0 $f1
	jr nc, jr_00f_6454                               ; $6428: $30 $2a

	add sp, -$0f                                     ; $642a: $e8 $f1
	ld l, $2a                                        ; $642c: $2e $2a
	ldh [$f1], a                                     ; $642e: $e0 $f1
	inc l                                            ; $6430: $2c
	ld a, [hl+]                                      ; $6431: $2a
	ldh a, [$e1]                                     ; $6432: $f0 $e1
	ld a, [hl+]                                      ; $6434: $2a
	jr z, jr_00f_641f                                ; $6435: $28 $e8

	pop hl                                           ; $6437: $e1
	jr z, jr_00f_6462                                ; $6438: $28 $28

	ldh [$e1], a                                     ; $643a: $e0 $e1
	ld h, $28                                        ; $643c: $26 $28
	ld d, $de                                        ; $643e: $16 $de
	ld a, $2c                                        ; $6440: $3e $2c
	ld b, $ee                                        ; $6442: $06 $ee
	ld b, b                                          ; $6444: $40
	ld l, $0e                                        ; $6445: $2e $0e
	xor $42                                          ; $6447: $ee $42
	ld l, $16                                        ; $6449: $2e $16
	xor $44                                          ; $644b: $ee $44
	ld l, $0e                                        ; $644d: $2e $0e
	sbc $3c                                          ; $644f: $de $3c
	inc l                                            ; $6451: $2c
	ld b, $de                                        ; $6452: $06 $de

jr_00f_6454:
	ld a, [hl-]                                      ; $6454: $3a
	dec l                                            ; $6455: $2d
	ldh a, [c]                                       ; $6456: $f2

jr_00f_6457:
	rst SubAFromBC                                          ; $6457: $e7
	ld c, b                                          ; $6458: $48
	ld l, d                                          ; $6459: $6a
	db $dd                                           ; $645a: $dd
	db $eb                                           ; $645b: $eb
	ld c, b                                          ; $645c: $48
	ld a, [hl+]                                      ; $645d: $2a
	ldh a, [$f1]                                     ; $645e: $f0 $f1
	jr nc, jr_00f_648c                               ; $6460: $30 $2a

jr_00f_6462:
	add sp, -$0f                                     ; $6462: $e8 $f1
	ld l, $2a                                        ; $6464: $2e $2a
	ldh [$f1], a                                     ; $6466: $e0 $f1
	inc l                                            ; $6468: $2c
	ld a, [hl+]                                      ; $6469: $2a
	ldh a, [$e1]                                     ; $646a: $f0 $e1
	ld a, [hl+]                                      ; $646c: $2a
	jr z, jr_00f_6457                                ; $646d: $28 $e8

	pop hl                                           ; $646f: $e1
	jr z, @+$2a                                      ; $6470: $28 $28

	ldh [$e1], a                                     ; $6472: $e0 $e1
	ld h, $28                                        ; $6474: $26 $28
	ld d, $de                                        ; $6476: $16 $de
	ld a, $2c                                        ; $6478: $3e $2c
	ld b, $ee                                        ; $647a: $06 $ee
	ld b, b                                          ; $647c: $40
	ld l, $0e                                        ; $647d: $2e $0e
	xor $42                                          ; $647f: $ee $42

jr_00f_6481:
	ld l, $16                                        ; $6481: $2e $16

jr_00f_6483:
	xor $44                                          ; $6483: $ee $44

jr_00f_6485:
	ld l, $0e                                        ; $6485: $2e $0e

jr_00f_6487:
	sbc $3c                                          ; $6487: $de $3c
	inc l                                            ; $6489: $2c
	ld b, $de                                        ; $648a: $06 $de

jr_00f_648c:
	ld a, [hl-]                                      ; $648c: $3a
	dec l                                            ; $648d: $2d
	jr nz, jr_00f_6481                               ; $648e: $20 $f1

	jr c, jr_00f_64be                                ; $6490: $38 $2c

	jr jr_00f_6485                                   ; $6492: $18 $f1

	ld [hl], $2c                                     ; $6494: $36 $2c
	jr nz, @-$1d                                     ; $6496: $20 $e1

	inc [hl]                                         ; $6498: $34

jr_00f_6499:
	ld l, $18                                        ; $6499: $2e $18
	pop hl                                           ; $649b: $e1
	ld [hl-], a                                      ; $649c: $32
	ld l, $e0                                        ; $649d: $2e $e0
	pop af                                           ; $649f: $f1
	ld b, $2a                                        ; $64a0: $06 $2a
	ret c                                            ; $64a2: $d8

jr_00f_64a3:
	pop af                                           ; $64a3: $f1
	inc b                                            ; $64a4: $04

jr_00f_64a5:
	jr z, jr_00f_6487                                ; $64a5: $28 $e0

	pop hl                                           ; $64a7: $e1
	ld [bc], a                                       ; $64a8: $02
	jr z, jr_00f_6483                                ; $64a9: $28 $d8

	pop hl                                           ; $64ab: $e1
	nop                                              ; $64ac: $00
	add hl, hl                                       ; $64ad: $29
	jr nz, @-$0d                                     ; $64ae: $20 $f1

	ld b, b                                          ; $64b0: $40
	inc l                                            ; $64b1: $2c
	jr jr_00f_64a5                                   ; $64b2: $18 $f1

	ld a, $2c                                        ; $64b4: $3e $2c
	jr nz, jr_00f_6499                               ; $64b6: $20 $e1

	inc [hl]                                         ; $64b8: $34
	ld l, $e0                                        ; $64b9: $2e $e0
	pop af                                           ; $64bb: $f1
	ld b, $2a                                        ; $64bc: $06 $2a

jr_00f_64be:
	ret c                                            ; $64be: $d8

	pop af                                           ; $64bf: $f1
	inc b                                            ; $64c0: $04
	jr z, @+$1a                                      ; $64c1: $28 $18

	pop hl                                           ; $64c3: $e1
	ld [hl-], a                                      ; $64c4: $32
	ld l, $e0                                        ; $64c5: $2e $e0
	pop hl                                           ; $64c7: $e1
	ld [bc], a                                       ; $64c8: $02
	jr z, jr_00f_64a3                                ; $64c9: $28 $d8

jr_00f_64cb:
	pop hl                                           ; $64cb: $e1
	nop                                              ; $64cc: $00
	add hl, hl                                       ; $64cd: $29
	ld hl, $4cf3                                     ; $64ce: $21 $f3 $4c
	inc l                                            ; $64d1: $2c
	add hl, de                                       ; $64d2: $19
	di                                               ; $64d3: $f3
	ld c, d                                          ; $64d4: $4a
	inc l                                            ; $64d5: $2c
	ld de, $48f3                                     ; $64d6: $11 $f3 $48
	inc l                                            ; $64d9: $2c
	ld hl, $46e3                                     ; $64da: $21 $e3 $46
	ld l, $19                                        ; $64dd: $2e $19
	db $e3                                           ; $64df: $e3
	ld b, h                                          ; $64e0: $44
	ld l, $11                                        ; $64e1: $2e $11
	db $e3                                           ; $64e3: $e3
	ld b, d                                          ; $64e4: $42
	ld l, $e0                                        ; $64e5: $2e $e0
	pop af                                           ; $64e7: $f1
	ld b, $2a                                        ; $64e8: $06 $2a
	ret c                                            ; $64ea: $d8

	pop af                                           ; $64eb: $f1
	inc b                                            ; $64ec: $04
	jr z, @-$1e                                      ; $64ed: $28 $e0

	pop hl                                           ; $64ef: $e1
	ld [bc], a                                       ; $64f0: $02
	jr z, jr_00f_64cb                                ; $64f1: $28 $d8

	pop hl                                           ; $64f3: $e1
	nop                                              ; $64f4: $00
	jr z, jr_00f_64f7                                ; $64f5: $28 $00

jr_00f_64f7:
	ldh a, [c]                                       ; $64f7: $f2
	ld c, [hl]                                       ; $64f8: $4e
	dec hl                                           ; $64f9: $2b
	ld hl, $4cf3                                     ; $64fa: $21 $f3 $4c
	inc l                                            ; $64fd: $2c
	add hl, de                                       ; $64fe: $19
	di                                               ; $64ff: $f3
	ld c, d                                          ; $6500: $4a
	inc l                                            ; $6501: $2c
	ld de, $48f3                                     ; $6502: $11 $f3 $48
	inc l                                            ; $6505: $2c
	ld hl, $46e3                                     ; $6506: $21 $e3 $46
	ld l, $19                                        ; $6509: $2e $19
	db $e3                                           ; $650b: $e3
	ld b, h                                          ; $650c: $44
	ld l, $11                                        ; $650d: $2e $11
	db $e3                                           ; $650f: $e3
	ld b, d                                          ; $6510: $42
	ld l, $e0                                        ; $6511: $2e $e0
	pop af                                           ; $6513: $f1
	ld b, $2a                                        ; $6514: $06 $2a
	ret c                                            ; $6516: $d8

	pop af                                           ; $6517: $f1
	inc b                                            ; $6518: $04
	jr z, @-$1e                                      ; $6519: $28 $e0

	pop hl                                           ; $651b: $e1
	ld [bc], a                                       ; $651c: $02
	jr z, jr_00f_64f7                                ; $651d: $28 $d8

	pop hl                                           ; $651f: $e1
	nop                                              ; $6520: $00
	jr z, @-$0f                                      ; $6521: $28 $ef

	ldh a, [$4e]                                     ; $6523: $f0 $4e
	dec hl                                           ; $6525: $2b
	ld hl, $4cf3                                     ; $6526: $21 $f3 $4c
	inc l                                            ; $6529: $2c
	add hl, de                                       ; $652a: $19
	di                                               ; $652b: $f3
	ld c, d                                          ; $652c: $4a
	inc l                                            ; $652d: $2c
	ld de, $48f3                                     ; $652e: $11 $f3 $48
	inc l                                            ; $6531: $2c
	ld hl, $46e3                                     ; $6532: $21 $e3 $46
	ld l, $19                                        ; $6535: $2e $19
	db $e3                                           ; $6537: $e3
	ld b, h                                          ; $6538: $44
	ld l, $11                                        ; $6539: $2e $11
	db $e3                                           ; $653b: $e3
	ld b, d                                          ; $653c: $42
	ld l, $e0                                        ; $653d: $2e $e0
	ldh a, [$4e]                                     ; $653f: $f0 $4e
	ld a, [hl+]                                      ; $6541: $2a
	push hl                                          ; $6542: $e5
	ldh a, [c]                                       ; $6543: $f2

jr_00f_6544:
	db $10                                           ; $6544: $10
	ld a, [hl+]                                      ; $6545: $2a
	db $dd                                           ; $6546: $dd
	ldh a, [c]                                       ; $6547: $f2
	ld c, $2a                                        ; $6548: $0e $2a
	push de                                          ; $654a: $d5
	ldh a, [c]                                       ; $654b: $f2
	inc c                                            ; $654c: $0c
	ld a, [hl+]                                      ; $654d: $2a
	push hl                                          ; $654e: $e5
	ldh [c], a                                       ; $654f: $e2
	ld a, [bc]                                       ; $6550: $0a
	jr z, @-$21                                      ; $6551: $28 $dd

	ldh [c], a                                       ; $6553: $e2
	ld [$e929], sp                                   ; $6554: $08 $29 $e9
	pop af                                           ; $6557: $f1
	inc e                                            ; $6558: $1c
	ld a, [hl+]                                      ; $6559: $2a
	pop hl                                           ; $655a: $e1
	pop af                                           ; $655b: $f1
	ld a, [de]                                       ; $655c: $1a
	ld a, [hl+]                                      ; $655d: $2a
	reti                                             ; $655e: $d9


	pop af                                           ; $655f: $f1
	jr jr_00f_658e                                   ; $6560: $18 $2c

	jp hl                                            ; $6562: $e9


	pop hl                                           ; $6563: $e1
	ld d, $28                                        ; $6564: $16 $28
	pop hl                                           ; $6566: $e1
	pop hl                                           ; $6567: $e1
	inc d                                            ; $6568: $14
	jr z, jr_00f_6544                                ; $6569: $28 $d9

	pop hl                                           ; $656b: $e1
	ld [de], a                                       ; $656c: $12
	jr z, @+$23                                      ; $656d: $28 $21

	di                                               ; $656f: $f3
	ld c, h                                          ; $6570: $4c
	inc l                                            ; $6571: $2c
	add hl, de                                       ; $6572: $19
	di                                               ; $6573: $f3
	ld c, d                                          ; $6574: $4a
	inc l                                            ; $6575: $2c
	ld de, $48f3                                     ; $6576: $11 $f3 $48
	inc l                                            ; $6579: $2c
	ld hl, $46e3                                     ; $657a: $21 $e3 $46
	ld l, $19                                        ; $657d: $2e $19
	db $e3                                           ; $657f: $e3
	ld b, h                                          ; $6580: $44
	ld l, $11                                        ; $6581: $2e $11
	db $e3                                           ; $6583: $e3
	ld b, d                                          ; $6584: $42
	ld l, $f7                                        ; $6585: $2e $f7
	ret c                                            ; $6587: $d8

	ld c, [hl]                                       ; $6588: $4e
	dec hl                                           ; $6589: $2b
	ld hl, $4cf3                                     ; $658a: $21 $f3 $4c
	inc l                                            ; $658d: $2c

jr_00f_658e:
	ld hl, $46e3                                     ; $658e: $21 $e3 $46
	ld l, $19                                        ; $6591: $2e $19
	di                                               ; $6593: $f3
	ld c, d                                          ; $6594: $4a
	inc l                                            ; $6595: $2c
	add hl, de                                       ; $6596: $19
	db $e3                                           ; $6597: $e3
	ld b, h                                          ; $6598: $44
	ld l, $11                                        ; $6599: $2e $11
	di                                               ; $659b: $f3
	ld c, b                                          ; $659c: $48
	inc l                                            ; $659d: $2c
	ld de, $42e3                                     ; $659e: $11 $e3 $42
	ld l, $e9                                        ; $65a1: $2e $e9
	pop af                                           ; $65a3: $f1
	inc e                                            ; $65a4: $1c
	ld a, [hl+]                                      ; $65a5: $2a
	pop hl                                           ; $65a6: $e1
	pop af                                           ; $65a7: $f1
	ld a, [de]                                       ; $65a8: $1a

jr_00f_65a9:
	ld a, [hl+]                                      ; $65a9: $2a
	reti                                             ; $65aa: $d9


	pop af                                           ; $65ab: $f1
	jr @+$2e                                         ; $65ac: $18 $2c

	jp hl                                            ; $65ae: $e9


	pop hl                                           ; $65af: $e1
	ld d, $28                                        ; $65b0: $16 $28
	pop hl                                           ; $65b2: $e1
	pop hl                                           ; $65b3: $e1
	inc d                                            ; $65b4: $14

jr_00f_65b5:
	jr z, @-$25                                      ; $65b5: $28 $d9

	pop hl                                           ; $65b7: $e1
	ld [de], a                                       ; $65b8: $12
	jr z, @+$21                                      ; $65b9: $28 $1f

jr_00f_65bb:
	ret z                                            ; $65bb: $c8

	ld c, [hl]                                       ; $65bc: $4e
	dec hl                                           ; $65bd: $2b
	jr nz, @-$0d                                     ; $65be: $20 $f1

	jr c, jr_00f_65ee                                ; $65c0: $38 $2c

	jr jr_00f_65b5                                   ; $65c2: $18 $f1

	ld [hl], $2c                                     ; $65c4: $36 $2c
	jr nz, jr_00f_65a9                               ; $65c6: $20 $e1

	inc [hl]                                         ; $65c8: $34
	ld l, $18                                        ; $65c9: $2e $18
	pop hl                                           ; $65cb: $e1
	ld [hl-], a                                      ; $65cc: $32
	ld l, $e1                                        ; $65cd: $2e $e1
	pop af                                           ; $65cf: $f1
	ld h, $2a                                        ; $65d0: $26 $2a
	reti                                             ; $65d2: $d9


	pop af                                           ; $65d3: $f1
	inc h                                            ; $65d4: $24
	ld a, [hl+]                                      ; $65d5: $2a
	add sp, -$1f                                     ; $65d6: $e8 $e1
	ld [hl+], a                                      ; $65d8: $22
	jr z, jr_00f_65bb                                ; $65d9: $28 $e0

	pop hl                                           ; $65db: $e1
	jr nz, jr_00f_6606                               ; $65dc: $20 $28

	ret c                                            ; $65de: $d8

	pop hl                                           ; $65df: $e1

jr_00f_65e0:
	ld e, $29                                        ; $65e0: $1e $29
	ld hl, $4cf3                                     ; $65e2: $21 $f3 $4c
	inc l                                            ; $65e5: $2c
	ld hl, $46e3                                     ; $65e6: $21 $e3 $46
	ld l, $19                                        ; $65e9: $2e $19
	di                                               ; $65eb: $f3
	ld c, d                                          ; $65ec: $4a
	inc l                                            ; $65ed: $2c

jr_00f_65ee:
	add hl, de                                       ; $65ee: $19
	db $e3                                           ; $65ef: $e3
	ld b, h                                          ; $65f0: $44
	ld l, $11                                        ; $65f1: $2e $11
	di                                               ; $65f3: $f3
	ld c, b                                          ; $65f4: $48
	inc l                                            ; $65f5: $2c
	ld de, $42e3                                     ; $65f6: $11 $e3 $42
	ld l, $e9                                        ; $65f9: $2e $e9
	pop af                                           ; $65fb: $f1
	inc e                                            ; $65fc: $1c
	ld a, [hl+]                                      ; $65fd: $2a
	pop hl                                           ; $65fe: $e1
	pop af                                           ; $65ff: $f1
	ld a, [de]                                       ; $6600: $1a
	ld a, [hl+]                                      ; $6601: $2a
	reti                                             ; $6602: $d9


	pop af                                           ; $6603: $f1
	jr jr_00f_6632                                   ; $6604: $18 $2c

jr_00f_6606:
	jp hl                                            ; $6606: $e9


	pop hl                                           ; $6607: $e1
	ld d, $28                                        ; $6608: $16 $28
	pop hl                                           ; $660a: $e1
	pop hl                                           ; $660b: $e1
	inc d                                            ; $660c: $14
	jr z, @-$25                                      ; $660d: $28 $d9

	pop hl                                           ; $660f: $e1
	ld [de], a                                       ; $6610: $12
	jr z, jr_00f_65e0                                ; $6611: $28 $cd

	pop af                                           ; $6613: $f1
	ld c, [hl]                                       ; $6614: $4e
	dec hl                                           ; $6615: $2b
	ld hl, $4cf3                                     ; $6616: $21 $f3 $4c
	inc l                                            ; $6619: $2c
	ld hl, $46e3                                     ; $661a: $21 $e3 $46
	ld l, $19                                        ; $661d: $2e $19
	di                                               ; $661f: $f3
	ld c, d                                          ; $6620: $4a
	inc l                                            ; $6621: $2c
	add hl, de                                       ; $6622: $19
	db $e3                                           ; $6623: $e3
	ld b, h                                          ; $6624: $44
	ld l, $11                                        ; $6625: $2e $11
	di                                               ; $6627: $f3
	ld c, b                                          ; $6628: $48
	inc l                                            ; $6629: $2c
	ld de, $42e3                                     ; $662a: $11 $e3 $42
	ld l, $e9                                        ; $662d: $2e $e9
	pop af                                           ; $662f: $f1
	inc e                                            ; $6630: $1c
	ld a, [hl+]                                      ; $6631: $2a

jr_00f_6632:
	pop hl                                           ; $6632: $e1
	pop af                                           ; $6633: $f1
	ld a, [de]                                       ; $6634: $1a

jr_00f_6635:
	ld a, [hl+]                                      ; $6635: $2a
	reti                                             ; $6636: $d9


jr_00f_6637:
	pop af                                           ; $6637: $f1
	jr jr_00f_6666                                   ; $6638: $18 $2c

	jp hl                                            ; $663a: $e9


jr_00f_663b:
	pop hl                                           ; $663b: $e1
	ld d, $28                                        ; $663c: $16 $28
	pop hl                                           ; $663e: $e1
	pop hl                                           ; $663f: $e1
	inc d                                            ; $6640: $14

jr_00f_6641:
	jr z, @-$25                                      ; $6641: $28 $d9

	pop hl                                           ; $6643: $e1
	ld [de], a                                       ; $6644: $12
	jr z, jr_00f_6606                                ; $6645: $28 $bf

	rst FarCall                                          ; $6647: $f7
	ld c, [hl]                                       ; $6648: $4e
	dec hl                                           ; $6649: $2b
	jr nz, @-$0d                                     ; $664a: $20 $f1

	jr c, jr_00f_667a                                ; $664c: $38 $2c

	jr jr_00f_6641                                   ; $664e: $18 $f1

	ld [hl], $2c                                     ; $6650: $36 $2c
	jr nz, jr_00f_6635                               ; $6652: $20 $e1

	inc [hl]                                         ; $6654: $34
	ld l, $18                                        ; $6655: $2e $18
	pop hl                                           ; $6657: $e1
	ld [hl-], a                                      ; $6658: $32
	ld l, $e4                                        ; $6659: $2e $e4
	pop hl                                           ; $665b: $e1
	inc l                                            ; $665c: $2c
	jr z, jr_00f_663b                                ; $665d: $28 $dc

	pop hl                                           ; $665f: $e1
	ld a, [hl+]                                      ; $6660: $2a

jr_00f_6661:
	jr z, jr_00f_6637                                ; $6661: $28 $d4

	pop hl                                           ; $6663: $e1
	jr z, jr_00f_668e                                ; $6664: $28 $28

jr_00f_6666:
	add sp, -$14                                     ; $6666: $e8 $ec
	ld d, d                                          ; $6668: $52

jr_00f_6669:
	ld l, d                                          ; $6669: $6a
	call nc, Call_00f_52e9                           ; $666a: $d4 $e9 $52

jr_00f_666d:
	ld a, [hl+]                                      ; $666d: $2a
	sub $f1                                          ; $666e: $d6 $f1
	ld l, $28                                        ; $6670: $2e $28
	sbc $f1                                          ; $6672: $de $f1
	jr nc, jr_00f_66a1                               ; $6674: $30 $2b

	jr nz, jr_00f_6669                               ; $6676: $20 $f1

	jr c, @+$2e                                      ; $6678: $38 $2c

jr_00f_667a:
	jr jr_00f_666d                                   ; $667a: $18 $f1

	ld [hl], $2c                                     ; $667c: $36 $2c
	jr nz, jr_00f_6661                               ; $667e: $20 $e1

	inc [hl]                                         ; $6680: $34
	ld l, $18                                        ; $6681: $2e $18
	pop hl                                           ; $6683: $e1
	ld [hl-], a                                      ; $6684: $32
	ld l, $d6                                        ; $6685: $2e $d6
	pop af                                           ; $6687: $f1
	ld l, $28                                        ; $6688: $2e $28
	sbc $f1                                          ; $668a: $de $f1
	jr nc, jr_00f_66b8                               ; $668c: $30 $2a

jr_00f_668e:
	db $e4                                           ; $668e: $e4
	pop hl                                           ; $668f: $e1
	inc l                                            ; $6690: $2c
	jr z, @-$22                                      ; $6691: $28 $dc

jr_00f_6693:
	pop hl                                           ; $6693: $e1
	ld a, [hl+]                                      ; $6694: $2a
	jr z, @-$2a                                      ; $6695: $28 $d4

	pop hl                                           ; $6697: $e1
	jr z, @+$2a                                      ; $6698: $28 $28

	and $e9                                          ; $669a: $e6 $e9
	ld d, d                                          ; $669c: $52
	ld l, d                                          ; $669d: $6a
	pop de                                           ; $669e: $d1
	db $ec                                           ; $669f: $ec
	ld d, d                                          ; $66a0: $52

jr_00f_66a1:
	dec hl                                           ; $66a1: $2b
	db $f4                                           ; $66a2: $f4
	db $ed                                           ; $66a3: $ed
	ld a, [bc]                                       ; $66a4: $0a
	jr z, jr_00f_6693                                ; $66a5: $28 $ec

	db $ed                                           ; $66a7: $ed
	ld [$e428], sp                                   ; $66a8: $08 $28 $e4
	db $ed                                           ; $66ab: $ed
	ld b, $28                                        ; $66ac: $06 $28
	ldh [$fd], a                                     ; $66ae: $e0 $fd
	inc a                                            ; $66b0: $3c
	ld l, d                                          ; $66b1: $6a
	add sp, -$03                                     ; $66b2: $e8 $fd
	ld a, [hl-]                                      ; $66b4: $3a
	ld l, d                                          ; $66b5: $6a
	ld hl, sp-$03                                    ; $66b6: $f8 $fd

jr_00f_66b8:
	inc a                                            ; $66b8: $3c
	ld a, [hl+]                                      ; $66b9: $2a
	ldh a, [$fd]                                     ; $66ba: $f0 $fd
	ld a, [hl-]                                      ; $66bc: $3a
	ld a, [hl+]                                      ; $66bd: $2a
	call c, $2ce8                                    ; $66be: $dc $e8 $2c
	ld l, $d4                                        ; $66c1: $2e $d4
	add sp, $2a                                      ; $66c3: $e8 $2a
	ld l, $cc                                        ; $66c5: $2e $cc
	add sp, $06                                      ; $66c7: $e8 $06
	jr z, jr_00f_6693                                ; $66c9: $28 $c8

	ld hl, sp+$3c                                    ; $66cb: $f8 $3c
	ld l, d                                          ; $66cd: $6a
	ret nc                                           ; $66ce: $d0

	ld hl, sp+$3a                                    ; $66cf: $f8 $3a
	ld l, d                                          ; $66d1: $6a
	ldh [$f8], a                                     ; $66d2: $e0 $f8
	inc a                                            ; $66d4: $3c
	ld a, [hl+]                                      ; $66d5: $2a
	ret c                                            ; $66d6: $d8

	ld hl, sp+$3a                                    ; $66d7: $f8 $3a
	ld a, [hl+]                                      ; $66d9: $2a
	ld [hl-], a                                      ; $66da: $32
	ldh a, [$38]                                     ; $66db: $f0 $38
	inc l                                            ; $66dd: $2c
	ld a, [hl+]                                      ; $66de: $2a
	ldh a, [$36]                                     ; $66df: $f0 $36
	inc l                                            ; $66e1: $2c
	ld [hl+], a                                      ; $66e2: $22

jr_00f_66e3:
	add sp, $32                                      ; $66e3: $e8 $32
	inc l                                            ; $66e5: $2c
	ld a, [hl+]                                      ; $66e6: $2a

jr_00f_66e7:
	ldh [$34], a                                     ; $66e7: $e0 $34
	dec l                                            ; $66e9: $2d
	db $fc                                           ; $66ea: $fc

jr_00f_66eb:
	db $ed                                           ; $66eb: $ed
	db $10                                           ; $66ec: $10
	jr z, jr_00f_66e3                                ; $66ed: $28 $f4

	db $ed                                           ; $66ef: $ed
	ld c, $28                                        ; $66f0: $0e $28
	db $ec                                           ; $66f2: $ec
	db $ed                                           ; $66f3: $ed
	inc c                                            ; $66f4: $0c
	jr z, jr_00f_66e7                                ; $66f5: $28 $f0

	db $fd                                           ; $66f7: $fd
	ld a, [hl-]                                      ; $66f8: $3a
	ld l, d                                          ; $66f9: $6a
	add sp, -$03                                     ; $66fa: $e8 $fd
	inc a                                            ; $66fc: $3c
	ld l, d                                          ; $66fd: $6a
	nop                                              ; $66fe: $00
	db $fd                                           ; $66ff: $fd
	inc a                                            ; $6700: $3c
	ld a, [hl+]                                      ; $6701: $2a
	ld hl, sp-$03                                    ; $6702: $f8 $fd
	ld a, [hl-]                                      ; $6704: $3a
	ld a, [hl+]                                      ; $6705: $2a
	db $e4                                           ; $6706: $e4
	add sp, $30                                      ; $6707: $e8 $30
	ld l, $dc                                        ; $6709: $2e $dc
	add sp, $2e                                      ; $670b: $e8 $2e
	ld l, $d4                                        ; $670d: $2e $d4
	add sp, $0c                                      ; $670f: $e8 $0c
	jr z, jr_00f_66eb                                ; $6711: $28 $d8

	ld hl, sp+$3a                                    ; $6713: $f8 $3a
	ld l, d                                          ; $6715: $6a
	ret nc                                           ; $6716: $d0

	ld hl, sp+$3c                                    ; $6717: $f8 $3c
	ld l, d                                          ; $6719: $6a
	add sp, -$08                                     ; $671a: $e8 $f8
	inc a                                            ; $671c: $3c
	ld a, [hl+]                                      ; $671d: $2a
	ldh [$f8], a                                     ; $671e: $e0 $f8
	ld a, [hl-]                                      ; $6720: $3a
	ld a, [hl+]                                      ; $6721: $2a
	ld [hl-], a                                      ; $6722: $32
	ldh a, [$38]                                     ; $6723: $f0 $38
	inc l                                            ; $6725: $2c
	ld a, [hl+]                                      ; $6726: $2a
	ldh a, [$36]                                     ; $6727: $f0 $36
	inc l                                            ; $6729: $2c
	ld [hl+], a                                      ; $672a: $22
	add sp, $32                                      ; $672b: $e8 $32

jr_00f_672d:
	inc l                                            ; $672d: $2c
	ld a, [hl+]                                      ; $672e: $2a
	ldh [$34], a                                     ; $672f: $e0 $34

jr_00f_6731:
	dec l                                            ; $6731: $2d
	ld [bc], a                                       ; $6732: $02
	db $ed                                           ; $6733: $ed
	inc b                                            ; $6734: $04
	jr z, jr_00f_6731                                ; $6735: $28 $fa

	db $ed                                           ; $6737: $ed
	ld [bc], a                                       ; $6738: $02
	jr z, jr_00f_672d                                ; $6739: $28 $f2

	db $ed                                           ; $673b: $ed
	nop                                              ; $673c: $00
	jr z, jr_00f_672d                                ; $673d: $28 $ee

	db $fd                                           ; $673f: $fd
	inc a                                            ; $6740: $3c
	ld l, d                                          ; $6741: $6a
	or $fd                                           ; $6742: $f6 $fd
	ld a, [hl-]                                      ; $6744: $3a
	ld l, d                                          ; $6745: $6a
	ld b, $fd                                        ; $6746: $06 $fd
	inc a                                            ; $6748: $3c
	ld a, [hl+]                                      ; $6749: $2a
	cp $fd                                           ; $674a: $fe $fd
	ld a, [hl-]                                      ; $674c: $3a
	ld a, [hl+]                                      ; $674d: $2a
	push hl                                          ; $674e: $e5
	add sp, $28                                      ; $674f: $e8 $28
	ld l, $dd                                        ; $6751: $2e $dd
	add sp, $26                                      ; $6753: $e8 $26
	ld l, $d5                                        ; $6755: $2e $d5
	add sp, $00                                      ; $6757: $e8 $00
	jr z, @-$2d                                      ; $6759: $28 $d1

	ld hl, sp+$3c                                    ; $675b: $f8 $3c
	ld l, d                                          ; $675d: $6a
	reti                                             ; $675e: $d9


	ld hl, sp+$3a                                    ; $675f: $f8 $3a
	ld l, d                                          ; $6761: $6a
	jp hl                                            ; $6762: $e9


	ld hl, sp+$3c                                    ; $6763: $f8 $3c
	ld a, [hl+]                                      ; $6765: $2a
	pop hl                                           ; $6766: $e1
	ld hl, sp+$3a                                    ; $6767: $f8 $3a
	ld a, [hl+]                                      ; $6769: $2a
	ld [hl-], a                                      ; $676a: $32
	ldh a, [$38]                                     ; $676b: $f0 $38
	inc l                                            ; $676d: $2c
	ld a, [hl+]                                      ; $676e: $2a
	ldh a, [$36]                                     ; $676f: $f0 $36
	inc l                                            ; $6771: $2c
	ld [hl+], a                                      ; $6772: $22
	add sp, $32                                      ; $6773: $e8 $32
	inc l                                            ; $6775: $2c
	ld a, [hl+]                                      ; $6776: $2a
	ldh [$34], a                                     ; $6777: $e0 $34
	dec l                                            ; $6779: $2d
	ld [$0aed], sp                                   ; $677a: $08 $ed $0a
	jr z, jr_00f_677f                                ; $677d: $28 $00

jr_00f_677f:
	db $ed                                           ; $677f: $ed
	ld [$f828], sp                                   ; $6780: $08 $28 $f8
	db $ed                                           ; $6783: $ed
	ld b, $28                                        ; $6784: $06 $28
	db $f4                                           ; $6786: $f4
	db $fd                                           ; $6787: $fd
	inc a                                            ; $6788: $3c
	ld l, d                                          ; $6789: $6a
	db $fc                                           ; $678a: $fc
	db $fd                                           ; $678b: $fd
	ld a, [hl-]                                      ; $678c: $3a
	ld l, d                                          ; $678d: $6a
	inc c                                            ; $678e: $0c
	db $fd                                           ; $678f: $fd
	inc a                                            ; $6790: $3c
	ld a, [hl+]                                      ; $6791: $2a
	inc b                                            ; $6792: $04
	db $fd                                           ; $6793: $fd
	ld a, [hl-]                                      ; $6794: $3a
	ld a, [hl+]                                      ; $6795: $2a
	db $ec                                           ; $6796: $ec
	add sp, $2c                                      ; $6797: $e8 $2c
	ld l, $e4                                        ; $6799: $2e $e4
	add sp, $2a                                      ; $679b: $e8 $2a
	ld l, $dc                                        ; $679d: $2e $dc
	add sp, $06                                      ; $679f: $e8 $06
	jr z, @-$26                                      ; $67a1: $28 $d8

	ld hl, sp+$3c                                    ; $67a3: $f8 $3c
	ld l, d                                          ; $67a5: $6a
	ldh [$f8], a                                     ; $67a6: $e0 $f8
	ld a, [hl-]                                      ; $67a8: $3a
	ld l, d                                          ; $67a9: $6a
	ldh a, [$f8]                                     ; $67aa: $f0 $f8
	inc a                                            ; $67ac: $3c
	ld a, [hl+]                                      ; $67ad: $2a
	add sp, -$08                                     ; $67ae: $e8 $f8
	ld a, [hl-]                                      ; $67b0: $3a
	ld a, [hl+]                                      ; $67b1: $2a
	ld [hl-], a                                      ; $67b2: $32
	ldh a, [$38]                                     ; $67b3: $f0 $38
	inc l                                            ; $67b5: $2c
	ld a, [hl+]                                      ; $67b6: $2a
	ldh a, [$36]                                     ; $67b7: $f0 $36
	inc l                                            ; $67b9: $2c
	ld [hl+], a                                      ; $67ba: $22
	add sp, $32                                      ; $67bb: $e8 $32
	inc l                                            ; $67bd: $2c
	ld a, [hl+]                                      ; $67be: $2a
	ldh [$34], a                                     ; $67bf: $e0 $34
	dec l                                            ; $67c1: $2d
	inc c                                            ; $67c2: $0c
	db $ed                                           ; $67c3: $ed
	db $10                                           ; $67c4: $10
	jr z, jr_00f_67cb                                ; $67c5: $28 $04

jr_00f_67c7:
	db $ed                                           ; $67c7: $ed
	ld c, $28                                        ; $67c8: $0e $28
	db $fc                                           ; $67ca: $fc

jr_00f_67cb:
	db $ed                                           ; $67cb: $ed
	inc c                                            ; $67cc: $0c
	jr z, jr_00f_67c7                                ; $67cd: $28 $f8

	db $fd                                           ; $67cf: $fd
	inc a                                            ; $67d0: $3c
	ld l, d                                          ; $67d1: $6a
	nop                                              ; $67d2: $00
	db $fd                                           ; $67d3: $fd
	ld a, [hl-]                                      ; $67d4: $3a
	ld l, d                                          ; $67d5: $6a
	db $10                                           ; $67d6: $10
	db $fd                                           ; $67d7: $fd
	inc a                                            ; $67d8: $3c
	ld a, [hl+]                                      ; $67d9: $2a
	ld [$3afd], sp                                   ; $67da: $08 $fd $3a
	ld a, [hl+]                                      ; $67dd: $2a
	db $f4                                           ; $67de: $f4
	add sp, $30                                      ; $67df: $e8 $30
	ld l, $ec                                        ; $67e1: $2e $ec
	add sp, $2e                                      ; $67e3: $e8 $2e
	ld l, $e4                                        ; $67e5: $2e $e4
	add sp, $0c                                      ; $67e7: $e8 $0c
	jr z, jr_00f_67cb                                ; $67e9: $28 $e0

	ld hl, sp+$3c                                    ; $67eb: $f8 $3c
	ld l, d                                          ; $67ed: $6a
	add sp, -$08                                     ; $67ee: $e8 $f8
	ld a, [hl-]                                      ; $67f0: $3a
	ld l, d                                          ; $67f1: $6a
	ld hl, sp-$08                                    ; $67f2: $f8 $f8
	inc a                                            ; $67f4: $3c
	ld a, [hl+]                                      ; $67f5: $2a
	ldh a, [$f8]                                     ; $67f6: $f0 $f8
	ld a, [hl-]                                      ; $67f8: $3a
	ld a, [hl+]                                      ; $67f9: $2a
	ld [hl-], a                                      ; $67fa: $32
	ldh a, [$38]                                     ; $67fb: $f0 $38
	inc l                                            ; $67fd: $2c
	ld a, [hl+]                                      ; $67fe: $2a
	ldh a, [$36]                                     ; $67ff: $f0 $36
	inc l                                            ; $6801: $2c
	ld [hl+], a                                      ; $6802: $22
	add sp, $32                                      ; $6803: $e8 $32
	inc l                                            ; $6805: $2c
	ld a, [hl+]                                      ; $6806: $2a
	ldh [$34], a                                     ; $6807: $e0 $34
	dec l                                            ; $6809: $2d
	inc d                                            ; $680a: $14
	db $ed                                           ; $680b: $ed
	inc b                                            ; $680c: $04
	jr z, @+$0e                                      ; $680d: $28 $0c

	db $ed                                           ; $680f: $ed
	ld [bc], a                                       ; $6810: $02
	jr z, jr_00f_6817                                ; $6811: $28 $04

	db $ed                                           ; $6813: $ed
	nop                                              ; $6814: $00
	jr z, jr_00f_6817                                ; $6815: $28 $00

jr_00f_6817:
	db $fd                                           ; $6817: $fd

jr_00f_6818:
	inc a                                            ; $6818: $3c
	ld l, d                                          ; $6819: $6a
	ld [$3afd], sp                                   ; $681a: $08 $fd $3a

jr_00f_681d:
	ld l, d                                          ; $681d: $6a
	jr jr_00f_681d                                   ; $681e: $18 $fd

Call_00f_6820:
	inc a                                            ; $6820: $3c
	ld a, [hl+]                                      ; $6821: $2a
	db $10                                           ; $6822: $10
	db $fd                                           ; $6823: $fd
	ld a, [hl-]                                      ; $6824: $3a
	ld a, [hl+]                                      ; $6825: $2a
	ld sp, hl                                        ; $6826: $f9
	add sp, $28                                      ; $6827: $e8 $28
	ld l, $f1                                        ; $6829: $2e $f1
	add sp, $26                                      ; $682b: $e8 $26
	ld l, $e9                                        ; $682d: $2e $e9
	add sp, $00                                      ; $682f: $e8 $00
	jr z, jr_00f_6818                                ; $6831: $28 $e5

	ld hl, sp+$3c                                    ; $6833: $f8 $3c
	ld l, d                                          ; $6835: $6a
	db $ed                                           ; $6836: $ed
	ld hl, sp+$3a                                    ; $6837: $f8 $3a
	ld l, d                                          ; $6839: $6a
	db $fd                                           ; $683a: $fd
	ld hl, sp+$3c                                    ; $683b: $f8 $3c
	ld a, [hl+]                                      ; $683d: $2a
	push af                                          ; $683e: $f5
	ld hl, sp+$3a                                    ; $683f: $f8 $3a

jr_00f_6841:
	ld a, [hl+]                                      ; $6841: $2a
	ld [hl-], a                                      ; $6842: $32
	ldh a, [$38]                                     ; $6843: $f0 $38
	inc l                                            ; $6845: $2c
	ld a, [hl+]                                      ; $6846: $2a
	ldh a, [$36]                                     ; $6847: $f0 $36
	inc l                                            ; $6849: $2c
	ld [hl+], a                                      ; $684a: $22
	add sp, $32                                      ; $684b: $e8 $32
	inc l                                            ; $684d: $2c
	ld a, [hl+]                                      ; $684e: $2a
	ldh [$34], a                                     ; $684f: $e0 $34
	dec l                                            ; $6851: $2d
	jr jr_00f_6841                                   ; $6852: $18 $ed

	ld a, [bc]                                       ; $6854: $0a
	jr z, jr_00f_6867                                ; $6855: $28 $10

	db $ed                                           ; $6857: $ed
	ld [$0828], sp                                   ; $6858: $08 $28 $08
	db $ed                                           ; $685b: $ed
	ld b, $28                                        ; $685c: $06 $28
	inc b                                            ; $685e: $04
	db $fd                                           ; $685f: $fd
	inc a                                            ; $6860: $3c
	ld l, d                                          ; $6861: $6a
	inc c                                            ; $6862: $0c

jr_00f_6863:
	db $fd                                           ; $6863: $fd
	ld a, [hl-]                                      ; $6864: $3a
	ld l, d                                          ; $6865: $6a
	inc e                                            ; $6866: $1c

jr_00f_6867:
	db $fd                                           ; $6867: $fd
	inc a                                            ; $6868: $3c
	ld a, [hl+]                                      ; $6869: $2a
	inc d                                            ; $686a: $14
	db $fd                                           ; $686b: $fd
	ld a, [hl-]                                      ; $686c: $3a
	ld a, [hl+]                                      ; $686d: $2a
	db $fc                                           ; $686e: $fc
	add sp, $2c                                      ; $686f: $e8 $2c
	ld l, $f4                                        ; $6871: $2e $f4
	add sp, $2a                                      ; $6873: $e8 $2a
	ld l, $ec                                        ; $6875: $2e $ec
	add sp, $06                                      ; $6877: $e8 $06
	jr z, jr_00f_6863                                ; $6879: $28 $e8

	ld hl, sp+$3c                                    ; $687b: $f8 $3c
	ld l, d                                          ; $687d: $6a
	ldh a, [$f8]                                     ; $687e: $f0 $f8
	ld a, [hl-]                                      ; $6880: $3a
	ld l, d                                          ; $6881: $6a
	nop                                              ; $6882: $00
	ld hl, sp+$3c                                    ; $6883: $f8 $3c
	ld a, [hl+]                                      ; $6885: $2a
	ld hl, sp-$08                                    ; $6886: $f8 $f8
	ld a, [hl-]                                      ; $6888: $3a
	ld a, [hl+]                                      ; $6889: $2a
	ld [hl-], a                                      ; $688a: $32
	ldh a, [$38]                                     ; $688b: $f0 $38
	inc l                                            ; $688d: $2c
	ld a, [hl+]                                      ; $688e: $2a
	ldh a, [$36]                                     ; $688f: $f0 $36
	inc l                                            ; $6891: $2c
	ld [hl+], a                                      ; $6892: $22
	add sp, $32                                      ; $6893: $e8 $32
	inc l                                            ; $6895: $2c
	ld a, [hl+]                                      ; $6896: $2a
	ldh [$34], a                                     ; $6897: $e0 $34
	dec l                                            ; $6899: $2d
	dec de                                           ; $689a: $1b
	db $ed                                           ; $689b: $ed
	db $10                                           ; $689c: $10
	jr z, jr_00f_68b2                                ; $689d: $28 $13

	db $ed                                           ; $689f: $ed
	ld c, $28                                        ; $68a0: $0e $28
	dec bc                                           ; $68a2: $0b
	db $ed                                           ; $68a3: $ed
	inc c                                            ; $68a4: $0c
	jr z, @-$11                                      ; $68a5: $28 $ed

	ld hl, sp+$3c                                    ; $68a7: $f8 $3c
	ld l, d                                          ; $68a9: $6a
	push af                                          ; $68aa: $f5
	ld hl, sp+$3a                                    ; $68ab: $f8 $3a
	ld l, d                                          ; $68ad: $6a
	dec b                                            ; $68ae: $05
	ld hl, sp+$3c                                    ; $68af: $f8 $3c
	ld a, [hl+]                                      ; $68b1: $2a

jr_00f_68b2:
	db $fd                                           ; $68b2: $fd
	ld hl, sp+$3a                                    ; $68b3: $f8 $3a
	ld a, [hl+]                                      ; $68b5: $2a
	ld bc, $30e8                                     ; $68b6: $01 $e8 $30
	ld l, $f9                                        ; $68b9: $2e $f9
	add sp, $2e                                      ; $68bb: $e8 $2e
	ld l, $f1                                        ; $68bd: $2e $f1
	add sp, $0c                                      ; $68bf: $e8 $0c
	jr z, jr_00f_68ca                                ; $68c1: $28 $07

	db $fd                                           ; $68c3: $fd
	inc a                                            ; $68c4: $3c
	ld l, d                                          ; $68c5: $6a
	rrca                                             ; $68c6: $0f
	db $fd                                           ; $68c7: $fd
	ld a, [hl-]                                      ; $68c8: $3a
	ld l, d                                          ; $68c9: $6a

jr_00f_68ca:
	rra                                              ; $68ca: $1f
	db $fd                                           ; $68cb: $fd
	inc a                                            ; $68cc: $3c
	ld a, [hl+]                                      ; $68cd: $2a
	rla                                              ; $68ce: $17
	db $fd                                           ; $68cf: $fd
	ld a, [hl-]                                      ; $68d0: $3a
	ld a, [hl+]                                      ; $68d1: $2a
	ld [hl-], a                                      ; $68d2: $32
	ldh a, [$38]                                     ; $68d3: $f0 $38

jr_00f_68d5:
	inc l                                            ; $68d5: $2c
	ld a, [hl+]                                      ; $68d6: $2a
	ldh a, [$36]                                     ; $68d7: $f0 $36
	inc l                                            ; $68d9: $2c
	ld [hl+], a                                      ; $68da: $22
	add sp, $32                                      ; $68db: $e8 $32
	inc l                                            ; $68dd: $2c
	ld a, [hl+]                                      ; $68de: $2a
	ldh [$34], a                                     ; $68df: $e0 $34
	dec l                                            ; $68e1: $2d
	ld [hl+], a                                      ; $68e2: $22
	add sp, $32                                      ; $68e3: $e8 $32
	inc l                                            ; $68e5: $2c
	jr z, jr_00f_68d5                                ; $68e6: $28 $ed

	inc d                                            ; $68e8: $14
	jr z, jr_00f_690b                                ; $68e9: $28 $20

	db $ed                                           ; $68eb: $ed
	ld [de], a                                       ; $68ec: $12
	jr z, jr_00f_6907                                ; $68ed: $28 $18

	db $ed                                           ; $68ef: $ed
	ld [bc], a                                       ; $68f0: $02
	jr z, jr_00f_6903                                ; $68f1: $28 $10

	db $ed                                           ; $68f3: $ed
	nop                                              ; $68f4: $00
	jr z, @-$0e                                      ; $68f5: $28 $f0

	ld hl, sp+$3c                                    ; $68f7: $f8 $3c
	ld l, d                                          ; $68f9: $6a
	ld hl, sp-$08                                    ; $68fa: $f8 $f8
	ld a, [hl-]                                      ; $68fc: $3a
	ld l, d                                          ; $68fd: $6a
	ld [$3cf8], sp                                   ; $68fe: $08 $f8 $3c
	ld a, [hl+]                                      ; $6901: $2a
	nop                                              ; $6902: $00

jr_00f_6903:
	ld hl, sp+$3a                                    ; $6903: $f8 $3a
	ld a, [hl+]                                      ; $6905: $2a
	inc b                                            ; $6906: $04

jr_00f_6907:
	add sp, $28                                      ; $6907: $e8 $28
	ld l, $fc                                        ; $6909: $2e $fc

jr_00f_690b:
	add sp, $26                                      ; $690b: $e8 $26
	ld l, $f4                                        ; $690d: $2e $f4
	add sp, $00                                      ; $690f: $e8 $00
	jr z, jr_00f_691f                                ; $6911: $28 $0c

	db $fd                                           ; $6913: $fd
	inc a                                            ; $6914: $3c
	ld l, d                                          ; $6915: $6a
	inc d                                            ; $6916: $14
	db $fd                                           ; $6917: $fd
	ld a, [hl-]                                      ; $6918: $3a
	ld l, d                                          ; $6919: $6a
	inc h                                            ; $691a: $24
	db $fd                                           ; $691b: $fd
	inc a                                            ; $691c: $3c
	ld a, [hl+]                                      ; $691d: $2a
	inc e                                            ; $691e: $1c

jr_00f_691f:
	db $fd                                           ; $691f: $fd
	ld a, [hl-]                                      ; $6920: $3a
	ld a, [hl+]                                      ; $6921: $2a
	ld a, [hl+]                                      ; $6922: $2a
	ldh [$34], a                                     ; $6923: $e0 $34
	inc l                                            ; $6925: $2c
	ld a, [hl+]                                      ; $6926: $2a
	ldh a, [$36]                                     ; $6927: $f0 $36
	inc l                                            ; $6929: $2c
	ld [hl-], a                                      ; $692a: $32
	ldh a, [$38]                                     ; $692b: $f0 $38
	dec l                                            ; $692d: $2d
	ld e, $ec                                        ; $692e: $1e $ec

jr_00f_6930:
	ld a, [de]                                       ; $6930: $1a
	jr z, jr_00f_6949                                ; $6931: $28 $16

	db $ec                                           ; $6933: $ec
	jr @+$2a                                         ; $6934: $18 $28

	ld c, $ec                                        ; $6936: $0e $ec
	ld d, $28                                        ; $6938: $16 $28
	ld a, [bc]                                       ; $693a: $0a
	db $fc                                           ; $693b: $fc
	inc a                                            ; $693c: $3c
	ld l, d                                          ; $693d: $6a
	ld [de], a                                       ; $693e: $12
	db $fc                                           ; $693f: $fc
	ld a, [hl-]                                      ; $6940: $3a
	ld l, d                                          ; $6941: $6a
	ld [hl+], a                                      ; $6942: $22
	db $fc                                           ; $6943: $fc
	inc a                                            ; $6944: $3c
	ld a, [hl+]                                      ; $6945: $2a
	ld a, [de]                                       ; $6946: $1a
	db $fc                                           ; $6947: $fc
	ld a, [hl-]                                      ; $6948: $3a

jr_00f_6949:
	ld a, [hl+]                                      ; $6949: $2a
	ld [hl-], a                                      ; $694a: $32
	ldh a, [$38]                                     ; $694b: $f0 $38
	inc l                                            ; $694d: $2c
	ld a, [hl+]                                      ; $694e: $2a
	ldh a, [$36]                                     ; $694f: $f0 $36
	inc l                                            ; $6951: $2c
	ld [hl+], a                                      ; $6952: $22
	add sp, $32                                      ; $6953: $e8 $32
	inc l                                            ; $6955: $2c
	ld a, [hl+]                                      ; $6956: $2a
	ldh [$34], a                                     ; $6957: $e0 $34
	dec l                                            ; $6959: $2d
	reti                                             ; $695a: $d9


	db $ec                                           ; $695b: $ec
	ld a, [bc]                                       ; $695c: $0a
	jr z, jr_00f_6930                                ; $695d: $28 $d1

	db $ec                                           ; $695f: $ec
	ld [$c928], sp                                   ; $6960: $08 $28 $c9
	db $ec                                           ; $6963: $ec
	ld b, $28                                        ; $6964: $06 $28
	push bc                                          ; $6966: $c5

jr_00f_6967:
	db $fc                                           ; $6967: $fc
	inc a                                            ; $6968: $3c
	ld l, d                                          ; $6969: $6a
	call $3afc                                       ; $696a: $cd $fc $3a
	ld l, d                                          ; $696d: $6a
	db $dd                                           ; $696e: $dd
	db $fc                                           ; $696f: $fc
	inc a                                            ; $6970: $3c
	ld a, [hl+]                                      ; $6971: $2a
	push de                                          ; $6972: $d5
	db $fc                                           ; $6973: $fc
	ld a, [hl-]                                      ; $6974: $3a
	ld a, [hl+]                                      ; $6975: $2a
	ld hl, sp-$18                                    ; $6976: $f8 $e8

jr_00f_6978:
	inc l                                            ; $6978: $2c
	ld l, $f0                                        ; $6979: $2e $f0
	add sp, $2a                                      ; $697b: $e8 $2a
	ld l, $e8                                        ; $697d: $2e $e8
	add sp, $06                                      ; $697f: $e8 $06
	jr z, jr_00f_6967                                ; $6981: $28 $e4

	ld hl, sp+$3c                                    ; $6983: $f8 $3c
	ld l, d                                          ; $6985: $6a
	db $ec                                           ; $6986: $ec
	ld hl, sp+$3a                                    ; $6987: $f8 $3a
	ld a, [hl+]                                      ; $6989: $2a
	db $fc                                           ; $698a: $fc
	ld hl, sp+$3c                                    ; $698b: $f8 $3c
	ld a, [hl+]                                      ; $698d: $2a
	db $f4                                           ; $698e: $f4
	ld hl, sp+$3a                                    ; $698f: $f8 $3a
	ld a, [hl+]                                      ; $6991: $2a
	ld [hl-], a                                      ; $6992: $32
	ldh a, [$38]                                     ; $6993: $f0 $38
	inc l                                            ; $6995: $2c
	ld a, [hl+]                                      ; $6996: $2a
	ldh a, [$36]                                     ; $6997: $f0 $36
	inc l                                            ; $6999: $2c
	ld [hl+], a                                      ; $699a: $22
	add sp, $32                                      ; $699b: $e8 $32
	inc l                                            ; $699d: $2c
	ld a, [hl+]                                      ; $699e: $2a
	ldh [$34], a                                     ; $699f: $e0 $34
	dec l                                            ; $69a1: $2d
	db $dd                                           ; $69a2: $dd
	db $ec                                           ; $69a3: $ec
	db $10                                           ; $69a4: $10
	jr z, @-$29                                      ; $69a5: $28 $d5

	db $ec                                           ; $69a7: $ec
	ld c, $28                                        ; $69a8: $0e $28
	call $0cec                                       ; $69aa: $cd $ec $0c
	jr z, jr_00f_6978                                ; $69ad: $28 $c9

	db $fc                                           ; $69af: $fc
	inc a                                            ; $69b0: $3c
	ld l, d                                          ; $69b1: $6a
	pop de                                           ; $69b2: $d1

jr_00f_69b3:
	db $fc                                           ; $69b3: $fc
	ld a, [hl-]                                      ; $69b4: $3a
	ld l, d                                          ; $69b5: $6a
	pop hl                                           ; $69b6: $e1
	db $fc                                           ; $69b7: $fc
	inc a                                            ; $69b8: $3c
	ld a, [hl+]                                      ; $69b9: $2a
	reti                                             ; $69ba: $d9


	db $fc                                           ; $69bb: $fc
	ld a, [hl-]                                      ; $69bc: $3a
	ld a, [hl+]                                      ; $69bd: $2a
	db $fc                                           ; $69be: $fc
	add sp, $30                                      ; $69bf: $e8 $30
	ld l, $f4                                        ; $69c1: $2e $f4
	add sp, $2e                                      ; $69c3: $e8 $2e
	ld l, $ec                                        ; $69c5: $2e $ec

jr_00f_69c7:
	add sp, $0c                                      ; $69c7: $e8 $0c
	jr z, jr_00f_69b3                                ; $69c9: $28 $e8

jr_00f_69cb:
	ld hl, sp+$3c                                    ; $69cb: $f8 $3c
	ld l, d                                          ; $69cd: $6a
	ldh a, [$f8]                                     ; $69ce: $f0 $f8
	ld a, [hl-]                                      ; $69d0: $3a
	ld l, d                                          ; $69d1: $6a
	nop                                              ; $69d2: $00
	ld hl, sp+$3c                                    ; $69d3: $f8 $3c
	ld a, [hl+]                                      ; $69d5: $2a
	ld hl, sp-$08                                    ; $69d6: $f8 $f8
	ld a, [hl-]                                      ; $69d8: $3a
	ld a, [hl+]                                      ; $69d9: $2a
	ld [hl-], a                                      ; $69da: $32
	ldh a, [$38]                                     ; $69db: $f0 $38
	inc l                                            ; $69dd: $2c
	ld a, [hl+]                                      ; $69de: $2a
	ldh a, [$36]                                     ; $69df: $f0 $36
	inc l                                            ; $69e1: $2c
	ld [hl+], a                                      ; $69e2: $22
	add sp, $32                                      ; $69e3: $e8 $32
	inc l                                            ; $69e5: $2c
	ld a, [hl+]                                      ; $69e6: $2a
	ldh [$34], a                                     ; $69e7: $e0 $34
	dec l                                            ; $69e9: $2d
	db $e4                                           ; $69ea: $e4
	db $ec                                           ; $69eb: $ec
	inc b                                            ; $69ec: $04
	jr z, jr_00f_69cb                                ; $69ed: $28 $dc

	db $ec                                           ; $69ef: $ec
	ld [bc], a                                       ; $69f0: $02
	jr z, jr_00f_69c7                                ; $69f1: $28 $d4

	db $ec                                           ; $69f3: $ec
	nop                                              ; $69f4: $00
	jr z, jr_00f_69c7                                ; $69f5: $28 $d0

	db $fc                                           ; $69f7: $fc
	inc a                                            ; $69f8: $3c
	ld l, d                                          ; $69f9: $6a
	ret c                                            ; $69fa: $d8

	db $fc                                           ; $69fb: $fc
	ld a, [hl-]                                      ; $69fc: $3a
	ld l, d                                          ; $69fd: $6a
	add sp, -$04                                     ; $69fe: $e8 $fc
	inc a                                            ; $6a00: $3c
	ld a, [hl+]                                      ; $6a01: $2a
	ldh [$fc], a                                     ; $6a02: $e0 $fc
	ld a, [hl-]                                      ; $6a04: $3a
	ld a, [hl+]                                      ; $6a05: $2a
	nop                                              ; $6a06: $00
	add sp, $28                                      ; $6a07: $e8 $28
	ld l, $f8                                        ; $6a09: $2e $f8
	add sp, $26                                      ; $6a0b: $e8 $26
	ld l, $f0                                        ; $6a0d: $2e $f0
	add sp, $00                                      ; $6a0f: $e8 $00
	jr z, @-$12                                      ; $6a11: $28 $ec

	ld hl, sp+$3c                                    ; $6a13: $f8 $3c
	ld l, d                                          ; $6a15: $6a
	db $f4                                           ; $6a16: $f4

jr_00f_6a17:
	ld hl, sp+$3a                                    ; $6a17: $f8 $3a
	ld l, d                                          ; $6a19: $6a
	inc b                                            ; $6a1a: $04
	ld hl, sp+$3c                                    ; $6a1b: $f8 $3c
	ld a, [hl+]                                      ; $6a1d: $2a
	db $fc                                           ; $6a1e: $fc
	ld hl, sp+$3a                                    ; $6a1f: $f8 $3a
	ld a, [hl+]                                      ; $6a21: $2a
	ld [hl-], a                                      ; $6a22: $32
	ldh a, [$38]                                     ; $6a23: $f0 $38
	inc l                                            ; $6a25: $2c
	ld a, [hl+]                                      ; $6a26: $2a
	ldh a, [$36]                                     ; $6a27: $f0 $36
	inc l                                            ; $6a29: $2c
	ld [hl+], a                                      ; $6a2a: $22
	add sp, $32                                      ; $6a2b: $e8 $32
	inc l                                            ; $6a2d: $2c
	ld a, [hl+]                                      ; $6a2e: $2a
	ldh [$34], a                                     ; $6a2f: $e0 $34
	dec l                                            ; $6a31: $2d
	add sp, -$14                                     ; $6a32: $e8 $ec
	ld a, [bc]                                       ; $6a34: $0a
	jr z, jr_00f_6a17                                ; $6a35: $28 $e0

	db $ec                                           ; $6a37: $ec
	ld [$d828], sp                                   ; $6a38: $08 $28 $d8
	db $ec                                           ; $6a3b: $ec
	ld b, $28                                        ; $6a3c: $06 $28
	call nc, $3cfc                                   ; $6a3e: $d4 $fc $3c
	ld l, d                                          ; $6a41: $6a
	call c, $3afc                                    ; $6a42: $dc $fc $3a
	ld l, d                                          ; $6a45: $6a
	db $ec                                           ; $6a46: $ec
	db $fc                                           ; $6a47: $fc
	inc a                                            ; $6a48: $3c
	ld a, [hl+]                                      ; $6a49: $2a
	db $e4                                           ; $6a4a: $e4

jr_00f_6a4b:
	db $fc                                           ; $6a4b: $fc
	ld a, [hl-]                                      ; $6a4c: $3a
	ld a, [hl+]                                      ; $6a4d: $2a
	inc b                                            ; $6a4e: $04
	add sp, $2c                                      ; $6a4f: $e8 $2c
	ld l, $fc                                        ; $6a51: $2e $fc
	add sp, $2a                                      ; $6a53: $e8 $2a
	ld l, $f4                                        ; $6a55: $2e $f4
	add sp, $06                                      ; $6a57: $e8 $06
	jr z, jr_00f_6a4b                                ; $6a59: $28 $f0

	ld hl, sp+$3c                                    ; $6a5b: $f8 $3c
	ld l, d                                          ; $6a5d: $6a
	ld hl, sp-$08                                    ; $6a5e: $f8 $f8
	ld a, [hl-]                                      ; $6a60: $3a
	ld l, d                                          ; $6a61: $6a
	ld [$3cf8], sp                                   ; $6a62: $08 $f8 $3c

jr_00f_6a65:
	ld a, [hl+]                                      ; $6a65: $2a
	nop                                              ; $6a66: $00
	ld hl, sp+$3a                                    ; $6a67: $f8 $3a

jr_00f_6a69:
	ld a, [hl+]                                      ; $6a69: $2a
	ld [hl-], a                                      ; $6a6a: $32
	ldh a, [$38]                                     ; $6a6b: $f0 $38
	inc l                                            ; $6a6d: $2c
	ld a, [hl+]                                      ; $6a6e: $2a
	ldh a, [$36]                                     ; $6a6f: $f0 $36
	inc l                                            ; $6a71: $2c
	ld [hl+], a                                      ; $6a72: $22
	add sp, $32                                      ; $6a73: $e8 $32
	inc l                                            ; $6a75: $2c
	ld a, [hl+]                                      ; $6a76: $2a
	ldh [$34], a                                     ; $6a77: $e0 $34
	dec l                                            ; $6a79: $2d
	ldh a, [c]                                       ; $6a7a: $f2
	db $ec                                           ; $6a7b: $ec
	db $10                                           ; $6a7c: $10
	jr z, jr_00f_6a69                                ; $6a7d: $28 $ea

	db $ec                                           ; $6a7f: $ec
	ld c, $28                                        ; $6a80: $0e $28
	ldh [c], a                                       ; $6a82: $e2
	db $ec                                           ; $6a83: $ec
	inc c                                            ; $6a84: $0c
	jr z, jr_00f_6a65                                ; $6a85: $28 $de

	db $fc                                           ; $6a87: $fc
	inc a                                            ; $6a88: $3c
	ld l, d                                          ; $6a89: $6a
	and $fc                                          ; $6a8a: $e6 $fc
	ld a, [hl-]                                      ; $6a8c: $3a
	ld l, d                                          ; $6a8d: $6a
	or $fc                                           ; $6a8e: $f6 $fc
	inc a                                            ; $6a90: $3c
	ld a, [hl+]                                      ; $6a91: $2a
	xor $fc                                          ; $6a92: $ee $fc
	ld a, [hl-]                                      ; $6a94: $3a
	ld a, [hl+]                                      ; $6a95: $2a
	inc c                                            ; $6a96: $0c
	add sp, $30                                      ; $6a97: $e8 $30
	ld l, $04                                        ; $6a99: $2e $04

jr_00f_6a9b:
	add sp, $2e                                      ; $6a9b: $e8 $2e
	ld l, $fc                                        ; $6a9d: $2e $fc
	add sp, $0c                                      ; $6a9f: $e8 $0c
	jr z, jr_00f_6a9b                                ; $6aa1: $28 $f8

	ld hl, sp+$3c                                    ; $6aa3: $f8 $3c
	ld l, d                                          ; $6aa5: $6a
	nop                                              ; $6aa6: $00
	ld hl, sp+$3a                                    ; $6aa7: $f8 $3a
	ld l, d                                          ; $6aa9: $6a
	db $10                                           ; $6aaa: $10
	ld hl, sp+$3c                                    ; $6aab: $f8 $3c
	ld a, [hl+]                                      ; $6aad: $2a
	ld [$3af8], sp                                   ; $6aae: $08 $f8 $3a
	ld a, [hl+]                                      ; $6ab1: $2a
	ld [hl-], a                                      ; $6ab2: $32

jr_00f_6ab3:
	ldh a, [$38]                                     ; $6ab3: $f0 $38
	inc l                                            ; $6ab5: $2c
	ld a, [hl+]                                      ; $6ab6: $2a
	ldh a, [$36]                                     ; $6ab7: $f0 $36
	inc l                                            ; $6ab9: $2c
	ld [hl+], a                                      ; $6aba: $22
	add sp, $32                                      ; $6abb: $e8 $32
	inc l                                            ; $6abd: $2c
	ld a, [hl+]                                      ; $6abe: $2a
	ldh [$34], a                                     ; $6abf: $e0 $34
	dec l                                            ; $6ac1: $2d
	db $f4                                           ; $6ac2: $f4
	db $ec                                           ; $6ac3: $ec
	inc b                                            ; $6ac4: $04
	jr z, jr_00f_6ab3                                ; $6ac5: $28 $ec

	db $ec                                           ; $6ac7: $ec
	ld [bc], a                                       ; $6ac8: $02
	jr z, @-$1a                                      ; $6ac9: $28 $e4

	db $ec                                           ; $6acb: $ec
	nop                                              ; $6acc: $00
	jr z, @-$1e                                      ; $6acd: $28 $e0

	db $fc                                           ; $6acf: $fc
	inc a                                            ; $6ad0: $3c
	ld l, d                                          ; $6ad1: $6a
	add sp, -$04                                     ; $6ad2: $e8 $fc
	ld a, [hl-]                                      ; $6ad4: $3a
	ld l, d                                          ; $6ad5: $6a
	ld hl, sp-$04                                    ; $6ad6: $f8 $fc
	inc a                                            ; $6ad8: $3c
	ld a, [hl+]                                      ; $6ad9: $2a
	ldh a, [$fc]                                     ; $6ada: $f0 $fc
	ld a, [hl-]                                      ; $6adc: $3a
	ld a, [hl+]                                      ; $6add: $2a
	db $10                                           ; $6ade: $10
	add sp, $28                                      ; $6adf: $e8 $28
	ld l, $08                                        ; $6ae1: $2e $08
	add sp, $26                                      ; $6ae3: $e8 $26
	ld l, $00                                        ; $6ae5: $2e $00

jr_00f_6ae7:
	add sp, $00                                      ; $6ae7: $e8 $00
	jr z, jr_00f_6ae7                                ; $6ae9: $28 $fc

	ld hl, sp+$3c                                    ; $6aeb: $f8 $3c
	ld l, d                                          ; $6aed: $6a
	inc b                                            ; $6aee: $04
	ld hl, sp+$3a                                    ; $6aef: $f8 $3a
	ld l, d                                          ; $6af1: $6a
	inc d                                            ; $6af2: $14
	ld hl, sp+$3c                                    ; $6af3: $f8 $3c
	ld a, [hl+]                                      ; $6af5: $2a
	inc c                                            ; $6af6: $0c
	ld hl, sp+$3a                                    ; $6af7: $f8 $3a
	ld a, [hl+]                                      ; $6af9: $2a
	ld [hl-], a                                      ; $6afa: $32
	ldh a, [$38]                                     ; $6afb: $f0 $38
	inc l                                            ; $6afd: $2c
	ld a, [hl+]                                      ; $6afe: $2a
	ldh a, [$36]                                     ; $6aff: $f0 $36
	inc l                                            ; $6b01: $2c

jr_00f_6b02:
	ld [hl+], a                                      ; $6b02: $22
	add sp, $32                                      ; $6b03: $e8 $32
	inc l                                            ; $6b05: $2c
	ld a, [hl+]                                      ; $6b06: $2a
	ldh [$34], a                                     ; $6b07: $e0 $34
	dec l                                            ; $6b09: $2d
	ei                                               ; $6b0a: $fb
	db $ec                                           ; $6b0b: $ec
	ld a, [bc]                                       ; $6b0c: $0a
	jr z, jr_00f_6b02                                ; $6b0d: $28 $f3

	db $ec                                           ; $6b0f: $ec
	ld [$eb28], sp                                   ; $6b10: $08 $28 $eb
	db $ec                                           ; $6b13: $ec
	ld b, $28                                        ; $6b14: $06 $28
	rst SubAFromBC                                          ; $6b16: $e7
	db $fc                                           ; $6b17: $fc
	inc a                                            ; $6b18: $3c
	ld l, d                                          ; $6b19: $6a
	rst AddAOntoHL                                          ; $6b1a: $ef
	db $fc                                           ; $6b1b: $fc
	ld a, [hl-]                                      ; $6b1c: $3a
	ld l, d                                          ; $6b1d: $6a
	rst $38                                          ; $6b1e: $ff
	db $fc                                           ; $6b1f: $fc
	inc a                                            ; $6b20: $3c
	ld a, [hl+]                                      ; $6b21: $2a
	rst FarCall                                          ; $6b22: $f7
	db $fc                                           ; $6b23: $fc
	ld a, [hl-]                                      ; $6b24: $3a
	ld a, [hl+]                                      ; $6b25: $2a
	inc d                                            ; $6b26: $14
	add sp, $2c                                      ; $6b27: $e8 $2c
	ld l, $0c                                        ; $6b29: $2e $0c
	add sp, $2a                                      ; $6b2b: $e8 $2a
	ld l, $04                                        ; $6b2d: $2e $04
	add sp, $06                                      ; $6b2f: $e8 $06
	jr z, jr_00f_6b33                                ; $6b31: $28 $00

jr_00f_6b33:
	ld hl, sp+$3c                                    ; $6b33: $f8 $3c
	ld l, d                                          ; $6b35: $6a
	ld [$3af8], sp                                   ; $6b36: $08 $f8 $3a
	ld l, d                                          ; $6b39: $6a
	jr @-$06                                         ; $6b3a: $18 $f8

	inc a                                            ; $6b3c: $3c
	ld a, [hl+]                                      ; $6b3d: $2a
	db $10                                           ; $6b3e: $10
	ld hl, sp+$3a                                    ; $6b3f: $f8 $3a
	ld a, [hl+]                                      ; $6b41: $2a
	ld [hl-], a                                      ; $6b42: $32
	ldh a, [$38]                                     ; $6b43: $f0 $38
	inc l                                            ; $6b45: $2c
	ld a, [hl+]                                      ; $6b46: $2a
	ldh a, [$36]                                     ; $6b47: $f0 $36
	inc l                                            ; $6b49: $2c

jr_00f_6b4a:
	ld [hl+], a                                      ; $6b4a: $22
	add sp, $32                                      ; $6b4b: $e8 $32
	inc l                                            ; $6b4d: $2c

jr_00f_6b4e:
	ld a, [hl+]                                      ; $6b4e: $2a
	ldh [$34], a                                     ; $6b4f: $e0 $34
	dec l                                            ; $6b51: $2d
	rst $38                                          ; $6b52: $ff
	db $ec                                           ; $6b53: $ec
	db $10                                           ; $6b54: $10
	jr z, jr_00f_6b4e                                ; $6b55: $28 $f7

	db $ec                                           ; $6b57: $ec

jr_00f_6b58:
	ld c, $28                                        ; $6b58: $0e $28
	rst AddAOntoHL                                          ; $6b5a: $ef
	db $ec                                           ; $6b5b: $ec
	inc c                                            ; $6b5c: $0c
	jr z, jr_00f_6b4a                                ; $6b5d: $28 $eb

	db $fc                                           ; $6b5f: $fc
	inc a                                            ; $6b60: $3c
	ld l, d                                          ; $6b61: $6a
	di                                               ; $6b62: $f3
	db $fc                                           ; $6b63: $fc
	ld a, [hl-]                                      ; $6b64: $3a
	ld l, d                                          ; $6b65: $6a
	inc bc                                           ; $6b66: $03
	db $fc                                           ; $6b67: $fc
	inc a                                            ; $6b68: $3c
	ld a, [hl+]                                      ; $6b69: $2a
	ei                                               ; $6b6a: $fb
	db $fc                                           ; $6b6b: $fc
	ld a, [hl-]                                      ; $6b6c: $3a
	ld a, [hl+]                                      ; $6b6d: $2a
	jr jr_00f_6b58                                   ; $6b6e: $18 $e8

	jr nc, @+$30                                     ; $6b70: $30 $2e

	db $10                                           ; $6b72: $10
	add sp, $2e                                      ; $6b73: $e8 $2e
	ld l, $08                                        ; $6b75: $2e $08
	add sp, $0c                                      ; $6b77: $e8 $0c
	jr z, jr_00f_6b7f                                ; $6b79: $28 $04

	ld hl, sp+$3c                                    ; $6b7b: $f8 $3c
	ld l, d                                          ; $6b7d: $6a
	inc c                                            ; $6b7e: $0c

jr_00f_6b7f:
	ld hl, sp+$3a                                    ; $6b7f: $f8 $3a
	ld l, d                                          ; $6b81: $6a
	inc e                                            ; $6b82: $1c
	ld hl, sp+$3c                                    ; $6b83: $f8 $3c
	ld a, [hl+]                                      ; $6b85: $2a
	inc d                                            ; $6b86: $14
	ld hl, sp+$3a                                    ; $6b87: $f8 $3a
	ld a, [hl+]                                      ; $6b89: $2a
	ld [hl-], a                                      ; $6b8a: $32
	ldh a, [$38]                                     ; $6b8b: $f0 $38
	inc l                                            ; $6b8d: $2c
	ld a, [hl+]                                      ; $6b8e: $2a
	ldh a, [$36]                                     ; $6b8f: $f0 $36
	inc l                                            ; $6b91: $2c
	ld [hl+], a                                      ; $6b92: $22
	add sp, $32                                      ; $6b93: $e8 $32
	inc l                                            ; $6b95: $2c
	ld a, [hl+]                                      ; $6b96: $2a
	ldh [$34], a                                     ; $6b97: $e0 $34
	dec l                                            ; $6b99: $2d
	ld a, [de]                                       ; $6b9a: $1a
	add sp, $3e                                      ; $6b9b: $e8 $3e
	ld l, $22                                        ; $6b9d: $2e $22

jr_00f_6b9f:
	add sp, $14                                      ; $6b9f: $e8 $14
	jr z, jr_00f_6ba7                                ; $6ba1: $28 $04

jr_00f_6ba3:
	db $ec                                           ; $6ba3: $ec
	inc b                                            ; $6ba4: $04
	jr z, jr_00f_6ba3                                ; $6ba5: $28 $fc

jr_00f_6ba7:
	db $ec                                           ; $6ba7: $ec
	ld [bc], a                                       ; $6ba8: $02
	jr z, jr_00f_6b9f                                ; $6ba9: $28 $f4

	db $ec                                           ; $6bab: $ec
	nop                                              ; $6bac: $00
	jr z, jr_00f_6b9f                                ; $6bad: $28 $f0

	db $fc                                           ; $6baf: $fc
	inc a                                            ; $6bb0: $3c
	ld l, d                                          ; $6bb1: $6a
	ld hl, sp-$04                                    ; $6bb2: $f8 $fc
	ld a, [hl-]                                      ; $6bb4: $3a
	ld l, d                                          ; $6bb5: $6a
	ld [$3cfc], sp                                   ; $6bb6: $08 $fc $3c
	ld a, [hl+]                                      ; $6bb9: $2a
	nop                                              ; $6bba: $00
	db $fc                                           ; $6bbb: $fc
	ld a, [hl-]                                      ; $6bbc: $3a
	ld a, [hl+]                                      ; $6bbd: $2a
	ld [de], a                                       ; $6bbe: $12
	add sp, $26                                      ; $6bbf: $e8 $26
	ld l, $0a                                        ; $6bc1: $2e $0a
	add sp, $00                                      ; $6bc3: $e8 $00
	jr z, jr_00f_6bcd                                ; $6bc5: $28 $06

	ld hl, sp+$3c                                    ; $6bc7: $f8 $3c
	ld l, d                                          ; $6bc9: $6a
	ld c, $f8                                        ; $6bca: $0e $f8
	ld a, [hl-]                                      ; $6bcc: $3a

jr_00f_6bcd:
	ld l, d                                          ; $6bcd: $6a
	ld e, $f8                                        ; $6bce: $1e $f8
	inc a                                            ; $6bd0: $3c
	ld a, [hl+]                                      ; $6bd1: $2a
	ld d, $f8                                        ; $6bd2: $16 $f8
	ld a, [hl-]                                      ; $6bd4: $3a
	ld a, [hl+]                                      ; $6bd5: $2a
	ld [hl-], a                                      ; $6bd6: $32
	ldh a, [$38]                                     ; $6bd7: $f0 $38
	inc l                                            ; $6bd9: $2c
	ld a, [hl+]                                      ; $6bda: $2a
	ldh a, [$36]                                     ; $6bdb: $f0 $36
	inc l                                            ; $6bdd: $2c
	ld [hl+], a                                      ; $6bde: $22
	add sp, $32                                      ; $6bdf: $e8 $32
	inc l                                            ; $6be1: $2c
	ld a, [hl+]                                      ; $6be2: $2a
	ldh [$34], a                                     ; $6be3: $e0 $34
	dec l                                            ; $6be5: $2d
	nop                                              ; $6be6: $00
	db $fc                                           ; $6be7: $fc
	inc a                                            ; $6be8: $3c
	ld l, d                                          ; $6be9: $6a
	ld [$3afc], sp                                   ; $6bea: $08 $fc $3a
	ld l, d                                          ; $6bed: $6a
	jr @-$02                                         ; $6bee: $18 $fc

	inc a                                            ; $6bf0: $3c
	ld a, [hl+]                                      ; $6bf1: $2a
	db $10                                           ; $6bf2: $10
	db $fc                                           ; $6bf3: $fc
	ld a, [hl-]                                      ; $6bf4: $3a
	ld a, [hl+]                                      ; $6bf5: $2a
	ld [hl-], a                                      ; $6bf6: $32
	ldh a, [$38]                                     ; $6bf7: $f0 $38
	inc l                                            ; $6bf9: $2c
	ld a, [hl+]                                      ; $6bfa: $2a
	ldh a, [$36]                                     ; $6bfb: $f0 $36
	inc l                                            ; $6bfd: $2c
	ld [hl+], a                                      ; $6bfe: $22
	add sp, $32                                      ; $6bff: $e8 $32
	inc l                                            ; $6c01: $2c
	ld a, [hl+]                                      ; $6c02: $2a
	ldh [$34], a                                     ; $6c03: $e0 $34
	inc l                                            ; $6c05: $2c
	db $10                                           ; $6c06: $10
	call c, Call_00f_6820                            ; $6c07: $dc $20 $68
	ld [$20dc], sp                                   ; $6c0a: $08 $dc $20
	jr z, jr_00f_6c1f                                ; $6c0d: $28 $10

	db $ec                                           ; $6c0f: $ec
	ld e, $28                                        ; $6c10: $1e $28
	ld [$1cec], sp                                   ; $6c12: $08 $ec $1c
	jr z, jr_00f_6c2d                                ; $6c15: $28 $16

	db $ed                                           ; $6c17: $ed
	inc h                                            ; $6c18: $24
	ld l, h                                          ; $6c19: $6c
	inc b                                            ; $6c1a: $04
	add sp, $24                                      ; $6c1b: $e8 $24
	dec l                                            ; $6c1d: $2d
	nop                                              ; $6c1e: $00

jr_00f_6c1f:
	db $fc                                           ; $6c1f: $fc
	inc a                                            ; $6c20: $3c
	ld l, d                                          ; $6c21: $6a
	ld [$3afc], sp                                   ; $6c22: $08 $fc $3a
	ld l, d                                          ; $6c25: $6a
	db $10                                           ; $6c26: $10
	db $fc                                           ; $6c27: $fc

jr_00f_6c28:
	ld a, [hl-]                                      ; $6c28: $3a
	ld a, [hl+]                                      ; $6c29: $2a
	jr jr_00f_6c28                                   ; $6c2a: $18 $fc

	inc a                                            ; $6c2c: $3c

jr_00f_6c2d:
	ld a, [hl+]                                      ; $6c2d: $2a
	ld [hl-], a                                      ; $6c2e: $32
	ldh a, [$38]                                     ; $6c2f: $f0 $38
	inc l                                            ; $6c31: $2c
	ld a, [hl+]                                      ; $6c32: $2a
	ldh a, [$36]                                     ; $6c33: $f0 $36
	inc l                                            ; $6c35: $2c
	ld [hl+], a                                      ; $6c36: $22
	add sp, $32                                      ; $6c37: $e8 $32
	inc l                                            ; $6c39: $2c
	ld a, [hl+]                                      ; $6c3a: $2a
	ldh [$34], a                                     ; $6c3b: $e0 $34
	inc l                                            ; $6c3d: $2c
	ld [bc], a                                       ; $6c3e: $02
	db $ed                                           ; $6c3f: $ed
	inc h                                            ; $6c40: $24
	inc l                                            ; $6c41: $2c
	db $10                                           ; $6c42: $10
	db $ec                                           ; $6c43: $ec
	ld e, $28                                        ; $6c44: $1e $28
	ld [$1cec], sp                                   ; $6c46: $08 $ec $1c
	jr z, @+$12                                      ; $6c49: $28 $10

	call c, Call_00f_6820                            ; $6c4b: $dc $20 $68
	ld [$20dc], sp                                   ; $6c4e: $08 $dc $20
	jr z, jr_00f_6c68                                ; $6c51: $28 $15

	add sp, $24                                      ; $6c53: $e8 $24
	ld l, l                                          ; $6c55: $6d
	xor h                                            ; $6c56: $ac
	ld l, [hl]                                       ; $6c57: $6e
	cp b                                             ; $6c58: $b8
	ld l, [hl]                                       ; $6c59: $6e
	call nz, $d06e                                   ; $6c5a: $c4 $6e $d0
	ld l, [hl]                                       ; $6c5d: $6e
	call c, $e56e                                    ; $6c5e: $dc $6e $e5
	ld l, [hl]                                       ; $6c61: $6e
	xor $6e                                          ; $6c62: $ee $6e
	ld a, [$036e]                                    ; $6c64: $fa $6e $03
	ld l, a                                          ; $6c67: $6f

jr_00f_6c68:
	inc c                                            ; $6c68: $0c
	ld l, a                                          ; $6c69: $6f
	dec de                                           ; $6c6a: $1b
	ld l, a                                          ; $6c6b: $6f
	daa                                              ; $6c6c: $27
	ld l, a                                          ; $6c6d: $6f
	inc sp                                           ; $6c6e: $33
	ld l, a                                          ; $6c6f: $6f
	ld b, d                                          ; $6c70: $42
	ld l, a                                          ; $6c71: $6f
	ld c, e                                          ; $6c72: $4b
	ld l, a                                          ; $6c73: $6f
	ld d, h                                          ; $6c74: $54
	ld l, a                                          ; $6c75: $6f
	ld h, e                                          ; $6c76: $63
	ld l, a                                          ; $6c77: $6f
	ld l, h                                          ; $6c78: $6c
	ld l, a                                          ; $6c79: $6f
	ld [hl], l                                       ; $6c7a: $75
	ld l, a                                          ; $6c7b: $6f
	add h                                            ; $6c7c: $84
	ld l, a                                          ; $6c7d: $6f
	adc l                                            ; $6c7e: $8d
	ld l, a                                          ; $6c7f: $6f
	sub [hl]                                         ; $6c80: $96
	ld l, a                                          ; $6c81: $6f
	and l                                            ; $6c82: $a5
	ld l, a                                          ; $6c83: $6f
	xor e                                            ; $6c84: $ab
	ld l, a                                          ; $6c85: $6f
	or c                                             ; $6c86: $b1
	ld l, a                                          ; $6c87: $6f
	ret nz                                           ; $6c88: $c0

	ld l, a                                          ; $6c89: $6f
	add $6f                                          ; $6c8a: $c6 $6f
	call z, $db6f                                    ; $6c8c: $cc $6f $db
	ld l, a                                          ; $6c8f: $6f
	rst SubAFromBC                                          ; $6c90: $e7
	ld l, a                                          ; $6c91: $6f
	di                                               ; $6c92: $f3
	ld l, a                                          ; $6c93: $6f
	ld [bc], a                                       ; $6c94: $02
	ld [hl], b                                       ; $6c95: $70
	dec bc                                           ; $6c96: $0b
	ld [hl], b                                       ; $6c97: $70
	inc d                                            ; $6c98: $14
	ld [hl], b                                       ; $6c99: $70
	inc hl                                           ; $6c9a: $23
	ld [hl], b                                       ; $6c9b: $70
	inc l                                            ; $6c9c: $2c
	ld [hl], b                                       ; $6c9d: $70
	dec [hl]                                         ; $6c9e: $35
	ld [hl], b                                       ; $6c9f: $70
	ld a, $70                                        ; $6ca0: $3e $70
	ld c, d                                          ; $6ca2: $4a
	ld [hl], b                                       ; $6ca3: $70
	ld d, [hl]                                       ; $6ca4: $56
	ld [hl], b                                       ; $6ca5: $70
	ld e, a                                          ; $6ca6: $5f
	ld [hl], b                                       ; $6ca7: $70
	ld l, b                                          ; $6ca8: $68
	ld [hl], b                                       ; $6ca9: $70
	ld [hl], c                                       ; $6caa: $71
	ld [hl], b                                       ; $6cab: $70
	ld a, d                                          ; $6cac: $7a
	ld [hl], b                                       ; $6cad: $70
	add e                                            ; $6cae: $83
	ld [hl], b                                       ; $6caf: $70
	adc h                                            ; $6cb0: $8c
	ld [hl], b                                       ; $6cb1: $70
	sub l                                            ; $6cb2: $95
	ld [hl], b                                       ; $6cb3: $70
	sbc [hl]                                         ; $6cb4: $9e
	ld [hl], b                                       ; $6cb5: $70
	and a                                            ; $6cb6: $a7
	ld [hl], b                                       ; $6cb7: $70
	cp c                                             ; $6cb8: $b9
	ld [hl], b                                       ; $6cb9: $70
	jp nz, $cb70                                     ; $6cba: $c2 $70 $cb

	ld [hl], b                                       ; $6cbd: $70
	db $dd                                           ; $6cbe: $dd
	ld [hl], b                                       ; $6cbf: $70
	db $e3                                           ; $6cc0: $e3
	ld [hl], b                                       ; $6cc1: $70
	jp hl                                            ; $6cc2: $e9


	ld [hl], b                                       ; $6cc3: $70
	ei                                               ; $6cc4: $fb
	ld [hl], b                                       ; $6cc5: $70
	ld bc, $0771                                     ; $6cc6: $01 $71 $07
	ld [hl], c                                       ; $6cc9: $71
	add hl, de                                       ; $6cca: $19
	ld [hl], c                                       ; $6ccb: $71
	rra                                              ; $6ccc: $1f
	ld [hl], c                                       ; $6ccd: $71
	dec h                                            ; $6cce: $25
	ld [hl], c                                       ; $6ccf: $71
	ld l, $71                                        ; $6cd0: $2e $71
	scf                                              ; $6cd2: $37
	ld [hl], c                                       ; $6cd3: $71
	ld b, [hl]                                       ; $6cd4: $46
	ld [hl], c                                       ; $6cd5: $71
	ld c, a                                          ; $6cd6: $4f
	ld [hl], c                                       ; $6cd7: $71
	ld e, e                                          ; $6cd8: $5b
	ld [hl], c                                       ; $6cd9: $71
	ld h, a                                          ; $6cda: $67
	ld [hl], c                                       ; $6cdb: $71
	ld [hl], e                                       ; $6cdc: $73
	ld [hl], c                                       ; $6cdd: $71
	ld a, a                                          ; $6cde: $7f
	ld [hl], c                                       ; $6cdf: $71
	adc b                                            ; $6ce0: $88
	ld [hl], c                                       ; $6ce1: $71
	sub c                                            ; $6ce2: $91
	ld [hl], c                                       ; $6ce3: $71
	sbc l                                            ; $6ce4: $9d
	ld [hl], c                                       ; $6ce5: $71
	and [hl]                                         ; $6ce6: $a6
	ld [hl], c                                       ; $6ce7: $71
	xor a                                            ; $6ce8: $af
	ld [hl], c                                       ; $6ce9: $71
	cp [hl]                                          ; $6cea: $be
	ld [hl], c                                       ; $6ceb: $71
	jp z, $d671                                      ; $6cec: $ca $71 $d6

	ld [hl], c                                       ; $6cef: $71
	push hl                                          ; $6cf0: $e5
	ld [hl], c                                       ; $6cf1: $71
	xor $71                                          ; $6cf2: $ee $71
	rst FarCall                                          ; $6cf4: $f7
	ld [hl], c                                       ; $6cf5: $71
	ld b, $72                                        ; $6cf6: $06 $72
	rrca                                             ; $6cf8: $0f
	ld [hl], d                                       ; $6cf9: $72
	jr jr_00f_6d6e                                   ; $6cfa: $18 $72

	daa                                              ; $6cfc: $27
	ld [hl], d                                       ; $6cfd: $72
	jr nc, jr_00f_6d72                               ; $6cfe: $30 $72

	add hl, sp                                       ; $6d00: $39
	ld [hl], d                                       ; $6d01: $72
	ld c, b                                          ; $6d02: $48
	ld [hl], d                                       ; $6d03: $72
	ld c, [hl]                                       ; $6d04: $4e
	ld [hl], d                                       ; $6d05: $72
	ld d, h                                          ; $6d06: $54
	ld [hl], d                                       ; $6d07: $72
	ld h, e                                          ; $6d08: $63
	ld [hl], d                                       ; $6d09: $72
	ld l, c                                          ; $6d0a: $69
	ld [hl], d                                       ; $6d0b: $72
	ld l, a                                          ; $6d0c: $6f
	ld [hl], d                                       ; $6d0d: $72
	ld a, [hl]                                       ; $6d0e: $7e
	ld [hl], d                                       ; $6d0f: $72
	adc d                                            ; $6d10: $8a
	ld [hl], d                                       ; $6d11: $72
	sub [hl]                                         ; $6d12: $96
	ld [hl], d                                       ; $6d13: $72
	and l                                            ; $6d14: $a5
	ld [hl], d                                       ; $6d15: $72
	xor [hl]                                         ; $6d16: $ae
	ld [hl], d                                       ; $6d17: $72
	or a                                             ; $6d18: $b7
	ld [hl], d                                       ; $6d19: $72
	add $72                                          ; $6d1a: $c6 $72
	rst GetHLinHL                                          ; $6d1c: $cf
	ld [hl], d                                       ; $6d1d: $72
	ret c                                            ; $6d1e: $d8

	ld [hl], d                                       ; $6d1f: $72
	pop hl                                           ; $6d20: $e1
	ld [hl], d                                       ; $6d21: $72
	db $ed                                           ; $6d22: $ed
	ld [hl], d                                       ; $6d23: $72
	ld sp, hl                                        ; $6d24: $f9
	ld [hl], d                                       ; $6d25: $72
	ld [bc], a                                       ; $6d26: $02
	ld [hl], e                                       ; $6d27: $73
	dec bc                                           ; $6d28: $0b
	ld [hl], e                                       ; $6d29: $73
	inc d                                            ; $6d2a: $14
	ld [hl], e                                       ; $6d2b: $73
	dec e                                            ; $6d2c: $1d
	ld [hl], e                                       ; $6d2d: $73
	ld h, $73                                        ; $6d2e: $26 $73
	cpl                                              ; $6d30: $2f
	ld [hl], e                                       ; $6d31: $73
	jr c, jr_00f_6da7                                ; $6d32: $38 $73

	ld b, c                                          ; $6d34: $41
	ld [hl], e                                       ; $6d35: $73
	ld c, d                                          ; $6d36: $4a
	ld [hl], e                                       ; $6d37: $73
	ld d, e                                          ; $6d38: $53
	ld [hl], e                                       ; $6d39: $73
	ld e, h                                          ; $6d3a: $5c
	ld [hl], e                                       ; $6d3b: $73
	ld l, e                                          ; $6d3c: $6b
	ld [hl], e                                       ; $6d3d: $73
	ld [hl], a                                       ; $6d3e: $77
	ld [hl], e                                       ; $6d3f: $73
	add e                                            ; $6d40: $83
	ld [hl], e                                       ; $6d41: $73
	sub d                                            ; $6d42: $92
	ld [hl], e                                       ; $6d43: $73
	sbc [hl]                                         ; $6d44: $9e
	ld [hl], e                                       ; $6d45: $73
	xor d                                            ; $6d46: $aa
	ld [hl], e                                       ; $6d47: $73
	cp c                                             ; $6d48: $b9
	ld [hl], e                                       ; $6d49: $73
	push bc                                          ; $6d4a: $c5
	ld [hl], e                                       ; $6d4b: $73
	pop de                                           ; $6d4c: $d1
	ld [hl], e                                       ; $6d4d: $73
	ldh [$73], a                                     ; $6d4e: $e0 $73
	jp hl                                            ; $6d50: $e9


	ld [hl], e                                       ; $6d51: $73
	ldh a, [c]                                       ; $6d52: $f2
	ld [hl], e                                       ; $6d53: $73
	ld hl, sp+$73                                    ; $6d54: $f8 $73
	rlca                                             ; $6d56: $07
	ld [hl], h                                       ; $6d57: $74
	ld d, $74                                        ; $6d58: $16 $74
	rra                                              ; $6d5a: $1f
	ld [hl], h                                       ; $6d5b: $74
	jr z, jr_00f_6dd2                                ; $6d5c: $28 $74

	scf                                              ; $6d5e: $37
	ld [hl], h                                       ; $6d5f: $74
	ld b, e                                          ; $6d60: $43
	ld [hl], h                                       ; $6d61: $74
	ld c, a                                          ; $6d62: $4f
	ld [hl], h                                       ; $6d63: $74
	ld e, [hl]                                       ; $6d64: $5e
	ld [hl], h                                       ; $6d65: $74
	ld l, d                                          ; $6d66: $6a
	ld [hl], h                                       ; $6d67: $74
	halt                                             ; $6d68: $76
	ld [hl], h                                       ; $6d69: $74
	add l                                            ; $6d6a: $85
	ld [hl], h                                       ; $6d6b: $74
	sub c                                            ; $6d6c: $91
	ld [hl], h                                       ; $6d6d: $74

jr_00f_6d6e:
	sbc l                                            ; $6d6e: $9d
	ld [hl], h                                       ; $6d6f: $74
	xor h                                            ; $6d70: $ac
	ld [hl], h                                       ; $6d71: $74

jr_00f_6d72:
	or l                                             ; $6d72: $b5
	ld [hl], h                                       ; $6d73: $74
	cp [hl]                                          ; $6d74: $be
	ld [hl], h                                       ; $6d75: $74
	rst JumpTable                                          ; $6d76: $c7
	ld [hl], h                                       ; $6d77: $74
	ret nc                                           ; $6d78: $d0

	ld [hl], h                                       ; $6d79: $74
	rst SubAFromDE                                          ; $6d7a: $df
	ld [hl], h                                       ; $6d7b: $74
	db $eb                                           ; $6d7c: $eb
	ld [hl], h                                       ; $6d7d: $74
	rst FarCall                                          ; $6d7e: $f7
	ld [hl], h                                       ; $6d7f: $74
	ld b, $75                                        ; $6d80: $06 $75
	rrca                                             ; $6d82: $0f
	ld [hl], l                                       ; $6d83: $75
	jr @+$77                                         ; $6d84: $18 $75

	daa                                              ; $6d86: $27
	ld [hl], l                                       ; $6d87: $75
	jr nc, jr_00f_6dff                               ; $6d88: $30 $75

	add hl, sp                                       ; $6d8a: $39
	ld [hl], l                                       ; $6d8b: $75
	ccf                                              ; $6d8c: $3f
	ld [hl], l                                       ; $6d8d: $75
	ld c, [hl]                                       ; $6d8e: $4e
	ld [hl], l                                       ; $6d8f: $75
	ld e, l                                          ; $6d90: $5d
	ld [hl], l                                       ; $6d91: $75
	ld h, e                                          ; $6d92: $63
	ld [hl], l                                       ; $6d93: $75
	ld l, a                                          ; $6d94: $6f
	ld [hl], l                                       ; $6d95: $75
	ld a, e                                          ; $6d96: $7b
	ld [hl], l                                       ; $6d97: $75
	add c                                            ; $6d98: $81
	ld [hl], l                                       ; $6d99: $75
	adc l                                            ; $6d9a: $8d
	ld [hl], l                                       ; $6d9b: $75
	sbc c                                            ; $6d9c: $99
	ld [hl], l                                       ; $6d9d: $75
	xor b                                            ; $6d9e: $a8
	ld [hl], l                                       ; $6d9f: $75
	or c                                             ; $6da0: $b1
	ld [hl], l                                       ; $6da1: $75
	cp d                                             ; $6da2: $ba
	ld [hl], l                                       ; $6da3: $75
	ret                                              ; $6da4: $c9


	ld [hl], l                                       ; $6da5: $75
	rst GetHLinHL                                          ; $6da6: $cf

jr_00f_6da7:
	ld [hl], l                                       ; $6da7: $75
	push de                                          ; $6da8: $d5
	ld [hl], l                                       ; $6da9: $75
	db $e4                                           ; $6daa: $e4
	ld [hl], l                                       ; $6dab: $75
	ld [$f075], a                                    ; $6dac: $ea $75 $f0
	ld [hl], l                                       ; $6daf: $75
	or $75                                           ; $6db0: $f6 $75
	dec bc                                           ; $6db2: $0b
	halt                                             ; $6db3: $76
	ld a, [de]                                       ; $6db4: $1a
	halt                                             ; $6db5: $76
	jr nz, jr_00f_6e2e                               ; $6db6: $20 $76

	ld [hl-], a                                      ; $6db8: $32
	halt                                             ; $6db9: $76
	ld a, $76                                        ; $6dba: $3e $76
	ld b, h                                          ; $6dbc: $44
	halt                                             ; $6dbd: $76
	ld d, [hl]                                       ; $6dbe: $56
	halt                                             ; $6dbf: $76
	ld h, d                                          ; $6dc0: $62
	halt                                             ; $6dc1: $76
	ld [hl], h                                       ; $6dc2: $74
	halt                                             ; $6dc3: $76
	add b                                            ; $6dc4: $80
	halt                                             ; $6dc5: $76
	adc h                                            ; $6dc6: $8c
	halt                                             ; $6dc7: $76
	sbc [hl]                                         ; $6dc8: $9e
	halt                                             ; $6dc9: $76
	and a                                            ; $6dca: $a7
	halt                                             ; $6dcb: $76
	or b                                             ; $6dcc: $b0
	halt                                             ; $6dcd: $76
	jp nz, $cb76                                     ; $6dce: $c2 $76 $cb

	halt                                             ; $6dd1: $76

jr_00f_6dd2:
	call nc, $ec76                                   ; $6dd2: $d4 $76 $ec
	halt                                             ; $6dd5: $76
	ld hl, sp+$76                                    ; $6dd6: $f8 $76
	inc b                                            ; $6dd8: $04
	ld [hl], a                                       ; $6dd9: $77
	inc e                                            ; $6dda: $1c
	ld [hl], a                                       ; $6ddb: $77
	dec h                                            ; $6ddc: $25
	ld [hl], a                                       ; $6ddd: $77
	ld l, $77                                        ; $6dde: $2e $77
	ld b, [hl]                                       ; $6de0: $46
	ld [hl], a                                       ; $6de1: $77
	ld c, a                                          ; $6de2: $4f
	ld [hl], a                                       ; $6de3: $77
	ld e, b                                          ; $6de4: $58
	ld [hl], a                                       ; $6de5: $77
	ld h, c                                          ; $6de6: $61
	ld [hl], a                                       ; $6de7: $77
	ld l, l                                          ; $6de8: $6d
	ld [hl], a                                       ; $6de9: $77
	ld a, c                                          ; $6dea: $79
	ld [hl], a                                       ; $6deb: $77
	add d                                            ; $6dec: $82
	ld [hl], a                                       ; $6ded: $77
	adc e                                            ; $6dee: $8b
	ld [hl], a                                       ; $6def: $77
	sub h                                            ; $6df0: $94
	ld [hl], a                                       ; $6df1: $77
	sbc l                                            ; $6df2: $9d
	ld [hl], a                                       ; $6df3: $77
	and [hl]                                         ; $6df4: $a6
	ld [hl], a                                       ; $6df5: $77
	xor a                                            ; $6df6: $af
	ld [hl], a                                       ; $6df7: $77
	cp [hl]                                          ; $6df8: $be
	ld [hl], a                                       ; $6df9: $77
	jp z, $dc77                                      ; $6dfa: $ca $77 $dc

	ld [hl], a                                       ; $6dfd: $77
	db $eb                                           ; $6dfe: $eb

jr_00f_6dff:
	ld [hl], a                                       ; $6dff: $77
	db $f4                                           ; $6e00: $f4
	ld [hl], a                                       ; $6e01: $77
	inc bc                                           ; $6e02: $03
	ld a, b                                          ; $6e03: $78
	ld [de], a                                       ; $6e04: $12
	ld a, b                                          ; $6e05: $78
	dec de                                           ; $6e06: $1b
	ld a, b                                          ; $6e07: $78
	ld a, [hl+]                                      ; $6e08: $2a
	ld a, b                                          ; $6e09: $78
	ld b, l                                          ; $6e0a: $45
	ld a, b                                          ; $6e0b: $78
	ld c, [hl]                                       ; $6e0c: $4e
	ld a, b                                          ; $6e0d: $78
	ld e, l                                          ; $6e0e: $5d
	ld a, b                                          ; $6e0f: $78
	ld a, b                                          ; $6e10: $78
	ld a, b                                          ; $6e11: $78
	ld a, [hl]                                       ; $6e12: $7e
	ld a, b                                          ; $6e13: $78
	adc d                                            ; $6e14: $8a
	ld a, b                                          ; $6e15: $78
	and l                                            ; $6e16: $a5
	ld a, b                                          ; $6e17: $78
	xor e                                            ; $6e18: $ab
	ld a, b                                          ; $6e19: $78
	or a                                             ; $6e1a: $b7
	ld a, b                                          ; $6e1b: $78
	add $78                                          ; $6e1c: $c6 $78
	jp nc, $de78                                     ; $6e1e: $d2 $78 $de

	ld a, b                                          ; $6e21: $78
	db $ed                                           ; $6e22: $ed
	ld a, b                                          ; $6e23: $78
	or $78                                           ; $6e24: $f6 $78
	rst $38                                          ; $6e26: $ff
	ld a, b                                          ; $6e27: $78
	ld c, $79                                        ; $6e28: $0e $79
	rla                                              ; $6e2a: $17
	ld a, c                                          ; $6e2b: $79
	jr nz, jr_00f_6ea7                               ; $6e2c: $20 $79

jr_00f_6e2e:
	ld h, $79                                        ; $6e2e: $26 $79
	dec [hl]                                         ; $6e30: $35
	ld a, c                                          ; $6e31: $79
	ld b, h                                          ; $6e32: $44
	ld a, c                                          ; $6e33: $79
	ld c, d                                          ; $6e34: $4a
	ld a, c                                          ; $6e35: $79
	ld d, [hl]                                       ; $6e36: $56
	ld a, c                                          ; $6e37: $79
	ld h, d                                          ; $6e38: $62
	ld a, c                                          ; $6e39: $79
	ld l, b                                          ; $6e3a: $68
	ld a, c                                          ; $6e3b: $79
	ld [hl], h                                       ; $6e3c: $74
	ld a, c                                          ; $6e3d: $79
	add b                                            ; $6e3e: $80
	ld a, c                                          ; $6e3f: $79
	adc a                                            ; $6e40: $8f
	ld a, c                                          ; $6e41: $79
	sbc b                                            ; $6e42: $98
	ld a, c                                          ; $6e43: $79
	and c                                            ; $6e44: $a1
	ld a, c                                          ; $6e45: $79
	or b                                             ; $6e46: $b0
	ld a, c                                          ; $6e47: $79
	or [hl]                                          ; $6e48: $b6
	ld a, c                                          ; $6e49: $79
	cp h                                             ; $6e4a: $bc
	ld a, c                                          ; $6e4b: $79
	bit 7, c                                         ; $6e4c: $cb $79
	pop de                                           ; $6e4e: $d1
	ld a, c                                          ; $6e4f: $79
	rst SubAFromHL                                          ; $6e50: $d7
	ld a, c                                          ; $6e51: $79
	db $dd                                           ; $6e52: $dd
	ld a, c                                          ; $6e53: $79
	ldh a, [c]                                       ; $6e54: $f2
	ld a, c                                          ; $6e55: $79
	ld bc, $077a                                     ; $6e56: $01 $7a $07
	ld a, d                                          ; $6e59: $7a
	add hl, de                                       ; $6e5a: $19
	ld a, d                                          ; $6e5b: $7a
	dec h                                            ; $6e5c: $25
	ld a, d                                          ; $6e5d: $7a
	dec hl                                           ; $6e5e: $2b
	ld a, d                                          ; $6e5f: $7a
	dec a                                            ; $6e60: $3d
	ld a, d                                          ; $6e61: $7a
	ld c, c                                          ; $6e62: $49
	ld a, d                                          ; $6e63: $7a
	ld e, b                                          ; $6e64: $58
	ld a, d                                          ; $6e65: $7a
	ld h, a                                          ; $6e66: $67
	ld a, d                                          ; $6e67: $7a
	ld a, h                                          ; $6e68: $7c
	ld a, d                                          ; $6e69: $7a
	sub c                                            ; $6e6a: $91
	ld a, d                                          ; $6e6b: $7a
	and [hl]                                         ; $6e6c: $a6
	ld a, d                                          ; $6e6d: $7a
	call nz, $d67a                                   ; $6e6e: $c4 $7a $d6
	ld a, d                                          ; $6e71: $7a
	rst SubAFromDE                                          ; $6e72: $df
	ld a, d                                          ; $6e73: $7a
	db $fd                                           ; $6e74: $fd
	ld a, d                                          ; $6e75: $7a
	inc bc                                           ; $6e76: $03
	ld a, e                                          ; $6e77: $7b
	ld hl, $4b7b                                     ; $6e78: $21 $7b $4b
	ld a, e                                          ; $6e7b: $7b
	ld l, h                                          ; $6e7c: $6c
	ld a, e                                          ; $6e7d: $7b
	ld a, b                                          ; $6e7e: $78
	ld a, e                                          ; $6e7f: $7b
	sub b                                            ; $6e80: $90
	ld a, e                                          ; $6e81: $7b
	sbc h                                            ; $6e82: $9c
	ld a, e                                          ; $6e83: $7b
	xor b                                            ; $6e84: $a8
	ld a, e                                          ; $6e85: $7b
	cp d                                             ; $6e86: $ba
	ld a, e                                          ; $6e87: $7b
	add $7b                                          ; $6e88: $c6 $7b

jr_00f_6e8a:
	jp nc, $1b7b                                     ; $6e8a: $d2 $7b $1b

	ld a, a                                          ; $6e8d: $7f
	ld [hl+], a                                      ; $6e8e: $22
	ld a, a                                          ; $6e8f: $7f
	add hl, hl                                       ; $6e90: $29
	ld a, a                                          ; $6e91: $7f
	jr nc, jr_00f_6f13                               ; $6e92: $30 $7f

	scf                                              ; $6e94: $37
	ld a, a                                          ; $6e95: $7f
	ld a, $7f                                        ; $6e96: $3e $7f
	ld b, l                                          ; $6e98: $45
	ld a, a                                          ; $6e99: $7f
	ld c, h                                          ; $6e9a: $4c
	ld a, a                                          ; $6e9b: $7f
	ld d, e                                          ; $6e9c: $53
	ld a, a                                          ; $6e9d: $7f
	ld e, d                                          ; $6e9e: $5a
	ld a, a                                          ; $6e9f: $7f
	ld h, c                                          ; $6ea0: $61
	ld a, a                                          ; $6ea1: $7f
	ld l, b                                          ; $6ea2: $68
	ld a, a                                          ; $6ea3: $7f
	ld l, a                                          ; $6ea4: $6f
	ld a, a                                          ; $6ea5: $7f
	halt                                             ; $6ea6: $76

jr_00f_6ea7:
	ld a, a                                          ; $6ea7: $7f
	ld a, l                                          ; $6ea8: $7d
	ld a, a                                          ; $6ea9: $7f
	add h                                            ; $6eaa: $84
	ld a, a                                          ; $6eab: $7f
	dec bc                                           ; $6eac: $0b
	ld bc, $0b00                                     ; $6ead: $01 $00 $0b
	dec d                                            ; $6eb0: $15
	nop                                              ; $6eb1: $00
	dec bc                                           ; $6eb2: $0b

jr_00f_6eb3:
	ld bc, $0000                                     ; $6eb3: $01 $00 $00
	ld bc, $0e00                                     ; $6eb6: $01 $00 $0e
	dec h                                            ; $6eb9: $25
	nop                                              ; $6eba: $00
	nop                                              ; $6ebb: $00
	ld [bc], a                                       ; $6ebc: $02
	nop                                              ; $6ebd: $00
	jr nz, jr_00f_6ef5                               ; $6ebe: $20 $35

	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	rst $38                                          ; $6ec2: $ff
	rst $38                                          ; $6ec3: $ff

jr_00f_6ec4:
	ld c, $51                                        ; $6ec4: $0e $51
	nop                                              ; $6ec6: $00
	nop                                              ; $6ec7: $00
	ld [bc], a                                       ; $6ec8: $02
	nop                                              ; $6ec9: $00
	jr nz, jr_00f_6f2d                               ; $6eca: $20 $61

	nop                                              ; $6ecc: $00
	nop                                              ; $6ecd: $00
	rst $38                                          ; $6ece: $ff
	rst $38                                          ; $6ecf: $ff
	dec bc                                           ; $6ed0: $0b
	ld a, c                                          ; $6ed1: $79
	nop                                              ; $6ed2: $00
	dec bc                                           ; $6ed3: $0b
	adc c                                            ; $6ed4: $89
	nop                                              ; $6ed5: $00
	dec bc                                           ; $6ed6: $0b
	ld a, c                                          ; $6ed7: $79
	nop                                              ; $6ed8: $00
	nop                                              ; $6ed9: $00
	ld bc, $0e00                                     ; $6eda: $01 $00 $0e
	sbc c                                            ; $6edd: $99
	nop                                              ; $6ede: $00
	jr nz, jr_00f_6e8a                               ; $6edf: $20 $a9

	nop                                              ; $6ee1: $00
	nop                                              ; $6ee2: $00
	rst $38                                          ; $6ee3: $ff
	rst $38                                          ; $6ee4: $ff
	ld c, $b9                                        ; $6ee5: $0e $b9
	nop                                              ; $6ee7: $00
	jr nz, jr_00f_6eb3                               ; $6ee8: $20 $c9

	nop                                              ; $6eea: $00
	nop                                              ; $6eeb: $00
	rst $38                                          ; $6eec: $ff
	rst $38                                          ; $6eed: $ff
	dec bc                                           ; $6eee: $0b
	reti                                             ; $6eef: $d9


	nop                                              ; $6ef0: $00
	dec bc                                           ; $6ef1: $0b
	jp hl                                            ; $6ef2: $e9


	nop                                              ; $6ef3: $00
	dec bc                                           ; $6ef4: $0b

jr_00f_6ef5:
	reti                                             ; $6ef5: $d9


	nop                                              ; $6ef6: $00
	nop                                              ; $6ef7: $00

jr_00f_6ef8:
	ld bc, $0e00                                     ; $6ef8: $01 $00 $0e
	ld sp, hl                                        ; $6efb: $f9
	nop                                              ; $6efc: $00
	jr nz, jr_00f_6f08                               ; $6efd: $20 $09

	ld bc, $ff00                                     ; $6eff: $01 $00 $ff

jr_00f_6f02:
	rst $38                                          ; $6f02: $ff
	ld c, $19                                        ; $6f03: $0e $19
	ld bc, $2920                                     ; $6f05: $01 $20 $29

jr_00f_6f08:
	ld bc, $ff00                                     ; $6f08: $01 $00 $ff
	rst $38                                          ; $6f0b: $ff
	dec bc                                           ; $6f0c: $0b
	ld [hl], c                                       ; $6f0d: $71
	ld [bc], a                                       ; $6f0e: $02
	dec bc                                           ; $6f0f: $0b
	add c                                            ; $6f10: $81
	ld [bc], a                                       ; $6f11: $02
	dec bc                                           ; $6f12: $0b

jr_00f_6f13:
	ld [hl], c                                       ; $6f13: $71
	ld [bc], a                                       ; $6f14: $02
	dec bc                                           ; $6f15: $0b
	add c                                            ; $6f16: $81
	ld [bc], a                                       ; $6f17: $02
	nop                                              ; $6f18: $00
	ld bc, $0900                                     ; $6f19: $01 $00 $09
	sub c                                            ; $6f1c: $91
	ld [bc], a                                       ; $6f1d: $02
	nop                                              ; $6f1e: $00
	ld [bc], a                                       ; $6f1f: $02
	nop                                              ; $6f20: $00
	jr nz, jr_00f_6ec4                               ; $6f21: $20 $a1

	ld [bc], a                                       ; $6f23: $02
	nop                                              ; $6f24: $00
	rst $38                                          ; $6f25: $ff
	rst $38                                          ; $6f26: $ff
	add hl, bc                                       ; $6f27: $09
	cp c                                             ; $6f28: $b9
	ld [bc], a                                       ; $6f29: $02
	nop                                              ; $6f2a: $00
	ld [bc], a                                       ; $6f2b: $02
	nop                                              ; $6f2c: $00

jr_00f_6f2d:
	jr nz, jr_00f_6ef8                               ; $6f2d: $20 $c9

	ld [bc], a                                       ; $6f2f: $02
	nop                                              ; $6f30: $00
	rst $38                                          ; $6f31: $ff
	rst $38                                          ; $6f32: $ff
	dec bc                                           ; $6f33: $0b
	pop hl                                           ; $6f34: $e1
	ld [bc], a                                       ; $6f35: $02
	dec bc                                           ; $6f36: $0b
	pop af                                           ; $6f37: $f1
	ld [bc], a                                       ; $6f38: $02
	dec bc                                           ; $6f39: $0b
	pop hl                                           ; $6f3a: $e1
	ld [bc], a                                       ; $6f3b: $02
	dec bc                                           ; $6f3c: $0b
	pop af                                           ; $6f3d: $f1
	ld [bc], a                                       ; $6f3e: $02
	nop                                              ; $6f3f: $00
	ld bc, $0900                                     ; $6f40: $01 $00 $09
	ld bc, $2003                                     ; $6f43: $01 $03 $20
	ld de, $0003                                     ; $6f46: $11 $03 $00
	rst $38                                          ; $6f49: $ff
	rst $38                                          ; $6f4a: $ff
	add hl, bc                                       ; $6f4b: $09
	ld hl, $2003                                     ; $6f4c: $21 $03 $20
	ld sp, $0003                                     ; $6f4f: $31 $03 $00
	rst $38                                          ; $6f52: $ff
	rst $38                                          ; $6f53: $ff
	dec bc                                           ; $6f54: $0b
	ld b, c                                          ; $6f55: $41
	inc bc                                           ; $6f56: $03
	dec bc                                           ; $6f57: $0b
	ld d, c                                          ; $6f58: $51
	inc bc                                           ; $6f59: $03
	dec bc                                           ; $6f5a: $0b
	ld b, c                                          ; $6f5b: $41
	inc bc                                           ; $6f5c: $03
	dec bc                                           ; $6f5d: $0b
	ld d, c                                          ; $6f5e: $51
	inc bc                                           ; $6f5f: $03
	nop                                              ; $6f60: $00
	ld bc, $0900                                     ; $6f61: $01 $00 $09
	ld h, c                                          ; $6f64: $61
	inc bc                                           ; $6f65: $03
	jr nz, jr_00f_6fd9                               ; $6f66: $20 $71

	inc bc                                           ; $6f68: $03
	nop                                              ; $6f69: $00
	rst $38                                          ; $6f6a: $ff
	rst $38                                          ; $6f6b: $ff
	add hl, bc                                       ; $6f6c: $09
	add c                                            ; $6f6d: $81
	inc bc                                           ; $6f6e: $03
	jr nz, jr_00f_6f02                               ; $6f6f: $20 $91

	inc bc                                           ; $6f71: $03
	nop                                              ; $6f72: $00
	rst $38                                          ; $6f73: $ff
	rst $38                                          ; $6f74: $ff
	dec bc                                           ; $6f75: $0b
	push de                                          ; $6f76: $d5
	inc b                                            ; $6f77: $04
	dec bc                                           ; $6f78: $0b
	push hl                                          ; $6f79: $e5
	inc b                                            ; $6f7a: $04
	dec bc                                           ; $6f7b: $0b
	push de                                          ; $6f7c: $d5
	inc b                                            ; $6f7d: $04

jr_00f_6f7e:
	rrca                                             ; $6f7e: $0f
	push hl                                          ; $6f7f: $e5
	inc b                                            ; $6f80: $04
	nop                                              ; $6f81: $00
	ld bc, $0000                                     ; $6f82: $01 $00 $00
	ld [bc], a                                       ; $6f85: $02
	nop                                              ; $6f86: $00
	jr nz, jr_00f_6f7e                               ; $6f87: $20 $f5

	inc b                                            ; $6f89: $04
	nop                                              ; $6f8a: $00
	rst $38                                          ; $6f8b: $ff
	rst $38                                          ; $6f8c: $ff
	nop                                              ; $6f8d: $00
	ld [bc], a                                       ; $6f8e: $02
	nop                                              ; $6f8f: $00
	jr nz, jr_00f_6f9f                               ; $6f90: $20 $0d

	dec b                                            ; $6f92: $05
	nop                                              ; $6f93: $00
	rst $38                                          ; $6f94: $ff

jr_00f_6f95:
	rst $38                                          ; $6f95: $ff
	dec bc                                           ; $6f96: $0b
	dec h                                            ; $6f97: $25
	dec b                                            ; $6f98: $05
	dec bc                                           ; $6f99: $0b
	dec [hl]                                         ; $6f9a: $35
	dec b                                            ; $6f9b: $05
	dec bc                                           ; $6f9c: $0b
	dec h                                            ; $6f9d: $25
	dec b                                            ; $6f9e: $05

jr_00f_6f9f:
	rrca                                             ; $6f9f: $0f
	dec [hl]                                         ; $6fa0: $35
	dec b                                            ; $6fa1: $05
	nop                                              ; $6fa2: $00
	ld bc, $2000                                     ; $6fa3: $01 $00 $20
	ld b, l                                          ; $6fa6: $45
	dec b                                            ; $6fa7: $05
	nop                                              ; $6fa8: $00
	rst $38                                          ; $6fa9: $ff
	rst $38                                          ; $6faa: $ff
	jr nz, @+$57                                     ; $6fab: $20 $55

	dec b                                            ; $6fad: $05
	nop                                              ; $6fae: $00
	rst $38                                          ; $6faf: $ff
	rst $38                                          ; $6fb0: $ff
	dec bc                                           ; $6fb1: $0b
	ld h, l                                          ; $6fb2: $65
	dec b                                            ; $6fb3: $05
	dec bc                                           ; $6fb4: $0b
	add l                                            ; $6fb5: $85
	dec b                                            ; $6fb6: $05
	dec bc                                           ; $6fb7: $0b
	ld h, l                                          ; $6fb8: $65
	dec b                                            ; $6fb9: $05
	rrca                                             ; $6fba: $0f
	add l                                            ; $6fbb: $85
	dec b                                            ; $6fbc: $05
	nop                                              ; $6fbd: $00
	ld bc, $2000                                     ; $6fbe: $01 $00 $20
	and l                                            ; $6fc1: $a5
	dec b                                            ; $6fc2: $05
	nop                                              ; $6fc3: $00
	rst $38                                          ; $6fc4: $ff
	rst $38                                          ; $6fc5: $ff
	jr nz, jr_00f_6f95                               ; $6fc6: $20 $cd

	dec b                                            ; $6fc8: $05
	nop                                              ; $6fc9: $00
	rst $38                                          ; $6fca: $ff
	rst $38                                          ; $6fcb: $ff
	dec bc                                           ; $6fcc: $0b
	dec d                                            ; $6fcd: $15
	dec c                                            ; $6fce: $0d
	dec bc                                           ; $6fcf: $0b
	dec [hl]                                         ; $6fd0: $35
	dec c                                            ; $6fd1: $0d
	dec bc                                           ; $6fd2: $0b
	dec d                                            ; $6fd3: $15
	dec c                                            ; $6fd4: $0d
	dec bc                                           ; $6fd5: $0b
	dec [hl]                                         ; $6fd6: $35
	dec c                                            ; $6fd7: $0d
	nop                                              ; $6fd8: $00

jr_00f_6fd9:
	ld bc, $0a00                                     ; $6fd9: $01 $00 $0a
	ld d, l                                          ; $6fdc: $55
	dec c                                            ; $6fdd: $0d
	nop                                              ; $6fde: $00
	ld [bc], a                                       ; $6fdf: $02
	nop                                              ; $6fe0: $00
	jr nz, jr_00f_7058                               ; $6fe1: $20 $75

	dec c                                            ; $6fe3: $0d
	nop                                              ; $6fe4: $00
	rst $38                                          ; $6fe5: $ff
	rst $38                                          ; $6fe6: $ff
	ld a, [bc]                                       ; $6fe7: $0a
	sbc l                                            ; $6fe8: $9d
	dec c                                            ; $6fe9: $0d
	nop                                              ; $6fea: $00
	ld [bc], a                                       ; $6feb: $02
	nop                                              ; $6fec: $00
	jr nz, @-$41                                     ; $6fed: $20 $bd

	dec c                                            ; $6fef: $0d
	nop                                              ; $6ff0: $00
	rst $38                                          ; $6ff1: $ff
	rst $38                                          ; $6ff2: $ff
	dec bc                                           ; $6ff3: $0b
	push hl                                          ; $6ff4: $e5
	dec c                                            ; $6ff5: $0d
	dec bc                                           ; $6ff6: $0b
	push af                                          ; $6ff7: $f5
	dec c                                            ; $6ff8: $0d
	dec bc                                           ; $6ff9: $0b
	push hl                                          ; $6ffa: $e5
	dec c                                            ; $6ffb: $0d
	dec bc                                           ; $6ffc: $0b
	push af                                          ; $6ffd: $f5
	dec c                                            ; $6ffe: $0d
	nop                                              ; $6fff: $00
	ld bc, $0a00                                     ; $7000: $01 $00 $0a
	dec b                                            ; $7003: $05
	ld c, $20                                        ; $7004: $0e $20
	dec d                                            ; $7006: $15
	ld c, $00                                        ; $7007: $0e $00
	rst $38                                          ; $7009: $ff
	rst $38                                          ; $700a: $ff
	ld a, [bc]                                       ; $700b: $0a
	dec h                                            ; $700c: $25
	ld c, $20                                        ; $700d: $0e $20
	dec [hl]                                         ; $700f: $35
	ld c, $00                                        ; $7010: $0e $00
	rst $38                                          ; $7012: $ff
	rst $38                                          ; $7013: $ff
	dec bc                                           ; $7014: $0b
	ld b, l                                          ; $7015: $45
	ld c, $0b                                        ; $7016: $0e $0b
	ld e, c                                          ; $7018: $59
	ld c, $0b                                        ; $7019: $0e $0b
	ld b, l                                          ; $701b: $45
	ld c, $0b                                        ; $701c: $0e $0b
	ld e, c                                          ; $701e: $59
	ld c, $00                                        ; $701f: $0e $00
	ld bc, $0a00                                     ; $7021: $01 $00 $0a
	ld l, l                                          ; $7024: $6d
	ld c, $20                                        ; $7025: $0e $20
	add c                                            ; $7027: $81
	ld c, $00                                        ; $7028: $0e $00
	rst $38                                          ; $702a: $ff
	rst $38                                          ; $702b: $ff
	ld a, [bc]                                       ; $702c: $0a
	sbc c                                            ; $702d: $99
	ld c, $20                                        ; $702e: $0e $20
	xor l                                            ; $7030: $ad
	ld c, $00                                        ; $7031: $0e $00
	rst $38                                          ; $7033: $ff
	rst $38                                          ; $7034: $ff
	db $10                                           ; $7035: $10
	xor l                                            ; $7036: $ad
	add hl, bc                                       ; $7037: $09
	add hl, bc                                       ; $7038: $09
	cp l                                             ; $7039: $bd
	add hl, bc                                       ; $703a: $09
	nop                                              ; $703b: $00

jr_00f_703c:
	ld bc, $0d00                                     ; $703c: $01 $00 $0d
	call $0009                                       ; $703f: $cd $09 $00
	ld [bc], a                                       ; $7042: $02
	nop                                              ; $7043: $00
	jr nz, @-$15                                     ; $7044: $20 $e9

	add hl, bc                                       ; $7046: $09
	nop                                              ; $7047: $00
	rst $38                                          ; $7048: $ff
	rst $38                                          ; $7049: $ff
	dec c                                            ; $704a: $0d
	dec c                                            ; $704b: $0d
	ld a, [bc]                                       ; $704c: $0a
	nop                                              ; $704d: $00
	ld [bc], a                                       ; $704e: $02
	nop                                              ; $704f: $00

jr_00f_7050:
	jr nz, @+$0f                                     ; $7050: $20 $0d

	ld a, [bc]                                       ; $7052: $0a
	nop                                              ; $7053: $00
	rst $38                                          ; $7054: $ff
	rst $38                                          ; $7055: $ff
	db $10                                           ; $7056: $10
	dec h                                            ; $7057: $25

jr_00f_7058:
	ld a, [bc]                                       ; $7058: $0a
	add hl, bc                                       ; $7059: $09
	dec [hl]                                         ; $705a: $35
	ld a, [bc]                                       ; $705b: $0a
	nop                                              ; $705c: $00

jr_00f_705d:
	ld bc, $0d00                                     ; $705d: $01 $00 $0d
	ld b, l                                          ; $7060: $45
	ld a, [bc]                                       ; $7061: $0a
	jr nz, @+$57                                     ; $7062: $20 $55

	ld a, [bc]                                       ; $7064: $0a
	nop                                              ; $7065: $00
	rst $38                                          ; $7066: $ff
	rst $38                                          ; $7067: $ff
	dec c                                            ; $7068: $0d
	ld h, l                                          ; $7069: $65
	ld a, [bc]                                       ; $706a: $0a
	jr nz, jr_00f_70d2                               ; $706b: $20 $65

	ld a, [bc]                                       ; $706d: $0a
	nop                                              ; $706e: $00
	rst $38                                          ; $706f: $ff
	rst $38                                          ; $7070: $ff
	db $10                                           ; $7071: $10
	ld [hl], l                                       ; $7072: $75
	ld a, [bc]                                       ; $7073: $0a
	add hl, bc                                       ; $7074: $09
	adc l                                            ; $7075: $8d
	ld a, [bc]                                       ; $7076: $0a
	nop                                              ; $7077: $00
	ld bc, $0d00                                     ; $7078: $01 $00 $0d
	and l                                            ; $707b: $a5
	ld a, [bc]                                       ; $707c: $0a
	jr nz, jr_00f_703c                               ; $707d: $20 $bd

	ld a, [bc]                                       ; $707f: $0a
	nop                                              ; $7080: $00
	rst $38                                          ; $7081: $ff
	rst $38                                          ; $7082: $ff
	dec c                                            ; $7083: $0d
	push de                                          ; $7084: $d5
	ld a, [bc]                                       ; $7085: $0a
	jr nz, jr_00f_705d                               ; $7086: $20 $d5

	ld a, [bc]                                       ; $7088: $0a
	nop                                              ; $7089: $00
	rst $38                                          ; $708a: $ff
	rst $38                                          ; $708b: $ff

jr_00f_708c:
	db $10                                           ; $708c: $10
	db $ed                                           ; $708d: $ed
	ld a, [bc]                                       ; $708e: $0a
	add hl, bc                                       ; $708f: $09
	ld bc, $000b                                     ; $7090: $01 $0b $00
	ld bc, $0d00                                     ; $7093: $01 $00 $0d
	dec d                                            ; $7096: $15
	dec bc                                           ; $7097: $0b
	jr nz, jr_00f_70c7                               ; $7098: $20 $2d

	dec bc                                           ; $709a: $0b
	nop                                              ; $709b: $00
	rst $38                                          ; $709c: $ff
	rst $38                                          ; $709d: $ff
	dec c                                            ; $709e: $0d
	ld b, l                                          ; $709f: $45
	dec bc                                           ; $70a0: $0b
	jr nz, jr_00f_70e8                               ; $70a1: $20 $45

	dec bc                                           ; $70a3: $0b
	nop                                              ; $70a4: $00
	rst $38                                          ; $70a5: $ff
	rst $38                                          ; $70a6: $ff
	add hl, bc                                       ; $70a7: $09
	dec d                                            ; $70a8: $15
	rlca                                             ; $70a9: $07
	add hl, bc                                       ; $70aa: $09
	add hl, hl                                       ; $70ab: $29
	rlca                                             ; $70ac: $07
	add hl, bc                                       ; $70ad: $09
	add hl, sp                                       ; $70ae: $39
	rlca                                             ; $70af: $07
	add hl, bc                                       ; $70b0: $09
	ld c, l                                          ; $70b1: $4d
	rlca                                             ; $70b2: $07
	add hl, bc                                       ; $70b3: $09
	ld e, l                                          ; $70b4: $5d
	rlca                                             ; $70b5: $07
	nop                                              ; $70b6: $00
	ld bc, $0000                                     ; $70b7: $01 $00 $00
	ld [bc], a                                       ; $70ba: $02
	nop                                              ; $70bb: $00
	jr nz, jr_00f_712f                               ; $70bc: $20 $71

	rlca                                             ; $70be: $07
	nop                                              ; $70bf: $00
	rst $38                                          ; $70c0: $ff
	rst $38                                          ; $70c1: $ff
	nop                                              ; $70c2: $00
	ld [bc], a                                       ; $70c3: $02
	nop                                              ; $70c4: $00
	jr nz, jr_00f_7050                               ; $70c5: $20 $89

jr_00f_70c7:
	rlca                                             ; $70c7: $07
	nop                                              ; $70c8: $00
	rst $38                                          ; $70c9: $ff
	rst $38                                          ; $70ca: $ff
	add hl, bc                                       ; $70cb: $09
	and c                                            ; $70cc: $a1
	rlca                                             ; $70cd: $07
	add hl, bc                                       ; $70ce: $09
	or c                                             ; $70cf: $b1
	rlca                                             ; $70d0: $07
	add hl, bc                                       ; $70d1: $09

jr_00f_70d2:
	pop bc                                           ; $70d2: $c1
	rlca                                             ; $70d3: $07
	add hl, bc                                       ; $70d4: $09
	pop de                                           ; $70d5: $d1
	rlca                                             ; $70d6: $07
	add hl, bc                                       ; $70d7: $09
	pop hl                                           ; $70d8: $e1
	rlca                                             ; $70d9: $07
	nop                                              ; $70da: $00
	ld bc, $2000                                     ; $70db: $01 $00 $20
	pop af                                           ; $70de: $f1
	rlca                                             ; $70df: $07
	nop                                              ; $70e0: $00
	rst $38                                          ; $70e1: $ff
	rst $38                                          ; $70e2: $ff
	jr nz, @+$03                                     ; $70e3: $20 $01

	ld [$ff00], sp                                   ; $70e5: $08 $00 $ff

jr_00f_70e8:
	rst $38                                          ; $70e8: $ff
	add hl, bc                                       ; $70e9: $09
	ld de, $0908                                     ; $70ea: $11 $08 $09
	dec h                                            ; $70ed: $25
	ld [$3909], sp                                   ; $70ee: $08 $09 $39
	ld [$4d09], sp                                   ; $70f1: $08 $09 $4d
	ld [$6109], sp                                   ; $70f4: $08 $09 $61
	ld [$0100], sp                                   ; $70f7: $08 $00 $01
	nop                                              ; $70fa: $00
	jr nz, jr_00f_7172                               ; $70fb: $20 $75

	ld [$ff00], sp                                   ; $70fd: $08 $00 $ff
	rst $38                                          ; $7100: $ff
	jr nz, jr_00f_708c                               ; $7101: $20 $89

	ld [$ff00], sp                                   ; $7103: $08 $00 $ff
	rst $38                                          ; $7106: $ff
	add hl, bc                                       ; $7107: $09

jr_00f_7108:
	sbc l                                            ; $7108: $9d
	ld [$ad09], sp                                   ; $7109: $08 $09 $ad
	ld [wPtrToDataCopyStruct+1], sp                                   ; $710c: $08 $09 $c1
	ld [$d109], sp                                   ; $710f: $08 $09 $d1
	ld [$e509], sp                                   ; $7112: $08 $09 $e5
	ld [$0100], sp                                   ; $7115: $08 $00 $01
	nop                                              ; $7118: $00
	jr nz, @-$09                                     ; $7119: $20 $f5

	ld [$ff00], sp                                   ; $711b: $08 $00 $ff
	rst $38                                          ; $711e: $ff
	jr nz, @+$0b                                     ; $711f: $20 $09

	add hl, bc                                       ; $7121: $09
	nop                                              ; $7122: $00
	rst $38                                          ; $7123: $ff
	rst $38                                          ; $7124: $ff
	ld de, $091d                                     ; $7125: $11 $1d $09
	ld de, $0935                                     ; $7128: $11 $35 $09
	nop                                              ; $712b: $00
	ld bc, $0000                                     ; $712c: $01 $00 $00

jr_00f_712f:
	ld [bc], a                                       ; $712f: $02
	nop                                              ; $7130: $00
	jr nz, @+$4f                                     ; $7131: $20 $4d

	add hl, bc                                       ; $7133: $09
	nop                                              ; $7134: $00
	rst $38                                          ; $7135: $ff
	rst $38                                          ; $7136: $ff
	ld [de], a                                       ; $7137: $12
	jp nz, $1901                                     ; $7138: $c2 $01 $19

	ld [$1901], a                                    ; $713b: $ea $01 $19
	ld [de], a                                       ; $713e: $12
	ld [bc], a                                       ; $713f: $02
	db $10                                           ; $7140: $10
	ld [$0001], a                                    ; $7141: $ea $01 $00
	ld bc, $0000                                     ; $7144: $01 $00 $00
	ld [bc], a                                       ; $7147: $02
	nop                                              ; $7148: $00
	jr nz, @-$3c                                     ; $7149: $20 $c2

	ld bc, $ff00                                     ; $714b: $01 $00 $ff
	rst $38                                          ; $714e: $ff
	dec bc                                           ; $714f: $0b
	add hl, sp                                       ; $7150: $39
	ld bc, $4d0b                                     ; $7151: $01 $0b $4d
	ld bc, $390b                                     ; $7154: $01 $0b $39
	ld bc, $0100                                     ; $7157: $01 $00 $01
	nop                                              ; $715a: $00
	ld c, $5d                                        ; $715b: $0e $5d
	ld bc, $0200                                     ; $715d: $01 $00 $02
	nop                                              ; $7160: $00
	jr nz, jr_00f_71d0                               ; $7161: $20 $6d

	ld bc, $ff00                                     ; $7163: $01 $00 $ff
	rst $38                                          ; $7166: $ff
	ld c, $89                                        ; $7167: $0e $89
	ld bc, $0200                                     ; $7169: $01 $00 $02
	nop                                              ; $716c: $00
	jr nz, jr_00f_7108                               ; $716d: $20 $99

	ld bc, $ff00                                     ; $716f: $01 $00 $ff

jr_00f_7172:
	rst $38                                          ; $7172: $ff
	dec bc                                           ; $7173: $0b
	or c                                             ; $7174: $b1
	ld bc, $c10b                                     ; $7175: $01 $0b $c1
	ld bc, $b10b                                     ; $7178: $01 $0b $b1
	ld bc, $0100                                     ; $717b: $01 $00 $01
	nop                                              ; $717e: $00
	ld c, $d1                                        ; $717f: $0e $d1
	ld bc, $e120                                     ; $7181: $01 $20 $e1
	ld bc, $ff00                                     ; $7184: $01 $00 $ff
	rst $38                                          ; $7187: $ff
	ld c, $f1                                        ; $7188: $0e $f1
	ld bc, $0120                                     ; $718a: $01 $20 $01
	ld [bc], a                                       ; $718d: $02
	nop                                              ; $718e: $00
	rst $38                                          ; $718f: $ff
	rst $38                                          ; $7190: $ff
	dec bc                                           ; $7191: $0b
	ld de, $0b02                                     ; $7192: $11 $02 $0b
	ld hl, $0b02                                     ; $7195: $21 $02 $0b
	ld de, $0002                                     ; $7198: $11 $02 $00
	ld bc, $0e00                                     ; $719b: $01 $00 $0e
	ld sp, $2002                                     ; $719e: $31 $02 $20
	ld b, c                                          ; $71a1: $41
	ld [bc], a                                       ; $71a2: $02
	nop                                              ; $71a3: $00
	rst $38                                          ; $71a4: $ff
	rst $38                                          ; $71a5: $ff
	ld c, $51                                        ; $71a6: $0e $51
	ld [bc], a                                       ; $71a8: $02
	jr nz, jr_00f_720c                               ; $71a9: $20 $61

	ld [bc], a                                       ; $71ab: $02
	nop                                              ; $71ac: $00
	rst $38                                          ; $71ad: $ff
	rst $38                                          ; $71ae: $ff
	dec bc                                           ; $71af: $0b

jr_00f_71b0:
	and c                                            ; $71b0: $a1
	inc bc                                           ; $71b1: $03
	dec bc                                           ; $71b2: $0b
	or c                                             ; $71b3: $b1
	inc bc                                           ; $71b4: $03
	dec bc                                           ; $71b5: $0b
	and c                                            ; $71b6: $a1
	inc bc                                           ; $71b7: $03
	dec bc                                           ; $71b8: $0b
	or c                                             ; $71b9: $b1
	inc bc                                           ; $71ba: $03
	nop                                              ; $71bb: $00
	ld bc, $0900                                     ; $71bc: $01 $00 $09
	pop bc                                           ; $71bf: $c1
	inc bc                                           ; $71c0: $03
	nop                                              ; $71c1: $00
	ld [bc], a                                       ; $71c2: $02
	nop                                              ; $71c3: $00
	jr nz, @-$2d                                     ; $71c4: $20 $d1

	inc bc                                           ; $71c6: $03
	nop                                              ; $71c7: $00
	rst $38                                          ; $71c8: $ff
	rst $38                                          ; $71c9: $ff
	add hl, bc                                       ; $71ca: $09
	jp hl                                            ; $71cb: $e9


	inc bc                                           ; $71cc: $03
	nop                                              ; $71cd: $00
	ld [bc], a                                       ; $71ce: $02

jr_00f_71cf:
	nop                                              ; $71cf: $00

jr_00f_71d0:
	jr nz, jr_00f_71cf                               ; $71d0: $20 $fd

	inc bc                                           ; $71d2: $03
	nop                                              ; $71d3: $00
	rst $38                                          ; $71d4: $ff
	rst $38                                          ; $71d5: $ff
	dec bc                                           ; $71d6: $0b
	dec d                                            ; $71d7: $15
	inc b                                            ; $71d8: $04

jr_00f_71d9:
	dec bc                                           ; $71d9: $0b
	dec h                                            ; $71da: $25
	inc b                                            ; $71db: $04
	dec bc                                           ; $71dc: $0b
	dec d                                            ; $71dd: $15
	inc b                                            ; $71de: $04
	dec bc                                           ; $71df: $0b
	dec h                                            ; $71e0: $25
	inc b                                            ; $71e1: $04
	nop                                              ; $71e2: $00
	ld bc, $0900                                     ; $71e3: $01 $00 $09
	dec [hl]                                         ; $71e6: $35
	inc b                                            ; $71e7: $04
	jr nz, jr_00f_722f                               ; $71e8: $20 $45

	inc b                                            ; $71ea: $04
	nop                                              ; $71eb: $00
	rst $38                                          ; $71ec: $ff
	rst $38                                          ; $71ed: $ff
	add hl, bc                                       ; $71ee: $09
	ld d, l                                          ; $71ef: $55
	inc b                                            ; $71f0: $04
	jr nz, jr_00f_7258                               ; $71f1: $20 $65

	inc b                                            ; $71f3: $04
	nop                                              ; $71f4: $00
	rst $38                                          ; $71f5: $ff
	rst $38                                          ; $71f6: $ff
	dec bc                                           ; $71f7: $0b
	ld [hl], l                                       ; $71f8: $75
	inc b                                            ; $71f9: $04
	dec bc                                           ; $71fa: $0b
	add l                                            ; $71fb: $85
	inc b                                            ; $71fc: $04
	dec bc                                           ; $71fd: $0b
	ld [hl], l                                       ; $71fe: $75
	inc b                                            ; $71ff: $04
	dec bc                                           ; $7200: $0b
	add l                                            ; $7201: $85
	inc b                                            ; $7202: $04
	nop                                              ; $7203: $00
	ld bc, $0900                                     ; $7204: $01 $00 $09
	sub l                                            ; $7207: $95
	inc b                                            ; $7208: $04
	jr nz, jr_00f_71b0                               ; $7209: $20 $a5

	inc b                                            ; $720b: $04

jr_00f_720c:
	nop                                              ; $720c: $00
	rst $38                                          ; $720d: $ff
	rst $38                                          ; $720e: $ff
	add hl, bc                                       ; $720f: $09
	or l                                             ; $7210: $b5
	inc b                                            ; $7211: $04
	jr nz, jr_00f_71d9                               ; $7212: $20 $c5

	inc b                                            ; $7214: $04
	nop                                              ; $7215: $00
	rst $38                                          ; $7216: $ff
	rst $38                                          ; $7217: $ff
	dec bc                                           ; $7218: $0b
	push af                                          ; $7219: $f5
	dec b                                            ; $721a: $05
	dec bc                                           ; $721b: $0b
	dec b                                            ; $721c: $05
	ld b, $0b                                        ; $721d: $06 $0b
	push af                                          ; $721f: $f5
	dec b                                            ; $7220: $05
	rrca                                             ; $7221: $0f
	dec b                                            ; $7222: $05
	ld b, $00                                        ; $7223: $06 $00
	ld bc, $0000                                     ; $7225: $01 $00 $00
	ld [bc], a                                       ; $7228: $02
	nop                                              ; $7229: $00
	jr nz, jr_00f_7241                               ; $722a: $20 $15

	ld b, $00                                        ; $722c: $06 $00
	rst $38                                          ; $722e: $ff

jr_00f_722f:
	rst $38                                          ; $722f: $ff
	nop                                              ; $7230: $00
	ld [bc], a                                       ; $7231: $02
	nop                                              ; $7232: $00
	jr nz, @+$2f                                     ; $7233: $20 $2d

	ld b, $00                                        ; $7235: $06 $00
	rst $38                                          ; $7237: $ff
	rst $38                                          ; $7238: $ff
	dec bc                                           ; $7239: $0b
	ld b, l                                          ; $723a: $45
	ld b, $0b                                        ; $723b: $06 $0b
	ld d, l                                          ; $723d: $55
	ld b, $0b                                        ; $723e: $06 $0b
	ld b, l                                          ; $7240: $45

jr_00f_7241:
	ld b, $0f                                        ; $7241: $06 $0f
	ld d, l                                          ; $7243: $55
	ld b, $00                                        ; $7244: $06 $00
	ld bc, $2000                                     ; $7246: $01 $00 $20
	ld h, l                                          ; $7249: $65
	ld b, $00                                        ; $724a: $06 $00
	rst $38                                          ; $724c: $ff
	rst $38                                          ; $724d: $ff
	jr nz, @+$77                                     ; $724e: $20 $75

	ld b, $00                                        ; $7250: $06 $00
	rst $38                                          ; $7252: $ff
	rst $38                                          ; $7253: $ff
	dec bc                                           ; $7254: $0b
	add l                                            ; $7255: $85
	ld b, $0b                                        ; $7256: $06 $0b

jr_00f_7258:
	and l                                            ; $7258: $a5
	ld b, $0b                                        ; $7259: $06 $0b
	add l                                            ; $725b: $85
	ld b, $0f                                        ; $725c: $06 $0f
	and l                                            ; $725e: $a5
	ld b, $00                                        ; $725f: $06 $00
	ld bc, $2000                                     ; $7261: $01 $00 $20
	push bc                                          ; $7264: $c5
	ld b, $00                                        ; $7265: $06 $00
	rst $38                                          ; $7267: $ff
	rst $38                                          ; $7268: $ff
	jr nz, jr_00f_7258                               ; $7269: $20 $ed

	ld b, $00                                        ; $726b: $06 $00
	rst $38                                          ; $726d: $ff
	rst $38                                          ; $726e: $ff

jr_00f_726f:
	dec bc                                           ; $726f: $0b
	push bc                                          ; $7270: $c5
	ld c, $0b                                        ; $7271: $0e $0b
	push hl                                          ; $7273: $e5
	ld c, $0b                                        ; $7274: $0e $0b
	push bc                                          ; $7276: $c5
	ld c, $0b                                        ; $7277: $0e $0b
	push hl                                          ; $7279: $e5
	ld c, $00                                        ; $727a: $0e $00
	ld bc, $0a00                                     ; $727c: $01 $00 $0a
	dec b                                            ; $727f: $05
	rrca                                             ; $7280: $0f
	nop                                              ; $7281: $00
	ld [bc], a                                       ; $7282: $02
	nop                                              ; $7283: $00
	jr nz, jr_00f_72ab                               ; $7284: $20 $25

	rrca                                             ; $7286: $0f
	nop                                              ; $7287: $00
	rst $38                                          ; $7288: $ff
	rst $38                                          ; $7289: $ff

jr_00f_728a:
	ld a, [bc]                                       ; $728a: $0a
	ld c, l                                          ; $728b: $4d
	rrca                                             ; $728c: $0f
	nop                                              ; $728d: $00
	ld [bc], a                                       ; $728e: $02
	nop                                              ; $728f: $00
	jr nz, jr_00f_72ff                               ; $7290: $20 $6d

	rrca                                             ; $7292: $0f
	nop                                              ; $7293: $00
	rst $38                                          ; $7294: $ff
	rst $38                                          ; $7295: $ff
	dec bc                                           ; $7296: $0b
	sub l                                            ; $7297: $95

jr_00f_7298:
	rrca                                             ; $7298: $0f
	dec bc                                           ; $7299: $0b
	and l                                            ; $729a: $a5
	rrca                                             ; $729b: $0f
	dec bc                                           ; $729c: $0b
	sub l                                            ; $729d: $95
	rrca                                             ; $729e: $0f
	dec bc                                           ; $729f: $0b
	and l                                            ; $72a0: $a5
	rrca                                             ; $72a1: $0f
	nop                                              ; $72a2: $00
	ld bc, $0a00                                     ; $72a3: $01 $00 $0a
	or l                                             ; $72a6: $b5
	rrca                                             ; $72a7: $0f
	jr nz, jr_00f_726f                               ; $72a8: $20 $c5

	rrca                                             ; $72aa: $0f

jr_00f_72ab:
	nop                                              ; $72ab: $00
	rst $38                                          ; $72ac: $ff
	rst $38                                          ; $72ad: $ff
	ld a, [bc]                                       ; $72ae: $0a
	push de                                          ; $72af: $d5
	rrca                                             ; $72b0: $0f
	jr nz, jr_00f_7298                               ; $72b1: $20 $e5

	rrca                                             ; $72b3: $0f
	nop                                              ; $72b4: $00
	rst $38                                          ; $72b5: $ff
	rst $38                                          ; $72b6: $ff
	dec bc                                           ; $72b7: $0b

jr_00f_72b8:
	push af                                          ; $72b8: $f5
	rrca                                             ; $72b9: $0f

jr_00f_72ba:
	dec bc                                           ; $72ba: $0b
	add hl, bc                                       ; $72bb: $09
	db $10                                           ; $72bc: $10
	dec bc                                           ; $72bd: $0b
	push af                                          ; $72be: $f5
	rrca                                             ; $72bf: $0f
	dec bc                                           ; $72c0: $0b
	add hl, bc                                       ; $72c1: $09
	stop                                             ; $72c2: $10 $00
	ld bc, $0a00                                     ; $72c4: $01 $00 $0a
	dec e                                            ; $72c7: $1d
	db $10                                           ; $72c8: $10
	jr nz, jr_00f_72fc                               ; $72c9: $20 $31

	stop                                             ; $72cb: $10 $00
	rst $38                                          ; $72cd: $ff
	rst $38                                          ; $72ce: $ff
	ld a, [bc]                                       ; $72cf: $0a
	ld c, c                                          ; $72d0: $49
	db $10                                           ; $72d1: $10
	jr nz, jr_00f_7331                               ; $72d2: $20 $5d

	stop                                             ; $72d4: $10 $00
	rst $38                                          ; $72d6: $ff
	rst $38                                          ; $72d7: $ff
	db $10                                           ; $72d8: $10
	ld e, l                                          ; $72d9: $5d
	dec bc                                           ; $72da: $0b
	add hl, bc                                       ; $72db: $09
	ld l, l                                          ; $72dc: $6d
	dec bc                                           ; $72dd: $0b
	nop                                              ; $72de: $00
	ld bc, $0d00                                     ; $72df: $01 $00 $0d
	ld a, l                                          ; $72e2: $7d
	dec bc                                           ; $72e3: $0b
	nop                                              ; $72e4: $00
	ld [bc], a                                       ; $72e5: $02
	nop                                              ; $72e6: $00
	jr nz, jr_00f_728a                               ; $72e7: $20 $a1

	dec bc                                           ; $72e9: $0b
	nop                                              ; $72ea: $00
	rst $38                                          ; $72eb: $ff
	rst $38                                          ; $72ec: $ff

jr_00f_72ed:
	dec c                                            ; $72ed: $0d
	push bc                                          ; $72ee: $c5
	dec bc                                           ; $72ef: $0b
	nop                                              ; $72f0: $00
	ld [bc], a                                       ; $72f1: $02
	nop                                              ; $72f2: $00
	jr nz, jr_00f_72ba                               ; $72f3: $20 $c5

	dec bc                                           ; $72f5: $0b
	nop                                              ; $72f6: $00
	rst $38                                          ; $72f7: $ff
	rst $38                                          ; $72f8: $ff
	db $10                                           ; $72f9: $10
	db $dd                                           ; $72fa: $dd
	dec bc                                           ; $72fb: $0b

jr_00f_72fc:
	add hl, bc                                       ; $72fc: $09
	db $ed                                           ; $72fd: $ed
	dec bc                                           ; $72fe: $0b

jr_00f_72ff:
	nop                                              ; $72ff: $00
	ld bc, $0d00                                     ; $7300: $01 $00 $0d
	db $fd                                           ; $7303: $fd
	dec bc                                           ; $7304: $0b
	jr nz, jr_00f_7314                               ; $7305: $20 $0d

	inc c                                            ; $7307: $0c
	nop                                              ; $7308: $00
	rst $38                                          ; $7309: $ff
	rst $38                                          ; $730a: $ff
	dec c                                            ; $730b: $0d
	dec e                                            ; $730c: $1d
	inc c                                            ; $730d: $0c
	jr nz, jr_00f_732d                               ; $730e: $20 $1d

	inc c                                            ; $7310: $0c
	nop                                              ; $7311: $00
	rst $38                                          ; $7312: $ff
	rst $38                                          ; $7313: $ff

jr_00f_7314:
	db $10                                           ; $7314: $10
	dec l                                            ; $7315: $2d
	inc c                                            ; $7316: $0c
	add hl, bc                                       ; $7317: $09

jr_00f_7318:
	ld b, l                                          ; $7318: $45
	inc c                                            ; $7319: $0c
	nop                                              ; $731a: $00
	ld bc, $0d00                                     ; $731b: $01 $00 $0d
	ld e, l                                          ; $731e: $5d
	inc c                                            ; $731f: $0c
	jr nz, jr_00f_7397                               ; $7320: $20 $75

	inc c                                            ; $7322: $0c
	nop                                              ; $7323: $00
	rst $38                                          ; $7324: $ff
	rst $38                                          ; $7325: $ff
	dec c                                            ; $7326: $0d
	adc l                                            ; $7327: $8d
	inc c                                            ; $7328: $0c
	jr nz, jr_00f_72b8                               ; $7329: $20 $8d

	inc c                                            ; $732b: $0c
	nop                                              ; $732c: $00

jr_00f_732d:
	rst $38                                          ; $732d: $ff
	rst $38                                          ; $732e: $ff

jr_00f_732f:
	db $10                                           ; $732f: $10
	and l                                            ; $7330: $a5

jr_00f_7331:
	inc c                                            ; $7331: $0c
	add hl, bc                                       ; $7332: $09
	cp c                                             ; $7333: $b9
	inc c                                            ; $7334: $0c
	nop                                              ; $7335: $00
	ld bc, $0d00                                     ; $7336: $01 $00 $0d
	call $200c                                       ; $7339: $cd $0c $20
	push hl                                          ; $733c: $e5
	inc c                                            ; $733d: $0c
	nop                                              ; $733e: $00
	rst $38                                          ; $733f: $ff

jr_00f_7340:
	rst $38                                          ; $7340: $ff
	dec c                                            ; $7341: $0d
	db $fd                                           ; $7342: $fd

jr_00f_7343:
	inc c                                            ; $7343: $0c
	jr nz, jr_00f_7343                               ; $7344: $20 $fd

	inc c                                            ; $7346: $0c
	nop                                              ; $7347: $00
	rst $38                                          ; $7348: $ff
	rst $38                                          ; $7349: $ff
	ld de, $0965                                     ; $734a: $11 $65 $09
	ld de, $097d                                     ; $734d: $11 $7d $09
	nop                                              ; $7350: $00
	ld bc, $0000                                     ; $7351: $01 $00 $00
	ld [bc], a                                       ; $7354: $02
	nop                                              ; $7355: $00
	jr nz, jr_00f_72ed                               ; $7356: $20 $95

	add hl, bc                                       ; $7358: $09
	nop                                              ; $7359: $00
	rst $38                                          ; $735a: $ff
	rst $38                                          ; $735b: $ff
	dec bc                                           ; $735c: $0b
	ld [hl], l                                       ; $735d: $75
	db $10                                           ; $735e: $10
	dec bc                                           ; $735f: $0b
	add l                                            ; $7360: $85
	db $10                                           ; $7361: $10
	dec bc                                           ; $7362: $0b
	ld [hl], l                                       ; $7363: $75
	db $10                                           ; $7364: $10
	dec bc                                           ; $7365: $0b
	add l                                            ; $7366: $85
	stop                                             ; $7367: $10 $00
	ld bc, $0e00                                     ; $7369: $01 $00 $0e
	sub l                                            ; $736c: $95
	stop                                             ; $736d: $10 $00
	ld [bc], a                                       ; $736f: $02
	nop                                              ; $7370: $00
	jr nz, jr_00f_7318                               ; $7371: $20 $a5

	stop                                             ; $7373: $10 $00
	rst $38                                          ; $7375: $ff
	rst $38                                          ; $7376: $ff
	ld c, $95                                        ; $7377: $0e $95
	stop                                             ; $7379: $10 $00
	ld [bc], a                                       ; $737b: $02
	nop                                              ; $737c: $00
	jr nz, jr_00f_7340                               ; $737d: $20 $c1

	stop                                             ; $737f: $10 $00
	rst $38                                          ; $7381: $ff
	rst $38                                          ; $7382: $ff
	add hl, bc                                       ; $7383: $09
	ld b, c                                          ; $7384: $41
	ld de, $5109                                     ; $7385: $11 $09 $51
	ld de, $4109                                     ; $7388: $11 $09 $41
	ld de, $5109                                     ; $738b: $11 $09 $51
	ld de, $0100                                     ; $738e: $11 $00 $01
	nop                                              ; $7391: $00
	add hl, bc                                       ; $7392: $09
	ld b, c                                          ; $7393: $41
	ld de, $0200                                     ; $7394: $11 $00 $02

jr_00f_7397:
	nop                                              ; $7397: $00
	jr nz, jr_00f_73fb                               ; $7398: $20 $61

	ld de, $ff00                                     ; $739a: $11 $00 $ff
	rst $38                                          ; $739d: $ff
	add hl, bc                                       ; $739e: $09
	ld a, c                                          ; $739f: $79
	ld de, $0200                                     ; $73a0: $11 $00 $02
	nop                                              ; $73a3: $00
	jr nz, jr_00f_732f                               ; $73a4: $20 $89

	ld de, $ff00                                     ; $73a6: $11 $00 $ff
	rst $38                                          ; $73a9: $ff
	ld a, [bc]                                       ; $73aa: $0a
	ld bc, $0a12                                     ; $73ab: $01 $12 $0a
	ld de, $0a12                                     ; $73ae: $11 $12 $0a
	ld bc, $0a12                                     ; $73b1: $01 $12 $0a
	ld de, $0012                                     ; $73b4: $11 $12 $00
	ld bc, $1100                                     ; $73b7: $01 $00 $11
	ld hl, $0012                                     ; $73ba: $21 $12 $00
	ld [bc], a                                       ; $73bd: $02
	nop                                              ; $73be: $00
	jr nz, jr_00f_73f2                               ; $73bf: $20 $31

	ld [de], a                                       ; $73c1: $12
	nop                                              ; $73c2: $00
	rst $38                                          ; $73c3: $ff
	rst $38                                          ; $73c4: $ff
	ld de, $1249                                     ; $73c5: $11 $49 $12
	nop                                              ; $73c8: $00
	ld [bc], a                                       ; $73c9: $02
	nop                                              ; $73ca: $00
	jr nz, jr_00f_7426                               ; $73cb: $20 $59

	ld [de], a                                       ; $73cd: $12
	nop                                              ; $73ce: $00
	rst $38                                          ; $73cf: $ff
	rst $38                                          ; $73d0: $ff
	dec bc                                           ; $73d1: $0b
	pop hl                                           ; $73d2: $e1
	ld [de], a                                       ; $73d3: $12
	dec bc                                           ; $73d4: $0b
	ld bc, $0b13                                     ; $73d5: $01 $13 $0b
	pop hl                                           ; $73d8: $e1
	ld [de], a                                       ; $73d9: $12
	dec bc                                           ; $73da: $0b
	ld bc, $0013                                     ; $73db: $01 $13 $00
	ld bc, $0000                                     ; $73de: $01 $00 $00
	ld [bc], a                                       ; $73e1: $02
	nop                                              ; $73e2: $00
	jr nz, jr_00f_7406                               ; $73e3: $20 $21

	inc de                                           ; $73e5: $13
	nop                                              ; $73e6: $00
	rst $38                                          ; $73e7: $ff
	rst $38                                          ; $73e8: $ff
	nop                                              ; $73e9: $00
	ld [bc], a                                       ; $73ea: $02
	nop                                              ; $73eb: $00
	jr nz, @+$4b                                     ; $73ec: $20 $49

	inc de                                           ; $73ee: $13
	nop                                              ; $73ef: $00
	rst $38                                          ; $73f0: $ff
	rst $38                                          ; $73f1: $ff

jr_00f_73f2:
	rlca                                             ; $73f2: $07
	cp c                                             ; $73f3: $b9
	inc d                                            ; $73f4: $14
	nop                                              ; $73f5: $00
	ld bc, $0700                                     ; $73f6: $01 $00 $07
	ret                                              ; $73f9: $c9


	inc d                                            ; $73fa: $14

jr_00f_73fb:
	ld b, $dd                                        ; $73fb: $06 $dd
	inc d                                            ; $73fd: $14
	nop                                              ; $73fe: $00
	ld [bc], a                                       ; $73ff: $02
	nop                                              ; $7400: $00
	jr nz, @-$05                                     ; $7401: $20 $f9

	inc d                                            ; $7403: $14
	nop                                              ; $7404: $00
	rst $38                                          ; $7405: $ff

jr_00f_7406:
	rst $38                                          ; $7406: $ff
	rlca                                             ; $7407: $07
	dec e                                            ; $7408: $1d
	dec d                                            ; $7409: $15
	ld b, $2d                                        ; $740a: $06 $2d
	dec d                                            ; $740c: $15
	nop                                              ; $740d: $00
	ld [bc], a                                       ; $740e: $02
	nop                                              ; $740f: $00
	jr nz, jr_00f_744f                               ; $7410: $20 $3d

	dec d                                            ; $7412: $15
	nop                                              ; $7413: $00
	rst $38                                          ; $7414: $ff
	rst $38                                          ; $7415: $ff
	ld de, $1401                                     ; $7416: $11 $01 $14
	ld de, $1415                                     ; $7419: $11 $15 $14
	nop                                              ; $741c: $00
	ld bc, $0000                                     ; $741d: $01 $00 $00
	ld [bc], a                                       ; $7420: $02
	nop                                              ; $7421: $00
	jr nz, jr_00f_7451                               ; $7422: $20 $2d

	inc d                                            ; $7424: $14
	nop                                              ; $7425: $00

jr_00f_7426:
	rst $38                                          ; $7426: $ff

jr_00f_7427:
	rst $38                                          ; $7427: $ff
	dec bc                                           ; $7428: $0b
	reti                                             ; $7429: $d9


	db $10                                           ; $742a: $10
	dec bc                                           ; $742b: $0b
	jp hl                                            ; $742c: $e9


	db $10                                           ; $742d: $10

jr_00f_742e:
	dec bc                                           ; $742e: $0b
	reti                                             ; $742f: $d9


	db $10                                           ; $7430: $10
	dec bc                                           ; $7431: $0b
	jp hl                                            ; $7432: $e9


	stop                                             ; $7433: $10 $00
	ld bc, $0e00                                     ; $7435: $01 $00 $0e
	ld sp, hl                                        ; $7438: $f9
	stop                                             ; $7439: $10 $00
	ld [bc], a                                       ; $743b: $02
	nop                                              ; $743c: $00
	jr nz, jr_00f_7448                               ; $743d: $20 $09

	ld de, $ff00                                     ; $743f: $11 $00 $ff
	rst $38                                          ; $7442: $ff
	ld c, $f9                                        ; $7443: $0e $f9
	stop                                             ; $7445: $10 $00
	ld [bc], a                                       ; $7447: $02

jr_00f_7448:
	nop                                              ; $7448: $00
	jr nz, @+$2b                                     ; $7449: $20 $29

	ld de, $ff00                                     ; $744b: $11 $00 $ff
	rst $38                                          ; $744e: $ff

jr_00f_744f:
	add hl, bc                                       ; $744f: $09
	and c                                            ; $7450: $a1

jr_00f_7451:
	ld de, $b109                                     ; $7451: $11 $09 $b1
	ld de, $a109                                     ; $7454: $11 $09 $a1
	ld de, $b109                                     ; $7457: $11 $09 $b1
	ld de, $0100                                     ; $745a: $11 $00 $01
	nop                                              ; $745d: $00
	add hl, bc                                       ; $745e: $09
	and c                                            ; $745f: $a1
	ld de, $0200                                     ; $7460: $11 $00 $02
	nop                                              ; $7463: $00
	jr nz, jr_00f_7427                               ; $7464: $20 $c1

	ld de, $ff00                                     ; $7466: $11 $00 $ff
	rst $38                                          ; $7469: $ff
	add hl, bc                                       ; $746a: $09
	reti                                             ; $746b: $d9


	ld de, $0200                                     ; $746c: $11 $00 $02
	nop                                              ; $746f: $00
	jr nz, @-$15                                     ; $7470: $20 $e9

	ld de, $ff00                                     ; $7472: $11 $00 $ff
	rst $38                                          ; $7475: $ff
	ld a, [bc]                                       ; $7476: $0a
	ld [hl], c                                       ; $7477: $71
	ld [de], a                                       ; $7478: $12
	ld a, [bc]                                       ; $7479: $0a
	add c                                            ; $747a: $81
	ld [de], a                                       ; $747b: $12
	ld a, [bc]                                       ; $747c: $0a
	ld [hl], c                                       ; $747d: $71
	ld [de], a                                       ; $747e: $12
	ld a, [bc]                                       ; $747f: $0a
	add c                                            ; $7480: $81

jr_00f_7481:
	ld [de], a                                       ; $7481: $12
	nop                                              ; $7482: $00
	ld bc, $1100                                     ; $7483: $01 $00 $11
	sub c                                            ; $7486: $91
	ld [de], a                                       ; $7487: $12
	nop                                              ; $7488: $00
	ld [bc], a                                       ; $7489: $02
	nop                                              ; $748a: $00
	jr nz, jr_00f_742e                               ; $748b: $20 $a1

	ld [de], a                                       ; $748d: $12
	nop                                              ; $748e: $00
	rst $38                                          ; $748f: $ff
	rst $38                                          ; $7490: $ff
	ld de, $12b9                                     ; $7491: $11 $b9 $12
	nop                                              ; $7494: $00
	ld [bc], a                                       ; $7495: $02
	nop                                              ; $7496: $00
	jr nz, @-$35                                     ; $7497: $20 $c9

	ld [de], a                                       ; $7499: $12
	nop                                              ; $749a: $00
	rst $38                                          ; $749b: $ff
	rst $38                                          ; $749c: $ff
	dec bc                                           ; $749d: $0b
	ld [hl], c                                       ; $749e: $71
	inc de                                           ; $749f: $13
	dec bc                                           ; $74a0: $0b
	sub c                                            ; $74a1: $91
	inc de                                           ; $74a2: $13
	dec bc                                           ; $74a3: $0b
	ld [hl], c                                       ; $74a4: $71
	inc de                                           ; $74a5: $13
	dec bc                                           ; $74a6: $0b
	sub c                                            ; $74a7: $91
	inc de                                           ; $74a8: $13
	nop                                              ; $74a9: $00
	ld bc, $0000                                     ; $74aa: $01 $00 $00
	ld [bc], a                                       ; $74ad: $02
	nop                                              ; $74ae: $00
	jr nz, @-$4d                                     ; $74af: $20 $b1

	inc de                                           ; $74b1: $13
	nop                                              ; $74b2: $00
	rst $38                                          ; $74b3: $ff
	rst $38                                          ; $74b4: $ff
	nop                                              ; $74b5: $00
	ld [bc], a                                       ; $74b6: $02
	nop                                              ; $74b7: $00
	jr nz, @-$25                                     ; $74b8: $20 $d9

	inc de                                           ; $74ba: $13
	nop                                              ; $74bb: $00
	rst $38                                          ; $74bc: $ff
	rst $38                                          ; $74bd: $ff
	ld de, $145d                                     ; $74be: $11 $5d $14
	ld de, $1471                                     ; $74c1: $11 $71 $14
	nop                                              ; $74c4: $00
	ld bc, $0000                                     ; $74c5: $01 $00 $00
	ld [bc], a                                       ; $74c8: $02
	nop                                              ; $74c9: $00
	jr nz, @-$75                                     ; $74ca: $20 $89

	inc d                                            ; $74cc: $14
	nop                                              ; $74cd: $00
	rst $38                                          ; $74ce: $ff
	rst $38                                          ; $74cf: $ff
	dec bc                                           ; $74d0: $0b
	ld [hl], $13                                     ; $74d1: $36 $13
	dec bc                                           ; $74d3: $0b
	ld b, [hl]                                       ; $74d4: $46
	inc de                                           ; $74d5: $13
	dec bc                                           ; $74d6: $0b
	ld [hl], $13                                     ; $74d7: $36 $13
	dec bc                                           ; $74d9: $0b
	ld b, [hl]                                       ; $74da: $46
	inc de                                           ; $74db: $13
	nop                                              ; $74dc: $00
	ld bc, $0e00                                     ; $74dd: $01 $00 $0e
	ld d, [hl]                                       ; $74e0: $56

jr_00f_74e1:
	inc de                                           ; $74e1: $13
	nop                                              ; $74e2: $00
	ld [bc], a                                       ; $74e3: $02
	nop                                              ; $74e4: $00
	jr nz, jr_00f_754d                               ; $74e5: $20 $66

	inc de                                           ; $74e7: $13
	nop                                              ; $74e8: $00
	rst $38                                          ; $74e9: $ff
	rst $38                                          ; $74ea: $ff
	ld c, $7e                                        ; $74eb: $0e $7e
	inc de                                           ; $74ed: $13
	nop                                              ; $74ee: $00
	ld [bc], a                                       ; $74ef: $02
	nop                                              ; $74f0: $00
	jr nz, jr_00f_7481                               ; $74f1: $20 $8e

	inc de                                           ; $74f3: $13
	nop                                              ; $74f4: $00
	rst $38                                          ; $74f5: $ff
	rst $38                                          ; $74f6: $ff
	dec bc                                           ; $74f7: $0b
	and [hl]                                         ; $74f8: $a6
	inc de                                           ; $74f9: $13
	dec bc                                           ; $74fa: $0b
	or [hl]                                          ; $74fb: $b6
	inc de                                           ; $74fc: $13
	dec bc                                           ; $74fd: $0b
	and [hl]                                         ; $74fe: $a6
	inc de                                           ; $74ff: $13
	dec bc                                           ; $7500: $0b
	or [hl]                                          ; $7501: $b6
	inc de                                           ; $7502: $13
	nop                                              ; $7503: $00
	ld bc, $0e00                                     ; $7504: $01 $00 $0e
	add $13                                          ; $7507: $c6 $13
	jr nz, jr_00f_74e1                               ; $7509: $20 $d6

	inc de                                           ; $750b: $13
	nop                                              ; $750c: $00
	rst $38                                          ; $750d: $ff
	rst $38                                          ; $750e: $ff
	ld c, $e6                                        ; $750f: $0e $e6
	inc de                                           ; $7511: $13
	jr nz, @-$08                                     ; $7512: $20 $f6

	inc de                                           ; $7514: $13
	nop                                              ; $7515: $00
	rst $38                                          ; $7516: $ff
	rst $38                                          ; $7517: $ff
	dec bc                                           ; $7518: $0b
	ld b, $14                                        ; $7519: $06 $14
	dec bc                                           ; $751b: $0b
	ld d, $14                                        ; $751c: $16 $14
	dec bc                                           ; $751e: $0b
	ld b, $14                                        ; $751f: $06 $14
	dec bc                                           ; $7521: $0b
	ld d, $14                                        ; $7522: $16 $14
	nop                                              ; $7524: $00
	ld bc, $0e00                                     ; $7525: $01 $00 $0e
	ld h, $14                                        ; $7528: $26 $14
	jr nz, @+$38                                     ; $752a: $20 $36

	inc d                                            ; $752c: $14
	nop                                              ; $752d: $00
	rst $38                                          ; $752e: $ff
	rst $38                                          ; $752f: $ff
	ld c, $46                                        ; $7530: $0e $46
	inc d                                            ; $7532: $14
	jr nz, @+$58                                     ; $7533: $20 $56

	inc d                                            ; $7535: $14
	nop                                              ; $7536: $00
	rst $38                                          ; $7537: $ff
	rst $38                                          ; $7538: $ff
	inc bc                                           ; $7539: $03
	or [hl]                                          ; $753a: $b6
	rrca                                             ; $753b: $0f
	nop                                              ; $753c: $00
	ld bc, $0500                                     ; $753d: $01 $00 $05
	adc $0f                                          ; $7540: $ce $0f
	inc b                                            ; $7542: $04
	and $0f                                          ; $7543: $e6 $0f
	nop                                              ; $7545: $00
	ld [bc], a                                       ; $7546: $02
	nop                                              ; $7547: $00

jr_00f_7548:
	jr nz, jr_00f_7548                               ; $7548: $20 $fe

	rrca                                             ; $754a: $0f
	nop                                              ; $754b: $00
	rst $38                                          ; $754c: $ff

jr_00f_754d:
	rst $38                                          ; $754d: $ff
	add hl, bc                                       ; $754e: $09
	ld e, $10                                        ; $754f: $1e $10
	add hl, bc                                       ; $7551: $09
	ld [hl], $10                                     ; $7552: $36 $10
	nop                                              ; $7554: $00
	ld [bc], a                                       ; $7555: $02
	nop                                              ; $7556: $00
	jr nz, jr_00f_75ab                               ; $7557: $20 $52

	stop                                             ; $7559: $10 $00
	rst $38                                          ; $755b: $ff
	rst $38                                          ; $755c: $ff
	inc bc                                           ; $755d: $03
	halt                                             ; $755e: $76
	stop                                             ; $755f: $10 $00
	ld bc, $0500                                     ; $7561: $01 $00 $05
	adc d                                            ; $7564: $8a
	db $10                                           ; $7565: $10
	inc b                                            ; $7566: $04
	sbc [hl]                                         ; $7567: $9e
	db $10                                           ; $7568: $10

jr_00f_7569:
	jr nz, @-$4c                                     ; $7569: $20 $b2

	stop                                             ; $756b: $10 $00
	rst $38                                          ; $756d: $ff
	rst $38                                          ; $756e: $ff
	add hl, bc                                       ; $756f: $09
	jp z, $0910                                      ; $7570: $ca $10 $09

	sbc $10                                          ; $7573: $de $10
	jr nz, jr_00f_7569                               ; $7575: $20 $f2

	stop                                             ; $7577: $10 $00
	rst $38                                          ; $7579: $ff
	rst $38                                          ; $757a: $ff

jr_00f_757b:
	inc bc                                           ; $757b: $03
	ld b, $11                                        ; $757c: $06 $11
	nop                                              ; $757e: $00
	ld bc, $0500                                     ; $757f: $01 $00 $05
	ld d, $11                                        ; $7582: $16 $11
	inc b                                            ; $7584: $04
	ld h, $11                                        ; $7585: $26 $11
	jr nz, @+$38                                     ; $7587: $20 $36

	ld de, $ff00                                     ; $7589: $11 $00 $ff
	rst $38                                          ; $758c: $ff
	add hl, bc                                       ; $758d: $09
	ld b, [hl]                                       ; $758e: $46
	ld de, $5609                                     ; $758f: $11 $09 $56
	ld de, $6620                                     ; $7592: $11 $20 $66
	ld de, $ff00                                     ; $7595: $11 $00 $ff
	rst $38                                          ; $7598: $ff
	add hl, bc                                       ; $7599: $09
	add [hl]                                         ; $759a: $86
	dec c                                            ; $759b: $0d
	add hl, bc                                       ; $759c: $09
	xor d                                            ; $759d: $aa
	dec c                                            ; $759e: $0d
	add hl, bc                                       ; $759f: $09
	add [hl]                                         ; $75a0: $86
	dec c                                            ; $75a1: $0d
	add hl, bc                                       ; $75a2: $09
	xor d                                            ; $75a3: $aa

jr_00f_75a4:
	dec c                                            ; $75a4: $0d
	nop                                              ; $75a5: $00
	ld bc, $0000                                     ; $75a6: $01 $00 $00
	ld [bc], a                                       ; $75a9: $02
	nop                                              ; $75aa: $00

jr_00f_75ab:
	jr nz, jr_00f_757b                               ; $75ab: $20 $ce

	dec c                                            ; $75ad: $0d
	nop                                              ; $75ae: $00
	rst $38                                          ; $75af: $ff
	rst $38                                          ; $75b0: $ff
	nop                                              ; $75b1: $00
	ld [bc], a                                       ; $75b2: $02
	nop                                              ; $75b3: $00
	jr nz, jr_00f_75a4                               ; $75b4: $20 $ee

	dec c                                            ; $75b6: $0d
	nop                                              ; $75b7: $00
	rst $38                                          ; $75b8: $ff
	rst $38                                          ; $75b9: $ff
	add hl, bc                                       ; $75ba: $09
	ld c, $0e                                        ; $75bb: $0e $0e
	add hl, bc                                       ; $75bd: $09
	ld e, $0e                                        ; $75be: $1e $0e
	add hl, bc                                       ; $75c0: $09
	ld c, $0e                                        ; $75c1: $0e $0e
	add hl, bc                                       ; $75c3: $09
	ld e, $0e                                        ; $75c4: $1e $0e
	nop                                              ; $75c6: $00
	ld bc, $2000                                     ; $75c7: $01 $00 $20
	ld l, $0e                                        ; $75ca: $2e $0e
	nop                                              ; $75cc: $00
	rst $38                                          ; $75cd: $ff
	rst $38                                          ; $75ce: $ff
	jr nz, jr_00f_760f                               ; $75cf: $20 $3e

	ld c, $00                                        ; $75d1: $0e $00
	rst $38                                          ; $75d3: $ff
	rst $38                                          ; $75d4: $ff
	add hl, bc                                       ; $75d5: $09
	ld c, [hl]                                       ; $75d6: $4e
	ld c, $09                                        ; $75d7: $0e $09
	ld h, d                                          ; $75d9: $62
	ld c, $09                                        ; $75da: $0e $09
	ld c, [hl]                                       ; $75dc: $4e
	ld c, $09                                        ; $75dd: $0e $09
	ld h, d                                          ; $75df: $62
	ld c, $00                                        ; $75e0: $0e $00
	ld bc, $2000                                     ; $75e2: $01 $00 $20
	halt                                             ; $75e5: $76
	ld c, $00                                        ; $75e6: $0e $00
	rst $38                                          ; $75e8: $ff
	rst $38                                          ; $75e9: $ff
	jr nz, @-$74                                     ; $75ea: $20 $8a

	ld c, $00                                        ; $75ec: $0e $00
	rst $38                                          ; $75ee: $ff
	rst $38                                          ; $75ef: $ff
	inc e                                            ; $75f0: $1c
	sub [hl]                                         ; $75f1: $96
	dec d                                            ; $75f2: $15
	nop                                              ; $75f3: $00
	ld bc, $0900                                     ; $75f4: $01 $00 $09
	or d                                             ; $75f7: $b2
	dec d                                            ; $75f8: $15
	add hl, bc                                       ; $75f9: $09
	jp nc, $0915                                     ; $75fa: $d2 $15 $09

	or $15                                           ; $75fd: $f6 $15
	add hl, bc                                       ; $75ff: $09
	ld e, $16                                        ; $7600: $1e $16
	nop                                              ; $7602: $00
	ld [bc], a                                       ; $7603: $02
	nop                                              ; $7604: $00
	jr nz, jr_00f_763d                               ; $7605: $20 $36

	ld d, $00                                        ; $7607: $16 $00
	rst $38                                          ; $7609: $ff
	rst $38                                          ; $760a: $ff
	rrca                                             ; $760b: $0f
	ld d, [hl]                                       ; $760c: $56
	ld d, $0f                                        ; $760d: $16 $0f

jr_00f_760f:
	ld [hl], d                                       ; $760f: $72
	ld d, $00                                        ; $7610: $16 $00
	ld [bc], a                                       ; $7612: $02
	nop                                              ; $7613: $00
	jr nz, jr_00f_75a4                               ; $7614: $20 $8e

	ld d, $00                                        ; $7616: $16 $00
	rst $38                                          ; $7618: $ff
	rst $38                                          ; $7619: $ff
	inc e                                            ; $761a: $1c
	or d                                             ; $761b: $b2
	ld d, $00                                        ; $761c: $16 $00
	ld bc, $0900                                     ; $761e: $01 $00 $09
	jp z, $0916                                      ; $7621: $ca $16 $09

	ldh [c], a                                       ; $7624: $e2
	ld d, $09                                        ; $7625: $16 $09
	ld a, [$0916]                                    ; $7627: $fa $16 $09
	ld [de], a                                       ; $762a: $12
	rla                                              ; $762b: $17
	jr nz, @+$2c                                     ; $762c: $20 $2a

	rla                                              ; $762e: $17
	nop                                              ; $762f: $00
	rst $38                                          ; $7630: $ff
	rst $38                                          ; $7631: $ff
	rrca                                             ; $7632: $0f
	ld b, d                                          ; $7633: $42
	rla                                              ; $7634: $17
	rrca                                             ; $7635: $0f
	ld e, d                                          ; $7636: $5a
	rla                                              ; $7637: $17
	jr nz, jr_00f_76ac                               ; $7638: $20 $72

	rla                                              ; $763a: $17
	nop                                              ; $763b: $00
	rst $38                                          ; $763c: $ff

jr_00f_763d:
	rst $38                                          ; $763d: $ff
	inc e                                            ; $763e: $1c
	adc d                                            ; $763f: $8a
	rla                                              ; $7640: $17
	nop                                              ; $7641: $00
	ld bc, $0900                                     ; $7642: $01 $00 $09
	sbc d                                            ; $7645: $9a
	rla                                              ; $7646: $17
	add hl, bc                                       ; $7647: $09
	xor d                                            ; $7648: $aa
	rla                                              ; $7649: $17
	add hl, bc                                       ; $764a: $09
	cp d                                             ; $764b: $ba
	rla                                              ; $764c: $17
	add hl, bc                                       ; $764d: $09
	jp z, $2017                                      ; $764e: $ca $17 $20

	jp c, $0017                                      ; $7651: $da $17 $00

	rst $38                                          ; $7654: $ff
	rst $38                                          ; $7655: $ff
	rrca                                             ; $7656: $0f
	ld [$0f17], a                                    ; $7657: $ea $17 $0f
	ld a, [$2017]                                    ; $765a: $fa $17 $20
	ld a, [bc]                                       ; $765d: $0a
	jr jr_00f_7660                                   ; $765e: $18 $00

jr_00f_7660:
	rst $38                                          ; $7660: $ff
	rst $38                                          ; $7661: $ff
	ld b, $b6                                        ; $7662: $06 $b6
	add hl, bc                                       ; $7664: $09
	ld b, $c6                                        ; $7665: $06 $c6
	add hl, bc                                       ; $7667: $09
	ld b, $b6                                        ; $7668: $06 $b6
	add hl, bc                                       ; $766a: $09
	ld b, $c6                                        ; $766b: $06 $c6
	add hl, bc                                       ; $766d: $09
	ld b, $b6                                        ; $766e: $06 $b6
	add hl, bc                                       ; $7670: $09
	nop                                              ; $7671: $00
	ld bc, $0500                                     ; $7672: $01 $00 $05
	sub $09                                          ; $7675: $d6 $09
	nop                                              ; $7677: $00
	ld [bc], a                                       ; $7678: $02
	nop                                              ; $7679: $00
	jr nz, @-$14                                     ; $767a: $20 $ea

	add hl, bc                                       ; $767c: $09
	nop                                              ; $767d: $00
	rst $38                                          ; $767e: $ff
	rst $38                                          ; $767f: $ff
	dec b                                            ; $7680: $05
	ld c, $0a                                        ; $7681: $0e $0a
	nop                                              ; $7683: $00
	ld [bc], a                                       ; $7684: $02
	nop                                              ; $7685: $00
	jr nz, jr_00f_76aa                               ; $7686: $20 $22

	ld a, [bc]                                       ; $7688: $0a
	nop                                              ; $7689: $00
	rst $38                                          ; $768a: $ff
	rst $38                                          ; $768b: $ff
	ld b, $42                                        ; $768c: $06 $42
	ld a, [bc]                                       ; $768e: $0a
	ld b, $56                                        ; $768f: $06 $56
	ld a, [bc]                                       ; $7691: $0a
	ld b, $42                                        ; $7692: $06 $42
	ld a, [bc]                                       ; $7694: $0a
	ld b, $56                                        ; $7695: $06 $56
	ld a, [bc]                                       ; $7697: $0a
	ld b, $42                                        ; $7698: $06 $42
	ld a, [bc]                                       ; $769a: $0a
	nop                                              ; $769b: $00
	ld bc, $0500                                     ; $769c: $01 $00 $05
	ld l, d                                          ; $769f: $6a
	ld a, [bc]                                       ; $76a0: $0a
	jr nz, jr_00f_7721                               ; $76a1: $20 $7e

	ld a, [bc]                                       ; $76a3: $0a
	nop                                              ; $76a4: $00
	rst $38                                          ; $76a5: $ff
	rst $38                                          ; $76a6: $ff
	dec b                                            ; $76a7: $05
	sub d                                            ; $76a8: $92
	ld a, [bc]                                       ; $76a9: $0a

jr_00f_76aa:
	jr nz, @-$58                                     ; $76aa: $20 $a6

jr_00f_76ac:
	ld a, [bc]                                       ; $76ac: $0a
	nop                                              ; $76ad: $00
	rst $38                                          ; $76ae: $ff
	rst $38                                          ; $76af: $ff
	ld b, $ba                                        ; $76b0: $06 $ba

jr_00f_76b2:
	ld a, [bc]                                       ; $76b2: $0a
	ld b, $d2                                        ; $76b3: $06 $d2
	ld a, [bc]                                       ; $76b5: $0a
	ld b, $ba                                        ; $76b6: $06 $ba
	ld a, [bc]                                       ; $76b8: $0a
	ld b, $d2                                        ; $76b9: $06 $d2
	ld a, [bc]                                       ; $76bb: $0a
	ld b, $ba                                        ; $76bc: $06 $ba
	ld a, [bc]                                       ; $76be: $0a
	nop                                              ; $76bf: $00
	ld bc, $0500                                     ; $76c0: $01 $00 $05
	ld [$200a], a                                    ; $76c3: $ea $0a $20
	ld [bc], a                                       ; $76c6: $02
	dec bc                                           ; $76c7: $0b
	nop                                              ; $76c8: $00
	rst $38                                          ; $76c9: $ff
	rst $38                                          ; $76ca: $ff
	dec b                                            ; $76cb: $05
	ld a, [de]                                       ; $76cc: $1a
	dec bc                                           ; $76cd: $0b
	jr nz, jr_00f_7702                               ; $76ce: $20 $32

	dec bc                                           ; $76d0: $0b
	nop                                              ; $76d1: $00
	rst $38                                          ; $76d2: $ff
	rst $38                                          ; $76d3: $ff
	ld [$06ca], sp                                   ; $76d4: $08 $ca $06
	ld [$06de], sp                                   ; $76d7: $08 $de $06
	ld [$06f6], sp                                   ; $76da: $08 $f6 $06
	ld [$070a], sp                                   ; $76dd: $08 $0a $07
	ld [$0722], sp                                   ; $76e0: $08 $22 $07
	ld [$0736], sp                                   ; $76e3: $08 $36 $07
	dec c                                            ; $76e6: $0d
	ld c, [hl]                                       ; $76e7: $4e
	rlca                                             ; $76e8: $07
	nop                                              ; $76e9: $00
	ld bc, $0400                                     ; $76ea: $01 $00 $04
	ld h, d                                          ; $76ed: $62
	rlca                                             ; $76ee: $07
	nop                                              ; $76ef: $00
	ld [bc], a                                       ; $76f0: $02
	nop                                              ; $76f1: $00

jr_00f_76f2:
	jr nz, jr_00f_776e                               ; $76f2: $20 $7a

	rlca                                             ; $76f4: $07
	nop                                              ; $76f5: $00
	rst $38                                          ; $76f6: $ff
	rst $38                                          ; $76f7: $ff
	inc b                                            ; $76f8: $04
	sbc d                                            ; $76f9: $9a
	rlca                                             ; $76fa: $07
	nop                                              ; $76fb: $00
	ld [bc], a                                       ; $76fc: $02
	nop                                              ; $76fd: $00
	jr nz, jr_00f_76b2                               ; $76fe: $20 $b2

	rlca                                             ; $7700: $07
	nop                                              ; $7701: $00

jr_00f_7702:
	rst $38                                          ; $7702: $ff
	rst $38                                          ; $7703: $ff
	ld [$07d2], sp                                   ; $7704: $08 $d2 $07
	ld [$07e6], sp                                   ; $7707: $08 $e6 $07
	ld [$07fa], sp                                   ; $770a: $08 $fa $07
	ld [$080e], sp                                   ; $770d: $08 $0e $08
	ld [$0822], sp                                   ; $7710: $08 $22 $08
	ld [$0836], sp                                   ; $7713: $08 $36 $08
	dec c                                            ; $7716: $0d
	ld c, d                                          ; $7717: $4a
	ld [$0100], sp                                   ; $7718: $08 $00 $01
	nop                                              ; $771b: $00
	inc b                                            ; $771c: $04
	ld e, [hl]                                       ; $771d: $5e
	ld [$7220], sp                                   ; $771e: $08 $20 $72

jr_00f_7721:
	ld [$ff00], sp                                   ; $7721: $08 $00 $ff
	rst $38                                          ; $7724: $ff
	inc b                                            ; $7725: $04
	add [hl]                                         ; $7726: $86
	ld [$9a20], sp                                   ; $7727: $08 $20 $9a
	ld [$ff00], sp                                   ; $772a: $08 $00 $ff
	rst $38                                          ; $772d: $ff
	ld [$08ae], sp                                   ; $772e: $08 $ae $08
	ld [$08c6], sp                                   ; $7731: $08 $c6 $08
	ld [$08de], sp                                   ; $7734: $08 $de $08
	ld [$08f6], sp                                   ; $7737: $08 $f6 $08
	ld [$090e], sp                                   ; $773a: $08 $0e $09
	ld [$0926], sp                                   ; $773d: $08 $26 $09
	dec c                                            ; $7740: $0d
	ld a, $09                                        ; $7741: $3e $09
	nop                                              ; $7743: $00
	ld bc, $0400                                     ; $7744: $01 $00 $04
	ld d, [hl]                                       ; $7747: $56
	add hl, bc                                       ; $7748: $09
	jr nz, jr_00f_77b9                               ; $7749: $20 $6e

	add hl, bc                                       ; $774b: $09
	nop                                              ; $774c: $00
	rst $38                                          ; $774d: $ff
	rst $38                                          ; $774e: $ff
	inc b                                            ; $774f: $04
	add [hl]                                         ; $7750: $86
	add hl, bc                                       ; $7751: $09
	jr nz, jr_00f_76f2                               ; $7752: $20 $9e

	add hl, bc                                       ; $7754: $09
	nop                                              ; $7755: $00
	rst $38                                          ; $7756: $ff
	rst $38                                          ; $7757: $ff
	db $10                                           ; $7758: $10
	ld a, [hl-]                                      ; $7759: $3a
	ld [bc], a                                       ; $775a: $02
	dec bc                                           ; $775b: $0b
	ld c, d                                          ; $775c: $4a
	ld [bc], a                                       ; $775d: $02
	nop                                              ; $775e: $00
	ld bc, $0500                                     ; $775f: $01 $00 $05
	ld h, d                                          ; $7762: $62
	ld [bc], a                                       ; $7763: $02
	nop                                              ; $7764: $00
	ld [bc], a                                       ; $7765: $02
	nop                                              ; $7766: $00
	jr nz, jr_00f_77df                               ; $7767: $20 $76

	ld [bc], a                                       ; $7769: $02
	nop                                              ; $776a: $00
	rst $38                                          ; $776b: $ff
	rst $38                                          ; $776c: $ff
	dec b                                            ; $776d: $05

jr_00f_776e:
	sbc d                                            ; $776e: $9a
	ld [bc], a                                       ; $776f: $02
	nop                                              ; $7770: $00

jr_00f_7771:
	ld [bc], a                                       ; $7771: $02
	nop                                              ; $7772: $00
	jr nz, @-$50                                     ; $7773: $20 $ae

	ld [bc], a                                       ; $7775: $02
	nop                                              ; $7776: $00
	rst $38                                          ; $7777: $ff
	rst $38                                          ; $7778: $ff
	db $10                                           ; $7779: $10
	sub $02                                          ; $777a: $d6 $02
	dec bc                                           ; $777c: $0b
	ld [$0002], a                                    ; $777d: $ea $02 $00
	ld bc, $0500                                     ; $7780: $01 $00 $05
	cp $02                                           ; $7783: $fe $02
	jr nz, jr_00f_7799                               ; $7785: $20 $12

	inc bc                                           ; $7787: $03
	nop                                              ; $7788: $00
	rst $38                                          ; $7789: $ff
	rst $38                                          ; $778a: $ff
	dec b                                            ; $778b: $05
	ld h, $03                                        ; $778c: $26 $03
	jr nz, jr_00f_77ca                               ; $778e: $20 $3a

	inc bc                                           ; $7790: $03
	nop                                              ; $7791: $00
	rst $38                                          ; $7792: $ff
	rst $38                                          ; $7793: $ff
	db $10                                           ; $7794: $10
	ld c, [hl]                                       ; $7795: $4e
	inc bc                                           ; $7796: $03
	dec bc                                           ; $7797: $0b
	ld h, [hl]                                       ; $7798: $66

jr_00f_7799:
	inc bc                                           ; $7799: $03
	nop                                              ; $779a: $00
	ld bc, $0500                                     ; $779b: $01 $00 $05
	ld a, [hl]                                       ; $779e: $7e
	inc bc                                           ; $779f: $03
	jr nz, @-$68                                     ; $77a0: $20 $96

	inc bc                                           ; $77a2: $03
	nop                                              ; $77a3: $00

jr_00f_77a4:
	rst $38                                          ; $77a4: $ff
	rst $38                                          ; $77a5: $ff
	dec b                                            ; $77a6: $05
	xor [hl]                                         ; $77a7: $ae
	inc bc                                           ; $77a8: $03
	jr nz, jr_00f_7771                               ; $77a9: $20 $c6

	inc bc                                           ; $77ab: $03
	nop                                              ; $77ac: $00
	rst $38                                          ; $77ad: $ff

jr_00f_77ae:
	rst $38                                          ; $77ae: $ff
	dec bc                                           ; $77af: $0b
	ld c, d                                          ; $77b0: $4a
	dec bc                                           ; $77b1: $0b
	add hl, bc                                       ; $77b2: $09
	ld h, [hl]                                       ; $77b3: $66
	dec bc                                           ; $77b4: $0b
	add hl, bc                                       ; $77b5: $09
	add d                                            ; $77b6: $82
	dec bc                                           ; $77b7: $0b
	dec bc                                           ; $77b8: $0b

jr_00f_77b9:
	sbc [hl]                                         ; $77b9: $9e
	dec bc                                           ; $77ba: $0b
	nop                                              ; $77bb: $00
	ld bc, $1100                                     ; $77bc: $01 $00 $11
	cp d                                             ; $77bf: $ba
	dec bc                                           ; $77c0: $0b
	nop                                              ; $77c1: $00
	ld [bc], a                                       ; $77c2: $02
	nop                                              ; $77c3: $00
	jr nz, jr_00f_77a4                               ; $77c4: $20 $de

	dec bc                                           ; $77c6: $0b
	nop                                              ; $77c7: $00
	rst $38                                          ; $77c8: $ff
	rst $38                                          ; $77c9: $ff

jr_00f_77ca:
	ld a, [bc]                                       ; $77ca: $0a
	ld b, $0c                                        ; $77cb: $06 $0c
	ld a, [bc]                                       ; $77cd: $0a
	ld l, $0c                                        ; $77ce: $2e $0c
	ld a, [bc]                                       ; $77d0: $0a
	ld b, $0c                                        ; $77d1: $06 $0c
	nop                                              ; $77d3: $00
	ld [bc], a                                       ; $77d4: $02
	nop                                              ; $77d5: $00
	jr nz, jr_00f_7806                               ; $77d6: $20 $2e

	inc c                                            ; $77d8: $0c
	nop                                              ; $77d9: $00
	rst $38                                          ; $77da: $ff
	rst $38                                          ; $77db: $ff
	dec bc                                           ; $77dc: $0b
	ld d, [hl]                                       ; $77dd: $56
	inc c                                            ; $77de: $0c

jr_00f_77df:
	add hl, bc                                       ; $77df: $09
	ld l, d                                          ; $77e0: $6a
	inc c                                            ; $77e1: $0c
	add hl, bc                                       ; $77e2: $09
	ld a, [hl]                                       ; $77e3: $7e
	inc c                                            ; $77e4: $0c
	dec bc                                           ; $77e5: $0b
	sub [hl]                                         ; $77e6: $96
	inc c                                            ; $77e7: $0c
	nop                                              ; $77e8: $00
	ld bc, $1100                                     ; $77e9: $01 $00 $11
	xor d                                            ; $77ec: $aa

jr_00f_77ed:
	inc c                                            ; $77ed: $0c
	jr nz, jr_00f_77ae                               ; $77ee: $20 $be

	inc c                                            ; $77f0: $0c
	nop                                              ; $77f1: $00
	rst $38                                          ; $77f2: $ff
	rst $38                                          ; $77f3: $ff
	ld a, [bc]                                       ; $77f4: $0a
	sub $0c                                          ; $77f5: $d6 $0c
	ld a, [bc]                                       ; $77f7: $0a
	xor $0c                                          ; $77f8: $ee $0c
	ld a, [bc]                                       ; $77fa: $0a
	sub $0c                                          ; $77fb: $d6 $0c
	jr nz, jr_00f_77ed                               ; $77fd: $20 $ee

	inc c                                            ; $77ff: $0c
	nop                                              ; $7800: $00
	rst $38                                          ; $7801: $ff
	rst $38                                          ; $7802: $ff
	dec bc                                           ; $7803: $0b
	ld b, $0d                                        ; $7804: $06 $0d

jr_00f_7806:
	add hl, bc                                       ; $7806: $09
	ld d, $0d                                        ; $7807: $16 $0d
	add hl, bc                                       ; $7809: $09
	ld h, $0d                                        ; $780a: $26 $0d
	dec bc                                           ; $780c: $0b
	ld [hl], $0d                                     ; $780d: $36 $0d
	nop                                              ; $780f: $00
	ld bc, $1100                                     ; $7810: $01 $00 $11
	ld b, [hl]                                       ; $7813: $46
	dec c                                            ; $7814: $0d
	jr nz, jr_00f_786d                               ; $7815: $20 $56

	dec c                                            ; $7817: $0d
	nop                                              ; $7818: $00
	rst $38                                          ; $7819: $ff
	rst $38                                          ; $781a: $ff
	ld a, [bc]                                       ; $781b: $0a
	ld h, [hl]                                       ; $781c: $66
	dec c                                            ; $781d: $0d
	ld a, [bc]                                       ; $781e: $0a
	halt                                             ; $781f: $76
	dec c                                            ; $7820: $0d
	ld a, [bc]                                       ; $7821: $0a
	ld h, [hl]                                       ; $7822: $66

jr_00f_7823:
	dec c                                            ; $7823: $0d
	jr nz, @+$78                                     ; $7824: $20 $76

	dec c                                            ; $7826: $0d
	nop                                              ; $7827: $00
	rst $38                                          ; $7828: $ff
	rst $38                                          ; $7829: $ff
	ld a, [bc]                                       ; $782a: $0a
	sbc $03                                          ; $782b: $de $03
	ld a, [bc]                                       ; $782d: $0a
	ldh a, [c]                                       ; $782e: $f2
	inc bc                                           ; $782f: $03
	ld a, [bc]                                       ; $7830: $0a
	ld b, $04                                        ; $7831: $06 $04
	ld a, [bc]                                       ; $7833: $0a
	ld a, [de]                                       ; $7834: $1a
	inc b                                            ; $7835: $04
	ld a, [bc]                                       ; $7836: $0a
	ld l, $04                                        ; $7837: $2e $04
	ld a, [bc]                                       ; $7839: $0a
	ld b, d                                          ; $783a: $42
	inc b                                            ; $783b: $04
	ld a, [bc]                                       ; $783c: $0a
	ld d, [hl]                                       ; $783d: $56
	inc b                                            ; $783e: $04
	ld a, [bc]                                       ; $783f: $0a
	ld l, d                                          ; $7840: $6a
	inc b                                            ; $7841: $04
	nop                                              ; $7842: $00
	ld bc, $0000                                     ; $7843: $01 $00 $00
	ld [bc], a                                       ; $7846: $02
	nop                                              ; $7847: $00
	jr nz, @-$7c                                     ; $7848: $20 $82

	inc b                                            ; $784a: $04
	nop                                              ; $784b: $00
	rst $38                                          ; $784c: $ff
	rst $38                                          ; $784d: $ff
	ld a, [bc]                                       ; $784e: $0a
	sbc [hl]                                         ; $784f: $9e
	inc b                                            ; $7850: $04
	ld a, [bc]                                       ; $7851: $0a
	or [hl]                                          ; $7852: $b6
	inc b                                            ; $7853: $04
	nop                                              ; $7854: $00
	ld [bc], a                                       ; $7855: $02
	nop                                              ; $7856: $00
	jr nz, jr_00f_7823                               ; $7857: $20 $ca

	inc b                                            ; $7859: $04
	nop                                              ; $785a: $00
	rst $38                                          ; $785b: $ff
	rst $38                                          ; $785c: $ff
	ld a, [bc]                                       ; $785d: $0a
	and $04                                          ; $785e: $e6 $04
	ld a, [bc]                                       ; $7860: $0a
	cp $04                                           ; $7861: $fe $04
	ld a, [bc]                                       ; $7863: $0a

jr_00f_7864:
	ld d, $05                                        ; $7864: $16 $05
	ld a, [bc]                                       ; $7866: $0a
	ld l, $05                                        ; $7867: $2e $05
	ld a, [bc]                                       ; $7869: $0a
	ld b, [hl]                                       ; $786a: $46
	dec b                                            ; $786b: $05
	ld a, [bc]                                       ; $786c: $0a

jr_00f_786d:
	ld e, [hl]                                       ; $786d: $5e
	dec b                                            ; $786e: $05
	ld a, [bc]                                       ; $786f: $0a
	halt                                             ; $7870: $76
	dec b                                            ; $7871: $05
	ld a, [bc]                                       ; $7872: $0a
	adc [hl]                                         ; $7873: $8e
	dec b                                            ; $7874: $05
	nop                                              ; $7875: $00
	ld bc, $2000                                     ; $7876: $01 $00 $20
	and [hl]                                         ; $7879: $a6
	dec b                                            ; $787a: $05
	nop                                              ; $787b: $00
	rst $38                                          ; $787c: $ff
	rst $38                                          ; $787d: $ff
	ld a, [bc]                                       ; $787e: $0a
	jp nz, $0a05                                     ; $787f: $c2 $05 $0a

	jp c, $2005                                      ; $7882: $da $05 $20

	ldh a, [c]                                       ; $7885: $f2
	dec b                                            ; $7886: $05
	nop                                              ; $7887: $00
	rst $38                                          ; $7888: $ff
	rst $38                                          ; $7889: $ff
	ld a, [bc]                                       ; $788a: $0a
	ld a, [bc]                                       ; $788b: $0a
	ld b, $0a                                        ; $788c: $06 $0a
	ld a, [de]                                       ; $788e: $1a
	ld b, $0a                                        ; $788f: $06 $0a
	ld a, [hl+]                                      ; $7891: $2a
	ld b, $0a                                        ; $7892: $06 $0a
	ld a, [hl-]                                      ; $7894: $3a
	ld b, $0a                                        ; $7895: $06 $0a
	ld c, d                                          ; $7897: $4a

jr_00f_7898:
	ld b, $0a                                        ; $7898: $06 $0a
	ld e, d                                          ; $789a: $5a
	ld b, $0a                                        ; $789b: $06 $0a
	ld l, d                                          ; $789d: $6a
	ld b, $0a                                        ; $789e: $06 $0a
	ld a, d                                          ; $78a0: $7a
	ld b, $00                                        ; $78a1: $06 $00
	ld bc, $2000                                     ; $78a3: $01 $00 $20
	adc d                                            ; $78a6: $8a
	ld b, $00                                        ; $78a7: $06 $00
	rst $38                                          ; $78a9: $ff
	rst $38                                          ; $78aa: $ff
	ld a, [bc]                                       ; $78ab: $0a
	sbc d                                            ; $78ac: $9a
	ld b, $0a                                        ; $78ad: $06 $0a
	xor d                                            ; $78af: $aa
	ld b, $20                                        ; $78b0: $06 $20
	cp d                                             ; $78b2: $ba
	ld b, $00                                        ; $78b3: $06 $00
	rst $38                                          ; $78b5: $ff
	rst $38                                          ; $78b6: $ff
	dec bc                                           ; $78b7: $0b
	ld h, [hl]                                       ; $78b8: $66
	inc d                                            ; $78b9: $14
	dec bc                                           ; $78ba: $0b
	halt                                             ; $78bb: $76
	inc d                                            ; $78bc: $14
	dec bc                                           ; $78bd: $0b
	ld h, [hl]                                       ; $78be: $66
	inc d                                            ; $78bf: $14
	dec bc                                           ; $78c0: $0b
	halt                                             ; $78c1: $76
	inc d                                            ; $78c2: $14
	nop                                              ; $78c3: $00
	ld bc, $0e00                                     ; $78c4: $01 $00 $0e
	add [hl]                                         ; $78c7: $86
	inc d                                            ; $78c8: $14
	nop                                              ; $78c9: $00
	ld [bc], a                                       ; $78ca: $02
	nop                                              ; $78cb: $00
	jr nz, jr_00f_7864                               ; $78cc: $20 $96

	inc d                                            ; $78ce: $14
	nop                                              ; $78cf: $00
	rst $38                                          ; $78d0: $ff
	rst $38                                          ; $78d1: $ff
	ld c, $ae                                        ; $78d2: $0e $ae
	inc d                                            ; $78d4: $14
	nop                                              ; $78d5: $00
	ld [bc], a                                       ; $78d6: $02
	nop                                              ; $78d7: $00
	jr nz, jr_00f_7898                               ; $78d8: $20 $be

	inc d                                            ; $78da: $14
	nop                                              ; $78db: $00
	rst $38                                          ; $78dc: $ff
	rst $38                                          ; $78dd: $ff
	dec bc                                           ; $78de: $0b
	sub $14                                          ; $78df: $d6 $14
	dec bc                                           ; $78e1: $0b
	and $14                                          ; $78e2: $e6 $14
	dec bc                                           ; $78e4: $0b
	sub $14                                          ; $78e5: $d6 $14
	dec bc                                           ; $78e7: $0b
	and $14                                          ; $78e8: $e6 $14
	nop                                              ; $78ea: $00
	ld bc, $0e00                                     ; $78eb: $01 $00 $0e
	or $14                                           ; $78ee: $f6 $14
	jr nz, jr_00f_78f8                               ; $78f0: $20 $06

	dec d                                            ; $78f2: $15
	nop                                              ; $78f3: $00
	rst $38                                          ; $78f4: $ff
	rst $38                                          ; $78f5: $ff
	ld c, $16                                        ; $78f6: $0e $16

jr_00f_78f8:
	dec d                                            ; $78f8: $15
	jr nz, jr_00f_7921                               ; $78f9: $20 $26

	dec d                                            ; $78fb: $15
	nop                                              ; $78fc: $00
	rst $38                                          ; $78fd: $ff
	rst $38                                          ; $78fe: $ff
	dec bc                                           ; $78ff: $0b
	ld [hl], $15                                     ; $7900: $36 $15
	dec bc                                           ; $7902: $0b
	ld b, [hl]                                       ; $7903: $46
	dec d                                            ; $7904: $15
	dec bc                                           ; $7905: $0b
	ld [hl], $15                                     ; $7906: $36 $15
	dec bc                                           ; $7908: $0b
	ld b, [hl]                                       ; $7909: $46
	dec d                                            ; $790a: $15
	nop                                              ; $790b: $00
	ld bc, $0e00                                     ; $790c: $01 $00 $0e
	ld d, [hl]                                       ; $790f: $56

jr_00f_7910:
	dec d                                            ; $7910: $15
	jr nz, @+$68                                     ; $7911: $20 $66

	dec d                                            ; $7913: $15
	nop                                              ; $7914: $00
	rst $38                                          ; $7915: $ff
	rst $38                                          ; $7916: $ff
	ld c, $76                                        ; $7917: $0e $76
	dec d                                            ; $7919: $15
	jr nz, @-$78                                     ; $791a: $20 $86

	dec d                                            ; $791c: $15
	nop                                              ; $791d: $00
	rst $38                                          ; $791e: $ff
	rst $38                                          ; $791f: $ff
	inc bc                                           ; $7920: $03

jr_00f_7921:
	halt                                             ; $7921: $76
	ld de, $0100                                     ; $7922: $11 $00 $01
	nop                                              ; $7925: $00
	dec b                                            ; $7926: $05
	adc [hl]                                         ; $7927: $8e
	ld de, $a604                                     ; $7928: $11 $04 $a6
	ld de, $0200                                     ; $792b: $11 $00 $02
	nop                                              ; $792e: $00
	jr nz, @-$40                                     ; $792f: $20 $be

	ld de, $ff00                                     ; $7931: $11 $00 $ff
	rst $38                                          ; $7934: $ff
	add hl, bc                                       ; $7935: $09
	sbc $11                                          ; $7936: $de $11
	add hl, bc                                       ; $7938: $09
	or $11                                           ; $7939: $f6 $11
	nop                                              ; $793b: $00
	ld [bc], a                                       ; $793c: $02
	nop                                              ; $793d: $00
	jr nz, jr_00f_7952                               ; $793e: $20 $12

	ld [de], a                                       ; $7940: $12
	nop                                              ; $7941: $00
	rst $38                                          ; $7942: $ff
	rst $38                                          ; $7943: $ff
	inc bc                                           ; $7944: $03
	ld [hl], $12                                     ; $7945: $36 $12
	nop                                              ; $7947: $00
	ld bc, $0500                                     ; $7948: $01 $00 $05
	ld c, d                                          ; $794b: $4a
	ld [de], a                                       ; $794c: $12
	inc b                                            ; $794d: $04
	ld e, [hl]                                       ; $794e: $5e
	ld [de], a                                       ; $794f: $12
	jr nz, jr_00f_79c4                               ; $7950: $20 $72

jr_00f_7952:
	ld [de], a                                       ; $7952: $12
	nop                                              ; $7953: $00
	rst $38                                          ; $7954: $ff
	rst $38                                          ; $7955: $ff
	add hl, bc                                       ; $7956: $09
	adc d                                            ; $7957: $8a
	ld [de], a                                       ; $7958: $12
	add hl, bc                                       ; $7959: $09
	sbc [hl]                                         ; $795a: $9e
	ld [de], a                                       ; $795b: $12
	jr nz, jr_00f_7910                               ; $795c: $20 $b2

	ld [de], a                                       ; $795e: $12
	nop                                              ; $795f: $00
	rst $38                                          ; $7960: $ff
	rst $38                                          ; $7961: $ff
	inc bc                                           ; $7962: $03
	add $12                                          ; $7963: $c6 $12
	nop                                              ; $7965: $00

jr_00f_7966:
	ld bc, $0500                                     ; $7966: $01 $00 $05
	sub $12                                          ; $7969: $d6 $12
	inc b                                            ; $796b: $04
	and $12                                          ; $796c: $e6 $12
	jr nz, jr_00f_7966                               ; $796e: $20 $f6

	ld [de], a                                       ; $7970: $12
	nop                                              ; $7971: $00
	rst $38                                          ; $7972: $ff
	rst $38                                          ; $7973: $ff
	add hl, bc                                       ; $7974: $09

jr_00f_7975:
	ld b, $13                                        ; $7975: $06 $13
	add hl, bc                                       ; $7977: $09
	ld d, $13                                        ; $7978: $16 $13

jr_00f_797a:
	jr nz, jr_00f_79a2                               ; $797a: $20 $26

	inc de                                           ; $797c: $13
	nop                                              ; $797d: $00
	rst $38                                          ; $797e: $ff
	rst $38                                          ; $797f: $ff
	add hl, bc                                       ; $7980: $09
	sbc [hl]                                         ; $7981: $9e
	ld c, $09                                        ; $7982: $0e $09
	jp nz, $090e                                     ; $7984: $c2 $0e $09

	sbc [hl]                                         ; $7987: $9e
	ld c, $09                                        ; $7988: $0e $09
	jp nz, $000e                                     ; $798a: $c2 $0e $00

	ld bc, $0000                                     ; $798d: $01 $00 $00
	ld [bc], a                                       ; $7990: $02
	nop                                              ; $7991: $00
	jr nz, jr_00f_797a                               ; $7992: $20 $e6

	ld c, $00                                        ; $7994: $0e $00
	rst $38                                          ; $7996: $ff
	rst $38                                          ; $7997: $ff
	nop                                              ; $7998: $00
	ld [bc], a                                       ; $7999: $02
	nop                                              ; $799a: $00
	jr nz, @+$08                                     ; $799b: $20 $06

	rrca                                             ; $799d: $0f
	nop                                              ; $799e: $00
	rst $38                                          ; $799f: $ff
	rst $38                                          ; $79a0: $ff
	add hl, bc                                       ; $79a1: $09

jr_00f_79a2:
	ld h, $0f                                        ; $79a2: $26 $0f
	add hl, bc                                       ; $79a4: $09
	ld [hl], $0f                                     ; $79a5: $36 $0f
	add hl, bc                                       ; $79a7: $09

jr_00f_79a8:
	ld h, $0f                                        ; $79a8: $26 $0f
	add hl, bc                                       ; $79aa: $09
	ld [hl], $0f                                     ; $79ab: $36 $0f
	nop                                              ; $79ad: $00
	ld bc, $2000                                     ; $79ae: $01 $00 $20
	ld b, [hl]                                       ; $79b1: $46
	rrca                                             ; $79b2: $0f
	nop                                              ; $79b3: $00
	rst $38                                          ; $79b4: $ff
	rst $38                                          ; $79b5: $ff
	jr nz, jr_00f_7a0e                               ; $79b6: $20 $56

	rrca                                             ; $79b8: $0f
	nop                                              ; $79b9: $00
	rst $38                                          ; $79ba: $ff
	rst $38                                          ; $79bb: $ff
	add hl, bc                                       ; $79bc: $09
	ld h, [hl]                                       ; $79bd: $66
	rrca                                             ; $79be: $0f
	add hl, bc                                       ; $79bf: $09
	ld a, d                                          ; $79c0: $7a
	rrca                                             ; $79c1: $0f
	add hl, bc                                       ; $79c2: $09

jr_00f_79c3:
	ld h, [hl]                                       ; $79c3: $66

jr_00f_79c4:
	rrca                                             ; $79c4: $0f
	add hl, bc                                       ; $79c5: $09
	ld a, d                                          ; $79c6: $7a
	rrca                                             ; $79c7: $0f
	nop                                              ; $79c8: $00
	ld bc, $2000                                     ; $79c9: $01 $00 $20
	adc [hl]                                         ; $79cc: $8e
	rrca                                             ; $79cd: $0f
	nop                                              ; $79ce: $00
	rst $38                                          ; $79cf: $ff
	rst $38                                          ; $79d0: $ff
	jr nz, jr_00f_7975                               ; $79d1: $20 $a2

jr_00f_79d3:
	rrca                                             ; $79d3: $0f
	nop                                              ; $79d4: $00
	rst $38                                          ; $79d5: $ff
	rst $38                                          ; $79d6: $ff
	inc e                                            ; $79d7: $1c
	ld a, [de]                                       ; $79d8: $1a
	jr jr_00f_79db                                   ; $79d9: $18 $00

jr_00f_79db:
	ld bc, $0900                                     ; $79db: $01 $00 $09
	ld [hl], $18                                     ; $79de: $36 $18
	add hl, bc                                       ; $79e0: $09
	ld d, [hl]                                       ; $79e1: $56
	jr @+$0b                                         ; $79e2: $18 $09

	ld a, d                                          ; $79e4: $7a
	jr jr_00f_79f0                                   ; $79e5: $18 $09

	and d                                            ; $79e7: $a2
	jr jr_00f_79ea                                   ; $79e8: $18 $00

jr_00f_79ea:
	ld [bc], a                                       ; $79ea: $02
	nop                                              ; $79eb: $00
	jr nz, jr_00f_79a8                               ; $79ec: $20 $ba

	jr jr_00f_79f0                                   ; $79ee: $18 $00

jr_00f_79f0:
	rst $38                                          ; $79f0: $ff
	rst $38                                          ; $79f1: $ff
	rrca                                             ; $79f2: $0f
	jp c, $0f18                                      ; $79f3: $da $18 $0f

	or $18                                           ; $79f6: $f6 $18
	nop                                              ; $79f8: $00
	ld [bc], a                                       ; $79f9: $02
	nop                                              ; $79fa: $00
	jr nz, jr_00f_7a0f                               ; $79fb: $20 $12

	add hl, de                                       ; $79fd: $19
	nop                                              ; $79fe: $00
	rst $38                                          ; $79ff: $ff
	rst $38                                          ; $7a00: $ff
	inc e                                            ; $7a01: $1c
	ld [hl], $19                                     ; $7a02: $36 $19
	nop                                              ; $7a04: $00
	ld bc, $0900                                     ; $7a05: $01 $00 $09
	ld c, [hl]                                       ; $7a08: $4e
	add hl, de                                       ; $7a09: $19
	add hl, bc                                       ; $7a0a: $09
	ld h, [hl]                                       ; $7a0b: $66
	add hl, de                                       ; $7a0c: $19
	add hl, bc                                       ; $7a0d: $09

jr_00f_7a0e:
	ld a, [hl]                                       ; $7a0e: $7e

jr_00f_7a0f:
	add hl, de                                       ; $7a0f: $19
	add hl, bc                                       ; $7a10: $09
	sub [hl]                                         ; $7a11: $96
	add hl, de                                       ; $7a12: $19
	jr nz, jr_00f_79c3                               ; $7a13: $20 $ae

	add hl, de                                       ; $7a15: $19
	nop                                              ; $7a16: $00

jr_00f_7a17:
	rst $38                                          ; $7a17: $ff
	rst $38                                          ; $7a18: $ff
	rrca                                             ; $7a19: $0f
	add $19                                          ; $7a1a: $c6 $19
	rrca                                             ; $7a1c: $0f
	sbc $19                                          ; $7a1d: $de $19
	jr nz, jr_00f_7a17                               ; $7a1f: $20 $f6

jr_00f_7a21:
	add hl, de                                       ; $7a21: $19
	nop                                              ; $7a22: $00
	rst $38                                          ; $7a23: $ff
	rst $38                                          ; $7a24: $ff
	inc e                                            ; $7a25: $1c
	ld c, $1a                                        ; $7a26: $0e $1a
	nop                                              ; $7a28: $00
	ld bc, $0900                                     ; $7a29: $01 $00 $09
	ld e, $1a                                        ; $7a2c: $1e $1a
	add hl, bc                                       ; $7a2e: $09
	ld l, $1a                                        ; $7a2f: $2e $1a
	add hl, bc                                       ; $7a31: $09
	ld a, $1a                                        ; $7a32: $3e $1a
	add hl, bc                                       ; $7a34: $09
	ld c, [hl]                                       ; $7a35: $4e
	ld a, [de]                                       ; $7a36: $1a
	jr nz, jr_00f_7a97                               ; $7a37: $20 $5e

	ld a, [de]                                       ; $7a39: $1a
	nop                                              ; $7a3a: $00
	rst $38                                          ; $7a3b: $ff
	rst $38                                          ; $7a3c: $ff
	rrca                                             ; $7a3d: $0f
	ld l, [hl]                                       ; $7a3e: $6e
	ld a, [de]                                       ; $7a3f: $1a
	rrca                                             ; $7a40: $0f
	ld a, [hl]                                       ; $7a41: $7e
	ld a, [de]                                       ; $7a42: $1a
	jr nz, jr_00f_79d3                               ; $7a43: $20 $8e

	ld a, [de]                                       ; $7a45: $1a
	nop                                              ; $7a46: $00
	rst $38                                          ; $7a47: $ff
	rst $38                                          ; $7a48: $ff
	rrca                                             ; $7a49: $0f
	adc [hl]                                         ; $7a4a: $8e
	inc h                                            ; $7a4b: $24
	db $10                                           ; $7a4c: $10
	xor [hl]                                         ; $7a4d: $ae
	inc h                                            ; $7a4e: $24
	ld [$24ce], sp                                   ; $7a4f: $08 $ce $24
	add hl, bc                                       ; $7a52: $09
	ld a, [$0024]                                    ; $7a53: $fa $24 $00
	ld bc, $0400                                     ; $7a56: $01 $00 $04
	ld h, $25                                        ; $7a59: $26 $25
	ld b, $56                                        ; $7a5b: $06 $56
	dec h                                            ; $7a5d: $25
	ld b, $8a                                        ; $7a5e: $06 $8a
	dec h                                            ; $7a60: $25
	jr nz, jr_00f_7a21                               ; $7a61: $20 $be

	dec h                                            ; $7a63: $25
	nop                                              ; $7a64: $00
	rst $38                                          ; $7a65: $ff
	rst $38                                          ; $7a66: $ff
	inc b                                            ; $7a67: $04
	ldh [c], a                                       ; $7a68: $e2
	dec h                                            ; $7a69: $25
	ld b, $16                                        ; $7a6a: $06 $16
	ld h, $06                                        ; $7a6c: $26 $06
	ld c, d                                          ; $7a6e: $4a
	ld h, $06                                        ; $7a6f: $26 $06
	halt                                             ; $7a71: $76
	ld h, $06                                        ; $7a72: $26 $06
	ld c, d                                          ; $7a74: $4a
	ld h, $20                                        ; $7a75: $26 $20
	halt                                             ; $7a77: $76
	ld h, $00                                        ; $7a78: $26 $00
	rst $38                                          ; $7a7a: $ff
	rst $38                                          ; $7a7b: $ff
	ld b, $4a                                        ; $7a7c: $06 $4a
	ld hl, $6e06                                     ; $7a7e: $21 $06 $6e
	ld hl, $9606                                     ; $7a81: $21 $06 $96
	ld hl, $ba06                                     ; $7a84: $21 $06 $ba
	ld hl, $e20d                                     ; $7a87: $21 $0d $e2
	ld hl, $0602                                     ; $7a8a: $21 $02 $06
	ld [hl+], a                                      ; $7a8d: $22
	nop                                              ; $7a8e: $00
	ld bc, $0600                                     ; $7a8f: $01 $00 $06
	ld l, $22                                        ; $7a92: $2e $22
	ld b, $56                                        ; $7a94: $06 $56
	ld [hl+], a                                      ; $7a96: $22

jr_00f_7a97:
	ld b, $7e                                        ; $7a97: $06 $7e
	ld [hl+], a                                      ; $7a99: $22
	ld b, $ae                                        ; $7a9a: $06 $ae
	ld [hl+], a                                      ; $7a9c: $22
	ld b, $de                                        ; $7a9d: $06 $de
	ld [hl+], a                                      ; $7a9f: $22
	jr nz, @+$10                                     ; $7aa0: $20 $0e

	inc hl                                           ; $7aa2: $23
	nop                                              ; $7aa3: $00
	rst $38                                          ; $7aa4: $ff
	rst $38                                          ; $7aa5: $ff
	ld b, $3e                                        ; $7aa6: $06 $3e
	inc hl                                           ; $7aa8: $23
	ld b, $66                                        ; $7aa9: $06 $66
	inc hl                                           ; $7aab: $23
	ld b, $8e                                        ; $7aac: $06 $8e
	inc hl                                           ; $7aae: $23
	ld b, $be                                        ; $7aaf: $06 $be
	inc hl                                           ; $7ab1: $23
	ld b, $ee                                        ; $7ab2: $06 $ee
	inc hl                                           ; $7ab4: $23

jr_00f_7ab5:
	ld b, $1e                                        ; $7ab5: $06 $1e
	inc h                                            ; $7ab7: $24
	ld b, $56                                        ; $7ab8: $06 $56
	inc h                                            ; $7aba: $24
	ld b, $1e                                        ; $7abb: $06 $1e
	inc h                                            ; $7abd: $24
	jr nz, jr_00f_7b16                               ; $7abe: $20 $56

	inc h                                            ; $7ac0: $24
	nop                                              ; $7ac1: $00
	rst $38                                          ; $7ac2: $ff
	rst $38                                          ; $7ac3: $ff
	ld c, $9e                                        ; $7ac4: $0e $9e
	ld a, [de]                                       ; $7ac6: $1a
	ld [$1ace], sp                                   ; $7ac7: $08 $ce $1a
	add hl, bc                                       ; $7aca: $09
	ld [bc], a                                       ; $7acb: $02
	dec de                                           ; $7acc: $1b
	add hl, bc                                       ; $7acd: $09
	ld [hl], $1b                                     ; $7ace: $36 $1b
	add hl, bc                                       ; $7ad0: $09
	ld l, d                                          ; $7ad1: $6a
	dec de                                           ; $7ad2: $1b
	nop                                              ; $7ad3: $00
	ld bc, $0900                                     ; $7ad4: $01 $00 $09
	and d                                            ; $7ad7: $a2
	dec de                                           ; $7ad8: $1b
	jr nz, jr_00f_7ab5                               ; $7ad9: $20 $da

	dec de                                           ; $7adb: $1b
	nop                                              ; $7adc: $00
	rst $38                                          ; $7add: $ff
	rst $38                                          ; $7ade: $ff
	add hl, bc                                       ; $7adf: $09
	ld c, $1c                                        ; $7ae0: $0e $1c
	add hl, bc                                       ; $7ae2: $09
	ld b, [hl]                                       ; $7ae3: $46
	inc e                                            ; $7ae4: $1c
	add hl, bc                                       ; $7ae5: $09
	ld a, [hl]                                       ; $7ae6: $7e
	inc e                                            ; $7ae7: $1c
	add hl, bc                                       ; $7ae8: $09
	or [hl]                                          ; $7ae9: $b6
	inc e                                            ; $7aea: $1c
	add hl, bc                                       ; $7aeb: $09
	xor $1c                                          ; $7aec: $ee $1c
	add hl, bc                                       ; $7aee: $09
	ld h, $1d                                        ; $7aef: $26 $1d
	add hl, bc                                       ; $7af1: $09
	ld e, [hl]                                       ; $7af2: $5e
	dec e                                            ; $7af3: $1d
	add hl, bc                                       ; $7af4: $09
	ld h, $1d                                        ; $7af5: $26 $1d
	jr nz, @+$60                                     ; $7af7: $20 $5e

	dec e                                            ; $7af9: $1d
	nop                                              ; $7afa: $00
	rst $38                                          ; $7afb: $ff
	rst $38                                          ; $7afc: $ff
	ld bc, $26a2                                     ; $7afd: $01 $a2 $26
	nop                                              ; $7b00: $00
	ld bc, $0a00                                     ; $7b01: $01 $00 $0a
	ld [$0a26], a                                    ; $7b04: $ea $26 $0a
	ld [hl-], a                                      ; $7b07: $32
	daa                                              ; $7b08: $27
	ld a, [bc]                                       ; $7b09: $0a
	ld a, d                                          ; $7b0a: $7a
	daa                                              ; $7b0b: $27
	ld a, [bc]                                       ; $7b0c: $0a
	jp nz, $0a27                                     ; $7b0d: $c2 $27 $0a

	ld a, [bc]                                       ; $7b10: $0a
	jr z, @+$0c                                      ; $7b11: $28 $0a

	ld d, d                                          ; $7b13: $52
	jr z, jr_00f_7b20                                ; $7b14: $28 $0a

jr_00f_7b16:
	sbc d                                            ; $7b16: $9a
	jr z, jr_00f_7b23                                ; $7b17: $28 $0a

	ldh [c], a                                       ; $7b19: $e2
	jr z, jr_00f_7b3c                                ; $7b1a: $28 $20

	ld l, $29                                        ; $7b1c: $2e $29
	nop                                              ; $7b1e: $00
	rst $38                                          ; $7b1f: $ff

jr_00f_7b20:
	rst $38                                          ; $7b20: $ff
	ld a, [bc]                                       ; $7b21: $0a
	ld e, d                                          ; $7b22: $5a

jr_00f_7b23:
	add hl, hl                                       ; $7b23: $29
	ld a, [bc]                                       ; $7b24: $0a
	and d                                            ; $7b25: $a2
	add hl, hl                                       ; $7b26: $29
	ld a, [bc]                                       ; $7b27: $0a
	ld [$0a29], a                                    ; $7b28: $ea $29 $0a
	ld [hl-], a                                      ; $7b2b: $32
	ld a, [hl+]                                      ; $7b2c: $2a
	ld a, [bc]                                       ; $7b2d: $0a
	ld a, d                                          ; $7b2e: $7a
	ld a, [hl+]                                      ; $7b2f: $2a
	ld a, [bc]                                       ; $7b30: $0a
	jp nz, $0a2a                                     ; $7b31: $c2 $2a $0a

	ld a, [bc]                                       ; $7b34: $0a
	dec hl                                           ; $7b35: $2b
	ld a, [bc]                                       ; $7b36: $0a
	ld d, d                                          ; $7b37: $52
	dec hl                                           ; $7b38: $2b
	inc d                                            ; $7b39: $14
	sbc d                                            ; $7b3a: $9a
	dec hl                                           ; $7b3b: $2b

jr_00f_7b3c:
	ld de, $2be6                                     ; $7b3c: $11 $e6 $2b
	ld de, $2c1e                                     ; $7b3f: $11 $1e $2c
	ld de, $2be6                                     ; $7b42: $11 $e6 $2b
	jr nz, @+$20                                     ; $7b45: $20 $1e

	inc l                                            ; $7b47: $2c
	nop                                              ; $7b48: $00
	rst $38                                          ; $7b49: $ff
	rst $38                                          ; $7b4a: $ff
	ld [$1d96], sp                                   ; $7b4b: $08 $96 $1d
	ld b, $ca                                        ; $7b4e: $06 $ca
	dec e                                            ; $7b50: $1d
	ld [$1dfe], sp                                   ; $7b51: $08 $fe $1d
	ld b, $32                                        ; $7b54: $06 $32
	ld e, $08                                        ; $7b56: $1e $08
	ld h, [hl]                                       ; $7b58: $66
	ld e, $06                                        ; $7b59: $1e $06
	sbc d                                            ; $7b5b: $9a
	ld e, $08                                        ; $7b5c: $1e $08
	adc $1e                                          ; $7b5e: $ce $1e
	ld b, $02                                        ; $7b60: $06 $02
	rra                                              ; $7b62: $1f
	ld [$1f36], sp                                   ; $7b63: $08 $36 $1f
	add hl, bc                                       ; $7b66: $09
	ld l, d                                          ; $7b67: $6a
	rra                                              ; $7b68: $1f
	nop                                              ; $7b69: $00
	ld bc, $0a00                                     ; $7b6a: $01 $00 $0a
	sbc [hl]                                         ; $7b6d: $9e
	rra                                              ; $7b6e: $1f
	ld a, [bc]                                       ; $7b6f: $0a
	sub $1f                                          ; $7b70: $d6 $1f
	jr nz, @+$0c                                     ; $7b72: $20 $0a

	jr nz, jr_00f_7b76                               ; $7b74: $20 $00

jr_00f_7b76:
	rst $38                                          ; $7b76: $ff
	rst $38                                          ; $7b77: $ff
	rrca                                             ; $7b78: $0f
	ld a, [hl-]                                      ; $7b79: $3a
	jr nz, jr_00f_7b86                               ; $7b7a: $20 $0a

	ld [hl], d                                       ; $7b7c: $72
	jr nz, jr_00f_7b89                               ; $7b7d: $20 $0a

	and [hl]                                         ; $7b7f: $a6

jr_00f_7b80:
	jr nz, jr_00f_7b8c                               ; $7b80: $20 $0a

	jp c, $0a20                                      ; $7b82: $da $20 $0a

	ld [de], a                                       ; $7b85: $12

jr_00f_7b86:
	ld hl, $da0a                                     ; $7b86: $21 $0a $da

jr_00f_7b89:
	jr nz, jr_00f_7bab                               ; $7b89: $20 $20

	ld [de], a                                       ; $7b8b: $12

jr_00f_7b8c:
	ld hl, $ff00                                     ; $7b8c: $21 $00 $ff
	rst $38                                          ; $7b8f: $ff
	rlca                                             ; $7b90: $07
	ld [bc], a                                       ; $7b91: $02
	nop                                              ; $7b92: $00
	rlca                                             ; $7b93: $07
	ld [de], a                                       ; $7b94: $12
	nop                                              ; $7b95: $00
	rlca                                             ; $7b96: $07
	ld [hl+], a                                      ; $7b97: $22
	nop                                              ; $7b98: $00
	nop                                              ; $7b99: $00
	ld bc, $0900                                     ; $7b9a: $01 $00 $09
	ld [hl-], a                                      ; $7b9d: $32
	nop                                              ; $7b9e: $00
	nop                                              ; $7b9f: $00
	ld [bc], a                                       ; $7ba0: $02
	nop                                              ; $7ba1: $00
	jr nz, @+$50                                     ; $7ba2: $20 $4e

	nop                                              ; $7ba4: $00
	nop                                              ; $7ba5: $00
	rst $38                                          ; $7ba6: $ff
	rst $38                                          ; $7ba7: $ff
	dec bc                                           ; $7ba8: $0b
	ld l, d                                          ; $7ba9: $6a
	nop                                              ; $7baa: $00

jr_00f_7bab:
	dec bc                                           ; $7bab: $0b
	add d                                            ; $7bac: $82
	nop                                              ; $7bad: $00
	dec c                                            ; $7bae: $0d
	and d                                            ; $7baf: $a2
	nop                                              ; $7bb0: $00
	nop                                              ; $7bb1: $00
	ld [bc], a                                       ; $7bb2: $02
	nop                                              ; $7bb3: $00
	jr nz, jr_00f_7b80                               ; $7bb4: $20 $ca

	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	rst $38                                          ; $7bb8: $ff
	rst $38                                          ; $7bb9: $ff
	rlca                                             ; $7bba: $07
	ldh [c], a                                       ; $7bbb: $e2
	nop                                              ; $7bbc: $00
	rlca                                             ; $7bbd: $07
	ldh a, [c]                                       ; $7bbe: $f2
	nop                                              ; $7bbf: $00
	rlca                                             ; $7bc0: $07
	ld [bc], a                                       ; $7bc1: $02
	ld bc, $0100                                     ; $7bc2: $01 $00 $01
	nop                                              ; $7bc5: $00
	add hl, bc                                       ; $7bc6: $09
	ld [de], a                                       ; $7bc7: $12
	ld bc, $0200                                     ; $7bc8: $01 $00 $02
	nop                                              ; $7bcb: $00
	jr nz, jr_00f_7bfc                               ; $7bcc: $20 $2e

	ld bc, $ff00                                     ; $7bce: $01 $00 $ff
	rst $38                                          ; $7bd1: $ff
	dec bc                                           ; $7bd2: $0b
	ld c, d                                          ; $7bd3: $4a
	ld bc, $620b                                     ; $7bd4: $01 $0b $62
	ld bc, $820d                                     ; $7bd7: $01 $0d $82
	ld bc, $0200                                     ; $7bda: $01 $00 $02
	nop                                              ; $7bdd: $00
	jr nz, @-$54                                     ; $7bde: $20 $aa

	ld bc, $ff00                                     ; $7be0: $01 $00 $ff
	rst $38                                          ; $7be3: $ff
	inc [hl]                                         ; $7be4: $34
	nop                                              ; $7be5: $00
	add b                                            ; $7be6: $80
	inc b                                            ; $7be7: $04
	db $fc                                           ; $7be8: $fc
	inc b                                            ; $7be9: $04
	db $f4                                           ; $7bea: $f4
	ldh a, [c]                                       ; $7beb: $f2
	ldh a, [c]                                       ; $7bec: $f2
	ldh [c], a                                       ; $7bed: $e2
	ldh a, [c]                                       ; $7bee: $f2
	ld a, [bc]                                       ; $7bef: $0a
	ld [$0604], sp                                   ; $7bf0: $08 $04 $06
	ld h, $26                                        ; $7bf3: $26 $26
	inc h                                            ; $7bf5: $24
	ld h, $fc                                        ; $7bf6: $26 $fc
	db $f4                                           ; $7bf8: $f4
	db $f4                                           ; $7bf9: $f4
	db $fc                                           ; $7bfa: $fc
	ldh [c], a                                       ; $7bfb: $e2

jr_00f_7bfc:
	ldh [c], a                                       ; $7bfc: $e2
	di                                               ; $7bfd: $f3
	di                                               ; $7bfe: $f3
	ld [bc], a                                       ; $7bff: $02
	nop                                              ; $7c00: $00
	inc c                                            ; $7c01: $0c
	ld c, $24                                        ; $7c02: $0e $24
	dec h                                            ; $7c04: $25
	ld h, $99                                        ; $7c05: $26 $99
	ld h, $04                                        ; $7c07: $26 $04
	inc b                                            ; $7c09: $04
	db $fc                                           ; $7c0a: $fc
	db $f4                                           ; $7c0b: $f4
	di                                               ; $7c0c: $f3
	sbc $e3                                          ; $7c0d: $de $e3
	sub a                                            ; $7c0f: $97
	db $10                                           ; $7c10: $10
	inc b                                            ; $7c11: $04
	ld [bc], a                                       ; $7c12: $02
	nop                                              ; $7c13: $00
	ld h, $24                                        ; $7c14: $26 $24
	inc h                                            ; $7c16: $24
	dec h                                            ; $7c17: $25
	inc sp                                           ; $7c18: $33
	nop                                              ; $7c19: $00
	sbc e                                            ; $7c1a: $9b
	or $06                                           ; $7c1b: $f6 $06
	cp $04                                           ; $7c1d: $fe $04
	sbc $f2                                          ; $7c1f: $de $f2
	add c                                            ; $7c21: $81
	ldh [c], a                                       ; $7c22: $e2
	ld b, $0a                                        ; $7c23: $06 $0a
	ld [$2604], sp                                   ; $7c25: $08 $04 $26
	inc h                                            ; $7c28: $24
	ld h, $24                                        ; $7c29: $26 $24
	db $fc                                           ; $7c2b: $fc
	db $f4                                           ; $7c2c: $f4
	rst FarCall                                          ; $7c2d: $f7
	rst $38                                          ; $7c2e: $ff
	ldh [c], a                                       ; $7c2f: $e2
	ldh [c], a                                       ; $7c30: $e2
	di                                               ; $7c31: $f3
	di                                               ; $7c32: $f3
	ld [bc], a                                       ; $7c33: $02
	nop                                              ; $7c34: $00
	inc c                                            ; $7c35: $0c
	ld c, $24                                        ; $7c36: $0e $24
	dec h                                            ; $7c38: $25
	ld h, $26                                        ; $7c39: $26 $26
	rlca                                             ; $7c3b: $07
	inc b                                            ; $7c3c: $04
	db $fc                                           ; $7c3d: $fc
	db $f4                                           ; $7c3e: $f4
	di                                               ; $7c3f: $f3
	sbc $e3                                          ; $7c40: $de $e3
	sbc e                                            ; $7c42: $9b
	db $10                                           ; $7c43: $10
	inc b                                            ; $7c44: $04
	ld [bc], a                                       ; $7c45: $02
	nop                                              ; $7c46: $00
	sbc $24                                          ; $7c47: $de $24
	sbc [hl]                                         ; $7c49: $9e
	dec h                                            ; $7c4a: $25
	inc [hl]                                         ; $7c4b: $34
	nop                                              ; $7c4c: $00
	add b                                            ; $7c4d: $80
	inc b                                            ; $7c4e: $04
	db $fc                                           ; $7c4f: $fc
	inc b                                            ; $7c50: $04
	db $f4                                           ; $7c51: $f4
	ldh a, [c]                                       ; $7c52: $f2
	ldh a, [c]                                       ; $7c53: $f2
	ldh [c], a                                       ; $7c54: $e2
	ldh a, [c]                                       ; $7c55: $f2
	ld a, [bc]                                       ; $7c56: $0a
	ld [$0604], sp                                   ; $7c57: $08 $04 $06
	ld h, $26                                        ; $7c5a: $26 $26
	inc h                                            ; $7c5c: $24
	ld h, $fc                                        ; $7c5d: $26 $fc
	db $f4                                           ; $7c5f: $f4
	db $f4                                           ; $7c60: $f4
	db $fc                                           ; $7c61: $fc
	ldh [c], a                                       ; $7c62: $e2
	ldh [c], a                                       ; $7c63: $e2
	di                                               ; $7c64: $f3
	di                                               ; $7c65: $f3
	ld [bc], a                                       ; $7c66: $02
	nop                                              ; $7c67: $00
	inc c                                            ; $7c68: $0c
	ld c, $24                                        ; $7c69: $0e $24
	dec h                                            ; $7c6b: $25
	ld h, $99                                        ; $7c6c: $26 $99
	ld h, $04                                        ; $7c6e: $26 $04
	inc b                                            ; $7c70: $04
	db $fc                                           ; $7c71: $fc
	db $f4                                           ; $7c72: $f4
	di                                               ; $7c73: $f3
	sbc $e3                                          ; $7c74: $de $e3
	sub a                                            ; $7c76: $97
	db $10                                           ; $7c77: $10
	inc b                                            ; $7c78: $04
	ld [bc], a                                       ; $7c79: $02
	nop                                              ; $7c7a: $00
	ld h, $24                                        ; $7c7b: $26 $24
	inc h                                            ; $7c7d: $24
	dec h                                            ; $7c7e: $25
	inc [hl]                                         ; $7c7f: $34
	nop                                              ; $7c80: $00
	add b                                            ; $7c81: $80
	inc b                                            ; $7c82: $04
	db $fc                                           ; $7c83: $fc
	inc b                                            ; $7c84: $04
	db $f4                                           ; $7c85: $f4
	ldh a, [c]                                       ; $7c86: $f2
	ldh a, [c]                                       ; $7c87: $f2
	ldh [c], a                                       ; $7c88: $e2
	ldh a, [c]                                       ; $7c89: $f2
	ld a, [bc]                                       ; $7c8a: $0a
	ld [$0604], sp                                   ; $7c8b: $08 $04 $06
	inc h                                            ; $7c8e: $24
	ld h, $24                                        ; $7c8f: $26 $24
	ld h, $fc                                        ; $7c91: $26 $fc
	db $f4                                           ; $7c93: $f4
	db $f4                                           ; $7c94: $f4
	db $fc                                           ; $7c95: $fc
	ldh [c], a                                       ; $7c96: $e2
	ldh [c], a                                       ; $7c97: $e2
	di                                               ; $7c98: $f3
	di                                               ; $7c99: $f3
	ld [bc], a                                       ; $7c9a: $02
	nop                                              ; $7c9b: $00
	inc c                                            ; $7c9c: $0c
	ld c, $24                                        ; $7c9d: $0e $24
	dec h                                            ; $7c9f: $25
	ld h, $99                                        ; $7ca0: $26 $99
	ld h, $04                                        ; $7ca2: $26 $04
	inc b                                            ; $7ca4: $04
	db $fc                                           ; $7ca5: $fc
	db $f4                                           ; $7ca6: $f4
	di                                               ; $7ca7: $f3
	sbc $e3                                          ; $7ca8: $de $e3
	sub a                                            ; $7caa: $97
	db $10                                           ; $7cab: $10
	inc b                                            ; $7cac: $04
	ld [bc], a                                       ; $7cad: $02
	nop                                              ; $7cae: $00
	ld h, $24                                        ; $7caf: $26 $24
	inc h                                            ; $7cb1: $24
	dec h                                            ; $7cb2: $25
	inc [hl]                                         ; $7cb3: $34
	nop                                              ; $7cb4: $00
	sbc e                                            ; $7cb5: $9b
	or $06                                           ; $7cb6: $f6 $06
	cp $04                                           ; $7cb8: $fe $04
	sbc $f2                                          ; $7cba: $de $f2
	add b                                            ; $7cbc: $80
	ldh [c], a                                       ; $7cbd: $e2
	ld b, $0a                                        ; $7cbe: $06 $0a
	ld [$2604], sp                                   ; $7cc0: $08 $04 $26
	inc h                                            ; $7cc3: $24
	ld h, $24                                        ; $7cc4: $26 $24
	db $fc                                           ; $7cc6: $fc
	db $f4                                           ; $7cc7: $f4
	db $f4                                           ; $7cc8: $f4
	inc b                                            ; $7cc9: $04
	ldh [c], a                                       ; $7cca: $e2
	ldh [c], a                                       ; $7ccb: $e2
	di                                               ; $7ccc: $f3
	push af                                          ; $7ccd: $f5
	ld [bc], a                                       ; $7cce: $02
	nop                                              ; $7ccf: $00
	inc c                                            ; $7cd0: $0c
	ld [de], a                                       ; $7cd1: $12
	inc h                                            ; $7cd2: $24
	dec h                                            ; $7cd3: $25
	ld h, $26                                        ; $7cd4: $26 $26
	db $fc                                           ; $7cd6: $fc
	inc b                                            ; $7cd7: $04
	db $fc                                           ; $7cd8: $fc
	db $f4                                           ; $7cd9: $f4
	di                                               ; $7cda: $f3
	push hl                                          ; $7cdb: $e5
	rst SubAFromDE                                          ; $7cdc: $df
	db $e3                                           ; $7cdd: $e3
	sub a                                            ; $7cde: $97
	ld c, $10                                        ; $7cdf: $0e $10
	ld [bc], a                                       ; $7ce1: $02
	nop                                              ; $7ce2: $00
	ld h, $24                                        ; $7ce3: $26 $24
	inc h                                            ; $7ce5: $24
	dec h                                            ; $7ce6: $25
	inc sp                                           ; $7ce7: $33
	nop                                              ; $7ce8: $00
	sbc e                                            ; $7ce9: $9b
	inc b                                            ; $7cea: $04
	db $f4                                           ; $7ceb: $f4
	db $fc                                           ; $7cec: $fc
	inc b                                            ; $7ced: $04
	sbc $f2                                          ; $7cee: $de $f2
	sbc d                                            ; $7cf0: $9a
	ldh [c], a                                       ; $7cf1: $e2
	ld a, [bc]                                       ; $7cf2: $0a
	ld b, $08                                        ; $7cf3: $06 $08
	inc b                                            ; $7cf5: $04
	sbc $26                                          ; $7cf6: $de $26
	adc c                                            ; $7cf8: $89
	inc h                                            ; $7cf9: $24
	db $fc                                           ; $7cfa: $fc
	db $f4                                           ; $7cfb: $f4
	db $f4                                           ; $7cfc: $f4
	db $fc                                           ; $7cfd: $fc
	ldh [c], a                                       ; $7cfe: $e2
	ldh [c], a                                       ; $7cff: $e2
	di                                               ; $7d00: $f3
	di                                               ; $7d01: $f3
	ld [bc], a                                       ; $7d02: $02
	nop                                              ; $7d03: $00
	inc c                                            ; $7d04: $0c
	ld c, $24                                        ; $7d05: $0e $24
	dec h                                            ; $7d07: $25
	ld h, $26                                        ; $7d08: $26 $26
	inc b                                            ; $7d0a: $04
	inc b                                            ; $7d0b: $04
	db $fc                                           ; $7d0c: $fc
	db $f4                                           ; $7d0d: $f4
	di                                               ; $7d0e: $f3
	sbc $e3                                          ; $7d0f: $de $e3
	sub a                                            ; $7d11: $97
	db $10                                           ; $7d12: $10
	inc b                                            ; $7d13: $04
	ld [bc], a                                       ; $7d14: $02
	nop                                              ; $7d15: $00
	ld h, $24                                        ; $7d16: $26 $24
	inc h                                            ; $7d18: $24
	dec h                                            ; $7d19: $25
	inc [hl]                                         ; $7d1a: $34
	nop                                              ; $7d1b: $00
	add b                                            ; $7d1c: $80
	ld b, $fe                                        ; $7d1d: $06 $fe
	inc b                                            ; $7d1f: $04
	or $f2                                           ; $7d20: $f6 $f2
	ldh a, [c]                                       ; $7d22: $f2
	ldh [c], a                                       ; $7d23: $e2
	ldh a, [c]                                       ; $7d24: $f2
	ld a, [bc]                                       ; $7d25: $0a
	ld [$0604], sp                                   ; $7d26: $08 $04 $06
	inc h                                            ; $7d29: $24
	ld h, $24                                        ; $7d2a: $26 $24
	ld h, $fc                                        ; $7d2c: $26 $fc
	db $f4                                           ; $7d2e: $f4
	rlca                                             ; $7d2f: $07
	rst $38                                          ; $7d30: $ff
	ldh [c], a                                       ; $7d31: $e2
	ldh [c], a                                       ; $7d32: $e2
	di                                               ; $7d33: $f3
	di                                               ; $7d34: $f3
	ld [bc], a                                       ; $7d35: $02
	nop                                              ; $7d36: $00
	db $10                                           ; $7d37: $10
	ld c, $24                                        ; $7d38: $0e $24
	dec h                                            ; $7d3a: $25
	inc h                                            ; $7d3b: $24
	sbc c                                            ; $7d3c: $99
	ld h, $f7                                        ; $7d3d: $26 $f7
	inc b                                            ; $7d3f: $04
	db $fc                                           ; $7d40: $fc
	db $f4                                           ; $7d41: $f4
	di                                               ; $7d42: $f3
	sbc $e3                                          ; $7d43: $de $e3
	sub a                                            ; $7d45: $97
	inc c                                            ; $7d46: $0c
	inc b                                            ; $7d47: $04
	ld [bc], a                                       ; $7d48: $02
	nop                                              ; $7d49: $00
	ld h, $24                                        ; $7d4a: $26 $24
	inc h                                            ; $7d4c: $24
	dec h                                            ; $7d4d: $25
	inc sp                                           ; $7d4e: $33
	nop                                              ; $7d4f: $00
	sbc e                                            ; $7d50: $9b
	inc b                                            ; $7d51: $04
	db $f4                                           ; $7d52: $f4
	db $fc                                           ; $7d53: $fc
	inc b                                            ; $7d54: $04
	sbc $f2                                          ; $7d55: $de $f2
	sbc d                                            ; $7d57: $9a
	ldh [c], a                                       ; $7d58: $e2
	ld a, [bc]                                       ; $7d59: $0a
	ld b, $08                                        ; $7d5a: $06 $08
	inc b                                            ; $7d5c: $04
	sbc $26                                          ; $7d5d: $de $26
	adc c                                            ; $7d5f: $89
	inc h                                            ; $7d60: $24
	db $fc                                           ; $7d61: $fc
	db $f4                                           ; $7d62: $f4
	inc b                                            ; $7d63: $04
	db $f4                                           ; $7d64: $f4
	ldh [c], a                                       ; $7d65: $e2
	ldh [c], a                                       ; $7d66: $e2
	di                                               ; $7d67: $f3
	di                                               ; $7d68: $f3
	ld [bc], a                                       ; $7d69: $02
	nop                                              ; $7d6a: $00
	db $10                                           ; $7d6b: $10
	inc c                                            ; $7d6c: $0c
	inc h                                            ; $7d6d: $24
	dec h                                            ; $7d6e: $25
	ld h, $26                                        ; $7d6f: $26 $26
	db $fc                                           ; $7d71: $fc
	inc b                                            ; $7d72: $04
	db $fc                                           ; $7d73: $fc
	db $f4                                           ; $7d74: $f4
	di                                               ; $7d75: $f3
	sbc $e3                                          ; $7d76: $de $e3
	sub a                                            ; $7d78: $97
	ld c, $04                                        ; $7d79: $0e $04
	ld [bc], a                                       ; $7d7b: $02
	nop                                              ; $7d7c: $00
	ld h, $24                                        ; $7d7d: $26 $24
	inc h                                            ; $7d7f: $24
	dec h                                            ; $7d80: $25
	inc sp                                           ; $7d81: $33
	nop                                              ; $7d82: $00
	sbc e                                            ; $7d83: $9b
	inc b                                            ; $7d84: $04
	db $fc                                           ; $7d85: $fc
	db $f4                                           ; $7d86: $f4
	inc b                                            ; $7d87: $04
	sbc $f3                                          ; $7d88: $de $f3
	sbc d                                            ; $7d8a: $9a
	db $e3                                           ; $7d8b: $e3
	ld a, [bc]                                       ; $7d8c: $0a
	ld [$0406], sp                                   ; $7d8d: $08 $06 $04
	sbc $26                                          ; $7d90: $de $26
	adc l                                            ; $7d92: $8d
	inc h                                            ; $7d93: $24
	db $fc                                           ; $7d94: $fc
	db $f4                                           ; $7d95: $f4
	db $f4                                           ; $7d96: $f4
	db $fc                                           ; $7d97: $fc
	db $e3                                           ; $7d98: $e3
	db $e3                                           ; $7d99: $e3
	db $f4                                           ; $7d9a: $f4
	db $f4                                           ; $7d9b: $f4
	ld [bc], a                                       ; $7d9c: $02
	nop                                              ; $7d9d: $00
	inc c                                            ; $7d9e: $0c
	ld c, $24                                        ; $7d9f: $0e $24
	dec h                                            ; $7da1: $25
	ld h, $26                                        ; $7da2: $26 $26
	inc b                                            ; $7da4: $04
	ld a, e                                          ; $7da5: $7b
	rst SubAFromDE                                          ; $7da6: $df
	sbc [hl]                                         ; $7da7: $9e
	db $f4                                           ; $7da8: $f4
	sbc $e4                                          ; $7da9: $de $e4
	sub a                                            ; $7dab: $97
	db $10                                           ; $7dac: $10
	inc b                                            ; $7dad: $04
	ld [bc], a                                       ; $7dae: $02
	nop                                              ; $7daf: $00
	ld h, $24                                        ; $7db0: $26 $24
	inc h                                            ; $7db2: $24
	dec h                                            ; $7db3: $25
	inc sp                                           ; $7db4: $33
	nop                                              ; $7db5: $00
	sbc e                                            ; $7db6: $9b
	db $f4                                           ; $7db7: $f4
	inc b                                            ; $7db8: $04
	db $fc                                           ; $7db9: $fc
	inc b                                            ; $7dba: $04
	sbc $f2                                          ; $7dbb: $de $f2
	sbc d                                            ; $7dbd: $9a
	ldh [c], a                                       ; $7dbe: $e2
	ld b, $0a                                        ; $7dbf: $06 $0a
	ld [$de04], sp                                   ; $7dc1: $08 $04 $de
	ld h, $89                                        ; $7dc4: $26 $89
	inc h                                            ; $7dc6: $24
	db $fc                                           ; $7dc7: $fc
	db $f4                                           ; $7dc8: $f4
	db $f4                                           ; $7dc9: $f4
	db $fc                                           ; $7dca: $fc
	ldh [c], a                                       ; $7dcb: $e2
	ldh [c], a                                       ; $7dcc: $e2
	di                                               ; $7dcd: $f3
	di                                               ; $7dce: $f3
	ld [bc], a                                       ; $7dcf: $02
	nop                                              ; $7dd0: $00
	inc c                                            ; $7dd1: $0c
	ld c, $24                                        ; $7dd2: $0e $24
	dec h                                            ; $7dd4: $25
	ld h, $26                                        ; $7dd5: $26 $26
	inc b                                            ; $7dd7: $04
	inc b                                            ; $7dd8: $04
	db $fc                                           ; $7dd9: $fc
	db $f4                                           ; $7dda: $f4
	di                                               ; $7ddb: $f3
	sbc $e3                                          ; $7ddc: $de $e3
	sub a                                            ; $7dde: $97
	db $10                                           ; $7ddf: $10
	inc b                                            ; $7de0: $04
	ld [bc], a                                       ; $7de1: $02
	nop                                              ; $7de2: $00
	ld h, $24                                        ; $7de3: $26 $24
	inc h                                            ; $7de5: $24
	dec h                                            ; $7de6: $25
	inc sp                                           ; $7de7: $33
	nop                                              ; $7de8: $00
	sbc e                                            ; $7de9: $9b
	inc b                                            ; $7dea: $04
	db $f4                                           ; $7deb: $f4
	db $fc                                           ; $7dec: $fc
	inc b                                            ; $7ded: $04
	sbc $f2                                          ; $7dee: $de $f2
	sbc d                                            ; $7df0: $9a
	ldh [c], a                                       ; $7df1: $e2
	ld a, [bc]                                       ; $7df2: $0a
	ld b, $08                                        ; $7df3: $06 $08
	inc b                                            ; $7df5: $04
	sbc $26                                          ; $7df6: $de $26
	adc c                                            ; $7df8: $89
	inc h                                            ; $7df9: $24
	db $fc                                           ; $7dfa: $fc
	db $f4                                           ; $7dfb: $f4
	db $f4                                           ; $7dfc: $f4
	db $fc                                           ; $7dfd: $fc
	ldh [c], a                                       ; $7dfe: $e2
	ldh [c], a                                       ; $7dff: $e2
	di                                               ; $7e00: $f3
	di                                               ; $7e01: $f3
	ld [bc], a                                       ; $7e02: $02
	nop                                              ; $7e03: $00
	inc c                                            ; $7e04: $0c
	ld c, $24                                        ; $7e05: $0e $24
	dec h                                            ; $7e07: $25
	ld h, $26                                        ; $7e08: $26 $26
	inc b                                            ; $7e0a: $04
	inc b                                            ; $7e0b: $04
	db $fc                                           ; $7e0c: $fc
	db $f4                                           ; $7e0d: $f4
	di                                               ; $7e0e: $f3
	sbc $e3                                          ; $7e0f: $de $e3
	sub a                                            ; $7e11: $97
	db $10                                           ; $7e12: $10
	inc b                                            ; $7e13: $04
	ld [bc], a                                       ; $7e14: $02
	nop                                              ; $7e15: $00
	ld h, $24                                        ; $7e16: $26 $24
	inc h                                            ; $7e18: $24
	dec h                                            ; $7e19: $25
	inc sp                                           ; $7e1a: $33
	nop                                              ; $7e1b: $00
	sbc e                                            ; $7e1c: $9b
	rlca                                             ; $7e1d: $07
	rst $38                                          ; $7e1e: $ff
	rst FarCall                                          ; $7e1f: $f7
	inc b                                            ; $7e20: $04
	sbc $f2                                          ; $7e21: $de $f2
	add c                                            ; $7e23: $81
	ldh [c], a                                       ; $7e24: $e2
	ld a, [bc]                                       ; $7e25: $0a
	ld [$0406], sp                                   ; $7e26: $08 $06 $04
	inc h                                            ; $7e29: $24
	ld h, $26                                        ; $7e2a: $26 $26
	inc h                                            ; $7e2c: $24
	db $fc                                           ; $7e2d: $fc
	db $f4                                           ; $7e2e: $f4
	rlca                                             ; $7e2f: $07
	rst $38                                          ; $7e30: $ff
	ldh [c], a                                       ; $7e31: $e2
	ldh [c], a                                       ; $7e32: $e2
	di                                               ; $7e33: $f3
	di                                               ; $7e34: $f3
	ld [bc], a                                       ; $7e35: $02
	nop                                              ; $7e36: $00
	db $10                                           ; $7e37: $10
	ld c, $24                                        ; $7e38: $0e $24
	dec h                                            ; $7e3a: $25
	inc h                                            ; $7e3b: $24
	ld h, $f7                                        ; $7e3c: $26 $f7
	inc b                                            ; $7e3e: $04
	db $fc                                           ; $7e3f: $fc
	db $f4                                           ; $7e40: $f4
	di                                               ; $7e41: $f3
	sbc $e3                                          ; $7e42: $de $e3
	sub a                                            ; $7e44: $97
	inc c                                            ; $7e45: $0c
	inc b                                            ; $7e46: $04
	ld [bc], a                                       ; $7e47: $02
	nop                                              ; $7e48: $00
	ld h, $24                                        ; $7e49: $26 $24
	inc h                                            ; $7e4b: $24
	dec h                                            ; $7e4c: $25
	inc [hl]                                         ; $7e4d: $34
	nop                                              ; $7e4e: $00
	add b                                            ; $7e4f: $80
	inc b                                            ; $7e50: $04
	db $fc                                           ; $7e51: $fc
	inc b                                            ; $7e52: $04
	db $f4                                           ; $7e53: $f4
	ldh a, [c]                                       ; $7e54: $f2
	ldh a, [c]                                       ; $7e55: $f2
	ldh [c], a                                       ; $7e56: $e2
	ldh a, [c]                                       ; $7e57: $f2
	ld a, [bc]                                       ; $7e58: $0a
	ld [$0604], sp                                   ; $7e59: $08 $04 $06
	inc h                                            ; $7e5c: $24
	ld h, $24                                        ; $7e5d: $26 $24
	ld h, $fc                                        ; $7e5f: $26 $fc
	db $f4                                           ; $7e61: $f4
	db $f4                                           ; $7e62: $f4
	db $fc                                           ; $7e63: $fc
	ldh [c], a                                       ; $7e64: $e2
	ldh [c], a                                       ; $7e65: $e2
	di                                               ; $7e66: $f3
	di                                               ; $7e67: $f3
	ld [bc], a                                       ; $7e68: $02
	nop                                              ; $7e69: $00
	inc c                                            ; $7e6a: $0c
	ld c, $24                                        ; $7e6b: $0e $24
	dec h                                            ; $7e6d: $25
	ld h, $99                                        ; $7e6e: $26 $99
	ld h, $04                                        ; $7e70: $26 $04
	inc b                                            ; $7e72: $04
	db $fc                                           ; $7e73: $fc
	db $f4                                           ; $7e74: $f4
	di                                               ; $7e75: $f3
	sbc $e3                                          ; $7e76: $de $e3
	sub a                                            ; $7e78: $97
	db $10                                           ; $7e79: $10
	inc b                                            ; $7e7a: $04
	ld [bc], a                                       ; $7e7b: $02
	nop                                              ; $7e7c: $00
	ld h, $24                                        ; $7e7d: $26 $24
	inc h                                            ; $7e7f: $24
	dec h                                            ; $7e80: $25
	inc sp                                           ; $7e81: $33
	nop                                              ; $7e82: $00
	sbc e                                            ; $7e83: $9b
	ld b, $fe                                        ; $7e84: $06 $fe
	or $04                                           ; $7e86: $f6 $04
	sbc $f3                                          ; $7e88: $de $f3
	add c                                            ; $7e8a: $81
	db $e3                                           ; $7e8b: $e3
	ld a, [bc]                                       ; $7e8c: $0a
	ld [$0406], sp                                   ; $7e8d: $08 $06 $04
	inc h                                            ; $7e90: $24
	ld h, $26                                        ; $7e91: $26 $26
	inc h                                            ; $7e93: $24
	db $fc                                           ; $7e94: $fc
	db $f4                                           ; $7e95: $f4
	rlca                                             ; $7e96: $07
	rst FarCall                                          ; $7e97: $f7
	db $e3                                           ; $7e98: $e3
	db $e3                                           ; $7e99: $e3
	db $f4                                           ; $7e9a: $f4
	db $f4                                           ; $7e9b: $f4
	ld [bc], a                                       ; $7e9c: $02
	nop                                              ; $7e9d: $00
	db $10                                           ; $7e9e: $10
	inc c                                            ; $7e9f: $0c
	inc h                                            ; $7ea0: $24
	dec h                                            ; $7ea1: $25
	inc h                                            ; $7ea2: $24
	ld h, $ff                                        ; $7ea3: $26 $ff
	inc b                                            ; $7ea5: $04
	db $fc                                           ; $7ea6: $fc
	db $f4                                           ; $7ea7: $f4
	db $f4                                           ; $7ea8: $f4
	sbc $e4                                          ; $7ea9: $de $e4
	sub a                                            ; $7eab: $97
	ld c, $04                                        ; $7eac: $0e $04
	ld [bc], a                                       ; $7eae: $02
	nop                                              ; $7eaf: $00
	ld h, $24                                        ; $7eb0: $26 $24
	inc h                                            ; $7eb2: $24
	dec h                                            ; $7eb3: $25
	inc [hl]                                         ; $7eb4: $34
	nop                                              ; $7eb5: $00
	add b                                            ; $7eb6: $80
	db $f4                                           ; $7eb7: $f4
	inc b                                            ; $7eb8: $04
	db $f4                                           ; $7eb9: $f4
	inc b                                            ; $7eba: $04
	ldh [c], a                                       ; $7ebb: $e2
	ldh [c], a                                       ; $7ebc: $e2
	ldh a, [c]                                       ; $7ebd: $f2
	ldh a, [c]                                       ; $7ebe: $f2
	nop                                              ; $7ebf: $00
	inc b                                            ; $7ec0: $04
	ld b, $0a                                        ; $7ec1: $06 $0a
	inc h                                            ; $7ec3: $24
	inc h                                            ; $7ec4: $24
	ld h, $26                                        ; $7ec5: $26 $26
	db $fc                                           ; $7ec7: $fc
	db $fc                                           ; $7ec8: $fc
	db $f4                                           ; $7ec9: $f4
	inc b                                            ; $7eca: $04
	ldh a, [c]                                       ; $7ecb: $f2
	ldh [c], a                                       ; $7ecc: $e2
	db $e3                                           ; $7ecd: $e3
	db $e3                                           ; $7ece: $e3
	ld [$0002], sp                                   ; $7ecf: $08 $02 $00
	inc b                                            ; $7ed2: $04
	ld h, $25                                        ; $7ed3: $26 $25
	inc h                                            ; $7ed5: $24
	sbc [hl]                                         ; $7ed6: $9e
	inc h                                            ; $7ed7: $24
	ld a, e                                          ; $7ed8: $7b
	pop af                                           ; $7ed9: $f1
	sbc l                                            ; $7eda: $9d
	db $fc                                           ; $7edb: $fc
	db $e3                                           ; $7edc: $e3
	sbc $f3                                          ; $7edd: $de $f3
	sbc e                                            ; $7edf: $9b
	ld [bc], a                                       ; $7ee0: $02
	inc c                                            ; $7ee1: $0c
	db $10                                           ; $7ee2: $10
	ld c, $7b                                        ; $7ee3: $0e $7b
	pop hl                                           ; $7ee5: $e1
	sbc [hl]                                         ; $7ee6: $9e
	daa                                              ; $7ee7: $27
	inc sp                                           ; $7ee8: $33
	nop                                              ; $7ee9: $00
	sbc e                                            ; $7eea: $9b
	db $f4                                           ; $7eeb: $f4
	inc b                                            ; $7eec: $04
	db $fc                                           ; $7eed: $fc
	inc b                                            ; $7eee: $04
	sbc $f2                                          ; $7eef: $de $f2
	sbc d                                            ; $7ef1: $9a
	ldh [c], a                                       ; $7ef2: $e2
	ld b, $0a                                        ; $7ef3: $06 $0a
	ld [$de04], sp                                   ; $7ef5: $08 $04 $de
	ld h, $89                                        ; $7ef8: $26 $89
	inc h                                            ; $7efa: $24
	db $fc                                           ; $7efb: $fc
	db $f4                                           ; $7efc: $f4
	db $f4                                           ; $7efd: $f4
	db $fc                                           ; $7efe: $fc
	ldh [c], a                                       ; $7eff: $e2
	ldh [c], a                                       ; $7f00: $e2
	di                                               ; $7f01: $f3
	di                                               ; $7f02: $f3
	ld [bc], a                                       ; $7f03: $02
	nop                                              ; $7f04: $00
	inc c                                            ; $7f05: $0c
	ld c, $24                                        ; $7f06: $0e $24
	dec h                                            ; $7f08: $25
	ld h, $26                                        ; $7f09: $26 $26
	inc b                                            ; $7f0b: $04
	inc b                                            ; $7f0c: $04
	db $fc                                           ; $7f0d: $fc
	db $f4                                           ; $7f0e: $f4
	di                                               ; $7f0f: $f3
	sbc $e3                                          ; $7f10: $de $e3
	sub a                                            ; $7f12: $97
	db $10                                           ; $7f13: $10
	inc b                                            ; $7f14: $04
	ld [bc], a                                       ; $7f15: $02
	nop                                              ; $7f16: $00
	ld h, $24                                        ; $7f17: $26 $24
	inc h                                            ; $7f19: $24
	dec h                                            ; $7f1a: $25
	ld de, $0003                                     ; $7f1b: $11 $03 $00
	ld de, $001b                                     ; $7f1e: $11 $1b $00
	rst $38                                          ; $7f21: $ff
	ld de, $0003                                     ; $7f22: $11 $03 $00
	ld de, $001b                                     ; $7f25: $11 $1b $00
	rst $38                                          ; $7f28: $ff
	ld de, $0003                                     ; $7f29: $11 $03 $00
	ld de, $001b                                     ; $7f2c: $11 $1b $00
	rst $38                                          ; $7f2f: $ff
	ld de, $0003                                     ; $7f30: $11 $03 $00
	ld de, $001b                                     ; $7f33: $11 $1b $00
	rst $38                                          ; $7f36: $ff
	ld de, $0003                                     ; $7f37: $11 $03 $00
	ld de, $001b                                     ; $7f3a: $11 $1b $00
	rst $38                                          ; $7f3d: $ff
	ld de, $0003                                     ; $7f3e: $11 $03 $00
	ld de, $001b                                     ; $7f41: $11 $1b $00
	rst $38                                          ; $7f44: $ff
	ld de, $0003                                     ; $7f45: $11 $03 $00
	ld de, $001b                                     ; $7f48: $11 $1b $00
	rst $38                                          ; $7f4b: $ff
	ld de, $0003                                     ; $7f4c: $11 $03 $00
	ld de, $001b                                     ; $7f4f: $11 $1b $00
	rst $38                                          ; $7f52: $ff
	ld de, $0003                                     ; $7f53: $11 $03 $00
	ld de, $001b                                     ; $7f56: $11 $1b $00
	rst $38                                          ; $7f59: $ff
	ld de, $0003                                     ; $7f5a: $11 $03 $00
	ld de, $001b                                     ; $7f5d: $11 $1b $00
	rst $38                                          ; $7f60: $ff
	ld de, $0003                                     ; $7f61: $11 $03 $00
	ld de, $001b                                     ; $7f64: $11 $1b $00
	rst $38                                          ; $7f67: $ff
	ld de, $0003                                     ; $7f68: $11 $03 $00
	ld de, $001b                                     ; $7f6b: $11 $1b $00
	rst $38                                          ; $7f6e: $ff
	ld de, $0003                                     ; $7f6f: $11 $03 $00
	ld de, $001b                                     ; $7f72: $11 $1b $00
	rst $38                                          ; $7f75: $ff
	ld de, $0003                                     ; $7f76: $11 $03 $00
	ld de, $001b                                     ; $7f79: $11 $1b $00
	rst $38                                          ; $7f7c: $ff
	ld de, $0003                                     ; $7f7d: $11 $03 $00
	ld de, $001b                                     ; $7f80: $11 $1b $00
	rst $38                                          ; $7f83: $ff
	ld de, $0003                                     ; $7f84: $11 $03 $00
	ld de, $001b                                     ; $7f87: $11 $1b $00
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
